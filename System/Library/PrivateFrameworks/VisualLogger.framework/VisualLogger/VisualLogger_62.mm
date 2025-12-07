void sub_2715E714C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715E7254(float *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_2711284DC(&v24, a2, v6);
  v8 = v7;
  v9 = *(a1 + 2);
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }
}

void sub_2715E77D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715E7800(va);
  _Unwind_Resume(a1);
}

void sub_2715E77E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715E7800(va);
  _Unwind_Resume(a1);
}

void *sub_2715E7800(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_2715E7868(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_2715E78D4(void *a1, unsigned int a2)
{
  v11 = a2;
  if (!*(a1 + *(*a1 - 24) + 32))
  {
LABEL_10:
    cbks = xmmword_288104018;
    v8 = CGDataConsumerCreate(a1, &cbks);
    sub_2716F0318(&v9, v8);
  }

  v3 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/ImageDestinationRef.cpp", 73, "file.good()", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v4 = qword_28087C408, v5 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "file.good()", 11, "", 0);
      a1 = v3;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = qword_28087C408;
    v5 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "file.good()", 11, "", 0);
  }

  while (v4 != v5);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2715E7D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27157C440(v16 - 112);
  sub_27112F828(v16 - 88);
  _Unwind_Resume(a1);
}

void sub_2715E7DEC(_BYTE *a1, int a2)
{
  switch(a2)
  {
    case 5:
      sub_2715CB2C0(&v2, @"public.tiff");
    case 4:
      sub_2715CB2C0(&v2, @"public.jpeg");
    case 3:
      sub_2715CB2C0(&v2, @"public.png");
  }

  *a1 = 0;
  a1[16] = 0;
}

void sub_2715E7F1C(uint64_t a1, int *a2)
{
  v3[6] = 0;
  v4[0] = v3;
  v4[1] = "ImageDestinationRef does not (yet) support format ";
  v4[2] = v3;
  v4[3] = "ImageDestinationRef does not (yet) support format ";
  v4[4] = "ImageDestinationRef does not (yet) support format ";
  v5 = v4;
  sub_2711F7FCC(&v5);
  sub_2715E3FF8(v4, v3, a2);
}

void sub_2715E8228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2715E82A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715E82E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2715E8304(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715E8364(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = a4;
  if (a4 <= 3)
  {
    if ((a4 - 1) < 2)
    {
      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = a5;
        if (v7 == a1)
        {
          v28 = v27;
          (*(*v7 + 24))(v7, v27);
        }

        else
        {
          v28 = (*(*v7 + 16))(*(a1 + 24));
        }

        a5 = v8;
      }

      else
      {
        v28 = 0;
      }

      sub_2715E9B10(v27, a3, a2, a5);
      v15 = v28;
      if (v28 == v27)
      {
        v16 = *v28;
LABEL_41:
        (*(v16 + 32))();
        return;
      }

      goto LABEL_38;
    }

    if (a4 == 3)
    {
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = a5;
        if (v11 == a1)
        {
          v26 = v25;
          (*(*v11 + 24))(v11, v25);
        }

        else
        {
          v26 = (*(*v11 + 16))(*(a1 + 24));
        }

        a5 = v12;
      }

      else
      {
        v26 = 0;
      }

      sub_2715E99A0(v25, a3, a2, a5);
      v15 = v26;
      if (v26 == v25)
      {
        v16 = *v26;
        goto LABEL_41;
      }

      goto LABEL_38;
    }

LABEL_18:
    v19 = 0;
    sub_2715E3FF8(&v20, v18, &v17);
  }

  if (a4 != 4)
  {
    if (a4 == 5)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = a5;
        if (v9 == a1)
        {
          v22 = v21;
          (*(*v9 + 24))(v9, v21);
        }

        else
        {
          v22 = (*(*v9 + 16))(*(a1 + 24));
        }

        a5 = v10;
      }

      else
      {
        v22 = 0;
      }

      sub_2716EF844(v21, a3, a2, a5);
      v15 = v22;
      if (v22 == v21)
      {
        v16 = *v22;
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    goto LABEL_18;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = a5;
    if (v13 == a1)
    {
      v24 = v23;
      (*(*v13 + 24))(v13, v23);
    }

    else
    {
      v24 = (*(*v13 + 16))(*(a1 + 24));
    }

    a5 = v14;
  }

  else
  {
    v24 = 0;
  }

  sub_2715E92FC(v23, a3, a2, a5);
  v15 = v24;
  if (v24 == v23)
  {
    v16 = *v24;
    goto LABEL_41;
  }

LABEL_38:
  if (v15)
  {
    (*(*v15 + 40))(v15);
  }
}

void sub_2715E8B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  operator delete(v23);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_2715E8C50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = v10;
  v13 = a1;
  v14 = v10;
  v15 = a1;
  v16 = a1;
  v17 = &v12;
  sub_27123B448(&v17);
  sub_2714C49E0(&v9, v10, a2);
  v12 = v10;
  v13 = a3;
  v14 = v10;
  v15 = a3;
  v16 = a3;
  if (v11 != -1)
  {
    v17 = &v12;
    (*(&off_288133CD0 + v11))(&v17, v10);
    sub_2715E3FF8(&v8, v10, a4);
  }

  sub_2711308D4();
}

void sub_2715E8DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8E40(_DWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v4 = 3;

        break;
      case 4:
        v4 = 4;

        break;
      case 5:
        v4 = 5;

        break;
      default:
        goto LABEL_20;
    }

    sub_2715E2E84(a1, a2, v4);
  }

  if ((a3 - 1) >= 2)
  {
    if (!a3)
    {
      v5 = 0;
      v8 = 0;
      v9[0] = v7;
      v9[1] = "Format ";
      v9[2] = v7;
      v9[3] = "Format ";
      v9[4] = "Format ";
      v10 = v9;
      sub_2711316E8(&v10);
      sub_2715E3FF8(&v6, v7, &v5);
    }

LABEL_20:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/ImageIO.cpp", 222, "", 0, "should not be reached", 0x15uLL, sub_271852CA8);
    abort();
  }

  sub_2715ECC6C(a1, a2, 1, a3, a4);
}

void sub_2715E9268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2715E92FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = a4;
    v7 = a2;
    v8 = a3;
    if (v5 == a1)
    {
      v11 = v10;
      (*(*v5 + 24))(v5, v10);
    }

    else
    {
      v11 = (*(*v5 + 16))(v5);
    }

    a3 = v8;
    a2 = v7;
    a4 = v6;
  }

  else
  {
    v11 = 0;
  }

  sub_2715E1E0C(v10, a2, a3, 4, a4);
  result = v11;
  if (v11 == v10)
  {
    return (*(*v11 + 32))(v11);
  }

  if (v11)
  {
    return (*(*v11 + 40))();
  }

  return result;
}

void sub_2715E9458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713BF0D4(va);
  _Unwind_Resume(a1);
}

void sub_2715E946C(_DWORD *a1)
{
  v2[10] = &unk_2881117B8;
  sub_2717BB090(a1, v2);
  operator new();
}

void sub_2715E9694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_2713050B8(&a9);
  _Unwind_Resume(a1);
}

void sub_2715E96DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E96F4(_DWORD *a1)
{
  v2[14] = &unk_288111618;
  sub_2717BFFC8(a1, v2);
  operator new();
}

void sub_2715E9940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_2715E9988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2715E99A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = a4;
    v7 = a2;
    v8 = a3;
    if (v5 == a1)
    {
      v11 = v10;
      (*(*v5 + 24))(v5, v10);
    }

    else
    {
      v11 = (*(*v5 + 16))(v5);
    }

    a3 = v8;
    a2 = v7;
    a4 = v6;
  }

  else
  {
    v11 = 0;
  }

  sub_2715E1E0C(v10, a2, a3, 3, a4);
  result = v11;
  if (v11 == v10)
  {
    return (*(*v11 + 32))(v11);
  }

  if (v11)
  {
    return (*(*v11 + 40))();
  }

  return result;
}

void sub_2715E9AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713BF0D4(va);
  _Unwind_Resume(a1);
}

