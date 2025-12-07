void sub_A6D7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_5BF0C(&a15);
  sub_5C010(&a10);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A6D7F4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 != a2)
  {
    v5 = a4(*a1);
    sub_A6C234(v6, v5);
  }

  return a3;
}

void sub_A6D900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5BF0C(va);
  _Unwind_Resume(a1);
}

void sub_A6D918(uint64_t a1, uint64_t *a2)
{
  sub_5F328(a1);
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    v8 = 12;
    strcpy(__p, "artwork_type");
    sub_A6C234(v6, "ARTWORK_TYPE_SHIELD");
  }

  if (v3 == 2)
  {
    v5[23] = 12;
    strcpy(v5, "artwork_type");
    sub_A6C234(v4, "ARTWORK_TYPE_ICON");
  }
}

void sub_A6E1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v55 - 73) < 0)
  {
    operator delete(*(v55 - 96));
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
LABEL_7:
    sub_5C010(&a25);
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  operator delete(__p);
  sub_5C010(&a25);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_9:
    sub_5C010(v54);
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a32);
  goto LABEL_9;
}

void sub_A6E4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if ((a31 & 0x80000000) == 0)
  {
    JUMPOUT(0xA6E470);
  }

  JUMPOUT(0xA6E464);
}

void sub_A6E4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_5BF0C(&a29);
  if (a36 < 0)
  {
    JUMPOUT(0xA6E468);
  }

  JUMPOUT(0xA6E470);
}

void sub_A6E4D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

unsigned int *sub_A6E4F4(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[2 * a2 + 1];
}

void sub_A6E5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

double sub_A6E640(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *(&v16 + 1) = 0;
  v7 = *a2;
  v8 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *v6 = v7;
  *(v6 + 8) = v8;
  v9 = a2[2];
  *&dword_10[10 * v2] = v9;
  v10 = a2[3];
  *(v6 + 24) = v10;
  *(v6 + 32) = *(a2 + 8);
  if (v10)
  {
    v11 = *(v9 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v11 >= v8)
      {
        v11 %= v8;
      }
    }

    else
    {
      v11 &= v8 - 1;
    }

    *(v7 + 8 * v11) = 40 * v2 + 16;
    a2[2] = 0;
    a2[3] = 0;
  }

  *&v16 = v6 + 40;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  sub_8D3F0(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  result = *&v16;
  *(a1 + 1) = v16;
  if (v14)
  {
    operator delete(v14);
    return *&v16;
  }

  return result;
}

