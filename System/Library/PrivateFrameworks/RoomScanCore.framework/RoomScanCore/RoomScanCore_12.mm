void sub_262292908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  a48 = (v53 - 184);
  sub_2621CC5A0(&a48);
  sub_2621CC5A0(&a43);
  a43 = &a20;
  sub_2621CC5A0(&a43);
  a43 = (v53 - 232);
  sub_2621CC5A0(&a43);
  a43 = (v53 - 208);
  sub_2621CC628(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_262292AA0(uint64_t a1, void *a2, char a3, double a4)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  v7 = a1 + 8;
  *(a1 + 24) = 0;
  *a1 = a4;
  if (!*sub_26225E318(a1 + 8, &v10, a2))
  {
    sub_262293118(v9, v7, a2);
  }

  *(a1 + 32) = a3;
  return a1;
}

uint64_t sub_262292B54(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0x666666666666666)
    {
      sub_2621CBEB0();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      sub_2622931B8(v10);
    }

    v16 = 0;
    v17 = 40 * v7;
    sub_262292E28(40 * v7, a2);
    v18 = 40 * v7 + 40;
    v11 = a1[1];
    v12 = 40 * v7 + *a1 - v11;
    sub_262293210(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = sub_2622932BC(&v16);
    v6 = v15;
  }

  else
  {
    result = sub_262292E28(a1[1], a2);
    v6 = v4 + 40;
    a1[1] = v4 + 40;
  }

  a1[1] = v6;
  return result;
}

uint64_t *sub_262292CB0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_262292D38(result, a4);
  }

  return result;
}

void sub_262292D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2621CC5A0(&a9);
  _Unwind_Resume(a1);
}

void sub_262292D38(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_2622931B8(a2);
  }

  sub_2621CBEB0();
}

uint64_t sub_262292D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v5 = a2;
  v6 = 0;
  v7 = a4;
  do
  {
    sub_262292E28(v7, v5);
    v5 += 40;
    v7 += 40;
    v6 -= 40;
  }

  while (v5 != a3);
  return v7;
}

uint64_t sub_262292E28(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  v4 = (a1 + 8);
  *(a1 + 24) = 0;
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_262292EA0(v4, *(a2 + 8), (a2 + 16));
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t ***sub_262292EA0(uint64_t ***result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
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

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_2621CBE5C(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v17;
          v11 = sub_262293050(v5, &v14, v17 + 4);
          sub_2621C6C50(v5, v14, v11, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = sub_2621CBE5C(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_2622930C8(&v15);
  }

  if (a2 != a3)
  {
    sub_262293118(&v15, v5, (a2 + 4));
  }

  return result;
}

void sub_26229303C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2622930C8(va);
  _Unwind_Resume(a1);
}

void *sub_262293050(uint64_t a1, void *a2, void *a3)
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
        if ((sub_26225E3EC(a3, v4 + 4) & 0x80) == 0)
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

uint64_t sub_2622930C8(uint64_t a1)
{
  sub_2621CC7B4(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_2621CC7B4(v2);
  }

  return a1;
}

void sub_26229319C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_26226C8D8(0, v2);
  _Unwind_Resume(a1);
}

void sub_2622931B8(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_262293210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v8 = a2;
    do
    {
      sub_262292E28(a4, v8);
      v8 += 40;
      a4 += 40;
      v6 -= 40;
    }

    while (v8 != a3);
    do
    {
      sub_2621CC7B4(*(v5 + 16));
      v5 += 40;
    }

    while (v5 != a3);
  }
}

uint64_t sub_2622932BC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_2621CC7B4(*(i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_262293C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, uint64_t a60, uint64_t a61, void *a62)
{
  STACK[0x2E0] = &unk_2874EE7A8;
  if (STACK[0x360])
  {
    sub_2621D1B78(STACK[0x360]);
  }

  a62 = &unk_2874EE7A8;
  if (STACK[0x228])
  {
    sub_2621D1B78(STACK[0x228]);
  }

  STACK[0x250] = &a21;
  sub_26226EB88(&STACK[0x250]);
  a24 = &unk_2874EEB10;
  if (a40)
  {
    sub_2621D1B78(a40);
  }

  a43 = &unk_2874EEB10;
  if (a59)
  {
    sub_2621D1B78(a59);
  }

  if (*(v62 + 512) == 1)
  {
    sub_2621C50C4(v65 + 152);
  }

  *(v62 + 176) = v64;
  v67 = *(v62 + 304);
  if (v67)
  {
    sub_2621D1B78(v67);
  }

  *(v62 + 24) = v63;
  v68 = *(v62 + 152);
  if (v68)
  {
    sub_2621D1B78(v68);
  }

  _Unwind_Resume(a1);
}

_OWORD *sub_262293FD4(_OWORD *a1, void *a2, uint64_t *a3, void *a4)
{
  v5 = 0;
  v17[3] = *MEMORY[0x277D85DE8];
  a1[2] = 0u;
  v6 = 1;
  v7 = MEMORY[0x277D82670];
  *a1 = 0u;
  a1[1] = 0u;
  v8 = *a3;
  v17[0] = *a2;
  v17[1] = v8;
  v9 = MEMORY[0x277D82680];
  v17[2] = *a4;
  v15 = 0;
  do
  {
    v10 = v17[v5];
    if (v10 >= 0xBEBC200)
    {
      sub_2621D552C(v7, "runtime_err in ", 15);
      sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/../common/../tensor/shape.hpp", 118);
      sub_2621D552C(v7, " ", 1);
      v11 = MEMORY[0x266727260](v7, 71);
      sub_2621D552C(v11, " ", 1);
      sub_2621D552C(v11, "Shape", 5);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&v16, v9);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
      sub_262223C90("err", "shape[", &v15, "]", " is ", &v17[v5], " ,it should <= 6");
      std::ios_base::getloc((v7 + *(*v7 - 24)));
      v13 = std::locale::use_facet(&v16, v9);
      (v13->__vftable[2].~facet_0)(v13, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      std::ostream::flush();
    }

    v15 = v6;
    *(a1 + v5 * 8) = v10;
    ++v5;
    ++v6;
  }

  while (v5 != 3);
  return a1;
}

uint64_t sub_262294264(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_2874EEDA0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  sub_262204784(a1 + 8, a2);
  if (*(a1 + 104))
  {
    operator new();
  }

  *(a1 + 137) = 1;
  return a1;
}

void sub_262294368(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_262294488(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a3, a4);
  v16[0] = v4;
  HIDWORD(v5) = a1.n128_u32[1];
  LODWORD(v5) = a1.n128_u32[1];
  v8 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v6, v7, v5);
  v16[1] = v8;
  v11 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v9, v10, COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2])));
  v16[2] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v16, 3);

  return v13;
}

void sub_26229469C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2622946E4(void *a1, _OWORD *a2)
{
  v23 = a1;
  if (objc_msgSend_count(v23, v3, v4) == 3)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(v23, v5, 0);
    objc_msgSend_floatValue(v6, v7, v8);
    v22 = v9;
    v11 = objc_msgSend_objectAtIndexedSubscript_(v23, v10, 1);
    objc_msgSend_floatValue(v11, v12, v13);
    v21 = v14;
    v16 = objc_msgSend_objectAtIndexedSubscript_(v23, v15, 2);
    objc_msgSend_floatValue(v16, v17, v18);
    v19 = v22;
    DWORD1(v19) = v21;
    DWORD2(v19) = v20;
    *a2 = v19;
  }
}

void sub_262294BCC(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void *sub_262295160(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }
      }

      else
      {
        v7 &= *&v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_262295210(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
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
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
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

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }
}

uint64_t sub_26229542C(uint64_t a1)
{
  sub_2621E27D4(a1 + 40);
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_262295478(void ***a1)
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
        v4 -= 14;
        sub_26229585C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_2622954FC(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void sub_26229585C(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;

    operator delete(v3);
  }
}

id sub_2622958B4(uint64_t a1, void *a2)
{
  v576 = *MEMORY[0x277D85DE8];
  v495 = a2;
  if (!a1)
  {
    v522 = 0;
    goto LABEL_267;
  }

  objc_msgSend_removeAllObjects(*(a1 + 8), v3, v4);
  v7 = objc_msgSend_copy(v495, v5, v6);
  v10 = objc_msgSend_walls(v7, v8, v9);
  v496 = v7;
  v13 = objc_msgSend_windows(v7, v11, v12);
  sub_2621D0F64(&__p, "outer");
  sub_262298AD0(v530, v10, v13);
  if (SHIBYTE(v569) < 0)
  {
    operator delete(__p);
  }

  v16 = objc_msgSend_walls(v496, v14, v15);
  v19 = objc_msgSend_windows(v496, v17, v18);
  sub_2622994EC(&v525, v16, v19, v530);

  v20 = v525;
  v21 = v526;
  sub_2621D0F64(&__p, "inner");
  sub_262298AD0(&v523, v20, v21);
  if (SHIBYTE(v569) < 0)
  {
    operator delete(__p);
  }

  v503 = objc_msgSend_array(MEMORY[0x277CBEA60], v22, v23);
  v24 = v526;
  v25 = v525;
  v507 = v24;
  v519 = v25;
  v499 = objc_msgSend_array(MEMORY[0x277CBEB18], v26, v27);
  if (objc_msgSend_count(v25, v28, v29) && objc_msgSend_count(v507, v30, v31))
  {
    *v551 = 0u;
    v552 = 0u;
    LODWORD(v553) = 1065353216;
    v547 = 0u;
    v548 = 0u;
    LODWORD(v549) = 1065353216;
    v497 = v523;
    if (v524 != v523)
    {
      v33 = 0;
      v505 = 0xAAAAAAAAAAAAAAABLL * ((v524 - v523) >> 4);
      do
      {
        obj = v33;
        v514 = objc_msgSend_objectAtIndexedSubscript_(v507, v32, v33);
        sub_26229878C(&v545, v514, v519);
        if (v546.i8[0])
        {
          v36 = objc_msgSend_identifier(v514, v34, v35);
          v39 = objc_msgSend_UUIDString(v36, v37, v38);
          v40 = v39;
          v43 = objc_msgSend_UTF8String(v39, v41, v42);
          sub_2621D0F64(v563, v43);

          v543 = sub_26223FCEC(v514).n128_u64[0];
          v544 = v44;
          objc_msgSend_quad(v514, v45, v46);
          v501 = v47;
          objc_msgSend_quad(v514, v48, v49);
          if (v501 >= v52)
          {
            v53 = v501;
          }

          else
          {
            v53 = v52;
          }

          objc_msgSend_quad(v514, v50, v51);
          v502 = v54;
          objc_msgSend_quad(v514, v55, v56);
          if (v57 >= v502)
          {
            v58 = v502;
          }

          else
          {
            v58 = v57;
          }

          v59 = v545;
          v541 = sub_26223FCEC(v545).n128_u64[0];
          v542 = v60;
          v63 = objc_msgSend_identifier(v59, v61, v62);
          v66 = objc_msgSend_UUIDString(v63, v64, v65);
          v67 = v66;
          v70 = objc_msgSend_UTF8String(v66, v68, v69);
          sub_2621D0F64(v559, v70);

          v73 = 0;
          v74 = v497 + 48 * obj;
          while (objc_msgSend_count(v519, v71, v72) > v73)
          {
            v76 = objc_msgSend_objectAtIndexedSubscript_(v519, v75, v73);
            v79 = objc_msgSend_identifier(v76, v77, v78);
            v82 = objc_msgSend_identifier(v59, v80, v81);
            isEqual = objc_msgSend_isEqual_(v79, v83, v82);

            if ((isEqual & 1) == 0)
            {
              v536 = sub_26223FCEC(v76).n128_u64[0];
              v537 = v85;
              if (sub_26229A570(v74, &v536, 2uLL))
              {
                __p = *v74;
                v568 = *(v74 + 8);
                v86 = sub_2621C92AC(&v536, &__p, 0);
                if (v86 <= *&dword_27FF0BC8C || v86 >= (180.0 - *&dword_27FF0BC8C))
                {
                  v87 = v541;
                  v88 = vsub_f32(v537, v536);
                  v89 = vaddv_f32(vmul_f32(vsub_f32(v541, v536), v88));
                  v90 = vaddv_f32(vmul_f32(v88, v88));
                  if (v90 < 0.000001)
                  {
                    v90 = 0.000001;
                  }

                  v91 = vmla_n_f32(v536, v88, v89 / v90);
                  if (vaddv_f32(vmul_f32(vsub_f32(v91, v536), vsub_f32(v91, v537))) <= 0.00001)
                  {
                    v92 = v542;
                    v93 = vmla_n_f32(v536, v88, vaddv_f32(vmul_f32(vsub_f32(v542, v536), v88)) / v90);
                    if (vaddv_f32(vmul_f32(vsub_f32(v93, v536), vsub_f32(v93, v537))) <= 0.00001)
                    {
                      sub_26229DAC8(&__p, &v541, &v536, flt_27FF0BC78);
                      if (__p >= 3)
                      {
                        sub_262298F18(v555, v59, v519);
                        v95 = v555[1];
                        v96 = v555[0];
                        if (v555[1] != v555[0] && (0x6DB6DB6DB6DB6DB7 * ((v555[1] - v555[0]) >> 4)) <= 2)
                        {
                          do
                          {
                            v97 = objc_msgSend_objectAtIndexedSubscript_(v519, v94, *v96);
                            v100 = objc_msgSend_identifier(v97, v98, v99);
                            v103 = objc_msgSend_UUIDString(v100, v101, v102);
                            v104 = v103;
                            v107 = objc_msgSend_UTF8String(v103, v105, v106);
                            sub_2621D0F64(&v538, v107);

                            sub_26229A930(v551, &v538, &v538);
                            if (SHIBYTE(v540) < 0)
                            {
                              operator delete(v538);
                            }

                            v96 += 14;
                          }

                          while (v96 != v95);
                        }

                        sub_26229A930(v551, v559, v559);
                        sub_26229A930(&v547, v563, v563);
                        v538 = 0;
                        v539 = 0;
                        v540 = 0;
                        v533 = 0;
                        v534 = 0;
                        v535 = 0;
                        sub_26229E760(&v536, &v538, &v533, v91, v93, 0.1);
                        v532[0] = v87;
                        v532[1] = v91;
                        v531[0] = v92;
                        v531[1] = v93;
                        v108 = v538;
                        if (v538 != v539)
                        {
                          v109 = sub_26229B21C(v538, v532, v531, &v541, &v543, v76, v58, v53);
                          objc_msgSend_addObject_(v499, v110, v109);
                        }

                        if (v533)
                        {
                          operator delete(v533);
                        }

                        if (v108)
                        {
                          operator delete(v108);
                        }

                        v538 = v555;
                        sub_262295478(&v538);
                      }

                      if (v574)
                      {
                        v575 = v574;
                        operator delete(v574);
                      }

                      if (v572)
                      {
                        v573 = v572;
                        operator delete(v572);
                      }
                    }
                  }
                }
              }
            }

            ++v73;
          }

          if (SBYTE7(v560) < 0)
          {
            operator delete(v559[0]);
          }

          if (SBYTE7(v564) < 0)
          {
            operator delete(v563[0]);
          }
        }

        v33 = obj + 1;
      }

      while (v505 > obj + 1);
    }

    v111 = objc_msgSend_array(MEMORY[0x277CBEB18], v32, v33);
    v561 = 0u;
    v562 = 0u;
    *v559 = 0u;
    v560 = 0u;
    v112 = v519;
    v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v113, v559, &__p, 16);
    if (v116)
    {
      v117 = *v560;
      do
      {
        for (i = 0; i != v116; ++i)
        {
          if (*v560 != v117)
          {
            objc_enumerationMutation(v112);
          }

          v119 = *(v559[1] + i);
          v120 = objc_msgSend_identifier(v119, v114, v115);
          v123 = objc_msgSend_UUIDString(v120, v121, v122);
          v124 = v123;
          v127 = objc_msgSend_UTF8String(v123, v125, v126);
          sub_2621D0F64(v563, v127);

          if (!sub_2621E26D8(v551, v563))
          {
            objc_msgSend_addObject_(v111, v114, v119);
          }

          if (SBYTE7(v564) < 0)
          {
            operator delete(v563[0]);
          }
        }

        v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v114, v559, &__p, 16);
      }

      while (v116);
    }

    v130 = objc_msgSend_array(MEMORY[0x277CBEB18], v128, v129);
    v557 = 0u;
    v558 = 0u;
    *v555 = 0u;
    v556 = 0u;
    v131 = v507;
    v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v132, v555, v563, 16);
    if (v135)
    {
      v136 = *v556;
      do
      {
        for (j = 0; j != v135; ++j)
        {
          if (*v556 != v136)
          {
            objc_enumerationMutation(v131);
          }

          v138 = *(v555[1] + j);
          v139 = objc_msgSend_identifier(v138, v133, v134);
          v142 = objc_msgSend_UUIDString(v139, v140, v141);
          v143 = v142;
          v146 = objc_msgSend_UTF8String(v142, v144, v145);
          sub_2621D0F64(&v538, v146);

          if (!sub_2621E26D8(&v547, &v538))
          {
            objc_msgSend_addObject_(v130, v133, v138);
          }

          if (SHIBYTE(v540) < 0)
          {
            operator delete(v538);
          }
        }

        v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v133, v555, v563, 16);
      }

      while (v135);
    }

    sub_2621E27D4(&v547);
    sub_2621E27D4(v551);
    v147 = v507;
  }

  else
  {
    v111 = v25;
    v147 = v507;
    v130 = v507;
  }

  v148 = v525;
  v525 = v111;

  v149 = v526;
  v526 = v130;

  objc_msgSend_addObjectsFromArray_(*(a1 + 8), v150, v499);
  v151 = v526;
  v520 = v525;
  v152 = v151;
  *v559 = 0u;
  v560 = 0u;
  LODWORD(v561) = 1065353216;
  v504 = objc_msgSend_array(MEMORY[0x277CBEB18], v153, v154);
  v157 = 0;
  v158 = 0;
  v159 = 0.25;
  while (objc_msgSend_count(v152, v155, v156) > v158)
  {
    v162 = objc_msgSend_objectAtIndexedSubscript_(v152, v160, v158);
    sub_26229878C(v563, v162, v520);
    if (v563[1])
    {
      v163 = v563[0];
      v164 = sub_26223FCEC(v563[0]).n128_u64[0];
      if (v162)
      {
        v166 = v164;
        v167 = v162[32];
        if (v167 > v159)
        {
          v168 = v165;
          if (v167 < 0.8)
          {
            v169 = sub_26223FCEC(v162).n128_u64[0];
            v171 = v170;
            v174 = objc_msgSend_identifier(v162, v172, v173);
            v177 = objc_msgSend_UUIDString(v174, v175, v176);
            v178 = v177;
            v181 = objc_msgSend_UTF8String(v177, v179, v180);
            sub_2621D0F64(&__p, v181);

            v182 = sub_2621E26D8(v529, &__p);
            if (!v182 || (v183.i32[0] = *(v182 + 11), v183.f32[0] <= 0.0))
            {
              v185 = vsub_f32(v169, v171);
              v183 = vmul_f32(v185, v185);
              v183.f32[0] = sqrtf(vaddv_f32(v183)) * 0.5;
            }

            v508 = v169;
            obja = v171;
            v186 = *(v523 + v157 + 32);
            v184.f32[0] = v162[32];
            v187 = vmls_lane_f32(vmul_f32(vadd_f32(v169, v171), 0x3F0000003F000000), *(v523 + v157 + 40), v184, 0);
            v188 = vmla_n_f32(v187, v186, v183.f32[0]);
            v189 = vmls_lane_f32(v187, v186, v183, 0);
            v190 = vsub_f32(v168, v166);
            v191 = vaddv_f32(vmul_f32(v190, v190));
            if (v191 >= 0.000001)
            {
              v192 = v191;
            }

            else
            {
              v192 = 0.000001;
            }

            v193 = vsub_f32(v189, v188);
            v194 = vaddv_f32(vmul_f32(v193, v193));
            if (v194 >= 0.000001)
            {
              v195 = v194;
            }

            else
            {
              v195 = 0.000001;
            }

            sub_26229A930(v559, &__p, &__p);
            objc_msgSend_quad(v162, v196, v197);
            v517 = v198;
            objc_msgSend_quad(v162, v199, v200);
            if (v517 >= v203)
            {
              v204 = v517;
            }

            else
            {
              v204 = v203;
            }

            objc_msgSend_quad(v162, v201, v202);
            v518 = v205;
            objc_msgSend_quad(v162, v206, v207);
            v555[0] = vmla_n_f32(v166, v190, vaddv_f32(vmul_f32(vsub_f32(v188, v166), v190)) / v192);
            v555[1] = vmla_n_f32(v166, v190, vaddv_f32(vmul_f32(vsub_f32(v189, v166), v190)) / v192);
            v551[0] = v555[0];
            v551[1] = v188;
            *&v547 = v189;
            *(&v547 + 1) = v555[1];
            v538 = v188;
            v539 = v189;
            v533 = vmla_n_f32(v188, v193, vaddv_f32(vmul_f32(vsub_f32(v508, v188), v193)) / v195);
            v534 = vmla_n_f32(v188, v193, vaddv_f32(vmul_f32(vsub_f32(obja, v188), v193)) / v195);
            v209 = v208;
            if (v208 >= v518)
            {
              v209 = v518;
            }

            v210 = sub_26229B21C(v555, v551, &v547, &v538, &v533, v163, v209, v204);
            objc_msgSend_addObject_(v504, v211, v210);
            v159 = 0.25;

            if (SHIBYTE(v569) < 0)
            {
              operator delete(__p);
            }
          }
        }
      }
    }

    ++v158;
    v157 += 48;
  }

  v212 = objc_msgSend_array(MEMORY[0x277CBEB18], v160, v161);
  v565 = 0u;
  v566 = 0u;
  *v563 = 0u;
  v564 = 0u;
  v213 = v152;
  v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v214, v563, &__p, 16);
  if (v217)
  {
    v218 = *v564;
    do
    {
      for (k = 0; k != v217; ++k)
      {
        if (*v564 != v218)
        {
          objc_enumerationMutation(v213);
        }

        v220 = *(v563[1] + k);
        v221 = objc_msgSend_identifier(v220, v215, v216);
        v224 = objc_msgSend_UUIDString(v221, v222, v223);
        v225 = v224;
        v228 = objc_msgSend_UTF8String(v224, v226, v227);
        sub_2621D0F64(v555, v228);

        if (!sub_2621E26D8(v559, v555))
        {
          objc_msgSend_addObject_(v212, v215, v220);
        }

        if (SBYTE7(v556) < 0)
        {
          operator delete(v555[0]);
        }
      }

      v217 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v215, v563, &__p, 16);
    }

    while (v217);
  }

  sub_2621E27D4(v559);
  v229 = v526;
  v526 = v212;

  objc_msgSend_addObjectsFromArray_(*(a1 + 8), v230, v504);
  v232 = v525;
  v231 = v526;
  v235 = objc_msgSend_openings(v496, v233, v234);
  v238 = objc_msgSend_doors(v496, v236, v237);
  v241 = objc_msgSend_opendoors(v496, v239, v240);
  v509 = v232;
  v515 = v231;
  objb = v235;
  v500 = v238;
  v506 = v241;
  if (!objc_msgSend_count(*(a1 + 16), v242, v243))
  {
    v432 = objc_msgSend_mutableCopy(*(a1 + 8), v244, v245);
    v433 = *(a1 + 16);
    *(a1 + 16) = v432;

    v434 = v509;
    v414 = v515;
    goto LABEL_230;
  }

  v498 = objc_msgSend_array(MEMORY[0x277CBEB18], v244, v245);
  objc_msgSend_addObjectsFromArray_(v498, v246, v500);
  objc_msgSend_addObjectsFromArray_(v498, v247, v506);
  *v559 = 0u;
  v560 = 0u;
  LODWORD(v561) = 1065353216;
  *v555 = 0u;
  v556 = 0u;
  LODWORD(v557) = 1065353216;
  v248 = 0;
  v521 = (a1 + 144);
  v493 = v509;
  v494 = v493;
  while (objc_msgSend_count(*(a1 + 16), v249, v250, v486) > v248)
  {
    if (sub_262295160(v521, v248))
    {
      goto LABEL_130;
    }

    v255 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 16), v249, v248);
    for (m = 0; objc_msgSend_count(*(a1 + 8), v253, v254) > m; ++m)
    {
      v258 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 8), v257, m);
      v259 = v258;
      if (v258)
      {
        v260 = *(v258 + 24);
      }

      else
      {
        v260 = 0;
      }

      v261 = v260;
      v563[0] = sub_26223FCEC(v261).n128_u64[0];
      v563[1] = v262;

      if (v255)
      {
        v263 = v255[3];
      }

      else
      {
        v263 = 0;
      }

      v264 = v263;
      v551[0] = sub_26223FCEC(v264).n128_u64[0];
      v551[1] = v265;

      sub_26229DAC8(&__p, v563, v551, (a1 + 24));
      if (BYTE4(v568) == 1)
      {
        sub_2621CBEC8(1uLL);
      }

      if (v574)
      {
        v575 = v574;
        operator delete(v574);
      }

      if (v572)
      {
        v573 = v572;
        operator delete(v572);
      }
    }

    if (v255)
    {
      v266 = v255[3];
    }

    else
    {
      v266 = 0;
    }

    v267 = v266;
    sub_26229BB94(v563, v267, v515);

    if (v255)
    {
      v268 = v255[3];
    }

    else
    {
      v268 = 0;
    }

    v269 = v268;
    sub_26229BB94(v551, v269, objb);

    if (v255)
    {
      v270 = v255[3];
    }

    else
    {
      v270 = 0;
    }

    v271 = v270;
    sub_26229BB94(&v547, v271, v498);

    if ((v563[1] - v563[0]) == 112)
    {
      v273 = objc_msgSend_objectAtIndexedSubscript_(v515, v272, *v563[0]);
      sub_26229878C(&v538, v273, v494);
      if (v539)
      {
        sub_2621D0F64(&__p, "outer");
        v274 = sub_2622988DC(v273, &v538).n128_u64[0];
        v276 = v275;
        if (SHIBYTE(v569) < 0)
        {
          operator delete(__p);
        }

        v277 = sub_26223FCEC(v273).n128_u64[0];
        v279 = v278;
        v533 = v277;
        v534 = v278;
        if (v255)
        {
          v280 = v255[1];
        }

        else
        {
          v280 = 0;
        }

        v281 = v280;
        v283 = objc_msgSend_objectAtIndexedSubscript_(v281, v282, 0);
        v284 = sub_26223FCEC(v283).n128_u64[0];
        v286 = v285;

        if (v255)
        {
          v287 = v255[1];
        }

        else
        {
          v287 = 0;
        }

        v288 = v287;
        v290 = objc_msgSend_objectAtIndexedSubscript_(v288, v289, 1);
        v291 = sub_26223FCEC(v290).n128_u64[0];
        v293 = v292;

        v296 = vsub_f32(v277, v279);
        v297 = vmul_f32(v296, v296);
        v297.f32[0] = sqrtf(vaddv_f32(v297)) * 0.5;
        v298 = vsub_f32(v284, v286);
        v299 = vmul_f32(v298, v298);
        v300 = vsub_f32(v291, v293);
        v301 = vmul_f32(v300, v300);
        v302 = vmla_n_f32(vmul_f32(vadd_f32(v277, v279), 0x3F0000003F000000), v276, vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v299, v301), vzip2_s32(v299, v301)))) * 0.5);
        v303 = vmla_n_f32(v302, v274, v297.f32[0]);
        v304 = vmls_lane_f32(v302, v274, v297, 0);
        v545 = v303;
        v546 = v304;
        v305 = vsub_f32(v304, v303);
        v306 = vaddv_f32(vmul_f32(v305, v305));
        if (v306 >= 0.000001)
        {
          v307 = v306;
        }

        else
        {
          v307 = 0.000001;
        }

        objc_msgSend_quad(v273, v294, v295);
        v490 = v308;
        objc_msgSend_quad(v273, v309, v310);
        if (v490 >= v313)
        {
          v314 = v490;
        }

        else
        {
          v314 = v313;
        }

        objc_msgSend_quad(v273, v311, v312);
        v491 = v315;
        objc_msgSend_quad(v273, v316, v317);
        __p = v277;
        v568 = v303;
        v543 = v304;
        v544 = v279;
        v541 = vmla_n_f32(v303, v305, vaddv_f32(vmul_f32(vsub_f32(v277, v303), v305)) / v307);
        v542 = vmla_n_f32(v303, v305, vaddv_f32(vmul_f32(vsub_f32(v279, v303), v305)) / v307);
        v319 = v318;
        if (v318 >= v491)
        {
          v319 = v491;
        }

        v320 = v538;
        v321 = sub_26229B21C(&v533, &__p, &v543, &v545, &v541, v538, v319, v314);
        sub_26229B6D0(v321);
        sub_26229B8E8(v255, v321);
        objc_msgSend_addObject_(*(a1 + 8), v322, v321);
        v325 = objc_msgSend_identifier(v273, v323, v324);
        v328 = objc_msgSend_UUIDString(v325, v326, v327);
        v329 = v328;
        v332 = objc_msgSend_UTF8String(v328, v330, v331);
        sub_2621D0F64(&__p, v332);
        sub_2621E2488(v555, &__p, &__p);
        if (SHIBYTE(v569) < 0)
        {
          operator delete(__p);
        }

        __p = objc_msgSend_count(*(a1 + 8), v333, v334);
        sub_262295210(v559, __p, &__p);
      }

      else
      {
      }

      goto LABEL_180;
    }

    if (v551[0] == v551[1] && v547 == *(&v547 + 1))
    {
      if (v255)
      {
        v335 = v255[3];
      }

      else
      {
        v335 = 0;
      }

      v336 = v335;
      sub_26229878C(&v533, v336, v494);

      if (v534.i8[0])
      {
        v337 = v533;
        v338 = sub_26223FCEC(v533).n128_u64[0];
        v340 = v339;
        if (v255)
        {
          v341 = v255[1];
        }

        else
        {
          v341 = 0;
        }

        v342 = v341;
        v345 = objc_msgSend_lastObject(v342, v343, v344);
        v489 = v340;
        v346 = sub_26223FCEC(v345).n128_u64[0];
        v348 = v347;

        v349 = vsub_f32(v340, v338);
        v350 = vaddv_f32(vmul_f32(v349, v349));
        if (v350 >= 0.000001)
        {
          v351 = v350;
        }

        else
        {
          v351 = 0.000001;
        }

        if (v255)
        {
          v352 = v255[1];
        }

        else
        {
          v352 = 0;
        }

        v353 = v352;
        v355 = objc_msgSend_objectAtIndexedSubscript_(v353, v354, 0);
        v356 = sub_26223FCEC(v355).n128_u64[0];
        v358 = v357;

        if (v255)
        {
          v359 = v255[2];
        }

        else
        {
          v359 = 0;
        }

        v360 = v359;
        v362 = objc_msgSend_objectAtIndexedSubscript_(v360, v361, 0);
        v487 = sub_26223FCEC(v362).n128_u64[0];
        v488 = v363;

        v364 = vmla_n_f32(v338, v349, vaddv_f32(vmul_f32(vsub_f32(v346, v338), v349)) / v351);
        v365 = vmla_n_f32(v338, v349, vaddv_f32(vmul_f32(vsub_f32(v348, v338), v349)) / v351);
        v366 = vsub_f32(v346, v364);
        v367 = vmul_f32(v366, v366);
        v367.i32[0] = vadd_f32(v367, vdup_lane_s32(v367, 1)).u32[0];
        v368 = vrsqrte_f32(v367.u32[0]);
        v369 = vmul_f32(v368, vrsqrts_f32(v367.u32[0], vmul_f32(v368, v368)));
        v370 = vmul_n_f32(v366, vmul_f32(v369, vrsqrts_f32(v367.u32[0], vmul_f32(v369, v369))).f32[0]);
        v371 = vsub_f32(v356, v358);
        v371.f32[0] = sqrtf(vaddv_f32(vmul_f32(v371, v371)));
        v372 = vmla_n_f32(v364, v370, v371.f32[0]);
        v373 = vmla_n_f32(v365, v370, v371.f32[0]);
        v374 = vsub_f32(v373, v372);
        v375 = vaddv_f32(vmul_f32(v374, v374));
        if (v375 >= 0.000001)
        {
          v376 = v375;
        }

        else
        {
          v376 = 0.000001;
        }

        if (vaddv_f32(vmul_f32(vsub_f32(v364, v338), vsub_f32(v364, v489))) > 0.00001 || vaddv_f32(vmul_f32(vsub_f32(v365, v338), vsub_f32(v365, v489))) > 0.00001)
        {
          v377 = v493;
          goto LABEL_176;
        }

        if (v255)
        {
          v378 = v255[2];
        }

        else
        {
          v378 = 0;
        }

        v379 = v378;
        v381 = objc_msgSend_objectAtIndexedSubscript_(v379, v380, 0);
        objc_msgSend_quad(v381, v382, v383);
        v492 = v384;

        if (v255)
        {
          v385 = v255[2];
        }

        else
        {
          v385 = 0;
        }

        v386 = v385;
        v388 = objc_msgSend_objectAtIndexedSubscript_(v386, v387, 0);
        objc_msgSend_quad(v388, v389, v390);
        v486 = v391;

        __p = v364;
        v568 = v365;
        v538 = v364;
        v539 = v372;
        v545 = v373;
        v546 = v365;
        v543 = v372;
        v544 = v373;
        v541 = vmla_n_f32(v372, v374, vaddv_f32(vmul_f32(vsub_f32(v487, v372), v374)) / v376);
        v542 = vmla_n_f32(v372, v374, vaddv_f32(vmul_f32(vsub_f32(v488, v372), v374)) / v376);
        v392 = sub_26229B21C(&__p, &v538, &v545, &v543, &v541, v337, *(&v486 + 2), v492);
        v395 = objc_msgSend_array(MEMORY[0x277CBEB18], v393, v394);
        if (v392)
        {
          v396 = v392[3];
        }

        else
        {
          v396 = 0;
        }

        v397 = v396;
        objc_msgSend_addObject_(v395, v398, v397);

        sub_2621D0F64(&__p, "outer");
        sub_262298AD0(&v538, v494, v395);
        if (SHIBYTE(v569) < 0)
        {
          operator delete(__p);
        }

        sub_2622994EC(&__p, v494, v395, &v538);
        v377 = __p;

        sub_26229B6D0(v392);
        sub_26229B8E8(v255, v392);
        objc_msgSend_addObject_(*(a1 + 8), v399, v392);
        v545 = objc_msgSend_count(*(a1 + 8), v400, v401);
        sub_262295210(v559, v545, &v545);
        sub_2621E27D4(&v571);
        if (v569)
        {
          v570 = v569;
          operator delete(v569);
        }

        if (v538)
        {
          operator delete(v538);
        }

        if (v534.i8[0])
        {
LABEL_176:
        }
      }

      else
      {
        v377 = v493;
      }

      v493 = v377;
    }

