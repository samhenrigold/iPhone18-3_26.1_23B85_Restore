void sub_2992BEE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  __p = &a18;
  sub_299291260(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2992BEE7C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFStringFind(result, @"Siri", 0).location == -1)
    {
      goto LABEL_12;
    }

    if (CFStringHasSuffix(v1, @".dat") || CFStringHasSuffix(v1, @".dic"))
    {
      return 11;
    }

    if (CFStringHasSuffix(v1, @"unilm.lm"))
    {
      return 10;
    }

    if (CFStringHasSuffix(v1, @".lm"))
    {
      return 8;
    }

    if (!CFStringHasSuffix(v1, @".rnnlm"))
    {
LABEL_12:
      if (CFStringFind(v1, @"ucm", 0).location == -1)
      {
        if (CFStringHasSuffix(v1, @"customized_lexicon.dat"))
        {
          return 15;
        }

        else if (CFStringHasSuffix(v1, @".dic"))
        {
          return 1;
        }

        else if (CFStringHasSuffix(v1, @"unilm.lm"))
        {
          return 5;
        }

        else if (CFStringHasSuffix(v1, @".lm"))
        {
          return 3;
        }

        else if (CFStringHasSuffix(v1, @".rnnlm"))
        {
          return 4;
        }

        else if (CFStringHasSuffix(v1, @".lexicon"))
        {
          return 13;
        }

        else if (CFStringHasSuffix(v1, @".cpml"))
        {
          return 14;
        }

        else if (CFStringHasSuffix(v1, @"Wubixing"))
        {
          return 12;
        }

        else
        {
          return 16 * (CFStringFind(v1, @"blocklist", 0).location != -1);
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 9;
    }
  }

  return result;
}

uint64_t sub_2992BF064(uint64_t a1, CFURLRef relativeURL)
{
  v3 = CFURLCopyAbsoluteURL(relativeURL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 120);
  if (v5 && CFEqual(v3, v5) || sub_299277300(*a1) != 5 || (v6 = sub_2993E02C0(), !sub_2993E0424(v6, v4)))
  {
    v7 = 0;
  }

  else
  {
    sub_2992BF1BC((a1 + 120), v4);
    v7 = 1;
    *(a1 + 105) = 1;
  }

  CFRelease(v4);
  return v7;
}

void sub_2992BF114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992BF12C(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 0;
  }

  v4 = sub_29936CDE8(theArray);
  v5 = sub_2992BD9B4(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void sub_2992BF1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992BF1BC(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_29920FE30(a1, cf);
  }
}

uint64_t sub_2992BF21C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v13 = a2;
    }

    else
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = *a1 + a2;
      v9 = *a1 + a3;
      do
      {
        v10 = (v9 + v7);
        v11 = *(v9 + v7);
        *v10 = 0;
        v10[1] = 0;
        v12 = *(v8 + v7 + 8);
        *(v8 + v7) = v11;
        if (v12)
        {
          sub_2991A893C(v12);
        }

        v8 += 16;
        v9 += 16;
      }

      while (v9 + v7 != v5);
      v5 = a1[1];
      v13 = v8 - v6;
    }

    while (v5 != v13)
    {
      v14 = *(v5 - 8);
      if (v14)
      {
        sub_2991A893C(v14);
      }

      v5 -= 16;
    }

    a1[1] = v13;
  }

  return a2;
}

