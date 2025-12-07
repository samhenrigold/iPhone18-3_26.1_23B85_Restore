uint64_t sub_29922D970(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F65C40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29922D9BC(uint64_t a1)
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

void *sub_29922DA3C(void *a1, uint64_t a2)
{
  v9[19] = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  a1[4] = 0;
  a1[3] = a1 + 4;
  a1[5] = 0;
  v3 = sub_29936C2B8();
  v4 = sub_29936C350(v3, a2, off_2A145F738[0], off_2A145F6B0[0]);
  sub_29922E144(v7, v4, 12);
  if (v8[15])
  {
    std::istream::read();
    std::istream::read();
    operator new[]();
  }

  v7[0] = *MEMORY[0x29EDC9518];
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](v8);
  std::istream::~istream();
  MEMORY[0x29C29BF00](v9);
  return a1;
}

void sub_29922E06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  sub_2991D64B0(&a35, MEMORY[0x29EDC9518]);
  MEMORY[0x29C29BF00](&STACK[0x248]);
  sub_29922ED04(a10, *(a13 + 32));
  sub_29921B8CC(a13, *(a13 + 8));
  _Unwind_Resume(a1);
}

uint64_t *sub_29922E144(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x29EDC9558] + 64;
  a1[53] = MEMORY[0x29EDC9558] + 64;
  v5 = *(MEMORY[0x29EDC9518] + 16);
  v6 = *(MEMORY[0x29EDC9518] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x29EDC9558] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x29C29BBE0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_29922E2DC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C29BF00](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29922E314(uint64_t a1, uint64_t a2, char *__s)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v4 = a1 + 32;
  v5 = v6;
  if (v6)
  {
    v8 = v4;
    do
    {
      v9 = *(v5 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    if (v8 != v4 && *(v8 + 32) <= a2)
    {
      v12 = strlen(__s);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2991A11B0();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v21 = v12;
      if (v12)
      {
        memcpy(&__dst, __s, v12);
      }

      *(&__dst + v13) = 0;
      v16 = *(v8 + 48);
      v15 = v8 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = v15;
      do
      {
        v18 = sub_29920B9DC((v14 + 32), &__dst);
        if ((v18 & 0x80u) == 0)
        {
          v17 = v14;
        }

        v14 = *(v14 + ((v18 >> 4) & 8));
      }

      while (v14);
      if (v17 == v15 || (sub_29920B9DC(&__dst, (v17 + 32)) & 0x80) != 0)
      {
LABEL_22:
        v17 = v15;
      }

      if (v21 < 0)
      {
        operator delete(__dst);
      }

      if (v15 != v17)
      {
        return *(v17 + 56);
      }
    }
  }

  return v3;
}

uint64_t sub_29922E478(uint64_t a1, uint64_t a2, CFStringRef theString)
{
  if (!theString || !CFStringGetLength(theString))
  {
    return a2;
  }

  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (!CStringPtr)
  {
    operator new[]();
  }

  return sub_29922E314(a1, a2, CStringPtr);
}

void sub_29922E56C(uint64_t a1@<X0>, unsigned int a2@<W1>, const void **a3@<X8>)
{
  v16 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = *(a1 + 32);
  v4 = a1 + 32;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != v4 && *(v7 + 32) <= a2)
  {
    v11 = *(v7 + 40);
    v12 = (v7 + 48);
    if (v11 != (v7 + 48))
    {
      do
      {
        sub_29922E664(a3, v11 + 28);
        v13 = *(v11 + 1);
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = *(v11 + 2);
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
      }

      while (v14 != v12);
    }
  }

  else
  {
LABEL_9:
    sub_29922E664(a3, &v16);
  }
}

void sub_29922E644(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29922E664(const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
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
      sub_299212A48(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 2;
  }

  a1[1] = v6;
}

void sub_29922E740(uint64_t a1, CFStringRef theString)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0xE002000000;
  v4[3] = sub_29922E8E4;
  v4[4] = nullsub_81;
  v5 = theString;
  v8 = 0;
  Length = CFStringGetLength(theString);
  if (CFStringGetCharactersPtr(v5))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v10 = 0;
  v11 = 0;
  v7 = CStringPtr;
  operator new[]();
}

void sub_29922E8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_29922E8E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  result = *(a2 + 168);
  v9 = *(a2 + 184);
  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  *(a1 + 168) = result;
  return result;
}

void sub_29922E94C(void *a1, int64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v5 = a1[5];
    if (a2 < 0 || (v6 = *(a1[4] + 8), v7 = *(v6 + 200), v7 <= a2))
    {
      v9 = 0;
    }

    else
    {
      v8 = *(v6 + 176);
      if (v8)
      {
        v9 = *(v8 + 2 * *(v6 + 192) + 2 * a2);
      }

      else
      {
        v38 = *(v6 + 184);
        if (v38)
        {
          v9 = *(v38 + *(v6 + 192) + a2);
        }

        else
        {
          if (*(v6 + 216) <= a2 || (v39 = *(v6 + 208), v39 > a2))
          {
            v40 = a2 - 4;
            if (a2 < 4)
            {
              v40 = 0;
            }

            if (v40 + 64 < v7)
            {
              v7 = v40 + 64;
            }

            *(v6 + 208) = v40;
            *(v6 + 216) = v7;
            v42.length = v7 - v40;
            v42.location = *(v6 + 192) + v40;
            CFStringGetCharacters(*(v6 + 168), v42, (v6 + 40));
            v39 = *(v6 + 208);
          }

          v9 = *(v6 + 40 + 2 * (a2 - v39));
        }
      }
    }

    v33 = *(v5 + 8);
    v32 = v5 + 8;
    v31 = v33;
    if (v33)
    {
      v34 = v32;
      do
      {
        v35 = *(v31 + 26);
        v36 = v35 >= v9;
        v37 = v35 < v9;
        if (v36)
        {
          v34 = v31;
        }

        v31 = *(v31 + 8 * v37);
      }

      while (v31);
      if (v34 != v32 && *(v34 + 26) <= v9)
      {
        v9 = *(v34 + 28);
      }
    }

    *(a1[6] + 2 * a2) = v9;
  }

  else if (a3 >= 1)
  {
    v11 = 0;
    v12 = -a2;
    v13 = a2 + 64;
    v14 = 2 * a2;
    v15 = a2;
    do
    {
      if (v15 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v15;
      }

      v17 = a2 + v11;
      if (a2 + v11 < 0 || (v18 = *(a1[4] + 8), v19 = *(v18 + 200), v19 <= v17))
      {
        v21 = 0;
      }

      else
      {
        v20 = *(v18 + 176);
        if (v20)
        {
          v21 = *(v20 + 2 * *(v18 + 192) + v14 + 2 * v11);
        }

        else
        {
          v22 = *(v18 + 184);
          if (v22)
          {
            v21 = *(v22 + *(v18 + 192) + a2 + v11);
          }

          else
          {
            if (*(v18 + 216) <= v17 || (v23 = *(v18 + 208), v23 > v17))
            {
              v24 = v16 + v12;
              v25 = v13 - v16;
              v26 = -v16;
              v27 = 64 - v16;
              v28 = v11 + a2 - v16;
              v29 = a2 + v11 + v27;
              if (v29 >= v19)
              {
                v29 = *(v18 + 200);
              }

              *(v18 + 208) = v28;
              *(v18 + 216) = v29;
              v30 = a2 + v11 + v26;
              if (v19 >= v25)
              {
                v19 = v25;
              }

              v41.location = v30 + *(v18 + 192);
              v41.length = v19 + v24;
              CFStringGetCharacters(*(v18 + 168), v41, (v18 + 40));
              v23 = *(v18 + 208);
            }

            v21 = *(v18 - 2 * v23 + v14 + 2 * v11 + 40);
          }
        }
      }

      *(a1[6] + v14 + 2 * v11++) = v21;
      ++v15;
      --v12;
      ++v13;
    }

    while (a3 != v11);
  }
}

CFStringRef sub_29922EBB4(uint64_t a1)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3)
  {
    v6 = 0;
    v9 = *(v1 + 8);
    v7 = v1 + 8;
    v8 = v9;
    do
    {
      v10 = *(v2 + 2 * v6);
      if (v8)
      {
        v11 = v7;
        v12 = v8;
        do
        {
          v13 = *(v12 + 26);
          v14 = v13 >= v10;
          v15 = v13 < v10;
          if (v14)
          {
            v11 = v12;
          }

          v12 = *(v12 + 8 * v15);
        }

        while (v12);
        if (v11 != v7 && *(v11 + 26) <= v10)
        {
          LOWORD(v10) = *(v11 + 28);
        }
      }

      v5[v6++] = v10;
    }

    while (v6 != v3);
  }

  return CFStringCreateWithCharacters(0, v5, v3);
}

uint64_t sub_29922EC90(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    v5 = 0;
    v6 = v4 >> 1;
    v8 = *(result + 8);
    result += 8;
    v7 = v8;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v9 = *(v2 + 2 * v5);
      if (v7)
      {
        v10 = result;
        v11 = v7;
        do
        {
          v12 = *(v11 + 26);
          v13 = v12 >= v9;
          v14 = v12 < v9;
          if (v13)
          {
            v10 = v11;
          }

          v11 = *(v11 + 8 * v14);
        }

        while (v11);
        if (v10 != result && *(v10 + 26) <= v9)
        {
          LOWORD(v9) = *(v10 + 28);
        }
      }

      *(v2 + 2 * v5++) = v9;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_29922ED04(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29922ED04(a1, *a2);
    sub_29922ED04(a1, a2[1]);
    sub_29922ED64((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_29922ED64(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29922ED64(a1, *a2);
    sub_29922ED64(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *sub_29922EDC8(void *result, unsigned int a2)
{
  v22[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145FEF0, memory_order_acquire) & 1) == 0)
  {
    v8 = result;
    v9 = a2;
    v10 = __cxa_guard_acquire(&qword_2A145FEF0);
    a2 = v9;
    v11 = v10;
    result = v8;
    if (v11)
    {
      v13 = 33;
      sub_2991C6CA8(v14, "UserInteractive");
      v15 = 25;
      sub_2991C6CA8(v16, "UserInitiated");
      v17 = 21;
      sub_2991C6CA8(v18, "Default");
      v19 = 17;
      sub_2991C6CA8(v20, "Utility");
      v21 = 9;
      sub_2991C6CA8(v22, "Background");
      sub_29922F0DC(&v13, 5);
      for (i = 0; i != -20; i -= 4)
      {
        if (SHIBYTE(v22[i + 2]) < 0)
        {
          operator delete(v22[i]);
        }
      }

      __cxa_atexit(sub_29922F0D8, &xmmword_2A145FEF8, &dword_29918C000);
      __cxa_guard_release(&qword_2A145FEF0);
      result = v8;
      a2 = v9;
    }
  }

  if (!*(&xmmword_2A145FEF8 + 1))
  {
    return sub_2991C6CA8(result, "Unspecified");
  }

  v2 = vcnt_s8(*(&xmmword_2A145FEF8 + 8));
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = a2;
    if (*(&xmmword_2A145FEF8 + 1) <= a2)
    {
      v3 = a2 % DWORD2(xmmword_2A145FEF8);
    }
  }

  else
  {
    v3 = (DWORD2(xmmword_2A145FEF8) - 1) & a2;
  }

  v4 = *(xmmword_2A145FEF8 + 8 * v3);
  if (!v4)
  {
    return sub_2991C6CA8(result, "Unspecified");
  }

  v5 = *v4;
  if (!v5)
  {
    return sub_2991C6CA8(result, "Unspecified");
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == a2)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *(&xmmword_2A145FEF8 + 1))
      {
        v6 %= *(&xmmword_2A145FEF8 + 1);
      }
    }

    else
    {
      v6 &= *(&xmmword_2A145FEF8 + 1) - 1;
    }

    if (v6 != v3)
    {
      return sub_2991C6CA8(result, "Unspecified");
    }

LABEL_17:
    v5 = *v5;
    if (!v5)
    {
      return sub_2991C6CA8(result, "Unspecified");
    }
  }

  if (*(v5 + 4) != a2)
  {
    goto LABEL_17;
  }

  if (*(v5 + 47) < 0)
  {
    return sub_2991A110C(result, v5[3], v5[4]);
  }

  v7 = *(v5 + 3);
  result[2] = v5[5];
  *result = v7;
  return result;
}

void sub_29922F040(_Unwind_Exception *a1)
{
  v3 = v1 + 136;
  v4 = -160;
  while (1)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    v3 -= 32;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A145FEF0);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29922F0DC(unsigned int *a1, uint64_t a2)
{
  xmmword_2A145FEF8 = 0u;
  *&qword_2A145FF08 = 0u;
  dword_2A145FF18 = 1065353216;
  if (a2)
  {
    for (i = a1; i != &a1[8 * a2]; i += 8)
    {
      v3 = *i;
      if (!*(&xmmword_2A145FEF8 + 1))
      {
        goto LABEL_19;
      }

      v4 = vcnt_s8(*(&xmmword_2A145FEF8 + 8));
      v4.i16[0] = vaddlv_u8(v4);
      if (v4.u32[0] > 1uLL)
      {
        v5 = *i;
        if (*(&xmmword_2A145FEF8 + 1) <= v3)
        {
          v5 = v3 % DWORD2(xmmword_2A145FEF8);
        }
      }

      else
      {
        v5 = (DWORD2(xmmword_2A145FEF8) - 1) & v3;
      }

      v6 = *(xmmword_2A145FEF8 + 8 * v5);
      if (!v6 || (v7 = *v6) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v8 = v7[1];
        if (v8 == v3)
        {
          break;
        }

        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *(&xmmword_2A145FEF8 + 1))
          {
            v8 %= *(&xmmword_2A145FEF8 + 1);
          }
        }

        else
        {
          v8 &= *(&xmmword_2A145FEF8 + 1) - 1;
        }

        if (v8 != v5)
        {
          goto LABEL_19;
        }

LABEL_18:
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_19;
        }
      }

      if (*(v7 + 4) != v3)
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_29922F54C(_Unwind_Exception *a1)
{
  sub_29922F58C(1, v1);
  sub_29922F5E8(&xmmword_2A145FEF8);
  _Unwind_Resume(a1);
}