LABEL_180:
    __p = &v547;
    sub_262295478(&__p);
    __p = v551;
    sub_262295478(&__p);
    __p = v563;
    sub_262295478(&__p);

LABEL_130:
    ++v248;
  }

  v402 = objc_msgSend_mutableCopy(*(a1 + 8), v251, v252);
  v403 = *(a1 + 16);
  *(a1 + 16) = v402;

  if (v521 != v559)
  {
    *(a1 + 176) = v561;
    v406 = v560;
    v407 = *(a1 + 152);
    if (!v407)
    {
      goto LABEL_214;
    }

    for (n = 0; n != v407; ++n)
    {
      *(*v521 + n) = 0;
    }

    v409 = *(a1 + 160);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    if (v409)
    {
      while (v406)
      {
        v410 = v406[2];
        v409[2] = v410;
        v411 = *v409;
        v409[1] = v410;
        v412 = sub_2622954FC(v521, v410, v409 + 2);
        sub_262237850(v521, v409, v412);
        v406 = *v406;
        v409 = v411;
        if (!v411)
        {
          goto LABEL_214;
        }
      }

      do
      {
        v413 = *v409;
        operator delete(v409);
        v409 = v413;
      }

      while (v413);
    }

    else
    {
LABEL_214:
      if (v406)
      {
        operator new();
      }
    }
  }

  v414 = objc_msgSend_array(MEMORY[0x277CBEB18], v404, v405);
  v565 = 0u;
  v566 = 0u;
  *v563 = 0u;
  v564 = 0u;
  v415 = v515;
  v419 = objc_msgSend_countByEnumeratingWithState_objects_count_(v415, v416, v563, &__p, 16);
  if (v419)
  {
    v420 = *v564;
    do
    {
      for (ii = 0; ii != v419; ++ii)
      {
        if (*v564 != v420)
        {
          objc_enumerationMutation(v415);
        }

        v422 = *(v563[1] + ii);
        v423 = objc_msgSend_identifier(v422, v417, v418);
        v426 = objc_msgSend_UUIDString(v423, v424, v425);
        v427 = v426;
        v430 = objc_msgSend_UTF8String(v426, v428, v429);
        sub_2621D0F64(v551, v430);

        if (!sub_2621E26D8(v555, v551))
        {
          objc_msgSend_addObject_(v414, v417, v422);
        }

        if (SBYTE7(v552) < 0)
        {
          operator delete(v551[0]);
        }
      }

      v419 = objc_msgSend_countByEnumeratingWithState_objects_count_(v415, v417, v563, &__p, 16);
    }

    while (v419);
  }

  v431 = v494;
  sub_2621E27D4(v555);
  sub_2621C74C4(v559);

LABEL_230:
  v435 = v525;
  v525 = v509;

  v436 = v526;
  v526 = v414;

  sub_2622AE900(v496, v525);
  sub_2622AE910(v496, v526);
  v437 = *(a1 + 8);
  v522 = v496;
  v438 = v437;
  v547 = 0u;
  v548 = 0u;
  v549 = 0u;
  v550 = 0u;
  objc = v438;
  v440 = objc_msgSend_countByEnumeratingWithState_objects_count_(objc, v439, &v547, v559, 16);
  if (v440)
  {
    v516 = *v548;
    do
    {
      v441 = 0;
      do
      {
        if (*v548 != v516)
        {
          objc_enumerationMutation(objc);
        }

        v442 = *(*(&v547 + 1) + 8 * v441);
        v443 = v522;
        v444 = v442;
        v447 = objc_msgSend_array(MEMORY[0x277CBEB18], v445, v446);
        v450 = objc_msgSend_walls(v443, v448, v449);
        objc_msgSend_addObjectsFromArray_(v447, v451, v450);

        v557 = 0u;
        v558 = 0u;
        *v555 = 0u;
        v556 = 0u;
        if (v444)
        {
          v452 = v444[1];
        }

        else
        {
          v452 = 0;
        }

        v453 = v452;
        v456 = objc_msgSend_countByEnumeratingWithState_objects_count_(v453, v454, v555, &__p, 16);
        if (v456)
        {
          v457 = *v556;
          do
          {
            for (jj = 0; jj != v456; ++jj)
            {
              if (*v556 != v457)
              {
                objc_enumerationMutation(v453);
              }

              objc_msgSend_addObject_(v447, v455, *(v555[1] + jj));
            }

            v456 = objc_msgSend_countByEnumeratingWithState_objects_count_(v453, v455, v555, &__p, 16);
          }

          while (v456);
        }

        sub_2622AE900(v443, v447);
        v461 = objc_msgSend_array(MEMORY[0x277CBEB18], v459, v460);
        v464 = objc_msgSend_windows(v443, v462, v463);
        objc_msgSend_addObjectsFromArray_(v461, v465, v464);

        v553 = 0u;
        v554 = 0u;
        *v551 = 0u;
        v552 = 0u;
        if (v444)
        {
          v466 = v444[2];
        }

        else
        {
          v466 = 0;
        }

        v467 = v466;
        v470 = objc_msgSend_countByEnumeratingWithState_objects_count_(v467, v468, v551, v563, 16);
        if (v470)
        {
          v471 = *v552;
          do
          {
            for (kk = 0; kk != v470; ++kk)
            {
              if (*v552 != v471)
              {
                objc_enumerationMutation(v467);
              }

              objc_msgSend_addObject_(v461, v469, *(v551[1] + kk));
            }

            v470 = objc_msgSend_countByEnumeratingWithState_objects_count_(v467, v469, v551, v563, 16);
          }

          while (v470);
        }

        sub_2622AE910(v443, v461);
        v475 = objc_msgSend_array(MEMORY[0x277CBEB18], v473, v474);
        v478 = objc_msgSend_openings(v443, v476, v477);
        objc_msgSend_addObjectsFromArray_(v475, v479, v478);

        if (v444)
        {
          v480 = v444[3];
        }

        else
        {
          v480 = 0;
        }

        v481 = v480;
        objc_msgSend_addObject_(v475, v482, v481);

        sub_2622AE920(v443, v475);
        ++v441;
      }

      while (v441 != v440);
      v484 = objc_msgSend_countByEnumeratingWithState_objects_count_(objc, v483, &v547, v559, 16);
      v440 = v484;
    }

    while (v484);
  }

  if (v523)
  {
    operator delete(v523);
  }

  sub_2621E27D4(v529);
  if (v527)
  {
    v528 = v527;
    operator delete(v527);
  }

  if (v530[0])
  {
    operator delete(v530[0]);
  }

LABEL_267:

  return v522;
}

void sub_262297734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (a54)
  {
  }

  STACK[0x390] = &a65;
  sub_262295478(&STACK[0x390]);
  STACK[0x390] = &STACK[0x210];
  sub_262295478(&STACK[0x390]);
  STACK[0x390] = &STACK[0x310];
  sub_262295478(&STACK[0x390]);
  if (v68)
  {
    operator delete(v68);
  }

  JUMPOUT(0x262297EDCLL);
}

void sub_262297A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29)
{
  if (v31)
  {
    operator delete(v31);
  }

  sub_2621E27D4(&STACK[0x250]);
  sub_2621C74C4(&STACK[0x290]);

  JUMPOUT(0x262297FC0);
}

void sub_262297AB4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_262297AEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2621C5294(a1);
  }

  _Unwind_Resume(a1);
}

void sub_262297AFC()
{
  if (v2)
  {
    operator delete(v2);
  }

  JUMPOUT(0x262297EDCLL);
}

void sub_262297B08()
{
  if (v2)
  {
    operator delete(v2);
  }

  JUMPOUT(0x262297EDCLL);
}

void sub_262297B78()
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  JUMPOUT(0x262297F54);
}

void sub_262297C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  sub_2621E27D4(&STACK[0x250]);
  sub_2621C74C4(&STACK[0x290]);

  if (__p)
  {
    operator delete(__p);
  }

  sub_26229542C(&a36);
  if (a46)
  {
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void sub_262297C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    JUMPOUT(0x262297C38);
  }

  a58 = &STACK[0x250];
  sub_262295478(&a58);
  sub_262258C88(&STACK[0x390]);
  JUMPOUT(0x262297D0CLL);
}

void sub_262297C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a58 = &STACK[0x250];
  sub_262295478(&a58);
  sub_262258C88(&STACK[0x390]);

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  JUMPOUT(0x262297E8CLL);
}

void sub_262297C6C()
{
  sub_262258C88(&STACK[0x390]);

  if (v2)
  {
    operator delete(v2);
  }

  JUMPOUT(0x262297EDCLL);
}

void sub_262297CB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x262297E88);
}

void sub_262297CCC()
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  JUMPOUT(0x262297E88);
}

void sub_262297D54()
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  JUMPOUT(0x262297EDCLL);
}

void sub_262297E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  sub_2621E27D4(&STACK[0x290]);
  JUMPOUT(0x262297FC0);
}

void sub_262297E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2621E27D4(&a65);
  sub_2621E27D4(&STACK[0x210]);

  if (a33)
  {
    operator delete(a33);
  }

  sub_26229542C(&a36);
  if (a46)
  {
    operator delete(a46);
  }

  JUMPOUT(0x262298000);
}

void sub_262297EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  sub_2621E27D4(&STACK[0x290]);

  if (a33)
  {
    operator delete(a33);
  }

  sub_26229542C(&a36);
  if (a46)
  {
    operator delete(a46);
  }

  JUMPOUT(0x262298000);
}

void sub_262298008(void *a1, int32x2_t *a2, float32x2_t **a3, unint64_t a4, double a5, double a6, __n128 a7)
{
  v8 = a3[1] - *a3;
  if (!v8)
  {
    goto LABEL_23;
  }

  v10 = (v8 >> 3) >> 1;
  if (v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = vsub_f32((*a3)[1], **a3);
    if (v12.f32[1] <= 0.0)
    {
      v13 = -v12.f32[0];
    }

    else
    {
      v13 = v12.f32[0];
    }

    acosf(v13 / sqrtf(vaddv_f32(vmul_f32(v12, v12))));
    sub_2621CBF10(1uLL);
  }

  v14.i32[1] = 0;
  if (0.0 >= 0.001)
  {
    v17 = fabsf((0.0 / 0.0) + -1.5708);
    v18 = (fabsf((0.0 / 0.0) + 1.5708) * 0.00000011921) * 10.0;
    if (v17 >= 1.1755e-38 && v17 > v18)
    {
      v20 = tanf(0.0 / 0.0);
      __asm { FMOV            V1.2S, #1.0 }

      _D1.f32[1] = v20;
      v26 = vmul_f32(_D1, _D1);
      *v26.i32 = sqrtf(vaddv_f32(v26));
      v14 = vdiv_f32(_D1, vdup_lane_s32(v26, 0));
      v15 = v14;
    }

    else
    {
      v15 = 0x3F80000000000000;
    }

    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if ((v16 & 1) == 0)
  {
LABEL_23:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v27 = v15;
  if (a2[1].i8[0] == 1)
  {
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v76 = v15;
    v80 = vneg_f32(v15);
    sub_2621CBA84(&v81, &v80);
    v28.f32[0] = -v15.f32[1];
    v28.i32[1] = v15.i32[0];
    v29 = v82;
    if (v82 >= v83)
    {
      v73 = v28;
      v31 = v81;
      v32 = v82 - v81;
      v33 = v82 - v81;
      v34 = v33 + 1;
      if ((v33 + 1) >> 61)
      {
        sub_2621CBEB0();
      }

      v35 = v83 - v81;
      if ((v83 - v81) >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        sub_2621CBEC8(v36);
      }

      v37 = (8 * v33);
      *v37 = v28;
      v30 = v37 + 1;
      memcpy(0, v31, v32);
      v81 = 0;
      v83 = 0;
      if (v31)
      {
        operator delete(v31);
      }

      v28 = v73;
    }

    else
    {
      *v82 = v28;
      v30 = v29 + 1;
    }

    v82 = v30;
    v80 = vneg_f32(v28);
    sub_2621CBA84(&v81, &v80);
    if ((a2[1].i8[0] & 1) == 0)
    {
      sub_2622386B8();
    }

    if (v81 == v82)
    {
      v38 = v76;
    }

    else
    {
      v14 = *a2;
      v38 = v76;
      v39 = vmul_f32(*a2, v76);
      v39.f32[0] = vaddv_f32(v39);
      v40 = v81;
      do
      {
        v41 = *v40++;
        v42 = vmul_f32(v14, v41);
        v43 = vadd_f32(v42, vdup_lane_s32(v42, 1));
        v44 = vaddv_f32(v42);
        v38 = vbsl_s8(vdup_lane_s32(vcgt_f32(v43, v39), 0), v41, v38);
        if (v16)
        {
          v45 = v16;
        }

        else
        {
          v45 = 1;
        }

        if (v44 > v39.f32[0])
        {
          v16 = v45;
          v39.f32[0] = v44;
        }
      }

      while (v40 != v82);
    }

    v77 = v38;
    if (v81)
    {
      operator delete(v81);
    }

    v27 = v77;
  }

  *a2 = v27;
  a2[1].i8[0] = v16;
  if ((v16 & 1) == 0)
  {
    sub_2622386B8();
  }

  v46 = *a3;
  v47 = a3[1];
  v48 = **a3;
  v49 = v47 - *a3;
  if (v49 >= 2)
  {
    v50 = v49 - 1;
    v51 = v46 + 1;
    v14.i32[1] = 872415232;
    do
    {
      LODWORD(v52) = HIDWORD(*v51);
      v53 = vabds_f32(v52, v48.f32[1]);
      v54 = (fabsf(v48.f32[1] + v52) * 0.00000011921) * 100.0;
      if (v53 >= 1.1755e-38 && v53 > v54)
      {
        if (v52 < v48.f32[1])
        {
          v48 = *v51;
        }
      }

      else
      {
        v48 = vbsl_s8(vdup_lane_s32(vcgt_f32(v48, *v51), 0), *v51, v48);
      }

      ++v51;
      --v50;
    }

    while (v50);
  }

  *v14.i32 = -*&v27.i32[1];
  v56 = vzip1_s32(v14, v27);
  for (i = xmmword_2623A7A90; v46 != v47; i = vbslq_s8(vmovl_s16(v64), v62, i))
  {
    v58 = *v46++;
    v59 = vsub_f32(v58, v48);
    v60 = vmul_f32(v59, v27);
    v61 = vmul_f32(v56, v59);
    *v62.i8 = vadd_f32(vzip1_s32(v61, v60), vzip2_s32(v61, v60));
    v62.i64[1] = v62.i64[0];
    v63 = vmovn_s32(vcgtq_f32(i, v62));
    v64 = vmovn_s32(vcgtq_f32(v62, i));
    v64.i16[0] = v63.i16[0];
    v64.i16[3] = v63.i16[3];
  }

  v65 = i.f32[1];
  v66 = (i.f32[1] - i.f32[3]);
  v70 = i.f32[0];
  if (v66 < 0.01)
  {
    LODWORD(v66) = i.i32[2];
LABEL_65:
    v67 = 0.1;
    goto LABEL_66;
  }

  LODWORD(v66) = i.i32[2];
  v67 = 0.0;
  if ((i.f32[2] - i.f32[0]) < 0.01)
  {
    goto LABEL_65;
  }

LABEL_66:
  *&v66 = *&v66 + v67;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v74 = v48;
  v78 = v27;
  v68 = vmla_n_f32(v48, v27, i.f32[3] - v67);
  v72 = *&v66;
  v81 = vmla_n_f32(v68, v56, *&v66);
  sub_2621CBA84(a1, &v81);
  v75 = vmla_n_f32(v74, v78, v65 + v67);
  v81 = vmla_f32(v75, v56, vdup_lane_s32(v72, 0));
  sub_2621CBA84(a1, &v81);
  *v69.i32 = v70 - v67;
  v79 = v69;
  v81 = vmla_n_f32(v75, v56, v70 - v67);
  sub_2621CBA84(a1, &v81);
  v81 = vmla_f32(v68, v56, vdup_lane_s32(v79, 0));
  sub_2621CBA84(a1, &v81);
}

void sub_262298720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26229878C(_BYTE *a1, void *a2, void *a3)
{
  v21 = a2;
  v7 = a3;
  v8 = 0;
  v9 = -1;
  while (objc_msgSend_count(v7, v5, v6) > v8)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, v8);
    v14 = objc_msgSend_identifier(v11, v12, v13);
    v17 = objc_msgSend_parentIdentifier(v21, v15, v16);
    isEqual = objc_msgSend_isEqual_(v14, v18, v17);

    if (isEqual)
    {
      v9 = v8;
    }

    ++v8;
  }

  if ((v9 & 0x80000000) != 0)
  {
    v20 = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, v9);
    v20 = 1;
  }

  a1[8] = v20;
}

__n128 sub_2622988DC(void *a1, _BYTE *a2)
{
  v3 = a1;
  v5 = sub_26223FCEC(v3).n128_u64[0];
  v7 = v6;
  if (v3)
  {
    objc_copyStruct(&dest, v3 + 240, 16, 1, 0);
  }

  if (a2[8] == 1 && *a2)
  {
    objc_copyStruct(&dest, (*a2 + 240), 16, 1, 0);
  }

  v8 = vsub_f32(v5, v7);
  v9 = vmul_f32(v8, v8);
  v9.i32[0] = vadd_f32(v9, vdup_lane_s32(v9, 1)).u32[0];
  v10 = vrsqrte_f32(v9.u32[0]);
  v11 = vmul_f32(v10, vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10)));
  v4.n128_u64[0] = vmul_n_f32(v8, vmul_f32(v11, vrsqrts_f32(v9.u32[0], vmul_f32(v11, v11))).f32[0]);
  v13 = v4;

  return v13;
}

void sub_262298AD0(void **a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v7 = v6;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v67, v72, 16);
  if (v9)
  {
    v10 = 0;
    v11 = *v68;
    v12 = vdup_n_s32(0x3ECCCCCDu);
    v13 = vdup_n_s32(0x3DCCCCCDu);
    v62 = v5;
    v63 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v68 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v67 + 1) + 8 * i);
        sub_26229878C(&v65, v15, v5);
        if (v66)
        {
          v17 = sub_2622988DC(v15, &v65).n128_u64[0];
          v19 = v18;
          v20 = sub_26223FCEC(v65).n128_u64[0];
          v22 = v21;
          v23 = sub_26223FCEC(v15).n128_u64[0];
          v24 = vsub_f32(v20, v23);
          v25 = vmul_f32(v24, v24);
          v27 = vsub_f32(v20, v26);
          v28 = vmul_f32(v27, v27);
          v29 = vsub_f32(v22, v23);
          v30 = vmul_f32(v29, v29);
          v31 = vsub_f32(v22, v26);
          v32 = vmul_f32(v31, v31);
          v33 = vsqrt_f32(vadd_f32(vzip1_s32(v25, v30), vzip2_s32(v25, v30)));
          v34 = vsqrt_f32(vadd_f32(vzip1_s32(v28, v32), vzip2_s32(v28, v32)));
          v35 = vbsl_s8(vcgt_f32(v33, v34), v34, v33);
          v71[0] = vadd_f32(vbsl_s8(vcgt_f32(v35, v12), v12, v35), v13);
          v71[1] = 0x3F6666663DCCCCCDLL;
          memset(__p, 0, sizeof(__p));
          sub_2621DC430(__p, v71, v72, 4uLL);
          objc_msgSend_quad(v15, v36, v37);
          v38 = __p[0];
          v39 = vld1_dup_f32(v38++);
          v41 = vmla_f32(v40, v17, v39);
          v42.f32[0] = *v38;
          v44 = vmls_lane_f32(v43, v17, v42, 0);
          v46 = vmls_lane_f32(v45, v17, v42, 0);
          v48 = vmla_f32(v47, v17, v39);
          v39.i32[0] = *(__p[0] + 2);
          v42.i32[0] = *(__p[0] + 3);
          v49 = vmls_lane_f32(v41, v19, v39, 0);
          v50 = vmls_lane_f32(v44, v19, v39, 0);
          v51 = vmla_n_f32(v46, v19, v42.f32[0]);
          v52 = vmla_n_f32(v48, v19, v42.f32[0]);
          v53 = a1[2];
          if (v10 >= v53)
          {
            v54 = a1;
            v55 = *a1;
            v56 = v10 - *a1;
            v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 4) + 1;
            if (v57 > 0x555555555555555)
            {
              sub_2621CBEB0();
            }

            v58 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v55) >> 4);
            if (2 * v58 > v57)
            {
              v57 = 2 * v58;
            }

            if (v58 >= 0x2AAAAAAAAAAAAAALL)
            {
              v59 = 0x555555555555555;
            }

            else
            {
              v59 = v57;
            }

            if (v59)
            {
              if (v59 <= 0x555555555555555)
              {
                operator new();
              }

              sub_2621C6A34();
            }

            v60 = (16 * (v56 >> 4));
            *v60 = v49;
            v60[1] = v50;
            v60[2] = v51;
            v60[3] = v52;
            v60[4] = v17;
            v60[5] = v19;
            v10 = v60 + 6;
            v61 = v60 - v56;
            memcpy(v60 - v56, v55, v56);
            a1 = v54;
            *v54 = v61;
            v54[1] = v10;
            v54[2] = 0;
            if (v55)
            {
              operator delete(v55);
            }

            v5 = v62;
            v7 = v63;
          }

          else
          {
            *v10 = v49;
            v10[1] = v50;
            v10[2] = v51;
            v10[3] = v52;
            v10[4] = v17;
            v10[5] = v19;
            v10 += 6;
          }

          a1[1] = v10;
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          if (v66)
          {
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v16, &v67, v72, 16);
    }

    while (v9);
  }
}