const __CFDictionary *sub_2992BF2E4(uint64_t a1, const void *a2, int a3)
{
  result = *(a1 + 96);
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
        return ((valuePtr & a3) != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_2992BF368(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        sub_2991A893C(v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_2992BF3D8(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2992BF7F0(char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    sub_299291260(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_2992BF838(uint64_t a1, uint64_t *a2, int a3)
{
  if (((*(**a2 + 32))() & 1) == 0 && !a3)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v7 < v6)
    {
      v8 = *a2;
      *a2 = 0;
      *v7 = v8;
      v9 = v7 + 8;
LABEL_26:
      *(a1 + 32) = v9;
      return *(v9 - 1);
    }

    v18 = *(a1 + 24);
    v19 = v7 - v18;
    v20 = (v7 - v18) >> 3;
    v21 = v20 + 1;
    if (!((v20 + 1) >> 61))
    {
      v22 = v6 - v18;
      if (v22 >> 2 > v21)
      {
        v21 = v22 >> 2;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      v39 = a1 + 24;
      if (v23)
      {
        sub_29921EA5C(v23);
      }

      v28 = v20;
      v29 = (8 * v20);
      v30 = *a2;
      *a2 = 0;
      v31 = &v29[-v28];
      *v29 = v30;
      v9 = v29 + 1;
      memcpy(v31, v18, v19);
      v32 = *(a1 + 24);
      *(a1 + 24) = v31;
      *(a1 + 32) = v9;
      v33 = *(a1 + 40);
      *(a1 + 40) = 0;
      v37 = v32;
      v38 = v33;
      v35 = v32;
      v36 = v32;
      sub_2992C0500(&v35);
      goto LABEL_26;
    }

LABEL_28:
    sub_299212A8C();
  }

  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v11 >= v10)
  {
    v13 = *a1;
    v14 = v11 - *a1;
    v15 = (v14 >> 3) + 1;
    if (v15 >> 61)
    {
      goto LABEL_28;
    }

    v16 = v10 - v13;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    v39 = a1;
    if (v17)
    {
      sub_29921EA5C(v17);
    }

    v24 = (8 * (v14 >> 3));
    v25 = *a2;
    *a2 = 0;
    *v24 = v25;
    v9 = v24 + 1;
    memcpy(0, v13, v14);
    v26 = *a1;
    *a1 = 0;
    *(a1 + 8) = v9;
    v27 = *(a1 + 16);
    *(a1 + 16) = 0;
    v37 = v26;
    v38 = v27;
    v35 = v26;
    v36 = v26;
    sub_2992C0500(&v35);
  }

  else
  {
    v12 = *a2;
    *a2 = 0;
    *v11 = v12;
    v9 = v11 + 1;
  }

  *(a1 + 8) = v9;
  return *(v9 - 1);
}

uint64_t sub_2992BFA30(uint64_t a1, uint64_t a2)
{
  if (!(*(**a2 + 32))())
  {
    (*(**a2 + 16))(&v31);
    v6 = *(a1 + 32);
    v13 = *(a1 + 40);
    v5 = (a1 + 32);
    if (v6 >= v13)
    {
      v16 = *(a1 + 24);
      v17 = v6 - v16;
      v18 = (v6 - v16) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v20 = v13 - v16;
      if (v20 >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      v33 = a1 + 24;
      if (v21)
      {
        sub_29921EA5C(v21);
      }

      v25 = (v6 - v16) >> 3;
      v26 = (8 * v18);
      v27 = v31;
      v31 = 0;
      v28 = (8 * v18 - 8 * v25);
      *v26 = v27;
      v15 = (v26 + 1);
      memcpy(v28, v16, v17);
      v23 = *(a1 + 24);
      *(a1 + 24) = v28;
      *(a1 + 32) = v15;
      v24 = *(a1 + 40);
      *(a1 + 40) = 0;
      goto LABEL_23;
    }

LABEL_12:
    v14 = v31;
    v31 = 0;
    *v6 = v14;
    v15 = (v6 + 8);
    goto LABEL_24;
  }

  (*(**a2 + 16))(&v31);
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v6 < v4)
  {
    goto LABEL_12;
  }

  v7 = *a1;
  v8 = &v6[-*a1];
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_299212A8C();
  }

  v11 = v4 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  v33 = a1;
  if (v12)
  {
    sub_29921EA5C(v12);
  }

  v22 = v31;
  v31 = 0;
  *(8 * v9) = v22;
  v15 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  v23 = *a1;
  *a1 = 0;
  *(a1 + 8) = v15;
  v24 = *(a1 + 16);
  *(a1 + 16) = 0;
LABEL_23:
  v32[2] = v23;
  v32[3] = v24;
  v32[0] = v23;
  v32[1] = v23;
  sub_2992C0500(v32);
LABEL_24:
  *v5 = v15;
  v29 = v31;
  v31 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  result = *(*v5 - 8);
  ++*(result + 8);
  return result;
}

void sub_2992BFCB4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992BFCF4(void *result, char a2, uint64_t a3, _BYTE *a4)
{
  v7 = result;
  v8 = *result;
  v9 = result[1];
  while (v8 != v9 && (!a4 || (*a4 & 1) == 0))
  {
    v10 = *(a3 + 24);
    if (!v10)
    {
LABEL_15:
      sub_2991A2240();
    }

    result = (*(*v10 + 48))(v10, v8);
    v8 += 8;
  }

  if ((a2 & 1) == 0)
  {
    v12 = v7[3];
    v11 = v7[4];
    while (v12 != v11 && (!a4 || (*a4 & 1) == 0))
    {
      v13 = *(a3 + 24);
      if (!v13)
      {
        goto LABEL_15;
      }

      result = (*(*v13 + 48))(v13, v12);
      v12 += 8;
    }
  }

  return result;
}

uint64_t sub_2992BFDD8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 48);
  v5 = *(a1 + 48);
  v6 = (a1 + 56);
  if (v5 != (a1 + 56))
  {
    while (1)
    {
      v7 = v5[4];
      if (*(v7 + 32) == *(a2 + 32) && *(v7 + 64) == *(a2 + 64))
      {
        break;
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
      if (v9 == v6)
      {
        goto LABEL_14;
      }
    }
  }

  if (v5 != v6)
  {
    v11 = v5[4];
    if (*(v11 + 56) >= *(a2 + 56))
    {
      return 0;
    }

    sub_2992C0094(*v11, v11);
    sub_2992C0578(v4, v5);
    operator delete(v5);
  }

LABEL_14:
  if (*(a1 + 64) == 80)
  {
    v12 = *v6;
    if (*v6)
    {
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      v15 = v6;
      do
      {
        v13 = v15[2];
        v10 = *v13 == v15;
        v15 = v13;
      }

      while (v10);
    }

    sub_2992C0094(*v13[4], v13[4]);
    v16 = *v6;
    if (*v6)
    {
      do
      {
        v17 = v16;
        v16 = v16[1];
      }

      while (v16);
    }

    else
    {
      v18 = v6;
      do
      {
        v17 = v18[2];
        v10 = *v17 == v18;
        v18 = v17;
      }

      while (v10);
    }

    sub_2992C0578(v4, v17);
    operator delete(v17);
  }

  v19 = *v6;
  if (!*v6)
  {
LABEL_34:
    operator new();
  }

  v20 = *(a2 + 56);
  while (1)
  {
    while (1)
    {
      v21 = v19;
      v22 = *(v19[4] + 56);
      if (v20 <= v22)
      {
        break;
      }

      v19 = *v19;
      if (!*v21)
      {
        goto LABEL_34;
      }
    }

    if (v22 <= v20)
    {
      break;
    }

    v19 = v19[1];
    if (!v19)
    {
      goto LABEL_34;
    }
  }

  v23 = *a2;
  v25 = *(*a2 + 40);
  v24 = *(*a2 + 48);
  if (v25 >= v24)
  {
    v27 = v23[4];
    v28 = (v25 - v27) >> 3;
    if ((v28 + 1) >> 61)
    {
      sub_299212A8C();
    }

    v29 = v24 - v27;
    v30 = v29 >> 2;
    if (v29 >> 2 <= (v28 + 1))
    {
      v30 = v28 + 1;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      v31 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30;
    }

    if (v31)
    {
      sub_29920B86C((v23 + 4), v31);
    }

    v32 = (8 * v28);
    *v32 = a2;
    v26 = 8 * v28 + 8;
    v33 = v23[4];
    v34 = v23[5] - v33;
    v35 = v32 - v34;
    memcpy(v32 - v34, v33, v34);
    v36 = v23[4];
    v23[4] = v35;
    v23[5] = v26;
    v23[6] = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v25 = a2;
    v26 = (v25 + 1);
  }

  v23[5] = v26;
  return 1;
}

uint64_t sub_2992C0094(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (v3 != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 1;
      if (v3 + 1 != v2)
      {
        do
        {
          if (*v4 != a2)
          {
            *v3++ = *v4;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = *(result + 40);
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 40) = v3;
  }

  return result;
}

uint64_t sub_2992C0144(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_2991A2240();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_2992C0198@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v23 = *MEMORY[0x29EDCA608];
  sub_2991D7954(v10);
  v20.__locale_ = &unk_2A1F6BB28;
  v21 = v10;
  v22 = &v20;
  sub_2992BFCF4(a1, 0, &v20, 0);
  sub_2992C07E4(&v20);
  std::ios_base::getloc((&v11 + *(v11 - 24)));
  v4 = std::locale::use_facet(&v20, MEMORY[0x29EDC93D0]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v20);
  std::ostream::put();
  std::ostream::flush();
  if ((v18 & 0x10) != 0)
  {
    v6 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v6 = v14;
    }

    locale = v13[4].__locale_;
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v13[1].__locale_;
    v6 = v13[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, locale, v5);
  }

LABEL_14:
  a2[v5] = 0;
  v10[0] = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v11 = v8;
  v12 = MEMORY[0x29EDC9570] + 16;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v12 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v19);
}

void sub_2992C04B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_2992C07E4(v25 - 88);
  sub_2991D7BF8(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C0500(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_2992C0578(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return sub_2991FA400(v6, a2);
}

uint64_t sub_2992C063C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6BB28;
  a2[1] = v2;
  return result;
}

void sub_2992C0668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  (*(**a2 + 48))(__p);
  if ((v15 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v5 = sub_2991C0E9C((v3 + 16), v4, v15);
  }

  else
  {
    v5 = sub_2991C0E9C((v3 + 16), v4, __p[1]);
  }

  v6 = sub_2991C0E9C(v5, "(", 1);
  v7 = MEMORY[0x29C29BD10](v6, *(*a2 + 24));
  v8 = sub_2991C0E9C(v7, ", ", 2);
  v9 = MEMORY[0x29C29BD60](v8, *(*a2 + 8));
  v10 = sub_2991C0E9C(v9, ", ", 2);
  v11 = MEMORY[0x29C29BD60](v10, *(*a2 + 16));
  v12 = sub_2991C0E9C(v11, ", ", 2);
  v13 = MEMORY[0x29C29BD60](v12, *(*a2 + 64));
  sub_2991C0E9C(v13, "), ", 3);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2992C077C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992C0798(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6BB98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992C07E4(uint64_t a1)
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

CFIndex sub_2992C0864(int a1, __CFDictionary *a2, void *lpsrc, char a4)
{
  if (!lpsrc)
  {
    return 0;
  }

  v7 = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  result = 0;
  if ((a4 & 1) == 0)
  {
    if (v7)
    {
      result = sub_299377154(v7);
      if (result)
      {
        result = (*(*v7 + 56))(v7);
        if (result)
        {
          v9 = (*(*v7 + 56))(v7);
          result = CFStringGetLength(v9);
          if (result)
          {
            if (v7[1] < 1)
            {
              return 0;
            }

            v10 = (*(*v7 + 416))(v7);
            if ((v10 & 0x4000000) == 0)
            {
              return 0;
            }

            v11 = v10;
            if ((atomic_load_explicit(&qword_2A145E890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E890))
            {
              off_2A145E888 = sub_299237120();
              __cxa_guard_release(&qword_2A145E890);
            }

            if ((~v11 & 0x6000000) != 0 || (((v11 & 4) == 0) & *off_2A145E888) != 0)
            {
              if (((*(*v7 + 416))(v7) & 0x6000002) != 0x4000002 || *sub_299237120() == 1 && (*(*v7 + 96))(v7) == 68)
              {
                v12 = 10;
              }

              else
              {
                v12 = v7[1] - 1;
              }
            }

            else
            {
              v12 = 0;
            }

            sub_2992CB4E8(a1, a2, v12);
            v13 = (*(*v7 + 24))(v7);
            sub_2992CB59C(a1, a2, v13);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2992C0B24(const __CFArray *a1)
{
  if (!a1)
  {
    __assert_rtn("getCPGestureCount", "GestureUtils.cpp", 19, "gestures");
  }

  if (CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    if ((**ValueAtIndex[3])(ValueAtIndex[3]) == 2)
    {
      ++v2;
    }

    ++v3;
  }

  while (v3 < CFArrayGetCount(a1));
  return v2;
}

CFStringRef sub_2992C0BE0(const __CFArray *a1)
{
  if (!a1)
  {
    __assert_rtn("createTypingGestureString", "GestureUtils.cpp", 32, "gestures");
  }

  Count = CFArrayGetCount(a1);
  __src = 0;
  v17 = 0;
  v18 = 0;
  sub_299218E20(&__src, Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v4 = *(CFArrayGetValueAtIndex(a1, i) + 3);
      if (!(**v4)(v4) || (**v4)(v4) == 1)
      {
        v5 = (*(*v4 + 8))(v4);
        v6 = v17;
        if (v17 >= v18)
        {
          v8 = __src;
          v9 = v17 - __src;
          v10 = (v17 - __src) >> 1;
          if (v10 <= -2)
          {
            sub_299212A8C();
          }

          if (v18 - __src <= v10 + 1)
          {
            v11 = v10 + 1;
          }

          else
          {
            v11 = v18 - __src;
          }

          if (v18 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v12 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            sub_299212A48(&__src, v12);
          }

          *(2 * v10) = v5;
          v7 = 2 * v10 + 2;
          memcpy(0, v8, v9);
          v13 = __src;
          __src = 0;
          v17 = v7;
          v18 = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v17 = v5;
          v7 = (v6 + 2);
        }

        v17 = v7;
      }
    }
  }

  v14 = CFStringCreateWithCharacters(0, __src, (v17 - __src) >> 1);
  if (__src)
  {
    v17 = __src;
    operator delete(__src);
  }

  return v14;
}

void sub_2992C0DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFArray *sub_2992C0E18(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    if (CFArrayGetCount(result) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
      return ((**ValueAtIndex[3])(ValueAtIndex[3]) == 3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFArray *sub_2992C0E90(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      v6 = *(CFArrayGetValueAtIndex(a1, i) + 3);
      if (!(**v6)(v6) || (**v6)(v6) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v8 = *(v6 + 8);
        v7 = *(v6 + 16);
        while (v8 != v7)
        {
          LOWORD(v12) = *v8;
          HIDWORD(v12) = *(v8 + 4);
          sub_2992C1040(&v13, &v12);
          v8 += 8;
        }

        LOWORD(v12) = 0;
        HIDWORD(v12) = 0;
        sub_2992C1040(&v13, &v12);
        v9 = v13;
        v10 = CFDataCreate(0, v13, v14 - v13);
        v12 = v10;
        CFArrayAppendValue(Mutable, v10);
        if (v10)
        {
          CFRelease(v10);
        }

        if (v9)
        {
          operator delete(v9);
        }
      }
    }
  }

  return Mutable;
}

void sub_2992C1010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992C1040(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_299212A8C();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_2992C1140(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t sub_2992C1174(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *a1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v13 = off_2A1461E60;
  v21 = off_2A1461E60;
  if (!off_2A1461E60)
  {
    v14 = sub_2992C2030();
    v19[3] = dlsym(v14, "ITTouchTranscoderSessionAddEvent");
    off_2A1461E60 = v19[3];
    v13 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v13)
  {
    v16 = dlerror();
    v17 = abort_report_np("%s", v16);
    _Block_object_dispose(&v18, 8);
    _Unwind_Resume(v17);
  }

  result = v13(v12, a2, a3, a4, a5, a6);
  ++*(a1 + 2);
  return result;
}

uint64_t sub_2992C12D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v4 = off_2A1461E68;
  v12 = off_2A1461E68;
  if (!off_2A1461E68)
  {
    v5 = sub_2992C2030();
    v10[3] = dlsym(v5, "ITTouchTranscoderSessionEnumerateCandidates");
    off_2A1461E68 = v10[3];
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

  return v4(v3, a2);
}

uint64_t *sub_2992C13F4(uint64_t *a1, int a2, const void *a3)
{
  v6 = sub_2992C1E9C(0);
  v7 = 0;
  if (!a3 || !v6)
  {
LABEL_25:
    *a1 = v7;
    return a1;
  }

  cf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v9 = qword_2A1460940;
  v31 = qword_2A1460940;
  if (!qword_2A1460940)
  {
    *buf = MEMORY[0x29EDCA5F8];
    v24 = 0x40000000;
    v25 = sub_2992C20DC;
    v26 = &unk_29EF10630;
    v27 = &v28;
    v10 = sub_2992C2030();
    v29[3] = dlsym(v10, "kITTouchTranscoderLocaleKey");
    qword_2A1460940 = *(v27[1] + 24);
    v9 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (v9)
  {
    CFDictionaryAddValue(Mutable, *v9, a3);
    if (a2)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2000000000;
      v11 = qword_2A1460950;
      v31 = qword_2A1460950;
      if (!qword_2A1460950)
      {
        *buf = MEMORY[0x29EDCA5F8];
        v24 = 0x40000000;
        v25 = sub_2992C217C;
        v26 = &unk_29EF10680;
        v27 = &v28;
        v12 = sub_2992C2030();
        v29[3] = dlsym(v12, "kITTouchTranscoderInstanceTypeValueTapTyping");
        qword_2A1460950 = *(v27[1] + 24);
LABEL_11:
        v11 = v29[3];
      }
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2000000000;
      v11 = qword_2A1460948;
      v31 = qword_2A1460948;
      if (!qword_2A1460948)
      {
        *buf = MEMORY[0x29EDCA5F8];
        v24 = 0x40000000;
        v25 = sub_2992C212C;
        v26 = &unk_29EF10658;
        v27 = &v28;
        v13 = sub_2992C2030();
        v29[3] = dlsym(v13, "kITTouchTranscoderInstanceTypeValueContinuousPath");
        qword_2A1460948 = *(v27[1] + 24);
        goto LABEL_11;
      }
    }

    _Block_object_dispose(&v28, 8);
    if (v11)
    {
      v14 = *v11;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2000000000;
      v15 = qword_2A1460958;
      v31 = qword_2A1460958;
      if (!qword_2A1460958)
      {
        *buf = MEMORY[0x29EDCA5F8];
        v24 = 0x40000000;
        v25 = sub_2992C21CC;
        v26 = &unk_29EF106A8;
        v27 = &v28;
        v16 = sub_2992C2030();
        v29[3] = dlsym(v16, "kITTouchTranscoderInstanceTypeKey");
        qword_2A1460958 = *(v27[1] + 24);
        v15 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (v15)
      {
        CFDictionaryAddValue(Mutable, *v15, v14);
        v28 = 0;
        v29 = &v28;
        v30 = 0x2000000000;
        v17 = off_2A1460960;
        v31 = off_2A1460960;
        if (!off_2A1460960)
        {
          *buf = MEMORY[0x29EDCA5F8];
          v24 = 0x40000000;
          v25 = sub_2992C221C;
          v26 = &unk_29EF106D0;
          v27 = &v28;
          v18 = sub_2992C2030();
          v29[3] = dlsym(v18, "ITTouchTranscoderCreateWithKeyboardLayout");
          off_2A1460960 = *(v27[1] + 24);
          v17 = v29[3];
        }

        _Block_object_dispose(&v28, 8);
        if (v17)
        {
          v7 = (v17)(Mutable, 0, 0, &cf);
          if (cf)
          {
            v19 = sub_2993652F8(3u);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_29918C000, v19, OS_LOG_TYPE_ERROR, "Failed to create touch transcoder", buf, 2u);
            }

            CFRelease(cf);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_25;
        }
      }
    }
  }

  v21 = dlerror();
  result = abort_report_np("%s", v21);
  __break(1u);
  return result;
}

void sub_2992C18A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  sub_299274AE8(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992C1988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992C19B4(va, 0);
  _Unwind_Resume(a1);
}

const void ***sub_2992C19B4(const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_299274C48(v2, 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t *sub_2992C1A18(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *result;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v5 = off_2A1461E70;
    v12 = off_2A1461E70;
    if (!off_2A1461E70)
    {
      v6 = sub_2992C2030();
      v10[3] = dlsym(v6, "ITTouchTranscoderUpdateKeyboardLayout");
      off_2A1461E70 = v10[3];
      v5 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v5)
    {
      v7 = dlerror();
      v8 = abort_report_np("%s", v7);
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    return v5(v4, v2, 0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 3));
  }

  return result;
}

uint64_t sub_2992C1B60(uint64_t *a1)
{
  v1 = *a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v2 = off_2A1461E78;
  v10 = off_2A1461E78;
  if (!off_2A1461E78)
  {
    v3 = sub_2992C2030();
    v8[3] = dlsym(v3, "ITTouchTranscoderCreateSession");
    off_2A1461E78 = v8[3];
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

  return v2(v1);
}

uint64_t sub_2992C1C74(uint64_t *a1)
{
  v1 = *a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v2 = off_2A1461E80;
  v10 = off_2A1461E80;
  if (!off_2A1461E80)
  {
    v3 = sub_2992C2030();
    v8[3] = dlsym(v3, "ITCandidateGetScore");
    off_2A1461E80 = v8[3];
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

  return v2(v1);
}

uint64_t sub_2992C1D88(uint64_t *a1)
{
  v1 = *a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v2 = off_2A1461E88;
  v10 = off_2A1461E88;
  if (!off_2A1461E88)
  {
    v3 = sub_2992C2030();
    v8[3] = dlsym(v3, "ITCandidateGetString");
    off_2A1461E88 = v8[3];
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

  return v2(v1);
}

uint64_t sub_2992C1E9C(uint64_t a1)
{
  if (!qword_2A1461E58)
  {
    qword_2A1461E58 = _sl_dlopen();
  }

  return qword_2A1461E58;
}

uint64_t sub_2992C1F6C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A1461E58 = result;
  return result;
}

void *sub_2992C1FE0(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderSessionAddEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2992C2030()
{
  v3 = 0;
  v0 = sub_2992C1E9C(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void *sub_2992C208C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderSessionEnumerateCandidates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C20DC(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "kITTouchTranscoderLocaleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460940 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C212C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "kITTouchTranscoderInstanceTypeValueContinuousPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460948 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C217C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "kITTouchTranscoderInstanceTypeValueTapTyping");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460950 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C21CC(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "kITTouchTranscoderInstanceTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460958 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C221C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderCreateWithKeyboardLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460960 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C226C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderUpdateKeyboardLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C22BC(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITTouchTranscoderCreateSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C230C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITCandidateGetScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992C235C(uint64_t a1)
{
  v2 = sub_2992C2030();
  result = dlsym(v2, "ITCandidateGetString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461E88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2992C23AC(uint64_t a1, __int128 *a2, const __CFString *a3, const __CFString *a4, int a5, char a6)
{
  *a1 = &unk_2A1F66DC0;
  v8 = sub_29927E580(a1, &off_2A1F6BE60, a2, a3, a4, a5, a6);
  *v8 = &unk_2A1F6BC08;
  v8[15] = &unk_2A1F6BE50;
  Length = CFStringGetLength(a3);
  *(a1 + 128) = &unk_2A1F73CB8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = Length;
  *(a1 + 168) = 0xFFFFFFFFLL;
  *(a1 + 160) = 64;
  return a1;
}

uint64_t sub_2992C24A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1 + 128;
  }
}

void sub_2992C262C(uint64_t *a1)
{
  sub_29927E8D8(a1, &off_2A1F6BE60);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992C2674(uint64_t a1)
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

uint64_t sub_2992C272C(uint64_t a1, uint64_t *a2, const __CFString *a3, const __CFString *a4, int a5)
{
  v13 = 0;
  v14 = a5;
  v15 = 0;
  v8 = (sub_29927E580(a1, a2 + 1, &v13, a3, a4, 0, 0) + 120);
  v9 = a2[7];
  *v8 = v9;
  *(v8 + *(v9 - 32)) = a2[8];
  v10 = *a2;
  *a1 = *a2;
  *(a1 + *(v10 - 32)) = a2[9];
  *(a1 + 120) = a2[10];
  if (a3)
  {
    Length = CFStringGetLength(a3);
  }

  else
  {
    Length = 0;
  }

  *(a1 + 128) = &unk_2A1F73CB8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = Length;
  *(a1 + 168) = 0xFFFFFFFFLL;
  *(a1 + 160) = 64;
  return a1;
}

uint64_t sub_2992C2934(uint64_t a1, const __CFString *a2, const __CFString *a3, int a4)
{
  *a1 = &unk_2A1F66DC0;
  v9 = 0;
  v10 = a4;
  v11 = 0;
  v6 = sub_29927E580(a1, &off_2A1F6C728, &v9, a2, a3, 0, 0);
  *v6 = &unk_2A1F6C4D0;
  v6[15] = &unk_2A1F6C718;
  if (a2)
  {
    Length = CFStringGetLength(a2);
  }

  else
  {
    Length = 0;
  }

  *(a1 + 128) = &unk_2A1F73CB8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = Length;
  *(a1 + 168) = 0xFFFFFFFFLL;
  *(a1 + 160) = 64;
  return a1;
}

uint64_t sub_2992C2A54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return a1 + 128;
  }
}

__CFString *sub_2992C2A64(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = (*(*a1 + 48))(a1);
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = 0;
    v6 = *MEMORY[0x29EDB8ED8];
    do
    {
      v7 = (*(*a1 + 128))(a1, v5);
      v8 = CFStringCreateWithFormat(v6, 0, @"%d", v7);
      CFStringAppend(Mutable, v8);
      CFRelease(v8);
      ++v5;
    }

    while (v4 != v5);
  }

  return Mutable;
}

void sub_2992C2C0C(void *a1, void *a2)
{
  v77 = *MEMORY[0x29EDCA608];
  v2 = a2[6];
  v3 = a2[7];
  if (v2 != v3)
  {
    v59 = 0;
    v4 = (v3 - v2) >> 3;
    v56 = v4;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v58 = v4;
    do
    {
      v5 = *(a2[6] + 8 * v59);
      v6 = (*(*v5 + 304))(v5);
      v7 = *(*v6 + 40 * (*(*v5 + 48))(v5) - 8);
      sub_299255778(0);
      v8 = sub_2992C39CC(&qword_2A1461DC0, v7);
      if (!v8)
      {
        v12 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v7 + 5]);
        v13 = v12[1];
        if (v13 >= 3)
        {
          v14 = 0;
          v15 = *v12;
          v16 = v15 + 2 * v13 - 6;
          while (word_29945D69A[v14] == *(v16 + v14 * 2))
          {
            if (++v14 == 3)
            {
              v17 = 0;
              while (word_29945D692[v17] == *(v15 + v17 * 2))
              {
                if (++v17 == 3)
                {
                  if (word_2A1461E0C <= v7 && word_2A1461E0E >= v7)
                  {
                    goto LABEL_6;
                  }

                  goto LABEL_76;
                }
              }

              goto LABEL_76;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_6:
      if ((v56 - ((a2[7] - a2[6]) >> 3) + *a1) < 1)
      {
        return;
      }

      if (v8)
      {
        v61 = qword_2A1460998;
        if ((atomic_load_explicit(&qword_2A1460988, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1460988))
        {
          goto LABEL_26;
        }

        v73 = 112;
        sub_299217DF0(v74, L"で");
        sub_299217DF0(v75, L"で");
        v76 = 272;
        sub_2992C3B5C(qword_2A1460998, __dst, 2uLL);
        for (i = 56; i != -56; i -= 56)
        {
          sub_299274118(&__dst[i]);
        }

        v10 = &qword_2A1460988;
        v11 = qword_2A1460998;
      }

      else
      {
        v61 = qword_2A14609B0;
        if ((atomic_load_explicit(&qword_2A1460990, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A1460990))
        {
LABEL_26:
          if ((*(*v5 + 408))(v5) != 1)
          {
            (*(*v5 + 544))(v5);
            if (v19)
            {
              (*(*v5 + 552))(v5);
              if (v20)
              {
                v67[0] = (*(*v5 + 544))(v5);
                v67[1] = v21;
                sub_29923A9CC(v67, v69);
                __src = (*(*v5 + 552))(v5);
                v65 = v22;
                sub_29923A9CC(&__src, v67);
                if (v61[1] != *v61)
                {
                  __src = 0;
                  v65 = 0;
                  v66 = 0;
                  v23 = (*(*v5 + 304))(v5);
                  sub_299256F7C(&__src, 0xCCCCCCCCCCCCCCCDLL * ((v23[1] - *v23) >> 3) + 1);
                  v24 = (*(*v5 + 304))(v5);
                  v25 = *v24;
                  v26 = v24[1];
                  if (*v24 != v26)
                  {
                    v27 = v65;
                    do
                    {
                      if (v27 >= v66)
                      {
                        v30 = __src;
                        v31 = v27 - __src;
                        v32 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - __src) >> 3);
                        v33 = v32 + 1;
                        if (v32 + 1 > 0x666666666666666)
                        {
                          sub_29921E9A8();
                        }

                        if (0x999999999999999ALL * ((v66 - __src) >> 3) > v33)
                        {
                          v33 = 0x999999999999999ALL * ((v66 - __src) >> 3);
                        }

                        if (0xCCCCCCCCCCCCCCCDLL * ((v66 - __src) >> 3) >= 0x333333333333333)
                        {
                          v34 = 0x666666666666666;
                        }

                        else
                        {
                          v34 = v33;
                        }

                        if (v34)
                        {
                          sub_29921E9C0(&__src, v34);
                        }

                        v35 = 40 * v32;
                        v36 = *v25;
                        v37 = v25[1];
                        *(v35 + 32) = *(v25 + 4);
                        *v35 = v36;
                        *(v35 + 16) = v37;
                        v27 = 40 * v32 + 40;
                        v38 = (v35 - v31);
                        memcpy((v35 - v31), v30, v31);
                        v39 = __src;
                        __src = v38;
                        v65 = v27;
                        v66 = 0;
                        if (v39)
                        {
                          operator delete(v39);
                        }
                      }

                      else
                      {
                        v28 = *v25;
                        v29 = v25[1];
                        *(v27 + 32) = *(v25 + 4);
                        *v27 = v28;
                        *(v27 + 16) = v29;
                        v27 += 40;
                      }

                      v65 = v27;
                      v25 = (v25 + 40);
                    }

                    while (v25 != v26);
                  }

                  v40 = *v61;
                  if (0x6DB6DB6DB6DB6DB7 * ((v61[1] - *v61) >> 3))
                  {
                    if ((atomic_load_explicit(&qword_2A1460970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460970))
                    {
                      sub_299255778(0);
                      qword_2A1460968 = &qword_2A1461DC0;
                      __cxa_guard_release(&qword_2A1460970);
                    }

                    v41 = v40;
                    v42 = *(v40 + 48);
                    if (v42 <= 0x24E)
                    {
                      v43 = word_29940982A[v42];
                    }

                    else
                    {
                      v43 = 0;
                    }

                    v44 = *(v40 + 23);
                    if (v44 < 0)
                    {
                      v44 = *(v40 + 8);
                    }

                    v45 = *(v40 + 47);
                    if (v45 < 0)
                    {
                      v45 = *(v40 + 32);
                    }

                    v46 = *(sub_2992FE060() + 4);
                    v47 = v65;
                    if (v65 >= v66)
                    {
                      v49 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - __src) >> 3);
                      v50 = v49 + 1;
                      if (v49 + 1 > 0x666666666666666)
                      {
                        sub_29921E9A8();
                      }

                      if (0x999999999999999ALL * ((v66 - __src) >> 3) > v50)
                      {
                        v50 = 0x999999999999999ALL * ((v66 - __src) >> 3);
                      }

                      if (0xCCCCCCCCCCCCCCCDLL * ((v66 - __src) >> 3) >= 0x333333333333333)
                      {
                        v51 = 0x666666666666666;
                      }

                      else
                      {
                        v51 = v50;
                      }

                      if (v51)
                      {
                        sub_29921E9C0(&__src, v51);
                      }

                      v52 = 8 * ((v65 - __src) >> 3);
                      *v52 = 0;
                      *(v52 + 8) = 0;
                      *(v52 + 16) = 0;
                      *(v52 + 24) = v44;
                      *(v52 + 26) = v46;
                      *(v52 + 28) = v45;
                      *(v52 + 30) = v43;
                      *(v52 + 32) = v43;
                      *(v52 + 34) = 0;
                      *(v52 + 36) = 0;
                      *(v52 + 37) = 513;
                      *(v52 + 39) = 0;
                      v48 = 40 * v49 + 40;
                      v53 = (40 * v49 - (v65 - __src));
                      memcpy(v53, __src, v65 - __src);
                      v54 = __src;
                      __src = v53;
                      v65 = v48;
                      v66 = 0;
                      if (v54)
                      {
                        operator delete(v54);
                      }
                    }

                    else
                    {
                      *v65 = 0;
                      *(v47 + 1) = 0;
                      *(v47 + 2) = 0;
                      *(v47 + 12) = v44;
                      *(v47 + 13) = v46;
                      *(v47 + 14) = v45;
                      *(v47 + 15) = v43;
                      *(v47 + 16) = v43;
                      *(v47 + 17) = 0;
                      v47[36] = 0;
                      *(v47 + 37) = 513;
                      v48 = (v47 + 40);
                      v47[39] = 0;
                    }

                    v65 = v48;
                    if ((atomic_load_explicit(&qword_2A1460980, memory_order_acquire) & 1) == 0)
                    {
                      if (__cxa_guard_acquire(&qword_2A1460980))
                      {
                        qword_2A1460978 = sub_299237120();
                        __cxa_guard_release(&qword_2A1460980);
                      }
                    }

                    sub_2992C3A78(v69, v41, &v63);
                    sub_2992C3A78(v67, v41 + 3, &__p);
                    (*(*v5 + 112))(v5);
                    (*(*v5 + 416))(v5);
                    operator new();
                  }

                  sub_2992C3B44();
                }

                if (v68 < 0)
                {
                  operator delete(v67[0]);
                }

                if (v70 < 0)
                {
                  operator delete(v69[0]);
                }
              }
            }
          }

          goto LABEL_76;
        }

        sub_299217DF0(__dst, "_0");
        sub_299217DF0(v72, "_0");
        v73 = 107;
        sub_299217DF0(v74, L"て");
        sub_299217DF0(v75, L"て");
        v76 = 270;
        sub_2992C3B5C(qword_2A14609B0, __dst, 2uLL);
        for (j = 56; j != -56; j -= 56)
        {
          sub_299274118(&__dst[j]);
        }

        v10 = &qword_2A1460990;
        v11 = qword_2A14609B0;
      }

      v61 = v11;
      __cxa_atexit(sub_2992C3CEC, v11, &dword_29918C000);
      __cxa_guard_release(v10);
      if (v5)
      {
        goto LABEL_26;
      }

LABEL_76:
      ++v59;
    }

    while (v59 != v58);
  }
}

void sub_2992C379C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  v50 = v48 - 152;
  v51 = -112;
  do
  {
    v50 = sub_299274118(v50) - 56;
    v51 += 56;
  }

  while (v51);
  __cxa_guard_abort(&qword_2A1460990);
  _Unwind_Resume(a1);
}

BOOL sub_2992C39CC(uint64_t a1, unsigned int a2)
{
  v2 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * a2 + 5]);
  v3 = v2[1];
  if (v3 >= 3)
  {
    v5 = 0;
    v6 = *v2;
    v7 = v6 + 2 * v3 - 6;
    while (word_29945D68A[v5] == *(v7 + v5 * 2))
    {
      if (++v5 == 3)
      {
        v8 = 0;
        while (word_29945D692[v8] == *(v6 + v8 * 2))
        {
          if (++v8 == 3)
          {
            if (*(a1 + 76) > a2)
            {
              return 0;
            }

            return *(a1 + 78) >= a2;
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

char *sub_2992C3A78@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_2992137FC(a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, 2 * v5);
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(&v8[2 * v5], v10, 2 * v6);
  }

  *&v8[2 * v5 + 2 * v6] = 0;
  return result;
}

uint64_t *sub_2992C3B5C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x492492492492493)
    {
      operator new();
    }

    sub_299212A8C();
  }

  return a1;
}

void **sub_2992C3CEC(void **a1)
{
  v3 = a1;
  sub_2992C3D24(&v3);
  return a1;
}

void sub_2992C3D24(void ***a1)
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
        v4 -= 56;
        sub_2992327A4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2992C3DA8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = objc_msgSend_path(a1, a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v8 = v4;
  v9 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v5, v6, v7);
  v13 = objc_msgSend_stringByStandardizingPath(v8, v10, v11, v12);

  return MEMORY[0x2A1C70FE8](v9, sel_removeItemAtPath_error_, v13, 0);
}

void sub_2992C3E18(uint64_t *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v297 = *MEMORY[0x29EDCA608];
  v6 = *(a4 + 8);
  v7 = sub_299237120();
  sub_299255778(0);
  if (v6 <= v7[205])
  {
    v247 = a1;
    v8 = a1[1];
    v9 = **(v8 + 80);
    v10 = *(v8 + 32);
    v11 = (*(v8 + 40) - v10) >> 1;
    if (v11 <= v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + 2 * v9;
    }

    if (v10)
    {
      v13 = v11 - v9;
    }

    else
    {
      v13 = 0;
    }

    v14 = v11 > v9;
    v15 = **(v8 + 104);
    v16 = *(v8 + 56);
    if (!v14)
    {
      v13 = 0;
    }

    v236 = v13;
    v17 = (*(v8 + 64) - v16) >> 1;
    v18 = v16 + 2 * v15;
    if (v17 <= v15)
    {
      v18 = 0;
    }

    v237 = v18;
    v238 = v12;
    v19 = v16 ? v17 - v15 : 0;
    v14 = v17 > v15;
    v22 = v8 + 8;
    v20 = *(v8 + 8);
    v21 = *(v22 + 8);
    v23 = v14 ? v19 : 0;
    v235 = v23;
    v24 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3);
    v25 = (v24 - v7[204]) & ~((v24 - v7[204]) >> 63);
    if (v25 <= v24)
    {
      v26 = 0;
      v27 = v247;
      v244 = a2;
      v234 = v7;
      v233 = v24;
      while (1)
      {
        v28 = v27[1];
        v29 = *(v28[13] + 8 * v25);
        v30 = v235 - v29;
        v31 = v237 + 2 * v29;
        v32 = *(v28[10] + 8 * v25);
        if (!v237)
        {
          v30 = 0;
        }

        v245 = v30;
        v243 = (v238 + 2 * v32);
        if (v238)
        {
          v33 = v236 - v32;
        }

        else
        {
          v33 = 0;
        }

        v242 = v33;
        v240 = v25;
        if (v25 == v24 || ((v34 = v28[1] + 40 * v25, v35 = *(v34 + 24), v36 = *(v34 + 28), v35) ? (v37 = v36 == 0) : (v37 = 1), v37))
        {
          LOWORD(v241) = 0;
          goto LABEL_33;
        }

        if (!v238)
        {
          v35 = 0;
        }

        *buf = v243;
        *&buf[8] = v35;
        if (!v237)
        {
          v36 = 0;
        }

        *&v295 = v31;
        *(&v295 + 1) = v36;
        memset(__s1, 0, sizeof(__s1));
        v261 = 0;
        v262 = 0;
        v263 = 0;
        (*(*v247[3] + 40))(v247[3], &v295, buf, v26, __s1, &v261);
        v232 = __s1[0];
        v241 = __s1[0] == __s1[1] ? 0 : *__s1[0];
        if (!v26 || (sub_299255970(&qword_2A1461DC0, v26, v241) & 1) != 0)
        {
          break;
        }

        if (v261)
        {
          v262 = v261;
          operator delete(v261);
          v232 = __s1[0];
        }

        if (v232)
        {
          __s1[1] = v232;
          operator delete(v232);
        }

LABEL_361:
        ++v25;
        v26 = v241;
        v27 = v247;
        if (v25 > v24)
        {
          return;
        }
      }

      if (v261)
      {
        v262 = v261;
        operator delete(v261);
        v232 = __s1[0];
      }

      if (v232)
      {
        __s1[1] = v232;
        operator delete(v232);
      }

LABEL_33:
      v261 = 0;
      v262 = &v261;
      v263 = 0x4002000000;
      v264 = sub_2992C591C;
      v265 = sub_2992C5940;
      memset(v266, 0, sizeof(v266));
      v38 = *v247;
      v40 = *a3;
      v39 = a3[1];
      v41 = *v247[2];
      if (*sub_299237120())
      {
        v42 = 0;
      }

      else
      {
        v42 = (v41 >> 4) & 1;
      }

      if ((v41 & 0x20) != 0)
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }

      v44 = *v247[2];
      v260[0] = MEMORY[0x29EDCA5F8];
      v260[1] = 0x40000000;
      v260[2] = sub_2992C596C;
      v260[3] = &unk_29EF10798;
      v260[4] = &v261;
      v260[5] = v234;
      (*(*v38 + 184))(v38, v40, 2 * v39, (v41 >> 5) & 1, v43, v31, 2 * v245, v44, v260);
      v46 = v262[5];
      v45 = v262[6];
      if (v234[184] >= (-29127 * ((v45 - v46) >> 3)))
      {
        v47 = (-29127 * ((v45 - v46) >> 3));
      }

      else
      {
        v47 = v234[184];
      }

      if (!v47)
      {
        goto LABEL_360;
      }

      if (v47 != 1)
      {
        v48 = ~((v47 - 2) >> 1);
        v49 = (v46 + 72 * ((v47 - 2) >> 1));
        do
        {
          sub_2992C5DC8(v46, v47, v49);
          v49 -= 9;
          v79 = __CFADD__(v48++, 1);
        }

        while (!v79);
      }

      v50 = (v46 + 72 * v47);
      v246 = v47;
      if (v50 != v45)
      {
        v51 = v46 + 72 * v47;
        do
        {
          v52 = *(v51 + 48);
          v53 = *(v51 + 63);
          if (v53 >= 0)
          {
            v52 = *(v51 + 63);
          }

          v54 = *(v46 + 63);
          if ((v54 & 0x80u) != 0)
          {
            v54 = *(v46 + 48);
          }

          if (v52 < v54)
          {
            __s1[0] = *v51;
            LOWORD(__s1[1]) = *(v51 + 8);
            v55 = *(v51 + 16);
            *buf = *(v51 + 24);
            *&buf[7] = *(v51 + 31);
            v56 = *(v51 + 39);
            *(v51 + 24) = 0;
            *(v51 + 32) = 0;
            *(v51 + 16) = 0;
            v57 = (v51 + 40);
            v47 = *(v51 + 40);
            v58 = *(v51 + 48);
            *(&v295 + 7) = *(v51 + 55);
            *&v295 = v58;
            *(v51 + 48) = 0;
            *(v51 + 56) = 0;
            *(v51 + 40) = 0;
            v59 = *(v51 + 64);
            v60 = *v46;
            *(v51 + 8) = *(v46 + 8);
            *v51 = v60;
            v61 = *(v46 + 16);
            *(v51 + 32) = *(v46 + 32);
            *(v51 + 16) = v61;
            *(v46 + 39) = 0;
            *(v46 + 16) = 0;
            if (*(v51 + 63) < 0)
            {
              operator delete(*v57);
            }

            v62 = *(v46 + 40);
            *(v51 + 56) = *(v46 + 56);
            *v57 = v62;
            *(v46 + 63) = 0;
            *(v46 + 40) = 0;
            *(v51 + 64) = *(v46 + 64);
            *v46 = __s1[0];
            *(v46 + 8) = __s1[1];
            if (*(v46 + 39) < 0)
            {
              operator delete(*(v46 + 16));
            }

            v63 = *buf;
            *(v46 + 16) = v55;
            *(v46 + 24) = v63;
            *(v46 + 31) = *&buf[7];
            *(v46 + 39) = v56;
            if (*(v46 + 63) < 0)
            {
              operator delete(*(v46 + 40));
            }

            v64 = v295;
            *(v46 + 40) = v47;
            *(v46 + 48) = v64;
            *(v46 + 55) = *(&v295 + 7);
            *(v46 + 63) = v53;
            *(v46 + 64) = v59;
            LODWORD(v47) = v246;
            sub_2992C5DC8(v46, v246, v46);
          }

          v51 += 72;
        }

        while (v51 != v45);
      }

      if (v47 != 1)
      {
        v65 = v246;
        do
        {
          v66 = 0;
          v67 = v50;
          *buf = *v46;
          *&buf[8] = *(v46 + 8);
          v68 = *(v46 + 16);
          *&v293 = *(v46 + 24);
          *(&v293 + 7) = *(v46 + 31);
          v69 = *(v46 + 39);
          *(v46 + 16) = 0;
          *(v46 + 24) = 0;
          v71 = *(v46 + 40);
          v70 = *(v46 + 48);
          *(v288 + 7) = *(v46 + 55);
          v288[0] = v70;
          v257 = *(v46 + 63);
          *(v46 + 32) = 0;
          *(v46 + 40) = 0;
          *(v46 + 48) = 0;
          *(v46 + 56) = 0;
          v72 = v46;
          v73 = *(v46 + 64);
          do
          {
            v74 = v72 + 72 * v66 + 72;
            v75 = 2 * v66;
            v66 = (2 * v66) | 1;
            v76 = v75 + 2;
            if (v75 + 2 < v65)
            {
              v77 = *(v74 + 63);
              if ((v77 & 0x80u) != 0)
              {
                v77 = *(v74 + 48);
              }

              v78 = *(v74 + 135);
              if ((v78 & 0x80u) != 0)
              {
                v78 = *(v74 + 120);
              }

              v79 = v77 >= v78;
              if (v77 >= v78)
              {
                v80 = 0;
              }

              else
              {
                v80 = 72;
              }

              v74 += v80;
              if (!v79)
              {
                v66 = v76;
              }
            }

            v81 = *v74;
            *(v72 + 8) = *(v74 + 8);
            *v72 = v81;
            if (*(v72 + 39) < 0)
            {
              operator delete(*(v72 + 16));
            }

            v82 = *(v74 + 16);
            *(v72 + 32) = *(v74 + 32);
            *(v72 + 16) = v82;
            *(v74 + 39) = 0;
            *(v74 + 16) = 0;
            if (*(v72 + 63) < 0)
            {
              operator delete(*(v72 + 40));
            }

            v83 = *(v74 + 40);
            *(v72 + 56) = *(v74 + 56);
            *(v72 + 40) = v83;
            *(v74 + 63) = 0;
            *(v74 + 40) = 0;
            *(v72 + 64) = *(v74 + 64);
            v72 = v74;
          }

          while (v66 <= ((v65 - 2) >> 1));
          v50 -= 9;
          if (v74 == v67 - 9)
          {
            v103 = *buf;
            *(v74 + 8) = *&buf[8];
            *v74 = v103;
            if (*(v74 + 39) < 0)
            {
              operator delete(*(v74 + 16));
            }

            v104 = v293;
            *(v74 + 16) = v68;
            *(v74 + 24) = v104;
            *(v74 + 31) = *(&v293 + 7);
            *(v74 + 39) = v69;
            a2 = v244;
            if (*(v74 + 63) < 0)
            {
              operator delete(*(v74 + 40));
            }

            v105 = v288[0];
            *(v74 + 40) = v71;
            *(v74 + 48) = v105;
            *(v74 + 55) = *(v288 + 7);
            *(v74 + 63) = v257;
            *(v74 + 64) = v73;
          }

          else
          {
            v84 = *v50;
            *(v74 + 8) = *(v67 - 32);
            *v74 = v84;
            if (*(v74 + 39) < 0)
            {
              operator delete(*(v74 + 16));
            }

            v85 = *(v67 - 7);
            *(v74 + 32) = *(v67 - 5);
            *(v74 + 16) = v85;
            *(v67 - 33) = 0;
            *(v67 - 56) = 0;
            a2 = v244;
            if (*(v74 + 63) < 0)
            {
              operator delete(*(v74 + 40));
            }

            v86 = *(v67 - 2);
            *(v74 + 56) = *(v67 - 2);
            *(v74 + 40) = v86;
            *(v67 - 9) = 0;
            *(v67 - 32) = 0;
            *(v74 + 64) = *(v67 - 2);
            *v50 = *buf;
            *(v67 - 32) = *&buf[8];
            if (*(v67 - 33) < 0)
            {
              operator delete(*(v67 - 7));
            }

            *(v67 - 7) = v68;
            *(v67 - 6) = v293;
            *(v67 - 41) = *(&v293 + 7);
            *(v67 - 33) = v69;
            if (*(v67 - 9) < 0)
            {
              operator delete(*(v67 - 4));
            }

            *(v67 - 4) = v71;
            *(v67 - 3) = v288[0];
            *(v67 - 17) = *(v288 + 7);
            *(v67 - 9) = v257;
            *(v67 - 2) = v73;
            v87 = v74 + 72 - v46;
            if (v87 >= 73)
            {
              v88 = (-2 - 0x71C71C71C71C71C7 * (v87 >> 3)) >> 1;
              v89 = v46 + 72 * v88;
              v90 = *(v89 + 63);
              if ((v90 & 0x80u) != 0)
              {
                v90 = *(v89 + 48);
              }

              v91 = *(v74 + 63);
              v92 = *(v74 + 48);
              if (v91 >= 0)
              {
                v93 = *(v74 + 63);
              }

              else
              {
                v93 = *(v74 + 48);
              }

              if (v90 < v93)
              {
                v94 = *v74;
                LOWORD(__s1[1]) = *(v74 + 8);
                __s1[0] = v94;
                v255 = *(v74 + 16);
                *&v295 = *(v74 + 24);
                *(&v295 + 7) = *(v74 + 31);
                v95 = *(v74 + 39);
                *(v74 + 16) = 0;
                *(v74 + 24) = 0;
                v258 = *(v74 + 40);
                LODWORD(v94) = *(v74 + 41);
                *(&v279 + 3) = *(v74 + 44);
                LODWORD(v279) = v94;
                LODWORD(v94) = *(v74 + 56);
                *(&__p + 3) = *(v74 + 59);
                LODWORD(__p) = v94;
                *(v74 + 32) = 0;
                *(v74 + 40) = 0;
                *(v74 + 48) = 0;
                *(v74 + 56) = 0;
                v96 = *(v74 + 64);
                do
                {
                  v97 = v89;
                  v98 = *v89;
                  *(v74 + 8) = *(v97 + 8);
                  *v74 = v98;
                  if (*(v74 + 39) < 0)
                  {
                    operator delete(*(v74 + 16));
                  }

                  v99 = *(v97 + 16);
                  *(v74 + 32) = *(v97 + 32);
                  *(v74 + 16) = v99;
                  *(v97 + 39) = 0;
                  *(v97 + 16) = 0;
                  if (*(v74 + 63) < 0)
                  {
                    operator delete(*(v74 + 40));
                  }

                  v100 = *(v97 + 40);
                  *(v74 + 56) = *(v97 + 56);
                  *(v74 + 40) = v100;
                  *(v97 + 63) = 0;
                  *(v97 + 40) = 0;
                  *(v74 + 64) = *(v97 + 64);
                  if (!v88)
                  {
                    break;
                  }

                  v88 = (v88 - 1) >> 1;
                  v89 = v46 + 72 * v88;
                  v101 = *(v89 + 63);
                  if ((v101 & 0x80u) != 0)
                  {
                    v101 = *(v89 + 48);
                  }

                  v74 = v97;
                }

                while (v101 < v93);
                *v97 = __s1[0];
                *(v97 + 8) = __s1[1];
                if (*(v97 + 39) < 0)
                {
                  operator delete(*(v97 + 16));
                }

                v102 = v295;
                *(v97 + 16) = v255;
                *(v97 + 24) = v102;
                *(v97 + 31) = *(&v295 + 7);
                *(v97 + 39) = v95;
                if (*(v97 + 63) < 0)
                {
                  operator delete(*(v97 + 40));
                }

                *(v97 + 40) = v258;
                *(v97 + 41) = v279;
                *(v97 + 44) = *(&v279 + 3);
                *(v97 + 48) = v92;
                *(v97 + 56) = __p;
                *(v97 + 59) = *(&__p + 3);
                *(v97 + 63) = v91;
                *(v97 + 64) = v96;
                a2 = v244;
              }
            }
          }

          v14 = v65-- <= 2;
        }

        while (!v14);
      }

      v106 = 0;
      v107 = v246;
LABEL_118:
      v108 = v262[5] + 72 * v106;
      v271 = 0;
      v272 = 0;
      v273 = 0;
      v109 = *(v108 + 63);
      v110 = v109;
      if ((v109 & 0x80u) != 0)
      {
        v109 = *(v108 + 48);
      }

      if (v109 >= 2)
      {
        v111 = v109 >> 1;
        if (v110 >= 0)
        {
          v112 = (v108 + 40);
        }

        else
        {
          v112 = *(v108 + 40);
        }

        do
        {
          LOWORD(__s1[0]) = *v112;
          if (LOWORD(__s1[0]) != 124)
          {
            sub_29922E664(&v271, __s1);
          }

          ++v112;
          --v111;
        }

        while (v111);
      }

      v268 = 0;
      v269 = 0;
      v270 = 0;
      v113 = *(v108 + 39);
      v114 = v113;
      if ((v113 & 0x80u) != 0)
      {
        v113 = *(v108 + 24);
      }

      if (v113 >= 2)
      {
        v115 = v113 >> 1;
        if (v114 >= 0)
        {
          v116 = (v108 + 16);
        }

        else
        {
          v116 = *(v108 + 16);
        }

        do
        {
          LOWORD(__s1[0]) = *v116;
          if (LOWORD(__s1[0]) != 124)
          {
            sub_29922E664(&v268, __s1);
          }

          ++v116;
          --v115;
        }

        while (v115);
      }

      v252 = sub_299237120();
      v295 = 0uLL;
      v296 = 0;
      v117 = *(v108 + 63);
      if (v117 >= 0)
      {
        v118 = (v108 + 40);
      }

      else
      {
        v118 = *(v108 + 40);
      }

      if (v117 >= 0)
      {
        v119 = *(v108 + 63);
      }

      else
      {
        v119 = *(v108 + 48);
      }

      __s1[0] = v118;
      if (v119 <= 1)
      {
        *buf = 0;
        goto LABEL_157;
      }

      v120 = v108;
      v121 = 0;
      v122 = 0;
      v123 = v119 >> 1;
      v124 = v118;
      while (1)
      {
        v79 = v121-- != 0;
        if (!v79 || *v124 != 124)
        {
          goto LABEL_153;
        }

        if (v123 != 1)
        {
          break;
        }

LABEL_154:
        if (!--v123)
        {
          v125 = (v124 - v118) >> 1;
          *buf = v125;
          v108 = v120;
          if (v122 < v296)
          {
            sub_2992129A0(v122, v118, v125);
            v126 = v122 + 3;
            goto LABEL_158;
          }

LABEL_157:
          v126 = sub_2992C60DC(&v295, __s1, buf);
LABEL_158:
          *(&v295 + 1) = v126;
          v293 = 0uLL;
          v294 = 0;
          v127 = *(v108 + 39);
          if (v127 >= 0)
          {
            v128 = (v108 + 16);
          }

          else
          {
            v128 = *(v108 + 16);
          }

          if (v127 >= 0)
          {
            v129 = *(v108 + 39);
          }

          else
          {
            v129 = *(v108 + 24);
          }

          __s1[0] = v128;
          if (v129 <= 1)
          {
            *buf = 0;
LABEL_179:
            v136 = sub_2992C60DC(&v293, __s1, buf);
            goto LABEL_180;
          }

          v130 = v108;
          v131 = 0;
          v132 = 0;
          v133 = v129 >> 1;
          v134 = v128;
          while (2)
          {
            v79 = v131-- != 0;
            if (v79 && *v134 == 124)
            {
              if (v133 != 1)
              {
                *buf = (v134 - v128) >> 1;
                if (v132 >= v294)
                {
                  v132 = sub_2992C60DC(&v293, __s1, buf);
                }

                else
                {
                  sub_2992129A0(v132, v128, (v134 - v128) >> 1);
                  v132 += 3;
                }

                *(&v293 + 1) = v132;
                v128 = v134 + 2;
                __s1[0] = v134 + 2;
                goto LABEL_175;
              }
            }

            else
            {
LABEL_175:
              v134 += 2;
            }

            if (--v133)
            {
              continue;
            }

            break;
          }

          v135 = (v134 - v128) >> 1;
          *buf = v135;
          v108 = v130;
          if (v132 >= v294)
          {
            goto LABEL_179;
          }

          sub_2992129A0(v132, v128, v135);
          v136 = v132 + 3;
LABEL_180:
          *(&v293 + 1) = v136;
          v137 = v293;
          if ((*(&v295 + 1) - v295) != (v136 - v293))
          {
            v149 = 0;
            goto LABEL_332;
          }

          v248 = v106;
          if (*(&v295 + 1) == v295)
          {
            v139 = 0;
            v143 = v245;
            goto LABEL_207;
          }

          v250 = v108;
          v138 = 0;
          if (0xAAAAAAAAAAAAAAABLL * ((*(&v295 + 1) - v295) >> 3) <= 1)
          {
            v139 = 1;
          }

          else
          {
            v139 = 0xAAAAAAAAAAAAAAABLL * ((*(&v295 + 1) - v295) >> 3);
          }

          v140 = (v295 + 23);
          v141 = v242;
          v142 = v243;
          v143 = v245;
          do
          {
            if (!v143)
            {
              v108 = v250;
              goto LABEL_210;
            }

            v144 = *v140;
            if ((v144 & 0x8000000000000000) != 0)
            {
              v144 = *(v140 - 15);
            }

            if (v143 < v144)
            {
              goto LABEL_208;
            }

            v145 = *(v137 + 23);
            if ((v145 & 0x8000000000000000) != 0)
            {
              v146 = *v137;
              v145 = v137[1];
            }

            else
            {
              v146 = v137;
            }

            v147 = v146 ? v145 : 0;
            v148 = v141 - v147;
            if (v141 < v147 || !v142 && v147)
            {
              goto LABEL_208;
            }

            if (memcmp(v142, v146, 2 * v147))
            {
              goto LABEL_208;
            }

            v143 -= v144;
            v37 = v142 == 0;
            v142 += 2 * v147;
            if (v37)
            {
              v141 = 0;
            }

            else
            {
              v141 = v148;
            }

            ++v138;
            v137 += 3;
            v140 += 24;
          }

          while (v139 != v138);
          v108 = v250;
LABEL_207:
          v138 = v139;
          if (v143)
          {
LABEL_208:
            v149 = 0;
            v107 = v246;
            v106 = v248;
            goto LABEL_332;
          }

LABEL_210:
          *buf = 0u;
          v291 = 0u;
          v292 = 1065353216;
          v282 = 0;
          sub_299216DAC(a3, &v282, buf, (*v247[2] >> 30) & 1, v288);
          if (v289 < 0)
          {
            operator delete(v288[0]);
          }

          if ((*v247[2] & 0x20) == 0 || (*v252 & 1) != 0 || (*__s1 = *a4, v150 = v295, 0xAAAAAAAAAAAAAAABLL * ((*(&v295 + 1) - v295) >> 3) <= v138))
          {
            v162 = 0;
            goto LABEL_238;
          }

          v151 = v108;
          v152 = __s1[1];
          v153 = 24 * v138;
          v154 = v138;
          while (2)
          {
            v155 = v150 + v153;
            if (*(v150 + v153 + 23) >= 0)
            {
              v156 = (v150 + v153);
            }

            else
            {
              v156 = *v155;
            }

            v279 = v156;
            v157 = *(v155 + 23);
            if ((v157 & 0x80u) != 0)
            {
              v157 = *(v155 + 8);
            }

            v280 = v157;
            if (v152 >= v157)
            {
              v158 = v157 && __s1[0] == 0;
              if (!v158 && !memcmp(__s1[0], v156, 2 * v157))
              {
LABEL_229:
                v159 = *(v155 + 23);
                if ((v159 & 0x8000000000000000) != 0)
                {
                  v159 = *(v155 + 8);
                }

                if (v152 <= v159 || ((v160 = &v152[-v159], v161 = __s1[0] + 2 * v159, __s1[0]) ? (v152 = v160) : (v152 = 0), __s1[0] = v161, __s1[1] = v152, ++v154, v150 = v295, v153 += 24, v154 >= 0xAAAAAAAAAAAAAAABLL * ((*(&v295 + 1) - v295) >> 3)))
                {
                  v162 = 0;
                  goto LABEL_356;
                }

                continue;
              }
            }

            break;
          }

          if (sub_299217C94(__s1, &v279))
          {
            v152 = __s1[1];
            goto LABEL_229;
          }

          v162 = 1;
LABEL_356:
          v108 = v151;
LABEL_238:
          v163 = *(a4 + 8);
          v164 = v282;
          if ((atomic_load_explicit(&qword_2A14609D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14609D0))
          {
            qword_2A14609C8 = sub_299237120();
            __cxa_guard_release(&qword_2A14609D0);
            a2 = v244;
          }

          v165 = 0;
          if (v138)
          {
            v166 = (v295 + 23);
            v167 = v138;
            do
            {
              v168 = *v166;
              if (v168 < 0)
              {
                v168 = *(v166 - 15);
              }

              v165 += v168;
              v166 += 24;
              --v167;
            }

            while (v167);
          }

          v169 = 0xAAAAAAAAAAAAAAABLL * ((*(&v295 + 1) - v295) >> 3);
          v170 = 0;
          v171 = v169 - v138;
          if (v169 > v138)
          {
            v172 = (v295 + 24 * v138 + 23);
            do
            {
              v173 = *v172;
              if (v173 < 0)
              {
                v173 = *(v172 - 15);
              }

              v170 += v173;
              v172 += 24;
              --v171;
            }

            while (v171);
          }

          v174 = v163 - v164;
          if ((v162 & 1) != 0 && v174 < (*(qword_2A14609C8 + 400) * v170) || v174 + v245 < (*(qword_2A14609C8 + 392) * (v170 + v165)))
          {
            v149 = 0;
            v107 = v246;
            v106 = v248;
          }

          else
          {
            v239 = v162;
            __s1[0] = v247[4];
            HIWORD(v175) = 0;
            *&__s1[1] = 0u;
            v284 = 0u;
            v285 = 0u;
            v286 = 0u;
            v287 = 0u;
            v176 = v169 - v138;
            if (v169 <= v138)
            {
              v203 = 0;
              v202 = 0;
              v179 = 0;
              v177 = 0;
              v107 = v246;
              v106 = v248;
            }

            else
            {
              v251 = v108;
              v177 = 0;
              v178 = 0;
              LOWORD(v179) = 0;
              v256 = v169 - 1 - v138;
              v259 = 0;
              v180 = 24 * v138;
              do
              {
                v253 = v179;
                v181 = v295;
                v182 = v295 + v180;
                v183 = v293;
                v184 = v259;
                if (v177 > *(a4 + 8))
                {
                  v184 = v259 + 1;
                }

                v259 = v184;
                if (v178 >= a3[1])
                {
                  v187 = 0;
                }

                else
                {
                  v185 = *(v182 + 23);
                  if (v185 < 0)
                  {
                    v185 = *(v295 + v180 + 8);
                  }

                  v279 = (v185 + v177);
                  v186 = sub_299230B70(buf, &v279);
                  if (v186)
                  {
                    v187 = v186[3] - v178;
                  }

                  else
                  {
                    v188 = *(v182 + 23);
                    if (v188 < 0)
                    {
                      v188 = *(v181 + v180 + 8);
                    }

                    if (a3[1] - v178 >= 2 * v188)
                    {
                      v187 = 2 * v188;
                    }

                    else
                    {
                      v187 = a3[1] - v178;
                    }
                  }
                }

                v189 = (v183 + v180);
                v279 = 0;
                v280 = 0;
                v281 = 0;
                __p = 0;
                v277 = 0;
                v278 = 0;
                v79 = v256-- != 0;
                if (v79 || (v179 = *(v251 + 4), !*(v251 + 4)))
                {
                  v190 = (v181 + v180);
                  v191 = *(v181 + v180 + 23);
                  if (v191 < 0)
                  {
                    v192 = *v190;
                    v191 = v190[1];
                  }

                  else
                  {
                    v192 = v181 + v180;
                  }

                  v193 = v247[3];
                  if (!v192)
                  {
                    v191 = 0;
                  }

                  v275[0] = v192;
                  v275[1] = v191;
                  v194 = (v183 + v180);
                  v195 = *(v183 + v180 + 23);
                  if (v195 < 0)
                  {
                    v196 = *v194;
                    v195 = v194[1];
                  }

                  else
                  {
                    v196 = v183 + v180;
                  }

                  if (!v196)
                  {
                    v195 = 0;
                  }

                  v274[0] = v196;
                  v274[1] = v195;
                  (*(*v193 + 40))(v193, v275, v274, v253, &v279, &__p);
                  if (v279 == v280)
                  {
                    v179 = 0;
                  }

                  else
                  {
                    v179 = *v279;
                  }
                }

                v197 = v183 + v180;
                v198 = *(v183 + v180 + 23);
                if (v198 < 0)
                {
                  v189 = *v197;
                  v198 = *(v197 + 8);
                }

                v199 = (v181 + v180);
                v200 = *(v181 + v180 + 23);
                if (v200 < 0)
                {
                  v182 = *v199;
                  v200 = v199[1];
                }

                sub_2992738F8(__s1, v189, v198, v187, v182, v200, v179, v179);
                v201 = *(v199 + 23);
                if (v201 < 0)
                {
                  v201 = *(v181 + v180 + 8);
                }

                if (__p)
                {
                  v277 = __p;
                  operator delete(__p);
                }

                if (v279)
                {
                  v280 = v279;
                  operator delete(v279);
                }

                v177 += v201;
                v178 += v187;
                v180 += 24;
                --v176;
              }

              while (v176);
              v202 = v253;
              a2 = v244;
              v107 = v246;
              v106 = v248;
              v108 = v251;
              v203 = v259;
            }

            if (a3[1])
            {
              sub_299255778(0);
              if (v203 == 2)
              {
                v207 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v202 + 4]);
                if (v207[1] == 4)
                {
                  v208 = 0;
                  v209 = *v207;
                  while (asc_29945AFC4[v208] == *(v209 + v208 * 2))
                  {
                    if (++v208 == 4)
                    {
                      if (WORD4(xmmword_2A1461E10) <= v179 && WORD5(xmmword_2A1461E10) >= v179)
                      {
LABEL_357:
                        v149 = 0;
                        goto LABEL_323;
                      }

                      v211 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v179]);
                      if (v211[1] == 3)
                      {
                        v212 = 0;
                        v213 = *v211;
                        while (asc_29945B990[v212] == *(v213 + v212 * 2))
                        {
                          v149 = 0;
                          if (++v212 == 3)
                          {
                            goto LABEL_323;
                          }
                        }
                      }

                      break;
                    }
                  }
                }
              }

              else if (v203 == 1)
              {
                v204 = (&off_29EF0DFF0 + 2 * word_299403FCA[7 * v179 + 4]);
                if (v204[1] == 4)
                {
                  v205 = 0;
                  v206 = *v204;
                  while (asc_29945AFC4[v205] == *(v206 + v205 * 2))
                  {
                    if (++v205 == 4)
                    {
                      goto LABEL_357;
                    }
                  }
                }
              }
            }

            v214 = *(a4 + 8);
            v215 = 464;
            if ((*v247[2] & 0x6000002) == 0x4000002)
            {
              v215 = 466;
            }

            v216 = v108;
            v217 = *(v252 + v215);
            v218 = -*(v252 + 236);
            LOWORD(v175) = *v216;
            v219 = (log2f(v175 / 100.0) * v218);
            v220 = *(v252 + 237) + *(v252 + 237) * (v177 - v214);
            if (v177 - v214 <= 0)
            {
              v220 = 0;
            }

            v221 = -(*(v216 + 64) * *(v252 + 222));
            v222 = sub_299273A90(__s1, a3, (v220 + v217 + v221 + v219), (v220 + (v221 * v252[112])), 0, 80, 2 * (v177 != v214));
            v149 = v222;
            if (v222)
            {
              (*(*v222 + 512))(v222, v239);
            }

LABEL_323:
            if (*(&v287 + 1))
            {
              CFRelease(*(&v287 + 1));
            }

            *(&v287 + 1) = 0;
            if (v286)
            {
              *(&v286 + 1) = v286;
              operator delete(v286);
            }

            if (*(&v284 + 1))
            {
              *&v285 = *(&v284 + 1);
              operator delete(*(&v284 + 1));
            }

            if (__s1[1])
            {
              __s1[2] = __s1[1];
              operator delete(__s1[1]);
            }
          }

          sub_29921ED28(buf);
LABEL_332:
          __s1[0] = &v293;
          sub_299212B90(__s1);
          __s1[0] = &v295;
          sub_299212B90(__s1);
          v267 = v149;
          if (v149)
          {
            (*(*v149 + 528))(v149, 10, "Adding a phrase candidate", 1);
            LOBYTE(v295) = 0;
            __s1[0] = v149;
            v223 = sub_29927363C(a2 + 1, __s1);
            if (v223)
            {
              v224 = v223[3];
              if (v224 != -1)
              {
                v225 = *(a2[6] + 8 * v224);
                if (!(*(*v225 + 408))(v225) && ((*(*v225 + 200))(v225) & 1) == 0)
                {
                  v231 = sub_2993652F8(0xAu);
                  if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
                  {
                    LOWORD(__s1[0]) = 0;
                    _os_log_debug_impl(&dword_29918C000, v231, OS_LOG_TYPE_DEBUG, " ∟ Rejected", __s1, 2u);
                  }

                  v267 = 0;
                  goto LABEL_343;
                }
              }
            }

            __s1[0] = &unk_2A1F65308;
            *&v284 = __s1;
            v226 = sub_2992AB710(a2, &v267, 0, &v295, __s1);
            sub_29921F128(__s1);
            if ((v226 & 1) == 0)
            {
              if (v295 == 1)
              {
                v227 = sub_2993652F8(0xAu);
                if (os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  v228 = v227;
                  v229 = " ∟ Replaced";
                  goto LABEL_354;
                }
              }

              else
              {
                v230 = sub_2993652F8(0xAu);
                if (os_log_type_enabled(v230, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  v228 = v230;
                  v229 = " ∟ Rejected";
LABEL_354:
                  _os_log_debug_impl(&dword_29918C000, v228, OS_LOG_TYPE_DEBUG, v229, buf, 2u);
                }
              }
            }

            v149 = v267;
            v267 = 0;
            if (v149)
            {
LABEL_343:
              (*(*v149 + 16))(v149);
            }
          }

          if (v268)
          {
            v269 = v268;
            operator delete(v268);
          }

          if (v271)
          {
            v272 = v271;
            operator delete(v271);
          }

          if (++v106 == v107)
          {
LABEL_360:
            _Block_object_dispose(&v261, 8);
            __s1[0] = v266;
            sub_2992C5C9C(__s1);
            v24 = v233;
            v25 = v240;
            goto LABEL_361;
          }

          goto LABEL_118;
        }
      }

      *buf = (v124 - v118) >> 1;
      if (v122 >= v296)
      {
        v122 = sub_2992C60DC(&v295, __s1, buf);
      }

      else
      {
        sub_2992129A0(v122, v118, (v124 - v118) >> 1);
        v122 += 3;
      }

      *(&v295 + 1) = v122;
      v118 = v124 + 2;
      __s1[0] = v124 + 2;
LABEL_153:
      v124 += 2;
      goto LABEL_154;
    }
  }
}

void sub_2992C5744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  __cxa_guard_abort(&qword_2A14609D0);
  v58 = sub_29921ED28(v56 - 224);
  *(v56 - 224) = v56 - 184;
  sub_299212B90(v58);
  *(v56 - 224) = v56 - 160;
  sub_299212B90((v56 - 224));
  if (__p)
  {
    a53 = __p;
    operator delete(__p);
  }

  if (a55)
  {
    a56 = a55;
    operator delete(a55);
  }

  _Block_object_dispose(&a43, 8);
  *(v56 - 224) = a20;
  sub_2992C5C9C((v56 - 224));
  _Unwind_Resume(a1);
}

__n128 sub_2992C591C(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *sub_2992C596C(void *result, uint64_t *a2, _BYTE *a3)
{
  v5 = result;
  v6 = *(result[4] + 8);
  v8 = v6[6];
  v7 = v6[7];
  if (v8 >= v7)
  {
    v11 = v6[5];
    v12 = 0x8E38E38E38E38E39 * ((v8 - v11) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_299212A8C();
    }

    v14 = 0x8E38E38E38E38E39 * ((v7 - v11) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v13;
    }

    v33 = v6 + 5;
    if (v15)
    {
      if (v15 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_29919600C();
    }

    v18 = 72 * v12;
    v29 = 0;
    v30 = v18;
    v31 = v18;
    v32 = 0;
    *v18 = *a2;
    *(v18 + 8) = *(a2 + 4);
    if (*(a2 + 39) < 0)
    {
      sub_2991A110C((v18 + 16), a2[2], a2[3]);
    }

    else
    {
      *(v18 + 16) = *(a2 + 1);
      *(v18 + 32) = a2[4];
    }

    if (*(a2 + 63) < 0)
    {
      sub_2991A110C((v18 + 40), a2[5], a2[6]);
    }

    else
    {
      *(v18 + 40) = *(a2 + 5);
      *(v18 + 56) = a2[7];
    }

    *(v18 + 64) = *(a2 + 16);
    v19 = v31;
    v20 = v6[5];
    v21 = v6[6];
    v22 = v30 + v20 - v21;
    if (v20 != v21)
    {
      v23 = v6[5];
      v24 = v30 + v20 - v21;
      do
      {
        v25 = *v23;
        *(v24 + 8) = *(v23 + 4);
        *v24 = v25;
        v26 = *(v23 + 1);
        *(v24 + 32) = v23[4];
        *(v24 + 16) = v26;
        v23[3] = 0;
        v23[4] = 0;
        v23[2] = 0;
        v27 = *(v23 + 5);
        *(v24 + 56) = v23[7];
        *(v24 + 40) = v27;
        v23[6] = 0;
        v23[7] = 0;
        v23[5] = 0;
        *(v24 + 64) = *(v23 + 16);
        v23 += 9;
        v24 += 72;
      }

      while (v23 != v21);
      do
      {
        sub_2992C5D20(v20);
        v20 += 72;
      }

      while (v20 != v21);
      v20 = v6[5];
    }

    v17 = v19 + 72;
    v6[5] = v22;
    v6[6] = v19 + 72;
    v28 = v6[7];
    v6[7] = v32;
    v31 = v20;
    v32 = v28;
    v29 = v20;
    v30 = v20;
    result = sub_2992C5D78(&v29);
  }

  else
  {
    v9 = *a2;
    *(v8 + 8) = *(a2 + 4);
    *v8 = v9;
    if (*(a2 + 39) < 0)
    {
      result = sub_2991A110C((v8 + 16), a2[2], a2[3]);
    }

    else
    {
      v10 = *(a2 + 1);
      *(v8 + 32) = a2[4];
      *(v8 + 16) = v10;
    }

    if (*(a2 + 63) < 0)
    {
      result = sub_2991A110C((v8 + 40), a2[5], a2[6]);
    }

    else
    {
      v16 = *(a2 + 5);
      *(v8 + 56) = a2[7];
      *(v8 + 40) = v16;
    }

    *(v8 + 64) = *(a2 + 16);
    v17 = v8 + 72;
    v6[6] = v8 + 72;
  }

  v6[6] = v17;
  if (0x8E38E38E38E38E39 * ((*(*(v5[4] + 8) + 48) - *(*(v5[4] + 8) + 40)) >> 3) == *(v5[5] + 352))
  {
    *a3 = 1;
  }

  return result;
}

void sub_2992C5C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  sub_2992C5D78(va);
  _Unwind_Resume(a1);
}

void sub_2992C5C9C(void ***a1)
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
        v4 -= 72;
        sub_2992C5D20(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2992C5D20(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

uint64_t sub_2992C5D78(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_2992C5D20(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992C5DC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0x8E38E38E38E38E39 * ((a3 - a1) >> 3)))
    {
      v8 = (0x1C71C71C71C71C72 * ((a3 - a1) >> 3)) | 1;
      v9 = a1 + 72 * v8;
      if (0x1C71C71C71C71C72 * ((a3 - a1) >> 3) + 2 < a2)
      {
        v10 = *(v9 + 63);
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v9 + 48);
        }

        v11 = *(v9 + 135);
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v9 + 120);
        }

        v12 = v10 >= v11;
        v13 = 72;
        if (v12)
        {
          v13 = 0;
        }

        v9 += v13;
        if (!v12)
        {
          v8 = 0x1C71C71C71C71C72 * ((a3 - a1) >> 3) + 2;
        }
      }

      v14 = *(v9 + 63);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v9 + 48);
      }

      v15 = *(a3 + 63);
      v16 = a3[6];
      if (v15 >= 0)
      {
        v17 = *(a3 + 63);
      }

      else
      {
        v17 = a3[6];
      }

      if (v14 >= v17)
      {
        v33 = *a3;
        v34 = *(a3 + 4);
        v29 = a3[2];
        *v35 = a3[3];
        *&v35[7] = *(a3 + 31);
        v28 = *(a3 + 39);
        a3[2] = 0;
        a3[3] = 0;
        *&v32[3] = *(a3 + 11);
        *v32 = *(a3 + 41);
        *&v31[3] = *(a3 + 59);
        v30 = *(a3 + 40);
        *v31 = *(a3 + 14);
        a3[4] = 0;
        a3[5] = 0;
        a3[6] = 0;
        a3[7] = 0;
        v18 = *(a3 + 16);
        do
        {
          v19 = v9;
          v20 = *v9;
          *(v4 + 4) = *(v19 + 8);
          *v4 = v20;
          if (*(v4 + 39) < 0)
          {
            operator delete(v4[2]);
          }

          v21 = *(v19 + 16);
          v4[4] = *(v19 + 32);
          *(v4 + 1) = v21;
          *(v19 + 39) = 0;
          *(v19 + 16) = 0;
          if (*(v4 + 63) < 0)
          {
            operator delete(v4[5]);
          }

          v22 = *(v19 + 40);
          v4[7] = *(v19 + 56);
          *(v4 + 5) = v22;
          *(v19 + 63) = 0;
          *(v19 + 40) = 0;
          *(v4 + 16) = *(v19 + 64);
          if (v6 < v8)
          {
            break;
          }

          v9 = a1 + 72 * ((2 * v8) | 1);
          if (2 * v8 + 2 >= a2)
          {
            v8 = (2 * v8) | 1;
          }

          else
          {
            v23 = *(v9 + 63);
            if ((v23 & 0x80u) != 0)
            {
              v23 = *(v9 + 48);
            }

            v24 = *(v9 + 135);
            if ((v24 & 0x80u) != 0)
            {
              v24 = *(v9 + 120);
            }

            v25 = v23 >= v24;
            v26 = v23 >= v24 ? 0 : 72;
            v9 += v26;
            v8 = v25 ? (2 * v8) | 1 : 2 * v8 + 2;
          }

          v27 = *(v9 + 63);
          if ((v27 & 0x80u) != 0)
          {
            v27 = *(v9 + 48);
          }

          v4 = v19;
        }

        while (v27 >= v17);
        *(v19 + 8) = v34;
        *v19 = v33;
        if (*(v19 + 39) < 0)
        {
          operator delete(*(v19 + 16));
        }

        *(v19 + 16) = v29;
        *(v19 + 24) = *v35;
        *(v19 + 31) = *&v35[7];
        *(v19 + 39) = v28;
        if (*(v19 + 63) < 0)
        {
          operator delete(*(v19 + 40));
        }

        *(v19 + 40) = v30;
        *(v19 + 41) = *v32;
        *(v19 + 44) = *&v32[3];
        *(v19 + 48) = v16;
        *(v19 + 56) = *v31;
        *(v19 + 59) = *&v31[3];
        *(v19 + 63) = v15;
        *(v19 + 64) = v18;
      }
    }
  }
}

void *sub_2992C60DC(uint64_t a1, void **a2, unint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_299212AA4(a1, v7);
  }

  v13 = 0;
  v14 = 24 * v3;
  v15 = 24 * v3;
  v16 = 0;
  sub_2992129A0((24 * v3), *a2, *a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (24 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 24 * v3 + 24;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_299212AFC(&v13);
  return (24 * v3 + 24);
}

void sub_2992C61F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299212AFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C6204(uint64_t a1, uint64_t *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, int a9, int a10, char a11, uint64_t a12, int a13, int a14, int a15)
{
  v44[0] = a3;
  v44[1] = a4;
  v43[0] = a5;
  v43[1] = a6;
  v42[0] = a7;
  v42[1] = a8;
  v18 = sub_29933BEB8(a1, a2 + 1);
  v18[3] = &unk_2A1F6D360;
  v19 = *a2;
  *v18 = *a2;
  *(a1 + *(v19 - 32)) = a2[5];
  *(a1 + 24) = &unk_2A1F6CFC0;
  if (a3)
  {
    sub_29923A9CC(v44, (a1 + 32));
  }

  else
  {
    sub_299217DF0((a1 + 32), byte_29945C656);
  }

  v20 = *MEMORY[0x29EDB8ED8];
  v21 = *(a1 + 55);
  if (v21 < 0)
  {
    v22 = *(a1 + 32);
    v21 = *(a1 + 40);
  }

  else
  {
    v22 = (a1 + 32);
  }

  *(a1 + 56) = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v22, v21);
  if (v43[0])
  {
    sub_29923A9CC(v43, (a1 + 64));
  }

  else
  {
    sub_299217DF0((a1 + 64), byte_29945C656);
  }

  v23 = *(a1 + 87);
  if (v23 < 0)
  {
    v24 = *(a1 + 64);
    v23 = *(a1 + 72);
  }

  else
  {
    v24 = (a1 + 64);
  }

  v25 = *MEMORY[0x29EDB8EE8];
  *(a1 + 88) = CFStringCreateWithCharactersNoCopy(v20, v24, v23, *MEMORY[0x29EDB8EE8]);
  sub_29923A9CC(v42, (a1 + 96));
  v26 = *(a1 + 119);
  if (v26 < 0)
  {
    v27 = *(a1 + 96);
    v26 = *(a1 + 104);
  }

  else
  {
    v27 = (a1 + 96);
  }

  v28 = CFStringCreateWithCharactersNoCopy(v20, v27, v26, v25);
  *(a1 + 128) = 0u;
  *(a1 + 120) = v28;
  *(a1 + 144) = 0u;
  sub_29921E8E0((a1 + 136), *a12, *(a12 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a12 + 8) - *a12) >> 3));
  v29 = *(a1 + 87);
  if (v29 < 0)
  {
    v29 = *(a1 + 72);
  }

  *(a1 + 160) = v29;
  *(a1 + 168) = a9;
  *(a1 + 172) = a9;
  *(a1 + 176) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 192) = -1;
  *(a1 + 200) = a11;
  *(a1 + 204) = a13;
  *(a1 + 208) = a14;
  *(a1 + 212) = a15;
  *(a1 + 216) = 256;
  *(a1 + 218) = 0;
  *(a1 + 220) = a10;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  v30 = *(a1 + 136);
  v31 = *(a1 + 144) - v30;
  if (v31)
  {
    v32 = v31 >> 3;
    v33 = 0xCCCCCCCCCCCCCCCDLL * v32;
    if (0xCCCCCCCCCCCCCCCDLL * v32 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 0xCCCCCCCCCCCCCCCDLL * v32;
    }

    v35 = *(v30 + 37);
    if (v35)
    {
      v37 = (v30 + 77);
      v38 = 1;
      do
      {
        v39 = v38;
        if (v34 == v38)
        {
          break;
        }

        v40 = *v37;
        v37 += 40;
        ++v38;
      }

      while ((v40 & 1) != 0);
      v36 = v39 >= v33;
    }

    else
    {
      v36 = 0;
    }

    *(a1 + 217) = v36;
    if (*(v30 + 8) == 6)
    {
      *(a1 + 216) = (v35 & 4) != 0;
    }
  }

  else
  {
    *(a1 + 217) = 1;
  }

  return a1;
}

void sub_2992C6514(_Unwind_Exception *a1)
{
  sub_299219AB4(v5, 0);
  sub_299219AB4((v1 + 120), 0);
  if (*(v1 + 119) < 0)
  {
    operator delete(*v4);
  }

  sub_299219AB4((v1 + 88), 0);
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  sub_299219AB4((v1 + 56), 0);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992C65A8(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8, int a9, char a10, uint64_t a11, int a12, int a13, int a14)
{
  v43[0] = a2;
  v43[1] = a3;
  v42[0] = a4;
  v42[1] = a5;
  v41[0] = a6;
  v41[1] = a7;
  *a1 = &unk_2A1F66DC0;
  v17 = sub_29933BEB8(a1, &off_2A1F6CFD0);
  *v17 = &unk_2A1F6CD70;
  *(v17 + 24) = &unk_2A1F6CFC0;
  v18 = (v17 + 32);
  if (a2)
  {
    sub_29923A9CC(v43, v18);
  }

  else
  {
    sub_299217DF0((v17 + 32), byte_29945C656);
  }

  v19 = *MEMORY[0x29EDB8ED8];
  v20 = *(a1 + 55);
  if (v20 < 0)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
  }

  else
  {
    v21 = v18;
  }

  *(a1 + 56) = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v21, v20);
  if (v42[0])
  {
    sub_29923A9CC(v42, (a1 + 64));
  }

  else
  {
    sub_299217DF0((a1 + 64), byte_29945C656);
  }

  v22 = *(a1 + 87);
  if (v22 < 0)
  {
    v23 = *(a1 + 64);
    v22 = *(a1 + 72);
  }

  else
  {
    v23 = (a1 + 64);
  }

  v24 = *MEMORY[0x29EDB8EE8];
  *(a1 + 88) = CFStringCreateWithCharactersNoCopy(v19, v23, v22, *MEMORY[0x29EDB8EE8]);
  sub_29923A9CC(v41, (a1 + 96));
  v25 = *(a1 + 119);
  if (v25 < 0)
  {
    v26 = *(a1 + 96);
    v25 = *(a1 + 104);
  }

  else
  {
    v26 = (a1 + 96);
  }

  v27 = CFStringCreateWithCharactersNoCopy(v19, v26, v25, v24);
  *(a1 + 128) = 0u;
  *(a1 + 120) = v27;
  *(a1 + 144) = 0u;
  sub_29921E8E0((a1 + 136), *a11, *(a11 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a11 + 8) - *a11) >> 3));
  v28 = *(a1 + 87);
  if (v28 < 0)
  {
    v28 = *(a1 + 72);
  }

  *(a1 + 160) = v28;
  *(a1 + 168) = a8;
  *(a1 + 172) = a8;
  *(a1 + 176) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 192) = -1;
  *(a1 + 200) = a10;
  *(a1 + 204) = a12;
  *(a1 + 208) = a13;
  *(a1 + 212) = a14;
  *(a1 + 216) = 256;
  *(a1 + 218) = 0;
  *(a1 + 220) = a9;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  v29 = *(a1 + 136);
  v30 = *(a1 + 144) - v29;
  if (v30)
  {
    v31 = v30 >> 3;
    v32 = 0xCCCCCCCCCCCCCCCDLL * v31;
    if (0xCCCCCCCCCCCCCCCDLL * v31 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = 0xCCCCCCCCCCCCCCCDLL * v31;
    }

    v34 = *(v29 + 37);
    if (v34)
    {
      v36 = (v29 + 77);
      v37 = 1;
      do
      {
        v38 = v37;
        if (v33 == v37)
        {
          break;
        }

        v39 = *v36;
        v36 += 40;
        ++v37;
      }

      while ((v39 & 1) != 0);
      v35 = v38 >= v32;
    }

    else
    {
      v35 = 0;
    }

    *(a1 + 217) = v35;
    if (*(v29 + 8) == 6)
    {
      *(a1 + 216) = (v34 & 4) != 0;
    }
  }

  else
  {
    *(a1 + 217) = 1;
  }

  return a1;
}

void sub_2992C685C(_Unwind_Exception *a1)
{
  sub_299219AB4(v4, 0);
  sub_299219AB4((v1 + 120), 0);
  if (*(v1 + 119) < 0)
  {
    operator delete(*v5);
  }

  sub_299219AB4((v1 + 88), 0);
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  sub_299219AB4((v1 + 56), 0);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992C68F0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F66DC0;
  v4 = sub_29933BFC4(a1, &off_2A1F6CFD0, a2);
  *v4 = &unk_2A1F6CD70;
  v4[3] = &unk_2A1F6CFC0;
  v5 = (v4 + 4);
  if (*(a2 + 55) < 0)
  {
    sub_29922C89C(v4 + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v6 = *(a2 + 32);
    v4[6] = *(a2 + 48);
    *v5 = v6;
  }

  *(a1 + 56) = 0;
  if (*(a2 + 87) < 0)
  {
    sub_29922C89C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  *(a1 + 88) = 0;
  if (*(a2 + 119) < 0)
  {
    sub_29922C89C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v8 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v8;
  }

  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  sub_29921E8E0((a1 + 136), *(a2 + 136), *(a2 + 144), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 144) - *(a2 + 136)) >> 3));
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  v9 = *(a2 + 212);
  v10 = *(a2 + 216);
  v11 = *(a2 + 217);
  v12 = *(a2 + 220);
  v13 = *(a2 + 224);
  *(a1 + 232) = 0;
  *(a1 + 212) = v9;
  *(a1 + 216) = v10;
  *(a1 + 217) = v11;
  *(a1 + 220) = v12;
  *(a1 + 224) = v13;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  v14 = *(a1 + 55);
  v15 = MEMORY[0x29EDB8ED8];
  if (v14 < 0)
  {
    v14 = *(a1 + 40);
    if (!v14)
    {
      goto LABEL_16;
    }

    v16 = *v5;
  }

  else
  {
    if (!*(a1 + 55))
    {
      goto LABEL_16;
    }

    v16 = v5;
  }

  v17 = MEMORY[0x29EDB8ED8];
  v18 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], v16, v14);
  sub_299219AB4((a1 + 56), v18);
  v15 = v17;
