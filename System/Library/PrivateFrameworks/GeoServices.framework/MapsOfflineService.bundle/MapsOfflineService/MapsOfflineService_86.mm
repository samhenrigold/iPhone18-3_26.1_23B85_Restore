void sub_577848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_57785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_577870(uint64_t *a1, uint64_t a2, int *a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v6 = sub_584F38(a1, a2, a3);
    a1[1] = v6;
    return v6 - 64;
  }

  else
  {
    sub_5850C8(a1[1], a2, a3);
    a1[1] = v4 + 64;
    a1[1] = v4 + 64;
    return v4;
  }
}

void sub_5778D8(uint64_t a1, void *a2, void *a3)
{
  if (a2[138] != a2[139] && sub_4D1DC0(a2))
  {
    if (*(a2[139] - 1608) >= *(a1 + 1768))
    {
      v6 = *(a1 + 1768);
    }

    else
    {
      v6 = *(a2[139] - 1608);
    }

    v7 = *(a1 + 8);
    v8 = sub_4D1F60(a2);
    sub_2B7A20(v7, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, &v23);
    sub_31BF20(&v23, v26);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v9 = sub_4D2140(a2);
    sub_2F4C8(v26, 0, &v23, 0.0, v9 / 1000000000.0);
    v10 = v23;
    if (v23 != __p)
    {
      v11 = (__p - 12);
      v12 = a3[3];
      v13 = a3[4];
      if (v12 >= v13)
      {
        v16 = a3[2];
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 3) + 1;
        if (v17 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v20 = 8 * ((v12 - v16) >> 3);
        v21 = *v11;
        *(v20 + 8) = *(__p - 1);
        *v20 = v21;
        *(v20 + 16) = v6;
        v15 = v20 + 24;
        v22 = (v20 - (v12 - v16));
        memcpy(v22, v16, v12 - v16);
        a3[2] = v22;
        a3[3] = v15;
        a3[4] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        v14 = *v11;
        *(v12 + 8) = *(__p - 1);
        *v12 = v14;
        *(v12 + 16) = v6;
        v15 = v12 + 24;
      }

      a3[3] = v15;
      v10 = v23;
    }

    if (v10)
    {
      __p = v10;
      operator delete(v10);
    }

    if (v26[0])
    {
      v26[1] = v26[0];
      operator delete(v26[0]);
    }
  }
}

void sub_577AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

uint64_t sub_577B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 11272);
  if (v4 == 3)
  {
    if (*(a1 + 1977))
    {
LABEL_61:
      v25 = 1;
      return v25 & 1;
    }
  }

  else if (v4 == 4 && (*(a1 + 1976) & 1) != 0)
  {
    goto LABEL_61;
  }

  v5 = sub_4D1F60(a2);
  v6 = *v5;
  v7 = (*v5 - **v5);
  v8 = *v7;
  if (v8 >= 0x2F && v7[23])
  {
    v9 = v6[v7[23]];
    v10 = v9 > 0x1A;
    v11 = (1 << v9) & 0x4810001;
    if (!v10 && v11 != 0)
    {
      if (*(v5 + 38))
      {
        if (v8 < 0x39)
        {
          goto LABEL_48;
        }

        v13 = v7[28];
        if (!v13)
        {
          goto LABEL_48;
        }

        v14 = *&v6[v13];
        if ((v14 & 2) != 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        if ((v14 & 7) != 4 && (v14 & 0x23) != 0x20)
        {
          goto LABEL_48;
        }

        goto LABEL_22;
      }

      if (v8 < 0x39)
      {
        goto LABEL_48;
      }

      v15 = v7[28];
      if (!v15)
      {
        goto LABEL_48;
      }

      v14 = *&v6[v15];
      if ((v14 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_22:
  if ((*(a2 + 11268) - 1) > 1 || (v16 = *(a2 + 7496), *(a2 + 7488) == v16) || !*(a1 + 1960) || sub_138B0((a1 + 1936), (v16 - 24)))
  {
    if (*(a1 + 1900) != 1)
    {
      goto LABEL_53;
    }

    sub_64AEEC(&v54, 2);
    sub_11A9248(&v54, (a2 + 11400), 2, &__p);
    v17 = __p;
    v18 = v53;
    v55[0] = (a2 + 11088);
    v55[1] = a1;
    if (__p != v53)
    {
      while (!sub_5863D4(v55, v17))
      {
        v17 += 44;
        if (v17 == v18)
        {
          v17 = __p;
          v18 = v53;
          goto LABEL_31;
        }
      }

      v17 = __p;
      if (__p)
      {
        v21 = v53;
        if (__p == v53)
        {
          v22 = __p;
        }

        else
        {
          do
          {
            v23 = *(v21 - 3);
            if (v23)
            {
              operator delete(v23);
            }

            v24 = *(v21 - 13);
            if (v24)
            {
              *(v21 - 12) = v24;
              operator delete(v24);
            }

            v21 -= 44;
          }

          while (v21 != v17);
          v22 = __p;
        }

        goto LABEL_52;
      }

      goto LABEL_53;
    }

LABEL_31:
    if (v17 == v18)
    {
      v22 = v17;
      if (v17)
      {
LABEL_52:
        v53 = v17;
        operator delete(v22);
      }

LABEL_53:
      v26 = *(a2 + 11375);
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(a2 + 11360);
      }

      if (!v26)
      {
        goto LABEL_61;
      }

      v27 = sub_E67C38(a2 + 11088);
      v28 = v27;
      v29 = *(a1 + 2008);
      v30 = *(a1 + 2016);
      v31 = v29;
      if (v29 != v30)
      {
        v31 = *(a1 + 2008);
        while (*v31 != v27)
        {
          v31 += 16;
          if (v31 == v30)
          {
            goto LABEL_64;
          }
        }
      }

      if (v31 != v30)
      {
        v25 = v31[8];
        return v25 & 1;
      }

LABEL_64:
      v32 = *(a1 + 1912);
      v33 = *(a1 + 1920);
      if (v32 == v33)
      {
LABEL_97:
        v25 = 1;
        v43 = *(a1 + 2024);
        if (v30 >= v43)
        {
LABEL_88:
          v44 = v30 - v29;
          v45 = (v30 - v29) >> 4;
          v46 = v45 + 1;
          if ((v45 + 1) >> 60)
          {
            sub_1794();
          }

          v47 = v43 - v29;
          if (v47 >> 3 > v46)
          {
            v46 = v47 >> 3;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF0)
          {
            v48 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            if (!(v48 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v50 = 16 * v45;
          *v50 = v28;
          *(v50 + 8) = v25;
          v49 = 16 * v45 + 16;
          memcpy(0, v29, v44);
          *(a1 + 2008) = 0;
          *(a1 + 2016) = v49;
          *(a1 + 2024) = 0;
          if (v29)
          {
            operator delete(v29);
          }

          goto LABEL_101;
        }
      }

      else
      {
        v34 = *(a2 + 11375);
        if ((v34 & 0x8000000000000000) != 0)
        {
          v38 = *(a2 + 11352);
          v39 = *(a2 + 11360);
          while (1)
          {
            v40 = *(v32 + 23);
            v41 = v40 >= 0 ? *(v32 + 23) : *(v32 + 8);
            if (v39 >= v41)
            {
              v42 = v40 >= 0 ? v32 : *v32;
              if (!memcmp(v38, v42, v41))
              {
                break;
              }
            }

            v32 += 24;
            if (v32 == v33)
            {
              goto LABEL_97;
            }
          }
        }

        else
        {
          while (1)
          {
            v35 = *(v32 + 23);
            v36 = v35 >= 0 ? *(v32 + 23) : *(v32 + 8);
            if (v36 <= v34)
            {
              v37 = v35 >= 0 ? v32 : *v32;
              if (!memcmp((a2 + 11352), v37, v36))
              {
                break;
              }
            }

            v32 += 24;
            if (v32 == v33)
            {
              goto LABEL_97;
            }
          }
        }

        v25 = 0;
        v43 = *(a1 + 2024);
        if (v30 >= v43)
        {
          goto LABEL_88;
        }
      }

      *v30 = v28;
      v30[8] = v25;
      v49 = (v30 + 16);
LABEL_101:
      *(a1 + 2016) = v49;
      return v25 & 1;
    }

    if (v17)
    {
      do
      {
        v19 = *(v18 - 3);
        if (v19)
        {
          operator delete(v19);
        }

        v20 = *(v18 - 13);
        if (v20)
        {
          *(v18 - 12) = v20;
          operator delete(v20);
        }

        v18 -= 44;
      }

      while (v18 != v17);
      v53 = v17;
      operator delete(__p);
    }
  }

LABEL_48:
  v25 = 0;
  return v25 & 1;
}

unint64_t sub_577FD0(uint64_t a1, void *a2)
{
  v2 = a2[139];
  do
  {
    if (v2 == a2[138])
    {
      if (!sub_7E7E4(1u))
      {
        return -1;
      }

      sub_19594F8(&v18);
      sub_4A5C(&v18, "Could not resolve transport mode transition coordinate.", 55);
      if ((v28 & 0x10) != 0)
      {
        v14 = v27;
        if (v27 < v24)
        {
          v27 = v24;
          v14 = v24;
        }

        v15 = v23;
        v10 = v14 - v23;
        if (v14 - v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if ((v28 & 8) == 0)
        {
          v10 = 0;
          v17 = 0;
LABEL_22:
          *(&v16 + v10) = 0;
          sub_7E854(&v16, 1u);
          if (v17 < 0)
          {
            operator delete(v16);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }

          std::locale::~locale(&v20);
          std::ostream::~ostream();
          std::ios::~ios();
          return -1;
        }

        v15 = v21;
        v10 = v22 - v21;
        if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_30:
          sub_3244();
        }
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      v17 = v10;
      if (v10)
      {
        memmove(&v16, v15, v10);
      }

      goto LABEL_22;
    }

    v3 = v2 - 2616;
    v4 = *(v2 - 2232);
    v2 -= 2616;
  }

  while (v4 != 5);
  v5 = *(v3 + 24);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (a2[1266] == a2[1267])
  {
    v12 = sub_4D1F50(a2, v7);
    sub_2B7A20(*(a1 + 8), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v18);
    result = sub_31AA0C(&v18);
    if (__p)
    {
      v20.__locale_ = __p;
      v13 = result;
      operator delete(__p);
      return v13;
    }
  }

  else
  {
    sub_69ADA0(a2);
    return *(*(v8 + 8) - 12);
  }

  return result;
}

void sub_5782D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_578320(void *a1, unint64_t a2)
{
  if (0x3795876FF3795877 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x3795876FF3795877 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 2616 * a2;
}

void sub_57845C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_57853C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v6 = sub_3AF6B4(a2);
  *(a1 + 16) = -1;
  *(a1 + 8) = v6;
  *(a1 + 24) = 0x7FFFFFFF;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_527724(a1 + 144, a3);
  HIBYTE(v9[2]) = 18;
  strcpy(v9, "ArrivalInfoBuilder");
  memset(v8, 0, sizeof(v8));
  v7 = sub_3AEC94(a2, v9, v8);
  sub_41D7AC(v7, &v10);
  operator new();
}

void sub_5787CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_5C010(v28 - 88);
  sub_1A104(&a19);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4((v27 + 16));
  sub_584AC0(v27);
  _Unwind_Resume(a1);
}

uint64_t sub_57884C(uint64_t result, void *a2)
{
  if (*(result + 1720) == 1)
  {
    v2 = result;
    if (*(result + 1596) == 1)
    {
      result = sub_4D1DC0(a2);
      if (result)
      {
        result = sub_69AE3C(a2);
        if (*result != -1 || *(result + 4) != -1)
        {
          sub_578A40(v2, a2);
          sub_5790DC(v2, a2);
          v5 = sub_4D1F60(a2);
          v6 = sub_579290(v2, *(v5 + 32) | (*(v5 + 36) << 32));
          if (sub_69CCC0(a2) && *sub_73F54(a2) != 0x7FFFFFFF)
          {
            v8 = *(v2 + 1792);
            v9 = sub_73F54(a2);
            v7 = sub_5733D0(v9, v8);
          }

          else
          {
            v7 = 0;
          }

          sub_57A13C(v2, v7, v6, (a2 + 1281));
          sub_57A478(v2, a2, a2 + 1281);
          sub_57A720(v2, v7, (a2 + 1281));
          sub_57A930(v2, a2, a2 + 1281);
          sub_57AB24(v2, a2, (a2 + 1281));
          sub_57AE04(v2, a2, a2 + 1281);
          sub_5744DC(v2, a2);
          if (*(v2 + 1752) == 0x7FFFFFFFFFFFFFFFLL || *(sub_69AE3C(a2) + 184) != 2)
          {
            v10 = (v2 + 1744);
          }

          else
          {
            v10 = (v2 + 1752);
          }

          v11 = *v10;
          v12 = a2[139];
          if (a2[138] != v12)
          {
            v13 = *(v12 - 1608);
            if (v13 < v11)
            {
              v11 = v13;
            }
          }

          a2[1281] = v11;

          return sub_57B080(v2, a2, (a2 + 1281));
        }
      }
    }
  }

  return result;
}

BOOL sub_578A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_69AE3C(a2);
  if (sub_69B0E0(a2))
  {
    LOBYTE(v5) = 1;
    goto LABEL_36;
  }

  if (!*(a1 + 1280))
  {
    goto LABEL_35;
  }

  if ((sub_67AE78(a1 + 144) & 1) == 0)
  {
    v8 = *(a1 + 1280) - 1;
    v9 = *(a1 + 1272);
    v10 = (v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
    goto LABEL_10;
  }

  v6 = *(a1 + 1706);
  v7 = sub_4D1DB0(a2);
  if (v6 == 1)
  {
    LODWORD(v8) = *v7;
    if (v8 != 0xFFFF)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *v7;
    LOWORD(v8) = -1;
    if (v11 != 0xFFFF)
    {
      if (*(a1 + 1360) == 2)
      {
        LODWORD(v8) = *v7;
      }

      else
      {
        LOWORD(v8) = v11 - 1;
      }
    }

    LODWORD(v8) = v8;
    if (v8 != 0xFFFF)
    {
LABEL_7:
      if (*(a1 + 1280) > v8)
      {
        v9 = *(a1 + 1272);
        v10 = (v8 >> 3) & 0x1FF8;
LABEL_10:
        v5 = (*(v9 + v10) >> v8) & 1;
        goto LABEL_36;
      }

      if (sub_7E7E4(3u))
      {
        sub_19594F8(&__p[3]);
        v12 = sub_74700();
        sub_73F1C(v12);
        std::operator+<char>();
        if (SHIBYTE(__p[2]) >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v14 = HIBYTE(__p[2]);
        }

        else
        {
          v14 = __p[1];
        }

        sub_4A5C(&__p[3], v13, v14);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959680(&__p[3], __p);
        sub_7E854(__p, 3u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(&__p[3]);
        LOBYTE(v5) = 0;
        goto LABEL_36;
      }

LABEL_35:
      LOBYTE(v5) = 0;
      goto LABEL_36;
    }
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_35;
  }

  sub_19594F8(&__p[3]);
  v15 = sub_74700();
  v16 = sub_73F1C(v15);
  if (*(v16 + 23) >= 0)
  {
    v17 = *(v16 + 23);
  }

  else
  {
    v17 = *(v16 + 8);
  }

  if (v17 + 63 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v17 + 63 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "ArrivalInfoBuilder encountered an invalid user waypoint index: ", 63);
  if (*(v16 + 23) >= 0)
  {
    v28 = v16;
  }

  else
  {
    v28 = *v16;
  }

  memmove(&__p[7] + 7, v28, v17);
  *(&__p[7] + v17 + 7) = 0;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v30 = HIBYTE(__p[2]);
  }

  else
  {
    v30 = __p[1];
  }

  sub_4A5C(&__p[3], v29, v30);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v41 & 0x10) != 0)
  {
    v32 = *(&v40 + 1);
    if (*(&v40 + 1) < v37)
    {
      *(&v40 + 1) = v37;
      v32 = v37;
    }

    v33 = &v36[1];
    goto LABEL_71;
  }

  if ((v41 & 8) != 0)
  {
    v33 = &__p[6];
    v32 = v36[0];
LABEL_71:
    v34 = *v33;
    v31 = v32 - *v33;
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v32 - *v33;
    if (v31)
    {
      memmove(__p, v34, v31);
    }

    goto LABEL_77;
  }

  v31 = 0;
  HIBYTE(__p[2]) = 0;
LABEL_77:
  *(__p + v31) = 0;
  sub_7E854(__p, 3u);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v40) < 0)
  {
    operator delete(v39[0]);
  }

  std::locale::~locale(&__p[5]);
  std::ostream::~ostream();
  std::ios::~ios();
  LOBYTE(v5) = 0;
LABEL_36:
  sub_57B984(&__p[3], v4, v5);
  v18 = *(a1 + 32);
  *(a1 + 16) = __p[3];
  *(a1 + 24) = __p[4];
  if (v18)
  {
    *(a1 + 40) = v18;
    operator delete(v18);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v19 = *(a1 + 56);
  *(a1 + 32) = *&__p[5];
  *(a1 + 48) = __p[7];
  memset(&__p[5], 0, 24);
  if (v19)
  {
    *(a1 + 64) = v19;
    operator delete(v19);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v20 = (a1 + 104);
  v21 = *(a1 + 104);
  *(a1 + 56) = *v36;
  *(a1 + 72) = v37;
  v36[1] = 0;
  v37 = 0;
  v36[0] = 0;
  *(a1 + 80) = v38;
  *(a1 + 88) = *v39;
  if (v21)
  {
    v22 = *(a1 + 112);
    v23 = v21;
    if (v22 != v21)
    {
      v24 = *(a1 + 112);
      do
      {
        v26 = *(v24 - 3);
        v24 -= 24;
        v25 = v26;
        if (v26)
        {
          *(v22 - 2) = v25;
          operator delete(v25);
        }

        v22 = v24;
      }

      while (v24 != v21);
      v23 = *v20;
    }

    *(a1 + 112) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = v40;
  *(a1 + 120) = v41;
  v41 = 0;
  v40 = 0uLL;
  *(a1 + 128) = v42;
  *(a1 + 136) = v43;
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (__p[5])
  {
    __p[6] = __p[5];
    operator delete(__p[5]);
  }

  result = sub_69B0E0(a2);
  *(a1 + 80) = result;
  return result;
}

void sub_57905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_5790DC(uint64_t a1, void *a2)
{
  if (a2[1266] == a2[1267])
  {
    v6 = *(a1 + 8);
    v7 = sub_4D1F60(a2);
    sub_2B7A20(v6, *(v7 + 32) & 0xFFFFFFFFFFFFFFLL, &v11);
    sub_31BF20(&v11, v14);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_4D1DC0(a2);
    sub_69CB14(a2);
    memset(v14, 0, sizeof(v14));
    v5 = v4[1];
    if (v5 != *v4)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }
  }

  v8 = sub_4D2140(a2);
  sub_2F4C8(v14, 0, &v11, 0.0, v8 / 1000000000.0);
  v9 = v11;
  v10 = *(__p - 1);
  *(a1 + 2032) = *(__p - 12);
  *(a1 + 2040) = v10;
  if (v9)
  {
    __p = v9;
    operator delete(v9);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }
}

void sub_579250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_579290(uint64_t a1, uint64_t a2)
{
  v135[0] = a2;
  if ((*(a1 + 1864) & 1) == 0)
  {
    return *(a1 + 1992);
  }

  v4 = sub_2B51D8(*(a1 + 8), a2);
  v5 = (v4 - *v4);
  if (*v5 < 0x2Fu || (v6 = v5[23]) == 0 || *(v4 + v6) != 47)
  {
    v7 = sub_2B51D8(*(a1 + 8), a2);
    v8 = (v7 - *v7);
    if (*v8 < 0x2Fu)
    {
      return *(a1 + 1992);
    }

    v9 = v8[23];
    if (!v9)
    {
      return *(a1 + 1992);
    }

    v10 = *(v7 + v9);
    v11 = v10 > 0x2D;
    v12 = (1 << v10) & 0x208040000000;
    if (v11 || v12 == 0)
    {
      return *(a1 + 1992);
    }
  }

  sub_2B79D0(*(a1 + 8), a2, v118);
  v133 = sub_31A76C(v118);
  v134 = v18;
  if (__p)
  {
    v120 = __p;
    operator delete(__p);
  }

  v19 = *(a1 + 1984);
  v20 = *(a1 + 1992);
  if (v19 != v20)
  {
    while ((sub_49AD8(v19, &v133, v14, v15, v16, v17) & 1) == 0)
    {
      v19 += 48;
      if (v19 == v20)
      {
        v19 = v20;
        break;
      }
    }

    v20 = *(a1 + 1992);
  }

  if (v19 == v20)
  {
    v131 = 0;
    v132 = 0;
    sub_586680(v118);
    *&v102 = sub_57B2E8(a1, v135, &v133);
    sub_574864(v118, v135, &v102);
    v115 = 0;
    v116 = 0;
    v117 = 0;
    if (v130)
    {
      do
      {
        v102 = *(v121 + *v126);
        v21 = v124;
        if (v124 >= v125)
        {
          v23 = __src;
          v24 = v124 - __src;
          v25 = (v124 - __src) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            sub_1794();
          }

          v27 = v125 - __src;
          if ((v125 - __src) >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = (4 * v25);
          v30 = &v29[-((v124 - __src) >> 2)];
          *v29 = *v126;
          v22 = (v29 + 1);
          memcpy(v30, v23, v24);
          __src = v30;
          v124 = v22;
          v125 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v124 = *v126;
          v22 = v21 + 4;
        }

        v124 = v22;
        v31 = v126;
        *(v128 + *v126) = -1;
        v32 = --v130;
        if (v130)
        {
          v33 = &v31[2 * v32];
          *v31 = *v33;
          v31[1] = *(v33 + 1);
          v34 = v126;
          *(v128 + *v126) = 0;
          v35 = v130;
          if (v130 >= 2)
          {
            v36 = 0;
            v37 = 0;
            v38 = 1;
            do
            {
              v39 = v36 + 5;
              if (v39 >= v35)
              {
                v40 = v35;
              }

              else
              {
                v40 = v39;
              }

              if (v39 <= v38)
              {
                break;
              }

              v41 = v37;
              v42 = v34[2 * v37 + 1];
              v43 = &v34[2 * v38 + 1];
              v37 = -1;
              v44 = v42;
              do
              {
                v46 = *v43;
                v43 += 2;
                v45 = v46;
                if (v46 < v44)
                {
                  v44 = v45;
                  v37 = v38;
                }

                ++v38;
              }

              while (v38 < v40);
              if (v37 >= v35)
              {
                break;
              }

              v47 = 2 * v37;
              v48 = &v34[v47];
              v49 = 16 * v41;
              v50 = v34 + v49;
              v51 = *v48;
              *v48 = *v50;
              *v50 = v51;
              v52 = *(v48 + 1);
              *(v48 + 1) = v42;
              *(v50 + 1) = v52;
              v34 = v126;
              v53 = *(v126 + v47 * 8);
              v54 = v128;
              v55 = *(v126 + v49);
              LODWORD(v49) = *(v128 + v53);
              *(v128 + v53) = *(v128 + v55);
              v54[v55] = v49;
              v36 = 4 * v37;
              v38 = (4 * v37) | 1;
              v35 = v130;
            }

            while (v38 < v130);
          }
        }

        v127 -= 16;
        v112 = sub_2B4EDC(*(a1 + 8), v102, 0);
        v56 = sub_57B518(a1, &v112, &v133, v118);
        __dst = sub_2B4EDC(*(a1 + 8), v102, 1);
        v57 = sub_57B518(a1, &__dst, &v133, v118);
        sub_57B698(a1, &v102, v56 ^ 1, v57 ^ 1, &v115);
        v58 = sub_2B51D8(*(a1 + 8), v102);
        v59 = (v58 - *v58);
        if (*v59 >= 9u && (v60 = v59[4]) != 0)
        {
          v61 = *(v58 + v60);
        }

        else
        {
          v61 = 0;
        }

        v62 = sub_2B51D8(*(a1 + 8), v102);
        v63 = (v62 - *v62);
        if (*v63 >= 0x2Fu)
        {
          v64 = v63[23];
          if (v64)
          {
            v65 = *(v62 + v64);
            v11 = v65 > 0x2D;
            v66 = (1 << v65) & 0x208040000000;
            if (!v11 && v66 != 0)
            {
              v132 += v61;
            }
          }
        }

        v131 += v61;
      }

      while (v130);
      v69 = v116;
      if (v115 != v116)
      {
        v70 = (v115 + 12);
        if (v115 + 12 != v116)
        {
          v71 = *v115;
          while (1)
          {
            v72 = v71;
            v71 = *v70;
            if (__PAIR64__(*(v70 - 2), v72) == *v70 && *(v70 - 1) == v70[2])
            {
              break;
            }

            v70 += 3;
            if (v70 == v116)
            {
              goto LABEL_76;
            }
          }

          v73 = v70 - 3;
          if (v70 - 3 != v116)
          {
            while (1)
            {
              v70 += 3;
              if (v70 == v69)
              {
                break;
              }

              if (*v73 != *v70 || v73[1] != v70[1] || v73[2] != v70[2])
              {
                v74 = v70[2];
                *(v73 + 3) = *v70;
                v73 += 3;
                v73[2] = v74;
              }
            }

            v69 = v73 + 3;
            if (v73 + 3 != v116)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }
      }
    }

    else
    {
      v69 = 0;
    }

LABEL_76:
    if (v69 != v116)
    {
LABEL_77:
      v116 = v69;
    }

LABEL_78:
    sub_49AD4(&v112, &v115, *(a1 + 1800));
    v75 = v112;
    if (v113 - v112 != 24 || *v112 == *(v112 + 1))
    {
      v19 = *(a1 + 1992);
      if (v112)
      {
LABEL_146:
        v95 = v113;
        v96 = v75;
        if (v113 != v75)
        {
          v97 = v113;
          do
          {
            v99 = *(v97 - 3);
            v97 -= 24;
            v98 = v99;
            if (v99)
            {
              *(v95 - 2) = v98;
              operator delete(v98);
            }

            v95 = v97;
          }

          while (v97 != v75);
          v96 = v112;
        }

        v113 = v75;
        operator delete(v96);
      }

LABEL_153:
      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      if (__src)
      {
        v124 = __src;
        operator delete(__src);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      sub_360988(v118);
      return v19;
    }

    v76 = *(a1 + 1992);
    if (v76 >= *(a1 + 2000))
    {
      v79 = sub_5853E0((a1 + 1984), &v112, &v132, &v131);
    }

    else
    {
      v78 = v131;
      v77 = v132;
      v76[1] = 0;
      v76[2] = 0;
      *v76 = 0;
      *&v102 = v76;
      BYTE8(v102) = 0;
      if (v113 != v112)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      v76[3] = v114;
      v76[4] = v77;
      v76[5] = v78;
      v79 = (v76 + 6);
      *(a1 + 1992) = v76 + 6;
    }

    *(a1 + 1992) = v79;
    if (!sub_7E7E4(2u))
    {
LABEL_107:
      if (!sub_7E7E4(2u))
      {
        goto LABEL_126;
      }

      sub_19594F8(&v102);
      sub_4A5C(&v102, "polygon vertices number: ", 25);
      std::ostream::operator<<();
      if ((v111 & 0x10) != 0)
      {
        v85 = v110;
        if (v110 < v107)
        {
          v110 = v107;
          v85 = v107;
        }

        v86 = &v106;
      }

      else
      {
        if ((v111 & 8) == 0)
        {
          v84 = 0;
          v101 = 0;
LABEL_121:
          *(&__dst + v84) = 0;
          sub_7E854(&__dst, 2u);
          if (v101 < 0)
          {
            operator delete(__dst);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          std::locale::~locale(&v103);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_126:
          if (!sub_7E7E4(2u))
          {
            goto LABEL_145;
          }

          sub_19594F8(&v102);
          v88 = sub_4A5C(&v102, " parking segment length: ", 25);
          v89 = sub_70FBC(v88, v132);
          v90 = sub_4A5C(v89, " drivable segment length: ", 26);
          sub_70FBC(v90, v131);
          if ((v111 & 0x10) != 0)
          {
            v92 = v110;
            if (v110 < v107)
            {
              v110 = v107;
              v92 = v107;
            }

            v93 = &v106;
          }

          else
          {
            if ((v111 & 8) == 0)
            {
              v91 = 0;
              v101 = 0;
LABEL_140:
              *(&__dst + v91) = 0;
              sub_7E854(&__dst, 2u);
              if (v101 < 0)
              {
                operator delete(__dst);
              }

              if (v109 < 0)
              {
                operator delete(v108);
              }

              std::locale::~locale(&v103);
              std::ostream::~ostream();
              std::ios::~ios();
LABEL_145:
              v19 = *(a1 + 1992) - 48;
              v75 = v112;
              if (v112)
              {
                goto LABEL_146;
              }

              goto LABEL_153;
            }

            v93 = v104;
            v92 = v105;
          }

          v94 = *v93;
          v91 = v92 - *v93;
          if (v91 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v91 >= 0x17)
          {
            operator new();
          }

          v101 = v92 - *v93;
          if (v91)
          {
            memmove(&__dst, v94, v91);
          }

          goto LABEL_140;
        }

        v86 = v104;
        v85 = v105;
      }

      v87 = *v86;
      v84 = v85 - *v86;
      if (v84 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v84 >= 0x17)
      {
        operator new();
      }

      v101 = v85 - *v86;
      if (v84)
      {
        memmove(&__dst, v87, v84);
      }

      goto LABEL_121;
    }

    sub_19594F8(&v102);
    sub_49B98(&v102, &v112);
    if ((v111 & 0x10) != 0)
    {
      v81 = v110;
      if (v110 < v107)
      {
        v110 = v107;
        v81 = v107;
      }

      v82 = &v106;
    }

    else
    {
      if ((v111 & 8) == 0)
      {
        v80 = 0;
        v101 = 0;
LABEL_102:
        *(&__dst + v80) = 0;
        sub_7E854(&__dst, 2u);
        if (v101 < 0)
        {
          operator delete(__dst);
        }

        if (v109 < 0)
        {
          operator delete(v108);
        }

        std::locale::~locale(&v103);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_107;
      }

      v82 = v104;
      v81 = v105;
    }

    v83 = *v82;
    v80 = v81 - *v82;
    if (v80 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v80 >= 0x17)
    {
      operator new();
    }

    v101 = v81 - *v82;
    if (v80)
    {
      memmove(&__dst, v83, v80);
    }

    goto LABEL_102;
  }

  return v19;
}

void sub_57A058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58)
{
  *(v59 + 8) = v60;
  sub_35390(&a16);
  *(v58 + 1992) = v59;
  sub_34BE0(&a49);
  if (__p)
  {
    a54 = __p;
    operator delete(__p);
  }

  sub_584EC4(&a56);
  _Unwind_Resume(a1);
}

void sub_57A13C(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 1721) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 == 4 || v7 == 1)
    {
      *(a4 + 64) = 1;
      v26 = 4;
      v9 = *(a4 + 48);
      if (v9 >= *(a4 + 56))
      {
        v12 = sub_584F38((a4 + 40), a1 + 88, &v26);
      }

      else
      {
        *v9 = *(a1 + 88);
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        v10 = *(a1 + 104);
        v11 = *(a1 + 112);
        v22 = v9 + 16;
        v23 = 0;
        if (v11 != v10)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v9 + 40) = *(a1 + 128);
        *(v9 + 48) = 0x7FFFFFFF00000004;
        *(v9 + 56) = 0x7FFFFFFFFFFFFFFFLL;
        v12 = v9 + 64;
        *(a4 + 48) = v9 + 64;
      }

      *(a4 + 48) = v12;
      *(v12 - 12) = *(a1 + 1780) + a2;
    }

    else
    {
      v13 = 1722;
      if (!*(a1 + 80))
      {
        v13 = 1723;
      }

      if (*(a1 + 32) != *(a1 + 40) || (*(a1 + v13)) && *(a1 + 1992) != a3)
      {
        sub_4B6858(&v22, a3, 8);
        if (a3[4] >= *(a1 + 1808) && a3[5] >= *(a1 + 1816))
        {
          if (*(a1 + 136) == 1)
          {
            *(a4 + 64) = 3;
            v26 = 2;
            sub_577870((a4 + 40), &v22, &v26);
          }

          else
          {
            *(a4 + 64) = 2;
            v26 = 4;
            sub_577870((a4 + 40), &v22, &v26);
            if (a3[4] >= *(a1 + 1824))
            {
              v21 = 1780;
              if (a3[5] < *(a1 + 1832))
              {
                v21 = 1776;
              }
            }

            else
            {
              v21 = 1776;
            }

            *(*(a4 + 48) - 12) = *(a1 + v21) + a2;
            v26 = 5;
            sub_577870((a4 + 40), &v22, &v26);
          }

          sub_575474(&v22);
        }

        else
        {
          v15 = __p;
          if (__p)
          {
            v16 = v25;
            v17 = __p;
            if (v25 != __p)
            {
              v18 = v25;
              do
              {
                v20 = *(v18 - 3);
                v18 -= 24;
                v19 = v20;
                if (v20)
                {
                  *(v16 - 2) = v19;
                  operator delete(v19);
                }

                v16 = v18;
              }

              while (v18 != v15);
              v17 = __p;
            }

            v25 = v15;
            operator delete(v17);
          }
        }
      }
    }
  }
}

void sub_57A408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57A41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v5 + 24) = v4;
  sub_35390(va);
  *(v3 + 48) = v5;
  _Unwind_Resume(a1);
}