void sub_262298E7C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_262298F18(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v7 = 0;
  v8 = 0;
  v55[0] = sub_26223FCEC(v5).n128_u64[0];
  v55[1] = v9;
  v38 = a1;
  v39 = v5;
  while (objc_msgSend_count(v6, v10, v11, v38) > v8)
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(v6, v12, v8);
    v16 = objc_msgSend_identifier(v13, v14, v15);
    v19 = objc_msgSend_identifier(v5, v17, v18);
    isEqual = objc_msgSend_isEqual_(v16, v20, v19);

    if ((isEqual & 1) == 0)
    {
      v54[0] = sub_26223FCEC(v13).n128_u64[0];
      v54[1] = v22;
      sub_26229DAC8(v48, v55, v54, flt_27FF0BC78);
      if (LODWORD(v48[0]) <= 1)
      {
        v40 = v48[0];
        v41 = v48[1];
        v42 = v48[2];
        v43 = v49;
        v44[1] = 0;
        v45 = 0;
        v44[0] = 0;
        sub_2621C8E70(v44, v50, v51, (v51 - v50) >> 2);
        __p[0] = 0;
        __p[1] = 0;
        v47 = 0;
        sub_2621C8E70(__p, v52, v53, (v53 - v52) >> 2);
        v23 = a1[2];
        if (v7 >= v23)
        {
          v24 = *a1;
          v25 = v7 - *a1;
          v26 = 0x6DB6DB6DB6DB6DB7 * (v25 >> 4) + 1;
          if (v26 > 0x249249249249249)
          {
            sub_2621CBEB0();
          }

          v27 = 0x6DB6DB6DB6DB6DB7 * ((v23 - v24) >> 4);
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          if (v27 >= 0x124924924924924)
          {
            v28 = 0x249249249249249;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (v28 <= 0x249249249249249)
            {
              operator new();
            }

            sub_2621C6A34();
          }

          v29 = 16 * (v25 >> 4);
          *v29 = v8;
          *(v29 + 8) = v40;
          *(v29 + 24) = v41;
          *(v29 + 40) = v42;
          *(v29 + 56) = v43;
          *(v29 + 64) = *v44;
          *(v29 + 80) = v45;
          v44[0] = 0;
          v44[1] = 0;
          *(v29 + 88) = *__p;
          *(v29 + 104) = v47;
          v45 = 0;
          __p[0] = 0;
          v30 = v29 - v25;
          __p[1] = 0;
          v47 = 0;
          if (v24 != v7)
          {
            v31 = v24;
            v32 = v30;
            do
            {
              *v32 = *v31;
              v33 = *(v31 + 1);
              v34 = *(v31 + 3);
              v35 = *(v31 + 5);
              *(v32 + 56) = *(v31 + 28);
              *(v32 + 40) = v35;
              *(v32 + 24) = v34;
              *(v32 + 8) = v33;
              *(v32 + 72) = 0;
              *(v32 + 80) = 0;
              *(v32 + 64) = 0;
              *(v32 + 64) = *(v31 + 4);
              *(v32 + 80) = v31[10];
              v31[8] = 0;
              v31[9] = 0;
              v31[10] = 0;
              *(v32 + 88) = 0;
              *(v32 + 96) = 0;
              *(v32 + 104) = 0;
              *(v32 + 88) = *(v31 + 11);
              *(v32 + 104) = v31[13];
              v31[11] = 0;
              v31[12] = 0;
              v31[13] = 0;
              v31 += 14;
              v32 += 112;
            }

            while (v31 != v7);
            do
            {
              sub_26229585C(v24);
              v24 += 14;
            }

            while (v24 != v7);
          }

          v7 = v29 + 112;
          v36 = *v38;
          *v38 = v30;
          a1 = v38;
          *(v38 + 1) = (v29 + 112);
          if (v36)
          {
            operator delete(v36);
          }

          v37 = __p[0];
          v38[1] = v7;
          v5 = v39;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v7 = v8;
          *(v7 + 8) = v40;
          *(v7 + 56) = v43;
          *(v7 + 40) = v42;
          *(v7 + 24) = v41;
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 64) = 0;
          *(v7 + 64) = *v44;
          *(v7 + 80) = v45;
          *(v7 + 88) = 0;
          v44[0] = 0;
          v44[1] = 0;
          v45 = 0;
          *(v7 + 96) = 0;
          *(v7 + 104) = 0;
          *(v7 + 88) = *__p;
          *(v7 + 104) = v47;
          v7 += 112;
          a1[1] = v7;
        }

        if (v44[0])
        {
          operator delete(v44[0]);
        }
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }
    }

    ++v8;
  }
}

void sub_262299320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_262295478(&a11);

  _Unwind_Resume(a1);
}

void *sub_2622993B4(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  return a1;
}

float sub_2622993F8(float32x2_t *a1, float32x2_t *a2, void *a3, float a4)
{
  v7 = a3;
  v8 = *a2;
  v9 = a2[1];
  v10 = *a1;
  v11 = a1[1];
  v12 = sub_26223FCEC(v7).n128_u64[0];
  v14 = vsub_f32(v9, v8);
  v15 = vaddv_f32(vmul_f32(vsub_f32(v11, v8), v14));
  v16 = vaddv_f32(vmul_f32(v14, v14));
  if (v16 < 0.000001)
  {
    v16 = 0.000001;
  }

  v17 = vsub_f32(vmul_f32(vadd_f32(vmla_n_f32(v8, v14, vaddv_f32(vmul_f32(vsub_f32(v10, v8), v14)) / v16), vmla_n_f32(v8, v14, v15 / v16)), 0x3F0000003F000000), vmul_f32(vadd_f32(v12, v13), 0x3F0000003F000000));
  v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
  if (a4 <= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = (v18 + a4) * 0.5;
  }

  return v19;
}

void sub_2622994EC(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v229 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v179 = a3;
  v221 = 0u;
  v222 = 0u;
  v223 = 1065353216;
  v184 = v5;
  if (!objc_msgSend_count(v5, v6, v7) || !objc_msgSend_count(v179, v8, v9))
  {
    *a1 = v5;
    v172 = v179;
    a1[2] = 0;
    a1[1] = v172;
    a1[3] = 0;
    a1[4] = 0;
    sub_26229AE14(a1 + 2, 0, 0, 0);
    sub_26229AEAC((a1 + 5), &v221);
    sub_2621E27D4(&v221);
    goto LABEL_100;
  }

  memset(v219, 0, sizeof(v219));
  v220 = 1065353216;
  memset(v217, 0, sizeof(v217));
  v218 = 1065353216;
  v12 = *a4;
  if (a4[1] == *a4)
  {
    goto LABEL_70;
  }

  v11 = 0;
  do
  {
    v178 = v11;
    v13 = objc_msgSend_objectAtIndexedSubscript_(v179, v10, v11);
    sub_26229878C(&v215, v13, v184);
    if ((v216 & 1) == 0)
    {
      goto LABEL_69;
    }

    v181 = v13;
    v182 = 0;
    v180 = (v12 + 48 * v178);
    v213 = sub_26223FCEC(v215).n128_u64[0];
    v214 = v14;
    while (objc_msgSend_count(v184, v15, v16) > v182)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(v184, v17, v182);
      v23 = objc_msgSend_identifier(v18, v19, v20);
      v183 = v18;
      if ((v216 & 1) == 0)
      {
        sub_2622386B8();
      }

      v24 = v215;
      v25 = objc_msgSend_identifier(v215, v21, v22);
      isEqual = objc_msgSend_isEqual_(v23, v26, v25);

      if ((isEqual & 1) == 0)
      {
        v30 = objc_msgSend_identifier(v18, v28, v29);
        v33 = objc_msgSend_UUIDString(v30, v31, v32);
        v34 = v33;
        v37 = objc_msgSend_UTF8String(v33, v35, v36);
        sub_2621D0F64(v211, v37);

        v40 = objc_msgSend_identifier(v181, v38, v39);
        v43 = objc_msgSend_UUIDString(v40, v41, v42);
        v44 = v43;
        v47 = objc_msgSend_UTF8String(v43, v45, v46);
        sub_2621D0F64(v209, v47);

        v207 = sub_26223FCEC(v18).n128_u64[0];
        v208 = v48;
        v200[0] = *v180;
        v200[1] = v180[1];
        v49 = sub_2621C92AC(&v207, v200, 0);
        v50 = sub_26229A570(v180, &v207, 1uLL);
        v51 = sub_26229A570(v180, &v208, 1uLL);
        if ((v50 | v51) != 1 || v49 > *&dword_27FF0BC8C && v49 < (180.0 - *&dword_27FF0BC8C))
        {
          goto LABEL_34;
        }

        sub_26229DAC8(v200, &v213, &v207, flt_27FF0BC78);
        if (LODWORD(v200[0]) < 3 || *(&v201 + 2) < 0.5)
        {
          if (v205)
          {
            v206 = v205;
            operator delete(v205);
          }

          if (v203)
          {
            v204 = v203;
            operator delete(v203);
          }
        }

        else
        {
          sub_26229A930(v219, v211, v211);
          v52 = v213;
          v53 = v214;
          v55 = v207;
          v54 = v208;
          *&v197 = v209;
          v56 = sub_26229AB9C(&v221, v209, &v197);
          v57 = vsub_f32(v53, v52);
          v58 = vaddv_f32(vmul_f32(vsub_f32(v55, v52), v57));
          v59 = vaddv_f32(vmul_f32(v57, v57));
          if (v59 < 0.000001)
          {
            v59 = 0.000001;
          }

          v60 = vsub_f32(vmla_n_f32(v52, v57, v58 / v59), v55);
          v61 = vmul_f32(v60, v60);
          v62 = vsub_f32(vmla_n_f32(v52, v57, vaddv_f32(vmul_f32(v57, vsub_f32(v54, v52))) / v59), v54);
          v63 = vmul_f32(v62, v62);
          v56[10] = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v61, v63), vzip2_s32(v61, v63)))) * 0.5;
          v64 = v18;
          v67 = v179;
          v68 = 0;
          v197 = 0u;
          v198 = 0u;
          v199 = 1065353216;
          while (objc_msgSend_count(v67, v65, v66) > v68)
          {
            v70 = objc_msgSend_objectAtIndexedSubscript_(v67, v69, v68);
            v73 = objc_msgSend_identifier(v64, v71, v72);
            v76 = objc_msgSend_parentIdentifier(v70, v74, v75);
            v78 = objc_msgSend_isEqual_(v73, v77, v76);

            if (v78)
            {
              v81 = objc_msgSend_identifier(v70, v79, v80);
              v84 = objc_msgSend_UUIDString(v81, v82, v83);
              v85 = v84;
              v88 = objc_msgSend_UTF8String(v84, v86, v87);
              sub_2621D0F64(__p, v88);
              sub_2621E2488(&v197, __p, __p);
              if (v225 < 0)
              {
                operator delete(__p[0]);
              }
            }

            ++v68;
          }

          for (i = v198; i; i = *i)
          {
            sub_26229A930(v217, i + 2, (i + 2));
          }

          sub_2621E27D4(&v197);
          if (v205)
          {
            v206 = v205;
            operator delete(v205);
          }

          if (v203)
          {
            v204 = v203;
            operator delete(v203);
          }

LABEL_34:
          if ((v50 & v51) == 1 && v49 >= (90.0 - *&dword_27FF0BC8C) && v49 <= (*&dword_27FF0BC8C + 90.0))
          {
            sub_262298F18(v200, v183, v184);
            v92 = v200[0];
            v93 = v200[1];
            if ((0x6DB6DB6DB6DB6DB7 * ((v200[1] - v200[0]) >> 4)) <= 1)
            {
              sub_26229A930(v219, v211, v211);
              __p[0] = v209;
              v94 = sub_26229AB9C(&v221, v209, __p);
              v95 = sub_2622993F8(&v207, &v213, v181, v94[11]);
              __p[0] = v209;
              *(sub_26229AB9C(&v221, v209, __p) + 11) = v95;
              v92 = v200[0];
              v93 = v200[1];
            }

            if (v93 - v92 == 224)
            {
              v96 = v92[2];
              if (v96 == 1 || (v97 = v92[30], v97 == 1))
              {
                sub_26229A930(v219, v211, v211);
                __p[0] = v209;
                v98 = sub_26229AB9C(&v221, v209, __p);
                v99 = sub_2622993F8(&v207, &v213, v181, v98[11]);
                __p[0] = v209;
                *(sub_26229AB9C(&v221, v209, __p) + 11) = v99;
              }

              else if (!(v97 | v96))
              {
                v100 = objc_msgSend_objectAtIndexedSubscript_(v184, v91, *v92);
                v103 = objc_msgSend_identifier(v100, v101, v102);
                v106 = objc_msgSend_identifier(v24, v104, v105);
                v108 = objc_msgSend_isEqual_(v103, v107, v106);

                v109 = 112;
                if (!v108)
                {
                  v109 = 0;
                }

                v110 = *(v200[0] + v109);
                v193 = 0u;
                v194 = 0u;
                v195 = 0u;
                v196 = 0u;
                v111 = v179;
                v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v112, &v193, v228, 16);
                if (v114)
                {
                  v115 = *v194;
                  v116 = v213;
                  v117 = v214;
                  do
                  {
                    for (j = 0; j != v114; ++j)
                    {
                      if (*v194 != v115)
                      {
                        objc_enumerationMutation(v111);
                      }

                      v119 = *(*(&v193 + 1) + 8 * j);
                      v120 = objc_msgSend_objectAtIndexedSubscript_(v184, v113, v110);
                      v123 = objc_msgSend_identifier(v120, v121, v122);
                      v126 = objc_msgSend_parentIdentifier(v119, v124, v125);
                      LODWORD(v119) = objc_msgSend_isEqual_(v123, v127, v126);

                      if (v119)
                      {
                        v128 = objc_msgSend_objectAtIndexedSubscript_(v184, v113, v110);
                        v129 = sub_26223FCEC(v128).n128_u64[0];
                        v131 = v130;

                        v132 = sub_2621DCFE8(v129, v131, v116, v117);
                        v133 = sub_2621DCFE8(v116, v117, v129, v131);
                        if (v132 >= v133)
                        {
                          v133 = v132;
                        }

                        if (v133 > 0.5)
                        {
                          sub_26229A930(v219, v211, v211);
                          __p[0] = v209;
                          v134 = sub_26229AB9C(&v221, v209, __p);
                          v135 = sub_2622993F8(&v207, &v213, v181, v134[11]);
                          __p[0] = v209;
                          *(sub_26229AB9C(&v221, v209, __p) + 11) = v135;
                        }
                      }
                    }

                    v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v113, &v193, v228, 16);
                  }

                  while (v114);
                }
              }
            }

            *&v197 = v200;
            sub_262295478(&v197);
          }
        }

        if (v210 < 0)
        {
          operator delete(v209[0]);
        }

        if (v212 < 0)
        {
          operator delete(v211[0]);
        }
      }

      v13 = v181;
      ++v182;
    }

    if (v216)
    {

      v13 = v181;
    }

LABEL_69:

    v11 = v178 + 1;
    v12 = *a4;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4) > v178 + 1);
LABEL_70:
  v136 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v137 = v184;
  v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v138, &v189, v227, 16);
  if (v141)
  {
    v142 = *v190;
    do
    {
      for (k = 0; k != v141; ++k)
      {
        if (*v190 != v142)
        {
          objc_enumerationMutation(v137);
        }

        v144 = *(*(&v189 + 1) + 8 * k);
        v145 = objc_msgSend_identifier(v144, v139, v140);
        v148 = objc_msgSend_UUIDString(v145, v146, v147);
        v149 = v148;
        v152 = objc_msgSend_UTF8String(v148, v150, v151);
        sub_2621D0F64(v200, v152);

        if (!sub_2621E26D8(v219, v200))
        {
          objc_msgSend_addObject_(v136, v139, v144);
        }

        if (SBYTE7(v201) < 0)
        {
          operator delete(v200[0]);
        }
      }

      v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v139, &v189, v227, 16);
    }

    while (v141);
  }

  v155 = objc_msgSend_array(MEMORY[0x277CBEB18], v153, v154);
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v156 = v179;
  v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v156, v157, &v185, v226, 16);
  if (v160)
  {
    v161 = *v186;
    do
    {
      for (m = 0; m != v160; ++m)
      {
        if (*v186 != v161)
        {
          objc_enumerationMutation(v156);
        }

        v163 = *(*(&v185 + 1) + 8 * m);
        v164 = objc_msgSend_identifier(v163, v158, v159);
        v167 = objc_msgSend_UUIDString(v164, v165, v166);
        v168 = v167;
        v171 = objc_msgSend_UTF8String(v167, v169, v170);
        sub_2621D0F64(v200, v171);

        if (!sub_2621E26D8(v217, v200))
        {
          objc_msgSend_addObject_(v155, v158, v163);
        }

        if (SBYTE7(v201) < 0)
        {
          operator delete(v200[0]);
        }
      }

      v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v156, v158, &v185, v226, 16);
    }

    while (v160);
  }

  if (*a4 != a4[1])
  {
    sub_2621C7E7C(1uLL);
  }

  *v200 = 0u;
  v201 = 0u;
  v202 = 1065353216;
  for (n = v222; n; n = *n)
  {
    if (!sub_2621E26D8(v217, n + 2))
    {
      *&v197 = n + 2;
      sub_26229AB9C(v200, n + 2, &v197)[5] = n[5];
    }
  }

  v174 = v136;
  *a1 = v174;
  v175 = v155;
  a1[2] = 0;
  a1[1] = v175;
  a1[3] = 0;
  a1[4] = 0;
  sub_26229AE14(a1 + 2, 0, 0, 0);
  sub_26229AEAC((a1 + 5), v200);
  sub_2621E27D4(v200);

  sub_2621E27D4(v217);
  sub_2621E27D4(v219);
  sub_2621E27D4(&v221);
LABEL_100:
}

void sub_26229A1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  v54 = *v52;
  if (*v52)
  {
    *(a10 + 24) = v54;
    operator delete(v54);
  }

  sub_2621E27D4(&a49);
  sub_2621E27D4(&STACK[0x210]);
  sub_2621E27D4(&STACK[0x240]);
  sub_2621E27D4(&STACK[0x270]);
  if (v51)
  {
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26229A570(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 && a1)
  {
    operator new[]();
  }

  return 0;
}

void sub_26229A930(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
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

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }
}

void *sub_26229AB9C(void *a1, void *a2, __int128 **a3)
{
  v5 = sub_2621D1580(a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
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

  if (!sub_2621D19D0(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_26229AE14(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      sub_2621C7E7C(a4);
    }

    sub_2621CBEB0();
  }
}

void sub_26229AE90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26229AEAC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2621C67D4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = sub_2621D1580((i + 2));
    v6 = v5;
    v7 = *(a1 + 8);
    if (!*&v7)
    {
      goto LABEL_18;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v7)
      {
        v10 = v5 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v5;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v6)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
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

    if (!sub_2621D19D0(v12 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void sub_26229B15C(void *a1, __int128 *a2, __int128 *a3)
{
  v5 = a1;
  v11 = v5;
  if (v5)
  {
    v5[105] = 0;
    src = *a2;
    objc_copyStruct(v5 + 240, &src, 16, 1, 0);
    src = *a3;
    objc_copyStruct(v11 + 256, &src, 16, 1, 0);
    v5 = v11;
    *(v11 + 31) = 0;
    __asm { FMOV            V0.4S, #1.0 }

    *(v11 + 14) = _Q0;
  }

  sub_2622B6E14(v5);
}

id *sub_26229B21C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, void *a6, float a7, float a8)
{
  v15 = a6;
  v16 = objc_alloc_init(RS3DSurface);
  sub_26223FE5C(a2, v16, a7, a8, v17, v18);
  if (v15)
  {
    objc_copyStruct(&dest, v15 + 240, 16, 1, 0);
    v62 = dest;
    objc_copyStruct(&dest, v15 + 256, 16, 1, 0);
    v19 = dest;
  }

  else
  {
    v19 = 0uLL;
    v62 = 0u;
  }

  v61 = v19;
  sub_26229B15C(v16, &v62, &v61);
  v20 = objc_alloc_init(RS3DSurface);
  sub_26223FE5C(a3, v20, a7, a8, v21, v22);
  if (v15)
  {
    objc_copyStruct(&dest, v15 + 240, 16, 1, 0);
    v62 = dest;
    objc_copyStruct(&dest, v15 + 256, 16, 1, 0);
    v23 = dest;
  }

  else
  {
    v23 = 0uLL;
    v62 = 0u;
  }

  v61 = v23;
  sub_26229B15C(v20, &v62, &v61);
  v24 = objc_alloc_init(RS3DSurface);
  sub_26223FE5C(a1, v24, a7, a8, v25, v26);
  if (v15)
  {
    objc_copyStruct(&dest, v15 + 240, 16, 1, 0);
    v62 = dest;
    objc_copyStruct(&dest, v15 + 256, 16, 1, 0);
    v27 = dest;
  }

  else
  {
    v27 = 0uLL;
    v62 = 0u;
  }

  v61 = v27;
  sub_26229B15C(v24, &v62, &v61);
  v30 = objc_msgSend_identifier(v15, v28, v29);
  v33 = objc_msgSend_copy(v30, v31, v32);
  sub_2622C534C(v24, v33);

  v34 = objc_alloc_init(RS3DSurface);
  sub_26223FE5C(a4, v34, a7, a8, v35, v36);
  if (v15)
  {
    objc_copyStruct(&dest, v15 + 240, 16, 1, 0);
    v62 = dest;
    objc_copyStruct(&dest, v15 + 256, 16, 1, 0);
    v37 = dest;
  }

  else
  {
    v37 = 0uLL;
    v62 = 0u;
  }

  v61 = v37;
  sub_26229B15C(v34, &v62, &v61);
  v38 = objc_alloc_init(RS3DSurface);
  sub_26223FE5C(a5, v38, a7, a8, v39, v40);
  if (v15)
  {
    objc_copyStruct(&dest, v15 + 240, 16, 1, 0);
    v62 = dest;
    objc_copyStruct(&dest, v15 + 256, 16, 1, 0);
    v41 = dest;
  }

  else
  {
    v41 = 0uLL;
    v62 = 0u;
  }

  v61 = v41;
  sub_26229B15C(v38, &v62, &v61);
  v44 = objc_msgSend_identifier(v34, v42, v43);
  v47 = objc_msgSend_copy(v44, v45, v46);
  sub_2622C534C(v38, v47);

  v50 = objc_msgSend_array(MEMORY[0x277CBEB18], v48, v49);
  objc_msgSend_addObject_(v50, v51, v16);
  objc_msgSend_addObject_(v50, v52, v20);
  objc_msgSend_addObject_(v50, v53, v34);
  v56 = objc_msgSend_array(MEMORY[0x277CBEB18], v54, v55);
  objc_msgSend_addObject_(v56, v57, v38);
  v58 = objc_alloc_init(RSRecessedArea);
  p_isa = &v58->super.isa;
  if (v58)
  {
    objc_storeStrong(&v58->recessedWalls, v50);
    objc_storeStrong(p_isa + 2, v56);
    objc_storeStrong(p_isa + 3, v24);
  }

  return p_isa;
}

void sub_26229B6D0(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (v1)
  {
    v3 = v1[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v24, v29, 16);
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (v10)
        {
          *(v10 + 105) = 1;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v24, v29, 16);
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (v2)
  {
    v11 = v2[2];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v20, v28, 16);
  if (v15)
  {
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        if (v18)
        {
          *(v18 + 105) = 1;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v20, v28, 16);
    }

    while (v15);
  }

  if (v2)
  {
    v19 = v2[3];
    if (v19)
    {
      v19[105] = 1;
    }
  }

  else
  {
    v19 = 0;
  }
}

void sub_26229B8E8(void *a1, void *a2)
{
  v54 = a1;
  v3 = a2;
  v4 = 0;
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_2:
  for (i = v3[1]; ; i = 0)
  {
    v6 = i;
    v9 = objc_msgSend_count(v6, v7, v8);

    if (v9 <= v4)
    {
      break;
    }

    if (v54)
    {
      v10 = v54[1];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v13 = objc_msgSend_objectAtIndexedSubscript_(v11, v12, v4);
    v16 = objc_msgSend_identifier(v13, v14, v15);
    v19 = objc_msgSend_copy(v16, v17, v18);
    if (v3)
    {
      v20 = v3[1];
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v4);
    sub_2622C533C(v23, v19);

    ++v4;
    if (v3)
    {
      goto LABEL_2;
    }

LABEL_9:
    ;
  }

  v24 = 0;
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_13:
  for (j = v3[2]; ; j = 0)
  {
    v26 = j;
    v29 = objc_msgSend_count(v26, v27, v28);

    if (v29 <= v24)
    {
      break;
    }

    if (v54)
    {
      v30 = v54[2];
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v33 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, v24);
    v36 = objc_msgSend_identifier(v33, v34, v35);
    v39 = objc_msgSend_copy(v36, v37, v38);
    if (v3)
    {
      v40 = v3[2];
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    v43 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, v24);
    sub_2622C533C(v43, v39);

    ++v24;
    if (v3)
    {
      goto LABEL_13;
    }

LABEL_20:
    ;
  }

  if (v54)
  {
    v44 = v54[3];
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  v48 = objc_msgSend_identifier(v45, v46, v47);
  v51 = objc_msgSend_copy(v48, v49, v50);
  if (v3)
  {
    v52 = v3[3];
  }

  else
  {
    v52 = 0;
  }

  v53 = v52;
  sub_2622C533C(v53, v51);
}

void sub_26229BB94(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v7 = 0;
  v8 = 0;
  v55[0] = sub_26223FCEC(v5).n128_u64[0];
  v55[1] = v9;
  v38 = a1;
  v39 = v5;
  while (objc_msgSend_count(v6, v10, v11, v38) > v8)
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(v6, v12, v8);
    v16 = objc_msgSend_identifier(v13, v14, v15);
    v19 = objc_msgSend_identifier(v5, v17, v18);
    isEqual = objc_msgSend_isEqual_(v16, v20, v19);

    if ((isEqual & 1) == 0)
    {
      v54[0] = sub_26223FCEC(v13).n128_u64[0];
      v54[1] = v22;
      sub_26229DAC8(v48, v55, v54, flt_27FF0BC78);
      if (BYTE12(v48[0]) == 1)
      {
        v40 = v48[0];
        v41 = v48[1];
        v42 = v48[2];
        v43 = v49;
        v44[1] = 0;
        v45 = 0;
        v44[0] = 0;
        sub_2621C8E70(v44, v50, v51, (v51 - v50) >> 2);
        __p[0] = 0;
        __p[1] = 0;
        v47 = 0;
        sub_2621C8E70(__p, v52, v53, (v53 - v52) >> 2);
        v23 = a1[2];
        if (v7 >= v23)
        {
          v24 = *a1;
          v25 = v7 - *a1;
          v26 = 0x6DB6DB6DB6DB6DB7 * (v25 >> 4) + 1;
          if (v26 > 0x249249249249249)
          {
            sub_2621CBEB0();
          }

          v27 = 0x6DB6DB6DB6DB6DB7 * ((v23 - v24) >> 4);
          if (2 * v27 > v26)
          {
            v26 = 2 * v27;
          }

          if (v27 >= 0x124924924924924)
          {
            v28 = 0x249249249249249;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (v28 <= 0x249249249249249)
            {
              operator new();
            }

            sub_2621C6A34();
          }

          v29 = 16 * (v25 >> 4);
          *v29 = v8;
          *(v29 + 8) = v40;
          *(v29 + 24) = v41;
          *(v29 + 40) = v42;
          *(v29 + 56) = v43;
          *(v29 + 64) = *v44;
          *(v29 + 80) = v45;
          v44[0] = 0;
          v44[1] = 0;
          *(v29 + 88) = *__p;
          *(v29 + 104) = v47;
          v45 = 0;
          __p[0] = 0;
          v30 = v29 - v25;
          __p[1] = 0;
          v47 = 0;
          if (v24 != v7)
          {
            v31 = v24;
            v32 = v30;
            do
            {
              *v32 = *v31;
              v33 = *(v31 + 1);
              v34 = *(v31 + 3);
              v35 = *(v31 + 5);
              *(v32 + 56) = *(v31 + 28);
              *(v32 + 40) = v35;
              *(v32 + 24) = v34;
              *(v32 + 8) = v33;
              *(v32 + 72) = 0;
              *(v32 + 80) = 0;
              *(v32 + 64) = 0;
              *(v32 + 64) = *(v31 + 4);
              *(v32 + 80) = v31[10];
              v31[8] = 0;
              v31[9] = 0;
              v31[10] = 0;
              *(v32 + 88) = 0;
              *(v32 + 96) = 0;
              *(v32 + 104) = 0;
              *(v32 + 88) = *(v31 + 11);
              *(v32 + 104) = v31[13];
              v31[11] = 0;
              v31[12] = 0;
              v31[13] = 0;
              v31 += 14;
              v32 += 112;
            }

            while (v31 != v7);
            do
            {
              sub_26229585C(v24);
              v24 += 14;
            }

            while (v24 != v7);
          }

          v7 = v29 + 112;
          v36 = *v38;
          *v38 = v30;
          a1 = v38;
          *(v38 + 1) = (v29 + 112);
          if (v36)
          {
            operator delete(v36);
          }

          v37 = __p[0];
          v38[1] = v7;
          v5 = v39;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v7 = v8;
          *(v7 + 56) = v43;
          *(v7 + 40) = v42;
          *(v7 + 24) = v41;
          *(v7 + 8) = v40;
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 64) = 0;
          *(v7 + 64) = *v44;
          *(v7 + 80) = v45;
          *(v7 + 88) = 0;
          v44[0] = 0;
          v44[1] = 0;
          v45 = 0;
          *(v7 + 96) = 0;
          *(v7 + 104) = 0;
          *(v7 + 88) = *__p;
          *(v7 + 104) = v47;
          v7 += 112;
          a1[1] = v7;
        }

        if (v44[0])
        {
          operator delete(v44[0]);
        }
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }
    }

    ++v8;
  }
}

void sub_26229BF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_262295478(&a11);

  _Unwind_Resume(a1);
}

uint64_t *sub_26229CA04(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2621DC0C4(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

uint64_t *sub_26229CBDC(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2621DC0C4(a1, a2);
  }

  return a1;
}

void sub_26229CC38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_26229CC54(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_2621DC0C4(v7, v11);
    }

    sub_2621CBEB0();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v14;
        v14 += 16;
        *v15 = v16;
        v15 += 16;
      }

      while (v14 != a3);
    }

    v17 = v15;
  }

  v7[1] = v17;
  return result;
}