void sub_2715E9B10(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v189 = *MEMORY[0x277D85DE8];
  v164 = a3;
  sub_2715EC47C(&v153, a2);
  if ((v163 & 1) == 0)
  {
    v178 = v153;
    LOBYTE(v179) = 0;
    v188 = 0;
    if (v162 != 1)
    {
      *a4 = v153;
      *(a4 + 16) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      goto LABEL_276;
    }

    sub_27112F6CC(&v179, &v154);
    v188 = 1;
    *a4 = v178;
    *(a4 + 16) = 0;
    *(a4 + 40) = 0;
    v8 = v181;
    if (v181 == 1)
    {
      *(a4 + 16) = v179;
      *(a4 + 32) = v180;
      v180 = 0;
      v179 = 0uLL;
      *(a4 + 40) = 1;
      *(a4 + 48) = 0;
      v9 = a4 + 48;
      *(a4 + 104) = 0;
      if ((v187 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(a4 + 48) = 0;
      v9 = a4 + 48;
      *(a4 + 104) = 0;
      if ((v187 & 1) == 0)
      {
LABEL_9:
        *(a4 + 112) = 1;
        *(a4 + 120) = 0;
        if (!v8)
        {
          goto LABEL_276;
        }

LABEL_22:
        if ((SHIBYTE(v180) & 0x80000000) == 0)
        {
          goto LABEL_276;
        }

        v16 = v179;
LABEL_275:
        operator delete(v16);
        goto LABEL_276;
      }
    }

    v15 = v184;
    *(v9 + 16) = v183;
    *v9 = v182;
    v182 = 0uLL;
    *(a4 + 72) = v15;
    *(a4 + 80) = v185;
    *(a4 + 96) = v186;
    v183 = 0;
    v185 = 0uLL;
    v186 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v8)
    {
      goto LABEL_276;
    }

    goto LABEL_22;
  }

  v152 = v153;
  if (v4 - 1 < 2 || v4 == 21)
  {
    if (DWORD1(v152) != v4)
    {
      v177 = 0;
      sub_27120AACC(&v151, v176, &v164);
    }
  }

  else
  {
    if (v4)
    {
      v177 = 0;
      sub_27120AACC(&v140, v176, &v164);
    }

    v4 = DWORD1(v152);
  }

  LODWORD(v178) = v4;
  v10 = *(a1 + 24);
  if (!v10)
  {
    sub_27112AFFC();
  }

  (*(*v10 + 48))(v143);
  if (v150)
  {
    v140 = &unk_28810E778;
    *v141 = *&v143[8];
    *&v143[8] = 0;
    *&v143[16] = 0;
    *&v142[14] = *&v144[14];
    v11 = *v144;
    *v142 = *v144;
    v12 = *&v144[22] >> 16;
    if (v12 == DWORD1(v152))
    {
      goto LABEL_40;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Pnm.cpp", 275, "image_dynamic.RuntimeFormat() == color_format", 0x2DuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_39:
        v11.n128_f64[0] = qword_28087C420(*algn_28087C428, "image_dynamic.RuntimeFormat() == color_format", 45, "", 0);
        v12 = DWORD1(v152);
LABEL_40:
        if (v12 == 21)
        {
          v31 = v152;
          v165.__r_.__value_.__r.__words[0] = &unk_28810E078;
          sub_2715F1268(&v140, &v165.__r_.__value_.__l.__size_, v11);
          if (v31)
          {
            if (((v172 * v170) & 0x8000000000000000) != 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              *exception = &unk_288117780;
              __cxa_throw(exception, &unk_28812C000, std::exception::~exception);
            }

            size = v165.__r_.__value_.__l.__size_;
            if (!v165.__r_.__value_.__l.__size_)
            {
              goto LABEL_103;
            }

            v33 = v165.__r_.__value_.__r.__words[2];
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }

              v34 = v165.__r_.__value_.__r.__words[2];
              size = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v35 = size;
                  (v34->__on_zero_shared)(v34);
                  std::__shared_weak_count::__release_weak(v34);
                  size = v35;
                }
              }
            }

            if (v174 == 1)
            {
              (*(*size + 96))(&v178);
            }

            else
            {
LABEL_103:
              *&v178 = 0;
            }

            if (!v167)
            {
              goto LABEL_254;
            }

            if (!HIDWORD(v167))
            {
              goto LABEL_254;
            }

            v57 = v168;
            if (!v168)
            {
              goto LABEL_254;
            }

            v58 = v171;
            v59 = v166;
            if (v173 == 1 && v166)
            {
              v61 = v165.__r_.__value_.__r.__words[2];
              v60 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v62 = v60;
                  (v61->__on_zero_shared)(v61);
                  std::__shared_weak_count::__release_weak(v61);
                  v60 = v62;
                }
              }

              (*(*v60 + 88))(v60, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v59 = v166;
            }

            for (i = v57 - 1; i; --i)
            {
              std::istream::read();
              v59 = (v59 + v58);
            }

LABEL_115:
            std::istream::read();
            goto LABEL_254;
          }

          memset(&v175, 0, sizeof(v175));
          v75 = v165.__r_.__value_.__l.__size_;
          if (!v165.__r_.__value_.__l.__size_)
          {
            goto LABEL_162;
          }

          v76 = v165.__r_.__value_.__r.__words[2];
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v76->__on_zero_shared)(v76);
              std::__shared_weak_count::__release_weak(v76);
            }

            v77 = v165.__r_.__value_.__r.__words[2];
            v75 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v78 = v75;
                (v77->__on_zero_shared)(v77);
                std::__shared_weak_count::__release_weak(v77);
                v75 = v78;
              }
            }
          }

          if (v174 == 1)
          {
            (*(*v75 + 96))(&v151);
          }

          else
          {
LABEL_162:
            v151 = 0;
          }

          v87 = v171;
          v88 = v172;
          v89 = v166;
          if (v173 == 1 && v166)
          {
            v91 = v165.__r_.__value_.__r.__words[2];
            v90 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v92 = v90;
                (v91->__on_zero_shared)(v91);
                std::__shared_weak_count::__release_weak(v91);
                v90 = v92;
              }
            }

            (*(*v90 + 88))(v90, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v89 = v166;
          }

          v93 = (v87 * HIDWORD(v88));
          if (v93)
          {
            v94 = (3 * v88);
            if (3 * v88)
            {
              v95 = (v89 + v93);
              v96 = a2 + 4;
              v97 = MEMORY[0x277D85DE0];
              do
              {
                v98 = v89;
                do
                {
                  v98->i8[0] = sub_2715F0ABC(&v175, a2);
                  std::istream::tellg();
                  while ((*(v96 + *(*a2 - 24)) & 2) == 0)
                  {
                    v99 = std::istream::peek();
                    if (v99 <= 0x7F)
                    {
                      if ((*(v97 + 4 * v99 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v99, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v98->i8[1] = sub_2715F0ABC(&v175, a2);
                  std::istream::tellg();
                  while ((*(v96 + *(*a2 - 24)) & 2) == 0)
                  {
                    v100 = std::istream::peek();
                    if (v100 <= 0x7F)
                    {
                      if ((*(v97 + 4 * v100 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v100, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v98->i8[2] = sub_2715F0ABC(&v175, a2);
                  std::istream::tellg();
                  while ((*(v96 + *(*a2 - 24)) & 2) == 0)
                  {
                    v101 = std::istream::peek();
                    if (v101 <= 0x7F)
                    {
                      if ((*(v97 + 4 * v101 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v101, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v98 = (v98 + 3);
                }

                while (v98 != &v89->i8[v94]);
                v89 = (v89 + v87);
              }

              while (v89 != v95);
            }
          }

LABEL_217:
          v113 = v151;
          v151 = 0;
          if (v113)
          {
            (*(*v113 + 8))(v113);
          }

          if (v175.__r_.__value_.__r.__words[0])
          {
            operator delete(v175.__r_.__value_.__l.__data_);
          }

          goto LABEL_256;
        }

        if (v12 != 2)
        {
          if (v12 == 1)
          {
            v20 = v152;
            v165.__r_.__value_.__r.__words[0] = &unk_28810E1B8;
            sub_2715F0534(&v140, &v165.__r_.__value_.__l.__size_, v11);
            if (v20)
            {
              if (((v167 * v168) & 0x8000000000000000) != 0)
              {
                v132 = __cxa_allocate_exception(8uLL);
                *v132 = &unk_288117780;
                __cxa_throw(v132, &unk_28812C000, std::exception::~exception);
              }

              v21 = v165.__r_.__value_.__l.__size_;
              if (!v165.__r_.__value_.__l.__size_)
              {
                goto LABEL_116;
              }

              v22 = v165.__r_.__value_.__r.__words[2];
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v22->__on_zero_shared)(v22);
                  std::__shared_weak_count::__release_weak(v22);
                }

                v23 = v165.__r_.__value_.__r.__words[2];
                v21 = v165.__r_.__value_.__l.__size_;
                if (v165.__r_.__value_.__r.__words[2])
                {
                  atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    v24 = v21;
                    (v23->__on_zero_shared)(v23);
                    std::__shared_weak_count::__release_weak(v23);
                    v21 = v24;
                  }
                }
              }

              if (BYTE1(v170) == 1)
              {
                (*(*v21 + 96))(&v178);
              }

              else
              {
LABEL_116:
                *&v178 = 0;
              }

              if (!v167)
              {
                goto LABEL_254;
              }

              v64 = HIDWORD(v167);
              if (!HIDWORD(v167))
              {
                goto LABEL_254;
              }

              v65 = v169;
              v66 = v166;
              if (v170 == 1 && v166)
              {
                v68 = v165.__r_.__value_.__r.__words[2];
                v67 = v165.__r_.__value_.__l.__size_;
                if (v165.__r_.__value_.__r.__words[2])
                {
                  atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    v69 = v67;
                    (v68->__on_zero_shared)(v68);
                    std::__shared_weak_count::__release_weak(v68);
                    v67 = v69;
                  }
                }

                (*(*v67 + 88))(v67, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
                v66 = v166;
              }

              for (j = v64 - 1; j; --j)
              {
                std::istream::read();
                v66 = (v66 + v65);
              }

              goto LABEL_115;
            }

            memset(&v175, 0, sizeof(v175));
            v79 = v165.__r_.__value_.__l.__size_;
            if (!v165.__r_.__value_.__l.__size_)
            {
              goto LABEL_197;
            }

            v80 = v165.__r_.__value_.__r.__words[2];
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v80->__on_zero_shared)(v80);
                std::__shared_weak_count::__release_weak(v80);
              }

              v81 = v165.__r_.__value_.__r.__words[2];
              v79 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v82 = v79;
                  (v81->__on_zero_shared)(v81);
                  std::__shared_weak_count::__release_weak(v81);
                  v79 = v82;
                }
              }
            }

            if (BYTE1(v170) == 1)
            {
              (*(*v79 + 96))(&v151);
            }

            else
            {
LABEL_197:
              v151 = 0;
            }

            v102 = v169;
            v103 = v167;
            v104 = v166;
            if (v170 == 1 && v166)
            {
              v106 = v165.__r_.__value_.__r.__words[2];
              v105 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v107 = v105;
                  (v106->__on_zero_shared)(v106);
                  std::__shared_weak_count::__release_weak(v106);
                  v105 = v107;
                }
              }

              (*(*v105 + 88))(v105, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v104 = v166;
            }

            v108 = (v102 * HIDWORD(v103));
            if (v108 && v103)
            {
              v109 = (v104 + v108);
              v110 = MEMORY[0x277D85DE0];
              do
              {
                v111 = v104;
                do
                {
                  v111->i8[0] = sub_2715F0ABC(&v175, a2);
                  std::istream::tellg();
                  while ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
                  {
                    v112 = std::istream::peek();
                    if (v112 <= 0x7F)
                    {
                      if ((*(v110 + 4 * v112 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v112, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v111 = (v111 + 1);
                }

                while (v111 != &v104->i8[v103]);
                v104 = (v104 + v102);
              }

              while (v104 != v109);
            }

            goto LABEL_217;
          }

          sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Pnm.cpp", 284, "", 0, "Not implemented", 0xFuLL, sub_271852CA8, v11.n128_f64[0]);
LABEL_289:
          abort();
        }

        v25 = v152;
        v165.__r_.__value_.__r.__words[0] = &unk_28810DB38;
        sub_2715F0D64(&v140, &v165.__r_.__value_.__l.__size_, v11);
        if (!v25)
        {
          v71 = v165.__r_.__value_.__l.__size_;
          if (!v165.__r_.__value_.__l.__size_)
          {
            goto LABEL_155;
          }

          v72 = v165.__r_.__value_.__r.__words[2];
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v72->__on_zero_shared)(v72);
              std::__shared_weak_count::__release_weak(v72);
            }

            v73 = v165.__r_.__value_.__r.__words[2];
            v71 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v74 = v71;
                (v73->__on_zero_shared)(v73);
                std::__shared_weak_count::__release_weak(v73);
                v71 = v74;
              }
            }
          }

          if (BYTE1(v170) == 1)
          {
            (*(*v71 + 96))(&v175);
          }

          else
          {
LABEL_155:
            v175.__r_.__value_.__r.__words[0] = 0;
          }

          v138 = v169;
          v83 = v167;
          if (v170 == 1 && v166)
          {
            v85 = v165.__r_.__value_.__r.__words[2];
            v84 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v86 = v84;
                (v85->__on_zero_shared)(v85);
                std::__shared_weak_count::__release_weak(v85);
                v84 = v86;
              }
            }

            (*(*v84 + 88))(v84, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          }

          if (v138 * HIDWORD(v83) && v83)
          {
            v114 = std::istream::peek();
            if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
            {
              v115 = 0;
              strcpy(&v178, "0123456789");
              BYTE7(v179) = 10;
              do
              {
                v116 = *(&v178 + v115);
              }

              while (v116 != v114 && v115++ != 9);
              if (v116 == v114)
              {
                operator new();
              }
            }

            operator new();
          }

          v118 = v175.__r_.__value_.__r.__words[0];
          v175.__r_.__value_.__r.__words[0] = 0;
          if (v118)
          {
            (*(*v118 + 8))(v118);
          }

          goto LABEL_256;
        }

        v26 = v167;
        if (((2 * v168 * v167) & 0x8000000000000000) != 0)
        {
          v133 = __cxa_allocate_exception(8uLL);
          *v133 = &unk_288117780;
          __cxa_throw(v133, &unk_28812C000, std::exception::~exception);
        }

        v27 = v165.__r_.__value_.__l.__size_;
        if (!v165.__r_.__value_.__l.__size_)
        {
          goto LABEL_76;
        }

        v28 = v165.__r_.__value_.__r.__words[2];
        if (v165.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v28->__on_zero_shared)(v28);
            std::__shared_weak_count::__release_weak(v28);
          }

          v29 = v165.__r_.__value_.__r.__words[2];
          v27 = v165.__r_.__value_.__l.__size_;
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v30 = v27;
              (v29->__on_zero_shared)(v29);
              std::__shared_weak_count::__release_weak(v29);
              v27 = v30;
            }
          }
        }

        if (BYTE1(v170) == 1)
        {
          (*(*v27 + 96))(&v178);
        }

        else
        {
LABEL_76:
          *&v178 = 0;
        }

        if (!v167)
        {
          goto LABEL_254;
        }

        v36 = HIDWORD(v167);
        if (!HIDWORD(v167))
        {
          goto LABEL_254;
        }

        v135 = a4;
        v37 = v169;
        v38 = v166;
        if (v170 == 1 && v166)
        {
          v40 = v165.__r_.__value_.__r.__words[2];
          v39 = v165.__r_.__value_.__l.__size_;
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v41 = v39;
              (v40->__on_zero_shared)(v40);
              std::__shared_weak_count::__release_weak(v40);
              v39 = v41;
            }
          }

          (*(*v39 + 88))(v39, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v38 = v166;
        }

        v42 = v36 - 1;
        if (v42)
        {
          if (v26)
          {
            v43 = 0;
            v44 = v26;
            v45 = (v26 - 1) & 0x7FFFFFFFFFFFFFFFLL;
            v46 = v45 + 1;
            v139 = (v45 + 1) & 0xFFFFFFFFFFFFFFF0;
            v47 = (v45 + 1) & 0xFFFFFFFFFFFFFFFCLL;
            v137 = 2 * v47;
            v48 = v38 + 1;
            v49 = 2 * v37;
            v136 = -v47;
            while (1)
            {
              std::istream::read();
              v50 = v38;
              if (v45 >= 3)
              {
                if (v45 < 0xF)
                {
                  v51 = 0;
LABEL_96:
                  v50 = (v38 + v137);
                  v55 = 2 * v51;
                  v56 = v136 + v51;
                  do
                  {
                    *&v38->i8[v55] = vrev16_s8(*&v38->i8[v55]);
                    v55 += 8;
                    v56 += 4;
                  }

                  while (v56);
                  if (v46 == ((v45 + 1) & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_101;
                }

                v52 = (v45 + 1) & 0xFFFFFFFFFFFFFFF0;
                v53 = v48;
                do
                {
                  v54 = vrev16q_s8(*v53);
                  v53[-1] = vrev16q_s8(v53[-1]);
                  *v53 = v54;
                  v53 += 2;
                  v52 -= 16;
                }

                while (v52);
                if (v46 == v139)
                {
                  goto LABEL_88;
                }

                v51 = (v45 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (((v45 + 1) & 0xC) != 0)
                {
                  goto LABEL_96;
                }

                v50 = (v38 + 2 * v139);
              }

              do
              {
LABEL_101:
                v50->i16[0] = bswap32(v50->u16[0]) >> 16;
                v50 = (v50 + 2);
              }

              while (v50 != (v38 + 2 * v44));
LABEL_88:
              v38 = (v38 + v49);
              ++v43;
              v48 = (v48 + v49);
              if (v43 == v42)
              {
                goto LABEL_240;
              }
            }
          }

          v44 = v26;
          do
          {
            std::istream::read();
            v38 = (v38 + 2 * v37);
            --v42;
          }

          while (v42);
        }

        else
        {
          v44 = v26;
        }

LABEL_240:
        std::istream::read();
        a4 = v135;
        if (v44)
        {
          v119 = (v44 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v120 = v38;
          if (v119 < 3)
          {
            goto LABEL_253;
          }

          v121 = v119 + 1;
          if (v119 < 0xF)
          {
            v122 = 0;
            goto LABEL_248;
          }

          v122 = v121 & 0xFFFFFFFFFFFFFFF0;
          v123 = v38 + 1;
          v124 = v121 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v125 = vrev16q_s8(*v123);
            v123[-1] = vrev16q_s8(v123[-1]);
            *v123 = v125;
            v123 += 2;
            v124 -= 16;
          }

          while (v124);
          if (v121 != v122)
          {
            if ((v121 & 0xC) == 0)
            {
              v120 = (v38 + 2 * v122);
              goto LABEL_253;
            }

LABEL_248:
            v120 = (v38 + 2 * (v121 & 0xFFFFFFFFFFFFFFFCLL));
            v126 = (v38 + 2 * v122);
            v127 = v122 - (v121 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *v126 = vrev16_s8(*v126);
              ++v126;
              v127 += 4;
            }

            while (v127);
            if (v121 == (v121 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_254;
            }

            do
            {
LABEL_253:
              v120->i16[0] = bswap32(v120->u16[0]) >> 16;
              v120 = (v120 + 2);
            }

            while (v120 != (v38 + 2 * v44));
          }
        }

LABEL_254:
        v128 = v178;
        *&v178 = 0;
        if (v128)
        {
          (*(*v128 + 8))(v128);
        }

LABEL_256:
        v129 = v165.__r_.__value_.__r.__words[2];
        if (v165.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v165.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v129->__on_zero_shared)(v129);
          std::__shared_weak_count::__release_weak(v129);
        }

        *(a4 + 120) = 1;
        v130 = v141[1];
        if (v141[1] && !atomic_fetch_add(v141[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

        goto LABEL_262;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_289;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "image_dynamic.RuntimeFormat() == color_format", 45, "", 0);
      v13 += 16;
    }

    while (v13 != v14);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_39;
  }

  v178 = *v143;
  LOBYTE(v179) = 0;
  v188 = 0;
  if (v149 != 1)
  {
    *a4 = *v143;
    *(a4 + 16) = 0;
    *(a4 + 112) = 0;
    *(a4 + 120) = 0;
    goto LABEL_262;
  }

  sub_27112F6CC(&v179, &v143[16]);
  v188 = 1;
  *a4 = v178;
  *(a4 + 16) = 0;
  *(a4 + 40) = 0;
  v17 = v181;
  if (v181 == 1)
  {
    *(a4 + 16) = v179;
    *(a4 + 32) = v180;
    v180 = 0;
    v179 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v18 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v187 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v18 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v187 & 1) == 0)
    {
LABEL_28:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v17)
      {
        goto LABEL_262;
      }

      goto LABEL_34;
    }
  }

  v19 = v184;
  *(v18 + 16) = v183;
  *v18 = v182;
  v182 = 0uLL;
  *(a4 + 72) = v19;
  *(a4 + 80) = v185;
  *(a4 + 96) = v186;
  v183 = 0;
  v185 = 0uLL;
  v186 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v17)
  {
    goto LABEL_262;
  }

LABEL_34:
  if (SHIBYTE(v180) < 0)
  {
    operator delete(v179);
  }

LABEL_262:
  if (v150 == 1)
  {
    v131 = *&v143[16];
    if (*&v143[16] && !atomic_fetch_add((*&v143[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v131->__on_zero_shared)(v131);
      std::__shared_weak_count::__release_weak(v131);
    }

    goto LABEL_276;
  }

  if (v149 == 1)
  {
    if (v148 == 1)
    {
      if (v147 < 0)
      {
        operator delete(v146);
      }

      if (v145 < 0)
      {
        operator delete(*&v144[24]);
      }
    }

    if (v144[16] == 1 && (v144[15] & 0x80000000) != 0)
    {
      v16 = *&v143[16];
      goto LABEL_275;
    }
  }

LABEL_276:
  if ((v163 & 1) == 0 && v162 == 1)
  {
    if (v161 == 1)
    {
      if (v160 < 0)
      {
        operator delete(v159);
      }

      if (v158 < 0)
      {
        operator delete(v157);
      }
    }

    if (v156 == 1 && v155 < 0)
    {
      operator delete(v154);
    }
  }
}

void sub_2715EC058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  v42 = a41;
  a41 = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42, a2, a3, a4, a5, a6, a7, a8);
  }

  if (STACK[0x2E0])
  {
    operator delete(STACK[0x2E0]);
  }

  sub_2712C9E78(&STACK[0x290]);
  sub_2712C9A88(&a17);
  sub_271235250(&a25);
  sub_27112E024(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_2715EC47C(uint64_t a1, uint64_t *a2)
{
  v41 = a2;
  if (!sub_2715EEB68(&v41))
  {
    sub_2711CC04C(v42, "Invalid pnm file. Unexpected end of file in header.");
    v50 = 1;
    sub_2711CBCA8(5, v42, __s);
    if (v50 == 1)
    {
      if (v49 == 1)
      {
        if (v48 < 0)
        {
          operator delete(v47);
        }

        if (v46 < 0)
        {
          operator delete(v45);
        }
      }

      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42[0]);
      }
    }

    *a1 = *__s;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v40 != 1)
    {
      *(a1 + 120) = 0;
      return;
    }

    *(a1 + 40) = 0;
    v6 = v33;
    if (v33 == 1)
    {
      *(a1 + 16) = __p;
      *(a1 + 32) = v32;
      v32 = 0;
      __p = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v7 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v39 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v7 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v39 & 1) == 0)
      {
LABEL_18:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v6)
        {
          return;
        }