void sub_A6E7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_8D5F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A6E7D4(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v6 = &v5[-*v5];
  v7 = *v6;
  if (v7 <= 4)
  {
    v11 = 0;
    v9 = (4 * *a2 + 4 + dword_4[*a2]);
    v12 = (v9 - *(&dword_4[*a2] + dword_4[*a2]));
    if (*v12 < 0x15u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v8 += &v5[*&v5[v8]];
    }

    v9 = (v8 + 4 * *a2 + 4 + *(v8 + 4 * *a2 + 4));
    if (v7 >= 0xD && (v10 = *(v6 + 6)) != 0)
    {
      v11 = &v5[v10 + *&v5[v10]];
      v12 = (v9 - *v9);
      if (*v12 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      v12 = (v9 - *v9);
      if (*v12 < 0x15u)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = v12[10];
  if (v13)
  {
    v14 = *(v9 + v13);
    goto LABEL_14;
  }

LABEL_13:
  v14 = -1;
LABEL_14:
  v15 = sub_A56DB8(v11, a2[2] + v14)[1];
  v16 = (v9 - *v9);
  v17 = *v16;
  if (v17 < 0xB)
  {
    v19 = 0;
    v18 = 0x7FFFFFFF;
    goto LABEL_23;
  }

  if (v16[5])
  {
    v18 = *(v9 + v16[5]);
    if (v17 < 0x13)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0x7FFFFFFF;
    if (v17 < 0x13)
    {
      goto LABEL_22;
    }
  }

  v20 = v16[9];
  if (v20)
  {
    v19 = (v9 + v20 + *(v9 + v20));
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:
  v21 = v18 + sub_A6EFC4(v19, v3)[1] + v15;

  return sub_96AE18(v21);
}

uint64_t sub_A6E970(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v6 = &v5[-*v5];
  v7 = *v6;
  if (v7 <= 4)
  {
    v11 = 0;
    v9 = (4 * *a2 + 4 + dword_4[*a2]);
    v12 = (v9 - *(&dword_4[*a2] + dword_4[*a2]));
    if (*v12 < 0x15u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v8 += &v5[*&v5[v8]];
    }

    v9 = (v8 + 4 * *a2 + 4 + *(v8 + 4 * *a2 + 4));
    if (v7 >= 0xD && (v10 = *(v6 + 6)) != 0)
    {
      v11 = &v5[v10 + *&v5[v10]];
      v12 = (v9 - *v9);
      if (*v12 < 0x15u)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0;
      v12 = (v9 - *v9);
      if (*v12 < 0x15u)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = v12[10];
  if (v13)
  {
    v14 = *(v9 + v13);
    goto LABEL_14;
  }

LABEL_13:
  v14 = -1;
LABEL_14:
  v15 = sub_A56DB8(v11, a2[2] + v14)[1];
  v16 = (v9 - *v9);
  v17 = *v16;
  if (v17 < 0xB)
  {
    v19 = 0;
    v18 = 0x7FFFFFFF;
    goto LABEL_23;
  }

  if (v16[5])
  {
    v18 = *(v9 + v16[5]);
    if (v17 < 0x13)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0x7FFFFFFF;
    if (v17 < 0x13)
    {
      goto LABEL_22;
    }
  }

  v20 = v16[9];
  if (v20)
  {
    v19 = (v9 + v20 + *(v9 + v20));
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:
  v21 = v18 + sub_A6EFC4(v19, v3)[2] + v15;

  return sub_96AE18(v21);
}

void sub_A6EB0C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*(a4 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a4 + 1))
    {
      return;
    }
  }

  else if (!*(a4 + 23))
  {
    return;
  }

  *&v10 = sub_12331FC();
  if (sub_1232EE0((a4 + 2), &v10))
  {
    if (*(a3 + 23) < 0)
    {
      sub_325C(v6, *a3, *(a3 + 8));
    }

    else
    {
      *v6 = *a3;
      v7 = *(a3 + 16);
    }

    nullsub_1();
    if (*(a4 + 23) < 0)
    {
      sub_325C(&v10, *a4, *(a4 + 1));
    }

    else
    {
      v10 = *a4;
      v11 = *(a4 + 2);
    }

    v12 = *(a4 + 24);
    sub_39A3D8(&v13, a4 + 5);
    memset(v8, 0, 24);
    v8[7] = v8;
    v9 = 0;
    operator new();
  }
}

void sub_A6EEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, char a26)
{
  sub_9D8728(&a26);
  sub_9D87E4(&a24);
  sub_395478(v26 - 160);
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_A6EFC4(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[3 * a2 + 1];
}

void sub_A6F094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_A6F114(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_31;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ (v6 >> 33);
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (*(v12 + 4) == v4 && *(v12 + 5) == HIDWORD(v4))
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_31;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v13 >= *&v8)
    {
      v13 %= *&v8;
    }

    if (v13 != v10)
    {
      goto LABEL_31;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (*(v12 + 4) != v4 || *(v12 + 5) != HIDWORD(v4))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_A6F488(void *a1, _DWORD *a2)
{
  v4 = sub_5F328(a1);
  v14 = 3;
  LODWORD(__p) = 7627116;
  LODWORD(v4) = a2[1];
  v5 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
  v11 = atan((v5 + -1.0 / v5) * 0.5) * 57.2957795;
  v12 = 2;
  sub_607AC(a1, &__p, &v11);
  if (v12 != -1)
  {
    (off_2670920[v12])(&v15, &v11);
  }

  v12 = -1;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v10 = 3;
  LODWORD(v9) = 7237484;
  LODWORD(v6) = *a2;
  v7 = v6 * 360.0 / 4294967300.0 + -180.0;
  v8 = 2;
  sub_607AC(a1, &v9, &v7);
  if (v8 != -1)
  {
    (off_2670920[v8])(&v15, &v7);
  }

  v8 = -1;
  if (v10 < 0)
  {
    operator delete(v9);
  }
}

void sub_A6F63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_5BF0C(&a10);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_5C010(v17);
  _Unwind_Resume(a1);
}

unint64_t sub_A6F688(uint64_t *a1, unint64_t a2)
{
  v19 = a2;
  v18 = (0xCCCCCCCCCCCCCCCDLL * ((a1[2462] - a1[2461]) >> 3));
  v3 = sub_A6BEC4(a1 + 2464, &v19, &v19, &v18)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2462] - a1[2461]) >> 3))
  {
    sub_5F328(&v18);
    v17 = 4;
    strcpy(__p, "muid");
    v4 = *a1;
    sub_93D480(*(*a1 + 4112) + 24, __ROR8__(v19, 32), 0, "station");
    v5 = sub_2C939C(*(v4 + 4112) + 24, 1u, 0);
    if (v5)
    {
      v6 = &v5[-*v5];
      if (*v6 >= 0xDu)
      {
        v7 = *(v6 + 6);
        if (v7)
        {
          v8 = &v5[v7 + *&v5[v7]];
          v9 = &v8[-*v8];
          if (*v9 >= 0xBu)
          {
            v10 = *(v9 + 5);
            if (v10)
            {
              if (v8[v10])
              {
                nullsub_1();
              }
            }
          }

          nullsub_1();
          std::to_string(&v15, v11);
          *v20 = v15.__r_.__value_.__l.__size_;
          *&v20[7] = *(&v15.__r_.__value_.__r.__words[1] + 7);
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  return v3;
}

void sub_A6FE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_A6FE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

uint64_t *sub_A6FF9C(void *a1, unint64_t *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v7 = (((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v6 ^ (v6 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v8 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v9 = ((v8 ^ (v8 >> 33)) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_33;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = ((v8 ^ (v8 >> 33)) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_33:
    operator new();
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        v16 = *(v14 + 5) == HIDWORD(v4) && *(v14 + 4) == v4;
        if (v16 && v14[3] == v5)
        {
          return v14;
        }
      }

      else if ((v15 & (*&v10 - 1)) != v12)
      {
        goto LABEL_33;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v9)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v12)
    {
      goto LABEL_33;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  v18 = *(v14 + 5) == HIDWORD(v4) && *(v14 + 4) == v4;
  if (!v18 || v14[3] != v5)
  {
    goto LABEL_22;
  }

  return v14;
}

void sub_A7038C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_5F328(a1);
  if (!*(a3 + 248))
  {
    v16 = 4;
    strcpy(__p, "type");
    sub_A6C234(v14, "access_point");
  }

  if (*(a3 + 248) == 1)
  {
    v13 = 4;
    strcpy(v12, "type");
    sub_A6C234(v11, "road_access_point");
  }

  v4 = *(a3 + 248);
  if (v4 == 3)
  {
    v10 = 4;
    strcpy(v9, "type");
    sub_A6C234(v8, "snapped_location");
  }

  if (v4 == 2)
  {
    v7 = 4;
    strcpy(v6, "type");
    sub_A6C234(v5, "stop");
  }
}

void sub_A70C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  *(v27 + 20080) = v28;
  sub_5C010(v29 - 168);
  sub_5C010(v29 - 128);
  if (a26 < 0)
  {
    operator delete(__p);
    sub_5C010(v26);
    _Unwind_Resume(a1);
  }

  sub_5C010(v26);
  _Unwind_Resume(a1);
}

unint64_t sub_A70EE4(uint64_t *a1, unint64_t a2)
{
  v19 = a2;
  v15.__r_.__value_.__r.__words[0] = 0xCCCCCCCCCCCCCCCDLL * ((a1[2470] - a1[2469]) >> 3);
  v3 = sub_A6BEC4(a1 + 2472, &v19, &v19, &v15)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2470] - a1[2469]) >> 3))
  {
    sub_5F328(&v18);
    v17 = 4;
    strcpy(v16, "muid");
    v4 = *a1;
    sub_503310(*(*a1 + 4008) + 24, __ROR8__(v19, 32), 0, "access point");
    v5 = sub_2C939C(*(v4 + 4008) + 24, 1u, 0);
    if (v5)
    {
      v6 = &v5[-*v5];
      if (*v6 >= 0xDu)
      {
        v7 = *(v6 + 6);
        if (v7)
        {
          v8 = &v5[v7 + *&v5[v7]];
          v9 = &v8[-*v8];
          if (*v9 >= 0xBu)
          {
            v10 = *(v9 + 5);
            if (v10)
            {
              if (v8[v10])
              {
                nullsub_1();
              }
            }
          }

          nullsub_1();
          std::to_string(&v15, v11);
          *v20 = v15.__r_.__value_.__l.__size_;
          *&v20[7] = *(&v15.__r_.__value_.__r.__words[1] + 7);
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v14 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  return v3;
}

void sub_A71DB0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

unint64_t sub_A71FF4(uint64_t *a1, uint64_t a2)
{
  v27 = a2;
  v26 = 0xCCCCCCCCCCCCCCCDLL * ((a1[2478] - a1[2477]) >> 3);
  v3 = sub_A6BEC4(a1 + 2480, &v27, &v27, &v26)[3];
  if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[2478] - a1[2477]) >> 3))
  {
    sub_5F328(&v26);
    v25 = 12;
    strcpy(__p, "access_point");
    v4 = sub_503184(*(*a1 + 4104) + 24, __ROR8__(v27, 32), 0, "road access point");
    v5 = (v4 - *v4);
    if (*v5 >= 7u && (v6 = v5[3]) != 0)
    {
      v7 = *(v4 + v6 + 4) | (*(v4 + v6) << 32);
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }

    v22 = sub_A70EE4(a1, v7);
    v23 = 4;
    sub_607AC(&v26, __p, &v22);
    if (v23 != -1)
    {
      (off_2670920[v23])(&v19, &v22);
    }

    v23 = -1;
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    v21 = 4;
    strcpy(v20, "muid");
    v8 = *a1;
    sub_503184(*(*a1 + 4104) + 24, __ROR8__(v27, 32), 0, "road access point");
    v9 = sub_2C939C(*(v8 + 4104) + 24, 1u, 0);
    if (v9)
    {
      v10 = &v9[-*v9];
      if (*v10 >= 0xDu)
      {
        v11 = *(v10 + 6);
        if (v11)
        {
          v12 = &v9[v11 + *&v9[v11]];
          v13 = &v12[-*v12];
          if (*v13 >= 0xBu)
          {
            v14 = *(v13 + 5);
            if (v14)
            {
              if (v12[v14])
              {
                nullsub_1();
              }
            }
          }

          nullsub_1();
          std::to_string(&v19, v15);
          *v28 = v19.__r_.__value_.__l.__size_;
          *&v28[7] = *(&v19.__r_.__value_.__r.__words[1] + 7);
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v18 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  return v3;
}

void sub_A72640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, _Unwind_Exception *exception_objecta, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

void sub_A7270C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != -1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v5 = *(a2 + 16);
    }

    nullsub_1();
    std::to_string(&v6, v3);
    v7[0] = v6.__r_.__value_.__l.__size_;
    *(v7 + 7) = *(&v6.__r_.__value_.__r.__words[1] + 7);
    operator new();
  }
}

void sub_A72858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A728A8(char **a1, uint64_t *a2)
{
  v2 = ((a1[1] - *a1) >> 4) + 1;
  if (!(v2 >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    operator new();
  }

  sub_1794();
}

void sub_A72AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5E790(va);
  _Unwind_Resume(a1);
}

void *sub_A72AEC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_A72ED0(*(a2 + 16), 0, 3735928559);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v7)
    {
      v9 = v5 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (sub_608F4())
        {
          return v11;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if ((sub_608F4() & 1) == 0)
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_A72E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A72E7C(va);
  _Unwind_Resume(a1);
}

void sub_A72E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A72E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A72E7C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_A60FD8(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_A72ED0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      if (*(v6 + 39) < 0)
      {
        sub_325C(v13, v6[2], v6[3]);
        v15[0] = 0;
        v16 = -1;
        v7 = *(v6 + 12);
        if (v7 == -1)
        {
LABEL_7:
          if (SHIBYTE(v14) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_8;
        }
      }

      else
      {
        *v13 = *(v6 + 1);
        v14 = v6[4];
        v15[0] = 0;
        v16 = -1;
        v7 = *(v6 + 12);
        if (v7 == -1)
        {
          goto LABEL_7;
        }
      }

      __p[0] = v15;
      (off_2670AA0[v7])(__p, v6 + 5);
      v16 = v7;
      if (SHIBYTE(v14) < 0)
      {
LABEL_11:
        sub_325C(__p, v13[0], v13[1]);
        goto LABEL_12;
      }

LABEL_8:
      *__p = *v13;
      v18 = v14;
LABEL_12:
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v18 >= 0)
      {
        v9 = HIBYTE(v18);
      }

      else
      {
        v9 = __p[1];
      }

      v10 = sub_AAD8(&v21, v8, v9);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      LOBYTE(__p[0]) = 0;
      LODWORD(__p[1]) = -1;
      v11 = v16;
      if (v16 == -1)
      {
        v20 = &v19;
        sub_5AF20();
      }

      v21 = __p;
      (off_2670AA0[v16])(&v21, v15);
      LODWORD(__p[1]) = v11;
      v20 = &v19;
      v21 = &v20;
      v12 = (off_2670AE8[v11])(&v21, __p);
      if (LODWORD(__p[1]) != -1)
      {
        (off_2670920[LODWORD(__p[1])])(&v21, __p);
      }

      if (v16 != -1)
      {
        (off_2670920[v16])(__p, v15);
      }

      v16 = -1;
      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }

      a3 ^= ((((v10 + 0x388152A534) ^ 0xDEADBEEF) << 6) + (((v10 + 0x388152A534) ^ 0xDEADBEEF) >> 2) + v12 + 2654435769) ^ (v10 + 0x388152A534) ^ 0xDEADBEEF;
      v6 = *v6;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_A7312C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_5BB74(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A73158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_5BF0C(va);
  sub_A73484(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_A731A0(uint64_t a1, uint64_t ***a2)
{
  v2 = *(*a2 + 23);
  v3 = (*a2)[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = **a2;
  }

  if ((v2 & 0x80u) == 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  return sub_AAD8(&v7, v4, v5);
}

uint64_t sub_A731E4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 0.0)
  {
    return 0;
  }

  else
  {
    return *a2;
  }
}

uint64_t sub_A73220(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v4 = 3735928559;
  sub_A73268(&v4, v2);
  return v4;
}

void sub_A73268(void *a1, uint64_t *a2)
{
  sub_5B8CC(&__p, a2);
  v3 = __p;
  v4 = v13;
  if (__p == v13)
  {
    *a1 ^= (*a1 << 6) + 0x17CE538A8 + (*a1 >> 2);
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = 3735928559;
  do
  {
    v14[0] = 0;
    v15 = -1;
    v6 = *(v3 + 2);
    if (v6 == -1)
    {
      v17 = &v16;
      sub_5AF20();
    }

    v18 = v14;
    (off_2670AA0[v6])(&v18, v3);
    v15 = v6;
    v17 = &v16;
    v18 = &v17;
    v7 = (off_2670AE8[v6])(&v18, v14);
    if (v15 != -1)
    {
      (off_2670920[v15])(&v18, v14);
    }

    v5 ^= (v5 << 6) + 2654435769u + (v5 >> 2) + v7;
    v3 += 16;
  }

  while (v3 != v4);
  v3 = __p;
  *a1 ^= v5 + 2654435769u + (*a1 << 6) + (*a1 >> 2);
  if (v3)
  {
LABEL_10:
    v8 = v13;
    v9 = v3;
    if (v13 != v3)
    {
      do
      {
        v10 = v8 - 16;
        v11 = *(v8 - 2);
        if (v11 != -1)
        {
          (off_2670920[v11])(v14, v8 - 16);
        }

        *(v8 - 2) = -1;
        v8 -= 16;
      }

      while (v10 != v3);
      v9 = __p;
    }

    v13 = v3;
    operator delete(v9);
  }
}

void sub_A73448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, char *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_5BF0C(va1);
  sub_32A8F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A73484(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_2670920[v2])(&v4, a1 + 24);
  }

  *(a1 + 32) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A73504(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_5ADDC(v11, a2);
  v6 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_8D3F0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_A7362C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_8D5F4(va);
  _Unwind_Resume(a1);
}

void sub_A736F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A7370C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  *(a4 + 16) = xmmword_22A7480;
  *(a4 + 32) = xmmword_22A5CD0;
  *(a4 + 48) = 0u;
  v7 = (a4 + 48);
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 106) = 0u;
  *(a4 + 128) = 0;
  v8 = (a4 + 128);
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  v9 = *(a2 + 1612);
  *a4 = 0x8000000080000000;
  *(a4 + 8) = v9;
  *(a4 + 122) = *(a2 + 5);
  *(a4 + 124) = *(a2 + 1620);
  v10 = a3[146];
  if (v10 == 1)
  {
    sub_A74644(&__src, *(a1 + 8), 0x1FFFFFFFEuLL);
    v61 = v8;
    v62 = v5;
    v63 = v4;
    v18 = *(&__src + 1);
    v19 = 16;
    if (v69)
    {
      v19 = 32;
    }

    if (*(&__src + 1) >= *(&__src + v19))
    {
LABEL_53:
      *(a4 + 16) = 0xFFFFFFFFLL;
      *(a4 + 24) = 0;
      *(a4 + 152) = 1;
      __src = xmmword_22A7490;
      sub_A74424(v61, &__src, &v66, 4uLL);
      v4 = v63;
      v5 = v62;
      goto LABEL_92;
    }

    while (1)
    {
      v23 = __ROR8__(*v18, 32);
      v25 = *(a4 + 56);
      v24 = *(a4 + 64);
      if (v25 >= v24)
      {
        v27 = *v7;
        v28 = v25 - *v7;
        v29 = v28 >> 3;
        v30 = (v28 >> 3) + 1;
        if (v30 >> 61)
        {
          sub_1794();
        }

        v31 = v24 - v27;
        if (v31 >> 2 > v30)
        {
          v30 = v31 >> 2;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          if (!(v32 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v29) = v23;
        v26 = 8 * v29 + 8;
        memcpy(0, v27, v28);
        *(a4 + 48) = 0;
        *(a4 + 56) = v26;
        *(a4 + 64) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v25 = v23;
        v26 = (v25 + 8);
      }

      *(a4 + 56) = v26;
      v20 = v66;
      v18 = (*(&__src + 1) + 12);
      *(&__src + 1) = v18;
      if (v18 == v66)
      {
        v18 = v67;
        *(&__src + 1) = v67;
        LOBYTE(v69) = 1;
        v33 = *(__src + 16);
        v22 = v68;
      }

      else
      {
        v22 = v68;
        v33 = *(__src + 16);
        if ((v69 & 1) == 0)
        {
          v21 = 0;
          v34 = v66;
          if (*(__src + 16))
          {
            goto LABEL_38;
          }

          goto LABEL_16;
        }
      }

      v21 = 1;
      v34 = v22;
      if (v33)
      {
LABEL_38:
        if (v18 < v34)
        {
          while (1)
          {
            v35 = __ROR8__(*v18, 32);
            if (HIDWORD(v35) == 1 && (v35 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(__src + 4120)))
            {
              v18 = *(&__src + 1);
              v20 = v66;
              v21 = v69;
              break;
            }

            v20 = v66;
            v18 = (*(&__src + 1) + 12);
            *(&__src + 1) = v18;
            if (v18 == v66)
            {
              v18 = v67;
              *(&__src + 1) = v67;
              v21 = 1;
              LOBYTE(v69) = 1;
              if (v67 >= v68)
              {
                break;
              }
            }

            else
            {
              v21 = v69;
              if (v69)
              {
                v37 = 32;
              }

              else
              {
                v37 = 16;
              }

              if (v18 >= *(&__src + v37))
              {
                break;
              }
            }
          }

          v22 = v68;
        }
      }

LABEL_16:
      if (v21)
      {
        v20 = v22;
      }

      if (v18 >= v20)
      {
        goto LABEL_53;
      }
    }
  }

  if (v10)
  {
    goto LABEL_92;
  }

  v12 = 0;
  v13 = a3[16];
  v14 = 0xFFFFFFFFLL;
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      v47 = a3[14];
      if (!v47 || (v48 = a3[15], v48 == -1))
      {
        v49 = 0;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        v49 = v47 << 32;
      }

      *(a4 + 16) = v48 | v49;
      *(a4 + 24) = 1;
      v50 = *a3;
      if (!v50)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }

    if (v13 == 2)
    {
      v38 = a3[14];
      if (!v38 || (v39 = a3[15], v39 == -1))
      {
        v40 = 0;
        v39 = 0xFFFFFFFFLL;
      }

      else
      {
        v40 = v38 << 32;
      }

      *(a4 + 16) = v39 | v40;
      *(a4 + 24) = 2;
      v50 = *a3;
      if (!v50)
      {
        goto LABEL_84;
      }

      goto LABEL_80;
    }
  }

  else
  {
    switch(v13)
    {
      case 3:
        v41 = a3[14];
        if (!v41 || (v42 = a3[15], v42 == -1))
        {
          v43 = 0;
          v42 = 0xFFFFFFFFLL;
        }

        else
        {
          v43 = v41 << 32;
        }

        *(a4 + 16) = v42 | v43;
        *(a4 + 24) = 3;
        v50 = *a3;
        if (!v50)
        {
          goto LABEL_84;
        }

        goto LABEL_80;
      case 4:
        v44 = a3[14];
        if (!v44 || (v45 = a3[15], v45 == -1))
        {
          v46 = 0;
          v45 = 0xFFFFFFFFLL;
        }

        else
        {
          v46 = v44 << 32;
        }

        *(a4 + 16) = v45 | v46;
        *(a4 + 24) = 4;
        v50 = *a3;
        if (!v50)
        {
          goto LABEL_84;
        }

        goto LABEL_80;
      case 5:
        v15 = a3[14];
        if (!v15 || (v16 = a3[15], v16 == -1))
        {
          v17 = 0;
          v16 = 0xFFFFFFFFLL;
        }

        else
        {
          v17 = v15 << 32;
        }

        v14 = v16 | v17;
        v12 = 5;
        break;
    }
  }

  *(a4 + 16) = v14;
  *(a4 + 24) = v12;
  v50 = *a3;
  if (!v50)
  {
LABEL_84:
    v52 = 0;
    v51 = 0xFFFFFFFFLL;
    goto LABEL_85;
  }

LABEL_80:
  v51 = a3[1];
  if (v51 == -1)
  {
    goto LABEL_84;
  }

  v52 = v50 << 32;
LABEL_85:
  *(a4 + 28) = v51 | v52;
  *(a4 + 36) = *(a3 + 1);
  *(a4 + 44) = a3[4];
  *(a4 + 120) = *(a3 + 10);
  sub_A7424C(a3 + 3, &__src);
  v53 = *v7;
  if (*v7)
  {
    *(a4 + 56) = v53;
    operator delete(v53);
  }

  *(a4 + 48) = __src;
  *(a4 + 64) = v66;
  sub_A7424C(a3 + 9, &__src);
  v54 = *(a4 + 72);
  if (v54)
  {
    *(a4 + 80) = v54;
    operator delete(v54);
  }

  *(a4 + 72) = __src;
  *(a4 + 88) = v66;
  sub_A74338(a3 + 12, &__src);
  v55 = *(a4 + 96);
  if (v55)
  {
    *(a4 + 104) = v55;
    operator delete(v55);
  }

  *(a4 + 96) = __src;
  *(a4 + 112) = v66;
  *(a4 + 152) = 0;
  *&__src = 0x300000002;
  DWORD2(__src) = 4;
  sub_A74424(v8, &__src, &__src + 12, 3uLL);
LABEL_92:
  if (*v5)
  {
    result = sub_A88300(*(v5 + 8), *(v4 + 1608), v7);
    v57 = *(v4 + 1608);
    v58 = result / 10;
    v59 = result % 10;
    if ((result & 0x80000000) != 0)
    {
      v60 = -5;
      goto LABEL_97;
    }
  }

  else
  {
    LOBYTE(v59) = 0;
    v58 = 0;
    result = 0;
    v57 = *(v4 + 1608);
  }

  v60 = 5;
LABEL_97:
  *a4 = v57 + v58 + (((103 * (v60 + v59)) >> 15) & 1) + ((103 * (v60 + v59)) >> 10);
  *(a4 + 4) = result;
  if (result)
  {
    result = sub_7E7E4(1u);
    if (result)
    {
      sub_19594F8(&__src);
      sub_4A5C(&__src, "Shifted transit schedule lookup request time from ", 50);
      sub_35CC(&__dst, *(v4 + 1608));
      operator new();
    }
  }

  return result;
}

void sub_A7410C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_A4AD48(v63);
  _Unwind_Resume(a1);
}

uint64_t *sub_A7424C@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (((v2 - *result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_A7431C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A74338@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (((v2 - *result) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_A74408(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A74424(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v11 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 2)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 4;
    if (v21 >= 0x1C)
    {
      v18 = v17;
      if (v8 + v17 - &__src[v14] >= 0x20)
      {
        v22 = (v21 >> 2) + 1;
        v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 4;
      *v18 = v28;
      v18 += 4;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = v8 + v19;
LABEL_27:
  v6[1] = v20;
  return result;
}

uint64_t sub_A74644(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v7 = sub_C9E1D8(a2 + 3896, a3);
  v8 = *v7;
  *(a1 + 24) = *v7;
  v9 = sub_C9E1D8(a2 + 3896, a3);
  *(a1 + 32) = v8 + v9[1] - *v9;
  if (HIDWORD(a3) == 1 && (a3 + 3) < 2)
  {
    goto LABEL_28;
  }

  v10 = sub_A74944(a2 + 24, a3, 0, "transfers at stop");
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v12 < 7)
  {
    goto LABEL_28;
  }

  if (v11[3])
  {
    v13 = (v10 + v11[3] + *(v10 + v11[3]));
    if (v12 >= 0xD)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 0;
    if (!v13)
    {
      goto LABEL_15;
    }

LABEL_12:
    v15 = *v13;
    if (*v13)
    {
      *v6 = (v13 + 1);
      v16 = &v13[3 * v15 + 1];
LABEL_14:
      *(a1 + 16) = v16;
      goto LABEL_28;
    }

    goto LABEL_15;
  }

  v13 = 0;
  if (v12 < 0xD)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = v11[6];
  if (v11[6])
  {
    v14 = (v14 + v10 + *(v14 + v10));
  }

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v14)
  {
    v17 = (v14 - *v14);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v18)
      {
        if (v12 < 0xD)
        {
          v19 = 0;
        }

        else
        {
          v19 = v11[6];
          if (v11[6])
          {
            v19 = (v19 + v10 + *(v19 + v10));
          }
        }

        v20 = (v19 - *v19);
        if (*v20 >= 7u)
        {
          v21 = v20[3];
          if (v21)
          {
            if (*(v19 + v21))
            {
              v22 = v14 + v18 + *(v14 + v18) + 4;
              *v6 = v22;
              if (v12 < 0xD)
              {
                v23 = 0;
              }

              else
              {
                v23 = v11[6];
                if (v23)
                {
                  v23 = (v23 + v10 + *(v23 + v10));
                }
              }

              v34 = (v23 - *v23);
              if (*v34 >= 7u && (v35 = v34[3]) != 0)
              {
                v36 = *(v23 + v35);
              }

              else
              {
                v36 = 0;
              }

              v16 = v22 + 12 * v36;
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

LABEL_28:
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = v24;
  *(a1 + 72) = v24 == v25;
  if (v24 == v25)
  {
    v26 = *(a1 + 24);
    *(a1 + 8) = v26;
    *(a1 + 40) = *(a1 + 56);
    if (*(*a1 + 16) != 1)
    {
      return a1;
    }
  }

  else if (*(*a1 + 16) != 1)
  {
    return a1;
  }

  v27 = v24 == v25;
  v28 = 16;
  if (v27)
  {
    v28 = 32;
  }

  if (v26 < *(a1 + v28))
  {
    while (1)
    {
      v29 = __ROR8__(*v26, 32);
      v30 = HIDWORD(v29) != 1 || (v29 + 3) >= 2;
      if (!v30 || (sub_2D5204(**(*a1 + 4120)) & 1) != 0)
      {
        break;
      }

      v31 = *(a1 + 16);
      v26 = (*(a1 + 8) + 12);
      *(a1 + 8) = v26;
      if (v26 == v31)
      {
        v26 = *(a1 + 24);
        *(a1 + 8) = v26;
        *(a1 + 72) = 1;
        if (v26 >= *(a1 + 32))
        {
          return a1;
        }
      }

      else
      {
        if (*(a1 + 72))
        {
          v32 = 32;
        }

        else
        {
          v32 = 16;
        }

        if (v26 >= *(a1 + v32))
        {
          return a1;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_A74944(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0xDu)
  {
    v9 = *(v8 + 6);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v5)
      {
        return &v9[v5 + 1] + v9[v5 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v12;
      v20 = v6;
      v18[0] = sub_7FCF0(9u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  return 0;
}

void sub_A74AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A74AD4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v25 = (a3 + 8);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  BYTE7(v41) = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a3 + 32, &__p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p);
  }

  *(a3 + 184) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5 != v6)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v24 = _Q0;
    do
    {
      sub_A74F70(&__p, a1, v5);
      if (v63 == 1)
      {
        if (DWORD1(__p) == 2)
        {
          DWORD1(__p) = 1;
        }

        v31 = v46;
        v34 = v49;
        v32 = v47;
        v35 = v50;
        *&v37[1] = v56;
        *(&v37[2] + 1) = v58;
        v39[0] = v60;
        *&v29[32] = v44;
        v30 = v45;
        v27 = __p;
        v28 = v41;
        *v29 = v42;
        *&v29[16] = v43;
        v33 = v48;
        v49 = 0;
        v48 = 0uLL;
        *&v36[16] = v52;
        *&v36[32] = v53;
        *v36 = v51;
        *&v36[48] = v54;
        v37[0] = v55;
        v56 = 0;
        v55 = 0uLL;
        *(&v37[1] + 8) = v57;
        v57 = 0uLL;
        v38 = v59;
        v58 = 0;
        v59 = 0uLL;
        v60 = 0;
        *&v39[1] = v61;
        v39[3] = v62;
        v61 = 0uLL;
        v62 = 0;
        v12 = *(a3 + 16);
        if (v12 < *(a3 + 24))
        {
LABEL_13:
          v16 = v27;
          v17 = *v29;
          *(v12 + 16) = v28;
          *(v12 + 32) = v17;
          *v12 = v16;
          v18 = *&v29[16];
          v19 = *&v29[32];
          v20 = v30;
          *(v12 + 96) = v31;
          *(v12 + 64) = v19;
          *(v12 + 80) = v20;
          *(v12 + 48) = v18;
          *(v12 + 104) = v32;
          v21 = v33;
          *(v12 + 128) = v34;
          *(v12 + 112) = v21;
          v34 = 0;
          v33 = 0uLL;
          *(v12 + 136) = v35;
          v22 = *v36;
          v23 = *&v36[32];
          *(v12 + 160) = *&v36[16];
          *(v12 + 176) = v23;
          *(v12 + 144) = v22;
          *(v12 + 192) = *&v36[48];
          *(v12 + 200) = 0;
          *(v12 + 208) = 0;
          *(v12 + 216) = 0;
          *(v12 + 224) = 0;
          *(v12 + 200) = v37[0];
          *(v12 + 216) = *&v37[1];
          memset(v37, 0, 24);
          *(v12 + 232) = 0;
          *(v12 + 240) = 0;
          *(v12 + 224) = *(&v37[1] + 8);
          *(&v37[1] + 1) = 0;
          *&v37[2] = 0;
          *(v12 + 240) = *(&v37[2] + 1);
          *(v12 + 248) = 0;
          *(v12 + 256) = 0;
          *(v12 + 264) = 0;
          *(v12 + 248) = v38;
          *(v12 + 264) = v39[0];
          *(v12 + 272) = 0;
          *(&v37[2] + 1) = 0;
          v38 = 0uLL;
          v39[0] = 0;
          *(v12 + 280) = 0;
          *(v12 + 288) = 0;
          *(v12 + 272) = *&v39[1];
          *(v12 + 288) = v39[3];
          memset(&v39[1], 0, 24);
          *(a3 + 16) = v12 + 296;
          goto LABEL_14;
        }
      }

      else
      {
        LOWORD(v27) = 0;
        BYTE2(v27) = 0;
        *(&v27 + 4) = 0;
        HIDWORD(v27) = 0;
        v28 = xmmword_22A74B0;
        BYTE13(v28) = 0;
        *&v29[8] = 0;
        *v29 = 0x8000000080000000;
        *&v29[12] = xmmword_2291180;
        v29[25] = 0;
        *&v29[36] = 0;
        *&v29[28] = 0x8000000080000000;
        LODWORD(v30) = 0;
        *&v29[40] = 0x8000000080000000;
        *(&v30 + 4) = 0xFFFFFFFF00000000;
        HIDWORD(v30) = -1;
        v31 = 0;
        v33 = 0uLL;
        v34 = 0;
        v32 = 0x7FFFFFFF;
        v35 = 100;
        *v36 = -1;
        *&v36[8] = v24;
        *&v36[24] = v24;
        *&v36[40] = v24;
        memset(v39, 0, sizeof(v39));
        v38 = 0u;
        memset(v37, 0, sizeof(v37));
        v12 = *(a3 + 16);
        if (v12 < *(a3 + 24))
        {
          goto LABEL_13;
        }
      }

      sub_A7C8B8(v25, &v27);
      v14 = v13;
      v15 = v39[1];
      *(a3 + 16) = v14;
      if (v15)
      {
        v39[2] = v15;
        operator delete(v15);
      }

LABEL_14:
      if (v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v37[1] + 1))
      {
        *&v37[2] = *(&v37[1] + 1);
        operator delete(*(&v37[1] + 1));
      }

      v64 = v37;
      sub_A3212C(&v64);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v33);
        if (v63 == 1)
        {
LABEL_22:
          if (v61)
          {
            *(&v61 + 1) = v61;
            operator delete(v61);
          }

          if (v59)
          {
            *(&v59 + 1) = v59;
            operator delete(v59);
          }

          if (v57)
          {
            *(&v57 + 1) = v57;
            operator delete(v57);
          }

          *&v27 = &v55;
          sub_A3212C(&v27);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(v48);
          }
        }
      }

      else if (v63 == 1)
      {
        goto LABEL_22;
      }

      v5 += 29;
    }

    while (v5 != v6);
  }
}

void sub_A74F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  sub_A7850C(a15);
  _Unwind_Resume(a1);
}

void sub_A74F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  sub_A7847C(&a17);
  sub_A7CD3C(va);
  sub_A37AFC(v53);
  _Unwind_Resume(a1);
}

void sub_A74F70(_BYTE *a1, void *a2, void *a3)
{
  v3 = a1;
  v4 = a3[6];
  v266 = a3[7];
  if (v4 == v266)
  {
    *a1 = 0;
    a1[296] = 0;
    return;
  }

  v311 = 0;
  v312 = 0;
  v314 = xmmword_22A74C0;
  v315 = 0;
  v316 = 0x8000000080000000;
  v317 = 0;
  v318 = 0x8000000080000000;
  v319 = 0x7FFFFFFF;
  v320 = 0;
  v321 = 0x8000000080000000;
  v322 = 0;
  v325 = 0xFFFFFFFF00000000;
  __asm { FMOV            V0.2D, #1.0 }

  v323 = 0x8000000080000000;
  v324 = 0;
  v334 = _Q0;
  v335 = _Q0;
  v336 = _Q0;
  v313 = *(a3 + 156);
  v326 = -1;
  v332 = 100;
  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v327 = 0;
  v328 = 0x7FFFFFFF;
  v330 = 0;
  v329 = 0;
  v331 = 0;
  v333 = -1;
  v341 = 0u;
  v342 = 0u;
  do
  {
    v306 = 0;
    v305 = 0u;
    v309 = 0;
    v308 = 0uLL;
    v310[0] = 1;
    *&v310[4] = 0x8000000080000000;
    *&v310[12] = 0;
    v310[14] = 0;
    v300 = 0;
    v299 = 0u;
    v303 = 0;
    v302 = 0uLL;
    v304[0] = 1;
    *&v304[4] = 0x8000000080000000;
    *&v304[12] = 0;
    v304[14] = 0;
    v307 = 0;
    v301 = 1;
    v275 = v4;
    v8 = v4[1] - *v4;
    if (!v8)
    {
      goto LABEL_371;
    }

    v9 = 0;
    v274 = 0x8E38E38E38E38E39 * (v8 >> 4);
    do
    {
      v10 = *v275;
      v273 = sub_2FEF94(v9);
      v284 = v9;
      v11 = v10 + 144 * v9;
      LOBYTE(v354[0]) = 0;
      v364 = 0;
      v365[0] = 0;
      v365[28] = 0;
      v13 = *(v11 + 8);
      v12 = *(v11 + 16);
      if (v13 == v12)
      {
        goto LABEL_6;
      }

      do
      {
        while (1)
        {
          v16 = *(v13 + 1128);
          if (v16)
          {
            break;
          }

          if (v364)
          {
            v15 = v284;
            if (!sub_7E7E4(3u))
            {
              goto LABEL_322;
            }

            sub_19594F8(v376);
            sub_4A5C(v376, "The provided journey segment contains multiple non-contiguous sequences of public transport journey legs.", 105);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v124 = v379;
              v125 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v124 = *(&v377[2] + 1);
                v125 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v113 = 0;
                HIBYTE(v343[2]) = 0;
                goto LABEL_316;
              }

              v124 = *(&v377[1] + 1);
              v125 = v377 + 1;
            }

            v133 = *v125;
            v113 = v124 - *v125;
            if (v113 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v113 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v343[2]) = v124 - *v125;
            if (!v113)
            {
              goto LABEL_316;
            }

            goto LABEL_315;
          }

          v20 = v13;
          if (v13 == v12)
          {
            v20 = v13;
LABEL_49:
            if (!sub_7E7E4(3u))
            {
              goto LABEL_83;
            }

            sub_19594F8(v376);
            sub_4A5C(v376, "Empty sequence of public transport journey legs provided in spa journey leg adaption procedure.", 95);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v45 = v379;
              v46 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v45 = *(&v377[2] + 1);
                v46 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v42 = 0;
                __dst[23] = 0;
LABEL_76:
                __dst[v42] = 0;
                sub_7E854(__dst, 3u);
LABEL_77:
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                v376[0] = *&v278;
                *(v376 + *(*&v278 - 24)) = v281;
                if (SHIBYTE(v378) < 0)
                {
                  operator delete(*(&v377[3] + 1));
                }

LABEL_82:
                std::locale::~locale(v377);
                std::ostream::~ostream();
                std::ios::~ios();
                goto LABEL_83;
              }

              v45 = *(&v377[1] + 1);
              v46 = v377 + 1;
            }

            v48 = *v46;
            v42 = v45 - *v46;
            if (v42 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v42 >= 0x17)
            {
              operator new();
            }

            __dst[23] = v45 - *v46;
            if (v42)
            {
              memmove(__dst, v48, v42);
            }

            goto LABEL_76;
          }

          do
          {
            if (*(v20 + 1128))
            {
              break;
            }

            v20 += 1136;
          }

          while (v20 != v12);
          if (v13 == v20)
          {
            goto LABEL_49;
          }

          if (*(v20 - 8))
          {
            sub_5AF20();
          }

          v21 = *(v13 + 16);
          v22 = sub_3A25A8(a2[523] + 24, __ROR8__(*(v13 + 4), 32), 0, "trip");
          v23 = (v22 - *v22);
          if (*v23 < 9u || (v24 = v23[4]) == 0 || v21 >= *(v22 + v24) || (v25 = *(v20 - 1116), v26 = sub_3A25A8(a2[523] + 24, __ROR8__(*(v20 - 1132), 32), 0, "trip"), v27 = (v26 - *v26), *v27 < 9u) || (v28 = v27[4]) == 0 || v25 >= *(v26 + v28))
          {
            if (!sub_7E7E4(3u))
            {
              goto LABEL_83;
            }

            v387 = 0;
            v376[0] = *&v271;
            *(v376 + *(*&v271 - 24)) = v270;
            v39 = (v376 + *(v376[0] - 3));
            std::ios_base::init(v39, &v376[1]);
            v39[1].__vftable = 0;
            v39[1].__fmtflags_ = -1;
            std::locale::locale(v377);
            memset(v377 + 8, 0, 56);
            v378 = 0uLL;
            DWORD2(v379) = 16;
            *&v379 = &v377[3] + 8;
            std::string::append((&v377[3] + 8), 0x16uLL, 0);
            v40 = v378;
            if (v378 >= 0)
            {
              v40 = HIBYTE(v378);
            }

            *(&v377[2] + 1) = &v377[3] + 8;
            *&v377[2] = &v377[3] + 8;
            *&v377[3] = &v377[3] + v40 + 8;
            sub_4A5C(v376, "Public transport journey leg has a stop index that is out of range.", 67);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v43 = v379;
              v44 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v43 = *(&v377[2] + 1);
                v44 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v41 = 0;
                __dst[23] = 0;
LABEL_64:
                __dst[v41] = 0;
                sub_7E854(__dst, 3u);
                v3 = a1;
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                v376[0] = *&v278;
                *(v376 + *(*&v278 - 24)) = v281;
                if (SHIBYTE(v378) < 0)
                {
                  operator delete(*(&v377[3] + 1));
                }

                goto LABEL_82;
              }

              v43 = *(&v377[1] + 1);
              v44 = v377 + 1;
            }

            v47 = *v44;
            v41 = v43 - *v44;
            if (v41 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v41 >= 0x17)
            {
              operator new();
            }

            __dst[23] = v43 - *v44;
            if (v41)
            {
              memmove(__dst, v47, v41);
            }

            goto LABEL_64;
          }

          v29 = *(v13 + 4);
          v30 = *(v13 + 16);
          v31 = sub_3A231C(a2[523] + 24, __ROR8__(v29, 32), 0);
          v32 = &v31[-*v31];
          v33 = *v32;
          if (v33 <= 4)
          {
            v37 = 0;
            v35 = (4 * v29 + 4 + dword_4[v29]);
            v38 = (v35 - *v35);
            if (*v38 < 0xDu)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v34 = *(v32 + 2);
            if (*(v32 + 2))
            {
              v34 += &v31[*&v31[v34]];
            }

            v35 = (v34 + 4 * v29 + 4 + *(v34 + 4 * v29 + 4));
            if (v33 >= 7 && (v36 = *(v32 + 3)) != 0)
            {
              v37 = &v31[v36 + *&v31[v36]];
              v38 = (v35 - *v35);
              if (*v38 < 0xDu)
              {
                goto LABEL_98;
              }
            }

            else
            {
              v37 = 0;
              v38 = (v35 - *v35);
              if (*v38 < 0xDu)
              {
                goto LABEL_98;
              }
            }
          }

          v50 = v38[6];
          if (v50)
          {
            v51 = *(v35 + v50);
            goto LABEL_99;
          }

LABEL_98:
          v51 = -1;
LABEL_99:
          v52 = *sub_3A2E6C(v37, v51 + v30);
          v53 = *(v20 - 1132);
          v54 = *(v20 - 1116);
          v55 = sub_3A231C(a2[523] + 24, __ROR8__(v53, 32), 0);
          v56 = &v55[-*v55];
          v57 = *v56;
          if (v57 <= 4)
          {
            v61 = 0;
            v59 = (4 * v53 + 4 + dword_4[v53]);
            v62 = (v59 - *v59);
            if (*v62 < 0xDu)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v58 = *(v56 + 2);
            if (*(v56 + 2))
            {
              v58 += &v55[*&v55[v58]];
            }

            v59 = (v58 + 4 * v53 + 4 + *(v58 + 4 * v53 + 4));
            if (v57 >= 7 && (v60 = *(v56 + 3)) != 0)
            {
              v61 = &v55[v60 + *&v55[v60]];
              v62 = (v59 - *v59);
              if (*v62 < 0xDu)
              {
                goto LABEL_111;
              }
            }

            else
            {
              v61 = 0;
              v62 = (v59 - *v59);
              if (*v62 < 0xDu)
              {
                goto LABEL_111;
              }
            }
          }

          v63 = v62[6];
          if (!v63)
          {
LABEL_111:
            v64 = -1;
            goto LABEL_112;
          }

          v64 = *(v59 + v63);
LABEL_112:
          v65 = sub_3A2E6C(v61, v64 + v54);
          v66 = __ROR8__(v52, 32);
          v67 = *v65;
          v265 = v66;
          sub_A7905C(&v370, a2, v66, 0, 0, 0);
          v68 = v374;
          if (v374 >= v375)
          {
            goto LABEL_182;
          }

          v264 = __ROR8__(v67, 32);
          while (1)
          {
            v268 = __ROR8__(*v68, 32);
            v69 = sub_A79708(__dst, a2, v268, 0, 0, 0);
            v376[0] = &v396;
            v376[1] = &dword_0 + 1;
            v395 = v264;
            v396 = v265;
            v366 = &v395;
            v367 = 1;
            sub_A79B68(v69, v376, &v366, &v368);
            v70 = v368;
            v71 = v369;
            if (v368 != v369)
            {
              while (1)
              {
                v75 = *v70;
                v74 = v70[1];
                v389 = *&__dst[24] + 16 * v75;
                if (v392 == 1)
                {
                  v76 = sub_A7A1E8(a2, __dst, *(v13 + 24), 2u);
                }

                else
                {
                  v76 = sub_A7A710(__dst, *(v13 + 24), 1);
                }

                if ((v76 & 1) == 0)
                {
                  goto LABEL_121;
                }

                v77 = *(v389 + 14);
                v78 = &v394;
                if (!v392)
                {
                  v78 = v391;
                }

                v79 = *v78;
                v80 = (*&__dst[16] + *(*&__dst[16] - **&__dst[16] + 6));
                v81 = v391[1];
                v82 = v80 + *v80 + 4;
                v83 = (*(v82 + 8 * (v81 + ((v389 - *&__dst[24]) >> 4)) + 4) + v79);
                v84 = *(v389 + 8);
                v389 = *&__dst[24] + 16 * v74;
                if (v83 != *(v13 + 24))
                {
                  goto LABEL_121;
                }

                v269 = (*(v82 + 8 * (v81 + v74)) + v79);
                if (v269 != *(v20 - 1100))
                {
                  goto LABEL_121;
                }

                v267 = *(*&__dst[24] + 16 * v74 + 14);
                if (0x193D4BB7E327A977 * ((v20 - v13) >> 4) != v267 - v77 + 1)
                {
                  goto LABEL_121;
                }

                v85 = sub_A57920(a2 + 517, v268);
                v86 = (v85 - *v85);
                if (*v86 >= 9u && (v87 = v86[4]) != 0)
                {
                  v88 = (v85 + v87 + *(v85 + v87));
                }

                else
                {
                  v88 = 0;
                }

                if (*(v13 + 16) != *(sub_A571D4(v88, v75) + 6))
                {
                  goto LABEL_121;
                }

                v89 = sub_A57920(a2 + 517, v268);
                v90 = (v89 - *v89);
                if (*v90 >= 9u && (v91 = v90[4]) != 0)
                {
                  v92 = (v89 + v91 + *(v89 + v91));
                }

                else
                {
                  v92 = 0;
                }

                if (*(v20 - 1116) != *(sub_A571D4(v92, v74) + 6))
                {
                  goto LABEL_121;
                }

                sub_A78D38(a2 + 517, v268, -1431655765 * ((v391 - v390) >> 2), &v366);
                v93 = 12 * v267 + 12;
                if (12 * v77 == v93)
                {
LABEL_151:
                  v378 = 0u;
                  v379 = 0u;
                  v377[3] = 0u;
                  v382 = 0;
                  v383 = 0;
                  v381 = 0;
                  v384 = 1;
                  v385 = 0x8000000080000000;
                  v386 = 0;
                  v99 = 0xFFFFFFFF00000000;
                  if (v392)
                  {
                    v99 = v393 << 32;
                  }

                  v100 = (-1431655765 * ((v391 - v390) >> 2)) | v99;
                  if (v392)
                  {
                    v101 = v394;
                  }

                  else
                  {
                    v101 = 0x7FFFFFFF;
                  }

                  *&v377[1] = v268;
                  *(&v377[1] + 1) = v100;
                  *&v377[2] = __PAIR64__(v75, v101);
                  LODWORD(v380) = 0x7FFFFFFF;
                  DWORD2(v377[2]) = v74;
                  v376[1] = (v83 | (v83 << 32));
                  LOWORD(v377[0]) = 0;
                  LODWORD(v376[0]) = v273;
                  HIDWORD(v376[0]) = 10 * v84;
                  *(v377 + 4) = v269 | (v269 << 32);
                  WORD6(v377[0]) = 0;
                  sub_A332F8(v343, v376);
                  v353 = 1;
                  if (v381)
                  {
                    v382 = v381;
                    operator delete(v381);
                  }

                  if (*(&v378 + 1))
                  {
                    *&v379 = *(&v378 + 1);
                    operator delete(*(&v378 + 1));
                  }

                  if (*&v377[3])
                  {
                    *(&v377[3] + 1) = *&v377[3];
                    operator delete(*&v377[3]);
                  }

                  v73 = 0;
                  v94 = v366;
                  if (v366)
                  {
                    goto LABEL_119;
                  }
                }

                else
                {
                  v94 = v366;
                  v95 = v366 + v93;
                  v96 = v366 + 12 * v77;
                  v97 = v13;
                  while (1)
                  {
                    if (v97[282])
                    {
                      sub_5AF20();
                    }

                    _ZF = *(v96 + 1) == v97[2] && *v96 == v97[1];
                    if (!_ZF || *(v96 + 2) != v97[3])
                    {
                      break;
                    }

                    v96 += 12;
                    v97 += 284;
                    if (v96 == v95)
                    {
                      goto LABEL_151;
                    }
                  }

                  v73 = 1;
                  if (v366)
                  {
LABEL_119:
                    v367 = v94;
                    operator delete(v94);
                  }
                }

                if ((v73 & 1) == 0)
                {
                  v72 = 0;
                  v3 = a1;
                  v70 = v368;
                  if (v368)
                  {
                    goto LABEL_165;
                  }

                  goto LABEL_166;
                }

LABEL_121:
                v70 += 2;
                if (v70 == v71)
                {
                  v72 = 1;
                  v3 = a1;
                  v70 = v368;
                  if (!v368)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_165;
                }
              }
            }

            v72 = 1;
            if (v368)
            {
LABEL_165:
              v369 = v70;
              operator delete(v70);
            }

LABEL_166:
            if (!v72)
            {
              break;
            }

            v102 = v375;
            v68 = v374 + 2;
            v374 = v68;
            if (v68 == v375)
            {
              v103 = i + 2;
              for (i = v103; v103 < v373; i = v103)
              {
                v68 = *v103;
                v102 = v103[1];
                if (*v103 != v102)
                {
                  v374 = *v103;
                  v375 = v102;
                  goto LABEL_173;
                }

                v103 += 2;
              }

LABEL_182:
              if (!sub_7E7E4(1u))
              {
LABEL_83:
                LOBYTE(v343[0]) = 0;
                v353 = 0;
                v49 = v364;
                if (v364)
                {
                  goto LABEL_197;
                }

                goto LABEL_84;
              }

              sub_19594F8(v376);
              sub_4A5C(v376, "No matching stop pattern found in transit routing data during spa journey leg adaption procedure.", 97);
              if ((BYTE8(v379) & 0x10) != 0)
              {
                v109 = v379;
                v110 = &v377[2];
                if (v379 < *(&v377[2] + 1))
                {
                  *&v379 = *(&v377[2] + 1);
                  v109 = *(&v377[2] + 1);
                  v110 = &v377[2];
                }
              }

              else
              {
                if ((BYTE8(v379) & 8) == 0)
                {
                  v108 = 0;
                  __dst[23] = 0;
LABEL_195:
                  __dst[v108] = 0;
                  sub_7E854(__dst, 1u);
                  goto LABEL_77;
                }

                v109 = *(&v377[1] + 1);
                v110 = v377 + 1;
              }

              v111 = *v110;
              v108 = v109 - *v110;
              if (v108 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v108 >= 0x17)
              {
                operator new();
              }

              __dst[23] = v109 - *v110;
              if (v108)
              {
                memmove(__dst, v111, v108);
              }

              goto LABEL_195;
            }

LABEL_173:
            while (v68 < v102)
            {
              v104 = sub_A795E8(&v370);
              v68 = v374;
              v102 = v375;
              if (!v104)
              {
                break;
              }

              v68 = v374 + 2;
              v374 = v68;
              if (v68 == v375)
              {
                v105 = i;
                while (1)
                {
                  v105 += 2;
                  i = v105;
                  if (v105 >= v373)
                  {
                    goto LABEL_114;
                  }

                  v106 = *v105;
                  v107 = v105[1];
                  if (*v105 != v107)
                  {
                    v374 = *v105;
                    v375 = v107;
                    v102 = v107;
                    v68 = v106;
                    goto LABEL_173;
                  }
                }
              }
            }

LABEL_114:
            if (v68 >= v102)
            {
              goto LABEL_182;
            }
          }

          v49 = v364;
          if (v364 != v353)
          {
LABEL_197:
            if (v49)
            {
              if (v361)
              {
                *(&v361 + 1) = v361;
                operator delete(v361);
              }

              if (v358)
              {
                *(&v358 + 1) = v358;
                operator delete(v358);
              }

              if (v356)
              {
                *(&v356 + 1) = v356;
                operator delete(v356);
              }

              v364 = 0;
LABEL_205:
              if (v353 != 1)
              {
                goto LABEL_11;
              }
            }

            else
            {
              *v354 = *v343;
              *&v354[2] = *&v343[2];
              v355[0] = v344[0];
              *(v355 + 12) = *(v344 + 12);
              v356 = v345;
              v345 = 0uLL;
              v358 = v347;
              v357 = v346;
              v359 = v348;
              v346 = 0;
              v347 = 0uLL;
              v348 = 0;
              v360 = v349;
              v361 = v350;
              v362 = v351;
              v350 = 0uLL;
              v351 = 0;
              v363 = v352;
              v364 = 1;
              if (v353 != 1)
              {
                goto LABEL_11;
              }
            }

LABEL_206:
            if (v350)
            {
              *(&v350 + 1) = v350;
              operator delete(v350);
            }

            if (v347)
            {
              *(&v347 + 1) = v347;
              operator delete(v347);
            }

            if (v345)
            {
              *(&v345 + 1) = v345;
              operator delete(v345);
            }

            goto LABEL_11;
          }

LABEL_84:
          if (!v49)
          {
            goto LABEL_205;
          }

          *v354 = *v343;
          *&v354[2] = *&v343[2];
          v355[0] = v344[0];
          *(v355 + 12) = *(v344 + 12);
          if (v356)
          {
            *(&v356 + 1) = v356;
            operator delete(v356);
          }

          v356 = v345;
          v357 = v346;
          v346 = 0;
          v345 = 0uLL;
          if (v358)
          {
            *(&v358 + 1) = v358;
            operator delete(v358);
          }

          v358 = v347;
          v359 = v348;
          v348 = 0;
          v347 = 0uLL;
          v360 = v349;
          if (v361)
          {
            *(&v361 + 1) = v361;
            operator delete(v361);
          }

          v361 = v350;
          v362 = v351;
          v351 = 0;
          v350 = 0uLL;
          v363 = v352;
          if (v353 == 1)
          {
            goto LABEL_206;
          }

LABEL_11:
          if ((v364 & 1) == 0)
          {
            v15 = v284;
            if (!sub_7E7E4(3u))
            {
              goto LABEL_322;
            }

            sub_19594F8(v376);
            sub_4A5C(v376, "The provided journey segment contains a sequence of public transport journey legs, which could not be adapted to a spa public transport journey leg.", 148);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v128 = v379;
              v129 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v128 = *(&v377[2] + 1);
                v129 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v113 = 0;
                HIBYTE(v343[2]) = 0;
                goto LABEL_316;
              }

              v128 = *(&v377[1] + 1);
              v129 = v377 + 1;
            }

            v133 = *v129;
            v113 = v128 - *v129;
            if (v113 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v113 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v343[2]) = v128 - *v129;
            if (!v113)
            {
              goto LABEL_316;
            }

            goto LABEL_315;
          }

          v12 = *(v11 + 16);
          v13 = v20;
          if (v20 == v12)
          {
            goto LABEL_214;
          }
        }

        if (v16 == 4)
        {
          v15 = v284;
          if (!sub_7E7E4(1u))
          {
            goto LABEL_322;
          }

          sub_19594F8(v376);
          sub_4A5C(v376, "The provided journey segment contains a self-transfer journey leg, which cannot be adapted.", 91);
          if ((BYTE8(v379) & 0x10) != 0)
          {
            v120 = v379;
            v121 = &v377[2];
            if (v379 < *(&v377[2] + 1))
            {
              *&v379 = *(&v377[2] + 1);
              v120 = *(&v377[2] + 1);
              v121 = &v377[2];
            }
          }

          else
          {
            if ((BYTE8(v379) & 8) == 0)
            {
              v112 = 0;
              HIBYTE(v343[2]) = 0;
LABEL_259:
              *(v343 + v112) = 0;
              sub_7E854(v343, 1u);
LABEL_317:
              if (SHIBYTE(v343[2]) < 0)
              {
                operator delete(v343[0]);
              }

              v376[0] = *&v278;
              *(v376 + *(*&v278 - 24)) = v281;
              if (SHIBYTE(v378) < 0)
              {
                operator delete(*(&v377[3] + 1));
              }

              std::locale::~locale(v377);
              std::ostream::~ostream();
              std::ios::~ios();
LABEL_322:
              LOBYTE(v290[0]) = 0;
              v297 = 0;
              v298[0] = 0;
              v298[28] = 0;
              if (v364 != 1)
              {
                goto LABEL_329;
              }

              goto LABEL_323;
            }

            v120 = *(&v377[1] + 1);
            v121 = v377 + 1;
          }

          v132 = *v121;
          v112 = v120 - *v121;
          if (v112 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v112 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v343[2]) = v120 - *v121;
          if (v112)
          {
            memmove(v343, v132, v112);
          }

          goto LABEL_259;
        }

        if (v365[28])
        {
          v15 = v284;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_322;
          }

          sub_19594F8(v376);
          sub_4A5C(v376, "The provided journey segment contains multiple non-contiguous sequences of walking journey legs.", 96);
          if ((BYTE8(v379) & 0x10) != 0)
          {
            v122 = v379;
            v123 = &v377[2];
            if (v379 < *(&v377[2] + 1))
            {
              *&v379 = *(&v377[2] + 1);
              v122 = *(&v377[2] + 1);
              v123 = &v377[2];
            }
          }

          else
          {
            if ((BYTE8(v379) & 8) == 0)
            {
              v113 = 0;
              HIBYTE(v343[2]) = 0;
LABEL_316:
              *(v343 + v113) = 0;
              sub_7E854(v343, 3u);
              goto LABEL_317;
            }

            v122 = *(&v377[1] + 1);
            v123 = v377 + 1;
          }

          v133 = *v123;
          v113 = v122 - *v123;
          if (v113 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v113 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v343[2]) = v122 - *v123;
          if (!v113)
          {
            goto LABEL_316;
          }

          goto LABEL_315;
        }

        for (j = v13; j != v12; j += 1136)
        {
          if ((*(j + 1128) | 4) == 4)
          {
            break;
          }
        }

        if (v13 == j)
        {
          v15 = v284;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_303;
          }

          sub_19594F8(v376);
          sub_4A5C(v376, "Empty sequence of walking journey legs provided for spa journey leg adaption procedure.", 87);
          if ((BYTE8(v379) & 0x10) != 0)
          {
            v126 = v379;
            v127 = &v377[2];
            if (v379 < *(&v377[2] + 1))
            {
              *&v379 = *(&v377[2] + 1);
              v126 = *(&v377[2] + 1);
              v127 = &v377[2];
            }
          }

          else
          {
            if ((BYTE8(v379) & 8) == 0)
            {
              v114 = 0;
              HIBYTE(v343[2]) = 0;
              goto LABEL_281;
            }

            v126 = *(&v377[1] + 1);
            v127 = v377 + 1;
          }

          v134 = *v127;
          v114 = v126 - *v127;
          if (v114 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v114 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v343[2]) = v126 - *v127;
          if (v114)
          {
            memmove(v343, v134, v114);
          }

LABEL_281:
          *(v343 + v114) = 0;
          sub_7E854(v343, 3u);
          if (SHIBYTE(v343[2]) < 0)
          {
            v135 = v343[0];
LABEL_299:
            operator delete(v135);
          }

LABEL_300:
          v376[0] = *&v278;
          *(v376 + *(*&v278 - 24)) = v281;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*(&v377[3] + 1));
          }

          std::locale::~locale(v377);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_303;
        }

        *&v18 = 0xFFFFFFFFLL;
        *(&v18 + 1) = 0xFFFFFFFFLL;
        *(&v343[1] + 4) = v18;
        LODWORD(v343[0]) = 0;
        v19 = sub_50360C(v13);
        HIDWORD(v343[0]) = v19;
        LODWORD(v343[1]) = sub_503828((j - 1136));
        if (v19 > SLODWORD(v343[1]))
        {
          v15 = v284;
          if (sub_7E7E4(3u))
          {
            sub_19594F8(v376);
            v115 = sub_4A5C(v376, "Adapted spa walking leg departs after it arrives: ", 50);
            v116 = sub_258D4(v115, v343 + 1);
            v117 = sub_4A5C(v116, " > ", 3);
            v118 = sub_258D4(v117, &v343[1]);
            sub_4A5C(v118, ".", 1);
            if ((BYTE8(v379) & 0x10) != 0)
            {
              v130 = v379;
              v131 = &v377[2];
              if (v379 < *(&v377[2] + 1))
              {
                *&v379 = *(&v377[2] + 1);
                v130 = *(&v377[2] + 1);
                v131 = &v377[2];
              }
            }

            else
            {
              if ((BYTE8(v379) & 8) == 0)
              {
                v119 = 0;
                v371 = 0;
                goto LABEL_297;
              }

              v130 = *(&v377[1] + 1);
              v131 = v377 + 1;
            }

            v136 = *v131;
            v119 = v130 - *v131;
            if (v119 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v119 >= 0x17)
            {
              operator new();
            }

            v371 = v130 - *v131;
            if (v119)
            {
              memmove(&v370, v136, v119);
            }

LABEL_297:
            *(&v370 + v119) = 0;
            sub_7E854(&v370, 3u);
            if (v371 < 0)
            {
              v135 = v370;
              goto LABEL_299;
            }

            goto LABEL_300;
          }

LABEL_303:
          v365[0] = 0;
          *&v365[1] = *__dst;
          *&v365[12] = *&__dst[11];
          v365[28] = 0;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_322;
          }

          sub_19594F8(v376);
          sub_4A5C(v376, "The provided journey segment contains a sequence of walking journey legs, which could not be adapted to a spa walking journey leg.", 130);
          if ((BYTE8(v379) & 0x10) != 0)
          {
            v137 = v379;
            v138 = &v377[2];
            if (v379 < *(&v377[2] + 1))
            {
              *&v379 = *(&v377[2] + 1);
              v137 = *(&v377[2] + 1);
              v138 = &v377[2];
            }
          }

          else
          {
            if ((BYTE8(v379) & 8) == 0)
            {
              v113 = 0;
              HIBYTE(v343[2]) = 0;
              goto LABEL_316;
            }

            v137 = *(&v377[1] + 1);
            v138 = v377 + 1;
          }

          v133 = *v138;
          v113 = v137 - *v138;
          if (v113 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v113 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v343[2]) = v137 - *v138;
          if (!v113)
          {
            goto LABEL_316;
          }

LABEL_315:
          memmove(v343, v133, v113);
          goto LABEL_316;
        }

        *__dst = *(v343 + 1);
        *&__dst[11] = *(&v343[1] + 4);
        v365[0] = v343[0];
        *&v365[1] = *__dst;
        *&v365[12] = *(&v343[1] + 4);
        v365[28] = 1;
        v12 = *(v11 + 16);
        v13 = j;
      }

      while (j != v12);