void sub_26229CD84(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (a1)
  {
    v6 = a1[11];
    v7 = a1[12];
    if (v6 >= v7)
    {
      v9 = a1[10];
      v10 = (v6 - v9) >> 6;
      v11 = v10 + 1;
      if ((v10 + 1) >> 58)
      {
        sub_2621CBEB0();
      }

      v12 = v7 - v9;
      if (v12 >> 5 > v11)
      {
        v11 = v12 >> 5;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFC0)
      {
        v13 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        sub_262278D80(v13);
      }

      v14 = (v10 << 6);
      *v14 = a2;
      v14[1] = a3;
      v14[2] = a4;
      v14[3] = a5;
      v8 = (v10 << 6) + 64;
      v15 = a1[10];
      v16 = a1[11] - v15;
      v17 = (v10 << 6) - v16;
      memcpy(v14 - v16, v15, v16);
      v18 = a1[10];
      a1[10] = v17;
      a1[11] = v8;
      a1[12] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v6 = a2;
      v6[1] = a3;
      v8 = &v6[4];
      v6[2] = a4;
      v6[3] = a5;
    }

    a1[11] = v8;
  }
}

id *sub_26229CE70(id *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    *(result + 104) = 0;
    objc_msgSend_removeAllObjects(result[14], a2, a3);
    result = objc_msgSend_removeAllObjects(v3[15], v4, v5);
    v3[11] = v3[10];
    v3[2] = v3[1];
    v3[5] = v3[4];
    v3[8] = v3[7];
  }

  return result;
}

uint64_t sub_26229CECC(uint64_t a1)
{
  *a1 = &unk_2874EEBF8;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return a1;
}

double sub_26229CF80(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 88) = 1092616192;
  *(a1 + 400) = 0;
  *(a1 + 404) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 544) = &unk_2874EF0B8;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 257;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 752) = 1065353216;
  *(a1 + 760) = &unk_2874EE5E0;
  *(a1 + 768) = xmmword_2623A7A40;
  *(a1 + 784) = xmmword_2623A7A50;
  *(a1 + 800) = xmmword_2623A75A0;
  *(a1 + 816) = xmmword_2623A75B0;
  *(a1 + 832) = xmmword_2623A75C0;
  *(a1 + 848) = 0x3F0000003E4CCCCDLL;
  *(a1 + 856) = 0x3F40000000000003;
  *(a1 + 864) = 3;
  *(a1 + 868) = xmmword_2623A75D0;
  *(a1 + 884) = xmmword_2623A75E0;
  *(a1 + 900) = xmmword_2623A75F0;
  *(a1 + 916) = 2;
  *a1 = 0x23F800000;
  *(a1 + 8) = xmmword_2623A7AA0;
  *(a1 + 24) = xmmword_2623A7AB0;
  *(a1 + 40) = xmmword_2623A7AC0;
  *(a1 + 56) = xmmword_2623A7AD0;
  *(a1 + 72) = xmmword_2623A7AE0;
  *(a1 + 88) = xmmword_2623A7AF0;
  *(a1 + 104) = xmmword_2623A7B00;
  result = 8192.00192;
  *(a1 + 120) = 0x40C000003F000000;
  *(a1 + 128) = 1036831949;
  return result;
}

uint64_t sub_26229D160(uint64_t a1)
{
  v2 = *(a1 + 696);
  if (v2)
  {
    *(a1 + 704) = v2;
    operator delete(v2);
  }

  *(a1 + 544) = &unk_2874EF0B8;
  v3 = *(a1 + 672);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  v4 = *(a1 + 352);
  if (v4)
  {
    *(a1 + 360) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 328);
  if (v5)
  {
    *(a1 + 336) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 304);
  if (v6)
  {
    *(a1 + 312) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 280);
  if (v7)
  {
    *(a1 + 288) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 256);
  if (v8)
  {
    *(a1 + 264) = v8;
    operator delete(v8);
  }

  v13 = (a1 + 232);
  sub_2621E1D40(&v13);
  v13 = (a1 + 208);
  sub_2621E1D40(&v13);
  v9 = *(a1 + 184);
  if (v9)
  {
    *(a1 + 192) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 160);
  if (v10)
  {
    *(a1 + 168) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 136);
  if (v11)
  {
    *(a1 + 144) = v11;
    operator delete(v11);
  }

  return a1;
}

id sub_26229D35C(id a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    LODWORD(v19) = 13125;
    v20 = 0;
    kdebug_trace();
    sub_2622B4958(v8);
    if (*(a1 + 954) == 1)
    {
      kdebug_trace();
      sub_262241864(a1 + 16, v8, v9, a4);
      kdebug_trace();
    }

    v12 = objc_msgSend_objects(v8, v10, v11, v19, v20);

    if (!v12)
    {
      v15 = objc_msgSend_array(MEMORY[0x277CBEA60], v13, v14);
      sub_26223FCCC(v8, v15);
    }

    sub_2622B1A88(v8);
    sub_2622B1D54(v8, v16, v17);
    sub_2622B21F8(v8);
    if ((*(a1 + 956) & 1) == 0)
    {
      sub_2622B2024(v8);
    }

    objc_storeStrong(a1 + 120, a2);
    a1 = *(a1 + 120);
    sub_2621CD534(&v19);
  }

  return a1;
}

id sub_26229D500(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v11 = a4;
  if (a1)
  {
    if (objc_msgSend_count(v7, v9, v10))
    {
      LODWORD(v23[0]) = 12943;
      v23[1] = 0;
      kdebug_trace();
      v12 = objc_alloc_init(RSObjectAsset);
      sub_2622AD434(v12, v7);
      v13 = *(a1 + 944);
      v16 = objc_msgSend_walls(v8, v14, v15, v23[0], 0);
      v19 = objc_msgSend_openings(v8, v17, v18);
      v20 = sub_2621E3D3C(v13, v16, v19, v12, *(a1 + 952), *(a1 + 953));

      sub_2621CD534(v23);
      v21 = v7;
      v7 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = v7;
    v7 = 0;
  }

  return v7;
}

void sub_26229D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2621CD534(&a9);

  _Unwind_Resume(a1);
}

id *sub_26229D698(id *a1)
{
  if (a1)
  {
    a1 = a1[120];
    v1 = vars8;
  }

  return a1;
}

void sub_26229D6C8()
{
  if (atomic_load_explicit(&qword_27FF0C188, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v4[0] = &v2;
    v3 = v4;
    std::__call_once(&qword_27FF0C188, &v3, nullsub_19);
  }
}

void sub_26229D730(uint64_t a1, uint64_t a2, __n128 a3, double a4, float a5)
{
  v8 = __sincosf_stret(((a5 * 0.5) / 180.0) * 3.1416);
  v9 = vdup_lane_s32(*&a4, 1);
  v10 = __sincosf_stret(((a5 * -0.5) / 180.0) * 3.1416);
  v11.f32[0] = -v10.__sinval;
  v11.i32[1] = LODWORD(v10.__cosval);
  __asm { FMOV            V8.2S, #5.0 }

  v17 = vmla_f32(a3.n128_u64[0], _D8, vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v10.__sinval), LODWORD(v10.__cosval)), *&a4), v11, *&a4, 1));
  v18 = vsub_f32(a3.n128_u64[0], v17);
  v19 = vmul_f32(v18, v18);
  v19.i32[0] = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
  v20 = vrsqrte_f32(v19.u32[0]);
  v21 = vmul_f32(v20, vrsqrts_f32(v19.u32[0], vmul_f32(v20, v20)));
  v22 = vmul_n_f32(v18, vmul_f32(v21, vrsqrts_f32(v19.u32[0], vmul_f32(v21, v21))).f32[0]);
  for (i = vdup_n_s32(0x3C23D70Au); ; v17 = vmla_f32(v52[0], i, v22))
  {
    v52[0] = v17;
    v24 = sub_262247B68(*a2, (*(a2 + 8) - *a2) >> 4, v52, 1uLL);
    v25.n128_u64[0] = v52[0];
    if (v24)
    {
      break;
    }
  }

  v46 = v25;
  v26 = vmla_f32(a3.n128_u64[0], _D8, *&a4);
  v27 = vsub_f32(a3.n128_u64[0], v26);
  v28 = vmul_f32(v27, v27);
  v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
  v29 = vmul_n_f32(__PAIR64__(LODWORD(v8.__sinval), LODWORD(v8.__cosval)), *&a4);
  v30 = vrsqrte_f32(v28.u32[0]);
  v31 = vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30)));
  v32 = vmul_n_f32(v27, vmul_f32(v31, vrsqrts_f32(v28.u32[0], vmul_f32(v31, v31))).f32[0]);
  for (j = vdup_n_s32(0x3C23D70Au); ; v26 = vmla_f32(v52[0], j, v32))
  {
    v52[0] = v26;
    v34 = sub_262247B68(*a2, (*(a2 + 8) - *a2) >> 4, v52, 1uLL);
    v35.n128_u64[0] = v52[0];
    if (v34)
    {
      break;
    }
  }

  v49 = v35;
  v36 = vmla_f32(a3.n128_u64[0], _D8, vmla_f32(v29, v9, __PAIR64__(LODWORD(v8.__cosval), -v8.__sinval)));
  v37 = vsub_f32(a3.n128_u64[0], v36);
  v38 = vmul_f32(v37, v37);
  v38.i32[0] = vadd_f32(v38, vdup_lane_s32(v38, 1)).u32[0];
  v39 = vrsqrte_f32(v38.u32[0]);
  v40 = vmul_f32(v39, vrsqrts_f32(v38.u32[0], vmul_f32(v39, v39)));
  v41 = vmul_n_f32(v37, vmul_f32(v40, vrsqrts_f32(v38.u32[0], vmul_f32(v40, v40))).f32[0]);
  for (k = vdup_n_s32(0x3C23D70Au); ; v36 = vmla_f32(v52[0], k, v41))
  {
    v52[0] = v36;
    v43 = sub_262247B68(*a2, (*(a2 + 8) - *a2) >> 4, v52, 1uLL);
    v44.n128_u64[0] = v52[0];
    if (v43)
    {
      break;
    }
  }

  v47 = v44;
  memset(v52, 0, sizeof(v52));
  v45 = a3;
  v45.n128_u32[2] = 0;
  v51 = v45;
  sub_2621D9F60(v52, &v51);
  v51 = v46;
  sub_2621D9F60(v52, &v51);
  v51 = v49;
  sub_2621D9F60(v52, &v51);
  v51 = v47;
  sub_2621D9F60(v52, &v51);
  sub_2622652C4(a1, v52);
  if (v52[0])
  {
    operator delete(v52[0]);
  }
}

void sub_26229D9E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_26229DA10(uint64_t a1, __n128 a2, float32x2_t a3)
{
  __asm { FMOV            V3.2S, #5.0 }

  v9 = vmla_f32(a2.n128_u64[0], _D3, a3);
  v10 = vsub_f32(a2.n128_u64[0], v9);
  v11 = vmul_f32(v10, v10);
  v11.i32[0] = vadd_f32(v11, vdup_lane_s32(v11, 1)).u32[0];
  v12 = vrsqrte_f32(v11.u32[0]);
  v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
  v14 = vmul_n_f32(v10, vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).f32[0]);
  for (i = vdup_n_s32(0x3C23D70Au); ; v9 = vmla_f32(v18, i, v14))
  {
    v18 = v9;
    if (sub_262247B68(*a1, (*(a1 + 8) - *a1) >> 4, &v18, 1uLL))
    {
      break;
    }
  }

  return a2;
}

void sub_26229DAC8(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4)
{
  *(a1 + 56) = 0u;
  v8 = a1 + 56;
  *(a1 + 16) = xmmword_2623A7900;
  *(a1 + 32) = vdup_n_s32(0x49742400u);
  *(a1 + 40) = -3175874560;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_26223FEB8(&v130, a2, a3);
  v9 = 0;
  v10 = *v131;
  v12 = v132;
  v11 = v133;
  v13 = a2[1];
  v14 = vsub_f32(*a2, v13);
  v15 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
  v16 = a3[1];
  v17 = vsub_f32(*a3, v16);
  v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
  if (v18 < v15)
  {
    v15 = v18;
  }

  v19 = 4;
  if (v15 < a4[6])
  {
    v19 = 5;
  }

  v20 = a4[v19];
  v22 = a4[2];
  v21 = a4[3];
  v23 = v132 < v22;
  if (v133 >= v20)
  {
    v23 = 0;
  }

  v24 = *v131 >= v21 && v23;
  if (*v131 < a4[10])
  {
    v23 = 0;
  }

  if (v132 < v22 && *v131 >= v21)
  {
    v9 = v133 < a4[8];
  }

  v25 = v130;
  v26 = *&v131[4];
  v27 = v134;
  v28 = v23 || v9;
  v29 = vsub_f32(*a2, *a3);
  v30 = vsub_f32(v13, v16);
  if (sqrtf(vaddv_f32(vadd_f32(vmul_f32(v29, v29), vmul_f32(v30, v30)))) < 0.001)
  {
    *a1 = 4;
    *(a1 + 12) = 1;
    *(a1 + 16) = v25;
    *(a1 + 24) = v10;
    *(a1 + 28) = v26;
    *(a1 + 36) = v12;
    *(a1 + 40) = v11;
    *(a1 + 44) = v27;
    *(a1 + 48) = v24;
    *(a1 + 49) = v28;
    return;
  }

  v125 = v28;
  sub_2621DCD34(&v130, a2, a3);
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v31 = *a2;
  v32 = a2[1];
  v33 = vsub_f32(v32, *a2);
  v35 = *a3;
  v34 = a3[1];
  v36 = vsub_f32(v34, *a3);
  *v37.i32 = -*&v33.i32[1];
  v38 = vzip1_s32(v37, v33);
  v39 = vmul_f32(v36, v38);
  v40 = vaddv_f32(v39);
  v124 = v24;
  v41 = 0;
  if (v40 != 0.0)
  {
    v46 = a4[23];
    v43 = 3;
    LODWORD(v44) = -1;
    if (v11 < v46 || v11 > (180.0 - v46) || v40 == 0.0)
    {
      v42 = 0;
    }

    else
    {
      v47 = vmul_f32(vsub_f32(v31, v35), v38);
      v48 = vmla_n_f32(v35, v36, vdiv_f32(vadd_f32(v47, vdup_lane_s32(v47, 1)), vadd_f32(v39, vdup_lane_s32(v39, 1))).f32[0]);
      v49 = vsub_f32(v31, v48);
      v126 = sqrtf(vaddv_f32(vmul_f32(v49, v49)));
      sub_2621C8F2C(&v127, &v126);
      v50 = vsub_f32(a2[1], v48);
      v126 = sqrtf(vaddv_f32(vmul_f32(v50, v50)));
      sub_2621C8F2C(&v127, &v126);
      v51 = vsub_f32(*a3, v48);
      v126 = sqrtf(vaddv_f32(vmul_f32(v51, v51)));
      sub_2621C8F2C(&v127, &v126);
      v52 = vsub_f32(a3[1], v48);
      v126 = sqrtf(vaddv_f32(vmul_f32(v52, v52)));
      sub_2621C8F2C(&v127, &v126);
      v42 = v127;
      v53 = v127 + 2;
      v54 = *v127;
      v55 = v127 + 1;
      if (v127 + 1 == v127 + 2)
      {
        v63 = v127;
      }

      else
      {
        v56 = *v127;
        v57 = v127 + 1;
        v58 = v127;
        v59 = v127 + 1;
        do
        {
          v60 = *v59++;
          v61 = v60;
          if (v60 < v56)
          {
            v56 = v61;
            v58 = v57;
          }

          v57 = v59;
        }

        while (v59 != v53);
        v62 = *v58;
        v63 = v127;
        v64 = v127 + 1;
        do
        {
          v65 = *v64++;
          v66 = v65;
          if (v65 < v54)
          {
            v54 = v66;
            v63 = v55;
          }

          v55 = v64;
        }

        while (v64 != v53);
        v54 = v62;
      }

      v41 = v128;
      v67 = v127 + 3;
      v68 = v127[2];
      if (v53 == v128 || v67 == v128)
      {
        v70 = v127[2];
      }

      else
      {
        v71 = v127[2];
        v72 = v127 + 3;
        v73 = v127 + 2;
        v74 = v127 + 3;
        do
        {
          v75 = *v74++;
          v76 = v75;
          if (v75 < v71)
          {
            v71 = v76;
            v73 = v72;
          }

          v72 = v74;
        }

        while (v74 != v128);
        v70 = *v73;
        v77 = v127 + 3;
        do
        {
          v78 = *v77++;
          v79 = v78;
          if (v78 < v68)
          {
            v68 = v79;
            v53 = v67;
          }

          v67 = v77;
        }

        while (v77 != v128);
      }

      v31 = *a2;
      v32 = a2[1];
      v34 = a3[1];
      v45 = v63 - v127;
      v44 = v53 - v127 - 2;
      v80 = a4[7];
      if (v54 < v80 && v70 < v80)
      {
        v43 = 0;
        v45 >>= 2;
LABEL_60:
        v35 = *a3;
        goto LABEL_61;
      }

      v82 = vaddv_f32(vmul_f32(vsub_f32(v48, *a3), vsub_f32(v48, v34)));
      if (v54 < v80)
      {
        if (v82 > 0.00001)
        {
          LODWORD(v45) = -1;
        }

        else
        {
          LODWORD(v45) = v45 >> 2;
        }

        LODWORD(v44) = -1;
        if (v82 <= 0.00001)
        {
          v43 = 1;
        }

        else
        {
          v43 = -1;
        }

        goto LABEL_60;
      }

      v122 = vaddv_f32(vmul_f32(vsub_f32(v48, v31), vsub_f32(v48, v32)));
      if (v70 < v80)
      {
        if (v122 > 0.00001)
        {
          LODWORD(v44) = -1;
        }

        LODWORD(v45) = -1;
        if (v122 <= 0.00001)
        {
          v43 = 1;
        }

        else
        {
          v43 = -1;
        }

        goto LABEL_60;
      }

      if (v82 > 0.00001 || v122 > 0.00001)
      {
        v43 = -1;
      }

      else
      {
        v43 = 2;
      }

      LODWORD(v44) = -1;
      v35 = *a3;
    }

    LODWORD(v45) = -1;
    goto LABEL_61;
  }

  v42 = 0;
  v43 = 3;
  LODWORD(v44) = -1;
  LODWORD(v45) = -1;
LABEL_61:
  v84 = v12 < a4[9] && v11 < a4[8];
  v85 = v84 && v10 > 0.8;
  v86 = v130;
  v87 = *v131;
  v88 = v130 + 1;
  v89 = *v130;
  if (v130 == *v131 || v88 == *v131)
  {
    v96 = *v130;
    v97 = v130;
  }

  else
  {
    v90 = *v130;
    v91 = v130 + 1;
    v92 = v130;
    v93 = v130 + 1;
    do
    {
      v94 = *v93++;
      v95 = v94;
      if (v94 < v90)
      {
        v90 = v95;
        v92 = v91;
      }

      v91 = v93;
    }

    while (v93 != *v131);
    v96 = *v92;
    v97 = v130;
    v98 = v130 + 1;
    do
    {
      v99 = *v98++;
      v100 = v99;
      if (v99 < v89)
      {
        v89 = v100;
        v97 = v88;
      }

      v88 = v98;
    }

    while (v98 != *v131);
  }

  v101 = v43 == 2;
  v102 = a4[7];
  if (v96 < v102)
  {
    v101 = 1;
  }

  if (v11 >= a4[11])
  {
    v101 = 0;
  }

  if (v10 <= a4[10])
  {
    v101 = 0;
  }

  v103 = v97 - v130;
  v104 = (v103 >> 2) / 2;
  v105 = (v103 >> 2) & 1;
  v106 = v101 || v85;
  if (v96 < v102)
  {
    LODWORD(v44) = v105;
    LODWORD(v45) = v104;
    v43 = 0;
  }

  v107 = vsub_f32(v31, v32);
  v108 = sqrtf(vaddv_f32(vmul_f32(v107, v107)));
  v109 = vsub_f32(v35, v34);
  v110 = sqrtf(vaddv_f32(vmul_f32(v109, v109)));
  if (v110 < v108)
  {
    v108 = v110;
  }

  v111 = 4;
  if (v108 < a4[6])
  {
    v111 = 5;
  }

  v112 = a4[v111];
  v114 = v11 < (v112 + 90.0) && (90.0 - v112) < v11;
  v116 = v11 < (v112 + 135.0) && (135.0 - v112) < v11;
  v117 = v114 || v116;
  v118 = v11 > (90.0 - a4[4]) && v43 == 0;
  *a1 = v43;
  *(a1 + 4) = v45;
  v119 = v43 == 1 && v117;
  if (v118)
  {
    v119 = 1;
  }

  *(a1 + 8) = v44;
  *(a1 + 12) = v106;
  *(a1 + 13) = v117;
  *(a1 + 14) = v119;
  if (v86 != v87)
  {
    v120 = v86;
    do
    {
      sub_2621C8F2C(v8, v120++);
    }

    while (v120 != v87);
  }

  if (v42 != v41)
  {
    v121 = v42;
    do
    {
      sub_2621C8F2C(a1 + 80, v121++);
    }

    while (v121 != v41);
  }

  *(a1 + 16) = v25;
  *(a1 + 24) = v10;
  *(a1 + 28) = v26;
  *(a1 + 36) = v12;
  *(a1 + 40) = v11;
  *(a1 + 44) = v27;
  *(a1 + 48) = v124;
  *(a1 + 49) = v125;
  if (v42)
  {
    operator delete(v42);
  }

  operator delete(v86);
}

void sub_26229E190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  sub_262258C88(v14);
  _Unwind_Resume(a1);
}

void sub_26229E1DC(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4)
{
  *(a1 + 16) = xmmword_2623A7900;
  *(a1 + 32) = vdup_n_s32(0x49742400u);
  *(a1 + 40) = -3175874560;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_262240084(&v67, a2, a3);
  v8 = 0;
  v9 = *v68;
  v10 = v69;
  v11 = v70;
  v12 = vsub_f32(*a2, a2[1]);
  v13 = sqrtf(vaddv_f32(vmul_f32(v12, v12)));
  v14 = vsub_f32(*a3, a3[1]);
  v15 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
  if (v15 < v13)
  {
    v13 = v15;
  }

  v16 = 2;
  if (v13 < a4[4])
  {
    v16 = 3;
  }

  v17 = a4[v16];
  v18 = a4[1];
  v19 = v69 < *a4;
  if (v70 >= v17)
  {
    v19 = 0;
  }

  v20 = *v68 >= v18 && v19;
  v21 = *v68 >= a4[8] && v19;
  if (v69 < *a4 && *v68 >= v18)
  {
    v8 = v70 < a4[6];
  }

  v22 = v67;
  v23 = *&v68[4];
  v24 = v71;
  sub_2621DCD34(&v67, a2, a3);
  v27 = v67;
  v28 = v67;
  if (v67 != *v68)
  {
    v29 = v67 + 1;
    v28 = v67;
    if (v67 + 1 != *v68)
    {
      v30 = *v67;
      v28 = v67;
      v31 = v67 + 1;
      do
      {
        v32 = *v31++;
        v33 = v32;
        if (v32 < v30)
        {
          v30 = v33;
          v28 = v29;
        }

        v29 = v31;
      }

      while (v31 != *v68);
    }
  }

  v34 = *v28;
  v35 = *a2;
  v36 = a2[1];
  v37 = vsub_f32(v36, *a2);
  v38 = vmul_f32(v37, v37);
  *v25.f32 = *a3;
  *v26.f32 = a3[1];
  v39 = vsub_f32(*v26.f32, *a3);
  v40 = vmul_f32(v39, v39);
  v41 = vsqrt_f32(vadd_f32(vzip1_s32(v38, v40), vzip2_s32(v38, v40)));
  v42 = fabsf(vsub_f32(v41, vdup_lane_s32(v41, 1)).f32[0]);
  v44 = a4[6];
  v43 = a4[7];
  v45 = a4[17];
  if (v42 < a4[15] && v11 < v44 && v10 < v43)
  {
    v48 = a4[16];
    if (*&v22 > v45 && *(&v22 + 1) > v45 && v34 < v48)
    {
      v54 = 1;
      v55 = 4;
      goto LABEL_56;
    }
  }

  else
  {
    v48 = a4[16];
  }

  v51 = v11 < v44;
  if (v10 >= v43)
  {
    v51 = 0;
  }

  if (v51 && v9 > v45 && v34 < v48)
  {
    v54 = 1;
    v55 = 5;
  }

  else
  {
    if (v9 <= a4[8])
    {
      LOBYTE(v51) = 0;
    }

    if (v51)
    {
      v54 = 0;
      v55 = 6;
    }

    else if (v11 >= a4[14] || (*v26.f32 = vsub_f32(vext_s8(*v26.f32, *v25.f32, 4uLL), vext_s8(*v25.f32, *v26.f32, 4uLL)), v56 = vmul_f32(*v26.f32, *v26.f32), v56.i32[0] = vadd_f32(v56, vdup_lane_s32(v56, 1)).u32[0], v57 = vrsqrte_f32(v56.u32[0]), v58 = vmul_f32(v57, vrsqrts_f32(v56.u32[0], vmul_f32(v57, v57))), *v26.f32 = vmul_n_f32(*v26.f32, vmul_f32(v58, vrsqrts_f32(v56.u32[0], vmul_f32(v58, v58))).f32[0]), v59 = vsub_f32(vext_s8(v36, v35, 4uLL), vext_s8(v35, v36, 4uLL)), v60 = vmul_f32(v59, v59), v60.i32[0] = vadd_f32(v60, vdup_lane_s32(v60, 1)).u32[0], v61 = vrsqrte_f32(v60.u32[0]), v62 = vmul_f32(v61, vrsqrts_f32(v60.u32[0], vmul_f32(v61, v61))), v63 = vmul_n_f32(v59, vmul_f32(v62, vrsqrts_f32(v60.u32[0], vmul_f32(v62, v62))).f32[0]), v64 = vcltz_f32(vzip1_s32(v63, *v26.f32)), *v26.f32 = vbsl_s8(vdup_lane_s32(v64, 1), vneg_f32(*v26.f32), *v26.f32), v26.f32[2] = -(COERCE_FLOAT(vmul_f32(*&v25, *&v26).i32[1]) + (v26.f32[0] * v25.f32[0])), *v25.f32 = vbsl_s8(vdup_lane_s32(v64, 0), vneg_f32(v63), v63), v25.f32[2] = -(COERCE_FLOAT(vmul_f32(v35, *&v25).i32[1]) + (v25.f32[0] * v35.f32[0])), v65 = vsubq_f32(v25, v26), v66 = vmulq_f32(v65, v65), sqrtf(v66.f32[2] + vaddv_f32(*v66.f32)) >= a4[13]))
    {
      v54 = 0;
      v55 = -1;
    }

    else
    {
      v54 = 0;
      v55 = 3;
    }
  }

LABEL_56:
  *a1 = v55;
  *(a1 + 12) = v54;
  *(a1 + 16) = v22;
  *(a1 + 24) = v9;
  *(a1 + 28) = v23;
  *(a1 + 36) = v10;
  *(a1 + 40) = v11;
  *(a1 + 44) = v24;
  *(a1 + 48) = v20;
  *(a1 + 49) = v21 || v8;
  if (v27)
  {

    operator delete(v27);
  }
}