void sub_57A460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_35390(va);
  *(v3 + 48) = v4;
  _Unwind_Resume(a1);
}

void sub_57A478(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 1760) == 1)
  {
    sub_57E458(a1, a2, a3);
    v5 = a3[3];
    v6 = a3[4];
    if (v5 >= v6)
    {
      v10 = a3[2];
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v10) >> 3) + 1;
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
LABEL_32:
        sub_1794();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_33;
      }

      v14 = 8 * ((v5 - v10) >> 3);
      v15 = *(a1 + 1768);
      *v14 = *(a1 + 16);
      *(v14 + 8) = *(a1 + 24);
      *(v14 + 16) = v15;
      v9 = v14 + 24;
      v16 = (v14 - (v5 - v10));
      memcpy(v16, v10, v5 - v10);
      a3[2] = v16;
      a3[3] = v9;
      a3[4] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      v7 = *(a1 + 1768);
      v8 = *(a1 + 16);
      *(v5 + 8) = *(a1 + 24);
      *v5 = v8;
      *(v5 + 16) = v7;
      v9 = v5 + 24;
    }

    a3[3] = v9;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    if (v17 != v18)
    {
      while (1)
      {
        while (1)
        {
          v21 = a3[4];
          if (v9 >= v21)
          {
            break;
          }

          v19 = *(a1 + 1768);
          v20 = *v17;
          *(v9 + 8) = *(v17 + 2);
          *v9 = v20;
          *(v9 + 16) = v19;
          v9 += 24;
          a3[3] = v9;
          v17 = (v17 + 12);
          if (v17 == v18)
          {
            return;
          }
        }

        v22 = a3[2];
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v22) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_32;
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        v26 = v25 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v24;
        if (v26)
        {
          break;
        }

        v27 = v9;
        v28 = 8 * ((v9 - v22) >> 3);
        v29 = *(a1 + 1768);
        v30 = *(v17 + 2);
        *v28 = *v17;
        *(v28 + 8) = v30;
        *(v28 + 16) = v29;
        v9 = v28 + 24;
        v31 = 24 * v23 - (v27 - v22);
        memcpy((v28 - (v27 - v22)), v22, v27 - v22);
        a3[2] = v31;
        a3[3] = v9;
        a3[4] = 0;
        if (v22)
        {
          operator delete(v22);
        }

        a3[3] = v9;
        v17 = (v17 + 12);
        if (v17 == v18)
        {
          return;
        }
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_33:
      sub_1808();
    }
  }
}

void sub_57A720(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 1721) == 1 && *(a1 + 1865) == 1 && !*(a3 + 64))
  {
    *(a3 + 64) = 4;
    v20.n128_u64[0] = sub_3514C((a1 + 16), (a1 + 1856));
    v20.n128_u64[1] = v6;
    sub_4B6970(&v16, &v20, 10);
    v15 = 4;
    v7 = *(a3 + 48);
    if (v7 >= *(a3 + 56))
    {
      v8 = sub_584F38((a3 + 40), &v16, &v15);
    }

    else
    {
      *v7 = v16;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      v21 = v7 + 16;
      v22 = 0;
      if (v18 != __p)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      *(v7 + 40) = v19;
      *(v7 + 48) = 0x7FFFFFFF00000004;
      *(v7 + 56) = 0x7FFFFFFFFFFFFFFFLL;
      v8 = v7 + 64;
      *(a3 + 48) = v7 + 64;
    }

    *(a3 + 48) = v8;
    *(v8 - 12) = *(a1 + 1784) + a2;
    v9 = __p;
    if (__p)
    {
      v10 = v18;
      v11 = __p;
      if (v18 != __p)
      {
        v12 = v18;
        do
        {
          v14 = *(v12 - 3);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v9);
        v11 = __p;
      }

      v18 = v9;
      operator delete(v11);
    }
  }
}