LABEL_214:
      if ((v365[28] & 1) == 0)
      {
LABEL_6:
        *&v14 = 0xFFFFFFFFLL;
        *(&v14 + 1) = 0xFFFFFFFFLL;
        *&v365[12] = v14;
        v365[28] = 1;
        *v365 = 0;
        *&v365[4] = HIDWORD(v354[2]);
        *&v365[8] = HIDWORD(v354[2]);
      }

      LOBYTE(v290[0]) = 0;
      v297 = 0;
      v15 = v284;
      if (v364 == 1)
      {
        sub_A332F8(v290, v354);
        v297 = 1;
      }

      *v298 = *v365;
      *&v298[16] = *&v365[16];
      if (v364 == 1)
      {
LABEL_323:
        if (v361)
        {
          *(&v361 + 1) = v361;
          operator delete(v361);
        }

        if (v358)
        {
          *(&v358 + 1) = v358;
          operator delete(v358);
        }

        if (v356)
        {
          *(&v356 + 1) = v356;
          operator delete(v356);
        }
      }

LABEL_329:
      v139 = v298[28];
      if ((v298[28] & 1) == 0)
      {
        if (!sub_7E7E4(3u))
        {
          goto LABEL_358;
        }

        sub_19594F8(v376);
        sub_4A5C(v376, "Journey segment adaption resulted in invalid walking spa journey leg, which must not happen.", 92);
        if ((BYTE8(v379) & 0x10) != 0)
        {
          v145 = v379;
          v146 = &v377[2];
          if (v379 < *(&v377[2] + 1))
          {
            *&v379 = *(&v377[2] + 1);
            v145 = *(&v377[2] + 1);
            v146 = &v377[2];
          }
        }

        else
        {
          if ((BYTE8(v379) & 8) == 0)
          {
            v142 = 0;
            HIBYTE(v354[2]) = 0;
LABEL_353:
            *(v354 + v142) = 0;
            sub_7E854(v354, 3u);
            if (SHIBYTE(v354[2]) < 0)
            {
              operator delete(v354[0]);
            }

            v376[0] = *&v278;
            *(v376 + *(*&v278 - 24)) = v281;
            if (SHIBYTE(v378) < 0)
            {
              operator delete(*(&v377[3] + 1));
            }

            std::locale::~locale(v377);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_358:
            *v3 = 0;
            v3[296] = 0;
            if (v297 != 1)
            {
              goto LABEL_365;
            }

            goto LABEL_359;
          }

          v145 = *(&v377[1] + 1);
          v146 = v377 + 1;
        }

        v147 = *v146;
        v142 = v145 - *v146;
        if (v142 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v142 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v354[2]) = v145 - *v146;
        if (v142)
        {
          memmove(v354, v147, v142);
        }

        goto LABEL_353;
      }

      if (v297 == 1)
      {
        v140 = *(&v305 + 1);
        if (*(&v305 + 1) >= v306)
        {
          v141 = sub_A7B9A8(&v305, v290);
        }

        else
        {
          sub_A332F8(*(&v305 + 1), v290);
          *(v140 + 160) = 0;
          v141 = (v140 + 168);
        }

        *(&v305 + 1) = v141;
      }

      v143 = *(&v299 + 1);
      if (*(&v299 + 1) >= v300)
      {
        *(&v299 + 1) = sub_A7BCFC(&v299, v298);
        if (v297 != 1)
        {
          goto LABEL_365;
        }
      }

      else
      {
        v144 = *v298;
        *(*(&v299 + 1) + 12) = *&v298[12];
        *v143 = v144;
        *(v143 + 160) = 1;
        *(&v299 + 1) = v143 + 168;
        if (v297 != 1)
        {
          goto LABEL_365;
        }
      }