double sub_26229E5CC(float32x2_t *a1, __n128 a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  v5 = vsub_f32(a3, a2.n128_u64[0]);
  v6 = vaddv_f32(vmul_f32(v5, v5));
  if (v6 < 0.000001)
  {
    v6 = 0.000001;
  }

  while (1)
  {
    v7 = a4;
    v8 = vmla_n_f32(a2.n128_u64[0], v5, vaddv_f32(vmul_f32(vsub_f32(a4, a2.n128_u64[0]), v5)) / v6);
    v9 = vmla_n_f32(a2.n128_u64[0], v5, vaddv_f32(vmul_f32(vsub_f32(a5, a2.n128_u64[0]), v5)) / v6);
    v10 = vaddv_f32(vmul_f32(vsub_f32(v8, a2.n128_u64[0]), vsub_f32(v8, a3)));
    v11 = vaddv_f32(vmul_f32(vsub_f32(v9, a2.n128_u64[0]), vsub_f32(v9, a3)));
    if (v10 <= 0.00001 && v11 <= 0.00001)
    {
      break;
    }

    if (v10 <= 0.00001 && v11 > 0.00001)
    {
      v22 = vsub_f32(a2.n128_u64[0], v9);
      v23 = vmul_f32(v22, v22);
      v24 = vsub_f32(a3, v9);
      v25 = vmul_f32(v24, v24);
      v26 = vsqrt_f32(vadd_f32(vzip1_s32(v23, v25), vzip2_s32(v23, v25)));
      a1->i8[0] = 1;
      a2.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v26, 1), v26), 0), a3, a2.n128_u64[0]);
      a1[1] = a2.n128_u64[0];
      a1[2] = v8;
      return a2.n128_f64[0];
    }

    if (v10 > 0.00001)
    {
      a4 = a5;
      a5 = v7;
      if (v11 <= 0.00001)
      {
        continue;
      }
    }

    a1[1] = 0;
    a1[2] = 0;
    a1->i8[0] = 0;
    return a2.n128_f64[0];
  }

  v12 = vsub_f32(a2.n128_u64[0], v8);
  v13 = vmul_f32(v12, v12);
  v14 = vsub_f32(a2.n128_u64[0], v9);
  v15 = vmul_f32(v14, v14);
  v16 = vsqrt_f32(vadd_f32(vzip1_s32(v15, v13), vzip2_s32(v15, v13)));
  if (vcgt_f32(vdup_lane_s32(v16, 1), v16).u8[0])
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vdup_n_s32(v17);
  v30 = a2.n128_u64[0];
  v31 = vbsl_s8(v18, v9, v8);
  v28 = a3;
  v29 = vbsl_s8(v18, v8, v9);
  v19 = vsub_f32(a2.n128_u64[0], v31);
  v20 = vsub_f32(a3, v29);
  v21 = &v28;
  if (sqrtf(vaddv_f32(vmul_f32(v19, v19))) > sqrtf(vaddv_f32(vmul_f32(v20, v20))))
  {
    v21 = &v30;
  }

  a2 = *v21;
  *a1[1].f32 = *v21;
  a1->i8[0] = 1;
  return a2.n128_f64[0];
}

uint64_t sub_26229E760(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t a4, float32x2_t a5, float a6)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = sub_2621DCB54(a4, *a1, v12);
  v14 = sub_2621DCB54(a5, v11, v12);
  v15 = vsub_f32(v11, v13);
  v16 = vmul_f32(v15, v15);
  v17 = vsub_f32(v11, v14);
  v18 = vmul_f32(v17, v17);
  v19 = vsqrt_f32(vadd_f32(vzip1_s32(v18, v16), vzip2_s32(v18, v16)));
  if (vcgt_f32(vdup_lane_s32(v19, 1), v19).u8[0])
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = vdup_n_s32(v20);
  v22 = vbsl_s8(v21, v13, v14);
  v23 = vbsl_s8(v21, v14, v13);
  v37[0] = v11;
  v37[1] = v23;
  v36[0] = v12;
  v36[1] = v22;
  *&v35 = v23;
  *(&v35 + 1) = v22;
  v24 = vsub_f32(v23, v22);
  if (sqrtf(vaddv_f32(vmul_f32(v24, v24))) < a6)
  {
    v25 = a3;
LABEL_6:
    sub_2621DE070(v25, a1);
    return 0;
  }

  v27 = vsub_f32(v12, v22);
  v28 = sqrtf(vaddv_f32(vmul_f32(v27, v27)));
  v29 = vsub_f32(v11, v23);
  v30 = sqrtf(vaddv_f32(vmul_f32(v29, v29)));
  if (v30 > a6 && v28 > a6)
  {
    sub_2621DE070(a2, &v35);
    v33 = v37;
    v34 = a3;
LABEL_14:
    sub_2621DE070(v34, v33);
    v32 = v36;
    goto LABEL_15;
  }

  if (v30 <= a6)
  {
    if (v28 <= a6)
    {
      v25 = a2;
      goto LABEL_6;
    }

    *&v35 = v11;
    *(&v35 + 1) = v22;
    v33 = &v35;
    v34 = a2;
    goto LABEL_14;
  }

  *(&v35 + 1) = v12;
  sub_2621DE070(a2, &v35);
  v32 = v37;
LABEL_15:
  sub_2621DE070(a3, v32);
  return 1;
}

float sub_26229E8EC(float32x2_t *a1, float32x2_t *a2, float32x2_t a3)
{
  if (a2 == a1)
  {
    return -1.0;
  }

  v3 = (a2 - a1) >> 4;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  for (i = a1 + 1; ; i += 2)
  {
    v5 = i[-1];
    v6 = vsub_f32(a3, v5);
    v7 = vmul_f32(v6, v6);
    v8 = vsub_f32(a3, *i);
    v9 = vmul_f32(v8, v8);
    v10 = vsqrt_f32(vadd_f32(vzip1_s32(v9, v7), vzip2_s32(v9, v7)));
    if (v10.f32[0] >= v10.f32[1])
    {
      v10.f32[0] = v10.f32[1];
    }

    if (v10.f32[0] < 0.00001)
    {
      break;
    }

    if (!--v3)
    {
      return -1.0;
    }
  }

  v12 = vsub_f32(v5, *i);
  return sqrtf(vaddv_f32(vmul_f32(v12, v12)));
}

uint64_t *sub_26229E96C(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    sub_2621DC9F8(a1, a3);
  }

  return a1;
}

void sub_26229E9CC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[1];
  v5 = 0x2E8BA2E8BA2E8BA3;
  v6 = *a1;
  if (v4 == *a1)
  {
    return;
  }

  LOBYTE(v7) = 0;
  v55 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = v9;
    while (1)
    {
      if (v7)
      {
        goto LABEL_87;
      }

      if (v4 != v6)
      {
        break;
      }

      LOBYTE(v7) = 0;
      if (++v10 >= ((v4 - v6) >> 4) * v5)
      {
        return;
      }
    }

    v11 = *(v6 + 176 * v9 + 8);
    v54 = v8;
    if (v11)
    {
      v12 = *(v11 + 116);
    }

    else
    {
      v12 = 0;
    }

    v8 = 0;
    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_73;
      }

      v13 = *(v6 + 176 * v8 + 8);
      if (v13)
      {
        LODWORD(v13) = *(v13 + 116);
      }

      v14 = v13 == 3;
      v15 = v13 == 3 && v12 != 3;
      v16 = !v14 && v12 == 3;
      if (v16 || v15)
      {
        goto LABEL_73;
      }

      v17 = v5;
      v18 = (v6 + 176 * v9);
      v19 = (v6 + 176 * v8);
      v20 = v19 + 2;
      v21 = sub_2621C92AC(v18 + 2, v19 + 2, 0);
      v22 = *(v2 + 16);
      if (v22 >= v21 || v21 >= (180.0 - v22))
      {
        break;
      }

      v6 = *a1;
      v5 = v17;
LABEL_61:
      v39 = (v6 + 176 * v9);
      v40 = (v6 + 176 * v8);
      sub_2621DCD34(&src, v39 + 2, v40 + 2);
      v41 = src;
      v42 = src;
      if (src != src_8)
      {
        v43 = src + 1;
        v42 = src;
        if (src + 1 != src_8)
        {
          v44 = *src;
          v42 = src;
          v45 = src + 1;
          do
          {
            v46 = *v45++;
            v47 = v46;
            if (v46 < v44)
            {
              v44 = v47;
              v42 = v43;
            }

            v43 = v45;
          }

          while (v45 != src_8);
        }
      }

      if (*v42 >= *(v2 + 28))
      {
        v48 = 0;
        if (!src)
        {
          goto LABEL_72;
        }

LABEL_71:
        operator delete(v41);
        goto LABEL_72;
      }

      v48 = sub_2621C92AC(v39 + 2, v40 + 2, 0) >= (180.0 - *(v2 + 16));
      if (v41)
      {
        goto LABEL_71;
      }

LABEL_72:
      v6 = *a1;
      v4 = a1[1];
      if (v48)
      {
        v7 = 1;
        v55 = v9;
        goto LABEL_81;
      }

LABEL_73:
      if (++v8 >= ((v4 - v6) >> 4) * v5)
      {
        v7 = 0;
        v8 = v54;
        goto LABEL_81;
      }
    }

    v24 = v19[2];
    v25 = v19[3];
    LOBYTE(__p) = vaddv_f32(vmul_f32(vsub_f32(v18[2], v24), vsub_f32(v18[2], v25))) <= 0.00001;
    BYTE1(__p) = vaddv_f32(vmul_f32(vsub_f32(v18[3], v24), vsub_f32(v18[3], v25))) <= 0.00001;
    sub_26229E96C(&src, &__p, 2);
    v26 = v18[2];
    v27 = v18[3];
    v28 = v19[3];
    v57[0] = vaddv_f32(vmul_f32(vsub_f32(v19[2], v26), vsub_f32(v19[2], v27))) <= 0.00001;
    v57[1] = vaddv_f32(vmul_f32(vsub_f32(v28, v26), vsub_f32(v28, v27))) <= 0.00001;
    sub_26229E96C(&__p, v57, 2);
    v29 = src;
    if (src_8 <= 0x3F && (src_8 & 0x3F) == 0)
    {
      goto LABEL_54;
    }

    v30 = 0;
    v31 = src;
    while (((*v31 >> v30) & 1) == 0)
    {
      v31 += 2 * (v30 == 63);
      if (v30 == 63)
      {
        v30 = 0;
      }

      else
      {
        ++v30;
      }

      if (v31 == &src[2 * (src_8 >> 6)] && v30 == (src_8 & 0x3F))
      {
        goto LABEL_54;
      }
    }

    v33 = v59 & 0x3F;
    if (v59 <= 0x3F && v33 == 0)
    {
LABEL_54:
      v38 = 0;
    }

    else
    {
      v35 = 0;
      v36 = __p;
      while (((*v36 >> v35) & 1) == 0)
      {
        v36 += v35 == 63;
        if (v35 == 63)
        {
          v35 = 0;
        }

        else
        {
          ++v35;
        }

        if (v36 == (__p + 8 * (v59 >> 6)) && v35 == v33)
        {
          goto LABEL_54;
        }
      }

      v49 = v19[2];
      v50 = v19[3];
      v51 = __p;
      v52 = sub_2621DC76C(v18[((*src & 1) == 0) + 2], v49, v50, 0.00001);
      v38 = sub_2621DC76C(v20[(*v51 & 1) == 0], v18[2], v18[3], 0.00001) <= 0.15 && v52 <= 0.15;
    }

    v5 = v17;
    if (__p)
    {
      operator delete(__p);
      v29 = src;
    }

    if (v29)
    {
      operator delete(v29);
    }

    v6 = *a1;
    if (!v38)
    {
      v2 = a2;
      goto LABEL_61;
    }

    v4 = a1[1];
    v7 = 1;
    v55 = v9;
    v2 = a2;
LABEL_81:
    ++v9;
  }

  while (v9 < ((v4 - v6) >> 4) * v5);
  if (v7)
  {
LABEL_87:
    sub_2621DBF40(*(v6 + 176 * v55 + 16), *(v6 + 176 * v55 + 24), *(v6 + 176 * v8 + 16), *(v6 + 176 * v8 + 24));
  }
}

void sub_26229EFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_26229EFDC(float32x2_t *a1, float32x2_t *a2, float32x2_t **a3, float *a4)
{
  v6 = a3[1];
  v5 = *a3;
  if (v6 == *a3)
  {

    sub_26229F23C(a1, 0, "");
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    do
    {
      sub_26229DAC8(v31, a2 + 2, v5 + 2, a4);
      if (v33)
      {
        sub_2621C8F2C(&v38, v32);
      }

      else
      {
        v30 = 0;
        sub_2621C8F2C(&v38, &v30);
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      if (v34)
      {
        v35 = v34;
        operator delete(v34);
      }

      v5 += 22;
    }

    while (v5 != v6);
    v12 = v38;
    v13 = v38 + 1;
    v14 = *v38;
    if (v38 == v39 || v13 == v39)
    {
      v21 = *v38;
      v22 = v38;
    }

    else
    {
      v15 = *v38;
      v16 = v38 + 1;
      v17 = v38;
      v18 = v38 + 1;
      do
      {
        v19 = *v18++;
        v20 = v19;
        if (v15 < v19)
        {
          v15 = v20;
          v17 = v16;
        }

        v16 = v18;
      }

      while (v18 != v39);
      v21 = *v17;
      v22 = v38;
      v23 = v38 + 1;
      do
      {
        v24 = *v23++;
        v25 = v24;
        if (v14 < v24)
        {
          v14 = v25;
          v22 = v13;
        }

        v13 = v23;
      }

      while (v23 != v39);
    }

    if (v21 <= 0.3)
    {
      sub_26229F23C(a1, 0, "");
    }

    else
    {
      v26 = &(*a3)[22 * ((v22 - v38) >> 2)];
      v27 = objc_msgSend_identifier(*&v26[1], v10, v11);
      a1->i8[0] = 1;
      v28 = a1 + 1;
      if (v26[18].i8[7] < 0)
      {
        sub_2621CC810(v28, *&v26[16], *&v26[17]);
      }

      else
      {
        v29 = *v26[16].f32;
        a1[3] = v26[18];
        *v28->f32 = v29;
      }

      a1[4] = v27;
    }

    operator delete(v12);
  }
}

void sub_26229F1F4(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26229F23C(uint64_t a1, char a2, char *__s)
{
  *a1 = a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  *(v5 + v7) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void sub_26229F2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, float *a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v9 = *a4;
      v8 = a4[1];
      while (v9 != v8)
      {
        sub_26229DAC8(&v37, (v6 + 16), (v9 + 16), a5);
        v28 = v37;
        *v29 = *v38;
        *&v29[16] = *&v38[16];
        v30 = v39;
        v32 = 0;
        v33 = 0;
        v31 = 0;
        sub_2621C8E70(&v31, v40, v41, (v41 - v40) >> 2);
        v34 = 0;
        v35 = 0;
        v36 = 0;
        sub_2621C8E70(&v34, v42, v43, (v43 - v42) >> 2);
        *v29 = vrev64_s32(*v38);
        *&v29[12] = vrev64_s32(*&v38[12]);
        if (*(v6 + 151) < 0)
        {
          sub_2621CC810(__dst, *(v6 + 128), *(v6 + 136));
        }

        else
        {
          *__dst = *(v6 + 128);
          v27 = *(v6 + 144);
        }

        if (*(v9 + 151) < 0)
        {
          sub_2621CC810(__p, *(v9 + 128), *(v9 + 136));
        }

        else
        {
          *__p = *(v9 + 128);
          v25 = *(v9 + 144);
        }

        v44[0] = __dst;
        v10 = sub_26225836C(a1, __dst, v44);
        v44[0] = __p;
        v11 = sub_262258800(v10 + 10, __p, v44);
        v12 = v11;
        v13 = v39;
        v14 = *&v38[16];
        v15 = *v38;
        *(v11 + 5) = v37;
        *(v11 + 7) = v15;
        *(v11 + 9) = v14;
        *(v11 + 44) = v13;
        if (v11 + 5 != &v37)
        {
          sub_2621CA9DC(v11 + 12, v40, v41, (v41 - v40) >> 2);
          sub_2621CA9DC(v12 + 15, v42, v43, (v43 - v42) >> 2);
        }

        v44[0] = __p;
        v16 = sub_26225836C(a1, __p, v44);
        v44[0] = __dst;
        v17 = sub_262258800(v16 + 10, __dst, v44);
        v18 = v17;
        v19 = v30;
        v21 = *v29;
        v20 = *&v29[16];
        *(v17 + 5) = v28;
        *(v17 + 7) = v21;
        *(v17 + 9) = v20;
        *(v17 + 44) = v19;
        if (v17 + 5 != &v28)
        {
          sub_2621CA9DC(v17 + 12, v31, v32, (v32 - v31) >> 2);
          sub_2621CA9DC(v18 + 15, v34, v35, (v35 - v34) >> 2);
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }

        if (v31)
        {
          v32 = v31;
          operator delete(v31);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        v9 += 176;
      }

      v6 += 176;
    }

    while (v6 != a3);
  }
}

void sub_26229F5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_262258C88(&a25);
  sub_262258C88(&a38);
  sub_2622593AC(v38);
  _Unwind_Resume(a1);
}

void sub_26229F648(void *a1)
{
  sub_26229F680(a1);

  JUMPOUT(0x266727420);
}

void *sub_26229F680(void *a1)
{
  *a1 = &unk_2874EE5C0;
  if (a1[1] && e5rt_execution_stream_operation_release() || a1[2] && e5rt_execution_stream_release())
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  sub_26229F750(a1[4]);
  a1[3] = a1 + 4;
  a1[5] = 0;
  a1[4] = 0;
  sub_26229F750(a1[7]);
  a1[6] = a1 + 7;
  a1[8] = 0;
  a1[7] = 0;
  sub_26229F750(a1[4]);
  return a1;
}

void sub_26229F750(void *a1)
{
  if (a1)
  {
    sub_26229F750(*a1);
    sub_26229F750(a1[1]);
    sub_262241314((a1 + 4));

    operator delete(a1);
  }
}

uint64_t sub_26229F7A8(uint64_t a1, uint64_t a2)
{
  if (e5rt_io_port_retain_tensor_desc() || e5rt_tensor_desc_get_shape() || e5rt_tensor_desc_retain_dtype() || e5rt_tensor_desc_dtype_get_component_dtype() || (*(a2 + 24) = 0, e5rt_tensor_desc_dtype_get_component_pack(), *(a2 + 28) = 0, e5rt_tensor_desc_dtype_release()) || (result = e5rt_tensor_desc_release(), result))
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  return result;
}

void sub_26229F95C(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  sub_262245A54(v41, v4 + 15);
  if (v42 >= 0)
  {
    v5 = v41;
  }

  else
  {
    v5 = v41[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "_operation_name");
  if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  v40 = 0;
  if (e5rt_execution_stream_operation_get_num_inputs())
  {
    v22 = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", v22);
    exit(1);
  }

  sub_26229FE80(&v38, v40);
  if (e5rt_execution_stream_operation_get_input_names())
  {
    v23 = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", v23);
    exit(1);
  }

  v7 = v38;
  v8 = v39;
  if (v38 != v39)
  {
    do
    {
      v9 = *v7;
      v43 = 0;
      if (e5rt_execution_stream_operation_retain_input_port())
      {
        v18 = e5rt_get_last_error_message();
        printf("E5RT operation failed with message = %s", v18);
        exit(1);
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      sub_26229F7A8(v43, &v34);
      sub_2621D0F64(&__p, v9);
      v27[0] = &__p;
      v10 = sub_26229FF24((a1 + 24), &__p, v27);
      v11 = v34;
      sub_26223200C((v10 + 56), v34, v35, (v35 - v34) >> 3);
      *(v10 + 80) = v37;
      if (v33 < 0)
      {
        operator delete(__p);
      }

      if (e5rt_io_port_release())
      {
        v17 = e5rt_get_last_error_message();
        printf("E5RT operation failed with message = %s", v17);
        exit(1);
      }

      if (v11)
      {
        operator delete(v11);
      }

      ++v7;
    }

    while (v7 != v8);
  }

  v30 = 0;
  if (e5rt_execution_stream_operation_get_num_outputs())
  {
    v24 = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", v24);
    exit(1);
  }

  sub_26229FE80(&__p, v30);
  if (e5rt_execution_stream_operation_get_output_names())
  {
    v25 = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", v25);
    exit(1);
  }

  v12 = __p;
  v13 = v32;
  if (__p != v32)
  {
    do
    {
      v14 = *v12;
      v29 = 0;
      if (e5rt_execution_stream_operation_retain_output_port())
      {
        v20 = e5rt_get_last_error_message();
        printf("E5RT operation failed with message = %s", v20);
        exit(1);
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      sub_26229F7A8(v29, &v34);
      sub_2621D0F64(v27, v14);
      v43 = v27;
      v15 = sub_26229FF24((a1 + 48), v27, &v43);
      v16 = v34;
      sub_26223200C((v15 + 56), v34, v35, (v35 - v34) >> 3);
      *(v15 + 80) = v37;
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }

      if (e5rt_io_port_release())
      {
        v19 = e5rt_get_last_error_message();
        printf("E5RT operation failed with message = %s", v19);
        exit(1);
      }

      if (v16)
      {
        operator delete(v16);
      }

      ++v12;
    }

    while (v12 != v13);
  }

  if (e5rt_execution_stream_create())
  {
    v26 = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", v26);
    exit(1);
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }
}

void sub_26229FD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  _Unwind_Resume(exception_object);
}

void *sub_26229FE80(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2621CBEB0();
  }

  return a1;
}

void sub_26229FF08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26229FF24(uint64_t **a1, void *a2, _OWORD **a3)
{
  v3 = *sub_26225E318(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_26229FFE0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_262241314(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2622A002C(uint64_t a1, uint64_t a2)
{
  result = e5rt_execution_stream_encode_operation();
  if (result)
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  return result;
}

uint64_t sub_2622A0078()
{
  result = e5rt_execution_stream_execute_sync();
  if (result)
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  return result;
}

uint64_t sub_2622A00B8(uint64_t a1, uint64_t *a2, __CVBuffer *a3)
{
  if (e5rt_execution_stream_operation_retain_input_port() || (CVPixelBufferGetIOSurface(a3), e5rt_buffer_object_create_from_iosurface()) || e5rt_io_port_bind_buffer_object() || e5rt_buffer_object_release() || (result = e5rt_io_port_release(), result))
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  return result;
}

uint64_t sub_2622A015C(uint64_t a1, uint64_t *a2, __CVBuffer *a3)
{
  if (e5rt_execution_stream_operation_retain_output_port() || (CVPixelBufferGetIOSurface(a3), e5rt_buffer_object_create_from_iosurface()) || e5rt_io_port_bind_buffer_object() || e5rt_buffer_object_release() || (result = e5rt_io_port_release(), result))
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  return result;
}

uint64_t *sub_2622A0200(uint64_t a1, void *a2)
{
  v2 = *sub_26225E318(a1 + 48, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return (v2 + 56);
}

void sub_2622A0868(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2622A0AF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    v4 = objc_msgSend_generatePointListsWithFloorplan_(WeakRetained, v3, *(a1 + 32));
    v7 = objc_msgSend_getRSPointLists(v4, v5, v6);
    v10 = objc_msgSend_getRSWallLists(v4, v8, v9);
    v13 = objc_msgSend_getRSOuterPointList(v4, v11, v12);
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v7, v10, v13);
    }

    dispatch_semaphore_signal(v15[1]);

    WeakRetained = v15;
  }
}

void sub_2622A0C80(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2622A0DA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v2, v3);
    for (i = 0; i < objc_msgSend_count(*(a1 + 32), v5, v6); ++i)
    {
      v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v9, i);
      v11 = sub_2622AFE14([RSFloorPlan alloc], v10, i);
      objc_msgSend_addObject_(v7, v12, v11);
    }

    v16 = 0;
    v13 = objc_msgSend_processWithMultiFloorPlan_error_(WeakRetained, v9, v7, &v16);
    v14 = v16;
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, v13, v14);
    }

    dispatch_semaphore_signal(WeakRetained[1]);
  }
}

void sub_2622A1008(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4);
    for (i = 0; i < objc_msgSend_count(*(a1 + 32), v5, v6); ++i)
    {
      v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v9, i);
      v11 = sub_2622AFE14([RSFloorPlan alloc], v10, i);
      objc_msgSend_addObject_(v7, v12, v11);
    }

    v13 = objc_msgSend_processWithMultiFloorPlan_(v15, v9, v7);
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v13);
    }

    dispatch_semaphore_signal(v15[1]);

    WeakRetained = v15;
  }
}

void sub_2622A125C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v9 = 0;
    v6 = objc_msgSend_processWithMultiFloorPlan_error_(WeakRetained, v3, v5, &v9);
    v7 = v9;
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v6, v7);
    }

    dispatch_semaphore_signal(v4[1]);
  }
}

void sub_2622A140C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = objc_msgSend_processWithMultiFloorPlan_(WeakRetained, v3, *(a1 + 32));
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }

    dispatch_semaphore_signal(v6[1]);

    WeakRetained = v6;
  }
}

void sub_2622A1724(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    kdebug_trace();
    v3 = objc_alloc_init(RSMultiRoom);
    v4 = *(a1 + 32);
    v8 = 0;
    v5 = sub_262362E58(v3, v4, &v8);
    v6 = v8;
    kdebug_trace();
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }

    dispatch_semaphore_signal(WeakRetained[1]);
  }
}

void sub_2622A195C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2622A1A30;
    v6[3] = &unk_279B30718;
    v7 = *(a1 + 48);
    objc_msgSend_processMultiLevelWithMultiFloorPlan_withKeyframes_completionHandlerWithError_(WeakRetained, v5, v3, v4, v6);
    dispatch_semaphore_signal(WeakRetained[1]);
  }
}

void sub_2622A1A30(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_2622A1F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = v36;

  sub_26224C4F4(&a11);
  sub_26224C4F4(&a35);

  _Unwind_Resume(a1);
}

void sub_2622A219C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v11;

  sub_2622417E4(&STACK[0x2D0]);
  sub_26229D160(&a9);

  _Unwind_Resume(a1);
}

void sub_2622A2334(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = 0;
    v7 = objc_msgSend_processWithKeyframes_initialAsset_error_(WeakRetained, v3, v5, v6, &v10);
    v8 = v10;
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, v7, v8);
    }

    dispatch_semaphore_signal(v4[1]);
  }
}

void sub_2622A250C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = objc_msgSend_processWithKeyframes_initialAsset_(WeakRetained, v3, *(a1 + 32), *(a1 + 40));
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }

    dispatch_semaphore_signal(v6[1]);

    WeakRetained = v6;
  }
}