void sub_29922F58C(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29922F5E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_29922F650()
{
  sub_2991C6CA8(&v12, "Serial");
  v0 = std::string::insert(&v12, 0, "com.apple.mecabra.", 0x12uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v0->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  v2 = std::string::append(&v13, "_", 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29922EDC8(__p, 0x11u);
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

  v6 = std::string::append(&v14, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16 = v6->__r_.__value_.__r.__words[2];
  v15 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v16 >= 0)
  {
    v8 = &v15;
  }

  else
  {
    v8 = v15;
  }

  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  qword_2A1461D48 = dispatch_queue_create(v8, v9);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }
}

void sub_29922F7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29922F814(uint64_t a1, char *__s)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = strlen(__s);
  v5 = CFURLCreateFromFileSystemRepresentation(0, __s, v4, 1u);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = CFURLCreateCopyAppendingPathComponent(0, v5, @"J_Numeral.dict", 0);
  v7 = CFURLCreateCopyAppendingPathComponent(0, v5, @"Josu.data", 0);
  v8 = v7;
  if (v6 && v7)
  {
    if (sub_2993F0120(a1))
    {
      *a1 = 0;
    }

    goto LABEL_7;
  }

  if (v7)
  {
LABEL_7:
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(v5);
LABEL_11:
  if (*a1)
  {
    *(a1 + 8) = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  }

  return a1;
}

void sub_29922F920(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29922F948(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_2993F0780(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_29922F998(uint64_t a1, UniChar *chars, unint64_t a3, int a4, uint64_t a5)
{
  if ((atomic_load_explicit(&qword_2A145FF28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FF28))
  {
    sub_299255778(0);
    qword_2A145FF20 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A145FF28);
  }

  if (*a1 && a3 && chars && *(a1 + 8))
  {
    v10 = 0;
    while (1)
    {
      v11 = chars[v10];
      v12 = v11 - 48;
      v13 = (v11 + 240);
      if (v12 >= 0xA && v13 > 9)
      {
        break;
      }

      if (a3 == ++v10)
      {
        v10 = a3;
        break;
      }
    }

    if (v10 == a3)
    {
      v15 = 1;
    }

    else
    {
      v15 = a4;
    }

    if (v10)
    {
      if (v15)
      {
        v16 = CFStringCreateWithCharacters(0, chars, v10);
        if (v16)
        {
          v17 = v16;
          Value = CFDictionaryGetValue(*(a1 + 8), v16);
          v19 = Value;
          if (Value)
          {
LABEL_20:
            CFRelease(v17);
            v53 = v10;
            v54 = 0;
            v52 = *(qword_2A145FF20 + 50);
            WORD1(v52) = 5000;
            Count = CFArrayGetCount(v19);
            LOBYTE(__dst) = 0;
            if (Count >= 1)
            {
              v21 = Count;
              v22 = 0;
              do
              {
                LODWORD(v54) = v22;
                (*(a5 + 16))(a5, &v52, &__dst);
                if (v22)
                {
                  v23 = 1000;
                }

                else
                {
                  v23 = 2000;
                }

                WORD1(v52) += v23;
                ++v22;
              }

              while (v22 < v21 && (__dst & 1) == 0);
            }

            if (!Value)
            {
              CFRelease(v19);
            }
          }

          else
          {
            if ((atomic_load_explicit(&qword_2A145FF38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FF38))
            {
              qword_2A145FF30 = 19;
              __cxa_guard_release(&qword_2A145FF38);
            }

            if (qword_2A145FF30 > v10)
            {
              v24 = 0;
              while (1)
              {
                v25 = chars[v24];
                v26 = v25 - 48;
                v27 = (v25 + 240);
                if (v26 >= 0xA && v27 >= 0xA)
                {
                  break;
                }

                if (v10 == ++v24)
                {
                  v29 = *MEMORY[0x29EDB8ED8];
                  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
                  if (!Mutable)
                  {
                    break;
                  }

                  v19 = Mutable;
                  v31 = CFStringCreateWithCharacters(v29, chars, v10);
                  if (v31)
                  {
                    v32 = v31;
                    CFArrayAppendValue(v19, v31);
                    CFRelease(v32);
                  }

                  if (v10 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    sub_299212A30();
                  }

                  if (v10 >= 0xB)
                  {
                    if ((v10 | 3) == 0xB)
                    {
                      v33 = 13;
                    }

                    else
                    {
                      v33 = (v10 | 3) + 1;
                    }

                    sub_299212A48(&__dst, v33);
                  }

                  HIBYTE(v59) = v10;
                  memmove(&__dst, chars, 2 * v10);
                  v34 = 0;
                  *(&__dst + v10) = 0;
                  while (chars[v34] - 48 < 0xA)
                  {
                    if (v10 == ++v34)
                    {
                      sub_299281394(&__dst);
                      goto LABEL_55;
                    }
                  }

                  sub_299281268(&__dst);
LABEL_55:
                  if (v59 >= 0)
                  {
                    p_dst = &__dst;
                  }

                  else
                  {
                    p_dst = __dst;
                  }

                  if (v59 >= 0)
                  {
                    v36 = HIBYTE(v59);
                  }

                  else
                  {
                    v36 = v58;
                  }

                  v37 = CFStringCreateWithCharacters(v29, p_dst, v36);
                  if (v37)
                  {
                    CFArrayAppendValue(v19, v37);
                    CFRelease(v37);
                  }

                  if (SHIBYTE(v59) < 0)
                  {
                    operator delete(__dst);
                  }

                  v38 = 0;
                  v39 = 0;
                  do
                  {
                    v40 = chars[v38];
                    if (v40 >> 4 <= 0xFF0)
                    {
                      v41 = -48;
                    }

                    else
                    {
                      v41 = -65296;
                    }

                    v39 = v40 + 10 * v39 + v41;
                    ++v38;
                  }

                  while (v10 != v38);
                  v42 = 0;
                  while (1)
                  {
                    v43 = chars[v42];
                    v44 = v43 == 48 || v43 == 65296;
                    if (!v44 && v43 != 12295)
                    {
                      break;
                    }

                    if (v10 == ++v42)
                    {
                      v42 = v10;
                      break;
                    }
                  }

                  v52 = MEMORY[0x29EDCA5F8];
                  v53 = 0x40000000;
                  v54 = sub_299230A10;
                  v55 = &unk_29EF0D900;
                  v56 = v19;
                  sub_299230810(v39, v42, &v52);
                  if (!v42)
                  {
                    __dst = 0;
                    v58 = 0;
                    v59 = 0;
                    sub_299281680(v39, &__dst);
                    if (v59 >= 0)
                    {
                      v46 = &__dst;
                    }

                    else
                    {
                      v46 = __dst;
                    }

                    if (v59 >= 0)
                    {
                      v47 = HIBYTE(v59);
                    }

                    else
                    {
                      v47 = v58;
                    }

                    v48 = CFStringCreateWithCharacters(v29, v46, v47);
                    if (v48)
                    {
                      CFArrayAppendValue(v19, v48);
                      CFRelease(v48);
                    }

                    sub_299281394(&__dst);
                    if (v59 >= 0)
                    {
                      v49 = &__dst;
                    }

                    else
                    {
                      v49 = __dst;
                    }

                    if (v59 >= 0)
                    {
                      v50 = HIBYTE(v59);
                    }

                    else
                    {
                      v50 = v58;
                    }

                    v51 = CFStringCreateWithCharacters(v29, v49, v50);
                    if (v51)
                    {
                      CFArrayAppendValue(v19, v51);
                      CFRelease(v51);
                    }

                    if (SHIBYTE(v59) < 0)
                    {
                      operator delete(__dst);
                    }
                  }

                  if (CFArrayGetCount(v19))
                  {
                    CFDictionaryAddValue(*(a1 + 8), v17, v19);
                  }

                  goto LABEL_20;
                }
              }
            }

            CFRelease(v17);
          }
        }
      }
    }
  }
}

void sub_29922FEFC(void *result, int a2, UniChar *a3, const UniChar *a4, int a5, uint64_t a6)
{
  if (*result && a4 && a3 && result[1])
  {
    if (a5)
    {
      sub_29922FF2C(result, a2, a3, a4, a6);
    }

    else
    {
      sub_2992301CC(result, a2, a3, a4, a6);
    }
  }
}

uint64_t sub_29922FF2C(uint64_t result, int a2, const UniChar *a3, const UniChar *a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v39[0] = a3;
  v39[1] = v5;
  if (v5)
  {
    v8 = result;
    v38 = 0;
    memset(v36, 0, sizeof(v36));
    v37 = 1065353216;
    sub_299216DAC(v39, &v38, v36, 0, __p);
    v9 = v35;
    v10 = v35;
    if ((v35 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((v35 & 0x80u) != 0)
    {
      v9 = __p[1];
    }

    if (v11)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = v38;
      v14 = v38 && a2 == 0;
      if (!v14 && v9 != v38)
      {
        if (a2 != 1)
        {
          v13 = 0;
        }

        v15 = v9 - v13;
        v16 = a2 == 1 ? 0 : v15 - 1;
        v33 = v15;
        if (v15 > v16)
        {
          v31 = a5;
          v17 = 0;
          v18 = *MEMORY[0x29EDB8ED8];
          contentsDeallocator = *MEMORY[0x29EDB8EE8];
          while (1)
          {
            v19 = sub_299230B70(v36, &v33);
            v20 = v33;
            if (v19)
            {
              if (!v33)
              {
                break;
              }

              v21 = 0;
              for (i = 0; i != v33; v21 = i >= v33)
              {
                v23 = *(v11 + i);
                if ((v23 - 12353) >= 0x56 && v23 != 12540 && v23 != 12316)
                {
                  break;
                }

                ++i;
              }

              if (v21)
              {
                break;
              }
            }

LABEL_57:
            v33 = v20 - 1;
            if (v20 - 1 <= v16)
            {
LABEL_58:
              v10 = v35;
              goto LABEL_15;
            }
          }

          if (v39[0])
          {
            v26 = v19[3];
          }

          else
          {
            v26 = 0;
          }

          v27 = CFStringCreateWithCharacters(v18, v39[0], v26);
          v28 = CFStringCreateWithCharactersNoCopy(v18, v11, v20, contentsDeallocator);
          v29 = v28;
          if (v27)
          {
            if (!v28)
            {
              v30 = 2 * (v17 == 2);
LABEL_54:
              CFRelease(v27);
              goto LABEL_55;
            }

            v17 += sub_2992302C0(v8, v28, v27, v31);
            v30 = 2 * (v17 == 2);
          }

          else
          {
            v30 = 2 * (v17 == 2);
            if (!v28)
            {
LABEL_55:
              if (v30)
              {
                goto LABEL_58;
              }

              v20 = v33;
              goto LABEL_57;
            }
          }

          CFRelease(v29);
          if (!v27)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }
      }
    }

LABEL_15:
    if ((v10 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    return sub_29921ED28(v36);
  }

  return result;
}

void sub_29923016C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_299219AB4(&a13, 0);
  sub_299219AB4(&a14, 0);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_29921ED28(&a22);
  _Unwind_Resume(a1);
}

void sub_2992301CC(uint64_t a1, int a2, UniChar *chars, unint64_t numChars, uint64_t a5)
{
  if (a2 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = numChars - 1;
  }

  if (v5 < numChars)
  {
    v7 = numChars;
    v10 = 0;
    do
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = chars[v12];
        if ((v13 - 12353) >= 0x56 && v13 != 12540 && v13 != 12316)
        {
          break;
        }

        v11 = ++v12 >= v7;
      }

      while (v7 != v12);
      if (v11)
      {
        v16 = CFStringCreateWithCharacters(0, chars, v7);
        if (v16)
        {
          v17 = v16;
          v10 += sub_2992302C0(a1, v17, v17, a5);
          CFRelease(v17);
        }

        if (v10 == 2)
        {
          break;
        }
      }

      --v7;
    }

    while (v7 > v5);
  }
}

const __CFArray *sub_2992302C0(uint64_t a1, const __CFString *a2, const __CFString *key, uint64_t a4)
{
  Value = CFDictionaryGetValue(*(a1 + 8), key);
  if (Value)
  {
    v9 = Value;
    CFRetain(Value);
  }

  else
  {
    result = sub_2992303DC(a1, a2);
    if (!result)
    {
      return result;
    }

    v9 = result;
    CFDictionaryAddValue(*(a1 + 8), key, result);
  }

  sub_299255778(0);
  v14[0] = word_2A1461DF2;
  v14[1] = CFStringGetLength(key);
  v15 = 0;
  v13 = 0;
  Count = CFArrayGetCount(v9);
  if (Count >= 1)
  {
    for (i = 0; i < Count; ++i)
    {
      LODWORD(v15) = i;
      WORD1(v14[0]) = i + 8000;
      (*(a4 + 16))(a4, v14, &v13);
      if (v13)
      {
        break;
      }
    }
  }

  CFRelease(v9);
  return (Count > 0);
}

const __CFArray *sub_2992303DC(uint64_t *a1, CFStringRef theString)
{
  v45[1] = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x10000100u);
  MEMORY[0x2A1C7C4A8](MaximumSizeForEncoding);
  v7 = &buffer[-4] - v6;
  v45[0] = 0;
  v46.location = 0;
  v46.length = Length;
  CFStringGetBytes(theString, v46, 0x10000100u, 0, 0, &buffer[-4] - v6, v8, v45);
  v44 = 1752788843;
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!sub_299348248(*a1, 2037345641, v45[0], v7, 1025515552, 1, &v44, 0, 0, 1u, Mutable))
  {
    v35 = &v35;
    Count = CFArrayGetCount(Mutable);
    if (Count < 1)
    {
LABEL_41:
      v48.length = CFArrayGetCount(Mutable);
      v48.location = 0;
      CFArraySortValues(Mutable, v48, sub_299230A74, 0);
      return Mutable;
    }

    v11 = Count;
    while (1)
    {
      v12 = v11--;
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v11);
      v14 = CFStringGetLength(ValueAtIndex);
      v37 = ValueAtIndex;
      v40 = 0;
      v41 = v14;
      CharactersPtr = CFStringGetCharactersPtr(ValueAtIndex);
      CStringPtr = 0;
      v38 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x600u);
      }

      v39 = CStringPtr;
      v42 = 0;
      v43 = 0;
      if (v14 >= 1)
      {
        break;
      }

LABEL_40:
      if (v12 <= 1)
      {
        goto LABEL_41;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 64;
    while (1)
    {
      if (v19 >= 4)
      {
        v22 = 4;
      }

      else
      {
        v22 = v19;
      }

      v23 = v41;
      if (v41 <= v19)
      {
        v25 = 0;
      }

      else
      {
        if (v38)
        {
          v24 = &v38[v40];
        }

        else
        {
          if (v39)
          {
            v25 = v39[v40 + v19];
            goto LABEL_19;
          }

          if (v43 <= v19 || v18 > v19)
          {
            v30 = v22 + v17;
            v31 = v21 - v22;
            v32 = v19 - v22;
            v33 = v32 + 64;
            if (v32 + 64 >= v41)
            {
              v33 = v41;
            }

            v42 = v32;
            v43 = v33;
            if (v41 >= v31)
            {
              v23 = v31;
            }

            v47.location = v32 + v40;
            v47.length = v23 + v30;
            CFStringGetCharacters(v37, v47, buffer);
            v18 = v42;
          }

          v24 = &buffer[-v18];
        }

        v25 = v24[v19];
      }

LABEL_19:
      v26 = (v25 - 48);
      v27 = (v25 + 240);
      if (v26 < 0xA || v27 < 0xA)
      {
        ++v20;
      }

      ++v19;
      --v17;
      ++v21;
      if (v14 == v19)
      {
        if (v20 > 5)
        {
          CFArrayRemoveValueAtIndex(Mutable, v11);
        }

        goto LABEL_40;
      }
    }
  }

  CFRelease(Mutable);
  return 0;
}

uint64_t sub_299230728(uint64_t a1, const UniChar *a2, CFIndex a3, unsigned int a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v8 = CFStringCreateWithCharacters(0, a2, a3);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(*(a1 + 8), v8);
  if (Value && (v11 = Value, CFArrayGetCount(Value) > a4) && (ValueAtIndex = CFArrayGetValueAtIndex(v11, a4)) != 0 && (v13 = ValueAtIndex, (Length = CFStringGetLength(ValueAtIndex)) != 0))
  {
    v15 = Length;
    if (a5)
    {
      *a5 = Length;
    }

    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    v18 = (a1 + 16);
    v19 = v17 - v16;
    sub_299217A94(v18, Length + ((v17 - v16) >> 1));
    v22.location = 0;
    v22.length = v15;
    CFStringGetCharacters(v13, v22, (*v18 + v19));
    v20 = *v18 + v19;
  }

  else
  {
    v20 = 0;
  }

  CFRelease(v9);
  return v20;
}

void sub_299230810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_2992173B8(&__p, a2 + 20);
  if (a2)
  {
    v6 = a2;
    do
    {
      sub_29922C614(&__p, "\a0", 1uLL);
      --v6;
    }

    while (v6);
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  v7 = a1;
  do
  {
    v8 = sub_299281198(v7 % 10, &__p);
    v9 = (v7 - 10) < 0xFFFFFFFFFFFFFFEDLL;
    v7 /= 10;
  }

  while ((v9 & v8 & 1) != 0);
  if (v8)
  {
LABEL_8:
    v10 = HIBYTE(v25);
    if ((SHIBYTE(v25) & 0x8000000000000000) != 0)
    {
      v13 = v24;
      if (!v24)
      {
        goto LABEL_29;
      }

      p_p = __p;
      v12 = __p + 2 * a2;
    }

    else
    {
      if (!HIBYTE(v25))
      {
        goto LABEL_29;
      }

      p_p = &__p;
      v12 = &__p + 2 * a2;
      v13 = SHIBYTE(v25);
    }

    v14 = &p_p[2 * v13];
    v15 = v14 - 2;
    if (v12 != v14 && v15 > v12)
    {
      v17 = v12 + 2;
      do
      {
        v18 = *(v17 - 1);
        *(v17 - 1) = *v15;
        *v15 = v18;
        v15 -= 2;
        v19 = v17 >= v15;
        v17 += 2;
      }

      while (!v19);
      v10 = HIBYTE(v25);
    }

    if ((v10 & 0x80u) == 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p;
    }

    if ((v10 & 0x80u) == 0)
    {
      v21 = v10;
    }

    else
    {
      v21 = v24;
    }

    (*(a3 + 16))(a3, v20, v21);
  }

LABEL_29:
  if (SHIBYTE(v25) < 0)
  {
    *__p = 0;
    v24 = 0;
    if (a2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    LOWORD(__p) = 0;
    HIBYTE(v25) = 0;
    if (a2)
    {
      goto LABEL_40;
    }
  }

  if (sub_299281198(a1, &__p))
  {
    if ((SHIBYTE(v25) & 0x8000000000000000) != 0)
    {
      if (!v24)
      {
        goto LABEL_40;
      }

      v22 = __p;
    }

    else
    {
      if (!HIBYTE(v25))
      {
        return;
      }

      v22 = &__p;
    }

    (*(a3 + 16))(a3, v22);
  }

LABEL_40:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }
}

void sub_2992309E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299230A10(uint64_t a1, const UniChar *a2, CFIndex a3)
{
  v3 = *(a1 + 32);
  v4 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], a2, a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(v3, v4);

    CFRelease(v5);
  }
}

uint64_t sub_299230A74(const __CFString *a1, const __CFString *a2)
{
  if (!sub_2992782F4(a1) || !sub_2992782F4(a2))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  sub_299282028(a1, &v9 + 3, &v9 + 2, &v9 + 1, &v9);
  sub_299282028(a2, &v8 + 3, &v8 + 2, &v8 + 1, &v8);
  v4 = BYTE1(v9) & (BYTE2(v9) ^ 1);
  v5 = BYTE1(v8) & (BYTE2(v8) ^ 1);
  if (v4 == 1 && v5 == 0)
  {
    return -1;
  }

  if (!(v4 & 1 | ((v5 & 1) == 0)))
  {
    return 1;
  }

  if ((v9 & 0x1000000) != 0)
  {
    if (!HIBYTE(v8))
    {
      return 1;
    }
  }

  else if ((v8 & 0x1000000) != 0)
  {
    return -1;
  }

  if ((v9 & 0x100) == 0)
  {
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    return -1;
  }

  if (!BYTE1(v8))
  {
    return 1;
  }

LABEL_16:
  if (v9 != 1)
  {
    return (v8 & 1) != 0;
  }

  if ((v8 & 1) == 0)
  {
    return -1;
  }

  return 0;
}

void *sub_299230B70(void *a1, unint64_t *a2)
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
    if (v8 == v3)
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

uint64_t MecabraSegmentGetRange(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 24);
  }

  else
  {
    return -1;
  }
}

uint64_t MecabraSegmentGetReading(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void *sub_299230C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MecabraSegmentGetTypeID();
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    result[2] = a1;
    result[3] = a2;
    result[4] = a3;
    result[5] = 0;
  }

  return result;
}

uint64_t MecabraSegmentGetTypeID()
{
  if ((atomic_load_explicit(&qword_2A1461D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461D60))
  {
    qword_2A1461D58 = _CFRuntimeRegisterClass();
    __cxa_guard_release(&qword_2A1461D60);
  }

  return qword_2A1461D58;
}

void sub_299230D20(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

__CFString *sub_299230D6C(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<MecabraSegment %p>{reading = ", a1);
  if (a1[2])
  {
    v3 = a1[2];
  }

  else
  {
    v3 = @"NULL";
  }

  CFStringAppend(Mutable, v3);
  CFStringAppendFormat(Mutable, 0, @" range = {%ld, %ld}}", a1[3], a1[4]);
  return Mutable;
}

void sub_299230DF4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = sub_2992774EC(a1);
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  v7 = std::string::append(&__dst, "Tokenizer", 9uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v13 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = sub_29923181C;
  v9[3] = &unk_29EF0D920;
  v10 = v2;
  sub_299230F8C(__p, v9, 0, a2);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299230F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299230F8C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145FF48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FF48))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145FF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FF50))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145E3B0, &dword_29918C000);
    __cxa_guard_release(&qword_2A145FF50);
  }

  std::mutex::lock(&stru_2A145E3B0);
  v6 = qword_2A145FF40;
  v7 = sub_2991C0548(qword_2A145FF40, a1);
  v8 = v6[1];
  if (!*&v8)
  {
    goto LABEL_19;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*v6 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_19:
    v16 = sub_2993652F8(0xDu);
    v17 = os_signpost_id_make_with_pointer(v16, a1);
    v18 = sub_2993652F8(0xDu);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v18))
      {
        if (*(a1 + 23) >= 0)
        {
          v20 = a1;
        }

        else
        {
          v20 = *a1;
        }

        buf = 136315138;
        *buf_4 = v20;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SingletonResourceManagerLoad", "Load resource with key: [%s]", &buf, 0xCu);
      }
    }

    (*(a2 + 16))(a2);
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_19;
    }

LABEL_18:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (!sub_2991C09F4(v6, v14 + 2, a1))
  {
    goto LABEL_18;
  }

  v21 = v14[6];
  if (!v21)
  {
    goto LABEL_19;
  }

  if (v21->__shared_owners_ == -1 || a3 != 0)
  {
    goto LABEL_19;
  }

  v23 = std::__shared_weak_count::lock(v21);
  if (v23)
  {
    v24 = v14[5];
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(&stru_2A145E3B0);
  *a4 = v24;
  a4[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v23);
  }
}

void sub_29923181C(uint64_t a1)
{
  if (*(a1 + 32) == 5)
  {
    operator new();
  }

  operator new();
}

void sub_2992318C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299231900(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_299231930(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F65E88))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_299231A50(void *a1)
{
  *a1 = &unk_2A1F65F50;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_299231ABC(void *a1)
{
  *a1 = &unk_2A1F65EB0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[1] = 0;
  a1[2] = &unk_2A1F65F50;
  v3 = a1[3];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_299231B78(void *a1)
{
  sub_299231ABC(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299231BB0(uint64_t a1, uint64_t a2)
{
  if (sub_2993D6120(*(a1 + 24), a2))
  {
    sub_2992091F4(*(a1 + 8), a2);
  }

  v4 = sub_29920B4CC(*(a1 + 8) + 136);
  sub_2991C6CA8(&v13, v4);
  size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::append(&v13, " ", 1uLL);
  }

  v6 = sub_29920B4CC(*(a1 + 24) + 88);
  v7 = strlen(v6);
  std::string::append(&v13, v6, v7);
  v8 = SHIBYTE(v13.__r_.__value_.__r.__words[2]);
  v9 = v13.__r_.__value_.__r.__words[0];
  v10 = off_2A1A9A3A0(&off_2A1A9A3A0);
  strncpy(v10, v11, 0xFFuLL)[255] = 0;
  if (v8 < 0)
  {
    operator delete(v9);
  }

  return 0;
}

void sub_299231CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299231DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2992327FC(va);
  _Unwind_Resume(a1);
}

double sub_299231DF0(uint64_t a1, char *a2)
{
  sub_2991C6CA8(&__p, a2);
  v3 = sub_29920B95C(a1 + 8, &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v3)
  {
    operator new();
  }

  if (*(v3 + 79) < 0)
  {
    sub_2991A110C(v11, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    *v11 = *(v3 + 56);
    v12 = *(v3 + 72);
  }

  sub_2991D7954(&__p);
  v13 = 0.0;
  if (v12 >= 0)
  {
    v4 = v11;
  }

  else
  {
    v4 = v11[0];
  }

  if (v12 >= 0)
  {
    v5 = sub_2991C0E9C(&v15, v4, HIBYTE(v12), v11[0]);
  }

  else
  {
    v5 = sub_2991C0E9C(&v15, v4, v11[1], v11[0]);
  }

  if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0 || (v6 = MEMORY[0x29C29BC70](&__p, &v13), (*(v6 + *(*v6 - 24) + 32) & 5) != 0) || (v7 = sub_29920BAF0(&__p), (*(v7 + *(*v7 - 24) + 32) & 2) == 0))
  {
    operator new();
  }

  v10 = v13;
  __p = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v15 = v8;
  v16 = MEMORY[0x29EDC9570] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&v19);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v10;
}

void sub_299232128(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_2991D7BF8(&a19, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](va);
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_299232180(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (!v3 || !*(a1 + 24))
  {
    v9 = off_2A1A9A3A0(&off_2A1A9A3A0);
    v10 = "current model is not available";
LABEL_11:
    v8 = 0;
    strncpy(v9, v10, 0xFFuLL)[255] = 0;
    goto LABEL_12;
  }

  if (!a2 || !*(a2 + 8) || !*(a2 + 24))
  {
    v9 = off_2A1A9A3A0(&off_2A1A9A3A0);
    goto LABEL_11;
  }

  v5 = 0;
  atomic_fetch_add((a1 + 56), 1uLL);
  atomic_compare_exchange_strong((a1 + 48), &v5, 1uLL);
  if (v5)
  {
    do
    {
      sched_yield();
      v6 = 0;
      atomic_compare_exchange_strong((a1 + 48), &v6, 1uLL);
    }

    while (v6);
  }

  v7 = *(v2 + 8);
  *(v2 + 8) = 0;
  *(a1 + 8) = v7;
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 40) = *(v2 + 40);
  atomic_fetch_add((a1 + 48), 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add((a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  (*(*v3 + 8))(v3);
  v8 = 1;
  v2 = a2;
LABEL_12:
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return v8;
}

void sub_299232328(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 48))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299232364(void *a1)
{
  *a1 = &unk_2A1F65FB0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return a1;
}

_DWORD *sub_2992323D0(uint64_t a1)
{
  if (*(a1 + 8) && *(a1 + 24))
  {
    operator new();
  }

  v1 = off_2A1A9A3A0(&off_2A1A9A3A0);
  strncpy(v1, "Model is not available", 0xFFuLL)[255] = 0;
  return 0;
}

uint64_t sub_299232558(uint64_t a1)
{
  if (*(a1 + 8) && *(a1 + 24))
  {
    operator new();
  }

  v1 = off_2A1A9A3A0(&off_2A1A9A3A0);
  strncpy(v1, "Model is not available", 0xFFuLL)[255] = 0;
  return 0;
}

uint64_t sub_299232600(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 80);
  if (v1)
  {
    return *(v1 + 320);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299232628(uint64_t a1)
{
  *a1 = &unk_2A1F65F20;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_2991BF614((a1 + 128));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  return a1;
}

void sub_2992326BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 127) < 0)
  {
    operator delete(*(v4 + 104));
  }

  if (*(v4 + 103) < 0)
  {
    operator delete(*(v4 + 80));
  }

  if (*(v4 + 79) < 0)
  {
    operator delete(*(v4 + 56));
  }

  sub_299212B90(va);
  sub_299232748(v3, *v5);
  _Unwind_Resume(a1);
}

void sub_299232710(uint64_t a1)
{
  sub_2992327FC(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299232748(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_299232748(a1, *a2);
    sub_299232748(a1, a2[1]);
    sub_2992327A4((a2 + 4));

    operator delete(a2);
  }
}

void sub_2992327A4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_2992327FC(uint64_t a1)
{
  *a1 = &unk_2A1F65F20;
  v2 = a1 + 128;
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 128) = *MEMORY[0x29EDC9538];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 136) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 136) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 144));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 240);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v6 = (a1 + 32);
  sub_299212B90(&v6);
  sub_299232748(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_2992329A0(void *a1)
{
  *a1 = &unk_2A1F65F50;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_299232A2C(void *a1)
{
  *a1 = &unk_2A1F65F80;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1000C4000313F17);
  }

  return a1;
}