LABEL_33:
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          return;
        }

        v16 = __p;
        goto LABEL_56;
      }
    }

    v15 = v36;
    *(v7 + 16) = v35;
    *v7 = v34;
    v34 = 0uLL;
    *(a1 + 72) = v15;
    *(a1 + 80) = v37;
    *(a1 + 96) = v38;
    v35 = 0;
    v37 = 0uLL;
    v38 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_33;
  }

  __s[2] = 0;
  *__s = 0;
  std::istream::read();
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v29 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  if (sub_2715EEB68(&v41))
  {
    sub_2715EED74(a2);
    v9 = v8;
    if (sub_2715EEB68(&v41))
    {
      sub_2715EED74(a2);
      v11 = v10;
      if (sub_2715EEB68(&v41))
      {
        sub_2715EED74(a2);
        v13 = v12;
        v26 = v12;
        if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
        {
          if (v29 < 0)
          {
            if (v28 == 2 && *__dst == 12880)
            {
              goto LABEL_66;
            }

            if (v28 != 2)
            {
              goto LABEL_63;
            }

            p_dst = __dst;
          }

          else
          {
            if (v29 != 2)
            {
              goto LABEL_63;
            }

            if (__dst == 12880)
            {
              goto LABEL_66;
            }

            p_dst = &__dst;
          }

          if (*p_dst != 13136)
          {
LABEL_63:
            if (!sub_2714DF710(&__dst, "P5") && !sub_2714DF710(&__dst, "P6"))
            {
              sub_2711CC04C(v25, "Invalid pnm file. Format magic number not recognized.");
              v25[96] = 1;
              sub_2715E3C64(5, v25, __s);
              sub_271238E60(a1, __s);
              sub_27112D71C(__s);
              v22 = v25;
LABEL_85:
              sub_27112D66C(v22);
              goto LABEL_54;
            }

            v20 = 1;
LABEL_67:
            if (v29 < 0)
            {
              if (v28 == 2 && *__dst == 12880)
              {
                goto LABEL_81;
              }

              if (v28 == 2)
              {
                v21 = __dst;
LABEL_75:
                if (*v21 != 13648)
                {
                  goto LABEL_76;
                }

LABEL_81:
                if (v13 == 255)
                {
                  v23 = 1;
                }

                else
                {
                  if (v13 != 0xFFFF)
                  {
                    sub_2715EF010(__s, &v26);
                  }

                  v23 = 2;
                }

                goto LABEL_90;
              }
            }

            else if (v29 == 2)
            {
              if (__dst == 12880)
              {
                goto LABEL_81;
              }

              v21 = &__dst;
              goto LABEL_75;
            }

LABEL_76:
            if (sub_2714DF710(&__dst, "P3") || sub_2714DF710(&__dst, "P6"))
            {
              if (v13 != 255)
              {
                if (v13 != 0xFFFF)
                {
                  sub_2715EF010(__s, &v26);
                }

                sub_2711CC04C(v24, "Unsupported pnm format. Loader does not support Rgb16u (.pbm) loading yet.");
                v24[96] = 1;
                sub_2715E3C64(5, v24, __s);
                sub_271238E60(a1, __s);
                sub_27112D71C(__s);
                v22 = v24;
                goto LABEL_85;
              }

              v23 = 21;
            }

            else
            {
              v23 = 0;
            }

LABEL_90:
            __s[0] = 0;
            std::istream::read();
            if (__s[0] == 13)
            {
              __s[0] = 0;
              std::istream::read();
            }

            *a1 = v20;
            *(a1 + 4) = v23;
            *(a1 + 8) = v9;
            *(a1 + 12) = v11;
            *(a1 + 120) = 1;
            goto LABEL_54;
          }

LABEL_66:
          v20 = 0;
          goto LABEL_67;
        }
      }
    }
  }

  sub_2711CC04C(v42, "Invalid pnm file. Unexpected end of file in header.");
  v50 = 1;
  sub_2711CBCA8(5, v42, __s);
  if (v50 == 1)
  {
    if (v49 == 1)
    {
      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42[0]);
    }
  }

  *a1 = *__s;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v40 == 1)
  {
    *(a1 + 40) = 0;
    v17 = v33;
    if (v33 == 1)
    {
      *(a1 + 16) = __p;
      *(a1 + 32) = v32;
      v32 = 0;
      __p = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v18 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v39 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v18 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v39 & 1) == 0)
      {
LABEL_47:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v17)
        {
          goto LABEL_54;
        }

LABEL_51:
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_54;
      }
    }

    v19 = v36;
    *(v18 + 16) = v35;
    *v18 = v34;
    v34 = 0uLL;
    *(a1 + 72) = v19;
    *(a1 + 80) = v37;
    *(a1 + 96) = v38;
    v35 = 0;
    v37 = 0uLL;
    v38 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (v17)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *(a1 + 120) = 0;
  }

LABEL_54:
  if ((v29 & 0x80000000) == 0)
  {
    return;
  }

  v16 = __dst;
LABEL_56:
  operator delete(v16);
}

void sub_2715ECBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715ECC6C(_DWORD *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v6 = a1[12];
  v66 = v6;
  if (v6 > 0x15 || ((1 << v6) & 0x200006) == 0)
  {
    LODWORD(v72) = 0;
    sub_27120AACC(v68, &v71, &v66);
  }

  if (a4 && (a4 == 1 && v6 - 3 < 0xFFFFFFFE || a4 == 2 && v6 != 21))
  {
    LODWORD(v72) = 0;
    sub_2715E3FF8(&v64, &v71, &v67);
  }

  v10 = a1[6];
  v9 = a1[7];
  v65[0] = v6;
  if (v6 - 1 > 1)
  {
    if (v6 != 21)
    {
      v82 = 0;
      sub_27120AACC(&v64, &v81, v65);
    }

    v11 = a1;
    v12 = "P3\n";
    v13 = "P6\n";
  }

  else
  {
    v11 = a1;
    v12 = "P2\n";
    v13 = "P5\n";
  }

  if (a3 == 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  sub_271120E64(a2, v15, 3);
  if (v6 == 21 || v6 == 1)
  {
    v17 = 255;
  }

  else
  {
    v17 = 0xFFFF;
  }

  std::to_string(&v71, v10);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v71;
  }

  else
  {
    v18 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v71.__r_.__value_.__l.__size_;
  }

  sub_271120E64(a2, v18, size);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  sub_271120E64(a2, " ", 1);
  std::to_string(&v71, v9);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v71;
  }

  else
  {
    v20 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v71.__r_.__value_.__l.__size_;
  }

  sub_271120E64(a2, v20, v21);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  sub_271120E64(a2, "\n", 1);
  std::to_string(&v71, v17);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v71;
  }

  else
  {
    v22 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v71.__r_.__value_.__l.__size_;
  }

  sub_271120E64(a2, v22, v23);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  sub_271120E64(a2, "\n", 1);
  switch(v66)
  {
    case 0x15u:
      v71.__r_.__value_.__r.__words[0] = &unk_28810E0B8;
      sub_2715EFF9C(v11, &v71.__r_.__value_.__l.__size_, v24);
      if (a3 != 1)
      {
        v81.__r_.__value_.__r.__words[0] = 16;
        v81.__r_.__value_.__l.__size_ = 0x1000000008;
        v81.__r_.__value_.__r.__words[2] = 14;
        operator new();
      }

      v33 = v71.__r_.__value_.__l.__size_;
      if (!v71.__r_.__value_.__l.__size_)
      {
        goto LABEL_110;
      }

      v34 = v71.__r_.__value_.__r.__words[2];
      if (v71.__r_.__value_.__r.__words[2])
      {
        atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v34->__on_zero_shared)(v34);
          std::__shared_weak_count::__release_weak(v34);
        }

        v35 = v71.__r_.__value_.__r.__words[2];
        v33 = v71.__r_.__value_.__l.__size_;
        if (v71.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v36 = v33;
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
            v33 = v36;
          }
        }
      }

      if (v80 == 1)
      {
        (*(*v33 + 96))(v69);
      }

      else
      {
LABEL_110:
        v69[0] = 0;
      }

      if (!v73)
      {
        goto LABEL_135;
      }

      if (!HIDWORD(v73))
      {
        goto LABEL_135;
      }

      v48 = v74;
      if (!v74)
      {
        goto LABEL_135;
      }

      v49 = v78;
      v50 = v72;
      if (v79 == 1 && v72)
      {
        v52 = v71.__r_.__value_.__r.__words[2];
        v51 = v71.__r_.__value_.__l.__size_;
        if (v71.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v53 = v51;
            (v52->__on_zero_shared)(v52);
            std::__shared_weak_count::__release_weak(v52);
            v51 = v53;
          }
        }

        (*(*v51 + 88))(v51, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v50 = v72;
      }

      for (i = v48 - 1; i; --i)
      {
        std::ostream::write();
        v50 += v49;
      }

      goto LABEL_134;
    case 2u:
      v71.__r_.__value_.__r.__words[0] = &unk_28810DB78;
      sub_2715EFA94(v11, &v71.__r_.__value_.__l.__size_, v24);
      if (a3 == 1)
      {
        v29 = v71.__r_.__value_.__l.__size_;
        if (!v71.__r_.__value_.__l.__size_)
        {
          goto LABEL_96;
        }

        v30 = v71.__r_.__value_.__r.__words[2];
        if (v71.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v30);
          }

          v31 = v71.__r_.__value_.__r.__words[2];
          v29 = v71.__r_.__value_.__l.__size_;
          if (v71.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v32 = v29;
              (v31->__on_zero_shared)(v31);
              std::__shared_weak_count::__release_weak(v31);
              v29 = v32;
            }
          }
        }

        if (v77 == 1)
        {
          (*(*v29 + 96))(v69);
        }

        else
        {
LABEL_96:
          v69[0] = 0;
        }

        v37 = v75;
        v38 = v73;
        v39 = v72;
        if (v76 == 1 && v72)
        {
          v41 = v71.__r_.__value_.__r.__words[2];
          v40 = v71.__r_.__value_.__l.__size_;
          if (v71.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v42 = v40;
              (v41->__on_zero_shared)(v41);
              std::__shared_weak_count::__release_weak(v41);
              v40 = v42;
            }
          }

          (*(*v40 + 88))(v40, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v39 = v72;
        }

        v43 = v37 * HIDWORD(v38);
        if (v37 * HIDWORD(v38) && v38)
        {
          v44 = 2 * v38;
          v45 = 2 * v37;
          v46 = v39 + 2 * v43;
          do
          {
            v47 = 0;
            do
            {
              LOWORD(v81.__r_.__value_.__l.__data_) = bswap32(*(v39 + v47)) >> 16;
              std::ostream::write();
              v47 += 2;
            }

            while (v44 != v47);
            v39 += v45;
          }

          while (v39 != v46);
        }

        goto LABEL_135;
      }

      v81.__r_.__value_.__r.__words[0] = 16;
      v81.__r_.__value_.__l.__size_ = 0x1000000008;
      v81.__r_.__value_.__r.__words[2] = 14;
      LOBYTE(v69[0]) = 0;
      v70 = 0;
      sub_2715F256C(&v81, a2, &v71, v69);
      if (v70 == 1 && v69[0])
      {
        v69[1] = v69[0];
        operator delete(v69[0]);
      }

      if (v73 && HIDWORD(v73))
      {
        goto LABEL_88;
      }

      break;
    case 1u:
      v71.__r_.__value_.__r.__words[0] = &unk_28810E1F8;
      sub_2715EF504(v11, &v71.__r_.__value_.__l.__size_, v24);
      if (a3 == 1)
      {
        v25 = v71.__r_.__value_.__l.__size_;
        if (!v71.__r_.__value_.__l.__size_)
        {
          goto LABEL_123;
        }

        v26 = v71.__r_.__value_.__r.__words[2];
        if (v71.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }

          v27 = v71.__r_.__value_.__r.__words[2];
          v25 = v71.__r_.__value_.__l.__size_;
          if (v71.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v28 = v25;
              (v27->__on_zero_shared)(v27);
              std::__shared_weak_count::__release_weak(v27);
              v25 = v28;
            }
          }
        }

        if (v77 == 1)
        {
          (*(*v25 + 96))(v69);
        }

        else
        {
LABEL_123:
          v69[0] = 0;
        }

        if (!v73)
        {
          goto LABEL_135;
        }

        v55 = HIDWORD(v73);
        if (!HIDWORD(v73))
        {
          goto LABEL_135;
        }

        v56 = v75;
        v57 = v72;
        if (v76 == 1 && v72)
        {
          v59 = v71.__r_.__value_.__r.__words[2];
          v58 = v71.__r_.__value_.__l.__size_;
          if (v71.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v71.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v60 = v58;
              (v59->__on_zero_shared)(v59);
              std::__shared_weak_count::__release_weak(v59);
              v58 = v60;
            }
          }

          (*(*v58 + 88))(v58, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v57 = v72;
        }

        for (j = v55 - 1; j; --j)
        {
          std::ostream::write();
          v57 += v56;
        }

LABEL_134:
        std::ostream::write();
LABEL_135:
        v62 = v69[0];
        v69[0] = 0;
        if (v62)
        {
          (*(*v62 + 8))(v62);
        }

        break;
      }

      v81.__r_.__value_.__r.__words[0] = 16;
      v81.__r_.__value_.__l.__size_ = 0x1000000008;
      v81.__r_.__value_.__r.__words[2] = 14;
      LOBYTE(v69[0]) = 0;
      v70 = 0;
      sub_2715F1A84(&v81, a2, &v71, v69);
      if (v70 == 1 && v69[0])
      {
        v69[1] = v69[0];
        operator delete(v69[0]);
      }

      if (v73 && HIDWORD(v73))
      {
LABEL_88:
        sub_271120E64(a2, "\n", 1);
      }

      break;
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Pnm.cpp", 459, "", 0, "not implemented", 0xFuLL, sub_271852CA8);
      abort();
  }

  v63 = v71.__r_.__value_.__r.__words[2];
  if (v71.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v71.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

  *(a5 + 120) = 1;
}