LABEL_359:
      if (v295)
      {
        v296 = v295;
        operator delete(v295);
      }

      if (v293)
      {
        v294 = v293;
        operator delete(v293);
      }

      if (v291)
      {
        v292 = v291;
        operator delete(v291);
      }

LABEL_365:
      if ((v139 & 1) == 0)
      {
        goto LABEL_550;
      }

      v9 = v15 + 1;
    }

    while (v9 != v274);
    if (v305 == *(&v305 + 1))
    {
LABEL_371:
      v150 = *(&v337 + 1);
      if (*(&v337 + 1) >= v338)
      {
        goto LABEL_375;
      }

LABEL_372:
      *(v150 + 8) = 0;
      *(v150 + 16) = 0;
      *v150 = 0;
      *v150 = v299;
      *(v150 + 16) = v300;
      v299 = 0uLL;
      v300 = 0;
      *(v150 + 24) = v301;
      *(v150 + 40) = 0;
      *(v150 + 48) = 0;
      *(v150 + 32) = 0;
      *(v150 + 32) = v302;
      *(v150 + 48) = v303;
      v303 = 0;
      v302 = 0uLL;
      v151 = *v304;
      *(v150 + 63) = *&v304[7];
      *(v150 + 56) = v151;
      *(&v337 + 1) = v150 + 72;
      goto LABEL_377;
    }

    if (*(&v305 + 1) - v305 != *(&v299 + 1) - v299)
    {
      if (!sub_7E7E4(3u))
      {
LABEL_549:
        *v3 = 0;
        v3[296] = 0;
LABEL_550:
        if (v302)
        {
          *(&v302 + 1) = v302;
          operator delete(v302);
        }

        v244 = v299;
        if (v299)
        {
          v245 = *(&v299 + 1);
          v246 = v299;
          if (*(&v299 + 1) != v299)
          {
            do
            {
              v247 = v245 - 168;
              v248 = *(v245 - 8);
              if (v248 != -1)
              {
                (off_2670B30[v248])(v376, v245 - 168);
              }

              *(v245 - 8) = -1;
              v245 -= 168;
            }

            while (v247 != v244);
            v246 = v299;
          }

          *(&v299 + 1) = v244;
          operator delete(v246);
        }

        if (v308)
        {
          *(&v308 + 1) = v308;
          operator delete(v308);
        }

        v249 = v305;
        if (v305)
        {
          v250 = *(&v305 + 1);
          v251 = v305;
          if (*(&v305 + 1) != v305)
          {
            do
            {
              v252 = v250 - 168;
              v253 = *(v250 - 8);
              if (v253 != -1)
              {
                (off_2670B30[v253])(v376, v250 - 168);
              }

              *(v250 - 8) = -1;
              v250 -= 168;
            }

            while (v252 != v249);
            v251 = v305;
          }

          *(&v305 + 1) = v249;
          operator delete(v251);
        }

        v240 = *(&v341 + 1);
        if (!*(&v341 + 1))
        {
          goto LABEL_572;
        }

        goto LABEL_571;
      }

      sub_19594F8(v376);
      sub_4A5C(v376, "Journey bundle adaption resulted in public transport and walking bundles of different sizes.", 92);
      if ((BYTE8(v379) & 0x10) != 0)
      {
        v241 = v379;
        if (v379 < *(&v377[2] + 1))
        {
          *&v379 = *(&v377[2] + 1);
          v241 = *(&v377[2] + 1);
        }

        v242 = &v377[2];
      }

      else
      {
        if ((BYTE8(v379) & 8) == 0)
        {
          v167 = 0;
          HIBYTE(v354[2]) = 0;
LABEL_544:
          *(v354 + v167) = 0;
          sub_7E854(v354, 3u);
          if (SHIBYTE(v354[2]) < 0)
          {
            operator delete(v354[0]);
          }

          v376[0] = *&v278;
          *(v376 + *(*&v278 - 24)) = v281;
          if (SHIBYTE(v378) < 0)
          {
            operator delete(*(&v377[3] + 1));
          }

          std::locale::~locale(v377);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_549;
        }

        v242 = v377 + 1;
        v241 = *(&v377[1] + 1);
      }

      v243 = *v242;
      v167 = v241 - *v242;
      if (v167 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v167 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v354[2]) = v241 - *v242;
      if (v167)
      {
        memmove(v354, v243, v167);
      }

      goto LABEL_544;
    }

    v148 = *(&v337 + 1);
    if (*(&v337 + 1) >= v338)
    {
      v150 = sub_A7BEF0(&v337, &v305);
    }

    else
    {
      *(*(&v337 + 1) + 8) = 0;
      *(v148 + 16) = 0;
      *v148 = 0;
      *v148 = v305;
      *(v148 + 16) = v306;
      v305 = 0uLL;
      v306 = 0;
      *(v148 + 24) = v307;
      *(v148 + 40) = 0;
      *(v148 + 48) = 0;
      *(v148 + 32) = 0;
      *(v148 + 32) = v308;
      *(v148 + 48) = v309;
      v309 = 0;
      v308 = 0uLL;
      v149 = *v310;
      *(v148 + 63) = *&v310[7];
      *(v148 + 56) = v149;
      v150 = v148 + 72;
    }

    *(&v337 + 1) = v150;
    if (v150 < v338)
    {
      goto LABEL_372;
    }

LABEL_375:
    *(&v337 + 1) = sub_A7BEF0(&v337, &v299);
    if (v302)
    {
      *(&v302 + 1) = v302;
      operator delete(v302);
    }

