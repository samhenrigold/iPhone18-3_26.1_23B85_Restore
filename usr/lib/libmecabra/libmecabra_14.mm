void sub_29925A9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29925AA0C(uint64_t a1, const char *a2, const __CFString *a3, uint64_t a4)
{
  if (a2 != 1)
  {
    return 0;
  }

  block[15] = v4;
  block[16] = v5;
  if (a4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = a1 + 16;
  do
  {
    v11 = *(v9 + 32);
    v12 = v11 >= v8;
    v13 = v11 < v8;
    if (v12)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * v13);
  }

  while (v9);
  if (v10 != a1 + 16 && v8 >= *(v10 + 32))
  {
    v19 = *(v10 + 40);
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
LABEL_41:
    if (!*(a1 + 32))
    {
      return 0;
    }

    if (a4)
    {
      v14 = @"com.apple.keyboard.NewWords.zh_Hans.10Key";
      v15 = objc_msgSend_length(@"com.apple.keyboard.NewWords.zh_Hans.10Key", a2, a3, a4);
    }

    else
    {
      v14 = @"com.apple.keyboard.NewWords.zh_Hans.Qwerty";
      v15 = objc_msgSend_length(@"com.apple.keyboard.NewWords.zh_Hans.Qwerty", a2, a3, a4);
    }

    if (!v15)
    {
      return 0;
    }

    v16 = objc_alloc(*(a1 + 32));
    v19 = objc_msgSend_initWithKey_(v16, v17, v14, v18);
    v20 = *(a1 + 16);
    if (!v20)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v21 = v20;
        v22 = *(v20 + 32);
        if (v22 <= v8)
        {
          break;
        }

        v20 = *v21;
        if (!*v21)
        {
          goto LABEL_24;
        }
      }

      if (v22 >= v8)
      {
        break;
      }

      v20 = v21[1];
      if (!v20)
      {
        goto LABEL_24;
      }
    }

    v21[5] = v19;
    if (!v19)
    {
      return 0;
    }
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  result = 0;
  if (!a3 || !*a1)
  {
    return result;
  }

  if (CFStringGetLength(a3) < 1)
  {
    return 0;
  }

  CFRetain(a3);
  v24 = v19;
  v25 = *(a1 + 48);
  if (v25 != a3)
  {
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 48) = 0;
    }

    *(a1 + 48) = CFRetain(a3);
  }

  v26 = *a1;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29925A868;
  block[3] = &unk_29EF0FDA8;
  block[4] = v19;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v26, block);
  return 1;
}

void *sub_29925AC58(void *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  ++*(*(result[6] + 8) + 24);
  if (a2)
  {
    v8 = result[4];
    v9 = result[5];
    v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], a2, *(*(result[6] + 8) + 24), a4, a5, a6, a7);
    v13 = objc_msgSend_word_atPosition_(v9, v11, a2, v10);

    return objc_msgSend_addObject_(v8, v12, v13, v14);
  }

  else
  {
    *(*(result[7] + 8) + 24) = 0;
    *a7 = 1;
  }

  return result;
}

void *sub_29925ACF8(void *a1, const void *a2, const void *a3)
{
  *a1 = &unk_2A1F66DC0;
  v6 = sub_29933BEB8(a1, &off_2A1F68670);
  *v6 = &unk_2A1F68420;
  v6[3] = &unk_2A1F68660;
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  a1[4] = v7;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  a1[5] = v8;
  return a1;
}

uint64_t sub_29925ADC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_29925AE04(uint64_t a1)
{
  sub_29925ADC0(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29925AE54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_2A1460328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460328))
  {
    qword_2A1460320 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    __cxa_guard_release(&qword_2A1460328);
  }

  v6 = objc_msgSend_objectForKey_(qword_2A1460320, a2, v4, a4);
  if (!v6)
  {
    v6 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x29EDB8DC0], v5, v4, @"category");
    objc_msgSend_setValue_forKey_(qword_2A1460320, v7, v6, v4);
  }

  return v6;
}

const __CFString *sub_29925B08C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return sub_299279FBC(result);
  }

  return result;
}

uint64_t sub_29925B164(void **a1, char *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  if (a2[224])
  {
    return 0;
  }

  v5 = (*(*a2 + 416))(a2);
  v6 = (*(*a1[1] + 232))(a1[1]);
  v27 = v5;
  v7 = sub_299322E10(v5, v6);
  v8 = *(a2 + 8);
  v9 = a2[87];
  v10 = *(a2 + 9);
  v11 = (*(*a2 + 304))(a2);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  if (v11[1] == *v11)
  {
    v24 = 0;
    v23 = 0;
    v2 = 0;
  }

  else
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = v7;
    v2 = 0;
    if ((v9 & 0x80u) != 0)
    {
      v16 = v10;
    }

    else
    {
      v8 = a2 + 64;
      v16 = v9;
    }

    v26 = &v8[2 * v16];
    v17 = v15;
    v18 = v15 | 4;
    do
    {
      v19 = (*(*a2 + 48))(a2);
      if (v14 == v19 - (*(*a2 + 376))(a2))
      {
        v20 = v18;
      }

      else
      {
        v20 = v17;
      }

      v21 = ((*a1)[3])(a1, v8, (v26 - v8) >> 1, *v12 + v13, v20, v35, 510, v27);
      if (v21 >= 2)
      {
        v22 = v21 >> 1;
        sub_299217A18(&v32, v35, v21 >> 1);
      }

      else
      {
        v22 = (*(*a2 + 312))(a2, v14);
        sub_299217A18(&v32, v8, v22);
      }

      v28 = v22;
      sub_29922E664(&__p, &v28);
      v2 += v22;
      v8 += 2 * (*(*a2 + 312))(a2, v14++);
      v13 += 40;
    }

    while (v14 < 0xCCCCCCCCCCCCCCCDLL * ((v12[1] - *v12) >> 3));
    v23 = v32;
    v24 = v33;
  }

  sub_2992C78F4(a2, v23, ((v24 - v23) >> 1), &__p);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  return v2;
}

void sub_29925B4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29925B50C(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, int a5, void *a6, unint64_t a7, char a8)
{
  v16 = *(a4 + 26);
  v33 = 0;
  v34 = 0;
  v32 = 0uLL;
  v31 = *sub_2992FE060();
  if (*(a4 + 38) == 1 || (a8 & 0x20) == 0 || (*(a4 + 37) & 8) != 0)
  {
    goto LABEL_2;
  }

  v19 = *(a4 + 26);
  if (v19 >= a3)
  {
    v19 = a3;
  }

  if (!a2)
  {
    v19 = 0;
  }

  v30[0] = a2;
  v30[1] = v19;
  sub_299216DAC(v30, &v34, 0, 0, &v27);
  v33 = v28;
  v32 = v27;
  v20 = HIBYTE(v28);
  if (v28 >= 0)
  {
    v17 = &v32;
  }

  else
  {
    v17 = v32;
  }

  if (v28 < 0)
  {
    v20 = *(&v32 + 1);
  }

  v21 = v17 ? v20 : 0;
  *&v31 = v17;
  *(&v31 + 1) = v21;
  if (!v21)
  {
    goto LABEL_2;
  }

  if (v21 <= 0x80uLL)
  {
    v16 = v21;
    if ((a5 & 4) == 0 || !v34)
    {
      v23 = v17 + 2 * v21;
      v24 = *(v23 - 1);
      if (v24 <= 0xFF && memchr("bcdfghjklmpqrstvwxyz", v24, 0x15uLL))
      {
        *(v23 - 1) = 12387;
      }

LABEL_3:
      *&v27 = 0;
      *(&v27 + 1) = &v27;
      v28 = 0x2000000000;
      v29 = 0;
      if (*(a4 + 12))
      {
        if ((a5 & 4) != 0 && v34)
        {
          v25[0] = MEMORY[0x29EDCA5F8];
          v25[1] = 0x40000000;
          v25[2] = sub_29925B7DC;
          v25[3] = &unk_29EF0FDF8;
          v25[4] = &v27;
          v25[5] = a1;
          v26 = a5;
          v25[6] = a4;
          v25[7] = a6;
          v25[8] = a7;
          sub_2992178F0(&v31, v34, v25);
          v18 = *(*(&v27 + 1) + 24);
        }

        else
        {
          v18 = (*(**(a1 + 8) + 88))(*(a1 + 8), v17, 2 * v16);
          *(*(&v27 + 1) + 24) = v18;
        }
      }

      else
      {
        v18 = 2 * v16;
        v29 = v18;
        if (v18 <= a7)
        {
          memcpy(a6, v17, 2 * v16);
        }

        else
        {
          v18 = 0;
          v29 = 0;
        }
      }

      _Block_object_dispose(&v27, 8);
      if (v33 < 0)
      {
        goto LABEL_30;
      }

      return v18;
    }

LABEL_2:
    v17 = a2;
    goto LABEL_3;
  }

  v18 = 0;
  if (v28 < 0)
  {
LABEL_30:
    operator delete(v32);
  }

  return v18;
}