void sub_57A8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  *(v7 + 24) = v6;
  sub_35390(va1);
  *(v5 + 48) = v7;
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57A930(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 1672) == 1 && *(a1 + 1866) == 1)
  {
    v6 = a3[5];
    v7 = a3[6];
    v8 = a3 + 5;
    if (v6 == v7)
    {
LABEL_6:
      if (*(a2 + 1104) != *(a2 + 1112) && !sub_69D160(a2))
      {
        sub_3AE3C((a1 + 2032), *(a1 + 1880), *(a1 + 1896), &v28);
        sub_4B68E4(v25, &v28, 8);
        v24 = 7;
        v9 = a3[6];
        if (v9 >= a3[7])
        {
          v10 = sub_584F38(v8, v25, &v24);
        }

        else
        {
          sub_5850C8(a3[6], v25, &v24);
          v10 = v9 + 64;
          a3[6] = v9 + 64;
        }

        a3[6] = v10;
        v11 = *(*(a2 + 1112) - 1608);
        if (v11 >= *(a1 + 1880))
        {
          v11 = *(a1 + 1880);
        }

        *(v10 - 8) = v11;
        v12 = __p;
        if (__p)
        {
          v13 = v27;
          v14 = __p;
          if (v27 != __p)
          {
            v15 = v27;
            do
            {
              v17 = *(v15 - 3);
              v15 -= 24;
              v16 = v17;
              if (v17)
              {
                *(v13 - 2) = v16;
                operator delete(v16);
              }

              v13 = v15;
            }

            while (v15 != v12);
            v14 = __p;
          }

          v27 = v12;
          operator delete(v14);
        }

        v18 = v28;
        if (v28)
        {
          v19 = v29;
          v20 = v28;
          if (v29 != v28)
          {
            v21 = v29;
            do
            {
              v23 = *(v21 - 3);
              v21 -= 24;
              v22 = v23;
              if (v23)
              {
                *(v19 - 2) = v22;
                operator delete(v22);
              }

              v19 = v21;
            }

            while (v21 != v18);
            v20 = v28;
          }

          v29 = v18;
          operator delete(v20);
        }
      }
    }

    else
    {
      while (*(v6 + 48) != 5)
      {
        v6 += 64;
        if (v6 == v7)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

void sub_57AAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_575474(va);
  sub_34BE0(va1);
  _Unwind_Resume(a1);
}

void sub_57AB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_57AB24(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 1672) == 1)
  {
    v3 = *(a2 + 11268);
    if (v3 == 3)
    {
      if (*(result + 1870) != 1)
      {
        return result;
      }
    }

    else if (v3 == 2)
    {
      if (*(result + 1871) != 1)
      {
        return result;
      }
    }

    else if (v3 != 1 || *(result + 1872) != 1)
    {
      return result;
    }

    v4 = result;
    result = sub_69B010(a2);
    if ((result & 1) == 0 && *(a2 + 1104) != *(a2 + 1112))
    {
      result = sub_69D190(a2, 2);
      if (result)
      {
        v7 = *(a3 + 40);
        v8 = *(a3 + 48);
        if (v7 == v8)
        {
LABEL_16:
          result = sub_57DC78(v4, a2);
          if (result)
          {
            v9 = a2;
            v10 = *(a2 + 1112);
            while (v10 != *(a2 + 1104))
            {
              v11 = v10 - 2616;
              v12 = *(v10 - 2456);
              v13 = v12 == 39 || v12 == 16;
              v10 = v11;
              if (v13)
              {
                v14 = *(v11 + 24);
                if (v14 > *(v11 + 40))
                {
                  while (1)
                  {
                    v15 = sub_4D1F50(v9, --v14);
                    v16 = (*v15 - **v15);
                    if (*v16 >= 0x2Fu)
                    {
                      v17 = v16[23];
                      if (v17)
                      {
                        v18 = *(*v15 + v17);
                        v19 = v18 > 0x2F;
                        v20 = (1 << v18) & 0xA08040000000;
                        if (!v19 && v20 != 0)
                        {
                          break;
                        }
                      }
                    }

                    v9 = a2;
                    if (v14 <= *(v11 + 40))
                    {
                      goto LABEL_35;
                    }
                  }

                  v22 = sub_579290(v4, *(v15 + 8) | (*(v15 + 18) << 32));
                  v9 = a2;
                  if (*(v4 + 1992) != v22)
                  {
                    sub_4B6858(v29, v22, 8);
                    LODWORD(v26[0]) = 8;
                    sub_577870((a3 + 40), v29, v26);
                    sub_575474(v29);
                    v9 = a2;
                  }
                }

LABEL_35:
                v23 = *(a3 + 48);
                result = v4;
                if (*(a3 + 40) == v23 || *(v23 - 16) != 8)
                {
                  result = sub_57E108(v4, v9);
                  v27 = result;
                  v28 = v24;
                  if (result != -1 || result <= 0xFFFFFFFEFFFFFFFFLL)
                  {
                    sub_3AE3C(&v27, *(v4 + 1880), *(v4 + 1896), v26);
                    sub_4B68E4(v29, v26, 8);
                    v25 = 8;
                    sub_577870((a3 + 40), v29, &v25);
                    sub_575474(v29);
                    return sub_34BE0(v26);
                  }
                }

                return result;
              }
            }
          }
        }

        else
        {
          while (*(v7 + 48) != 5)
          {
            v7 += 64;
            if (v7 == v8)
            {
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_57ADC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_57ADD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_575474(va1);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_57ADF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_57AE04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 1672) == 1)
  {
    v4 = *(a2 + 11268);
    if (v4 == 3)
    {
      if (*(a1 + 1867) != 1)
      {
        return;
      }
    }

    else if (v4 == 2)
    {
      if (*(a1 + 1868) != 1)
      {
        return;
      }
    }

    else if (v4 != 1 || *(a1 + 1869) != 1)
    {
      return;
    }

    if ((sub_69B010(a2) & 1) == 0 && *(a2 + 1104) != *(a2 + 1112) && (!sub_69D160(a2) || sub_69D190(a2, 2)) && sub_57DC78(a1, a2))
    {
      v29 = *(a1 + 2032);
      v30 = *(a1 + 2040);
      if (sub_69D160(a2))
      {
        v7 = sub_57E108(a1, a2);
        if (v7 < 0xFFFFFFFF00000000 || v7 != 0xFFFFFFFFLL)
        {
          v29 = v7;
          v30 = v8;
        }
      }

      sub_3AE3C(&v29, *(a1 + 1888), *(a1 + 1896), &v27);
      sub_4B68E4(v24, &v27, 8);
      v23 = 6;
      v9 = a3[6];
      if (v9 >= a3[7])
      {
        v10 = sub_584F38(a3 + 5, v24, &v23);
      }

      else
      {
        sub_5850C8(a3[6], v24, &v23);
        v10 = v9 + 64;
        a3[6] = v9 + 64;
      }

      a3[6] = v10;
      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          v14 = v26;
          do
          {
            v16 = *(v14 - 3);
            v14 -= 24;
            v15 = v16;
            if (v16)
            {
              *(v12 - 2) = v15;
              operator delete(v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v17 = v27;
      if (v27)
      {
        v18 = v28;
        v19 = v27;
        if (v28 != v27)
        {
          v20 = v28;
          do
          {
            v22 = *(v20 - 3);
            v20 -= 24;
            v21 = v22;
            if (v22)
            {
              *(v18 - 2) = v21;
              operator delete(v21);
            }

            v18 = v20;
          }

          while (v20 != v17);
          v19 = v27;
        }

        v28 = v17;
        operator delete(v19);
      }
    }
  }
}

void sub_57B044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_575474(va);
  sub_34BE0(va1);
  _Unwind_Resume(a1);
}

void sub_57B06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_57B080(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 1848);
  if ((*(a3 + 64) & 0xFFFFFFFE) != 2)
  {
    goto LABEL_23;
  }

  sub_4D1E00(a2, &v29);
  v7 = 0;
  while (1)
  {
    sub_4D1E24(a2, v26);
    v10 = v30;
    v12 = v27;
    v11 = v28;
    if (!v30)
    {
      break;
    }

    v13 = v31;
    v14 = sub_4D1DC0(v30);
    v15 = v14;
    if (v12)
    {
      v16 = sub_4D1DC0(v12);
      if (v13 >= v15 || v11 >= v16)
      {
        if (v13 < v15 == v11 < v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v18 = sub_4D1F50(v10, v13);
        if (v18 == sub_4D1F50(v12, v11))
        {
          goto LABEL_21;
        }
      }
    }

    else if (v13 >= v14)
    {
      goto LABEL_21;
    }

LABEL_19:
    v19 = sub_4D1F50(v30, v31 - 1);
    v25 = *(v19 + 32) | (*(v19 + 36) << 32);
    if ((sub_577084(a1, &v25) & 1) == 0 && !sub_57D5B4(a1, &v25, a3))
    {
      goto LABEL_21;
    }

    v8 = sub_4D1DC0(a2);
    sub_4D1E00(a2, v26);
    v7 += sub_4D23F8(a2, v31 + v8 + ~v28, v9);
    --v31;
  }

  if (v27 && v11 < sub_4D1DC0(v27))
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v5 <= *(a1 + 1840) + v7)
  {
    v5 = *(a1 + 1840) + v7;
  }

LABEL_23:
  if (*a3 <= v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = *a3;
  }

  result = sub_4D1DB8(a2);
  if (result >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = result;
  }

  *(a3 + 8) = v22;
  v23 = *(a3 + 40);
  for (i = *(a3 + 48); v23 != i; v23 += 64)
  {
    if (*(v23 + 48) == 5 && *(v23 + 56) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v23 + 56) = v22;
    }
  }

  return result;
}

void sub_57B290(uint64_t a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_57884C(a1, v3);
      v3 += 1582;
    }

    while (v3 != v4);
  }
}

uint64_t sub_57B2E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_2B79D0(*(a1 + 8), *a2, v30);
  v4 = sub_31A76C(v30);
  v28 = v4;
  v29 = v5;
  v26 = sub_31AA0C(v30);
  v27 = v6;
  v33 = -1;
  v34 = 0x7FFFFFFF;
  v7 = v26 - v4;
  v8 = HIDWORD(v26) - HIDWORD(v4);
  v9 = v7 * v7 + v8 * v8;
  if (v9 == 0.0)
  {
    goto LABEL_5;
  }

  v10 = -v9;
  if (v9 > 0.0)
  {
    v10 = v7 * v7 + v8 * v8;
  }

  HIDWORD(v11) = 1018167296;
  if (v10 < 2.22044605e-16)
  {
LABEL_5:
    v12 = 0.0;
  }

  else
  {
    LODWORD(v10) = *a3;
    LODWORD(v11) = *(a3 + 4);
    v12 = (v7 * (*&v10 - v4) + v8 * (v11 - HIDWORD(v4))) / v9;
  }

  v13 = 1.0;
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  v14 = v12 < 0.0;
  v15 = 0.0;
  if (!v14)
  {
    v15 = v13;
  }

  v33 = sub_6EFC0(&v28, &v26, v15);
  v34 = v16;
  sub_314EC(a3, &v33, v17);
  v19 = v18 * 100.0;
  if (v19 >= 0.0)
  {
    v20 = v19;
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v21 = (v19 + v19) + 1;
  }

  else
  {
    v20 = v19;
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v21 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_16:
  if (v20 >= 9.22337204e18)
  {
    v23 = 0x7FFFFFFFFFFFFFFELL;
    v24 = __p;
    if (!__p)
    {
      return v23;
    }

    goto LABEL_26;
  }

  if (v19 >= 0.0)
  {
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_25;
    }

    v22 = (v19 + v19) + 1;
  }

  else
  {
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_25;
    }

    v22 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v19 = (v22 >> 1);
LABEL_25:
  v23 = v19;
  v24 = __p;
  if (__p)
  {
LABEL_26:
    v32 = v24;
    operator delete(v24);
  }

  return v23;
}

void sub_57B4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_57B518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_31C398(*(a1 + 8), *a2, &__p);
  v7 = __p;
  v8 = v21;
  if (__p != v21)
  {
    do
    {
      v9 = sub_577084(a1, v7++);
      if (v7 == v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }
    }

    while ((v10 & 1) != 0);
    v7 = __p;
    if (!v9)
    {
      v17 = 0;
      if (__p)
      {
        goto LABEL_25;
      }

      return v17;
    }

    v8 = v21;
  }

  if (v7 == v8)
  {
    v17 = 1;
    if (!v7)
    {
      return v17;
    }

    goto LABEL_25;
  }

  do
  {
    v11 = sub_2B51D8(*(a1 + 8), *v7);
    v12 = (v11 - *v11);
    v13 = *v12;
    if (v13 < 0x9B)
    {
      if (v13 < 0x39)
      {
        goto LABEL_21;
      }
    }

    else if (v12[77] && (*(v11 + v12[77]) & 3) != 0)
    {
      goto LABEL_21;
    }

    v14 = v12[28];
    if (!v14 || ((v15 = *(v11 + v14), (v15 & 0x23) == 0) ? (v16 = (v15 & 7) == 4) : (v16 = 1), !v16))
    {
LABEL_21:
      v19 = sub_57B2E8(a1, v7, a3);
      sub_576E10(a4, v7, &v19);
    }

    ++v7;
  }

  while (v7 != v8);
  v17 = 1;
  v7 = __p;
  if (!__p)
  {
    return v17;
  }

LABEL_25:
  v21 = v7;
  operator delete(v7);
  return v17;
}

void sub_57B674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_57B698(uint64_t a1, unint64_t *a2, int a3, int a4, uint64_t a5)
{
  v10 = sub_2B51D8(*(a1 + 8), *a2);
  v11 = (v10 - *v10);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && ((v13 = *(v10 + v12), v14 = v13 > 0x2D, v15 = (1 << v13) & 0x208040000000, !v14) ? (v16 = v15 == 0) : (v16 = 1), !v16) || (v17 = sub_2B51D8(*(a1 + 8), *a2), v18 = (v17 - *v17), *v18 >= 0x2Fu) && (v19 = v18[23]) != 0 && *(v17 + v19) == 47)
  {
    v20 = sub_2B51D8(*(a1 + 8), *a2);
    v21 = (v20 - *v20);
    if (*v21 >= 9u && (v22 = v21[4]) != 0)
    {
      v23 = *(v20 + v22);
    }

    else
    {
      v23 = 0;
    }

    sub_2B79D0(*(a1 + 8), *a2, &v28);
    sub_31BF20(&v28, &v31);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (a3 & a4)
    {
      goto LABEL_38;
    }

    v24 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 2);
    if (v24 < 2 || v23 == 0)
    {
      goto LABEL_38;
    }

    if (v32 != v31)
    {
      if (v24 < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v27 = 0;
    v26 = 0;
    if (a3)
    {
      sub_57D7C0(a1, &v31, v23, 1, &v28);
      v26 = v28;
      v27 = __p;
      if (a4)
      {
        goto LABEL_30;
      }
    }

    else if (a4)
    {
LABEL_30:
      sub_57D7C0(a1, &v31, v23, 0, &v28);
      if (v26)
      {
        operator delete(v26);
      }

      v26 = v28;
      v27 = __p;
      if (v28 == __p)
      {
        goto LABEL_36;
      }

LABEL_33:
      if (*(a1 + 1736) == 1)
      {
        sub_4798C(a5, *(a5 + 8), v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 2));
      }

      else
      {
        sub_376F0(a5, v26);
        sub_376F0(a5, (v27 - 12));
      }

LABEL_36:
      if (v26)
      {
        operator delete(v26);
      }

LABEL_38:
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      return;
    }

    if (v26 == v27)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }
}