void sub_2715EE704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  v66 = a65;
  a65 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_2712C9E78(&STACK[0x228]);
  sub_27112E024(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_2715EEB68(uint64_t **a1)
{
  v2 = MEMORY[0x277D85DE0];
  while (1)
  {
    v3 = *a1;
    std::istream::tellg();
    while ((*(v3 + *(*v3 - 24) + 32) & 2) == 0)
    {
      v4 = std::istream::peek();
      if (v4 <= 0x7F)
      {
        if ((*(v2 + 4 * v4 + 60) & 0x4000) == 0)
        {
          break;
        }
      }

      else if (!__maskrune(v4, 0x4000uLL))
      {
        break;
      }

      std::istream::seekg();
    }

    std::istream::tellg();
    if (v11 == v10)
    {
      v5 = *a1;
      std::istream::tellg();
      v7 = v5 + 4;
      for (i = *v5; (*(v7 + *(i - 24)) & 2) == 0 && std::istream::peek() == 35; i = v8)
      {
        v8 = *v5;
        if ((*(v7 + *(*v5 - 24)) & 2) == 0)
        {
          while (std::istream::peek() != 10)
          {
            std::istream::seekg();
            v8 = *v5;
            if ((*(v7 + *(*v5 - 24)) & 2) != 0)
            {
              goto LABEL_12;
            }
          }

          v8 = *v5;
        }

LABEL_12:
        ;
      }

      std::istream::tellg();
      if (v11 == v10)
      {
        return (*(*a1 + *(**a1 - 24) + 32) & 2) == 0;
      }
    }
  }
}

void sub_2715EED74(void *a1)
{
  v2 = std::istream::peek();
  if ((*(a1 + *(*a1 - 24) + 32) & 2) != 0)
  {
LABEL_20:
    operator new();
  }

  v3 = v2;
  sub_2715EF3DC("0123456789", v10);
  v4 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = v10[0];
  }

  if ((v11 & 0x80u) != 0)
  {
    v4 = v10[1];
  }

  if (v4)
  {
    v6 = (v4 - 1);
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v8 = v7 == v3;
    }

    while (v7 != v3 && v6-- != 0);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_15:
      if (!v8)
      {
        goto LABEL_20;
      }

LABEL_19:
      operator new();
    }
  }

  else
  {
    v8 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(v10[0]);
  if (!v8)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void sub_2715EEFF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EF35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EF38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715EF3DC(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = v4;
  if (v4)
  {
    memcpy(&__dst, a1, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_5:
      *a2 = __dst;
      *(a2 + 16) = v8;
      return;
    }
  }

  v6 = __dst;
  sub_271127178(a2, __dst, *(&__dst + 1));

  operator delete(v6);
}

void sub_2715EF504(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715EF864(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v16 = v5;
      *(&v16 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v16 = v5;
    }
  }

  else
  {
    v16 = 0uLL;
  }

  v7 = *(a1 + 24);
  v8 = v7 == 0;
  if (!*(a1 + 28))
  {
    v8 = 1;
  }

  v9 = *(a1 + 32) << 32;
  if (v8)
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + 40);
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  if (HIDWORD(v12) * HIDWORD(v9) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v13 += 16;
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v15 = *(a1 + 52);
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v16;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
    *(a2 + 40) = v15;
    if (!atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v16 + 1) + 16))(*(&v16 + 1), a3);

      std::__shared_weak_count::__release_weak(*(&v16 + 1));
    }
  }

  else
  {
    *a2 = v16;
    *(a2 + 8) = 0;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
    *(a2 + 40) = v15;
  }
}

void sub_2715EF814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_2715EF864(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878E50))
  {
    sub_2715EF97C();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280878E38, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_2715EF97C()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_271209CC4(__p);
}

void sub_2715EF9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EFA08()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_27120ADE8(__p);
}

void sub_2715EFA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EFA94(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715EFDF8(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v16 = v5;
      *(&v16 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v16 = v5;
    }
  }

  else
  {
    v16 = 0uLL;
  }

  v7 = *(a1 + 24);
  v8 = v7 == 0;
  if (!*(a1 + 28))
  {
    v8 = 1;
  }

  v9 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v8)
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + 40);
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  if (HIDWORD(v12) * HIDWORD(v9) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v13 += 16;
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v15 = *(a1 + 52);
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v16;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
    *(a2 + 40) = v15;
    if (!atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v16 + 1) + 16))(*(&v16 + 1), a3);

      std::__shared_weak_count::__release_weak(*(&v16 + 1));
    }
  }

  else
  {
    *a2 = v16;
    *(a2 + 8) = 0;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
    *(a2 + 40) = v15;
  }
}

void sub_2715EFDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_2715EFDF8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878E90))
  {
    sub_2715EFF10();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280878E78, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_2715EFF10()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_27120C094(__p);
}

void sub_2715EFF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EFF9C(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 21)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715F0390(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v5;
      *(&v22 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v22 = v5;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (!*(a1 + 28))
  {
    v8 = 1;
  }

  v10 = !v8;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | v9;
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *(&v23 + 4) = v13;
  v14 = v13;
  LODWORD(v23) = 3;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v7;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_2715F0340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_2715F0390(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878EB0))
  {
    sub_2715F04A8();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280878E98, " from an ", qword_280878E58, " but the image is of incompatible format ", &v2);
}

void sub_2715F04A8()
{
  v1 = 14;
  strcpy(__p, "ConstImageView");
  sub_2712160E0(__p);
}

void sub_2715F0518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F0534(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715F0894(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v16 = v5;
      *(&v16 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v16 = v5;
    }
  }

  else
  {
    v16 = 0uLL;
  }

  v7 = *(a1 + 24);
  v8 = v7 == 0;
  if (!*(a1 + 28))
  {
    v8 = 1;
  }

  v9 = *(a1 + 32) << 32;
  if (v8)
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + 40);
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  if (HIDWORD(v12) * HIDWORD(v9) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v13 += 16;
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v15 = *(a1 + 52);
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v16;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
    *(a2 + 40) = v15;
    if (!atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v16 + 1) + 16))(*(&v16 + 1), a3);

      std::__shared_weak_count::__release_weak(*(&v16 + 1));
    }
  }

  else
  {
    *a2 = v16;
    *(a2 + 8) = 0;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
    *(a2 + 40) = v15;
  }
}

void sub_2715F0844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_2715F0894(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878DD0))
  {
    sub_2715F09AC();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280878DB8, " from an ", qword_280878DD8, " but the image is of incompatible format ", &v2);
}

void sub_2715F09AC()
{
  v1 = 9;
  strcpy(__p, "ImageView");
  sub_271209CC4(__p);
}

void sub_2715F0A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F0A34()
{
  v1 = 9;
  strcpy(__p, "ImageView");
  sub_27120ADE8(__p);
}

void sub_2715F0AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715F0ABC(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != *a1)
  {
    *(a1 + 8) = *a1;
  }

  v4 = std::istream::peek();
  if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
  {
    v5 = v4;
    do
    {
      sub_2715EF3DC("0123456789", v31);
      v7 = v32;
      if ((v32 & 0x80u) == 0)
      {
        v8 = v31;
      }

      else
      {
        v8 = v31[0];
      }

      if ((v32 & 0x80u) != 0)
      {
        v7 = v31[1];
      }

      if (v7)
      {
        v9 = (v7 - 1);
        do
        {
          v10 = *v8;
          v8 = (v8 + 1);
          v11 = v10 == v5;
        }

        while (v10 != v5 && v9-- != 0);
        if ((v32 & 0x80000000) == 0)
        {
LABEL_20:
          if (!v11)
          {
            break;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v11 = 0;
        if ((v32 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      operator delete(v31[0]);
      if (!v11)
      {
        break;
      }

LABEL_24:
      v14 = *(a1 + 8);
      v13 = *(a1 + 16);
      if (v14 < v13)
      {
        *v14 = v5;
        v6 = v14 + 1;
      }

      else
      {
        v15 = *a1;
        v16 = &v14[-*a1];
        v17 = (v16 + 1);
        if ((v16 + 1) < 0)
        {
          goto LABEL_48;
        }

        v18 = v13 - v15;
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          operator new();
        }

        v20 = &v14[-*a1];
        *v16 = v5;
        v6 = v16 + 1;
        memcpy(0, v15, v20);
        *a1 = 0;
        *(a1 + 8) = v16 + 1;
        *(a1 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      *(a1 + 8) = v6;
      std::istream::seekg();
      v5 = std::istream::peek();
    }

    while ((*(a2 + *(*a2 - 24) + 32) & 2) == 0);
  }

  v22 = *(a1 + 8);
  v21 = *(a1 + 16);
  if (v22 >= v21)
  {
    v24 = *a1;
    v25 = &v22[-*a1];
    v26 = (v25 + 1);
    if ((v25 + 1) < 0)
    {
LABEL_48:
      sub_271135560();
    }

    v27 = v21 - v24;
    if (2 * v27 > v26)
    {
      v26 = 2 * v27;
    }

    if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      operator new();
    }

    v29 = &v22[-*a1];
    *v25 = 10;
    v23 = v25 + 1;
    memcpy(0, v24, v29);
    *a1 = 0;
    *(a1 + 8) = v25 + 1;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v22 = 10;
    v23 = v22 + 1;
  }

  *(a1 + 8) = v23;
  return atoi(*a1);
}

void sub_2715F0D64(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715F10C8(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v16 = v5;
      *(&v16 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v16 = v5;
    }
  }

  else
  {
    v16 = 0uLL;
  }

  v7 = *(a1 + 24);
  v8 = v7 == 0;
  if (!*(a1 + 28))
  {
    v8 = 1;
  }

  v9 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v8)
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + 40);
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  if (HIDWORD(v12) * HIDWORD(v9) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v13)(*(v13 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v13 += 16;
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v15 = *(a1 + 52);
  if (*(&v16 + 1))
  {
    atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v16;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
    *(a2 + 40) = v15;
    if (!atomic_fetch_add((*(&v16 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v16 + 1) + 16))(*(&v16 + 1), a3);

      std::__shared_weak_count::__release_weak(*(&v16 + 1));
    }
  }

  else
  {
    *a2 = v16;
    *(a2 + 8) = 0;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v10;
    *(a2 + 40) = v15;
  }
}

void sub_2715F1078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_2715F10C8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878E10))
  {
    sub_2715F11E0();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280878DF8, " from an ", qword_280878DD8, " but the image is of incompatible format ", &v2);
}

void sub_2715F11E0()
{
  v1 = 9;
  strcpy(__p, "ImageView");
  sub_27120C094(__p);
}

void sub_2715F124C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F1268(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  if (*(a1 + 48) != 21)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715F165C(a1);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v22 = v5;
      *(&v22 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v22 = v5;
    }
  }

  else
  {
    v22 = 0uLL;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (!*(a1 + 28))
  {
    v8 = 1;
  }

  v10 = !v8;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 32) << 32;
  }

  v12 = v11 | v9;
  v13 = *(a1 + 24);
  if (!v10)
  {
    v13 = 0;
  }

  *(&v23 + 4) = v13;
  v14 = v13;
  LODWORD(v23) = 3;
  v15 = v23;
  v16 = HIDWORD(v13);
  LODWORD(v24) = 1;
  HIDWORD(v24) = v12;
  v17 = v24;
  v18 = HIDWORD(v11);
  if (HIDWORD(v13) * HIDWORD(v11) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v19 = qword_28087C408, v20 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        a3.n128_f64[0] = qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v17 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v19 = qword_28087C408;
      v20 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v19)(*(v19 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v19 += 16;
    }

    while (v19 != v20);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v21 = *(a1 + 52);
  if (*(&v22 + 1))
  {
    atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v22;
  *(a2 + 16) = v7;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 36) = v17;
  *(a2 + 44) = v18;
  *(a2 + 48) = v14;
  *(a2 + 56) = v12;
  *(a2 + 64) = v21;
  if (*(&v22 + 1) && !atomic_fetch_add((*(&v22 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v22 + 1) + 16))(*(&v22 + 1), a3);

    std::__shared_weak_count::__release_weak(*(&v22 + 1));
  }
}

void sub_2715F160C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_2715F165C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878E30))
  {
    sub_2715F1774();
  }

  if ((atomic_load_explicit(&qword_280878DF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878DF0))
    {
      sub_2715F0A34();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", qword_280878E18, " from an ", qword_280878DD8, " but the image is of incompatible format ", &v2);
}

void sub_2715F1774()
{
  v1 = 9;
  strcpy(__p, "ImageView");
  sub_2712160E0(__p);
}

void sub_2715F17E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F17FC(_DWORD *a1)
{
  v2[10] = &unk_288110F08;
  sub_2717BB2D8(a1, v2);
  operator new();
}

void sub_2715F1A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(v9);
  sub_27112F828(va);
  sub_2713050B8(&a9);
  _Unwind_Resume(a1);
}