void sub_29925B7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (*(v19 - 89) < 0)
  {
    operator delete(*(v19 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29925B7DC(uint64_t a1, void *a2, _BYTE *a3)
{
  result = (*(**(*(a1 + 40) + 8) + 88))(*(*(a1 + 40) + 8), *a2, a2[1] - *a2, *(*(a1 + 48) + 12), *(*(a1 + 48) + 36), *(a1 + 72) | 0x10000u, *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a3 = 1;
  }

  return result;
}

_BYTE *sub_29925B874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 416);
  if (v4 && (v5 = *(a2 + 12), v5) && (v7 = (v5 >> 8) & 0xFFFFF, *(a1 + 424) > v7))
  {
    sub_29918DAD0(a1 + 368, *(v4 + 4 * v7));
    result = sub_29919CA14((a1 + 360), a1 + 368);
    v9 = *(a1 + 400);
    v10 = v9 >> 1;
    v11 = *(a1 + 392);
    if (v9 >= 0x16)
    {
      if ((v10 | 3) == 0xB)
      {
        v12 = 13;
      }

      else
      {
        v12 = (v10 | 3) + 1;
      }

      sub_299212A48(a3, v12);
    }

    *(a3 + 23) = v9 >> 1;
    if (v9 >= 2)
    {
      result = memmove(a3, v11, 2 * v10);
    }

    *(a3 + v10) = 0;
  }

  else
  {

    return sub_299217DF0(a3, byte_29945C656);
  }

  return result;
}

void sub_29925B968(uint64_t a1, void *a2, uint64_t a3, __int16 a4, uint64_t *a5, char **a6)
{
  sub_299237120();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2000000000;
  v16 = 0x7FFFFFFF;
  v12 = *(a1 + 8);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = sub_29925BB00;
  v13[3] = &unk_29EF0FE20;
  v14 = a4;
  v13[6] = a5;
  v13[7] = a6;
  v13[4] = v15;
  v13[5] = a1;
  sub_2993E4D48(v12, a2, a3, 2, v13);
}

void sub_29925BAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29925BB00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *v3;
  v5 = v3[1];
  if (v4 != v5)
  {
    while (*v4 != *(a2 + 92))
    {
      if (++v4 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    v6 = *(a2 + 92);
    v7 = *(a2 + 84);
    v8 = (*(**(*(a1 + 40) + 8) + 64))(*(*(a1 + 40) + 8), *(a1 + 64)) + v7;
    v9 = *(a1 + 48);
    v23 = v6;
    sub_29922E664(v9, &v23);
    v10 = *(a1 + 56);
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
    if (v12 >= v11)
    {
      v14 = *v10;
      v15 = v12 - *v10;
      v16 = v15 >> 2;
      v17 = (v15 >> 2) + 1;
      if (v17 >> 62)
      {
        sub_299212A8C();
      }

      v18 = v11 - v14;
      if (v18 >> 1 > v17)
      {
        v17 = v18 >> 1;
      }

      v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
      v20 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v17;
      }

      if (v20)
      {
        sub_2992F86B0(*(a1 + 56), v20);
      }

      *(4 * v16) = v8;
      v13 = 4 * v16 + 4;
      memcpy(0, v14, v15);
      v21 = *v10;
      *v10 = 0;
      *(v10 + 8) = v13;
      *(v10 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v12 = v8;
      v13 = (v12 + 1);
    }

    *(v10 + 8) = v13;
    v22 = *(*(a1 + 32) + 8);
    if (v8 < *(v22 + 24))
    {
      *(v22 + 24) = v8;
    }
  }
}

void sub_29925BC84(uint64_t a1)
{
  sub_29925BCBC(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29925BCBC(uint64_t a1)
{
  *a1 = &unk_2A1F68A78;
  v2 = a1 + 16;
  sub_299213AB8(a1 + 16);
  *(a1 + 416) = 0;
  sub_29919CB4C((a1 + 360));
  sub_29918D980(a1 + 368);
  sub_29919C3B0((a1 + 360));
  sub_299213950(v2);
  return a1;
}

BOOL sub_29925BD30(uint64_t a1, const char *a2)
{
  v56[19] = *MEMORY[0x29EDCA608];
  sub_2991C70DC(v54, a2, 8);
  v4 = v54[0];
  if ((v55[*(v54[0] - 24) + 16] & 5) != 0)
  {
    v6 = *(a1 + 128);
    v5 = (a1 + 128);
    std::ios_base::clear((v5 + *(v6 - 24)), 0);
    v7 = sub_2991C0E9C(v5, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/param.cpp", 59);
    v8 = sub_2991C0E9C(v7, "(", 1);
    v9 = MEMORY[0x29C29BD30](v8, 130);
    v10 = sub_2991C0E9C(v9, ") [", 3);
    v11 = sub_2991C0E9C(v10, "ifs", 3);
    v12 = sub_2991C0E9C(v11, "] ", 2);
    v13 = sub_2991C0E9C(v12, "no such file or directory: ", 27);
    v14 = strlen(a2);
    sub_2991C0E9C(v13, a2, v14);
    v15 = 0;
    goto LABEL_60;
  }

  memset(&__str, 0, sizeof(__str));
  v16 = MEMORY[0x29EDC93D0];
  v17 = MEMORY[0x29EDCA600];
  while (1)
  {
    std::ios_base::getloc((v54 + *(v4 - 24)));
    v18 = std::locale::use_facet(&v51, v16);
    v19 = (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v51);
    v20 = sub_2991EAC8C(v54, &__str, v19);
    v15 = (*(v20 + *(*v20 - 24) + 32) & 5) != 0;
    if ((*(v20 + *(*v20 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_51;
      }

      v21 = *__str.__r_.__value_.__l.__data_;
    }

    else
    {
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_51;
      }

      v21 = __str.__r_.__value_.__s.__data_[0];
    }

    if (v21 != 59 && v21 != 35)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (!size || ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v23 = &__str) : (v23 = __str.__r_.__value_.__r.__words[0]), (v24 = memchr(v23, 61, size)) == 0 || (v25 = v24, &v24[-v23] == -1)))
      {
        v40 = *(a1 + 128);
        v39 = (a1 + 128);
        std::ios_base::clear((v39 + *(v40 - 24)), 0);
        v41 = sub_2991C0E9C(v39, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/param.cpp", 59);
        v42 = sub_2991C0E9C(v41, "(", 1);
        v43 = MEMORY[0x29C29BD30](v42, 138);
        v44 = sub_2991C0E9C(v43, ") [", 3);
        v45 = sub_2991C0E9C(v44, "pos != std::string::npos", 24);
        v46 = sub_2991C0E9C(v45, "] ", 2);
        v47 = sub_2991C0E9C(v46, "format error: ", 14);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          sub_2991C0E9C(v47, p_str, HIBYTE(__str.__r_.__value_.__r.__words[2]));
        }

        else
        {
          sub_2991C0E9C(v47, p_str, __str.__r_.__value_.__l.__size_);
        }

        break;
      }

      v26 = &v24[-v23 + 1];
      do
      {
        v27 = v26;
        v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = __str.__r_.__value_.__l.__size_;
        }

        if (v26 >= v28)
        {
          break;
        }

        v29 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
        v30 = v29->__r_.__value_.__s.__data_[v27];
        v31 = (v30 & 0x80000000) != 0 ? __maskrune(v30, 0x4000uLL) : *(v17 + 4 * v30 + 60) & 0x4000;
        v26 = v27 + 1;
      }

      while (v31);
      v32 = &v25[~v23];
      while (1)
      {
        v33 = v32;
        v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((v33 & 0x8000000000000000) != 0)
        {
          break;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &__str;
        }

        else
        {
          v35 = __str.__r_.__value_.__r.__words[0];
        }

        v36 = v33[v35];
        if ((v36 & 0x80000000) != 0)
        {
          v37 = __maskrune(v36, 0x4000uLL);
        }

        else
        {
          v37 = *(v17 + 4 * v36 + 60) & 0x4000;
        }

        v32 = v33 - 1;
        if (!v37)
        {
          v34 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          break;
        }
      }

      if ((v34 & 0x80u) != 0)
      {
        v34 = __str.__r_.__value_.__l.__size_;
      }

      std::string::basic_string(&v51, &__str, v27, v34 - v27, &__p);
      std::string::basic_string(&__p, &__str, 0, (v33 + 1), &v53);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      sub_299257568(a1, p_p, &v51, 0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }
    }

LABEL_51:
    v4 = v54[0];
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_60:
  v54[0] = *MEMORY[0x29EDC9518];
  *(v54 + *(v54[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](v55);
  std::istream::~istream();
  MEMORY[0x29C29BF00](v56);
  return v15;
}

void sub_29925C25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_2991D64B0(&a28, MEMORY[0x29EDC9518]);
  MEMORY[0x29C29BF00](&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_29925C2F4(uint64_t a1, int a2, char **a3, uint64_t a4)
{
  v99[2] = *MEMORY[0x29EDCA608];
  if (a2 <= 0)
  {
    if (*(a1 + 79) < 0)
    {
      *(a1 + 64) = 7;
      v25 = *(a1 + 56);
    }

    else
    {
      v25 = (a1 + 56);
      *(a1 + 79) = 7;
    }

    strcpy(v25, "unknown");
    return 1;
  }

  sub_2991C6CA8(&v96, *a3);
  v6 = (a1 + 56);
  if (*(a1 + 79) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&v96.__r_.__value_.__l.__data_;
  *(a1 + 72) = *(&v96.__r_.__value_.__l + 2);
  sub_2991C6CA8(&v94, "MeCab: Yet Another Part-of-Speech and Morphological Analyzer\n\nCopyright(C) 2001-2012 Taku Kudo \nCopyright(C) 2004-2008 Nippon Telegraph and Telephone Corporation\n");
  v7 = std::string::append(&v94, "\nUsage: ", 8uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 79);
  if (v9 >= 0)
  {
    v10 = (a1 + 56);
  }

  else
  {
    v10 = *(a1 + 56);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 79);
  }

  else
  {
    v11 = *(a1 + 64);
  }

  v12 = std::string::append(&v95, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v96.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v96.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v96, " [options] files\n", 0x11uLL);
  v15 = v14->__r_.__value_.__r.__words[0];
  v99[0] = v14->__r_.__value_.__l.__size_;
  *(v99 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v17 = v99[0];
  *(a1 + 80) = v15;
  *(a1 + 88) = v17;
  *(a1 + 95) = *(v99 + 7);
  *(a1 + 103) = v16;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  sub_2991C6CA8(&v94, "mecab");
  v18 = std::string::append(&v94, " of ", 4uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v95, "0.996", 5uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v96.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v96.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v96, 10);
  v99[0] = v96.__r_.__value_.__l.__size_;
  v22 = v96.__r_.__value_.__r.__words[0];
  *(v99 + 7) = *(&v96.__r_.__value_.__r.__words[1] + 7);
  v23 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
  memset(&v96, 0, sizeof(v96));
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
    v26 = SHIBYTE(v96.__r_.__value_.__r.__words[2]);
    v27 = v99[0];
    *(a1 + 104) = v22;
    *(a1 + 112) = v27;
    *(a1 + 119) = *(v99 + 7);
    *(a1 + 127) = v23;
    if (v26 < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v24 = v99[0];
    *(a1 + 104) = v22;
    *(a1 + 112) = v24;
    *(a1 + 119) = *(v99 + 7);
    *(a1 + 127) = v23;
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v28 = *a4;
  if (*a4)
  {
    v29 = 0;
    v30 = (a4 + 40);
    v31 = *a4;
    do
    {
      v32 = strlen(v31);
      v33 = *(v30 - 2);
      if (v33)
      {
        v34 = v32 + strlen(v33) + 2;
      }

      else
      {
        v34 = v32 + 1;
      }

      if (v34 > v29)
      {
        v29 = v34;
      }

      v35 = *v30;
      v30 += 5;
      v31 = v35;
    }

    while (v35);
    v36 = 0;
    do
    {
      v37 = a4 + 40 * v36;
      v38 = strlen(v28);
      v39 = *(v37 + 24);
      if (v39)
      {
        v38 += strlen(v39) + 1;
      }

      std::string::append((a1 + 80), " -", 2uLL);
      std::string::push_back((a1 + 80), *(v37 + 8));
      std::string::append((a1 + 80), ", --", 4uLL);
      v40 = strlen(*v37);
      std::string::append((a1 + 80), *v37, v40);
      if (*(v37 + 24))
      {
        std::string::push_back((a1 + 80), 61);
        v41 = strlen(*(v37 + 24));
        std::string::append((a1 + 80), *(v37 + 24), v41);
      }

      while (v38 <= v29)
      {
        std::string::push_back((a1 + 80), 32);
        ++v38;
      }

      v42 = strlen(*(v37 + 32));
      std::string::append((a1 + 80), *(v37 + 32), v42);
      std::string::push_back((a1 + 80), 10);
      ++v36;
      v28 = *(a4 + 40 * v36);
    }

    while (v28);
  }

  std::string::push_back((a1 + 80), 10);
  v43 = *a4;
  if (*a4)
  {
    v44 = (a4 + 40);
    do
    {
      v45 = *(v44 - 3);
      if (v45)
      {
        sub_2991C6CA8(&v96, v45);
        sub_299257568(a1, v43, &v96, 1);
        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }
      }

      v46 = *v44;
      v44 += 5;
      v43 = v46;
    }

    while (v46);
  }

  result = 1;
  if (a2 == 1)
  {
    return result;
  }

  v48 = (a1 + 32);
  v91 = a4 + 40;
  LODWORD(v49) = 1;
  while (1)
  {
    v50 = a3[v49];
    if (*v50 == 45)
    {
      break;
    }

    sub_2991C6CA8(&v95, a3[v49]);
    v57 = *(a1 + 40);
    v56 = *(a1 + 48);
    if (v57 >= v56)
    {
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v57 - *v48) >> 3);
      v60 = v59 + 1;
      if (v59 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_299212A8C();
      }

      v61 = 0xAAAAAAAAAAAAAAABLL * ((v56 - *v48) >> 3);
      if (2 * v61 > v60)
      {
        v60 = 2 * v61;
      }

      if (v61 >= 0x555555555555555)
      {
        v62 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v62 = v60;
      }

      v98 = v48;
      if (v62)
      {
        sub_299212AA4(v48, v62);
      }

      v72 = 24 * v59;
      v73 = *&v95.__r_.__value_.__l.__data_;
      *(v72 + 16) = *(&v95.__r_.__value_.__l + 2);
      *v72 = v73;
      memset(&v95, 0, sizeof(v95));
      v74 = 24 * v59 + 24;
      v75 = *(a1 + 32);
      v76 = *(a1 + 40) - v75;
      v77 = (24 * v59 - v76);
      memcpy(v77, v75, v76);
      v78 = *(a1 + 32);
      *(a1 + 32) = v77;
      *(a1 + 40) = v74;
      v79 = *(a1 + 48);
      *(a1 + 48) = 0;
      v96.__r_.__value_.__r.__words[2] = v78;
      v97 = v79;
      v96.__r_.__value_.__r.__words[0] = v78;
      v96.__r_.__value_.__l.__size_ = v78;
      sub_299212AFC(&v96);
      v80 = SHIBYTE(v95.__r_.__value_.__r.__words[2]);
      *(a1 + 40) = v74;
      if ((v80 & 0x80000000) == 0)
      {
        goto LABEL_102;
      }

      v81 = v95.__r_.__value_.__r.__words[0];
      goto LABEL_101;
    }

    v58 = *&v95.__r_.__value_.__l.__data_;
    *(v57 + 16) = *(&v95.__r_.__value_.__l + 2);
    *v57 = v58;
    *(a1 + 40) = v57 + 24;
LABEL_102:
    LODWORD(v49) = v49 + 1;
    if (v49 >= a2)
    {
      return 1;
    }
  }

  v51 = v50[1];
  if (!v50[1])
  {
    goto LABEL_102;
  }

  v52 = v48;
  v53 = v49;
  if (v51 != 45)
  {
    v66 = *a4;
    if (!*a4)
    {
      goto LABEL_104;
    }

    v67 = *(a4 + 8);
    v68 = a4;
    while (v67 != v51)
    {
      v66 = *(v68 + 40);
      if (!v66)
      {
        goto LABEL_104;
      }

      v67 = *(v68 + 48);
      v68 += 40;
    }

    v71 = v50[2];
    v70 = v50 + 2;
    v69 = v71;
    if (!*(v68 + 24))
    {
      if (v69)
      {
        goto LABEL_110;
      }

      LODWORD(v96.__r_.__value_.__l.__data_) = 1;
      sub_29925CCC0(a1, v66, &v96);
      goto LABEL_102;
    }

    if (!v69)
    {
      v49 = v49 + 1;
      if (v53 + 1 == a2)
      {
        goto LABEL_111;
      }

      sub_2991C6CA8(&v96, a3[v49]);
      sub_299257568(a1, v66, &v96, 1);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      goto LABEL_102;
    }

    sub_2991C6CA8(&v96, v70);
    sub_299257568(a1, v66, &v96, 1);
    goto LABEL_99;
  }

  for (i = 0; ; ++i)
  {
    v55 = v50[i + 2];
    if (!v50[i + 2] || v55 == 61)
    {
      break;
    }
  }

  if (!i)
  {
    return 1;
  }

  v63 = *a4;
  if (!*a4)
  {
LABEL_104:
    v83 = strlen(a3[v49]);
    v84 = sub_2991C0E9C(v82, a3[v49], v83);
    return 0;
  }

  v64 = (a4 + 40);
  while (strlen(v63) != i || strncmp(v50 + 2, v63, i))
  {
    v65 = *v64;
    v64 += 5;
    v63 = v65;
    if (!v65)
    {
      goto LABEL_104;
    }
  }

  if (!*(v64 - 2))
  {
    if (v55 == 61)
    {
LABEL_110:
      v86 = strlen(a3[v49]);
      v87 = sub_2991C0E9C(v85, a3[v49], v86);
      return 0;
    }

    v48 = v52;
    LODWORD(v96.__r_.__value_.__l.__data_) = 1;
    sub_29925CCC0(a1, v63, &v96);
    goto LABEL_102;
  }

  if (v55 == 61)
  {
    sub_2991C6CA8(&v96, &v50[i + 3]);
    v48 = v52;
    sub_299257568(a1, v63, &v96, 1);
    goto LABEL_99;
  }

  v49 = v49 + 1;
  v48 = v52;
  if (v53 + 1 != a2)
  {
    sub_2991C6CA8(&v96, a3[v49]);
    sub_299257568(a1, v63, &v96, 1);
LABEL_99:
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      v81 = v96.__r_.__value_.__r.__words[0];
LABEL_101:
      operator delete(v81);
      goto LABEL_102;
    }

    goto LABEL_102;
  }

LABEL_111:
  v89 = strlen(a3[v53]);
  v90 = sub_2991C0E9C(v88, a3[v53], v89);
  return 0;
}

void sub_29925CC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29925CCC0(uint64_t a1, char *a2, unsigned int *a3)
{
  v38[2] = *MEMORY[0x29EDCA608];
  sub_2991C6CA8(v27, a2);
  v5 = *a3;
  sub_2991D7954(v31);
  memset(&v30, 0, sizeof(v30));
  v6 = MEMORY[0x29C29BD30](&v32, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    goto LABEL_33;
  }

  MEMORY[0x29C29BC30](&v37, v31, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    *v30.__r_.__value_.__l.__data_ = 0;
    v30.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    v30.__r_.__value_.__s.__data_[0] = 0;
    *(&v30.__r_.__value_.__s + 23) = 0;
  }

  v7 = (v31 + *(v31[0] - 24));
  width = v7->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v9 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v9 = v7->__width_;
  }

  if (width >= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v7);
  v11 = std::locale::use_facet(&v29, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v29);
  if (!v10)
  {
    v19 = v31[0];
    *(&v34[-1].__locale_ + *(v31[0] - 24)) = 0;
    v18 = 4;
    goto LABEL_30;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(&v34[1].__locale_ + *(v31[0] - 24));
    v14 = v13[3];
    if (v14 == v13[4])
    {
      break;
    }

    LOBYTE(v15) = *v14;
LABEL_18:
    if ((v15 & 0x80) == 0 && (*(&v11[1].~facet + (v15 & 0x7F)) & 0x4000) != 0)
    {
      v18 = 0;
      goto LABEL_28;
    }

    std::string::push_back(&v30, v15);
    v16 = *(&v34[1].__locale_ + *(v31[0] - 24));
    v17 = v16[3];
    if (v17 == v16[4])
    {
      (*(*v16 + 80))(v16);
    }

    else
    {
      v16[3] = v17 + 1;
    }

    if (v10 == ++v12)
    {
      v18 = 0;
      v12 = 1;
      goto LABEL_28;
    }
  }

  v15 = (*(*v13 + 72))(v13);
  if (v15 != -1)
  {
    goto LABEL_18;
  }

  v18 = 2;
LABEL_28:
  v19 = v31[0];
  *(&v34[-1].__locale_ + *(v31[0] - 24)) = 0;
  if (!v12)
  {
    v18 |= 4u;
  }

LABEL_30:
  std::ios_base::clear((v31 + *(v19 - 24)), *(&v34[0].__locale_ + *(v19 - 24)) | v18);
LABEL_31:
  if ((*(&v34[0].__locale_ + *(v31[0] - 24)) & 5) != 0 || (v20 = sub_29920BAF0(v31), (*(v20 + *(*v20 - 24) + 32) & 2) == 0))
  {
LABEL_33:
    operator new();
  }

  v38[0] = v30.__r_.__value_.__l.__size_;
  v25 = v30.__r_.__value_.__r.__words[0];
  *(v38 + 7) = *(&v30.__r_.__value_.__r.__words[1] + 7);
  v26 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v31[0] = *MEMORY[0x29EDC9528];
  v21 = *(MEMORY[0x29EDC9528] + 72);
  *(v31 + *(v31[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v32 = v21;
  v33 = MEMORY[0x29EDC9570] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v34);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&v36);
  v31[0] = v27;
  v22 = sub_299257890((a1 + 8), v27, &unk_299400092, v31, &v30);
  v23 = v22;
  if (*(v22 + 79) < 0)
  {
    operator delete(v22[7]);
  }

  v24 = v38[0];
  v23[7] = v25;
  v23[8] = v24;
  *(v23 + 71) = *(v38 + 7);
  *(v23 + 79) = v26;
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_29925D200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a2)
  {
    std::locale::~locale(&a16);
    __cxa_begin_catch(exception_object);
    v25 = a24;
    *(&a24 + *(a24 - 24) + 32) |= 1u;
    if ((*(&a24 + *(v25 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x29925CF48);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_29925D5A8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x29C29BF70](a11, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29925D5E4(uint64_t a1)
{
  if (sub_29924BB78(a1, "help"))
  {
    v2 = (a1 + 80);
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_4:
      v3 = strlen(v2);
      sub_2991C0E9C(MEMORY[0x29EDC93C8], v2, v3);
      return 0;
    }

LABEL_3:
    v2 = *v2;
    goto LABEL_4;
  }

  if (sub_29924BB78(a1, "version"))
  {
    v2 = (a1 + 104);
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  return 1;
}

uint64_t sub_29925D670(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v79 = *MEMORY[0x29EDCA608];
  if (qword_2A1460338 != -1)
  {
    dispatch_once(&qword_2A1460338, &unk_2A1F68AB8);
  }

  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  v74 = 0u;
  v5 = qword_2A1460330;
  v6 = objc_msgSend_length(a1, a2, a3, a4);
  v73 = objc_msgSend_matchesInString_options_range_(v5, v7, a1, 0, 0, v6);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v8, &v74, v78, 16);
  if (result)
  {
    v13 = result;
    v14 = *v75;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v75 != v14)
      {
        objc_enumerationMutation(v73);
      }

      v16 = *(*(&v74 + 1) + 8 * v15);
      if (v16 && objc_msgSend_numberOfRanges(*(*(&v74 + 1) + 8 * v15), v10, v11, v12) == 6)
      {
        objc_msgSend_rangeAtIndex_(v16, v10, 3, v12);
        v18 = v17;
        v20 = objc_msgSend_rangeAtIndex_(v16, v17, 2, v19);
        v72 = objc_msgSend_substringWithRange_(a1, v21, v20, v21);
        v24 = objc_msgSend_rangeAtIndex_(v16, v22, 5, v23);
        v71 = objc_msgSend_substringWithRange_(a1, v25, v24, v25);
        v28 = objc_msgSend_rangeAtIndex_(v16, v26, 1, v27);
        v30 = objc_msgSend_substringWithRange_(a1, v29, v28, v29);
        v33 = objc_msgSend_rangeAtIndex_(v16, v31, 4, v32);
        v35 = objc_msgSend_substringWithRange_(a1, v34, v33, v34);
        v39 = objc_msgSend_length(v30, v36, v37, v38);
        MEMORY[0x2A1C7C4A8](v39);
        v41 = &v70 - v40;
        v45 = objc_msgSend_length(v35, v42, v43, v44);
        MEMORY[0x2A1C7C4A8](v45);
        v47 = &v70 - v46;
        v51 = objc_msgSend_length(v30, v48, v49, v50);
        objc_msgSend_getCharacters_range_(v30, v52, v41, 0, v51);
        v56 = objc_msgSend_length(v35, v53, v54, v55);
        objc_msgSend_getCharacters_range_(v35, v57, v47, 0, v56);
        v61 = objc_msgSend_length(v30, v58, v59, v60);
        v62 = sub_299281F40(v41, v61, 0, 0);
        v66 = objc_msgSend_length(v35, v63, v64, v65);
        v67 = sub_299281F40(v47, v66, 0, 0);
        if (v18)
        {
          v68 = objc_msgSend_isEqualToString_(v72, v10, v71, v12) ^ 1;
        }

        else
        {
          LOBYTE(v68) = 0;
        }

        result = 1;
        v69 = !v62 || v67 == 0;
        if (v69 || !((v62 == v67) | v68 & 1))
        {
          break;
        }
      }

      if (v13 == ++v15)
      {
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v73, v10, &v74, v78, 16);
        v13 = result;
        if (result)
        {
          goto LABEL_5;
        }

        return result;
      }
    }
  }

  return result;
}

void *sub_29925D9A4()
{
  v0 = objc_alloc(MEMORY[0x29EDBA0D0]);
  result = objc_msgSend_initWithPattern_options_error_(v0, v1, @"([0-9０-９〇一二三四五六七八九十]{1,3})([時分秒年月日])(か|から|〜｜・|、)?([0-9０-９〇一二三四五六七八九十]{1,3})([時分秒年月日])", 0, 0);
  qword_2A1460330 = result;
  return result;
}

void sub_29925D9E0(uint64_t a1@<X0>, _WORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, std::string *a6@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1460348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460348))
  {
    word_2A1460340 = *(*(a1 + 88) + 50);
    __cxa_guard_release(&qword_2A1460348);
  }

  v11 = *(a4 + 30) == word_2A1460340 || word_2A1460340 == *(a4 + 32);
  v47 = v11;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  a6->__r_.__value_.__r.__words[0] = 0;
  v12 = a6;
  v50 = a6;
  std::string::reserve(a6, 3 * a3);
  if (!a3)
  {
    v42 = 0;
    goto LABEL_92;
  }

  v48 = a3;
  v49 = 0;
  v13 = 0;
  for (i = 0; i != v48; ++i)
  {
    v15 = a2[i];
    v17 = (v15 - 48) < 0xA || (v15 + 240) < 0xAu;
    v18 = &word_29945CE60;
    v19 = 26;
    while (*v18 != v15)
    {
      ++v18;
      v19 -= 2;
      if (!v19)
      {
        v18 = &unk_29945CE7A;
        break;
      }
    }

    if (v18 == &unk_29945CE7A)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    v21 = v20 - &word_29945CE60;
    if (v18 == &unk_29945CE7A)
    {
      v22 = -1;
    }

    else
    {
      v22 = v21 >> 1;
    }

    v23 = asc_29941E2D4;
    v24 = 64;
    while (*v23 != v15)
    {
      ++v23;
      v24 -= 2;
      if (!v24)
      {
        v23 = &unk_29941E314;
        break;
      }
    }

    v25 = v23 != &unk_29941E314;
    if (v23 == &unk_29941E314)
    {
      v23 = 0;
    }

    v26 = v23 - asc_29941E2D4 != -2 && v25;
    v27 = &word_29941E316;
    v28 = 74;
    while (*v27 != v15)
    {
      ++v27;
      v28 -= 2;
      if (!v28)
      {
        v27 = &unk_29941E360;
        break;
      }
    }

    v29 = v27 != &unk_29941E360;
    if (v27 == &unk_29941E360)
    {
      v27 = 0;
    }

    v30 = v27 - &word_29941E316 != -2 && v29;
    if (v47)
    {
      if (v15 == 44)
      {
        v31 = ",";
      }

      else
      {
        if (v15 != 65292)
        {
          v33 = 0;
          v31 = 0;
LABEL_52:
          if (v31 - "," == -2)
          {
            v32 = 0;
          }

          else
          {
            v32 = v33;
          }

          goto LABEL_55;
        }

        v31 = &unk_29945CE5C;
      }

      v33 = 1;
      goto LABEL_52;
    }

    v32 = 0;
LABEL_55:
    v34 = v22 != -1 || v17;
    if ((v34 | v32 | v26 | v30))
    {
      if (i > v49)
      {
        v35 = a2 ? i - v49 : 0;
        sub_299277B3C(&__p, &a2[v49], v35);
        v36 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v37 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::string::append(v50, v36, v37);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v49 = i + 1;
    }

    if (v32)
    {
      v12 = v50;
      continue;
    }

    if (v17)
    {
      v12 = v50;
      if (!v13 && i != 0)
      {
        std::string::append(v50, " ", 1uLL);
      }

      v38 = "0";
    }

    else
    {
      v38 = " ";
      v12 = v50;
      if (!v13)
      {
        goto LABEL_80;
      }
    }

    std::string::append(v12, v38, 1uLL);
LABEL_80:
    if (v22 != -1)
    {
      v39 = strlen(off_29EF0FE40[v22]);
      std::string::append(v12, off_29EF0FE40[v22], v39);
      v13 = v17;
      continue;
    }

    if (v26)
    {
      std::string::push_back(v12, 32);
      v40 = "xSYMx";
      v41 = 5;
LABEL_86:
      std::string::append(v12, v40, v41);
      std::string::push_back(v12, 32);
      v13 = v17;
      continue;
    }

    if (v30)
    {
      std::string::push_back(v12, 32);
      v40 = "xOLTRx";
      v41 = 6;
      goto LABEL_86;
    }

    v13 = v17;
  }

  a3 = v48;
  v42 = v49;
  if (v13)
  {
    std::string::append(v12, " ", 1uLL);
    goto LABEL_103;
  }

LABEL_92:
  if (a2)
  {
    v43 = a3 - v42;
  }

  else
  {
    v43 = 0;
  }

  sub_299277B3C(&__p, &a2[v42], v43);
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

  std::string::append(v12, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_103:
  if (a5 && a3 == 1 && *a2 == 8451)
  {
    if (SHIBYTE(v12->__r_.__value_.__r.__words[2]) < 0)
    {
      v12->__r_.__value_.__l.__size_ = 3;
      v12 = v12->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&v12->__r_.__value_.__s + 23) = 3;
    }

    LODWORD(v12->__r_.__value_.__l.__data_) = 10926821;
  }
}

void sub_29925DE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(a12 + 23) < 0)
  {
    operator delete(*a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_29925DEC0(char *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  memset(&v40, 0, sizeof(v40));
  std::string::reserve(&v40, 3 * a2);
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = &a1[2 * v6];
      v10 = *v9;
      if (v10 != 44)
      {
        if ((v10 - 48) >= 0xA && (v10 + 240) >= 0xAu)
        {
          v12 = 0;
          v13 = &word_29945CE7C;
          while (*v13 != v10)
          {
            v12 -= 2;
            ++v13;
            if (v12 == -20)
            {
              goto LABEL_14;
            }
          }

          if (-v12 != -2)
          {
            goto LABEL_26;
          }

LABEL_14:
          if (a2 == 1)
          {
            if (v10 != 19975 && v10 != 20806 && v10 != 20740)
            {
LABEL_53:
              v26 = 0;
              v27 = "AS~vCS";
              while (*v27 != v10)
              {
                v26 -= 2;
                v27 += 2;
                if (v26 == -6)
                {
                  goto LABEL_63;
                }
              }

              if (-v26 != -2)
              {
                v28 = -v26 >> 1;
                if (v8 <= 1)
                {
                  v29 = 1;
                }

                else
                {
                  v29 = v8;
                }

                if (v28 + 1 > v7)
                {
                  v8 = v29;
                  v7 = v28 + 1;
                }

                goto LABEL_64;
              }

LABEL_63:
              if (v6)
              {
                goto LABEL_64;
              }

              sub_299277B3C(a3, a1, a2);
              goto LABEL_82;
            }

LABEL_29:
            v15 = v8 + v7;
            if (v8 + v7 >= 4)
            {
              v16 = 4;
            }

            else
            {
              v16 = v8 + v7;
            }

            if (v15 > 1)
            {
              goto LABEL_40;
            }

            size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v40.__r_.__value_.__l.__size_;
            }

            if (v10 != 19975 || size)
            {
LABEL_40:
              v18 = *(&off_29EF0FEA8 + v16);
              sub_299277B3C(&v36, v9, a1 != 0);
              v19 = strlen(v18);
              v20 = std::string::insert(&v36, 0, v18, v19);
              v21 = *&v20->__r_.__value_.__l.__data_;
              v37.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
              *&v37.__r_.__value_.__l.__data_ = v21;
              v20->__r_.__value_.__l.__size_ = 0;
              v20->__r_.__value_.__r.__words[2] = 0;
              v20->__r_.__value_.__r.__words[0] = 0;
              v22 = std::string::append(&v37, " ", 1uLL);
              v23 = *&v22->__r_.__value_.__l.__data_;
              v39 = v22->__r_.__value_.__r.__words[2];
              *__p = v23;
              v22->__r_.__value_.__l.__size_ = 0;
              v22->__r_.__value_.__r.__words[2] = 0;
              v22->__r_.__value_.__r.__words[0] = 0;
              if (v39 >= 0)
              {
                v24 = __p;
              }

              else
              {
                v24 = __p[0];
              }

              if (v39 >= 0)
              {
                v25 = HIBYTE(v39);
              }

              else
              {
                v25 = __p[1];
              }

              std::string::append(&v40, v24, v25);
              if (SHIBYTE(v39) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v37.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v36.__r_.__value_.__l.__data_);
              }

              v8 = 0;
              v7 = 0;
            }

            else
            {
              if (v8 <= 1)
              {
                v8 = 1;
              }

              v7 = 4;
            }

            goto LABEL_64;
          }

          if (*v9 <= 0x5103u)
          {
            if (v10 == 19975)
            {
              goto LABEL_29;
            }

            v14 = 20309;
          }

          else
          {
            if (v10 == 20740 || v10 == 20806)
            {
              goto LABEL_29;
            }

            v14 = 25968;
          }

          if (v10 != v14)
          {
            goto LABEL_53;
          }
        }

LABEL_26:
        if (!v7)
        {
          ++v8;
        }
      }

LABEL_64:
      if (++v6 == a2)
      {
        v30 = v7 + v8;
        goto LABEL_67;
      }
    }
  }

  v30 = 0;
LABEL_67:
  if (v30 >= 4)
  {
    v30 = 4;
  }

  v31 = *(&off_29EF0FEA8 + v30);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v40.__r_.__value_.__l.__size_;
  }

  v33 = strlen(v31);
  sub_2991C1C18(a3, v32 + v33);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v32)
  {
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v40;
    }

    else
    {
      v34 = v40.__r_.__value_.__r.__words[0];
    }

    memmove(a3, v34, v32);
  }

  v35 = (a3 + v32);
  if (v33)
  {
    memmove(v35, v31, v33);
  }

  *(v35 + v33) = 0;
LABEL_82:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}

void sub_29925E29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type sub_29925E30C@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, std::string *a6@<X8>)
{
  v7 = a3;
  v9 = a6;
  *&a6->__r_.__value_.__l.__data_ = 0uLL;
  a6->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a6, 3 * a3 - 0x3333333333333333 * ((a4[1] - *a4) >> 3));
  v10 = *a4;
  if (a4[1] != *a4)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = a2;
    v15 = v7;
    while (1)
    {
      v29 = *(v10 + v11 + 24);
      v16 = *(v10 + v11);
      if (a5)
      {
        v17 = v16 == 4 || v16 == 11;
        if (v17)
        {
          v18 = "xPERGx";
          v19 = 6;
          goto LABEL_44;
        }

        if (v16 == 8)
        {
LABEL_16:
          v20 = *(v10 + v11 + 30);
          if ((v20 - 1249) >= 3)
          {
            if (v20 == 1252)
            {
              v18 = "xLOCx";
            }

            else
            {
              v18 = "xPROPNx";
            }

            if (v20 == 1252)
            {
              v19 = 5;
            }

            else
            {
              v19 = 7;
            }
          }

          else
          {
            v18 = (&off_29EF0FED0)[(v20 - 1249)];
            v19 = 6;
          }

          goto LABEL_44;
        }

        goto LABEL_20;
      }

      if (v16 <= 7)
      {
        break;
      }

      if (v16 == 8)
      {
        goto LABEL_16;
      }

      v18 = "xPERGx";
      v19 = 6;
      if (v16 != 11)
      {
        if (v16 == 9)
        {
          goto LABEL_34;
        }

LABEL_20:
        if (v12)
        {
          v21 = v14 ? *(v10 + v11 + 24) : 0;
          v25 = v21;
          if (sub_299281DB8(v14, v21) && (v7 < 2 || !a2 || *a2 != 1396919808))
          {
            sub_299277B3C(&__p, v14, v25);
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

            goto LABEL_58;
          }
        }

        if (v16 != 10)
        {
          if (v16 == 5)
          {
            (*(*a1 + 48))(&__p);
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
          }

          else
          {
            (*(*a1 + 40))(&__p);
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
          }

LABEL_58:
          v9 = a6;
          std::string::append(a6, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_60;
        }

        v18 = "xPROPNx";
        v19 = 7;
      }

LABEL_44:
      v9 = a6;
      std::string::append(a6, v18, v19);
LABEL_60:
      if (v13 != -1 - 0x3333333333333333 * ((a4[1] - *a4) >> 3) && sub_299255A70(a1[11], *(*a4 + v11 + 32), *(*a4 + v11 + 70)))
      {
        std::string::append(v9, " ", 1uLL);
      }

      v17 = v14 == 0;
      a2 = v14;
      v14 += 2 * v29;
      v7 = v15;
      if (v17)
      {
        v15 = 0;
      }

      else
      {
        v15 -= v29;
      }

      ++v13;
      v10 = *a4;
      v11 += 40;
      v12 = v16 == 5;
      if (v13 >= 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3))
      {
        goto LABEL_67;
      }
    }

    if (v16 == 3)
    {
LABEL_34:
      v18 = "墸";
      v19 = 3;
      goto LABEL_44;
    }

    v18 = "xPERGx";
    v19 = 6;
    if (v16 == 4)
    {
      goto LABEL_44;
    }

    goto LABEL_20;
  }