void sub_2622A294C(uint64_t a1, void *a2)
{
  v50 = a2;
  if (a1)
  {
    v5 = *(a1 + 24);
    isWindowDoorDetectionEnabled = objc_msgSend_isWindowDoorDetectionEnabled(v50, v3, v4);
    objc_msgSend_setDoorWindowEnable_(v5, v7, isWindowDoorDetectionEnabled);
    v8 = *(a1 + 24);
    isObjectBeautificationEnabled = objc_msgSend_isObjectBeautificationEnabled(v50, v9, v10);
    objc_msgSend_setObjectBeautificationEnable_(v8, v12, isObjectBeautificationEnabled);
    v13 = *(a1 + 24);
    isChairBeautificationEnabled = objc_msgSend_isChairBeautificationEnabled(v50, v14, v15);
    objc_msgSend_setChairBeautificationEnable_(v13, v17, isChairBeautificationEnabled);
    v18 = *(a1 + 24);
    isStandardizationEnabled = objc_msgSend_isStandardizationEnabled(v50, v19, v20);
    objc_msgSend_setStandardizationEnable_(v18, v22, isStandardizationEnabled);
    v23 = *(a1 + 24);
    isWallOpeningMergeEnabled = objc_msgSend_isWallOpeningMergeEnabled(v50, v24, v25);
    if (v23)
    {
      *(v23 + 160) = isWallOpeningMergeEnabled;
    }

    v29 = *(a1 + 24);
    isOpeningReplaceOpendoorEnabled = objc_msgSend_isOpeningReplaceOpendoorEnabled(v50, v27, v28);
    if (v29)
    {
      *(v29 + 161) = isOpeningReplaceOpendoorEnabled;
    }

    v33 = *(a1 + 24);
    isNonUniformHeightEnabled = objc_msgSend_isNonUniformHeightEnabled(v50, v31, v32);
    if (v33)
    {
      v37 = *(v33 + 112);
      if (v37)
      {
        *(v37 + 400) = isNonUniformHeightEnabled;
      }
    }

    v38 = *(a1 + 24);
    isCurveEnabled = objc_msgSend_isCurveEnabled(v50, v35, v36);
    if (v38)
    {
      v42 = *(v38 + 104);
      if (v42)
      {
        *(v42 + 144) = isCurveEnabled;
      }

      v43 = *(v38 + 32);
      if (v43)
      {
        *(v43 + 16) = isCurveEnabled;
      }
    }

    v44 = *(a1 + 24);
    isRoomTypeEnabled = objc_msgSend_isRoomTypeEnabled(v50, v40, v41);
    if (v44)
    {
      *(v44 + 163) = isRoomTypeEnabled;
    }

    v48 = *(a1 + 24);
    isOpendoorReplaceOpeningEnabled = objc_msgSend_isOpendoorReplaceOpeningEnabled(v50, v46, v47);
    if (v48)
    {
      *(v48 + 162) = isOpendoorReplaceOpeningEnabled;
    }
  }
}

void sub_2622A354C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2622A39D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = RSCaptureSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2622A3B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2622417E4(&STACK[0x2D0]);
  sub_26229D160(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_2622A4460(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2622A4478(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v5 = objc_msgSend_copy(WeakRetained[13], v3, v4);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    WeakRetained = v8;
  }
}

void sub_2622A44F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v3 = sub_2621F6B40(WeakRetained[2]);
    v6 = objc_msgSend_floorPlan(v3, v4, v5);
    objc_msgSend_updateStructure_(v6, v7, v19[12]);

    v10 = objc_msgSend_floorPlan(v3, v8, v9);
    objc_msgSend_updateObjects_(v10, v11, *(*(*(a1 + 32) + 8) + 40));

    v14 = objc_msgSend_delegate(v19, v12, v13);
    LOBYTE(v10) = objc_opt_respondsToSelector();

    if (v10)
    {
      v17 = objc_msgSend_delegate(v19, v15, v16);
      objc_msgSend_session_didUpdateAsset_(v17, v18, v19, v3);
    }

    WeakRetained = v19;
  }
}

void sub_2622A49B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  objc_destroyWeak((v10 - 88));

  _Unwind_Resume(a1);
}

BOOL sub_2622A4A00(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (a1)
  {
    if (objc_msgSend_depthBuffer(v3, v4, v5))
    {
      v9 = objc_msgSend_depthBuffer(v6, v7, v8);
      Width = CVPixelBufferGetWidth(v9);
      v13 = objc_msgSend_depthBuffer(v6, v11, v12);
      if (CVPixelBufferGetHeight(v13))
      {
        v14 = Width == 0;
      }

      else
      {
        v14 = 1;
      }

      a1 = !v14;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_2622A4A88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    sub_2621F5F0C(WeakRetained[2], *(a1 + 32));
    dispatch_semaphore_signal(v3[18]);
    WeakRetained = v3;
  }
}

void sub_2622A4B00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v5 = objc_msgSend_copy(WeakRetained[5], v3, v4);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    WeakRetained = v8;
  }
}

void sub_2622A4B7C(uint64_t a1)
{
  v669 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_msgSend_date(MEMORY[0x277CBEAA8], v1, v2);
    v4 = *(WeakRetained + 9);
    *(WeakRetained + 9) = v3;

    objc_msgSend_referenceOriginTransform(*(a1 + 32), v5, v6);
    v671 = __invert_f4(v670);
    v9 = 0;
    v656[0] = v671;
    do
    {
      *(&block + v9 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2623A7990, COERCE_FLOAT(*&v656[0].columns[v9])), xmmword_2623A7700, *v656[0].columns[v9].f32, 1), xmmword_2623A79A0, v656[0].columns[v9], 2), xmmword_2623A7810, v656[0].columns[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    v624 = v658;
    obj = block;
    *location = v660;
    v618 = v659;
    v10 = objc_msgSend_camera(*(a1 + 32), v7, v8);
    objc_msgSend_transform(v10, v11, v12);
    v13 = 0;
    v656[0].columns[0] = v14;
    v656[0].columns[1] = v15;
    v656[0].columns[2] = v16;
    v656[0].columns[3] = v17;
    do
    {
      *(&block + v13 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(obj, COERCE_FLOAT(*&v656[0].columns[v13])), v624, *v656[0].columns[v13].f32, 1), v618, v656[0].columns[v13], 2), *location, v656[0].columns[v13], 3);
      ++v13;
    }

    while (v13 != 4);
    v18 = 0;
    v19 = block;
    v20 = v658;
    v21 = v659;
    v22 = v660;
    v656[0].columns[0] = xmmword_2623A78C0;
    v656[0].columns[1] = xmmword_2623A7990;
    v656[0].columns[2] = xmmword_2623A79B0;
    v656[0].columns[3] = xmmword_2623A7810;
    do
    {
      *(&block + v18 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*&v656[0].columns[v18])), v20, *v656[0].columns[v18].f32, 1), v21, v656[0].columns[v18], 2), v22, v656[0].columns[v18], 3);
      ++v18;
    }

    while (v18 != 4);
    v630 = v658;
    v632 = block;
    v625 = v660;
    *obja = v659;

    v23 = *(WeakRetained + 19);
    v24 = *(a1 + 32);
    v25 = *(*(*(a1 + 48) + 8) + 40);
    v26 = v24;
    v29 = v25;
    if (v23)
    {
      if (objc_msgSend_depthBuffer(v26, v27, v28))
      {
        v31 = v26;
        if (*(v23 + 177) == 1)
        {
          objc_storeStrong((v23 + 104), v24);
          *(v23 + 112) = v632;
          *(v23 + 128) = v630;
          *(v23 + 144) = *obja;
          *(v23 + 160) = v625;
        }
      }

      if (*(v23 + 177) == 1 && *(v23 + 176) == 1)
      {
        v32 = *(v23 + 24);
        if (v32)
        {
          v33 = objc_msgSend_stringByAppendingPathComponent_(v32, v30, @"Live");
          v34 = *(v23 + 72);
          v35 = *(v23 + 16);
          v38 = objc_msgSend_count(v29, v36, v37);
          dispatch_group_enter(v35);
          v39 = *(v23 + 8);
          *&block = MEMORY[0x277D85DD0];
          *(&block + 1) = 3221225472;
          v658.i64[0] = sub_2621ECDF8;
          v658.i64[1] = &unk_279B30570;
          v663 = v33;
          v40 = v26;
          v668 = v34;
          v659 = v632;
          v660 = v630;
          v661 = *obja;
          v662 = v625;
          v664 = v40;
          v665 = v23;
          v667 = v38;
          v666 = v35;
          v41 = v35;
          v42 = v33;
          dispatch_async(v39, &block);
        }
      }
    }

    if (!objc_msgSend_isDriftDetectionEnabled(*(WeakRetained + 1), v43, v44) || !sub_2622A4A00(*(a1 + 40), *(a1 + 32)))
    {
      v55 = 0;
      goto LABEL_55;
    }

    v47 = *(WeakRetained + 10);
    v48 = *(*(*(a1 + 48) + 8) + 40);
    v49 = *(a1 + 32);
    v50 = v48;
    if (!v47)
    {
      v55 = 0;
      goto LABEL_423;
    }

    v638 = 6194;
    v639 = 0;
    kdebug_trace();
    v51 = v49;
    v52 = v50;
    v55 = objc_alloc_init(RSDriftDetectionSignal);
    v56 = *(v47 + 104);
    v57 = *(v47 + 112);
    *(v47 + 104) = v56 + 1;
    if (v56 < v57)
    {
LABEL_422:

      sub_2621CD534(&v638);
LABEL_423:

      if (!v55 || (v55->_type & 0x8000000000000000) == 0)
      {
        if (qword_27FF0C0B0 != -1)
        {
          dispatch_once(&qword_27FF0C0B0, &unk_2874EE1A0);
        }

        v558 = qword_27FF0C0A8;
        if (os_log_type_enabled(v558, OS_LOG_TYPE_ERROR))
        {
          if (v55)
          {
            type = v55->_type;
          }

          else
          {
            type = 0;
          }

          LODWORD(block) = 134217984;
          *(&block + 4) = type;
          _os_log_error_impl(&dword_2621C3000, v558, OS_LOG_TYPE_ERROR, "RSError: kRSError_Runtime_DriftDetection: %ld", &block, 0xCu);
        }

        v559 = *(WeakRetained + 19);
        v560 = *(a1 + 32);
        v563 = v55;
        if (v559 && *(v559 + 177) == 1)
        {
          v564 = *(v559 + 56);
          v656[0].columns[0].i64[0] = @"timestamp";
          v565 = MEMORY[0x277CCABB0];
          objc_msgSend_timestamp(v560, v561, v562);
          v568 = objc_msgSend_numberWithDouble_(v565, v566, v567);
          *&block = v568;
          v656[0].columns[0].i64[1] = @"video_timestamp";
          v569 = MEMORY[0x277CCABB0];
          objc_msgSend_timestamp(v560, v570, v571);
          v576 = objc_msgSend_numberWithDouble_(v569, v573, v574, v572 - *(v559 + 72));
          *(&block + 1) = v576;
          v656[0].columns[1].i64[0] = @"type";
          if (v55)
          {
            objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v575, v563[2]);
          }

          else
          {
            objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v575, 0);
          }
          v577 = ;
          v658.i64[0] = v577;
          v579 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v578, &block, v656, 3);
          objc_msgSend_addObject_(v564, v580, v579);
        }

        v583 = objc_msgSend_delegate(WeakRetained, v581, v582);
        v584 = objc_opt_respondsToSelector();

        if (v584)
        {
          v585 = objc_msgSend_delegate(WeakRetained, v45, v46);
          objc_msgSend_session_didFailWithError_(v585, v586, WeakRetained, -2);
        }

        v55 = v563;
      }