LABEL_377:
    v152 = v299;
    if (v299)
    {
      v153 = *(&v299 + 1);
      v154 = v299;
      if (*(&v299 + 1) != v299)
      {
        do
        {
          v155 = v153 - 168;
          v156 = *(v153 - 8);
          if (v156 != -1)
          {
            (off_2670B30[v156])(v376, v153 - 168);
          }

          *(v153 - 8) = -1;
          v153 -= 168;
        }

        while (v155 != v152);
        v154 = v299;
      }

      *(&v299 + 1) = v152;
      operator delete(v154);
    }

    if (v308)
    {
      *(&v308 + 1) = v308;
      operator delete(v308);
    }

    v157 = v305;
    if (v305)
    {
      v158 = *(&v305 + 1);
      v159 = v305;
      if (*(&v305 + 1) != v305)
      {
        do
        {
          v160 = v158 - 168;
          v161 = *(v158 - 8);
          if (v161 != -1)
          {
            (off_2670B30[v161])(v376, v158 - 168);
          }

          *(v158 - 8) = -1;
          v158 -= 168;
        }

        while (v160 != v157);
        v159 = v305;
      }

      *(&v305 + 1) = v157;
      operator delete(v159);
    }

    v4 = v275 + 8;
  }

  while (v275 + 8 != v266);
  v162 = v337;
  if (*(v337 + 24) == 1)
  {
    goto LABEL_431;
  }

  v163 = sub_A78688(v337, 0);
  *&v377[0] = 0;
  *v376 = 0u;
  memset(&v377[1], 0, 24);
  BYTE8(v377[2]) = 1;
  *(&v377[2] + 12) = 0x8000000080000000;
  WORD2(v377[3]) = 0;
  BYTE6(v377[3]) = 0;
  BYTE8(v377[0]) = 1;
  *v354 = xmmword_22A74D0;
  v354[2] = 0xFFFFFFFF00000000;
  LODWORD(v354[3]) = 0;
  v164 = *(v163 + 160);
  if (v164 == 1)
  {
    v166 = *(v163 + 4);
    LODWORD(v165) = v166;
  }

  else
  {
    if (v164)
    {
      sub_5AF20();
    }

    v165 = *(v163 + 8);
    v166 = *(v163 + 4);
  }

  if (v164)
  {
    v166 = 0;
  }

  v168 = v166 / -10;
  v169 = v166 % 10;
  if (v166 < 0)
  {
    v170 = -5;
  }

  else
  {
    v170 = 5;
  }

  HIDWORD(v354[0]) = v168 + v165 + (((-103 * (v170 + v169)) >> 15) & 1) + ((-103 * (v170 + v169)) >> 10);
  LODWORD(v354[1]) = HIDWORD(v354[0]);
  *(&v354[1] + 4) = 0x1FFFFFFFELL;
  if (v164)
  {
    *(&v354[2] + 4) = *(v163 + 12);
LABEL_419:
    v179 = sub_A7C2C8(v376, v354);
    goto LABEL_420;
  }

  v171 = *(v163 + 52);
  v172 = sub_A57920(a2 + 517, *(v163 + 32));
  v173 = (v172 - *v172);
  if (*v173 >= 9u && (v174 = v173[4]) != 0)
  {
    v175 = (v172 + v174 + *(v172 + v174));
  }

  else
  {
    v175 = 0;
  }

  v176 = sub_A571D4(v175, v171);
  v177 = v376[1];
  *(&v354[2] + 4) = __ROR8__(*v176, 32);
  if (v376[1] >= *&v377[0])
  {
    goto LABEL_419;
  }

  v178 = *v354;
  *(v376[1] + 12) = *(&v354[1] + 4);
  *v177 = v178;
  v177[40] = 1;
  v179 = v177 + 42;
LABEL_420:
  v376[1] = v179;
  sub_A788A4(&v337, v337, v376);
  if (*&v377[1])
  {
    *(&v377[1] + 1) = *&v377[1];
    operator delete(*&v377[1]);
  }

  v180 = v376[0];
  if (v376[0])
  {
    v181 = v376[1];
    v182 = v376[0];
    if (v376[1] != v376[0])
    {
      do
      {
        v183 = v181 - 168;
        v184 = *(v181 - 2);
        if (v184 != -1)
        {
          (off_2670B30[v184])(v354, v181 - 168);
        }

        *(v181 - 2) = -1;
        v181 -= 168;
      }

      while (v183 != v180);
      v182 = v376[0];
    }

    v376[1] = v180;
    operator delete(v182);
  }

  v162 = v337;
LABEL_431:
  if (*(&v337 + 1) != v162)
  {
    v185 = 0;
    v287 = 0x8E38E38E38E38E39 * ((*(&v337 + 1) - v162) >> 3);
    while (1)
    {
      v186 = (v337 + 72 * v185);
      if (*(v186 + 24) == 1)
      {
        v187 = v186[1] - *v186;
        if (v187)
        {
          break;
        }
      }

LABEL_433:
      if (++v185 == v287)
      {
        goto LABEL_532;
      }
    }

    v188 = 0;
    v189 = 0;
    v288 = 0xCF3CF3CF3CF3CF3DLL * (v187 >> 3);
    v190 = v185 + 1;
    while (1)
    {
      v192 = *v186;
      if (*(*v186 + v188 + 160) != 1)
      {
LABEL_580:
        sub_5AF20();
      }

      if (v185)
      {
        v193 = sub_A78688((v337 + 72 * v185 - 72), v189);
        v194 = *(v193 + 160);
        if (v194 == 1)
        {
          v200 = *(v193 + 20);
        }

        else
        {
          if (v194)
          {
            goto LABEL_580;
          }

          v195 = *(v193 + 56);
          v196 = sub_A57920(a2 + 517, *(v193 + 32));
          v197 = (v196 - *v196);
          if (*v197 >= 9u && (v198 = v197[4]) != 0)
          {
            v199 = (v196 + v198 + *(v196 + v198));
          }

          else
          {
            v199 = 0;
          }

          v200 = __ROR8__(*sub_A571D4(v199, v195), 32);
        }
      }

      else
      {
        v200 = 0x1FFFFFFFELL;
      }

      v201 = v192 + v188;
      *(v192 + v188 + 12) = v200;
      if (v190 == 0x8E38E38E38E38E39 * ((*(&v337 + 1) - v337) >> 3))
      {
        break;
      }

      v203 = sub_A78688((v337 + 72 * v190), 0);
      v204 = *(v203 + 160);
      if (v204 == 1)
      {
        v202 = *(v203 + 12);
        *(v201 + 20) = v202;
        if (*(v201 + 16) != HIDWORD(v202))
        {
          goto LABEL_439;
        }

        goto LABEL_463;
      }

      if (v204)
      {
        goto LABEL_580;
      }

      v205 = *(v203 + 52);
      v206 = sub_A57920(a2 + 517, *(v203 + 32));
      v207 = (v206 - *v206);
      if (*v207 >= 9u && (v208 = v207[4]) != 0)
      {
        v209 = (v206 + v208 + *(v206 + v208));
      }

      else
      {
        v209 = 0;
      }

      v202 = __ROR8__(*sub_A571D4(v209, v205), 32);
      *(v201 + 20) = v202;
      if (*(v201 + 16) == HIDWORD(v202))
      {
        goto LABEL_463;
      }

LABEL_439:
      ++v189;
      v188 += 168;
      if (v288 == v189)
      {
        goto LABEL_433;
      }
    }

    LODWORD(v202) = -3;
    *(v201 + 20) = 0x1FFFFFFFDLL;
    if (*(v201 + 16) != 1)
    {
      goto LABEL_439;
    }

LABEL_463:
    if (*(v201 + 12) != v202)
    {
      goto LABEL_439;
    }

    v210 = *(v201 + 12);
    _CF = HIDWORD(v210) != 1 || (v210 + 3) >= 2;
    if (!_CF)
    {
      goto LABEL_437;
    }

    v212 = a2[515];
    if (*(v212 + 17) == 1)
    {
      *&v290[0] = "transfers at stop";
      LODWORD(v354[0]) = HIDWORD(v210);
      LODWORD(v343[0]) = 0;
      v376[0] = v343;
      v376[1] = v354;
      v213 = *(v212 + 3880) + 1;
      *(v212 + 3880) = v213;
      v214 = *(v212 + 24);
      if (!v214)
      {
        goto LABEL_586;
      }

      if (*(v212 + 904) == HIDWORD(v210))
      {
        ++*(v212 + 3888);
        *(v212 + 912) = v213;
        v215 = *(v212 + 920);
        if (!v215)
        {
          goto LABEL_586;
        }
      }

      else if (*(v212 + 928) == HIDWORD(v210))
      {
        ++*(v212 + 3888);
        *(v212 + 936) = v213;
        v215 = *(v212 + 944);
        if (!v215)
        {
          goto LABEL_586;
        }
      }

      else if (*(v212 + 952) == HIDWORD(v210))
      {
        ++*(v212 + 3888);
        *(v212 + 960) = v213;
        v215 = *(v212 + 968);
        if (!v215)
        {
          goto LABEL_586;
        }
      }

      else if (*(v212 + 976) == HIDWORD(v210))
      {
        ++*(v212 + 3888);
        *(v212 + 984) = v213;
        v215 = *(v212 + 992);
        if (!v215)
        {
          goto LABEL_586;
        }
      }

      else
      {
        __sb = *(v212 + 912);
        v279 = *(v212 + 936);
        v282 = *(v212 + 984);
        v285 = *(v212 + 960);
        v215 = sub_2D52A4(v214, 9, HIDWORD(v210), 1);
        v220 = __sb;
        if (__sb >= v213)
        {
          v220 = v213;
        }

        v221 = 36;
        if (__sb >= v213)
        {
          v221 = 0;
        }

        if (v279 < v220)
        {
          v220 = v279;
          v221 = 37;
        }

        if (v285 < v220)
        {
          v221 = 38;
          v220 = v285;
        }

        _CF = v282 >= v220;
        v222 = 39;
        if (_CF)
        {
          v222 = v221;
        }

        v223 = v212 + 40 + 24 * v222;
        *v223 = v354[0];
        *(v223 + 8) = *(v212 + 3880);
        *(v223 + 16) = v215;
        if (!v215)
        {
LABEL_586:
          sub_3D4ED8(v376);
LABEL_587:
          exception = __cxa_allocate_exception(0x40uLL);
          LODWORD(v343[0]) = HIDWORD(v210);
          *__dst = v210;
          v354[0] = sub_7FCF0(9u);
          v354[1] = v255;
          sub_2C956C("Failed to acquire entity ", v290, " in quad node ", " at position ", " on layer ", v354, v376);
          if ((SBYTE7(v377[0]) & 0x80u) == 0)
          {
            v256 = v376;
          }

          else
          {
            v256 = v376[0];
          }

          if ((SBYTE7(v377[0]) & 0x80u) == 0)
          {
            v257 = BYTE7(v377[0]);
          }

          else
          {
            v257 = v376[1];
          }

          v258 = sub_2D390(exception, v256, v257);
        }
      }

      v224 = (v215 + *v215);
      v225 = (v224 - *v224);
      if (*v225 < 0xDu)
      {
        goto LABEL_587;
      }

      v226 = v225[6];
      if (!v226)
      {
        goto LABEL_587;
      }

      v227 = (v224 + v226 + *(v224 + v226));
      if (*v227 <= v210)
      {
        goto LABEL_587;
      }

      v228 = (&v227[v210 + 1] + v227[v210 + 1]);
      v229 = (v228 - *v228);
      if (*v229 < 5u || (v230 = v229[2]) == 0)
      {
LABEL_437:
        v191 = 0;
LABEL_438:
        *(v192 + v188 + 8) = *(v192 + v188 + 4) + v191;
        goto LABEL_439;
      }
    }

    else
    {
      v216 = __ROR8__(v210, 32);
      *&v290[0] = "stop";
      LODWORD(v354[0]) = v216;
      LODWORD(v343[0]) = 0;
      v376[0] = v343;
      v376[1] = v354;
      v217 = *(v212 + 3880) + 1;
      *(v212 + 3880) = v217;
      v218 = *(v212 + 24);
      if (!v218)
      {
        goto LABEL_594;
      }

      if (*(v212 + 616) == v216)
      {
        ++*(v212 + 3888);
        *(v212 + 624) = v217;
        v219 = *(v212 + 632);
        if (!v219)
        {
          goto LABEL_594;
        }
      }

      else if (*(v212 + 640) == v216)
      {
        ++*(v212 + 3888);
        *(v212 + 648) = v217;
        v219 = *(v212 + 656);
        if (!v219)
        {
          goto LABEL_594;
        }
      }

      else if (*(v212 + 664) == v216)
      {
        ++*(v212 + 3888);
        *(v212 + 672) = v217;
        v219 = *(v212 + 680);
        if (!v219)
        {
          goto LABEL_594;
        }
      }

      else if (*(v212 + 688) == v216)
      {
        ++*(v212 + 3888);
        *(v212 + 696) = v217;
        v219 = *(v212 + 704);
        if (!v219)
        {
          goto LABEL_594;
        }
      }

      else
      {
        __sba = *(v212 + 624);
        v280 = *(v212 + 648);
        v283 = *(v212 + 696);
        v286 = *(v212 + 672);
        v219 = sub_2D52A4(v218, 6, v216, 1);
        v231 = __sba;
        if (__sba < v217)
        {
          v232 = 24;
        }

        else
        {
          v231 = v217;
          v232 = 0;
        }

        if (v280 < v231)
        {
          v231 = v280;
          v232 = 25;
        }

        if (v286 < v231)
        {
          v232 = 26;
          v231 = v286;
        }

        _CF = v283 >= v231;
        v233 = 27;
        if (_CF)
        {
          v233 = v232;
        }

        v234 = v212 + 40 + 24 * v233;
        *v234 = v354[0];
        *(v234 + 8) = *(v212 + 3880);
        *(v234 + 16) = v219;
        if (!v219)
        {
LABEL_594:
          sub_2C9894(v376);
LABEL_595:
          v259 = __cxa_allocate_exception(0x40uLL);
          *__dst = HIDWORD(v216);
          LODWORD(v343[0]) = v216;
          v354[0] = sub_7FCF0(6u);
          v354[1] = v260;
          sub_2C956C("Failed to acquire entity ", v290, " in quad node ", " at position ", " on layer ", v354, v376);
          if ((SBYTE7(v377[0]) & 0x80u) == 0)
          {
            v261 = v376;
          }

          else
          {
            v261 = v376[0];
          }

          if ((SBYTE7(v377[0]) & 0x80u) == 0)
          {
            v262 = BYTE7(v377[0]);
          }

          else
          {
            v262 = v376[1];
          }

          v263 = sub_2D390(v259, v261, v262);
        }
      }

      v235 = (v219 + *v219);
      v236 = (v235 - *v235);
      if (*v236 < 0x1Du)
      {
        goto LABEL_595;
      }

      v237 = v236[14];
      if (!v237)
      {
        goto LABEL_595;
      }

      v238 = (v235 + v237 + *(v235 + v237));
      if (*v238 <= HIDWORD(v216))
      {
        goto LABEL_595;
      }

      v228 = (&v238[HIDWORD(v216) + 1] + v238[HIDWORD(v216) + 1]);
      v239 = (v228 - *v228);
      if (*v239 < 0x15u || (v230 = v239[10]) == 0)
      {
        v191 = 30;
        goto LABEL_438;
      }
    }

    v191 = *(v228 + v230);
    goto LABEL_438;
  }

LABEL_532:
  *(sub_A32C84(a1, &v311) + 296) = 1;
  v240 = *(&v341 + 1);
  if (!*(&v341 + 1))
  {
    goto LABEL_572;
  }

LABEL_571:
  *&v342 = v240;
  operator delete(v240);
LABEL_572:
  if (v340)
  {
    *(&v340 + 1) = v340;
    operator delete(v340);
  }

  if (*(&v338 + 1))
  {
    *&v339 = *(&v338 + 1);
    operator delete(*(&v338 + 1));
  }

  v376[0] = &v337;
  sub_A3212C(v376);
  if (SHIBYTE(v331) < 0)
  {
    operator delete(v329);
  }
}

void sub_A78120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  sub_1959728(&STACK[0x578]);
  sub_A785D0(&a63);
  sub_A785D0(&STACK[0x200]);
  sub_A7847C(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t sub_A7847C(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    *(a1 + 256) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    *(a1 + 232) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 200);
  sub_A3212C(&v6);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return a1;
}

uint64_t sub_A7850C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_A320A4(a1, i))
    {
      i -= 296;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A78570(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      *(a1 + 128) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 88);
    if (v3)
    {
      *(a1 + 96) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      *(a1 + 72) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

char **sub_A785D0(char **a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 168;
        v7 = *(v4 - 2);
        if (v7 != -1)
        {
          (off_2670B30[v7])(&v9, v4 - 168);
        }

        *(v4 - 2) = -1;
        v4 -= 168;
      }

      while (v6 != v3);
      v5 = *a1;
    }

    a1[1] = v3;
    operator delete(v5);
  }

  return a1;
}

unint64_t sub_A78688(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 168 * a2;
}

void sub_A787C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_A788A4(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a2;
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v20 = *a1;
    v21 = 0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1;
    if (v21 > 0x38E38E38E38E38ELL)
    {
      sub_1794();
    }

    v22 = 0x8E38E38E38E38E39 * ((v5 - v20) >> 3);
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    if (v22 >= 0x1C71C71C71C71C7)
    {
      v23 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v23 = v21;
    }

    v39 = a1;
    if (v23)
    {
      if (v23 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }

      sub_1808();
    }

    v36 = 0;
    v37 = 8 * ((a2 - v20) >> 3);
    v38 = v37;
    sub_A7C4BC(&v36, a3);
    v27 = v37;
    sub_A7C17C(a1, v3, a1[1], v38);
    v28 = *a1;
    v29 = v37;
    *&v38 = v38 + a1[1] - v3;
    a1[1] = v3;
    v30 = v28 + v29 - v3;
    sub_A7C17C(a1, v28, v3, v30);
    v31 = *a1;
    *a1 = v30;
    v32 = a1[2];
    *(a1 + 1) = v38;
    *&v38 = v31;
    *(&v38 + 1) = v32;
    v36 = v31;
    v37 = v31;
    sub_A7C084(&v36);
    return v27;
  }

  else if (a2 == v6)
  {
    sub_A7C79C(a1[1], a3);
    a1[1] = v6 + 72;
  }

  else
  {
    v7 = (v6 - 72);
    v8 = a1[1];
    if (v6 >= 0x48)
    {
      v8 = v6 + 72;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = *v7;
      *(v6 + 16) = *(v6 - 56);
      *(v6 - 64) = 0;
      *(v6 - 56) = 0;
      *v7 = 0;
      *(v6 + 24) = *(v6 - 48);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      *(v6 + 32) = *(v6 - 40);
      *(v6 + 48) = *(v6 - 24);
      *(v6 - 40) = 0;
      *(v6 - 32) = 0;
      *(v6 - 24) = 0;
      v9 = *(v6 - 16);
      *(v6 + 63) = *(v6 - 9);
      *(v6 + 56) = v9;
    }

    a1[1] = v8;
    if (v6 != a2 + 72)
    {
      v35 = a3;
      v10 = v6;
      do
      {
        v13 = *(v10 - 72);
        v10 -= 72;
        v12 = v13;
        if (v13)
        {
          v14 = *(v6 - 64);
          v15 = v12;
          if (v14 != v12)
          {
            do
            {
              v16 = v14 - 168;
              v17 = *(v14 - 2);
              if (v17 != -1)
              {
                (off_2670B30[v17])(&v36, v14 - 168);
              }

              *(v14 - 2) = -1;
              v14 -= 168;
            }

            while (v16 != v12);
            v15 = *v10;
          }

          *(v6 - 64) = v12;
          operator delete(v15);
          *v10 = 0;
          *(v10 + 8) = 0;
          *(v10 + 16) = 0;
        }

        v18 = v7 - 9;
        *(v6 - 72) = *(v7 - 72);
        *(v6 - 56) = *(v7 - 7);
        *v18 = 0;
        v18[1] = 0;
        v18[2] = 0;
        v19 = *(v6 - 40);
        *(v6 - 48) = *(v7 - 48);
        if (v19)
        {
          *(v6 - 32) = v19;
          operator delete(v19);
          *(v6 - 40) = 0;
          *(v6 - 32) = 0;
          *(v6 - 24) = 0;
        }

        *(v6 - 40) = *(v7 - 40);
        *(v6 - 24) = *(v7 - 3);
        *(v7 - 5) = 0;
        *(v7 - 4) = 0;
        *(v7 - 3) = 0;
        v11 = *(v7 - 2);
        *(v6 - 9) = *(v7 - 9);
        *(v6 - 16) = v11;
        v6 = v10;
        v7 = (v7 - 72);
      }

      while (v18 != v3);
      v8 = a1[1];
      a3 = v35;
    }

    v24 = v8 <= a3 || v3 > a3;
    v25 = 72;
    if (v24)
    {
      v25 = 0;
    }

    v26 = a3 + v25;
    if (v3 == a3 + v25)
    {
      *(v3 + 24) = *(v26 + 24);
    }

    else
    {
      sub_A34348(v3, *v26, *(v26 + 8), 0xCF3CF3CF3CF3CF3DLL * ((*(v26 + 8) - *v26) >> 3));
      *(v3 + 24) = *(v26 + 24);
      sub_956400((v3 + 32), *(v26 + 32), *(v26 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(v26 + 40) - *(v26 + 32)) >> 3));
    }

    v33 = *(v26 + 56);
    *(v3 + 63) = *(v26 + 63);
    *(v3 + 56) = v33;
  }

  return v3;
}