LABEL_67:
  while (1)
  {
    result = std::string::find(v9, "気 に なる", 0, 0xEuLL);
    if (result == -1)
    {
      break;
    }

    std::string::replace(v9, result, 0xEuLL, "気になる", 0xCuLL);
  }

  return result;
}

void sub_29925E79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(a13 + 23) < 0)
  {
    operator delete(*a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29925E7FC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 544))(a2);
  v6 = v5;
  v7 = (*(*a2 + 304))(a2);
  v8 = *(*a1 + 32);

  return v8(a1, v4, v6, v7, 0);
}

void sub_29925E8E8(void *a1)
{
  sub_29925E920(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29925E920(void *a1)
{
  *a1 = &unk_2A1F73940;
  sub_29925E994((a1 + 2));
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_29925E994(uint64_t a1)
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

uint64_t sub_29925EA14(uint64_t a1, __CFDictionary *a2, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v6 = result;
    v7 = *(a1 + 32);
    v9 = v6;
    if (!v7)
    {
      sub_2991A2240();
    }

    v8 = (*(*v7 + 48))(v7, &v9);
    CFDictionaryAddValue(a2, @"acceptedCandidateTypingStyle", v8);
    return 1;
  }

  return result;
}

void sub_29925EB20(uint64_t a1)
{
  sub_29925EB6C(a1 + 8);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29925EB6C(uint64_t a1)
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

uint64_t sub_29925EBEC(uint64_t a1, uint64_t a2)
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

BOOL sub_29925EC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = v5 + a2;
  if (v3)
  {
    if (v6 >= v4)
    {
      if (!v4)
      {
        *(a1 + 16) = 0x2000;
        operator new[]();
      }

      do
      {
        v7 = v6 >= 2 * v4;
        v4 *= 2;
      }

      while (v7);
      *(a1 + 16) = v4;
      operator new[]();
    }

    return 1;
  }

  else
  {
    v7 = v6 >= v4;
    result = v6 < v4;
    v9 = v7;
    *(a1 + 33) = v9;
  }

  return result;
}

uint64_t sub_29925ED54(uint64_t a1)
{
  *a1 = &unk_2A1F68B88;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
    }

    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_29925EDC4(uint64_t a1)
{
  sub_29925ED54(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29925EDFC(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (sub_29925EC84(a1, v4))
  {
    memcpy((*(a1 + 24) + *(a1 + 8)), __s, v4);
    *(a1 + 8) += v4;
  }

  return a1;
}

uint64_t sub_29925EE6C(uint64_t a1)
{
  *a1 = &unk_2A1F68BB8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0x3FE8000000000000;
  sub_2991BF614((a1 + 48));
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  return a1;
}

void sub_29925EED0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 336))(v3);
  }

  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29925EF44(uint64_t a1)
{
  *a1 = &unk_2A1F68BB8;
  v2 = a1 + 48;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 48) = *MEMORY[0x29EDC9538];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 56) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 56) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 64));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 160);
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    (*(*v5 + 336))(v5);
  }

  v6 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v6)
  {
    (*(*v6 + 48))(v6);
  }

  return a1;
}

void sub_29925F100(uint64_t a1)
{
  sub_29925EF44(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29925F23C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *(a2 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v6)
    {
      (*(*v6 + 48))(v6);
    }

    *(a1 + 8) = a2;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  return v3;
}

uint64_t sub_29925F2C8(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFFFFFFFB | v2;
  return result;
}

double sub_29925F2F4(uint64_t a1, float a2)
{
  result = a2;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_29925F30C(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    *(result + 32) |= dword_29940BDAC[a2];
  }

  return result;
}

uint64_t sub_29925F330(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 8) != 0)
  {
    return 2;
  }

  else
  {
    return (v1 >> 1) & 1;
  }
}

uint64_t sub_29925F348(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t sub_29925F380(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = sub_29925F49C(a1);
  sub_29925F508(a1);
  if ((a4 & 2) == 0)
  {
    (**v8)(v8);
  }

  (*(*v8 + 80))(v8, a2, a3);
  if (!sub_299209C70(*(*(a1 + 8) + 8), v8, a4, 0, 0))
  {
    return 0;
  }

  v9 = *(*v8 + 16);

  return v9(v8);
}

uint64_t sub_29925F49C(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    sub_2993D4C48();
  }

  return result;
}

uint64_t sub_29925F508(uint64_t a1)
{
  v2 = sub_29925F49C(a1);
  (*(*v2 + 176))(v2, *(a1 + 32));
  v3 = sub_29925F49C(a1);
  v4.n128_u64[0] = *(a1 + 40);
  v4.n128_f32[0] = v4.n128_f64[0];
  v5 = *(*v3 + 112);

  return v5(v4);
}

uint64_t sub_29925F594(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, __int16 a5, __int16 a6)
{
  if (!a2)
  {
    return 0;
  }

  v12 = sub_29925F49C(a1);
  sub_29925F508(a1);
  if ((a4 & 2) == 0)
  {
    (**v12)(v12);
  }

  (*(*v12 + 80))(v12, a2, a3);
  if (!sub_299209C70(*(*(a1 + 8) + 8), v12, a4, a5, a6))
  {
    return 0;
  }

  v13 = *(*v12 + 16);

  return v13(v12);
}

uint64_t sub_29925F714(uint64_t a1)
{
  v2 = sub_29925F49C(a1);
  (**v2)(v2);
  v3 = sub_29925F49C(a1);
  v4 = (*(*v3 + 200))(v3);
  v5 = v4[2];
  v5[4] = 0;
  v5[5] = 0;
  v6 = v5[1];
  v7 = v5[2];
  if (v7 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8 * v8);
      if (v9)
      {
        MEMORY[0x29C29BF70](v9, 0x1070C80C36FC988);
        v6 = v5[1];
        v7 = v5[2];
      }

      ++v8;
    }

    while (v8 < (v7 - v6) >> 3);
  }

  v5[2] = v6;
  v10 = v4[4];
  if (v10)
  {
    v10[4] = 0;
    v10[5] = 0;
    v11 = v10[1];
    v12 = v10[2];
    if (v12 != v11)
    {
      v13 = 0;
      do
      {
        v14 = *(v11 + 8 * v13);
        if (v14)
        {
          MEMORY[0x29C29BF70](v14, 0x1020C80EDCEB4C7);
          v11 = v10[1];
          v12 = v10[2];
        }

        ++v13;
      }

      while (v13 < (v12 - v11) >> 3);
    }

    v10[2] = v11;
  }

  v15 = v4[6];
  if (v15)
  {
    v15[4] = 0;
    v15[5] = 0;
    v16 = v15[1];
    v17 = v15[2];
    if (v17 != v16)
    {
      v18 = 0;
      do
      {
        v19 = *(v16 + 8 * v18);
        if (v19)
        {
          MEMORY[0x29C29BF70](v19, 0x1050C80717B85FCLL);
          v16 = v15[1];
          v17 = v15[2];
        }

        ++v18;
      }

      while (v18 < (v17 - v16) >> 3);
    }

    v15[2] = v16;
  }

  v20 = v4[8];
  if (v20)
  {
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
  }

  v21 = v4[10];
  if (v21)
  {
    v21[4] = 0;
    v21[5] = 0;
    v22 = v21[1];
    v23 = v21[2];
    if (v23 != v22)
    {
      v24 = 0;
      v25 = 8;
      do
      {
        v26 = *(v22 + v25);
        if (v26)
        {
          MEMORY[0x29C29BF70](v26, 0x1000C80BDFB0063);
          v22 = v21[1];
          v23 = v21[2];
        }

        ++v24;
        v25 += 16;
      }

      while (v24 < (v23 - v22) >> 4);
    }

    v21[2] = v22;
  }

  v27 = v4[12];
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v4[12] = 0;
  return 0;
}

uint64_t sub_29925F930(uint64_t a1, std::string::value_type *a2, std::string::size_type a3, void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v13 = *(*(*(a1 + 8) + 8) + 80);
  v14 = sub_29925F49C(a1);
  v15 = (*(*v14 + 200))(v14);
  sub_2993CDEDC(v13, v15, a2, a3, a4, a5, v8, v7);
  return 0;
}

void sub_29925FA1C(uint64_t a1, UniChar *a2, unint64_t a3, int a4, int a5, unsigned __int16 *a6, unint64_t a7, unsigned int a8, uint64_t a9)
{
  v9 = *(*(*(*(a1 + 8) + 8) + 80) + 112);
  if (v9)
  {
    sub_2993854D4(v9, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_29925FA78(uint64_t a1)
{
  v1 = *(*(*(*(a1 + 8) + 8) + 80) + 1352);
  if (v1)
  {
    sub_29924DE10(v1);
  }

  return 0;
}

uint64_t sub_29925FAAC(uint64_t a1, int a2)
{
  v2 = *(*(*(a1 + 8) + 8) + 80);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; *(v5 + 712) = v7)
  {
    v6 = *v3++;
    v5 = v6;
    if (a2 >= ((*(v6 + 752) - *(v6 + 744)) >> 3))
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }
  }

  return 0;
}

uint64_t sub_29925FAF4(uint64_t a1)
{
  v1 = *(*(*(a1 + 8) + 8) + 80);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = 0xFFFFFFFFLL;
  while (v2 != v3)
  {
    v5 = *(*v2 + 712);
    if (v5 != -1)
    {
      if (result == -1)
      {
        result = *(*v2 + 712);
      }

      else if (result == v5)
      {
        result = result;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }
    }

    v2 += 8;
  }

  return result;
}

BOOL sub_29925FBF4(uint64_t a1)
{
  v1 = (*(*a1 + 320))(a1);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v2 = *(v1 + 20) == 9;
    if (*(v1 + 20) == 9)
    {
      break;
    }

    v1 = *(v1 + 40);
  }

  while (v1);
  return v2;
}

uint64_t sub_29925FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*a1 + 288))(a1) < 1)
  {
    return 0;
  }

  if (a4)
  {
    v10 = sub_29925F49C(a1);
    v11 = (*(*v10 + 152))(v10);
  }

  else
  {
    v11 = (*(*a1 + 8))(a1, a2, a3, a5);
  }

  v12 = v11;
  if (!v11)
  {
    return 0;
  }

  v13 = sub_29925F49C(a1);
  (*(*v13 + 144))(v13, v12);
  v14 = sub_29925F49C(a1);
  v15 = (*(*v14 + 200))(v14);
  v16 = sub_29925FDBC(v15);
  sub_2992287F4(v16, v12, a4, a3);
  return 1;
}

uint64_t sub_29925FDBC(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    operator new();
  }

  return *(a1 + 96);
}

uint64_t sub_29925FE8C(void *a1, const UChar *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 288))(a1) <= 0)
  {
    v18 = a1[6];
    v17 = a1 + 6;
    std::ios_base::clear((v17 + *(v18 - 24)), 0);
    v19 = sub_2991C0E9C(v17, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/tagger.cpp", 63);
    v20 = sub_2991C0E9C(v19, "(", 1);
    v21 = MEMORY[0x29C29BD30](v20, 308);
    v22 = sub_2991C0E9C(v21, ") [", 3);
    v23 = sub_2991C0E9C(v22, "lattice_level() >= 1", 20);
    v24 = sub_2991C0E9C(v23, "] ", 2);
    sub_2991C0E9C(v24, "use -l option to obtain N-Best results. e.g., mecab -N10 -l1", 60);
    return 0;
  }

  v14 = sub_2993652F8(3u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v35 = 134218240;
    v36 = a3;
    v37 = 1024;
    v38 = a5 & 4;
    _os_log_debug_impl(&dword_29918C000, v14, OS_LOG_TYPE_DEBUG, "[TaggerImpl::parseNBestInit] length:%lu (prefix:%d)", &v35, 0x12u);
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    v15 = sub_29925F49C(a1);
    v16 = (*(*v15 + 152))(v15);
    goto LABEL_8;
  }

  v16 = (*(*a1 + 16))(a1, a2, a3, a5, a6, a7);
LABEL_8:
  v25 = v16;
  if (!v16)
  {
    return 0;
  }

  v26 = sub_29925F49C(a1);
  (*(*v26 + 144))(v26, v25);
  v27 = 1;
  First = u_strFindFirst(a2, a3 >> 1, "\t", 1);
  if (First)
  {
    v29 = First - a2;
  }

  else
  {
    v29 = 0;
  }

  if (First)
  {
    v30 = -16;
  }

  else
  {
    v30 = -8;
  }

  v31 = sub_29925F49C(a1);
  v32 = (*(*v31 + 200))(v31);
  v33 = sub_29925FDBC(v32);
  sub_2992287F4(v33, v25, v29 + a4, v30 + a3);
  return v27;
}

uint64_t sub_299260160(uint64_t a1)
{
  v1 = *(*sub_29925F49C(a1) + 136);

  return v1();
}

void sub_2992602B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x29C29BFB0](v13, 0x10F3C40EC662B3ELL, a3, a4, a5, a6, a7, a8);
  std::ios_base::Init::~Init(&a13);
  _Unwind_Resume(a1);
}

void sub_2992602F0(void *a1)
{
  sub_299260404(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29926032C(void *a1)
{
  sub_299260364(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_299260364(void *a1)
{
  *a1 = &unk_2A1F68D80;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29BF70](v2[v5], 0x1020C80E349F4B1);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_299260404(void *a1)
{
  *a1 = &unk_2A1F68D50;
  sub_299260364(a1 + 6);
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

const __CFDictionary *sub_299260458(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  TestingParameters = LMLanguageModelGetTestingParameters();
  MutableCopy = TestingParameters;
  if (TestingParameters)
  {
    if (CFDictionaryGetCount(TestingParameters))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, MutableCopy);
      CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x29EDC57B8]);
      return MutableCopy;
    }

    return 0;
  }

  return MutableCopy;
}

const void *sub_2992604C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  TestingParameters = LMLanguageModelGetTestingParameters();
  if (!TestingParameters)
  {
    return 0;
  }

  v3 = *MEMORY[0x29EDC57B8];

  return CFDictionaryGetValue(TestingParameters, v3);
}

uint64_t sub_299260524(char *__s)
{
  sub_2991C6CA8(&__p, __s);
  v1 = v44;
  v2 = (v44 & 0x80u) != 0;
  v3 = v43;
  if ((v44 & 0x80u) == 0)
  {
    v4 = v44;
  }

  else
  {
    v4 = v43;
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if (v2)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      v7 = p_p[v5];
      if ((v7 - 65) <= 0x19)
      {
        p_p[v5] = v7 | 0x20;
        v1 = v44;
        v3 = v43;
      }

      ++v5;
      v2 = (v1 & 0x80u) != 0;
      if ((v1 & 0x80u) == 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v3;
      }
    }

    while (v5 < v8);
  }

  if (v2)
  {
    if (v3 <= 4)
    {
      if (v3 != 3)
      {
        if (v3 != 4 || *__p != 1936288371)
        {
          goto LABEL_68;
        }

        goto LABEL_59;
      }

      v20 = *(__p + 2);
      v21 = *__p == 30053;
      v22 = 99;
      goto LABEL_64;
    }

    if (v3 == 5)
    {
      v11 = *(__p + 4);
      v12 = *__p == 859402339;
      v9 = 50;
LABEL_48:
      if (!v12 || v11 != v9)
      {
        goto LABEL_68;
      }

LABEL_59:
      v17 = 1;
      goto LABEL_129;
    }

    if (v3 != 6)
    {
      if (v3 != 9)
      {
        goto LABEL_68;
      }

      v9 = 115;
      if (*__p == 0x696A2D7466696873 && *(__p + 8) == 115)
      {
        goto LABEL_59;
      }

      v11 = *(__p + 8);
      v12 = *__p == 0x696A5F7466696873;
      goto LABEL_48;
    }

    v18 = __p;
LABEL_62:
    v19 = *v18;
    v20 = v18[2];
    v21 = v19 == 1600353637;
    v22 = 28778;
LABEL_64:
    if (v21 && v20 == v22)
    {
      goto LABEL_89;
    }

    goto LABEL_68;
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      if (__p != 859402339 || BYTE4(__p) != 50)
      {
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    if (v1 != 6)
    {
      if (v1 != 9)
      {
        goto LABEL_68;
      }

      if ((__p != 0x696A2D7466696873 || v43 != 115) && (__p != 0x696A5F7466696873 || v43 != 115))
      {
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    v18 = &__p;
    goto LABEL_62;
  }

  if (v1 == 3)
  {
    if (__p == 30053 && BYTE2(__p) == 99)
    {
      goto LABEL_89;
    }

    goto LABEL_69;
  }

  if (v1 == 4)
  {
    if (__p != 1936288371)
    {
      goto LABEL_69;
    }

    goto LABEL_59;
  }

LABEL_68:
  if ((v1 & 0x80) != 0)
  {
    if (v3 == 4)
    {
LABEL_83:
      v24 = 1;
      v25 = __p;
      goto LABEL_93;
    }

    if (v3 == 5)
    {
LABEL_96:
      v24 = 1;
      v25 = __p;
      goto LABEL_99;
    }

    if (v3 != 6)
    {
      goto LABEL_122;
    }

    v24 = 1;
    v25 = __p;
    goto LABEL_77;
  }

LABEL_69:
  v24 = 0;
  v25 = &__p;
  if (v1 != 4)
  {
    if (v1 == 5)
    {
      goto LABEL_99;
    }

    if (v1 != 6)
    {
      goto LABEL_122;
    }

LABEL_77:
    v26 = *v25;
    v27 = v25[2];
    if (v26 != 761492837 || v27 != 28778)
    {
      if (!v24)
      {
        v25 = &__p;
        if (v1 != 4)
        {
          if (v1 != 5)
          {
            goto LABEL_122;
          }

          goto LABEL_99;
        }

        goto LABEL_93;
      }

      if (v3 != 4)
      {
LABEL_95:
        if (v3 != 5)
        {
          goto LABEL_122;
        }

        goto LABEL_96;
      }

      goto LABEL_83;
    }

LABEL_89:
    v17 = 0;
    goto LABEL_129;
  }

LABEL_93:
  if (*v25 == 946238581)
  {
    goto LABEL_115;
  }

  if (v24)
  {
    goto LABEL_95;
  }

  if (v1 != 5)
  {
    goto LABEL_122;
  }

  v24 = 0;
  v25 = &__p;
LABEL_99:
  v30 = *v25;
  v31 = *(v25 + 4);
  if (v30 == 1600550005 && v31 == 56)
  {
    goto LABEL_115;
  }

  if (v24)
  {
    if (v3 != 5)
    {
      goto LABEL_122;
    }

    v33 = __p;
  }

  else
  {
    if (v1 != 5)
    {
      goto LABEL_122;
    }

    v33 = &__p;
  }

  v34 = *v33;
  v35 = v33[4];
  if (v34 == 761689205 && v35 == 56)
  {
LABEL_115:
    v17 = 2;
    goto LABEL_129;
  }

  if (v24)
  {
    if (v3 != 5)
    {
      goto LABEL_122;
    }

    v37 = __p;
  }

  else
  {
    if (v1 != 5)
    {
      goto LABEL_122;
    }

    v37 = &__p;
  }

  v38 = *v37;
  v39 = v37[4];
  if (v38 != 828798069 || v39 != 54)
  {
LABEL_122:
    if (!sub_299253E70(&__p, "utf_16") && !sub_299253E70(&__p, "utf-16"))
    {
      if (sub_299253E70(&__p, "utf16be") || sub_299253E70(&__p, "utf_16be") || sub_299253E70(&__p, "utf-16be"))
      {
        v17 = 5;
      }

      else if (sub_299253E70(&__p, "utf16le") || sub_299253E70(&__p, "utf_16le") || sub_299253E70(&__p, "utf-16le"))
      {
        v17 = 4;
      }

      else if (sub_299253E70(&__p, "ascii"))
      {
        v17 = 6;
      }

      else
      {
        v17 = 2;
      }

      goto LABEL_129;
    }
  }

  v17 = 3;
LABEL_129:
  if (v44 < 0)
  {
    operator delete(__p);
  }

  return v17;
}

std::string *sub_299260A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_2991A110C(a3, *a1, *(a1 + 8));
  }

  else
  {
    *a3 = *a1;
  }

  v5 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v5 < 0)
  {
    size = a3->__r_.__value_.__l.__size_;
    if (!size)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(&a3->__r_.__value_.__s + 23))
    {
      goto LABEL_13;
    }

    size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  if (v5 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  if (v7->__r_.__value_.__s.__data_[size - 1] != 47)
  {
    std::string::push_back(a3, 47);
  }

LABEL_13:
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  return std::string::append(a3, v9, v10);
}

void sub_299260AC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299260AE4(uint64_t a1)
{
  if (sub_29924BB78(a1, "allocate-sentence"))
  {
    v2 = 65;
  }

  else
  {
    v2 = 1;
  }

  if (sub_29924BB78(a1, "partial"))
  {
    v2 |= 4u;
  }

  if (sub_29924BB78(a1, "all-morphs"))
  {
    v2 |= 0x20u;
  }

  if (sub_29924BB78(a1, "marginal"))
  {
    v3 = v2 | 8;
  }

  else
  {
    v3 = v2;
  }

  v4 = sub_299209538(a1, "nbest");
  v5 = sub_299209538(a1, "lattice-level");
  v6 = v3 | 2;
  if (v4 <= 1 && v5 <= 0)
  {
    v6 = v3;
  }

  if (v5 <= 1)
  {
    return v6;
  }

  else
  {
    return v6 | 8;
  }
}