void sub_57B934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_57B984(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = -1;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v3 = *(a2 + 24);
  *(a1 + 88) = 0;
  v4 = a1 + 40;
  *(a1 + 72) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v6 = a2[50];
  v5 = a2[51];
  v27 = a1 + 16;
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 112) = *(a2 + 106);
  *(a1 + 120) = a3;
  v7 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v7;
  v8 = a2[39];
  v26 = a2[40];
  if (v8 == v26)
  {
    return a1;
  }

  while (2)
  {
    v9 = *(v8 + 72);
    v10 = *(v8 + 80);
    while (v9 != v10)
    {
      v13 = v4;
      if (*v9 != 4)
      {
        if (*v9 != 3)
        {
          goto LABEL_10;
        }

        v13 = v27;
      }

      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      if (v14 < v15)
      {
        v11 = *v8;
        *(v14 + 8) = *(v8 + 8);
        *v14 = v11;
        v12 = v14 + 12;
      }

      else
      {
        v16 = *v13;
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2);
        v18 = v17 + 1;
        if (v17 + 1 > 0x1555555555555555)
        {
          sub_1794();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 2);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0xAAAAAAAAAAAAAAALL)
        {
          v20 = 0x1555555555555555;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (v20 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v21 = 4 * ((v14 - *v13) >> 2);
        v22 = *v8;
        *(v21 + 8) = *(v8 + 8);
        *v21 = v22;
        v12 = 12 * v17 + 12;
        v23 = 12 * v17 - (v14 - v16);
        memcpy((v21 - (v14 - v16)), v16, v14 - v16);
        *v13 = v23;
        *(v13 + 8) = v12;
        *(v13 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      *(v13 + 8) = v12;
LABEL_10:
      ++v9;
    }

    v8 += 176;
    if (v8 != v26)
    {
      continue;
    }

    return a1;
  }
}

void sub_57BC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, ...)
{
  va_start(va, a9);
  v9[12] = v10;
  sub_35390(va);
  v13 = *v11;
  if (*v11)
  {
    v9[6] = v13;
    operator delete(v13);
    v14 = *a9;
    if (!*a9)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v14 = *a9;
    if (!*a9)
    {
      goto LABEL_3;
    }
  }

  v9[3] = v14;
  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_57BDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_57D4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_57D5B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  sub_2B79D0(*(a1 + 8), *a2, v28);
  if (*(v3 + 16) == *(v3 + 24))
  {
    goto LABEL_30;
  }

  if (__p == v30)
  {
    goto LABEL_30;
  }

  v4 = sub_31A76C(v28);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (v7 == v8)
  {
    goto LABEL_30;
  }

  v9 = 0;
  do
  {
    v10 = v7[1];
    v11 = (*v7 + 12);
    if (*v7 != v10 && v11 != v10)
    {
      do
      {
        v13 = *(v11 - 2);
        v14 = v11[1];
        if (v13 < HIDWORD(v4) != v14 < HIDWORD(v4))
        {
          LODWORD(v5) = *v11;
          LODWORD(v6) = *(v11 - 3);
          v6 = *&v6;
          v5 = (HIDWORD(v4) - v13) / (v14 - v13) * (*&v5 - v6) + v6;
          if (v5 < v4)
          {
            v9 ^= 1u;
          }
        }

        v11 += 3;
      }

      while (v11 != v10);
    }

    v7 += 3;
  }

  while (v7 != v8);
  if ((v9 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_33;
  }

  v15 = sub_31AA0C(v28);
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  if (v18 == v19)
  {
LABEL_30:
    v20 = 0;
    v26 = __p;
    if (!__p)
    {
      return v20 & 1;
    }

    goto LABEL_34;
  }

  v20 = 0;
  do
  {
    v21 = v18[1];
    v22 = (*v18 + 12);
    if (*v18 != v21 && v22 != v21)
    {
      do
      {
        v24 = *(v22 - 2);
        v25 = v22[1];
        if (v24 < HIDWORD(v15) != v25 < HIDWORD(v15))
        {
          LODWORD(v16) = *v22;
          LODWORD(v17) = *(v22 - 3);
          v17 = *&v17;
          v16 = (HIDWORD(v15) - v24) / (v25 - v24) * (*&v16 - v17) + v17;
          if (v16 < v15)
          {
            v20 ^= 1u;
          }
        }

        v22 += 3;
      }

      while (v22 != v21);
    }

    v18 += 3;
  }

  while (v18 != v19);
LABEL_33:
  v26 = __p;
  if (__p)
  {
LABEL_34:
    v30 = v26;
    operator delete(v26);
  }

  return v20 & 1;
}

void sub_57D7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_57D7C0(uint64_t a1@<X0>, void ***a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = *(a1 + 1728);
  if (v6 >= a3)
  {
    if (a4)
    {
      v11 = a2[1];
      v46[0] = *(v11 - 12);
      v12 = *(v11 - 1);
    }

    else
    {
      v13 = *a2;
      v46[0] = **a2;
      v12 = *(v13 + 2);
    }

    LODWORD(v46[1]) = v12;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    operator new();
  }

  if (v6)
  {
    v7 = v6 / a3;
    if (!a4)
    {
      v7 = 1.0 - v7;
    }

    v53 = 0;
    v9 = *a2;
    v10 = a2[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 2) > 1)
    {
      v39 = v7;
      v52 = 0;
      *v46 = 0u;
      *__p = 0u;
      v48 = 0u;
      v51 = 0;
      v15 = (v9 + 12);
      v16 = v9 == v10 || v15 == v10;
      v17 = v16;
      v18 = 0.0;
      if (!v16)
      {
        v43 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
        v41 = vdupq_n_s64(0xC066800000000000);
        v42 = vdupq_n_s64(0x4076800000000000uLL);
        v40 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
        HIDWORD(v19) = 1096306543;
        do
        {
          LODWORD(v19) = *(v15 - 2);
          v20 = exp(3.14159265 - *&v19 * 6.28318531 / 4294967300.0);
          *&v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795;
          LODWORD(v22) = *(v15 - 3);
          HIDWORD(v22) = *v15;
          v44 = v22;
          v23 = *&v21 * 0.0174532925;
          LODWORD(v21) = *(v15 + 1);
          v24 = exp(3.14159265 - v21 * 6.28318531 / 4294967300.0);
          v25 = atan((v24 - 1.0 / v24) * 0.5) * 57.2957795 * 0.0174532925;
          v26.i64[0] = v44;
          v26.i64[1] = HIDWORD(v44);
          v27 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v26), v42), v43), v41), v40);
          v45 = vsubq_f64(v27, vdupq_laneq_s64(v27, 1)).f64[0];
          v28 = sin((v23 - v25) * 0.5);
          v29 = v28 * v28;
          v30 = cos(v23);
          v31 = v30 * cos(v25);
          v32 = sin(0.5 * v45);
          v33 = atan2(sqrt(v32 * v32 * v31 + v29), sqrt(1.0 - (v32 * v32 * v31 + v29)));
          v19 = (v33 + v33) * 6372797.56;
          v18 = v18 + v19;
          v15 = (v15 + 12);
        }

        while (v15 != v10);
      }

      v34 = v39 * v18;
      v50 = v39 * v18;
      v49[0] = &v51;
      v49[1] = v46;
      v49[2] = &v53;
      v49[3] = &v52;
      v49[4] = &v50;
      if ((v17 & 1) == 0)
      {
        do
        {
          sub_316F0(v49, v9, v9 + 3, v34);
          v35 = v9 + 3;
          v9 = (v9 + 12);
        }

        while (v35 != v10);
      }
    }

    else
    {
      sub_313A4(v46, a2, a2);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    if (a4)
    {
      v36 = __p[1];
    }

    else
    {
      v36 = v46[0];
    }

    v37 = &v48;
    if (!a4)
    {
      v37 = &v46[1];
    }

    v38 = *v37;
    if (v38 != v36)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v38 - v36) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }

    if (__p[1])
    {
      *&v48 = __p[1];
      operator delete(__p[1]);
    }

    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v14 = a2[1];
    if (v14 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_57DC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_57DC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_57DC78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 11272);
  if (v4 == 3)
  {
    if (*(a1 + 1977))
    {
LABEL_61:
      v25 = 1;
      return v25 & 1;
    }
  }

  else if (v4 == 4 && (*(a1 + 1976) & 1) != 0)
  {
    goto LABEL_61;
  }

  v5 = sub_4D1F60(a2);
  v6 = *v5;
  v7 = (*v5 - **v5);
  v8 = *v7;
  if (v8 >= 0x2F && v7[23])
  {
    v9 = v6[v7[23]];
    v10 = v9 > 0x1A;
    v11 = (1 << v9) & 0x4810001;
    if (!v10 && v11 != 0)
    {
      if (*(v5 + 38))
      {
        if (v8 < 0x39)
        {
          goto LABEL_48;
        }

        v13 = v7[28];
        if (!v13)
        {
          goto LABEL_48;
        }

        v14 = *&v6[v13];
        if ((v14 & 2) != 0)
        {
          goto LABEL_22;
        }

LABEL_20:
        if ((v14 & 7) != 4 && (v14 & 0x23) != 0x20)
        {
          goto LABEL_48;
        }

        goto LABEL_22;
      }

      if (v8 < 0x39)
      {
        goto LABEL_48;
      }

      v15 = v7[28];
      if (!v15)
      {
        goto LABEL_48;
      }

      v14 = *&v6[v15];
      if ((v14 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_22:
  if ((*(a2 + 11268) - 1) > 1 || (v16 = *(a2 + 7496), *(a2 + 7488) == v16) || !*(a1 + 1960) || sub_138B0((a1 + 1936), (v16 - 24)))
  {
    if (*(a1 + 1900) != 1)
    {
      goto LABEL_53;
    }

    sub_64AEEC(&v54, 2);
    sub_11A9248(&v54, (a2 + 11400), 2, &__p);
    v17 = __p;
    v18 = v53;
    v55[0] = (a2 + 11088);
    v55[1] = a1;
    if (__p != v53)
    {
      while (!sub_5863D4(v55, v17))
      {
        v17 += 44;
        if (v17 == v18)
        {
          v17 = __p;
          v18 = v53;
          goto LABEL_31;
        }
      }

      v17 = __p;
      if (__p)
      {
        v21 = v53;
        if (__p == v53)
        {
          v22 = __p;
        }

        else
        {
          do
          {
            v23 = *(v21 - 3);
            if (v23)
            {
              operator delete(v23);
            }

            v24 = *(v21 - 13);
            if (v24)
            {
              *(v21 - 12) = v24;
              operator delete(v24);
            }

            v21 -= 44;
          }

          while (v21 != v17);
          v22 = __p;
        }

        goto LABEL_52;
      }

      goto LABEL_53;
    }

LABEL_31:
    if (v17 == v18)
    {
      v22 = v17;
      if (v17)
      {
LABEL_52:
        v53 = v17;
        operator delete(v22);
      }

LABEL_53:
      v26 = *(a2 + 11375);
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(a2 + 11360);
      }

      if (!v26)
      {
        goto LABEL_61;
      }

      v27 = sub_E67C38(a2 + 11088);
      v28 = v27;
      v29 = *(a1 + 2008);
      v30 = *(a1 + 2016);
      v31 = v29;
      if (v29 != v30)
      {
        v31 = *(a1 + 2008);
        while (*v31 != v27)
        {
          v31 += 16;
          if (v31 == v30)
          {
            goto LABEL_64;
          }
        }
      }

      if (v31 != v30)
      {
        v25 = v31[8];
        return v25 & 1;
      }

LABEL_64:
      v32 = *(a1 + 1912);
      v33 = *(a1 + 1920);
      if (v32 == v33)
      {
LABEL_97:
        v25 = 1;
        v43 = *(a1 + 2024);
        if (v30 >= v43)
        {
LABEL_88:
          v44 = v30 - v29;
          v45 = (v30 - v29) >> 4;
          v46 = v45 + 1;
          if ((v45 + 1) >> 60)
          {
            sub_1794();
          }

          v47 = v43 - v29;
          if (v47 >> 3 > v46)
          {
            v46 = v47 >> 3;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF0)
          {
            v48 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            if (!(v48 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v50 = 16 * v45;
          *v50 = v28;
          *(v50 + 8) = v25;
          v49 = 16 * v45 + 16;
          memcpy(0, v29, v44);
          *(a1 + 2008) = 0;
          *(a1 + 2016) = v49;
          *(a1 + 2024) = 0;
          if (v29)
          {
            operator delete(v29);
          }

          goto LABEL_101;
        }
      }

      else
      {
        v34 = *(a2 + 11375);
        if ((v34 & 0x8000000000000000) != 0)
        {
          v38 = *(a2 + 11352);
          v39 = *(a2 + 11360);
          while (1)
          {
            v40 = *(v32 + 23);
            v41 = v40 >= 0 ? *(v32 + 23) : *(v32 + 8);
            if (v39 >= v41)
            {
              v42 = v40 >= 0 ? v32 : *v32;
              if (!memcmp(v38, v42, v41))
              {
                break;
              }
            }

            v32 += 24;
            if (v32 == v33)
            {
              goto LABEL_97;
            }
          }
        }

        else
        {
          while (1)
          {
            v35 = *(v32 + 23);
            v36 = v35 >= 0 ? *(v32 + 23) : *(v32 + 8);
            if (v36 <= v34)
            {
              v37 = v35 >= 0 ? v32 : *v32;
              if (!memcmp((a2 + 11352), v37, v36))
              {
                break;
              }
            }

            v32 += 24;
            if (v32 == v33)
            {
              goto LABEL_97;
            }
          }
        }

        v25 = 0;
        v43 = *(a1 + 2024);
        if (v30 >= v43)
        {
          goto LABEL_88;
        }
      }

      *v30 = v28;
      v30[8] = v25;
      v49 = (v30 + 16);
LABEL_101:
      *(a1 + 2016) = v49;
      return v25 & 1;
    }

    if (v17)
    {
      do
      {
        v19 = *(v18 - 3);
        if (v19)
        {
          operator delete(v19);
        }

        v20 = *(v18 - 13);
        if (v20)
        {
          *(v18 - 12) = v20;
          operator delete(v20);
        }

        v18 -= 44;
      }

      while (v18 != v17);
      v53 = v17;
      operator delete(__p);
    }
  }

LABEL_48:
  v25 = 0;
  return v25 & 1;
}

unint64_t sub_57E108(uint64_t a1, void *a2)
{
  v2 = a2[139];
  do
  {
    if (v2 == a2[138])
    {
      if (!sub_7E7E4(1u))
      {
        return -1;
      }

      sub_19594F8(&v18);
      sub_4A5C(&v18, "Could not resolve transport mode transition coordinate.", 55);
      if ((v28 & 0x10) != 0)
      {
        v14 = v27;
        if (v27 < v24)
        {
          v27 = v24;
          v14 = v24;
        }

        v15 = v23;
        v10 = v14 - v23;
        if (v14 - v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if ((v28 & 8) == 0)
        {
          v10 = 0;
          v17 = 0;
LABEL_22:
          *(&v16 + v10) = 0;
          sub_7E854(&v16, 1u);
          if (v17 < 0)
          {
            operator delete(v16);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }

          std::locale::~locale(&v20);
          std::ostream::~ostream();
          std::ios::~ios();
          return -1;
        }

        v15 = v21;
        v10 = v22 - v21;
        if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_30:
          sub_3244();
        }
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      v17 = v10;
      if (v10)
      {
        memmove(&v16, v15, v10);
      }

      goto LABEL_22;
    }

    v3 = v2 - 2616;
    v4 = *(v2 - 2232);
    v2 -= 2616;
  }

  while (v4 != 5);
  v5 = *(v3 + 24);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (a2[1266] == a2[1267])
  {
    v12 = sub_4D1F50(a2, v7);
    sub_2B7A20(*(a1 + 8), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v18);
    result = sub_31AA0C(&v18);
    if (__p)
    {
      v20.__locale_ = __p;
      v13 = result;
      operator delete(__p);
      return v13;
    }
  }

  else
  {
    sub_69CB14(a2);
    return *(*(v8 + 8) - 12);
  }

  return result;
}

void sub_57E40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_57E458(uint64_t a1, void *a2, void *a3)
{
  if (a2[138] != a2[139] && sub_4D1DC0(a2))
  {
    if (*(a2[139] - 1608) >= *(a1 + 1768))
    {
      v6 = *(a1 + 1768);
    }

    else
    {
      v6 = *(a2[139] - 1608);
    }

    v7 = *(a1 + 8);
    v8 = sub_4D1F60(a2);
    sub_2B7A20(v7, *(v8 + 32) & 0xFFFFFFFFFFFFFFLL, &v23);
    sub_31BF20(&v23, v26);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v9 = sub_4D2140(a2);
    sub_2F4C8(v26, 0, &v23, 0.0, v9 / 1000000000.0);
    v10 = v23;
    if (v23 != __p)
    {
      v11 = (__p - 12);
      v12 = a3[3];
      v13 = a3[4];
      if (v12 >= v13)
      {
        v16 = a3[2];
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 3) + 1;
        if (v17 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v20 = 8 * ((v12 - v16) >> 3);
        v21 = *v11;
        *(v20 + 8) = *(__p - 1);
        *v20 = v21;
        *(v20 + 16) = v6;
        v15 = v20 + 24;
        v22 = (v20 - (v12 - v16));
        memcpy(v22, v16, v12 - v16);
        a3[2] = v22;
        a3[3] = v15;
        a3[4] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        v14 = *v11;
        *(v12 + 8) = *(__p - 1);
        *v12 = v14;
        *(v12 + 16) = v6;
        v15 = v12 + 24;
      }

      a3[3] = v15;
      v10 = v23;
    }

    if (v10)
    {
      __p = v10;
      operator delete(v10);
    }

    if (v26[0])
    {
      v26[1] = v26[0];
      operator delete(v26[0]);
    }
  }
}

void sub_57E678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void sub_57E6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v6 = sub_3AF6B4(a2);
  *(a1 + 16) = -1;
  *(a1 + 8) = v6;
  *(a1 + 24) = 0x7FFFFFFF;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = -1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_527724(a1 + 144, a3);
  HIBYTE(v9[2]) = 18;
  strcpy(v9, "ArrivalInfoBuilder");
  memset(v8, 0, sizeof(v8));
  v7 = sub_3AEC94(a2, v9, v8);
  sub_41D820(v7, &v10);
  operator new();
}

void sub_57E950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_5C010(v28 - 88);
  sub_1A104(&a19);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_528AB4((v27 + 16));
  sub_584AC0(v27);
  _Unwind_Resume(a1);
}

uint64_t sub_57E9D0(uint64_t result, void *a2)
{
  if (*(result + 1720) == 1)
  {
    v2 = result;
    if (*(result + 1596) == 1)
    {
      result = sub_4D1DC0(a2);
      if (result)
      {
        result = sub_69AE3C(a2);
        if (*result != -1 || *(result + 4) != -1)
        {
          sub_57EBC4(v2, a2);
          sub_57F260(v2, a2);
          v5 = sub_4D1F60(a2);
          v6 = sub_57F428(v2, *(v5 + 32) | ((*(v5 + 36) & 0x1FFFFFFF) << 32));
          if (sub_394BD0() && *sub_73F54(a2) != 0x7FFFFFFF)
          {
            v8 = *(v2 + 1792);
            v9 = sub_73F54(a2);
            v7 = sub_5733D0(v9, v8);
          }

          else
          {
            v7 = 0;
          }

          sub_5802D4(v2, v7, v6, (a2 + 1281));
          sub_580610(v2, a2, a2 + 1281);
          sub_580A18(v2, v7, (a2 + 1281));
          sub_580C28(v2, a2, a2 + 1281);
          sub_580E1C(v2, a2, (a2 + 1281));
          sub_5810FC(v2, a2, a2 + 1281);
          sub_581378(v2, a2);
          if (*(v2 + 1752) == 0x7FFFFFFFFFFFFFFFLL || *(sub_69AE3C(a2) + 184) != 2)
          {
            v10 = (v2 + 1744);
          }

          else
          {
            v10 = (v2 + 1752);
          }

          v11 = *v10;
          v12 = a2[139];
          if (a2[138] != v12)
          {
            v13 = *(v12 - 1608);
            if (v13 < v11)
            {
              v11 = v13;
            }
          }

          a2[1281] = v11;

          return sub_581498(v2, a2, (a2 + 1281));
        }
      }
    }
  }

  return result;
}

BOOL sub_57EBC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_69AE3C(a2);
  if (sub_69B0E0(a2))
  {
    LOBYTE(v5) = 1;
    goto LABEL_36;
  }

  if (!*(a1 + 1280))
  {
    goto LABEL_35;
  }

  if ((sub_67AE78(a1 + 144) & 1) == 0)
  {
    v8 = *(a1 + 1280) - 1;
    v9 = *(a1 + 1272);
    v10 = (v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
    goto LABEL_10;
  }

  v6 = *(a1 + 1706);
  v7 = sub_4D1DB0(a2);
  if (v6 == 1)
  {
    LODWORD(v8) = *v7;
    if (v8 != 0xFFFF)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *v7;
    LOWORD(v8) = -1;
    if (v11 != 0xFFFF)
    {
      if (*(a1 + 1360) == 2)
      {
        LODWORD(v8) = *v7;
      }

      else
      {
        LOWORD(v8) = v11 - 1;
      }
    }

    LODWORD(v8) = v8;
    if (v8 != 0xFFFF)
    {
LABEL_7:
      if (*(a1 + 1280) > v8)
      {
        v9 = *(a1 + 1272);
        v10 = (v8 >> 3) & 0x1FF8;
LABEL_10:
        v5 = (*(v9 + v10) >> v8) & 1;
        goto LABEL_36;
      }

      if (sub_7E7E4(3u))
      {
        sub_19594F8(&__p[3]);
        v12 = sub_74700();
        sub_73F1C(v12);
        std::operator+<char>();
        if (SHIBYTE(__p[2]) >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v14 = HIBYTE(__p[2]);
        }

        else
        {
          v14 = __p[1];
        }

        sub_4A5C(&__p[3], v13, v14);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959680(&__p[3], __p);
        sub_7E854(__p, 3u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(&__p[3]);
        LOBYTE(v5) = 0;
        goto LABEL_36;
      }

LABEL_35:
      LOBYTE(v5) = 0;
      goto LABEL_36;
    }
  }

  if (!sub_7E7E4(3u))
  {
    goto LABEL_35;
  }

  sub_19594F8(&__p[3]);
  v15 = sub_74700();
  v16 = sub_73F1C(v15);
  if (*(v16 + 23) >= 0)
  {
    v17 = *(v16 + 23);
  }

  else
  {
    v17 = *(v16 + 8);
  }

  if (v17 + 63 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v17 + 63 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "ArrivalInfoBuilder encountered an invalid user waypoint index: ", 63);
  if (*(v16 + 23) >= 0)
  {
    v28 = v16;
  }

  else
  {
    v28 = *v16;
  }

  memmove(&__p[7] + 7, v28, v17);
  *(&__p[7] + v17 + 7) = 0;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v30 = HIBYTE(__p[2]);
  }

  else
  {
    v30 = __p[1];
  }

  sub_4A5C(&__p[3], v29, v30);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v41 & 0x10) != 0)
  {
    v32 = *(&v40 + 1);
    if (*(&v40 + 1) < v37)
    {
      *(&v40 + 1) = v37;
      v32 = v37;
    }

    v33 = &v36[1];
    goto LABEL_71;
  }

  if ((v41 & 8) != 0)
  {
    v33 = &__p[6];
    v32 = v36[0];
LABEL_71:
    v34 = *v33;
    v31 = v32 - *v33;
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v32 - *v33;
    if (v31)
    {
      memmove(__p, v34, v31);
    }

    goto LABEL_77;
  }

  v31 = 0;
  HIBYTE(__p[2]) = 0;
LABEL_77:
  *(__p + v31) = 0;
  sub_7E854(__p, 3u);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v40) < 0)
  {
    operator delete(v39[0]);
  }

  std::locale::~locale(&__p[5]);
  std::ostream::~ostream();
  std::ios::~ios();
  LOBYTE(v5) = 0;
LABEL_36:
  sub_581D9C(&__p[3], v4, v5);
  v18 = *(a1 + 32);
  *(a1 + 16) = __p[3];
  *(a1 + 24) = __p[4];
  if (v18)
  {
    *(a1 + 40) = v18;
    operator delete(v18);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  v19 = *(a1 + 56);
  *(a1 + 32) = *&__p[5];
  *(a1 + 48) = __p[7];
  memset(&__p[5], 0, 24);
  if (v19)
  {
    *(a1 + 64) = v19;
    operator delete(v19);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  v20 = (a1 + 104);
  v21 = *(a1 + 104);
  *(a1 + 56) = *v36;
  *(a1 + 72) = v37;
  v36[1] = 0;
  v37 = 0;
  v36[0] = 0;
  *(a1 + 80) = v38;
  *(a1 + 88) = *v39;
  if (v21)
  {
    v22 = *(a1 + 112);
    v23 = v21;
    if (v22 != v21)
    {
      v24 = *(a1 + 112);
      do
      {
        v26 = *(v24 - 3);
        v24 -= 24;
        v25 = v26;
        if (v26)
        {
          *(v22 - 2) = v25;
          operator delete(v25);
        }

        v22 = v24;
      }

      while (v24 != v21);
      v23 = *v20;
    }

    *(a1 + 112) = v21;
    operator delete(v23);
    *v20 = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = v40;
  *(a1 + 120) = v41;
  v41 = 0;
  v40 = 0uLL;
  *(a1 + 128) = v42;
  *(a1 + 136) = v43;
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (__p[5])
  {
    __p[6] = __p[5];
    operator delete(__p[5]);
  }

  result = sub_69B0E0(a2);
  *(a1 + 80) = result;
  return result;
}

void sub_57F1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_57F260(uint64_t a1, void *a2)
{
  if (a2[1266] == a2[1267])
  {
    v6 = *(a1 + 8);
    v7 = sub_4D1F60(a2);
    sub_2B7A20(v6, (((*(v7 + 36) & 0x20000000) << 19) | (*(v7 + 36) << 32) | *(v7 + 32)) ^ 0x1000000000000, &v11);
    sub_31BF20(&v11, v14);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_4D1DC0(a2);
    sub_69E8D8(a2);
    memset(v14, 0, sizeof(v14));
    v5 = v4[1];
    if (v5 != *v4)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }
  }

  v8 = sub_4D2140(a2);
  sub_2F4C8(v14, 0, &v11, 0.0, v8 / 1000000000.0);
  v9 = v11;
  v10 = *(__p - 1);
  *(a1 + 2032) = *(__p - 12);
  *(a1 + 2040) = v10;
  if (v9)
  {
    __p = v9;
    operator delete(v9);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }
}

void sub_57F3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_57F428(uint64_t a1, uint64_t a2)
{
  v135[0] = a2;
  if ((*(a1 + 1864) & 1) == 0)
  {
    return *(a1 + 1992);
  }

  v4 = sub_2B51D8(*(a1 + 8), a2);
  v5 = (v4 - *v4);
  if (*v5 < 0x2Fu || (v6 = v5[23]) == 0 || *(v4 + v6) != 47)
  {
    v7 = sub_2B51D8(*(a1 + 8), a2);
    v8 = (v7 - *v7);
    if (*v8 < 0x2Fu)
    {
      return *(a1 + 1992);
    }

    v9 = v8[23];
    if (!v9)
    {
      return *(a1 + 1992);
    }

    v10 = *(v7 + v9);
    v11 = v10 > 0x2D;
    v12 = (1 << v10) & 0x208040000000;
    if (v11 || v12 == 0)
    {
      return *(a1 + 1992);
    }
  }

  sub_2B79D0(*(a1 + 8), a2, v118);
  v133 = sub_31A76C(v118);
  v134 = v18;
  if (__p)
  {
    v120 = __p;
    operator delete(__p);
  }

  v19 = *(a1 + 1984);
  v20 = *(a1 + 1992);
  if (v19 != v20)
  {
    while ((sub_49AD8(v19, &v133, v14, v15, v16, v17) & 1) == 0)
    {
      v19 += 48;
      if (v19 == v20)
      {
        v19 = v20;
        break;
      }
    }

    v20 = *(a1 + 1992);
  }

  if (v19 == v20)
  {
    v131 = 0;
    v132 = 0;
    sub_586810(v118);
    *&v102 = sub_581700(a1, v135, &v133);
    sub_574864(v118, v135, &v102);
    v115 = 0;
    v116 = 0;
    v117 = 0;
    if (v130)
    {
      do
      {
        v102 = *(v121 + *v126);
        v21 = v124;
        if (v124 >= v125)
        {
          v23 = __src;
          v24 = v124 - __src;
          v25 = (v124 - __src) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            sub_1794();
          }

          v27 = v125 - __src;
          if ((v125 - __src) >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = (4 * v25);
          v30 = &v29[-((v124 - __src) >> 2)];
          *v29 = *v126;
          v22 = (v29 + 1);
          memcpy(v30, v23, v24);
          __src = v30;
          v124 = v22;
          v125 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v124 = *v126;
          v22 = v21 + 4;
        }

        v124 = v22;
        v31 = v126;
        *(v128 + *v126) = -1;
        v32 = --v130;
        if (v130)
        {
          v33 = &v31[2 * v32];
          *v31 = *v33;
          v31[1] = *(v33 + 1);
          v34 = v126;
          *(v128 + *v126) = 0;
          v35 = v130;
          if (v130 >= 2)
          {
            v36 = 0;
            v37 = 0;
            v38 = 1;
            do
            {
              v39 = v36 + 5;
              if (v39 >= v35)
              {
                v40 = v35;
              }

              else
              {
                v40 = v39;
              }

              if (v39 <= v38)
              {
                break;
              }

              v41 = v37;
              v42 = v34[2 * v37 + 1];
              v43 = &v34[2 * v38 + 1];
              v37 = -1;
              v44 = v42;
              do
              {
                v46 = *v43;
                v43 += 2;
                v45 = v46;
                if (v46 < v44)
                {
                  v44 = v45;
                  v37 = v38;
                }

                ++v38;
              }

              while (v38 < v40);
              if (v37 >= v35)
              {
                break;
              }

              v47 = 2 * v37;
              v48 = &v34[v47];
              v49 = 16 * v41;
              v50 = v34 + v49;
              v51 = *v48;
              *v48 = *v50;
              *v50 = v51;
              v52 = *(v48 + 1);
              *(v48 + 1) = v42;
              *(v50 + 1) = v52;
              v34 = v126;
              v53 = *(v126 + v47 * 8);
              v54 = v128;
              v55 = *(v126 + v49);
              LODWORD(v49) = *(v128 + v53);
              *(v128 + v53) = *(v128 + v55);
              v54[v55] = v49;
              v36 = 4 * v37;
              v38 = (4 * v37) | 1;
              v35 = v130;
            }

            while (v38 < v130);
          }
        }

        v127 -= 16;
        v112 = sub_2B4EDC(*(a1 + 8), v102, 0);
        v56 = sub_581930(a1, &v112, &v133, v118);
        __dst = sub_2B4EDC(*(a1 + 8), v102, 1);
        v57 = sub_581930(a1, &__dst, &v133, v118);
        sub_581AB0(a1, &v102, v56 ^ 1, v57 ^ 1, &v115);
        v58 = sub_2B51D8(*(a1 + 8), v102);
        v59 = (v58 - *v58);
        if (*v59 >= 9u && (v60 = v59[4]) != 0)
        {
          v61 = *(v58 + v60);
        }

        else
        {
          v61 = 0;
        }

        v62 = sub_2B51D8(*(a1 + 8), v102);
        v63 = (v62 - *v62);
        if (*v63 >= 0x2Fu)
        {
          v64 = v63[23];
          if (v64)
          {
            v65 = *(v62 + v64);
            v11 = v65 > 0x2D;
            v66 = (1 << v65) & 0x208040000000;
            if (!v11 && v66 != 0)
            {
              v132 += v61;
            }
          }
        }

        v131 += v61;
      }

      while (v130);
      v69 = v116;
      if (v115 != v116)
      {
        v70 = (v115 + 12);
        if (v115 + 12 != v116)
        {
          v71 = *v115;
          while (1)
          {
            v72 = v71;
            v71 = *v70;
            if (__PAIR64__(*(v70 - 2), v72) == *v70 && *(v70 - 1) == v70[2])
            {
              break;
            }

            v70 += 3;
            if (v70 == v116)
            {
              goto LABEL_76;
            }
          }

          v73 = v70 - 3;
          if (v70 - 3 != v116)
          {
            while (1)
            {
              v70 += 3;
              if (v70 == v69)
              {
                break;
              }

              if (*v73 != *v70 || v73[1] != v70[1] || v73[2] != v70[2])
              {
                v74 = v70[2];
                *(v73 + 3) = *v70;
                v73 += 3;
                v73[2] = v74;
              }
            }

            v69 = v73 + 3;
            if (v73 + 3 != v116)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }
      }
    }

    else
    {
      v69 = 0;
    }

LABEL_76:
    if (v69 != v116)
    {
LABEL_77:
      v116 = v69;
    }

LABEL_78:
    sub_49AD4(&v112, &v115, *(a1 + 1800));
    v75 = v112;
    if (v113 - v112 != 24 || *v112 == *(v112 + 1))
    {
      v19 = *(a1 + 1992);
      if (v112)
      {
LABEL_146:
        v95 = v113;
        v96 = v75;
        if (v113 != v75)
        {
          v97 = v113;
          do
          {
            v99 = *(v97 - 3);
            v97 -= 24;
            v98 = v99;
            if (v99)
            {
              *(v95 - 2) = v98;
              operator delete(v98);
            }

            v95 = v97;
          }

          while (v97 != v75);
          v96 = v112;
        }

        v113 = v75;
        operator delete(v96);
      }

LABEL_153:
      if (v115)
      {
        v116 = v115;
        operator delete(v115);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      if (__src)
      {
        v124 = __src;
        operator delete(__src);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      sub_360988(v118);
      return v19;
    }

    v76 = *(a1 + 1992);
    if (v76 >= *(a1 + 2000))
    {
      v79 = sub_585698((a1 + 1984), &v112, &v132, &v131);
    }

    else
    {
      v78 = v131;
      v77 = v132;
      v76[1] = 0;
      v76[2] = 0;
      *v76 = 0;
      *&v102 = v76;
      BYTE8(v102) = 0;
      if (v113 != v112)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v113 - v112) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      v76[3] = v114;
      v76[4] = v77;
      v76[5] = v78;
      v79 = (v76 + 6);
      *(a1 + 1992) = v76 + 6;
    }

    *(a1 + 1992) = v79;
    if (!sub_7E7E4(2u))
    {
LABEL_107:
      if (!sub_7E7E4(2u))
      {
        goto LABEL_126;
      }

      sub_19594F8(&v102);
      sub_4A5C(&v102, "polygon vertices number: ", 25);
      std::ostream::operator<<();
      if ((v111 & 0x10) != 0)
      {
        v85 = v110;
        if (v110 < v107)
        {
          v110 = v107;
          v85 = v107;
        }

        v86 = &v106;
      }

      else
      {
        if ((v111 & 8) == 0)
        {
          v84 = 0;
          v101 = 0;
LABEL_121:
          *(&__dst + v84) = 0;
          sub_7E854(&__dst, 2u);
          if (v101 < 0)
          {
            operator delete(__dst);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          std::locale::~locale(&v103);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_126:
          if (!sub_7E7E4(2u))
          {
            goto LABEL_145;
          }

          sub_19594F8(&v102);
          v88 = sub_4A5C(&v102, " parking segment length: ", 25);
          v89 = sub_70FBC(v88, v132);
          v90 = sub_4A5C(v89, " drivable segment length: ", 26);
          sub_70FBC(v90, v131);
          if ((v111 & 0x10) != 0)
          {
            v92 = v110;
            if (v110 < v107)
            {
              v110 = v107;
              v92 = v107;
            }

            v93 = &v106;
          }

          else
          {
            if ((v111 & 8) == 0)
            {
              v91 = 0;
              v101 = 0;
LABEL_140:
              *(&__dst + v91) = 0;
              sub_7E854(&__dst, 2u);
              if (v101 < 0)
              {
                operator delete(__dst);
              }

              if (v109 < 0)
              {
                operator delete(v108);
              }

              std::locale::~locale(&v103);
              std::ostream::~ostream();
              std::ios::~ios();
LABEL_145:
              v19 = *(a1 + 1992) - 48;
              v75 = v112;
              if (v112)
              {
                goto LABEL_146;
              }

              goto LABEL_153;
            }

            v93 = v104;
            v92 = v105;
          }

          v94 = *v93;
          v91 = v92 - *v93;
          if (v91 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v91 >= 0x17)
          {
            operator new();
          }

          v101 = v92 - *v93;
          if (v91)
          {
            memmove(&__dst, v94, v91);
          }

          goto LABEL_140;
        }

        v86 = v104;
        v85 = v105;
      }

      v87 = *v86;
      v84 = v85 - *v86;
      if (v84 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v84 >= 0x17)
      {
        operator new();
      }

      v101 = v85 - *v86;
      if (v84)
      {
        memmove(&__dst, v87, v84);
      }

      goto LABEL_121;
    }

    sub_19594F8(&v102);
    sub_49B98(&v102, &v112);
    if ((v111 & 0x10) != 0)
    {
      v81 = v110;
      if (v110 < v107)
      {
        v110 = v107;
        v81 = v107;
      }

      v82 = &v106;
    }

    else
    {
      if ((v111 & 8) == 0)
      {
        v80 = 0;
        v101 = 0;
LABEL_102:
        *(&__dst + v80) = 0;
        sub_7E854(&__dst, 2u);
        if (v101 < 0)
        {
          operator delete(__dst);
        }

        if (v109 < 0)
        {
          operator delete(v108);
        }

        std::locale::~locale(&v103);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_107;
      }

      v82 = v104;
      v81 = v105;
    }

    v83 = *v82;
    v80 = v81 - *v82;
    if (v80 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v80 >= 0x17)
    {
      operator new();
    }

    v101 = v81 - *v82;
    if (v80)
    {
      memmove(&__dst, v83, v80);
    }

    goto LABEL_102;
  }

  return v19;
}

void sub_5801F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58)
{
  *(v59 + 8) = v60;
  sub_35390(&a16);
  *(v58 + 1992) = v59;
  sub_34BE0(&a49);
  if (__p)
  {
    a54 = __p;
    operator delete(__p);
  }

  sub_584EC4(&a56);
  _Unwind_Resume(a1);
}

void sub_5802D4(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 1721) == 1)
  {
    v7 = *(a1 + 128);
    if (v7 == 4 || v7 == 1)
    {
      *(a4 + 64) = 1;
      v26 = 4;
      v9 = *(a4 + 48);
      if (v9 >= *(a4 + 56))
      {
        v12 = sub_584F38((a4 + 40), a1 + 88, &v26);
      }

      else
      {
        *v9 = *(a1 + 88);
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        v10 = *(a1 + 104);
        v11 = *(a1 + 112);
        v22 = v9 + 16;
        v23 = 0;
        if (v11 != v10)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3) < 0xAAAAAAAAAAAAAABLL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v9 + 40) = *(a1 + 128);
        *(v9 + 48) = 0x7FFFFFFF00000004;
        *(v9 + 56) = 0x7FFFFFFFFFFFFFFFLL;
        v12 = v9 + 64;
        *(a4 + 48) = v9 + 64;
      }

      *(a4 + 48) = v12;
      *(v12 - 12) = *(a1 + 1780) + a2;
    }

    else
    {
      v13 = 1722;
      if (!*(a1 + 80))
      {
        v13 = 1723;
      }

      if (*(a1 + 32) != *(a1 + 40) || (*(a1 + v13)) && *(a1 + 1992) != a3)
      {
        sub_4B6858(&v22, a3, 8);
        if (a3[4] >= *(a1 + 1808) && a3[5] >= *(a1 + 1816))
        {
          if (*(a1 + 136) == 1)
          {
            *(a4 + 64) = 3;
            v26 = 2;
            sub_577870((a4 + 40), &v22, &v26);
          }

          else
          {
            *(a4 + 64) = 2;
            v26 = 4;
            sub_577870((a4 + 40), &v22, &v26);
            if (a3[4] >= *(a1 + 1824))
            {
              v21 = 1780;
              if (a3[5] < *(a1 + 1832))
              {
                v21 = 1776;
              }
            }

            else
            {
              v21 = 1776;
            }

            *(*(a4 + 48) - 12) = *(a1 + v21) + a2;
            v26 = 5;
            sub_577870((a4 + 40), &v22, &v26);
          }

          sub_575474(&v22);
        }

        else
        {
          v15 = __p;
          if (__p)
          {
            v16 = v25;
            v17 = __p;
            if (v25 != __p)
            {
              v18 = v25;
              do
              {
                v20 = *(v18 - 3);
                v18 -= 24;
                v19 = v20;
                if (v20)
                {
                  *(v16 - 2) = v19;
                  operator delete(v19);
                }

                v16 = v18;
              }

              while (v18 != v15);
              v17 = __p;
            }

            v25 = v15;
            operator delete(v17);
          }
        }
      }
    }
  }
}