void sub_2715F1A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F1A84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 32) || !*(a3 + 36))
  {
    return;
  }

  v6 = *(a3 + 32);
  v30 = 0;
  v31 = v6;
  __p = 0;
  v29 = 0;
  if (*(a4 + 24) != 1)
  {
    operator new();
  }

  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  __p = *a4;
  v7 = __p;
  v29 = v8;
  v30 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (v7 != v8)
  {
    if (v8 - v7 != 8)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

  if (v7 >= v9)
  {
    v18 = (v9 - v7) >> 2;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (!(v19 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  *v8++ = " ";
  v29 = v8;
  if (v8 - v7 == 8)
  {
LABEL_47:
    if (v8 >= v9)
    {
      if (((v9 - v7) >> 2) <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = (v9 - v7) >> 2;
      }

      if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (!(v21 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    *v8++ = "\n";
    v29 = v8;
  }

LABEL_8:
  v10 = (v8 - v7) >> 3;
  v27 = v10 - 1;
  if (v10 <= 1)
  {
    do
    {
      if (v8 >= v9)
      {
        if ((v9 - v7) >> 2 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = (v9 - v7) >> 2;
        }

        if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 61))
        {
          operator new();
        }

        sub_2711270EC();
      }

      *v8++ = "\n";
      v29 = v8;
      v10 = (v8 - v7) >> 3;
    }

    while (v10 < 2);
  }

  v25[0] = &v26;
  v25[1] = &v31;
  v25[2] = &__p;
  v25[3] = &v27;
  v25[4] = a1;
  v26 = 0;
  LOBYTE(v23[0]) = 0;
  v32 = -1;
  v33 = v23;
  v34 = &v32;
  sub_2715F1EE4(a3, &v33);
  v13 = v32;
  if (v32)
  {
    LOBYTE(v14) = 0;
    do
    {
      LOBYTE(v14) = v14 + 1;
      v15 = v13 > 9;
      v13 /= 0xAu;
    }

    while (v15);
    v16 = LOBYTE(v23[0]);
    if (LOBYTE(v23[0]))
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v16 = LOBYTE(v23[0]);
    if (LOBYTE(v23[0]))
    {
LABEL_24:
      v17 = 0;
      do
      {
        ++v17;
        v15 = v16 > 9;
        v16 /= 0xAu;
      }

      while (v15);
      goto LABEL_29;
    }
  }

  v17 = 0;
LABEL_29:
  LODWORD(v14) = v14;
  if (v17 > v14)
  {
    LODWORD(v14) = v17;
  }

  if (v14 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  v24[0] = v14;
  v24[1] = 0;
  v23[0] = a2;
  v23[1] = v24;
  v33 = 0;
  sub_2713556A8(a1, a2, &v33, 1u, v27);
  v33 = v23;
  v34 = v25;
  v35 = a2;
  sub_2715F2128(a3, &v33);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_2715F1EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715F1EE4(uint64_t result, unsigned __int8 **a2)
{
  v3 = *(result + 32);
  v2 = *(result + 36);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return result;
  }

  v5 = v2 - 1;
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 24);
  if (*(result + 48) == 1 && v8 != 0)
  {
    v10 = a2;
    v11 = result;
    v12 = *(result + 8);
    v13 = v11;
    v14 = *(v11 + 16);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = v12;
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v12 = v15;
      }
    }

    result = (*(*v12 + 88))(v12, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    v8 = *(v13 + 24);
    a2 = v10;
  }

  v16 = v3 - 1;
  if (v5)
  {
    if (v3 != 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v18 = v3 - 1;
        v19 = v8;
        do
        {
          v20 = **a2;
          if (v20 <= *v19)
          {
            LOBYTE(v20) = *v19;
          }

          **a2 = v20;
          v21 = a2[1];
          v22 = *v19;
          if (v22 >= *v21)
          {
            LOBYTE(v22) = *v21;
          }

          *v21 = v22;
          v19 += v6;
          --v18;
        }

        while (v18);
        v23 = **a2;
        if (v23 <= *v19)
        {
          LOBYTE(v23) = *v19;
        }

        **a2 = v23;
        v24 = a2[1];
        v25 = *v19;
        if (v25 >= *v24)
        {
          LOBYTE(v25) = *v24;
        }

        *v24 = v25;
        v8 += v7;
      }

      goto LABEL_34;
    }

    do
    {
      v26 = **a2;
      if (v26 <= *v8)
      {
        LOBYTE(v26) = *v8;
      }

      **a2 = v26;
      v27 = a2[1];
      v28 = *v8;
      if (v28 >= *v27)
      {
        LOBYTE(v28) = *v27;
      }

      *v27 = v28;
      v8 += v7;
      --v5;
    }

    while (v5);
  }

  if (v3 != 1)
  {
    do
    {
LABEL_34:
      v29 = **a2;
      if (v29 <= *v8)
      {
        LOBYTE(v29) = *v8;
      }

      **a2 = v29;
      v30 = a2[1];
      v31 = *v8;
      if (v31 >= *v30)
      {
        LOBYTE(v31) = *v30;
      }

      *v30 = v31;
      v8 += v6;
      --v16;
    }

    while (v16);
  }

  v32 = **a2;
  if (v32 <= *v8)
  {
    LOBYTE(v32) = *v8;
  }

  **a2 = v32;
  v33 = a2[1];
  v34 = *v8;
  if (v34 >= *v33)
  {
    LOBYTE(v34) = *v33;
  }

  *v33 = v34;
  return result;
}

void sub_2715F2128(uint64_t result, uint64_t **a2)
{
  v5 = *(result + 32);
  v4 = *(result + 36);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v16 = v2;
    v17 = v3;
    v14[0] = 0;
    v14[1] = v5 - 1;
    v8 = *(result + 44);
    v14[2] = *(result + 40);
    v14[3] = v4 - 1;
    v14[4] = v8;
    v9 = *(result + 24);
    if (*(result + 48) == 1 && v9)
    {
      v10 = *(result + 8);
      v11 = *(result + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = v10;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          v10 = v13;
        }
      }

      (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v9 = *(result + 24);
    }

    v15 = 0;
    sub_2715F2240(v14, &v15, a2, v9);
  }
}

void sub_2715F2240(_DWORD *a1, uint64_t a2, uint64_t **a3, unsigned __int8 *a4)
{
  if (a1[3])
  {
    v7 = 0;
    while (1)
    {
      v22 = v7;
      v8 = a4;
      if (a1[1])
      {
        break;
      }

LABEL_3:
      sub_2715F2430(a3, v8);
      a4 += a1[4];
      v7 = v22 + 1;
      if ((v22 + 1) >= a1[3])
      {
        goto LABEL_14;
      }
    }

    v9 = 0;
    v8 = a4;
    while (1)
    {
      v12 = **a3;
      v13 = *(*a3)[1];
      v24 = 0;
      std::to_string(&v25, *v8);
      __p[0] = v25;
      sub_2717F9FFC(v12, __p, v13);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v15 = a3[1];
      v14 = a3[2];
      v16 = v15[4];
      v17 = *v15;
      v18 = v15[1];
      v19 = **v15 + 1;
      **v15 = v19;
      if (v19 == *v18)
      {
        v20 = v17[1] + 1;
        *v17 = 0;
        v17[1] = v20;
        if (v20 == v18[1])
        {
          goto LABEL_8;
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      v11 = strlen(*(*v15[2] + 8 * v10));
      sub_271120E64(v14, *(*v15[2] + 8 * v10), v11);
      sub_2713556A8(v16, v14, *v15, v10, *v15[3]);
LABEL_8:
      v8 += a1[2];
      if (++v9 >= a1[1])
      {
        goto LABEL_3;
      }
    }
  }

LABEL_14:
  if (a1[1])
  {
    v21 = 0;
    do
    {
      sub_2715F2430(a3, a4);
      a4 += a1[2];
      ++v21;
    }

    while (v21 < a1[1]);
  }

  sub_2715F2430(a3, a4);
}

void sub_2715F2430(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = **a1;
  v4 = *(*a1)[1];
  v15 = 0;
  std::to_string(&v16, *a2);
  __p[0] = v16;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = a1[1];
  v5 = a1[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = v8[1] + 1;
    *v8 = 0;
    v8[1] = v11;
    if (v11 == v9[1])
    {
      return;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(*(*v6[2] + 8 * v12));
  sub_271120E64(v5, *(*v6[2] + 8 * v12), v13);
  sub_2713556A8(v7, v5, *v6, v12, *v6[3]);
}

void sub_2715F253C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F256C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!*(a3 + 32) || !*(a3 + 36))
  {
    return;
  }

  v6 = *(a3 + 32);
  v30 = 0;
  v31 = v6;
  __p = 0;
  v29 = 0;
  if (*(a4 + 24) != 1)
  {
    operator new();
  }

  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  __p = *a4;
  v7 = __p;
  v29 = v8;
  v30 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (v7 != v8)
  {
    if (v8 - v7 != 8)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

  if (v7 >= v9)
  {
    v18 = (v9 - v7) >> 2;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (!(v19 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  *v8++ = " ";
  v29 = v8;
  if (v8 - v7 == 8)
  {
LABEL_47:
    if (v8 >= v9)
    {
      if (((v9 - v7) >> 2) <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = (v9 - v7) >> 2;
      }

      if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (!(v21 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    *v8++ = "\n";
    v29 = v8;
  }

LABEL_8:
  v10 = (v8 - v7) >> 3;
  v27 = v10 - 1;
  if (v10 <= 1)
  {
    do
    {
      if (v8 >= v9)
      {
        if ((v9 - v7) >> 2 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = (v9 - v7) >> 2;
        }

        if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 61))
        {
          operator new();
        }

        sub_2711270EC();
      }

      *v8++ = "\n";
      v29 = v8;
      v10 = (v8 - v7) >> 3;
    }

    while (v10 < 2);
  }

  v25[0] = &v26;
  v25[1] = &v31;
  v25[2] = &__p;
  v25[3] = &v27;
  v25[4] = a1;
  v26 = 0;
  LOWORD(v23[0]) = 0;
  v32 = -1;
  v33 = v23;
  v34 = &v32;
  sub_2715F29CC(a3, &v33);
  v13 = v32;
  if (v32)
  {
    LOBYTE(v14) = 0;
    do
    {
      LOBYTE(v14) = v14 + 1;
      v15 = v13 > 9;
      v13 /= 0xAu;
    }

    while (v15);
    v16 = LOWORD(v23[0]);
    if (LOWORD(v23[0]))
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v16 = LOWORD(v23[0]);
    if (LOWORD(v23[0]))
    {
LABEL_24:
      v17 = 0;
      do
      {
        ++v17;
        v15 = v16 > 9;
        v16 /= 0xAu;
      }

      while (v15);
      goto LABEL_29;
    }
  }

  v17 = 0;
LABEL_29:
  LODWORD(v14) = v14;
  if (v17 > v14)
  {
    LODWORD(v14) = v17;
  }

  if (v14 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  v24[0] = v14;
  v24[1] = 0;
  v23[0] = a2;
  v23[1] = v24;
  v33 = 0;
  sub_2713556A8(a1, a2, &v33, 1u, v27);
  v33 = v23;
  v34 = v25;
  v35 = a2;
  sub_2715F2C30(a3, &v33);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_2715F2994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2715F29CC(unint64_t result, uint64_t a2)
{
  v5 = *(result + 32);
  v4 = *(result + 36);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v16 = v2;
    v17 = v3;
    v14[0] = 0;
    v14[1] = v5 - 1;
    v8 = *(result + 44);
    v14[2] = *(result + 40);
    v14[3] = v4 - 1;
    v14[4] = v8;
    v9 = *(result + 24);
    if (*(result + 48) == 1 && v9)
    {
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = result;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = v10;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          v10 = v13;
        }
      }

      (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v9 = *(v12 + 24);
    }

    v15 = 0;
    return sub_2715F2AE4(v14, &v15, a2, v9);
  }

  return result;
}

unint64_t sub_2715F2AE4(unint64_t result, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v4 = *(result + 12);
  v5 = *(result + 4);
  if (!v4)
  {
    v7 = *a3;
    v6 = *(a3 + 8);
    if (!v5)
    {
      goto LABEL_30;
    }

    v10 = *(result + 8);
    goto LABEL_18;
  }

  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = *(result + 16);
  if (v5)
  {
    v9 = 0;
    v10 = *(result + 8);
    v11 = 2 * v8;
    do
    {
      v12 = a4;
      v13 = v5;
      do
      {
        v14 = *v7;
        if (v14 <= *v12)
        {
          LOWORD(v14) = *v12;
        }

        *v7 = v14;
        v15 = *v12;
        if (v15 >= *v6)
        {
          LOWORD(v15) = *v6;
        }

        *v6 = v15;
        v12 += v10;
        --v13;
      }

      while (v13);
      v16 = *v7;
      result = *v12;
      if (v16 <= result)
      {
        LOWORD(v16) = *v12;
      }

      *v7 = v16;
      v17 = *v12;
      if (v17 >= *v6)
      {
        LOWORD(v17) = *v6;
      }

      *v6 = v17;
      a4 = (a4 + v11);
      ++v9;
    }

    while (v9 != v4);
LABEL_18:
    v18 = 2 * v10;
    do
    {
      v19 = *v7;
      if (v19 <= *a4)
      {
        LOWORD(v19) = *a4;
      }

      *v7 = v19;
      v20 = *a4;
      if (v20 >= *v6)
      {
        LOWORD(v20) = *v6;
      }

      *v6 = v20;
      a4 = (a4 + v18);
      --v5;
    }

    while (v5);
    goto LABEL_30;
  }

  do
  {
    v21 = *v7;
    if (v21 <= *a4)
    {
      LOWORD(v21) = *a4;
    }

    *v7 = v21;
    v22 = *a4;
    if (v22 >= *v6)
    {
      LOWORD(v22) = *v6;
    }

    *v6 = v22;
    a4 += v8;
    --v4;
  }

  while (v4);
LABEL_30:
  v23 = *v7;
  if (v23 <= *a4)
  {
    LOWORD(v23) = *a4;
  }

  *v7 = v23;
  v24 = *a4;
  if (v24 >= *v6)
  {
    LOWORD(v24) = *v6;
  }

  *v6 = v24;
  return result;
}

void sub_2715F2C30(uint64_t result, uint64_t **a2)
{
  v5 = *(result + 32);
  v4 = *(result + 36);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v16 = v2;
    v17 = v3;
    v14[0] = 0;
    v14[1] = v5 - 1;
    v8 = *(result + 44);
    v14[2] = *(result + 40);
    v14[3] = v4 - 1;
    v14[4] = v8;
    v9 = *(result + 24);
    if (*(result + 48) == 1 && v9)
    {
      v10 = *(result + 8);
      v11 = *(result + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = v10;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          v10 = v13;
        }
      }

      (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v9 = *(result + 24);
    }

    v15 = 0;
    sub_2715F2D48(v14, &v15, a2, v9);
  }
}

void sub_2715F2D48(_DWORD *a1, uint64_t a2, uint64_t **a3, unsigned __int16 *a4)
{
  if (a1[3])
  {
    v7 = 0;
    while (1)
    {
      v22 = v7;
      v8 = a4;
      if (a1[1])
      {
        break;
      }

LABEL_3:
      sub_2715F2F38(a3, v8);
      a4 += a1[4];
      v7 = v22 + 1;
      if ((v22 + 1) >= a1[3])
      {
        goto LABEL_14;
      }
    }

    v9 = 0;
    v8 = a4;
    while (1)
    {
      v12 = **a3;
      v13 = *(*a3)[1];
      v24 = 0;
      std::to_string(&v25, *v8);
      __p[0] = v25;
      sub_2717F9FFC(v12, __p, v13);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v15 = a3[1];
      v14 = a3[2];
      v16 = v15[4];
      v17 = *v15;
      v18 = v15[1];
      v19 = **v15 + 1;
      **v15 = v19;
      if (v19 == *v18)
      {
        v20 = v17[1] + 1;
        *v17 = 0;
        v17[1] = v20;
        if (v20 == v18[1])
        {
          goto LABEL_8;
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      v11 = strlen(*(*v15[2] + 8 * v10));
      sub_271120E64(v14, *(*v15[2] + 8 * v10), v11);
      sub_2713556A8(v16, v14, *v15, v10, *v15[3]);
LABEL_8:
      v8 += a1[2];
      if (++v9 >= a1[1])
      {
        goto LABEL_3;
      }
    }
  }

LABEL_14:
  if (a1[1])
  {
    v21 = 0;
    do
    {
      sub_2715F2F38(a3, a4);
      a4 += a1[2];
      ++v21;
    }

    while (v21 < a1[1]);
  }

  sub_2715F2F38(a3, a4);
}

void sub_2715F2F38(uint64_t **a1, unsigned __int16 *a2)
{
  v3 = **a1;
  v4 = *(*a1)[1];
  v15 = 0;
  std::to_string(&v16, *a2);
  __p[0] = v16;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = a1[1];
  v5 = a1[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = v8[1] + 1;
    *v8 = 0;
    v8[1] = v11;
    if (v11 == v9[1])
    {
      return;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(*(*v6[2] + 8 * v12));
  sub_271120E64(v5, *(*v6[2] + 8 * v12), v13);
  sub_2713556A8(v7, v5, *v6, v12, *v6[3]);
}

void sub_2715F3044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F3074(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 56) || !*(a3 + 60))
  {
    return;
  }

  v6 = *(a3 + 32);
  v34 = 0;
  v35 = v6;
  v36 = *(a3 + 40);
  __p = 0;
  v33 = 0;
  if (*(a4 + 24) != 1)
  {
    v10 = *(a1 + 8);
    if (v35 <= v10)
    {
      v11 = *(a1 + 12);
      if (v35 <= v11 && HIDWORD(v35) <= v10 && HIDWORD(v35) * v35 <= v11)
      {
        operator new();
      }
    }

    operator new();
  }

  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  __p = *a4;
  v7 = __p;
  v33 = v8;
  v34 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (v7 != v8)
  {
    if (v8 - v7 != 8)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

  if (v7 >= v9)
  {
    v21 = (v9 - v7) >> 2;
    if (v21 <= 1)
    {
      v21 = 1;
    }

    if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (!(v22 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  *v8++ = " ";
  v33 = v8;
  if (v8 - v7 == 8)
  {
LABEL_60:
    if (v8 >= v9)
    {
      if (((v9 - v7) >> 2) <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = (v9 - v7) >> 2;
      }

      if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (!(v24 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    *v8++ = "\n";
    v33 = v8;
  }

LABEL_13:
  v12 = (v8 - v7) >> 3;
  v31 = v12 - 1;
  if (v12 <= 2)
  {
    do
    {
      if (v8 >= v9)
      {
        if ((v9 - v7) >> 2 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = (v9 - v7) >> 2;
        }

        if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (!(v14 >> 61))
        {
          operator new();
        }

        sub_2711270EC();
      }

      *v8++ = "\n";
      v33 = v8;
      v12 = (v8 - v7) >> 3;
    }

    while (v12 < 3);
  }

  v28[4] = a1;
  v29 = 0;
  v30 = 0;
  v28[0] = &v29;
  v28[1] = &v35;
  v28[2] = &__p;
  v28[3] = &v31;
  v41[0] = 0;
  v37 = -1;
  v38 = v41;
  v39 = &v37;
  if (*(a3 + 32) && *(a3 + 36) && *(a3 + 40))
  {
    v26[0] = &v38;
    sub_2715F359C(v26, a3);
    v15 = a2;
    v16 = v37;
    if (!v37)
    {
      LOBYTE(v17) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v16 = 255;
    v15 = a2;
  }

  LOBYTE(v17) = 0;
  do
  {
    LOBYTE(v17) = v17 + 1;
    v18 = v16 > 9;
    v16 /= 0xAu;
  }

  while (v18);
LABEL_33:
  v19 = v41[0];
  if (v41[0])
  {
    v20 = 0;
    do
    {
      ++v20;
      v18 = v19 > 9;
      v19 /= 0xAu;
    }

    while (v18);
  }

  else
  {
    v20 = 0;
  }

  LODWORD(v17) = v17;
  if (v20 > v17)
  {
    LODWORD(v17) = v20;
  }

  if (v17 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v17;
  }

  v27[0] = v17;
  v27[1] = 0;
  v26[0] = v15;
  v26[1] = v27;
  LODWORD(v39) = 0;
  v38 = 0;
  sub_2715F3874(a1, v15, &v38, 2u, v31);
  v38 = v26;
  v39 = v28;
  v40 = v15;
  if (*(a3 + 32) && *(a3 + 36) && *(a3 + 40))
  {
    *v41 = &v38;
    sub_2715F3D3C(v41, a3);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_2715F3564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void **sub_2715F359C(void **result, uint64_t a2)
{
  v5 = *(a2 + 32);
  v4 = *(a2 + 36);
  v6 = *(a2 + 40);
  if (v5)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 != 0)
  {
    v21[6] = v2;
    v21[7] = v3;
    v9 = result;
    v18[0] = 0;
    v18[1] = v5 - 1;
    v10 = *(a2 + 48);
    v18[2] = *(a2 + 44);
    v18[3] = v4 - 1;
    v11 = v6 - 1;
    v18[4] = v10;
    v19 = v11;
    v20 = *(a2 + 52);
    v12 = *(a2 + 24);
    if (*(a2 + 72) == 1 && v12)
    {
      v13 = *(a2 + 8);
      v14 = *(a2 + 16);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v16 = v13;
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
          v13 = v16;
        }
      }

      (*(*v13 + 88))(v13, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
      v12 = *(a2 + 24);
      v11 = v19;
    }

    v21[0] = 0;
    v21[1] = 0;
    if (v11)
    {
      v17 = 0;
      do
      {
        sub_2715F36FC(v18, v21, v9, v12);
        v12 += v20;
        ++v17;
      }

      while (v17 < v19);
    }

    return sub_2715F36FC(v18, v21, v9, v12);
  }

  return result;
}

uint64_t sub_2715F36FC(uint64_t result, uint64_t *a2, void **a3, _BYTE *a4)
{
  *a2 = a4;
  if (*(result + 12))
  {
    v4 = 0;
    do
    {
      *a2 = a4;
      v5 = *a3;
      v6 = **a3;
      v7 = *v6;
      if (v7 <= *a4)
      {
        LOBYTE(v7) = *a4;
      }

      *v6 = v7;
      v8 = v5[1];
      v9 = *a4;
      if (v9 >= *v8)
      {
        LOBYTE(v9) = *v8;
      }

      *v8 = v9;
      v10 = *a3;
      v11 = *a2;
      v12 = **a3;
      v13 = *v12;
      if (v13 <= *(*a2 + 1))
      {
        LOBYTE(v13) = *(*a2 + 1);
      }

      *v12 = v13;
      v14 = v10[1];
      v15 = *(v11 + 1);
      if (v15 >= *v14)
      {
        LOBYTE(v15) = *v14;
      }

      *v14 = v15;
      v16 = *a3;
      v17 = *a2;
      v18 = **a3;
      v19 = *v18;
      if (v19 <= *(*a2 + 2))
      {
        LOBYTE(v19) = *(*a2 + 2);
      }

      *v18 = v19;
      v20 = v16[1];
      v21 = *(v17 + 2);
      if (v21 >= *v20)
      {
        LOBYTE(v21) = *v20;
      }

      *v20 = v21;
      a4 += *(result + 16);
      ++v4;
    }

    while (v4 < *(result + 12));
  }

  *a2 = a4;
  v22 = *a3;
  v23 = **a3;
  v24 = *v23;
  if (v24 <= *a4)
  {
    LOBYTE(v24) = *a4;
  }

  *v23 = v24;
  v25 = v22[1];
  v26 = *a4;
  if (v26 >= *v25)
  {
    LOBYTE(v26) = *v25;
  }

  *v25 = v26;
  v27 = *a3;
  v28 = *a2;
  v29 = **a3;
  v30 = *v29;
  if (v30 <= *(*a2 + 1))
  {
    LOBYTE(v30) = *(*a2 + 1);
  }

  *v29 = v30;
  v31 = v27[1];
  v32 = *(v28 + 1);
  if (v32 >= *v31)
  {
    LOBYTE(v32) = *v31;
  }

  *v31 = v32;
  v33 = *a3;
  v34 = *a2;
  v35 = **a3;
  v36 = *v35;
  if (v36 <= *(*a2 + 2))
  {
    LOBYTE(v36) = *(*a2 + 2);
  }

  *v35 = v36;
  v37 = v33[1];
  v38 = *(v34 + 2);
  if (v38 >= *v37)
  {
    LOBYTE(v38) = *v37;
  }

  *v37 = v38;
  return result;
}

void sub_2715F3874(uint64_t a1, void *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a4 > a5)
  {
    v7 = 4 * a4;
    v8 = *a3;
    v13 = a2;
    v14 = v8;
    v15 = *(a3 + 2);
    ++*(&v14 + v7);
    sub_271120E64(a2, "[", 1);
    std::to_string(&v16, a4);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    sub_271120E64(v13, v9, size);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    sub_271120E64(v13, "d-slice #", 9);
    std::to_string(&v16, *(a3 + v7));
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v16;
    }

    else
    {
      v11 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v16.__r_.__value_.__l.__size_;
    }

    sub_271120E64(v13, v11, v12);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    sub_271120E64(v13, ": ", 2);
    sub_2715F3A38(&v16, &v13, a3);
  }
}

void sub_2715F3A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F3CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F3D3C(uint64_t ***result, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = *(a2 + 40);
  if (*(a2 + 32))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || v3 == 0)
  {
    return;
  }

  v7 = v3 - 1;
  v8 = *(a2 + 48);
  v9 = *(a2 + 52);
  v10 = *(a2 + 24);
  if (*(a2 + 72) == 1 && v10 != 0)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = v12;
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v12 = v15;
      }
    }

    (*(*v12 + 88))(v12, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
    v10 = *(a2 + 24);
  }

  v16 = v2 - 1;
  if (!v7)
  {
LABEL_26:
    if (v2 == 1)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v2 == 1)
  {
    do
    {
      sub_2715F3F70(*result, v10);
      sub_2715F3F70(*result, v10 + 1);
      sub_2715F3F70(*result, v10 + 2);
      v10 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_26;
  }

  for (i = 0; i != v7; ++i)
  {
    v18 = v16;
    v19 = v10;
    do
    {
      sub_2715F3F70(*result, v19);
      sub_2715F3F70(*result, v19 + 1);
      sub_2715F3F70(*result, v19 + 2);
      v19 += v8;
      --v18;
    }

    while (v18);
    sub_2715F3F70(*result, v19);
    sub_2715F3F70(*result, v19 + 1);
    sub_2715F3F70(*result, v19 + 2);
    v10 += v9;
  }

  do
  {
LABEL_27:
    sub_2715F3F70(*result, v10);
    sub_2715F3F70(*result, v10 + 1);
    sub_2715F3F70(*result, v10 + 2);
    v10 += v8;
    --v16;
  }

  while (v16);
LABEL_28:
  sub_2715F3F70(*result, v10);
  sub_2715F3F70(*result, v10 + 1);
  v20 = *result;

  sub_2715F3F70(v20, v10 + 2);
}

void sub_2715F3F70(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = **a1;
  v4 = *(*a1)[1];
  v16 = 0;
  std::to_string(&v17, *a2);
  __p[0] = v17;
  sub_2717F9FFC(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = a1[1];
  v5 = a1[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(*v6[2] + 8 * v13));
  sub_271120E64(v5, *(*v6[2] + 8 * v13), v14);
  sub_2715F3874(v7, v5, *v6, v13, *v6[3]);
}

void sub_2715F409C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715F40CC(uint64_t a1, uint64_t a2, int a3)
{
  v21 = &unk_28810E7B8;
  sub_2715FDC1C(a2, &v22);
  v6 = sub_2715F4414(v24, a3);
  v7 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v6 = v8;
  }

  *a1 = v6;
  sub_2715FDC1C(a2, &v17);
  v9 = v19;
  v25[6] = xmmword_27189CD60;
  v25[7] = unk_27189CD70;
  v25[8] = xmmword_27189CD80;
  v25[9] = unk_27189CD90;
  v25[2] = xmmword_27189CD20;
  v25[3] = unk_27189CD30;
  v25[4] = xmmword_27189CD40;
  v25[5] = unk_27189CD50;
  v25[0] = xmmword_27189CD00;
  v25[1] = unk_27189CD10;
  v10 = sub_2715F5C00(v25, v20);
  if (v10 == &v26)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Serialization.cpp", 166, "maybe_format", 0xCuLL, "Format is not serializable. Must be a non-dynamic format.", 0x39uLL, sub_271852CA8, &unk_28810E7B8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_14;
      }

      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
LABEL_14:
      qword_28087C420(*algn_28087C428, "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      *(a1 + 8) = 0;
      *(a1 + 16) = v9;
      v11 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_18:
    abort();
  }

  *(a1 + 8) = *(&unk_27189CDA0 + 2 * (v10 - v25));
  *(a1 + 16) = v9;
  v11 = v18;
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_17:
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_28810F9B8;
  *(a1 + 40) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a1 + 86) = *(a2 + 54);
  *(a1 + 72) = v15;
  *(a1 + 56) = v14;
  *(a1 + 96) = 1;
  return a1;
}

void sub_2715F43EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271229D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715F4414(unsigned int a1, int a2)
{
  if ((a2 & 0x10000) == 0)
  {
    return 1;
  }

  v2 = a2;
  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      if (a1 - 1 < 2 || (a1 & 0xFFFFFFF7) - 21 < 2)
      {
        return v2;
      }
    }

    else if (a2 == 5)
    {
      if (a1 == 1 || a1 == 21)
      {
        return v2;
      }
    }

    else if (a2 == 6 && a1 <= 0x20 && ((1 << a1) & 0x1E1E0001ELL) != 0)
    {
      return 6;
    }
  }

  else if (a2 == 1)
  {
    if (a1)
    {
      return 1;
    }
  }

  else if (a2 == 2)
  {
    if (a1 - 1 < 2)
    {
      return 2;
    }
  }

  else if (a2 == 3 && a1 == 21)
  {
    return 3;
  }

  v4 = a2;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Serialization.cpp", 218, "CanSerialize(to_serialize.RuntimeFormat(), *op_format)", 0x36uLL, "", 0, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (byte_28087C438 == 1)
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_30:
        v8 = *v5;
        v7 = *(v5 + 8);
        v5 += 16;
        v8(v7, "CanSerialize(to_serialize.RuntimeFormat(), *op_format)", 54, "", 0);
      }

      while (v5 != v6);
      if (byte_28087C430)
      {
        goto LABEL_32;
      }

LABEL_33:
      abort();
    }
  }

LABEL_32:
  qword_28087C420(*algn_28087C428, "CanSerialize(to_serialize.RuntimeFormat(), *op_format)", 54, "", 0);
  return v4;
}

void sub_2715F4670(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 24);
  v8 = *(a1 + 8);
  memcpy(__dst, &unk_27189CDA0, sizeof(__dst));
  v4 = *(&xmmword_27189CD00 + ((sub_2715F5838(__dst, &v8) - __dst) >> 1));
  if (v3 == 1 && v4 <= 0x26 && ((1 << v4) & 0x61826001BELL) != 0)
  {
    v8 = v2;
    sub_2715F7B90(v4, &v8);
  }

  v6 = *(a1 + 16);
  v8 = &v6;
  sub_27179AB54(v4, &v8);
}

uint64_t sub_2715F47C4(_DWORD *a1, _DWORD *a2)
{
  sub_2715E4BBC(a1, &v15);
  sub_2715E4BBC(a2, &v14);
  v4 = a1[12];
  if (v4 != a2[12])
  {
    goto LABEL_17;
  }

  if (a1[6])
  {
    v5 = a1[7] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (a2[6])
  {
    v7 = a2[7] == 0;
    if (((v6 ^ v7) & 1) == 0)
    {
      if ((v6 & v7) == 1)
      {
        goto LABEL_11;
      }

LABEL_16:
      v10 = sub_27175D7C0(v4, a1, a2);
      goto LABEL_18;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((v6 & 1) != 1)
  {
    goto LABEL_16;
  }

LABEL_11:
  v8 = *(a1 + 3);
  v9 = *(a2 + 3);
  v10 = v8 == v9 && (v9 ^ v8) >> 32 == 0;
LABEL_18:
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return v10;
}

void sub_2715F4900(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
    v11 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v11 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2715F4994(uint64_t a1, uint64_t a2, int a3)
{
  v21 = &unk_28810E7B8;
  sub_2715FDC1C(a2, &v22);
  v6 = sub_2715F4414(v24, a3);
  v7 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v6 = v8;
  }

  *a1 = v6;
  sub_2715FDC1C(a2, &v17);
  v9 = v19;
  v25[6] = xmmword_27189CD60;
  v25[7] = unk_27189CD70;
  v25[8] = xmmword_27189CD80;
  v25[9] = unk_27189CD90;
  v25[2] = xmmword_27189CD20;
  v25[3] = unk_27189CD30;
  v25[4] = xmmword_27189CD40;
  v25[5] = unk_27189CD50;
  v25[0] = xmmword_27189CD00;
  v25[1] = unk_27189CD10;
  v10 = sub_2715F5C00(v25, v20);
  if (v10 == &v26)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Serialization.cpp", 166, "maybe_format", 0xCuLL, "Format is not serializable. Must be a non-dynamic format.", 0x39uLL, sub_271852CA8, &unk_28810E7B8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_14;
      }

      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
LABEL_14:
      qword_28087C420(*algn_28087C428, "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      *(a1 + 8) = 0;
      *(a1 + 16) = v9;
      v11 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_18:
    abort();
  }

  *(a1 + 8) = *(&unk_27189CDA0 + 2 * (v10 - v25));
  *(a1 + 16) = v9;
  v11 = v18;
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_17:
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_28810F9B8;
  *(a1 + 40) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a1 + 86) = *(a2 + 54);
  *(a1 + 72) = v15;
  *(a1 + 56) = v14;
  *(a1 + 96) = 1;
  return a1;
}

void sub_2715F4CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271229D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715F4CDC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a2 + 48);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a2 + 48);
  }

  v7 = (a2 + 24);
  v26 = v6;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = a3;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    a3 = v8;
  }

  v9 = sub_2715F4414(v26, a3);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v9;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v9 = v10;
  }

  v27[7] = unk_27189CD70;
  v27[8] = xmmword_27189CD80;
  v27[9] = unk_27189CD90;
  v27[2] = xmmword_27189CD20;
  v27[3] = unk_27189CD30;
  v27[4] = xmmword_27189CD40;
  *a1 = v9;
  v11 = *(a2 + 48);
  v12 = *(a2 + 24);
  v27[5] = unk_27189CD50;
  v27[6] = xmmword_27189CD60;
  v27[0] = xmmword_27189CD00;
  v27[1] = unk_27189CD10;
  v13 = sub_2715F5C00(v27, v11);
  if (v13 != &v28)
  {
    v14 = *(&unk_27189CDA0 + 2 * (v13 - v27));
    goto LABEL_20;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Serialization.cpp", 166, "maybe_format", 0xCuLL, "Format is not serializable. Must be a non-dynamic format.", 0x39uLL, sub_271852CA8);
  if (byte_28087C430 != 1)
  {
    v15 = qword_28087C408;
    v16 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (byte_28087C438 == 1)
  {
    v15 = qword_28087C408;
    v16 = qword_28087C410;
    if (qword_28087C408 != qword_28087C410)
    {
      do
      {
LABEL_17:
        v18 = *v15;
        v17 = *(v15 + 8);
        v15 += 16;
        v18(v17, "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
      }

      while (v15 != v16);
      if (byte_28087C430)
      {
        goto LABEL_19;
      }

LABEL_27:
      abort();
    }
  }

LABEL_19:
  qword_28087C420(*algn_28087C428, "maybe_format", 12, "Format is not serializable. Must be a non-dynamic format.", 57);
  v14 = 0;
LABEL_20:
  *(a1 + 8) = v14;
  *(a1 + 16) = v12;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_28810E7B8;
  v19 = *(a2 + 8);
  v20 = *(a2 + 16);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = *(a2 + 40);
    v22 = *(a2 + 48);
    v23 = *(a2 + 52);
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v21 = *(a2 + 40);
    v22 = *(a2 + 48);
    v23 = *(a2 + 52);
  }

  *(a1 + 40) = v19;
  *(a1 + 48) = v20;
  v24 = *v7;
  *(a1 + 64) = *(a2 + 32);
  *(a1 + 56) = v24;
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  *(a1 + 84) = v23;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  *(a1 + 96) = 0;
  return a1;
}

void sub_2715F5070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271229D10(va);
  _Unwind_Resume(a1);
}

void sub_2715F5084(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    if (v2 != 1)
    {
      sub_2711308D4();
    }

    *a2 = &unk_28810E7B8;
    sub_2715FDE40(a1 + 32, a2 + 8);
  }

  else
  {
    *a2 = &unk_28810E7B8;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      v7 = *(a1 + 84);
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      v7 = *(a1 + 84);
    }

    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
    *(a2 + 24) = *(a1 + 56);
    *(a2 + 32) = *(a1 + 64);
    *(a2 + 40) = v5;
    *(a2 + 48) = v6;
    *(a2 + 52) = v7;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_2715F51B0(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = *(a1 + 96);
  if (v4 == 1)
  {
    *a2 = &unk_28810F9B8;
    *(a2 + 8) = *(a1 + 40);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a2 + 24) = *(a1 + 56);
    *(a2 + 40) = *(a1 + 72);
    *(a2 + 54) = *(a1 + 86);
    return;
  }

  if (v4)
  {
    sub_2711308D4();
  }

  v17 = &unk_28810E7B8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v9 = *(a1 + 84);
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v9 = *(a1 + 84);
  }

  v18 = v5;
  v19 = v6;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = v7;
  v23 = v8;
  v24 = v9;
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    *a2 = &unk_28810F9B8;
    v10 = a2 + 8;
    v11 = v18;
    if (v18)
    {
      goto LABEL_11;
    }