BOOL sub_299260BB8(uint64_t a1)
{
  v40[19] = *MEMORY[0x29EDCA608];
  sub_299233548(a1, "rcfile", &v38);
  v2 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  v3 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  size = v38.__r_.__value_.__l.__size_;
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5 = v38.__r_.__value_.__l.__size_;
  }

  if (!v5)
  {
    v6 = getenv("HOME");
    if (v6)
    {
      sub_2991C6CA8(&v39, v6);
      sub_2991C6CA8(__p, ".mecabrc");
      sub_299260A18(&v39, __p, &__str);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      sub_2991C70DC(&v39, p_str, 8);
      if ((*(&v39 + *(v39.__r_.__value_.__r.__words[0] - 24) + 32) & 5) == 0)
      {
        std::string::operator=(&v38, &__str);
      }

      v39.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9518];
      *(v39.__r_.__value_.__r.__words + *(v39.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
      MEMORY[0x29C29BBF0](&v39.__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x29C29BF00](v40);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v2 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      size = v38.__r_.__value_.__l.__size_;
      v3 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }
  }

  if (v3 >= 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = size;
  }

  if (!v8)
  {
    v9 = getenv("MECABRC");
    if (v9)
    {
      sub_299248D7C(&v38, v9);
    }
  }

  sub_299233548(a1, "dicdir", &__str);
  v10 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = __str.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      __str.__r_.__value_.__l.__size_ = 1;
      v11 = __str.__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&__str.__r_.__value_.__s + 23) = 1;
      v11 = &__str;
    }

    LOWORD(v11->__r_.__value_.__l.__data_) = 46;
  }

  LODWORD(v12) = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  v13 = v38.__r_.__value_.__r.__words[0];
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    LODWORD(v12) = v38.__r_.__value_.__r.__words[1];
  }

  v12 = v12;
  v14 = &v38;
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v38.__r_.__value_.__r.__words[0];
  }

  v15 = &v14[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (v12 < 1)
    {
      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        v38.__r_.__value_.__l.__size_ = 1;
      }

      else
      {
        *(&v38.__r_.__value_.__s + 23) = 1;
        v13 = &v38;
      }

      LOWORD(v13->__r_.__value_.__l.__data_) = 46;
      goto LABEL_45;
    }

    v16 = v12 - 1;
    v17 = v15[v12--];
  }

  while (v17 != 47);
  std::string::basic_string(&v39, &v38, 0, v16, __p);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v38 = v39;
LABEL_45:
  sub_2991C6CA8(&v39, "$(rcpath)");
  v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__str;
  }

  else
  {
    v19 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __str.__r_.__value_.__l.__size_;
  }

  v20 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v39;
  }

  else
  {
    v21 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v39.__r_.__value_.__l.__size_;
  }

  if (v22)
  {
    if (v18 >= v22)
    {
      v23 = v19 + v18;
      v24 = v21->__r_.__value_.__s.__data_[0];
      v25 = v19;
      do
      {
        v26 = v18 - v22;
        if (v26 == -1)
        {
          break;
        }

        v27 = memchr(v25, v24, v26 + 1);
        if (!v27)
        {
          break;
        }

        v28 = v27;
        if (!memcmp(v27, v21, v22))
        {
          if (v28 != v23)
          {
            v29 = v28 - v19;
            if (v28 - v19 != -1)
            {
              goto LABEL_65;
            }
          }

          break;
        }

        v25 = (v28 + 1);
        v18 = v23 - (v28 + 1);
      }

      while (v18 >= v22);
    }
  }

  else
  {
    v29 = 0;
LABEL_65:
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v38;
    }

    else
    {
      v30 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v38.__r_.__value_.__l.__size_;
    }

    std::string::replace(&__str, v29, v22, v30, v31);
    v20 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  if (v20 < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  sub_299257568(a1, "dicdir", &__str, 1);
  sub_2991C6CA8(__p, "dicrc");
  sub_299260A18(&__str, __p, &v39);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v39;
  *(&v39.__r_.__value_.__s + 23) = 0;
  v39.__r_.__value_.__s.__data_[0] = 0;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &__str;
  }

  else
  {
    v32 = __str.__r_.__value_.__r.__words[0];
  }

  v33 = sub_29925BD30(a1, v32);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  return v33;
}

void sub_299261098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_299233E08(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_299261150(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = (*(**a1 + 40))();
  v4 = *a1;
  if (v3)
  {
    while (1)
    {
      v5 = *(v4 + 112);
      if (v5)
      {
        CFStringInsert(Mutable, 0, v5);
      }

      a1 = a1[1];
      if (!a1)
      {
        break;
      }

      v4 = *a1;
    }
  }

  else
  {
    v6 = *(v4 + 80);
    v7 = Mutable;
    for (i = 0; ; i = 1)
    {
      sub_29926120C(v7, v6, i);
      a1 = a1[1];
      if (!a1)
      {
        break;
      }

      v6 = *(*a1 + 80);
      v7 = Mutable;
    }
  }

  return Mutable;
}

void sub_29926120C(__CFString *a1, unsigned int a2, int a3)
{
  if (a2 >= 0x3E9 && a2 - 1000 <= 0x1EF)
  {
    v5 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], (&off_29EF13DA0)[2 * a2 - 2000], 0x8000100u);
    if (v5)
    {
      v6 = v5;
      if (a3)
      {
        CFStringInsert(a1, 0, @" ");
      }

      CFStringInsert(a1, 0, v6);
      CFRelease(v6);
    }
  }
}

void sub_2992612BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

int8x16_t *sub_2992612D4(const __CFURL *a1, __int8 a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x1070040B050C575uLL);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4[1].i8[0] = a2;
  v6 = sub_2992B799C(a1);
  v5[3].i32[2] = v6;
  if (v6 == -1)
  {
LABEL_15:
    free(v5);
    return 0;
  }

  v7 = CFURLCreateCopyAppendingPathComponent(0, a1, @"Keyword_aux.data", 0);
  v8 = sub_29923DCE8(v7);
  CFRelease(v7);
  v5[3].i64[0] = v8;
  v9 = v5[3].i32[2];
  if (v9 == -1)
  {
LABEL_14:
    free(v8);
    goto LABEL_15;
  }

  if (flock(v9, 6) == -1)
  {
    v8 = v5[3].i64[0];
    goto LABEL_14;
  }

  v10 = v5[3].i32[2];
  LOBYTE(__buf.st_dev) = 0;
  lseek(v10, 0, 0);
  read(v10, &__buf, 1uLL);
  if (LOBYTE(__buf.st_dev) == 1)
  {
    v11 = sub_29923DCE8(a1);
    sub_299261A00(v11);
    free(v11);
  }

  v12 = v5[3].i32[2];
  LOBYTE(__buf.st_dev) = 1;
  lseek(v12, 0, 0);
  write(v12, &__buf, 1uLL);
  v13 = sub_2992432B4(0, a1, 0);
  if (!v13)
  {
    free(v5[3].i64[0]);
    flock(v5[3].i32[2], 8);
    goto LABEL_15;
  }

  v5->i64[1] = v13;
  *&__buf.st_dev = xmmword_29EF0FEE8;
  *&__buf.st_uid = *off_29EF0FEF8;
  v14 = CFArrayCreate(0, &__buf, 4, MEMORY[0x29EDB9000]);
  sub_299243598(v5->i64[1], v14);
  CFRelease(v14);
  v21 = 0;
  v22 = 0;
  sub_299243500(v5->i64[1], @"__??info??__", @"IDXExactMatch");
  if ((*(**(v5->i64[1] + 16) + 72))(*(v5->i64[1] + 16), *(v5->i64[1] + 40), 1, &v22, &v21) >= 1)
  {
    memset(v25, 0, sizeof(v25));
    sub_29924388C(v5->i64[1], v22, v21, v25, v24);
    LODWORD(v15) = 0;
    if (LOBYTE(v24[0]) > 3u)
    {
      if (LOBYTE(v24[0]) == 4)
      {
        LODWORD(v15) = **&v25[0];
      }

      else if (LOBYTE(v24[0]) == 8)
      {
        v15 = **&v25[0];
      }
    }

    else if (LOBYTE(v24[0]) == 1)
    {
      LODWORD(v15) = **&v25[0];
    }

    else if (LOBYTE(v24[0]) == 2)
    {
      LODWORD(v15) = **&v25[0];
    }

    v5[1].i32[2] = v15;
    v17 = CFStringCreateWithBytesNoCopy(0, *(&v25[0] + 1), v24[1], 0x600u, 0, *MEMORY[0x29EDB8EE8]);
    v5[1].i32[1] = CFStringGetIntValue(v17);
    CFRelease(v17);
  }

  v18 = vdup_n_s32(stat(v5[3].i64[0], &__buf) == 0);
  v19.i64[0] = v18.u32[0];
  v19.i64[1] = v18.u32[1];
  v5[2] = vandq_s8(__buf.st_mtimespec, vcltzq_s64(vshlq_n_s64(v19, 0x3FuLL)));
  v20 = v5[3].i32[2];
  LOBYTE(__buf.st_dev) = 0;
  lseek(v20, 0, 0);
  write(v20, &__buf, 1uLL);
  flock(v5[3].i32[2], 8);
  v5->i64[0] = CFRetain(a1);
  return v5;
}

uint64_t sub_299261648(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v37 = *MEMORY[0x29EDCA608];
  result = *(v1 + 56);
  if (result != -1)
  {
    result = flock(result, 6);
    if (result != -1)
    {
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      v15 = 0u;
      v14 = 0u;
      v13 = 0u;
      v12 = 0u;
      v11 = 0u;
      v10 = 0u;
      v9 = 0u;
      v8 = 0u;
      v7 = 0u;
      v6 = 0u;
      v5 = 0u;
      *__s1 = 0u;
      v3 = 0u;
      CFStringGetLength(@"__??info??__");
      operator new[]();
    }
  }

  return result;
}

DIR *sub_299261A00(DIR *result)
{
  if (result)
  {
    v1 = result;
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
            if (!sub_299261A00(v5))
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

uint64_t sub_299261B44(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_299261B9C(a1, a2, a3, a4);
  v9 = sub_299261B9C(a2, v6, v7, v8);
  v10 = objc_alloc(MEMORY[0x29EDB8DC0]);

  return MEMORY[0x2A1C70FE8](v10, sel_initWithObjects_forKeys_, v9, v5);
}

uint64_t sub_299261B9C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_299261CA8;
  v17 = sub_299261CB8;
  v18 = objc_msgSend_array(MEMORY[0x29EDB8DE8], a2, a3, a4);
  v8 = objc_msgSend_length(a1, v5, v6, v7);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = sub_299261CC4;
  v12[3] = &unk_29EF0FF10;
  v12[4] = &v13;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v9, 0, v8, 2, v12);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_299261C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MecabraInputKeyPropertiesGetInputKeys(int a1)
{
  if ((a1 - 2) > 0xE)
  {
    return 0;
  }

  else
  {
    return *(&off_29EF0FF58 + (a1 - 2));
  }
}

void *sub_299261CFC(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a1 && a2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = sub_299261CA8;
    v15 = sub_299261CB8;
    v16 = objc_alloc_init(MEMORY[0x29EDBA050]);
    v7 = objc_msgSend_length(v2, v4, v5, v6);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = sub_299261E1C;
    v10[3] = &unk_29EF0FF38;
    v10[4] = a2;
    v10[5] = &v11;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v2, v8, 0, v7, 2, v10);
    v2 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v2;
}

void sub_299261E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_299261E1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, a2, a4);
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7)
  {
    v7 = a2;
  }

  return objc_msgSend_appendString_(v9, v6, v7, v8);
}

void *MecabraInputKeyPropertiesCreateASCIIFromInputKeyString(unsigned int a1, void *a2)
{
  v3 = 0;
  if (a1 <= 0x10)
  {
    if (((1 << a1) & 0x8180) != 0)
    {
      if (qword_2A1460358 == -1)
      {
        v4 = &qword_2A1460350;
        goto LABEL_11;
      }

      v4 = &qword_2A1460350;
      v6 = &unk_2A1F68DF8;
    }

    else if (((1 << a1) & 0x10200) != 0)
    {
      if (qword_2A1460368 == -1)
      {
        v4 = &qword_2A1460360;
LABEL_11:
        v3 = *v4;
        goto LABEL_12;
      }

      v4 = &qword_2A1460360;
      v6 = &unk_2A1F68E18;
    }

    else
    {
      if (a1 != 10)
      {
        goto LABEL_12;
      }

      if (qword_2A1460378 == -1)
      {
        v4 = &qword_2A1460370;
        goto LABEL_11;
      }

      v4 = &qword_2A1460370;
      v6 = &unk_2A1F68E38;
    }

    dispatch_once(v4 + 1, v6);
    goto LABEL_11;
  }

LABEL_12:

  return sub_299261CFC(a2, v3);
}

uint64_t sub_299261F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_299261B44(@"⼀⼁⼃⼂乛一丨丿丶㇏問*＊匹", @"1234512344***=", a3, a4);
  qword_2A1460350 = result;
  return result;
}

uint64_t sub_299261FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_299261B44(@"手田水口廿卜山戈人心日尸木火土竹十大中金女月弓一重難ＸＺ", @"qwertyuiopasdfghjklcvbnmzxxz", a3, a4);
  qword_2A1460360 = result;
  return result;
}

uint64_t sub_299261FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_299261B44(@"金人月白禾言立水火之工木大土王目日口田纟又女子已山", @"qwertyuiopasdfghjklxcvbnm", a3, a4);
  qword_2A1460370 = result;
  return result;
}

void *MecabraInputKeyPropertiesCreateInputKeyFromASCIIString(unsigned int a1, void *a2)
{
  v3 = 0;
  if (a1 <= 0x10)
  {
    if (((1 << a1) & 0x8180) != 0)
    {
      if (qword_2A1460388 == -1)
      {
        v4 = &qword_2A1460380;
        goto LABEL_11;
      }

      v4 = &qword_2A1460380;
      v6 = &unk_2A1F68E58;
    }

    else if (((1 << a1) & 0x10200) != 0)
    {
      if (qword_2A1460398 == -1)
      {
        v4 = &qword_2A1460390;
LABEL_11:
        v3 = *v4;
        goto LABEL_12;
      }

      v4 = &qword_2A1460390;
      v6 = &unk_2A1F68E78;
    }

    else
    {
      if (a1 != 10)
      {
        goto LABEL_12;
      }

      if (qword_2A14603A8 == -1)
      {
        v4 = &qword_2A14603A0;
        goto LABEL_11;
      }

      v4 = &qword_2A14603A0;
      v6 = &unk_2A1F68E98;
    }

    dispatch_once(v4 + 1, v6);
    goto LABEL_11;
  }

LABEL_12:

  return sub_299261CFC(a2, v3);
}

uint64_t sub_29926210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_299261B44(@"12345", @"⼀⼁⼃⼂乛", a3, a4);
  qword_2A1460380 = result;
  return result;
}

uint64_t sub_29926213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_299261B44(@"qwertyuiopasdfghjklcvbnmzxxz", @"手田水口廿卜山戈人心日尸木火土竹十大中金女月弓一重難ＸＺ", a3, a4);
  qword_2A1460390 = result;
  return result;
}

uint64_t sub_29926216C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_299261B44(@"qwertyuiopasdfghjklxcvbnm", @"金人月白禾言立水火之工木大土王目日口田纟又女子已山", a3, a4);
  qword_2A14603A0 = result;
  return result;
}

uint64_t sub_29926219C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, CFStringRef theString, char **a8, char **a9, char **a10, char a11, char a12, char a13, char a14)
{
  *(a1 + 8) = a4;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = a5;
  *(a1 + 44) = 0;
  *a1 = &unk_2A1F68EC8;
  *(a1 + 48) = a6;
  *(a1 + 56) = 0u;
  v17 = (a1 + 56);
  v18 = (a1 + 80);
  *(a1 + 104) = 0u;
  v19 = (a1 + 104);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  if (theString)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], theString);
    v21 = *(a1 + 32);
  }

  else
  {
    v21 = 0;
    Copy = 0;
  }

  *(a1 + 128) = Copy;
  v22 = 16;
  if (a12)
  {
    v22 = 17;
  }

  v23 = v21 | v22;
  if (a13)
  {
    v23 |= 2uLL;
  }

  if (a11)
  {
    v23 |= 4uLL;
  }

  if (a14)
  {
    v23 |= 8uLL;
  }

  *(a1 + 32) = v23;
  if (v17 != a8)
  {
    sub_299223494(v17, *a8, a8[1], (a8[1] - *a8) >> 1);
  }

  if (v18 != a9)
  {
    sub_299223494(v18, *a9, a9[1], (a9[1] - *a9) >> 1);
  }

  if (v19 != a10)
  {
    sub_299223494(v19, *a10, a10[1], (a10[1] - *a10) >> 1);
  }

  if (!a6)
  {
    v24 = *a9;
    v25 = a9[1];
    if (*a9 != v25)
    {
      v26 = *(a1 + 48);
      do
      {
        v27 = *v24;
        v24 += 2;
        v26 += v27;
        *(a1 + 48) = v26;
      }

      while (v24 != v25);
    }
  }

  return a1;
}

void sub_299262324(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[14] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[11] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299262374(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F73CB8;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *a1 = &unk_2A1F68EC8;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_299215EC0((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 1);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_299215EC0((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 1);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_299215EC0((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 1);
  v6 = *(a2 + 128);
  if (v6)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v6);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 128) = Copy;
  return a1;
}

void sub_29926248C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[14] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[11] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992624D8(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_2A1F73CB8;
  *(a1 + 8) = a3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *a1 = &unk_2A1F68EC8;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_299215EC0((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 1);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_299215EC0((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 1);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_299215EC0((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 1);
  v5 = *(a2 + 128);
  if (v5)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v5);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 128) = Copy;
  return a1;
}

void sub_2992625F4(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[14] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[11] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_299262640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_299215EC0(a2, *(a1 + 80), *(a1 + 88), (*(a1 + 88) - *(a1 + 80)) >> 1);
}

uint64_t *sub_29926265C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1 + 104;
  v3 = 80;
  if (*(a1 + 104) == *(a1 + 112))
  {
    v3 = 104;
  }

  else
  {
    v2 = a1 + 80;
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_299215EC0(a2, *(a1 + v3), *(v2 + 8), (*(v2 + 8) - *(a1 + v3)) >> 1);
}

uint64_t *sub_2992626A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_299215EC0(a2, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 1);
}

void sub_2992626C0(uint64_t a1)
{
  sub_299262708(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299262708(uint64_t a1)
{
  *a1 = &unk_2A1F68EC8;
  sub_299219AB4((a1 + 128), 0);
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_299262780(const void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = sub_2993652F8(0xDu);
  v4 = os_signpost_id_make_with_pointer(v3, a1);
  v5 = sub_2993652F8(0xDu);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MecabraJapaneseInit", "MecabraJapanese engine init", buf, 2u);
    }
  }

  operator new();
}

void sub_299263D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, const void *a24, const void *a25, const void *a26, const void *a27)
{
  sub_29920FE30((v27 - 112), 0);
  sub_29920FE30(&a25, 0);
  sub_29920FE30(&a26, 0);
  sub_29920FE30(&a27, 0);
  sub_29920FE30(&a21, 0);
  if (a17)
  {
    MEMORY[0x29C29BF70](a17, 0x1000C8077774924);
  }

  v29 = a23;
  a23 = 0;
  if (v29)
  {
    MEMORY[0x29C29BF70](v29, 0x1000C8077774924);
  }

  sub_29920FE30(&a24, 0);
  sub_299264490(&a20, 0);
  _Unwind_Resume(a1);
}

void sub_299264420()
{
  if (*(v0 + 1159) < 0)
  {
    operator delete(*v1);
  }

  sub_29918D980(v0 + 1088);
  sub_29919C3B0(v2);
  JUMPOUT(0x29926433CLL);
}

uint64_t sub_299264490(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29926462C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t *sub_2992644DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_299274B8C(v2);
    MEMORY[0x29C29BFB0](v3, 0x1020C40F89CB87BLL);
  }

  return a1;
}

uint64_t *sub_299264524(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_299253084((v2 + 24), 0);
    MEMORY[0x29C29BFB0](v2, 0x70C401872A87DLL);
  }

  return a1;
}

uint64_t *sub_299264578(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 344);
    *(v2 + 344) = 0;
    if (v3)
    {
      MEMORY[0x29C29BFB0](v3, 0x1050C40717B85FCLL);
    }

    v4 = sub_299213950(v2);
    MEMORY[0x29C29BFB0](v4, 0x10F2C40570461F6);
  }

  return a1;
}

uint64_t *sub_2992645E4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_299327448(v2);
    MEMORY[0x29C29BFB0](v3, 0x10E0C40CD74A5BALL);
  }

  return a1;
}

uint64_t sub_29926462C(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (!v3 || ((*(*v2 + 176))(v2, *(v3 + 192)), (*(**(a1 + 192) + 176))(*(a1 + 192), *(*(a1 + 176) + 200)), (v2 = *(a1 + 192)) != 0))
    {
      v4 = *(a1 + 1168);
      if (v4)
      {
        (*(*v2 + 176))(v2, *(v4 + 88));
        (*(**(a1 + 192) + 176))(*(a1 + 192), *(*(a1 + 1168) + 96));
        sub_29938460C(*(a1 + 1168), a1);
      }
    }
  }

  v5 = sub_2993652F8(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v23 = 0;
    _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "Mecabra Japanese terminated.", v23, 2u);
  }

  sub_2992644DC((a1 + 3952));
  v6 = *(a1 + 3944);
  *(a1 + 3944) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 3936);
  *(a1 + 3936) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 3920);
  *(a1 + 3920) = 0;
  if (v8)
  {
    v24 = (v8 + 24);
    sub_29927255C(&v24);
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x29C29BFB0](v8, 0x1032C40CA71968DLL);
  }

  v9 = *(a1 + 3896);
  *(a1 + 3896) = 0;
  if (v9)
  {
    MEMORY[0x29C29BFB0](v9, 0x70C4098256540);
  }

  v10 = *(a1 + 3888);
  *(a1 + 3888) = 0;
  if (v10)
  {
    sub_299274CE4(v10);
  }

  sub_299264524((a1 + 3880));
  v11 = *(a1 + 3872);
  *(a1 + 3872) = 0;
  if (v11)
  {
    MEMORY[0x29C29BFB0](v11, 0x1000C4000313F17);
  }

  v12 = *(a1 + 3864);
  *(a1 + 3864) = 0;
  if (v12)
  {
    sub_299274C80(v12);
  }

  sub_29926F058((a1 + 3856), 0);
  v13 = *(a1 + 3848);
  *(a1 + 3848) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 3840);
  *(a1 + 3840) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a1 + 3832);
  *(a1 + 3832) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 3824);
  *(a1 + 3824) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 3816);
  *(a1 + 3816) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  sub_299272640(a1 + 1216);
  v18 = *(a1 + 1192);
  *(a1 + 1192) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a1 + 1184);
  *(a1 + 1184) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sub_29926F224((a1 + 1176), 0);
  sub_29926F224((a1 + 1168), 0);
  sub_299264578((a1 + 1160));
  if (*(a1 + 1159) < 0)
  {
    operator delete(*(a1 + 1136));
  }

  sub_29918D980(a1 + 1088);
  sub_29919C3B0((a1 + 1080));
  v20 = *(a1 + 1072);
  *(a1 + 1072) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(a1 + 1064);
  *(a1 + 1064) = 0;
  if (v21)
  {
    MEMORY[0x29C29BF70](v21, 0x1000C8077774924);
  }

  sub_2992645E4((a1 + 1048));
  return sub_2993141B0(a1);
}