LABEL_16:
  v19 = *(a1 + 87);
  v20 = MEMORY[0x29EDB8EE8];
  if (v19 < 0)
  {
    v19 = *(a1 + 72);
    if (!v19)
    {
      goto LABEL_22;
    }

    v21 = *(a1 + 64);
  }

  else
  {
    if (!*(a1 + 87))
    {
      goto LABEL_22;
    }

    v21 = (a1 + 64);
  }

  v22 = v15;
  v23 = MEMORY[0x29EDB8EE8];
  v24 = CFStringCreateWithCharactersNoCopy(*v15, v21, v19, *MEMORY[0x29EDB8EE8]);
  sub_299219AB4((a1 + 88), v24);
  v20 = v23;
  v15 = v22;
LABEL_22:
  if (*(a2 + 120))
  {
    v25 = *(a1 + 119);
    if (v25 < 0)
    {
      v26 = *(a1 + 96);
      v25 = *(a1 + 104);
    }

    else
    {
      v26 = (a1 + 96);
    }

    v27 = CFStringCreateWithCharactersNoCopy(*v15, v26, v25, *v20);
    sub_299219AB4((a1 + 120), v27);
  }

  v28 = *(a2 + 128);
  if (v28)
  {
    sub_299229BC0((a1 + 128), v28);
  }

  v29 = *(a2 + 232);
  if (v29)
  {
    sub_299273778((a1 + 232), v29);
  }

  v30 = *(a2 + 240);
  if (v30)
  {
    sub_299240D80((a1 + 240), v30);
  }

  v31 = *(a2 + 248);
  if (v31)
  {
    sub_299240D20((a1 + 248), v31);
  }

  return a1;
}