LABEL_19:
    v25[0] = &v26;
    v25[1] = &v17;
    sub_2717C53D8(v23, v25, v10, a3);
    v13 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_22;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  *a2 = &unk_28810F9B8;
  v10 = a2 + 8;
  v11 = v18;
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    v11 = v18;
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v11 = v18;
    }
  }

  (*(*v11 + 32))(v25);
  v12 = (*(*v25[0] + 48))(v25[0]);
  if (v25[0])
  {
    operator new();
  }

  v14 = v23;
  v15 = v24;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v16 = v20;
  *(a2 + 24) = 0;
  *(a2 + 32) = v16;
  *(a2 + 40) = v21;
  *(a2 + 48) = v12;
  *(a2 + 56) = v14;
  *(a2 + 60) = v15;
  v13 = v19;
  if (v19)
  {
LABEL_22:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }
}

void sub_2715F5544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a16;
  a16 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_271229D10(&a9);
  _Unwind_Resume(a1);
}

void sub_2715F5588(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 24);
  v8 = *(a1 + 8);
  memcpy(__dst, &unk_27189CDA0, sizeof(__dst));
  v4 = *(&xmmword_27189CD00 + ((sub_2715F5838(__dst, &v8) - __dst) >> 1));
  if (v3 == 1 && v4 <= 0x26 && ((1 << v4) & 0x61826001BELL) != 0)
  {
    v8 = v2;
    sub_2715FCAC8(v4, &v8);
  }

  v6 = *(a1 + 16);
  v8 = &v6;
  sub_27179AB54(v4, &v8);
}