void sub_299264A94(uint64_t a1)
{
  sub_29926462C(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299264ACC(void *a1, int a2, CFArrayRef theArray, char a4)
{
  if (CFArrayGetCount(theArray))
  {
    if (a2 != 2)
    {
      v17[0] = sub_2992C0BE0(theArray);
      sub_299276E1C(v17[0]);
    }

    v8 = a1[494];
    if (v8)
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        if (sub_2992C1E9C(0) && *v9)
        {
          sub_2992CAB70(a1[494]);
        }
      }
    }

    if ((sub_2992CAFEC(a1[494], theArray) & 1) == 0)
    {
      return 0;
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x3002000000;
    v30 = sub_299265210;
    v31 = sub_299265220;
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    v19 = 0;
    v20 = &v19;
    v21 = 0x4002000000;
    v22 = sub_29926522C;
    v23 = sub_299265250;
    __p = 0;
    v25 = 0;
    v26 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2000000000;
    v18[3] = 0;
    v10 = a1[494];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 0x40000000;
    v17[2] = sub_299265268;
    v17[3] = &unk_29EF0FFD8;
    v17[4] = v18;
    v17[5] = &v27;
    v17[6] = &v19;
    sub_2992CB16C(v10, v17);
    Count = CFArrayGetCount(v28[5]);
    if (Count)
    {
      v12 = sub_2993652F8(0xFu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_2993B56E0("[Input Transcoder]", v28[5], v20 + 5);
      }

      sub_2993C6FE0(a1 + 102, v28[5], a4, (v20 + 5));
      v13 = sub_299323D04(v28[5]);
      v14 = a1[107];
      ValueAtIndex = CFArrayGetValueAtIndex(v28[5], v13);
      CFStringAppend(v14, ValueAtIndex);
    }

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(&v19, 8);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v27, 8);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (!Count)
    {
      return 0;
    }

    CFArrayRemoveAllValues(theArray);
  }

  return 1;
}

void sub_299264E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v31 - 96), 8);
  sub_2992530BC((v30 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299264EE0(uint64_t a1, const __CFArray *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  theArray = Mutable;
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    LOBYTE(v7) = 0;
    v6 = 0;
    v9 = 2;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
      v11 = ValueAtIndex[3];
      if ((**v11)(v11) == v9)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
        if (v9 == 2)
        {
          v12 = __dynamic_cast(v11, &unk_2A1F6F680, &unk_2A1F6F690, 0);
          if (!v12)
          {
            goto LABEL_19;
          }

          if (v12[16] == 2)
          {
            if ((sub_299264ACC(a1, 2, Mutable, v7) & 1) == 0)
            {
              goto LABEL_19;
            }

            ++v7;
          }

          v9 = 2;
        }
      }

      else
      {
        if (!sub_299264ACC(a1, v9, Mutable, v7))
        {
          goto LABEL_19;
        }

        v9 = (**v11)(v11);
        Mutable = theArray;
        CFArrayAppendValue(theArray, ValueAtIndex);
        ++v7;
        v6 |= v9 < 2;
      }

      ++v8;
    }

    while (Count != v8);
  }

  if (sub_299264ACC(a1, v9, Mutable, v7))
  {
    if (v6)
    {
      sub_2993C4070((a1 + 816), &v15);
      sub_2992726D0((a1 + 824));
      *(a1 + 824) = v16;
      *(a1 + 840) = v17;
      *(&v16 + 1) = 0;
      v17 = 0;
      *(a1 + 848) = v18;
      v15 = &unk_2A1F74930;
      *&v16 = 0;
      v20 = &v16;
      sub_299259FC8(&v20);
    }

    v13 = 1;
    *(a1 + 848) = 1;
  }

  else
  {
LABEL_19:
    v13 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v13;
}

void sub_299265164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2992530BC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_299265190(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_29921ED28(v2 + 144);
    if (*(v2 + 79) < 0)
    {
      operator delete(*(v2 + 56));
    }

    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x29C29BFB0](v2, 0x10F2C4008B6E913);
  }

  return a1;
}

uint64_t sub_299265210(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

__n128 sub_29926522C(void *a1, uint64_t a2)
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

void sub_299265250(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_299265268(void *a1, CFStringRef theString, _BYTE *a3, float a4)
{
  if (theString && CFStringGetLength(theString))
  {
    if (a4 < 0.04 && *(*(a1[4] + 8) + 24) > 5)
    {
      goto LABEL_20;
    }

    CFArrayAppendValue(*(*(a1[5] + 8) + 40), theString);
    v9 = *(a1[6] + 8);
    v11 = v9[6];
    v10 = v9[7];
    if (v11 >= v10)
    {
      v13 = v9[5];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 2;
      v16 = v15 + 1;
      if ((v15 + 1) >> 62)
      {
        sub_299212A8C();
      }

      v17 = v10 - v13;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
      v19 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v16;
      }

      if (v19)
      {
        sub_2992F86B0((v9 + 5), v19);
      }

      v20 = (v11 - v13) >> 2;
      v21 = (4 * v15);
      v22 = (4 * v15 - 4 * v20);
      *v21 = a4;
      v12 = v21 + 1;
      memcpy(v22, v13, v14);
      v23 = v9[5];
      v9[5] = v22;
      v9[6] = v12;
      v9[7] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v11 = a4;
      v12 = v11 + 1;
    }

    v9[6] = v12;
    if (++*(*(a1[4] + 8) + 24) == 10)
    {
LABEL_20:
      *a3 = 1;
    }
  }
}

unint64_t sub_2992653D4(uint64_t a1, CFArrayRef theArray, unint64_t a3, uint64_t a4)
{
  if (!theArray)
  {
    return 0;
  }

  if (!CFArrayGetCount(theArray))
  {
    sub_2993145CC(a1, 0, a3, a4);
    sub_299315BE8(a1, a3, a4);
    return 1;
  }

  if (sub_2992C0E18(theArray))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);

    return sub_299314F80(a1, ValueAtIndex);
  }

  if (!sub_2992C0B24(theArray))
  {
    v13 = sub_2992C0BE0(theArray);
    if (v13)
    {
      v14 = v13;
      if (CFStringGetLength(v13))
      {
        sub_2993145CC(a1, v14, a3, a4);
        if (a4 && (*sub_299237120() & 1) == 0)
        {
          v15 = sub_299323C14(a4, v14);
        }

        else
        {
          v15 = 0;
        }

        v16 = sub_2992C0E90(theArray);
        v10 = sub_29931511C(a1, v14, a3, a4, v16, v15);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      else
      {
        v10 = 0;
      }

      CFRelease(v14);
      return v10;
    }

    return 0;
  }

  v11 = *(a1 + 3952);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 8);
  if (!v12 || !sub_2992C1E9C(0) || !*v12 || !sub_2993144E8(a1, a3, a4))
  {
    return 0;
  }

  return sub_299264EE0(a1, theArray);
}

void sub_2992655D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

void sub_299265608(uint64_t result, const __CFArray *a2)
{
  v2 = *(result + 3952);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (sub_2992C1E9C(0) && *v3)
      {
        v6 = *(result + 3952);

        sub_2992CAD08(v6, a2);
      }
    }
  }
}

uint64_t sub_299265680(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 256);
  v7 = *(v6 + 88);
  v40 = *(v6 + 80);
  v41 = v7;
  v39 = *(v6 + 96);
  v8 = *(v6 + 120);
  v38[0] = *(v6 + 112);
  v38[1] = v8;
  v9 = 255;
  if ((**(a1 + 1032) & ((*(a1 + 184) & 0x20) == 0)) != 0)
  {
    v9 = 192;
  }

  if (v7 > v9 || (**(a1 + 1032) & 1) == 0 && (*(a1 + 184) & 0x2000002) == 2 && ((v15 = *(v6 + 128), v7 >= 2) ? (v16 = v8 == v15) : (v16 = 1), v16))
  {
    sub_299383844((*(a1 + 176) + 248));
    v13 = *(a1 + 184);
    v14 = 1;
    if ((v13 & 0x2000002) != 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_299383844((*(a1 + 176) + 248));
    v14 = 0;
  }

  sub_299317A4C(a1, a2, a3, &v39, &v40);
  v13 = *(a1 + 184);
LABEL_14:
  if ((v13 & 0x2000002) == 2 && (*(a1 + 231) & 1) == 0)
  {
    if (v14)
    {
      sub_29924976C(*(a1 + 3888), a2, v40, v41, (*(a1 + 176) + 248));
    }

    else
    {
      if (**(a1 + 1032) == 1)
      {
        sub_299265CC4(a1, a2, *(a1 + 256) + 80);
        if (**(a1 + 1032) == 1 && (*(a1 + 187) & 4) == 0 && (*(a1 + 808) & 1) == 0)
        {
          sub_2992661DC(a1, a2, (*(a1 + 256) + 80));
        }
      }

      v17 = sub_2992896C0(*(*(a1 + 176) + 112), v10, v11, v12);
      v18 = *(a1 + 1032);
      if (v18[256] == 1)
      {
        sub_299266A18(a1, a2, v17, &v39, v38);
        v18 = *(a1 + 1032);
      }

      if (v18[264] == 1 && ((*v18 & 1) != 0 || (*(a1 + 184) & 0x2000002) == 2) && (!v17 || sub_299266C54(v17)))
      {
        sub_2992C3E18(*(a1 + 3864), a2, &v39, v38);
      }

      sub_29924976C(*(a1 + 3888), a2, v40, v41, (*(a1 + 176) + 248));
      if (((**(a1 + 1032) & 1) != 0 || (*(a1 + 184) & 0x2000002) != 2) && !*(a1 + 1184) && !*(a1 + 1192))
      {
        (*(**(a1 + 3848) + 16))(&__p);
        v19 = v47;
        for (i = v48; v19 != i; ++v19)
        {
          v42[0] = &unk_2A1F65308;
          v42[3] = v42;
          sub_2992AB710(a2, v19, 1, 0, v42);
          sub_29921F128(v42);
        }

        sub_29921D794(&__p);
      }
    }
  }

  if ((*(a1 + 184) & 2) != 0)
  {
    sub_2992C2C0C(*(a1 + 3872), a2);
  }

  if ((*(a1 + 231) & 1) == 0 && (*(a1 + 186) & 4) == 0)
  {
    sub_299317B54(a1, a2);
  }

  __p = 0;
  v44 = 0;
  v45 = 0;
  *buf = 0;
  v21 = a2[6];
  if (a2[7] != v21)
  {
    v22 = 0;
    do
    {
      v23 = v21[v22];
      v24 = (*(*v23 + 304))(v23);
      for (j = *v24; j != v24[1]; j += 40)
      {
        if (*j == 3)
        {
          LOWORD(v25) = *(j + 24);
          LOWORD(v26) = *(j + 28);
          v26 = *&v26;
          v25 = *&v25 / v26;
          if (v25 > 1.7)
          {
            v28 = *(a1 + 184);
            if ((atomic_load_explicit(&qword_2A145E890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145E890))
            {
              off_2A145E888 = sub_299237120();
              __cxa_guard_release(&qword_2A145E890);
            }

            if ((((v28 & 4) == 0) & *off_2A145E888) == 0 && (v28 & 0x6000000) == 0x6000000 || (*(*v23 + 48))(v23) >= 2)
            {
              sub_299266D00(&__p, buf);
            }

            break;
          }
        }
      }

      v22 = *buf + 1;
      *buf = v22;
      v21 = a2[6];
    }

    while (v22 < a2[7] - v21);
  }

  v29 = sub_2993652F8(0xBu);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v31 = __p;
    v32 = v44;
    if (__p != v44)
    {
      do
      {
        v33 = *v31;
        v34 = sub_2993652F8(0xBu);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v35 = a2[6][v33];
          v36 = (*(*v35 + 24))(v35);
          *buf = 138412290;
          *&buf[4] = v36;
          _os_log_debug_impl(&dword_29918C000, v34, OS_LOG_TYPE_DEBUG, "Pruning %@ (shortcut like user words)", buf, 0xCu);
        }

        ++v31;
      }

      while (v31 != v32);
    }
  }

  sub_2992AC390(a2, &__p, v30);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  __p = &unk_2A1F65CF8;
  v44 = sub_2992ACA88;
  p_p = &__p;
  sub_2992AB9D4(a2, &__p);
  return sub_29922D72C(&__p);
}

void sub_299265C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  __cxa_guard_abort(&qword_2A145E890);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_299265CC4(uint64_t a1, void *a2, uint64_t a3)
{
  v47[4] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 176);
  v5 = v4[22];
  std::mutex::lock((a1 + 880));
  v6 = *(a1 + 944);
  std::mutex::unlock((a1 + 880));
  if (v6 != 2 && (*(a1 + 186) & 4) == 0)
  {
    if (v5)
    {
      v7 = v4[33] - v4[32];
      if (v7)
      {
        v41 = sub_299273C0C(v4 + 31, 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3) - 1);
        if (v41 < 0xCCCCCCCCCCCCCCCDLL * ((v4[33] - v4[32]) >> 3))
        {
          v8 = 0;
          contentsDeallocator = *MEMORY[0x29EDB8EE8];
          v38 = v5;
          v39 = v4;
          do
          {
            std::mutex::lock((a1 + 880));
            v9 = *(a1 + 944);
            std::mutex::unlock((a1 + 880));
            if (v9 == 2)
            {
              break;
            }

            v10 = *(v4[41] + 8 * v41);
            v11 = v4[35];
            v12 = (v4[36] - v11) >> 1;
            if (v12 <= v10)
            {
              v13 = 0;
            }

            else
            {
              v13 = (v11 + 2 * v10);
            }

            if (v11)
            {
              v14 = v12 - v10;
            }

            else
            {
              v14 = 0;
            }

            if (v12 <= v10)
            {
              v15 = 0;
            }

            else
            {
              v15 = v14;
            }

            if (v41 != -1 - 0x3333333333333333 * ((v4[33] - v4[32]) >> 3) || v15 != 1)
            {
              goto LABEL_26;
            }

            v17 = CFStringCreateWithCharactersNoCopy(0, v13, 1, contentsDeallocator);
            v45 = v17;
            v18 = sub_299281E24(v17);
            if (v17)
            {
              CFRelease(v17);
            }

            if ((v18 & 1) == 0)
            {
LABEL_26:
              sub_2992B8778(v5, &v45, v13, v15, 0);
              if (v46 != v45)
              {
                v19 = 0;
                v20 = 0;
                do
                {
                  if (v8 >= *(*(a1 + 1032) + 404))
                  {
                    break;
                  }

                  std::mutex::lock((a1 + 880));
                  v21 = *(a1 + 944);
                  std::mutex::unlock((a1 + 880));
                  if (v21 == 2)
                  {
                    break;
                  }

                  v22 = v45;
                  v23 = sub_2992B8D0C(&v45[v19], off_2A145F5E8[0]);
                  v24 = v23;
                  v25 = (v23[1] - *v23) >> 1;
                  if (!*v23)
                  {
                    v25 = 0;
                  }

                  v44[0] = *v23;
                  v44[1] = v25;
                  v26 = *(a3 + 48);
                  v43 = *(a3 + 32);
                  if (sub_299217AC4(&v43, v26, v44, *(a1 + 184), 0))
                  {
                    v27 = v8;
                    v28 = sub_2992B8D0C(&v22[v19], off_2A145F5F0[0]);
                    v29 = sub_2992B8DA4(&v22[v19], off_2A145F5F8[0]);
                    v30 = sub_2992B8DA4(&v22[v19], off_2A145F600[0]);
                    v31 = sub_2992B8D0C(&v22[v19], off_2A145F608);
                    v32 = (v24[1] - *v24) >> 1;
                    if (v32 <= *(a3 + 40) && v26 <= 0)
                    {
                      v34 = 0;
                    }

                    else
                    {
                      v34 = 2;
                    }

                    v35 = sub_2992DC9CC((a1 + 1208), a3, *(a3 + 16), *(a3 + 24), *v24, v32, *v28, ((*(v28 + 8) - *v28) >> 1), v29, v30, v31, v27 + *(*(a1 + 1032) + 520), 74, v34, 0, 0);
                    *&v43 = v35;
                    if (v35)
                    {
                      (*(*v35 + 528))(v35, 3, "Adding a bigram learning dictionary candidate", 1);
                      v47[0] = &unk_2A1F65308;
                      v47[3] = v47;
                      sub_2992AB710(a2, &v43, 1, 0, v47);
                      sub_29921F128(v47);
                      v8 = (v27 + 1);
                      v36 = v43;
                      *&v43 = 0;
                      if (v36)
                      {
                        (*(*v36 + 16))(v36);
                      }
                    }

                    else
                    {
                      v8 = v27;
                    }
                  }

                  ++v20;
                  ++v19;
                }

                while (v20 < v46 - v45);
              }

              v44[0] = &v45;
              sub_299225D98(v44);
              v5 = v38;
              v4 = v39;
            }

            ++v41;
          }

          while (v41 < 0xCCCCCCCCCCCCCCCDLL * ((v4[33] - v4[32]) >> 3));
        }
      }
    }
  }
}

void sub_299266130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992661DC(uint64_t a1, uint64_t a2, void *a3)
{
  v66 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 176);
  v45 = *(v5 + 8);
  v46 = *(v5 + 176);
  std::mutex::lock((a1 + 880));
  v6 = *(a1 + 944);
  std::mutex::unlock((a1 + 880));
  if (v6 != 2 && (*(a1 + 186) & 4) == 0 && v46 && v45 != 0)
  {
    v8 = a3[5];
    v9 = *(a1 + 1032);
    if (v8 >= *(v9 + 412) && v8 <= *(v9 + 414))
    {
      v44 = v8 - 1;
      if (v8 != 1)
      {
        v57 = v44;
        v47 = a3;
        do
        {
          std::mutex::lock((a1 + 880));
          v10 = *(a1 + 944) == 2;
          std::mutex::unlock((a1 + 880));
          if (v10)
          {
            break;
          }

          v11 = *(a1 + 704);
          v12 = v57;
          if (!a3[4])
          {
            v12 = 0;
          }

          v62 = a3[4];
          v63 = v12;
          sub_2993D904C(v45, &v64, v11, &v62, 0);
          if (v65 != v64)
          {
            v48 = 0;
            do
            {
              std::mutex::lock((a1 + 880));
              v13 = *(a1 + 944);
              std::mutex::unlock((a1 + 880));
              if (v13 == 2)
              {
                break;
              }

              v14 = v64 + 32 * v48;
              v52 = sub_2992B8D0C(v14, off_2A145F3B0[0]);
              v53 = sub_2992B8D0C(v14, off_2A145F3B8);
              v15 = sub_2992B8DA4(v14, off_2A145F390[0]);
              v16 = sub_2992B8DA4(v14, off_2A145F388[0]);
              v51 = sub_2992B8D0C(v14, off_2A145F398[0]);
              v17 = *(a1 + 704);
              v18 = (*(v53 + 8) - *v53) >> 1;
              v60 = *v53;
              v61 = v18;
              sub_2993D904C(v46, &v62, v17, &v60, 0);
              if (v63 != v62)
              {
                v19 = 0;
                v49 = v16;
                v50 = v15;
                for (i = 1; ; ++i)
                {
                  std::mutex::lock((a1 + 880));
                  v21 = *(a1 + 944);
                  std::mutex::unlock((a1 + 880));
                  if (v21 == 2)
                  {
                    break;
                  }

                  v22 = v62;
                  v23 = sub_2992B8D0C(&v62[v19], off_2A145F5E8[0]);
                  v24 = sub_2992B8D0C(&v22[v19], off_2A145F5F0[0]);
                  v25 = sub_2992B8DA4(&v22[v19], off_2A145F5F8[0]);
                  v26 = sub_2992B8DA4(&v22[v19], off_2A145F600[0]);
                  v27 = sub_2992B8D0C(&v22[v19], off_2A145F608);
                  LODWORD(v28) = *(a3 + 10) - v57;
                  v29 = *v23;
                  v30 = (*(v23 + 8) - *v23) >> 1;
                  if (v30 >= v28)
                  {
                    v31 = v27;
                    v28 = v28;
                    v32 = a3[4];
                    v59 = 0;
                    if (!v32)
                    {
                      v28 = 0;
                    }

                    v60 = (v32 + 2 * v57);
                    v61 = v28;
                    v33 = a3[6];
                    v58[0] = v29;
                    v58[1] = v30;
                    if (sub_299217AC4(&v60, v33, v58, *(a1 + 184), &v59))
                    {
                      v34 = a3[2];
                      v55 = a3[3];
                      v35 = sub_29926D860(a3, v57);
                      v36 = a3;
                      v38 = v37;
                      v54 = v59;
                      v56 = sub_2992DC9CC((a1 + 1208), v36, v35, v37, *v52, ((*(v52 + 8) - *v52) >> 1), *v53, ((*(v53 + 8) - *v53) >> 1), v50, v49, v51, 0, 74, 0, 0, 0);
                      v39 = (v34 + 2 * v38);
                      if (v34)
                      {
                        v40 = (v55 - v38);
                      }

                      else
                      {
                        v40 = 0;
                      }

                      if (v54)
                      {
                        v41 = 0;
                      }

                      else
                      {
                        v41 = 2;
                      }

                      a3 = v47;
                      v42 = sub_2992DC9CC((a1 + 1208), v47, v39, v40, *v23, ((*(v23 + 8) - *v23) >> 1), *v24, ((*(v24 + 8) - *v24) >> 1), v25, v26, v31, 0, 74, v41, 0, v57);
                      if (v56)
                      {
                        if (v42)
                        {
                          operator new();
                        }

                        (*(*v56 + 16))(v56);
                      }

                      else if (v42)
                      {
                        (*(*v42 + 16))(v42);
                      }
                    }
                  }

                  v43 = (v63 - v62) >> 5;
                  if (v43 >= 4)
                  {
                    v43 = 4;
                  }

                  if (v43 <= i)
                  {
                    break;
                  }

                  v19 += 4;
                }
              }

              v60 = &v62;
              sub_299225D98(&v60);
              ++v48;
            }

            while (v48 < (v65 - v64) >> 5);
          }

          v62 = &v64;
          sub_299225D98(&v62);
          --v57;
          --v44;
        }

        while (v44);
      }
    }
  }
}

void sub_299266A18(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a3 && ((*(*a3 + 88))(a3) & 1) == 0 && a3[34] != a3[33])
  {
    v10 = 0;
    do
    {
      std::mutex::lock((a1 + 880));
      v11 = *(a1 + 944);
      std::mutex::unlock((a1 + 880));
      if (v11 == 2)
      {
        break;
      }

      v12 = (*(*a3 + 576))(a3);
      v13 = *(a3[33] + 2 * v10);
      v14 = *(a3[36] + 4 * v10);
      v15 = sub_2993652F8(0xAu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        Surface = MecabraCandidateGetSurface(*(*(a1 + 176) + 104), v16, v17, v18);
        *buf = 67109890;
        v24 = v12;
        v25 = 1024;
        v26 = v13;
        v27 = 2112;
        v28 = Surface;
        v29 = 1024;
        v30 = v14;
        _os_log_debug_impl(&dword_29918C000, v15, OS_LOG_TYPE_DEBUG, "[MJ:searchPhrasesByPosContext] Considering POS context (%d, %d) for %@ with additional cost %d", buf, 0x1Eu);
      }

      v19 = *(a1 + 3856);
      v21[0] = MEMORY[0x29EDCA5F8];
      v21[1] = 0x40000000;
      v21[2] = sub_29926ED0C;
      v21[3] = &unk_29EF10048;
      v21[4] = a1;
      v21[5] = a5;
      v22 = v14;
      v21[6] = a2;
      sub_299255EA8(v19, v12, v13, a4, v21);
      ++v10;
    }

    while (v10 < (a3[34] - a3[33]) >> 1);
  }
}

uint64_t sub_299266C54(uint64_t a1)
{
  v2 = (*(*a1 + 48))(a1);
  v3 = (*(*a1 + 352))(a1, v2 - 1);
  sub_299255778(0);
  if (qword_2A1461DE8 <= v3)
  {
    return 0;
  }

  else
  {
    return *(qword_2A1461DE0 + v3) & 1;
  }
}