void sub_5805A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_5805B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_5805C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_5805DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v5 + 24) = v4;
  sub_35390(va);
  *(v3 + 48) = v5;
  _Unwind_Resume(a1);
}

void sub_5805F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_35390(va);
  *(v3 + 48) = v4;
  _Unwind_Resume(a1);
}

void sub_580610(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 1760) == 1)
  {
    sub_58408C(a1, a2, a3);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    if (v6 != v5)
    {
      v7 = a3[3];
      while (1)
      {
        while (1)
        {
          v10 = a3[4];
          if (v7 >= v10)
          {
            break;
          }

          v8 = *(a1 + 1768);
          v9 = *v6;
          *(v7 + 8) = *(v6 + 2);
          *v7 = v9;
          *(v7 + 16) = v8;
          v7 += 24;
          a3[3] = v7;
          v6 = (v6 + 12);
          if (v6 == v5)
          {
            return;
          }
        }

        v11 = a3[2];
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_52;
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        v15 = v14 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v13;
        if (v15)
        {
          break;
        }

        v16 = v7;
        v17 = 8 * ((v7 - v11) >> 3);
        v18 = *(a1 + 1768);
        v19 = *(v6 + 2);
        *v17 = *v6;
        *(v17 + 8) = v19;
        *(v17 + 16) = v18;
        v7 = v17 + 24;
        v20 = 24 * v12 - (v16 - v11);
        memcpy((v17 - (v16 - v11)), v11, v16 - v11);
        a3[2] = v20;
        a3[3] = v7;
        a3[4] = 0;
        if (v11)
        {
          operator delete(v11);
        }

        a3[3] = v7;
        v6 = (v6 + 12);
        if (v6 == v5)
        {
          return;
        }
      }

      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_53;
    }

    if (*(a1 + 16) != -1 || *(a1 + 20) != -1)
    {
      v21 = a3[3];
      v22 = a3[4];
      if (v21 >= v22)
      {
        v26 = a3[2];
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v26) >> 3) + 1;
        if (v27 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_52:
          sub_1794();
        }

        v28 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v26) >> 3);
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        if (v28 >= 0x555555555555555)
        {
          v29 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (v29 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_53;
        }

        v30 = 8 * ((v21 - v26) >> 3);
        v31 = *(a1 + 1768);
        *v30 = *(a1 + 16);
        *(v30 + 8) = *(a1 + 24);
        *(v30 + 16) = v31;
        v25 = v30 + 24;
        v32 = (v30 - (v21 - v26));
        memcpy(v32, v26, v21 - v26);
        a3[2] = v32;
        a3[3] = v25;
        a3[4] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        v23 = *(a1 + 1768);
        v24 = *(a1 + 16);
        *(v21 + 8) = *(a1 + 24);
        *v21 = v24;
        *(v21 + 16) = v23;
        v25 = v21 + 24;
      }

      a3[3] = v25;
    }

    v33 = *(a1 + 56);
    v34 = *(a1 + 64);
    if (v33 != v34)
    {
      v35 = a3[3];
      while (1)
      {
        while (1)
        {
          v38 = a3[4];
          if (v35 >= v38)
          {
            break;
          }

          v36 = *(a1 + 1768);
          v37 = *v33;
          *(v35 + 8) = *(v33 + 2);
          *v35 = v37;
          *(v35 + 16) = v36;
          v35 += 24;
          a3[3] = v35;
          v33 = (v33 + 12);
          if (v33 == v34)
          {
            return;
          }
        }

        v39 = a3[2];
        v40 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v39) >> 3);
        v41 = v40 + 1;
        if (v40 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_52;
        }

        v42 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v39) >> 3);
        if (2 * v42 > v41)
        {
          v41 = 2 * v42;
        }

        v43 = v42 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v41;
        if (v43)
        {
          break;
        }

        v44 = v35;
        v45 = 8 * ((v35 - v39) >> 3);
        v46 = *(a1 + 1768);
        v47 = *(v33 + 2);
        *v45 = *v33;
        *(v45 + 8) = v47;
        *(v45 + 16) = v46;
        v35 = v45 + 24;
        v48 = 24 * v40 - (v44 - v39);
        memcpy((v45 - (v44 - v39)), v39, v44 - v39);
        a3[2] = v48;
        a3[3] = v35;
        a3[4] = 0;
        if (v39)
        {
          operator delete(v39);
        }

        a3[3] = v35;
        v33 = (v33 + 12);
        if (v33 == v34)
        {
          return;
        }
      }

      if (v43 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_53:
      sub_1808();
    }
  }
}