void sub_2992C6C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, const void **a12)
{
  sub_299219AB4(v13, 0);
  if (*(v12 + 87) < 0)
  {
    operator delete(*a10);
  }

  sub_299219AB4(a12, 0);
  if (*(v12 + 55) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992C6CC4(uint64_t a1, void *lpsrc)
{
  if (!lpsrc || (v4 = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F6D008, 0)) == 0 || (v5 = v4, (*(*v4 + 88))(v4)))
  {

    return sub_29933C17C(a1, lpsrc);
  }

  if ((*(*a1 + 96))(a1) == 89 && (*(*v5 + 96))(v5) != 89 || (*(*a1 + 96))(a1) != 89 && (*(*v5 + 96))(v5) == 89)
  {
    return 0;
  }

  if ((*(*a1 + 96))(a1) == 89 && (*(*v5 + 96))(v5) == 89)
  {
    v7 = (*(*a1 + 168))(a1);
    v8 = (*(*v5 + 168))(v5);
    if (CFNumberCompare(v7, v8, 0) == kCFCompareEqualTo)
    {
      v9 = (*(*a1 + 160))(a1);
      v10 = (*(*v5 + 160))(v5);
      result = CFEqual(v9, v10);
      if (!result)
      {
        return result;
      }

      v11 = (*(*a1 + 544))(a1);
      v13 = v12;
      v14 = (*(*v5 + 544))(v5);
      if (v13 == v15)
      {
        return memcmp(v11, v14, 2 * v13) == 0;
      }
    }

    return 0;
  }

  v16 = *(a1 + 55);
  v17 = *(a1 + 40);
  if (v16 >= 0)
  {
    v17 = *(a1 + 55);
  }

  v18 = v5[55];
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v5 + 5);
  }

  if (v17 != v18)
  {
    return 0;
  }

  if (!v17)
  {
    return 1;
  }

  if (v19 >= 0)
  {
    v20 = (v5 + 32);
  }

  else
  {
    v20 = *(v5 + 4);
  }

  if (v16 >= 0)
  {
    v21 = (a1 + 32);
  }

  else
  {
    v21 = *(a1 + 32);
  }

  v22 = v17 - 1;
  do
  {
    v24 = *v21++;
    v23 = v24;
    v26 = *v20++;
    v25 = v26;
    v28 = v22-- != 0;
    result = v25 == v23;
  }

  while (v25 == v23 && v28);
  return result;
}