void sub_299266D00(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_299212A8C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_299236FB8(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

uint64_t sub_299266DE0(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 1032))
  {
    return 1;
  }

  v6 = *(a1 + 184);
  if ((v6 & 0x2000000) != 0)
  {
    if ((v6 & 0x20000000) == 0)
    {
      return 1;
    }
  }

  else if ((~v6 & 0x4000002) == 0 && !(*(*a2 + 408))(a2))
  {
    return 1;
  }

  if (!(*(*a2 + 48))(a2))
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = *(a1 + 1072);
    v9 = sub_2992C77D8(a2, v7);
    v11 = v10;
    v12 = sub_2992C71F4(a2, v7);
    v14 = (*(*v8 + 32))(v8, v9, v11, v12, v13);
    if (v14)
    {
      v2 = (v14 >> 1) & 1;
    }

    else
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      break;
    }

    ++v7;
  }

  while (v7 < (*(*a2 + 48))(a2));
  return v2;
}

void sub_299266F50(uint64_t a1, uint64_t a2, const void **a3, void *a4)
{
  if ((atomic_load_explicit(&qword_2A14603C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603C0))
  {
    qword_2A14603B8 = sub_299237120();
    __cxa_guard_release(&qword_2A14603C0);
  }

  if (*(a2 + 48) != *(a2 + 56))
  {
    v6 = sub_299322EB0(*(a1 + 184));
    v7 = 528;
    if (v6)
    {
      v7 = 532;
    }

    v8 = *(a2 + 48);
    if ((*(a2 + 56) - v8) >> 3 >= *(qword_2A14603B8 + v7))
    {
      v9 = *(qword_2A14603B8 + v7);
    }

    else
    {
      v9 = (*(a2 + 56) - v8) >> 3;
    }

    v10 = *(a1 + 176);
    v32 = 0;
    v11 = sub_2993232FC((v10 + 248), &v32);
    if (v9)
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      v15 = !v32;
      v16 = *(a1 + 176);
      do
      {
        while (1)
        {
          v17 = *(*(a2 + 48) + 8 * v14);
          if ((*(*v17 + 408))(v17) != 1)
          {
            v18 = sub_299340A44(v16 + 376, v17, a3, a4, v12 & v15, *(a1 + 810), *(a1 + 811));
            if (v18)
            {
              break;
            }
          }

          if (++v14 >= v9)
          {
            goto LABEL_22;
          }
        }

        v19 = v13;
        v20 = v13 >> 4;
        if (((v13 >> 4) + 1) >> 60)
        {
          sub_299212A8C();
        }

        if (v13 >> 4 != -1)
        {
          if (!(((v13 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_29919600C();
        }

        v21 = (16 * v20);
        *v21 = v14;
        v21[1] = v18;
        v13 = 16 * v20 + 16;
        memcpy(0, 0, v19);
        if ((*(a1 + 187) & 2) == 0)
        {
          break;
        }

        ++v14;
      }

      while (v14 < v9);
    }

    else
    {
      v13 = 0;
    }

LABEL_22:
    v22 = 126 - 2 * __clz(v13 >> 4);
    if (v13)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    sub_299272744(0, v13, v23, 1);
    if (v13)
    {
      for (i = 0; i != v13; i += 16)
      {
        v25 = *i;
        v26 = sub_2993652F8(6u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(*(a2 + 48) + 8 * v25);
          (*(*v27 + 528))(v27, 6, "[LexicalPreferenceLearner] Rewriting candidate from", 1);
          (*(**(i + 8) + 528))(*(i + 8), 6, "[LexicalPreferenceLearner] Rewriting candidate to", 1);
        }

        v31 = *(i + 8);
        sub_2992ABB04(a2, &v31, v25);
        v28 = v31;
        v31 = 0;
        if (v28)
        {
          (*(*v28 + 16))(v28);
        }
      }
    }

    sub_2992AC684(a2, 12, "## Lexical preference applied ##", 0, 1);
  }
}

void sub_2992673A4(uint64_t a1, uint64_t a2)
{
  v30[4] = *MEMORY[0x29EDCA608];
  sub_299317C40(a1, a2);
  v30[0] = &unk_2A1F65CF8;
  v30[1] = sub_2992ACA88;
  v30[3] = v30;
  sub_2992AB9D4(a2, v30);
  sub_29922D72C(v30);
  if ((*(a1 + 231) & 1) == 0)
  {
    v4 = *(a1 + 1032);
    v5 = *(a1 + 184);
    v7 = *v4 != 1 || (v5 & 0x6000000) != 100663296 || (*(a1 + 184) & 4) == 0;
    if ((v5 & 0x800000) != 0 || (v7 & v4[280]) == 1)
    {
      v8 = *(a2 + 48);
      if (v8 != *(a2 + 56))
      {
        v9 = *v8;
        v10 = *(*v8 + 87);
        v11 = v10 >= 0 ? v9 + 8 : v9[8];
        v12 = v10 >= 0 ? v10 : v9[9];
        v13 = (*(*v9 + 552))(v9);
        v15 = v14;
        if (v14)
        {
          v16 = v13;
          v17 = *v13;
          v18 = v17 - 12353;
          if ((v17 - 12353) < 0x56)
          {
            goto LABEL_25;
          }

          v19 = 1;
          LOWORD(v20) = *v13;
          v21 = 1;
          do
          {
            if (v20 == 12316)
            {
              break;
            }

            if (v20 == 12540)
            {
              break;
            }

            v21 = v19 < v14;
            if (v14 == v19)
            {
              break;
            }

            v20 = v13[v19++];
          }

          while ((v20 - 12353) >= 0x56);
          if (v21)
          {
LABEL_25:
            sub_29931A270(*(a1 + 3880), a2, v11, v12, v13, v14);
            sub_29931A858(*(a1 + 3880), a2, v11, v12, v16, v15);
            LOWORD(v17) = *v16;
            v18 = *v16 - 12353;
          }

          if (v18 < 0x54u)
          {
            goto LABEL_39;
          }

          v22 = 1;
          v23 = 1;
          do
          {
            v24 = v17;
            v25 = v17 - 12289;
            v26 = v25 > 0x1B;
            v27 = (1 << v25) & 0x8001803;
            if (!v26 && v27 != 0 || (v24 - 12539) < 2)
            {
              break;
            }

            v23 = v22 < v15;
            if (v15 == v22)
            {
              break;
            }

            v17 = v16[v22++];
          }

          while ((v17 - 12353) >= 0x54);
          if (v23)
          {
LABEL_39:
            sub_29931A4F0(*(a1 + 3880), a2, v11, v12, v16, v15);
          }
        }
      }
    }

    sub_29931B168(*(a1 + 3880), a2);
  }

  sub_2992ABFE4(a2);
  if ((*(a1 + 230) & 1) == 0)
  {
    sub_29926768C(a1, a2);
  }
}

void sub_299267670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29922D72C(va);
  _Unwind_Resume(a1);
}

void sub_29926768C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(a2 + 56) != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if ((*(*v5 + 96))(v5) != 78)
      {
        v6 = (*(*v5 + 24))(v5);
        v7 = (*(*v5 + 232))(v5);
        v8 = sub_2992F2800(1, 0, v6, v7);
        v39 = v8;
        if (v8)
        {
          v9 = v8;
          v10 = (*(*v5 + 24))(v5);
          v11 = sub_2992F2F40(1, 0, v10);
          v12 = 0;
          __src = 0;
          v37 = 0;
          v13 = v11 & 4;
          v38 = 0;
          while (v12 < CFArrayGetCount(v9))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
            sub_299276BDC(ValueAtIndex, &__p);
            if (*(v5 + 87) >= 0)
            {
              v15 = *(v5 + 87);
            }

            else
            {
              v15 = *(v5 + 72);
            }

            (*(*v5 + 544))(v5);
            v17 = v16;
            (*(*v5 + 552))(v5);
            sub_299323964(v15, v17, v18, ((v35 - __p) >> 1), &v33, *(a1 + 184));
            if (!v12 && v13)
            {
              (*(*v33 + 504))(v33, 0);
            }

            v19 = v37;
            if (v37 >= v38)
            {
              v20 = __src;
              v21 = v37 - __src;
              v22 = (v37 - __src) >> 3;
              v23 = v22 + 1;
              if ((v22 + 1) >> 61)
              {
                sub_299212A8C();
              }

              v24 = v38 - __src;
              if ((v38 - __src) >> 2 > v23)
              {
                v23 = v24 >> 2;
              }

              v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
              v26 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v25)
              {
                v26 = v23;
              }

              v40[4] = &__src;
              if (v26)
              {
                sub_29920B86C(&__src, v26);
              }

              v27 = v33;
              v33 = 0;
              *(8 * v22) = v27;
              memcpy(0, v20, v21);
              v28 = __src;
              v29 = v38;
              __src = 0;
              v37 = (8 * v22 + 8);
              v38 = 0;
              v40[2] = v28;
              v40[3] = v29;
              v40[0] = v28;
              v40[1] = v28;
              sub_2992737D8(v40);
              v30 = v33;
              v37 = (8 * v22 + 8);
              v33 = 0;
              if (v30)
              {
                (*(*v30 + 16))(v30);
              }
            }

            else
            {
              *v37 = v33;
              v37 = v19 + 8;
            }

            if (__p)
            {
              v35 = __p;
              operator delete(__p);
            }

            ++v12;
          }

          v31 = sub_2992ABF28(a2, &__src, v4 + 1);
          v40[0] = &__src;
          sub_29921EC68(v40);
          CFRelease(v9);
          v4 += v31;
        }
      }

      ++v4;
      v2 = *(a2 + 48);
    }

    while (v4 < (*(a2 + 56) - v2) >> 3);
  }
}

void sub_299267A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, const void *a19)
{
  __p = &a16;
  sub_29921EC68(&__p);
  sub_299229F00(&a19, 0);
  _Unwind_Resume(a1);
}