void sub_A78C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A7C084(va);
  _Unwind_Resume(a1);
}

char **sub_A78C90(char **a1)
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
        v5 = v3 - 168;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2670B30[v6])(&v8, v3 - 168);
        }

        *(v3 - 2) = -1;
        v3 -= 168;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_A78D38(uint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void **a4@<X8>)
{
  v5 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v5 + 4 + *(v10 + 4 * v5 + 4));
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v12 = (v11 - *v11);
  if (*v12 < 0x11u)
  {
    v14 = *(v11 + v12[2] + *(v11 + v12[2]));
    v15 = v14 * a3;
    v16 = v14 + v14 * a3;
    if (v14 * a3 <= v16)
    {
      v17 = v14 + v14 * a3;
    }

    else
    {
      v17 = v14 * a3;
    }

    if (v15 >= v16)
    {
      return;
    }
  }

  else
  {
    if (v12[8])
    {
      v13 = *(v11 + v12[8]);
    }

    else
    {
      v13 = 0;
    }

    v18 = *(v11 + v12[2] + *(v11 + v12[2]));
    v15 = v13 + v18 * a3;
    v19 = v12[8];
    if (v19)
    {
      v20 = v18 + v18 * a3 + *(v11 + v19);
      if (v15 <= v20)
      {
        v17 = v20;
      }

      else
      {
        v17 = v13 + v18 * a3;
      }

      if (v15 >= v20)
      {
        return;
      }
    }

    else
    {
      v21 = v18 + v18 * a3;
      if (v15 <= v21)
      {
        v17 = v18 + v18 * a3;
      }

      else
      {
        v17 = v13 + v18 * a3;
      }

      if (v15 >= v21)
      {
        return;
      }
    }
  }

  v22 = 0;
  do
  {
    while (1)
    {
      v23 = (v8 - *v8);
      if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
      {
        v25 = (v8 + v24 + *(v8 + v24));
      }

      else
      {
        v25 = 0;
      }

      v26 = sub_A57320(v25, v15);
      v27 = a4[2];
      if (v22 >= v27)
      {
        break;
      }

      *v22 = 0xFFFFFFFFLL;
      v22[2] = 0;
      if (v26)
      {
        *v22 = __ROR8__(*v26, 32);
        v22[2] = v26[2];
      }

      v22 += 3;
      a4[1] = v22;
      if (v17 == ++v15)
      {
        return;
      }
    }

    v28 = *a4;
    v29 = v22 - *a4;
    v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 2) + 1;
    if (v30 > 0x1555555555555555)
    {
      sub_1794();
    }

    v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v28) >> 2);
    if (2 * v31 > v30)
    {
      v30 = 2 * v31;
    }

    if (v31 >= 0xAAAAAAAAAAAAAAALL)
    {
      v32 = 0x1555555555555555;
    }

    else
    {
      v32 = v30;
    }

    if (v32)
    {
      if (v32 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v34 = 4 * (v29 >> 2);
    *v34 = 0xFFFFFFFFLL;
    *(v34 + 8) = 0;
    if (v26)
    {
      *v34 = __ROR8__(*v26, 32);
      dword_8[v29 >> 2] = v26[2];
    }

    v22 = (v34 + 12);
    v33 = (v34 - v29);
    memcpy((v34 - v29), v28, v29);
    *a4 = v33;
    a4[1] = v22;
    a4[2] = 0;
    if (v28)
    {
      operator delete(v28);
    }

    a4[1] = v22;
    ++v15;
  }

  while (v17 != v15);
}

void sub_A79034(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A7905C(uint64_t a1, void *a2, unint64_t a3, char a4, char a5, char a6)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 56) = a1 + 8;
  v9 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 56;
  *(a1 + 88) = a4;
  *(a1 + 89) = a5;
  *(a1 + 90) = a6;
  if (HIDWORD(a3) == 1 && (a3 + 3) < 2)
  {
    return a1;
  }

  v10 = sub_A79340((a2 + 3), a3, 0, "stop patterns at stop");
  v11 = (v10 - *v10);
  if (*v11 >= 5u)
  {
    v12 = v11[2];
    if (v12)
    {
      v13 = (v10 + v12 + *(v10 + v12));
      v14 = *v13;
      if (v14)
      {
        v15 = v13 + 1;
        *(a1 + 8) = v15;
        *(a1 + 16) = &v15[4 * v14];
      }
    }
  }

  if ((*(a1 + 89) & 1) == 0)
  {
    v16 = a2[515];
    if (sub_68312C(v16 + 3896))
    {
      if (*(v16 + 3944))
      {
        v17 = *(a2[515] + 3944);
        v42 = a3;
        if (sub_A794D0((v17 + 88), &v42))
        {
          v18 = a2[493];
          v42 = a3;
          v19 = sub_A794D0((v18 + 88), &v42);
          if (!v19)
          {
            goto LABEL_41;
          }

          v20 = (v19[7] + *v19[7]);
          v21 = *v20;
          v22 = *(v20 - v21 + 4);
          if (*(v20 - v21 + 4))
          {
            v21 = *(v20 + v22);
            v23 = v20 + v22 + v21;
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v21 = v21;
          }

          v24 = v23 + 4;
          *(a1 + 24) = v24;
          *(a1 + 32) = &v24[16 * *(v20 + v22 + v21)];
        }
      }
    }
  }

  if (*(a1 + 90))
  {
    goto LABEL_26;
  }

  v25 = a2[515];
  if (!sub_4C2B90(v25 + 3896))
  {
    goto LABEL_26;
  }

  if (!*(v25 + 3960))
  {
    goto LABEL_26;
  }

  v26 = *(a2[515] + 3976);
  if (!v26)
  {
    goto LABEL_26;
  }

  v42 = a3;
  if (!sub_A794D0((v26 + 88), &v42))
  {
    goto LABEL_26;
  }

  v27 = a2[497];
  v42 = a3;
  v28 = sub_A794D0((v27 + 88), &v42);
  if (!v28)
  {
LABEL_41:
    sub_49EC("unordered_map::at: key not found");
  }

  v29 = (v28[7] + *v28[7]);
  v30 = *v29;
  v31 = *(v29 - v30 + 4);
  if (*(v29 - v30 + 4))
  {
    v30 = *(v29 + v31);
    v32 = v29 + v31 + v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v30 = v30;
  }

  v33 = v32 + 4;
  *(a1 + 40) = v33;
  *(a1 + 48) = &v33[16 * *(v29 + v31 + v30)];