void sub_2992C7094(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDB8ED8];
  for (i = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]); a3; --a3)
  {
    v8 = CFNumberCreate(v6, kCFNumberCFIndexType, a2);
    CFArrayAppendValue(i, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    a2 += 8;
  }

  sub_299229F00((a1 + 240), i);
}

void sub_2992C7154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992292D8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C71F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 += (*(*a1 + 568))(a1, v4++);
    }

    while (a2 != v4);
    v6 = 2 * v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*a1 + 544))(a1);
  (*(*a1 + 568))(a1, a2);
  return v7 + v6;
}

uint64_t sub_2992C72F4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 24);
  }
}

uint64_t sub_2992C7330(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 26);
  }
}

BOOL sub_2992C736C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  return 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) > a2 && *(v2 + 40 * a2 + 12) != 0;
}

uint64_t sub_2992C73B0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 30);
  }
}

uint64_t sub_2992C73EC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 32);
  }
}

uint64_t sub_2992C7428(uint64_t a1)
{
  v2 = *(a1 + 87);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(a1 + 72);
  }

  if ((*(*a1 + 48))(a1))
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v4 += (*(*a1 + 312))(a1, v3);
      if (v4 > v2)
      {
        return v3;
      }

      if (++v3 >= (*(*a1 + 48))(a1))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v5 = *(*a1 + 48);

    return v5(a1);
  }
}

uint64_t sub_2992C754C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 136);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 144) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 40 * a2 + 12);
  }
}

uint64_t sub_2992C7588(uint64_t *a1, unint64_t a2)
{
  sub_299255778(0);
  while (1)
  {
    v4 = (*(*a1 + 48))(a1) - 1;
    v5 = *a1;
    if (a2 >= v4)
    {
      break;
    }

    v6 = (*(v5 + 352))(a1, a2++);
    v7 = (*(*a1 + 344))(a1, a2);
    if (sub_299255970(&qword_2A1461DC0, v6, v7))
    {
      return a2 - 1;
    }
  }

  return (*(v5 + 48))(a1) - 1;
}

uint64_t sub_2992C76AC(uint64_t a1, uint64_t a2)
{
  sub_299255778(0);
  do
  {
    v4 = a2;
    if (!a2)
    {
      break;
    }

    --a2;
    v5 = (*(*a1 + 352))(a1, v4 - 1);
    v6 = (*(*a1 + 344))(a1, v4);
  }

  while (!sub_299255970(&qword_2A1461DC0, v5, v6));
  return v4;
}

uint64_t sub_2992C778C(uint64_t a1)
{
  result = sub_2992C7428(a1);
  if (result)
  {

    return sub_2992C76AC(a1, result - 1);
  }

  return result;
}

uint64_t sub_2992C77D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 += (*(*a1 + 320))(a1, v4++);
    }

    while (a2 != v4);
    v6 = 2 * v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*a1 + 552))(a1);
  (*(*a1 + 320))(a1, a2);
  return v7 + v6;
}

void sub_2992C78F4(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  v15[0] = a2;
  v15[1] = v6;
  sub_29923A9CC(v15, &v16);
  v7 = (a1 + 96);
  if (*(a1 + 119) < 0)
  {
    operator delete(*v7);
  }

  *v7 = v16;
  *(a1 + 112) = v17;
  v8 = *a4;
  v9 = *(a4 + 8) - *a4;
  if (v9)
  {
    v10 = v9 >> 1;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = (*(a1 + 136) + 28);
    do
    {
      v12 = *v8++;
      *v11 = v12;
      v11 += 20;
      --v10;
    }

    while (v10);
  }

  v13 = *(a1 + 119);
  if (v13 < 0)
  {
    v7 = *(a1 + 96);
    v13 = *(a1 + 104);
  }

  v14 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], v7, v13, *MEMORY[0x29EDB8EE8]);
  sub_299219AB4((a1 + 120), v14);
}

BOOL sub_2992C79CC(uint64_t a1)
{
  v2 = (*(*a1 + 544))(a1);
  (*(*a1 + 544))(a1);
  if (!v2)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = v3 - 1;
  do
  {
    v5 = *v2++;
    v6 = (v5 & 0xFFFFFFDF) - 65;
    v7 = v5 != 32 && v6 >= 0x1A;
    result = !v7;
    v7 = v4-- != 0;
    v9 = v7;
  }

  while (result && (v9 & 1) != 0);
  return result;
}

uint64_t sub_2992C7A94(uint64_t a1)
{
  if (!(*(*a1 + 48))(a1))
  {
    return 0;
  }

  sub_299255778(0);
  if (!(*(*a1 + 48))(a1))
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = (*(*a1 + 344))(a1, v2);
    v5 = word_2A1461E02 == v3 || v3 == word_2A1461E04 || v3 == word_2A1461E06;
    v6 = v5;
    if (!v5)
    {
      break;
    }

    ++v2;
  }

  while (v2 < (*(*a1 + 48))(a1));
  return v6;
}

void sub_2992C7BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v53 = *MEMORY[0x29EDCA608];
  v6 = sub_2993652F8(a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_2993652F8(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 8);
      v21 = (*(*a1 + 24))(a1);
      v20 = (*(*a1 + 56))(a1);
      v19 = (*(*a1 + 232))(a1);
      if ((*(*a1 + 96))(a1) < 32)
      {
        v8 = 63;
      }

      else
      {
        v8 = (*(*a1 + 96))(a1);
      }

      if ((*(*a1 + 408))(a1))
      {
        if ((*(*a1 + 408))(a1) == 2)
        {
          v9 = "prefix";
        }

        else
        {
          v9 = "partial";
        }
      }

      else
      {
        v9 = "exact";
      }

      v10 = (*(*a1 + 112))(a1);
      v11 = (*(*a1 + 384))(a1);
      v12 = (*(*a1 + 392))(a1);
      if (v12 >= -100.0)
      {
        v13 = *&v12;
      }

      else
      {
        v13 = 0xC059000000000000;
      }

      if (*(a1 + 184) >= -100.0)
      {
        v14 = *(a1 + 184);
      }

      else
      {
        v14 = 0xC059000000000000;
      }

      v15 = *(a1 + 220);
      v16 = (*(*a1 + 200))(a1);
      v17 = *(a1 + 8);
      v18 = *(a1 + 192);
      *buf = 136318722;
      v24 = a3;
      v25 = 2048;
      v26 = v22;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v19;
      v33 = 1024;
      v34 = v8;
      v35 = 2080;
      v36 = v9;
      v37 = 1024;
      v38 = v10;
      v39 = 1024;
      v40 = v11;
      v41 = 2048;
      v42 = v13;
      v43 = 2048;
      v44 = v14;
      v45 = 1024;
      v46 = v15;
      v47 = 1024;
      v48 = v16;
      v49 = 2048;
      v50 = v17;
      v51 = 1024;
      v52 = v18;
      _os_log_debug_impl(&dword_29918C000, v7, OS_LOG_TYPE_DEBUG, "%s (%ld): [%@] (%@/%@), type: %c, length: %s, cost: %d, base-cost: %d, prob: %3.3lf, static prob: %3.3lf penalty: %d autocorrected: %d, rank: %ld, rank(static LM): %d", buf, 0x80u);
    }
  }
}

uint64_t sub_2992C7FAC(unsigned int a1)
{
  v1 = &qword_2A1461000;
  if ((atomic_load_explicit(&qword_2A1461E98, memory_order_acquire) & 1) == 0)
  {
    v12 = a1;
    v10 = __cxa_guard_acquire(&qword_2A1461E98);
    v1 = &qword_2A1461000;
    v11 = v10;
    a1 = v12;
    if (v11)
    {
      qword_2A1461E90 = &unk_2994108D8;
      __cxa_guard_release(&qword_2A1461E98);
      v1 = &qword_2A1461000;
      a1 = v12;
    }
  }

  v2 = v1[466];
  v3 = 293;
  v4 = v2;
  do
  {
    v5 = v3 >> 1;
    v6 = &v4[v3 >> 1];
    v8 = *v6;
    v7 = v6 + 1;
    v3 += ~(v3 >> 1);
    if (v8 < a1)
    {
      v4 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v3);
  if (v4 == v2 + 293 || *v4 != a1)
  {
    return -1;
  }

  else
  {
    return v4 - v2;
  }
}

void sub_2992C8080(uint64_t a1, CFTypeRef cf, std::string **a3, unsigned int a4, uint64_t a5, int a6, int a7)
{
  v17 = *MEMORY[0x29EDCA608];
  *(a1 + 4) = 0u;
  v10 = a1 + 4;
  *(a1 + 68) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 20) = 0u;
  v11 = (a1 + 48);
  *(a1 + 80) = a4;
  *(a1 + 84) = a6;
  *(a1 + 88) = a7;
  *(a1 + 92) = a5;
  if (cf)
  {
    v12 = CFRetain(cf);
  }

  else
  {
    v12 = 0;
  }

  *(v10 + 92) = v12;
  for (i = *a3; ; i = (i + 32))
  {
    if (i == a3[1])
    {
      goto LABEL_9;
    }

    if (i[1].__r_.__value_.__s.__data_[4] == 1)
    {
      break;
    }
  }

  std::string::operator=((v10 + 4), i);
LABEL_9:
  if (v11 != a3)
  {
    sub_2992C9D58(v11, *a3, a3[1], (a3[1] - *a3) >> 5);
  }

  if (a4 > 5 || ((1 << a4) & 0x34) == 0)
  {
    operator new();
  }

  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  if (CFURLGetFileSystemRepresentation(cf, 1u, buffer, 1024))
  {
    v14 = buffer;
  }

  else
  {
    v14 = &unk_29943AA03;
  }

  sub_2991C6CA8(&__p, v14);
  operator new();
}

void sub_2992C82F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x29C29BFB0](v22, 0x10A0C403A2516C0, a3, a4, a5, a6, a7, a8);
  sub_29920FE30((v21 + 92), 0);
  sub_29921EB1C(&__p);
  sub_2992C8840((v21 + 36), 0);
  sub_2992CA118((v21 + 28), 0);
  if (*(v20 + 31) < 0)
  {
    operator delete(*(v21 + 4));
  }

  _Unwind_Resume(a1);
}

void sub_2992C83C4()
{
  if ((atomic_load_explicit(&qword_2A14609D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14609D8))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145F428, &dword_29918C000);

    __cxa_guard_release(&qword_2A14609D8);
  }
}

void sub_2992C843C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    sub_2992CD96C(v2);
  }

  *(v1 + 4) = 0;
}

uint64_t sub_2992C846C(uint64_t a1, _DWORD *a2)
{
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  v4 = sub_2992CB828(*(a1 + 40), a2);
  std::mutex::unlock(&stru_2A145F428);
  return v4;
}

BOOL sub_2992C84D8(uint64_t a1)
{
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  v2 = sub_2992CD47C(*(a1 + 40));
  std::mutex::unlock(&stru_2A145F428);
  return v2;
}

void sub_2992C853C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  sub_2992CC2E8(*(a1 + 40), v2);

  std::mutex::unlock(&stru_2A145F428);
}

void sub_2992C85AC(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  sub_2992CD424((*(a1 + 40) + 56));
  std::mutex::unlock(&stru_2A145F428);
  sub_2992C3DA8(*(a1 + 96), v2, v3, v4);
  sub_2992C846C(a1, (a1 + 4));
  sub_2992C8D94(a1);
  sub_2992C84D8(a1);
  sub_2992C853C(a1, *(a1 + 92));
  v5 = sub_2993652F8(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = CFURLGetString(*(a1 + 96));
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_29918C000, v5, OS_LOG_TYPE_ERROR, "Corruption of learning dictionary detected. Database has been reset: %@", &v7, 0xCu);
  }
}

uint64_t sub_2992C86C8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_2992CD9F4(result);
    sub_2992C83C4();
    std::mutex::lock(&stru_2A145F428);
    v3 = *(a1 + 40);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = sub_2992C9628;
    v4[3] = &unk_29EF10890;
    v4[4] = a1;
    sub_2992CC844(v3, (a1 + 8), v4);
  }

  *a1 = 0;
  return result;
}

uint64_t sub_2992C8794(uint64_t a1)
{
  sub_2992C84D8(a1);
  if (*(a1 + 40))
  {
    sub_2992C83C4();
    std::mutex::lock(&stru_2A145F428);
    sub_2992C8840((a1 + 40), 0);
    std::mutex::unlock(&stru_2A145F428);
  }

  sub_29920FE30((a1 + 96), 0);
  v3 = (a1 + 48);
  sub_29921EB1C(&v3);
  sub_2992C8840((a1 + 40), 0);
  sub_2992CA118((a1 + 32), 0);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_2992C8840(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992CB7C0(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992C888C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *v6;
  if (*v6 == v6[1])
  {
LABEL_6:
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 1;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 0x40000000;
    v12[2] = sub_2992C89D4;
    v12[3] = &unk_29EF107E0;
    v12[6] = a2;
    v12[7] = a3;
    v12[4] = &v13;
    v12[5] = a1;
    v9 = sub_2992CD35C(v6, v12);
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        v10 = *(v14 + 6);
        goto LABEL_12;
      }

      sub_2992C85AC(a1);
    }

    v10 = 3;
LABEL_12:
    _Block_object_dispose(&v13, 8);
    return v10;
  }

  v8 = a2 + 8;
  while (v8 != sub_29920B95C(a2, v7))
  {
    v7 += 32;
    if (v7 == v6[1])
    {
      v6 = *(a1 + 40);
      goto LABEL_6;
    }
  }

  return 3;
}

void sub_2992C89BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2992C89D4(void *a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = a1[5];
  ++*(v2 + 4);
  v3 = a1[6];
  if (!*(v2 + 32))
  {
    sub_2992CCF98(*(v2 + 40), v3);
  }

  v4 = sub_29920B95C(a1[6], (v2 + 8));
  v5 = (*(**(v4 + 56) + 16))(*(v4 + 56));
  v6 = sub_2992CE43C(*(v2 + 32), *v5, (v5[1] - *v5) >> 1);
  if (v6)
  {
    v7 = sub_2992CD070(*(v2 + 40), v3, v6);
    v8 = v7;
    ptr = v7;
    v10 = (v2 + 40);
    v9 = *(v2 + 40);
    if (v8 != -1)
    {
      sub_2992CBD90(v9, v8, *(v2 + 4));
      v11 = a1[7];
      if (v11)
      {
        *v11 = v8;
      }

      *(*(a1[4] + 8) + 24) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    ptr = -1;
    v10 = (v2 + 40);
    v9 = *(v2 + 40);
  }

  v12 = sub_2992CBE10(v9, a1[6], *(v2 + 4));
  v13 = v12;
  sub_2992C8CC8(v2, a1[6], v12, 1);
  v14 = a1[7];
  if (v14)
  {
    *v14 = v13;
  }

LABEL_12:
  v15 = *(v2 + 32);
  if (v15)
  {
    v16 = *(v15 + 8);
  }

  else
  {
    v16 = sub_2992CBC44(*v10);
  }

  if (v16 > *(v2 + 88))
  {
    v17 = sub_2993652F8(0xDu);
    v18 = os_signpost_id_make_with_pointer(v17, &ptr);
    v19 = sub_2993652F8(0xDu);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = v19;
      if (os_signpost_enabled(v19))
      {
        v21 = *(v2 + 32);
        if (v21)
        {
          v22 = *(v21 + 8);
        }

        else
        {
          v22 = sub_2992CBC44(*v10);
        }

        v26 = *(v2 + 84);
        v25 = *(v2 + 88);
        *buf = 67109632;
        v29 = v22;
        v30 = 1024;
        v31 = v25;
        v32 = 1024;
        v33 = v26;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "LearningDictionaryRebuild", "curSize: %d, rebuildThreshold: %d, newSize: %d", buf, 0x14u);
      }
    }

    sub_2992CC104(*(v2 + 40), *(v2 + 84));
  }

  v23 = *(v2 + 40);
  v24 = *(v2 + 4);

  sub_2992CC0AC(v23, v24);
}

uint64_t sub_2992C8CC8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 32))
  {
    v6 = result;
    v7 = sub_29920B95C(a2, (result + 8));
    v8 = (*(**(v7 + 56) + 16))(*(v7 + 56));
    v9 = *(v6 + 32);
    v10 = *v8;
    v11 = (*(v8 + 8) - *v8) >> 1;
    if (a4)
    {

      return sub_2992CDF24(v9, v10, v11, a3);
    }

    else
    {

      return sub_2992CE304(v9, v10, v11, a3);
    }
  }

  return result;
}

uint64_t sub_2992C8D94(uint64_t a1)
{
  sub_2992C83C4();
  std::mutex::lock(&stru_2A145F428);
  v2 = *(a1 + 40);
  sub_2992D76D4((v2 + 64));
  sub_2992CD718(v2 + 56);
  *(v2 + 144) = 1;
  sub_2992CD47C(*(a1 + 40));
  std::mutex::unlock(&stru_2A145F428);
  result = sub_2992C86C8(a1);
  *a1 = 1;
  return result;
}

uint64_t sub_2992C8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = sub_2992C8EC4;
  v8[3] = &unk_29EF10820;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a4;
  v6 = sub_2992CD35C(v5, v8);
  if (v6 == 1)
  {
    return 0;
  }

  if (v6 == 2)
  {
    sub_2992C85AC(a1);
  }

  return 1;
}

void sub_2992C8EC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = sub_2992C8F4C;
  v4[3] = &unk_29EF10800;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v5 = vextq_s8(v3, v3, 8uLL);
  sub_2992CCDBC(v2, v3.i64[0], v4);
}

void sub_2992C8FE4(uint64_t a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5 = 0;
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = sub_2992C9098;
  v3[3] = &unk_29EF10848;
  v3[4] = a2;
  v3[5] = v4;
  sub_2992CC96C(v2, v3);
}

void sub_2992C9080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C9098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

void sub_2992C90FC(uint64_t a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2000000000;
    v9 = 0;
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 0x40000000;
    v7[2] = sub_2992C91BC;
    v7[3] = &unk_29EF10870;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = a5;
    sub_2992CE4B4(v6, a2, a3, a4, v7);
    _Block_object_dispose(v8, 8);
  }
}

void sub_2992C91BC(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1[6];
  v8 = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  if (sub_2992CC3A0(*(v5 + 40), a2, &v8, &v6))
  {
    (*(a1[4] + 16))();
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  sub_299227884(&v6, v7[0]);
}

uint64_t sub_2992C9280(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(result + 32))
  {
    v3 = 0;
    operator new();
  }

  return result;
}

void sub_2992C9348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992CA3A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C935C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x29EDCA608];
  if (*(result + 32))
  {
    v4 = 0;
    operator new();
  }

  return result;
}

void sub_2992C9434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992CA688(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C9448(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x29EDCA608];
  if (*(result + 32))
  {
    v4 = 0;
    operator new();
  }

  return result;
}

void sub_2992C9520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992CA3A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C9534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(result + 32))
  {
    v5 = 0;
    operator new();
  }

  return result;
}

void sub_2992C9614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992CA688(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992C9628(uint64_t a1, const void *a2, int a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 32);
  if (a2)
  {
    v5 = (a3 >> 1);
  }

  else
  {
    v5 = 0;
  }

  return sub_2992CDF24(v4, a2, v5, a4);
}

uint64_t MecabraCreateArrayWithContentOfLegacyPhraseLearningDictionary_0(const __CFURL *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v1 = sub_2992612D4(a1, 1);
  if (v1)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    v7[3] = Mutable;
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = sub_2992C977C;
    v5[3] = &unk_29EF108B8;
    v5[4] = &v6;
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 0x40000000;
    v12 = sub_2992B7E0C;
    v13 = &unk_29EF10290;
    v14 = v5;
    sub_299261648(v1);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_2992C9764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2992C977C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], *a2, *(a2 + 8));
  v6 = CFStringCreateWithCharacters(v4, *(a2 + 16), *(a2 + 24));
  v7 = CFStringCreateWithFormat(v4, 0, @"%@,%@", v5, v6);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v7);
  CFRelease(v5);
  CFRelease(v6);

  CFRelease(v7);
}

void MecabraCreateArrayWithContentOfPhraseLearningDictionary_0(const __CFURL *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 0;
  memset(v9, 0, sizeof(v9));
  sub_2991C6CA8(&v5, off_2A145F3B0[0]);
  v6 = 0;
  v7 = 1;
  v8 = 0;
  sub_2992C9ABC(v9, &v5);
  sub_2991C6CA8(v4, off_2A145F3B8);
  memset(&v4[3], 0, 7);
  sub_2992C9ABC(v9, v4);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v2 = buffer;
  }

  else
  {
    v2 = &unk_29943AA03;
  }

  sub_2991C6CA8(&__p, v2);
  sub_2992CB640(buffer, v9, &__p);
}

void sub_2992C9A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  a29 = &a36;
  sub_29921EB1C(&a29);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992C9ABC(uint64_t *result, __int128 *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 5;
    if ((v7 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v8 = v4 - *result;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v31 = result;
    if (v10)
    {
      sub_2992CA06C(result, v10);
    }

    v13 = 32 * v7;
    v28 = 0;
    v29 = v13;
    v30 = v13;
    if (*(a2 + 23) < 0)
    {
      sub_2991A110C(v13, *a2, *(a2 + 1));
      v15 = v29;
      v16 = v30;
    }

    else
    {
      v14 = *a2;
      *(v13 + 16) = *(a2 + 2);
      *v13 = v14;
      v15 = v13;
      v16 = v13;
    }

    v17 = *(a2 + 6);
    *(v13 + 27) = *(a2 + 27);
    *(v13 + 24) = v17;
    *&v30 = v16 + 32;
    v19 = *v3;
    v18 = v3[1];
    v32[0] = v3;
    v32[1] = &v34;
    v32[2] = &v35;
    v20 = v15 + v19 - v18;
    v34 = v20;
    v35 = v20;
    if (v19 == v18)
    {
      v33 = 1;
    }

    else
    {
      v21 = v19;
      v22 = v15 + v19 - v18;
      do
      {
        v23 = *v21;
        *(v22 + 16) = *(v21 + 16);
        *v22 = v23;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = 0;
        v24 = *(v21 + 24);
        *(v22 + 27) = *(v21 + 27);
        *(v22 + 24) = v24;
        v21 += 32;
        v22 += 32;
      }

      while (v21 != v18);
      v35 = v22;
      v33 = 1;
      do
      {
        if (*(v19 + 23) < 0)
        {
          operator delete(*v19);
        }

        v19 += 32;
      }

      while (v19 != v18);
    }

    sub_2992C9FEC(v32);
    v25 = *v3;
    *v3 = v20;
    v26 = v3[2];
    v27 = v30;
    *(v3 + 1) = v30;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    v28 = v25;
    v29 = v25;
    result = sub_2992CA0B4(&v28);
    v12 = v27;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_2991A110C(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = *(a2 + 6);
    *(v5 + 27) = *(a2 + 27);
    *(v5 + 24) = v11;
    v12 = v5 + 32;
    v3[1] = v5 + 32;
  }

  v3[1] = v12;
  return result;
}

void sub_2992C9CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2992CA0B4(va);
  _Unwind_Resume(a1);
}

void sub_2992C9CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@,%@", a2, a3);
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v4);

  CFRelease(v4);
}