void sub_299267AF8(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v331 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 256);
  v7 = v5[10];
  v6 = v5[11];
  v8 = v5[13];
  v312 = v5[12];
  v313 = v8;
  v9 = v5[14];
  v310 = v5[15];
  v10 = sub_2993652F8(0xCu);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  v12 = *(a1 + 184);
  v13 = 255;
  if ((**(a1 + 1032) & ((v12 & 0x20) == 0)) != 0)
  {
    v13 = 192;
  }

  if (v6 > v13)
  {
    return;
  }

  v14 = v11;
  v308 = v9;
  if ((v12 & 2) != 0 && *(a1 + 228) == 1)
  {
    sub_2992AB584(a2);
    (*(**(a1 + 3848) + 24))(__dst);
    v15 = v325;
    for (i = v326; v15 != i; ++v15)
    {
      (*(**v15 + 528))(*v15, 10, "[MJNP::expandPhrasesWithLanguageModel] Adding an LM expansion candidate", 1);
      v321[0] = &unk_2A1F65308;
      v321[3] = v321;
      sub_2992AB710(a2, v15, 1, 0, v321);
      sub_29921F128(v321);
    }

    *__dst = &unk_2A1F65118;
    *&buf = &v325;
    sub_29921EC68(&buf);
    sub_29921ED28(&__dst[8]);
  }

  if (v14)
  {
    sub_2992AC684(a2, 12, "## Before finalizing weights ##", 0, 1);
  }

  sub_299317C40(a1, a2);
  *__dst = &unk_2A1F65CF8;
  *&__dst[8] = sub_2992ACA88;
  v324 = __dst;
  sub_2992AB9D4(a2, __dst);
  sub_29922D72C(__dst);
  if (v14)
  {
    sub_2992AC684(a2, 12, "## After finalizing weights ##", 0, 1);
  }

  if ((*(a1 + 186) & 0x80) == 0)
  {
    v302 = v6;
    v17 = v7;
    memset(__dst, 0, sizeof(__dst));
    v323 = 0;
    *&buf = 0;
    v18 = a2[6];
    if (a2[7] != v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = v18[v21];
        v23 = (*(*v22 + 96))(v22);
        if ((*(*v22 + 96))(v22) == 88)
        {
          if (v21 > 3)
          {
            goto LABEL_43;
          }

          if (++v19 > 1)
          {
            goto LABEL_43;
          }
        }

        v24 = (*(*v22 + 544))(v22);
        if (v25 == 1 && *v24 == 22247)
        {
          v26 = *(v22 + 87);
          v27 = v26;
          if ((v26 & 0x80u) != 0)
          {
            v26 = *(v22 + 72);
          }

          if (v26 == 1)
          {
            v28 = v27 >= 0 ? (v22 + 64) : *(v22 + 64);
            if (*v28 == 9787)
            {
              goto LABEL_43;
            }
          }
        }

        if (**(a1 + 1032))
        {
          goto LABEL_37;
        }

        v29 = *(a1 + 184);
        if ((v29 & 0x2000002) == 2)
        {
          if ((*(*v22 + 408))(v22) == 1)
          {
            goto LABEL_43;
          }

          if (**(a1 + 1032))
          {
            goto LABEL_37;
          }

          v29 = *(a1 + 184);
        }

        if ((v29 & 0x2000002) != 2 || v23 == 74 || v23 == 76 || sub_299266DE0(a1, v22))
        {
LABEL_37:
          (*(*v22 + 408))(v22);
          ++v20;
          if (**(a1 + 1032))
          {
            goto LABEL_44;
          }

          v30 = *(a1 + 184);
          if ((v30 & 0x2000002) != 2 || v20 <= 0x20 && (v20 < 2 || (v30 & 0x4000000) != 0 || v310 < 0x11))
          {
            goto LABEL_44;
          }
        }

LABEL_43:
        sub_299266D00(__dst, &buf);
LABEL_44:
        v21 = buf + 1;
        *&buf = v21;
        v18 = a2[6];
      }

      while (v21 < a2[7] - v18);
    }

    v31 = sub_2993652F8(0xBu);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v33 = *__dst;
      for (j = *&__dst[8]; v33 != j; ++v33)
      {
        v35 = *v33;
        v36 = sub_2993652F8(0xBu);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v37 = a2[6][v35];
          v38 = (*(*v37 + 24))(v37);
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v38;
          _os_log_debug_impl(&dword_29918C000, v36, OS_LOG_TYPE_DEBUG, "Pruning %@ (n-gram expansion final)", &buf, 0xCu);
        }
      }
    }

    sub_2992AC390(a2, __dst, v32);
    v7 = v17;
    if (*__dst)
    {
      *&__dst[8] = *__dst;
      operator delete(*__dst);
    }

    v6 = v302;
  }

  if ((*(a1 + 231) & 1) == 0)
  {
    sub_299266F50(a1, a2, &v312, (*(a1 + 176) + 248));
  }

  if (**(a1 + 1032) == 1)
  {
    v39 = *(a1 + 176);
    if (v39[252] != 12290 || v39[253] != 12289 || v39[254] != -255 || v39[255] != -225)
    {
      if (sub_2993426A0(&v312))
      {
        v40 = a2[6];
        if (a2[7] != v40)
        {
          v41 = 0;
          do
          {
            v42 = v40[v41];
            if ((*(*v42 + 48))(v42) >= 2)
            {
              *&buf = sub_299342904(v39 + 188, v42);
              if (buf)
              {
                v43 = sub_2993652F8(6u);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  (*(*v42 + 528))(v42, 6, "[PunctuationPreferenceLearner] Rewriting candidate from", 1);
                  (*(*buf + 528))(buf, 6, "[PunctuationPreferenceLearner] Rewriting candidate to", 1);
                }

                *__dst = buf;
                if (sub_29927363C(a2 + 1, __dst))
                {
                  sub_2992ABB04(a2, &buf, v41);
                }

                else
                {
                  sub_2992AC4F8(a2, &buf, v41);
                }

                v44 = buf;
                *&buf = 0;
                if (v44)
                {
                  (*(*v44 + 16))(v44);
                }
              }
            }

            ++v41;
            v40 = a2[6];
          }

          while (v41 < a2[7] - v40);
        }
      }
    }
  }

  v45 = *(a1 + 184);
  if ((v45 & 0x800000) != 0)
  {
    goto LABEL_360;
  }

  v46 = a2[6];
  v47 = a2[7];
  v48 = v47 - v46;
  if ((v47 - v46) < 9)
  {
    goto LABEL_359;
  }

  if (v46 == v47)
  {
    v49 = 0;
  }

  else
  {
    v49 = 0;
    do
    {
      if ((*(**v46 + 96))() == 77)
      {
        break;
      }

      if ((*(**v46 + 96))() == 71)
      {
        break;
      }

      ++v49;
      ++v46;
    }

    while (v46 != v47);
    v46 = a2[6];
    v48 = a2[7] - v46;
  }

  if (v49 == v48 >> 3)
  {
    goto LABEL_359;
  }

  v50 = v46[v49];
  if (!v50)
  {
    goto LABEL_359;
  }

  v303 = __dynamic_cast(v50, &unk_2A1F72C30, &unk_2A1F6D008, 0);
  if (!v303)
  {
    goto LABEL_359;
  }

  buf = 0uLL;
  v330 = 0;
  sub_2991C5AEC(&buf, v48 >> 3);
  v51 = *(a1 + 184);
  *__dst = 0;
  v52 = a2[6];
  if (a2[7] == v52)
  {
    goto LABEL_269;
  }

  v288 = v7;
  v289 = 0;
  v290 = 0;
  v53 = 0;
  v285 = 0;
  v286 = 0;
  v287 = v51 & 0x6000002;
  do
  {
    v54 = v52[v53];
    if ((*(*v54 + 96))(v54) == 89)
    {
      goto LABEL_245;
    }

    v55 = *(a1 + 184);
    if ((((v55 & 0x2000002) == 2) & ~**(a1 + 1032)) != 0 || (v55 & 0x6000002) == 0x4000002)
    {
      v56 = *(v54 + 87);
      v57 = v56 >= 0 ? (v54 + 64) : *(v54 + 64);
      v58 = v56 >= 0 ? *(v54 + 87) : *(v54 + 72);
      if (!v58 || !u_isupper(*v57) && (v58 == 1 || !u_isupper(v57[1])))
      {
        v59 = (*(*v54 + 544))(v54);
        v61 = v60;
        if (!v60 || (v62 = v59, !u_isupper(*v59)) && (v61 == 1 || !u_isupper(v62[1])))
        {
          if ((*(*v54 + 408))(v54) == 2)
          {
            v63 = *(v54 + 119);
            if (v63 < 0)
            {
              LOWORD(v63) = *(v54 + 104);
            }

            v64 = *(a1 + 256);
            v65 = *(v64 + 128);
            v66 = v65 >= 1 ? 1 : *(v64 + 128);
            if (v65 <= 0 && v66 - *(v64 + 120) + v63 == 1)
            {
              v67 = (*(*v54 + 96))(v54);
              v68 = v289;
              if (v67 == 77)
              {
                v68 = v289 + 1;
              }

              v289 = v68;
              sub_299266D00(&buf, __dst);
              goto LABEL_245;
            }
          }
        }
      }
    }

    if (*__dst < v49)
    {
      goto LABEL_245;
    }

    v69 = **(a1 + 1032);
    v70 = *(a1 + 184);
    v71 = v70 & 0x6000002;
    if ((v69 & 1) == 0 && v71 == 2)
    {
      (*(*v54 + 552))(v54);
      if (v72 < 3)
      {
        goto LABEL_119;
      }

      v70 = *(a1 + 184);
      v69 = **(a1 + 1032);
      v71 = v70 & 0x6000002;
    }

    if ((((v70 & 0x2000002) == 2) & ~v69) == 0 && v71 != 67108866)
    {
      goto LABEL_123;
    }

    v81 = *(a1 + 256);
    v82 = *(v81 + 112);
    v83 = *(v81 + 120);
    v298 = (*(*v54 + 112))(v54);
    v295 = (*(*v303 + 112))(v303);
    (*(*v54 + 552))(v54);
    v294 = v84;
    v85 = *(v54 + 87);
    if ((v85 & 0x80u) != 0)
    {
      v85 = *(v54 + 72);
    }

    v292 = v85;
    v86 = sub_299217570(v82, v83);
    v87 = (*(*v54 + 96))(v54);
    v88 = (*(*v54 + 408))(v54);
    sub_299255778(0);
    v89 = sub_299237120();
    if (v88 == 1)
    {
      goto LABEL_119;
    }

    if (v87 == 71)
    {
      goto LABEL_123;
    }

    if (v87 == 88)
    {
      goto LABEL_119;
    }

    v90 = v89;
    if (v87 == 77)
    {
      if ((*(*v54 + 48))(v54) > 1 || (v140 = (*(*v54 + 344))(v54, 0), word_2A1461E08 > v140) || word_2A1461E0A < v140)
      {
        if (++v289 > 3)
        {
          goto LABEL_119;
        }
      }

      if (v287 != 67108866)
      {
        if ((*(*v54 + 408))(v54) == 2)
        {
          if ((*(*v54 + 48))(v54) > 1)
          {
            goto LABEL_119;
          }

          v141 = (*(*v54 + 344))(v54, 0);
          if (word_2A1461E08 > v141 || word_2A1461E0A < v141)
          {
            goto LABEL_119;
          }
        }

        if (v88 == 2 && v294 == v292 && ++v285 > 1)
        {
          goto LABEL_119;
        }

        v142 = (*(*v54 + 232))(v54);
        if (CFStringGetLength(v142) < 5)
        {
          goto LABEL_119;
        }

        goto LABEL_123;
      }

      goto LABEL_250;
    }

    if (v287 == 67108866)
    {
      if (v87 == 80 && ++v286 > v89[188])
      {
        goto LABEL_119;
      }

LABEL_250:
      if (v88 == 2 && v83 - v86 < v90[149] && v294 > v83 - v86 + 1 || v298 - v295 > v90[148])
      {
        goto LABEL_119;
      }
    }

LABEL_123:
    if ((*(a1 + 187) & 0x20) != 0 && (sub_299266DE0(a1, v54) & 1) == 0)
    {
      goto LABEL_119;
    }

    if ((*(*v54 + 408))(v54) == 1)
    {
      goto LABEL_245;
    }

    if ((*(*v54 + 48))(v54) < 2)
    {
      goto LABEL_244;
    }

    if ((atomic_load_explicit(&qword_2A14603E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603E8))
    {
      sub_299217DF0(&qword_2A1460410, L"(<[{（＜［｛「『【〈《");
      __cxa_atexit(sub_299217384, &qword_2A1460410, &dword_29918C000);
      __cxa_guard_release(&qword_2A14603E8);
    }

    if ((atomic_load_explicit(&qword_2A14603F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603F0))
    {
      sub_299217DF0(&qword_2A1460428, asc_29945C678);
      __cxa_atexit(sub_299217384, &qword_2A1460428, &dword_29918C000);
      __cxa_guard_release(&qword_2A14603F0);
    }

    v291 = (*(*v54 + 544))(v54);
    v293 = v73;
    if (v73)
    {
      v74 = 0;
      v75 = 0;
      v76 = v291;
      v77 = v73;
      while (1)
      {
        v79 = *v76++;
        v78 = v79;
        if ((v79 + 240) < 0xAu)
        {
          break;
        }

        if ((v78 - 48) < 0xA)
        {
          v80 = 1;
          goto LABEL_137;
        }

        if (sub_299281B98(v78))
        {
          v80 = 3;
          goto LABEL_137;
        }

        v75 = 0;
        v80 = 0;
LABEL_139:
        v74 = v80;
        if (!--v77)
        {
          goto LABEL_152;
        }
      }

      v80 = 2;
LABEL_137:
      if ((v75 & (v74 != v80)) != 0)
      {
        goto LABEL_119;
      }

      v75 = 1;
      goto LABEL_139;
    }

LABEL_152:
    v91 = (*(*v54 + 24))(v54);
    if (sub_29925D670(v91, v92, v93, v94))
    {
      goto LABEL_119;
    }

    if (v293 < 2)
    {
LABEL_231:
      v128 = (*(*v54 + 544))(v54);
      if ((*(*v54 + 48))(v54))
      {
        v129 = 0;
        v130 = 0;
        do
        {
          if (v129)
          {
            v131 = *(v128 - 2 + 2 * v130);
            v132 = v131 - 48;
            v133 = (v131 + 240);
            v134 = v132 >= 0xA && v133 > 9;
            if (!v134)
            {
              v135 = *(v128 + 2 * v130);
              v136 = v135 - 48;
              v137 = (v135 + 240);
              if (v136 < 0xA || v137 < 0xA)
              {
                goto LABEL_119;
              }
            }
          }

          v139 = (*(*v54 + 568))(v54, v129++);
          v130 += v139;
        }

        while (v129 < (*(*v54 + 48))(v54));
      }

LABEL_244:
      v290 = 1;
      goto LABEL_245;
    }

    v296 = v291;
    v284 = 2;
    v95 = 1;
    while (1)
    {
      v96 = *(v291 + 2 * v95);
      v97 = 9787;
      v299 = v95;
      if (v96 == 9787)
      {
        goto LABEL_184;
      }

      if ((u_charType(v96) - 19) > 0xA)
      {
        v97 = v96;
LABEL_184:
        if (u_charType(v97) == 19)
        {
          v109 = 0;
          while (1)
          {
            v110 = 4;
            if (v299 + v109 > 4)
            {
              v110 = v299 + v109;
            }

            if (v299 + v109 <= v110 - 4)
            {
              break;
            }

            v111 = v296[v109];
            v112 = u_charType(v111);
            --v109;
            if (v96 != v111 && v112 == 19)
            {
              goto LABEL_119;
            }
          }
        }

        else
        {
          v114 = byte_2A146043F;
          if (byte_2A146043F >= 0)
          {
            v115 = &qword_2A1460428;
          }

          else
          {
            v115 = qword_2A1460428;
          }

          if (byte_2A146043F < 0)
          {
            v114 = unk_2A1460430;
          }

          if (v114)
          {
            v116 = 2 * v114;
            v117 = v115;
            while (*v117 != v96)
            {
              v117 = (v117 + 2);
              v116 -= 2;
              if (!v116)
              {
                goto LABEL_230;
              }
            }

            if (v116 && v117 - v115 != -2)
            {
              v118 = byte_2A1460427;
              if (byte_2A1460427 >= 0)
              {
                v119 = &qword_2A1460410;
              }

              else
              {
                v119 = qword_2A1460410;
              }

              if (byte_2A1460427 < 0)
              {
                v118 = unk_2A1460418;
              }

              v120 = v119 + v118;
              v121 = v95;
              while (1)
              {
                v122 = 6;
                if (v121 > 6)
                {
                  v122 = v121;
                }

                if (v121 <= v122 - 6)
                {
                  break;
                }

                --v121;
                v123 = *(v291 + 2 * v121);
                if (v118)
                {
                  v124 = 2 * v118;
                  v125 = v119;
                  while (*v125 != v123)
                  {
                    v125 = (v125 + 2);
                    v124 -= 2;
                    if (!v124)
                    {
                      v125 = (v119 + 2 * v118);
                      break;
                    }
                  }

                  v126 = v125 == v120;
                  if (v125 == v120)
                  {
                    v125 = 0;
                  }

                  v127 = v125 - v119 == -2 || v126;
                }

                else
                {
                  v127 = 1;
                }

                if (v96 != v123 && (v127 & 1) == 0)
                {
                  goto LABEL_119;
                }
              }
            }
          }
        }

        goto LABEL_230;
      }

      v98 = 2;
      if (v95 > 2)
      {
        v98 = v95;
      }

      if (v95 > (v98 - 2))
      {
        break;
      }

LABEL_230:
      v95 = v299 + 1;
      ++v284;
      ++v296;
      if (v299 + 1 == v293)
      {
        goto LABEL_231;
      }
    }

    v99 = v296;
    v100 = v284;
    while (1)
    {
      v102 = *v99--;
      v101 = v102;
      if (v102 != 9787 && (u_charType(v101) - 19) <= 0xA)
      {
        IntPropertyValue = u_getIntPropertyValue(v96, UCHAR_EAST_ASIAN_WIDTH);
        v104 = u_getIntPropertyValue(v101, UCHAR_EAST_ASIAN_WIDTH);
        v105 = IntPropertyValue == 3 || IntPropertyValue == 5;
        v106 = v105;
        v107 = v104 == 3 || v104 == 5;
        v108 = v107;
        if (v106 != v108)
        {
          break;
        }
      }

      if (--v100 < 2)
      {
        goto LABEL_230;
      }
    }

LABEL_119:
    sub_299266D00(&buf, __dst);
LABEL_245:
    v53 = *__dst + 1;
    *__dst = v53;
    v52 = a2[6];
  }

  while (v53 < a2[7] - v52);
  v7 = v288;
  if ((v290 & 1) == 0)
  {
LABEL_269:
    v143 = buf;
    if (buf != *(&buf + 1))
    {
      v144 = buf;
      while (*v144 != v49)
      {
        ++v144;
        v143 += 8;
        if (v144 == *(&buf + 1))
        {
          v143 = *(&buf + 1);
          break;
        }
      }
    }

    if (*(&buf + 1) != v143)
    {
      v145 = *(&buf + 1) - (v143 + 8);
      if (*(&buf + 1) != v143 + 8)
      {
        memmove(v143, (v143 + 8), *(&buf + 1) - (v143 + 8));
      }

      *(&buf + 1) = v143 + v145;
    }
  }

  v146 = sub_2993652F8(0xBu);
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
  {
    v149 = *(&buf + 1);
    for (k = buf; k != v149; ++k)
    {
      v150 = *k;
      v151 = sub_2993652F8(0xBu);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        v152 = a2[6][v150];
        v153 = (*(*v152 + 24))(v152);
        *__dst = 138412290;
        *&__dst[4] = v153;
        _os_log_debug_impl(&dword_29918C000, v151, OS_LOG_TYPE_DEBUG, "Pruning %@ (post-processing)", __dst, 0xCu);
      }
    }
  }

  if (**(a1 + 1032) == 1 && (*(a1 + 184) & 0x6000002) == 0x4000002)
  {
    memset(__dst, 0, sizeof(__dst));
    v323 = 0;
    v155 = *(&buf + 1);
    v154 = buf;
    if (buf != *(&buf + 1))
    {
      do
      {
        *&v327 = *v154;
        v156 = a2[6][v327];
        if (v156)
        {
          v157 = __dynamic_cast(v156, &unk_2A1F72C30, &unk_2A1F6D008, 0);
          if (v157)
          {
            v158 = v157;
            if ((*(*v157 + 408))(v157) == 2)
            {
              sub_299266D00(__dst, &v327);
            }

            else
            {
              v158[51] = 68;
            }
          }
        }

        ++v154;
      }

      while (v154 != v155);
      v154 = buf;
    }

    if (v154)
    {
      *(&buf + 1) = v154;
      operator delete(v154);
    }

    v147 = *__dst;
    buf = *__dst;
    v330 = v323;
  }

  sub_2992AC390(a2, &buf, v147);
  v159 = *(a1 + 1184);
  if (v159 && ((*(*v159 + 48))(v159) & 1) != 0 || (v160 = *(a1 + 1192)) != 0 && (*(*v160 + 48))(v160))
  {
    v161 = sub_299322EB0(*(a1 + 184));
    v162 = 224;
    if (v161)
    {
      v162 = 228;
    }

    v163 = *(*(a1 + 1032) + v162);
    v164 = a2[6];
    v165 = a2[7];
    if (v164 == v165)
    {
      v166 = 0;
      v169 = a2[6];
    }

    else
    {
      v166 = 0;
      v167 = v164 + 1;
      do
      {
        if ((*(**(v167 - 1) + 96))(*(v167 - 1)) == 77)
        {
          break;
        }

        if ((*(**(v167 - 1) + 96))(*(v167 - 1)) == 71)
        {
          v168 = 1;
        }

        else
        {
          ++v166;
          v168 = v167 == v165;
        }

        ++v167;
      }

      while (!v168);
      v164 = a2[6];
      v169 = a2[7];
    }

    if (v166 != v169 - v164)
    {
      v170 = v164[v166];
      v171 = (*(*v170 + 384))(v170);
      v172 = v170[23];
      v173 = sub_299237120();
      v174 = *(v173 + 1);
      v175 = *(v173 + 1);
      memset(__dst, 0, sizeof(__dst));
      v323 = 0;
      sub_2991C5AEC(__dst, a2[7] - a2[6] - v166);
      v176 = v166 + 1;
      *&v327 = v166 + 1;
      v177 = a2[6];
      if (v166 + 1 < (a2[7] - v177))
      {
        v297 = 0;
        v300 = 0;
        v178 = &unk_2A1F72C30;
        v304 = (v174 * v171 - v175 * v172);
        while (1)
        {
          v179 = v177[v176];
          if (!v179)
          {
            v180 = v6;
LABEL_340:
            v183 = v7;
            goto LABEL_341;
          }

          v180 = v6;
          v181 = __dynamic_cast(v179, v178, &unk_2A1F6D008, 0);
          if (!v181)
          {
            goto LABEL_340;
          }

          v182 = v181;
          v183 = v7;
          if ((*(*v181 + 408))(v181) == 1)
          {
            goto LABEL_341;
          }

          v184 = (*(*v182 + 96))(v182);
          if ((v184 - 66) <= 0x11 && ((1 << (v184 - 66)) & 0x24521) != 0)
          {
            goto LABEL_341;
          }

          v186 = v178;
          v187 = v163;
          v188 = (*(*v182 + 408))(v182);
          v189 = (*(*v182 + 384))(v182);
          v190 = *(v182 + 184);
          v191 = sub_299237120();
          v192 = (v191[1] * v189 - *(v191 + 1) * v190) - v304;
          if (v188 == 2)
          {
            break;
          }

          if (v188)
          {
            v163 = v187;
LABEL_348:
            v178 = v186;
            goto LABEL_341;
          }

          v163 = v187;
          v178 = v186;
          if ((*(*v182 + 48))(v182) != 1)
          {
            v193 = sub_299283910(*(a1 + 1040), v182);
            v194 = *(v182 + 119);
            if (v194 < 0)
            {
              v194 = *(v182 + 104);
            }

            v195 = v194 > 4u && v193 > 1;
            v196 = 236;
            if (v195)
            {
              v196 = 240;
            }

            if (v192 > *(*(a1 + 1032) + v196) || v300 >= v163)
            {
              goto LABEL_338;
            }

            ++v300;
          }

LABEL_341:
          v176 = v327 + 1;
          *&v327 = v176;
          v177 = a2[6];
          v7 = v183;
          v6 = v180;
          if (v176 >= a2[7] - v177)
          {
            goto LABEL_350;
          }
        }

        v163 = v187;
        if (v184 == 70)
        {
          goto LABEL_348;
        }

        v198 = *(a1 + 1032);
        v178 = v186;
        if (v192 <= *(v198 + 244) && v297 < *(v198 + 232))
        {
          ++v297;
          goto LABEL_341;
        }

LABEL_338:
        sub_299266D00(__dst, &v327);
        goto LABEL_341;
      }

LABEL_350:
      v199 = sub_2993652F8(0xBu);
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
      {
        v201 = *__dst;
        for (m = *&__dst[8]; v201 != m; ++v201)
        {
          v203 = *v201;
          v204 = sub_2993652F8(0xBu);
          if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
          {
            v205 = a2[6][v203];
            v206 = (*(*v205 + 24))(v205);
            LODWORD(v327) = 138412290;
            *(&v327 + 4) = v206;
            _os_log_debug_impl(&dword_29918C000, v204, OS_LOG_TYPE_DEBUG, "Pruning %@ (static LM score)", &v327, 0xCu);
          }
        }
      }

      sub_2992AC390(a2, __dst, v200);
      if (*__dst)
      {
        *&__dst[8] = *__dst;
        operator delete(*__dst);
      }
    }
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

LABEL_359:
  v45 = *(a1 + 184);
LABEL_360:
  if ((~v45 & 0x6000000) == 0)
  {
    sub_29926A75C(a1, a2, a3);
  }

  v207 = v308;
  if ((*(a1 + 231) & 1) == 0)
  {
    v208 = *(a1 + 1032);
    v209 = *(a1 + 184);
    v210 = 1;
    v212 = *v208 != 1 || (v209 & 0x6000000) != 100663296 || (*(a1 + 184) & 4) == 0;
    if ((v209 & 0x800000) != 0 || (v212 & v208[280]) == 1)
    {
      if (v310)
      {
        v213 = *v308;
        v214 = v213 - 12353;
        if ((v213 - 12353) < 0x56)
        {
          goto LABEL_379;
        }

        v215 = 1;
        LOWORD(v216) = *v308;
        do
        {
          if (v216 == 12316)
          {
            break;
          }

          if (v216 == 12540)
          {
            break;
          }

          v210 = v215 < v310;
          if (v310 == v215)
          {
            break;
          }

          v216 = v308[v215++];
        }

        while ((v216 - 12353) >= 0x56);
        if (v210)
        {
LABEL_379:
          sub_29931A270(*(a1 + 3880), a2, v312, v313, v308, v310);
          sub_29931A858(*(a1 + 3880), a2, v312, v313, v308, v310);
          v207 = v308;
          LOWORD(v213) = *v308;
          v214 = *v308 - 12353;
        }

        if (v214 < 0x54u)
        {
          goto LABEL_393;
        }

        v217 = 1;
        v218 = 1;
        do
        {
          v219 = v213;
          v220 = v213 - 12289;
          v134 = v220 > 0x1B;
          v221 = (1 << v220) & 0x8001803;
          if (!v134 && v221 != 0 || (v219 - 12539) < 2)
          {
            break;
          }

          v218 = v217 < v310;
          if (v310 == v217)
          {
            break;
          }

          v213 = v207[v217++];
        }

        while ((v213 - 12353) >= 0x54);
        if (v218)
        {
LABEL_393:
          sub_29931A4F0(*(a1 + 3880), a2, v312, v313, v207, v310);
        }
      }

      if (v313)
      {
        v224 = 0;
        for (n = 0; n != v313; v224 = n >= v313)
        {
          v226 = v312[n];
          if ((v226 - 12353) >= 0x56 && v226 != 12540 && v226 != 12316)
          {
            break;
          }

          ++n;
        }

        if (!v224 && (*(a1 + 187) & 4) == 0)
        {
          v229 = *(a1 + 168);
          if (v229)
          {
            v230 = *(v229 + 64);
          }

          else
          {
            v230 = 0;
          }

          sub_29931AEB0(*(a1 + 3880), a2, v7, v6, v312, v313, v230);
        }
      }
    }

    v231 = sub_2992DB210(*(a1 + 3896), a2, v7, v6);
    v232 = v231;
    if (v6)
    {
      v233 = *v7 != 12306;
    }

    else
    {
      v233 = 1;
    }

    v234 = v231 > 0 && v233;
    sub_29931B168(*(a1 + 3880), a2);
    v235 = *(a1 + 184) < 0 && v232 == v234;
    v236 = v235;
    if (v235)
    {
      v237 = *(*(a1 + 1032) + 442);
    }

    else
    {
      v237 = 2;
    }

    if (v232)
    {
      v238 = v232 + 1;
    }

    else
    {
      v238 = v237;
    }

    sub_29931B52C(*(a1 + 3880), a2, v312, v313, v238);
    v311 = sub_29928221C(v312, v313, v236);
    if (v236)
    {
      if (!(((sub_299282124(v312, v313) & 1) == 0) | ((*(a1 + 184) & 0x20) >> 5) & 1 | v311 & 1))
      {
        v239 = a2[6];
        v240 = a2[7];
        if (v239 != v240)
        {
          while (1)
          {
            if ((*(**v239 + 96))() != 89)
            {
              if (*v239)
              {
                v241 = __dynamic_cast(*v239, &unk_2A1F72C30, &unk_2A1F6D008, 0);
                if (v241)
                {
                  break;
                }
              }
            }

            if (++v239 == v240)
            {
              goto LABEL_436;
            }
          }

          v248 = v241;
          v249 = (*(*v241 + 544))(v241);
          if (sub_299282124(v249, v250))
          {
            buf = 0uLL;
            v330 = 0;
            v327 = 0uLL;
            v328 = 0;
            (*(*v248 + 544))(v248);
            sub_2992173B8(&buf, v251);
            (*(*v248 + 552))(v248);
            sub_2992173B8(&v327, v252);
            __src = 0;
            v319 = 0;
            v320 = 0;
            v253 = (*(*v248 + 48))(v248);
            sub_299256F7C(&__src, v253);
            v254 = (*(*v248 + 544))(v248);
            v255 = (*(*v248 + 552))(v248);
            v256 = (*(*v248 + 304))(v248);
            v257 = *v256;
            v301 = v256[1];
            if (*v256 != v301)
            {
              do
              {
                if (v254)
                {
                  v258 = *(v257 + 12);
                }

                else
                {
                  v258 = 0;
                }

                if (v255)
                {
                  v259 = *(v257 + 14);
                }

                else
                {
                  v259 = 0;
                }

                v260 = v319;
                v307 = *(v257 + 12);
                v309 = v259;
                v305 = *(v257 + 14);
                if (v319 >= v320)
                {
                  v264 = __src;
                  v265 = v319 - __src;
                  v266 = 0xCCCCCCCCCCCCCCCDLL * ((v319 - __src) >> 3);
                  v267 = v266 + 1;
                  if (v266 + 1 > 0x666666666666666)
                  {
                    sub_29921E9A8();
                  }

                  if (0x999999999999999ALL * ((v320 - __src) >> 3) > v267)
                  {
                    v267 = 0x999999999999999ALL * ((v320 - __src) >> 3);
                  }

                  if (0xCCCCCCCCCCCCCCCDLL * ((v320 - __src) >> 3) >= 0x333333333333333)
                  {
                    v267 = 0x666666666666666;
                  }

                  if (v267)
                  {
                    sub_29921E9C0(&__src, v267);
                  }

                  v268 = 8 * ((v319 - __src) >> 3);
                  v269 = *v257;
                  v270 = v257[1];
                  *(v268 + 32) = *(v257 + 4);
                  *v268 = v269;
                  *(v268 + 16) = v270;
                  v263 = 40 * v266 + 40;
                  v271 = (40 * v266 - v265);
                  memcpy((v268 - v265), v264, v265);
                  v272 = __src;
                  __src = v271;
                  v319 = v263;
                  v320 = 0;
                  if (v272)
                  {
                    operator delete(v272);
                  }
                }

                else
                {
                  v261 = *v257;
                  v262 = v257[1];
                  *(v319 + 32) = *(v257 + 4);
                  *v260 = v261;
                  v260[1] = v262;
                  v263 = v260 + 40;
                }

                v319 = v263;
                if (sub_29928221C(v254, v258, 1))
                {
                  v317 = 0;
                  sub_2992824B0(v254, v258, &v317, __dst);
                  sub_2992824B0(v255, v309, &v317, &__p);
                  v273 = v319;
                  v274 = HIBYTE(v323);
                  if (v323 < 0)
                  {
                    v274 = *&__dst[8];
                  }

                  *(v319 - 16) = v274;
                  v275 = v316;
                  if ((v316 & 0x80u) != 0)
                  {
                    v275 = v315;
                  }

                  *(v273 - 12) = v275;
                  if (v323 >= 0)
                  {
                    v276 = __dst;
                  }

                  else
                  {
                    v276 = *__dst;
                  }

                  if (v323 >= 0)
                  {
                    v277 = HIBYTE(v323);
                  }

                  else
                  {
                    v277 = *&__dst[8];
                  }

                  sub_29922C614(&buf, v276, v277);
                  if ((v316 & 0x80u) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p;
                  }

                  if ((v316 & 0x80u) == 0)
                  {
                    v279 = v316;
                  }

                  else
                  {
                    v279 = v315;
                  }

                  sub_29922C614(&v327, p_p, v279);
                  if (v316 < 0)
                  {
                    operator delete(__p);
                  }
                }

                else
                {
                  sub_29925851C(__dst, v254, v258);
                  if (v323 >= 0)
                  {
                    v280 = __dst;
                  }

                  else
                  {
                    v280 = *__dst;
                  }

                  if (v323 >= 0)
                  {
                    v281 = HIBYTE(v323);
                  }

                  else
                  {
                    v281 = *&__dst[8];
                  }

                  sub_29922C614(&buf, v280, v281);
                  if (SHIBYTE(v323) < 0)
                  {
                    operator delete(*__dst);
                  }

                  sub_29925851C(__dst, v255, v309);
                  if (v323 >= 0)
                  {
                    v282 = __dst;
                  }

                  else
                  {
                    v282 = *__dst;
                  }

                  if (v323 >= 0)
                  {
                    v283 = HIBYTE(v323);
                  }

                  else
                  {
                    v283 = *&__dst[8];
                  }

                  sub_29922C614(&v327, v282, v283);
                }

                if (SHIBYTE(v323) < 0)
                {
                  operator delete(*__dst);
                }

                v254 += 2 * v307;
                v255 += 2 * v305;
                v257 = (v257 + 40);
              }

              while (v257 != v301);
            }

            (*(*v248 + 112))(v248);
            (*(*v248 + 376))(v248);
            (*(*v248 + 96))(v248);
            (*(*v248 + 408))(v248);
            (*(*v248 + 416))(v248);
            operator new();
          }
        }
      }
    }

LABEL_436:
    v242 = *(a1 + 184);
    if ((v242 & 0x20) == 0 && (*&v311 & ((v242 & 0x1000000u) >> 24)) == 1)
    {
      if (!v236)
      {
        *__dst = 0;
        sub_299282F80(v312, v313, __dst);
      }

      *&v327 = 0;
      sub_2992824B0(v312, v313, &v327, __dst);
      if (v323 >= 0)
      {
        v243 = __dst;
      }

      else
      {
        v243 = *__dst;
      }

      if (v323 >= 0)
      {
        v244 = SHIBYTE(v323);
      }

      else
      {
        v244 = *&__dst[8];
      }

      v245 = sub_29931A61C(*(a1 + 3880), a2, v312, v313, v312, v313, v243, v244, 0.0, 0, 0, 0, 0, v237, 0, 83, 0, 2);
      sub_29931B52C(*(a1 + 3880), a2, v312, v313, v237 + 1);
      if (v245)
      {
        v246 = SHIBYTE(v323);
        v247 = __dst;
        if (v323 < 0)
        {
          v247 = *__dst;
        }

        if (v323 < 0)
        {
          v246 = *&__dst[8];
        }

        *&buf = v247;
        *(&buf + 1) = v246;
        sub_29926B324(a1, a2, &buf, 0, 0);
      }

      if (SHIBYTE(v323) < 0)
      {
        operator delete(*__dst);
      }
    }
  }

  sub_2992ABFE4(a2);
  if ((*(a1 + 230) & 1) == 0)
  {
    sub_29926768C(a1, a2);
  }
}

void sub_29926A4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, char a42)
{
  __cxa_guard_abort(&qword_2A14603F0);
  v44 = *(v42 - 144);
  if (v44)
  {
    *(v42 - 136) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

void sub_29926A75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87[1] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14603C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603C8))
  {
    *&qword_2A1460450 = 0u;
    xmmword_2A1460440 = 0u;
    dword_2A1460460 = 1065353216;
    __cxa_atexit(sub_29926D824, &xmmword_2A1460440, &dword_29918C000);
    __cxa_guard_release(&qword_2A14603C8);
  }

  v6 = *(a1 + 256);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  v84 = v7;
  v85 = v8;
  if ((*(a1 + 187) & 0x10) != 0)
  {
    v9 = (a1 + 232);
    *(a1 + 240) = *(a1 + 232);
    v56 = v8 > 1;
    v10 = v8 - 1;
    if (v56)
    {
      if (v7)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }

      sub_29925851C(&__p, v7, v13);
      v14 = sub_29923AF34(&xmmword_2A1460440, &__p);
      v15 = *(&xmmword_2A1460440 + 1);
      if (*(&xmmword_2A1460440 + 1))
      {
        v16 = v14;
        v17 = vcnt_s8(*(&xmmword_2A1460440 + 8));
        v17.i16[0] = vaddlv_u8(v17);
        v18 = v17.u32[0];
        if (v17.u32[0] > 1uLL)
        {
          v19 = v14;
          if (v14 >= *(&xmmword_2A1460440 + 1))
          {
            v19 = v14 % *(&xmmword_2A1460440 + 1);
          }
        }

        else
        {
          v19 = (*(&xmmword_2A1460440 + 1) - 1) & v14;
        }

        v20 = *(xmmword_2A1460440 + 8 * v19);
        if (v20)
        {
          v21 = *v20;
          if (*v20)
          {
            v22 = *(&xmmword_2A1460440 + 1) - 1;
            do
            {
              v23 = *(v21 + 1);
              if (v23 == v16)
              {
                if (sub_29923AF78(&xmmword_2A1460440, v21 + 8, &__p))
                {
                  v24 = *(v21 + 5);
                  v26 = *(a1 + 240);
                  v25 = *(a1 + 248);
                  if (v26 >= v25)
                  {
                    v28 = (v26 - *v9) >> 3;
                    if ((v28 + 1) >> 61)
                    {
                      sub_299212A8C();
                    }

                    v29 = v25 - *v9;
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
                      sub_29920B86C(a1 + 232, v31);
                    }

                    v32 = (8 * v28);
                    *v32 = v24;
                    v27 = 8 * v28 + 8;
                    v33 = *(a1 + 232);
                    v34 = *(a1 + 240) - v33;
                    v35 = v32 - v34;
                    memcpy(v32 - v34, v33, v34);
                    v36 = *(a1 + 232);
                    *(a1 + 232) = v35;
                    *(a1 + 240) = v27;
                    *(a1 + 248) = 0;
                    if (v36)
                    {
                      operator delete(v36);
                    }
                  }

                  else
                  {
                    *v26 = v24;
                    v27 = (v26 + 1);
                  }

                  *(a1 + 240) = v27;
                  break;
                }
              }

              else
              {
                if (v18 > 1)
                {
                  if (v23 >= v15)
                  {
                    v23 %= v15;
                  }
                }

                else
                {
                  v23 &= v22;
                }

                if (v23 != v19)
                {
                  break;
                }
              }

              v21 = *v21;
            }

            while (v21);
          }
        }
      }

      if (SHIBYTE(v87[0]) < 0)
      {
        operator delete(__p);
      }
    }

    else if (qword_2A1460458)
    {
      sub_299274D34(qword_2A1460450);
      qword_2A1460450 = 0;
      v11 = *(&xmmword_2A1460440 + 1);
      if (*(&xmmword_2A1460440 + 1))
      {
        v12 = 0;
        do
        {
          *(xmmword_2A1460440 + 8 * v12++) = 0;
        }

        while (v11 != v12);
      }

      qword_2A1460458 = 0;
    }
  }

  if ((sub_299301008((a1 + 3904), &v84, a2, (a1 + 232), a3, *(a1 + 864)) & 1) == 0)
  {
    v37 = sub_2993652F8(8u);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p) = 136315138;
      *(&__p + 4) = "stabilizeCandidates";
      _os_log_debug_impl(&dword_29918C000, v37, OS_LOG_TYPE_DEBUG, "[%s] CandidateStabilizer didn't stabilize", &__p, 0xCu);
    }
  }

  if ((*(a1 + 187) & 0x10) == 0)
  {
    return;
  }

  sub_29925851C(__dst, v84, v85);
  v38 = sub_2992AB494(a2);
  if (v38 == -1)
  {
    goto LABEL_154;
  }

  v39 = *(*(a2 + 48) + 8 * v38);
  if (!v39)
  {
    goto LABEL_154;
  }

  v40 = (**&v39[*(*v39 - 32)])(&v39[*(*v39 - 32)]);
  v41 = sub_29923AF34(&xmmword_2A1460440, __dst);
  v42 = v41;
  v43 = *(&xmmword_2A1460440 + 1);
  if (!*(&xmmword_2A1460440 + 1) || ((v44 = vcnt_s8(*(&xmmword_2A1460440 + 8)), v44.i16[0] = vaddlv_u8(v44), v45 = v44.u32[0], v44.u32[0] > 1uLL) ? (v41 >= *(&xmmword_2A1460440 + 1) ? (v46 = v41 % *(&xmmword_2A1460440 + 1)) : (v46 = v41)) : (v46 = (*(&xmmword_2A1460440 + 1) - 1) & v41), (v47 = *(xmmword_2A1460440 + 8 * v46)) == 0 || (v48 = *v47) == 0))
  {
LABEL_69:
    operator new();
  }

  while (1)
  {
    v49 = *(v48 + 1);
    if (v49 == v42)
    {
      break;
    }

    if (v45 > 1)
    {
      if (v49 >= v43)
      {
        v49 %= v43;
      }
    }

    else
    {
      v49 &= v43 - 1;
    }

    if (v49 != v46)
    {
      goto LABEL_69;
    }

LABEL_68:
    v48 = *v48;
    if (!v48)
    {
      goto LABEL_69;
    }
  }

  if (!sub_29923AF78(&xmmword_2A1460440, v48 + 8, __dst))
  {
    goto LABEL_68;
  }

  v50 = *(v48 + 5);
  *(v48 + 5) = v40;
  if (v50)
  {
    (*(*v50 + 16))(v50);
  }

  if (qword_2A1460458 >= 6)
  {
    v51 = qword_2A1460450;
    if (qword_2A1460450)
    {
      v52 = v85;
      v53 = v85 - 5;
      do
      {
        v54 = *(v51 + 39);
        if ((v54 & 0x8000000000000000) != 0)
        {
          v54 = *(v51 + 24);
          v56 = v54 <= v53 || v54 > v52;
          if (v56)
          {
LABEL_120:
            v72 = *(&xmmword_2A1460440 + 1);
            v73 = *(v51 + 8);
            v74 = vcnt_s8(*(&xmmword_2A1460440 + 8));
            v74.i16[0] = vaddlv_u8(v74);
            if (v74.u32[0] > 1uLL)
            {
              if (v73 >= *(&xmmword_2A1460440 + 1))
              {
                v73 %= *(&xmmword_2A1460440 + 1);
              }
            }

            else
            {
              v73 &= *(&xmmword_2A1460440 + 1) - 1;
            }

            v75 = *v51;
            v76 = *(xmmword_2A1460440 + 8 * v73);
            do
            {
              v77 = v76;
              v76 = *v76;
            }

            while (v76 != v51);
            if (v77 == &qword_2A1460450)
            {
              goto LABEL_163;
            }

            v78 = v77[1];
            if (v74.u32[0] > 1uLL)
            {
              if (v78 >= *(&xmmword_2A1460440 + 1))
              {
                v78 %= *(&xmmword_2A1460440 + 1);
              }
            }

            else
            {
              v78 &= *(&xmmword_2A1460440 + 1) - 1;
            }

            v79 = *v51;
            if (v78 == v73)
            {
LABEL_142:
              if (v79)
              {
                goto LABEL_143;
              }
            }

            else
            {
LABEL_163:
              if (!v75)
              {
                goto LABEL_141;
              }

              v80 = *(v75 + 8);
              if (v74.u32[0] > 1uLL)
              {
                if (v80 >= *(&xmmword_2A1460440 + 1))
                {
                  v80 %= *(&xmmword_2A1460440 + 1);
                }
              }

              else
              {
                v80 &= *(&xmmword_2A1460440 + 1) - 1;
              }

              v79 = *v51;
              if (v80 != v73)
              {
LABEL_141:
                *(xmmword_2A1460440 + 8 * v73) = 0;
                v79 = *v51;
                goto LABEL_142;
              }

LABEL_143:
              v81 = *(v79 + 8);
              if (v74.u32[0] > 1uLL)
              {
                if (v81 >= v72)
                {
                  v81 %= v72;
                }
              }

              else
              {
                v81 &= v72 - 1;
              }

              if (v81 != v73)
              {
                *(xmmword_2A1460440 + 8 * v81) = v77;
                v79 = *v51;
              }
            }

            *v77 = v79;
            *v51 = 0;
            --qword_2A1460458;
            *&__p = v51;
            *(&__p + 1) = &xmmword_2A1460440;
            LOBYTE(v87[0]) = 1;
            memset(v87 + 1, 0, 7);
            sub_299274DF0(&__p);
            goto LABEL_150;
          }
        }

        else if (v53 >= v54 || v52 < v54)
        {
          goto LABEL_120;
        }

        v57 = v83;
        if ((v83 & 0x80u) == 0)
        {
          v58 = __dst;
        }

        else
        {
          v57 = __dst[1];
          v58 = __dst[0];
        }

        if (v57 >= v54)
        {
          v59 = v54;
        }

        else
        {
          v59 = v57;
        }

        if (v59 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_299212A30();
        }

        if (v59 >= 0xB)
        {
          if ((v59 | 3) == 0xB)
          {
            v60 = 13;
          }

          else
          {
            v60 = (v59 | 3) + 1;
          }

          sub_299212A48(&__p, v60);
        }

        HIBYTE(v87[0]) = v59;
        if (v57)
        {
          memmove(&__p, v58, 2 * v59);
        }

        *(&v87[-2] + v59) = 0;
        if (v87[0] >= 0)
        {
          v61 = HIBYTE(v87[0]);
        }

        else
        {
          v61 = *(&__p + 1);
        }

        v62 = *(v51 + 39);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = *(v51 + 24);
        }

        if (v61 == v62)
        {
          if (v61)
          {
            if (v63 >= 0)
            {
              v64 = (v51 + 16);
            }

            else
            {
              v64 = *(v51 + 16);
            }

            p_p = __p;
            if (v87[0] >= 0)
            {
              p_p = &__p;
            }

            v66 = v61 - 1;
            do
            {
              v68 = *p_p++;
              v67 = v68;
              v69 = *v64++;
              v70 = v69 != v67;
            }

            while (v69 == v67 && v66-- != 0);
            if ((SHIBYTE(v87[0]) & 0x80000000) == 0)
            {
LABEL_119:
              if (v70)
              {
                goto LABEL_120;
              }

              goto LABEL_131;
            }
          }

          else
          {
            v70 = 0;
            if ((SHIBYTE(v87[0]) & 0x80000000) == 0)
            {
              goto LABEL_119;
            }
          }
        }

        else
        {
          v70 = 1;
          if ((SHIBYTE(v87[0]) & 0x80000000) == 0)
          {
            goto LABEL_119;
          }
        }

        operator delete(__p);
        if (v70)
        {
          goto LABEL_120;
        }

LABEL_131:
        v75 = *v51;
LABEL_150:
        v51 = v75;
      }

      while (v75);
    }
  }