LABEL_26:
  v35 = *(a1 + 56);
  v34 = *(a1 + 64);
  if (v35 >= v34)
  {
LABEL_29:
    if (*(a1 + 72) < *(a1 + 80))
    {
      goto LABEL_35;
    }
  }

  else
  {
    while (1)
    {
      v36 = v35[1];
      if (*v35 != v36)
      {
        break;
      }

      v35 += 2;
      *v9 = v35;
      if (v35 >= v34)
      {
        goto LABEL_29;
      }
    }

    *(a1 + 72) = *v35;
    *(a1 + 80) = v36;
    if (*(a1 + 72) < *(a1 + 80))
    {
LABEL_35:
      while (sub_A795E8(a1))
      {
        v37 = *(a1 + 80);
        v38 = *(a1 + 72) + 16;
        *(a1 + 72) = v38;
        if (v38 == v37)
        {
          v39 = *(a1 + 64);
          v40 = (*(a1 + 56) + 16);
          *(a1 + 56) = v40;
          if (v40 >= v39)
          {
            return a1;
          }

          while (1)
          {
            v38 = *v40;
            v37 = v40[1];
            if (*v40 != v37)
            {
              break;
            }

            v40 += 2;
            *v9 = v40;
            if (v40 >= v39)
            {
              return a1;
            }
          }

          *(a1 + 72) = v38;
          *(a1 + 80) = v37;
        }

        if (v38 >= v37)
        {
          return a1;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_A79340(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_3D4D04(a1, HIDWORD(a2), a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 9u)
  {
    v9 = *(v8 + 4);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v5)
      {
        return &v9[v5 + 1] + v9[v5 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v12;
      v20 = v6;
      v18[0] = sub_7FCF0(9u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v5 + 1] + v9[v5 + 1];
  }

  return 0;
}

void sub_A794A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A794D0(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v5 == v12)
        {
          if (*(result + 5) == HIDWORD(v3) && *(result + 4) == v3)
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v5 == v14)
      {
        if (*(result + 5) == HIDWORD(v3) && *(result + 4) == v3)
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

BOOL sub_A795E8(void *a1)
{
  if ((*(a1 + 89) & 1) == 0)
  {
    v2 = *a1;
    v3 = *a1[9];
    v4 = *(*a1 + 4136);
    if (sub_68312C(v4 + 3896))
    {
      if (*(v4 + 3944))
      {
        v5 = __ROR8__(v3, 32);
        if (!sub_A576FC((v2 + 4136), SHIDWORD(v5)))
        {
          v6 = *(*(v2 + 4136) + 3944);
          v8 = v5;
          if (sub_A794D0(v6, &v8))
          {
            return 1;
          }
        }
      }
    }
  }

  if (a1[11])
  {
    return 0;
  }

  if (sub_C9E544(*a1 + 3896) < *(a1[9] + 14))
  {
    return 1;
  }

  return (a1[11] & 1) == 0 && (sub_585D8((*a1 + 3896)) & 1) == 0 && (*(a1[9] + 15) & 1) != 0;
}

uint64_t sub_A79708(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, char a5, char a6)
{
  *a1 = a2;
  *(a1 + 8) = a6;
  v11 = sub_A5706C((a2 + 4136), a3);
  *(a1 + 16) = v11;
  v12 = &v11[-*v11];
  if (*v12 >= 5u && (v13 = *(v12 + 2)) != 0)
  {
    v14 = &v11[v13 + *&v11[v13]];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A57CB8(v14, a3);
  v16 = (v15 - *v15);
  if (*v16 < 9u)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16[4];
    if (v17)
    {
      v17 += v15 + *(v15 + v17);
    }
  }

  v18 = v17 + 4;
  *(a1 + 24) = v17 + 4;
  *(a1 + 32) = v17 + 4 + 16 * a4;
  v19 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 4));
  v20 = a3;
  v21 = (&v19[v20 + 1] + *v19 + *(&v19[v20 + 1] + *v19));
  v22 = *v21;
  v23 = v21 - v22;
  v24 = *(v21 - v22);
  v25 = (v21 + *(v21 - v22 + 8));
  *(a1 + 40) = v18 + 16 * *(v25 + *v25);
  if (v24 < 0x15)
  {
    *(a1 + 48) = 0;
    v27 = *(v23 + 3);
    if (v27)
    {
LABEL_13:
      v28 = v21 + v27 + *(v21 + v27);
      LODWORD(v22) = *(v21 + v27);
      goto LABEL_16;
    }
  }

  else
  {
    v26 = *(v23 + 10);
    if (*(v23 + 10))
    {
      v26 += v21 + *(v21 + v26) + 4;
    }

    *(a1 + 48) = v26;
    v27 = *(v23 + 3);
    if (v27)
    {
      goto LABEL_13;
    }
  }

  v28 = 0;
LABEL_16:
  v29 = v28 + 4;
  *(a1 + 56) = v29;
  *(a1 + 64) = v29;
  *(a1 + 72) = &v29[12 * *(v21 + v27 + v22)];
  if (a5)
  {
    goto LABEL_23;
  }

  v30 = *(a2 + 4136);
  if (!sub_4C2B90(v30 + 3896))
  {
    goto LABEL_23;
  }

  v31 = *(v30 + 3960);
  if (!v31)
  {
    goto LABEL_24;
  }

  v31 = *(*(a2 + 4136) + 3976);
  if (!v31)
  {
    goto LABEL_24;
  }

  v51 = a3;
  if (!sub_A794D0(v31 + 26, &v51))
  {
LABEL_23:
    v31 = 0;
    goto LABEL_24;
  }

  v32 = *(*(a2 + 4136) + 3976);
  v51 = a3;
  v33 = sub_A794D0((v32 + 208), &v51);
  if (!v33)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v31 = v33 + 3;
LABEL_24:
  *(a1 + 80) = v31;
  *(a1 + 88) = a3;
  v34 = *(a1 + 16);
  v35 = (v34 - *v34);
  if (*v35 >= 5u && (v36 = v35[2]) != 0)
  {
    v37 = v34 + v36 + *(v34 + v36);
  }

  else
  {
    v37 = 0;
  }

  v38 = &v37[v20 * 4 + 4 + *&v37[v20 * 4 + 4]];
  v39 = &v38[-*v38];
  if (*v39 <= 0x12u)
  {
    v41 = *(a1 + 56);
    goto LABEL_34;
  }

  v40 = *(v39 + 9);
  v41 = *(a1 + 56);
  if (!v40)
  {
LABEL_34:
    *(a1 + 96) = 0;
    *(a1 + 100) = 0;
    *(a1 + 104) = 0;
    goto LABEL_35;
  }

  v42 = *&v38[v40];
  *(a1 + 96) = v42 & 1;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  if ((v42 & 1) != 0 && -1431655765 * ((*(a1 + 72) - v41) >> 2))
  {
    sub_A79A50(a1);
    return a1;
  }

LABEL_35:
  for (i = *(a1 + 64); i >= v41; *(a1 + 64) = i)
  {
    if (i >= *(a1 + 72))
    {
      break;
    }

    v45 = *(a1 + 80);
    if (!v45)
    {
      break;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((i - v41) >> 2);
    v47 = sub_585D8((*a1 + 3896));
    v48 = *v45;
    if (v46 < v48)
    {
      break;
    }

    v49 = *(v45 + 1);
    if (*(v45 + 2) + v48 - v49 <= v46)
    {
      break;
    }

    v50 = *(v49 + (v46 - v48));
    if ((v50 & 1) == 0)
    {
      break;
    }

    if (((v50 >> 1) & 1 & ~v47) != 0)
    {
      break;
    }

    v41 = *(a1 + 56);
    i = *(a1 + 64) + 12;
  }

  return a1;
}

uint64_t sub_A79A50(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  *(result + 64) = v2;
  v3 = v2;
  do
  {
    if (v3 >= *(v1 + 72))
    {
      break;
    }

    v4 = *(v1 + 80);
    if (!v4)
    {
      break;
    }

    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 2);
    result = sub_585D8((*v1 + 3896));
    v6 = *v4;
    if (v5 < v6)
    {
      break;
    }

    v7 = *(v4 + 1);
    if (*(v4 + 2) + v6 - v7 <= v5)
    {
      break;
    }

    v8 = *(v7 + (v5 - v6));
    if ((v8 & 1) == 0)
    {
      break;
    }

    if (((v8 >> 1) & 1 & ~result) != 0)
    {
      break;
    }

    v2 = *(v1 + 56);
    v3 = *(v1 + 64) + 12;
    *(v1 + 64) = v3;
  }

  while (v3 >= v2);
  v9 = *(v1 + 64);
  if (v9 >= *(v1 + 56) && v9 < *(v1 + 72) && *(v1 + 96) == 1)
  {
    *(v1 + 100) = 0;
    v10 = (*(v1 + 16) + *(*(v1 + 16) - **(v1 + 16) + 8));
    *(v1 + 104) = *(&v10[3 * (v9[2] >> 8) + 2] + *v10) + *v9;
  }

  return result;
}

void sub_A79B68(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = a1[3];
  a1[4] = v8;
  v58 = v7;
  if (*(*a1 + 16) != 1 || (a1[1] & 1) != 0 || v8 >= a1[5])
  {
    v9 = v8;
    if (v8 < a1[5])
    {
LABEL_22:
      v15 = 0;
      v57 = a3;
      do
      {
        v16 = *(a3 + 8);
        if (!v16)
        {
          goto LABEL_64;
        }

        v17 = __ROR8__(*v8, 32);
        v18 = *a3;
        v19 = 8 * v16;
        while (v17 != *v18)
        {
          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_64;
          }
        }

        if ((v8[15] & 1) == 0)
        {
LABEL_64:
          v23 = v15;
          v39 = *(a2 + 8);
          if (!v39)
          {
            goto LABEL_70;
          }

          goto LABEL_65;
        }

        v20 = (v8 - v9) >> 4;
        v21 = a1[6];
        if (v21)
        {
          v22 = *(v21 + 4 * v20);
          v23 = 0;
          if (!v15)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v22 = 0;
          v23 = 0;
          if (!v15)
          {
            goto LABEL_61;
          }
        }

        v24 = -1;
        for (i = 0; i != v15; i += 16)
        {
          if ((*(i + 8) & v22) == 0)
          {
            v24 = *i;
            *i = -1;
          }
        }

        if (v24 != -1)
        {
          v27 = v7[1];
          v26 = v7[2];
          if (v27 >= v26)
          {
            v29 = *v7;
            v30 = v27 - *v7;
            v31 = v30 >> 3;
            v32 = (v30 >> 3) + 1;
            if (v32 >> 61)
            {
              sub_1794();
            }

            v33 = v26 - v29;
            if (v33 >> 2 > v32)
            {
              v32 = v33 >> 2;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF8)
            {
              v34 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              if (!(v34 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v35 = (8 * v31);
            *v35 = v24;
            v35[1] = v20;
            v28 = 8 * v31 + 8;
            memcpy(0, v29, v30);
            v7 = v58;
            *v58 = 0;
            v58[2] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v27 = v24;
            v27[1] = v20;
            v28 = (v27 + 2);
          }

          v7[1] = v28;
        }

        a3 = v57;
        v23 = 0;
        v36 = 0;
        while (1)
        {
          v37 = *v36;
          v36 += 4;
          if (v37 == -1)
          {
            break;
          }

          v23 = v36;
          if (v36 == v15)
          {
            goto LABEL_64;
          }
        }

        if (v36 != v15)
        {
          v38 = v23 + 4;
          do
          {
            if (*v38 != -1)
            {
              *v23 = *v38;
              *(v23 + 1) = *(v38 + 1);
              v23 += 4;
            }

            v38 += 4;
          }

          while (v38 != v15);
        }

LABEL_61:
        if (v23 == v15)
        {
          goto LABEL_64;
        }

        v39 = *(a2 + 8);
        if (!v39)
        {
          goto LABEL_70;
        }

LABEL_65:
        v40 = a1[4];
        v41 = __ROR8__(*v40, 32);
        v42 = *a2;
        v43 = 8 * v39;
        while (v41 != *v42)
        {
          ++v42;
          v43 -= 8;
          if (!v43)
          {
            goto LABEL_70;
          }
        }

        if ((*(v40 + 15) & 2) != 0)
        {
          v49 = (v40 - a1[3]) >> 4;
          v50 = a1[6];
          if (v50)
          {
            v51 = *(v50 + 4 * v49);
            v52 = 0;
            if (!v23)
            {
              goto LABEL_101;
            }

LABEL_95:
            v53 = 16;
            while ((v51 & ~*(v53 - 8)) != 0)
            {
              v54 = v53 == v23;
              v53 += 16;
              if (v54)
              {
                goto LABEL_107;
              }
            }

            v52 = v53 - 16;
            if ((v53 - 16) != v23)
            {
              while (v53 != v23)
              {
                if ((v51 & ~*(v53 + 8)) != 0)
                {
                  *v52 = *v53;
                  *(v52 + 8) = *(v53 + 8);
                  v52 += 16;
                }

                v53 += 16;
              }
            }
          }

          else
          {
            v51 = 0;
            v52 = 0;
            if (v23)
            {
              goto LABEL_95;
            }
          }

LABEL_101:
          if (v52 == v23)
          {
LABEL_107:
            v52 = v23;
          }

          v55 = v52 >> 4;
          if (((v52 >> 4) + 1) >> 60)
          {
            sub_1794();
          }

          if (v52 >> 4 != -1)
          {
            if (!(((v52 >> 4) + 1) >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v56 = 16 * v55;
          *v56 = v49;
          *(v56 + 8) = v51;
          v15 = 16 * v55 + 16;
          memcpy(0, 0, v52);
          v7 = v58;
          goto LABEL_71;
        }

LABEL_70:
        v15 = v23;
LABEL_71:
        v9 = a1[3];
        v8 = (a1[4] + 16);
        a1[4] = v8;
        if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v8 >= v9 && v8 < a1[5])
        {
          do
          {
            v45 = __ROR8__(*v8, 32);
            if (HIDWORD(v45) == 1 && (v45 + 3) < 2)
            {
              break;
            }

            v47 = sub_2D5204(**(*a1 + 4120));
            v9 = a1[3];
            v8 = a1[4];
            if (v47)
            {
              break;
            }

            v8 += 16;
            a1[4] = v8;
          }

          while (v8 >= v9 && v8 < a1[5]);
        }
      }

      while (v8 >= v9 && v8 < a1[5]);
    }
  }

  else
  {
    v9 = v8;
    do
    {
      v10 = __ROR8__(*v8, 32);
      if (HIDWORD(v10) == 1 && (v10 + 3) < 2)
      {
        break;
      }

      v12 = sub_2D5204(**(*a1 + 4120));
      v9 = a1[3];
      v8 = a1[4];
      if (v12)
      {
        break;
      }

      v8 += 16;
      a1[4] = v8;
    }

    while (v8 >= v9 && v8 < a1[5]);
    if (v8 >= v9 && v8 < a1[5])
    {
      goto LABEL_22;
    }
  }
}

void sub_A7A180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
    v13 = *a11;
    if (!*a11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *a11;
    if (!*a11)
    {
      goto LABEL_3;
    }
  }

  *(a11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

BOOL sub_A7A1E8(uint64_t a1, uint64_t a2, signed int a3, unsigned int a4)
{
  v4 = -1431655765 * ((*(a2 + 72) - *(a2 + 56)) >> 2);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(a2 + 88);
  v9 = (*(a2 + 32) - *(a2 + 24)) >> 4;
  v10 = 4 * v8;
  while (1)
  {
    v11 = sub_A5706C((a1 + 4136), v8);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + v10 + 4 + *(v13 + v10 + 4));
    v15 = (v14 - *v14);
    if (*v15 >= 7u && (v16 = v15[3]) != 0)
    {
      v17 = (v14 + v16 + *(v14 + v16));
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_A7AC40(v17, v7);
    v19 = sub_A7AA48((a1 + 4136), v8, v7, *(v18 + 8) - 1);
    v20 = sub_A5706C((a1 + 4136), v8);
    v21 = v20;
    v22 = &v20[-*v20];
    if (*v22 < 5u)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 2);
      if (v23)
      {
        v23 += &v20[*&v20[v23]];
      }
    }

    v24 = (v23 + v10 + 4 + *(v23 + v10 + 4));
    v25 = (v24 - *v24);
    if (*v25 >= 7u && (v26 = v25[3]) != 0)
    {
      v27 = (v24 + v26 + *(v24 + v26));
    }

    else
    {
      v27 = 0;
    }

    v28 = sub_A7AC40(v27, v7);
    v29 = (v21 - *v21);
    if (*v29 < 7u)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29[3];
      if (v30)
      {
        v30 = (v30 + v21 + *(v30 + v21));
      }
    }

    if ((sub_A7AEE0(v30, v28[1] + v9)[1] + v19) >= a3)
    {
      break;
    }

    if (++v7 == v4)
    {
      return 0;
    }
  }

  if (v7 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v31 = *(a2 + 88);
  v33 = *(a2 + 24);
  v32 = *(a2 + 32);
  v34 = sub_A5706C((a1 + 4136), v31);
  v35 = &v34[-*v34];
  if (*v35 < 5u)
  {
    v36 = 0;
  }

  else
  {
    v36 = *(v35 + 2);
    if (v36)
    {
      v36 += &v34[*&v34[v36]];
    }
  }

  v37 = 4 * v31;
  v38 = (v36 + v37 + 4 + *(v36 + v37 + 4));
  v39 = (v38 - *v38);
  if (*v39 >= 7u && (v40 = v39[3]) != 0)
  {
    v41 = (v38 + v40 + *(v38 + v40));
  }

  else
  {
    v41 = 0;
  }

  v42 = v32 - v33;
  v43 = *(sub_A7AC40(v41, v7) + 8);
  v44 = sub_A5706C((a1 + 4136), v31);
  v45 = v44;
  v46 = &v44[-*v44];
  if (*v46 < 5u)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(v46 + 2);
    if (v47)
    {
      v47 += &v44[*&v44[v47]];
    }
  }

  v48 = v42 >> 4;
  v49 = (v47 + v37 + 4 + *(v47 + v37 + 4));
  v50 = (v49 - *v49);
  if (*v50 >= 7u && (v51 = v50[3]) != 0)
  {
    v52 = (v49 + v51 + *(v49 + v51));
  }

  else
  {
    v52 = 0;
  }

  v53 = sub_A7AC40(v52, v7);
  v54 = (v45 - *v45);
  if (*v54 < 7u)
  {
    v56 = sub_A7AEE0(0, v53[1] + v48);
    if (!v43)
    {
LABEL_52:
      LODWORD(v57) = -1;
      goto LABEL_53;
    }
  }

  else
  {
    v55 = v54[3];
    if (v55)
    {
      v55 = (v55 + v45 + *(v55 + v45));
    }

    v56 = sub_A7AEE0(v55, v53[1] + v48);
    if (!v43)
    {
      goto LABEL_52;
    }
  }

  v57 = 0;
  v58 = v56[1];
  while ((sub_A7AA48((a1 + 4136), v31, v7, v57) + v58) < a3)
  {
    if (v43 == ++v57)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v59 = *(a2 + 88);
  v60 = *(a2 + 24);
  v77 = *(a2 + 32);
  v61 = sub_A5706C((a1 + 4136), v59);
  v62 = v61;
  v63 = &v61[-*v61];
  if (*v63 < 5u)
  {
    v64 = 0;
  }

  else
  {
    v64 = *(v63 + 2);
    if (v64)
    {
      v64 += &v61[*&v61[v64]];
    }
  }

  v65 = (v64 + 4 * v59 + 4 + *(v64 + 4 * v59 + 4));
  v66 = (v65 - *v65);
  if (*v66 >= 7u && (v67 = v66[3]) != 0)
  {
    v68 = (v65 + v67 + *(v65 + v67));
  }

  else
  {
    v68 = 0;
  }

  v69 = sub_A7AC40(v68, v7);
  v70 = (v62 - *v62);
  if (*v70 < 7u)
  {
    v71 = 0;
  }

  else
  {
    v71 = v70[3];
    if (v71)
    {
      v71 = (v71 + v62 + *(v71 + v62));
    }
  }

  v72 = sub_A7AEE0(v71, v69[1] + ((v77 - v60) >> 4))[1];
  v73 = sub_A7AB44((a1 + 4136), v59, v7, v57);
  *(a2 + 64) = *(a2 + 56) + 12 * v7;
  if (*(a2 + 96) == 1)
  {
    v74 = a3 - v72;
    if ((a3 - v72) <= v73)
    {
      v74 = v73;
    }

    *(a2 + 100) = v57;
    *(a2 + 104) = v74;
  }

  sub_A7B02C(a2, a4);
  v75 = *(a2 + 64);
  if (v75 < *(a2 + 56))
  {
    return 0;
  }

  return v75 < *(a2 + 72);
}

uint64_t sub_A7A710(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = -1431655765 * ((v6 - v5) >> 2);
  if (v7)
  {
    LODWORD(v7) = *(v7 + 32);
  }

  if (v7 == v8)
  {
    return 0;
  }

  if (!a3)
  {
    goto LABEL_25;
  }

  if (v8 < 0x41)
  {
    v24 = *(a1 + 64);
    if (v24 >= v5 && v24 < v6)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_A79A50(a1);
    goto LABEL_25;
  }

  sub_A79A50(a1);
  if (*(a1 + 96))
  {
    v9 = (a1 + 104);
  }

  else
  {
    v9 = *(a1 + 64);
  }

  v10 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v11 = *(&v10[2 * *(*(a1 + 64) + 4) + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v10) + *v9;
  sub_A7B42C(a1);
  v12 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v13 = (a1 + 104);
  }

  else
  {
    v13 = *(a1 + 64);
  }

  if (a2 <= v11)
  {
    goto LABEL_24;
  }

  v14 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v15 = *(&v14[2 * *(*(a1 + 64) + 4) + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v14) + *v13;
  if (v15 <= a2)
  {
    sub_A7B42C(a1);
    v26 = *(a1 + 56);
    v25 = *(a1 + 64);
    if (v25 >= v26)
    {
LABEL_26:
      while (v25 < *(a1 + 72))
      {
        if (*(a1 + 96))
        {
          v27 = (a1 + 104);
        }

        else
        {
          v27 = v25;
        }

        v28 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
        if ((*(&v28[2 * v25[1] + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v28) + *v27) < a2)
        {
          goto LABEL_33;
        }

        sub_A7B558(a1, 0);
        v26 = *(a1 + 56);
        v25 = *(a1 + 64);
        if (v25 < v26)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_32;
  }

  v16 = (a2 - v11) / (v15 - v11);
  v17 = *(a1 + 56);
  v18 = (v16 * (-1431655765 * ((*(a1 + 72) - v17) >> 2) - 1));
  *(a1 + 64) = v17 + 12 * v18;
  if (v12)
  {
    *(a1 + 100) = -NAN;
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = sub_585D8((*a1 + 3896));
    v21 = *v19;
    if (v21 <= v18)
    {
      v22 = *(v19 + 1);
      if (*(v19 + 2) + v21 - v22 > v18)
      {
        v23 = *(v22 + (v18 - v21));
        if ((v23 & 1) != 0 && ((v23 >> 1) & 1 & ~v20) == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_25:
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
  if (v25 >= v26)
  {
    goto LABEL_26;
  }

LABEL_32:
  sub_A7B02C(a1, 0);
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
LABEL_33:
  if (v25 >= v26)
  {
    while (v25 < *(a1 + 72))
    {
      if (*(a1 + 96))
      {
        v29 = (a1 + 104);
      }

      else
      {
        v29 = v25;
      }

      v30 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
      if ((*(&v30[2 * v25[1] + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v30) + *v29) >= a2)
      {
        return 1;
      }

      sub_A7B02C(a1, 0);
      v25 = *(a1 + 64);
      if (v25 < *(a1 + 56))
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_A7AA48(uint64_t *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A7AC40(v14, v5);
  v17 = (v8 - *v8);
  if (*v17 < 9u)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17[4];
    if (v18)
    {
      v18 = (v18 + v8 + *(v18 + v8));
    }
  }

  v16 = *v15;
  return sub_A7AD90(v18, a4 + (v15[2] >> 8))[2] + v16;
}

uint64_t sub_A7AB44(uint64_t *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A7AC40(v14, v5);
  v17 = (v8 - *v8);
  if (*v17 < 9u)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17[4];
    if (v18)
    {
      v18 = (v18 + v8 + *(v18 + v8));
    }
  }

  v16 = *v15;
  return sub_A7AD90(v18, a4 + (v15[2] >> 8))[1] + v16;
}

unsigned int *sub_A7AC40(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[3 * a2 + 1];
}

void sub_A7AD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_A7AD90(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[3 * a2 + 1];
}

void sub_A7AE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

unsigned int *sub_A7AEE0(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(&v10, " is out of range", &v9);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[2 * a2 + 1];
}

void sub_A7AFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A7B02C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 64);
  if ((*(result + 96) & 1) == 0)
  {
    v11 = (v3 + 3);
    *(result + 64) = v11;
    for (i = *(result + 56); v11 >= i; *(v2 + 64) = v11)
    {
      if (v11 >= *(v2 + 72))
      {
        break;
      }

      v13 = *(v2 + 80);
      if (!v13)
      {
        break;
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - i) >> 2);
      result = sub_585D8((*v2 + 3896));
      v15 = *v13;
      if (v14 < v15)
      {
        break;
      }

      v16 = *(v13 + 1);
      if (*(v13 + 2) + v15 - v16 <= v14)
      {
        break;
      }

      v17 = *(v16 + (v14 - v15));
      if ((v17 & 1) == 0)
      {
        break;
      }

      if (((v17 >> 1) & 1 & ~result) != 0)
      {
        break;
      }

      i = *(v2 + 56);
      v11 = *(v2 + 64) + 12;
    }

    return result;
  }

  if (a2 == 2)
  {
    return result;
  }

  v4 = v3[2];
  v5 = (*(result + 16) + *(*(result + 16) - **(result + 16) + 8));
  v6 = v5 + *v5;
  v7 = *(result + 100);
  v8 = 10 * *&v6[12 * v7 + 4 + 12 * (v4 >> 8)];
  if (a2)
  {
    v9 = vcvtd_n_f64_s32(v8, 1uLL);
    if (v9 >= 0.0)
    {
      if (v9 < 4.50359963e15)
      {
        v10 = (v9 + v9) + 1;
        goto LABEL_18;
      }
    }

    else if (v9 > -4.50359963e15)
    {
      v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
LABEL_18:
      v9 = (v10 >> 1);
    }

    v8 = v9;
  }

  v18 = v8 / 10;
  v19 = v8 % 10;
  if (v8 < 0)
  {
    v20 = -5;
  }

  else
  {
    v20 = 5;
  }

  *(result + 104) += v18 + (((103 * (v20 + v19)) >> 15) & 1) + ((103 * (v20 + v19)) >> 10);
  v21 = *(result + 56);
  if (v3 >= v21 && v3 < *(result + 72))
  {
    v22 = v4;
    while (1)
    {
      v29 = (*(v2 + 16) + *(*(v2 + 16) - **(v2 + 16) + 8));
      if (*(v2 + 104) <= (*(&v29[3 * v7 + 3 + 3 * (v3[2] >> 8)] + *v29) + *v3))
      {
        return result;
      }

      *(v2 + 100) = ++v7;
      if (v7 >= v22)
      {
        v30 = a2;
        v31 = (v3 + 3);
        *(v2 + 64) = v31;
        do
        {
          if (v31 >= *(v2 + 72))
          {
            break;
          }

          v32 = *(v2 + 80);
          if (!v32)
          {
            break;
          }

          v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v21) >> 2);
          result = sub_585D8((*v2 + 3896));
          v34 = *v32;
          if (v33 < v34)
          {
            break;
          }

          v35 = *(v32 + 1);
          if (*(v32 + 2) + v34 - v35 <= v33)
          {
            break;
          }

          v36 = *(v35 + (v33 - v34));
          if ((v36 & 1) == 0)
          {
            break;
          }

          if (((v36 >> 1) & 1 & ~result) != 0)
          {
            break;
          }

          v21 = *(v2 + 56);
          v31 = *(v2 + 64) + 12;
          *(v2 + 64) = v31;
        }

        while (v31 >= v21);
        v7 = 0;
        *(v2 + 100) = 0;
        v21 = *(v2 + 56);
        v3 = *(v2 + 64);
        a2 = v30;
      }

      if (v3 < v21)
      {
        return result;
      }

      if (v3 < *(v2 + 72))
      {
        break;
      }

LABEL_32:
      if (v3 >= *(v2 + 72))
      {
        return result;
      }
    }

    v37 = (*(v2 + 16) + *(*(v2 + 16) - **(v2 + 16) + 8));
    v38 = &v37[3 * v7 + 3 * (v3[2] >> 8)] + *v37;
    v24 = 10 * *(v38 + 4);
    if (!a2)
    {
LABEL_28:
      v25 = *(v38 + 8) + *v3;
      v26 = v24 / 10;
      v27 = v24 % 10;
      if (v24 < 0)
      {
        v28 = -5;
      }

      else
      {
        v28 = 5;
      }

      *(v2 + 104) = v25 + v26 + (((103 * (v28 + v27)) >> 15) & 1) + ((103 * (v28 + v27)) >> 10);
      goto LABEL_32;
    }

    v23 = vcvtd_n_f64_s32(v24, 1uLL);
    if (v23 >= 0.0)
    {
      if (v23 >= 4.50359963e15)
      {
        goto LABEL_27;
      }

      v39 = (v23 + v23) + 1;
    }

    else
    {
      if (v23 <= -4.50359963e15)
      {
        goto LABEL_27;
      }

      v39 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
    }

    v23 = (v39 >> 1);
LABEL_27:
    v24 = v23;
    goto LABEL_28;
  }

  return result;
}

void *sub_A7B42C(void *result)
{
  v1 = result;
  v2 = (result[9] - 12);
  result[8] = v2;
  v3 = result[7];
  if (v2 >= v3)
  {
    do
    {
      if (v2 >= v1[9])
      {
        break;
      }

      v4 = v1[10];
      if (!v4)
      {
        break;
      }

      v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 2);
      result = sub_585D8((*v1 + 3896));
      v6 = *v4;
      if (v5 < v6)
      {
        break;
      }

      v7 = *(v4 + 1);
      if (*(v4 + 2) + v6 - v7 <= v5)
      {
        break;
      }

      v8 = *(v7 + (v5 - v6));
      if ((v8 & 1) == 0)
      {
        break;
      }

      if (((v8 >> 1) & 1 & ~result) != 0)
      {
        break;
      }

      v3 = v1[7];
      v2 = (v1[8] - 12);
      v1[8] = v2;
    }

    while (v2 >= v3);
    v3 = v1[7];
    v2 = v1[8];
  }

  if (v2 >= v3 && v2 < v1[9] && *(v1 + 96) == 1)
  {
    v9 = v2[2];
    v10 = v9 - 1;
    *(v1 + 25) = v10;
    v11 = (v1[2] + *(v1[2] - *v1[2] + 8));
    *(v1 + 26) = *(&v11[3 * v10 + 3 + 3 * (v9 >> 8)] + *v11) + *v2;
  }

  return result;
}

uint64_t sub_A7B558(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*(result + 96) & 1) == 0)
  {
    v9 = *(result + 56);
    v10 = *(result + 64) - 12;
    for (*(result + 64) = v10; v10 >= v9; *(v2 + 64) = v10)
    {
      if (v10 >= *(v2 + 72))
      {
        break;
      }

      v11 = *(v2 + 80);
      if (!v11)
      {
        break;
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 2);
      result = sub_585D8((*v2 + 3896));
      v13 = *v11;
      if (v12 < v13)
      {
        break;
      }

      v14 = *(v11 + 1);
      if (*(v11 + 2) + v13 - v14 <= v12)
      {
        break;
      }

      v15 = *(v14 + (v12 - v13));
      if ((v15 & 1) == 0)
      {
        break;
      }

      if (((v15 >> 1) & 1 & ~result) != 0)
      {
        break;
      }

      v9 = *(v2 + 56);
      v10 = *(v2 + 64) - 12;
    }

    return result;
  }

  if (a2 == 2)
  {
    return result;
  }

  v3 = (*(result + 16) + *(*(result + 16) - **(result + 16) + 8));
  v4 = v3 + *v3;
  v5 = *(result + 64);
  v6 = 10 * *&v4[12 * (*(result + 100) + (v5[2] >> 8)) + 4];
  if (a2)
  {
    v7 = vcvtd_n_f64_s32(v6, 1uLL);
    if (v7 >= 0.0)
    {
      if (v7 < 4.50359963e15)
      {
        v8 = (v7 + v7) + 1;
        goto LABEL_18;
      }
    }

    else if (v7 > -4.50359963e15)
    {
      v8 = (v7 + v7) - 1 + (((v7 + v7) - 1) >> 63);
LABEL_18:
      v7 = (v8 >> 1);
    }

    v6 = v7;
  }

  v16 = v6 / -10;
  v17 = v6 % 10;
  if (v6 < 0)
  {
    v18 = -5;
  }

  else
  {
    v18 = 5;
  }

  *(result + 104) += v16 + (((-103 * (v18 + v17)) >> 15) & 1) + ((-103 * (v18 + v17)) >> 10);
  v19 = *(result + 56);
  if (v5 >= v19 && v5 < *(result + 72))
  {
    while (1)
    {
      v26 = (*(v2 + 16) + *(*(v2 + 16) - **(v2 + 16) + 8));
      v27 = v26 + *v26;
      v28 = *(v2 + 100);
      if (*(v2 + 104) >= *&v27[12 * (v28 + (v5[2] >> 8)) + 8] + *v5)
      {
        return result;
      }

      if (v28)
      {
        goto LABEL_35;
      }

      v5 -= 3;
      *(v2 + 64) = v5;
      if (v5 >= v19)
      {
        v29 = a2;
        do
        {
          if (v5 >= *(v2 + 72))
          {
            break;
          }

          v30 = *(v2 + 80);
          if (!v30)
          {
            break;
          }

          v31 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v19) >> 2);
          result = sub_585D8((*v2 + 3896));
          v32 = *v30;
          if (v31 < v32)
          {
            break;
          }

          v33 = *(v30 + 1);
          if (*(v30 + 2) + v32 - v33 <= v31)
          {
            break;
          }

          v34 = *(v33 + (v31 - v32));
          if ((v34 & 1) == 0)
          {
            break;
          }

          if (((v34 >> 1) & 1 & ~result) != 0)
          {
            break;
          }

          v19 = *(v2 + 56);
          v5 = (*(v2 + 64) - 12);
          *(v2 + 64) = v5;
        }

        while (v5 >= v19);
        v19 = *(v2 + 56);
        v5 = *(v2 + 64);
        a2 = v29;
      }

      if (v5 >= v19 && v5 < *(v2 + 72))
      {
        break;
      }

LABEL_49:
      if (v5 < v19)
      {
        return result;
      }

      if (v5 < *(v2 + 72))
      {
        v35 = (*(v2 + 16) + *(*(v2 + 16) - **(v2 + 16) + 8));
        v36 = &v35[3 * (*(v2 + 100) + (v5[2] >> 8))] + *v35;
        v21 = 10 * *(v36 + 4);
        if (a2)
        {
          v20 = vcvtd_n_f64_s32(v21, 1uLL);
          if (v20 >= 0.0)
          {
            if (v20 < 4.50359963e15)
            {
              v37 = (v20 + v20) + 1;
LABEL_26:
              v20 = (v37 >> 1);
            }
          }

          else if (v20 > -4.50359963e15)
          {
            v37 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
            goto LABEL_26;
          }

          v21 = v20;
        }

        v22 = *(v36 + 12) + *v5;
        v23 = v21 / -10;
        v24 = v21 % 10;
        if (v21 < 0)
        {
          v25 = -5;
        }

        else
        {
          v25 = 5;
        }

        *(v2 + 104) = v22 + v23 + (((-103 * (v25 + v24)) >> 15) & 1) + ((-103 * (v25 + v24)) >> 10);
      }

      if (v5 >= *(v2 + 72))
      {
        return result;
      }
    }

    v28 = *(v5 + 8);
LABEL_35:
    *(v2 + 100) = v28 - 1;
    goto LABEL_49;
  }

  return result;
}

unsigned int *sub_A7B9A8(char **a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v5 = 0x186186186186186;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  *(sub_A332F8(v15, a2) + 160) = 0;
  v6 = (168 * v2 + 168);
  v7 = *a1;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  if (*a1 != v8)
  {
    v10 = (v15 + *a1 - v8);
    v11 = *a1;
    do
    {
      *v10 = 0;
      *(v10 + 40) = -1;
      v12 = *(v11 + 40);
      if (v12 != -1)
      {
        v16 = v10;
        (off_2670B40[v12])(&v16, v11);
        *(v10 + 40) = v12;
      }

      v11 += 168;
      v10 += 168;
    }

    while (v11 != v8);
    do
    {
      v13 = *(v7 + 40);
      if (v13 != -1)
      {
        (off_2670B30[v13])(&v16, v7);
      }

      *(v7 + 40) = -1;
      v7 += 168;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

uint64_t sub_A7BBB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 168;
      *(a1 + 16) = v3 - 168;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_2670B30[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_A7BC54(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(v2 + 44) = *(a2 + 44);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *v2 = v3;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 64) = a2[4];
  *(v2 + 80) = *(a2 + 10);
  a2[4] = 0uLL;
  *(a2 + 10) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 88) = *(a2 + 88);
  *(v2 + 104) = *(a2 + 13);
  a2[6] = 0uLL;
  *(a2 + 11) = 0;
  *(v2 + 112) = *(a2 + 28);
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 120) = *(a2 + 120);
  *(v2 + 136) = *(a2 + 17);
  a2[8] = 0uLL;
  *(a2 + 15) = 0;
  result = a2[9];
  *(v2 + 144) = result;
  return result;
}

__n128 sub_A7BCE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  *(v2 + 12) = *(a2 + 12);
  *v2 = result;
  return result;
}

uint64_t sub_A7BCFC(uint64_t a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCF3CF3CF3CF3CF3DLL * (v4 >> 3) + 1;
  if (v5 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - v2) >> 3) >= 0xC30C30C30C30C3)
  {
    v7 = 0x186186186186186;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * (v4 >> 3);
  *v8 = *a2;
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 160) = 1;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 160) = -1;
      v11 = v10[40];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2670B40[v11])(&v15, v10);
        *(v9 + 160) = v11;
      }

      v10 += 42;
      v9 += 168;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[40];
      if (v12 != -1)
      {
        (off_2670B30[v12])(&v16, v2);
      }

      v2[40] = -1;
      v2 += 42;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 168;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 168;
}

uint64_t sub_A7BEF0(unint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  v19 = a1;
  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 72 * v2;
  v16 = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 48) = 0;
  *(v6 + 63) = *(a2 + 63);
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = 72 * v2 + *a1 - v10;
  v18 = 72 * v2 + 72;
  sub_A7C17C(a1, v9, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_A7C084(&v16);
  return v15;
}

void sub_A7C070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A7C084(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A7C084(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v5 = (i - 72);
    *(a1 + 16) = i - 72;
    v6 = *(i - 40);
    if (v6)
    {
      *(i - 32) = v6;
      operator delete(v6);
    }

    v7 = *v5;
    if (*v5)
    {
      v8 = *(i - 64);
      v4 = *v5;
      if (v8 != v7)
      {
        do
        {
          v9 = v8 - 168;
          v10 = *(v8 - 2);
          if (v10 != -1)
          {
            (off_2670B30[v10])(&v12, v8 - 168);
          }

          *(v8 - 2) = -1;
          v8 -= 168;
        }

        while (v9 != v7);
        v4 = *v5;
      }

      *(i - 64) = v7;
      operator delete(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A7C17C(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      v7 = v6[7];
      *(a4 + 63) = *(v6 + 63);
      *(a4 + 56) = v7;
      v6 += 9;
      a4 += 72;
    }

    while (v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v9 = v5[4];
        if (v9)
        {
          v5[5] = v9;
          operator delete(v9);
        }

        v10 = *v5;
        if (*v5)
        {
          v11 = v5[1];
          v8 = *v5;
          if (v11 != v10)
          {
            do
            {
              v12 = v11 - 168;
              v13 = *(v11 - 2);
              if (v13 != -1)
              {
                (off_2670B30[v13])(&v14, v11 - 168);
              }

              *(v11 - 2) = -1;
              v11 -= 168;
            }

            while (v12 != v10);
            v8 = *v5;
          }

          v5[1] = v10;
          operator delete(v8);
        }

        v5 += 9;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_A7C2C8(uint64_t a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCF3CF3CF3CF3CF3DLL * (v4 >> 3) + 1;
  if (v5 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - v2) >> 3) >= 0xC30C30C30C30C3)
  {
    v7 = 0x186186186186186;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * (v4 >> 3);
  *v8 = *a2;
  *(v8 + 12) = *(a2 + 12);
  *(v8 + 160) = 1;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v14 = v8 - v4;
    v10 = v2;
    do
    {
      *v9 = 0;
      *(v9 + 160) = -1;
      v11 = v10[40];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2670B40[v11])(&v15, v10);
        *(v9 + 160) = v11;
      }

      v10 += 42;
      v9 += 168;
    }

    while (v10 != v3);
    do
    {
      v12 = v2[40];
      if (v12 != -1)
      {
        (off_2670B30[v12])(&v16, v2);
      }

      v2[40] = -1;
      v2 += 42;
    }

    while (v2 != v3);
    v2 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 8) = v8 + 168;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 168;
}

uint64_t sub_A7C4BC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    if (v6 <= *a1)
    {
      v15 = 0x1C71C71C71C71C72 * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v15 = 1;
      }

      v16 = a1[4];
      v19[3] = 0;
      v19[4] = v16;
      if (v15 < 0x38E38E38E38E38FLL)
      {
        operator new();
      }

      sub_1808();
    }

    v7 = (0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1) / 2;
    v5 = v6 - 72 * v7;
    if (v6 != v4)
    {
      v18 = (0x8E38E38E38E38E39 * ((v6 - *a1) >> 3) + 1) / 2;
      do
      {
        v9 = *v5;
        if (*v5)
        {
          v10 = *(v5 + 8);
          v11 = *v5;
          if (v10 != v9)
          {
            do
            {
              v12 = v10 - 168;
              v13 = *(v10 - 2);
              if (v13 != -1)
              {
                (off_2670B30[v13])(v19, v10 - 168);
              }

              *(v10 - 2) = -1;
              v10 -= 168;
            }

            while (v12 != v9);
            v11 = *v5;
          }

          *(v5 + 8) = v9;
          operator delete(v11);
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *v5 = *v6;
        *(v5 + 16) = *(v6 + 16);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        v14 = *(v5 + 32);
        *(v5 + 24) = *(v6 + 24);
        if (v14)
        {
          *(v5 + 40) = v14;
          operator delete(v14);
          *(v5 + 32) = 0;
          *(v5 + 40) = 0;
          *(v5 + 48) = 0;
        }

        *(v5 + 32) = *(v6 + 32);
        *(v5 + 48) = *(v6 + 48);
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
        *(v6 + 48) = 0;
        v8 = *(v6 + 56);
        *(v5 + 63) = *(v6 + 63);
        *(v5 + 56) = v8;
        v6 += 72;
        v5 += 72;
      }

      while (v6 != v4);
      v6 = a1[1];
      v7 = v18;
    }

    a1[1] = v6 - 72 * v7;
    a1[2] = v5;
  }

  result = sub_A7C79C(v5, a2);
  a1[2] += 72;
  return result;
}

uint64_t sub_A7C79C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_A33170(a1, *a2, *(a2 + 8), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5 != v6)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 56);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 56) = v7;
  return a1;
}