LABEL_55:
      if (!objc_msgSend_isTextCoachingEnabled(*(WeakRetained + 1), v45, v46))
      {
LABEL_405:
        dispatch_semaphore_signal(*(WeakRetained + 17));

        goto LABEL_406;
      }

      v96 = *(WeakRetained + 8);
      v97 = *(a1 + 32);
      v606 = v55;
      v595 = v55;
      if (!v96)
      {
        v506 = 0;
LABEL_398:

        if (objc_msgSend_type(v506, v508, v509) != -1)
        {
          v510 = *(WeakRetained + 19);
          v511 = *(a1 + 32);
          v514 = v506;
          if (v510 && *(v510 + 177) == 1)
          {
            v515 = *(v510 + 48);
            v656[0].columns[0].i64[0] = @"timestamp";
            v516 = MEMORY[0x277CCABB0];
            objc_msgSend_timestamp(v511, v512, v513);
            v636 = objc_msgSend_numberWithDouble_(v516, v517, v518);
            *&block = v636;
            v656[0].columns[0].i64[1] = @"state";
            v519 = MEMORY[0x277CCABB0];
            v522 = objc_msgSend_state(v514, v520, v521);
            v524 = objc_msgSend_numberWithInteger_(v519, v523, v522);
            *(&block + 1) = v524;
            v656[0].columns[1].i64[0] = @"video_timestamp";
            v525 = MEMORY[0x277CCABB0];
            objc_msgSend_timestamp(v511, v526, v527);
            v531 = objc_msgSend_numberWithDouble_(v525, v529, v530, v528 - *(v510 + 72));
            v658.i64[0] = v531;
            v656[0].columns[1].i64[1] = @"type";
            v532 = MEMORY[0x277CCABB0];
            v535 = objc_msgSend_type(v514, v533, v534);
            v537 = objc_msgSend_numberWithInteger_(v532, v536, v535);
            v658.i64[1] = v537;
            v656[0].columns[2].i64[0] = @"score";
            v538 = MEMORY[0x277CCABB0];
            objc_msgSend_score(v514, v539, v540);
            v543 = objc_msgSend_numberWithFloat_(v538, v541, v542);
            v659.i64[0] = v543;
            v545 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v544, &block, v656, 5);
            objc_msgSend_addObject_(v515, v546, v545);
          }

          v549 = objc_msgSend_delegate(WeakRetained, v547, v548);
          v550 = objc_opt_respondsToSelector();

          if (v550)
          {
            v553 = objc_msgSend_delegate(WeakRetained, v551, v552);
            objc_msgSend_session_didUpdateTextCoaching_(v553, v554, WeakRetained, v514);
          }
        }

        v55 = v595;
        goto LABEL_405;
      }

      LODWORD(v653) = 12201;
      v654 = 0;
      kdebug_trace();
      v100 = objc_msgSend_camera(v97, v98, v99);
      objc_msgSend_intrinsics(v100, v101, v102);
      *locationb = v103;
      v620 = v105;
      if (fabsf(v104.f32[0] + -128.0) <= 50.0)
      {
        v608 = v104;
      }

      else
      {
        v106 = vdupq_n_s32(0x3E088889u);
        *locationb = vmulq_f32(v103, v106);
        v620 = vmulq_f32(v620, v106);
        __asm { FMOV            V1.4S, #1.0 }

        _Q1.i64[0] = vmulq_f32(v104, v106).u64[0];
        v608 = _Q1;
      }

      if (!*(v96 + 896))
      {
        v112 = objc_msgSend_date(MEMORY[0x277CBEAA8], v110, v111);
        v113 = *(v96 + 896);
        *(v96 + 896) = v112;
      }

      if (v606 && (v606->_type & 0x8000000000000000) == 0 || objc_msgSend_vioTrackingState(v97, v110, v111))
      {
        v116 = 1;
      }

      else
      {
        v117 = objc_msgSend_camera(v97, v114, v115);
        v116 = objc_msgSend_trackingState(v117, v118, v119) == 1;
      }

      v120 = v97;
      objc_msgSend_timestamp(v120, v121, v122);
      v126 = v125;
      v127 = *(v96 + 48);
      v128 = *(v96 + 40);
      if (v127 == v128)
      {
        v129 = 0;
      }

      else
      {
        v129 = 51 * (v127 - v128) - 1;
      }

      v130 = *(v96 + 64);
      v131 = *(v96 + 72) + v130;
      if (v129 == v131)
      {
        if (v130 < 0x33)
        {
          v132 = *(v96 + 56);
          v133 = *(v96 + 32);
          if (v127 - v128 < (v132 - v133))
          {
            if (v132 != v127)
            {
              operator new();
            }

            operator new();
          }

          if (v132 == v133)
          {
            v134 = 1;
          }

          else
          {
            v134 = (v132 - v133) >> 2;
          }

          sub_26223B6E4(v134);
        }

        *(v96 + 64) = v130 - 51;
        *&block = *v128;
        *(v96 + 40) = v128 + 1;
        sub_26223B72C((v96 + 32), &block);
        v128 = *(v96 + 40);
        v131 = *(v96 + 72) + *(v96 + 64);
      }

      v267 = v128[v131 / 0x33] + 80 * v131 + -4080 * (v131 / 0x33);
      *v267 = v632;
      *(v267 + 16) = v630;
      *(v267 + 32) = *obja;
      *(v267 + 48) = v625;
      *(v267 + 64) = v126;
      v268 = *(v96 + 72);
      *(v96 + 72) = v268 + 1;
      if ((v268 + 1) <= 2)
      {
        v270 = *(v96 + 40);
        v269 = *(v96 + 64);
      }

      else
      {
        v269 = *(v96 + 64) + 1;
        *(v96 + 64) = v269;
        *(v96 + 72) = v268;
        v270 = *(v96 + 40);
        if (v269 >= 0x66)
        {
          operator delete(*v270);
          v270 = (*(v96 + 40) + 8);
          *(v96 + 40) = v270;
          v269 = *(v96 + 64) - 51;
          *(v96 + 64) = v269;
        }
      }

      v271 = v270[v269 / 0x33] + 80 * v269 + -4080 * (v269 / 0x33);
      *__src = *v271;
      v598 = *(v271 + 32);
      v590 = *(v271 + 48);
      v594 = *(v271 + 16);
      v272 = *(v271 + 64);
      objc_msgSend_timestamp(v120, v123, v124);
      v275 = v274 - v272;
      v276 = 0uLL;
      v277 = 0uLL;
      if (v275 >= 0.001)
      {
        v278 = 0;
        v279 = vsubq_f32(v625, v590);
        *v273.i32 = v275;
        v280 = vdupq_lane_s32(v273, 0);
        v281 = v632;
        v281.i32[3] = 0;
        v282 = v630;
        v282.i32[3] = 0;
        v283 = *obja;
        v283.i32[3] = 0;
        v284 = vzip1q_s32(v632, *obja);
        v285 = vzip1q_s32(v630, 0);
        v286 = vzip2q_s32(v284, v285);
        v287 = vzip1q_s32(*__src, v594);
        v287.i32[2] = v598.i32[0];
        v288 = vzip2q_s32(*__src, v594);
        v288.i32[2] = v598.i32[2];
        v289 = vzip2q_s32(vzip1q_s32(*__src, v598), vdupq_lane_s32(*v594.i8, 1));
        v656[0].columns[0] = v281;
        v656[0].columns[1] = v282;
        v656[0].columns[2] = v283;
        do
        {
          *(&block + v278 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v287, COERCE_FLOAT(*&v656[0].columns[v278])), v289, *v656[0].columns[v278].f32, 1), v288, v656[0].columns[v278], 2);
          ++v278;
        }

        while (v278 != 3);
        v290 = vdivq_f32(v279, v280);
        v291 = vzip1q_s32(vzip2q_s32(v632, *obja), vdupq_laneq_s32(v630, 2));
        v292 = vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(v284, v285), v290.f32[0]), v286, *v290.f32, 1);
        v293 = v658;
        v294 = *&v659.i32[2] + (*&block + *&v658.i32[1]);
        v591 = v273;
        if (v294 >= 0.0)
        {
          v301 = sqrtf(v294 + 1.0);
          v302 = v301 + v301;
          v303 = vrecpe_f32(COERCE_UNSIGNED_INT(v301 + v301));
          v304 = vmul_f32(v303, vrecps_f32(COERCE_UNSIGNED_INT(v301 + v301), v303));
          v305 = vmul_f32(v304, vrecps_f32(COERCE_UNSIGNED_INT(v301 + v301), v304)).f32[0];
          v311.f32[0] = (*&v658.i32[2] - *&v659.i32[1]) * v305;
          v312 = (*v659.i32 - *(&block + 2)) * v305;
          v313 = (*(&block + 1) - *v658.i32) * v305;
          v293.f32[0] = v302 * 0.25;
        }

        else
        {
          if (*&block < *&v658.i32[1] || *&block < *&v659.i32[2])
          {
            v296 = 1.0 - *&block;
            if (*&v658.i32[1] >= *&v659.i32[2])
            {
              v315 = sqrtf(*&v658.i32[1] + (v296 - *&v659.i32[2]));
              v316 = v315 + v315;
              v317 = vrecpe_f32(COERCE_UNSIGNED_INT(v315 + v315));
              v318 = vmul_f32(v317, vrecps_f32(COERCE_UNSIGNED_INT(v315 + v315), v317));
              v310 = vmul_f32(v318, vrecps_f32(COERCE_UNSIGNED_INT(v315 + v315), v318)).f32[0];
              v311.f32[0] = (*(&block + 1) + *v658.i32) * v310;
              v312 = v316 * 0.25;
              v313 = (*&v658.i32[2] + *&v659.i32[1]) * v310;
              v314 = *v659.i32 - *(&block + 2);
            }

            else
            {
              v297 = sqrtf(*&v659.i32[2] + (v296 - *&v658.i32[1]));
              v298 = v297 + v297;
              v299 = vrecpe_f32(COERCE_UNSIGNED_INT(v297 + v297));
              v300 = vmul_f32(v299, vrecps_f32(COERCE_UNSIGNED_INT(v297 + v297), v299));
              v310 = vmul_f32(v300, vrecps_f32(COERCE_UNSIGNED_INT(v297 + v297), v300)).f32[0];
              v311.f32[0] = (*(&block + 2) + *v659.i32) * v310;
              v312 = (*&v658.i32[2] + *&v659.i32[1]) * v310;
              v313 = v298 * 0.25;
              v314 = *(&block + 1) - *v658.i32;
            }
          }

          else
          {
            v306 = sqrtf(*&block + ((1.0 - *&v658.i32[1]) - *&v659.i32[2]));
            *&v307 = v306 + v306;
            v308 = vrecpe_f32(v307);
            v309 = vmul_f32(v308, vrecps_f32(v307, v308));
            v310 = vmul_f32(v309, vrecps_f32(v307, v309)).f32[0];
            v311.f32[0] = *&v307 * 0.25;
            v312 = (*(&block + 1) + *v658.i32) * v310;
            v313 = (*(&block + 2) + *v659.i32) * v310;
            v314 = *&v658.i32[2] - *&v659.i32[1];
          }

          v293.f32[0] = v314 * v310;
        }

        *__srca = vmlaq_laneq_f32(v292, v291, v290, 2);
        v311.f32[1] = v312;
        v311.i64[1] = __PAIR64__(v293.u32[0], LODWORD(v313));
        v290.i64[0] = 0;
        v319 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v290, v293), 0), vnegq_f32(v311), v311);
        v320 = vmulq_f32(v319, v319);
        v599 = v319;
        v321 = atan2f(sqrtf(v320.f32[2] + vaddv_f32(*v320.f32)), v319.f32[3]);
        v322 = v321 + v321;
        v323 = (v321 + v321);
        if (v323 <= 0.001)
        {
          v324 = v323 * v323 / 12.0 + 2.0 + pow(v323, 4.0) * 7.0 / 2880.0;
        }

        else
        {
          v324 = v322 / sinf(v322 * 0.5);
        }

        v277 = vmulq_f32(vdivq_f32(vmulq_n_f32(v599, v324), vdupq_lane_s32(v591, 0)), vdupq_n_s32(0x3DCCCCCDu));
        v276 = *__srca;
      }

      *(v96 + 192) = v277;
      *(v96 + 176) = v276;

      v600 = *(v96 + 176);
      *__srcb = *(v96 + 192);
      v327 = objc_msgSend_rawFeaturePoints(v120, v325, v326);
      v330 = objc_msgSend_count(v327, v328, v329);

      LODWORD(block) = fminf(fmaxf(v330 / *(v96 + 288), -1.0), 1.0);
      v331 = vmulq_f32(v600, v600);
      _NF = sqrtf(v331.f32[2] + vaddv_f32(*v331.f32)) < 0.2;
      v332 = vmulq_f32(*__srcb, *__srcb);
      v333 = sqrtf(v332.f32[2] + vaddv_f32(*v332.f32));
      if (!_NF || v333 >= 0.5)
      {
        sub_26230B7F0((v96 + 344), &block);
      }

      v335 = *(v96 + 384);
      if (!v335)
      {
        v336 = *(v96 + 360);
        v337 = *(v96 + 352);
        if (v336 == v337)
        {
          v338 = 0;
        }

        else
        {
          v338 = ((v336 - v337) << 7) - 1;
        }

        v339 = *(v96 + 376);
        if (v338 == v339)
        {
          sub_26230B8CC((v96 + 344));
          v337 = *(v96 + 352);
          v340 = *(v96 + 384);
          v339 = *(v96 + 376) + v340;
          v335 = v340 + 1;
        }

        else
        {
          v335 = 1;
        }

        *(*(v337 + ((v339 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v339 & 0x3FF)) = 1056964608;
        *(v96 + 384) = v335;
      }

      if (v335 >= 2)
      {
        ++*(v96 + 376);
        *(v96 + 384) = v335 - 1;
        sub_26230B878(v96 + 344);
      }

      std::mutex::lock((v96 + 936));
      v346 = v620;
      v346.i32[3] = 0;
      v621 = v346;
      v347 = *locationb;
      HIDWORD(v347) = 0;
      *locationd = v347;
      v348 = v608;
      v348.i32[3] = 0;
      v610 = v348;
      if ((*(v96 + 1000) & 0x8000000000000000) == 0)
      {
        block = v632;
        v658 = v630;
        v659 = *obja;
        v660 = v625;
        v656[0].columns[0] = v621;
        v656[0].columns[1] = *locationd;
        v656[0].columns[2] = v348;
        *v349.i64 = sub_262240264(&block, v656, 100, 100, *v348.i64, *v621.i64, v342, v343, v344, v345);
        v633 = v349;
        v352 = objc_msgSend_type(*(v96 + 856), v350, v351);
        v355 = vmulq_f32(v633, xmmword_2623A79B0);
        v356 = v355.f32[2] + vaddv_f32(*v355.f32);
        if (v352 == -1 && v356 > 0.5)
        {
          v357 = [RSTextCoachingSignal alloc];
          if (v357)
          {
            v357 = sub_2622E743C(v357, 0, 1.0);
          }

          v358 = *(v96 + 856);
          *(v96 + 856) = v357;
        }

        if (objc_msgSend_type(*(v96 + 864), v353, v354) == -1 && v356 < -0.5)
        {
          v359 = [RSTextCoachingSignal alloc];
          if (v359)
          {
            v359 = sub_2622E743C(v359, 0, 1.0);
          }

          v360 = *(v96 + 864);
          *(v96 + 864) = v359;
        }
      }

      sub_262346BD0(v96, 0, v341);
      if (v116 && !*(v96 + 1000))
      {
        sub_26230C4DC((v96 + 288));
        v363 = sub_26230BD80(v96 + 16);
      }

      v366 = 1.0 / *(v96 + 920);
      if (objc_msgSend_type(*(v96 + 872), v361, v362, v363) == 3 || objc_msgSend_type(*(v96 + 872), v364, v365) == 1)
      {
        v366 = fmaxf(v366, 0.8);
      }

      if (*(v96 + 912))
      {
        v367 = *(v96 + 872);
        if (v367)
        {
          v368 = *(v96 + 1000);
          if (v368 == objc_msgSend_state(v367, v364, v365))
          {
            v371 = objc_msgSend_date(MEMORY[0x277CBEAA8], v369, v370);
            objc_msgSend_timeIntervalSinceDate_(v371, v372, *(v96 + 912));
            v374 = v373 < v366;

            if (v374)
            {
              v379 = objc_msgSend_copy(*(v96 + 872), v375, v376);
LABEL_388:
              if (v379)
              {
                v379[3] = *(v96 + 1000);
              }

              if (*(v96 + 872) && (v496 = objc_msgSend_type(v379, v377, v378), v496 == objc_msgSend_type(*(v96 + 872), v497, v498)) && (v501 = objc_msgSend_state(v379, v499, v500), v501 == objc_msgSend_state(*(v96 + 872), v502, v503)))
              {
                v504 = [RSTextCoachingSignal alloc];
                if (v504)
                {
                  v505 = sub_2622E743C(v504, -1, 1.0);
                  v506 = v505;
                  if (v505)
                  {
                    *(v505 + 3) = *(v96 + 1000);
                  }
                }

                else
                {
                  v506 = 0;
                }
              }

              else
              {
                v506 = v379;
              }

              std::mutex::unlock((v96 + 936));
              v507 = *(v96 + 872);
              *(v96 + 872) = v379;

              sub_2621CD534(&v653);
              goto LABEL_398;
            }
          }
        }
      }

      v640 = v621;
      *__p = *locationd;
      v642 = v610;
      v380 = v120;
      v634 = v606;
      v379 = 0;
      v383 = *(v96 + 1000);
      if (v383 > 0)
      {
        switch(v383)
        {
          case 1:
            v394 = objc_msgSend_copy(*(v96 + 856), v381, v382);
            break;
          case 2:
            v394 = objc_msgSend_copy(*(v96 + 864), v381, v382);
            break;
          case 3:
            v384 = sub_26230CE98(v96 + 464, v380);
            LODWORD(v385) = *(v96 + 568);
            v631 = v384;
            v386 = sub_26230B27C(v96 + 16, v380, &v640, v385);
            v389 = sub_26230BEC8(v96 + 288, v380);
            if (v606 && (v634->_type & 0x8000000000000000) == 0 || objc_msgSend_vioTrackingState(v380, v387, v388))
            {
              v390 = 1;
            }

            else
            {
              v475 = objc_msgSend_camera(v380, v387, v388);
              v390 = objc_msgSend_trackingState(v475, v476, v477) == 1;
            }

            v478 = objc_msgSend_array(MEMORY[0x277CBEB18], v387, v388);
            objc_msgSend_addObject_(v478, v479, v386);
            objc_msgSend_addObject_(v478, v480, v631);
            v481 = vmulq_f32(*(v96 + 176), *(v96 + 176));
            v482 = vmulq_f32(*(v96 + 192), *(v96 + 192));
            v483 = sub_26230D46C(v96 + 640, v380, v390, sqrtf(v481.f32[2] + vaddv_f32(*v481.f32)), sqrtf(v482.f32[2] + vaddv_f32(*v482.f32)));

            v486 = v483;
            if (v483)
            {
              objc_msgSend_addObject_(v478, v484, v483);
            }

            v487 = objc_msgSend_date(MEMORY[0x277CBEAA8], v484, v485);
            objc_msgSend_timeIntervalSinceDate_(v487, v488, *(v96 + 896));
            v490 = v489 < 1.0;

            if (!v490)
            {
              objc_msgSend_addObject_(v478, v491, v389);
            }

            v379 = sub_26230A9D4(v478);

            goto LABEL_386;
          default:
LABEL_387:

            v494 = objc_msgSend_date(MEMORY[0x277CBEAA8], v492, v493);
            v495 = *(v96 + 912);
            *(v96 + 912) = v494;

            goto LABEL_388;
        }

        v379 = v394;
        if (v394)
        {
          *(v394 + 16) = 0;
        }

        goto LABEL_387;
      }

      if (v383 == -1)
      {
        v395 = [RSTextCoachingSignal alloc];
        if (v395)
        {
          v379 = sub_2622E743C(v395, 0, 1.0);
        }

        else
        {
          v379 = 0;
        }

        goto LABEL_387;
      }

      if (v383)
      {
        goto LABEL_387;
      }

      if (v606 && (v634->_type & 0x8000000000000000) == 0 || objc_msgSend_vioTrackingState(v380, v381, v382))
      {
        v393 = 1;
      }

      else
      {
        v396 = objc_msgSend_camera(v380, v391, v392);
        v393 = objc_msgSend_trackingState(v396, v397, v398) == 1;
      }

      v399 = sub_26230CE98(v96 + 464, v380);
      v400 = sub_26230BEC8(v96 + 288, v380);
      LODWORD(v401) = *(v96 + 568);
      v631 = sub_26230B27C(v96 + 16, v380, &v640, v401);
      v404 = objc_msgSend_type(v631, v402, v403);
      v405 = 0;
      if (v404 == 1)
      {
        v406 = vmulq_f32(*(v96 + 176), *(v96 + 176));
        v407 = vmulq_f32(*(v96 + 192), *(v96 + 192));
        v405 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v406, v406, 8uLL), *&vextq_s8(v407, v407, 8uLL)), vadd_f32(vzip1_s32(*v406.i8, *v407.i8), vzip2_s32(*v406.i8, *v407.i8))));
      }

      v622 = v405;
      v408 = *(v96 + 392);
      v409 = *(v96 + 396);
      v410 = *(v96 + 568);
      v626 = v380;
      v413 = objc_msgSend_array(MEMORY[0x277CBEB18], v411, v412);
      objb = objc_msgSend_date(MEMORY[0x277CBEAA8], v414, v415);
      locatione = (v96 + 776);
      if (!*(v96 + 776))
      {
        objc_storeStrong(locatione, objb);
      }

      v416 = 1.0 / (expf(-(*(v96 + 820) + (*(v96 + 816) * v410))) + 1.0);
      if (v416 > 0.5)
      {
        v417 = [RSTextCoachingSignal alloc];
        if (v417)
        {
          v419 = sub_2622E743C(v417, 2, v416);
          objc_msgSend_addObject_(v413, v420, v419);
        }

        else
        {
          v419 = 0;
          objc_msgSend_addObject_(v413, v418, 0);
        }
      }

      v623 = sub_26230D46C(v96 + 640, v626, v393, v622.f32[0], v622.f32[1]);
      if (v623)
      {
        objc_msgSend_addObject_(v413, v421, v623);
      }

      v422 = expf(-(*(v96 + 812) + (*(v96 + 808) * v408)));
      if (v409 < 25.0)
      {
        v423 = 1.0 / (v422 + 1.0);
        if (v423 > 0.5)
        {
          v424 = [RSTextCoachingSignal alloc];
          if (v424)
          {
            v426 = sub_2622E743C(v424, 3, v423);
            objc_msgSend_addObject_(v413, v427, v426);
          }

          else
          {
            v426 = 0;
            objc_msgSend_addObject_(v413, v425, 0);
          }
        }
      }

      *&v638 = 1.0 / (expf(-(*(v96 + 828) + (*(v96 + 824) * v409))) + 1.0);
      sub_26230B7F0((v96 + 680), &v638);
      v430 = *(v96 + 720);
      if (v430 >= 6)
      {
        v431 = *(v96 + 712);
        *(v96 + 720) = v430 - 1;
        *(v96 + 712) = v431 + 1;
        sub_26230B878(v96 + 680);
      }

      v432 = *(v96 + 688);
      if (*(v96 + 696) == v432)
      {
        v437 = *(v96 + 720);
      }

      else
      {
        v433 = *(v96 + 712);
        v434 = (v432 + 8 * (v433 >> 10));
        v435 = *v434;
        v436 = &(*v434)[v433 & 0x3FF];
        v437 = *(v96 + 720);
        v438 = *(v432 + (((v437 + v433) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v437 + v433) & 0x3FF);
        if (v436 != v438)
        {
          v439 = 0.0;
          do
          {
            v440 = *v436++;
            v441 = v440;
            if (v436 - v435 == 4096)
            {
              v442 = v434[1];
              ++v434;
              v435 = v442;
              v436 = v442;
            }

            v439 = v439 + v441;
          }

          while (v436 != v438);
LABEL_350:
          v443 = v439 / v437;
          *&v638 = v443;
          if (!objc_msgSend_count(v413, v428, v429) && v408 > 0.22 && v443 > 0.5)
          {
            v446 = [RSTextCoachingSignal alloc];
            if (v446)
            {
              v448 = sub_2622E743C(v446, 5, v443);
              objc_msgSend_addObject_(v413, v449, v448);
            }

            else
            {
              v448 = 0;
              objc_msgSend_addObject_(v413, v447, 0);
            }
          }

          if (!objc_msgSend_count(v413, v444, v445))
          {
            v452 = [RSTextCoachingSignal alloc];
            if (v452)
            {
              v454 = sub_2622E743C(v452, 0, 1.0);
              objc_msgSend_addObject_(v413, v455, v454);
            }

            else
            {
              v454 = 0;
              objc_msgSend_addObject_(v413, v453, 0);
            }
          }

          v456 = *(v96 + 784);
          if (v456 && objc_msgSend_type(v456, v450, v451))
          {
            memset(v656, 0, 64);
            v457 = v413;
            v459 = objc_msgSend_countByEnumeratingWithState_objects_count_(v457, v458, v656, &block, 16);
            if (v459)
            {
              v460 = *v656[0].columns[1].i64[0];
              while (2)
              {
                for (i = 0; i != v459; ++i)
                {
                  if (*v656[0].columns[1].i64[0] != v460)
                  {
                    objc_enumerationMutation(v457);
                  }

                  v462 = *(v656[0].columns[0].i64[1] + 8 * i);
                  v465 = objc_msgSend_type(v462, v463, v464);
                  if (v465 == objc_msgSend_type(*(v96 + 784), v466, v467))
                  {
                    v470 = *(v96 + 784);
                    *(v96 + 784) = v462;

                    goto LABEL_374;
                  }
                }

                v459 = objc_msgSend_countByEnumeratingWithState_objects_count_(v457, v468, v656, &block, 16);
                if (v459)
                {
                  continue;
                }

                break;
              }
            }

            v469 = sub_26230A9D4(v457);
          }

          else
          {
            v469 = sub_26230A9D4(v413);
          }

          v457 = *(v96 + 784);
          *(v96 + 784) = v469;
LABEL_374:

          objc_msgSend_timeIntervalSinceDate_(objb, v471, *locatione);
          if (v472 >= 1.0)
          {
            v474 = *(v96 + 784);
          }

          else
          {
            v473 = [RSTextCoachingSignal alloc];
            if (!v473)
            {
              v379 = 0;
              goto LABEL_379;
            }

            v474 = sub_2622E743C(v473, 0, 1.0);
          }

          v379 = v474;
LABEL_379:

LABEL_386:
          goto LABEL_387;
        }
      }

      v439 = 0.0;
      goto LABEL_350;
    }

    v619 = v47;
    *__p = 0u;
    v642 = 0u;
    v645 = v632;
    v646 = v630;
    v647 = *obja;
    v648 = v625;
    v640.i64[0] = objc_msgSend_rawFeaturePoints(v51, v53, v54);
    objc_msgSend_timestamp(v51, v58, v59);
    v640.i64[1] = v60;
    __p[0] = objc_msgSend_camera(v51, v61, v62);
    *&v643 = objc_msgSend_vioTrackingState(v51, v63, v64);
    v644 = v625;
    v67 = v47;
    if (*(v47 + 20) == 1)
    {
      v68 = objc_msgSend_colorBuffer(v51, v65, v66);
      v69 = v68;
      v67 = v47;
      if (v68)
      {
        Width = CVPixelBufferGetWidth(v68);
        locationa = CVPixelBufferGetHeight(v69);
        sub_262236864(&block, v69);
        v588 = v52;
        v592 = v51;
        v596 = v49;
        v601 = v55;
        if (locationa)
        {
          v71 = 0;
          for (j = 0; j < locationa; j += 16)
          {
            if (Width)
            {
              v73 = 0;
              v74 = j;
              do
              {
                v75 = v73;
                if (v75 < 0)
                {
                  v76.i8[0] = 0;
                }

                else
                {
                  v76 = 0;
                  if (SDWORD2(block) > v75 && (v74 & 0x80000000) == 0 && SHIDWORD(block) > v74)
                  {
                    v76.i32[0] = *(v658.i64[0] + v658.i64[1] * v74 + 4 * v75);
                    v76.i8[0] = vmovl_u8(v76).u8[0];
                  }
                }

                if (v71 >= v642.i64[1])
                {
                  v77 = __p[1];
                  v78 = (v71 - __p[1]);
                  v79 = v71 - __p[1] + 1;
                  if (v79 < 0)
                  {
                    sub_2621CBEB0();
                  }

                  v80 = v642.i64[1] - __p[1];
                  if (2 * (v642.i64[1] - __p[1]) > v79)
                  {
                    v79 = 2 * v80;
                  }

                  if (v80 >= 0x3FFFFFFFFFFFFFFFLL)
                  {
                    v81 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v81 = v79;
                  }

                  if (v81)
                  {
                    operator new();
                  }

                  *v78 = v76.i8[0];
                  v71 = v78 + 1;
                  memcpy(0, v77, v78);
                  __p[1] = 0;
                  v642.i64[1] = 0;
                  if (v77)
                  {
                    operator delete(v77);
                  }
                }

                else
                {
                  *v71++ = v76.i8[0];
                }

                v642.i64[0] = v71;
                v73 += 16;
              }

              while (v73 < Width);
            }
          }
        }

        CVPixelBufferUnlockBaseAddress(block, 1uLL);
        v55 = v601;
        v49 = v596;
        v51 = v592;
        v52 = v588;
        v67 = v619;
      }
    }

    v82 = *(v67 + 24);
    v84 = *(v67 + 32);
    v83 = (v67 + 24);
    if (0x8E38E38E38E38E39 * ((v84 - v82) >> 4) == v83[12])
    {
      if (v82 + 144 == v84)
      {
        v93 = v82;
        v95 = v619;
      }

      else
      {
        do
        {
          v85 = *(v82 + 144);
          *(v82 + 144) = 0;
          v86 = *v82;
          *v82 = v85;

          *(v82 + 8) = *(v82 + 152);
          v87 = *(v82 + 160);
          *(v82 + 160) = 0;
          v88 = *(v82 + 16);
          *(v82 + 16) = v87;

          v89 = *(v82 + 24);
          if (v89)
          {
            *(v82 + 32) = v89;
            operator delete(v89);
            *(v82 + 24) = 0;
            *(v82 + 32) = 0;
            *(v82 + 40) = 0;
          }

          *(v82 + 24) = *(v82 + 168);
          *(v82 + 40) = *(v82 + 184);
          *(v82 + 176) = 0;
          *(v82 + 184) = 0;
          *(v82 + 168) = 0;
          v90 = *(v82 + 240);
          *(v82 + 80) = *(v82 + 224);
          *(v82 + 96) = v90;
          v91 = *(v82 + 272);
          *(v82 + 112) = *(v82 + 256);
          *(v82 + 128) = v91;
          v92 = *(v82 + 208);
          v93 = v82 + 144;
          v94 = v82 + 288;
          *(v82 + 48) = *(v82 + 192);
          *(v82 + 64) = v92;
          v82 += 144;
        }

        while (v94 != v84);
        v95 = v619;
        v84 = *(v619 + 32);
      }

      while (v84 != v93)
      {
        v84 -= 144;
        sub_262232668(v84);
      }

      *(v95 + 32) = v93;
      v135 = v95;
    }

    else
    {
      v93 = v84;
      v135 = v619;
    }

    v136 = *(v135 + 40);
    if (v93 >= v136)
    {
      v146 = 0x8E38E38E38E38E39 * ((v93 - *v83) >> 4);
      v147 = v146 + 1;
      if (v146 + 1 > 0x1C71C71C71C71C7)
      {
        sub_2621CBEB0();
      }

      v148 = 0x8E38E38E38E38E39 * ((v136 - *v83) >> 4);
      if (2 * v148 > v147)
      {
        v147 = 2 * v148;
      }

      if (v148 >= 0xE38E38E38E38E3)
      {
        v149 = 0x1C71C71C71C71C7;
      }

      else
      {
        v149 = v147;
      }

      v659.i64[0] = v83;
      if (v149)
      {
        if (v149 <= 0x1C71C71C71C71C7)
        {
          operator new();
        }

        sub_2621C6A34();
      }

      v150 = 144 * v146;
      *&block = 0;
      *(&block + 1) = v150;
      v658 = v150;
      *v150 = v640.i64[0];
      *(v150 + 8) = v640.i64[1];
      *(v150 + 16) = __p[0];
      *(v150 + 32) = 0;
      *(v150 + 40) = 0;
      *(v150 + 24) = 0;
      sub_262236940((v150 + 24), __p[1], v642.i64[0], v642.i64[0] - __p[1]);
      v151 = v644;
      *(v150 + 48) = v643;
      *(v150 + 64) = v151;
      v152 = v648;
      *(v150 + 112) = v647;
      *(v150 + 128) = v152;
      v153 = v646;
      *(v150 + 80) = v645;
      *(v150 + 96) = v153;
      v658.i64[0] += 144;
      v155 = *(v619 + 24);
      v154 = *(v619 + 32);
      v156 = (*(&block + 1) + v155 - v154);
      if (v155 != v154)
      {
        v157 = *(v619 + 24);
        v158 = (*(&block + 1) + v155 - v154);
        do
        {
          v159 = *v157;
          *v157 = 0;
          *v158 = v159;
          *(v158 + 1) = v157[1];
          v160 = v157[2];
          v157[2] = 0;
          *(v158 + 4) = 0;
          *(v158 + 5) = 0;
          *(v158 + 2) = v160;
          *(v158 + 3) = 0;
          *(v158 + 24) = *(v157 + 3);
          *(v158 + 5) = v157[5];
          v157[4] = 0;
          v157[5] = 0;
          v157[3] = 0;
          v161 = *(v157 + 8);
          v163 = *(v157 + 5);
          v162 = *(v157 + 6);
          *(v158 + 7) = *(v157 + 7);
          *(v158 + 8) = v161;
          *(v158 + 5) = v163;
          *(v158 + 6) = v162;
          v164 = *(v157 + 4);
          *(v158 + 3) = *(v157 + 3);
          *(v158 + 4) = v164;
          v157 += 18;
          v158 += 144;
        }

        while (v157 != v154);
        do
        {
          sub_262232668(v155);
          v155 += 144;
        }

        while (v155 != v154);
      }

      v145 = v619;
      v165 = *(v619 + 24);
      *(v619 + 24) = v156;
      v166 = *(v619 + 40);
      locationf = v658.i64[0];
      *(v619 + 32) = v658;
      v658.i64[0] = v165;
      v658.i64[1] = v166;
      *(&block + 1) = v165;
      *&block = v165;
      sub_2622369BC(&block);
      v144 = locationf;
    }

    else
    {
      *v93 = v640.i64[0];
      *(v93 + 8) = v640.i64[1];
      v137 = __p[0];
      *(v93 + 24) = 0;
      *(v93 + 16) = v137;
      *(v93 + 32) = 0;
      *(v93 + 40) = 0;
      sub_262236940((v93 + 24), __p[1], v642.i64[0], v642.i64[0] - __p[1]);
      v140 = v644;
      *(v93 + 48) = v643;
      *(v93 + 64) = v140;
      v141 = v645;
      v142 = v646;
      v143 = v648;
      *(v93 + 112) = v647;
      *(v93 + 128) = v143;
      *(v93 + 80) = v141;
      *(v93 + 96) = v142;
      v144 = v93 + 144;
      v145 = v619;
      *(v619 + 32) = v144;
    }

    *(v145 + 32) = v144;
    if (*(v145 + 16) == 1)
    {
      *(v145 + 16) = 1;
    }

    else
    {
      v167 = objc_msgSend_camera(v51, v138, v139);
      *(v619 + 16) = objc_msgSend_trackingState(v167, v168, v169) == 2;

      v145 = v619;
    }

    if (*(v145 + 17))
    {
      *(v145 + 17) = 1;
      if (!v52)
      {
        goto LABEL_115;
      }

      if (*(v145 + 19) == 1)
      {
        *(v145 + 19) = 1;
LABEL_115:
        if (*(v145 + 16) == 1)
        {
          v173 = *(v145 + 24);
          v174 = 0x8E38E38E38E38E39 * ((*(v145 + 32) - v173) >> 4);
          v175 = v174 - 2;
          if (v174 < 2)
          {
            v176 = 0;
            v177 = v619;
            goto LABEL_130;
          }

          v179 = sub_262236750(v173 + 144 * v174 - 144, v173 + 144 * v174 - 288, v139).n128_u64[0];
          if (*&v179 >= *(&v179 + 1))
          {
            v182 = *&v179;
          }

          else
          {
            v182 = *(&v179 + 1);
          }

          v183 = v181;
          if (v180 >= v181)
          {
            v183 = v180;
          }

          v185 = *(v619 + 48);
          v184 = *(v619 + 52);
          v186 = (((v182 - v185) / v185) * 0.5) + 0.5;
          if (v186 > 1.0)
          {
            v186 = 1.0;
          }

          _NF = v182 < v185;
          v187 = 0.0;
          if (!_NF)
          {
            v187 = v186;
          }

          if (v183 < v184)
          {
            goto LABEL_129;
          }

          v220 = (((v183 - v184) / v184) * 0.5) + 0.5;
          if (v220 > 1.0)
          {
            v220 = 1.0;
          }

          v221 = v187 >= v220 ? v187 : v220;
          if (v187 < 0.5 || v220 < 0.5)
          {
LABEL_129:
            v176 = 0;
            v177 = v619;
            *(v619 + 128) = 0;
            goto LABEL_130;
          }

          v222 = v174 - 1;
          if (objc_msgSend_count(*(*v83 + 144 * v222), v138, v139) && (v223 = *v83, !*(*v83 + 144 * v222 + 48)))
          {
            *(v619 + 128) = 0;
            if (objc_msgSend_count(*(v223 + 144 * v175), v138, v139) >= 0xA && objc_msgSend_count(*(*v83 + 144 * v222), v138, v139) >= 0xA)
            {
              sub_2622363A0(&block, *(*v83 + 144 * v175));
              sub_2622363A0(v656, *(*v83 + 144 * v222));
              sub_262235140(v619 + 8);
            }

            v177 = v619;
            if (*(v619 + 60) >= 0.0)
            {
              goto LABEL_167;
            }
          }

          else
          {
            v177 = v619;
            v224 = *(v619 + 128) + 1;
            *(v619 + 128) = v224;
            if (v224 < *(v619 + 100))
            {
LABEL_167:
              v176 = 0;
              goto LABEL_130;
            }
          }

          v176 = (LODWORD(v221) << 32) | 1;
LABEL_130:
          v188 = *(v177 + 24);
          v189 = 0x8E38E38E38E38E39 * ((*(v177 + 32) - v188) >> 4);
          if (*(v177 + 64) >= v189)
          {
            v217 = 0;
          }

          else
          {
            v589 = v52;
            v593 = v51;
            v597 = v49;
            v602 = v55;
            block = 0uLL;
            v658.i64[0] = 0;
            memset(v656, 0, 24);
            v653 = 0;
            v654 = 0;
            v655 = 0;
            if (v189 < 2)
            {
              v190 = 0;
              v215 = 0;
              v216 = 0;
            }

            else
            {
              v190 = 0;
              v191 = -1;
              for (k = 1; k < v189; ++k)
              {
                v193 = v191 + v189;
                v194 = v191 + v189;
                if (objc_msgSend_count(*(v188 + 144 * (v191 + v189)), v138, v139))
                {
                  v195 = *(*v83 + 144 * v194 + 48) != 0;
                }

                else
                {
                  v195 = 1;
                }

                v652 = v195;
                sub_2621DC7FC(&block, &v652);
                v196 = v193 - 1;
                v197 = *v83 + 144 * v194;
                v198 = *v83 + 144 * v196;
                v607 = vsubq_f32(*(v197 + 64), *(v198 + 64)).u64[0];
                v609 = *(v198 + 64);
                locationc = vmul_f32(v607, v607);
                v199 = *(v197 + 8) - *(v198 + 8);
                v651 = (sqrtf(vaddv_f32(locationc)) / fabsf(v199)) + 0.00000011921;
                sub_2621C8F2C(v656, &v651);
                sub_262236750(*v83 + 144 * v194, *v83 + 144 * v196, v200);
                v650 = v201;
                v649 = v202;
                if (v201 >= v202)
                {
                  v203 = &v650;
                }

                else
                {
                  v203 = &v649;
                }

                sub_2621C8F2C(&v653, v203);
                v177 = v619;
                v188 = *(v619 + 24);
                if (*(v619 + 64) > k)
                {
                  v204 = vsub_f32(*&v609, *(v188 + 144 * v194 - 224));
                  v205 = vaddv_f32(vmul_f32(v607, v204));
                  v206 = vmul_f32(v204, v204);
                  v207 = vsqrt_f32(vadd_f32(vzip1_s32(locationc, v206), vzip2_s32(locationc, v206)));
                  v208 = v205 / fmaxf(vmul_lane_f32(v207, v207, 1).f32[0], 1.1755e-38);
                  if (v208 <= 1.0)
                  {
                    v209 = v208;
                  }

                  else
                  {
                    v209 = 1.0;
                  }

                  if (v208 >= -1.0)
                  {
                    v210 = v209;
                  }

                  else
                  {
                    v210 = -1.0;
                  }

                  v211 = acosf(v210) * 180.0 / 3.14159274;
                  v212 = v190;
                  v213 = (v190 >> 2) + 1;
                  if (v213 >> 62)
                  {
                    sub_2621CBEB0();
                  }

                  if (v190 >> 2 != -1)
                  {
                    sub_2621C7F54(v213);
                  }

                  v214 = (4 * (v190 >> 2));
                  *v214 = v211;
                  v190 = (v214 + 1);
                  memcpy(0, 0, v212);
                  v188 = *v83;
                }

                v189 = 0x8E38E38E38E38E39 * ((*(v619 + 32) - v188) >> 4);
                --v191;
              }

              v215 = *(&block + 1);
              v216 = block;
            }

            v218 = v215 & 0x3F;
            if (v215 > 0x3F || (v215 & 0x3F) != 0)
            {
              v225 = 0;
              v226 = &v216[v215 >> 6];
              v219 = 1;
              v227 = v216;
              while (((*v227 >> v225) & 1) != 0)
              {
                v227 += v225 == 63;
                if (v225 == 63)
                {
                  v225 = 0;
                }

                else
                {
                  ++v225;
                }

                if (v227 == v226 && v225 == v218)
                {
                  goto LABEL_180;
                }
              }

              v219 = 0;
            }

            else
            {
              v219 = 1;
            }

LABEL_180:
            if (v190)
            {
              v229 = 1;
              v230 = 0;
              while (*v230 < *(v177 + 68))
              {
                if (++v230 == v190)
                {
                  goto LABEL_187;
                }
              }

              v229 = 0;
            }

            else
            {
              v229 = 1;
            }

LABEL_187:
            v231 = v656[0].columns[0].i64[0];
            if (v656[0].columns[0].i64[0] == v656[0].columns[0].i64[1])
            {
              v232 = 1;
            }

            else
            {
              v232 = 1;
              v233 = v656[0].columns[0].i64[0];
              while (*v233 > *(v177 + 72))
              {
                if (++v233 == v656[0].columns[0].i64[1])
                {
                  goto LABEL_194;
                }
              }

              v232 = 0;
            }

LABEL_194:
            if (v653 == v654)
            {
LABEL_198:
              v234 = 0;
            }

            else
            {
              v234 = 1;
              v235 = v653;
              while (*v235 <= *(v177 + 76))
              {
                if (++v235 == v654)
                {
                  goto LABEL_198;
                }
              }
            }

            v236 = v656[0].columns[0].i64[0];
            if (v656[0].columns[0].i64[0] != v656[0].columns[0].i64[1])
            {
              v237 = v656[0].columns[0].i64[0] + 4;
              v236 = v656[0].columns[0].i64[0];
              if (v656[0].columns[0].i64[0] + 4 != v656[0].columns[0].i64[1])
              {
                v238 = *v656[0].columns[0].i64[0];
                v236 = v656[0].columns[0].i64[0];
                v239 = (v656[0].columns[0].i64[0] + 4);
                do
                {
                  v240 = *v239++;
                  v241 = v240;
                  if (v238 < v240)
                  {
                    v238 = v241;
                    v236 = v237;
                  }

                  v237 = v239;
                }

                while (v239 != v656[0].columns[0].i64[1]);
              }
            }

            v242 = *(v177 + 72);
            if (*v236 >= v242)
            {
              v244 = (((*v236 - v242) / v242) * 0.5) + 0.5;
              if (v244 > 1.0)
              {
                v244 = 1.0;
              }

              v243 = LODWORD(v244) << 32;
            }

            else
            {
              v243 = 0;
            }

            v245 = v232 & v234;
            if (v653)
            {
              operator delete(v653);
            }

            v246 = v219 & v229;
            if (v231)
            {
              operator delete(v231);
            }

            v217 = v243 | v245 & v246;
            v55 = v602;
            if (v216)
            {
              operator delete(v216);
            }

            v177 = v619;
            v188 = *(v619 + 24);
            v189 = 0x8E38E38E38E38E39 * ((*(v619 + 32) - v188) >> 4);
            v49 = v597;
            v51 = v593;
            v52 = v589;
          }

          if (v189 >= 3)
          {
            v247 = ((v189 << 32) - 0x100000000) >> 32;
            v248 = (v189 << 32) - 0x200000000;
            v249 = v248 >> 32;
            v250 = vabsq_f32(sub_262236750(v188 + 144 * v247, v188 + 144 * SHIDWORD(v248), v139));
            v252 = vabsq_f32(v251);
            if (v250.f32[0] < v250.f32[1])
            {
              v250.f32[0] = v250.f32[1];
            }

            if (v250.f32[0] < v250.f32[2])
            {
              v250.f32[0] = v250.f32[2];
            }

            if (v252.f32[0] < v252.f32[1])
            {
              v252.f32[0] = v252.f32[1];
            }

            if (v252.f32[0] < v252.f32[2])
            {
              v252.f32[0] = v252.f32[2];
            }

            v253 = *(v619 + 96);
            _NF = v250.f32[0] < v253 && v252.f32[0] < v253;
            if (_NF)
            {
              v255 = *v83;
              v256 = *(*v83 + 144 * v247 + 24);
              v257 = *(*v83 + 144 * v247 + 32) - v256;
              v177 = v619;
              if (!v257)
              {
                *(v619 + 20) = 1;
              }

              v260 = (v255 + 144 * v249 + 24);
              v258 = *v260;
              v259 = v260[1];
              if (v257 == v259 - *v260 && v259 != v258)
              {
                v261 = 0;
                v262 = 0;
                v263 = 0;
                do
                {
                  v264 = *(v256 + v262) - *(v258 + v262);
                  if (v264 < 0)
                  {
                    v264 = *(v258 + v262) - *(v256 + v262);
                  }

                  if (v264 >= 0xB && (v257 * 0.2) <= ++v263)
                  {
                    break;
                  }

                  v261 = ++v262 >= v257;
                }

                while (v257 != v262);
                if (!v261)
                {
                  v265 = 0x3F80000000000001;
                  if (v176)
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_408;
                }
              }
            }

            else
            {
              *(v619 + 20) = 0;
              v177 = v619;
            }
          }

          v265 = 0;
          if (v176)
          {
LABEL_243:
            v266 = 0;
            goto LABEL_412;
          }

LABEL_408:
          if (v217)
          {
            v266 = 1;
            v176 = v217;
          }

          else
          {
            if ((v265 & 1) == 0)
            {
              LODWORD(v555) = 0;
              v556 = -1;
LABEL_415:
              v557 = [RSDriftDetectionSignal alloc];
              if (v557)
              {
                *&block = v557;
                *(&block + 1) = RSDriftDetectionSignal;
                v557 = objc_msgSendSuper2(&block, sel_init);
                if (v557)
                {
                  v557->_type = v556;
                  LODWORD(v557->_score) = v555;
                }
              }

              v178 = v55;
              v55 = v557;
              goto LABEL_419;
            }

            v266 = 3;
            v176 = v265;
          }

LABEL_412:
          v555 = HIDWORD(v176);
          if (*(v177 + 19))
          {
            v556 = v266;
          }

          else
          {
            v556 = 4;
          }

          goto LABEL_415;
        }

LABEL_118:
        v178 = 0;
LABEL_419:
        if (__p[1])
        {
          v642.i64[0] = __p[1];
          operator delete(__p[1]);
        }

        goto LABEL_422;
      }

LABEL_114:
      v171 = objc_msgSend_count(v52, v138, v139) != 0;
      v145 = v619;
      v172 = *(v619 + 17);
      *(v619 + 19) = v171;
      if ((v172 & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_115;
    }

    v170 = objc_msgSend_vioTrackingState(v51, v138, v139);
    v145 = v619;
    *(v619 + 17) = v170 == 0;
    if (v52)
    {
      if ((*(v619 + 19) & 1) == 0)
      {
        goto LABEL_114;
      }

      *(v619 + 19) = 1;
    }

    if (v170)
    {
      goto LABEL_118;
    }

    goto LABEL_115;
  }

LABEL_406:
}