void sub_299232A88(void *a1)
{
  *a1 = &unk_2A1F65F80;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BFB0](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_299232B04(void *a1)
{
  *a1 = &unk_2A1F65FB0;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 48))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299232B90(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 & 0x7FFFFFFF;
  while (1)
  {
    v5 = *(a1 + 2 * (v4 - 1));
    if ((atomic_load_explicit(&qword_2A145FF58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FF58))
    {
      sub_299232E14();
      __cxa_atexit(sub_299232EA0, &qword_2A145FF68, &dword_29918C000);
      __cxa_guard_release(&qword_2A145FF58);
    }

    v6 = qword_2A145FF70;
    if (qword_2A145FF70)
    {
      v7 = &qword_2A145FF70;
      do
      {
        v8 = *(v6 + 26);
        v9 = v8 >= v5;
        v10 = v8 < v5;
        if (v9)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * v10);
      }

      while (v6);
      if (v7 != &qword_2A145FF70 && *(v7 + 13) <= v5)
      {
        ++v3;
        goto LABEL_25;
      }
    }

    if ((atomic_load_explicit(&qword_2A145FF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FF60))
    {
      sub_299232ECC();
      __cxa_atexit(sub_299233018, &qword_2A145FF80, &dword_29918C000);
      __cxa_guard_release(&qword_2A145FF60);
    }

    v11 = qword_2A145FF88;
    if (!qword_2A145FF88)
    {
      goto LABEL_25;
    }

    v12 = &qword_2A145FF88;
    do
    {
      v13 = *(v11 + 28);
      v9 = v13 >= v5;
      v14 = v13 < v5;
      if (v9)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v14);
    }

    while (v11);
    if (v12 == &qword_2A145FF88)
    {
      goto LABEL_25;
    }

    if (*(v12 + 14) > v5)
    {
      goto LABEL_25;
    }

    v15 = *(v12 + 8);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    if (v3 <= 0)
    {
      return asc_29945C678[v15];
    }

    --v3;
LABEL_25:
    if (v4-- <= 1)
    {
      return 0;
    }
  }
}

uint64_t sub_299232D70(int ***a1, void *a2, uint64_t a3, int a4)
{
  result = sub_299232B90(a3, a4);
  v9 = result;
  if (result)
  {
    sub_299255778(0);
    v7 = *a1;
    v8 = sub_2992FE0BC();
    return sub_29931A61C(v7, a2, *v8, v8[1], &v9, 1, &v9, 1, 0.0, 1609, 1609, 0, 0, 1, 0, 67, 2, 2);
  }

  return result;
}

uint64_t *sub_299232E14()
{
  v0 = 0;
  qword_2A145FF78 = 0;
  qword_2A145FF70 = 0;
  qword_2A145FF68 = &qword_2A145FF70;
  do
  {
    v2 = asc_29945C678[v0];
    result = sub_29920BF78(&qword_2A145FF68, &v2, &v2);
    ++v0;
  }

  while (v0 != 13);
  return result;
}

void sub_299232ECC()
{
  qword_2A145FF90 = 0;
  qword_2A145FF88 = 0;
  qword_2A145FF80 = &qword_2A145FF88;
  operator new();
}

void sub_299233044(void *a1)
{
  if (a1)
  {
    sub_299233044(*a1);
    sub_299233044(a1[1]);

    operator delete(a1);
  }
}

void sub_29923316C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    MEMORY[0x29C29BF70](v11, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  if (v10)
  {
    MEMORY[0x29C29BF70](v10, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992331C4(uint64_t a1)
{
  v1 = sub_29923417C(a1);
  *(v1 + 360) = 0;
  *(v1 + 368) = 0x1FF00000000;
  operator new[]();
}

void sub_299233250(_Unwind_Exception *a1)
{
  v3 = *(v1 + 384);
  *(v1 + 384) = 0;
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 376);
  *(v1 + 376) = 0;
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8052888210);
  }

  sub_29923423C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2992332B8(uint64_t a1)
{
  sub_299213AB8(a1);
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 392) = *MEMORY[0x29EDC9538];
  *(a1 + 392 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 400) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  *(a1 + 400) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 408));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 504);
  v4 = *(a1 + 384);
  *(a1 + 384) = 0;
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8052888210);
  }

  v5 = *(a1 + 376);
  *(a1 + 376) = 0;
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8052888210);
  }

  return sub_29923423C(a1);
}

uint64_t sub_299233444(uint64_t a1, uint64_t a2)
{
  sub_299233548(a2, "dicdir", v8);
  sub_2991C6CA8(__p, "matrix.bin");
  sub_299260A18(v8, __p, &v10);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v10;
  }

  else
  {
    v3 = v10.__r_.__value_.__r.__words[0];
  }

  v4 = sub_299233658(a1, v3, "r");
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_299233500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

double sub_299233548@<D0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  sub_2991C6CA8(&__p, a2);
  v5 = sub_29920B95C(a1 + 8, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v5)
  {
    operator new();
  }

  if (*(v5 + 79) < 0)
  {
    sub_2991A110C(&v7, *(v5 + 56), *(v5 + 64));
  }

  else
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 72);
  }

  result = *&v7;
  *a3 = v7;
  a3[2] = v8;
  return result;
}

void sub_29923363C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299233658(uint64_t a1, char *a2, _BYTE *a3)
{
  sub_299213AB8(a1);
  sub_2991C6CA8(&v85, a2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = v85;
  *(a1 + 40) = v86;
  if (*a3 != 114)
  {
    goto LABEL_7;
  }

  if (!a3[1])
  {
    *(a1 + 340) = 0;
    v25 = open(a2, 0);
    *(a1 + 336) = v25;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
    v26 = sub_2991C0E9C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
    v27 = sub_2991C0E9C(v26, "(", 1);
    v28 = MEMORY[0x29C29BD30](v27, 171);
    v29 = sub_2991C0E9C(v28, ") [", 3);
    v30 = sub_2991C0E9C(v29, "(fd = ::open(filename, flag | O_BINARY)) >= 0", 45);
LABEL_29:
    v56 = sub_2991C0E9C(v30, "] ", 2);
    v12 = sub_2991C0E9C(v56, "open failed: ", 13);
    goto LABEL_8;
  }

  if (a3[1] != 43 || a3[2])
  {
LABEL_7:
    std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
    v6 = sub_2991C0E9C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
    v7 = sub_2991C0E9C(v6, "(", 1);
    v8 = MEMORY[0x29C29BD30](v7, 162);
    v9 = sub_2991C0E9C(v8, ") [", 3);
    v10 = sub_2991C0E9C(v9, "false", 5);
    v11 = sub_2991C0E9C(v10, "] ", 2);
    v12 = sub_2991C0E9C(v11, "unknown open mode: ", 19);
LABEL_8:
    v13 = v12;
    v14 = strlen(a2);
    sub_2991C0E9C(v13, a2, v14);
    std::ios_base::clear((a1 + 392 + *(*(a1 + 392) - 24)), 0);
    v15 = sub_2991C0E9C((a1 + 392), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/compressed_connector.cpp", 77);
    v16 = sub_2991C0E9C(v15, "(", 1);
    v17 = MEMORY[0x29C29BD30](v16, 59);
    v18 = sub_2991C0E9C(v17, ") [", 3);
    v19 = sub_2991C0E9C(v18, "cmmap_.open(filename, mode)", 27);
    v20 = sub_2991C0E9C(v19, "] ", 2);
    v21 = sub_2991C0E9C(v20, "cannot open: ", 13);
LABEL_9:
    v22 = v21;
    v23 = strlen(a2);
    sub_2991C0E9C(v22, a2, v23);
    return 0;
  }

  *(a1 + 340) = 514;
  v25 = open(a2, 514, 384);
  *(a1 + 336) = v25;
  if (v25 < 0)
  {
    std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
    v52 = sub_2991C0E9C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
    v53 = sub_2991C0E9C(v52, "(", 1);
    v54 = MEMORY[0x29C29BD30](v53, 168);
    v55 = sub_2991C0E9C(v54, ") [", 3);
    v30 = sub_2991C0E9C(v55, "(fd = ::open(filename, flag | O_BINARY, S_IRUSR | S_IWUSR)) >= 0", 64);
    goto LABEL_29;
  }

LABEL_15:
  if (fstat(v25, &v87) < 0)
  {
    std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
    v34 = sub_2991C0E9C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
    v35 = sub_2991C0E9C(v34, "(", 1);
    v36 = MEMORY[0x29C29BD30](v35, 179);
    v37 = sub_2991C0E9C(v36, ") [", 3);
    v38 = sub_2991C0E9C(v37, "::fstat(fd, &st) >= 0", 21);
    v39 = sub_2991C0E9C(v38, "] ", 2);
    v12 = sub_2991C0E9C(v39, "failed to get file size: ", 25);
    goto LABEL_8;
  }

  st_size = v87.st_size;
  *(a1 + 16) = v87.st_size;
  if (st_size)
  {
    v32 = mmap(0, st_size, *(a1 + 340) & 2 | 1u, 1, *(a1 + 336), 0);
    if (v32 == -1)
    {
      std::ios_base::clear((a1 + 48 + *(*(a1 + 48) - 24)), 0);
      v63 = sub_2991C0E9C((a1 + 48), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/mmap.h", 59);
      v64 = sub_2991C0E9C(v63, "(", 1);
      v65 = MEMORY[0x29C29BD30](v64, 193);
      v66 = sub_2991C0E9C(v65, ") [", 3);
      v67 = sub_2991C0E9C(v66, "(p = reinterpret_cast<char *> (::mmap(0, length, prot, MAP_SHARED, fd, 0))) != MAP_FAILED", 89);
      v68 = sub_2991C0E9C(v67, "] ", 2);
      v12 = sub_2991C0E9C(v68, "mmap() failed: ", 15);
      goto LABEL_8;
    }

    v33 = v32;
    madvise(v32, *(a1 + 16), 1);
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 8) = v33;
  close(*(a1 + 336));
  *(a1 + 336) = -1;
  v40 = *(a1 + 8);
  if (!v40)
  {
    std::ios_base::clear((a1 + 392 + *(*(a1 + 392) - 24)), 0);
    v46 = sub_2991C0E9C((a1 + 392), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/compressed_connector.cpp", 77);
    v47 = sub_2991C0E9C(v46, "(", 1);
    v48 = MEMORY[0x29C29BD30](v47, 60);
    v49 = sub_2991C0E9C(v48, ") [", 3);
    v50 = sub_2991C0E9C(v49, "cmmap_.begin()", 14);
    v51 = sub_2991C0E9C(v50, "] ", 2);
    sub_2991C0E9C(v51, "matrix is NULL", 14);
    return 0;
  }

  if (*(a1 + 16) <= 3uLL)
  {
    std::ios_base::clear((a1 + 392 + *(*(a1 + 392) - 24)), 0);
    v57 = sub_2991C0E9C((a1 + 392), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/compressed_connector.cpp", 77);
    v58 = sub_2991C0E9C(v57, "(", 1);
    v59 = MEMORY[0x29C29BD30](v58, 61);
    v60 = sub_2991C0E9C(v59, ") [", 3);
    v61 = sub_2991C0E9C(v60, "cmmap_.size() >= 2", 18);
    v62 = sub_2991C0E9C(v61, "] ", 2);
    v21 = sub_2991C0E9C(v62, "file size is invalid: ", 22);
    goto LABEL_9;
  }

  v41 = *(v40 + 8);
  *(a1 + 368) = v41;
  v42 = *(v40 + 10);
  *(a1 + 370) = v42;
  if (!v41)
  {
    std::ios_base::clear((a1 + 392 + *(*(a1 + 392) - 24)), 0);
    v69 = sub_2991C0E9C((a1 + 392), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/compressed_connector.cpp", 77);
    v70 = sub_2991C0E9C(v69, "(", 1);
    v71 = MEMORY[0x29C29BD30](v70, 78);
    v72 = sub_2991C0E9C(v71, ") [", 3);
    v73 = "lsize_ > 0";
LABEL_34:
    v77 = sub_2991C0E9C(v72, v73, 10);
    v78 = sub_2991C0E9C(v77, "] ", 2);
    sub_2991C0E9C(v78, "left size is invalid", 20);
    return 0;
  }

  if (!v42)
  {
    std::ios_base::clear((a1 + 392 + *(*(a1 + 392) - 24)), 0);
    v74 = sub_2991C0E9C((a1 + 392), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/compressed_connector.cpp", 77);
    v75 = sub_2991C0E9C(v74, "(", 1);
    v76 = MEMORY[0x29C29BD30](v75, 79);
    v72 = sub_2991C0E9C(v76, ") [", 3);
    v73 = "rsize_ > 0";
    goto LABEL_34;
  }

  v43 = *(v40 + 12);
  if (v43)
  {
    v44 = v40 + 16;
    v45 = v44 + 4 * v41 + 4;
    *(a1 + 344) = v44;
    *(a1 + 352) = v45;
    *(a1 + 360) = v45 + 2 * v43;
    return 1;
  }

  std::ios_base::clear((a1 + 392 + *(*(a1 + 392) - 24)), 0);
  v79 = sub_2991C0E9C((a1 + 392), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/compressed_connector.cpp", 77);
  v80 = sub_2991C0E9C(v79, "(", 1);
  v81 = MEMORY[0x29C29BD30](v80, 80);
  v82 = sub_2991C0E9C(v81, ") [", 3);
  v83 = sub_2991C0E9C(v82, "num_elements > 0", 16);
  v84 = sub_2991C0E9C(v83, "] ", 2);
  sub_2991C0E9C(v84, "number of elements is invalid", 29);
  return 0;
}

void *sub_299233E08(void *a1)
{
  v2 = MEMORY[0x29EDC9518];
  v3 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C29BBF0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x29C29BF00](a1 + 53);
  return a1;
}

void sub_299233ED4()
{
  std::ios_base::getloc((MEMORY[0x29EDC93C0] + *(*MEMORY[0x29EDC93C0] - 24)));
  v0 = std::locale::use_facet(&v1, MEMORY[0x29EDC93D0]);
  (v0->__vftable[2].~facet_0)(v0, 10);
  std::locale::~locale(&v1);
  std::ostream::put();
  std::ostream::flush();
  exit(-1);
}

uint64_t sub_299233F98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x29C29BBF0](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t sub_299234060(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t sub_29923417C(uint64_t a1)
{
  *a1 = &unk_2A1F65FF0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_2991BF614((a1 + 48));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = -1;
  return a1;
}

void sub_2992341E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_299234204(uint64_t a1)
{
  sub_29923423C(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29923423C(uint64_t a1)
{
  *a1 = &unk_2A1F65FF0;
  sub_299213AB8(a1);
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *(a1 + 48) = *MEMORY[0x29EDC9538];
  *(a1 + 48 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 56) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 160);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_2992343A8(void *a1)
{
  sub_2992343E0(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2992343E0(void *a1)
{
  *a1 = &unk_2A1F66020;
  v2 = a1[1];
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x29C29BFB0](v2, 0x1012C40EC159624);
  }

  return a1;
}

void sub_299234450(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v29 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145FFA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FFA0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145FFA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FFA8))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145E3F0, &dword_29918C000);
    __cxa_guard_release(&qword_2A145FFA8);
  }

  std::mutex::lock(&stru_2A145E3F0);
  v6 = qword_2A145FF98;
  v7 = sub_2991C0548(qword_2A145FF98, a1);
  v8 = v6[1];
  if (!*&v8)
  {
    goto LABEL_19;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*v6 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_19:
    v16 = sub_2993652F8(0xDu);
    v17 = os_signpost_id_make_with_pointer(v16, a1);
    v18 = sub_2993652F8(0xDu);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v18))
      {
        if (*(a1 + 23) >= 0)
        {
          v20 = a1;
        }

        else
        {
          v20 = *a1;
        }

        buf = 136315138;
        *buf_4 = v20;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SingletonResourceManagerLoad", "Load resource with key: [%s]", &buf, 0xCu);
      }
    }

    (*(a2 + 16))(a2);
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_19;
    }

LABEL_18:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (!sub_2991C09F4(v6, v14 + 2, a1))
  {
    goto LABEL_18;
  }

  v21 = v14[6];
  if (!v21)
  {
    goto LABEL_19;
  }

  if (v21->__shared_owners_ == -1 || a3 != 0)
  {
    goto LABEL_19;
  }

  v23 = std::__shared_weak_count::lock(v21);
  if (v23)
  {
    v24 = v14[5];
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(&stru_2A145E3F0);
  *a4 = v24;
  a4[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v23);
  }
}

void sub_299234DA0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299234DD8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_299234E08(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F660A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299234E48(uint64_t a1, __CFDictionary *a2, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v6 = result;
    result = sub_299377154(result);
    if (result)
    {
      result = (*(*v6 + 208))(v6);
      if (result)
      {
        v7 = *(a1 + 32);
        if (!v7)
        {
          sub_2991A2240();
        }

        v8 = (*(*v7 + 48))(v7);
        if (v8 == 2 || v8 == 4)
        {
          v10 = off_29EF10340;
        }

        else
        {
          if (v8 != 5)
          {
            return 1;
          }

          v10 = off_29EF10348;
        }

        CFDictionaryAddValue(a2, *v10, *MEMORY[0x29EDB8F00]);
        return 1;
      }
    }
  }

  return result;
}

void sub_299234FA4(uint64_t a1)
{
  sub_299234FF0(a1 + 8);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299234FF0(uint64_t a1)
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

uint64_t sub_299235070(uint64_t a1, uint64_t a2)
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

void sub_299235108(const void *a1, uint64_t a2, unsigned int a3, double a4)
{
  v7 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[1] = 0;
  v5[2] = v6;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x4002000000;
  v4[3] = sub_299235434;
  v4[5] = v5;
  v5[0] = 0;
  v4[4] = sub_299235470;
  operator new();
}

void sub_2992353F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void **a23, uint64_t a24, uint64_t a25, const void **a26)
{
  sub_299235660(v26 - 144);
  _Block_object_dispose(&a17, 8);
  sub_2992355D0(a23);
  sub_2992355D0(a26);
  _Unwind_Resume(a1);
}

void *sub_299235434(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void sub_299235478(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 40);
  LXCursorConditionalProbability();
  if (v3 + v4 >= *(a1 + 48))
  {
    operator new();
  }
}

void sub_2992355BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299235660(va);
  _Unwind_Resume(a1);
}

void sub_2992355D0(const void **a1)
{
  if (a1)
  {
    sub_2992355D0(*a1);
    sub_2992355D0(a1[1]);
    sub_299235628(a1 + 4, 0);

    operator delete(a1);
  }
}

void sub_299235628(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299235660(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299235628(v2 + 4, 0);
    }

    operator delete(v2);
  }

  return a1;
}

const __CFNumber *sub_2992356B0(const __CFDictionary *a1, const void *a2, void *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v6 == result)
    {

      return CFNumberGetValue(v5, kCFNumberFloatType, a3);
    }
  }

  return result;
}

uint64_t sub_299235724(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2A145FFB0, memory_order_acquire) & 1) == 0)
  {
    v2 = a1;
    if (__cxa_guard_acquire(&qword_2A145FFB0))
    {
      v3 = sub_2992774EC(v2);
      v4 = strlen(v3);
      std::string::__init(&v9, v3, v4);
      v5 = std::string::append(&v9, "CPSearchParameters", 0x12uLL);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v11 = v5->__r_.__value_.__r.__words[2];
      *__p = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      v7[0] = MEMORY[0x29EDCA5F8];
      v7[1] = 0x40000000;
      v7[2] = sub_299236128;
      v7[3] = &unk_29EF0DD98;
      v8 = v2;
      sub_2992358B4(__p, v7);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

      __cxa_atexit(sub_2992362B8, &qword_2A145FFD0, &dword_29918C000);
      __cxa_guard_release(&qword_2A145FFB0);
    }
  }

  return qword_2A145FFD0;
}

void sub_29923586C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  __cxa_guard_abort(&qword_2A145FFB0);
  _Unwind_Resume(a1);
}

void sub_2992358B4(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145FFC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FFC0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145FFC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FFC8))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145E430, &dword_29918C000);
    __cxa_guard_release(&qword_2A145FFC8);
  }

  std::mutex::lock(&stru_2A145E430);
  v4 = qword_2A145FFB8;
  v5 = sub_2991C0548(qword_2A145FFB8, a1);
  v6 = v4[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v6)
    {
      v10 = v5 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v5;
  }

  v11 = *(*v4 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    v14 = sub_2993652F8(0xDu);
    v15 = os_signpost_id_make_with_pointer(v14, a1);
    v16 = sub_2993652F8(0xDu);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v16))
      {
        if (*(a1 + 23) >= 0)
        {
          v18 = a1;
        }

        else
        {
          v18 = *a1;
        }

        buf = 136315138;
        *buf_4 = v18;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SingletonResourceManagerLoad", "Load resource with key: [%s]", &buf, 0xCu);
      }
    }

    (*(a2 + 16))(a2);
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= *&v6 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (!sub_2991C09F4(v4, v12 + 2, a1))
  {
    goto LABEL_18;
  }

  v19 = v12[6];
  if (!v19 || v19->__shared_owners_ == -1)
  {
    goto LABEL_19;
  }

  v20 = std::__shared_weak_count::lock(v19);
  if (v20)
  {
    v21 = v12[5];
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(&stru_2A145E430);
  qword_2A145FFD0 = v21;
  *algn_2A145FFD8 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v20);
  }
}

void sub_2992362A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299215B18(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992362B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2991A893C(v2);
  }

  return a1;
}