void sub_2992C9D58(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    sub_29921EF84(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2992C9EDC(a1, v11);
    }

    sub_299212A8C();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v15 = *(v6[1].__r_.__value_.__r.__words + 3);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        *(v8 + 27) = v15;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v16 = *(v12 - 9);
      v12 -= 4;
      if (v16 < 0)
      {
        operator delete(*v12);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (v12 + __str - v8);
    if (v12 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v14 = *(v6[1].__r_.__value_.__r.__words + 3);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        *(v8 + 27) = v14;
        v6 = (v6 + 32);
        v8 += 32;
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_2992C9F18(a1, v13, a3, v12);
  }
}

void sub_2992C9EDC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2992CA06C(a1, a2);
  }

  sub_299212A8C();
}

char *sub_2992C9F18(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_2991A110C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 6);
      *(v4 + 27) = *(v6 + 27);
      *(v4 + 6) = v9;
      v6 += 2;
      v4 = v8 + 32;
      v14 = v8 + 32;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_2992C9FEC(v11);
  return v4;
}

uint64_t sub_2992C9FEC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2992CA024(a1);
  }

  return a1;
}

void sub_2992CA024(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_2992CA06C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992CA0B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_2992CA118(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992CD8DC(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

__n128 sub_2992CA1E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992CA218(void *a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, _BYTE *a7)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = a1[1];
  v17 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  if (sub_2992CC3A0(*(v14 + 40), v10, &v17, &v15))
  {
    sub_2992CA33C(*(a1[2] + 24), a3, &v15, v17, v11, v12, v13);
  }

  if (*a1[3] == 1)
  {
    *a7 = 1;
  }

  sub_299227884(&v15, v16[0]);
}

uint64_t sub_2992CA2F0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D3E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992CA33C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  v9 = a6;
  v10 = a5;
  v8 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, a3, &v11, &v10, &v9, &v8);
}

uint64_t sub_2992CA3A0(uint64_t a1)
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

__n128 sub_2992CA49C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D408;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992CA4D4(void *a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, _BYTE *a9)
{
  v11 = *a2;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  v17 = a1[1];
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  if (sub_2992CC3A0(*(v17 + 40), v11, &v20, &v18))
  {
    sub_2992CA614(*(a1[2] + 24), a3, &v18, v20, v12, v13, v14, v15, v16, a1[3]);
  }

  if (*a1[3] == 1)
  {
    *a9 = 1;
  }

  sub_299227884(&v18, v19[0]);
}

uint64_t sub_2992CA5C8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D478))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992CA614(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a4;
  v13 = a6;
  v14 = a5;
  v11 = a8;
  v12 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, a3, &v15, &v14, &v13, &v12, &v11, &a9, a10);
}

uint64_t sub_2992CA688(uint64_t a1)
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

__n128 sub_2992CA784(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D498;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992CA7BC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, _BYTE *a7)
{
  v10 = *a2;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = *(a1 + 8);
  v17 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  if (sub_2992CC3A0(*(v14 + 40), v10, &v17, &v15))
  {
    sub_2992CA33C(*(*(a1 + 16) + 24), a3, &v15, v17, v11, v12, v13);
  }

  if (**(a1 + 24) == 1)
  {
    *a7 = 1;
  }

  sub_299227884(&v15, v16[0]);
}

uint64_t sub_2992CA894(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D4F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992CA95C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D518;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992CA994(void *a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, _BYTE *a9)
{
  v11 = *a2;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  v17 = a1[1];
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  if (sub_2992CC3A0(*(v17 + 40), v11, &v20, &v18))
  {
    sub_2992CA614(*(a1[2] + 24), a3, &v18, v20, v12, v13, v14, v15, v16, a1[3]);
  }

  if (*a1[3] == 1)
  {
    *a9 = 1;
  }

  sub_299227884(&v18, v19[0]);
}

uint64_t sub_2992CAA88(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D578))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2992CAB24(_Unwind_Exception *a1)
{
  v3 = v2;
  sub_2992CB108(v3, 0);
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5)
  {
    sub_299274C48(v5, 0);
    MEMORY[0x29C29BFB0](v5, 0x20C4093837F09);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992CAB70(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    result = sub_2992C1E9C(0);
    if (result)
    {
      if (*v1)
      {
        sub_2992C1B60(*(v2 + 8));
        operator new();
      }
    }
  }

  return result;
}

void sub_2992CABFC(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (v2 && sub_2992C1E9C(0) && a2 && *v2)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    v8[0] = &unk_2A1F6D598;
    v8[1] = &__p;
    v8[3] = v8;
    sub_299324D84(a2, v8);
    sub_2992CB39C(v8);
    sub_2992C1A18(*(a1 + 8), &__p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_2992CACDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992CAD08(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 8);
  if (v2 && sub_2992C1E9C(0) && a2 && *v2)
  {
    memset(__p, 0, sizeof(__p));
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        sub_2992CADD4(__p, ValueAtIndex[3]);
      }
    }

    sub_2992C1A18(*(a1 + 8), __p);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2992CADB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992CADD4(uint64_t a1, void *a2)
{
  v3 = *(a2 + 4);
  v4 = vcvtq_f64_f32(v3);
  v5 = *(a2 + 12);
  v6 = vcvtq_f64_f32(v5);
  v7 = vcvtq_f64_f32(vadd_f32(v3, vmul_f32(v5, 0x3F0000003F000000)));
  v8 = a2[3];
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v10 >= v9)
  {
    v12 = *a1;
    v13 = v10 - *a1;
    v14 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3) + 1;
    if (v14 > 0x492492492492492)
    {
      sub_299212A8C();
    }

    v15 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x249249249249249)
    {
      v16 = 0x492492492492492;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x492492492492492)
      {
        operator new();
      }

      sub_29919600C();
    }

    v17 = 8 * (v13 >> 3);
    *v17 = v7;
    *(v17 + 16) = v4;
    *(v17 + 32) = v6;
    *(v17 + 48) = v8;
    v11 = v17 + 56;
    v18 = v17 - v13;
    memcpy((v17 - v13), v12, v13);
    *a1 = v18;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v10 = v7;
    *(v10 + 16) = v4;
    *(v10 + 32) = v6;
    v11 = v10 + 56;
    *(v10 + 48) = v8;
  }

  *(a1 + 8) = v11;
}

uint64_t *sub_2992CAF50(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2)
  {
    v4 = result;
    result = sub_2992C1E9C(0);
    if (result)
    {
      if (*v2)
      {
        result = v4[2];
        if (result)
        {
          v5 = *(a2 + 64) - 1;
          if (v5 > 2)
          {
            v6 = 1;
          }

          else
          {
            v6 = qword_299411A50[v5];
          }

          v7 = *(a2 + 32);
          v8 = *(a2 + 40);
          v9 = *(a2 + 48);
          v10 = *(a2 + 56);

          return sub_2992C1174(result, v6, v7, v8, v9, v10);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2992CAFEC(uint64_t *a1, const __CFArray *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  result = sub_2992C1E9C(0);
  if (!result)
  {
    return result;
  }

  if (!*v2)
  {
    return 0;
  }

  result = 0;
  if (a2 && a1[2])
  {
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      return 1;
    }

    v7 = Count;
    v8 = 0;
    while (1)
    {
      v9 = *(CFArrayGetValueAtIndex(a2, v8) + 3);
      if (!v9)
      {
        break;
      }

      v10 = __dynamic_cast(v9, &unk_2A1F6F680, &unk_2A1F6F690, 0);
      if (!v10)
      {
        break;
      }

      sub_2992CAF50(a1, v10);
      ++v8;
      result = 1;
      if (v7 == v8)
      {
        return result;
      }
    }

    sub_2992CB108(a1 + 2, 0);
    return 0;
  }

  return result;
}

const void ***sub_2992CB108(const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_299274C10(v2, 0);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2992CB16C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x2000000000;
    v5 = 0;
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = sub_2992CB224;
    v3[3] = &unk_29EF10908;
    v3[4] = a2;
    v3[5] = v4;
    sub_2992C12D8(v2, v3);
    _Block_object_dispose(v4, 8);
  }
}

void sub_2992CB20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CB224(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = sub_2992C1D88(&v8);
  sub_2992C1C74(&v8);
  result = (*(v5 + 16))(v5, v6, *(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_2992CB31C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6D598;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992CB350(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D608))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992CB39C(uint64_t a1)
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

uint64_t sub_2992CB41C(int a1, __CFDictionary *a2, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v5 = result;
    result = sub_299377154(result);
    if (result)
    {
      sub_2992CB4E8(result, a2, v5[1]);
      v6 = (*(*v5 + 24))(v5);
      sub_2992CB59C(v6, a2, v6);
      return 1;
    }
  }

  return result;
}

void sub_2992CB4E8(int a1, CFMutableDictionaryRef theDict, unint64_t a3)
{
  v5 = *MEMORY[0x29EDB8F00];
  CFDictionaryAddValue(theDict, @"conversionCandidateAccepted", *MEMORY[0x29EDB8F00]);
  if (a3 >= 4)
  {
    if (a3 >= 10)
    {
      return;
    }
  }

  else
  {
    CFDictionaryAddValue(theDict, *off_29EF10928[a3], v5);
  }

  CFDictionaryAddValue(theDict, @"top10ConversionCandidateAccepted", v5);
}

void sub_2992CB59C(int a1, __CFDictionary *a2, CFStringRef theString)
{
  valuePtr = CFStringGetLength(theString);
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a2, @"acceptedCandidateLength", v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_2992CB640(uint64_t a1, __int128 **a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2992CD4D8(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
  if (*(a3 + 23) < 0)
  {
    sub_2991A110C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  operator new();
}

void sub_2992CB728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29921EB1C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992CB778(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992D4B1C(v2);
    MEMORY[0x29C29BFB0](v3, 0x1032C40F8A9CA3CLL);
  }

  return a1;
}

uint64_t sub_2992CB7C0(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    _Block_release(v2);
  }

  sub_2992CD560(a1 + 56);
  sub_2992CB778((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = a1;
  sub_29921EB1C(&v4);
  return a1;
}

uint64_t sub_2992CB828(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 56);
  v3 = a1 + 56;
  if (!v4)
  {
    *a2 = 0;
    v5 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v5 = *v5;
    }

    sub_2992CB88C(v3, v5);
    sub_2992CB980(a1);
  }

  return 1;
}

void sub_2992CB87C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2992CB870);
}

uint64_t sub_2992CB88C(uint64_t result, char *a2)
{
  if (!*result)
  {
    v3 = result;
    sub_299248D7C((result + 64), a2);
    LODWORD(result) = sqlite3_open_v2(":memory:", v3, 3145730, 0);
    if (result)
    {
LABEL_3:
      if (result == 11 || result == 26)
      {
        result = sub_2992CD718(v3);
        if (result)
        {
          return result;
        }

        exception = __cxa_allocate_exception(4uLL);
        v5 = 1;
      }

      else
      {
        exception = __cxa_allocate_exception(4uLL);
        v5 = 2;
      }

      *exception = v5;
      __cxa_throw(exception, &unk_2A1F6D658, 0);
    }

    if (stat(a2, &v6))
    {

      return sub_2992CD66C(v3);
    }

    else
    {
      result = sub_2992CD5B8(v3, 0);
      if (result)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

void sub_2992CBA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992CBA44(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    (*(v2 + 16))();
  }

  sub_2992CBAA4((a1 + 56), "DROP TABLE Assist");

  return sub_2992CBAA4((a1 + 56), "DROP TABLE Words");
}

uint64_t sub_2992CBAA4(sqlite3 **a1, const char *a2)
{
  result = sqlite3_exec(*a1, a2, 0, 0, 0);
  if (result == 26 || result == 11)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, &unk_2A1F6D658, 0);
  }

  return result;
}

BOOL sub_2992CBAF8(uint64_t a1, sqlite3 **a2)
{
  sub_2992D5480(*(a1 + 48), "Words", &__p);
  sub_2992CBAA4(a2, "PRAGMA journal_mode = WAL;");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (sub_2992CBAA4(a2, p_p))
  {
    goto LABEL_11;
  }

  sub_2992D569C(&v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v8;
  v4 = (v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : v8.__r_.__value_.__r.__words[0];
  if (sub_2992CBAA4(a2, v4))
  {
LABEL_11:
    v5 = 0;
  }

  else
  {
    sub_2992D5788(&v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v8;
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = v8.__r_.__value_.__r.__words[0];
    }

    v5 = sub_2992CBAA4(a2, v7) == 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_2992CBC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992CBC44(uint64_t a1)
{
  v1 = sub_2992CBCA0(a1, 10);
  if (sub_2992D7538(v1) != 100)
  {
    return 0;
  }

  v2 = *(v1 + 8);

  return sqlite3_column_int(v2, 0);
}

uint64_t sub_2992CBCA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = a1 + 96;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 == a1 + 96 || *(v5 + 32) > a2 || (v6 = *(v5 + 40)) == 0)
  {
LABEL_10:
    sub_2992D4B74(*(a1 + 48), a2, __p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_2992CD280((a1 + 56), a2, v7);
  }

  sqlite3_reset(*(v6 + 8));
  sqlite3_clear_bindings(*(v6 + 8));
  return v6;
}

void sub_2992CBD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992CBD90(uint64_t a1, int a2, int a3)
{
  v6 = sub_2992CBCA0(a1, 5);
  sqlite3_bind_int(*(v6 + 8), 1, a3);
  sqlite3_bind_int(*(v6 + 8), 2, a2);
  *(a1 + 144) = 1;

  return sub_2992D7538(v6);
}

sqlite3_int64 sub_2992CBE10(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = sub_2992CBCA0(a1, 2);
  sqlite3_bind_int(*(v6 + 8), 1, a3);
  v7 = *a1;
  if (*a1 != a1[1])
  {
    v8 = 2;
    do
    {
      v9 = *(sub_29920B95C(a2, v7) + 56);
      v10 = *(v7 + 24);
      if (v10 == 1)
      {
        v12 = (*(*v9 + 24))(v9);
        sqlite3_bind_int(*(v6 + 8), v8, v12);
      }

      else if (!v10)
      {
        v11 = (*(*v9 + 16))(v9);
        sub_2992D7580(v6, v8, *v11, (*(v11 + 8) - *v11) >> 1, *(v7 + 30));
      }

      ++v8;
      v7 += 32;
    }

    while (v7 != a1[1]);
  }

  sub_2992D7538(v6);
  *(a1 + 144) = 1;
  v13 = a1[7];

  return sqlite3_last_insert_rowid(v13);
}

void sub_2992CBFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992CC058(va);
  _Unwind_Resume(a1);
}

uint64_t ****sub_2992CC058(uint64_t ****a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2992D74EC(v2);
    MEMORY[0x29C29BFB0](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t sub_2992CC0AC(uint64_t a1, int a2)
{
  v4 = sub_2992CBCA0(a1, 6);
  sqlite3_bind_int(*(v4 + 8), 1, a2);
  result = sub_2992D7538(v4);
  *(a1 + 144) = 1;
  return result;
}

void sub_2992CC2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2992CC058(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CC2E8(uint64_t a1, int a2)
{
  v4 = sub_2992CBCA0(a1, 9);
  sqlite3_bind_int(*(v4 + 8), 1, a2);
  result = sub_2992D7538(v4);
  *(a1 + 144) = 1;
  return result;
}

uint64_t sub_2992CC340(uint64_t a1, double a2)
{
  v4 = sub_2992CBCA0(a1, 7);
  sqlite3_bind_double(*(v4 + 8), 1, a2);
  result = sub_2992D7538(v4);
  *(a1 + 144) = 1;
  return result;
}

uint64_t sub_2992CC3A0(uint64_t *a1, int a2, int *a3, uint64_t **a4)
{
  result = sub_2992CBCA0(a1, 4);
  if (result)
  {
    v8 = result;
    sqlite3_bind_int(*(result + 8), 1, a2);
    if (sub_2992D7538(v8) == 100)
    {
      *a3 = sqlite3_column_int(*(v8 + 8), 0);
      v9 = *a1;
      if (a1[1] != *a1)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(v9 + v10 + 24);
          if (v12 == 1)
          {
            sqlite3_column_int(*(v8 + 8), v11 + 1);
            operator new();
          }

          if (!v12)
          {
            v13 = sqlite3_column_blob(*(v8 + 8), v11 + 1);
            v14 = sqlite3_column_bytes(*(v8 + 8), v11 + 1);
            memset(v15, 0, sizeof(v15));
            sub_299215EC0(v15, v13, v13 + (v14 & 0xFFFFFFFFFFFFFFFELL), v14 >> 1);
            operator new();
          }

          ++v11;
          v9 = *a1;
          v10 += 32;
        }

        while (v11 < (a1[1] - *a1) >> 5);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2992CC61C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  MEMORY[0x29C29BFB0](v17, 0x91C4089455612, a3, a4, a5, a6, a7, a8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2992CC7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_2992CC058(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2992CC844(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = 0;
  sub_2992D53F4(a2, &__p);
  sub_2992CBFDC((a1 + 56));
}

void sub_2992CC934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992CCCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23)
{
  sub_2992CC058((v23 - 120));
  if (*(v23 - 89) < 0)
  {
    operator delete(*(v23 - 112));
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2992CCC80);
  }

  _Unwind_Resume(a1);
}

void sub_2992CCF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992CCF98(uint64_t *a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = -1;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_2992CD058;
  v2[3] = &unk_29EF10950;
  v2[4] = v3;
  sub_2992CCDBC(a1, a2, v2);
}

void sub_2992CD040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CD058(uint64_t result, int a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a3 = 1;
  return result;
}

uint64_t sub_2992CD070(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = a3 + 1;
  v4 = *a3;
  if (*a3 == a3 + 1)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v7) = -1;
  while (1)
  {
    v8 = *(v4 + 7);
    v9 = sub_2992CBCA0(a1, 1);
    v10 = sub_2992CD138(a1, v9, v8, a2, 0);
    v7 = v10 ? v8 : v7;
    if (v10)
    {
      break;
    }

    v11 = v4[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v4[2];
        v13 = *v12 == v4;
        v4 = v12;
      }

      while (!v13);
    }

    v4 = v12;
    if (v12 == v3)
    {
      return v7;
    }
  }

  return v8;
}

BOOL sub_2992CD138(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  sqlite3_bind_int(*(a2 + 8), 1, a3);
  v9 = *a1;
  if (*a1 != a1[1])
  {
    v10 = 2;
    do
    {
      if ((*(v9 + 28) & 1) == 0)
      {
        v11 = sub_29920B95C(a4, v9);
        if (a4 + 8 == v11)
        {
          if ((a5 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v12 = *(v11 + 56);
          v13 = *(v9 + 24);
          if (v13 == 1)
          {
            v16 = (*(*v12 + 24))(v12);
            v14 = v10 + 1;
            sqlite3_bind_int(*(a2 + 8), v10, v16);
            goto LABEL_11;
          }

          if (!v13)
          {
            v14 = v10 + 1;
            v15 = (*(*v12 + 16))(v12);
            sub_2992D7580(a2, v10, *v15, (*(v15 + 8) - *v15) >> 1, *(v9 + 30));
LABEL_11:
            v10 = v14;
          }
        }
      }

      v9 += 32;
    }

    while (v9 != a1[1]);
  }

  return sub_2992D7538(a2) == 100;
}

void sub_2992CD2E4(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  MEMORY[0x29C29BFB0](v5, 0x20C40960023A9);
  if (a2 == 1)
  {
    if (*__cxa_begin_catch(a1) == 1)
    {
      sub_2992D76D4((v2 + 8));
      sub_2992CD718(v2);
    }

    __cxa_end_catch();
    JUMPOUT(0x2992CD2D0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992CD35C(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 56);
  v6 = sub_2992CBAA4((a1 + 56), "BEGIN IMMEDIATE") == 0;
  (*(a2 + 16))(a2);
  sub_2992CBAA4(v5, "COMMIT");
  v6 = 0;
  *(a1 + 144) = 1;
  sub_2992CD75C(&v5);
  return 0;
}

void sub_2992CD3E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2992CD75C(&a9);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2992CD3D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992CD424(sqlite3 **a1)
{
  if (!*a1)
  {
    return 1;
  }

  sub_2992D76D4(a1 + 1);
  if (sqlite3_close(*a1))
  {
    return 0;
  }

  *a1 = 0;
  return 1;
}

BOOL sub_2992CD47C(uint64_t a1)
{
  if (*(a1 + 144) != 1)
  {
    return 1;
  }

  Current = CFAbsoluteTimeGetCurrent();
  sub_2992CC340(a1, Current);
  result = sub_2992CD5B8(a1 + 56, 1) == 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t *sub_2992CD4D8(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992C9EDC(result, a4);
  }

  return result;
}

void sub_2992CD540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29921EB1C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CD560(uint64_t a1)
{
  if (*a1)
  {
    sub_2992D76D4((a1 + 8));
    sqlite3_close(*a1);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_2992D7690(a1 + 8);
  return a1;
}

uint64_t sub_2992CD5B8(uint64_t a1, int a2)
{
  ppDb = 0;
  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v4;
  }

  v5 = sqlite3_open(v4, &ppDb);
  if (!v5)
  {
    if (a2)
    {
      p_ppDb = a1;
    }

    else
    {
      p_ppDb = &ppDb;
    }

    v7 = *p_ppDb;
    if (a2)
    {
      v8 = &ppDb;
    }

    else
    {
      v8 = a1;
    }

    v9 = sqlite3_backup_init(*v8, "main", v7, "main");
    if (v9)
    {
      v10 = v9;
      sqlite3_backup_step(v9, -1);
      sqlite3_backup_finish(v10);
    }

    v5 = sqlite3_errcode(ppDb);
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

  return v5;
}

uint64_t sub_2992CD66C(uint64_t a1)
{
  v4 = a1;
  v5 = sub_2992CBAA4(a1, "BEGIN IMMEDIATE") == 0;
  if (!sub_2992CBAF8(*(a1 + 56), a1))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 3;
    __cxa_throw(exception, &unk_2A1F6D658, 0);
  }

  sub_2992CBAA4(v4, "COMMIT");
  v5 = 0;
  return sub_2992CD75C(&v4);
}

uint64_t sub_2992CD718(uint64_t a1)
{
  sub_2992CBA44(*(a1 + 56));
  sub_2992CD66C(a1);
  return 1;
}

void sub_2992CD74C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2992CD740);
}

uint64_t sub_2992CD75C(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_2992CBAA4(*a1, "ROLLBACK");
  }

  return a1;
}

void sub_2992CD8A4(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, 0x10A1C4028A83BA9);
  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992CD8DC(uint64_t *a1)
{
  sub_2992CD96C(a1);
  v2 = a1[8];
  if (v2)
  {
    _Block_release(v2);
  }

  v5 = (a1 + 5);
  sub_29921EB1C(&v5);
  v5 = (a1 + 2);
  sub_2992CF180(&v5);
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 9))(v3);
  }

  return a1;
}

void sub_2992CD96C(void ***a1)
{
  (*(**a1 + 12))(*a1);
  v3 = a1[2];
  v2 = a1[3];
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      sub_29921B8CC((v2 - 3), *(v2 - 2));
      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[3] = v3;
  sub_29921EB70(a1 + 5);
  *(a1 + 2) = 0;
}

uint64_t sub_2992CD9F4(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (*(a1 + 48) - *(a1 + 40)) >> 5;
  sub_2992CD96C(a1);
  result = sub_2992CDB3C(v2, v3);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v6 >= v5)
  {
    v8 = *(a1 + 16);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2992CF20C();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v19[4] = a1 + 16;
    if (v12)
    {
      sub_2992CF224(v12);
    }

    v13 = 24 * v9;
    *(v13 + 16) = 0;
    *(24 * v9 + 8) = 0;
    *v13 = 24 * v9 + 8;
    v7 = 24 * v9 + 24;
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = 24 * v9 + v14 - v15;
    sub_2992CF27C(v14, v15, v13 + v14 - v15);
    v17 = *(a1 + 16);
    *(a1 + 16) = v16;
    *(a1 + 24) = v7;
    v18 = *(a1 + 32);
    *(a1 + 32) = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = sub_2992CF314(v19);
  }

  else
  {
    v6[2] = 0;
    v6[1] = 0;
    *v6 = v6 + 1;
    v7 = (v6 + 3);
  }

  *(a1 + 24) = v7;
  *(a1 + 72) = 1;
  return result;
}

const void **sub_2992CDB3C(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_29924EF30(result, a2);
    }

    sub_2992CF20C();
  }

  return result;
}

uint64_t sub_2992CDBD8(void *a1)
{
  (*(**a1 + 96))(*a1);
  *(a1 + 72) = 0;
  v2 = a1[6];
  v3 = a1[5];
  if (v3 != v2)
  {
    sub_2992CF368(v3, v2, 126 - 2 * __clz((v2 - v3) >> 5), 1);
    v4 = a1[5];
    v5 = a1[6];
    if (v5 != v4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = (v4 + 32 * v6);
        LODWORD(v42) = *(v8 + 6);
        sub_2992D311C(&v40, &v42, 1);
        v9 = v7;
        v10 = (v7 << 32) + 0x100000000;
        for (i = 32 * v7 + 56; ; i += 32)
        {
          ++v9;
          v12 = a1[5];
          if (v9 >= (a1[6] - v12) >> 5)
          {
            break;
          }

          v13 = v12 + i;
          v14 = *(v12 + i - 1);
          if (v14 >= 0)
          {
            v15 = *(v12 + i - 1);
          }

          else
          {
            v15 = *(v12 + i - 16);
          }

          v16 = *(v8 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = v8[1];
          }

          if (v15 != v16)
          {
            break;
          }

          v20 = *(v13 - 24);
          v18 = v13 - 24;
          v19 = v20;
          v21 = (v14 >= 0 ? v18 : v19);
          v22 = v17 >= 0 ? v8 : *v8;
          if (memcmp(v21, v22, v15))
          {
            break;
          }

          v10 += 0x100000000;
          sub_2992D319C(&v40, *(v12 + i), (v12 + i));
        }

        v23 = a1[2];
        v24 = a1[3];
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3);
        v39 = -1431655765 * ((v24 - v23) >> 3);
        v26 = a1[4];
        if (v24 >= v26)
        {
          if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_2992CF20C();
          }

          v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v23) >> 3);
          v29 = 2 * v28;
          if (2 * v28 <= v25 + 1)
          {
            v29 = v25 + 1;
          }

          if (v28 >= 0x555555555555555)
          {
            v30 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v30 = v29;
          }

          v46 = a1 + 2;
          if (v30)
          {
            sub_2992CF224(v30);
          }

          v42 = 0;
          v43 = 24 * v25;
          v44 = 24 * v25;
          v45 = 0;
          sub_2992D0EE4((24 * v25), v40, v41);
          v27 = (v44 + 24);
          v31 = a1[2];
          v32 = a1[3];
          v33 = v43 + v31 - v32;
          sub_2992CF27C(v31, v32, v33);
          v34 = a1[2];
          a1[2] = v33;
          a1[3] = v27;
          v35 = a1[4];
          a1[4] = v45;
          v44 = v34;
          v45 = v35;
          v42 = v34;
          v43 = v34;
          sub_2992CF314(&v42);
        }

        else
        {
          sub_2992D0EE4(v24, v40, v41);
          v27 = v24 + 3;
          a1[3] = v27;
        }

        a1[3] = v27;
        v36 = *(v8 + 23);
        if (v36 < 0)
        {
          v37 = v8;
          v8 = *v8;
          v36 = v37[1];
        }

        (*(**a1 + 80))(*a1, v8, v36, &v39);
        sub_29921B8CC(&v40, v41[0]);
        v6 = v10 >> 32;
        v4 = a1[5];
        v5 = a1[6];
        v7 = v9;
      }

      while (v10 >> 32 < ((v5 - v4) >> 5));
    }

    v42 = v4;
    v43 = v5;
    a1[5] = 0;
    a1[6] = 0;
    v44 = a1[7];
    a1[7] = 0;
    v40 = &v42;
    sub_29921EB1C(&v40);
  }

  return 1;
}