void sub_2622A785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a65 = &unk_2874EF0B8;
  if (STACK[0x250])
  {
    sub_2621D1B78(STACK[0x250]);
  }

  STACK[0x270] = &unk_2874EF0B8;
  if (STACK[0x2F0])
  {
    sub_2621D1B78(STACK[0x2F0]);
  }

  sub_2622368FC(&a43);

  sub_2621CD534(&a41);
  _Unwind_Resume(a1);
}

void sub_2622A7E1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = objc_msgSend_copy(*(a1 + 32), v3, v4);
    v6 = v7[13];
    v7[13] = v5;

    WeakRetained = v7;
  }
}

void sub_2622A8198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a30, 8);

  objc_destroyWeak((v36 + 40));
  objc_destroyWeak((v37 - 120));

  _Unwind_Resume(a1);
}

void sub_2622A81EC(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 5, *(a1 + 32));
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(a1 + 32);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
    if (v8)
    {
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = v3[4];
          v13 = objc_msgSend_identifier(v11, v6, v7, v15);
          objc_msgSend_setObject_forKeyedSubscript_(v12, v14, v11, v13);
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
      }

      while (v8);
    }
  }
}

void sub_2622A8360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v5 = objc_msgSend_copy(WeakRetained[4], v3, v4);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v10 = objc_msgSend_copy(v13[13], v8, v9);
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    WeakRetained = v13;
  }
}

void sub_2622A83FC(uint64_t a1)
{
  v1 = a1;
  v426 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_127;
  }

  v4 = objc_msgSend_date(MEMORY[0x277CBEAA8], v2, v3);
  v5 = *(WeakRetained + 6);
  *(WeakRetained + 6) = v4;

  v6 = *(WeakRetained + 19);
  v9 = objc_msgSend_allValues(*(*(*(v1 + 32) + 8) + 40), v7, v8);
  sub_2621EB520(v6, v9, 0);

  v380 = sub_2621EEA88(*(WeakRetained + 2), *(*(*(v1 + 32) + 8) + 40), *(*(*(v1 + 40) + 8) + 40));
  if (objc_msgSend_isBoundaryRefinementEnabled(*(WeakRetained + 1), v10, v11))
  {
    std::mutex::lock((WeakRetained + 200));
    v14 = objc_msgSend_firstObject(*(WeakRetained + 24), v12, v13);
    std::mutex::unlock((WeakRetained + 200));
    if (v14)
    {
      v15 = *(WeakRetained + 23);
      v381 = v380;
      v376 = v14;
      v379 = v14;
      v389 = v15;
      if (v15)
      {
        v415 = 9757;
        v416 = 0;
        kdebug_trace();
        std::chrono::steady_clock::now();
        v374.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        v392 = objc_msgSend_copy(v381, v16, v17);
        v20 = objc_msgSend_windows(v381, v18, v19);
        v378 = objc_msgSend_copy(v20, v21, v22);

        v25 = objc_msgSend_doors(v381, v23, v24);
        v385 = objc_msgSend_copy(v25, v26, v27);

        v28 = v379;
        if ((*(v389 + 16) & 1) == 0)
        {
          v31 = objc_msgSend_colorBuffer(v28, v29, v30);
          CVPixelBufferGetWidth(v31);
          CVPixelBufferGetHeight(v31);
          operator new();
        }

        v377 = v28;

        v413 = 0;
        v414 = 0;
        v412 = &v413;
        kdebug_trace();
        v34 = objc_msgSend_walls(v392, v32, v33);
        v37 = objc_msgSend_count(v34, v35, v36) == 0;

        if (!v37)
        {
          v387 = v392;
          v40 = objc_msgSend_array(MEMORY[0x277CBEB18], v38, v39);
          v43 = objc_msgSend_windows(v387, v41, v42, v40);
          objc_msgSend_addObjectsFromArray_(v40, v44, v43);

          v47 = objc_msgSend_doors(v387, v45, v46);
          objc_msgSend_addObjectsFromArray_(v40, v48, v47);

          v51 = objc_msgSend_opendoors(v387, v49, v50);
          objc_msgSend_addObjectsFromArray_(v40, v52, v51);

          v55 = objc_msgSend_openings(v387, v53, v54);
          objc_msgSend_addObjectsFromArray_(v40, v56, v55);

          v409 = 0;
          v410 = 0;
          v411 = 0;
          buf = 0u;
          v423 = 0u;
          v424 = 0u;
          v425 = 0u;
          v57 = v40;
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &buf, &v419, 16);
          obj = v57;
          v375 = v1;
          if (v61)
          {
            v62 = 0;
            v63 = *v423;
            do
            {
              for (i = 0; i != v61; ++i)
              {
                if (*v423 != v63)
                {
                  objc_enumerationMutation(obj);
                }

                objc_msgSend_quad(*(*(&buf + 1) + 8 * i), v59, v60);
                v73 = v62;
                v74 = v62 >> 6;
                if (((v62 >> 6) + 1) >> 58)
                {
                  v411 = 0;
                  v409 = 0;
                  sub_2621CBEB0();
                }

                if (v62 >> 6 != -1)
                {
                  if (!(((v62 >> 6) + 1) >> 58))
                  {
                    operator new();
                  }

                  v410 = v62;
                  v411 = 0;
                  v409 = 0;
                  sub_2621C6A34();
                }

                v75 = v74 << 6;
                *v75 = v65;
                *(v75 + 8) = v66;
                *(v75 + 16) = v67;
                *(v75 + 24) = v68;
                *(v75 + 40) = v70;
                *(v75 + 32) = v69;
                *(v75 + 48) = v71;
                *(v75 + 56) = v72;
                v62 = (v74 << 6) + 64;
                memcpy(0, 0, v73);
              }

              v410 = (v74 << 6) + 64;
              v411 = 0;
              v409 = 0;
              v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &buf, &v419, 16);
            }

            while (v61);
          }

          v76 = *(v389 + 1);
          v79 = objc_msgSend_walls(v387, v77, v78);
          sub_26225FA34(&v419, v76, 0, v377, v79, &v409, 0);
          sub_26225CF48(v413);
          v80 = v420;
          v412 = v419;
          v413 = v420;
          v414 = v421;
          if (v421)
          {
            v420[2] = &v413;
            v419 = &v420;
            v420 = 0;
            v421 = 0;
            v80 = 0;
          }

          else
          {
            v412 = &v413;
          }

          sub_26225CF48(v80);

          v83 = objc_msgSend_walls(v387, v81, v82);
          v86 = objc_msgSend_walls(*(v389 + 5), v84, v85);
          sub_2622EAA80(v83, &v412, v86);

          v89 = objc_msgSend_walls(v387, v87, v88);
          buf = 0u;
          v423 = 0u;
          v424 = 0u;
          v425 = 0u;
          v90 = v89;
          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, &buf, &v419, 16);
          if (v94)
          {
            v95 = *v423;
            do
            {
              for (j = 0; j != v94; ++j)
              {
                if (*v423 != v95)
                {
                  objc_enumerationMutation(v90);
                }

                v97 = *(*(&buf + 1) + 8 * j);
                if (objc_msgSend_polygonSize(v97, v92, v93) >= 3)
                {
                  v98 = objc_msgSend_polygonSize(v97, v92, v93);
                  sub_26229CBDC(&__p, v98);
                  objc_msgSend_quad(v97, v99, v100);
                  v403 = v101;
                  v104 = objc_msgSend_polygon(v97, v102, v103);
                  v107 = objc_msgSend_polygonSize(v97, v105, v106);
                  v108 = v403;
                  v108.i32[2] = *(v104 + 16 * v107 - 24);
                  v418[-2] = v108;
                  objc_msgSend_quad(v97, v109, v110);
                  v404 = v111;
                  v114 = objc_msgSend_polygon(v97, v112, v113);
                  v117 = objc_msgSend_polygonSize(v97, v115, v116);
                  v118 = v404;
                  v118.i32[2] = *(v114 + 16 * v117 - 8);
                  v418[-1] = v118;
                  v121 = objc_msgSend_polygon(v97, v119, v120);
                  v124 = objc_msgSend_polygonSize(v97, v122, v123);
                  v127 = objc_msgSend_polygon(v97, v125, v126);
                  v130 = v121 + 16 * v124;
                  v133 = v127 + 16 * objc_msgSend_polygonSize(v97, v128, v129);
                  v134 = v418;
                  v135 = vsubq_f32(*(v133 - 32), *(v130 - 16));
                  v136 = sqrtf(vaddv_f32(*&vmulq_f32(v135, v135)));
                  if (v136 >= 0.00000001)
                  {
                    v137 = v136;
                  }

                  else
                  {
                    v137 = 0.00000001;
                  }

                  if (v418 - __p != 32)
                  {
                    v138 = 0;
                    v139 = 0;
                    v397 = vsubq_f32(v418[-2], v418[-1]);
                    do
                    {
                      v140 = objc_msgSend_polygon(v97, v131, v132);
                      v399 = *(v130 - 16);
                      v401 = *(v140 + v138);
                      v405 = v134[-1];
                      v143 = objc_msgSend_polygon(v97, v141, v142);
                      v144 = vsubq_f32(v401, v399);
                      v145 = vmlaq_n_f32(v405, v397, sqrtf(vaddv_f32(*&vmulq_f32(v144, v144))) / v137);
                      v145.i32[2] = *(v143 + v138 + 8);
                      *(__p + v139++) = v145;
                      v138 += 16;
                    }

                    while (v139 < ((v418 - __p) >> 4) - 2);
                  }

                  v146 = objc_msgSend_polygonSize(v97, v131, v132);
                  if (v146)
                  {
                    if ((v146 & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_2621CBEB0();
                  }

                  MEMORY[0xFFFFFFFFFFFFFFFF] = objc_msgSend_edgeStates(v97, v147, v148) >> 24;
                  MEMORY[0xFFFFFFFFFFFFFFFE] = objc_msgSend_edgeStates(v97, v149, v150) >> 16;
                  MEMORY[0xFFFFFFFFFFFFFFFD] = objc_msgSend_edgeStates(v97, v151, v152) >> 8;
                  for (k = 0; k != -3; ++k)
                  {
                    *k = k[objc_msgSend_polygonEdgeStates(v97, v153, v154)];
                  }

                  v156 = __p;
                  v157 = objc_msgSend_polygonEdgeConfidence(v97, v153, v154);
                  v160 = objc_msgSend_polygonSize(v97, v158, v159);
                  sub_2622C51B4(v97, v156, 0, v157, v160);
                  operator delete(0);
                  if (__p)
                  {
                    v418 = __p;
                    operator delete(__p);
                  }
                }
              }

              v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v92, &buf, &v419, 16);
            }

            while (v94);
          }

          v1 = v375;
          v163 = objc_msgSend_openings(v387, v161, v162);
          v166 = objc_msgSend_count(v163, v164, v165) == 0;

          if (!v166)
          {
            v169 = objc_msgSend_openings(v387, v167, v168);
            sub_262264F2C(3, &v412, v169);
            objc_claimAutoreleasedReturnValue();
            sub_2622AE920(v387, v169);
          }

          v170 = objc_msgSend_opendoors(v387, v167, v168);
          v173 = objc_msgSend_count(v170, v171, v172) == 0;

          if (!v173)
          {
            v176 = objc_msgSend_opendoors(v387, v174, v175);
            sub_262264F2C(4, &v412, v176);
            objc_claimAutoreleasedReturnValue();
            sub_26223FCBC(v387, v176);
          }
        }

        kdebug_trace();
        kdebug_trace();
        v177 = sub_2622EAF60(*(v389 + 3), v378);
        objc_storeStrong(v389 + 3, v378);
        v419 = 0;
        v420 = 0;
        v421 = 0;
        v180 = objc_msgSend_windows(v392, v178, v179);
        v183 = objc_msgSend_count(v180, v181, v182) == 0;

        if (!v183)
        {
          v186 = objc_msgSend_windows(v392, v184, v185);
          sub_262264F2C(1, &v412, v186);
          objc_claimAutoreleasedReturnValue();
          sub_2622AE910(v392, v186);

          v187 = *(v389 + 1);
          v190 = objc_msgSend_windows(v392, v188, v189);
          sub_26225FA34(&buf, v187, 1u, v377, v190, &v419, v177);

          v193 = objc_msgSend_windows(v392, v191, v192);
          v196 = objc_msgSend_windows(*(v389 + 5), v194, v195);
          sub_2622EAA80(v193, &buf, v196);

          v199 = objc_msgSend_windows(v392, v197, v198);
          sub_262264F2C(1, &v412, v199);
          objc_claimAutoreleasedReturnValue();
          sub_2622AE910(v392, v199);

          sub_26225CF48(*(&buf + 1));
        }

        kdebug_trace();
        kdebug_trace();
        v200 = sub_2622EAF60(*(v389 + 4), v385);
        objc_storeStrong(v389 + 4, v385);
        v203 = objc_msgSend_doors(v392, v201, v202);
        v206 = objc_msgSend_count(v203, v204, v205) == 0;

        if (!v206)
        {
          v209 = objc_msgSend_doors(v392, v207, v208);
          sub_262264F2C(2, &v412, v209);
          objc_claimAutoreleasedReturnValue();
          sub_26223FCDC(v392, v209);

          v210 = *(v389 + 1);
          v213 = objc_msgSend_doors(v392, v211, v212);
          sub_26225FA34(&buf, v210, 2u, v377, v213, &v419, v200);

          v216 = objc_msgSend_doors(v392, v214, v215);
          v219 = objc_msgSend_doors(*(v389 + 5), v217, v218);
          sub_2622EAA80(v216, &buf, v219);

          v222 = objc_msgSend_doors(v392, v220, v221);
          sub_262264F2C(2, &v412, v222);
          objc_claimAutoreleasedReturnValue();
          sub_26223FCDC(v392, v222);

          sub_26225CF48(*(&buf + 1));
        }

        kdebug_trace();
        sub_2622B21F8(v392);
        v223 = *(v389 + 5);
        v15 = v392;
        v224 = v223;
        v227 = objc_msgSend_walls(v15, v225, v226);
        v230 = objc_msgSend_walls(v224, v228, v229);
        sub_2622EB110(v227, v230);

        v233 = objc_msgSend_openings(v15, v231, v232);
        v236 = objc_msgSend_openings(v224, v234, v235);
        sub_2622EB110(v233, v236);

        v239 = objc_msgSend_windows(v15, v237, v238);
        v242 = objc_msgSend_windows(v224, v240, v241);
        sub_2622EB374(v239, v242);

        v245 = objc_msgSend_doors(v15, v243, v244);
        v248 = objc_msgSend_doors(v224, v246, v247);
        sub_2622EB374(v245, v248);

        v251 = objc_msgSend_opendoors(v15, v249, v250);
        v254 = objc_msgSend_opendoors(v224, v252, v253);
        sub_2622EB374(v251, v254);

        *(*(v389 + 1) + 208) = 0;
        v257 = objc_msgSend_copy(v15, v255, v256);
        v258 = *(v389 + 5);
        *(v389 + 5) = v257;

        v259.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        if (qword_27FF0C0D0 != -1)
        {
          dispatch_once(&qword_27FF0C0D0, &unk_2874EE1E0);
        }

        v260 = qword_27FF0C0C8;
        if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = (v259.__d_.__rep_ - v374.__d_.__rep_) / 1000000;
          _os_log_debug_impl(&dword_2621C3000, v260, OS_LOG_TYPE_DEBUG, "Boundary refinement consume: %lld ms", &buf, 0xCu);
        }

        sub_26225CF48(v413);
        sub_2621CD534(&v415);
      }

      v380 = v15;
      v14 = v376;
    }
  }

  v261 = sub_2621F6A6C(*(WeakRetained + 2), *(*(*(v1 + 40) + 8) + 40), v380);
  objc_msgSend_updateObjects_(v380, v262, v261);

  sub_2621ECCF8(*(WeakRetained + 19), v380);
  v263 = *(WeakRetained + 8);
  v382 = v380;
  if (v263)
  {
    v424 = 0u;
    v425 = 0u;
    buf = 0u;
    v423 = 0u;
    v266 = objc_msgSend_walls(v382, v264, v265);
    v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v267, &buf, &v419, 16);
    if (v270)
    {
      v271 = *v423;
      v406 = 0u;
      __asm { FMOV            V0.4S, #0.25 }

      *v386 = _Q0;
      do
      {
        for (m = 0; m != v270; ++m)
        {
          if (*v423 != v271)
          {
            objc_enumerationMutation(v266);
          }

          v278 = *(*(&buf + 1) + 8 * m);
          objc_msgSend_quad(v278, v268, v269);
          v402 = v279;
          objc_msgSend_quad(v278, v280, v281);
          v400 = v282;
          objc_msgSend_quad(v278, v283, v284);
          v398 = v285;
          objc_msgSend_quad(v278, v286, v287);
          *obja = v288;
          objc_msgSend_quad(v278, v289, v290);
          v393 = v291;
          objc_msgSend_quad(v278, v292, v293);
          v390 = v294;
          objc_msgSend_quad(v278, v295, v296);
          v388 = v297;
          objc_msgSend_quad(v278, v298, v299);
          v302 = vsubq_f32(v393, v390);
          v304 = vsubq_f32(v388, v303);
          v394 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v304, v304), v304, 0xCuLL), vnegq_f32(v302)), v304, vextq_s8(vuzp1q_s32(v302, v302), v302, 0xCuLL));
          v305 = vmulq_f32(v394, v394);
          v305.f32[0] = sqrtf(v305.f32[1] + (v305.f32[2] + v305.f32[0]));
          if (v305.f32[0] < 0.001)
          {
            v305.f32[0] = 0.001;
          }

          v391 = *v305.f32;
          objc_msgSend_quad(v278, v300, v301);
          v313 = v312;
          v314 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v402, v400), v398), *obja), *v386);
          v315 = vdivq_f32(vextq_s8(vuzp1q_s32(v394, v394), v394, 0xCuLL), vdupq_lane_s32(v391, 0));
          v316 = v406.i64[0];
          v317 = v406.i64[1] - v406.i64[0];
          v318 = 0xAAAAAAAAAAAAAAABLL * ((v406.i64[1] - v406.i64[0]) >> 5) + 1;
          if (v318 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_2621CBEB0();
          }

          if (0x5555555555555556 * (-v406.i64[0] >> 5) > v318)
          {
            v318 = 0x5555555555555556 * (-v406.i64[0] >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v406.i64[0] >> 5) >= 0x155555555555555)
          {
            v319 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v319 = v318;
          }

          if (v319)
          {
            if (v319 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_2621C6A34();
          }

          v320 = 32 * ((v406.i64[1] - v406.i64[0]) >> 5);
          *v320 = v314;
          *(v320 + 16) = v315;
          *(v320 + 40) = v307;
          *(v320 + 32) = v306;
          *(v320 + 48) = v313;
          *(v320 + 56) = DWORD2(v313);
          *(v320 + 64) = v308;
          *(v320 + 72) = v309;
          *(v320 + 88) = v311;
          *(v320 + 80) = v310;
          v321 = v320 + 96;
          memcpy((v320 + 96 * (v317 / -96)), v406.i64[0], v317);
          v407 = 32 * ((v406.i64[1] - v406.i64[0]) >> 5) + 96 * (v317 / -96);
          if (v316)
          {
            operator delete(v316);
          }

          v322.i64[0] = v407;
          v322.i64[1] = v321;
          v406 = v322;
        }

        v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v266, v268, &buf, &v419, 16);
      }

      while (v270);
    }

    else
    {
      v406 = 0u;
    }

    std::mutex::lock((v263 + 936));
    v323 = *(v263 + 832);
    *(v263 + 832) = v406;
    *(v263 + 848) = 0;
    std::mutex::unlock((v263 + 936));
    if (v323)
    {
      operator delete(v323);
    }
  }

  v326 = *(WeakRetained + 8);
  v327 = *(WeakRetained + 2);
  if (v327)
  {
    v328 = sub_2621CD3A4(*(v327 + 72));
    if (v328)
    {
      v329 = v328[6];
    }

    else
    {
      v329 = 0;
    }

    v408 = v329;

    if (!v326)
    {
      goto LABEL_111;
    }

LABEL_87:
    v330 = objc_msgSend_date(MEMORY[0x277CBEAA8], v324, v325);
    v331 = *(v326 + 888);
    if (!v331)
    {
      objc_storeStrong((v326 + 888), v330);
    }

    std::mutex::lock((v326 + 936));
    objc_msgSend_timeIntervalSinceDate_(v330, v332, *(v326 + 888));
    if (v335 >= -1.0)
    {
      if (objc_msgSend_type(*(v326 + 864), v333, v334))
      {
        v342 = [RSTextCoachingSignal alloc];
        if (*(&v408 + 1) >= 15.0)
        {
          v343 = 0;
          v344 = 1.0;
        }

        else
        {
          v343 = -1;
          v344 = (15.0 - *(&v408 + 1)) / 15.0;
        }

        if (v342)
        {
          v342 = sub_2622E743C(v342, v343, v344);
        }

        v345 = *(v326 + 864);
        *(v326 + 864) = v342;
      }

      if (!objc_msgSend_type(*(v326 + 856), v340, v341))
      {
        goto LABEL_110;
      }

      if (*&v408 >= 15.0)
      {
        v347 = [RSTextCoachingSignal alloc];
        if (v347)
        {
          v347 = sub_2622E743C(v347, 0, 1.0);
        }
      }

      else
      {
        v347 = [RSTextCoachingSignal alloc];
        if (v347)
        {
          v347 = sub_2622E743C(v347, -1, (15.0 - *&v408) / 15.0);
        }
      }

      v339 = *(v326 + 856);
      *(v326 + 856) = v347;
    }

    else
    {
      v336 = [RSTextCoachingSignal alloc];
      if (v336)
      {
        v336 = sub_2622E743C(v336, -1, -1.0);
      }

      v337 = *(v326 + 856);
      *(v326 + 856) = v336;

      v338 = [RSTextCoachingSignal alloc];
      if (v338)
      {
        v338 = sub_2622E743C(v338, -1, -1.0);
      }

      v339 = *(v326 + 864);
      *(v326 + 864) = v338;
    }

LABEL_110:
    sub_262346BD0(v326, (v331 == 0), v346);
    std::mutex::unlock((v326 + 936));

    goto LABEL_111;
  }

  v408 = 0;
  if (v326)
  {
    goto LABEL_87;
  }

LABEL_111:
  v383 = v382;

  if (objc_msgSend_isOnboardingEnabled(*(WeakRetained + 1), v348, v349) && objc_msgSend_isTextCoachingEnabled(*(WeakRetained + 1), v350, v351) && ((v352 = *(WeakRetained + 8)) == 0 || *(v352 + 1000) != 3))
  {
    v357 = *(WeakRetained + 2);
    if (v357)
    {
      sub_2622E7360(*(v357 + 80));
    }

    v358 = *(WeakRetained + 23);
    if (v358)
    {
      v359 = objc_alloc_init(RSFloorPlan);
      v360 = *(v358 + 40);
      *(v358 + 40) = v359;
    }
  }

  else
  {
    v353 = objc_msgSend_delegate(WeakRetained, v350, v351);
    v354 = objc_opt_respondsToSelector();

    if (v354)
    {
      v355 = objc_msgSend_delegate(WeakRetained, v350, v351);
      objc_msgSend_session_didUpdateFloorPlan_(v355, v356, WeakRetained, v383);
    }
  }

  if (objc_msgSend_isMarkerCoachingEnabled(*(WeakRetained + 1), v350, v351))
  {
    v363 = objc_msgSend_delegate(WeakRetained, v361, v362);
    v364 = objc_opt_respondsToSelector();

    if (v364)
    {
      v368 = objc_msgSend_delegate(WeakRetained, v365, v366);
      v369 = *(WeakRetained + 2);
      if (v369)
      {
        v370 = *(v369 + 152);
        objc_msgSend_session_didUpdateMarkerCoaching_(v368, v371, WeakRetained, v370);
      }

      else
      {
        v370 = 0;
        objc_msgSend_session_didUpdateMarkerCoaching_(v368, v367, WeakRetained, 0);
      }
    }
  }

  v372 = *(WeakRetained + 12);
  *(WeakRetained + 12) = v383;
  v373 = v383;

  dispatch_semaphore_signal(*(WeakRetained + 16));
LABEL_127:
}