void sub_580A18(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 1721) == 1 && *(a1 + 1865) == 1 && !*(a3 + 64))
  {
    *(a3 + 64) = 4;
    v20.n128_u64[0] = sub_3514C((a1 + 16), (a1 + 1856));
    v20.n128_u64[1] = v6;
    sub_4B6970(&v16, &v20, 10);
    v15 = 4;
    v7 = *(a3 + 48);
    if (v7 >= *(a3 + 56))
    {
      v8 = sub_584F38((a3 + 40), &v16, &v15);
    }

    else
    {
      *v7 = v16;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      v21 = v7 + 16;
      v22 = 0;
      if (v18 != __p)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      *(v7 + 40) = v19;
      *(v7 + 48) = 0x7FFFFFFF00000004;
      *(v7 + 56) = 0x7FFFFFFFFFFFFFFFLL;
      v8 = v7 + 64;
      *(a3 + 48) = v7 + 64;
    }

    *(a3 + 48) = v8;
    *(v8 - 12) = *(a1 + 1784) + a2;
    v9 = __p;
    if (__p)
    {
      v10 = v18;
      v11 = __p;
      if (v18 != __p)
      {
        v12 = v18;
        do
        {
          v14 = *(v12 - 3);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v10 - 2) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v9);
        v11 = __p;
      }

      v18 = v9;
      operator delete(v11);
    }
  }
}