void sub_2992362EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299236324(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_299236344(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F66158))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299236384(UTF32Char theChar)
{
  if ((atomic_load_explicit(&qword_2A1461D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461D70))
  {
    qword_2A1461D68 = CEMCreateEmojiCharacterSet();
    __cxa_guard_release(&qword_2A1461D70);
  }

  result = qword_2A1461D68;
  if (qword_2A1461D68)
  {
    return CFCharacterSetIsLongCharacterMember(qword_2A1461D68, theChar) != 0;
  }

  return result;
}

BOOL sub_299236410(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  if (!Length)
  {
    return 0;
  }

  v3 = Length;
  v4 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  do
  {
    v6 = v4 >= v3;
    if (v4 >= v3)
    {
      break;
    }

    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(a1, v4);
    v4 += RangeOfComposedCharactersAtIndex.length;
    if (v4 > v3)
    {
      break;
    }

    v8 = CFStringCreateWithSubstring(v5, a1, RangeOfComposedCharactersAtIndex);
    IsSingleEmoji = CEMStringIsSingleEmoji();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  while (IsSingleEmoji);
  return v6;
}

void sub_2992364D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

CFIndex sub_2992364F0(CFStringRef theString)
{
  if ((atomic_load_explicit(&qword_2A1461D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461D80))
  {
    qword_2A1461D78 = sub_2992365B0();
    __cxa_guard_release(&qword_2A1461D80);
  }

  if (!theString)
  {
    return 0;
  }

  result = CFStringGetLength(theString);
  if (result)
  {
    v3 = qword_2A1461D78;
    v4.length = CFStringGetLength(theString);
    v4.location = 0;
    return CFStringFindCharacterFromSet(theString, v3, v4, 2uLL, 0) == 0;
  }

  return result;
}

__CFCharacterSet *sub_2992365B0()
{
  Mutable = CFCharacterSetCreateMutable(0);
  v3.location = 97;
  v3.length = 26;
  CFCharacterSetAddCharactersInRange(Mutable, v3);
  v4.location = 65;
  v4.length = 26;
  CFCharacterSetAddCharactersInRange(Mutable, v4);
  CFCharacterSetAddCharactersInString(Mutable, @"'-");
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  CFCharacterSetUnion(Mutable, Predefined);
  CFCharacterSetInvert(Mutable);
  return Mutable;
}

void sub_299236624(CFStringRef theString@<X1>, const __CFString *a2@<X0>, std::string *a3@<X8>)
{
  Length = CFStringGetLength(theString);
  v7 = CFStringGetLength(a2);
  theStringa = theString;
  v119 = 0;
  v120 = Length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v117 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v121 = 0;
  v122 = 0;
  v118 = CStringPtr;
  v108 = a2;
  v111 = 0;
  v112 = v7;
  v10 = CFStringGetCharactersPtr(a2);
  v11 = 0;
  v109 = v10;
  if (!v10)
  {
    v11 = CFStringGetCStringPtr(a2, 0x600u);
  }

  v113 = 0;
  v114 = 0;
  v110 = v11;
  sub_299236F40(__p, v7 + 1 + (v7 + 1) * Length);
  v12 = __p[0];
  *__p[0] = 0;
  v13 = 8 * v7;
  v14 = v7;
  if (Length >= 1)
  {
    v15 = 0;
    v16 = vdupq_n_s64(Length - 1);
    v17 = 16 * v7 + 16;
    v18 = 4;
    v19 = v12;
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v15), xmmword_2993FCC00)));
      if (v20.i8[0])
      {
        *&v19[v13 + 8] = v18 - 2;
      }

      if (v20.i8[4])
      {
        *&v19[v17] = v18;
      }

      v15 += 2;
      v19 += v17;
      v18 += 4;
    }

    while (((Length + 1) & 0xFFFFFFFFFFFFFFFELL) != v15);
  }

  if (v7 >= 1)
  {
    v21 = 0;
    v22 = vdupq_n_s64(v7 - 1);
    v23 = (v12 + 16);
    v24 = 4;
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v21), xmmword_2993FCC00)));
      if (v25.i8[0])
      {
        *(v23 - 1) = v24 - 2;
      }

      if (v25.i8[4])
      {
        *v23 = v24;
      }

      v21 += 2;
      v23 += 2;
      v24 += 4;
    }

    while (((v7 + 1) & 0xFFFFFFFFFFFFFFFELL) != v21);
  }

  if (Length < 1)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_122;
  }

  v96 = Length - 1;
  v97 = v7 + 1;
  v98 = a3;
  v99 = v13 + 8;
  v26 = 1;
  v103 = v7;
  v104 = 8;
  v100 = Length;
  do
  {
    if (v14 >= 1)
    {
      v27 = 0;
      v28 = v26 - 1;
      v29 = v26 - 5;
      if (v26 < 5)
      {
        v29 = 0;
      }

      v102 = v29;
      v101 = v29 + 64;
      v30 = -1;
      v31 = v104;
      v32 = 65;
      v33 = 1;
      do
      {
        if (v33 >= 5)
        {
          v34 = 5;
        }

        else
        {
          v34 = v33;
        }

        v35 = v120;
        if (v120 >= v26)
        {
          if (v117)
          {
            v36 = v117[v119 + v28];
          }

          else if (v118)
          {
            v36 = v118[v119 + v28];
          }

          else
          {
            v37 = v121;
            if (v122 < v26 || v121 >= v26)
            {
              if (v101 < v120)
              {
                v35 = v101;
              }

              v121 = v102;
              v122 = v35;
              v123.length = v35 - v102;
              v123.location = v119 + v102;
              CFStringGetCharacters(theStringa, v123, buffer);
              v37 = v121;
              v14 = v103;
            }

            v36 = buffer[v28 - v37];
          }
        }

        else
        {
          v36 = 0;
        }

        v39 = v27 + 1;
        v40 = v112;
        if (v112 >= v27 + 1)
        {
          if (v109)
          {
            v42 = &v109[v111];
          }

          else
          {
            if (v110)
            {
              v41 = v110[v111 + v27];
              goto LABEL_49;
            }

            if (v114 < v39 || (v46 = v113, v113 >= v39))
            {
              v47 = v27 - v34 + 65;
              if (v47 >= v112)
              {
                v47 = v112;
              }

              v113 = v27 - v34 + 1;
              v114 = v47;
              if (v112 >= v32 - v34)
              {
                v40 = v32 - v34;
              }

              v124.location = v27 - v34 + 1 + v111;
              v124.length = v40 + v34 + v30;
              CFStringGetCharacters(v108, v124, v107);
              v46 = v113;
              v14 = v103;
            }

            v42 = &v107[-v46];
          }

          v41 = v42[v27];
        }

        else
        {
          v41 = 0;
        }

LABEL_49:
        v43 = __p[0] + 8 * v27 + v13;
        if (v36 == v41)
        {
          v44 = *(__p[0] + v31 - 8);
        }

        else
        {
          v44 = *(__p[0] + v31 - 8) + 1;
        }

        if (*(__p[0] + v31) + 2 >= *(v43 + 1) + 2)
        {
          v45 = *(v43 + 1) + 2;
        }

        else
        {
          v45 = *(__p[0] + v31) + 2;
        }

        if (v44 >= v45)
        {
          v44 = v45;
        }

        *(v43 + 2) = v44;
        ++v33;
        ++v27;
        --v30;
        ++v32;
        v31 += 8;
      }

      while (v14 != v27);
    }

    v48 = v100;
    v104 += v99;
    v13 += v99;
  }

  while (v26++ != v100);
  v98->__r_.__value_.__r.__words[0] = 0;
  v98->__r_.__value_.__l.__size_ = 0;
  v98->__r_.__value_.__r.__words[2] = 0;
  if (v14 < 1)
  {
    v75 = v100;
    v65 = v14;
  }

  else
  {
    v50 = -v100;
    v51 = v100 + 64;
    v52 = 8 * v100 * v97;
    v53 = 8 * ~v14;
    v54 = 8 * v96 * v97 - 8;
    do
    {
      if (v48 >= 5)
      {
        v55 = 5;
      }

      else
      {
        v55 = v48;
      }

      v56 = v120;
      if (v120 >= v48)
      {
        if (v117)
        {
          v57 = v117[v119 - 1 + v48];
        }

        else if (v118)
        {
          LOBYTE(v57) = v118[v119 - 1 + v48];
        }

        else
        {
          v58 = v121;
          if (v122 < v48 || v121 >= v48)
          {
            v60 = v14;
            v61 = v55 + v50;
            v62 = v51 - v55;
            v63 = v48 - v55;
            v64 = v63 + 64;
            if (v63 + 64 >= v120)
            {
              v64 = v120;
            }

            v121 = v63;
            v122 = v64;
            if (v120 >= v62)
            {
              v56 = v62;
            }

            v125.location = v63 + v119;
            v125.length = v56 + v61;
            CFStringGetCharacters(theStringa, v125, buffer);
            v58 = v121;
            v14 = v60;
          }

          v57 = buffer[v48 - 1 - v58];
        }
      }

      else
      {
        LOBYTE(v57) = 0;
      }

      v65 = v14 - 1;
      v66 = v112;
      if (v112 >= v14)
      {
        if (v109)
        {
          v67 = v109[v111 + v65];
        }

        else if (v110)
        {
          LOBYTE(v67) = v110[v111 + v65];
        }

        else
        {
          if (v114 < v14 || (v68 = v113, v113 >= v14))
          {
            v69 = v14;
            v70 = v14 - 5;
            if (v14 < 5)
            {
              v70 = 0;
            }

            if (v70 + 64 < v112)
            {
              v66 = v70 + 64;
            }

            v113 = v70;
            v114 = v66;
            v126.length = v66 - v70;
            v126.location = v111 + v70;
            CFStringGetCharacters(v108, v126, v107);
            v68 = v113;
            v14 = v69;
          }

          v67 = v107[v65 - v68];
        }
      }

      else
      {
        LOBYTE(v67) = 0;
      }

      v71 = __p[0] + 8 * v14;
      v72 = *&v71[v52];
      v73 = &v71[v54];
      v74 = *v73;
      if (v57 != v67)
      {
        ++v74;
      }

      if (v72 == v74 || v72 != *(v73 + 1) + 2)
      {
        std::string::push_back(v98, v67);
      }

      else
      {
        v65 = v14;
        std::string::push_back(v98, 45);
      }

      v75 = v48 - 1;
      if (v48 < 2)
      {
        break;
      }

      ++v50;
      --v51;
      v52 += v53;
      v54 += v53;
      v14 = v65;
      --v48;
    }

    while (v65);
  }

  if (v75 < 1)
  {
    v14 = v65;
    Length = v75;
    a3 = v98;
  }

  else
  {
    a3 = v98;
    if (v65 <= 0)
    {
      v76 = v75 + 1;
      do
      {
        std::string::push_back(v98, 45);
        --v76;
      }

      while (v76 > 1);
      goto LABEL_140;
    }

    v14 = v65;
    Length = v75;
  }

LABEL_122:
  v65 = v14;
  if (Length <= 0)
  {
LABEL_140:
    v86 = -v65;
    for (i = v65 + 64; ; --i)
    {
      v88 = v65 >= 5 ? 5 : v65;
      if (v65 < 1)
      {
        break;
      }

      v89 = v112;
      if (v112 >= v65)
      {
        if (v109)
        {
          LOBYTE(v90) = v109[v111 - 1 + v65];
        }

        else if (v110)
        {
          LOBYTE(v90) = v110[v111 - 1 + v65];
        }

        else
        {
          if (v114 < v65 || (v91 = v113, v113 >= v65))
          {
            v92 = v88 + v86;
            v93 = i - v88;
            v94 = v65 - v88;
            v95 = v94 + 64;
            if (v94 + 64 >= v112)
            {
              v95 = v112;
            }

            v113 = v94;
            v114 = v95;
            if (v112 >= v93)
            {
              v89 = v93;
            }

            v127.location = v94 + v111;
            v127.length = v89 + v92;
            CFStringGetCharacters(v108, v127, v107);
            v91 = v113;
          }

          v90 = v107[v65 - 1 - v91];
        }
      }

      else
      {
        LOBYTE(v90) = 0;
      }

      ++v86;
      std::string::push_back(a3, v90);
      --v65;
    }
  }

  v77 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  v78 = v77 < 0;
  if (v77 >= 0)
  {
    v79 = a3;
  }

  else
  {
    v79 = a3->__r_.__value_.__r.__words[0];
  }

  if (v78)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  v81 = (v79 + size - 1);
  if (size)
  {
    v82 = v81 > v79;
  }

  else
  {
    v82 = 0;
  }

  if (v82)
  {
    v83 = &v79->__r_.__value_.__s.__data_[1];
    do
    {
      v84 = *(v83 - 1);
      *(v83 - 1) = v81->__r_.__value_.__s.__data_[0];
      v81->__r_.__value_.__s.__data_[0] = v84;
      v81 = (v81 - 1);
    }

    while (v83++ < v81);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_299236E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (*(a12 + 23) < 0)
  {
    operator delete(*a12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_299236E64(CFStringRef result, CFIndex a2)
{
  if (result)
  {
    v3 = result;
    v4 = sub_29927947C();
    v9 = xmmword_299403150;
    v10.length = CFStringGetLength(v3);
    v10.location = 0;
    LODWORD(v4) = CFStringFindCharacterFromSet(v3, v4, v10, 4uLL, &v9);
    Length = CFStringGetLength(v3);
    if (v4)
    {
      v6 = *(&v9 + 1) + v9;
    }

    else
    {
      v6 = 0;
    }

    v7 = Length - v6 - a2;
    v8.location = (v7 & ~(v7 >> 63)) + v6;
    if (v8.location < 1)
    {
      return CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v3);
    }

    else
    {
      if (v7 <= 0)
      {
        v8.length = Length - v6;
      }

      else
      {
        v8.length = a2;
      }

      return CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], v3, v8);
    }
  }

  return result;
}

uint64_t *sub_299236F40(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29920E024(a1, a2);
  }

  return a1;
}

void sub_299236F9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299236FB8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_299237000(uint64_t a1, const __CFURL *a2, uint64_t a3, int a4)
{
  *a1 = &unk_2A1F66180;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = sub_299237120();
  sub_29919C3A8((a1 + 32));
  sub_299255778(0);
  *(a1 + 40) = &qword_2A1461DC0;
  v6 = sub_299275654(a2);
  v7 = v6;
  v10[1] = v6;
  if (v6)
  {
    sub_29927646C(v6, @"heteronyms.dat", v10);
    v8 = v10[0];
    if (v10[0])
    {
      sub_29919C4C8((a1 + 32), v10[0]);
      MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
    }

    CFRelease(v7);
  }

  return a1;
}

void sub_2992370DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x29C29BF70](v4, v5);
  sub_29920FE30(va, 0);
  sub_29919C3B0((v3 + 32));
  _Unwind_Resume(a1);
}

void *sub_299237120()
{
  if ((atomic_load_explicit(&qword_2A145E6F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E6F0))
  {
    sub_2993131A0(&unk_2A145E470);
    __cxa_atexit(sub_29923A99C, &unk_2A145E470, &dword_29918C000);
    __cxa_guard_release(&qword_2A145E6F0);
  }

  return &unk_2A145E470;
}

uint64_t sub_2992371A8(uint64_t a1)
{
  *a1 = &unk_2A1F66180;
  sub_29919C3B0((a1 + 32));
  return a1;
}

void sub_2992371EC(uint64_t a1)
{
  *a1 = &unk_2A1F66180;
  sub_29919C3B0((a1 + 32));

  JUMPOUT(0x29C29BFB0);
}

double sub_299237250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  __p = 0;
  v9 = 0;
  v10 = 0;
  sub_299382E10(a2, a3, &v14, &v11, &__p, 0xFFFFFFFFFFFFFFFFLL);
  v5 = (*(*a3 + 408))(a3);
  v6 = (*(*a1 + 24))(a1, &v14, &v11, &__p, v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return v6;
}

void sub_299237358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_299237394(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v360[9] = *MEMORY[0x29EDCA608];
  v11 = sub_299237120();
  v12 = v5[1] - *v5;
  if (!v12)
  {
    return 0.0;
  }

  v13 = v11;
  v210 = 0;
  v211 = 0;
  v206 = v5[1] - *v5;
  v14 = 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3);
  v220 = v10;
  v15 = *v7;
  v16 = 0;
  v17 = *v9;
  v218 = v14 - 1;
  v209 = v11 + 26;
  if (v14 <= 1)
  {
    v14 = 1;
  }

  v213 = v14;
  v204 = v11 + 27;
  v18 = 0.0;
  v205 = v11 + 25;
  v207 = v11;
  v208 = v3;
  v212 = v5;
  do
  {
    v19 = *v5 + 40 * v16;
    v20 = *(v19 + 24);
    if (v17)
    {
      v21 = *(v19 + 24);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v19 + 28);
    if (v15)
    {
      v23 = *(v19 + 28);
    }

    else
    {
      v23 = 0;
    }

    v225 = v23;
    if (v16 == v218)
    {
      v223 = 0;
      v215 = 0;
      v214 = 0;
    }

    else
    {
      v24 = (*v5 + 40 * v16);
      v25 = v24[32];
      if (!v17)
      {
        v25 = 0;
      }

      v223 = v25;
      v26 = v24[34];
      if (!v15)
      {
        v26 = 0;
      }

      v215 = v26;
      v214 = v24[35];
    }

    v227 = &v17[v20];
    cf = CFStringCreateWithCharacters(0, v17, v21);
    v216 = &v15[v22];
    v221 = v22;
    v222 = v16;
    v27 = v225;
    v224 = v17;
    v226 = v15;
    v219 = v20;
    if (*(*v5 + 40 * v16) == 5)
    {
      if (v21)
      {
        v28 = v21 - 1;
        v29 = v17;
        do
        {
          v30 = *v29++;
          v31 = v30 - 48;
          v32 = (v30 - 48) < 0xA;
          v71 = v28-- != 0;
          v33 = v71;
        }

        while (v31 <= 9 && (v33 & 1) != 0);
        v34 = 2 * v20 - 2;
        v35 = v17;
        do
        {
          v36 = *v35++;
          v37 = (v36 + 240);
          v38 = v37 < 0xA;
          v39 = v37 > 9 || v34 == 0;
          v34 -= 2;
        }

        while (!v39);
      }

      else
      {
        v32 = 0;
        v38 = 0;
      }

      v41 = v21;
      if (v16 == v218)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v21 != 1 || (v40 = *v17, v40 != 49) && v40 != 65297 && v40 != 19968)
      {
        v38 = 0;
        v32 = 0;
        goto LABEL_73;
      }

      v38 = 0;
      if (v16 == v218)
      {
        v32 = 0;
        goto LABEL_73;
      }

      v41 = 1;
      v32 = 0;
    }

    v234.__r_.__value_.__r.__words[0] = v17;
    v234.__r_.__value_.__l.__size_ = v41;
    __dst = v227;
    v232 = v223;
    if ((atomic_load_explicit(&qword_2A145FFE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FFE0))
    {
      sub_299217DF0(__p, L"時");
      WORD4(v237) = 27;
      sub_299217DF0(&__len, L"次");
      WORD4(v239) = 11;
      sub_299217DF0(&v240, byte_29945C694);
      WORD4(v241) = 25;
      sub_299217DF0(&v242, L"大");
      WORD4(v243) = 100;
      sub_299217DF0(&v244, byte_29945C69A);
      WORD4(v245) = 10;
      sub_299217DF0(&v246, byte_29945C69E);
      WORD4(v247) = 100;
      sub_29923AA5C(__p, 6);
      for (i = 0; i != -192; i -= 32)
      {
        if (*(&v247 + i + 7) < 0)
        {
          operator delete(*(&v246 + i));
        }
      }

      __cxa_atexit(sub_29923A9C8, &xmmword_2A1460108, &dword_29918C000);
      __cxa_guard_release(&qword_2A145FFE0);
      v13 = v207;
      v3 = v208;
      v5 = v212;
    }

    sub_29923A9CC(&__dst, __p);
    v42 = sub_29923AF34(&xmmword_2A1460108, __p);
    v43 = *(&xmmword_2A1460108 + 1);
    if (!*(&xmmword_2A1460108 + 1))
    {
      v48 = 0;
LABEL_63:
      v22 = v221;
      goto LABEL_64;
    }

    v44 = v42;
    v45 = vcnt_s8(*(&xmmword_2A1460108 + 8));
    v45.i16[0] = vaddlv_u8(v45);
    v46 = v45.u32[0];
    if (v45.u32[0] > 1uLL)
    {
      v47 = v42;
      if (v42 >= *(&xmmword_2A1460108 + 1))
      {
        v47 = v42 % *(&xmmword_2A1460108 + 1);
      }
    }

    else
    {
      v47 = (*(&xmmword_2A1460108 + 1) - 1) & v42;
    }

    v49 = *(xmmword_2A1460108 + 8 * v47);
    if (!v49)
    {
      v48 = 0;
      v13 = v207;
      v3 = v208;
      goto LABEL_63;
    }

    v50 = *v49;
    if (!*v49)
    {
LABEL_60:
      v48 = 0;
      v13 = v207;
      v3 = v208;
      v5 = v212;
      goto LABEL_63;
    }

    while (1)
    {
      v51 = *(v50 + 1);
      if (v44 == v51)
      {
        break;
      }

      if (v46 > 1)
      {
        if (v51 >= v43)
        {
          v51 %= v43;
        }
      }

      else
      {
        v51 &= v43 - 1;
      }

      if (v51 != v47)
      {
        goto LABEL_60;
      }

LABEL_59:
      v50 = *v50;
      if (!v50)
      {
        goto LABEL_60;
      }
    }

    if (!sub_29923AF78(&xmmword_2A1460108, v50 + 8, __p))
    {
      goto LABEL_59;
    }

    v165 = v234.__r_.__value_.__r.__words[0];
    if (v234.__r_.__value_.__r.__words[0])
    {
      size = v234.__r_.__value_.__l.__size_;
      v167 = v234.__r_.__value_.__l.__size_;
      v168 = v234.__r_.__value_.__r.__words[0];
      if (v234.__r_.__value_.__l.__size_)
      {
        while (1)
        {
          v169 = *v168++;
          v170 = (v169 + 240);
          if ((v169 - 48) >= 0xA && v170 >= 0xA)
          {
            break;
          }

          if (!--v167)
          {
            v13 = v207;
            v3 = v208;
            v22 = v221;
            do
            {
              v173 = *v165++;
              v172 = v173;
              if (v173 >> 4 <= 0xFF0)
              {
                v174 = -48;
              }

              else
              {
                v174 = -65296;
              }

              v167 = v172 + 10 * v167 + v174;
              --size;
            }

            while (size);
            v48 = v167 > v50[20];
            v5 = v212;
            goto LABEL_64;
          }
        }
      }
    }

    v229 = 0;
    sub_29923A9CC(&v234.__r_.__value_.__l.__data_, &v235);
    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v177 = &v235;
    }

    else
    {
      v177 = v235.__r_.__value_.__r.__words[0];
    }

    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v178 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v178 = v235.__r_.__value_.__l.__size_;
    }

    v13 = v207;
    v22 = v221;
    v48 = (sub_299281900(v177, v178, &v229) || sub_29928182C(v177, v178, &v229)) && v229 > v50[20];
    v5 = v212;
    v3 = v208;
    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