uint64_t sub_2992CDF24(void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v54[0] = a2;
  v54[1] = a3;
  v53 = a4;
  if (!a3)
  {
    return 0;
  }

  v4 = 2 * a3;
  if ((2 * a3) > 0xFF)
  {
    return 0;
  }

  v6 = a4;
  ++*(a1 + 2);
  if (*(a1 + 72) == 1)
  {
    sub_2992FE120(v54, &v51);
    v8 = a1[6];
    v9 = a1[7];
    if (v8 >= v9)
    {
      v18 = a1[5];
      v19 = (v8 - v18) >> 5;
      v20 = v19 + 1;
      if ((v19 + 1) >> 59)
      {
        sub_2992CF20C();
      }

      v21 = v9 - v18;
      if (v21 >> 4 > v20)
      {
        v20 = v21 >> 4;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFE0)
      {
        v22 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      v59 = a1 + 5;
      if (v22)
      {
        sub_29924EF30((a1 + 5), v22);
      }

      v33 = 32 * v19;
      *v33 = v51;
      *(v33 + 16) = v52;
      *(v33 + 24) = v6;
      v10 = 32 * v19 + 32;
      v34 = a1[5];
      v35 = a1[6] - v34;
      v36 = 32 * v19 - v35;
      memcpy((v33 - v35), v34, v35);
      v37 = a1[5];
      a1[5] = v36;
      a1[6] = v10;
      v38 = a1[7];
      a1[7] = 0;
      v57 = v37;
      v58 = v38;
      v55 = v37;
      v56 = v37;
      sub_29924EF78(&v55);
    }

    else
    {
      *v8 = v51;
      *(v8 + 16) = v52;
      *(v8 + 24) = v6;
      v10 = v8 + 32;
    }

    a1[6] = v10;
    return 1;
  }

  v50 = 0;
  v12 = (***a1)();
  v14 = a1 + 2;
  v13 = a1[2];
  if (v12)
  {
    v15 = (v13 + 24 * v50);
    v16 = v15[1];
    if (v16)
    {
      v17 = v15 + 1;
      do
      {
        if (*(v16 + 28) >= v6)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 28) < v6));
      }

      while (v16);
      if (v17 != v15 + 1 && *(v17 + 7) <= v6)
      {
        return 0;
      }
    }

    sub_2992D319C(v15, v6, &v53);
    return 1;
  }

  v23 = -1431655765 * ((a1[3] - v13) >> 3);
  v49 = v6;
  v50 = v23;
  sub_2992D311C(&v51, &v49, 1);
  v24 = a1[3];
  v25 = a1[4];
  if (v24 >= v25)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v14) >> 3);
    v30 = v29 + 1;
    if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2992CF20C();
    }

    v31 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v14) >> 3);
    if (2 * v31 > v30)
    {
      v30 = 2 * v31;
    }

    if (v31 >= 0x555555555555555)
    {
      v32 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v32 = v30;
    }

    v59 = a1 + 2;
    if (v32)
    {
      sub_2992CF224(v32);
    }

    v40 = 24 * v29;
    *v40 = v51;
    v41 = *(&v51 + 1);
    *(24 * v29 + 8) = *(&v51 + 1);
    v42 = 24 * v29 + 8;
    v43 = v52;
    *(v40 + 16) = v52;
    if (v43)
    {
      *(v41 + 16) = v42;
      *&v51 = &v51 + 8;
      *(&v51 + 1) = 0;
      v52 = 0;
    }

    else
    {
      *v40 = v42;
    }

    v39 = (v40 + 24);
    v44 = a1[2];
    v45 = a1[3];
    v46 = v40 + v44 - v45;
    sub_2992CF27C(v44, v45, v46);
    v47 = a1[2];
    a1[2] = v46;
    a1[3] = v39;
    v48 = a1[4];
    a1[4] = 0;
    v57 = v47;
    v58 = v48;
    v55 = v47;
    v56 = v47;
    sub_2992CF314(&v55);
  }

  else
  {
    *v24 = v51;
    v26 = *(&v51 + 1);
    v24[1] = *(&v51 + 1);
    v27 = v24 + 1;
    v28 = v52;
    v24[2] = v52;
    if (v28)
    {
      *(v26 + 16) = v27;
      *&v51 = &v51 + 8;
      *(&v51 + 1) = 0;
      v52 = 0;
    }

    else
    {
      *v24 = v27;
    }

    v39 = v24 + 3;
  }

  a1[3] = v39;
  sub_29921B8CC(&v51, *(&v51 + 1));
  return (*(**a1 + 80))(*a1, a2, v4, &v50);
}

uint64_t sub_2992CE304(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = 0;
  v7 = 2 * a3;
  if (!(***a1)(*a1, a2, 2 * a3, &v13))
  {
    return 1;
  }

  v8 = v13;
  v9 = a1[2] + 24 * v13;
  v10 = *(v9 + 8);
  if (!v10)
  {
    return 0;
  }

  v11 = v9 + 8;
  do
  {
    if (*(v10 + 28) >= a4)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 28) < a4));
  }

  while (v10);
  if (v11 == v9 + 8 || *(v11 + 28) > a4)
  {
    return 0;
  }

  --*(a1 + 2);
  sub_299280C44(v9, v11);
  operator delete(v11);
  if (!*(a1[2] + 24 * v8 + 16))
  {
    return (*(**a1 + 88))(*a1, a2, v7);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2992CE43C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if ((***a1)(*a1, a2, 2 * a3, &v5))
  {
    return a1[2] + 24 * v5;
  }

  else
  {
    return 0;
  }
}

void sub_2992CE4B4(uint64_t result, unsigned __int16 *a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  if (*(result + 8))
  {
    if (a4 == 512)
    {
      sub_2992CE4D8(result, a5);
    }

    else if (a3)
    {
      sub_2992CE5E0(result, a2, a3, a4, a5);
    }
  }
}

uint64_t sub_2992CE4D8(uint64_t result, uint64_t a2)
{
  v13 = 0;
  v2 = *(result + 16);
  v3 = *(result + 24) - v2;
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
LABEL_3:
    for (i = v2 + 24 * v6 + 8; ; i += 24)
    {
      v9 = *(i - 8);
      if (i != v9)
      {
        break;
      }

      if (v7 <= ++v6)
      {
        return result;
      }
    }

    while (1)
    {
      result = (*(a2 + 16))(a2, *(v9 + 7), &v13);
      if (v13)
      {
        break;
      }

      v10 = v9[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      v9 = v11;
      if (i == v11)
      {
        ++v6;
        v2 = *(v5 + 16);
        v7 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 24) - v2) >> 3);
        if (v7 > v6)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_2992CE5E0(uint64_t a1, unsigned __int16 *a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a4;
  v27 = *MEMORY[0x29EDCA608];
  v18 = a5;
  if ((a4 & 0x78) != 0 || (a4 & 0x82) == 0x82)
  {
    sub_2993C6C80(a2, a3, (a4 >> 2) & 0x3E, 0, 0, &v23);
    v15 = *a1;
    if ((v5 & 4) != 0)
    {
      v19 = &unk_2A1F6DC58;
      v20 = a1;
      v21 = &v18;
      v22 = &v19;
      ((*v15)[15])(v15, &v23, &v19);
    }

    else
    {
      v19 = &unk_2A1F6DC58;
      v20 = a1;
      v21 = &v18;
      v22 = &v19;
      if ((v5 & 2) != 0)
      {
        ((*v15)[17])(v15, &v23, &v19, 0xFFFFFFFFLL);
      }

      else
      {
        ((*v15)[13])(v15, &v23, &v19);
      }
    }

    sub_29922CF08(&v19);
    v23 = &unk_2A1F65C80;
    v19 = &v24;
    sub_29922CB20(&v19);
    return;
  }

  v7 = 2 * a3;
  if ((a4 & 4) != 0)
  {
    v16 = *a1;
    v23 = &unk_2A1F6DCD8;
    v24 = a1;
    v25 = &v18;
    v26 = &v23;
    ((*v16)[1])(v16, a2, v7, &v23);
LABEL_21:
    sub_29922D43C(&v23);
    return;
  }

  if ((a4 & 2) != 0)
  {
    v17 = *a1;
    v23 = &unk_2A1F6DCD8;
    v24 = a1;
    v25 = &v18;
    v26 = &v23;
    ((*v17)[2])(v17, a2, v7, &v23, 0xFFFFFFFFLL);
    goto LABEL_21;
  }

  LODWORD(v23) = 0;
  if ((***a1)())
  {
    LOBYTE(v19) = 0;
    v8 = (*(a1 + 16) + 24 * v23);
    v11 = *v8;
    v9 = v8 + 1;
    v10 = v11;
    if (v11 != v9)
    {
      do
      {
        (*(v18 + 16))(v18, *(v10 + 7), &v19);
        if (v19)
        {
          break;
        }

        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v9);
    }
  }
}

void sub_2992CE934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  sub_29922CF08(&a10);
  a14 = &unk_2A1F65C80;
  a10 = &a15;
  sub_29922CB20(&a10);
  _Unwind_Resume(a1);
}

void ***sub_2992CE99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 24))(&v5);
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = v5;
  v5 = 0;
  sub_2992B0C70((a2 + 8), v3);
  return sub_2992A5BA0(&v5);
}

void ***sub_2992CEA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 40))(&v5);
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = v5;
  v5 = 0;
  sub_2992B0C70((a2 + 8), v3);
  return sub_2992A5BA0(&v5);
}

uint64_t sub_2992CEA88(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v11 = 0;
    v3 = (*(result + 16) + 24 * a2);
    v6 = *v3;
    v4 = v3 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      do
      {
        result = (*(a3 + 16))(a3, *(v5 + 7), &v11);
        if (v11)
        {
          break;
        }

        v8 = v5[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v5[2];
            v10 = *v9 == v5;
            v5 = v9;
          }

          while (!v10);
        }

        v5 = v9;
      }

      while (v9 != v4);
    }
  }

  return result;
}

uint64_t sub_2992CEB38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[4] = *MEMORY[0x29EDCA608];
  v13 = a6;
  result = (*(**a1 + 32))(*a1, *(a2 + 8), a3);
  if (result)
  {
    v11 = *a1;
    v12 = *(a2 + 8);
    v14[0] = &unk_2A1F6DD58;
    v14[1] = &v13;
    v14[2] = a5;
    v14[3] = v14;
    (*(*v11 + 56))(v11, v12, v14, a4);
    return sub_29922D43C(v14);
  }

  return result;
}

void sub_2992CEC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29922D43C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CEC4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[0] = &unk_2A1F6DDD8;
  v5[1] = a1;
  v5[2] = a3;
  v5[3] = v5;
  (*(*v3 + 104))(v3, a2, v5);
  return sub_29922CF08(v5);
}

void sub_2992CECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29922CF08(va);
  _Unwind_Resume(a1);
}

void sub_2992CED0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5[0] = &unk_2A1F6DE58;
  v5[1] = a1;
  v5[2] = a4;
  v5[3] = v5;
  sub_2992D1F0C(v4, a2, v5, 1, a3);
}

void sub_2992CEDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992A7808(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992CEDB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v5[0] = &unk_2A1F6DED8;
  v5[1] = a1;
  v5[2] = a3;
  v5[3] = v5;
  (*(*v3 + 136))(v3, a2, v5);
  return sub_29922CF08(v5);
}

void sub_2992CEE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29922CF08(va);
  _Unwind_Resume(a1);
}

void sub_2992CEE74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6[0] = &unk_2A1F6E058;
  v6[1] = a1;
  v6[2] = a4;
  v6[3] = v6;
  sub_2992CEF14(v5, a2, a3, v6, a5);
}

void sub_2992CEF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992A7808(va);
  _Unwind_Resume(a1);
}

void sub_2992CEF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = off_2A1A9A148;
  if ((*off_2A1A9A148(&off_2A1A9A148) & 1) == 0)
  {
    v7 = off_2A1A9A130(&off_2A1A9A130);
    sub_2992A6BEC(v7, 256);
    _tlv_atexit(sub_2992A65C8, v7);
    *v5(&off_2A1A9A148) = 1;
  }

  v6 = off_2A1A9A178;
  if ((*off_2A1A9A178(&off_2A1A9A178) & 1) == 0)
  {
    v8 = off_2A1A9A160(&off_2A1A9A160);
    sub_2992A6C9C(v8, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v8);
    *v6(&off_2A1A9A178) = 1;
  }

  v9 = 0;
  operator new();
}

void sub_2992CF15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void **);
  v20 = va_arg(va1, void);
  sub_2992A5BA0(va);
  sub_2992D2E9C(va1);
  _Unwind_Resume(a1);
}