void sub_580BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  *(v7 + 24) = v6;
  sub_35390(va1);
  *(v5 + 48) = v7;
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_580C28(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 1672) == 1 && *(a1 + 1866) == 1)
  {
    v6 = a3[5];
    v7 = a3[6];
    v8 = a3 + 5;
    if (v6 == v7)
    {
LABEL_6:
      if (*(a2 + 1104) != *(a2 + 1112) && !sub_69EAB4(a2))
      {
        sub_3AE3C((a1 + 2032), *(a1 + 1880), *(a1 + 1896), &v28);
        sub_4B68E4(v25, &v28, 8);
        v24 = 7;
        v9 = a3[6];
        if (v9 >= a3[7])
        {
          v10 = sub_584F38(v8, v25, &v24);
        }

        else
        {
          sub_5850C8(a3[6], v25, &v24);
          v10 = v9 + 64;
          a3[6] = v9 + 64;
        }

        a3[6] = v10;
        v11 = *(*(a2 + 1112) - 1608);
        if (v11 >= *(a1 + 1880))
        {
          v11 = *(a1 + 1880);
        }

        *(v10 - 8) = v11;
        v12 = __p;
        if (__p)
        {
          v13 = v27;
          v14 = __p;
          if (v27 != __p)
          {
            v15 = v27;
            do
            {
              v17 = *(v15 - 3);
              v15 -= 24;
              v16 = v17;
              if (v17)
              {
                *(v13 - 2) = v16;
                operator delete(v16);
              }

              v13 = v15;
            }

            while (v15 != v12);
            v14 = __p;
          }

          v27 = v12;
          operator delete(v14);
        }

        v18 = v28;
        if (v28)
        {
          v19 = v29;
          v20 = v28;
          if (v29 != v28)
          {
            v21 = v29;
            do
            {
              v23 = *(v21 - 3);
              v21 -= 24;
              v22 = v23;
              if (v23)
              {
                *(v19 - 2) = v22;
                operator delete(v22);
              }

              v19 = v21;
            }

            while (v21 != v18);
            v20 = v28;
          }

          v29 = v18;
          operator delete(v20);
        }
      }
    }

    else
    {
      while (*(v6 + 48) != 5)
      {
        v6 += 64;
        if (v6 == v7)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

void sub_580DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_575474(va);
  sub_34BE0(va1);
  _Unwind_Resume(a1);
}

void sub_580E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_580E1C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 1672) == 1)
  {
    v3 = *(a2 + 11268);
    if (v3 == 3)
    {
      if (*(result + 1870) != 1)
      {
        return result;
      }
    }

    else if (v3 == 2)
    {
      if (*(result + 1871) != 1)
      {
        return result;
      }
    }

    else if (v3 != 1 || *(result + 1872) != 1)
    {
      return result;
    }

    v4 = result;
    result = sub_69B010(a2);
    if ((result & 1) == 0 && *(a2 + 1104) != *(a2 + 1112))
    {
      result = sub_69EAE4(a2, 2);
      if (result)
      {
        v7 = *(a3 + 40);
        v8 = *(a3 + 48);
        if (v7 == v8)
        {
LABEL_16:
          result = sub_584308(v4, a2);
          if (result)
          {
            v9 = a2;
            v10 = *(a2 + 1112);
            while (v10 != *(a2 + 1104))
            {
              v11 = v10 - 2616;
              v12 = *(v10 - 2456);
              v13 = v12 == 39 || v12 == 16;
              v10 = v11;
              if (v13)
              {
                v14 = *(v11 + 24);
                if (v14 > *(v11 + 40))
                {
                  while (1)
                  {
                    v15 = sub_4D1F50(v9, --v14);
                    v16 = (*v15 - **v15);
                    if (*v16 >= 0x2Fu)
                    {
                      v17 = v16[23];
                      if (v17)
                      {
                        v18 = *(*v15 + v17);
                        v19 = v18 > 0x2F;
                        v20 = (1 << v18) & 0xA08040000000;
                        if (!v19 && v20 != 0)
                        {
                          break;
                        }
                      }
                    }

                    v9 = a2;
                    if (v14 <= *(v11 + 40))
                    {
                      goto LABEL_35;
                    }
                  }

                  v22 = sub_57F428(v4, *(v15 + 8) | ((*(v15 + 9) & 0x1FFFFFFF) << 32));
                  v9 = a2;
                  if (*(v4 + 1992) != v22)
                  {
                    sub_4B6858(v29, v22, 8);
                    LODWORD(v26[0]) = 8;
                    sub_577870((a3 + 40), v29, v26);
                    sub_575474(v29);
                    v9 = a2;
                  }
                }

LABEL_35:
                v23 = *(a3 + 48);
                result = v4;
                if (*(a3 + 40) == v23 || *(v23 - 16) != 8)
                {
                  result = sub_58475C(v4, v9);
                  v27 = result;
                  v28 = v24;
                  if (result != -1 || result <= 0xFFFFFFFEFFFFFFFFLL)
                  {
                    sub_3AE3C(&v27, *(v4 + 1880), *(v4 + 1896), v26);
                    sub_4B68E4(v29, v26, 8);
                    v25 = 8;
                    sub_577870((a3 + 40), v29, &v25);
                    sub_575474(v29);
                    return sub_34BE0(v26);
                  }
                }

                return result;
              }
            }
          }
        }

        else
        {
          while (*(v7 + 48) != 5)
          {
            v7 += 64;
            if (v7 == v8)
            {
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_5810B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_575474(va);
  _Unwind_Resume(a1);
}

void sub_5810CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_575474(va1);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_5810E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_5810FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 1672) == 1)
  {
    v4 = *(a2 + 11268);
    if (v4 == 3)
    {
      if (*(a1 + 1867) != 1)
      {
        return;
      }
    }

    else if (v4 == 2)
    {
      if (*(a1 + 1868) != 1)
      {
        return;
      }
    }

    else if (v4 != 1 || *(a1 + 1869) != 1)
    {
      return;
    }

    if ((sub_69B010(a2) & 1) == 0 && *(a2 + 1104) != *(a2 + 1112) && (!sub_69EAB4(a2) || sub_69EAE4(a2, 2)) && sub_584308(a1, a2))
    {
      v29 = *(a1 + 2032);
      v30 = *(a1 + 2040);
      if (sub_69EAB4(a2))
      {
        v7 = sub_58475C(a1, a2);
        if (v7 < 0xFFFFFFFF00000000 || v7 != 0xFFFFFFFFLL)
        {
          v29 = v7;
          v30 = v8;
        }
      }

      sub_3AE3C(&v29, *(a1 + 1888), *(a1 + 1896), &v27);
      sub_4B68E4(v24, &v27, 8);
      v23 = 6;
      v9 = a3[6];
      if (v9 >= a3[7])
      {
        v10 = sub_584F38(a3 + 5, v24, &v23);
      }

      else
      {
        sub_5850C8(a3[6], v24, &v23);
        v10 = v9 + 64;
        a3[6] = v9 + 64;
      }

      a3[6] = v10;
      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          v14 = v26;
          do
          {
            v16 = *(v14 - 3);
            v14 -= 24;
            v15 = v16;
            if (v16)
            {
              *(v12 - 2) = v15;
              operator delete(v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v17 = v27;
      if (v27)
      {
        v18 = v28;
        v19 = v27;
        if (v28 != v27)
        {
          v20 = v28;
          do
          {
            v22 = *(v20 - 3);
            v20 -= 24;
            v21 = v22;
            if (v22)
            {
              *(v18 - 2) = v21;
              operator delete(v21);
            }

            v18 = v20;
          }

          while (v20 != v17);
          v19 = v27;
        }

        v28 = v17;
        operator delete(v19);
      }
    }
  }
}

void sub_58133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_575474(va);
  sub_34BE0(va1);
  _Unwind_Resume(a1);
}

void sub_581364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_581378(unint64_t result, uint64_t a2)
{
  if (*(a2 + 10288) != *(a2 + 10296))
  {
    v12[9] = v2;
    v12[10] = v3;
    if ((*(a2 + 10312) & 0xFFFFFFFE) == 2 && *(a2 + 1104) != *(a2 + 1112))
    {
      v5 = result;
      result = sub_4D1DC0(a2);
      if (result)
      {
        v6 = 0x3795876FF3795877 * ((*(a2 + 1112) - *(a2 + 1104)) >> 3);
        if (v6 >= 1)
        {
          v7 = v6 & 0x7FFFFFFF;
          do
          {
            v8 = v7--;
            result = sub_578320((a2 + 1104), v7);
            v9 = result;
            v10 = *(result + 24);
            while (v10 > *(v9 + 40))
            {
              v11 = sub_4D1F50(a2, --v10);
              v12[0] = *(v11 + 32) | ((*(v11 + 36) & 0x1FFFFFFF) << 32);
              result = sub_577084(v5, v12);
              if ((result & 1) == 0)
              {
                return result;
              }
            }

            *(v9 + 2417) = 1;
          }

          while (v8 >= 2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_581498(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 1848);
  if ((*(a3 + 64) & 0xFFFFFFFE) != 2)
  {
    goto LABEL_23;
  }

  sub_4D1E00(a2, &v29);
  v7 = 0;
  while (1)
  {
    sub_4D1E24(a2, v26);
    v10 = v30;
    v12 = v27;
    v11 = v28;
    if (!v30)
    {
      break;
    }

    v13 = v31;
    v14 = sub_4D1DC0(v30);
    v15 = v14;
    if (v12)
    {
      v16 = sub_4D1DC0(v12);
      if (v13 >= v15 || v11 >= v16)
      {
        if (v13 < v15 == v11 < v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v18 = sub_4D1F50(v10, v13);
        if (v18 == sub_4D1F50(v12, v11))
        {
          goto LABEL_21;
        }
      }
    }

    else if (v13 >= v14)
    {
      goto LABEL_21;
    }

LABEL_19:
    v19 = sub_4D1F50(v30, v31 - 1);
    v25 = *(v19 + 32) | ((*(v19 + 36) & 0x1FFFFFFF) << 32);
    if ((sub_577084(a1, &v25) & 1) == 0 && !sub_5839C8(a1, &v25, a3))
    {
      goto LABEL_21;
    }

    v8 = sub_4D1DC0(a2);
    sub_4D1E00(a2, v26);
    v7 += sub_4D23F8(a2, v31 + v8 + ~v28, v9);
    --v31;
  }

  if (v27 && v11 < sub_4D1DC0(v27))
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v5 <= *(a1 + 1840) + v7)
  {
    v5 = *(a1 + 1840) + v7;
  }

LABEL_23:
  if (*a3 <= v5)
  {
    v20 = v5;
  }

  else
  {
    v20 = *a3;
  }

  result = sub_4D1DB8(a2);
  if (result >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = result;
  }

  *(a3 + 8) = v22;
  v23 = *(a3 + 40);
  for (i = *(a3 + 48); v23 != i; v23 += 64)
  {
    if (*(v23 + 48) == 5 && *(v23 + 56) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v23 + 56) = v22;
    }
  }

  return result;
}

void sub_5816A8(uint64_t a1)
{
  nullsub_1();
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 != v4)
  {
    do
    {
      sub_57E9D0(a1, v3);
      v3 += 1582;
    }

    while (v3 != v4);
  }
}

uint64_t sub_581700(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_2B79D0(*(a1 + 8), *a2, v30);
  v4 = sub_31A76C(v30);
  v28 = v4;
  v29 = v5;
  v26 = sub_31AA0C(v30);
  v27 = v6;
  v33 = -1;
  v34 = 0x7FFFFFFF;
  v7 = v26 - v4;
  v8 = HIDWORD(v26) - HIDWORD(v4);
  v9 = v7 * v7 + v8 * v8;
  if (v9 == 0.0)
  {
    goto LABEL_5;
  }

  v10 = -v9;
  if (v9 > 0.0)
  {
    v10 = v7 * v7 + v8 * v8;
  }

  HIDWORD(v11) = 1018167296;
  if (v10 < 2.22044605e-16)
  {
LABEL_5:
    v12 = 0.0;
  }

  else
  {
    LODWORD(v10) = *a3;
    LODWORD(v11) = *(a3 + 4);
    v12 = (v7 * (*&v10 - v4) + v8 * (v11 - HIDWORD(v4))) / v9;
  }

  v13 = 1.0;
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  v14 = v12 < 0.0;
  v15 = 0.0;
  if (!v14)
  {
    v15 = v13;
  }

  v33 = sub_6EFC0(&v28, &v26, v15);
  v34 = v16;
  sub_314EC(a3, &v33, v17);
  v19 = v18 * 100.0;
  if (v19 >= 0.0)
  {
    v20 = v19;
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v21 = (v19 + v19) + 1;
  }

  else
  {
    v20 = v19;
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v21 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_16:
  if (v20 >= 9.22337204e18)
  {
    v23 = 0x7FFFFFFFFFFFFFFELL;
    v24 = __p;
    if (!__p)
    {
      return v23;
    }

    goto LABEL_26;
  }

  if (v19 >= 0.0)
  {
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_25;
    }

    v22 = (v19 + v19) + 1;
  }

  else
  {
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_25;
    }

    v22 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v19 = (v22 >> 1);
LABEL_25:
  v23 = v19;
  v24 = __p;
  if (__p)
  {
LABEL_26:
    v32 = v24;
    operator delete(v24);
  }

  return v23;
}

void sub_581910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_581930(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_31C398(*(a1 + 8), *a2, &__p);
  v7 = __p;
  v8 = v21;
  if (__p != v21)
  {
    do
    {
      v9 = sub_577084(a1, v7++);
      if (v7 == v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }
    }

    while ((v10 & 1) != 0);
    v7 = __p;
    if (!v9)
    {
      v17 = 0;
      if (__p)
      {
        goto LABEL_25;
      }

      return v17;
    }

    v8 = v21;
  }

  if (v7 == v8)
  {
    v17 = 1;
    if (!v7)
    {
      return v17;
    }

    goto LABEL_25;
  }

  do
  {
    v11 = sub_2B51D8(*(a1 + 8), *v7);
    v12 = (v11 - *v11);
    v13 = *v12;
    if (v13 < 0x9B)
    {
      if (v13 < 0x39)
      {
        goto LABEL_21;
      }
    }

    else if (v12[77] && (*(v11 + v12[77]) & 3) != 0)
    {
      goto LABEL_21;
    }

    v14 = v12[28];
    if (!v14 || ((v15 = *(v11 + v14), (v15 & 0x23) == 0) ? (v16 = (v15 & 7) == 4) : (v16 = 1), !v16))
    {
LABEL_21:
      v19 = sub_581700(a1, v7, a3);
      sub_576E10(a4, v7, &v19);
    }

    ++v7;
  }

  while (v7 != v8);
  v17 = 1;
  v7 = __p;
  if (!__p)
  {
    return v17;
  }

LABEL_25:
  v21 = v7;
  operator delete(v7);
  return v17;
}

void sub_581A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_581AB0(uint64_t a1, unint64_t *a2, int a3, int a4, uint64_t a5)
{
  v10 = sub_2B51D8(*(a1 + 8), *a2);
  v11 = (v10 - *v10);
  if (*v11 >= 0x2Fu && (v12 = v11[23]) != 0 && ((v13 = *(v10 + v12), v14 = v13 > 0x2D, v15 = (1 << v13) & 0x208040000000, !v14) ? (v16 = v15 == 0) : (v16 = 1), !v16) || (v17 = sub_2B51D8(*(a1 + 8), *a2), v18 = (v17 - *v17), *v18 >= 0x2Fu) && (v19 = v18[23]) != 0 && *(v17 + v19) == 47)
  {
    v20 = sub_2B51D8(*(a1 + 8), *a2);
    v21 = (v20 - *v20);
    if (*v21 >= 9u && (v22 = v21[4]) != 0)
    {
      v23 = *(v20 + v22);
    }

    else
    {
      v23 = 0;
    }

    sub_2B79D0(*(a1 + 8), *a2, &v28);
    sub_31BF20(&v28, &v31);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (a3 & a4)
    {
      goto LABEL_38;
    }

    v24 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 2);
    if (v24 < 2 || v23 == 0)
    {
      goto LABEL_38;
    }

    if (v32 != v31)
    {
      if (v24 < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v27 = 0;
    v26 = 0;
    if (a3)
    {
      sub_583BD4(a1, &v31, v23, 1, &v28);
      v26 = v28;
      v27 = __p;
      if (a4)
      {
        goto LABEL_30;
      }
    }

    else if (a4)
    {
LABEL_30:
      sub_583BD4(a1, &v31, v23, 0, &v28);
      if (v26)
      {
        operator delete(v26);
      }

      v26 = v28;
      v27 = __p;
      if (v28 == __p)
      {
        goto LABEL_36;
      }

LABEL_33:
      if (*(a1 + 1736) == 1)
      {
        sub_4798C(a5, *(a5 + 8), v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 2));
      }

      else
      {
        sub_376F0(a5, v26);
        sub_376F0(a5, (v27 - 12));
      }

LABEL_36:
      if (v26)
      {
        operator delete(v26);
      }

LABEL_38:
      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      return;
    }

    if (v26 == v27)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }
}

void sub_581D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_581D9C(uint64_t a1, uint64_t *a2, char a3)
{
  *a1 = -1;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v3 = *(a2 + 24);
  *(a1 + 88) = 0;
  v4 = a1 + 40;
  *(a1 + 72) = v3;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v6 = a2[50];
  v5 = a2[51];
  v27 = a1 + 16;
  if (v5 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 112) = *(a2 + 106);
  *(a1 + 120) = a3;
  v7 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v7;
  v8 = a2[39];
  v26 = a2[40];
  if (v8 == v26)
  {
    return a1;
  }

  while (2)
  {
    v9 = *(v8 + 72);
    v10 = *(v8 + 80);
    while (v9 != v10)
    {
      v13 = v4;
      if (*v9 != 1)
      {
        if (*v9)
        {
          goto LABEL_10;
        }

        v13 = v27;
      }

      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      if (v14 < v15)
      {
        v11 = *v8;
        *(v14 + 8) = *(v8 + 8);
        *v14 = v11;
        v12 = v14 + 12;
      }

      else
      {
        v16 = *v13;
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2);
        v18 = v17 + 1;
        if (v17 + 1 > 0x1555555555555555)
        {
          sub_1794();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 2);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0xAAAAAAAAAAAAAAALL)
        {
          v20 = 0x1555555555555555;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (v20 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v21 = 4 * ((v14 - *v13) >> 2);
        v22 = *v8;
        *(v21 + 8) = *(v8 + 8);
        *v21 = v22;
        v12 = 12 * v17 + 12;
        v23 = 12 * v17 - (v14 - v16);
        memcpy((v21 - (v14 - v16)), v16, v14 - v16);
        *v13 = v23;
        *(v13 + 8) = v12;
        *(v13 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      *(v13 + 8) = v12;
LABEL_10:
      ++v9;
    }

    v8 += 176;
    if (v8 != v26)
    {
      continue;
    }

    return a1;
  }
}

void sub_58202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, ...)
{
  va_start(va, a9);
  v9[12] = v10;
  sub_35390(va);
  v13 = *v11;
  if (*v11)
  {
    v9[6] = v13;
    operator delete(v13);
    v14 = *a9;
    if (!*a9)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v14 = *a9;
    if (!*a9)
    {
      goto LABEL_3;
    }
  }

  v9[3] = v14;
  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_5821EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5838B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5839C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  sub_2B79D0(*(a1 + 8), *a2, v28);
  if (*(v3 + 16) == *(v3 + 24))
  {
    goto LABEL_30;
  }

  if (__p == v30)
  {
    goto LABEL_30;
  }

  v4 = sub_31A76C(v28);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (v7 == v8)
  {
    goto LABEL_30;
  }

  v9 = 0;
  do
  {
    v10 = v7[1];
    v11 = (*v7 + 12);
    if (*v7 != v10 && v11 != v10)
    {
      do
      {
        v13 = *(v11 - 2);
        v14 = v11[1];
        if (v13 < HIDWORD(v4) != v14 < HIDWORD(v4))
        {
          LODWORD(v5) = *v11;
          LODWORD(v6) = *(v11 - 3);
          v6 = *&v6;
          v5 = (HIDWORD(v4) - v13) / (v14 - v13) * (*&v5 - v6) + v6;
          if (v5 < v4)
          {
            v9 ^= 1u;
          }
        }

        v11 += 3;
      }

      while (v11 != v10);
    }

    v7 += 3;
  }

  while (v7 != v8);
  if ((v9 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_33;
  }

  v15 = sub_31AA0C(v28);
  v18 = *(v3 + 16);
  v19 = *(v3 + 24);
  if (v18 == v19)
  {
LABEL_30:
    v20 = 0;
    v26 = __p;
    if (!__p)
    {
      return v20 & 1;
    }

    goto LABEL_34;
  }

  v20 = 0;
  do
  {
    v21 = v18[1];
    v22 = (*v18 + 12);
    if (*v18 != v21 && v22 != v21)
    {
      do
      {
        v24 = *(v22 - 2);
        v25 = v22[1];
        if (v24 < HIDWORD(v15) != v25 < HIDWORD(v15))
        {
          LODWORD(v16) = *v22;
          LODWORD(v17) = *(v22 - 3);
          v17 = *&v17;
          v16 = (HIDWORD(v15) - v24) / (v25 - v24) * (*&v16 - v17) + v17;
          if (v16 < v15)
          {
            v20 ^= 1u;
          }
        }

        v22 += 3;
      }

      while (v22 != v21);
    }

    v18 += 3;
  }

  while (v18 != v19);
LABEL_33:
  v26 = __p;
  if (__p)
  {
LABEL_34:
    v30 = v26;
    operator delete(v26);
  }

  return v20 & 1;
}

void sub_583BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_583BD4(uint64_t a1@<X0>, void ***a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = *(a1 + 1728);
  if (v6 >= a3)
  {
    if (a4)
    {
      v11 = a2[1];
      v46[0] = *(v11 - 12);
      v12 = *(v11 - 1);
    }

    else
    {
      v13 = *a2;
      v46[0] = **a2;
      v12 = *(v13 + 2);
    }

    LODWORD(v46[1]) = v12;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    operator new();
  }

  if (v6)
  {
    v7 = v6 / a3;
    if (!a4)
    {
      v7 = 1.0 - v7;
    }

    v53 = 0;
    v9 = *a2;
    v10 = a2[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 2) > 1)
    {
      v39 = v7;
      v52 = 0;
      *v46 = 0u;
      *__p = 0u;
      v48 = 0u;
      v51 = 0;
      v15 = (v9 + 12);
      v16 = v9 == v10 || v15 == v10;
      v17 = v16;
      v18 = 0.0;
      if (!v16)
      {
        v43 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
        v41 = vdupq_n_s64(0xC066800000000000);
        v42 = vdupq_n_s64(0x4076800000000000uLL);
        v40 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
        HIDWORD(v19) = 1096306543;
        do
        {
          LODWORD(v19) = *(v15 - 2);
          v20 = exp(3.14159265 - *&v19 * 6.28318531 / 4294967300.0);
          *&v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795;
          LODWORD(v22) = *(v15 - 3);
          HIDWORD(v22) = *v15;
          v44 = v22;
          v23 = *&v21 * 0.0174532925;
          LODWORD(v21) = *(v15 + 1);
          v24 = exp(3.14159265 - v21 * 6.28318531 / 4294967300.0);
          v25 = atan((v24 - 1.0 / v24) * 0.5) * 57.2957795 * 0.0174532925;
          v26.i64[0] = v44;
          v26.i64[1] = HIDWORD(v44);
          v27 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v26), v42), v43), v41), v40);
          v45 = vsubq_f64(v27, vdupq_laneq_s64(v27, 1)).f64[0];
          v28 = sin((v23 - v25) * 0.5);
          v29 = v28 * v28;
          v30 = cos(v23);
          v31 = v30 * cos(v25);
          v32 = sin(0.5 * v45);
          v33 = atan2(sqrt(v32 * v32 * v31 + v29), sqrt(1.0 - (v32 * v32 * v31 + v29)));
          v19 = (v33 + v33) * 6372797.56;
          v18 = v18 + v19;
          v15 = (v15 + 12);
        }

        while (v15 != v10);
      }

      v34 = v39 * v18;
      v50 = v39 * v18;
      v49[0] = &v51;
      v49[1] = v46;
      v49[2] = &v53;
      v49[3] = &v52;
      v49[4] = &v50;
      if ((v17 & 1) == 0)
      {
        do
        {
          sub_316F0(v49, v9, v9 + 3, v34);
          v35 = v9 + 3;
          v9 = (v9 + 12);
        }

        while (v35 != v10);
      }
    }

    else
    {
      sub_313A4(v46, a2, a2);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    if (a4)
    {
      v36 = __p[1];
    }

    else
    {
      v36 = v46[0];
    }

    v37 = &v48;
    if (!a4)
    {
      v37 = &v46[1];
    }

    v38 = *v37;
    if (v38 != v36)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v38 - v36) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }

    if (__p[1])
    {
      *&v48 = __p[1];
      operator delete(__p[1]);
    }

    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v14 = a2[1];
    if (v14 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_584064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_584078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_58408C(uint64_t a1, void *a2, void *a3)
{
  if (a2[138] != a2[139] && sub_4D1DC0(a2))
  {
    if (*(a2[139] - 1608) >= *(a1 + 1768))
    {
      v6 = *(a1 + 1768);
    }

    else
    {
      v6 = *(a2[139] - 1608);
    }

    v7 = *(a1 + 8);
    v8 = sub_4D1F60(a2);
    sub_2B7A20(v7, (((*(v8 + 36) & 0x20000000) << 19) | (*(v8 + 36) << 32) | *(v8 + 32)) ^ 0x1000000000000, &v23);
    sub_31BF20(&v23, v26);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    v9 = sub_4D2140(a2);
    sub_2F4C8(v26, 0, &v23, 0.0, v9 / 1000000000.0);
    v10 = v23;
    if (v23 != __p)
    {
      v11 = (__p - 12);
      v12 = a3[3];
      v13 = a3[4];
      if (v12 >= v13)
      {
        v16 = a3[2];
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v16) >> 3) + 1;
        if (v17 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v16) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (v19 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v20 = 8 * ((v12 - v16) >> 3);
        v21 = *v11;
        *(v20 + 8) = *(__p - 1);
        *v20 = v21;
        *(v20 + 16) = v6;
        v15 = v20 + 24;
        v22 = (v20 - (v12 - v16));
        memcpy(v22, v16, v12 - v16);
        a3[2] = v22;
        a3[3] = v15;
        a3[4] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        v14 = *v11;
        *(v12 + 8) = *(__p - 1);
        *v12 = v14;
        *(v12 + 16) = v6;
        v15 = v12 + 24;
      }

      a3[3] = v15;
      v10 = v23;
    }

    if (v10)
    {
      __p = v10;
      operator delete(v10);
    }

    if (v26[0])
    {
      v26[1] = v26[0];
      operator delete(v26[0]);
    }
  }
}

void sub_5842C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

uint64_t sub_584308(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 11272);
  if (v4 == 3)
  {
    if (*(a1 + 1977))
    {
LABEL_55:
      v23 = 1;
      return v23 & 1;
    }
  }

  else if (v4 == 4 && (*(a1 + 1976) & 1) != 0)
  {
    goto LABEL_55;
  }

  v5 = sub_4D1F60(a2);
  v6 = (*v5 - **v5);
  if (*v6 < 0x2Fu || (v7 = v6[23]) == 0 || ((v8 = *(*v5 + v7), v9 = v8 > 0x1A, v10 = (1 << v8) & 0x4810001, !v9) ? (v11 = v10 == 0) : (v11 = 1), v11 || ((v12 = *(v5 + 9), (v12 & 0x40000000) != 0) ? (v13 = 2) : (v13 = v12 >> 31), sub_314D1C(v5, v13))))
  {
    if ((*(a2 + 11268) - 1) > 1 || (v14 = *(a2 + 7496), *(a2 + 7488) == v14) || !*(a1 + 1960) || sub_138B0((a1 + 1936), (v14 - 24)))
    {
      if (*(a1 + 1900) != 1)
      {
        goto LABEL_47;
      }

      sub_64AEEC(&v52, 2);
      sub_11A9248(&v52, (a2 + 11400), 2, &__p);
      v15 = __p;
      v16 = v51;
      v53[0] = (a2 + 11088);
      v53[1] = a1;
      if (__p != v51)
      {
        while (!sub_5863D4(v53, v15))
        {
          v15 += 44;
          if (v15 == v16)
          {
            v15 = __p;
            v16 = v51;
            goto LABEL_25;
          }
        }

        v15 = __p;
        if (__p)
        {
          v19 = v51;
          if (__p == v51)
          {
            v20 = __p;
          }

          else
          {
            do
            {
              v21 = *(v19 - 3);
              if (v21)
              {
                operator delete(v21);
              }

              v22 = *(v19 - 13);
              if (v22)
              {
                *(v19 - 12) = v22;
                operator delete(v22);
              }

              v19 -= 44;
            }

            while (v19 != v15);
            v20 = __p;
          }

          goto LABEL_46;
        }

        goto LABEL_47;
      }

LABEL_25:
      if (v15 == v16)
      {
        v20 = v15;
        if (v15)
        {
LABEL_46:
          v51 = v15;
          operator delete(v20);
        }

LABEL_47:
        v24 = *(a2 + 11375);
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(a2 + 11360);
        }

        if (!v24)
        {
          goto LABEL_55;
        }

        v25 = sub_E67C38(a2 + 11088);
        v26 = v25;
        v27 = *(a1 + 2008);
        v28 = *(a1 + 2016);
        v29 = v27;
        if (v27 != v28)
        {
          v29 = *(a1 + 2008);
          while (*v29 != v25)
          {
            v29 += 16;
            if (v29 == v28)
            {
              goto LABEL_58;
            }
          }
        }

        if (v29 != v28)
        {
          v23 = v29[8];
          return v23 & 1;
        }

LABEL_58:
        v30 = *(a1 + 1912);
        v31 = *(a1 + 1920);
        if (v30 == v31)
        {
LABEL_91:
          v23 = 1;
          v41 = *(a1 + 2024);
          if (v28 >= v41)
          {
LABEL_82:
            v42 = v28 - v27;
            v43 = (v28 - v27) >> 4;
            v44 = v43 + 1;
            if ((v43 + 1) >> 60)
            {
              sub_1794();
            }

            v45 = v41 - v27;
            if (v45 >> 3 > v44)
            {
              v44 = v45 >> 3;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF0)
            {
              v46 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v44;
            }

            if (v46)
            {
              if (!(v46 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v48 = 16 * v43;
            *v48 = v26;
            *(v48 + 8) = v23;
            v47 = 16 * v43 + 16;
            memcpy(0, v27, v42);
            *(a1 + 2008) = 0;
            *(a1 + 2016) = v47;
            *(a1 + 2024) = 0;
            if (v27)
            {
              operator delete(v27);
            }

            goto LABEL_95;
          }
        }

        else
        {
          v32 = *(a2 + 11375);
          if ((v32 & 0x8000000000000000) != 0)
          {
            v36 = *(a2 + 11352);
            v37 = *(a2 + 11360);
            while (1)
            {
              v38 = *(v30 + 23);
              v39 = v38 >= 0 ? *(v30 + 23) : *(v30 + 8);
              if (v37 >= v39)
              {
                v40 = v38 >= 0 ? v30 : *v30;
                if (!memcmp(v36, v40, v39))
                {
                  break;
                }
              }

              v30 += 24;
              if (v30 == v31)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            while (1)
            {
              v33 = *(v30 + 23);
              v34 = v33 >= 0 ? *(v30 + 23) : *(v30 + 8);
              if (v34 <= v32)
              {
                v35 = v33 >= 0 ? v30 : *v30;
                if (!memcmp((a2 + 11352), v35, v34))
                {
                  break;
                }
              }

              v30 += 24;
              if (v30 == v31)
              {
                goto LABEL_91;
              }
            }
          }

          v23 = 0;
          v41 = *(a1 + 2024);
          if (v28 >= v41)
          {
            goto LABEL_82;
          }
        }

        *v28 = v26;
        v28[8] = v23;
        v47 = (v28 + 16);
LABEL_95:
        *(a1 + 2016) = v47;
        return v23 & 1;
      }

      if (v15)
      {
        do
        {
          v17 = *(v16 - 3);
          if (v17)
          {
            operator delete(v17);
          }

          v18 = *(v16 - 13);
          if (v18)
          {
            *(v16 - 12) = v18;
            operator delete(v18);
          }

          v16 -= 44;
        }

        while (v16 != v15);
        v51 = v15;
        operator delete(__p);
      }
    }
  }

  v23 = 0;
  return v23 & 1;
}

unint64_t sub_58475C(uint64_t a1, void *a2)
{
  v2 = a2[139];
  do
  {
    if (v2 == a2[138])
    {
      if (!sub_7E7E4(1u))
      {
        return -1;
      }

      sub_19594F8(&v18);
      sub_4A5C(&v18, "Could not resolve transport mode transition coordinate.", 55);
      if ((v28 & 0x10) != 0)
      {
        v14 = v27;
        if (v27 < v24)
        {
          v27 = v24;
          v14 = v24;
        }

        v15 = v23;
        v10 = v14 - v23;
        if (v14 - v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if ((v28 & 8) == 0)
        {
          v10 = 0;
          v17 = 0;
LABEL_22:
          *(&v16 + v10) = 0;
          sub_7E854(&v16, 1u);
          if (v17 < 0)
          {
            operator delete(v16);
          }

          if (v26 < 0)
          {
            operator delete(v25);
          }

          std::locale::~locale(&v20);
          std::ostream::~ostream();
          std::ios::~ios();
          return -1;
        }

        v15 = v21;
        v10 = v22 - v21;
        if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_30:
          sub_3244();
        }
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      v17 = v10;
      if (v10)
      {
        memmove(&v16, v15, v10);
      }

      goto LABEL_22;
    }

    v3 = v2 - 2616;
    v4 = *(v2 - 2232);
    v2 -= 2616;
  }

  while (v4 != 5);
  v5 = *(v3 + 24);
  v6 = v5 != 0;
  v7 = v5 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (a2[1266] == a2[1267])
  {
    v12 = sub_4D1F50(a2, v7);
    sub_2B7A20(*(a1 + 8), (((*(v12 + 36) & 0x20000000) << 19) | (*(v12 + 36) << 32) | *(v12 + 32)) ^ 0x1000000000000, &v18);
    result = sub_31AA0C(&v18);
    if (__p)
    {
      v20.__locale_ = __p;
      v13 = result;
      operator delete(__p);
      return v13;
    }
  }

  else
  {
    sub_69E8D8(a2);
    return *(*(v8 + 8) - 12);
  }

  return result;
}

void sub_584A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_584AC0(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    v3 = a1[12];
    v4 = a1[11];
    if (v3 != v2)
    {
      v5 = a1[12];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[11];
    }

    a1[12] = v2;
    operator delete(v4);
  }

  v8 = a1[5];
  if (v8)
  {
    a1[6] = v8;
    operator delete(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    a1[3] = v9;
    operator delete(v9);
  }

  return a1;
}

void **sub_584B58(void ***a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (16 * ((a1[1] - *a1) >> 4));
  v8 = *a3;
  v9 = *a4;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v10 = a2[1];
  v11 = v7;
  if (v10 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v7[3] = a2[3];
  v7[4] = v8;
  v7[5] = v9;
  v12 = (v7 + 6);
  v13 = *a1;
  v14 = a1[1];
  v15 = (v11 + *a1 - v14);
  if (*a1 != v14)
  {
    v16 = *a1;
    v17 = v15;
    do
    {
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      *v17 = *v16;
      v17[2] = *(v16 + 2);
      *v16 = 0;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      v17[3] = *(v16 + 3);
      *(v17 + 2) = *(v16 + 2);
      v16 += 48;
      v17 += 6;
    }

    while (v16 != v14);
    do
    {
      v19 = *v13;
      if (*v13)
      {
        v20 = *(v13 + 1);
        v18 = *v13;
        if (v20 != v19)
        {
          v21 = *(v13 + 1);
          do
          {
            v23 = *(v21 - 3);
            v21 -= 24;
            v22 = v23;
            if (v23)
            {
              *(v20 - 2) = v22;
              operator delete(v22);
            }

            v20 = v21;
          }

          while (v21 != v19);
          v18 = *v13;
        }

        *(v13 + 1) = v19;
        operator delete(v18);
      }

      v13 += 48;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_584DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  *(v3 + 8) = v4;
  sub_35390(va1);
  sub_584E10(va);
  _Unwind_Resume(a1);
}

void sub_584DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_35390(va1);
  sub_584E10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_584E10(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 6);
      v4 -= 6;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v3 - 5);
        v5 = v6;
        if (v8 != v6)
        {
          v9 = *(v3 - 5);
          do
          {
            v11 = *(v9 - 3);
            v9 -= 24;
            v10 = v11;
            if (v11)
            {
              *(v8 - 2) = v10;
              operator delete(v10);
            }

            v8 = v9;
          }

          while (v9 != v6);
          v5 = *v4;
        }

        *(v3 - 5) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

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

uint64_t sub_584EC4(void *a1)
{
  v2 = a1[106];
  if (v2)
  {
    a1[107] = v2;
    operator delete(v2);
  }

  v3 = a1[103];
  if (v3)
  {
    a1[104] = v3;
    operator delete(v3);
  }

  v4 = a1[99];
  if (v4)
  {
    a1[100] = v4;
    operator delete(v4);
  }

  v5 = a1[96];
  if (v5)
  {
    a1[97] = v5;
    operator delete(v5);
  }

  return sub_360988(a1);
}

uint64_t sub_584F38(uint64_t *a1, uint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 6;
  v4 = v3 + 1;
  if ((v3 + 1) >> 58)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v4)
  {
    v4 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v23 = a1;
  if (v7)
  {
    if (!(v7 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v20 = v3 << 6;
  v22 = 0;
  sub_5850C8(v3 << 6, a2, a3);
  v21 = (v3 << 6) + 64;
  sub_5851EC(a1, &__p);
  v8 = a1[1];
  v9 = v20;
  for (i = v21; v21 != v9; i = v21)
  {
    while (1)
    {
      v13 = i - 64;
      v21 = i - 64;
      v14 = *(i - 48);
      if (v14)
      {
        break;
      }

      i -= 64;
      if (v13 == v9)
      {
        goto LABEL_11;
      }
    }

    v15 = *(i - 40);
    v12 = *(i - 48);
    if (v15 != v14)
    {
      v16 = *(i - 40);
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v15 - 16) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
      v12 = *(i - 48);
    }

    *(i - 40) = v14;
    operator delete(v12);
  }

LABEL_11:
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_5850B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_585324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5850C8(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 52) = 0x7FFFFFFF;
  *(a1 + 56) = 0x7FFFFFFFFFFFFFFFLL;
  return a1;
}

void sub_5851C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 24) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

void sub_5851EC(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = *v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 16) = 0;
      *(v8 + 16) = *(v7 + 16);
      *(v8 + 32) = *(v7 + 32);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 48) = *(v7 + 48);
      v7 += 64;
      v8 += 64;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 16);
      if (v10)
      {
        v11 = *(v5 + 24);
        v9 = *(v5 + 16);
        if (v11 != v10)
        {
          v12 = *(v5 + 24);
          do
          {
            v14 = *(v12 - 24);
            v12 -= 24;
            v13 = v14;
            if (v14)
            {
              *(v11 - 16) = v13;
              operator delete(v13);
            }

            v11 = v12;
          }

          while (v12 != v10);
          v9 = *(v5 + 16);
        }

        *(v5 + 24) = v10;
        operator delete(v9);
      }

      v5 += 64;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  a1[1] = v15;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t sub_585324(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      v4 = i - 64;
      *(a1 + 16) = i - 64;
      v5 = *(i - 48);
      if (v5)
      {
        break;
      }

      i -= 64;
      if (v4 == v2)
      {
        goto LABEL_12;
      }
    }

    v6 = *(i - 40);
    v7 = *(i - 48);
    if (v6 != v5)
    {
      v8 = *(i - 40);
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v6 - 16) = v9;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v5);
      v7 = *(i - 48);
    }

    *(i - 40) = v5;
    operator delete(v7);
  }

LABEL_12:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_5853E0(void ***a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (16 * ((a1[1] - *a1) >> 4));
  v8 = *a3;
  v9 = *a4;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v10 = a2[1];
  v11 = v7;
  if (v10 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v7[3] = a2[3];
  v7[4] = v8;
  v7[5] = v9;
  v12 = (v7 + 6);
  v13 = *a1;
  v14 = a1[1];
  v15 = (v11 + *a1 - v14);
  if (*a1 != v14)
  {
    v16 = *a1;
    v17 = v15;
    do
    {
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      *v17 = *v16;
      v17[2] = *(v16 + 2);
      *v16 = 0;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      v17[3] = *(v16 + 3);
      *(v17 + 2) = *(v16 + 2);
      v16 += 48;
      v17 += 6;
    }

    while (v16 != v14);
    do
    {
      v19 = *v13;
      if (*v13)
      {
        v20 = *(v13 + 1);
        v18 = *v13;
        if (v20 != v19)
        {
          v21 = *(v13 + 1);
          do
          {
            v23 = *(v21 - 3);
            v21 -= 24;
            v22 = v23;
            if (v23)
            {
              *(v20 - 2) = v22;
              operator delete(v22);
            }

            v20 = v21;
          }

          while (v21 != v19);
          v18 = *v13;
        }

        *(v13 + 1) = v19;
        operator delete(v18);
      }

      v13 += 48;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_58565C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  *(v3 + 8) = v4;
  sub_35390(va1);
  sub_584E10(va);
  _Unwind_Resume(a1);
}

void sub_58567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_35390(va1);
  sub_584E10(va);
  _Unwind_Resume(a1);
}

void **sub_585698(void ***a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (16 * ((a1[1] - *a1) >> 4));
  v8 = *a3;
  v9 = *a4;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v10 = a2[1];
  v11 = v7;
  if (v10 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v7[3] = a2[3];
  v7[4] = v8;
  v7[5] = v9;
  v12 = (v7 + 6);
  v13 = *a1;
  v14 = a1[1];
  v15 = (v11 + *a1 - v14);
  if (*a1 != v14)
  {
    v16 = *a1;
    v17 = v15;
    do
    {
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      *v17 = *v16;
      v17[2] = *(v16 + 2);
      *v16 = 0;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      v17[3] = *(v16 + 3);
      *(v17 + 2) = *(v16 + 2);
      v16 += 48;
      v17 += 6;
    }

    while (v16 != v14);
    do
    {
      v19 = *v13;
      if (*v13)
      {
        v20 = *(v13 + 1);
        v18 = *v13;
        if (v20 != v19)
        {
          v21 = *(v13 + 1);
          do
          {
            v23 = *(v21 - 3);
            v21 -= 24;
            v22 = v23;
            if (v23)
            {
              *(v20 - 2) = v22;
              operator delete(v22);
            }

            v20 = v21;
          }

          while (v21 != v19);
          v18 = *v13;
        }

        *(v13 + 1) = v19;
        operator delete(v18);
      }

      v13 += 48;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_585914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  *(v3 + 8) = v4;
  sub_35390(va1);
  sub_584E10(va);
  _Unwind_Resume(a1);
}

void sub_585934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_35390(va1);
  sub_584E10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_585950(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8((a1 + 824), 2u);
  return a1;
}

void sub_585A94(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_585AE0@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = (v6 ^ ~(v6 >> 33)) + ((v6 ^ (v6 >> 33)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v19 = v10[1] + 12 * v18;
    if (*v19 == v4 && *(v19 + 4) == HIDWORD(v4))
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  if (v12 == v18)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v10;
  a3[1] = (result + 768);
  a3[2] = (v13 + v18);
  a3[3] = v19;
  a3[4] = (v13 + v12);
  return result;
}

unint64_t sub_585C38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = __ROR8__(*a2, 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = (v6 ^ ~(v6 >> 33)) + ((v6 ^ (v6 >> 33)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (a1 + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  while (1)
  {
    v13 = v11 & v12;
    v14 = *(*v10 + v13);
    v15 = ((v14 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v14 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v15)
    {
      break;
    }

LABEL_8:
    if ((v14 & (~v14 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_585D98(v10, v9);
      *a3 = v10;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v11 = v3 + v13;
  }

  while (1)
  {
    result = (v13 + (__clz(__rbit64(v15)) >> 3)) & v12;
    v17 = (v10[1] + 12 * result);
    v19 = *v17;
    v18 = v17[1];
    if (v19 == v4 && v18 == HIDWORD(v4))
    {
      break;
    }

    v15 &= v15 - 1;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  *a3 = v10;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_585D98(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_585E90(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_585E90(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_585EC0(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_5860B4(a1);
}

uint64_t sub_5860B4(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = __ROR8__(*(*(result + 8) + 12 * i), 32);
        v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v18 ^ (v18 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v18 ^ (v18 >> 33))) >> 33));
        v20 = (v19 ^ ~(v19 >> 33)) + ((v19 ^ (v19 >> 33)) << 21);
        v21 = 21 * ((265 * (v20 ^ (v20 >> 24))) ^ ((265 * (v20 ^ (v20 >> 24))) >> 14));
        v22 = 2147483649u * (v21 ^ (v21 >> 28));
        v23 = v13 & (v22 >> 7);
        v24 = *(v17->i64 + v23) & (~*(v17->i64 + v23) << 7) & 0x8080808080808080;
        if (v24)
        {
          v15 = v13 & (v22 >> 7);
        }

        else
        {
          v25 = 8;
          v15 = v13 & (v22 >> 7);
          do
          {
            v15 = (v15 + v25) & v13;
            v25 += 8;
            v24 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v24);
        }

        v16 = (v15 + (__clz(__rbit64(v24)) >> 3)) & v13;
        if ((((v16 - v23) ^ (i - v23)) & v13) > 7)
        {
          v26 = v17->u8[v16];
          v17->i8[v16] = v22 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v22 & 0x7F;
          v27 = *(result + 8);
          if (v26 == 128)
          {
            v28 = v27 + 12 * v16;
            v29 = (v27 + 12 * i);
            v30 = *v29;
            *(v28 + 8) = *(v29 + 2);
            *v28 = v30;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v31 = (v27 + 12 * i);
            v32 = *v31;
            v33 = *(v31 + 2);
            v34 = 12 * v16;
            v35 = (v27 + v34);
            v36 = *(v35 + 2);
            *v31 = *v35;
            *(v31 + 2) = v36;
            v37 = *(result + 8) + v34;
            *v37 = v32;
            *(v37 + 8) = v33;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v22 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v22 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v38 = i - (i >> 3);
    v39 = i == 7;
    v40 = 6;
    if (!v39)
    {
      v40 = v38;
    }
  }

  else
  {
    v40 = 0;
  }

  *(result + 40) = v40 - *(result + 16);
  return result;
}

BOOL sub_5863D4(unsigned int **a1, unsigned int *a2)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = v4 == -1 && v3 == -1;
  if (v5 || ((v7 = *a2, v6 = a2[1], *a2 == -1) ? (v8 = v6 == -1) : (v8 = 0), v8))
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    return v24 < *(v2 + 238);
  }

  v9 = exp(3.14159265 - v3 * 6.28318531 / 4294967300.0);
  v10 = atan((v9 - 1.0 / v9) * 0.5) * 57.2957795 * 0.0174532925;
  v11.i64[0] = v4;
  v11.i64[1] = v7;
  v12 = exp(3.14159265 - v6 * 6.28318531 / 4294967300.0);
  v13 = atan((v12 - 1.0 / v12) * 0.5) * 57.2957795 * 0.0174532925;
  v14 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v11), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v14, vdupq_laneq_s64(v14, 1)).f64[0];
  v15 = sin((v10 - v13) * 0.5);
  v16 = v15 * v15;
  v17 = cos(v10);
  v18 = v17 * cos(v13);
  v19 = sin(0.5 * v27);
  v20 = atan2(sqrt(v19 * v19 * v18 + v16), sqrt(1.0 - (v19 * v19 * v18 + v16)));
  v21 = (v20 + v20) * 6372797.56 * 100.0;
  if (v21 >= 0.0)
  {
    v22 = v21;
    if (v21 < 4.50359963e15)
    {
      v23 = (v21 + v21) + 1;
      goto LABEL_16;
    }
  }

  else
  {
    v22 = v21;
    if (v21 > -4.50359963e15)
    {
      v23 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
LABEL_16:
      v22 = (v23 >> 1);
    }
  }

  if (v22 < 9.22337204e18)
  {
    if (v21 >= 0.0)
    {
      if (v21 < 4.50359963e15)
      {
        v26 = (v21 + v21) + 1;
        goto LABEL_24;
      }
    }

    else if (v21 > -4.50359963e15)
    {
      v26 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
LABEL_24:
      v21 = (v26 >> 1);
    }

    v24 = v21;
    return v24 < *(v2 + 238);
  }

  v24 = 0x7FFFFFFFFFFFFFFELL;
  return v24 < *(v2 + 238);
}

uint64_t sub_586680(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8((a1 + 824), 2u);
  return a1;
}

void sub_5867C4(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_586810(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8((a1 + 824), 2u);
  return a1;
}

void sub_586954(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void sub_5869A0()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27937E8 = 0u;
  unk_27937F8 = 0u;
  dword_2793808 = 1065353216;
  sub_3A9A34(&xmmword_27937E8, v0, v0);
  sub_3A9A34(&xmmword_27937E8, v3, v3);
  sub_3A9A34(&xmmword_27937E8, __p, __p);
  sub_3A9A34(&xmmword_27937E8, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27937C0 = 0;
    qword_27937C8 = 0;
    qword_27937B8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}