uint64_t sub_2715F56DC(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  sub_2715F5084(a1, v10);
  sub_2715F5084(a2, v8);
  result = sub_2715F47C4(v10, v8);
  v4 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = result;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = v5;
  }

  v6 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  return result;
}

void sub_2715F5808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271229D10(&a9);
  sub_271229D10(va);
  _Unwind_Resume(a1);
}

void sub_2715F5824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_271229D10(va);
  _Unwind_Resume(a1);
}

void *sub_2715F5838(void *result, uint64_t *a2)
{
  v2 = *a2;
  if (*result != *a2)
  {
    if (result[1] == v2)
    {
      ++result;
    }

    else if (result[2] == v2)
    {
      result += 2;
    }

    else if (result[3] == v2)
    {
      result += 3;
    }

    else if (result[4] == v2)
    {
      result += 4;
    }

    else if (result[5] == v2)
    {
      result += 5;
    }

    else if (result[6] == v2)
    {
      result += 6;
    }

    else if (result[7] == v2)
    {
      result += 7;
    }

    else if (result[8] == v2)
    {
      result += 8;
    }

    else if (result[9] == v2)
    {
      result += 9;
    }

    else if (result[10] == v2)
    {
      result += 10;
    }

    else if (result[11] == v2)
    {
      result += 11;
    }

    else if (result[12] == v2)
    {
      result += 12;
    }

    else if (result[13] == v2)
    {
      result += 13;
    }

    else if (result[14] == v2)
    {
      result += 14;
    }

    else if (result[15] == v2)
    {
      result += 15;
    }

    else if (result[16] == v2)
    {
      result += 16;
    }

    else if (result[17] == v2)
    {
      result += 17;
    }

    else if (result[18] == v2)
    {
      result += 18;
    }

    else if (result[19] == v2)
    {
      result += 19;
    }

    else if (result[20] == v2)
    {
      result += 20;
    }

    else if (result[21] == v2)
    {
      result += 21;
    }

    else if (result[22] == v2)
    {
      result += 22;
    }

    else if (result[23] == v2)
    {
      result += 23;
    }

    else if (result[24] == v2)
    {
      result += 24;
    }

    else if (result[25] == v2)
    {
      result += 25;
    }

    else if (result[26] == v2)
    {
      result += 26;
    }

    else if (result[27] == v2)
    {
      result += 27;
    }

    else if (result[28] == v2)
    {
      result += 28;
    }

    else if (result[29] == v2)
    {
      result += 29;
    }

    else if (result[30] == v2)
    {
      result += 30;
    }

    else if (result[31] == v2)
    {
      result += 31;
    }

    else if (result[32] == v2)
    {
      result += 32;
    }

    else if (result[33] == v2)
    {
      result += 33;
    }

    else if (result[34] == v2)
    {
      result += 34;
    }

    else if (result[35] == v2)
    {
      result += 35;
    }

    else if (result[36] == v2)
    {
      result += 36;
    }

    else if (result[37] == v2)
    {
      result += 37;
    }

    else if (result[38] == v2)
    {
      result += 38;
    }

    else if (result[39] == v2)
    {
      result += 39;
    }

    else
    {
      result += 40;
    }
  }

  return result;
}

_DWORD *sub_2715F5C00(_DWORD *a1, int a2)
{
  v2 = a1 + 40;
  if (*a1 == a2)
  {
    v3 = 0;
    return &a1[v3];
  }

  if (a1[1] == a2)
  {
    v3 = 1;
    return &a1[v3];
  }

  if (a1[2] == a2)
  {
    v3 = 2;
    return &a1[v3];
  }

  if (a1[3] == a2)
  {
    v3 = 3;
    return &a1[v3];
  }

  if (a1[4] == a2)
  {
    v3 = 4;
    return &a1[v3];
  }

  if (a1[5] == a2)
  {
    v3 = 5;
    return &a1[v3];
  }

  if (a1[6] == a2)
  {
    v3 = 6;
    return &a1[v3];
  }

  if (a1[7] == a2)
  {
    v3 = 7;
    return &a1[v3];
  }

  if (a1[8] == a2)
  {
    v3 = 8;
    return &a1[v3];
  }

  if (a1[9] == a2)
  {
    v3 = 9;
    return &a1[v3];
  }

  if (a1[10] == a2)
  {
    v3 = 10;
    return &a1[v3];
  }

  if (a1[11] == a2)
  {
    v3 = 11;
    return &a1[v3];
  }

  if (a1[12] == a2)
  {
    v3 = 12;
    return &a1[v3];
  }

  if (a1[13] == a2)
  {
    v3 = 13;
    return &a1[v3];
  }

  if (a1[14] == a2)
  {
    v3 = 14;
    return &a1[v3];
  }

  if (a1[15] == a2)
  {
    v3 = 15;
    return &a1[v3];
  }

  if (a1[16] == a2)
  {
    v3 = 16;
    return &a1[v3];
  }

  if (a1[17] == a2)
  {
    v3 = 17;
    return &a1[v3];
  }

  if (a1[18] == a2)
  {
    v3 = 18;
    return &a1[v3];
  }

  if (a1[19] == a2)
  {
    v3 = 19;
    return &a1[v3];
  }

  if (a1[20] == a2)
  {
    v3 = 20;
    return &a1[v3];
  }

  if (a1[21] == a2)
  {
    v3 = 21;
    return &a1[v3];
  }

  if (a1[22] == a2)
  {
    v3 = 22;
    return &a1[v3];
  }

  if (a1[23] == a2)
  {
    v3 = 23;
    return &a1[v3];
  }

  if (a1[24] == a2)
  {
    v3 = 24;
    return &a1[v3];
  }

  if (a1[25] == a2)
  {
    v3 = 25;
    return &a1[v3];
  }

  if (a1[26] == a2)
  {
    v3 = 26;
    return &a1[v3];
  }

  if (a1[27] == a2)
  {
    v3 = 27;
    return &a1[v3];
  }

  if (a1[28] == a2)
  {
    v3 = 28;
    return &a1[v3];
  }

  if (a1[29] == a2)
  {
    v3 = 29;
    return &a1[v3];
  }

  if (a1[30] == a2)
  {
    v3 = 30;
    return &a1[v3];
  }

  if (a1[31] == a2)
  {
    v3 = 31;
    return &a1[v3];
  }

  if (a1[32] == a2)
  {
    v3 = 32;
    return &a1[v3];
  }

  if (a1[33] == a2)
  {
    v3 = 33;
    return &a1[v3];
  }

  if (a1[34] == a2)
  {
    v3 = 34;
    return &a1[v3];
  }

  if (a1[35] == a2)
  {
    v3 = 35;
    return &a1[v3];
  }

  if (a1[36] == a2)
  {
    v3 = 36;
    return &a1[v3];
  }

  if (a1[37] == a2)
  {
    v3 = 37;
    return &a1[v3];
  }

  if (a1[38] == a2)
  {
    v3 = 38;
    return &a1[v3];
  }

  if (a1[39] == a2)
  {
    v3 = 39;
    return &a1[v3];
  }

  return v2;
}

void sub_2715F5F2C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  memcpy(__dst, &unk_27189CDA0, sizeof(__dst));
  v2 = *(&xmmword_27189CD00 + ((sub_2715F5838(__dst, &v4) - __dst) >> 1));
  LODWORD(__dst[3]) = 0;
  sub_27120AACC(&v4, __dst, &v2);
}

void sub_2715F606C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F6088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715F609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2715F60B0(uint64_t *a1, _WORD *a2)
{
  if ((atomic_load_explicit(&qword_28087BE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BE70))
  {
    sub_2715F6330();
  }

  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_2714A56E0(a1, &__p);
  v4 = qword_28087BE90;
  if (!qword_28087BE90)
  {
    goto LABEL_41;
  }

  if (v25 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v25 >= 0)
  {
    v6 = HIBYTE(v25);
  }

  else
  {
    v6 = v24;
  }

  v7 = &qword_28087BE90;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_28087BE90)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    __cxa_allocate_exception(0x10uLL);
    v19 = 0x3000200010000;
    v21 = 6;
    v20 = 327684;
    sub_2715F676C(&v22, &__p, &v19);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = *(v7 + 28);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_2715F62E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F6330()
{
  *v0 = 0x3000200010000;
  *&v0[3] = 0x6000500040003;
  qword_28087BE98 = 0;
  qword_28087BE90 = 0;
  qword_28087BE88 = &qword_28087BE90;
  v2 = 0;
  sub_2713B4A74(&v3, v1, v0);
}

void sub_2715F671C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_27151CE44(qword_28087BE90);
    _Unwind_Resume(a1);
  }

  sub_27151CE44(qword_28087BE90);
  _Unwind_Resume(a1);
}