void sub_2992CF180(void ***a1)
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
        v6 = v4 - 3;
        sub_29921B8CC((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2992CF224(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992CF27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = 0;
    do
    {
      v6 = (a3 + v5);
      *v6 = *(a1 + v5);
      v7 = (a1 + v5 + 8);
      v8 = *v7;
      *(a3 + v5 + 8) = *v7;
      v9 = a3 + v5 + 8;
      v10 = *(a1 + v5 + 16);
      v6[2] = v10;
      if (v10)
      {
        *(v8 + 16) = v9;
        *(a1 + v5) = v7;
        *v7 = 0;
        *(a1 + v5 + 16) = 0;
      }

      else
      {
        *v6 = v9;
      }

      v5 += 24;
    }

    while (a1 + v5 != a2);
    do
    {
      sub_29921B8CC(v4, *(v4 + 8));
      v4 += 24;
    }

    while (v4 != a2);
  }
}

uint64_t sub_2992CF314(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_29921B8CC(i - 24, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992CF368(char *a1, void **a2, uint64_t a3, char a4)
{
  v226 = *MEMORY[0x29EDCA608];
  while (2)
  {
    v7 = a2 - 4;
    v216 = a2 - 1;
    v217 = (a2 - 8);
    v8 = a2 - 12;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v9;
        v10 = (a2 - v9) >> 5;
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              v147 = sub_29920B9DC(v9 + 4, v9);
              v148 = sub_29920B9DC(a2 - 4, v9 + 32);
              if (v147 < 0)
              {
                if (v148 < 0)
                {
                  v153 = (v9 + 24);
                  v213 = *v9;
                  v222 = *(v9 + 2);
                  *__p = v213;
                  v214 = *v7;
                  *(v9 + 2) = v7[2];
                  *v9 = v214;
                  v210 = *__p;
                  v211 = v222;
                }

                else
                {
                  v208 = *v9;
                  v222 = *(v9 + 2);
                  *__p = v208;
                  *v9 = *(v9 + 2);
                  *(v9 + 2) = *(v9 + 6);
                  *(v9 + 2) = *__p;
                  *(v9 + 6) = v222;
                  v153 = (v9 + 56);
                  v209 = *(v9 + 6);
                  *(v9 + 6) = *(v9 + 14);
                  *(v9 + 14) = v209;
                  if ((sub_29920B9DC(v7, v9 + 32) & 0x80) == 0)
                  {
                    return;
                  }

                  v210 = *(v9 + 2);
                  *__p = v210;
                  v211 = *(v9 + 6);
                  v222 = v211;
                  v212 = v7[2];
                  *(v9 + 2) = *v7;
                  *(v9 + 6) = v212;
                }

                v7[2] = v211;
                *v7 = v210;
              }

              else
              {
                if ((v148 & 0x80000000) == 0)
                {
                  return;
                }

                *__p = *(v9 + 2);
                v149 = *__p;
                v222 = *(v9 + 6);
                v150 = v222;
                v151 = *(a2 - 2);
                *(v9 + 2) = *v7;
                *(v9 + 6) = v151;
                *(a2 - 2) = v150;
                *v7 = v149;
                LODWORD(v150) = *(v9 + 14);
                v216 = (v9 + 56);
                *(v9 + 14) = *(a2 - 2);
                *(a2 - 2) = v150;
                if ((sub_29920B9DC(v9 + 4, v9) & 0x80) == 0)
                {
                  return;
                }

                v152 = *v9;
                v222 = *(v9 + 2);
                *__p = v152;
                *v9 = *(v9 + 2);
                *(v9 + 2) = *(v9 + 6);
                *(v9 + 2) = *__p;
                *(v9 + 6) = v222;
                v153 = (v9 + 24);
              }

              v215 = *v153;
              *v153 = *v216;
              *v216 = v215;
              return;
            case 4:
              sub_2992D06E8(v9, v9 + 4, v9 + 8, a2 - 2);
              return;
            case 5:
              sub_2992D0924(v9, v9 + 4, v9 + 8, v9 + 6, a2 - 2);
              return;
          }
        }

        else
        {
          if (v10 < 2)
          {
            return;
          }

          if (v10 == 2)
          {
            v142 = sub_29920B9DC(a2 - 4, v9);
            if (v142 < 0)
            {
              v143 = *v9;
              v222 = *(v9 + 2);
              *__p = v143;
              v144 = *v7;
              *(v9 + 2) = *(a2 - 2);
              *v9 = v144;
              v145 = *__p;
              *(a2 - 2) = v222;
              *v7 = v145;
              v146 = *(v9 + 6);
              *(v9 + 6) = *(a2 - 2);
              *(a2 - 2) = v146;
            }

            return;
          }
        }

        if (v10 <= 23)
        {
          if (a4)
          {
            if (v9 != a2)
            {
              v154 = (v9 + 32);
              if (v9 + 32 != a2)
              {
                v155 = 0;
                v156 = v9;
                do
                {
                  v157 = v154;
                  if ((sub_29920B9DC(v154, v156) & 0x80) != 0)
                  {
                    v158 = *v157;
                    v222 = v157[2];
                    *__p = v158;
                    v157[1] = 0;
                    v157[2] = 0;
                    *v157 = 0;
                    v223 = *(v156 + 14);
                    v159 = v155;
                    while (1)
                    {
                      v160 = &v9[v159];
                      if (v9[v159 + 55] < 0)
                      {
                        operator delete(*(v160 + 4));
                      }

                      *(v160 + 2) = *v160;
                      *(v160 + 6) = *(v160 + 2);
                      v160[23] = 0;
                      *v160 = 0;
                      *(v160 + 14) = *(v160 + 6);
                      if (!v159)
                      {
                        break;
                      }

                      v159 -= 32;
                      if ((sub_29920B9DC(__p, &v9[v159]) & 0x80) == 0)
                      {
                        v161 = &v9[v159 + 32];
                        goto LABEL_138;
                      }
                    }

                    v161 = v9;
LABEL_138:
                    if (*(v161 + 23) < 0)
                    {
                      operator delete(*v161);
                    }

                    v162 = *__p;
                    *(v161 + 16) = v222;
                    *v161 = v162;
                    *(v161 + 24) = v223;
                  }

                  v154 = v157 + 4;
                  v155 += 32;
                  v156 = v157;
                }

                while (v157 + 4 != a2);
              }
            }
          }

          else if (v9 != a2)
          {
            v198 = (v9 + 32);
            if (v9 + 32 != a2)
            {
              v199 = v9 + 56;
              do
              {
                v200 = v198;
                if ((sub_29920B9DC(v198, a1) & 0x80) != 0)
                {
                  v201 = *v200;
                  v222 = v200[2];
                  *__p = v201;
                  v200[1] = 0;
                  v200[2] = 0;
                  *v200 = 0;
                  v223 = *(a1 + 14);
                  v202 = v199;
                  do
                  {
                    v203 = (v202 - 6);
                    if (*(v202 - 1) < 0)
                    {
                      operator delete(*v203);
                    }

                    *v203 = *(v202 - 14);
                    *(v202 - 1) = *(v202 - 5);
                    *(v202 - 33) = 0;
                    *(v202 - 56) = 0;
                    v204 = v202 - 8;
                    *v202 = *(v202 - 8);
                    v205 = sub_29920B9DC(__p, v202 - 88);
                    v202 -= 8;
                  }

                  while (v205 < 0);
                  v206 = (v204 - 6);
                  if (*(v204 - 1) < 0)
                  {
                    operator delete(*v206);
                  }

                  v207 = *__p;
                  *(v204 - 1) = v222;
                  *v206 = v207;
                  HIBYTE(v222) = 0;
                  LOBYTE(__p[0]) = 0;
                  *v204 = v223;
                }

                v198 = v200 + 4;
                v199 += 32;
                a1 = v200;
              }

              while (v200 + 4 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v9 != a2)
          {
            v163 = v11 >> 1;
            v164 = v11 >> 1;
            do
            {
              v165 = v164;
              if (v163 >= v164)
              {
                v166 = (2 * v164) | 1;
                v167 = &a1[32 * v166];
                if (2 * v164 + 2 < v10 && (sub_29920B9DC(&a1[32 * v166], v167 + 32) & 0x80u) != 0)
                {
                  v167 += 32;
                  v166 = 2 * v165 + 2;
                }

                v168 = &a1[32 * v165];
                if ((sub_29920B9DC(v167, v168) & 0x80) == 0)
                {
                  v169 = *v168;
                  v222 = *(v168 + 2);
                  *__p = v169;
                  *(v168 + 1) = 0;
                  *(v168 + 2) = 0;
                  *v168 = 0;
                  v223 = *(v168 + 6);
                  do
                  {
                    v170 = v167;
                    if (v168[23] < 0)
                    {
                      operator delete(*v168);
                    }

                    v171 = *v167;
                    *(v168 + 2) = *(v167 + 2);
                    *v168 = v171;
                    v167[23] = 0;
                    *v167 = 0;
                    *(v168 + 6) = *(v167 + 6);
                    if (v163 < v166)
                    {
                      break;
                    }

                    v172 = (2 * v166) | 1;
                    v167 = &a1[32 * v172];
                    v173 = 2 * v166 + 2;
                    if (v173 < v10 && (sub_29920B9DC(&a1[32 * v172], v167 + 32) & 0x80u) != 0)
                    {
                      v167 += 32;
                      v172 = v173;
                    }

                    v168 = v170;
                    v166 = v172;
                  }

                  while ((sub_29920B9DC(v167, __p) & 0x80) == 0);
                  if (v170[23] < 0)
                  {
                    operator delete(*v170);
                  }

                  v174 = *__p;
                  *(v170 + 2) = v222;
                  *v170 = v174;
                  *(v170 + 6) = v223;
                }
              }

              v164 = v165 - 1;
            }

            while (v165);
            do
            {
              v175 = 0;
              v176 = a2;
              v177 = *a1;
              *&v224 = *(a1 + 1);
              *(&v224 + 7) = *(a1 + 15);
              v220 = a1[23];
              *(a1 + 1) = 0;
              *(a1 + 2) = 0;
              *a1 = 0;
              v218 = *(a1 + 6);
              v178 = a1;
              do
              {
                v179 = &v178[32 * v175];
                v180 = v179 + 32;
                v181 = 2 * v175;
                v175 = (2 * v175) | 1;
                v182 = v181 + 2;
                if (v181 + 2 < v10)
                {
                  v183 = v179 + 64;
                  if ((sub_29920B9DC(v179 + 4, v179 + 64) & 0x80u) != 0)
                  {
                    v180 = v183;
                    v175 = v182;
                  }
                }

                if (v178[23] < 0)
                {
                  operator delete(*v178);
                }

                v184 = *v180;
                *(v178 + 2) = *(v180 + 2);
                *v178 = v184;
                v180[23] = 0;
                *v180 = 0;
                *(v178 + 6) = *(v180 + 6);
                v178 = v180;
              }

              while (v175 <= ((v10 - 2) >> 1));
              a2 = v176 - 4;
              v185 = v180[23];
              if (v180 == (v176 - 4))
              {
                if (v185 < 0)
                {
                  operator delete(*v180);
                }

                *v180 = v177;
                v197 = *(&v224 + 7);
                *(v180 + 1) = v224;
                *(v180 + 15) = v197;
                v180[23] = v220;
                *(v180 + 6) = v218;
              }

              else
              {
                if (v185 < 0)
                {
                  operator delete(*v180);
                }

                v186 = *a2;
                *(v180 + 2) = *(v176 - 2);
                *v180 = v186;
                *(v176 - 9) = 0;
                *(v176 - 32) = 0;
                *(v180 + 6) = *(v176 - 2);
                if (*(v176 - 9) < 0)
                {
                  operator delete(*a2);
                }

                *(v176 - 4) = v177;
                v187 = v224;
                *(v176 - 17) = *(&v224 + 7);
                *(v176 - 3) = v187;
                *(v176 - 9) = v220;
                *(v176 - 2) = v218;
                v188 = (v180 + 32 - a1) >> 5;
                v189 = v188 < 2;
                v190 = v188 - 2;
                if (!v189)
                {
                  v191 = v190 >> 1;
                  v192 = &a1[32 * (v190 >> 1)];
                  if ((sub_29920B9DC(v192, v180) & 0x80) != 0)
                  {
                    v193 = *v180;
                    v222 = *(v180 + 2);
                    *__p = v193;
                    *(v180 + 1) = 0;
                    *(v180 + 2) = 0;
                    *v180 = 0;
                    v223 = *(v180 + 6);
                    do
                    {
                      v194 = v192;
                      if (v180[23] < 0)
                      {
                        operator delete(*v180);
                      }

                      v195 = *v192;
                      *(v180 + 2) = *(v192 + 2);
                      *v180 = v195;
                      v192[23] = 0;
                      *v192 = 0;
                      *(v180 + 6) = *(v192 + 6);
                      if (!v191)
                      {
                        break;
                      }

                      v191 = (v191 - 1) >> 1;
                      v192 = &a1[32 * v191];
                      v180 = v194;
                    }

                    while ((sub_29920B9DC(v192, __p) & 0x80) != 0);
                    if (v194[23] < 0)
                    {
                      operator delete(*v194);
                    }

                    v196 = *__p;
                    *(v194 + 2) = v222;
                    *v194 = v196;
                    *(v194 + 6) = v223;
                  }
                }
              }

              v189 = v10-- <= 2;
            }

            while (!v189);
          }

          return;
        }

        v12 = &v9[32 * (v10 >> 1)];
        if (v10 >= 0x81)
        {
          v13 = sub_29920B9DC(&a1[32 * (v10 >> 1)], a1);
          v14 = sub_29920B9DC(a2 - 4, &a1[32 * (v10 >> 1)]);
          if (v13 < 0)
          {
            if (v14 < 0)
            {
              v23 = a1 + 24;
              v47 = *a1;
              v222 = *(a1 + 2);
              *__p = v47;
              v48 = *v7;
              *(a1 + 2) = *(a2 - 2);
              *a1 = v48;
            }

            else
            {
              v35 = *a1;
              v222 = *(a1 + 2);
              *__p = v35;
              v36 = *v12;
              *(a1 + 2) = *(v12 + 2);
              *a1 = v36;
              v37 = *__p;
              *(v12 + 2) = v222;
              *v12 = v37;
              v23 = v12 + 24;
              v38 = *(a1 + 6);
              *(a1 + 6) = *(v12 + 6);
              *(v12 + 6) = v38;
              if ((sub_29920B9DC(a2 - 4, v12) & 0x80) == 0)
              {
                goto LABEL_30;
              }

              v39 = *v12;
              v222 = *(v12 + 2);
              *__p = v39;
              v40 = *v7;
              *(v12 + 2) = *(a2 - 2);
              *v12 = v40;
            }

            v49 = *__p;
            *(a2 - 2) = v222;
            *v7 = v49;
            v19 = a2 - 1;
          }

          else
          {
            if ((v14 & 0x80000000) == 0 || (v15 = *v12, v222 = *(v12 + 2), *__p = v15, v16 = *v7, *(v12 + 2) = *(a2 - 2), *v12 = v16, v17 = *__p, *(a2 - 2) = v222, *v7 = v17, v19 = (v12 + 24), v18 = *(v12 + 6), *(v12 + 6) = *(a2 - 2), *(a2 - 2) = v18, (sub_29920B9DC(&a1[32 * (v10 >> 1)], a1) & 0x80) == 0))
            {
LABEL_30:
              v51 = v12 - 32;
              v52 = sub_29920B9DC(v12 - 4, a1 + 32);
              v53 = sub_29920B9DC(v217, v12 - 32);
              if (v52 < 0)
              {
                v62 = a1 + 56;
                if (v53 < 0)
                {
                  *__p = *(a1 + 2);
                  v72 = *__p;
                  v222 = *(a1 + 6);
                  v73 = v222;
                  v74 = *(a2 - 6);
                  *(a1 + 2) = *v217;
                  *(a1 + 6) = v74;
                  *(a2 - 6) = v73;
                  *v217 = v72;
                }

                else
                {
                  *__p = *(a1 + 2);
                  v63 = *__p;
                  v222 = *(a1 + 6);
                  v64 = v222;
                  v65 = *(v12 - 2);
                  *(a1 + 2) = *v51;
                  *(a1 + 6) = v65;
                  *(v12 - 2) = v64;
                  *v51 = v63;
                  LODWORD(v65) = *v62;
                  *v62 = *(v12 - 2);
                  *(v12 - 2) = v65;
                  if ((sub_29920B9DC(v217, v12 - 32) & 0x80) == 0)
                  {
                    goto LABEL_42;
                  }

                  v66 = *v51;
                  v222 = *(v12 - 2);
                  *__p = v66;
                  v67 = *v217;
                  *(v12 - 2) = *(a2 - 6);
                  *v51 = v67;
                  v68 = *__p;
                  *(a2 - 6) = v222;
                  *v217 = v68;
                  v62 = v12 - 8;
                }

                v58 = a2 - 5;
              }

              else
              {
                if ((v53 & 0x80000000) == 0 || (v54 = *v51, v222 = *(v12 - 2), *__p = v54, v55 = *v217, *(v12 - 2) = *(a2 - 6), *v51 = v55, v56 = *__p, *(a2 - 6) = v222, *v217 = v56, v58 = (v12 - 8), v57 = *(v12 - 2), *(v12 - 2) = *(a2 - 10), *(a2 - 10) = v57, (sub_29920B9DC(v12 - 4, a1 + 32) & 0x80) == 0))
                {
LABEL_42:
                  v76 = v12 + 32;
                  v77 = sub_29920B9DC(v12 + 4, a1 + 64);
                  v78 = sub_29920B9DC(a2 - 12, v12 + 32);
                  if (v77 < 0)
                  {
                    v87 = a1 + 88;
                    if (v78 < 0)
                    {
                      *__p = *(a1 + 4);
                      v94 = *__p;
                      v222 = *(a1 + 10);
                      v95 = v222;
                      v96 = *(a2 - 10);
                      *(a1 + 4) = *v8;
                      *(a1 + 10) = v96;
                      *(a2 - 10) = v95;
                      *v8 = v94;
                    }

                    else
                    {
                      *__p = *(a1 + 4);
                      v88 = *__p;
                      v222 = *(a1 + 10);
                      v89 = v222;
                      v90 = *(v12 + 6);
                      *(a1 + 4) = *v76;
                      *(a1 + 10) = v90;
                      *(v12 + 6) = v89;
                      *v76 = v88;
                      LODWORD(v90) = *v87;
                      *v87 = *(v12 + 14);
                      *(v12 + 14) = v90;
                      if ((sub_29920B9DC(a2 - 12, v12 + 32) & 0x80) == 0)
                      {
                        goto LABEL_52;
                      }

                      v91 = *v76;
                      v222 = *(v12 + 6);
                      *__p = v91;
                      v92 = *v8;
                      *(v12 + 6) = *(a2 - 10);
                      *v76 = v92;
                      v93 = *__p;
                      *(a2 - 10) = v222;
                      *v8 = v93;
                      v87 = v12 + 56;
                    }

                    v83 = a2 - 9;
                  }

                  else
                  {
                    if ((v78 & 0x80000000) == 0 || (v79 = *v76, v222 = *(v12 + 6), *__p = v79, v80 = *v8, *(v12 + 6) = *(a2 - 10), *v76 = v80, v81 = *__p, *(a2 - 10) = v222, *v8 = v81, v83 = (v12 + 56), v82 = *(v12 + 14), *(v12 + 14) = *(a2 - 18), *(a2 - 18) = v82, (sub_29920B9DC(v12 + 4, a1 + 64) & 0x80) == 0))
                    {
LABEL_52:
                      v98 = sub_29920B9DC(v12, v12 - 32);
                      v99 = sub_29920B9DC(v12 + 4, v12);
                      if (v98 < 0)
                      {
                        if (v99 < 0)
                        {
                          v106 = v12 - 8;
                          v111 = *v51;
                          v222 = *(v12 - 2);
                          *__p = v111;
                          *v51 = *v76;
                          *(v12 - 2) = *(v12 + 6);
                        }

                        else
                        {
                          v107 = *v51;
                          v222 = *(v12 - 2);
                          *__p = v107;
                          *v51 = *v12;
                          *(v12 - 2) = *(v12 + 2);
                          v108 = *__p;
                          *(v12 + 2) = v222;
                          *v12 = v108;
                          v106 = v12 + 24;
                          v109 = *(v12 - 2);
                          *(v12 - 2) = *(v12 + 6);
                          *(v12 + 6) = v109;
                          if ((sub_29920B9DC(v12 + 4, v12) & 0x80) == 0)
                          {
LABEL_62:
                            v114 = *a1;
                            v222 = *(a1 + 2);
                            *__p = v114;
                            v115 = *v12;
                            *(a1 + 2) = *(v12 + 2);
                            *a1 = v115;
                            v116 = *__p;
                            *(v12 + 2) = v222;
                            *v12 = v116;
                            v34 = a1 + 24;
                            v30 = v12 + 24;
                            goto LABEL_63;
                          }

                          v110 = *v12;
                          v222 = *(v12 + 2);
                          *__p = v110;
                          *v12 = *v76;
                          *(v12 + 2) = *(v12 + 6);
                        }

                        v112 = *__p;
                        *(v12 + 6) = v222;
                        *v76 = v112;
                        v103 = v12 + 56;
                      }

                      else
                      {
                        if ((v99 & 0x80000000) == 0)
                        {
                          goto LABEL_62;
                        }

                        v100 = *v12;
                        v222 = *(v12 + 2);
                        *__p = v100;
                        *v12 = *v76;
                        *(v12 + 2) = *(v12 + 6);
                        v101 = *__p;
                        *(v12 + 6) = v222;
                        *v76 = v101;
                        v103 = v12 + 24;
                        v102 = *(v12 + 6);
                        *(v12 + 6) = *(v12 + 14);
                        *(v12 + 14) = v102;
                        if ((sub_29920B9DC(v12, v12 - 32) & 0x80) == 0)
                        {
                          goto LABEL_62;
                        }

                        v104 = *v51;
                        v222 = *(v12 - 2);
                        *__p = v104;
                        *v51 = *v12;
                        *(v12 - 2) = *(v12 + 2);
                        v105 = *__p;
                        *(v12 + 2) = v222;
                        *v12 = v105;
                        v106 = v12 - 8;
                      }

                      v113 = *v106;
                      *v106 = *v103;
                      *v103 = v113;
                      goto LABEL_62;
                    }

                    *__p = *(a1 + 4);
                    v84 = *__p;
                    v222 = *(a1 + 10);
                    v85 = v222;
                    v86 = *(v12 + 6);
                    *(a1 + 4) = *v76;
                    *(a1 + 10) = v86;
                    *(v12 + 6) = v85;
                    *v76 = v84;
                    v87 = a1 + 88;
                  }

                  v97 = *v87;
                  *v87 = *v83;
                  *v83 = v97;
                  goto LABEL_52;
                }

                *__p = *(a1 + 2);
                v59 = *__p;
                v222 = *(a1 + 6);
                v60 = v222;
                v61 = *(v12 - 2);
                *(a1 + 2) = *v51;
                *(a1 + 6) = v61;
                *(v12 - 2) = v60;
                *v51 = v59;
                v62 = a1 + 56;
              }

              v75 = *v62;
              *v62 = *v58;
              *v58 = v75;
              goto LABEL_42;
            }

            v20 = *a1;
            v222 = *(a1 + 2);
            *__p = v20;
            v21 = *v12;
            *(a1 + 2) = *(v12 + 2);
            *a1 = v21;
            v22 = *__p;
            *(v12 + 2) = v222;
            *v12 = v22;
            v23 = a1 + 24;
          }

          v50 = *v23;
          *v23 = *v19;
          *v19 = v50;
          goto LABEL_30;
        }

        v24 = sub_29920B9DC(a1, &a1[32 * (v10 >> 1)]);
        v25 = sub_29920B9DC(a2 - 4, a1);
        if (v24 < 0)
        {
          if (v25 < 0)
          {
            v34 = v12 + 24;
            v69 = *v12;
            v222 = *(v12 + 2);
            *__p = v69;
            v70 = *v7;
            *(v12 + 2) = *(a2 - 2);
            *v12 = v70;
          }

          else
          {
            v41 = *v12;
            v222 = *(v12 + 2);
            *__p = v41;
            v42 = *a1;
            *(v12 + 2) = *(a1 + 2);
            *v12 = v42;
            v43 = *__p;
            *(a1 + 2) = v222;
            *a1 = v43;
            v34 = a1 + 24;
            v44 = *(v12 + 6);
            *(v12 + 6) = *(a1 + 6);
            *(a1 + 6) = v44;
            if ((sub_29920B9DC(a2 - 4, a1) & 0x80) == 0)
            {
              goto LABEL_64;
            }

            v45 = *a1;
            v222 = *(a1 + 2);
            *__p = v45;
            v46 = *v7;
            *(a1 + 2) = *(a2 - 2);
            *a1 = v46;
          }

          v71 = *__p;
          *(a2 - 2) = v222;
          *v7 = v71;
          v30 = (a2 - 1);
          goto LABEL_63;
        }

        if (v25 < 0)
        {
          v26 = *a1;
          v222 = *(a1 + 2);
          *__p = v26;
          v27 = *v7;
          *(a1 + 2) = *(a2 - 2);
          *a1 = v27;
          v28 = *__p;
          *(a2 - 2) = v222;
          *v7 = v28;
          v30 = a1 + 24;
          v29 = *(a1 + 6);
          *(a1 + 6) = *(a2 - 2);
          *(a2 - 2) = v29;
          if ((sub_29920B9DC(a1, v12) & 0x80) != 0)
          {
            v31 = *v12;
            v222 = *(v12 + 2);
            *__p = v31;
            v32 = *a1;
            *(v12 + 2) = *(a1 + 2);
            *v12 = v32;
            v33 = *__p;
            *(a1 + 2) = v222;
            *a1 = v33;
            v34 = v12 + 24;
LABEL_63:
            v117 = *v34;
            *v34 = *v30;
            *v30 = v117;
          }
        }

LABEL_64:
        --a3;
        if ((a4 & 1) != 0 || (sub_29920B9DC(a1 - 4, a1) & 0x80) != 0)
        {
          break;
        }

        v131 = *a1;
        v222 = *(a1 + 2);
        *__p = v131;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *a1 = 0;
        v223 = *(a1 + 6);
        if ((sub_29920B9DC(__p, a2 - 32) & 0x80) != 0)
        {
          v9 = a1;
          do
          {
            v9 += 32;
          }

          while ((sub_29920B9DC(__p, v9) & 0x80) == 0);
        }

        else
        {
          v132 = a1 + 32;
          do
          {
            v9 = v132;
            if (v132 >= a2)
            {
              break;
            }

            v133 = sub_29920B9DC(__p, v132);
            v132 = v9 + 32;
          }

          while ((v133 & 0x80) == 0);
        }

        v134 = a2;
        if (v9 < a2)
        {
          v134 = a2;
          do
          {
            v134 -= 4;
          }

          while ((sub_29920B9DC(__p, v134) & 0x80) != 0);
        }

        while (v9 < v134)
        {
          v135 = *v9;
          v225 = *(v9 + 2);
          v224 = v135;
          v136 = *v134;
          *(v9 + 2) = v134[2];
          *v9 = v136;
          v137 = v224;
          v134[2] = v225;
          *v134 = v137;
          v138 = *(v9 + 6);
          *(v9 + 6) = *(v134 + 6);
          *(v134 + 6) = v138;
          do
          {
            v9 += 32;
          }

          while ((sub_29920B9DC(__p, v9) & 0x80) == 0);
          do
          {
            v134 -= 4;
          }

          while ((sub_29920B9DC(__p, v134) & 0x80) != 0);
        }

        v139 = (v9 - 32);
        if (v9 - 32 != a1)
        {
          if (a1[23] < 0)
          {
            operator delete(*a1);
          }

          v140 = *v139;
          *(a1 + 2) = *(v9 - 2);
          *a1 = v140;
          *(v9 - 9) = 0;
          *(v9 - 32) = 0;
          *(a1 + 6) = *(v9 - 2);
        }

        if (*(v9 - 9) < 0)
        {
          operator delete(*v139);
        }

        v141 = *__p;
        *(v9 - 2) = v222;
        *v139 = v141;
        HIBYTE(v222) = 0;
        LOBYTE(__p[0]) = 0;
        *(v9 - 2) = v223;
        if (SHIBYTE(v222) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_92:
        a4 = 0;
      }

      v118 = 0;
      v119 = *a1;
      v222 = *(a1 + 2);
      *__p = v119;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      v223 = *(a1 + 6);
      do
      {
        v118 += 32;
      }

      while ((sub_29920B9DC(&a1[v118], __p) & 0x80) != 0);
      v120 = &a1[v118];
      v121 = a2;
      if (v118 == 32)
      {
        v121 = a2;
        do
        {
          if (v120 >= v121)
          {
            break;
          }

          v121 -= 4;
        }

        while ((sub_29920B9DC(v121, __p) & 0x80) == 0);
      }

      else
      {
        do
        {
          v121 -= 4;
        }

        while ((sub_29920B9DC(v121, __p) & 0x80) == 0);
      }

      v9 = &a1[v118];
      if (v120 < v121)
      {
        v122 = v121;
        do
        {
          v123 = *v9;
          v225 = *(v9 + 2);
          v224 = v123;
          v124 = *v122;
          *(v9 + 2) = v122[2];
          *v9 = v124;
          v125 = v224;
          v122[2] = v225;
          *v122 = v125;
          v126 = *(v9 + 6);
          *(v9 + 6) = *(v122 + 6);
          *(v122 + 6) = v126;
          do
          {
            v9 += 32;
          }

          while ((sub_29920B9DC(v9, __p) & 0x80) != 0);
          do
          {
            v122 -= 4;
          }

          while ((sub_29920B9DC(v122, __p) & 0x80) == 0);
        }

        while (v9 < v122);
      }

      v127 = (v9 - 32);
      if (v9 - 32 != a1)
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v128 = *v127;
        *(a1 + 2) = *(v9 - 2);
        *a1 = v128;
        *(v9 - 9) = 0;
        *(v9 - 32) = 0;
        *(a1 + 6) = *(v9 - 2);
      }

      if (*(v9 - 9) < 0)
      {
        operator delete(*v127);
      }

      v129 = *__p;
      *(v9 - 2) = v222;
      *v127 = v129;
      HIBYTE(v222) = 0;
      LOBYTE(__p[0]) = 0;
      *(v9 - 2) = v223;
      if (SHIBYTE(v222) < 0)
      {
        operator delete(__p[0]);
      }

      if (v120 < v121)
      {
LABEL_91:
        sub_2992CF368(a1, v9 - 4, a3, a4 & 1);
        goto LABEL_92;
      }

      v130 = sub_2992D0A70(a1, v9 - 2);
      if (sub_2992D0A70(v9, a2))
      {
        break;
      }

      if (!v130)
      {
        goto LABEL_91;
      }
    }

    a2 = (v9 - 32);
    if (!v130)
    {
      continue;
    }

    break;
  }
}