void sub_A7C894(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_A78C90(v1);
  _Unwind_Resume(a1);
}

double sub_A7C8B8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    sub_1794();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v5 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xDD67C8A60DD67CLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 80);
  *(v15 + 64) = *(a2 + 64);
  *(v15 + 80) = v6;
  *(v15 + 96) = *(a2 + 96);
  v7 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v7;
  v8 = *(a2 + 48);
  *(v15 + 32) = *(a2 + 32);
  *(v15 + 48) = v8;
  *(v15 + 104) = *(a2 + 104);
  *(v15 + 128) = *(a2 + 128);
  *(v15 + 112) = *(a2 + 112);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  *(v15 + 136) = *(a2 + 136);
  v9 = *(a2 + 176);
  *(v15 + 160) = *(a2 + 160);
  *(v15 + 176) = v9;
  *(v15 + 144) = *(a2 + 144);
  *(v15 + 192) = *(a2 + 192);
  *(v15 + 200) = *(a2 + 200);
  *(v15 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(v15 + 224) = *(a2 + 224);
  *(v15 + 240) = *(a2 + 240);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(v15 + 248) = *(a2 + 248);
  *(v15 + 264) = *(a2 + 264);
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(v15 + 272) = *(a2 + 272);
  *(v15 + 288) = *(a2 + 288);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  v10 = a1[1];
  v11 = 296 * v2 + *a1 - v10;
  sub_A7CAB8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = (296 * v2 + 296);
  *(a1 + 1) = v13;
  if (v12)
  {
    operator delete(v12);
    *&v13 = 296 * v2 + 296;
  }

  return *&v13;
}

void sub_A7CAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_A7CC58(va);
  _Unwind_Resume(a1);
}

void sub_A7CAB8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v21[3] = v4;
    v21[4] = v5;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[2];
      *(a4 + 16) = v7[1];
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[5];
      *(a4 + 96) = *(v7 + 12);
      *(a4 + 64) = v11;
      *(a4 + 80) = v12;
      *(a4 + 48) = v10;
      *(a4 + 104) = *(v7 + 26);
      v13 = v7[7];
      *(a4 + 128) = *(v7 + 16);
      *(a4 + 112) = v13;
      *(v7 + 15) = 0;
      *(v7 + 16) = 0;
      *(v7 + 14) = 0;
      *(a4 + 136) = *(v7 + 34);
      v14 = v7[9];
      v15 = v7[11];
      *(a4 + 160) = v7[10];
      *(a4 + 176) = v15;
      *(a4 + 144) = v14;
      *(a4 + 192) = *(v7 + 24);
      *(a4 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 200) = 0;
      *(a4 + 200) = *(v7 + 200);
      *(a4 + 216) = *(v7 + 27);
      *(v7 + 25) = 0;
      *(v7 + 26) = 0;
      *(v7 + 27) = 0;
      *(a4 + 224) = 0;
      *(a4 + 232) = 0;
      *(a4 + 240) = 0;
      *(a4 + 224) = v7[14];
      *(a4 + 240) = *(v7 + 30);
      *(v7 + 28) = 0;
      *(v7 + 29) = 0;
      *(v7 + 30) = 0;
      *(a4 + 248) = 0;
      *(a4 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 248) = *(v7 + 248);
      *(a4 + 264) = *(v7 + 33);
      *(v7 + 31) = 0;
      *(v7 + 32) = 0;
      *(v7 + 33) = 0;
      *(a4 + 272) = 0;
      *(a4 + 280) = 0;
      *(a4 + 288) = 0;
      *(a4 + 272) = v7[17];
      *(a4 + 288) = *(v7 + 36);
      *(v7 + 34) = 0;
      *(v7 + 35) = 0;
      *(v7 + 36) = 0;
      v7 = (v7 + 296);
      a4 += 296;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v16 = a2 + 200;
      do
      {
        v18 = *(v16 + 9);
        if (v18)
        {
          *(v16 + 10) = v18;
          operator delete(v18);
        }

        v19 = *(v16 + 6);
        if (v19)
        {
          *(v16 + 7) = v19;
          operator delete(v19);
        }

        v20 = *(v16 + 3);
        if (v20)
        {
          *(v16 + 4) = v20;
          operator delete(v20);
        }

        v21[0] = v16;
        sub_A3212C(v21);
        if (*(v16 - 65) < 0)
        {
          operator delete(*(v16 - 11));
        }

        v17 = (v16 + 96);
        v16 += 296;
      }

      while (v17 != a3);
    }
  }
}

uint64_t sub_A7CC58(uint64_t a1)
{
  sub_A7CC90(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A7CC90(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      *(i - 40) = v6;
      operator delete(v6);
    }

    v7 = *(i - 72);
    if (v7)
    {
      *(i - 64) = v7;
      operator delete(v7);
    }

    v8 = (i - 96);
    sub_A3212C(&v8);
    if (*(i - 161) < 0)
    {
      operator delete(*(i - 184));
    }
  }
}

uint64_t sub_A7CD3C(uint64_t a1)
{
  if (*(a1 + 296) != 1)
  {
    return a1;
  }

  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    *(a1 + 256) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    *(a1 + 232) = v4;
    operator delete(v4);
  }

  v6 = (a1 + 200);
  sub_A3212C(&v6);
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 112));
  return a1;
}

void sub_A7CDD8(uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a4 + 23) < 0)
  {
    if (a4[1] == 3 && **a4 == 28787 && *(*a4 + 2) == 97)
    {
      goto LABEL_47;
    }

    if (a4[1] == 11 && **a4 == 0x706D6F632D617073 && *(*a4 + 3) == 0x746361706D6F632DLL)
    {
LABEL_41:
      operator new();
    }

    if (a4[1] == 4 && **a4 == 1634759538)
    {
      goto LABEL_51;
    }

    if (a4[1] == 7 && **a4 == 1886610285 && *(*a4 + 3) == 1949131120)
    {
      goto LABEL_52;
    }

    v11 = a4[1];
    if (v11 == 9)
    {
      v12 = *a4;
      goto LABEL_54;
    }

    if (v11 != 8 || **a4 != 0x77742D617073636DLL)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v6 = *(a4 + 23);
    if (v6 <= 7)
    {
      if (v6 != 3)
      {
        if (v6 != 4)
        {
          if (v6 != 7)
          {
            goto LABEL_58;
          }

          if (*a4 != 1886610285 || *(a4 + 3) != 1949131120)
          {
            goto LABEL_58;
          }

LABEL_52:
          operator new();
        }

        if (*a4 != 1634759538)
        {
          goto LABEL_58;
        }

LABEL_51:
        operator new();
      }

      if (*a4 != 28787 || *(a4 + 2) != 97)
      {
LABEL_58:
        if (sub_A7DB8C(a4, "mcspa-twrt"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/McSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7DC98();
        }

        if (sub_A7DB8C(a4, "mcspa-twrft"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/McSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7DD18();
        }

        if (sub_A7DB8C(a4, "mcspa-twrtm"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/McSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7DD98();
        }

        if (sub_A7DB8C(a4, "mcspa-twrftm"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/McSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7DE18();
        }

        if (sub_A7DB8C(a4, "bmcspa-t"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7DE98();
        }

        if (sub_A7DB8C(a4, "bmcspa-tw"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7DF18();
        }

        if (sub_A7DB8C(a4, "bmcspa-twr"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7DF98();
        }

        if (sub_A7DB8C(a4, "bmcspa-twrt"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7E018();
        }

        if (sub_A7DB8C(a4, "bmcspa-twrt-compact"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7E098();
        }

        if (sub_A7DB8C(a4, "bmcspa-twrtm"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7E118();
        }

        if (sub_A7DB8C(a4, "bmcspa-twrtm-compact"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7E198();
        }

        if (sub_A7DB8C(a4, "bmcspa-twrft"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7E218();
        }

        if (sub_A7DB8C(a4, "bmcspa-twrft-compact"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7E298();
        }

        if (sub_A7DB8C(a4, "bmcspa-twrftm"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7E318();
        }

        if (sub_A7DB8C(a4, "bmcspa-twrftm-compact"))
        {
          sub_3608D0(v25, "routing/transit/journey_planning/algorithms/BoundedMcSpa.json");
          __p = 0;
          v23 = 0;
          v24 = 0;
          sub_3AEC94(a3, v25, &__p);
          sub_A7E398();
        }

        exception = __cxa_allocate_exception(0x40uLL);
        std::operator+<char>();
        if ((v26 & 0x80u) == 0)
        {
          v19 = v25;
        }

        else
        {
          v19 = v25[0];
        }

        if ((v26 & 0x80u) == 0)
        {
          v20 = v26;
        }

        else
        {
          v20 = v25[1];
        }

        v21 = sub_2D390(exception, v19, v20);
      }

LABEL_47:
      operator new();
    }

    if (v6 != 8)
    {
      v12 = a4;
      if (v6 != 9)
      {
        if (v6 != 11)
        {
          goto LABEL_58;
        }

        if (*a4 != 0x706D6F632D617073 || *(a4 + 3) != 0x746361706D6F632DLL)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      }

LABEL_54:
      v15 = *v12;
      v16 = *(v12 + 8);
      if (v15 == 0x77742D617073636DLL && v16 == 114)
      {
        sub_3608D0(v25, "routing/transit/journey_planning/algorithms/McSpa.json");
        __p = 0;
        v23 = 0;
        v24 = 0;
        sub_3AEC94(a3, v25, &__p);
        sub_A7DC18();
      }

      goto LABEL_58;
    }

    if (*a4 != 0x77742D617073636DLL)
    {
      goto LABEL_58;
    }
  }

  operator new();
}