void sub_2715F676C(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v6 = 0;
  v7 = v5;
  v8 = "invalid serialization format type string ";
  v9 = v5;
  v10 = "invalid serialization format type string ";
  v11 = "invalid serialization format type string ";
  v12 = &v7;
  sub_2711DCE58(&v12);
  v7 = v5;
  v8 = a2;
  v9 = v5;
  v10 = a2;
  v11 = a2;
  if (v6 != -1)
  {
    v12 = &v7;
    (off_288133E08[v6])(&v12, v5);
    v7 = v5;
    v8 = ", expected one of ";
    v9 = v5;
    v10 = ", expected one of ";
    v11 = ", expected one of ";
    if (v6 != -1)
    {
      v12 = &v7;
      (*(&off_288133E20 + v6))(&v12, v5);
      v7 = v5;
      v8 = "{";
      v9 = v5;
      v10 = "{";
      v11 = "{";
      if (v6 != -1)
      {
        v12 = &v7;
        (*(&off_288133E50 + v6))(&v12, v5);
        sub_2713B4A74(&v7, v5, a3);
      }

      sub_2711308D4();
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

uint64_t *sub_2715F6B64(uint64_t *a1, void *a2)
{
  if ((atomic_load_explicit(&qword_28087BE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BE78))
  {
    sub_2715F6DD0();
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_2714A56E0(a1, &__p);
  v4 = qword_28087BEA8;
  if (!qword_28087BEA8)
  {
    goto LABEL_41;
  }

  if (v24 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v24 >= 0)
  {
    v6 = HIBYTE(v24);
  }

  else
  {
    v6 = v23;
  }

  v7 = &qword_28087BEA8;
  do
  {
    while (1)
    {
      v8 = *(v4 + 55);
      v9 = v8 >= 0 ? (v4 + 32) : *(v4 + 32);
      v10 = v8 >= 0 ? *(v4 + 55) : *(v4 + 40);
      v11 = v6 >= v10 ? v10 : v6;
      v12 = memcmp(v9, p_p, v11);
      if (v12)
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_24;
      }

LABEL_10:
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    if (v12 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v7 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_25:
  if (v7 == &qword_28087BEA8)
  {
    goto LABEL_41;
  }

  v13 = *(v7 + 55);
  if (v13 >= 0)
  {
    v14 = v7 + 4;
  }

  else
  {
    v14 = v7[4];
  }

  if (v13 >= 0)
  {
    v15 = *(v7 + 55);
  }

  else
  {
    v15 = v7[5];
  }

  if (v15 >= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(p_p, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    v20[0] = &unk_27189CDA0;
    v20[1] = 40;
    sub_2715F7144(&v21, &__p, v20);
    std::logic_error::logic_error(exception, &v21);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v6 < v15)
  {
    goto LABEL_41;
  }

LABEL_37:
  *a2 = v7[7];
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_2715F6D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715F6DD0()
{
  qword_28087BEB0 = 0;
  qword_28087BEA8 = 0;
  qword_28087BEA0 = &qword_28087BEA8;
  v1 = 0;
  sub_2713B4CD0(&v2, v0, &unk_27189CDA0);
}

void sub_2715F70F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_27151CE44(qword_28087BEA8);
    _Unwind_Resume(a1);
  }

  sub_27151CE44(qword_28087BEA8);
  _Unwind_Resume(a1);
}

uint64_t sub_2715F7144(uint64_t a1, const char *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = v6;
  v9 = "invalid image format type string ";
  v10 = v6;
  v11 = "invalid image format type string ";
  v12 = "invalid image format type string ";
  v13 = &v8;
  sub_271357A08(&v13);
  v8 = v6;
  v9 = a2;
  v10 = v6;
  v11 = a2;
  v12 = a2;
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v8;
  (off_288133E08[v7])(&v13, v6);
  v8 = v6;
  v9 = ", expected one of ";
  v10 = v6;
  v11 = ", expected one of ";
  v12 = ", expected one of ";
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v8;
  (*(&off_288133E20 + v7))(&v13, v6);
  if (a3[1] > 0)
  {
    v8 = v6;
    v9 = "{";
    v10 = v6;
    v11 = "{";
    v12 = "{";
    if (v7 != -1)
    {
      v13 = &v8;
      (*(&off_288133E50 + v7))(&v13, v6);
      sub_2713B4CD0(&v8, v6, *a3);
    }

LABEL_11:
    sub_2711308D4();
  }

  v8 = v6;
  v9 = "{}";
  v10 = v6;
  v11 = "{}";
  v12 = "{}";
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v13 = &v8;
  (*(&off_288133E38 + v7))(&v13, v6);
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v13;
  result = (off_288133DF0[v7])(&v8, v6);
  if (v7 != -1)
  {
    return (off_288133DD8[v7])(&v8, v6);
  }

  return result;
}

uint64_t sub_2715F7478(int a1)
{
  v3 = a1;
  if ((a1 - 2) >= 5)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715F7560(&v2, &v3);
  }

  return (a1 - 1);
}

void sub_2715F7528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_2715F7560(uint64_t a1, unsigned __int16 *a2)
{
  v3[6] = 0;
  v4[0] = v3;
  v4[1] = "Invalid serialization format type: ";
  v4[2] = v3;
  v4[3] = "Invalid serialization format type: ";
  v4[4] = "Invalid serialization format type: ";
  v5 = v4;
  sub_2715E6744(&v5);
  sub_2713B4A74(v4, v3, a2);
}

void sub_2715F7668(const void *a1, uint64_t a2)
{
  v4 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B708, 0);
  if (v4)
  {
    v10 = v4;
    sub_2715FE438(*(a2 + 56), &v10, a2);
  }

  else
  {
    v5 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B740, 0);
    if (v5)
    {
      v10 = v5;
      sub_271619EE8(*(a2 + 56), &v10, a2);
    }

    else
    {
      v6 = __dynamic_cast(a1, &unk_28812BFD8, &unk_28812B778, 0);
      if (v6)
      {
        v10 = v6;
        sub_271620D3C(*(a2 + 56), &v10, a2);
      }

      else
      {
        v7 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881244F8, 0);
        if (v7)
        {
          v10 = v7;
          sub_271627B90(*(a2 + 56), &v10, a2);
        }

        else
        {
          v8 = __dynamic_cast(a1, &unk_28812BFD8, &unk_288124568, 0);
          if (v8)
          {
            v10 = v8;
            sub_271631178(*(a2 + 56), &v10, a2);
          }

          else
          {
            v9 = __dynamic_cast(a1, &unk_28812BFD8, &unk_2881245D8, 0);
            if (v9)
            {
              v10 = v9;
              sub_27163A760(*(a2 + 56), &v10, a2);
            }

            else if (!sub_2715FE0F0(a1, a2) && !sub_2715FE17C(a1, a2) && !sub_2715FE208(a1, a2) && !sub_2715FE294(a1, a2) && !sub_2715FE320(a1, a2) && !sub_2715FE3AC(a1, a2))
            {
              v10 = a1;
              sub_271674444(*(a2 + 56), &v10, a2);
            }
          }
        }
      }
    }
  }
}

void sub_2715F78FC(const void *a1, uint64_t a2)
{
  v4 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B628, 0);
  if (v4)
  {
    v17 = v4;
    sub_27167BDD8(*(a2 + 48), &v17, a2, v5);
  }

  else
  {
    v6 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B660, 0);
    if (v6)
    {
      v17 = v6;
      sub_27169088C(*(a2 + 48), &v17, a2, v7);
    }

    else
    {
      v8 = __dynamic_cast(a1, &unk_28812BF60, &unk_28812B698, 0);
      if (v8)
      {
        v17 = v8;
        sub_2716984FC(*(a2 + 48), &v17, a2, v9);
      }

      else
      {
        v10 = __dynamic_cast(a1, &unk_28812BF60, &unk_288124338, 0);
        if (v10)
        {
          v17 = v10;
          sub_2716A016C(*(a2 + 48), &v17, a2, v11);
        }

        else
        {
          v12 = __dynamic_cast(a1, &unk_28812BF60, &unk_2881243A8, 0);
          if (v12)
          {
            v17 = v12;
            sub_2716A8AD4(*(a2 + 48), &v17, a2, v13);
          }

          else
          {
            v14 = __dynamic_cast(a1, &unk_28812BF60, &unk_288124418, 0);
            if (v14)
            {
              v17 = v14;
              sub_2716B143C(*(a2 + 48), &v17, a2, v15);
            }

            else if (!sub_27167BA90(a1, a2) && !sub_27167BB1C(a1, a2) && !sub_27167BBA8(a1, a2) && !sub_27167BC34(a1, a2) && !sub_27167BCC0(a1, a2) && !sub_27167BD4C(a1, a2))
            {
              v17 = a1;
              sub_2716E8220(*(a2 + 48), &v17, a2, v16);
            }
          }
        }
      }
    }
  }
}

void sub_2715F7B90(int a1, uint64_t a2)
{
  v5[16] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F6B8;
      sub_2715F8A90(v5, &v3);
    case 2:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F1B8;
      sub_2715F8EB8(v5, &v3);
    case 3:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EC38;
      sub_2715F92E0(v5, &v3);
    case 4:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EB38;
      sub_2715F9708(v5, &v3);
    case 5:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EA78;
      sub_2715F9B30(v5, &v3);
    case 7:
      v3 = *(*a2 + 8);
      v4 = &unk_28810E978;
      sub_2715F9FF4(v5, &v3);
    case 8:
      v3 = *(*a2 + 8);
      v4 = &unk_28810E8B8;
      sub_2715FA4B8(v5, &v3);
    case 21:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F5B8;
      sub_2715FA97C(v5, &v3);
    case 22:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F4F8;
      sub_2715FAE38(v5, &v3);
    case 25:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F3B8;
      sub_2715FB2F4(v5, &v3);
    case 31:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F0B8;
      sub_2715FB7B8(v5, &v3);
    case 32:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EFF8;
      sub_2715FBC7C(v5, &v3);
    case 37:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EDF8;
      sub_2715FC140(v5, &v3);
    case 38:
      v3 = *(*a2 + 8);
      v4 = &unk_28810ED38;
      sub_2715FC604(v5, &v3);
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_2715F8894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F88B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F88DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F8900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F8924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F8948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F8990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F89B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F89D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F89FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F8A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F8A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F8A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715F8A90(uint64_t a1, _DWORD *a2)
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

void sub_2715F8DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11);
  sub_27112F828(va);
  sub_27112F828(&a10);
  sub_2715F8E1C(&a9);
  _Unwind_Resume(a1);
}

void sub_2715F8E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2715455A0(va);
  _Unwind_Resume(a1);
}

void *sub_2715F8E1C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115630;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

void sub_2715F8EB8(uint64_t a1, _DWORD *a2)
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
  v5[8] = &unk_288110F48;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_271560C74(v5, v6);
  operator new();
}

void sub_2715F91F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11);
  sub_27112F828(va);
  sub_27112F828(&a10);
  sub_2715F9244(&a9);
  _Unwind_Resume(a1);
}

void sub_2715F9230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27154DEC8(va);
  _Unwind_Resume(a1);
}

void *sub_2715F9244(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881153F0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

void sub_2715F92E0(uint64_t a1, _DWORD *a2)
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
  v5[8] = &unk_288110658;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_271562088(v5, v6);
  operator new();
}

void sub_2715F9618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11);
  sub_27112F828(va);
  sub_27112F828(&a10);
  sub_2715F966C(&a9);
  _Unwind_Resume(a1);
}

void sub_2715F9658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271553FBC(va);
  _Unwind_Resume(a1);
}

void *sub_2715F966C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115990;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

void sub_2715F9708(uint64_t a1, _DWORD *a2)
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
  v5[8] = &unk_2881104B8;
  v6[0] = v4;
  v6[1] = v3 | (v2 << 32);
  sub_27156349C(v5, v6);
  operator new();
}

void sub_2715F9A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112F828(v11);
  sub_27112F828(va);
  sub_27112F828(&a10);
  sub_2715F9A94(&a9);
  _Unwind_Resume(a1);
}

void sub_2715F9A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27155A0A0(va);
  _Unwind_Resume(a1);
}

void *sub_2715F9A94(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881157E0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40A1F8E8FFLL);
    return v2;
  }

  return result;
}

void sub_2715F9B30(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_2881103C8;
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 2;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_2715648B0(v4, &v5);
  operator new();
}

void sub_2715F9EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715F9F58(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881155A0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715F9FF4(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_288110228;
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 2;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_271565CE0(v4, &v5);
  operator new();
}

void sub_2715FA3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FA41C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115900;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FA4B8(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_288110138;
  v2 = 2 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 2;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x1FFFFFFFFLL | ((v3 >> 1) << 33);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_27156710C(v4, &v5);
  operator new();
}

void sub_2715FA868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FA8E0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115750;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FA97C(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_288111658;
  if (*a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 3;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 | (v3 << 32);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_271568530(v4, &v5);
  operator new();
}

void sub_2715FAD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FAD9C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115510;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FAE38(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_288111568;
  if (*a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 3;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 | (v3 << 32);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_27156985C(v4, &v5);
  operator new();
}

void sub_2715FB1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FB258(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115360;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FB2F4(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_288111318;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_27156AB88(v4, &v5);
  operator new();
}

void sub_2715FB6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FB71C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115480;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FB7B8(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_288110DA8;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_27156BFC0(v4, &v5);
  operator new();
}

void sub_2715FBB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FBBE0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115870;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FBC7C(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_288110CB8;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_27156D3EC(v4, &v5);
  operator new();
}

void sub_2715FC02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FC0A4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881156C0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FC140(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_2881108E8;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_27156E810(v4, &v5);
  operator new();
}

void sub_2715FC4F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FC568(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_288115480;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FC604(uint64_t a1, _DWORD *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4[11] = &unk_2881107F8;
  v2 = 4 * (*a2 != 0);
  LODWORD(v3) = v2 * *a2;
  if (a2[1])
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = 4;
  v6 = *a2;
  LODWORD(v11[0]) = 1;
  *(v11 + 4) = v2 & 0x3FFFFFFFFLL | ((v3 >> 2) << 34);
  v7 = v11[0];
  v8 = v3;
  v9 = v6;
  v10 = *(v11 + 4);
  sub_27156FC48(v4, &v5);
  operator new();
}

void sub_2715FC9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2715FCA2C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2881152D0;
    v3 = *(v1 + 40);
    if (v3 != -1)
    {
      (off_2881337B0[v3])(&v4, v1 + 16);
    }

    *(v1 + 40) = -1;
    MEMORY[0x2743BF050](v1, 0x10A3C40ED729E16);
    return v2;
  }

  return result;
}

void sub_2715FCAC8(int a1, uint64_t a2)
{
  v5[16] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F6B8;
      sub_2715F8A90(v5, &v3);
    case 2:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F1B8;
      sub_2715F8EB8(v5, &v3);
    case 3:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EC38;
      sub_2715F92E0(v5, &v3);
    case 4:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EB38;
      sub_2715F9708(v5, &v3);
    case 5:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EA78;
      sub_2715F9B30(v5, &v3);
    case 7:
      v3 = *(*a2 + 8);
      v4 = &unk_28810E978;
      sub_2715F9FF4(v5, &v3);
    case 8:
      v3 = *(*a2 + 8);
      v4 = &unk_28810E8B8;
      sub_2715FA4B8(v5, &v3);
    case 21:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F5B8;
      sub_2715FA97C(v5, &v3);
    case 22:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F4F8;
      sub_2715FAE38(v5, &v3);
    case 25:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F3B8;
      sub_2715FB2F4(v5, &v3);
    case 31:
      v3 = *(*a2 + 8);
      v4 = &unk_28810F0B8;
      sub_2715FB7B8(v5, &v3);
    case 32:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EFF8;
      sub_2715FBC7C(v5, &v3);
    case 37:
      v3 = *(*a2 + 8);
      v4 = &unk_28810EDF8;
      sub_2715FC140(v5, &v3);
    case 38:
      v3 = *(*a2 + 8);
      v4 = &unk_28810ED38;
      sub_2715FC604(v5, &v3);
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_2715FD7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715FD7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715FD814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715FD838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715FD85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715FD880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715FD8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}

void sub_2715FD8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_27112F828(va);
  sub_27112F828(va1);
  sub_27112F828(v9 + 8);
  _Unwind_Resume(a1);
}