LABEL_154:
  if (v83 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_29926B298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29926B324(uint64_t a1, const char *a2, char **a3, uint64_t a4, int *a5)
{
  v6 = a4;
  v10 = *(a1 + 176);
  v11 = sub_2992896C0(*(v10 + 112), a2, a3, a4);
  return sub_2992F09DC(*(a1 + 696), a2, *a3, a3[1], v10 + 248, v11, v6, *(a1 + 8), a5, *(a1 + 256));
}

void ***sub_29926B3A0(uint64_t a1, uint64_t a2, uint64_t **a3, const UniChar **a4, UniChar **a5)
{
  v104[3] = *MEMORY[0x29EDCA608];
  v90 = 0x80000000;
  v91 = 0x80000000;
  if ((*(a1 + 184) & 0x20) != 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  v10 = sub_2992896C0(*(*(a1 + 176) + 112), a2, a3, a4);
  v89 = sub_299322FD4(*v9, v9[1], v10);
  v11 = v9[1];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *v9;
  v13 = 1;
  v14 = v9[1];
  v15 = 1;
  do
  {
    v17 = *v12++;
    v16 = v17;
    if (v17 == 32)
    {
      break;
    }

    if (v16 == 12288)
    {
      break;
    }

    v15 = v13++ < v11;
    v14 = (v14 - 1);
  }

  while (v14);
  if (!v15)
  {
LABEL_10:
    v18 = *(a1 + 256);
    v19 = v18[11];
    v20 = 255;
    if ((**(a1 + 1032) & ((*(a1 + 184) & 0x20) == 0)) != 0)
    {
      v20 = 192;
    }

    if (v19 > v20 || (**(a1 + 1032) & 1) == 0 && (*(a1 + 184) & 0x2000002) == 2 && ((v23 = v18[15], v22 = v18[16], v19 >= 2) ? (v24 = v23 == v22) : (v24 = 1), v24))
    {
      v21 = 1;
    }

    else
    {
      sub_29926B324(a1, a2, v9, 0, &v91);
      v25 = *(a1 + 184);
      if ((v25 & 2) != 0)
      {
        sub_29926B324(a1, a2, v9, 1, &v91);
        v25 = *(a1 + 184);
      }

      if ((v25 & 1) == 0)
      {
        v26 = sub_2993652F8(3u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_299277B3C(&__p, *v9, v9[1]);
          v47 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v48 = *(a1 + 184);
          v49 = (*(**(a1 + 192) + 232))(*(a1 + 192));
          v50 = sub_299322F38(v48, v49);
          *buf = 136315394;
          *&buf[4] = v47;
          *&buf[12] = 1024;
          *&buf[14] = (v50 >> 2) & 1;
          _os_log_debug_impl(&dword_29918C000, v26, OS_LOG_TYPE_DEBUG, "[MJ::makeMecabMultiWordCandidates] analysisString:%s (prefix:%d)", buf, 0x12u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::mutex::lock((a1 + 880));
        v27 = *(a1 + 944);
        std::mutex::unlock((a1 + 880));
        if (v27 != 2)
        {
          *buf = &unk_2A1F65118;
          *&buf[8] = 0u;
          v95 = 0u;
          v96 = 1065353216;
          memset(v97, 0, 24);
          v28 = *(a1 + 176);
          __p.__r_.__value_.__s.__data_[0] = 0;
          v29 = sub_2993232FC((v28 + 248), &__p);
          v30 = *(a1 + 256);
          if (v30)
          {
            LOBYTE(v30) = *(*(v30 + 184) + 32);
          }

          if (sub_2992F1CC8(*(a1 + 696), a2, buf, *v9, v9[1], v89, v29 & (__p.__r_.__value_.__s.__data_[0] ^ 1u), *(a1 + 8), v30 & 1, &v90))
          {
            if ((*(a1 + 187) & 4) != 0)
            {
              __p.__r_.__value_.__r.__words[0] = &unk_2A1F65CF8;
              __p.__r_.__value_.__l.__size_ = sub_2992ACA88;
              p_p = &__p;
              sub_2992AB9D4(a2, &__p);
              sub_29922D72C(&__p);
              if ((*(a1 + 187) & 2) != 0)
              {
                v31 = *(a2 + 48);
                if (*(a2 + 56) != v31)
                {
                  if (*v31)
                  {
                    v32 = __dynamic_cast(*v31, &unk_2A1F72C30, &unk_2A1F6D008, 0);
                    if (v32)
                    {
                      v33 = v32;
                      v34 = sub_2993652F8(3u);
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                      {
                        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
                        _os_log_debug_impl(&dword_29918C000, v34, OS_LOG_TYPE_DEBUG, "[MJ::makeLastBunsetsuCandidatesFromCurrentLattice]", &__p, 2u);
                      }

                      v35 = sub_2992C778C(v33);
                      v36 = 0;
                      if (v35)
                      {
                        for (i = 0; i != v35; ++i)
                        {
                          v36 += (*(*v33 + 312))(v33, i);
                        }
                      }

                      v38 = v9[1] - v36;
                      if (!*v9)
                      {
                        v38 = 0;
                      }

                      v87 = v38;
                      v88 = &(*v9)[v36];
                      v93[0] = v88;
                      v93[1] = v38;
                      v92 = 0x80000000;
                      v39 = *(a1 + 184);
                      v40 = (*(**(a1 + 192) + 232))(*(a1 + 192));
                      v41 = sub_299322F38(v39, v40);
                      v42 = 2 * v36;
                      if (sub_2993E4FF0(*(a1 + 192), *v9, v9[1], v89, v42, v41 | 4u))
                      {
                        v46 = v89 ? *(v89 + 16) : 0;
                        v51 = v42 ? 1 : v46;
                        v43 = (*(**(a1 + 192) + 248))(*(a1 + 192));
                        if (v43)
                        {
                          sub_2992EF484(*(a1 + 696), v43, v88, v87, v51, *(a1 + 8), 0);
                        }
                      }

                      v52 = sub_2992896C0(*(*(a1 + 176) + 112), v43, v44, v45);
                      v53 = sub_299322FD4(v88, v87, v52);
                      __p.__r_.__value_.__r.__words[0] = v53;
                      if (v53)
                      {
                        v54 = v53[2];
                      }

                      else
                      {
                        v54 = 0;
                      }

                      *(a1 + 8) = 1;
                      if (sub_2993E4FF0(*(a1 + 192), v88, v87, v53, 0, 10))
                      {
                        v55 = (*(**(a1 + 192) + 248))(*(a1 + 192));
                        if (v55)
                        {
                          ++v92;
                          sub_2992EF484(*(a1 + 696), v55, v88, v87, v54, *(a1 + 8), 1);
                        }
                      }

                      *(a1 + 8) = 0;
                      sub_29926C200(&__p);
                      v56 = *(a1 + 176);
                      v57 = *(v56 + 256);
                      *&__p.__r_.__value_.__l.__data_ = *(v56 + 248);
                      __p.__r_.__value_.__r.__words[2] = 0;
                      p_p = 0;
                      sub_29921E8E0(&__p.__r_.__value_.__l.__size_, v57, *(v56 + 264), 0xCCCCCCCCCCCCCCCDLL * ((*(v56 + 264) - v57) >> 3));
                      memset(v101, 0, sizeof(v101));
                      sub_299215EC0(v101, *(v56 + 280), *(v56 + 288), (*(v56 + 288) - *(v56 + 280)) >> 1);
                      memset(v102, 0, sizeof(v102));
                      sub_299215EC0(v102, *(v56 + 304), *(v56 + 312), (*(v56 + 312) - *(v56 + 304)) >> 1);
                      memset(v103, 0, sizeof(v103));
                      sub_29922C820(v103, *(v56 + 328), *(v56 + 336), (*(v56 + 336) - *(v56 + 328)) >> 3);
                      memset(v104, 0, 24);
                      sub_29922C820(v104, *(v56 + 352), *(v56 + 360), (*(v56 + 360) - *(v56 + 352)) >> 3);
                      v58 = sub_2992DCCFC((a1 + 1208), v33);
                      v59 = sub_299338830(*(a1 + 176), v58);
                      v60 = v59;
                      if (v59)
                      {
                        (*(*v59 + 528))(v59, 8, "Previous candidate", 1);
                        sub_299383210(&__p, v60);
                      }

                      (*(**(a1 + 3840) + 16))(*(a1 + 3840), a3, &__p);
                      v98[0] = &unk_2A1F65CF8;
                      v98[1] = sub_2992ACF40;
                      v98[3] = v98;
                      sub_2992AB9D4(a3, v98);
                      sub_29922D72C(v98);
                      sub_299317C40(a1, a3);
                      sub_299266F50(a1, a3, v93, &__p);
                      sub_2992AC684(a3, 8, "Last-bunsetsu", 0, 1);
                      if (v60)
                      {
                        (*(*v60 + 16))(v60);
                      }

                      if (v58)
                      {
                        (*(*v58 + 16))(v58);
                      }

                      sub_299273884(&__p);
                    }
                  }
                }
              }
            }

            __p.__r_.__value_.__r.__words[0] = &unk_2A1F65CF8;
            __p.__r_.__value_.__l.__size_ = sub_2992ACA88;
            p_p = &__p;
            sub_2992AB9D4(buf, &__p);
            sub_29922D72C(&__p);
            sub_2992F2458(*(a1 + 696), a2, buf, &v90);
          }

          *buf = &unk_2A1F65118;
          __p.__r_.__value_.__r.__words[0] = v97;
          sub_29921EC68(&__p);
          sub_29921ED28(&buf[8]);
        }
      }

      v21 = 0;
    }

    v62 = *a5;
    v61 = a5[1];
    if (!v61)
    {
      goto LABEL_81;
    }

    v63 = 0;
    v64 = 1;
    v65 = v62;
    v66 = v61;
    do
    {
      v67 = *v65++;
      v68 = (v67 + 191);
      v69 = v67 + 223;
      if (((v67 & 0xFFDF) - 65) >= 0x1Au && v68 >= 0x1A && v69 > 0x19u)
      {
        break;
      }

      v63 = v64++ >= v61;
      --v66;
    }

    while (v66);
    if (v63)
    {
LABEL_81:
      v72 = *(a1 + 3888);
      v73 = *(a1 + 176);
      __p.__r_.__value_.__s.__data_[0] = 0;
      v74 = sub_2993232FC((v73 + 248), &__p);
      sub_299249480(v72, a2, v62, v61, v74 & (__p.__r_.__value_.__s.__data_[0] ^ 1));
    }

    if ((v21 & 1) == 0)
    {
      v76 = *(a1 + 184);
      if (**(a1 + 1032) & 1 | ((v76 & 0x2000002) != 2))
      {
        if ((v76 & 4) == 0)
        {
          v77 = v89;
          v78 = v91;
          if (v91 <= v90)
          {
            v78 = v90;
          }

          *buf = v78;
          v79 = sub_2993652F8(3u);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_debug_impl(&dword_29918C000, v79, OS_LOG_TYPE_DEBUG, "[MJ::makeMecabPartialCandidate]", &__p, 2u);
          }

          std::mutex::lock((a1 + 880));
          v80 = *(a1 + 944);
          std::mutex::unlock((a1 + 880));
          if (v80 != 2)
          {
            v81 = *(a1 + 184);
            if ((v81 & 0x20) != 0)
            {
              v82 = 74;
            }

            else
            {
              v82 = 10;
            }

            v83 = *(a1 + 176);
            __p.__r_.__value_.__s.__data_[0] = 0;
            sub_2993232FC((v83 + 248), &__p);
            v84 = v81 >> 6;
            if (v89)
            {
              v85 = *(v89 + 16);
            }

            else
            {
              v85 = 0;
            }

            *(a1 + 8) = 1;
            if (sub_2993E4FF0(*(a1 + 192), *v9, v9[1], v77, 0, v82 | v84 & 0x40000))
            {
              v86 = (*(**(a1 + 192) + 248))(*(a1 + 192));
              if (v86)
              {
                ++*buf;
                sub_2992EF484(*(a1 + 696), v86, *v9, v9[1], v85, *(a1 + 8), 1);
              }
            }

            *(a1 + 8) = 0;
          }
        }
      }
    }
  }

  return sub_29926C200(&v89);
}