LABEL_64:
    if (SBYTE7(v237) < 0)
    {
      operator delete(__p[0]);
    }

    if (v48)
    {
LABEL_67:
      v18 = v18 + v13[20] / 0.1;
      goto LABEL_68;
    }

    if ((atomic_load_explicit(&qword_2A145FFE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FFE8))
    {
      LOWORD(__p[0]) = 0;
      __p[1] = &unk_29945C6A2;
      *&v237 = 2;
      *(&v237 + 1) = &unk_29945C6A8;
      *&__len = 1;
      WORD4(__len) = 8;
      *&v239 = "o0a0";
      *(&v239 + 1) = 2;
      *&v240 = "!h";
      *(&v240 + 1) = 1;
      LOWORD(v241) = 10;
      *(&v241 + 1) = L"と";
      *&v242 = 1;
      *(&v242 + 1) = &unk_29945C6B6;
      *&v243 = 1;
      WORD4(v243) = 9;
      *&v244 = word_29945BEB4;
      *(&v244 + 1) = 1;
      *&v245 = &unk_29945C6BA;
      *(&v245 + 1) = 1;
      LOWORD(v246) = 9;
      *(&v246 + 1) = word_29945C6BE;
      *&v247 = 3;
      *(&v247 + 1) = word_29945C6C6;
      *&v248 = 1;
      WORD4(v248) = 9;
      *&v249 = word_29945C6BE;
      *(&v249 + 1) = 3;
      *&v250 = L"時";
      *(&v250 + 1) = 1;
      LOWORD(v251) = 5;
      *(&v251 + 1) = word_29945BCD8;
      v252 = 1;
      v253 = &unk_29945C6CA;
      v254 = 1;
      LOWORD(v255) = 5;
      v256 = word_29945BCD8;
      v257 = 1;
      v258 = byte_29945C69E;
      v259 = 1;
      LOWORD(v260) = 5;
      v261 = word_29945BCD8;
      v262 = 1;
      v263 = &unk_29945C6CE;
      v264 = 1;
      LOWORD(v265) = 10;
      v266 = word_29945C6D2;
      v267 = 3;
      v268 = &unk_29945C6DA;
      v269 = 1;
      LOWORD(v270) = 10;
      v271 = word_29945C6D2;
      v272 = 3;
      v273 = byte_29945C69E;
      v274 = 1;
      LOWORD(v275) = 10;
      v276 = word_29945C6D2;
      v277 = 3;
      v278 = &unk_29945C6CE;
      v279 = 1;
      LOWORD(v280) = 2;
      v281 = L"に";
      v282 = 1;
      v283 = &unk_29945C6DE;
      v284 = 1;
      LOWORD(v285) = 10;
      v286 = word_29945C6D2;
      v287 = 3;
      v288 = word_29945C6E2;
      v289 = 1;
      LOWORD(v290) = 2;
      v291 = L"に";
      v292 = 1;
      v293 = &unk_29945C6E6;
      v294 = 1;
      LOWORD(v295) = 20;
      v296 = &unk_29945C6EA;
      v297 = 4;
      v298 = L"時";
      v299 = 1;
      LOWORD(v300) = 28;
      v301 = &unk_29945C6F4;
      v302 = 6;
      v303 = L"時";
      v304 = 1;
      LOWORD(v305) = 9;
      v306 = word_29945C6BE;
      v307 = 3;
      v308[0] = &unk_29945C702;
      v308[1] = 2;
      v309 = 2;
      v310 = "v0_0";
      v311 = 2;
      v312 = word_29945C6E2;
      v313 = 1;
      sub_29923BA50(&qword_2A1460060, __p, 19);
      __cxa_atexit(sub_29923B0C0, &qword_2A1460060, &dword_29918C000);
      __cxa_guard_release(&qword_2A145FFE8);
      v13 = v207;
      v3 = v208;
      v5 = v212;
      v22 = v221;
    }

    v235.__r_.__value_.__r.__words[0] = 0;
    if ((sub_29923B0EC(v17, v21, &v235) & 1) == 0 || (v52 = v235.__r_.__value_.__r.__words[0], v235.__r_.__value_.__l.__data_ >= 0x8000))
    {
      v27 = v225;
      goto LABEL_73;
    }

    if (v235.__r_.__value_.__l.__data_ <= 5)
    {
      if (v235.__r_.__value_.__l.__data_ <= 2)
      {
        if (v235.__r_.__value_.__r.__words[0] == 1)
        {
          v94 = v215;
          if (v225 == 1)
          {
            v182 = *v226;
            v188 = 12402;
            goto LABEL_436;
          }

          if (v225 != 2 || *v226 != 12402)
          {
            goto LABEL_437;
          }
        }

        else
        {
          v94 = v215;
          if (v235.__r_.__value_.__r.__words[0] != 2)
          {
            goto LABEL_437;
          }

          if (v225 == 1)
          {
            v182 = *v226;
            if (v182 == 12376)
            {
              goto LABEL_480;
            }

            v188 = 12405;
            goto LABEL_436;
          }

          if (v225 != 2)
          {
            goto LABEL_437;
          }

          v181 = *v226;
          if (v181 != 12395)
          {
            if (v181 != 12407)
            {
              if (v181 != 12405)
              {
                goto LABEL_437;
              }

              v182 = v226[1];
              if (v182 == 12358)
              {
                goto LABEL_480;
              }

              if (v182 == 12383)
              {
                if (v223 == 1)
                {
                  v183 = *v227;
                  if (v183 == 26376 || v183 == 26847)
                  {
                    goto LABEL_437;
                  }
                }

                if (v215 != 2)
                {
                  if (v215 == 3)
                  {
                    v184 = 3;
                    v185 = &word_29945C718;
                    v186 = v216;
                    while (*v185 == *v186)
                    {
                      ++v186;
                      ++v185;
                      if (!--v184)
                      {
                        goto LABEL_437;
                      }
                    }

                    v201 = 0;
                    while (word_29945C720[v201] == v216[v201])
                    {
                      if (++v201 == 3)
                      {
                        goto LABEL_437;
                      }
                    }
                  }

                  goto LABEL_480;
                }

                v200 = *v216;
                if (v200 > 0x306E)
                {
                  if (v200 != 12399 && v200 != 12405)
                  {
                    goto LABEL_480;
                  }

                  v96 = v216[1];
                  v97 = 12426;
                }

                else if (v200 == 12365)
                {
                  v96 = v216[1];
                  v97 = 12428;
                }

                else
                {
                  if (v200 != 12369)
                  {
                    goto LABEL_480;
                  }

                  v96 = v216[1];
                  v97 = 12383;
                }

                goto LABEL_495;
              }

              goto LABEL_398;
            }

            v182 = v226[1];
            v188 = 12383;
            goto LABEL_436;
          }
        }

        v182 = v226[1];
        v188 = 12356;
        goto LABEL_436;
      }

      if (v235.__r_.__value_.__r.__words[0] == 3)
      {
        v94 = v215;
        if (v225 != 1)
        {
          if (v225 != 2)
          {
            goto LABEL_437;
          }

          v190 = *v226;
          v191 = 12415;
LABEL_410:
          if (v190 != v191)
          {
            goto LABEL_437;
          }

          v182 = v226[1];
          if (v182 == 12356)
          {
            goto LABEL_480;
          }

          goto LABEL_412;
        }

        v182 = *v226;
        v188 = 12415;
LABEL_436:
        if (v182 != v188)
        {
          goto LABEL_437;
        }

        goto LABEL_480;
      }

      v94 = v215;
      if (v235.__r_.__value_.__r.__words[0] != 4)
      {
        if (v225 != 2)
        {
          goto LABEL_437;
        }

        v175 = *v226;
        v176 = 12356;
        goto LABEL_396;
      }

      if (v225 != 1)
      {
        if (v225 != 2 || *v226 != 12424)
        {
          goto LABEL_437;
        }

        v182 = v226[1];
LABEL_412:
        v188 = 12387;
        goto LABEL_436;
      }

      if (*v226 != 12375)
      {
        goto LABEL_437;
      }

      if (v223 != 1)
      {
        goto LABEL_480;
      }

      v96 = *v227;
      v97 = 26376;
LABEL_495:
      if (v96 == v97)
      {
        goto LABEL_437;
      }

      goto LABEL_480;
    }

    if (v235.__r_.__value_.__l.__data_ > 9)
    {
      if (v235.__r_.__value_.__r.__words[0] == 10)
      {
        v94 = v215;
        if (v225 == 1)
        {
          if (*v226 != 12392 || v215 == 1 && *v216 == 12405)
          {
            goto LABEL_437;
          }

          if (v223 == 1)
          {
            v96 = *v227;
            v97 = 37325;
          }

          else
          {
            if (v223 != 2 || *v227 != 25991)
            {
              goto LABEL_480;
            }

            v96 = v227[1];
            v97 = 23383;
          }

          goto LABEL_495;
        }

        if (v225 != 2 || *v226 != 12392)
        {
          goto LABEL_437;
        }

        v179 = v226[1];
        v180 = 12362;
      }

      else
      {
        v94 = v215;
        if (v235.__r_.__value_.__r.__words[0] == 14)
        {
          if (v225 == 3)
          {
            v189 = 0;
            while (*&aX0c0w0[v189 * 2] == v226[v189])
            {
              if (++v189 == 3)
              {
                goto LABEL_480;
              }
            }
          }

          goto LABEL_437;
        }

        if (v235.__r_.__value_.__r.__words[0] != 20 || v225 != 2 || *v226 != 12399)
        {
          goto LABEL_437;
        }

        v179 = v226[1];
        if (v179 == 12383)
        {
          if (v223 != 1)
          {
            goto LABEL_480;
          }

          v96 = *v227;
          if (v96 == 27507)
          {
            goto LABEL_437;
          }

          v97 = 25165;
          goto LABEL_495;
        }

        v180 = 12388;
      }

      if (v179 != v180)
      {
        goto LABEL_437;
      }

      if (v223 != 1)
      {
        goto LABEL_480;
      }

      v96 = *v227;
      v97 = 26085;
      goto LABEL_495;
    }

    if (v235.__r_.__value_.__r.__words[0] == 6)
    {
      v94 = v215;
      if (v225 != 1)
      {
        if (v225 != 2)
        {
          goto LABEL_437;
        }

        v190 = *v226;
        v191 = 12416;
        goto LABEL_410;
      }

      v182 = *v226;
      v188 = 12416;
      goto LABEL_436;
    }

    v94 = v215;
    if (v235.__r_.__value_.__r.__words[0] == 8)
    {
      if (v225 != 2)
      {
        goto LABEL_437;
      }

      v175 = *v226;
      v176 = 12399;
LABEL_396:
      if (v175 != v176)
      {
        goto LABEL_437;
      }

      v182 = v226[1];
LABEL_398:
      v188 = 12388;
      goto LABEL_436;
    }

    if (v235.__r_.__value_.__r.__words[0] != 9 || v225 != 1 || *v226 != 12367)
    {
      goto LABEL_437;
    }

    if (v223 == 1)
    {
      v96 = *v227;
      if (v96 <= 0x6641)
      {
        if (v96 == 20154)
        {
          goto LABEL_437;
        }

        v97 = 24180;
      }

      else
      {
        if (v96 == 26178 || v96 == 26376)
        {
          goto LABEL_437;
        }

        v97 = 27573;
      }

      goto LABEL_495;
    }

    if (v223 != 2)
    {
      goto LABEL_480;
    }

    v95 = *v227;
    if (v95 == 24180)
    {
      v96 = v227[1];
      v97 = 38291;
      goto LABEL_495;
    }

    if (v95 != 26178)
    {
      goto LABEL_480;
    }

    v96 = v227[1];
    if (v96 != 38291)
    {
      v97 = 38480;
      goto LABEL_495;
    }

LABEL_437:
    if ((atomic_load_explicit(&qword_2A1460010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460010))
    {
      qmemcpy(__p, "K0M0O0Q0S0", 10);
      sub_29923BCCC(qword_2A1460130, __p, 5);
      __cxa_atexit(sub_29923BCC8, qword_2A1460130, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460010);
      v13 = v207;
      v94 = v215;
    }

    if ((atomic_load_explicit(&qword_2A1460018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460018))
    {
      qmemcpy(__p, "U0W0Y0[0]0", 10);
      sub_29923BCCC(qword_2A1460158, __p, 5);
      __cxa_atexit(sub_29923BCC8, qword_2A1460158, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460018);
      v13 = v207;
      v94 = v215;
    }

    if ((atomic_load_explicit(&qword_2A1460020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460020))
    {
      qmemcpy(__p, "_0a0d0f0h0", 10);
      sub_29923BCCC(&unk_2A1460180, __p, 5);
      __cxa_atexit(sub_29923BCC8, &unk_2A1460180, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460020);
      v13 = v207;
      v94 = v215;
    }

    if ((atomic_load_explicit(&qword_2A1460028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460028))
    {
      qmemcpy(__p, "q0t0w0z0}0", 10);
      sub_29923BCCC(qword_2A14601A8, __p, 5);
      __cxa_atexit(sub_29923BCC8, qword_2A14601A8, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460028);
      v13 = v207;
      v94 = v215;
    }

    if (!v94)
    {
      goto LABEL_456;
    }

    v192 = *v216;
    if (v52 != 6)
    {
      if (v52 != 8)
      {
        goto LABEL_456;
      }

      if (v221 != 2)
      {
        goto LABEL_456;
      }

      if (*v226 != 12399)
      {
        goto LABEL_456;
      }

      if (v226[1] != 12387)
      {
        goto LABEL_456;
      }

      LOWORD(__p[0]) = *v216;
      if (sub_299223864(qword_2A1460130, __p))
      {
        goto LABEL_456;
      }

      LOWORD(__p[0]) = v192;
      if (sub_299223864(qword_2A1460158, __p))
      {
        goto LABEL_456;
      }

      LOWORD(__p[0]) = v192;
      v193 = &unk_2A1460180;
LABEL_454:
      if (sub_299223864(v193, __p))
      {
        goto LABEL_456;
      }

      LOWORD(__p[0]) = v192;
      if (sub_299223864(qword_2A14601A8, __p))
      {
        goto LABEL_456;
      }

LABEL_480:
      v5 = v212;
      v3 = v208;
      v22 = v221;
      goto LABEL_67;
    }

    if (v221 == 2 && *v226 == 12429 && v226[1] == 12387)
    {
      LOWORD(__p[0]) = *v216;
      v193 = qword_2A1460130;
      goto LABEL_454;
    }

LABEL_456:
    if (v235.__r_.__value_.__r.__words[0] == 1)
    {
      if (v223 == 1)
      {
        v194 = *v227;
LABEL_459:
        if (v194 == 26085 && v94 == 1 && v235.__r_.__value_.__r.__words[0] - 2 >= 9 && *v216 == 12363 && (v235.__r_.__value_.__r.__words[0] > 0x18 || ((1 << v235.__r_.__value_.__s.__data_[0]) & 0x1104000) == 0))
        {
          goto LABEL_480;
        }
      }
    }

    else if (v223 == 1)
    {
      v194 = *v227;
      if (v194 != 26085 || v94 != 2)
      {
        goto LABEL_459;
      }

      if (*v216 == 12376 && v216[1] == 12388)
      {
        goto LABEL_480;
      }
    }

    LOWORD(__p[0]) = v235.__r_.__value_.__l.__data_;
    __p[1] = v226;
    *&v237 = v225;
    *(&v237 + 1) = v227;
    *&__len = v223;
    if (sub_29923BD44(&qword_2A1460060, __p) != &unk_2A1460068)
    {
      goto LABEL_480;
    }

    if ((atomic_load_explicit(&qword_2A145FFF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FFF8))
    {
      sub_29923B1C8();
      qword_2A145FFF0 = &qword_2A1460078;
      __cxa_guard_release(&qword_2A145FFF8);
      v13 = v207;
      v94 = v215;
    }

    LOWORD(__p[0]) = v235.__r_.__value_.__l.__data_;
    __p[1] = v226;
    *&v237 = v225;
    *(&v237 + 1) = v227;
    *&__len = v223;
    *(&__len + 1) = v216;
    *&v239 = v94;
    v195 = qword_2A1460080;
    if (qword_2A1460080)
    {
      v196 = qword_2A145FFF0 + 8;
      v197 = qword_2A145FFF0 + 8;
      do
      {
        v198 = sub_29923C048((v195 + 32), __p);
        if ((v198 & 0x80u) == 0)
        {
          v197 = v195;
        }

        v195 = *(v195 + ((v198 >> 4) & 8));
      }

      while (v195);
      if (v197 != v196 && (sub_29923C048(__p, (v197 + 32)) & 0x80) == 0)
      {
        goto LABEL_480;
      }
    }

    if ((atomic_load_explicit(&qword_2A1460008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460008))
    {
      sub_29923B85C();
      qword_2A1460000 = &qword_2A1460090;
      __cxa_guard_release(&qword_2A1460008);
      v13 = v207;
      v94 = v215;
    }

    v199 = qword_2A1460000;
    LOWORD(__p[0]) = v235.__r_.__value_.__l.__data_;
    __p[1] = v226;
    *&v237 = v225;
    *(&v237 + 1) = v216;
    *&__len = v94;
    v5 = v212;
    v3 = v208;
    v22 = v221;
    if (v199 + 8 != sub_29923BD44(qword_2A1460000, __p))
    {
      goto LABEL_67;
    }

LABEL_68:
    v27 = v225;
LABEL_73:
    if ((atomic_load_explicit(&qword_2A1460040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460040))
    {
      __p[0] = &unk_29945C83A;
      __p[1] = 3;
      *&v237 = &unk_29945C842;
      *(&v237 + 1) = 6;
      *&__len = &unk_29945C850;
      *(&__len + 1) = 3;
      *&v239 = &unk_29945C858;
      *(&v239 + 1) = 6;
      *&v240 = &unk_29945C866;
      *(&v240 + 1) = 3;
      *&v241 = &unk_29945C86E;
      *(&v241 + 1) = 6;
      *&v242 = "ASUO]N";
      *(&v242 + 1) = 3;
      *&v243 = &unk_29945C884;
      *(&v243 + 1) = 6;
      sub_29923C190(__p, 4);
      __cxa_atexit(sub_29923C164, &qword_2A14600A8, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460040);
      v13 = v207;
      v3 = v208;
      v5 = v212;
      v27 = v225;
    }

    __p[0] = v17;
    __p[1] = v21;
    *&v237 = v226;
    *(&v237 + 1) = v27;
    v53 = v27;
    v54 = qword_2A14600B0;
    if (qword_2A14600B0)
    {
      v55 = &qword_2A14600B0;
      do
      {
        v56 = sub_29923C344((v54 + 32), __p);
        if ((v56 & 0x80u) == 0)
        {
          v55 = v54;
        }

        v54 = *(v54 + ((v56 >> 4) & 8));
      }

      while (v54);
      if (v55 != &qword_2A14600B0 && (sub_29923C344(__p, v55 + 4) & 0x80) == 0)
      {
        goto LABEL_89;
      }
    }

    if ((atomic_load_explicit(&qword_2A1460048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460048))
    {
      sub_29923C424(__p, "d0Q0", "d0Q0", word_29945C898, "D0c0");
      sub_29923C424(&v240, "~0Z0", "~0Z0", "mQ", word_29945C74A);
      *&v244 = "~0Z0";
      *(&v244 + 1) = 2;
      *&v245 = "~0Z0";
      *(&v245 + 1) = 2;
      *&v246 = word_29945C8A6;
      *(&v246 + 1) = 2;
      *&v247 = "W0K0c0";
      *(&v247 + 1) = 3;
      sub_29923C424(&v248, L"ら", L"ら", word_29945C8A6, "W0K0c0");
      v252 = &unk_29945C8B4;
      v253 = 3;
      v254 = &unk_29945C8B4;
      v255 = 3;
      v256 = &unk_29945C8BC;
      v257 = 4;
      v258 = &unk_29945C8C6;
      v259 = 6;
      v260 = &unk_29945C8D4;
      v261 = 2;
      v262 = &unk_29945C8D4;
      v263 = 2;
      v264 = word_29945C8DA;
      v265 = 2;
      v266 = word_29945C8E0;
      v267 = 4;
      v268 = &unk_29945C8EA;
      v269 = 2;
      v270 = &unk_29945C8D4;
      v271 = 2;
      v272 = word_29945C8DA;
      v273 = 2;
      v274 = word_29945C8E0;
      v275 = 4;
      v276 = &unk_29945C8F0;
      v277 = 2;
      v278 = &unk_29945C8D4;
      v279 = 2;
      v280 = word_29945C8DA;
      v281 = 2;
      v282 = word_29945C8E0;
      v283 = 4;
      v284 = &unk_29945C8F6;
      v285 = 2;
      v286 = &unk_29945C8D4;
      v287 = 2;
      v288 = word_29945C8DA;
      v289 = 2;
      v290 = word_29945C8E0;
      v291 = 4;
      v292 = &unk_29945C8FC;
      v293 = 4;
      v294 = "h0R0h0R0";
      v295 = 4;
      v296 = word_29945C8A6;
      v297 = 2;
      v298 = "W0K0c0";
      v299 = 3;
      v300 = &unk_29945C910;
      v301 = 2;
      v302 = "o0R0";
      v303 = 2;
      v304 = word_29945C8A6;
      v305 = 2;
      v306 = "W0K0c0";
      v307 = 3;
      sub_29923C424(v308, word_29945C91C, word_29945C924, word_29945C92C, word_29945BEB4);
      sub_29923C424(v314, word_29945C91C, word_29945C924, "9", word_29945BEB4);
      sub_29923C424(v315, word_29945C91C, word_29945C924, word_29945C934, word_29945BEB4);
      sub_29923C424(v316, word_29945C938, word_29945C940, word_29945C8A6, "W0K0c0");
      sub_29923C424(v317, word_29945C948, word_29945C94E, word_29945C898, "D0c0");
      sub_29923C424(v318, word_29945C954, word_29945C95A, "mQ", word_29945C74A);
      sub_29923C424(v319, word_29945C954, word_29945C95A, "6", word_29945C74A);
      sub_29923C424(v320, word_29945C954, word_29945C95A, word_29945C964, word_29945C74A);
      sub_29923C424(v321, word_29945C968, "D0c0[0D0", word_29945C978, word_29945C97E);
      v321[8] = &unk_29945C986;
      v321[9] = 2;
      v321[10] = "D0a0X0";
      v321[11] = 3;
      v321[12] = word_29945C796;
      v321[13] = 1;
      v321[14] = L"かい";
      v321[15] = 2;
      sub_29923C424(v322, word_29945C994, word_29945C99A, word_29945C6E2, L"い");
      sub_29923C424(v323, word_29945C9A2, word_29945C99A, word_29945C6E2, L"い");
      sub_29923C424(v324, word_29945C9A8, word_29945C99A, word_29945C6E2, L"い");
      sub_29923C424(v325, word_29945C9AE, word_29945C9B4, "sk", "h0W0");
      sub_29923C424(v326, "\tN/c", word_29945C9CA, word_29945C9D4, "h0F0");
      sub_29923C424(v327, "\tN,g", word_29945C9E4, word_29945C9EC, word_29945C9F2);
      sub_29923C424(v328, "\tN,g", word_29945C9E4, word_29945C9FC, "r0M0F0Q0");
      v328[8] = "\tN,g";
      v328[9] = 2;
      v328[10] = word_29945C9E4;
      v328[11] = 3;
      v328[12] = &unk_29945CA0C;
      v328[13] = 4;
      v328[14] = "r0M0F0Q0";
      v328[15] = 4;
      v328[16] = "\tN,g";
      v328[17] = 2;
      v328[18] = word_29945C9E4;
      v328[19] = 3;
      v328[20] = &unk_29945CA16;
      v328[21] = 3;
      v328[22] = "r0M0F0Q0";
      v328[23] = 4;
      v328[24] = "\tN0u";
      v328[25] = 2;
      v328[26] = &unk_29945CA24;
      v328[27] = 3;
      v328[28] = &unk_29945CA2C;
      v328[29] = 1;
      v328[30] = "Y0L0_0";
      v328[31] = 3;
      v328[32] = "\vN";
      v328[33] = 1;
      v328[34] = "W0_0";
      v328[35] = 2;
      v328[36] = word_29945C8A6;
      v328[37] = 2;
      v328[38] = "W0K0c0";
      v328[39] = 3;
      sub_29923C424(v329, word_29945CA42, word_29945CA4A, L"日", L"か");
      sub_29923C424(v330, word_29945CA52, word_29945CA4A, L"日", L"か");
      sub_29923C424(v331, word_29945CA5A, word_29945CA4A, L"日", L"か");
      sub_29923C424(v332, word_29945CA62, "o0d0K0", word_29945CA72, word_29945CA78);
      v332[8] = word_29945CA62;
      v332[9] = 3;
      v332[10] = "o0d0K0";
      v332[11] = 3;
      v332[12] = &unk_29945CA80;
      v332[13] = 1;
      v332[14] = "O0N0";
      v332[15] = 2;
      v332[16] = "2";
      v332[17] = 3;
      v332[18] = "o0d0K0";
      v332[19] = 3;
      v332[20] = &unk_29945CA80;
      v332[21] = 1;
      v332[22] = "O0N0";
      v332[23] = 2;
      v332[24] = &unk_29945CA92;
      v332[25] = 3;
      v332[26] = "o0d0K0";
      v332[27] = 3;
      v332[28] = &unk_29945CA80;
      v332[29] = 1;
      v332[30] = "O0N0";
      v332[31] = 2;
      v332[32] = &unk_29945CA9A;
      v332[33] = 1;
      v332[34] = L"かい";
      v332[35] = 2;
      v332[36] = &unk_29945CA9E;
      v332[37] = 2;
      v332[38] = &unk_29945CAA4;
      v332[39] = 4;
      v332[40] = &unk_29945CAAE;
      v332[41] = 2;
      v332[42] = "K0D0Q0D0";
      v332[43] = 4;
      v332[44] = &unk_29945CABE;
      v332[45] = 3;
      v332[46] = &unk_29945CAC6;
      v332[47] = 3;
      sub_29923C424(v333, word_29945CACE, word_29945CAD4, word_29945CADE, "K0R0d0");
      sub_29923C424(v334, word_29945CACE, word_29945CAD4, "K0\bg", "K0R0d0");
      sub_29923C424(v335, word_29945CACE, word_29945CAD4, word_29945CAF2, "K0R0d0");
      sub_29923C424(v336, "ASpe", "X0c0Y0F0", "\rP", L"ばい");
      sub_29923C424(v337, "ASpe", "X0c0Y0F0", word_29945C796, L"かい");
      sub_29923C424(v338, word_29945CB0C, "i0F0D0d0", word_29945CB1C, "[0D0");
      sub_29923C424(v339, word_29945CB26, word_29945CB2C, word_29945C6E2, L"い");
      sub_29923C424(v340, word_29945CB34, word_29945CB2C, word_29945C6E2, L"い");
      sub_29923C424(v341, word_29945CB3A, word_29945CB2C, word_29945C6E2, L"い");
      v341[8] = &unk_29945CB40;
      v341[9] = 2;
      v341[10] = &unk_29945CB46;
      v341[11] = 2;
      v341[12] = &unk_29945CB4C;
      v341[13] = 1;
      v341[14] = &unk_29945CB50;
      v341[15] = 3;
      v341[16] = word_29945CB58;
      v341[17] = 2;
      v341[18] = word_29945CB5E;
      v341[19] = 4;
      v341[20] = &unk_29945CB68;
      v341[21] = 2;
      v341[22] = &unk_29945CB6E;
      v341[23] = 2;
      sub_29923C424(v342, word_29945CB58, word_29945CB5E, byte_29945CB74, word_29945CB78);
      v342[8] = word_29945CB58;
      v342[9] = 2;
      v342[10] = word_29945CB5E;
      v342[11] = 4;
      v342[12] = &unk_29945CB7E;
      v342[13] = 2;
      v342[14] = "T0F0Q0D0";
      v342[15] = 4;
      sub_29923C424(v343, word_29945CB8E, word_29945CB94, L"と", L"と");
      v343[8] = &unk_29945CB9C;
      v343[9] = 2;
      v343[10] = "J0h0j0";
      v343[11] = 3;
      v343[12] = word_29945C8A6;
      v343[13] = 2;
      v343[14] = "W0K0c0";
      v343[15] = 3;
      sub_29923C424(v344, word_29945CBAA, word_29945CBB0, word_29945C8A6, "W0K0c0");
      v344[8] = &unk_29945CBBA;
      v344[9] = 2;
      v344[10] = &unk_29945CBC0;
      v344[11] = 4;
      v344[12] = &unk_29945CBCA;
      v344[13] = 4;
      v344[14] = &unk_29945CBD4;
      v344[15] = 10;
      v344[16] = &unk_29945CBEA;
      v344[17] = 2;
      v344[18] = &unk_29945CBF0;
      v344[19] = 4;
      v344[20] = &unk_29945CBFA;
      v344[21] = 4;
      v344[22] = &unk_29945CC04;
      v344[23] = 8;
      sub_29923C424(v345, word_29945CC16, word_29945CC1C, word_29945C8DA, word_29945C8E0);
      sub_29923C424(v346, L"日", "s0", word_29945CC24, word_29945CC2A);
      sub_29923C424(v348, word_29945CC42, word_29945CC48, word_29945C8A6, "W0K0c0");
      sub_29923C424(v351, word_29945CC5C, "o0a0", word_29945C6C6, "~0M0");
      sub_29923C424(v352, "8", "o0a0", word_29945C6C6, "~0M0");
      sub_29923C424(v353, word_29945CC6A, word_29945CC70, word_29945C6E2, L"い");
      sub_29923C424(v354, word_29945CC78, word_29945CC70, word_29945C6E2, L"い");
      sub_29923C424(v355, word_29945CC7E, word_29945CC70, word_29945C6E2, L"い");
      sub_29923C424(v356, word_29945CC84, "j0n0K0", word_29945C6E2, L"い");
      sub_29923C424(v357, "7", "j0n0K0", word_29945C6E2, L"い");
      sub_29923C424(v358, word_29945CC98, "j0n0K0", word_29945C6E2, L"い");
      v358[8] = &unk_29945CC9E;
      v358[9] = 2;
      v358[10] = "S0S0n0K0";
      v358[11] = 4;
      v358[12] = word_29945C6E2;
      v358[13] = 1;
      v358[14] = L"い";
      v358[15] = 1;
      v358[16] = "9";
      v358[17] = 2;
      v358[18] = "S0S0n0K0";
      v358[19] = 4;
      v358[20] = word_29945C6E2;
      v358[21] = 1;
      v358[22] = L"い";
      v358[23] = 1;
      v358[24] = &unk_29945CCB4;
      v358[25] = 2;
      v358[26] = "S0S0n0K0";
      v358[27] = 4;
      v358[28] = word_29945C6E2;
      v358[29] = 1;
      v358[30] = L"い";
      v358[31] = 1;
      sub_29923C424(v359, word_29945CCBA, "v0_0", word_29945C6E2, L"い");
      sub_29923C424(v360, word_29945CCBE, L"さん", L"日", "X0d0");
      sub_29923C4DC(__p, 78);
      __cxa_atexit(sub_29923C3F8, &qword_2A14600C0, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460048);
      v13 = v207;
      v3 = v208;
      v5 = v212;
      v53 = v225;
      v22 = v221;
    }

    __p[0] = v224;
    __p[1] = v21;
    *&v237 = v226;
    *(&v237 + 1) = v53;
    *&__len = v227;
    *(&__len + 1) = v223;
    *&v239 = v216;
    *(&v239 + 1) = v215;
    v57 = qword_2A14600C8;
    if (!qword_2A14600C8)
    {
      goto LABEL_90;
    }

    v58 = &qword_2A14600C8;
    do
    {
      v59 = sub_29923C698((v57 + 32), __p);
      if ((v59 & 0x80u) == 0)
      {
        v58 = v57;
      }

      v57 = *(v57 + ((v59 >> 4) & 8));
    }

    while (v57);
    if (v58 == &qword_2A14600C8 || (sub_29923C698(__p, v58 + 4) & 0x80) != 0)
    {
LABEL_90:
      v60 = v222;
    }

    else
    {
LABEL_89:
      v60 = v222;
      v18 = v18 + (v13[20] + v13[20]) / 0.1;
    }

    if (!*(v220 + 16) && (v61 = *v5 + 40 * v60, *v61 == 5) && ((v62 = *(*(v220 + 40) + 50), v62 == *(v61 + 30)) || v62 == *(v61 + 32)) && sub_2992782F4(cf))
    {
      if (v206 == 40)
      {
        v217 = 0;
        v63 = v205;
        goto LABEL_176;
      }

      if (sub_29923A828(v214) || (v98 = *(v220 + 40), v98[25] == v214))
      {
        v217 = 1;
        v63 = v209;
        v5 = v212;
        goto LABEL_176;
      }

      if (v98[44] <= v214)
      {
        v217 = 0;
        v187 = v98[45];
        v63 = v204;
        v5 = v212;
        if (v187 >= v214)
        {
LABEL_176:
          v18 = v18 + *v63 / 0.1;
        }
      }

      else
      {
        v217 = 0;
        v5 = v212;
      }
    }

    else
    {
      v217 = 0;
    }

    if (*(*v5 + 40 * v60) == 5 || v21 == 1 && *v224 == 19968)
    {
      if (sub_29923A828(v214) || *(*(v220 + 40) + 50) == v214)
      {
        v22 = v221;
        if (v21)
        {
          v64 = 2 * v21;
          v65 = v224;
          while (sub_299281CA8(*v65))
          {
            ++v65;
            v64 -= 2;
            if (!v64)
            {
              goto LABEL_106;
            }
          }

          v60 = v222;
        }

        else
        {
LABEL_106:
          v60 = v222;
          if (sub_29923A8C8(v227, v223))
          {
            v18 = v18 + v13[22] / 0.1;
          }
        }
      }

      else
      {
        v22 = v221;
      }
    }

    v66 = *(*v5 + 40 * v60);
    if (v3 == 2 && v66 == 5)
    {
      v18 = v18 + v13[24] / 0.1;
    }

    v67 = v22;
    v68 = v226;
    if (v53)
    {
      do
      {
        v69 = *v68++;
        v70 = (v69 + 240);
        v71 = (v69 - 48) >= 0xA && v70 >= 0xA;
        if (v71)
        {
          goto LABEL_125;
        }

        --v67;
      }

      while (v67);
      v72 = v13;
      v73 = v3;
      if (v66 != 5)
      {
        v77 = 1;
        goto LABEL_126;
      }

      v74 = v223;
      v75 = v224;
      if ((v211 & 0x100000000) != 0)
      {
        v76 = 1;
        goto LABEL_152;
      }

      if (v21)
      {
        v84 = v219 - 1;
        v85 = v224;
        do
        {
          v86 = *v85++;
          v87 = (v86 + 240);
          v76 = (v86 - 48) < 0xA || v87 < 0xA;
          v71 = v84-- != 0;
          v89 = v71;
        }

        while (v76 && (v89 & 1) != 0);
LABEL_152:
        HIDWORD(v211) = v76;
        if ((v210 & 1) == 0 && v21)
        {
          v90 = 2 * v21 - 2;
          v91 = v224;
          do
          {
            v92 = sub_299281CA8(*v91++);
            if (v90)
            {
              v93 = v92;
            }

            else
            {
              v93 = 0;
            }

            v90 -= 2;
          }

          while (v93);
          LODWORD(v210) = v92;
          v60 = v222;
LABEL_179:
          LOBYTE(v211) = v211 | v32;
          BYTE4(v210) |= v38;
          v77 = 1;
          if (v32)
          {
            goto LABEL_127;
          }

          goto LABEL_180;
        }
      }

      else
      {
        HIDWORD(v211) = 0;
      }

      LODWORD(v210) = 1;
      goto LABEL_179;
    }

LABEL_125:
    v72 = v13;
    v73 = v3;
    v77 = 0;
LABEL_126:
    v74 = v223;
    v75 = v224;
    if (v32)
    {
LABEL_127:
      if (!sub_29923A8C8(v227, v74))
      {
        goto LABEL_180;
      }

      if (v74)
      {
        v78 = 2 * v74;
        v79 = v227;
        while ((*v79 + 191) < 0x1Au || (*v79 + 223) < 0x1Au)
        {
          ++v79;
          v78 -= 2;
          if (!v78)
          {
            v81 = v74;
            goto LABEL_138;
          }
        }

        goto LABEL_180;
      }

      v81 = 0;
LABEL_138:
      v82 = v226;
      v83 = v219;
LABEL_195:
      v18 = v18 + v72[23] / 0.1;
      goto LABEL_196;
    }

LABEL_180:
    if (!v38)
    {
      v81 = v74;
      v82 = v226;
LABEL_192:
      v83 = v219;
      goto LABEL_196;
    }

    v82 = v226;
    if (!sub_29923A8C8(v227, v74))
    {
      v81 = v74;
      goto LABEL_192;
    }

    v83 = v219;
    if (v74)
    {
      v99 = 2 * v74;
      v100 = v227;
      while ((*v100 + 191) < 0x1Au || (*v100 + 223) < 0x1Au)
      {
        ++v100;
        v99 -= 2;
        if (!v99)
        {
          v81 = v74;
          goto LABEL_196;
        }
      }

      v81 = v74;
      goto LABEL_195;
    }

    v81 = 0;
LABEL_196:
    v3 = v73;
    v13 = v72;
    if ((v77 & sub_299281DB8(v227, v81)) == 1)
    {
      v18 = v18 + v72[15] / -0.1;
    }

    v102 = v221;
    if ((atomic_load_explicit(&qword_2A1460050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460050))
    {
      v248 = xmmword_29EF0DE78;
      v249 = *&off_29EF0DE88;
      v250 = xmmword_29EF0DE98;
      v251 = *&off_29EF0DEA8;
      v244 = xmmword_29EF0DE38;
      v245 = unk_29EF0DE48;
      v246 = xmmword_29EF0DE58;
      v247 = unk_29EF0DE68;
      v240 = xmmword_29EF0DDF8;
      v241 = *&off_29EF0DE08;
      v242 = xmmword_29EF0DE18;
      v243 = unk_29EF0DE28;
      *__p = xmmword_29EF0DDB8;
      v237 = unk_29EF0DDC8;
      __len = xmmword_29EF0DDD8;
      v239 = *&off_29EF0DDE8;
      sub_29923C810(__p, 16);
      __cxa_atexit(sub_29923C7E4, &qword_2A14600D8, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460050);
      v13 = v207;
      v3 = v208;
      v5 = v212;
      v60 = v222;
      v83 = v219;
      v75 = v224;
    }

    if ((atomic_load_explicit(&qword_2A1460058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460058))
    {
      LOWORD(__p[0]) = 10;
      __p[1] = word_29945C6D2;
      *&v237 = 3;
      *(&v237 + 1) = &unk_29945CD52;
      *&__len = 1;
      WORD4(__len) = 3;
      *&v239 = L"さん";
      *(&v239 + 1) = 2;
      *&v240 = &unk_29945CD52;
      *(&v240 + 1) = 1;
      LOWORD(v241) = 5;
      *(&v241 + 1) = word_29945BCD8;
      *&v242 = 1;
      *(&v242 + 1) = L"かい";
      *&v243 = 2;
      WORD4(v243) = 5;
      *&v244 = word_29945BCD8;
      *(&v244 + 1) = 1;
      *&v245 = word_29945C796;
      *(&v245 + 1) = 1;
      LOWORD(v246) = 5;
      *(&v246 + 1) = word_29945BCD8;
      *&v247 = 1;
      *(&v247 + 1) = &unk_29945CD56;
      *&v248 = 1;
      WORD4(v248) = 3;
      *&v249 = L"さん";
      *(&v249 + 1) = 2;
      *&v250 = L"次";
      *(&v250 + 1) = 1;
      LOWORD(v251) = 3;
      *(&v251 + 1) = L"さん";
      v252 = 2;
      v253 = &unk_29945CD5A;
      v254 = 1;
      LOWORD(v255) = 9;
      v256 = word_29945C6BE;
      v257 = 3;
      v258 = &unk_29945CD5E;
      v259 = 1;
      LOWORD(v260) = 9;
      v261 = word_29945C6BE;
      v262 = 3;
      v263 = &unk_29945CD62;
      v264 = 1;
      LOWORD(v265) = 2;
      v266 = "u0_0";
      v267 = 2;
      v268 = byte_29945C656;
      v269 = 0;
      LOWORD(v270) = 9;
      v271 = word_29945BEB4;
      v272 = 1;
      v273 = &unk_29945C72E;
      v274 = 1;
      LOWORD(v275) = 1;
      v276 = "D0c0";
      v277 = 2;
      v278 = &unk_29945CD66;
      v279 = 2;
      sub_29923BA50(&qword_2A14600F0, __p, 12);
      __cxa_atexit(sub_29923B0C0, &qword_2A14600F0, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460058);
      v13 = v207;
      v3 = v208;
      v5 = v212;
      v60 = v222;
      v83 = v219;
      v75 = v224;
    }

    v103 = qword_2A14600E0;
    if (!qword_2A14600E0)
    {
      goto LABEL_224;
    }

    v104 = &qword_2A14600E0;
    while (2)
    {
      v105 = v103[5];
      if (v21 >= v105)
      {
        v106 = v103[5];
      }

      else
      {
        v106 = v21;
      }

      if (v106)
      {
        v107 = v103[4];
        v108 = v75;
        while (1)
        {
          v109 = *v107;
          v110 = *v108;
          if (v109 < v110)
          {
            break;
          }

          if (v110 < v109)
          {
            goto LABEL_212;
          }

          ++v107;
          ++v108;
          if (!--v106)
          {
            goto LABEL_210;
          }
        }

LABEL_211:
        ++v103;
      }

      else
      {
LABEL_210:
        if (v105 < v21)
        {
          goto LABEL_211;
        }

LABEL_212:
        v104 = v103;
      }

      v103 = *v103;
      if (v103)
      {
        continue;
      }

      break;
    }

    if (v104 == &qword_2A14600E0)
    {
      goto LABEL_224;
    }

    v111 = v104[5];
    if (v111 >= v21)
    {
      v112 = v21;
    }

    else
    {
      v112 = v104[5];
    }

    if (!v112)
    {
LABEL_223:
      if (v111 > v21)
      {
        goto LABEL_224;
      }

LABEL_235:
      v18 = v18 + v13[15] / 0.1;
      goto LABEL_236;
    }

    v113 = v104[4];
    v114 = v75;
    while (1)
    {
      v115 = *v114;
      v116 = *v113;
      if (v115 < v116)
      {
        break;
      }

      if (v116 < v115)
      {
        goto LABEL_235;
      }

      ++v114;
      ++v113;
      if (!--v112)
      {
        goto LABEL_223;
      }
    }

LABEL_224:
    v235.__r_.__value_.__r.__words[0] = 0;
    if (sub_29923B0EC(v75, v21, &v235))
    {
      if (v235.__r_.__value_.__r.__words[0] == 14 && v225 == 4)
      {
        v118 = 0;
        while (word_29945C7D2[v118] == v82[v118])
        {
          if (++v118 == 4)
          {
            v60 = v222;
            goto LABEL_235;
          }
        }
      }

      LOWORD(__p[0]) = v235.__r_.__value_.__l.__data_;
      __p[1] = v82;
      *&v237 = v225;
      *(&v237 + 1) = v227;
      *&__len = v223;
      v60 = v222;
      if (sub_29923BD44(&qword_2A14600F0, __p) != algn_2A14600F8)
      {
        goto LABEL_235;
      }
    }

LABEL_236:
    if (*(*v5 + 40 * v60) == 5)
    {
      v119 = v77;
    }

    else
    {
      v119 = 1;
    }

    if ((v119 & 1) == 0 && sub_2992782F4(cf))
    {
      v120 = v13[15];
      goto LABEL_242;
    }

    v121 = v83;
    v122 = v75;
    v123 = v225;
    if (v21)
    {
      do
      {
        v124 = *v122++;
        v125 = (v124 + 240);
        if ((v124 - 48) >= 0xA && v125 >= 0xA)
        {
          goto LABEL_251;
        }

        --v121;
      }

      while (v121);
      if (v77)
      {
LABEL_251:
        v127 = v75;
        if (**(v220 + 24))
        {
          goto LABEL_265;
        }

        while (1)
        {
          v128 = *v127++;
          v129 = (v128 + 240);
          if ((v128 - 48) < 0xA || v129 <= 9)
          {
            break;
          }

          if (!--v83)
          {
            goto LABEL_260;
          }
        }

        v161 = v82;
        if (!v225)
        {
LABEL_324:
          v120 = v13[19];
          goto LABEL_242;
        }

        while (1)
        {
          v162 = *v161++;
          v163 = (v162 + 240);
          if ((v162 - 48) < 0xA || v163 < 0xA)
          {
            goto LABEL_260;
          }

          if (!--v102)
          {
            goto LABEL_324;
          }
        }
      }

      v157 = v60 != v218 || v206 == 40;
      v158 = 17;
      if (v157)
      {
        v158 = 16;
      }

      v18 = v18 + v13[v158] / 0.1;
      if (v206 != 40 || !sub_299322EB0(**(v220 + 8)))
      {
        goto LABEL_302;
      }

      v159 = 2 * v83;
      v160 = v75;
      while (sub_299281CA8(*v160))
      {
        ++v160;
        v159 -= 2;
        if (!v159)
        {
          goto LABEL_302;
        }
      }

      v120 = v13[18];
LABEL_242:
      v18 = v18 + v120 / 0.1;
    }

    else
    {
      if ((**(v220 + 24) & 1) == 0)
      {
LABEL_260:
        v131 = *v75;
        if (v131 != 9787)
        {
          v132 = u_charType(v131);
          v123 = v225;
          if ((v132 - 19) <= 0xA)
          {
            v133 = *v82;
            if (v133 != 9787)
            {
              v134 = u_charType(v133);
              v123 = v225;
              if ((v134 - 19) <= 0xA)
              {
                v135 = sub_29928199C(*v75);
                v136 = sub_29928199C(*v82);
                v123 = v225;
                if (v135 != v136)
                {
                  v120 = v13[21];
                  goto LABEL_242;
                }
              }
            }
          }
        }
      }

LABEL_265:
      sub_299277B3C(&v235, v82, v123);
      sub_299277B3C(&v234, v75, v21);
      v137 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v138 = &v235;
      }

      else
      {
        v138 = v235.__r_.__value_.__r.__words[0];
      }

      v139 = SHIBYTE(v234.__r_.__value_.__r.__words[2]);
      __dst = 0;
      v232 = 0;
      if ((SHIBYTE(v234.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v233 = 0;
        v139 = v234.__r_.__value_.__l.__size_;
        v140 = v234.__r_.__value_.__r.__words[0];
      }

      else
      {
        v140 = &v234;
        v233 = 0;
      }

      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v137 = v235.__r_.__value_.__l.__size_;
      }

      sub_29920BD1C(&__dst, v139 + v137 + 4);
      v141 = __dst;
      if ((v234.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = HIBYTE(v234.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v142 = v234.__r_.__value_.__l.__size_;
      }

      memcpy(__dst, v140, v142);
      v143 = HIBYTE(v234.__r_.__value_.__r.__words[2]);
      if ((v234.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v143 = v234.__r_.__value_.__l.__size_;
      }

      *&v141[v143] = 8224;
      v144 = &v141[v143 + 2];
      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v145 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v145 = v235.__r_.__value_.__l.__size_;
      }

      memcpy(v144, v138, v145);
      v146 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v146 = v235.__r_.__value_.__l.__size_;
      }

      *&v144[v146] = 8224;
      sub_29918D970(__p);
      sub_29918DA48(__p, __dst, v232 - __dst);
      v60 = v222;
      v147 = 0.0;
      if (sub_29919CAD4((v220 + 32), __p))
      {
        v148 = __len;
        if (__len >= 0x17)
        {
          operator new();
        }

        v230 = __len;
        v149 = v82;
        if (__len)
        {
          memmove(&v229, *(&v237 + 1), __len);
        }

        *(&v229 + v148) = 0;
        v150 = v230;
        v151 = v229;
        v152 = &v229;
        if (v230 < 0)
        {
          v152 = v229;
        }

        v153 = strtol(v152 + v232 - __dst, 0, 16);
        if (v150 < 0)
        {
          operator delete(v151);
        }

        v147 = v153 / -700.0;
        v60 = v222;
        v82 = v149;
      }

      sub_29918D980(__p);
      if (__dst)
      {
        v232 = __dst;
        operator delete(__dst);
      }

      if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v234.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v235.__r_.__value_.__l.__data_);
      }

      v18 = v18 + v147;
      if (v217)
      {
        v18 = v18 + *v209 / -0.1;
      }
    }

LABEL_302:
    v154 = *v5 + 40 * v60;
    v155 = *(v154 + 24);
    v156 = *(v154 + 28);
    if (cf)
    {
      CFRelease(cf);
    }

    v17 = &v75[v155];
    v15 = &v82[v156];
    v16 = v60 + 1;
  }

  while (v16 != v213);
  if (HIDWORD(v211) & v210)
  {
    v18 = v18 + v13[15] / 0.1;
  }

  if (v211 & BYTE4(v210))
  {
    return v18 + v13[23] / 0.1;
  }

  return v18;
}

void sub_29923A7EC(void *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  JUMPOUT(0x29923A820);
}

BOOL sub_29923A828(unsigned int a1)
{
  v1 = &word_299403FCA[7 * a1];
  v2 = (&off_29EF0DFF0 + 2 * *v1);
  if (v2[1] == 3)
  {
    v3 = 0;
    v4 = (&off_29EF0DFF0 + 2 * v1[2]);
    v5 = *v4;
    v6 = v4[1];
    v7 = *v2;
    while (asc_29945B8FE[v3] == *(v7 + v3 * 2))
    {
      if (++v3 == 3)
      {
        if (v6 < 3)
        {
          return 0;
        }

        v8 = 0;
        do
        {
          v9 = *(v5 + v8 * 2);
          v10 = asc_29945B938[v8];
          result = v10 == v9;
        }

        while (v10 == v9 && v8++ != 2);
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_29923A8C8(unsigned __int16 *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = &a1[a2];
    while (1)
    {
      v3 = *a1;
      v4 = ((v3 & 0xFFDF) - 65) >= 0x1Au && (v3 + 191) >= 0x1Au;
      if (v4 && (v3 + 223) >= 0x1Au)
      {
        v6 = v3 - 13184 >= 0x5E && (v3 - 945) >= 0x1Bu;
        if (v6 && (v3 - 913) >= 0x1Bu)
        {
          v8 = "%";
          v9 = 6;
          do
          {
            v10 = v9 >> 1;
            v11 = &v8[2 * (v9 >> 1)];
            v13 = *v11;
            v12 = v11 + 2;
            v9 += ~(v9 >> 1);
            if (v13 < v3)
            {
              v8 = v12;
            }

            else
            {
              v9 = v10;
            }
          }

          while (v9);
          if (v8 == "22InspectorAccessContext" || v3 < *v8)
          {
            break;
          }
        }
      }

      if (++a1 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

const void **sub_29923A9CC@<X0>(const void **result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[1];
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  v4 = *result;
  if (v3 >= 0xB)
  {
    if ((v3 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (v3 | 3) + 1;
    }

    sub_299212A48(a2, v5);
  }

  a2[23] = v3;
  if (v3)
  {
    result = memmove(a2, v4, 2 * v3);
  }

  *&a2[2 * v3] = 0;
  return result;
}

void sub_29923AA5C(unsigned __int16 *a1, uint64_t a2)
{
  xmmword_2A1460108 = 0u;
  *&qword_2A1460118 = 0u;
  dword_2A1460128 = 1065353216;
  if (a2)
  {
    v2 = a1;
    v12 = &a1[16 * a2];
    do
    {
      v3 = sub_29923AF34(&xmmword_2A1460108, v2);
      v4 = v3;
      v5 = *(&xmmword_2A1460108 + 1);
      if (!*(&xmmword_2A1460108 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2A1460108 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2A1460108 + 1))
        {
          v8 = v3 % *(&xmmword_2A1460108 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2A1460108 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2A1460108 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = *(v10 + 1);
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      if (!sub_29923AF78(&xmmword_2A1460108, v10 + 8, v2))
      {
        goto LABEL_18;
      }

      v2 += 16;
    }

    while (v2 != v12);
  }
}

void sub_29923AEF4(_Unwind_Exception *a1)
{
  sub_29923AFFC(1, v1);
  sub_29923B058(&xmmword_2A1460108);
  _Unwind_Resume(a1);
}

unint64_t sub_29923AF34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = *(a2 + 8);
  if ((v2 & 0x80u) != 0)
  {
    a2 = *a2;
    v2 = v3;
  }

  return sub_2991C0588(&v5, a2, 2 * v2);
}

BOOL sub_29923AF78(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *(a2 + 23);
  v4 = *(a2 + 1);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 1);
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v3 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = v4 - 1;
  do
  {
    v11 = *v8++;
    v10 = v11;
    v13 = *v7++;
    v12 = v13;
    v15 = v9-- != 0;
    result = v12 == v10;
  }

  while (v12 == v10 && v15);
  return result;
}

void sub_29923AFFC(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29923B058(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_29923B0EC(unsigned __int16 *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v5 = a1;
  if (a1 && a2)
  {
    v6 = a2;
    v7 = a1;
    while (1)
    {
      v8 = *v7++;
      v9 = (v8 + 240);
      if ((v8 - 48) >= 0xA && v9 >= 0xA)
      {
        break;
      }

      if (!--v6)
      {
        do
        {
          v12 = *v5++;
          v11 = v12;
          if (v12 >> 4 <= 0xFF0)
          {
            v13 = -48;
          }

          else
          {
            v13 = -65296;
          }

          v6 = v11 + 10 * v6 + v13;
          --v4;
        }

        while (v4);
        *a3 = v6;
        return 1;
      }
    }
  }

  if (sub_299281900(a1, a2, a3))
  {
    return 1;
  }

  return sub_29928182C(v5, v4, a3);
}

void sub_29923B1C8()
{
  v151 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460030, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A1460030))
    {
      sub_29923BDF0(v0, 2, L"に", L"つ", L"つ");
      sub_29923BDF0(&v1, 2, L"に", word_29945BFCA, word_29945BFCA);
      sub_29923BDF0(&v2, 2, L"に", L"人", word_29945C750);
      sub_29923BDF0(&v3, 2, L"に", L"日", L"か");
      sub_29923BDF0(&v4, 2, L"に", L"日", word_29945BDAC);
      sub_29923BDF0(v5, 2, L"に", "\bg", "d0M0");
      v5[28] = 3;
      v6 = L"さん";
      v7 = 2;
      v8 = L"日";
      v9 = 1;
      v10 = L"か";
      v11 = 1;
      sub_29923BDF0(v12, 4, L"よ", L"つ", L"つ");
      v12[28] = 4;
      v13 = word_29945C75C;
      v14 = 2;
      v15 = L"日";
      v16 = 1;
      v17 = L"か";
      v18 = 1;
      sub_29923BDF0(v19, 4, word_29945C75C, L"日", "X0d0");
      v19[28] = 4;
      v20 = word_29945C75C;
      v21 = 2;
      v22 = &unk_29945C762;
      v23 = 1;
      v24 = word_29945C6BE;
      v25 = 3;
      sub_29923BDF0(&v26, 5, word_29945BCD8, L"つ", L"つ");
      sub_29923BDF0(&v27, 5, word_29945BCD8, L"日", L"か");
      sub_29923BDF0(&v28, 5, word_29945BCD8, word_29945C766, word_29945C76A);
      sub_29923BDF0(&v29, 6, word_29945BFD2, L"つ", L"つ");
      sub_29923BDF0(v30, 6, word_29945C17C, L"つ", L"つ");
      v30[28] = 6;
      v31 = &unk_29945C770;
      v32 = 2;
      v33 = L"日";
      v34 = 1;
      v35 = L"か";
      v36 = 1;
      v37 = 7;
      v38 = "j0j0";
      v39 = 2;
      v40 = L"日";
      v41 = 1;
      v42 = L"か";
      v43 = 1;
      sub_29923BDF0(v44, 8, "o0a0", L"人", word_29945C750);
      v44[28] = 8;
      v45 = "o0a0";
      v46 = 2;
      v47 = L"日";
      v48 = 1;
      v49 = L"か";
      v50 = 1;
      sub_29923BDF0(&v51, 9, word_29945C6BE, L"日", L"か");
      sub_29923BDF0(&v52, 9, word_29945C6BE, "]u", word_29945C200);
      sub_29923BDF0(v53, 10, "X0c0", "pe", "Y0F0");
      v53[28] = 10;
      v54 = "X0c0";
      v55 = 2;
      v56 = L"日";
      v57 = 1;
      v58 = L"か";
      v59 = 1;
      v60 = 10;
      v61 = word_29945C6D2;
      v62 = 3;
      v63 = &unk_29945C6BA;
      v64 = 1;
      v65 = "U0d0";
      v66 = 2;
      v67 = 10;
      v68 = word_29945C6D2;
      v69 = 3;
      v70 = &unk_29945C796;
      v71 = 1;
      v72 = L"かい";
      v73 = 2;
      v74 = 10;
      v75 = word_29945C6D2;
      v76 = 3;
      v77 = &unk_29945C6C6;
      v78 = 1;
      v79 = &unk_29945C79A;
      v80 = 2;
      sub_29923BDF0(v81, 10, word_29945C6D2, L"日", L"か");
      v81[28] = 10;
      v82 = word_29945C6D2;
      v83 = 3;
      v84 = &unk_29945C702;
      v85 = 2;
      v86 = &unk_29945C7A0;
      v87 = 4;
      v88 = 10;
      v89 = word_29945C6D2;
      v90 = 3;
      v91 = &unk_29945C7AA;
      v92 = 1;
      v93 = &unk_29945C7AE;
      v94 = 2;
      v95 = 10;
      v96 = word_29945C6D2;
      v97 = 3;
      v98 = &unk_29945C7B4;
      v99 = 1;
      v100 = "[0M0";
      v101 = 2;
      v102 = 10;
      v103 = word_29945C6D2;
      v104 = 3;
      v105 = &unk_29945C7BE;
      v106 = 1;
      v107 = &unk_29945C7C2;
      v108 = 3;
      sub_29923BDF0(v109, 10, word_29945C7CA, L"日", L"か");
      v109[28] = 14;
      v110 = word_29945C7D2;
      v111 = 4;
      v112 = L"日";
      v113 = 1;
      v114 = L"か";
      v115 = 1;
      v116 = 14;
      v117 = word_29945C7D2;
      v118 = 4;
      v119 = word_29945C766;
      v120 = 1;
      v121 = "~0D0";
      v122 = 2;
      v123 = 14;
      v124 = &unk_29945C7E2;
      v125 = 5;
      v126 = L"日";
      v127 = 1;
      v128 = L"か";
      v129 = 1;
      v130 = 20;
      v131 = &unk_29945C6EA;
      v132 = 4;
      v133 = L"日";
      v134 = 1;
      v135 = L"か";
      v136 = 1;
      sub_29923BDF0(v137, 20, "o0d0", L"日", "k0a0");
      v137[28] = 24;
      v138 = &unk_29945C7F4;
      v139 = 5;
      v140 = L"日";
      v141 = 1;
      v142 = L"か";
      v143 = 1;
      v144 = 24;
      v145 = &unk_29945C800;
      v146 = 6;
      v147 = L"日";
      v148 = 1;
      v149 = L"か";
      v150 = 1;
      sub_29923BE80(v0, 40);
      __cxa_atexit(sub_29923BDC4, &qword_2A1460078, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460030);
    }
  }
}

void sub_29923B85C()
{
  v54 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460038, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A1460038))
    {
      LOWORD(v0) = 1;
      *(&v0 + 1) = "D0c0";
      v1 = 2;
      v2 = &unk_29945C814;
      v3 = 2;
      v4 = 2;
      v5 = L"に";
      v6 = 1;
      v7 = &unk_29945C092;
      v8 = 1;
      v9 = 4;
      v10 = L"よ";
      v11 = 1;
      v12 = "J0O0";
      v13 = 2;
      v14 = 4;
      v15 = L"よ";
      v16 = 1;
      v17 = &unk_29945C820;
      v18 = 2;
      v19 = 4;
      v20 = L"よ";
      v21 = 1;
      v22 = L"ど";
      v23 = 1;
      v24 = 4;
      v25 = L"よ";
      v26 = 1;
      v27 = &unk_29945C826;
      v28 = 3;
      v29 = 4;
      v30 = L"よ";
      v31 = 1;
      v32 = "~0D0";
      v33 = 2;
      v34 = 4;
      v35 = L"よ";
      v36 = 1;
      v37 = L"わ";
      v38 = 1;
      v39 = 4;
      v40 = word_29945C75C;
      v41 = 2;
      v42 = &unk_29945BE48;
      v43 = 1;
      v44 = 9;
      v45 = word_29945C6BE;
      v46 = 3;
      v47 = "Y0F0";
      v48 = 2;
      v49 = 30;
      v50 = &unk_29945C82E;
      v51 = 5;
      v52 = L"か";
      v53 = 1;
      sub_29923BA50(&qword_2A1460090, &v0, 11);
      __cxa_atexit(sub_29923B0C0, &qword_2A1460090, &dword_29918C000);
      __cxa_guard_release(&qword_2A1460038);
    }
  }
}

uint64_t **sub_29923BA50(uint64_t **a1, __int128 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = (a2 + 40 * a3);
    v8 = a1 + 1;
    while (1)
    {
      v9 = v4;
      if (v8 != v4)
      {
        v10 = v6;
        v11 = v4;
        if (v6)
        {
          do
          {
            v9 = v10;
            v10 = v10[1];
          }

          while (v10);
        }

        else
        {
          do
          {
            v9 = v11[2];
            v12 = *v9 == v11;
            v11 = v9;
          }

          while (v12);
        }

        if ((sub_29923BBF8(v9 + 4, v5) & 0x80) == 0)
        {
          break;
        }
      }

      if (v6)
      {
        v14 = v9 + 1;
      }

      else
      {
        v14 = v4;
      }

      if (!*v14)
      {
        goto LABEL_20;
      }

LABEL_21:
      v5 = (v5 + 40);
      if (v5 == v7)
      {
        return a1;
      }

      v8 = *a1;
      v6 = a1[1];
    }

    for (; v6; v6 = v6[1])
    {
      while (1)
      {
        v13 = v6;
        if ((sub_29923BBF8(v5, v6 + 4) & 0x80) == 0)
        {
          break;
        }

        v6 = *v6;
        if (!*v13)
        {
          goto LABEL_20;
        }
      }

      if ((sub_29923BBF8(v6 + 4, v5) & 0x80) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    operator new();
  }

  return a1;
}

uint64_t sub_29923BBF8(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    v6 = a1[2];
    v7 = a2[2];
    if (v7 >= v6)
    {
      v8 = a1[2];
    }

    else
    {
      v8 = a2[2];
    }

    if (v8)
    {
      v9 = a2[1];
      v10 = a1[1];
      do
      {
        v11 = *v10;
        v12 = *v9;
        if (v11 < v12)
        {
          return 255;
        }

        if (v12 < v11)
        {
          return 1;
        }

        ++v10;
        ++v9;
      }

      while (--v8);
    }

    v13 = v6 >= v7;
    if (v6 == v7)
    {
      v14 = a1[4];
      v15 = a2[4];
      if (v15 >= v14)
      {
        v16 = a1[4];
      }

      else
      {
        v16 = a2[4];
      }

      if (v16)
      {
        v17 = a2[3];
        v18 = a1[3];
        do
        {
          v19 = *v18;
          v20 = *v17;
          if (v19 < v20)
          {
            return 255;
          }

          if (v20 < v19)
          {
            return 1;
          }

          ++v18;
          ++v17;
        }

        while (--v16);
      }

      v13 = v14 >= v15;
      if (v14 == v15)
      {
        return 0;
      }
    }

    if (v13)
    {
      return 1;
    }

    return 255;
  }

  return v5;
}

unint64_t sub_29923BCCC(unint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      sub_299223630(a1, a2, a2);
      ++a2;
      v5 -= 2;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_29923BD44(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_29923BBF8((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_29923BBF8(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_29923BDF0(uint64_t result, __int16 a2, _WORD *a3, _WORD *a4, _WORD *a5)
{
  *result = a2;
  *(result + 8) = a3;
  if (*a3)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (a3[++v5]);
  }

  else
  {
    v6 = 0;
  }

  *(result + 16) = v6;
  *(result + 24) = a4;
  if (*a4)
  {
    v8 = 0;
    do
    {
      v9 = v8 + 1;
    }

    while (a4[++v8]);
  }

  else
  {
    v9 = 0;
  }

  *(result + 32) = v9;
  *(result + 40) = a5;
  if (*a5)
  {
    v11 = 0;
    do
    {
      v12 = v11 + 1;
    }

    while (a5[++v11]);
  }

  else
  {
    v12 = 0;
  }

  *(result + 48) = v12;
  return result;
}

void sub_29923BE80(uint64_t result, uint64_t a2)
{
  qword_2A1460088 = 0;
  qword_2A1460080 = 0;
  qword_2A1460078 = &qword_2A1460080;
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_29923C048(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    v6 = a1[2];
    v7 = a2[2];
    if (v7 >= v6)
    {
      v8 = a1[2];
    }

    else
    {
      v8 = a2[2];
    }

    if (v8)
    {
      v9 = a2[1];
      v10 = a1[1];
      do
      {
        v11 = *v10;
        v12 = *v9;
        if (v11 < v12)
        {
          return 255;
        }

        if (v12 < v11)
        {
          return 1;
        }

        ++v10;
        ++v9;
      }

      while (--v8);
    }

    v13 = v6 >= v7;
    if (v6 == v7)
    {
      v14 = a1[4];
      v15 = a2[4];
      if (v15 >= v14)
      {
        v16 = a1[4];
      }

      else
      {
        v16 = a2[4];
      }

      if (v16)
      {
        v17 = a2[3];
        v18 = a1[3];
        do
        {
          v19 = *v18;
          v20 = *v17;
          if (v19 < v20)
          {
            return 255;
          }

          if (v20 < v19)
          {
            return 1;
          }

          ++v18;
          ++v17;
        }

        while (--v16);
      }

      v13 = v14 >= v15;
      if (v14 == v15)
      {
        v21 = a1[6];
        v22 = a2[6];
        if (v22 >= v21)
        {
          v23 = a1[6];
        }

        else
        {
          v23 = a2[6];
        }

        if (v23)
        {
          v24 = a2[5];
          v25 = a1[5];
          do
          {
            v26 = *v25;
            v27 = *v24;
            if (v26 < v27)
            {
              return 255;
            }

            if (v27 < v26)
            {
              return 1;
            }

            ++v25;
            ++v24;
          }

          while (--v23);
        }

        v13 = v21 >= v22;
        if (v21 == v22)
        {
          return 0;
        }
      }
    }

    if (v13)
    {
      return 1;
    }

    return 255;
  }

  return v5;
}

void sub_29923C190(uint64_t result, uint64_t a2)
{
  qword_2A14600B8 = 0;
  qword_2A14600B0 = 0;
  qword_2A14600A8 = &qword_2A14600B0;
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_29923C344(unsigned __int16 **a1, unsigned __int16 **a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 >= v2)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = a2[1];
  }

  if (v4)
  {
    v5 = *a2;
    v6 = *a1;
    do
    {
      v7 = *v6;
      v8 = *v5;
      if (v7 < v8)
      {
        return 255;
      }

      if (v8 < v7)
      {
        return 1;
      }

      ++v6;
      ++v5;
      v4 = (v4 - 1);
    }

    while (v4);
  }

  v9 = v2 >= v3;
  if (v2 == v3)
  {
    v10 = a1[3];
    v11 = a2[3];
    if (v11 >= v10)
    {
      v12 = a1[3];
    }

    else
    {
      v12 = a2[3];
    }

    if (v12)
    {
      v13 = a2[2];
      v14 = a1[2];
      do
      {
        v15 = *v14;
        v16 = *v13;
        if (v15 < v16)
        {
          return 255;
        }

        if (v16 < v15)
        {
          return 1;
        }

        ++v14;
        ++v13;
        v12 = (v12 - 1);
      }

      while (v12);
    }

    v9 = v10 >= v11;
    if (v10 == v11)
    {
      return 0;
    }
  }

  if (!v9)
  {
    return 255;
  }

  return 1;
}

void *sub_29923C424(void *result, _WORD *a2, _WORD *a3, _WORD *a4, _WORD *a5)
{
  *result = a2;
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (a2[++v5]);
  }

  else
  {
    v6 = 0;
  }

  result[1] = v6;
  result[2] = a3;
  if (*a3)
  {
    v8 = 0;
    do
    {
      v9 = v8 + 1;
    }

    while (a3[++v8]);
  }

  else
  {
    v9 = 0;
  }

  result[3] = v9;
  result[4] = a4;
  if (*a4)
  {
    v11 = 0;
    do
    {
      v12 = v11 + 1;
    }

    while (a4[++v11]);
  }

  else
  {
    v12 = 0;
  }

  result[5] = v12;
  result[6] = a5;
  if (*a5)
  {
    v14 = 0;
    do
    {
      v15 = v14 + 1;
    }

    while (a5[++v14]);
  }

  else
  {
    v15 = 0;
  }

  result[7] = v15;
  return result;
}

void sub_29923C4DC(uint64_t result, uint64_t a2)
{
  qword_2A14600D0 = 0;
  qword_2A14600C8 = 0;
  qword_2A14600C0 = &qword_2A14600C8;
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_29923C698(unsigned __int16 **a1, unsigned __int16 **a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v3 >= v2)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = a2[1];
  }

  if (v4)
  {
    v5 = *a2;
    v6 = *a1;
    do
    {
      v7 = *v6;
      v8 = *v5;
      if (v7 < v8)
      {
        return 255;
      }

      if (v8 < v7)
      {
        return 1;
      }

      ++v6;
      ++v5;
      v4 = (v4 - 1);
    }

    while (v4);
  }

  v9 = v2 >= v3;
  if (v2 == v3)
  {
    v10 = a1[3];
    v11 = a2[3];
    if (v11 >= v10)
    {
      v12 = a1[3];
    }

    else
    {
      v12 = a2[3];
    }

    if (v12)
    {
      v13 = a2[2];
      v14 = a1[2];
      do
      {
        v15 = *v14;
        v16 = *v13;
        if (v15 < v16)
        {
          return 255;
        }

        if (v16 < v15)
        {
          return 1;
        }

        ++v14;
        ++v13;
        v12 = (v12 - 1);
      }

      while (v12);
    }

    v9 = v10 >= v11;
    if (v10 == v11)
    {
      v17 = a1[5];
      v18 = a2[5];
      if (v18 >= v17)
      {
        v19 = a1[5];
      }

      else
      {
        v19 = a2[5];
      }

      if (v19)
      {
        v20 = a2[4];
        v21 = a1[4];
        do
        {
          v22 = *v21;
          v23 = *v20;
          if (v22 < v23)
          {
            return 255;
          }

          if (v23 < v22)
          {
            return 1;
          }

          ++v21;
          ++v20;
          v19 = (v19 - 1);
        }

        while (v19);
      }

      v9 = v17 >= v18;
      if (v17 == v18)
      {
        v24 = a1[7];
        v25 = a2[7];
        if (v25 >= v24)
        {
          v26 = a1[7];
        }

        else
        {
          v26 = a2[7];
        }

        if (v26)
        {
          v27 = a2[6];
          v28 = a1[6];
          do
          {
            v29 = *v28;
            v30 = *v27;
            if (v29 < v30)
            {
              return 255;
            }

            if (v30 < v29)
            {
              return 1;
            }

            ++v28;
            ++v27;
            v26 = (v26 - 1);
          }

          while (v26);
        }

        v9 = v24 >= v25;
        if (v24 == v25)
        {
          return 0;
        }
      }
    }
  }

  if (!v9)
  {
    return 255;
  }

  return 1;
}

void sub_29923C810(uint64_t *result, uint64_t a2)
{
  qword_2A14600E8 = 0;
  qword_2A14600E0 = 0;
  qword_2A14600D8 = &qword_2A14600E0;
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_29923CA5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F661C0;
  *(a1 + 8) = a2;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = sub_299242520(a2);
  *(a1 + 64) = CFStringCompare(v3, @"NumberValue.index", 0) == kCFCompareEqualTo;
  return a1;
}

void sub_29923CAE4(uint64_t a1)
{
  sub_299244048(a1);

  JUMPOUT(0x29C29BFB0);
}

BOOL sub_29923CB1C(void *a1, void *__src, unint64_t a3, const void *a4)
{
  v8 = a1[4];
  if (!v8)
  {
    operator new[]();
  }

  if (a3 <= 0x80)
  {
    a1[5] = a3;
    memcpy(v8, __src, 2 * a3);
    a1[3] = CFRetain(a4);
    v9 = a1[7];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = CFStringCreateWithBytes(0, __src, 2 * a3, 0x100u, 0);
    a1[6] = 0;
    a1[7] = v10;
  }

  return a3 < 0x81;
}

uint64_t sub_29923CBDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  result = 0;
  *a6 = 0;
  if (*(a1 + 48) > 0)
  {
    return result;
  }

  if (*(a1 + 64) == 1)
  {
    v10 = a3 - 4;
    *a4 = a3 - 4;
    a4[1] = 4;
    if (CFStringCompare(*(a1 + 56), @"openCount", 0) == kCFCompareEqualTo)
    {
      v12 = 0;
      goto LABEL_13;
    }

    if (CFStringCompare(*(a1 + 56), @"initiallyOpenedCallCount", 0) == kCFCompareEqualTo)
    {
      v12 = dword_2A14601D0;
      goto LABEL_13;
    }

    v11 = CFStringCompare(*(a1 + 56), @"lastlyClosedCallCount", 0);
    result = 0;
    if (v11 == kCFCompareEqualTo)
    {
      v12 = dword_2A14601D4;
LABEL_13:
      *(a4 + v10) = v12;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = a3 - 2 * v13;
    *a4 = v14 - 2;
    a4[1] = 2 * v13 + 2;
    *(a4 + v14 - 2) = 2 * v13;
    v15 = *(a1 + 40);
    if (v15 < 1)
    {
LABEL_14:
      result = 1;
      goto LABEL_15;
    }

    v16 = (a4 + v14);
    v17 = *(a1 + 32) - 2;
    result = 1;
    do
    {
      *v16++ = *(v17 + 2 * v15--);
    }

    while (v15);
  }

LABEL_15:
  if (a5)
  {
    *a5 = a4;
  }

  *(a1 + 48) += result;
  return result;
}

BOOL sub_29923CD34(uint64_t a1)
{
  v2 = CFWriteStreamCreateWithFile(0, *a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    v4 = CFPropertyListWriteToStream(*(a1 + 8), v3, kCFPropertyListXMLFormat_v1_0, 0);
    CFWriteStreamClose(v3);
    v5 = v4 > 0;
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

uint64_t sub_29923CDB4(uint64_t a1, int a2)
{
  if (a2)
  {
    ++dword_2A14601D0;
  }

  return 1;
}

void sub_29923CDD0(uint64_t a1, int a2)
{
  if (a2)
  {
    ++dword_2A14601D4;
  }
}

uint64_t sub_29923CDF0(uint64_t a1, __CFDictionary *a2, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v7 = result;
    result = sub_299377154(result);
    if (result)
    {
      if (((*(*v7 + 416))(v7) & 0x4000) == 0)
      {
        return 0;
      }

      if (((*(*v7 + 416))(v7) & 0x8000) != 0)
      {
        CFDictionaryAddValue(a2, @"pinyin10KeySyllableSelected", *MEMORY[0x29EDB8F00]);
      }

      v8 = *(a1 + 32);
      if (!v8)
      {
        sub_2991A2240();
      }

      v10[0] = (*(*v8 + 48))(v8);
      v10[1] = 4;
      v9 = (*(*lpsrc + 56))(lpsrc);
      if (sub_2993C3E58(v10, v9))
      {
        CFDictionaryAddValue(a2, @"pinyin10KeyFlickInput", *MEMORY[0x29EDB8F00]);
      }

      return 1;
    }
  }

  return result;
}

void sub_29923CFD0(uint64_t a1)
{
  sub_299234FF0(a1 + 8);

  JUMPOUT(0x29C29BFB0);
}

void sub_29923D01C(void *a1, const __CFString *a2, const __CFString *a3, int a4)
{
  *a1 = &unk_2A1F66DC0;
  v6 = sub_2992C272C(a1, &off_2A1F664F8, a2, a3, a4);
  *v6 = &unk_2A1F662A0;
  v6[15] = &unk_2A1F664E8;
  a1[22] = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  a1[23] = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  a1[24] = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  sub_299276E1C(a3);
}

void sub_29923D1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29927E8D8(v16, &off_2A1F66500);
  _Unwind_Resume(a1);
}

uint64_t *sub_29923D220(uint64_t a1)
{
  *a1 = &unk_2A1F662A0;
  *(a1 + 120) = &unk_2A1F664E8;
  CFRelease(*(a1 + 176));
  CFRelease(*(a1 + 184));
  CFRelease(*(a1 + 192));

  return sub_29927E8D8(a1, &off_2A1F66500);
}

void sub_29923D2B8(uint64_t a1)
{
  sub_29923D220(a1);

  JUMPOUT(0x29C29BFB0);
}

__CFString *sub_29923D2F0(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (CFArrayGetCount(*(a1 + 192)) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 192), v3);
      valuePtr = 0;
      if (CFNumberGetValue(ValueAtIndex, kCFNumberShortType, &valuePtr))
      {
        CFStringAppendFormat(Mutable, 0, @"%d", valuePtr);
      }

      ++v3;
    }

    while (v3 < CFArrayGetCount(*(a1 + 192)));
  }

  return Mutable;
}

void sub_29923D4CC(uint64_t *a1)
{
  sub_29927E8D8(a1, &off_2A1F6C728);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29923D5A0(uint64_t a1)
{
  v1 = (*(*a1 + 24))(a1);

  return sub_299279FBC(v1);
}

void sub_29923D710(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_29923D71C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *sub_29923D810(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x29C29BFB0](v2, 0x10A0C40A1EC6FE4);
  }

  return a1;
}

CFIndex sub_29923D864(CFIndex result, CFArrayRef theArray, CFIndex a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (*(result + 24))
    {
      result = CFArrayGetCount(theArray);
      if (result >= a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
        v9 = *(v3 + 8);
        if (!v9)
        {
          v9 = objc_alloc_init(MEMORY[0x29EDB8E00]);
          *(v3 + 8) = v9;
        }

        v10 = objc_msgSend_objectForKey_(v9, v6, ValueAtIndex, v7);
        v14 = MEMORY[0x29EDBA070];
        if (v10)
        {
          v15 = objc_msgSend_integerValue(v10, v11, v12, v13) + 1;
          v18 = objc_msgSend_numberWithInteger_(v14, v16, v15, v17);
        }

        else
        {
          v18 = objc_msgSend_numberWithInteger_(MEMORY[0x29EDBA070], v11, 1, v13);
        }

        v19 = v18;
        v20 = *(v3 + 8);

        return MEMORY[0x2A1C70FE8](v20, sel_setObject_forKey_, v19, ValueAtIndex);
      }
    }
  }

  return result;
}

uint64_t sub_29923D930(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (*(result + 24) == 1)
  {
    v4 = result;
    if (objc_msgSend_count(*(result + 8), a2, a3, a4) && (v7 = objc_msgSend_keysSortedByValueUsingComparator_(*(v4 + 8), v5, &unk_2A1F66DC8, v6), v27 = 0u, v28 = 0u, v29 = 0u, v30 = 0u, (v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v31, 16)) != 0))
    {
      v12 = v9;
      v13 = 0;
      v14 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = objc_msgSend_objectForKey_(*(v4 + 8), v10, v16, v11);
          v21 = objc_msgSend_integerValue(v17, v18, v19, v20);
          v13 += v21;
          v22 = *v4;
          v26 = objc_msgSend_UTF8String(v16, v23, v24, v25);
          sub_29930B514(v22, 0x200000u, "%s : %ld\n", v26, v21);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v27, v31, 16);
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    return sub_29930B514(*v4, 0x200000u, "Token count: %ld, UNK count = %ld\n", *(v4 + 16), v13);
  }

  return result;
}

void sub_29923DAB0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 24) == 1)
  {
    v10 = sub_29939AF08(a2, a3);
    v11 = off_2A145E6F8;
    v12 = *a1;
    if (!a4)
    {
      v11 = &off_2A145E700;
    }

    v13 = objc_msgSend_UTF8String(*v11, v7, v8, v9);
    v17 = objc_msgSend_UTF8String(v10, v14, v15, v16);
    sub_29930B600(v12, "%s:%s\n", v13, v17);

    CFRelease(v10);
  }
}

uint64_t sub_29923DB5C(uint64_t a1)
{
  v2 = sub_29930AF10();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  v3 = *v2 == 1 && (v2[10] & 0x20) != 0 || *(v2 + 1) < 8u;
  *(a1 + 24) = v3;
  return a1;
}

uint64_t sub_29923DBB8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_integerValue(a2, a2, a3, a4);
  if (v6 > objc_msgSend_integerValue(a3, v7, v8, v9))
  {
    return -1;
  }

  v14 = objc_msgSend_integerValue(a2, v10, v11, v12);
  return v14 < objc_msgSend_integerValue(a3, v15, v16, v17);
}

UInt8 *sub_29923DC24(const __CFString *a1, CFStringEncoding a2, unint64_t *a3)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
    v8 = malloc_type_malloc(MaximumSizeForEncoding, 0x1000040BDFB0063uLL);
    v11.location = 0;
    v11.length = Length;
    CFStringGetBytes(a1, v11, a2, 0, 0, v8, MaximumSizeForEncoding, &usedBufLen);
    if (a3)
    {
      *a3 = usedBufLen >> 1;
    }
  }

  else
  {
    v8 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v8;
}

char *sub_29923DCE8(const __CFURL *a1)
{
  v1 = CFURLCopyAbsoluteURL(a1);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  CFRelease(v1);
  if (!v2)
  {
    return 0;
  }

  Length = CFStringGetLength(v2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  LODWORD(MaximumSizeForEncoding) = CFStringGetFileSystemRepresentation(v2, v5, MaximumSizeForEncoding);
  CFRelease(v2);
  if (!MaximumSizeForEncoding)
  {
    free(v5);
    return 0;
  }

  return v5;
}

CFURLRef sub_29923DD90(CFURLRef url, CFStringRef pathComponent)
{
  if (pathComponent)
  {
    return CFURLCreateCopyAppendingPathComponent(0, url, pathComponent, 0);
  }

  else
  {
    return CFRetain(url);
  }
}

CFBundleRef sub_29923DDB0(const __CFURL *a1)
{
  PathComponent = CFURLCopyLastPathComponent(a1);
  if (CFStringCompare(PathComponent, @"/", 0) == kCFCompareEqualTo)
  {
    v7 = 0;
LABEL_10:
    CFRelease(PathComponent);
    return v7;
  }

  v3 = 0;
  v4 = PathComponent;
  PathComponent = a1;
  while (1)
  {
    v5 = CFStringCompare(v4, @"Contents", 0);
    CFRelease(v4);
    v6 = CFURLCreateCopyDeletingLastPathComponent(0, PathComponent);
    if (v5 == kCFCompareEqualTo)
    {
      break;
    }

    if (v3)
    {
      CFRelease(PathComponent);
    }

    v4 = CFURLCopyLastPathComponent(v6);
    v3 = 1;
    PathComponent = v6;
    if (CFStringCompare(v4, @"/", 0) == kCFCompareEqualTo)
    {
      CFRelease(v4);
      v7 = 0;
      PathComponent = v6;
      goto LABEL_10;
    }
  }

  v7 = CFBundleCreate(0, v6);
  CFRelease(v6);
  if (v3)
  {
    goto LABEL_10;
  }

  return v7;
}

DIR *sub_29923DEC4(DIR *result)
{
  if (result)
  {
    v1 = result;
    memset(&v9, 0, sizeof(v9));
    if (lstat(result, &v9) < 0)
    {
      return 0;
    }

    else if ((v9.st_mode & 0xF000) == 0x4000)
    {
      result = opendir(v1);
      if (result)
      {
        v3 = result;
        v4 = strlen(v1);
        v5 = malloc_type_malloc(v4 + 256, 0x100004077774924uLL);
        strlcpy(v5, v1, v4 + 256);
        v6 = strlen(v1);
        *&v5[v6] = 47;
        v7 = &v5[v6 + 1];
        while (1)
        {
          v8 = readdir(v3);
          if (!v8)
          {
            break;
          }

          if (v8->d_name[0] != 46 || v8->d_name[1] && (v8->d_name[1] != 46 || v8->d_name[2]))
          {
            strlcpy(v7, v8->d_name, 0x100uLL);
            if (!sub_29923DEC4(v5))
            {
              free(v5);
              closedir(v3);
              return 0;
            }
          }
        }

        free(v5);
        closedir(v3);
        return (rmdir(v1) >= 0);
      }
    }

    else
    {
      return !remove(v1, v2);
    }
  }

  return result;
}