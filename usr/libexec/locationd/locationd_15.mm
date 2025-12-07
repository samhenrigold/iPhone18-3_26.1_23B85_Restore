uint64_t sub_1000F8B58(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_1000F8C1C(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        sub_1000B96B4(&v5);
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

void sub_1000F8C90(uint64_t a1)
{
  sub_10001AF44(a1 + 288, *(a1 + 296));
  sub_10001AF44(a1 + 200, *(a1 + 208));
  sub_1000F8D2C(a1 + 176, *(a1 + 184));
  sub_10001AF44(a1 + 152, *(a1 + 160));
  sub_10001AF44(a1 + 128, *(a1 + 136));
  sub_10001AF44(a1 + 104, *(a1 + 112));
  sub_10001AF44(a1 + 80, *(a1 + 88));
  sub_10001AF44(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 40);

  sub_10001AF44(a1 + 32, v2);
}

void sub_1000F8D2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000F8D2C(a1, *a2);
    sub_1000F8D2C(a1, a2[1]);
    sub_10067DEC0((a2 + 4));

    operator delete(a2);
  }
}

void sub_1000F8D88(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_1000B96B4(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_1000F8DFC(uint64_t a1)
{
  v2 = a1 + 620;
  *a1 = 0;
  sub_1000FB1DC(a1 + 8);
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 328) = 1065353216;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 1065353216;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 1065353216;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = 0;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0xFFFF;
  *(a1 + 604) = 0u;
  __asm { FMOV            V2.2D, #-1.0 }

  *v2 = xmmword_101C75BF0;
  *(v2 + 16) = _Q2;
  *(v2 + 32) = _Q2;
  *(v2 + 48) = _Q2;
  *(a1 + 684) = 0;
  *(a1 + 688) = 0xBFF0000000000000;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0;
  *(v2 + 96) = 0xBFF0000000000000;
  *(a1 + 724) = 0x7FFFFFFF;
  *(a1 + 752) = 0;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0xBFF0000000000000;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 856) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1188) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 2120) = 0;
  *(a1 + 2264) = 0;
  *(a1 + 2272) = 0;
  *(a1 + 2296) = 0;
  *(a1 + 848) = 0;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  return a1;
}

void sub_1000F8F80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      *a1 = *a2;
      std::string::operator=((a1 + 8), (a2 + 8));
      v5 = *(a2 + 48);
      v4 = *(a2 + 64);
      v6 = *(a2 + 32);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v5;
      *(a1 + 64) = v4;
      *(a1 + 32) = v6;
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    sub_1001005C4(a1, a2);
    *(a1 + 88) = 1;
  }
}

void sub_1000F9018(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1000F8C1C(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1002887D4(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_1000F9188(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        sub_1000B96B4(&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1000F9188(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = sub_100288878(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

uint64_t *sub_1000F9188(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_100288978(a4, *v5, v5[1], 0x2E8BA2E8BA2E8BA3 * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1000F9270(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100007244(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_1000F9314(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {
      v4 = *a2;
      *(a1 + 13) = *(a2 + 13);
      *a1 = v4;
      std::string::operator=((a1 + 24), a2 + 1);

      sub_1002DA420(a1 + 48, a2 + 48);
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 80) == 1)
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        *(a1 + 64) = v5;
        operator delete(v5);
      }
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 13) = *(a2 + 13);
    *a1 = v6;
    if (*(a2 + 47) < 0)
    {
      sub_100007244((a1 + 24), *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v7;
    }

    sub_1002DA384(a1 + 48, a2 + 48);
    *(a1 + 88) = 1;
  }
}

void sub_1000F9410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void **sub_1000F942C(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xD37A6F4DE9BD37A7 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x1642C8590B21642)
    {
      v9 = 0xD37A6F4DE9BD37A7 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xB21642C8590B21)
      {
        v11 = 0x1642C8590B21642;
      }

      else
      {
        v11 = v10;
      }

      sub_10031B65C(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xD37A6F4DE9BD37A7 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

std::string *sub_1000F95A0(std::string *result, uint64_t a2)
{
  v3 = result;
  if (result[3].__r_.__value_.__s.__data_[8] == *(a2 + 80))
  {
    if (result[3].__r_.__value_.__s.__data_[8])
    {
      if (result != a2)
      {
        LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
        sub_100103B9C(result, *(a2 + 16), 0);
      }

      LOWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
      LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);

      return std::string::operator=((v3 + 56), (a2 + 56));
    }
  }

  else if (result[3].__r_.__value_.__s.__data_[8])
  {
    if (result[3].__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(result[2].__r_.__value_.__l.__size_);
    }

    result = sub_1004906DC(v3);
    v3[3].__r_.__value_.__s.__data_[8] = 0;
  }

  else
  {
    result = sub_100103020(result, a2);
    LOWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    LODWORD(v3[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if (*(a2 + 79) < 0)
    {
      result = sub_100007244(&v3[2].__r_.__value_.__s.__data_[8], *(a2 + 56), *(a2 + 64));
    }

    else
    {
      v4 = *(a2 + 56);
      v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
      *&v3[2].__r_.__value_.__r.__words[1] = v4;
    }

    v3[3].__r_.__value_.__s.__data_[8] = 1;
  }

  return result;
}

__n128 sub_1000F96B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 808) == *(a2 + 808))
  {
    if (*(a1 + 808))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      v7 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v7;
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      v8 = *(a2 + 96);
      v9 = *(a2 + 112);
      v10 = *(a2 + 128);
      *(a1 + 140) = *(a2 + 140);
      *(a1 + 112) = v9;
      *(a1 + 128) = v10;
      *(a1 + 96) = v8;
      memcpy((a1 + 160), (a2 + 160), 0x201uLL);
      v11 = *(a2 + 680);
      v12 = *(a2 + 688);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 680) = v11;
      v13 = *(a1 + 688);
      *(a1 + 688) = v12;
      if (v13)
      {
        sub_100008080(v13);
      }

      v14 = *(a2 + 696);
      v15 = *(a2 + 728);
      *(a1 + 712) = *(a2 + 712);
      *(a1 + 728) = v15;
      *(a1 + 696) = v14;
      result = *(a2 + 744);
      v17 = *(a2 + 760);
      v18 = *(a2 + 776);
      *(a1 + 785) = *(a2 + 785);
      *(a1 + 760) = v17;
      *(a1 + 776) = v18;
      *(a1 + 744) = result;
    }
  }

  else if (*(a1 + 808))
  {
    v19 = *(a1 + 688);
    if (v19)
    {
      sub_100008080(v19);
    }

    *(a1 + 808) = 0;
  }

  else
  {
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    v21 = *(a2 + 32);
    v22 = *(a2 + 48);
    v23 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v23;
    *(a1 + 32) = v21;
    *(a1 + 48) = v22;
    v24 = *(a2 + 96);
    v25 = *(a2 + 112);
    v26 = *(a2 + 128);
    *(a1 + 140) = *(a2 + 140);
    *(a1 + 112) = v25;
    *(a1 + 128) = v26;
    *(a1 + 96) = v24;
    memcpy((a1 + 160), (a2 + 160), 0x201uLL);
    *(a1 + 680) = *(a2 + 680);
    v27 = *(a2 + 688);
    *(a1 + 688) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *(a2 + 696);
    v29 = *(a2 + 728);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 728) = v29;
    *(a1 + 696) = v28;
    result = *(a2 + 744);
    v30 = *(a2 + 760);
    v31 = *(a2 + 776);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 760) = v30;
    *(a1 + 776) = v31;
    *(a1 + 744) = result;
    *(a1 + 808) = 1;
  }

  return result;
}

void sub_1000F9838(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0x6F96F96F96F96F97 * (&v3[-*a2] >> 2);
      v5 = *a2;

      sub_1007BE820(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10031D97C(a1, *a2, *(a2 + 8), 0x6F96F96F96F96F97 * ((*(a2 + 8) - *a2) >> 2));
    *(a1 + 24) = 1;
  }
}

void sub_1000F9AC0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6536);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_1007BE994(v1);
  _Unwind_Resume(a1);
}

__n128 sub_1000F9AE0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

uint64_t sub_1000F9B54(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  *(a1 + 64) = v6;
  if (*(a2 + 151) < 0)
  {
    sub_100007244((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  v14 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v14;
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  sub_1000FA008((a1 + 264), *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
  *(a1 + 288) = *(a2 + 288);
  sub_100103020(a1 + 296, a2 + 296);
  sub_100103110(a1 + 336, a2 + 336);
  sub_100103098(a1 + 376, a2 + 376);
  sub_100103020(a1 + 416, a2 + 416);
  sub_100103020(a1 + 456, a2 + 456);
  memcpy((a1 + 496), (a2 + 496), 0x120uLL);
  sub_1000FA090((a1 + 784), (a2 + 784));
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = 0;
  *(a1 + 840) = 0;
  *(a1 + 832) = 0;
  sub_1000FA1A0((a1 + 824), *(a2 + 824), *(a2 + 832), 0xD37A6F4DE9BD37A7 * ((*(a2 + 832) - *(a2 + 824)) >> 3));
  *(a1 + 848) = *(a2 + 848);
  sub_1000FA0E0(a1 + 856, (a2 + 856));
  sub_1000FA2C8(a1 + 952, a2 + 952);
  sub_1000FA21C(a1 + 1040, a2 + 1040);
  v15 = *(a2 + 1120);
  v16 = *(a2 + 1136);
  v17 = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a1 + 1152) = v17;
  *(a1 + 1136) = v16;
  *(a1 + 1120) = v15;
  v18 = *(a2 + 1184);
  v19 = *(a2 + 1200);
  v20 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v20;
  *(a1 + 1200) = v19;
  *(a1 + 1184) = v18;
  sub_1000FA87C((a1 + 1240), (a2 + 1240));
  *(a1 + 1272) = 0;
  *(a1 + 2080) = 0;
  if (*(a2 + 2080) == 1)
  {
    v21 = *(a2 + 1288);
    *(a1 + 1272) = *(a2 + 1272);
    *(a1 + 1288) = v21;
    v22 = *(a2 + 1304);
    v23 = *(a2 + 1320);
    v24 = *(a2 + 1352);
    *(a1 + 1336) = *(a2 + 1336);
    *(a1 + 1352) = v24;
    *(a1 + 1304) = v22;
    *(a1 + 1320) = v23;
    v25 = *(a2 + 1368);
    v26 = *(a2 + 1384);
    v27 = *(a2 + 1400);
    *(a1 + 1412) = *(a2 + 1412);
    *(a1 + 1384) = v26;
    *(a1 + 1400) = v27;
    *(a1 + 1368) = v25;
    memcpy((a1 + 1432), (a2 + 1432), 0x201uLL);
    *(a1 + 1952) = *(a2 + 1952);
    v28 = *(a2 + 1960);
    *(a1 + 1960) = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    v29 = *(a2 + 1968);
    v30 = *(a2 + 1984);
    *(a1 + 2000) = *(a2 + 2000);
    *(a1 + 1984) = v30;
    *(a1 + 1968) = v29;
    v31 = *(a2 + 2016);
    v32 = *(a2 + 2032);
    v33 = *(a2 + 2048);
    *(a1 + 2057) = *(a2 + 2057);
    *(a1 + 2048) = v33;
    *(a1 + 2032) = v32;
    *(a1 + 2016) = v31;
    *(a1 + 2080) = 1;
  }

  sub_1000FA82C(a1 + 2088, a2 + 2088);
  sub_100105E8C(a1 + 2120, (a2 + 2120));
  sub_1000FA3E4((a1 + 2272), (a2 + 2272));
  return a1;
}

void sub_1000F9E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v11 + 47) < 0)
  {
    operator delete(*(v10 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000FA008(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002887D4(result, a4);
  }

  return result;
}

void sub_1000FA070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000F8D88(&a9);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000FA090(_BYTE *a1, __int128 *a2)
{
  *a1 = 0;
  a1[24] = 0;
  sub_10039468C(a1, a2);
  return a1;
}

void sub_1000FA0C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018714AC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FA0E0(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = *a2;
    *(a1 + 13) = *(a2 + 13);
    *a1 = v4;
    if (*(a2 + 47) < 0)
    {
      sub_100007244((a1 + 24), *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
    }

    sub_1002DA384(a1 + 48, a2 + 48);
    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_1000FA168(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    sub_10067E130(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000FA1A0(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10031B65C(result, a4);
  }

  return result;
}

void sub_1000FA200(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000FA21C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    sub_100103020(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    if (*(a2 + 71) < 0)
    {
      sub_100007244((a1 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v4 = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = v4;
    }

    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_1000FA298(_Unwind_Exception *a1)
{
  sub_1004906DC(v1);
  if (*(v1 + 72) == 1)
  {
    sub_10067E0EC(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000FA2C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    sub_100103020(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    if (*(a2 + 79) < 0)
    {
      sub_100007244((a1 + 56), *(a2 + 56), *(a2 + 64));
    }

    else
    {
      v4 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v4;
    }

    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_1000FA34C(_Unwind_Exception *a1)
{
  sub_1004906DC(v1);
  if (*(v1 + 80) == 1)
  {
    sub_10067E0A8(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000FA37C(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10031D97C(result, *a2, *(a2 + 8), 0x6F96F96F96F96F97 * ((*(a2 + 8) - *a2) >> 2));
    *(v2 + 24) = 1;
  }

  return result;
}

_BYTE *sub_1000FA3E4(_BYTE *a1, __int128 *a2)
{
  *a1 = 0;
  a1[24] = 0;
  sub_10039468C(a1, a2);
  return a1;
}

void sub_1000FA414(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018FE7C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FA434(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:

      sub_1000FA8CC(a3, a2);
    case 7:

      sub_1002E9E8C(a2, a3);
    case 0x14:

      sub_1007BE178(a2, a3);
    default:
      sub_10053508C();
  }
}

const char *sub_1000FA5E4(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  result = "None";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "Wifi::ScanReady";
      break;
    case 2:
      result = "Wifi::ScanError";
      break;
    case 3:
      result = "Wifi::ScanBusy";
      break;
    case 4:
      result = "Wifi::Power";
      break;
    case 5:
      result = "Wifi::LinkStatus";
      break;
    case 6:
      result = "Wifi::Roam";
      break;
    case 7:
      result = "Wifi::Scan";
      break;
    case 8:
      result = "Wifi::Wsb";
      break;
    case 9:
      result = "System::Privacy";
      break;
    case 10:
      result = "System::Reachability";
      break;
    case 11:
      result = "System::CoarseMotion";
      break;
    case 12:
      result = "System::BatterySaverMode";
      break;
    case 13:
      result = "System::DeviceWake";
      break;
    case 14:
      result = "System::CompanionNearby";
      break;
    case 15:
      result = "System::SignalEnvironment";
      break;
    case 16:
      result = "System::LeechLocation";
      break;
    case 17:
      result = "System::MetricHeartbeat";
      break;
    case 18:
      result = "System::Elevation";
      break;
    case 19:
      result = "Network::AlsError";
      break;
    case 20:
      result = "Network::AlsFinished";
      break;
    case 21:
      result = "Network::AlsRequestResult";
      break;
    case 22:
      result = "Network::AlsAllUnknown";
      break;
    case 23:
      result = "Client::EmergencyState";
      break;
    case 24:
      result = "Client::LocationRequest";
      break;
    case 25:
      result = "Client::Registration";
      break;
    case 26:
      result = "Client::Unregistration";
      break;
    case 27:
      result = "Client::UpdateTimer";
      break;
    case 28:
      result = "Client::WsbTimer";
      break;
    case 29:
      result = "ReprocessWifiScanBuffer";
      break;
    default:
      sub_10053508C();
  }

  return result;
}

uint64_t sub_1000FA82C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1000FA37C(a1, a2);
  return a1;
}

void sub_1000FA85C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018D08DC(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000FA87C(_BYTE *a1, __int128 *a2)
{
  *a1 = 0;
  a1[24] = 0;
  sub_10039468C(a1, a2);
  return a1;
}

void sub_1000FA8AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018FE7C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000FA9A0(_Unwind_Exception *a1)
{
  if (*(v1 + 6551) < 0)
  {
    operator delete(*(v1 + v2));
  }

  sub_1007BE994(v1);
  _Unwind_Resume(a1);
}

void sub_1000FAA50(_Unwind_Exception *a1)
{
  v3 = *(v1 + 6536);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_1007BE994(v1);
  _Unwind_Resume(a1);
}

void sub_1000FAAD0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  *(a1 + 272) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1408) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1440) = 0;
  sub_1000FAC0C(a1 + 1448);
}

void sub_1000FAB74(_Unwind_Exception *a1)
{
  if (*(v1 + 1440) == 1 && *(v1 + 1439) < 0)
  {
    operator delete(*(v1 + 1416));
  }

  sub_10067E180(v1 + 1264);
  if (*(v1 + 1256) == 1)
  {
    v5 = *(v1 + 1232);
    if (v5)
    {
      *(v1 + 1240) = v5;
      operator delete(v5);
    }
  }

  if (*(v1 + 1224) == 1)
  {
    v6 = *(v1 + 1104);
    if (v6)
    {
      sub_100008080(v6);
    }
  }

  if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
  {
    operator delete(*(v1 + 384));
  }

  sub_10067E1D0(v3);
  sub_10067E22C(v2);
  sub_10067E274(v1);
  _Unwind_Resume(a1);
}

void sub_1000FB090(_Unwind_Exception *a1)
{
  v3 = *(v1 + 3296);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_1005F3518(v1 + 2976);
  v4 = *(v1 + 2840);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(v1 + 1936);
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = *(v1 + 1808);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(v1 + 1000);
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = *(v1 + 304);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (*(v1 + 280) == 1 && *(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  v9 = *(v1 + 184);
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = *(v1 + 168);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(v1 + 152);
  if (v11)
  {
    sub_100008080(v11);
  }

  _Unwind_Resume(a1);
}

double sub_1000FB170(uint64_t a1)
{
  *a1 = xmmword_101D210A0;
  *(a1 + 16) = xmmword_101D210A0;
  *(a1 + 32) = sub_1000F7F38()[3];
  *(a1 + 40) = sub_1000F7F38()[4];
  *(a1 + 48) = sub_1000F7F38()[5];
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 56) = _Q0;
  *(a1 + 72) = _Q0;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t sub_1000FB1DC(uint64_t a1)
{
  v3 = 7;
  strcpy(&v2, "default");
  return sub_100103CE8(a1, 0, 0, &v2, 0.0);
}

uint64_t sub_1000FB234(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  v10 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000FB724((a1 + 192), a2 + 192);
  *(a1 + 288) = *(a2 + 288);
  v13 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v14;
  v15 = *(a2 + 344);
  v16 = *(a2 + 360);
  v17 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v17;
  *(a1 + 344) = v15;
  *(a1 + 360) = v16;
  v18 = *(a2 + 408);
  v19 = *(a2 + 424);
  v20 = *(a2 + 440);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v19;
  *(a1 + 440) = v20;
  *(a1 + 408) = v18;
  memcpy((a1 + 472), (a2 + 472), 0x201uLL);
  *(a1 + 992) = *(a2 + 992);
  v21 = *(a2 + 1000);
  *(a1 + 1000) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(a2 + 1008);
  v23 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v22;
  *(a1 + 1024) = v23;
  v24 = *(a2 + 1056);
  v25 = *(a2 + 1072);
  v26 = *(a2 + 1088);
  *(a1 + 1097) = *(a2 + 1097);
  *(a1 + 1088) = v26;
  *(a1 + 1072) = v25;
  *(a1 + 1056) = v24;
  v27 = *(a2 + 1168);
  v28 = *(a2 + 1184);
  v29 = *(a2 + 1200);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1200) = v29;
  *(a1 + 1184) = v28;
  *(a1 + 1168) = v27;
  v30 = *(a2 + 1232);
  v31 = *(a2 + 1248);
  v32 = *(a2 + 1260);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1260) = v32;
  *(a1 + 1248) = v31;
  *(a1 + 1232) = v30;
  v33 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v33;
  memcpy((a1 + 1280), (a2 + 1280), 0x201uLL);
  *(a1 + 1800) = *(a2 + 1800);
  v34 = *(a2 + 1808);
  *(a1 + 1808) = v34;
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  v35 = *(a2 + 1816);
  v36 = *(a2 + 1848);
  *(a1 + 1832) = *(a2 + 1832);
  *(a1 + 1848) = v36;
  *(a1 + 1816) = v35;
  v37 = *(a2 + 1864);
  v38 = *(a2 + 1880);
  v39 = *(a2 + 1896);
  *(a1 + 1905) = *(a2 + 1905);
  *(a1 + 1880) = v38;
  *(a1 + 1896) = v39;
  *(a1 + 1864) = v37;
  *(a1 + 1928) = *(a2 + 1928);
  v40 = *(a2 + 1936);
  *(a1 + 1936) = v40;
  if (v40)
  {
    atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 1944), (a2 + 1944), 0x170uLL);
  memcpy((a1 + 2312), (a2 + 2312), 0x201uLL);
  *(a1 + 2832) = *(a2 + 2832);
  v41 = *(a2 + 2840);
  *(a1 + 2840) = v41;
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  v42 = *(a2 + 2848);
  v43 = *(a2 + 2864);
  *(a1 + 2880) = *(a2 + 2880);
  *(a1 + 2864) = v43;
  *(a1 + 2848) = v42;
  v44 = *(a2 + 2896);
  v45 = *(a2 + 2912);
  v46 = *(a2 + 2928);
  *(a1 + 2937) = *(a2 + 2937);
  *(a1 + 2928) = v46;
  *(a1 + 2912) = v45;
  *(a1 + 2896) = v44;
  v47 = *(a2 + 2960);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2960) = v47;
  v48 = *(a2 + 2976);
  *(a1 + 2984) = *(a2 + 2984);
  *(a1 + 2976) = v48;
  if (*(a2 + 3015) < 0)
  {
    sub_100007244((a1 + 2992), *(a2 + 2992), *(a2 + 3000));
  }

  else
  {
    v49 = *(a2 + 2992);
    *(a1 + 3008) = *(a2 + 3008);
    *(a1 + 2992) = v49;
  }

  *(a1 + 3016) = *(a2 + 3016);
  v50 = *(a2 + 3032);
  v51 = *(a2 + 3048);
  v52 = *(a2 + 3064);
  *(a1 + 3076) = *(a2 + 3076);
  *(a1 + 3048) = v51;
  *(a1 + 3064) = v52;
  *(a1 + 3032) = v50;
  v53 = (a1 + 3096);
  if (*(a2 + 3119) < 0)
  {
    sub_100007244(v53, *(a2 + 3096), *(a2 + 3104));
  }

  else
  {
    v54 = *(a2 + 3096);
    *(a1 + 3112) = *(a2 + 3112);
    *v53 = v54;
  }

  v55 = *(a2 + 3120);
  v56 = *(a2 + 3136);
  *(a1 + 3152) = *(a2 + 3152);
  *(a1 + 3136) = v56;
  *(a1 + 3120) = v55;
  v57 = *(a2 + 3168);
  v58 = *(a2 + 3184);
  v59 = *(a2 + 3200);
  *(a1 + 3216) = *(a2 + 3216);
  *(a1 + 3200) = v59;
  *(a1 + 3184) = v58;
  *(a1 + 3168) = v57;
  v60 = *(a2 + 3232);
  v61 = *(a2 + 3248);
  v62 = *(a2 + 3264);
  *(a1 + 3280) = *(a2 + 3280);
  *(a1 + 3264) = v62;
  *(a1 + 3248) = v61;
  *(a1 + 3232) = v60;
  *(a1 + 3288) = *(a2 + 3288);
  v63 = *(a2 + 3296);
  *(a1 + 3296) = v63;
  if (v63)
  {
    atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
  }

  v64 = *(a2 + 3304);
  v65 = *(a2 + 3320);
  v66 = *(a2 + 3336);
  *(a1 + 3351) = *(a2 + 3351);
  *(a1 + 3320) = v65;
  *(a1 + 3336) = v66;
  *(a1 + 3304) = v64;
  *(a1 + 3360) = *(a2 + 3360);
  v67 = *(a2 + 3368);
  *(a1 + 3368) = v67;
  if (v67)
  {
    atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
  }

  v68 = *(a2 + 3376);
  *(a1 + 3385) = *(a2 + 3385);
  *(a1 + 3376) = v68;
  return a1;
}

void sub_1000FB67C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 3015) < 0)
  {
    operator delete(*v2);
  }

  v4 = *(v1 + 2840);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(v1 + 1936);
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = *(v1 + 1808);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(v1 + 1000);
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = *(v1 + 304);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (*(v1 + 280) == 1 && *(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  v9 = *(v1 + 184);
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = *(v1 + 168);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(v1 + 152);
  if (v11)
  {
    sub_100008080(v11);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000FB724(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[88] = 0;
  if (*(a2 + 88) == 1)
  {
    sub_1001005C4(a1, a2);
    a1[88] = 1;
  }

  return a1;
}

void sub_1000FB76C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1)
  {
    sub_101872B04(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000FB78C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  return __dst;
}

void sub_1000FB7DC(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192926C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929280();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000FB9B8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000FB9B8(uint64_t result, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if (*a3 == 5)
  {
    v6 = sub_1000081AC();
    v7 = *(result + 3648);
    v8 = v6 - v7;
    if (v7 == 0.0 || v8 >= 1.0)
    {
      *(result + 3648) = v6;
      v10 = a4[7];
      v26 = a4[6];
      v27 = v10;
      v28[0] = a4[8];
      *(v28 + 12) = *(a4 + 140);
      v11 = a4[3];
      v22 = a4[2];
      v23 = v11;
      v12 = a4[5];
      v24 = a4[4];
      v25 = v12;
      v13 = a4[1];
      v20 = *a4;
      v21 = v13;
      memcpy(v29, a4 + 10, sizeof(v29));
      v14 = *(a4 + 85);
      v15 = *(a4 + 86);
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      *(v48 + 9) = *(a4 + 785);
      v16 = *(a4 + 776);
      v47 = *(a4 + 760);
      v48[0] = v16;
      v17 = *(a4 + 712);
      v43 = *(a4 + 696);
      v44 = v17;
      v18 = *(a4 + 744);
      v45 = *(a4 + 728);
      v46 = v18;
      v32 = v21;
      v31 = v20;
      v36 = v25;
      v35 = v24;
      v34 = v23;
      v33 = v22;
      *(v39 + 12) = *(v28 + 12);
      v39[0] = v28[0];
      v38 = v27;
      v37 = v26;
      memcpy(v40, v29, sizeof(v40));
      v41 = v14;
      v42 = v15;
      v30 = 16;
      sub_1000FFE90(result);
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v19 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v20) = 134349056;
      *(&v20 + 4) = v8;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "@WifiLogic, LeechLocation event dropped due to 1s rate limit, timeSinceLastEvent=%{public}.6f", &v20, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD46C();
    }
  }
}

__n128 sub_1000FBC00(uint64_t *a1, __int128 *a2)
{
  sub_1001039FC(*a1);
  v4 = *a1;
  v5 = *a2;
  *(v4 + 24) = a2[1];
  *(v4 + 8) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(v4 + 88) = a2[5];
  *(v4 + 72) = v8;
  *(v4 + 56) = v7;
  *(v4 + 40) = v6;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  *(v4 + 148) = *(a2 + 140);
  *(v4 + 136) = v11;
  *(v4 + 120) = v10;
  *(v4 + 104) = v9;
  memcpy((v4 + 168), a2 + 10, 0x201uLL);
  *(v4 + 688) = *(a2 + 85);
  v12 = *(a2 + 86);
  *(v4 + 696) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 696);
  v14 = *(a2 + 728);
  *(v4 + 720) = *(a2 + 712);
  *(v4 + 736) = v14;
  *(v4 + 704) = v13;
  result = *(a2 + 744);
  v16 = *(a2 + 760);
  v17 = *(a2 + 776);
  *(v4 + 793) = *(a2 + 785);
  *(v4 + 768) = v16;
  *(v4 + 784) = v17;
  *(v4 + 752) = result;
  **a1 = *(a1 + 2);
  return result;
}

void sub_1000FC0E0(void *a1@<X8>)
{
  if ((atomic_load_explicit(byte_102663F90, memory_order_acquire) & 1) == 0)
  {
    sub_101B4B4AC();
  }

  if (qword_102663F70 != -1)
  {
    sub_101B4B51C();
  }

  v2 = *(&xmmword_102663FA0 + 1);
  *a1 = xmmword_102663FA0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1000FC150(double *a1, uint64_t a2, uint64_t *a3)
{
  if ((atomic_load_explicit(qword_102663F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_102663F80))
  {
    word_102663F78 = sub_10116627C();
    __cxa_guard_release(qword_102663F80);
  }

  v6 = &word_102663F78;
  if ((word_102663F78 & 0x100) == 0)
  {
    v6 = sub_100100690();
  }

  if (*v6 == 1)
  {
    v7 = *(a2 + 96);
    if (v7 == 10 || v7 == 1)
    {
      v9 = *(a2 + 76) - *a1;
      if (v9 >= *(sub_100100690() + 4))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B4B530();
        }

        v10 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_1001D78F4(v30);
          v11 = v31;
          v12 = v30[0];
          *v27 = *a3;
          sub_10018F0D0(&__p);
          v13 = v30;
          if (v11 < 0)
          {
            v13 = v12;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136643075;
          *(buf.__r_.__value_.__r.__words + 4) = v13;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Attempting to harvest location %{sensitive}s for associated AP %{private}s", &buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v31 < 0)
          {
            operator delete(v30[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B4B544(v30);
          v17 = qword_1025D4628;
          sub_1001D78F4(&__p);
          v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v19 = __p.__r_.__value_.__r.__words[0];
          v24 = *a3;
          sub_10018F0D0(&buf);
          v20 = &__p;
          if (v18 < 0)
          {
            v20 = v19;
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v27 = 136643075;
          *&v27[4] = v20;
          v28 = 2081;
          v29 = p_buf;
          _os_log_send_and_compose_impl(2, 0, v30, 1628, dword_100000000, v17, 2, "Attempting to harvest location %{sensitive}s for associated AP %{private}s", v27, 22, v24);
          v23 = v22;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApGpsIndoorHarvester::harvestLocationForAssociatedAp(const CLDaemonLocation &, const CLWifiService_Type::AccessPoint &)", "%s\n", v23);
          if (v23 != v30)
          {
            free(v23);
          }
        }

        sub_10018F18C(v30, a3, a2, -1);
        sub_10001A3E8(v15, v16);
        if (sub_10001CF3C())
        {
          sub_1001CBD74(&__p);
          sub_10018F858(__p.__r_.__value_.__l.__data_, v30);
        }

        else
        {
          sub_1001CBD74(&__p);
          sub_10023FC28(__p.__r_.__value_.__l.__data_, v30);
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          sub_100008080(__p.__r_.__value_.__l.__size_);
        }

        *a1 = *(a2 + 76);
      }
    }
  }
}

BOOL sub_1000FC51C(uint64_t a1, uint64_t a2)
{
  result = sub_100072814(a2);
  if (result)
  {
    v5 = *(a2 + 96);
    if (v5 != 10 && v5 != 1)
    {
      return 0;
    }

    if (*(a2 + 20) > 30.0)
    {
      return 0;
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (sub_1001D24B0(a2, Current) > *a1)
    {
      return 0;
    }

    v8 = *(a1 + 48);
    if (v8 && ((v9 = *(a2 + 76), v10 = *(*(*(a1 + 16) + 8 * ((v8 + *(a1 + 40) - 1) / 0x1AuLL)) + 156 * ((v8 + *(a1 + 40) - 1) % 0x1AuLL) + 76), v9 >= v10) ? (v11 = v9 - v10 < 1.0) : (v11 = 1), v11))
    {
      return 0;
    }

    else
    {
      sub_100226FAC((a1 + 8), a2);
      while (*(a1 + 48))
      {
        v12 = *(*(a1 + 16) + 8 * (*(a1 + 40) / 0x1AuLL)) + 156 * (*(a1 + 40) % 0x1AuLL);
        v13 = CFAbsoluteTimeGetCurrent();
        if (sub_1001D24B0(v12, v13) <= *a1)
        {
          break;
        }

        *(a1 + 40) = vaddq_s64(*(a1 + 40), xmmword_101C66230);
        sub_1001FD668(a1 + 8, 1);
      }

      v14 = sub_1000081AC();
      if (v14 - *(a1 + 56) >= 10.0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101B44984();
        }

        v15 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 48);
          sub_1001D78F4(__p);
          v17 = v41 >= 0 ? __p : __p[0];
          *buf = 134349315;
          *&buf[4] = v16;
          v33 = 2081;
          v34 = v17;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLReferenceLocations, size %{public}zu, latest ref location %{private}s", buf, 0x16u);
          if (v41 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101B44998();
          }

          v21 = qword_1025D4608;
          v22 = *(a1 + 48);
          sub_1001D78F4(buf);
          if (v35 >= 0)
          {
            v23 = buf;
          }

          else
          {
            v23 = *buf;
          }

          v36 = 134349315;
          v37 = v22;
          v38 = 2081;
          v39 = v23;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 2, "CLReferenceLocations, size %{public}zu, latest ref location %{private}s", &v36, 22);
          v25 = v24;
          if (v35 < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLReferenceLocations::receiveLocation(const CLDaemonLocation &)", "%s\n", v25);
          if (v25 != __p)
          {
            free(v25);
          }
        }

        if (qword_1025D4600 != -1)
        {
          sub_101B44998();
        }

        v18 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(a1 + 48);
          sub_1001D78F4(__p);
          v20 = v41 >= 0 ? __p : __p[0];
          *buf = 134349315;
          *&buf[4] = v19;
          v33 = 2081;
          v34 = v20;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLReferenceLocations, size %{public}zu, oldest ref location %{private}s", buf, 0x16u);
          if (v41 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101B44998();
          }

          v26 = qword_1025D4608;
          v27 = *(a1 + 48);
          sub_1001D78F4(buf);
          if (v35 >= 0)
          {
            v28 = buf;
          }

          else
          {
            v28 = *buf;
          }

          v36 = 134349315;
          v37 = v27;
          v38 = 2081;
          v39 = v28;
          LODWORD(v31) = 22;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v26, 2, "CLReferenceLocations, size %{public}zu, oldest ref location %{private}s", &v36, v31);
          v30 = v29;
          if (v35 < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLReferenceLocations::receiveLocation(const CLDaemonLocation &)", "%s\n", v30);
          if (v30 != __p)
          {
            free(v30);
          }
        }

        *(a1 + 56) = v14;
      }

      return 1;
    }
  }

  return result;
}

__n128 sub_1000FCAB8(_OWORD **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  *a2 = **a1;
  *(a2 + 16) = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  *(a2 + 64) = v3[4];
  *(a2 + 80) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  *(a2 + 140) = *(v3 + 140);
  *(a2 + 112) = v9;
  *(a2 + 128) = v10;
  *(a2 + 96) = v8;
  memcpy((a2 + 160), v3 + 10, 0x201uLL);
  v11 = *(v3 + 85);
  v12 = *(v3 + 86);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 680) = v11;
  v13 = *(a2 + 688);
  *(a2 + 688) = v12;
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = *(v3 + 696);
  v15 = *(v3 + 728);
  *(a2 + 712) = *(v3 + 712);
  *(a2 + 728) = v15;
  *(a2 + 696) = v14;
  result = *(v3 + 744);
  v17 = *(v3 + 760);
  v18 = *(v3 + 776);
  *(a2 + 785) = *(v3 + 785);
  *(a2 + 760) = v17;
  *(a2 + 776) = v18;
  *(a2 + 744) = result;
  return result;
}

void sub_1000FCB78(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:

      sub_1000FCF34(a3, a2);
    case 7:

      sub_1002F2DCC(a2, a3);
    case 0x14:

      sub_100A313A8(a2, a3);
    case 0x18:

      sub_1001E82F4(a2, a3);
    default:
      sub_10053508C();
  }
}

uint64_t sub_1000FCCC8(uint64_t a1)
{
  sub_100107AE0(a1 + 1448);
  if (*(a1 + 1440) == 1 && *(a1 + 1439) < 0)
  {
    operator delete(*(a1 + 1416));
  }

  if (*(a1 + 1408) == 1)
  {
    if (*(a1 + 1407) < 0)
    {
      operator delete(*(a1 + 1384));
    }

    if (*(a1 + 1303) < 0)
    {
      operator delete(*(a1 + 1280));
    }
  }

  if (*(a1 + 1256) == 1)
  {
    v2 = *(a1 + 1232);
    if (v2)
    {
      *(a1 + 1240) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 1224) == 1)
  {
    v3 = *(a1 + 1104);
    if (v3)
    {
      sub_100008080(v3);
    }
  }

  if (*(a1 + 408) == 1 && *(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 256) == 1)
  {
    if (*(a1 + 248) == 1)
    {
      v4 = *(a1 + 224);
      if (v4)
      {
        *(a1 + 232) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }
  }

  if (*(a1 + 160) == 1)
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    sub_1004906DC(a1 + 88);
  }

  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    sub_1004906DC(a1);
  }

  return a1;
}

void sub_1000FD0B8(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:

      sub_1000FD058(a3, a2);
    case 7:

      sub_1002F2E84(a2, a3);
    case 8:

      sub_10031D2D8(a2, a3);
    case 0x1D:

      sub_100BE1544(a2, a3);
    default:
      sub_10053508C();
  }
}

void sub_1000FD338(int *a1@<X0>, _BYTE *a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:

      sub_1000FD2D8(a3, a2);
    case 0x17:

      sub_101139998(a2, a3);
    default:
      sub_10053508C();
  }
}

void sub_1000FD574(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 9:
    case 0xC:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1D:

      sub_1000FD514(a3, a2);
    case 2:

      sub_100CEBBC8(a2, a3);
    case 3:

      sub_100CEB82C(a2, a3);
    case 4:

      sub_100CEB440(a2, a3);
    case 5:

      sub_100CEBDBC(a2, a3);
    case 6:
      sub_1000FD514(a3, a2);
    case 7:

      sub_1002F4120(a2, a3);
    case 8:

      sub_10031D798(a2, a3);
    case 0xA:

      sub_100CEC7D4(a2, a3);
    case 0xB:

      sub_100CEBF84(a2, a3);
    case 0xD:

      sub_10027968C(a2, a3);
    case 0x14:

      sub_100CEC5F8(a2, a3);
    case 0x15:

      sub_100CEC26C(a2, a3);
    case 0x18:

      sub_1001E3C40(a2, a3);
    case 0x1A:
      sub_1000FD514(a3, a2);
    case 0x1B:

      sub_100288010(a2, a3);
    case 0x1C:

      sub_100CECB20(a2, a3);
    default:
      sub_10053508C();
  }
}

void sub_1000FDAD8(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1D:

      sub_1000FDA78(a3, a2);
    case 0x14:

      sub_100D9A82C(a2, a3);
    case 0x1C:

      sub_100D9A648(a2, a3);
    default:
      sub_10053508C();
  }
}

uint64_t sub_1000FDC18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v29);
  v4 = sub_100038730(&v30, "Request, type, ", 15);
  v5 = *a1 - 1;
  if (v5 > 6)
  {
    v6 = "none";
  }

  else
  {
    v6 = off_10246B3C8[v5];
  }

  v7 = strlen(v6);
  v8 = sub_100038730(v4, v6, v7);
  v9 = sub_100038730(v8, ", lowPriority, ", 15);
  if (*(a1 + 8))
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (*(a1 + 8))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = sub_100038730(v9, v10, v11);
  v13 = sub_100038730(v12, ", requester, ", 13);
  v14 = *(a1 + 39);
  if (v14 >= 0)
  {
    v15 = a1 + 16;
  }

  else
  {
    v15 = *(a1 + 16);
  }

  if (v14 >= 0)
  {
    v16 = *(a1 + 39);
  }

  else
  {
    v16 = *(a1 + 24);
  }

  v17 = sub_100038730(v13, v15, v16);
  sub_100038730(v17, ", numOfRequestedScans, ", 23);
  v18 = std::ostream::operator<<();
  v19 = sub_100038730(v18, ", timestamp, ", 13);
  v20 = *v19;
  *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v19 + *(v20 - 24) + 16) = 1;
  v21 = std::ostream::operator<<();
  v22 = sub_100038730(v21, ", age, ", 7);
  v23 = *v22;
  *(v22 + *(*v22 - 24) + 8) = *(v22 + *(*v22 - 24) + 8) & 0xFFFFFEFB | 4;
  *(v22 + *(v23 - 24) + 16) = 1;
  CFAbsoluteTimeGetCurrent();
  std::ostream::operator<<();
  if ((v37 & 0x10) != 0)
  {
    v25 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v25 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v24 = 0;
      a2[23] = 0;
      goto LABEL_29;
    }

    locale = v32[1].__locale_;
    v25 = v32[3].__locale_;
  }

  v24 = v25 - locale;
  if ((v25 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v24 >= 0x17)
  {
    operator new();
  }

  a2[23] = v24;
  if (v24)
  {
    memmove(a2, locale, v24);
  }

LABEL_29:
  a2[v24] = 0;
  v30 = v27;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000FE02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000FE05C(uint64_t a1, int *a2, _OWORD *a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_1000FE594(a3);
    }
  }
}

void sub_1000FE560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_1000FE660(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_10010794C(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_1001079E8(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1003286C0();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1003286C0();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLMotionState_Type::Notification, CLMotionState_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLMotionState_Type::Notification, NotificationData_T = CLMotionState_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

void sub_1000FEA1C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B7BA38();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionState7::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B7BA4C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionState7::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000FEBE8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

_BYTE *sub_1000FEBE8(_BYTE *result, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = result;
  v7 = *a3;
  if (*a3 > 12)
  {
    if (v7 == 13)
    {
      v18 = sub_10123C178(result);
      v19 = v6[532];

      return sub_1000C3344(v6, v18, v19);
    }

    else if (v7 == 22)
    {
      v13 = *(a4 + 112);
      v21[6] = *(a4 + 96);
      v21[7] = v13;
      v22[0] = *(a4 + 128);
      *(v22 + 12) = *(a4 + 140);
      v14 = *(a4 + 48);
      v21[2] = *(a4 + 32);
      v21[3] = v14;
      v15 = *(a4 + 80);
      v21[4] = *(a4 + 64);
      v21[5] = v15;
      v16 = *(a4 + 16);
      v21[0] = *a4;
      v21[1] = v16;
      LODWORD(v20[0]) = 9;
      (*(*result + 152))(result, v20, v21, 1, 0xFFFFFFFFLL, 0);
      result = sub_10030D934(*(a4 + 808));
      if (result)
      {
        for (i = 0; i < result; ++i)
        {
          sub_10030E2C0(*(a4 + 808), i, v20);
          sub_1000FEE18(v6, a3, v20);
          result = sub_10030D934(*(a4 + 808));
        }
      }
    }
  }

  else
  {
    if (v7)
    {
      v8 = v7 == 5;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      sub_1000FEE18(result, a3, a4);
      v9 = *(a4 + 112);
      v23[6] = *(a4 + 96);
      v23[7] = v9;
      v24[0] = *(a4 + 128);
      *(v24 + 12) = *(a4 + 140);
      v10 = *(a4 + 48);
      v23[2] = *(a4 + 32);
      v23[3] = v10;
      v11 = *(a4 + 80);
      v23[4] = *(a4 + 64);
      v23[5] = v11;
      v12 = *(a4 + 16);
      v23[0] = *a4;
      v23[1] = v12;
      LODWORD(v20[0]) = 9;
      return (*(*v6 + 152))(v6, v20, v23, 1, 0xFFFFFFFFLL, 0);
    }
  }

  return result;
}

void sub_1000FEE18(uint64_t a1, int *a2, uint64_t a3)
{
  if (qword_1025D4250 != -1)
  {
    sub_101B7BA74();
  }

  v6 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = *(a3 + 96);
    v9 = *(a3 + 44);
    v10 = *(a3 + 52);
    v11 = *(a3 + 76);
    v12 = *(a3 + 20);
    v13 = *(a3 + 4);
    v14 = *(a3 + 12);
    LODWORD(buf) = 67110912;
    HIDWORD(buf) = v7;
    v57 = 1024;
    v58 = v8;
    v59 = 2048;
    v60 = v9;
    v61 = 2048;
    v62 = v10;
    v63 = 2048;
    v64 = v11;
    v65 = 2048;
    v66 = v12;
    v67 = 2048;
    v68 = v13;
    v69 = 2048;
    v70 = v14;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Notification, Type, Speed, SpeedUncertainty, LocationTimestamp, hAcc, Lat, Long, %d, %d, %f, %f, %f, %f, %f, %f", &buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B7C42C(a2, a3);
  }

  if (*(a1 + 528) == 1)
  {
    v46 = off_102491468;
    v49 = *(a3 + 96);
    v15 = *(a1 + 530);
    v16 = vdup_n_s32(v15);
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    v18 = vandq_s8(*(a3 + 4), vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)));
    v50 = *(a3 + 44);
    v51 = v18;
    v52 = *(a3 + 20);
    v53 = *(a3 + 36);
    v54 = *(a3 + 60);
    v55 = v15;
    v48 = *(a3 + 76);
    Current = CFAbsoluteTimeGetCurrent();
    v21 = sub_10015ADF4(v19, v20);
    sub_1010CF5BC(v21, &v46);
    sub_10152D354(&buf);
    sub_1015559A4(&buf);
    v73 |= 1u;
    v71 = Current;
    v22 = v72;
    v23 = *(a3 + 76);
    *(v72 + 100) |= 0x100u;
    *(v22 + 72) = v23;
    v24 = v72;
    v25 = *(a3 + 96);
    *(v72 + 100) |= 0x1000u;
    *(v24 + 96) = v25;
    v26 = v72;
    v27 = *(a3 + 44);
    *(v72 + 100) |= 0x40u;
    *(v26 + 56) = v27;
    v28 = v72;
    v29 = *(a3 + 52);
    *(v72 + 100) |= 0x80u;
    *(v28 + 64) = v29;
    v30 = v72;
    v31 = *(a3 + 4);
    if (!*(a1 + 530))
    {
      v31 = 0.0;
    }

    *(v72 + 100) |= 0x10u;
    *(v30 + 40) = v31;
    v32 = v72;
    v33 = *(a3 + 12);
    if (!*(a1 + 530))
    {
      v33 = 0.0;
    }

    *(v72 + 100) |= 0x20u;
    *(v32 + 48) = v33;
    v34 = v72;
    v35 = *(a3 + 20);
    *(v72 + 100) |= 8u;
    *(v34 + 32) = v35;
    v36 = v72;
    v37 = *(a3 + 28);
    *(v72 + 100) |= 1u;
    *(v36 + 8) = v37;
    v38 = v72;
    v39 = *(a3 + 36);
    *(v72 + 100) |= 0x200u;
    *(v38 + 80) = v39;
    v40 = v72;
    v41 = *(a3 + 60);
    *(v72 + 100) |= 2u;
    *(v40 + 16) = v41;
    v42 = v72;
    v43 = *(a3 + 68);
    *(v72 + 100) |= 4u;
    *(v42 + 24) = v43;
    v44 = v72;
    v45 = *(a1 + 530);
    *(v72 + 100) |= 0x800u;
    *(v44 + 92) = v45;
    if (qword_102637F48 != -1)
    {
      sub_101B7BC8C();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, &buf);
    }

    sub_101532FA8(&buf);
  }
}

void sub_1000FF198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

void sub_1000FF1B8(uint64_t a1, unsigned int *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B95E54();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiTilesManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B95E68();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiTilesManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000FF394(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000FF394(uint64_t a1, uint64_t a2, unsigned int *a3, __int128 *a4)
{
  if (*(a1 + 413))
  {
    if (*(a1 + 217))
    {
      if (*a3 == 5)
      {
        v7 = (*(**(a1 + 448) + 56))(*(a1 + 448), a2);
        v8 = *(a1 + 392);
        v9 = *(a1 + 252);
        v10 = v9 > *(a4 + 20) && v9 > 100.0;
        if (qword_1025D4620 != -1)
        {
          sub_101B2365C();
        }

        v11 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 392);
          v12 = *(a1 + 400);
          sub_100072AFC(a4, __p);
          v14 = (v55 & 0x80000000) == 0 ? __p : *__p;
          *buf = 134349827;
          *v59 = v13;
          *&v59[8] = 1026;
          *&v59[10] = v10;
          v60 = 2050;
          v61 = v12;
          v62 = 2085;
          v63 = v14;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "WIFITILE: onLocationNotification, fLastLocationDownloadCheckTimestamp, %{public}.1lf, isForceLocationCheck, %{public}d, fLastLocationProtectionCheckTimestamp, %{public}.1f, leech location, %{sensitive}s", buf, 0x26u);
          if (SBYTE3(v55) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101B2374C();
          }

          v43 = qword_1025D4628;
          v45 = *(a1 + 392);
          v44 = *(a1 + 400);
          sub_100072AFC(a4, v49);
          if (v50 >= 0)
          {
            v46 = v49;
          }

          else
          {
            v46 = v49[0];
          }

          *__p = 134349827;
          *&__p[4] = v45;
          v52 = 1026;
          v53 = v10;
          v54 = 2050;
          v55 = v44;
          v56 = 2085;
          v57 = v46;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v43, 2, "WIFITILE: onLocationNotification, fLastLocationDownloadCheckTimestamp, %{public}.1lf, isForceLocationCheck, %{public}d, fLastLocationProtectionCheckTimestamp, %{public}.1f, leech location, %{sensitive}s", __p, 38);
          v48 = v47;
          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v48);
          if (v48 != buf)
          {
            free(v48);
          }
        }

        v15 = a4[1];
        *(a1 + 232) = *a4;
        *(a1 + 248) = v15;
        v16 = a4[2];
        v17 = a4[3];
        v18 = a4[5];
        *(a1 + 296) = a4[4];
        *(a1 + 312) = v18;
        *(a1 + 264) = v16;
        *(a1 + 280) = v17;
        v19 = a4[6];
        v20 = a4[7];
        v21 = a4[8];
        *(a1 + 372) = *(a4 + 140);
        *(a1 + 344) = v20;
        *(a1 + 360) = v21;
        *(a1 + 328) = v19;
        if (v7 - v8 >= 600.0 || v10)
        {
          v22 = *(a1 + 252);
          if (v22 >= 0.0 && v22 <= 5000.0)
          {
            sub_10022FBB0(a1, a1 + 232, v7);
            sub_100233368(a1, 0, v7);
            sub_100235624(a1, a1 + 232);
            *(a1 + 392) = v7;
          }
        }

        if (*(a1 + 216) == 1 && (v7 - *(a1 + 400) >= 330.0 || v10))
        {
          v23 = a4[1];
          *(a1 + 232) = *a4;
          *(a1 + 248) = v23;
          v24 = a4[2];
          v25 = a4[3];
          v26 = a4[5];
          *(a1 + 296) = a4[4];
          *(a1 + 312) = v26;
          *(a1 + 264) = v24;
          *(a1 + 280) = v25;
          v27 = a4[6];
          v28 = a4[7];
          v29 = a4[8];
          *(a1 + 372) = *(a4 + 140);
          *(a1 + 344) = v28;
          *(a1 + 360) = v29;
          *(a1 + 328) = v27;
          *(a1 + 400) = v7;
        }
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101B23F7C();
        }

        v40 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v41 = *a3;
          v42 = sub_100048D98(*a3);
          *buf = 67109378;
          *v59 = v41;
          *&v59[4] = 2080;
          *&v59[6] = v42;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "WIFITILE: onLocationNotification, unknown notification, %d, %s", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B274B4(a3);
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B2365C();
      }

      v31 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a1 + 216);
        *buf = 67240192;
        *v59 = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "WIFITILE: onLocationNotification, index is not available until first unlock, fDataProtectionEnabled, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B273C0(a1);
      }

      if (*a3 == 5)
      {
        v33 = *a4;
        *(a1 + 248) = a4[1];
        *(a1 + 232) = v33;
        v34 = a4[2];
        v35 = a4[3];
        v36 = a4[5];
        *(a1 + 296) = a4[4];
        *(a1 + 312) = v36;
        *(a1 + 264) = v34;
        *(a1 + 280) = v35;
        v37 = a4[6];
        v38 = a4[7];
        v39 = a4[8];
        *(a1 + 372) = *(a4 + 140);
        *(a1 + 344) = v38;
        *(a1 + 360) = v39;
        *(a1 + 328) = v37;
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v30 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WIFITILE: onLocationNotification, ignore leech when LS off", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B272DC();
    }
  }
}

uint64_t sub_1000FF93C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  v11 = *(a2 + 144);
  v10 = *(a2 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 152);
  *(a1 + 144) = v11;
  *(a1 + 152) = v10;
  if (v12)
  {
    sub_100008080(v12);
  }

  v14 = *(a2 + 160);
  v13 = *(a2 + 168);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 168);
  *(a1 + 160) = v14;
  *(a1 + 168) = v13;
  if (v15)
  {
    sub_100008080(v15);
  }

  v17 = *(a2 + 176);
  v16 = *(a2 + 184);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 184);
  *(a1 + 176) = v17;
  *(a1 + 184) = v16;
  if (v18)
  {
    sub_100008080(v18);
  }

  sub_1000F8F80(a1 + 192, a2 + 192);
  *(a1 + 288) = *(a2 + 288);
  v20 = *(a2 + 296);
  v19 = *(a2 + 304);
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 304);
  *(a1 + 296) = v20;
  *(a1 + 304) = v19;
  if (v21)
  {
    sub_100008080(v21);
  }

  v22 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v22;
  v23 = *(a2 + 344);
  v24 = *(a2 + 360);
  v25 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v25;
  *(a1 + 344) = v23;
  *(a1 + 360) = v24;
  v26 = *(a2 + 408);
  v27 = *(a2 + 424);
  v28 = *(a2 + 440);
  *(a1 + 452) = *(a2 + 452);
  *(a1 + 424) = v27;
  *(a1 + 440) = v28;
  *(a1 + 408) = v26;
  memcpy((a1 + 472), (a2 + 472), 0x201uLL);
  v29 = *(a2 + 992);
  v30 = *(a2 + 1000);
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 992) = v29;
  v31 = *(a1 + 1000);
  *(a1 + 1000) = v30;
  if (v31)
  {
    sub_100008080(v31);
  }

  v32 = *(a2 + 1008);
  v33 = *(a2 + 1024);
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1008) = v32;
  *(a1 + 1024) = v33;
  v34 = *(a2 + 1056);
  v35 = *(a2 + 1072);
  v36 = *(a2 + 1088);
  *(a1 + 1097) = *(a2 + 1097);
  *(a1 + 1088) = v36;
  *(a1 + 1072) = v35;
  *(a1 + 1056) = v34;
  v37 = *(a2 + 1168);
  v38 = *(a2 + 1184);
  v39 = *(a2 + 1200);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1200) = v39;
  *(a1 + 1184) = v38;
  *(a1 + 1168) = v37;
  v40 = *(a2 + 1232);
  v41 = *(a2 + 1248);
  v42 = *(a2 + 1260);
  *(a1 + 1216) = *(a2 + 1216);
  *(a1 + 1260) = v42;
  *(a1 + 1248) = v41;
  *(a1 + 1232) = v40;
  v43 = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a1 + 1120) = v43;
  memcpy((a1 + 1280), (a2 + 1280), 0x201uLL);
  v44 = *(a2 + 1800);
  v45 = *(a2 + 1808);
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1800) = v44;
  v46 = *(a1 + 1808);
  *(a1 + 1808) = v45;
  if (v46)
  {
    sub_100008080(v46);
  }

  v47 = *(a2 + 1816);
  v48 = *(a2 + 1848);
  *(a1 + 1832) = *(a2 + 1832);
  *(a1 + 1848) = v48;
  *(a1 + 1816) = v47;
  v49 = *(a2 + 1864);
  v50 = *(a2 + 1880);
  v51 = *(a2 + 1896);
  *(a1 + 1905) = *(a2 + 1905);
  *(a1 + 1880) = v50;
  *(a1 + 1896) = v51;
  *(a1 + 1864) = v49;
  v52 = *(a2 + 1928);
  v53 = *(a2 + 1936);
  if (v53)
  {
    atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1928) = v52;
  v54 = *(a1 + 1936);
  *(a1 + 1936) = v53;
  if (v54)
  {
    sub_100008080(v54);
  }

  memcpy((a1 + 1944), (a2 + 1944), 0x170uLL);
  memcpy((a1 + 2312), (a2 + 2312), 0x201uLL);
  v55 = *(a2 + 2832);
  v56 = *(a2 + 2840);
  if (v56)
  {
    atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2832) = v55;
  v57 = *(a1 + 2840);
  *(a1 + 2840) = v56;
  if (v57)
  {
    sub_100008080(v57);
  }

  v58 = *(a2 + 2848);
  v59 = *(a2 + 2864);
  *(a1 + 2880) = *(a2 + 2880);
  *(a1 + 2864) = v59;
  *(a1 + 2848) = v58;
  v60 = *(a2 + 2896);
  v61 = *(a2 + 2912);
  v62 = *(a2 + 2928);
  *(a1 + 2937) = *(a2 + 2937);
  *(a1 + 2928) = v62;
  *(a1 + 2912) = v61;
  *(a1 + 2896) = v60;
  v63 = *(a2 + 2960);
  *(a1 + 2968) = *(a2 + 2968);
  *(a1 + 2960) = v63;
  v64 = *(a2 + 2976);
  *(a1 + 2984) = *(a2 + 2984);
  *(a1 + 2976) = v64;
  std::string::operator=((a1 + 2992), (a2 + 2992));
  *(a1 + 3016) = *(a2 + 3016);
  v66 = *(a2 + 3048);
  v65 = *(a2 + 3064);
  v67 = *(a2 + 3032);
  *(a1 + 3076) = *(a2 + 3076);
  *(a1 + 3048) = v66;
  *(a1 + 3064) = v65;
  *(a1 + 3032) = v67;
  std::string::operator=((a1 + 3096), (a2 + 3096));
  v68 = *(a2 + 3152);
  v69 = *(a2 + 3136);
  *(a1 + 3120) = *(a2 + 3120);
  *(a1 + 3136) = v69;
  *(a1 + 3152) = v68;
  v70 = *(a2 + 3184);
  v71 = *(a2 + 3200);
  v72 = *(a2 + 3216);
  *(a1 + 3168) = *(a2 + 3168);
  *(a1 + 3216) = v72;
  *(a1 + 3200) = v71;
  *(a1 + 3184) = v70;
  v73 = *(a2 + 3248);
  v74 = *(a2 + 3264);
  v75 = *(a2 + 3280);
  *(a1 + 3232) = *(a2 + 3232);
  *(a1 + 3280) = v75;
  *(a1 + 3264) = v74;
  *(a1 + 3248) = v73;
  v76 = *(a2 + 3288);
  v77 = *(a2 + 3296);
  if (v77)
  {
    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3288) = v76;
  v78 = *(a1 + 3296);
  *(a1 + 3296) = v77;
  if (v78)
  {
    sub_100008080(v78);
  }

  v79 = *(a2 + 3304);
  v80 = *(a2 + 3320);
  v81 = *(a2 + 3336);
  *(a1 + 3351) = *(a2 + 3351);
  *(a1 + 3320) = v80;
  *(a1 + 3336) = v81;
  *(a1 + 3304) = v79;
  v82 = *(a2 + 3360);
  v83 = *(a2 + 3368);
  if (v83)
  {
    atomic_fetch_add_explicit((v83 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3360) = v82;
  v84 = *(a1 + 3368);
  *(a1 + 3368) = v83;
  if (v84)
  {
    sub_100008080(v84);
  }

  v85 = *(a2 + 3376);
  *(a1 + 3385) = *(a2 + 3385);
  *(a1 + 3376) = v85;
  return a1;
}

void *sub_1000FFE14(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024683B0;
  sub_1000FFE70((a1 + 3), a2);
  return a1;
}

double sub_1000FFE70(uint64_t a1, void *a2)
{
  *a1 = *a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_1000FFE90(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_10000FF38(v1, "wifi1Event", 0);
  v2 = 0;
  sub_1000FAC0C(&v3);
}

void sub_100100530(_Unwind_Exception *a1)
{
  sub_100107AE0(v1 + 816);
  sub_1001039FC(&STACK[0x3398]);
  sub_10001A420(&STACK[0x2068]);
  _Unwind_Resume(a1);
}

void sub_1001005A4(void *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  JUMPOUT(0x10010059CLL);
}

uint64_t sub_1001005C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100007244(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v7;
  *(a1 + 64) = v8;
  *(a1 + 32) = v6;
  return a1;
}

uint64_t *sub_10010069C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = mach_absolute_time();
  (*(v2 + 16))(v2, v3, v4);
  return a1;
}

void sub_1001006EC(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a1 + 2;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      v4 = a2;
      v5 = v3;

      break;
    case 1:
      v4 = a2;
      v5 = v3;

      break;
    case 2:
      v4 = a2;
      v5 = v3;

      break;
    case 3:

      sub_1010525F0(a2, a3);
    case 4:
      v4 = a2;
      v5 = v3;

      break;
    case 5:
      v4 = a2;
      v5 = v3;

      break;
    case 6:
      v4 = a2;
      v5 = v3;

      break;
    case 7:

      sub_1002F189C(a2, a3);
    case 8:

      sub_10031C12C(a2, a3);
    case 9:
      v4 = a2;
      v5 = v3;

      break;
    case 0xA:
      v4 = a2;
      v5 = v3;

      break;
    case 0xB:
      v4 = a2;
      v5 = v3;

      break;
    case 0xC:
      v4 = a2;
      v5 = v3;

      break;
    case 0xD:
      v4 = a2;
      v5 = v3;

      break;
    case 0xE:
      v4 = a2;
      v5 = v3;

      break;
    case 0xF:
      v4 = a2;
      v5 = v3;

      break;
    case 0x10:
      v4 = a2;
      v5 = v3;

      break;
    case 0x11:
      v4 = a2;
      v5 = v3;

      break;
    case 0x12:
      v4 = a2;
      v5 = v3;

      break;
    case 0x13:
      v4 = a2;
      v5 = v3;

      break;
    case 0x14:

      sub_101051C1C(a2, a3);
    case 0x15:
      v4 = a2;
      v5 = v3;

      break;
    case 0x16:

      sub_101051DF4(a2, a3);
    case 0x17:
      v4 = a2;
      v5 = v3;

      break;
    case 0x18:

      sub_1001E57E8(a2, a3);
    case 0x19:
      v4 = a2;
      v5 = v3;

      break;
    case 0x1A:
      v4 = a2;
      v5 = v3;

      break;
    case 0x1B:
      v4 = a2;
      v5 = v3;

      break;
    case 0x1C:
      v4 = a2;
      v5 = v3;

      break;
    case 0x1D:

      sub_101051990(a2, a3);
    default:
      sub_10053508C();
  }

  sub_100103C9C(v4, v5, a3);
}

void sub_100100BE0(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x18:
    case 0x1A:
    case 0x1C:
    case 0x1D:

      sub_100100B80(a3, a2);
    case 1:

      sub_100CD88B8(a2, a3);
    case 4:

      sub_100CD8A98(a2, a3);
    case 9:

      sub_100CD8C78(a2, a3);
    case 0x17:

      sub_100CD8E5C(a2, a3);
    case 0x19:

      sub_100183E00(a2, a3);
    case 0x1B:

      sub_10028820C(a2, a3);
    default:
      sub_10053508C();
  }
}

uint64_t sub_100100D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FA2C8(a1, a2);
  sub_1000FA21C(v4 + 88, a2 + 88);
  sub_1000FA0E0(a1 + 168, (a2 + 168));
  v5 = *(a2 + 264);
  v6 = *(a2 + 280);
  v7 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v7;
  *(a1 + 264) = v5;
  *(a1 + 280) = v6;
  v8 = *(a2 + 328);
  v9 = *(a2 + 344);
  v10 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 344) = v9;
  *(a1 + 360) = v10;
  *(a1 + 328) = v8;
  sub_1000FA87C((a1 + 384), (a2 + 384));
  *(a1 + 416) = 0;
  *(a1 + 1224) = 0;
  if (*(a2 + 1224) == 1)
  {
    v11 = *(a2 + 432);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 432) = v11;
    v12 = *(a2 + 448);
    v13 = *(a2 + 464);
    v14 = *(a2 + 496);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = v14;
    *(a1 + 448) = v12;
    *(a1 + 464) = v13;
    v15 = *(a2 + 512);
    v16 = *(a2 + 528);
    v17 = *(a2 + 544);
    *(a1 + 556) = *(a2 + 556);
    *(a1 + 528) = v16;
    *(a1 + 544) = v17;
    *(a1 + 512) = v15;
    memcpy((a1 + 576), (a2 + 576), 0x201uLL);
    *(a1 + 1096) = *(a2 + 1096);
    v18 = *(a2 + 1104);
    *(a1 + 1104) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(a2 + 1112);
    v20 = *(a2 + 1144);
    *(a1 + 1128) = *(a2 + 1128);
    *(a1 + 1144) = v20;
    *(a1 + 1112) = v19;
    v21 = *(a2 + 1160);
    v22 = *(a2 + 1176);
    v23 = *(a2 + 1192);
    *(a1 + 1201) = *(a2 + 1201);
    *(a1 + 1176) = v22;
    *(a1 + 1192) = v23;
    *(a1 + 1160) = v21;
    *(a1 + 1224) = 1;
  }

  sub_1000FA82C(a1 + 1232, a2 + 1232);
  sub_100105E8C(a1 + 1264, (a2 + 1264));
  sub_1000FA3E4((a1 + 1416), (a2 + 1416));
  sub_1000FB234(a1 + 1448, a2 + 1448);
  return a1;
}

void sub_100100F08(_Unwind_Exception *a1)
{
  if (*(v1 + 1440) == 1 && *(v1 + 1439) < 0)
  {
    operator delete(*v3);
  }

  sub_10067E180(v1 + 1264);
  if (*(v1 + 1256) == 1)
  {
    v5 = *v2;
    if (*v2)
    {
      *(v1 + 1240) = v5;
      operator delete(v5);
    }
  }

  if (*(v1 + 1224) == 1)
  {
    v6 = *(v1 + 1104);
    if (v6)
    {
      sub_100008080(v6);
    }
  }

  if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
  {
    operator delete(*(v1 + 384));
  }

  sub_10067E1D0(v1 + 168);
  sub_10067E22C(v1 + 88);
  sub_10067E274(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100100FD0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  sub_1000FF93C(v3 + 224, v1 + 1448);
  if (*(v2 + 1408) == 1)
  {
    v6 = sub_100184100(v4, v2 + 1264);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, newUpdate, didStart, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD568(v6);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(v2 + 1440) == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v9 = v2 + 1416;
      if (*(v2 + 1439) < 0)
      {
        v9 = *(v2 + 1416);
      }

      *buf = 136446210;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@WsbReproc, reason, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD65C();
    }

    v163[0] = 29;
    sub_1000FFE90();
    sub_1001039FC(v163);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v10 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, reprocWsb", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FD764();
    }
  }

  if (*(v2 + 80) == 1)
  {
    v11 = *(v2 + 16);
    memset(__p, 0, 24);
    v12 = 0;
    if (v11)
    {
      v13 = v11;
      do
      {
        ++v12;
        v13 = *v13;
      }

      while (v13);
    }

    sub_10018B8F4(__p, v11, 0, v12);
    v14 = (*(**(v4 + 120) + 160))(*(v4 + 120), __p, *(v2 + 40), *(v2 + 41), v2 + 48);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v15 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, alsreq", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      LOWORD(v130) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WifiLogic, decision, alsreq", &v130, 2);
      v95 = v94;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v94);
      if (v95 != buf)
      {
        free(v95);
      }
    }

    v149 = v14;
    v148 = 21;
    sub_1000FFE90();
    sub_1001039FC(&v148);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  if (*(v2 + 160) == 1)
  {
    v16 = *(v2 + 104);
    memset(__p, 0, 24);
    v17 = 0;
    if (v16)
    {
      v18 = v16;
      do
      {
        ++v17;
        v18 = *v18;
      }

      while (v18);
    }

    sub_10018B8F4(__p, v16, 0, v17);
    v147 = (*(**(v4 + 120) + 160))(*(v4 + 120), __p, 1, 0, v2 + 128) | dword_100000000;
    v146 = 21;
    sub_1000FFE90();
    sub_1001039FC(&v146);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v19 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = (*&__p[8] - *__p) >> 3;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, alswsb, aps, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v130 = 134349056;
      v131 = (*&__p[8] - *__p) >> 3;
      LODWORD(v107) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WifiLogic, decision, alswsb, aps, %{public}lu", &v130, v107);
      v97 = v96;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v96);
      if (v97 != buf)
      {
        free(v97);
      }
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }
  }

  if (*(v2 + 256) != 1)
  {
    v24 = v6;
    goto LABEL_81;
  }

  v20 = *(v4 + 120);
  v21 = *(v2 + 168);
  v22 = *(v2 + 184);
  v23 = *(v2 + 188);
  if (*(v2 + 215) < 0)
  {
    sub_100007244(__dst, *(v2 + 192), *(v2 + 200));
  }

  else
  {
    *__dst = *(v2 + 192);
    v129 = *(v2 + 208);
  }

  if (*(v2 + 248) == 1)
  {
    memset(buf, 0, 24);
    sub_10038EB38(buf, *(v2 + 224), *(v2 + 232), (*(v2 + 232) - *(v2 + 224)) >> 2);
    v25 = 1;
  }

  else
  {
    v25 = 0;
    buf[0] = 0;
  }

  buf[24] = v25;
  v24 = (*(*v20 + 144))(v20, v21, v22 == 1, v23, __dst, buf);
  if (buf[24] == 1 && *buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (SHIBYTE(v129) < 0)
  {
    operator delete(__dst[0]);
  }

  if (qword_1025D4630 != -1)
  {
    sub_1018FC728();
  }

  v26 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(v2 + 168);
    v28 = "normal";
    v29 = *(v2 + 188);
    if (*(v2 + 184) == 1)
    {
      v28 = "low";
    }

    *buf = 68290050;
    if (v29)
    {
      v30 = "low";
    }

    else
    {
      v30 = "default";
    }

    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = v27;
    *&buf[24] = 2082;
    *&buf[26] = v28;
    *&buf[34] = 2082;
    *&buf[36] = v30;
    *&buf[44] = 1026;
    *&buf[46] = v24;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:requesting wifi scan, scan_type:%{public}d, priority:%{public, location:escape_only}s, latency:%{public, location:escape_only}s, scan_request_successful:%{public}hhd}", buf, 0x32u);
    v31 = qword_1025D4630;
    if (v24 & 1 | ((v6 & 1) == 0))
    {
      goto LABEL_75;
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

LABEL_71:
    v32 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "value of didStartScan being reset to false after successfully beginning a scan", buf, 2u);
    }

    v33 = sub_10000A100(121, 0);
    v31 = qword_1025D4630;
    if (v33)
    {
      sub_1018FD848();
      v31 = *buf;
    }

LABEL_75:
    if (v31 != -1)
    {
      sub_1018FC728();
    }

    goto LABEL_77;
  }

  if (!(v24 & 1 | ((v6 & 1) == 0)))
  {
    goto LABEL_71;
  }

LABEL_77:
  v34 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *&buf[4] = v24;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, scanreq, didStart, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FD944(v24);
  }

LABEL_81:
  if (*(v2 + 268) == 1)
  {
    v35 = *(v2 + 264);
    if (v35 == 1)
    {
      (*(**(v4 + 120) + 168))(*(v4 + 120), 0);
      (*(**(v4 + 120) + 176))(*(v4 + 120), 1);
    }

    else if (!v35)
    {
      (*(**(v4 + 120) + 176))(*(v4 + 120), 0);
      (*(**(v4 + 120) + 168))(*(v4 + 120), 1);
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v36 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 264))
      {
        v37 = "powoffajon";
      }

      else
      {
        v37 = "ajoffpowon";
      }

      *buf = 136446210;
      *&buf[4] = v37;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "@WifiLogic, decision, wifipower, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDA38((v2 + 264));
    }
  }

  if (*(v2 + 328) == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v38 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(v2 + 312);
      v40 = *(v2 + 320);
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2049;
      *&buf[20] = v39;
      *&buf[28] = 2049;
      *&buf[30] = v40;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:requesting wifi tile download, latitude:%{private}f, longitude:%{private}f}", buf, 0x26u);
    }

    (*(**(v4 + 120) + 208))(*(v4 + 120), v2 + 272, *(v2 + 312), *(v2 + 320));
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v41 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(v2 + 312);
      v43 = *(v2 + 320);
      *buf = 134545921;
      *&buf[4] = v42;
      *&buf[12] = 2053;
      *&buf[14] = v43;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, tiledl, %{sensitive}.02f, %{sensitive}.02f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDB50();
    }
  }

  if (*(v2 + 344) == 1)
  {
    v44 = *(v2 + 336);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v45 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v44;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:update schedule of refresh timer, delay_s:%{public}.09f}", buf, 0x1Cu);
    }

    sub_1001E8654(v4, v46, v44);
    *(v4 + 152) = *(v2 + 336) == 15.0;
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v47 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v48 = *(v4 + 152);
      *buf = 134349312;
      *&buf[4] = v44;
      *&buf[12] = 1026;
      *&buf[14] = v48;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, timer, %{public}.1f, reIssue, %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDC64(v44);
    }
  }

  if (*(v2 + 353) == 1)
  {
    sub_1001E8654(v4, v5, 1.79769313e308);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v49 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, timer, cancel", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDD80();
    }
  }

  if (*(v2 + 368) == 1)
  {
    v50 = *(v2 + 360);
    [*(v4 + 144) setNextFireDelay:v50];
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v51 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v50;
      _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, wsbtimer, %{public}.1f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDE64();
    }
  }

  if (*(v2 + 377) == 1)
  {
    [*(v4 + 144) setNextFireDelay:1.79769313e308];
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v52 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, wsbtimer, cancel", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FDF60();
    }
  }

  if (*(v2 + 408) == 1)
  {
    sub_1001E87E0(1u);
    if (qword_1025D4620 != -1)
    {
      sub_1018FE044();
    }

    v53 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v2 + 384;
      if (*(v2 + 407) < 0)
      {
        v54 = *(v2 + 384);
      }

      *buf = 136446210;
      *&buf[4] = v54;
      _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "@ClxWifi, Fix, 0, ll, N/A, reason, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE06C();
    }

    *(v4 + 152) = 0;
    v55 = *(v4 + 120);
    *buf = 9;
    (*(*v55 + 104))(v55, buf, 1);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v56 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, notifyUnavail", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE174();
    }
  }

  if (*(v2 + 1224) == 1)
  {
    sub_100021AFC(__p);
    v57 = *(v2 + 528);
    v111 = *(v2 + 512);
    v112 = v57;
    v113[0] = *(v2 + 544);
    *(v113 + 12) = *(v2 + 556);
    v58 = *(v2 + 464);
    *&__p[32] = *(v2 + 448);
    v109 = v58;
    v59 = *(v2 + 496);
    *v110 = *(v2 + 480);
    *&v110[16] = v59;
    v60 = *(v2 + 432);
    *__p = *(v2 + 416);
    *&__p[16] = v60;
    memcpy(v114, (v2 + 576), sizeof(v114));
    v61 = *(v2 + 1096);
    v62 = *(v2 + 1104);
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v115 = v61;
    v63 = v116;
    v116 = v62;
    if (v63)
    {
      sub_100008080(v63);
    }

    v64 = *(v2 + 1192);
    v121 = *(v2 + 1176);
    v122[0] = v64;
    *(v122 + 9) = *(v2 + 1201);
    v65 = *(v2 + 1128);
    v117 = *(v2 + 1112);
    v118 = v65;
    v66 = *(v2 + 1160);
    v119 = *(v2 + 1144);
    v120 = v66;
    v67 = *(v2 + 4768);
    v68 = *(v2 + 4576);
    v69 = *(v2 + 4592);
    v70 = *&v110[12];
    if (qword_1025D48C0 != -1)
    {
      sub_1018FE258();
    }

    v71 = v67 - v68;
    v72 = v67 - v69;
    v73 = v67 - v70;
    v74 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v75 = v71;
      v76 = v72;
      v77 = v73;
      *buf = 136318467;
      *&buf[4] = "WiFi";
      *&buf[12] = 1024;
      *&buf[14] = 1;
      *&buf[18] = 2053;
      *&buf[20] = *&__p[4];
      *&buf[28] = 2053;
      *&buf[30] = *&__p[12];
      *&buf[38] = 2048;
      *&buf[40] = *&__p[20];
      *&buf[48] = 1024;
      *&buf[50] = *&v110[20];
      *v151 = 2048;
      *&v151[2] = v75;
      *v152 = 2048;
      *&v152[2] = v76;
      *v153 = 1024;
      *&v153[2] = 0;
      *v154 = 2048;
      *&v154[2] = *&__p[28];
      v155 = 2048;
      v156 = *&__p[36];
      v157 = 1024;
      v158 = 0;
      v159 = 2048;
      v160 = v77;
      v161 = 1024;
      v162 = v113[0];
      _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Confidence,%d,TTF,%.3f,sinceReg,%.3f,Confirmed,%d,Altitude,%.2f,VerticalAccuracy,%.2lf,locationSimulated,%d,notifiedLocationAge,%f,integrity,%d", buf, 0x7Au);
    }

    if (sub_10000A100(123, 2))
    {
      sub_1018FE280(buf);
      v98 = v71;
      v99 = v72;
      v100 = v73;
      v130 = 136318467;
      v131 = "WiFi";
      v132 = 1024;
      *v133 = 1;
      *&v133[4] = 2053;
      *&v133[6] = *&__p[4];
      *&v133[14] = 2053;
      *&v133[16] = *&__p[12];
      *&v133[24] = 2048;
      *&v133[26] = *&__p[20];
      *&v133[34] = 1024;
      *&v133[36] = *&v110[20];
      *v134 = 2048;
      *&v134[2] = v98;
      *v135 = 2048;
      *&v135[2] = v99;
      *v136 = 1024;
      *&v136[2] = 0;
      *v137 = 2048;
      *&v137[2] = *&__p[28];
      v138 = 2048;
      v139 = *&__p[36];
      v140 = 1024;
      v141 = 0;
      v142 = 2048;
      v143 = v100;
      v144 = 1024;
      v145 = v113[0];
      LODWORD(v107) = 122;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Confidence,%d,TTF,%.3f,sinceReg,%.3f,Confirmed,%d,Altitude,%.2f,VerticalAccuracy,%.2lf,locationSimulated,%d,notifiedLocationAge,%f,integrity,%d", &v130, v107, *__p);
      v102 = v101;
      sub_100152C7C("LOCATION", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v101);
      if (v102 != buf)
      {
        free(v102);
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018FE044();
    }

    v78 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134547713;
      *&buf[4] = *&__p[4];
      *&buf[12] = 2053;
      *&buf[14] = *&__p[12];
      *&buf[22] = 2050;
      *&buf[24] = *&__p[20];
      *&buf[32] = 2049;
      *&buf[34] = *&__p[28];
      *&buf[42] = 2050;
      *&buf[44] = *&__p[36];
      *&buf[52] = 2050;
      *v151 = *&v110[12];
      *&v151[8] = 2050;
      *v152 = *&v110[24];
      *&v152[8] = 1026;
      *v153 = *&v110[20];
      *&v153[4] = 1026;
      *v154 = v113[0];
      _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEFAULT, "@ClxWifi, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.1f, course, -1.0, alt, %{private}.1f, altunc, %{public}.1f, timestamp, %{public}.2f, lifespan, %{public}.1f, confidence, %{public}d, integrity, %{public}d", buf, 0x54u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE2C4(buf);
      v130 = 134547713;
      v131 = *&__p[4];
      v132 = 2053;
      *v133 = *&__p[12];
      *&v133[8] = 2050;
      *&v133[10] = *&__p[20];
      *&v133[18] = 2049;
      *&v133[20] = *&__p[28];
      *&v133[28] = 2050;
      *&v133[30] = *&__p[36];
      *&v133[38] = 2050;
      *v134 = *&v110[12];
      *&v134[8] = 2050;
      *v135 = *&v110[24];
      *&v135[8] = 1026;
      *v136 = *&v110[20];
      *&v136[4] = 1026;
      *v137 = v113[0];
      LODWORD(v107) = 84;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@ClxWifi, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.1f, course, -1.0, alt, %{private}.1f, altunc, %{public}.1f, timestamp, %{public}.2f, lifespan, %{public}.1f, confidence, %{public}d, integrity, %{public}d", &v130, v107);
      v104 = v103;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v103);
      if (v104 != buf)
      {
        free(v104);
      }
    }

    sub_1001E87E0(0);
    v79 = *(v4 + 120);
    *buf = 0;
    (*(*v79 + 112))(v79, buf, __p, 0, 0xFFFFFFFFLL, 0);
    sub_1001E88F8(buf);
    sub_1001E41C8(*buf, __p);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v80 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "@WifiLogic, decision, notifyLoc", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      LOWORD(v130) = 0;
      LODWORD(v107) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@WifiLogic, decision, notifyLoc", &v130, v107);
      v106 = v105;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationProvider::HandleEventResults CLWifiLocationProvider::handleLogicOutput(CL::Wifi1::Output)", "%s\n", v105);
      if (v106 != buf)
      {
        free(v106);
      }
    }

    if (v126)
    {
      sub_100008080(v126);
    }

    if (v125 < 0)
    {
      operator delete(v124);
    }

    if (v123)
    {
      sub_100008080(v123);
    }

    if (v116)
    {
      sub_100008080(v116);
    }
  }

  if (*(v2 + 1256) == 1)
  {
    if (*(v2 + 1232) != *(v2 + 1240))
    {
      if (qword_1025D4630 != -1)
      {
        sub_1018FC728();
      }

      v81 = (v2 + 1232);
      v82 = (v2 + 1240);
      v83 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v84 = 0x6F96F96F96F96F97 * ((*v82 - *v81) >> 2);
        *buf = 134349056;
        *&buf[4] = v84;
        _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEBUG, "notifying clients of %{public}ld batched wifi locations", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FE308();
      }

      sub_100021AFC(__p);
      v85 = *v82;
      v86 = *(*v82 - 140);
      *__p = *(*v82 - 156);
      *&__p[16] = v86;
      v87 = *(v85 - 108);
      v88 = *(v85 - 76);
      v89 = *(v85 - 124);
      *v110 = *(v85 - 92);
      *&v110[16] = v88;
      *&__p[32] = v89;
      v109 = v87;
      v90 = *(v85 - 44);
      v91 = *(v85 - 28);
      v92 = *(v85 - 60);
      *(v113 + 12) = *(v85 - 16);
      v112 = v90;
      v113[0] = v91;
      v111 = v92;
      sub_10031D9F8();
    }

    sub_1018FE418(qword_1025D4630 == -1);
  }

  return v24;
}

void sub_100102ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(__p, a5);
  sub_100311054(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_100102BC8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_100102C74(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *(a2 + 3);
        *(v8 + 5) = *(a2 + 5);
        *(v8 + 3) = v9;
        v10 = *(a2 + 7);
        v11 = *(a2 + 9);
        v12 = *(a2 + 11);
        *(v8 + 13) = *(a2 + 13);
        *(v8 + 11) = v12;
        *(v8 + 9) = v11;
        *(v8 + 7) = v10;
        v13 = *v8;
        sub_10018A35C(a1, v8);
        a2 = *a2;
        v8 = v13;
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v14 = *v8;
        operator delete(v8);
        v8 = v14;
      }

      while (v14);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_100196D60(a1);
  }
}

void sub_100102D68(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_100102D9C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2[1];
  v4[0] = *v2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000F9A38(v5, v1, v4);
}

void sub_100102E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007BE9D0(va);
  if (v7)
  {
    sub_100008080(v7);
  }

  _Unwind_Resume(a1);
}

void sub_100102EAC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100102FB8(v8, v1);
  v9 = v7;
  v10 = v6;
  sub_1000FA434(v2, v8, v4);
}

void sub_100102F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE9D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100102FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100105B70(a1, a2);
  sub_1000F9B54(v4 + 816, a2 + 816);
  sub_1000FB234(a1 + 3120, a2 + 3120);
  return a1;
}

void sub_100102FFC(_Unwind_Exception *a1)
{
  sub_1001054D8(v1 + 816);
  sub_1001039FC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100103020(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_100188540(a1, i + 2, i + 2);
  }

  return a1;
}

uint64_t sub_100103098(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10019E93C(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t sub_100103110(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1001977F0(a1, i + 2, (i + 2));
  }

  return a1;
}

void sub_1001032D0(int *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:

      sub_100103270(a3, a2);
    case 7:

      sub_1002EA054(a2, a3);
    case 8:

      sub_100318E60(a2, a3);
    case 0x14:

      sub_1008DDE0C(a2, a3);
    case 0x18:

      sub_10019EC44(a2, a3);
    case 0x1D:

      sub_1008DDED4(a2, a3);
    default:
      sub_10053508C();
  }
}

void sub_100103518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE9D0(va);
  _Unwind_Resume(a1);
}

void sub_1001035E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_1001036B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_10010377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_100103848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_100103914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_1001039E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_1001039FC(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *a1 ^ (*a1 >> 31);
  if (v2 <= 6)
  {
    if (v2 >= 5)
    {
      if (v2 != 5 && v2 != 6)
      {
        goto LABEL_24;
      }

      if (*(a1 + 96) == 1 && *(a1 + 39) < 0)
      {
        v3 = *(a1 + 16);

        operator delete(v3);
      }
    }
  }

  else
  {
    if (v2 <= 0x1D)
    {
      if (((1 << v2) & 0x3EFEFE00) != 0)
      {
        return;
      }

      if (v2 == 16)
      {
        v4 = *(a1 + 696);
        if (v4)
        {

          sub_100008080(v4);
        }

        return;
      }

      if (v2 == 24)
      {
        sub_100189690(&v5, v1);
        return;
      }
    }

    if (v2 != 7)
    {
      if (v2 == 8)
      {
        sub_100317354(&v5, v1);
        return;
      }

LABEL_24:
      sub_10053508C();
    }

    sub_1002E8530(&v5, v1);
  }
}

void **sub_100103B14(void **a1)
{
  sub_100103B50(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100103B50(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
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
}

void sub_100103B9C(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *v8;
        sub_10018A35C(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_10018878C(a1);
  }
}

void sub_100103C60(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_100103C9C(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (*(a1 + 1436) == -1.0)
  {
    a2 = a1;
    if (!*(a1 + 1572))
    {

      sub_1000FAA70(a3, a1);
    }
  }

  sub_101B0AC44(a1, a2);
}

uint64_t sub_100103CE8(uint64_t a1, int a2, char a3, __int128 *a4, double a5)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100007244((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v7 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v7;
  }

  *(a1 + 40) = a5;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0xFFFFFFFF00000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 64) = _Q0;
  *(a1 + 80) = _Q0;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 110) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void sub_100103D88(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == *a2)
  {
    v6 = (a2 + 8);
    v26 = (a2 + 8);
    switch(v4 ^ (v4 >> 31))
    {
      case 0u:
      case 1u:
      case 2u:
      case 0xDu:
      case 0x11u:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
        return;
      case 3u:
      case 0xCu:
      case 0xEu:
      case 0x17u:
        *(a1 + 8) = *v6;
        return;
      case 4u:
      case 9u:
      case 0xBu:
      case 0xFu:
      case 0x13u:
      case 0x16u:
      case 0x19u:
      case 0x1Au:
        a1[2] = *v6;
        return;
      case 5u:
      case 6u:
        sub_1000F8A78((a1 + 2), v6);
        return;
      case 7u:
        sub_10067E4C4(v4, &v26, (a1 + 2));
        return;
      case 8u:
        sub_10067E614(v4, &v26, (a1 + 2));
        return;
      case 0xAu:
      case 0x14u:
      case 0x15u:
        *(a1 + 1) = *v6;
        return;
      case 0x10u:
        sub_10067E670(&v26, (a1 + 2));
        return;
      case 0x12u:
        *(a1 + 2) = *v6;
        return;
      case 0x18u:
        sub_10067E728(v4, &v26, (a1 + 2));
        return;
      default:
        goto LABEL_44;
    }
  }

  v26 = a1;
  v27 = v5 ^ (v5 >> 31);
  switch(v27)
  {
    case 0:
      sub_1001039FC(a1);
      *a1 = 0;
      return;
    case 1:
      sub_1001039FC(a1);
      v7 = 1;
      goto LABEL_42;
    case 2:
      sub_1001039FC(a1);
      v7 = 2;
      goto LABEL_42;
    case 3:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 3;
      goto LABEL_42;
    case 4:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 4;
      goto LABEL_42;
    case 5:
    case 6:
      sub_10067E7D4(&v26, a2 + 8);
      return;
    case 7:
      sub_1002E8478(&v26, a2 + 8);
      return;
    case 8:
      sub_100317298(&v26, a2 + 8);
      return;
    case 9:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 9;
      goto LABEL_42;
    case 10:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 10;
      goto LABEL_42;
    case 11:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 11;
      goto LABEL_42;
    case 12:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 12;
      goto LABEL_42;
    case 13:
      sub_1001039FC(a1);
      v7 = 13;
      goto LABEL_42;
    case 14:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 14;
      goto LABEL_42;
    case 15:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 15;
      goto LABEL_42;
    case 16:
      sub_1001039FC(a1);
      v8 = *(a2 + 8);
      *(a1 + 6) = *(a2 + 24);
      *(a1 + 2) = v8;
      v9 = *(a2 + 40);
      v10 = *(a2 + 56);
      v11 = *(a2 + 72);
      *(a1 + 22) = *(a2 + 88);
      *(a1 + 18) = v11;
      *(a1 + 14) = v10;
      *(a1 + 10) = v9;
      v12 = *(a2 + 104);
      v13 = *(a2 + 120);
      v14 = *(a2 + 136);
      *(a1 + 37) = *(a2 + 148);
      *(a1 + 34) = v14;
      *(a1 + 30) = v13;
      *(a1 + 26) = v12;
      memcpy(a1 + 42, (a2 + 168), 0x201uLL);
      *(a1 + 43) = *(a2 + 688);
      *(a2 + 688) = 0u;
      v15 = *(a2 + 704);
      v16 = *(a2 + 736);
      *(a1 + 45) = *(a2 + 720);
      *(a1 + 46) = v16;
      *(a1 + 44) = v15;
      v18 = *(a2 + 752);
      v17 = *(a2 + 768);
      v19 = *(a2 + 784);
      *(a1 + 793) = *(a2 + 793);
      *(a1 + 48) = v17;
      *(a1 + 49) = v19;
      *(a1 + 47) = v18;
      v7 = 16;
      goto LABEL_42;
    case 17:
      sub_1001039FC(a1);
      v7 = 17;
      goto LABEL_42;
    case 18:
      sub_1001039FC(a1);
      *(a1 + 2) = *(a2 + 8);
      v7 = 18;
      goto LABEL_42;
    case 19:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 19;
      goto LABEL_42;
    case 20:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 20;
      goto LABEL_42;
    case 21:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 21;
      goto LABEL_42;
    case 22:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 22;
      goto LABEL_42;
    case 23:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 23;
      goto LABEL_42;
    case 24:
      sub_1001039FC(a1);
      v20 = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 1) = v20;
      v21 = *(a2 + 24);
      *(a1 + 5) = *(a2 + 40);
      *(a1 + 6) = v21;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      *(a1 + 3) = *(a2 + 48);
      v23 = *(a2 + 80);
      v22 = *(a2 + 96);
      v24 = *(a2 + 64);
      *(a1 + 27) = *(a2 + 108);
      *(a1 + 5) = v23;
      *(a1 + 6) = v22;
      *(a1 + 4) = v24;
      v25 = *(a2 + 128);
      *(a1 + 18) = *(a2 + 144);
      *(a1 + 8) = v25;
      *(a2 + 136) = 0;
      *(a2 + 144) = 0;
      *(a2 + 128) = 0;
      v7 = 24;
      goto LABEL_42;
    case 25:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 25;
      goto LABEL_42;
    case 26:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 26;
      goto LABEL_42;
    case 27:
      sub_1001039FC(a1);
      v7 = 27;
      goto LABEL_42;
    case 28:
      sub_1001039FC(a1);
      v7 = 28;
      goto LABEL_42;
    case 29:
      sub_1001039FC(a1);
      v7 = 29;
LABEL_42:
      *a1 = v7;
      return;
    default:
LABEL_44:
      sub_10053508C();
  }
}

void sub_100104370(_DWORD *a1)
{
  *a1 = 0;
  sub_1000F8DFC((a1 + 204));
  sub_1000FAC0C((a1 + 780));
}

void sub_1001043A8(_Unwind_Exception *a1)
{
  sub_1001054D8(v1 + 816);
  sub_1001039FC(v1);
  _Unwind_Resume(a1);
}

void sub_1001043CC(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == *a2)
  {
    v6 = (a2 + 8);
    v12 = (a2 + 8);
    switch(v4 ^ (v4 >> 31))
    {
      case 0u:
      case 1u:
      case 2u:
      case 0xDu:
      case 0x11u:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
        return;
      case 3u:
      case 0xCu:
      case 0xEu:
      case 0x17u:
        *(a1 + 8) = *v6;
        return;
      case 4u:
      case 9u:
      case 0xBu:
      case 0xFu:
      case 0x13u:
      case 0x16u:
      case 0x19u:
      case 0x1Au:
        a1[2] = *v6;
        return;
      case 5u:
      case 6u:
        sub_1000F8F80((a1 + 2), v6);
        return;
      case 7u:
        sub_1002F595C(v4, &v12, (a1 + 2));
        return;
      case 8u:
        sub_100318760(v4, &v12, (a1 + 2));
        return;
      case 0xAu:
      case 0x14u:
      case 0x15u:
        *(a1 + 1) = *v6;
        return;
      case 0x10u:
        sub_1000FCAB8(&v12, (a1 + 2));
        return;
      case 0x12u:
        *(a1 + 2) = *v6;
        return;
      case 0x18u:
        v8 = *v6;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 1) = v8;
        std::string::operator=(a1 + 1, (a2 + 24));
        *(a1 + 3) = *(a2 + 48);
        v10 = *(a2 + 80);
        v9 = *(a2 + 96);
        v11 = *(a2 + 64);
        *(a1 + 27) = *(a2 + 108);
        *(a1 + 5) = v10;
        *(a1 + 6) = v9;
        *(a1 + 4) = v11;
        std::string::operator=((a1 + 32), (a2 + 128));
        return;
      default:
        goto LABEL_44;
    }
  }

  v12 = a1;
  v13 = v5 ^ (v5 >> 31);
  switch(v13)
  {
    case 0:
      sub_1001039FC(a1);
      *a1 = 0;
      return;
    case 1:
      sub_1001039FC(a1);
      v7 = 1;
      goto LABEL_42;
    case 2:
      sub_1001039FC(a1);
      v7 = 2;
      goto LABEL_42;
    case 3:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 3;
      goto LABEL_42;
    case 4:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 4;
      goto LABEL_42;
    case 5:
    case 6:
      sub_1007BE6D0(&v12, a2 + 8);
      return;
    case 7:
      sub_1002E8814(&v12, a2 + 8);
      return;
    case 8:
      sub_100317428(&v12, a2 + 8);
      return;
    case 9:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 9;
      goto LABEL_42;
    case 10:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 10;
      goto LABEL_42;
    case 11:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 11;
      goto LABEL_42;
    case 12:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 12;
      goto LABEL_42;
    case 13:
      sub_1001039FC(a1);
      v7 = 13;
      goto LABEL_42;
    case 14:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 14;
      goto LABEL_42;
    case 15:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 15;
      goto LABEL_42;
    case 16:
      sub_1000FBC00(&v12, (a2 + 8));
      return;
    case 17:
      sub_1001039FC(a1);
      v7 = 17;
      goto LABEL_42;
    case 18:
      sub_1001039FC(a1);
      *(a1 + 2) = *(a2 + 8);
      v7 = 18;
      goto LABEL_42;
    case 19:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 19;
      goto LABEL_42;
    case 20:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 20;
      goto LABEL_42;
    case 21:
      sub_1001039FC(a1);
      *(a1 + 1) = *(a2 + 8);
      v7 = 21;
      goto LABEL_42;
    case 22:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 22;
      goto LABEL_42;
    case 23:
      sub_1001039FC(a1);
      *(a1 + 8) = *(a2 + 8);
      v7 = 23;
      goto LABEL_42;
    case 24:
      sub_100184438(&v12, (a2 + 8));
      return;
    case 25:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 25;
      goto LABEL_42;
    case 26:
      sub_1001039FC(a1);
      a1[2] = *(a2 + 8);
      v7 = 26;
      goto LABEL_42;
    case 27:
      sub_1001039FC(a1);
      v7 = 27;
      goto LABEL_42;
    case 28:
      sub_1001039FC(a1);
      v7 = 28;
      goto LABEL_42;
    case 29:
      sub_1001039FC(a1);
      v7 = 29;
LABEL_42:
      *a1 = v7;
      return;
    default:
LABEL_44:
      sub_10053508C();
  }
}

uint64_t sub_1001048D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  std::string::operator=((a1 + 24), (a2 + 24));
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 80);
  v5 = *(a2 + 96);
  v7 = *(a2 + 64);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 80) = v6;
  *(a1 + 96) = v5;
  *(a1 + 64) = v7;
  std::string::operator=((a1 + 128), (a2 + 128));
  v8 = *(a2 + 184);
  v9 = *(a2 + 168);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v9;
  *(a1 + 184) = v8;
  v10 = *(a2 + 216);
  v11 = *(a2 + 232);
  v12 = *(a2 + 241);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 241) = v12;
  *(a1 + 232) = v11;
  *(a1 + 216) = v10;
  if (a1 == a2)
  {
    *(a1 + 288) = *(a2 + 288);
  }

  else
  {
    sub_1000F9018(a1 + 264, *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 328) = *(a2 + 328);
    sub_100103B9C((a1 + 296), *(a2 + 312), 0);
    *(a1 + 368) = *(a2 + 368);
    sub_100104B3C((a1 + 336), *(a2 + 352), 0);
    *(a1 + 408) = *(a2 + 408);
    sub_100102C74((a1 + 376), *(a2 + 392), 0);
    *(a1 + 448) = *(a2 + 448);
    sub_100103B9C((a1 + 416), *(a2 + 432), 0);
    *(a1 + 488) = *(a2 + 488);
    sub_100103B9C((a1 + 456), *(a2 + 472), 0);
  }

  memcpy((a1 + 496), (a2 + 496), 0x120uLL);
  sub_1000F9270((a1 + 784), (a2 + 784));
  *(a1 + 816) = *(a2 + 816);
  if (a1 != a2)
  {
    sub_1000F942C((a1 + 824), *(a2 + 824), *(a2 + 832), 0xD37A6F4DE9BD37A7 * ((*(a2 + 832) - *(a2 + 824)) >> 3));
  }

  *(a1 + 848) = *(a2 + 848);
  sub_1000F9314(a1 + 856, (a2 + 856));
  sub_1000F95A0((a1 + 952), a2 + 952);
  sub_10010622C((a1 + 1040), a2 + 1040);
  v13 = *(a2 + 1120);
  v14 = *(a2 + 1136);
  v15 = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a1 + 1152) = v15;
  *(a1 + 1136) = v14;
  *(a1 + 1120) = v13;
  v16 = *(a2 + 1184);
  v17 = *(a2 + 1200);
  v18 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *(a1 + 1216) = v18;
  *(a1 + 1200) = v17;
  *(a1 + 1184) = v16;
  sub_1000F9270((a1 + 1240), (a2 + 1240));
  sub_1000F96B0(a1 + 1272, a2 + 1272);
  sub_1000F9838(a1 + 2088, a2 + 2088);
  sub_100104C68(a1 + 2120, (a2 + 2120));
  sub_1000F9270((a1 + 2272), (a2 + 2272));
  return a1;
}

void sub_100104B3C(void *result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = result[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*result + 8 * i) = 0;
    }

    v8 = result[2];
    result[2] = 0;
    result[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v8[2] = v4[2];
        v8[3] = v4[3];
        std::string::operator=((v8 + 4), (v4 + 4));
        v11 = *(v4 + 7);
        v12 = *(v4 + 9);
        v13 = *(v4 + 11);
        v8[13] = v4[13];
        *(v8 + 11) = v13;
        *(v8 + 9) = v12;
        *(v8 + 7) = v11;
        v10 = *v8;
        sub_10018A35C(result, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_1001056DC(result, v10);
  }

  if (v4 != a3)
  {
    sub_1001889A4(result);
  }
}

void sub_100104C38(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1001056DC(v1, v2);
  __cxa_rethrow();
}

void sub_100104C68(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 144) == *(a2 + 144))
  {
    if (*(a1 + 144))
    {
      v4 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v4;
      std::string::operator=((a1 + 16), (a2 + 2));
      *(a1 + 40) = *(a2 + 5);
      v5 = *(a2 + 9);
      v6 = *(a2 + 11);
      v7 = *(a2 + 100);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 100) = v7;
      *(a1 + 88) = v6;
      *(a1 + 72) = v5;

      std::string::operator=((a1 + 120), a2 + 5);
    }
  }

  else if (*(a1 + 144))
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 144) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    if (*(a2 + 39) < 0)
    {
      sub_100007244((a1 + 16), a2[2], a2[3]);
    }

    else
    {
      v9 = *(a2 + 1);
      *(a1 + 32) = a2[4];
      *(a1 + 16) = v9;
    }

    *(a1 + 40) = *(a2 + 5);
    v10 = *(a2 + 7);
    v11 = *(a2 + 9);
    v12 = *(a2 + 11);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 88) = v12;
    *(a1 + 72) = v11;
    *(a1 + 56) = v10;
    if (*(a2 + 143) < 0)
    {
      sub_100007244((a1 + 120), a2[15], a2[16]);
    }

    else
    {
      v13 = *(a2 + 15);
      *(a1 + 136) = a2[17];
      *(a1 + 120) = v13;
    }

    *(a1 + 144) = 1;
  }
}

void sub_100104DC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_100104E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_100104F0C(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 0x13:

      sub_100105478(a3, a2);
    case 2:

      sub_100D19E1C(a2, a3);
    case 3:

      sub_100D1A1DC(a2, a3);
    case 4:

      sub_100D19734(a2, a3);
    case 5:

      sub_100D19974(a2, a3);
    case 6:

      sub_100D19BC8(a2, a3);
    case 7:

      sub_1002F5FA8(a2, a3);
    case 8:

      sub_10031757C(a2, a3);
    case 9:

      sub_100D1A68C(a2, a3);
    case 0xA:

      sub_100D1B004(a2, a3);
    case 0xB:

      sub_100D1A5F0(a2, a3);
    case 0xC:
      sub_100105478(a3, a2);
    case 0xD:
      sub_100105478(a3, a2);
    case 0xE:
      sub_100105478(a3, a2);
    case 0xF:
      sub_100105478(a3, a2);
    case 0x10:

      sub_1000FBCE4(a2, a3);
    case 0x11:

      sub_100D1C2B8(a2, a3);
    case 0x12:

      sub_1002684C8(a2, a3);
    case 0x14:

      sub_100D1B6F4(a2, a3);
    case 0x15:

      sub_100D1B07C(a2);
    case 0x16:

      sub_100D1C06C(a2, a3);
    case 0x17:

      sub_100D2112C(a2, a3);
    case 0x18:

      sub_1001845B4(a2, a3);
    case 0x19:

      sub_100183B24(a2, a3);
    case 0x1A:

      sub_100247814(a2, a3);
    case 0x1B:

      sub_100287D0C(a2, a3);
    case 0x1C:
      sub_100105478(a3, a2);
    case 0x1D:

      sub_100D217E0(a2, a3);
    default:
      sub_10053508C();
  }
}

uint64_t sub_1001054D8(uint64_t a1)
{
  if (*(a1 + 2296) == 1 && *(a1 + 2295) < 0)
  {
    operator delete(*(a1 + 2272));
  }

  if (*(a1 + 2264) == 1)
  {
    if (*(a1 + 2263) < 0)
    {
      operator delete(*(a1 + 2240));
    }

    if (*(a1 + 2159) < 0)
    {
      operator delete(*(a1 + 2136));
    }
  }

  if (*(a1 + 2112) == 1)
  {
    v2 = *(a1 + 2088);
    if (v2)
    {
      *(a1 + 2096) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 2080) == 1)
  {
    v3 = *(a1 + 1960);
    if (v3)
    {
      sub_100008080(v3);
    }
  }

  if (*(a1 + 1264) == 1 && *(a1 + 1263) < 0)
  {
    operator delete(*(a1 + 1240));
  }

  if (*(a1 + 1112) == 1)
  {
    if (*(a1 + 1111) < 0)
    {
      operator delete(*(a1 + 1088));
    }

    sub_1004906DC(a1 + 1040);
  }

  if (*(a1 + 1032) == 1)
  {
    if (*(a1 + 1031) < 0)
    {
      operator delete(*(a1 + 1008));
    }

    sub_1004906DC(a1 + 952);
  }

  if (*(a1 + 944) == 1)
  {
    if (*(a1 + 936) == 1)
    {
      v4 = *(a1 + 912);
      if (v4)
      {
        *(a1 + 920) = v4;
        operator delete(v4);
      }
    }

    if (*(a1 + 903) < 0)
    {
      operator delete(*(a1 + 880));
    }
  }

  v5 = *(a1 + 824);
  if (v5)
  {
    *(a1 + 832) = v5;
    operator delete(v5);
  }

  if (*(a1 + 808) == 1 && *(a1 + 807) < 0)
  {
    operator delete(*(a1 + 784));
  }

  sub_1004906DC(a1 + 456);
  sub_1004906DC(a1 + 416);
  sub_1004906DC(a1 + 376);
  sub_1001056A0((a1 + 336));
  sub_1004906DC(a1 + 296);
  v7 = (a1 + 264);
  sub_1000F8D88(&v7);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void **sub_1001056A0(void **a1)
{
  sub_1001056DC(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1001056DC(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1001057D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007BE994(va);
  _Unwind_Resume(a1);
}

void sub_1001057F4(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:

      sub_100100630(a3, a2);
    case 7:

      sub_1002F73F4(a2);
    case 9:

      sub_100E8BECC(a2, a3);
    case 0x14:

      sub_100E8BE88(a2, a3);
    case 0x18:

      sub_1001882C4(a2);
    default:
      sub_10053508C();
  }
}

void sub_1001059C0(int *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:

      sub_100105960(a3, a2);
    case 7:

      sub_1002F5CF0(a2);
    case 8:

      sub_1003187D4(a2);
    case 9:

      sub_100BA0984(a2);
    case 0x14:

      sub_100BA06B0(a2);
    case 0x18:

      sub_10018A6AC(a2);
    case 0x1D:

      sub_100BA0B9C(a2);
    default:
      sub_10053508C();
  }
}

uint64_t sub_100105B70(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = a2 + 8;
  v6 = (a1 + 8);
  switch(v4 ^ (v4 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 0xD:
    case 0x11:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      break;
    case 3:
    case 0xC:
    case 0xE:
    case 0x17:
      *v6 = *v3;
      break;
    case 4:
    case 9:
    case 0xB:
    case 0xF:
    case 0x13:
    case 0x16:
    case 0x19:
    case 0x1A:
      *v6 = *v3;
      break;
    case 5:
    case 6:
      sub_1000FB724((a1 + 8), v3);
      break;
    case 7:
      sub_1002E892C(a1 + 8, v3);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      sub_1000FB724((a1 + 64), a2 + 64);
      break;
    case 8:
      *v6 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      sub_100288650((a1 + 8), *(a2 + 8), *(a2 + 16), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 16) - *(a2 + 8)) >> 3));
      *(a1 + 32) = *(a2 + 32);
      sub_1000FB724((a1 + 40), a2 + 40);
      break;
    case 0xA:
    case 0x14:
    case 0x15:
      *v6 = *v3;
      break;
    case 0x10:
      v7 = *(v3 + 16);
      *v6 = *v3;
      *(a1 + 24) = v7;
      v8 = *(v3 + 32);
      v9 = *(v3 + 48);
      v10 = *(v3 + 80);
      *(a1 + 72) = *(v3 + 64);
      *(a1 + 88) = v10;
      *(a1 + 40) = v8;
      *(a1 + 56) = v9;
      v11 = *(v3 + 96);
      v12 = *(v3 + 112);
      v13 = *(v3 + 128);
      *(a1 + 148) = *(v3 + 140);
      *(a1 + 120) = v12;
      *(a1 + 136) = v13;
      *(a1 + 104) = v11;
      memcpy((a1 + 168), (a2 + 168), 0x201uLL);
      *(a1 + 688) = *(a2 + 688);
      v14 = *(a2 + 696);
      *(a1 + 696) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a2 + 704);
      v16 = *(a2 + 736);
      *(a1 + 720) = *(a2 + 720);
      *(a1 + 736) = v16;
      *(a1 + 704) = v15;
      v17 = *(a2 + 752);
      v18 = *(a2 + 768);
      v19 = *(a2 + 784);
      *(a1 + 793) = *(a2 + 793);
      *(a1 + 768) = v18;
      *(a1 + 784) = v19;
      *(a1 + 752) = v17;
      break;
    case 0x12:
      *v6 = *v3;
      break;
    case 0x18:
      v20 = *v3;
      *(a1 + 16) = *(v3 + 8);
      *v6 = v20;
      if (*(a2 + 47) < 0)
      {
        sub_100007244((a1 + 24), *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v21 = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 24) = v21;
      }

      *(a1 + 48) = *(a2 + 48);
      v22 = *(a2 + 64);
      v23 = *(a2 + 80);
      v24 = *(a2 + 96);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 80) = v23;
      *(a1 + 96) = v24;
      *(a1 + 64) = v22;
      if (*(a2 + 151) < 0)
      {
        sub_100007244((a1 + 128), *(a2 + 128), *(a2 + 136));
      }

      else
      {
        v25 = *(a2 + 128);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 128) = v25;
      }

      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_100105DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100105E8C(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v4;
    if (*(a2 + 39) < 0)
    {
      sub_100007244((a1 + 16), a2[2], a2[3]);
    }

    else
    {
      v5 = *(a2 + 1);
      *(a1 + 32) = a2[4];
      *(a1 + 16) = v5;
    }

    *(a1 + 40) = *(a2 + 5);
    v6 = *(a2 + 7);
    v7 = *(a2 + 9);
    v8 = *(a2 + 11);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 88) = v8;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    if (*(a2 + 143) < 0)
    {
      sub_100007244((a1 + 120), a2[15], a2[16]);
    }

    else
    {
      v9 = *(a2 + 15);
      *(a1 + 136) = a2[17];
      *(a1 + 120) = v9;
    }

    *(a1 + 144) = 1;
  }

  return a1;
}

void sub_100105F58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  if (*(v1 + 144) == 1)
  {
    sub_1005F3518(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100105F90(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101AFD430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationAwarenessProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101AFD444();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationAwarenessProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100106998(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100106180(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 13;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 26;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

std::string *sub_10010622C(std::string *result, uint64_t a2)
{
  v3 = result;
  if (result[3].__r_.__value_.__s.__data_[0] == *(a2 + 72))
  {
    if (result[3].__r_.__value_.__s.__data_[0])
    {
      if (result != a2)
      {
        LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
        sub_100103B9C(result, *(a2 + 16), 0);
      }

      LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);

      return std::string::operator=(v3 + 2, (a2 + 48));
    }
  }

  else if (result[3].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(result[2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(result[2].__r_.__value_.__l.__data_);
    }

    result = sub_1004906DC(v3);
    v3[3].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    result = sub_100103020(result, a2);
    LODWORD(v3[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if (*(a2 + 71) < 0)
    {
      result = sub_100007244(&v3[2], *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v4 = *(a2 + 48);
      v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
      *&v3[2].__r_.__value_.__l.__data_ = v4;
    }

    v3[3].__r_.__value_.__s.__data_[0] = 1;
  }

  return result;
}

BOOL sub_10010632C(double a1, double a2, double a3, double a4)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = v4;
  if (v4 < 0)
  {
    v5 = -v5;
  }

  v6 = a3 - a1;
  if (v6 < 0)
  {
    v6 = a1 - a3;
  }

  return v6 > 2 || v5 > 2;
}

BOOL sub_1001063B0(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = vabdd_f64(a5, a8);
  if (v10 <= 2.0)
  {
    v21 = a1[1].f64[1];
    if (v21 == 0.0 || vabdd_f64(a5, v21) > 0.005)
    {
      v22 = (a5 + a8) * 0.5;
      a1[1].f64[0] = v22 * 0.0174532925;
      a1[1].f64[1] = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *a1 = vdivq_f64(xmmword_101D16770, v26);
      a1[2].f64[0] = v23.__cosval;
    }

    v27 = 360.0;
    v28 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v28 = a6;
    }

    v29 = a9 + 360.0;
    if (a9 >= 0.0)
    {
      v29 = a9;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a2 = (a8 - a5) * 0.0174532925 * (a1->f64[0] + a7);
        *a3 = v30 * 0.0174532925 * ((a1->f64[1] + a7) * a1[2].f64[0]);
        *a4 = a10 - a7;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

uint64_t sub_100106544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 3320) = (*(**(a1 + 120) + 184))(*(a1 + 120));
  [*(a1 + 136) nextFireTime];
  *(a2 + 3328) = v6;
  v12 = 0;
  v7 = sub_10000608C(a1, &v12, 1);
  v12 = 3;
  v8 = sub_10000608C(a1, &v12, 1);
  v12 = 4;
  v9 = sub_10000608C(a1, &v12, 1);
  v12 = 22;
  v10 = sub_10000608C(a1, &v12, 1);
  sub_1000F8468(a1);
  *(a2 + 3336) = v7;
  *(a2 + 3340) = v8;
  *(a2 + 3344) = v9;
  *(a2 + 3348) = v10;
  *(a2 + 3352) = 1176256512;
  *(a2 + 3356) = (*(**(a1 + 120) + 216))(*(a1 + 120));
  *(a2 + 3357) = (*(**(a1 + 120) + 224))(*(a1 + 120));
  *(a2 + 3358) = (*(**(a1 + 120) + 232))(*(a1 + 120));
  return sub_1000F8078(a3, a2);
}

id sub_1001066E4(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100106794(a1);
}

id sub_100106744(uint64_t a1, int a2, void *a3)
{
  result = sub_1001066E4(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_100106794(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101AFD9AC();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D16C3ELL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AFD9C0();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101AFD9AC();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101D16C3ELL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AFDAB0();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_100106998(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == *(a1 + 312))
  {
    *buf = 0;
    if (sub_10000608C(a1, buf, 1))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD408();
      }

      v6 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness Received location}", buf, 0x12u);
      }

      *(a1 + 160) = *(a4 + 76);
      sub_10011652C(a1);
      v7 = *(a4 + 112);
      v21 = *(a4 + 96);
      v22 = v7;
      v23[0] = *(a4 + 128);
      *(v23 + 12) = *(a4 + 140);
      v8 = *(a4 + 48);
      v17 = *(a4 + 32);
      v18 = v8;
      v9 = *(a4 + 80);
      v19 = *(a4 + 64);
      v20 = v9;
      v10 = *(a4 + 16);
      *buf = *a4;
      *&buf[16] = v10;
      v15 = 0;
      (*(*a1 + 152))(a1, &v15, buf, 1, 0xFFFFFFFFLL, 0);
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD408();
      }

      v14 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness #warning Received location without clients}", buf, 0x12u);
      }

      if (*(a1 + 312) != 50)
      {
        [*(*(a1 + 264) + 16) unregister:*(*(a1 + 264) + 8) forNotification:?];
        *(a1 + 312) = 50;
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101AFD3F4();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a3;
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness #warning Unexpected notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x1Cu);
    }
  }
}

uint64_t sub_100106C38@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a2 + 16) = 0;
  v2 = *(result + 64);
  if (v2)
  {
    v3 = result + 64;
    do
    {
      v4 = *(v2 + 32);
      if ((v4 & 0x80000000) == 0)
      {
        v3 = v2;
      }

      v2 = *(v2 + ((v4 >> 28) & 8));
    }

    while (v2);
    if (v3 != result + 64 && *(v3 + 32) <= 0)
    {
      v5 = *(v3 + 40);
      v6 = (v3 + 48);
      if (v5 != v6)
      {
        v7 = 0;
        v8 = 4;
        if (*(result + 152))
        {
          v8 = 1;
        }

        v9 = INFINITY;
        v10 = INFINITY;
        do
        {
          if (*&v5[v8 + 4] < v9)
          {
            v9 = *&v5[v8 + 4];
          }

          *a2 = v9;
          if (*&v5[v8 + 5] < v10)
          {
            v10 = *&v5[v8 + 5];
          }

          *(a2 + 8) = v10;
          if (v7)
          {
            v7 = 1;
          }

          else
          {
            v7 = v5[v8 + 6];
          }

          *(a2 + 16) = v7 & 1;
          v11 = v5[1];
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
              v12 = v5[2];
              v13 = *v12 == v5;
              v5 = v12;
            }

            while (!v13);
          }

          v5 = v12;
        }

        while (v12 != v6);
      }
    }
  }

  return result;
}

uint64_t sub_100106D34(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_10001A3E8(a1, a2);
  result = sub_1000F42C0(v4, v5);
  if ((result & 1) == 0 && *(a1 + 153) != v2)
  {
    *(a1 + 153) = v2;
    v7 = *(a1 + 328);
    if (v2)
    {
      [v7 startMonitoringScenarioTriggerOfType:1 forClient:CLISP_ME_TOKEN];
      v8 = *(a1 + 328);
      v9 = CLISP_ME_TOKEN;

      return [v8 startMonitoringScenarioTriggerOfType:2 forClient:v9];
    }

    else
    {
      [v7 stopMonitoringScenarioTriggerOfType:1 forClient:CLISP_ME_TOKEN];
      result = [*(a1 + 328) stopMonitoringScenarioTriggerOfType:2 forClient:CLISP_ME_TOKEN];
      *(a1 + 152) = 0;
    }
  }

  return result;
}

_DWORD *sub_100106DDC(_DWORD *result, uint64_t a2)
{
  v2 = result[78];
  if (v2 != a2)
  {
    v4 = result;
    if (v2 != 50)
    {
      result = [*(*(result + 33) + 16) unregister:*(*(result + 33) + 8) forNotification:?];
    }

    if (a2 != 50)
    {
      result = [*(*(v4 + 33) + 16) register:*(*(v4 + 33) + 8) forNotification:a2 registrationInfo:0];
    }

    v4[78] = a2;
  }

  return result;
}

double sub_100106E44(uint64_t a1)
{
  if (*(a1 + 289) == 1)
  {
    *(a1 + 289) = 0;
    if (qword_1025D47A0 != -1)
    {
      sub_101AFD3F4();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 296);
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Awareness stopping active location request and releasing power assertion, powerAssertion:%{public}p}", v6, 0x1Cu);
    }

    [*(*(a1 + 272) + 16) unregister:*(*(a1 + 272) + 8) forNotification:1];
    [*(a1 + 304) setNextFireDelay:1.79769313e308];
    v4 = *(a1 + 296);
    *(a1 + 296) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    result = *(a1 + 184);
    *(a1 + 168) = result;
  }

  return result;
}

void sub_100106F90(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_1001066E4(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 8);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_10010734C(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_101AFD444();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101AFD444();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLLocationAwarenessProvider_Type::Notification, CLLocationAwarenessProvider_Type::NotificationData, char, CLLocationAwarenessProvider_Type::RegInfo>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLLocationAwarenessProvider_Type::Notification, NotificationData_T = CLLocationAwarenessProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLLocationAwarenessProvider_Type::RegInfo]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

_BYTE *sub_10010734C(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1001066E4(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100107444(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 5);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t *sub_100107444(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100107534(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  [*(a1 + 8) silo];
  result = sub_100117DD4(a1, a2);
  if (result)
  {
    if (sub_10011802C(a1, a2, v4))
    {
      return 0;
    }

    else
    {
      v9 = *a2;
      *(a1 + 44) = a2[1];
      *(a1 + 28) = v9;
      v10 = a2[2];
      v11 = a2[3];
      v12 = a2[4];
      *(a1 + 108) = a2[5];
      *(a1 + 92) = v12;
      *(a1 + 76) = v11;
      *(a1 + 60) = v10;
      v13 = a2[6];
      v14 = a2[7];
      v15 = a2[8];
      *(a1 + 168) = *(a2 + 140);
      *(a1 + 156) = v15;
      *(a1 + 140) = v14;
      *(a1 + 124) = v13;
      memcpy((a1 + 184), a3, 0x201uLL);
      v16 = *(a3 + 520);
      v17 = *(a3 + 528);
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 704) = v16;
      v18 = *(a1 + 712);
      *(a1 + 712) = v17;
      if (v18)
      {
        sub_100008080(v18);
      }

      v19 = *(a3 + 536);
      v20 = *(a3 + 568);
      *(a1 + 736) = *(a3 + 552);
      *(a1 + 752) = v20;
      *(a1 + 720) = v19;
      v21 = *(a3 + 584);
      v22 = *(a3 + 600);
      v23 = *(a3 + 616);
      *(a1 + 809) = *(a3 + 625);
      *(a1 + 784) = v22;
      *(a1 + 800) = v23;
      *(a1 + 768) = v21;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10010764C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v6 = sub_10010A35C(a1, a2, a3, a4);
  if (v6)
  {
    sub_10017DE58(a1, a3);
  }

  if (!*a3)
  {
    v12[0] = 0;
    v7 = sub_10000608C(a1, v12, 1);
    v8 = *(a1 + 3356);
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 3356);
      v12[0] = 67240448;
      v12[1] = v10;
      v13 = 1026;
      v14 = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "updateRegistrationInfoForClient,prevNumberOfActiveGNSSClients,%{public}d,numberOfActiveGpsClients,%{public}d", v12, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7827C((a1 + 3356), v7);
    }

    if (v8 != v7)
    {
      sub_1001C5AB8(a1, v7 > *(a1 + 3356), v7, a3);
    }
  }

  return v6;
}

uint64_t sub_1001077B8(_BYTE *a1, _DWORD *a2)
{
  sub_1000F4588();
  if (!*a2 && (a1[109] & 1) == 0)
  {
    v5 = 9;
    (*(*a1 + 144))(a1, &v5, 1, 0xFFFFFFFFLL);
  }

  return 1;
}

void sub_100107838(uint64_t a1, int *a2)
{
  if (*a2 == 9 && *(a1 + 112) == 1)
  {
    *(a1 + 112) = 0;
  }

  sub_1001162D8(a1, a2);
}

uint64_t sub_100107858()
{
  if (!qword_102656770)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v0 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "***no run loop available***", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A35FC();
    }
  }

  return qword_102656770;
}

id sub_1001078FC(uint64_t a1, int a2, void *a3)
{
  result = sub_10010794C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_10010794C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1005C58C0(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_100116F50(a1);
    }

    else
    {
      return 0;
    }
  }
}

_BYTE *sub_1001079E8(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10010794C(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_100107AE0(uint64_t a1)
{
  v2 = *(a1 + 3368);
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = *(a1 + 3296);
  if (v3)
  {
    sub_100008080(v3);
  }

  if (*(a1 + 3119) < 0)
  {
    operator delete(*(a1 + 3096));
  }

  if (*(a1 + 3015) < 0)
  {
    operator delete(*(a1 + 2992));
  }

  v4 = *(a1 + 2840);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(a1 + 1936);
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = *(a1 + 1808);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a1 + 1000);
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = *(a1 + 304);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (*(a1 + 280) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v9 = *(a1 + 184);
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    sub_100008080(v11);
  }

  return a1;
}

float sub_100107BB8(uint64_t a1)
{
  *buf = 0;
  v2 = sub_10000608C(a1, buf, 1);
  *buf = 1;
  v3 = sub_10000608C(a1, buf, 1);
  *buf = 2;
  v4 = sub_10000608C(a1, buf, 1);
  v5 = 1000.0;
  if (!v4)
  {
    v5 = -1.0;
  }

  if (v3)
  {
    v5 = 100.0;
  }

  if (v2)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v5;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v7 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240960;
    v19 = v2 != 0;
    v20 = 1026;
    v21 = v3 != 0;
    v22 = 1026;
    v23 = v4 != 0;
    v24 = 2050;
    v25 = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLIENT:hasClients,%{public}d,hasFineClients,%{public}d,hasCoarseClients,%{public}d,desiredAccuracy,%{public}.1lf", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v11[0] = 67240960;
    v11[1] = v2 != 0;
    v12 = 1026;
    v13 = v3 != 0;
    v14 = 1026;
    v15 = v4 != 0;
    v16 = 2050;
    v17 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "CLIENT:hasClients,%{public}d,hasFineClients,%{public}d,hasCoarseClients,%{public}d,desiredAccuracy,%{public}.1lf", v11, 30);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "float CLLocationController::getDesiredAccuracy()", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return v6;
}

uint64_t sub_100107E4C(uint64_t a1, unsigned int a2)
{
  v62 = a2;
  *(&v58 + 1) = 0xBFF0000000000000;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v4 = sub_100107BB8(a1);
  *&v58 = v4;
  if (!a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,startLocation when provider is None", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101874990();
    }

    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101873CF0();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = &v62;
    v6 = sub_10010A224(a1 + 256, &v62, &unk_101C66300, buf)[5];
    *buf = &v62;
    v7 = sub_100109DF4(a1 + 232, &v62, &unk_101C66300, buf);
    v8 = v7 + 6;
    if (*(v7 + 71) < 0)
    {
      v8 = *v8;
    }

    *buf = 134349570;
    *&buf[4] = v6;
    *&buf[12] = 2050;
    v69 = v4;
    v70 = 2082;
    v71 = v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLIENT:startLocation,registerForNotification,start reg info,client,%{public}p,desiredAccuracy,%{public}.1lf,name,%{public}s", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v40 = qword_1025D4608;
    *v63 = &v62;
    v41 = sub_10010A224(a1 + 256, &v62, &unk_101C66300, v63)[5];
    *v63 = &v62;
    v42 = sub_100109DF4(a1 + 232, &v62, &unk_101C66300, v63);
    v43 = v42 + 6;
    if (*(v42 + 71) < 0)
    {
      v43 = *v43;
    }

    *v63 = 134349570;
    *&v63[4] = v41;
    v64 = 2050;
    v65 = v4;
    v66 = 2082;
    v67 = v43;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v40, 2, "CLIENT:startLocation,registerForNotification,start reg info,client,%{public}p,desiredAccuracy,%{public}.1lf,name,%{public}s", v63, 32);
    v45 = v44;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::startLocationProvider(LocationProvider)", "%s\n", v44);
    if (v45 != buf)
    {
      free(v45);
    }
  }

  *buf = &v62;
  if ((*(sub_100109DF4(a1 + 232, &v62, &unk_101C66300, buf) + 911) & 1) != 0 || (*buf = &v62, *(sub_100109DF4(a1 + 232, &v62, &unk_101C66300, buf) + 114) > 0.0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101874224();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,startLocation when provider is already started", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018748B4();
    }

    return 0;
  }

  if (*(a1 + 672) != 1)
  {
    if (v62 == *(a1 + 336))
    {
      sub_10017F6FC(a1 + 800);
      sub_10018E860(a1 + 800, *(a1 + 712));
      if (sub_100027514((a1 + 800), v17))
      {
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v18 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "LCPM,bestAccuracyDoesNotRequireGps,true,on provider start", buf, 2u);
        }

        v19 = sub_10000A100(121, 2);
        if (v19)
        {
          sub_1018746FC();
        }

        *buf = sub_10002F470(v19, v20);
        sub_1003E0928((a1 + 800), buf);
        *(a1 + 682) = 1;
        sub_10017ECA4(a1);
        if (*(a1 + 160) == 2)
        {
          *(a1 + 160) = 1;
          if (qword_1025D4600 != -1)
          {
            sub_101873804();
          }

          v21 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Fine,on provider start", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018747D8();
          }
        }

        sub_10010FF14(a1, v62);
        return 0;
      }

      v60 = sub_1000F44E4(a1, 0);
      *(a1 + 682) = 0;
      sub_10017ECA4(a1);
      *buf = 0;
      if (sub_10000608C(a1, buf, 1) && *(a1 + 160) != 2)
      {
        *(a1 + 160) = 2;
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v22 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(a1 + 160);
          *buf = 67240448;
          *&buf[4] = 1;
          *&buf[8] = 1026;
          *&buf[10] = v23;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Best,on provider start,haveBestAccuracyClients,%{public}d,requiredGranularity,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018744E0((a1 + 160));
        }
      }

      if (qword_1025D4650 != -1)
      {
        sub_1018745F8();
      }

      v24 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#wigo,on,LocationController", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101874620();
      }

      AnalyticsSendEventLazy();
    }

    else if (v62 == *(a1 + 352))
    {
      v61 = 1;
    }

    else if (v62 == *(a1 + 328))
    {
      if (qword_1025D4620 != -1)
      {
        sub_101874224();
      }

      v37 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "WlpReg, 1, loccontroller", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101874328();
      }

      if (*(a1 + 682) == 1)
      {
        sub_10017F6FC(a1 + 800);
        sub_10018E860(a1 + 800, *(a1 + 712));
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v38 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "LCPM,startLocationProvider,startBestAccuracySession from wifi", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101874404();
        }
      }
    }

    else if (v62 == *(a1 + 332))
    {
      if (qword_1025D4620 != -1)
      {
        sub_101874224();
      }

      v39 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "UclpReg, 1, loccontroller", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187424C();
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_101874224();
    }

    v25 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = &v62;
      v26 = sub_100109DF4(a1 + 232, &v62, &unk_101C66300, buf);
      v27 = v26 + 6;
      if (*(v26 + 71) < 0)
      {
        v27 = *v27;
      }

      v28 = sub_100107BB8(a1);
      *buf = 136446466;
      *&buf[4] = v27;
      *&buf[12] = 2050;
      v69 = v28;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "@ClxProvider, start, %{public}s, desiredAccuracy, %{public}.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101874224();
      }

      v51 = qword_1025D4628;
      *v63 = &v62;
      v52 = sub_100109DF4(a1 + 232, &v62, &unk_101C66300, v63);
      v53 = v52 + 6;
      if (*(v52 + 71) < 0)
      {
        v53 = *v53;
      }

      v54 = sub_100107BB8(a1);
      *v63 = 136446466;
      *&v63[4] = v53;
      v64 = 2050;
      v65 = v54;
      LODWORD(v57) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v51, 0, "@ClxProvider, start, %{public}s, desiredAccuracy, %{public}.1f", v63, v57);
      v56 = v55;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::startLocationProvider(LocationProvider)", "%s\n", v55);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    *buf = &v62;
    sub_10010A224(a1 + 256, &v62, &unk_101C66300, buf);
    sub_10002FA64(&v58);
  }

  if (qword_1025D4600 != -1)
  {
    sub_101873804();
  }

  v13 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = &v62;
    v14 = sub_100109DF4(a1 + 232, &v62, &unk_101C66300, buf);
    v15 = v14 + 6;
    if (*(v14 + 71) < 0)
    {
      v15 = *v15;
    }

    *buf = 136446210;
    *&buf[4] = v15;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "registering location provider,%{public}s,as a bystander only", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v46 = qword_1025D4608;
    *v63 = &v62;
    v47 = sub_100109DF4(a1 + 232, &v62, &unk_101C66300, v63);
    v48 = v47 + 6;
    if (*(v47 + 71) < 0)
    {
      v48 = *v48;
    }

    *v63 = 136446210;
    *&v63[4] = v48;
    LODWORD(v57) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v46, 2, "registering location provider,%{public}s,as a bystander only", v63, v57);
    v50 = v49;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::startLocationProvider(LocationProvider)", "%s\n", v49);
    if (v50 != buf)
    {
      free(v50);
    }
  }

  *buf = &v62;
  v16 = sub_10010A224(a1 + 256, &v62, &unk_101C66300, buf)[5];
  [*(v16 + 16) register:*(v16 + 8) forNotification:4 registrationInfo:0];
  if (v62 == *(a1 + 336))
  {
    *buf = &v62;
    v29 = sub_10010A224(a1 + 256, &v62, &unk_101C66300, buf);
    [*(v29[5] + 16) register:*(v29[5] + 8) forNotification:26 registrationInfo:0];
    v30 = *(a1 + 312);
    if (v30)
    {
      sub_100DAB6C0(v30);
    }
  }

  else if (v62 == *(a1 + 344))
  {
    *buf = &v62;
    v31 = sub_10010A224(a1 + 256, &v62, &unk_101C66300, buf);
    [*(v31[5] + 16) register:*(v31[5] + 8) forNotification:20 registrationInfo:0];
    *buf = &v62;
    v32 = sub_10010A224(a1 + 256, &v62, &unk_101C66300, buf);
    [*(v32[5] + 16) register:*(v32[5] + 8) forNotification:21 registrationInfo:0];
  }

  *buf = &v62;
  *(sub_100109DF4(a1 + 232, &v62, &unk_101C66300, buf) + 910) = 0;
  *buf = &v62;
  v33 = sub_100109DF4(a1 + 232, &v62, &unk_101C66300, buf);
  v11 = 1;
  *(v33 + 911) = 1;
  v35 = sub_10000B1F8(v33, v34);
  *buf = 1;
  v36 = sub_10001A6B0(v35, buf);
  *buf = &v62;
  *(sub_100109DF4(a1 + 232, &v62, &unk_101C66300, buf) + 114) = v36;
  sub_10010FF14(a1, v62);
  return v11;
}

void sub_100108BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100021AFC(v8);
  (*(*a1 + 152))(a1, a2, v8, a3, a4, 0);

  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  if (v9)
  {
    sub_100008080(v9);
  }
}

void sub_100108CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100108CB4(uint64_t result, unsigned int a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7)
{
  if (!*(result + 16))
  {
    return result;
  }

  v13 = result;
  v14 = sub_10000AED0();
  v16 = sub_10000B1F8(v14, v15);
  sub_10000AED4(v16, v39);
  v38 = 1;
  *buf = 21;
  HIDWORD(v36) = 21;
  v37 = sub_10000AD98(buf);
  sub_10000AFE4(v40, &v38, &v36 + 1, &v36 + 1, v39);
  v42 |= 2u;
  v17 = v41;
  if (!v41)
  {
    operator new();
  }

  *(v41 + 492) |= 0x800u;
  v18 = *(v17 + 352);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 200) |= 0x10u;
  v19 = *(v18 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 28) |= 1u;
  *(v19 + 8) = -1;
  if (!sub_1000183C8(4u))
  {
    __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
  }

  v20 = *(v19 + 28);
  *(v19 + 12) = 4;
  *(v19 + 28) = v20 | 6;
  v21 = *(v19 + 16);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 76) |= 0x40u;
  v22 = *(v21 + 64);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 76) |= 2u;
  v23 = *(v22 + 16);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) |= 2u;
  *(v23 + 16) = a6;
  *(v22 + 76) |= 4u;
  v24 = *(v22 + 24);
  if (!v24)
  {
    operator new();
  }

  if (!sub_100108BCC(a2))
  {
    v31 = "::CLP::LogEntry::PrivateData::LocationType_IsValid(value)";
    v32 = 8177;
    v33 = "set_provider_type";
    goto LABEL_38;
  }

  *(v24 + 28) |= 1u;
  *(v24 + 8) = a2;
  *(v22 + 76) |= 4u;
  v25 = *(v22 + 24);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 28) |= 2u;
  *(v25 + 16) = a3;
  *(v22 + 76) |= 4u;
  if (!sub_1000183C8(a4))
  {
    v31 = "::CLP::LogEntry::PrivateData::LocationControllerProvider_PositionGranularityType_IsValid(value)";
    v32 = 8222;
    v33 = "set_required_position_granularity";
    goto LABEL_38;
  }

  *(v25 + 28) |= 4u;
  *(v25 + 12) = a4;
  *(v22 + 76) |= 4u;
  v26 = *(v22 + 24);
  if (!v26)
  {
    operator new();
  }

  if (!sub_1000183C8(a5))
  {
    v31 = "::CLP::LogEntry::PrivateData::LocationControllerProvider_PositionGranularityType_IsValid(value)";
    v32 = 8245;
    v33 = "set_active_position_granularity";
LABEL_38:
    __assert_rtn(v33, "CLPLocationController.pb.h", v32, v31);
  }

  *(v26 + 28) |= 8u;
  *(v26 + 20) = a5;
  *(v22 + 76) |= 4u;
  v27 = *(v22 + 24);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 28) |= 0x10u;
  *(v27 + 17) = a7;
  v28 = sub_10000BFC0(v13, v40);
  if (*(v13 + 8) == 1)
  {
    v29 = v28;
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v30 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67241984;
      v59 = v29;
      v60 = 2050;
      v61 = v39[0].n128_u64[0];
      v62 = 1026;
      v63 = a2;
      v64 = 1026;
      v65 = a3;
      v66 = 1026;
      v67 = a4;
      v68 = 1026;
      v69 = a5;
      v70 = 1026;
      v71 = a6;
      v72 = 1026;
      v73 = a7;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#locctl,#rec,ProviderManagerInternalState,success,%{public}d,mct,%{public}.3f,locationType,%{public}d,providerEnabled,%{public}d,requiredGranularity,%{public}d,activeGranularity,%{public}d,bestAccuracyDoesNotRequireGps,%{public}d,throttlingEnabled,%{public}d", buf, 0x36u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(buf);
      v43[0] = 67241984;
      v43[1] = v29;
      v44 = 2050;
      v45 = v39[0].n128_u64[0];
      v46 = 1026;
      v47 = a2;
      v48 = 1026;
      v49 = a3;
      v50 = 1026;
      v51 = a4;
      v52 = 1026;
      v53 = a5;
      v54 = 1026;
      v55 = a6;
      v56 = 1026;
      v57 = a7;
      LODWORD(v36) = 54;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,ProviderManagerInternalState,success,%{public}d,mct,%{public}.3f,locationType,%{public}d,providerEnabled,%{public}d,requiredGranularity,%{public}d,activeGranularity,%{public}d,bestAccuracyDoesNotRequireGps,%{public}d,throttlingEnabled,%{public}d", v43, v36);
      v35 = v34;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordProviderManagerInternalState(const CLP::LogEntry::PrivateData::LocationType, const BOOL, const CLP::LogEntry::PrivateData::LocationControllerProvider_PositionGranularityType, const CLP::LogEntry::PrivateData::LocationControllerProvider_PositionGranularityType, const BOOL, const BOOL)", "%s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

  return sub_10000CE1C(v40);
}

void sub_1001092B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010938C(char *a1, void *a2, int *a3)
{
  v18.i32[2] = a2;
  v5 = sub_10004DC80(a1, a2, a3);
  v7 = 1;
  if (v5)
  {
    v8 = sub_10000B1F8(v5, v6);
    sub_10000B230(buf);
    sub_10000B324(v8, buf);
    *buf = 1;
    v18.i32[0] = 1;
    v9 = sub_10000AD98(buf);
    v18.i32[1] = v9;
    v11 = sub_10000AE98(v9, v10);
    *buf = 3;
    sub_10010BD64(v11, buf, &v18, a1 + 1305, &v18.i32[2], a3);
    v7 = sub_1000489F4(a1, v18.i32[2], a3);
    if (qword_1025D4600 != -1)
    {
      sub_101BCFF30();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v13 = v18.i32[2];
      *buf = &v18.i64[1];
      v14 = sub_1000488C8((a1 + 80), &v18.i32[2], &unk_101C66300, buf);
      v15 = [v14[8] description];
      v16 = *a3;
      *buf = 68289794;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = v13;
      v24 = 2114;
      v25 = v15;
      v26 = 2050;
      v27 = v16;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:LocationController,unregistration, id:%{public}d, client:%{public, location:escape_only}@, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x2Cu);
    }

    if (*a3 == 15 || !*a3)
    {
      *buf = *a3;
      if (sub_10000608C(a1, buf, 1))
      {
        sub_10017E4BC(a1, a3);
      }
    }
  }

  return v7;
}

void sub_100109578(id *a1, double a2)
{
  if (a2 == INFINITY)
  {
    if (*(a1 + 22) != INFINITY)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD3F4();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 68289026;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness Disabling wakes}", &v7, 0x12u);
      }

      a1[22] = 0x7FF0000000000000;
      sub_10021D3CC(a1 + 24);
    }
  }

  else if (*(a1 + 23) >= a2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101AFD3F4();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Awareness Wake time is in the past, wakeTime_s:%{public}.09f}", &v7, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD408();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Awareness Wake time is in the past", "{msg%{public}.0s:#Awareness Wake time is in the past, wakeTime_s:%{public}.09f}", &v7, 0x1Cu);
    }
  }

  else if (vabdd_f64(*(a1 + 22), a2) >= *(a1 + 14))
  {
    sub_100073BF8(a1 + 24, a2);
    *(a1 + 22) = a2;
  }
}

void sub_1001097CC(float64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 36);
  v7 = *(a3 + 36);
  if (v6 <= 0.0 || v7 <= 0.0)
  {
    if (v6 <= 0.0)
    {
      v9 = 0.0;
      if (v7 <= 0.0)
      {
        goto LABEL_23;
      }

      v8 = *(a3 + 28);
    }

    else
    {
      v8 = *(a2 + 28);
    }
  }

  else
  {
    v8 = (*(a2 + 28) + *(a3 + 28)) * 0.5;
  }

  v9 = -450.0;
  if (v8 >= -450.0)
  {
    v9 = 1000000.0;
    if (v8 <= 1000000.0)
    {
      v9 = v8;
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101AFC3A8();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218240;
        v17 = 0x412E848000000000;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning refAlt > %.1lf,refAlt,%.1lf,using the max", &v16, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AFC3BC();
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101AFC3A8();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = 0xC07C200000000000;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning refAlt < %.1lf,refAlt,%.1lf,using the min", &v16, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AFC4B8();
    }
  }

LABEL_23:
  v12 = *(a2 + 4);
  v13 = *(a2 + 12);
  v14 = *(a3 + 4);
  v15 = *(a3 + 12);
  if (sub_10010632C(v12, v13, v14, v15))
  {
    sub_1002AB240(v12, v13, v14, v15);
  }

  else
  {
    sub_100109D18(a1, v12, v13, v14, v15, v9);
  }
}

uint64_t sub_100109AB0(uint64_t a1, int a2, int *a3, uint64_t *a4)
{
  v26 = a2;
  v6 = *a3;
  v7 = *(a1 + 64);
  if (!v7)
  {
    goto LABEL_15;
  }

  v10 = a1 + 64;
  do
  {
    if (*(v7 + 32) >= v6)
    {
      v10 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v6));
  }

  while (v7);
  if (v10 == a1 + 64)
  {
    goto LABEL_15;
  }

  if (v6 < *(v10 + 32))
  {
    goto LABEL_15;
  }

  v13 = *(v10 + 48);
  v11 = v10 + 48;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v11 - 8;
  v15 = v11;
  do
  {
    if (*(v12 + 32) >= a2)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < a2));
  }

  while (v12);
  if (v15 != v11 && *(v15 + 32) <= a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101BCFF1C();
    }

    v19 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v26;
      v20 = [sub_1000488C8(a1 + 80 &v26];
      v21 = *a3;
      *buf = &v26;
      v22 = sub_100021F2C(v14, &v26, &unk_101C66300, buf)[5];
      v23 = *a4;
      *buf = 68290306;
      *&buf[4] = 0;
      v28 = 2082;
      v29 = "";
      v30 = 1026;
      v31 = a2;
      v32 = 2114;
      v33 = v20;
      v34 = 2050;
      v35 = v21;
      v36 = 2050;
      v37 = v22;
      v38 = 2050;
      v39 = v23;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:LocationController,updateRegistrationInfoForClient, id:%{public}d, client:%{public, location:escape_only}@, notification:%{public, location:CLLocationProvider_Type::Notification}lld, from desiredAccuracy:%{public}.1f, to desiredAccuracy:%{public}.1f}", buf, 0x40u);
    }

    *buf = &v26;
    v24 = sub_100021F2C(v14, &v26, &unk_101C66300, buf);
    v25 = *a4;
    *(v24 + 52) = *(a4 + 12);
    *(v24 + 5) = v25;
    v6 = *a3;
    v16 = 1;
  }

  else
  {
LABEL_15:
    v16 = 0;
  }

  if (v6 == 15 || v6 == 0)
  {
    sub_10017E4BC(a1, a3);
  }

  return v16;
}

void sub_100109D18(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = 0;
  v14 = 0;
  if (sub_10010632C(a2, a3, a4, a5) || !sub_1001063B0(a1, &v14, &v13, &v12, a2, a3, a6, a4, a5, a6))
  {

    sub_1002AB240(a2, a3, a4, a5);
  }
}

uint64_t *sub_100109DF4(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

id sub_100109F14(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1017FDF40(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1017FE2BC(a1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100109FB0(uint64_t a1, uint64_t a2, unsigned int *a3, __int128 *a4)
{
  v19.i32[2] = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(buf);
  sub_10000B324(v7, buf);
  *buf = 1;
  v19.i32[0] = 1;
  v8 = sub_10000AD98(buf);
  v19.i32[1] = v8;
  v9 = *(a1 + 5264);
  v11 = sub_10000AE98(v8, v10);
  *buf = 2;
  if (v9 == 1)
  {
    sub_10010BD64(v11, buf, &v19, (a1 + 5220), &v19.i32[2], a3);
  }

  else
  {
    sub_10010E7FC(v11, buf, &v19, (a1 + 5220), &v19.i32[2], a3, a4);
  }

  *(a1 + 5264) = 0;
  v12 = sub_100044404(a1, v19.i32[2], a3, a4);
  if (qword_1025D4600 != -1)
  {
    sub_101BCFF30();
  }

  v13 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v14 = v19.i32[2];
    *buf = &v19.i64[1];
    v15 = sub_1000488C8(a1 + 80, &v19.i32[2], &unk_101C66300, buf);
    v16 = [v15[8] description];
    v17 = *a3;
    *buf = 68289794;
    *&buf[4] = 0;
    v21 = 2082;
    v22 = "";
    v23 = 1026;
    v24 = v14;
    v25 = 2114;
    v26 = v16;
    v27 = 2050;
    v28 = v17;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:LocationController,registration, id:%{public}d, client:%{public, location:escape_only}@, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x2Cu);
  }

  sub_10010A2F8(a1, a3);
  return v12;
}

uint64_t sub_10010A1AC(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == 2)
  {
    return 0;
  }

  else if (v2 == 1)
  {
    return 1;
  }

  else if (v2)
  {
    return -1;
  }

  else if (sub_100027514((a1 + 800), a2))
  {
    v4 = 1;
    *(a1 + 682) = 1;
    sub_10017ECA4(a1);
  }

  else
  {
    return 2;
  }

  return v4;
}

uint64_t *sub_10010A224(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10010A2F8(uint64_t result, int *a2)
{
  v4 = *a2;
  if (*a2 == 15 || v4 == 0)
  {
    v9 = v2;
    v10 = v3;
    v7 = result;
    v8 = v4;
    result = sub_10000608C(result, &v8, 1);
    if (result >= 2)
    {
      return sub_10017E4BC(v7, a2);
    }
  }

  return result;
}

uint64_t sub_10010A35C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v5 = a2;
  LODWORD(v37) = a2;
  v8 = *(a1 + 64);
  v6 = a1 + 64;
  v7 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

  v10 = *a3;
  v11 = v6;
  do
  {
    if (*(v7 + 32) >= v10)
    {
      v11 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < v10));
  }

  while (v7);
  if (v11 == v6)
  {
    goto LABEL_15;
  }

  if (v10 < *(v11 + 32))
  {
    goto LABEL_15;
  }

  v14 = *(v11 + 48);
  v12 = v11 + 48;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v12 - 8;
  v16 = v12;
  do
  {
    if (*(v13 + 32) >= a2)
    {
      v16 = v13;
    }

    v13 = *(v13 + 8 * (*(v13 + 32) < a2));
  }

  while (v13);
  if (v16 != v12 && *(v16 + 32) <= a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023F73C();
    }

    v21 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a3;
      v23 = sub_100048D98(*a3);
      *buf = &v37;
      v24 = sub_100021F2C(v15, &v37, &unk_101C66300, buf)[5];
      v25 = *a4;
      *buf = 67110146;
      *&buf[4] = v5;
      v48 = 1024;
      v49 = v22;
      v50 = 2080;
      v51 = v23;
      v52 = 2048;
      v53 = v24;
      v54 = 2048;
      v55 = v25;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLIENT: updateRegistrationInfoForClient, client, %d, notification, %d, %s, from desiredAccuracy, %.1lf, to, %.1lf", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10190651C();
      }

      v28 = qword_1025D4608;
      v29 = LODWORD(v37);
      v30 = *a3;
      v31 = sub_100048D98(v30);
      v38 = &v37;
      v32 = sub_100021F2C(v15, &v37, &unk_101C66300, &v38)[5];
      v33 = *a4;
      LODWORD(v38) = 67110146;
      HIDWORD(v38) = v29;
      v39 = 1024;
      v40 = v30;
      v41 = 2080;
      v42 = v31;
      v43 = 2048;
      v44 = v32;
      v45 = 2048;
      v46 = v33;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 2, "CLIENT: updateRegistrationInfoForClient, client, %d, notification, %d, %s, from desiredAccuracy, %.1lf, to, %.1lf", &v38, 44, v36, v37, *&v38);
      v35 = v34;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationProvider::updateRegistrationInfoForClient(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::RegInfo &)", "%s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    *buf = &v37;
    v26 = sub_100021F2C(v15, &v37, &unk_101C66300, buf);
    v27 = *a4;
    *(v26 + 52) = *(a4 + 12);
    *(v26 + 5) = v27;
    return 1;
  }

  else
  {
LABEL_15:
    if (qword_1025D4600 != -1)
    {
      sub_10023F73C();
    }

    v17 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v18 = *a3;
      v19 = sub_100048D98(*a3);
      *buf = 67109634;
      *&buf[4] = v5;
      v48 = 1024;
      v49 = v18;
      v50 = 2080;
      v51 = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLIENT: updateRegistrationInfoForClient, client, %d, notification, %d, %s, no notification", buf, 0x18u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019068E8();
      return 0;
    }
  }

  return result;
}

void sub_10010A73C(uint64_t a1)
{
  __chkstk_darwin(a1);
  mach_absolute_time();
  sub_100104370(v1);
}

void sub_10010B448(_Unwind_Exception *a1)
{
  sub_1000FCCC8(v1);
  sub_1007BE994(&STACK[0x3358]);
  sub_1007BE994(&STACK[0x4CD8]);
  _Unwind_Resume(a1);
}

void sub_10010B730(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000B1F8(a1, a2);
  *__p = 0;
  v6 = sub_10001A6B0(v3, __p);
  if (v6 - *(a1 + 1992) >= 900.0)
  {
    *(a1 + 1992) = v6;
    sub_10001A3E8(v4, v5);
    sub_100241210(__p);
    if (v69[9] >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    sub_10000EC00(&v57, v7);
    if ((v69[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v8 = v59;
    if (v59 < 0)
    {
      v8 = v58;
    }

    if (!v8)
    {
      if (v59 < 0)
      {
        v58 = 5;
        v9 = v57;
      }

      else
      {
        v59 = 5;
        v9 = &v57;
      }

      strcpy(v9, "Local");
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4620 != -1)
    {
      sub_1018F97D0();
    }

    v11 = qword_1025D4628;
    v12 = os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      sub_10001A3E8(v12, v13);
      v14 = v60;
      sub_1002412B0(v60);
      if (v62[9] < 0)
      {
        v14 = *v60;
      }

      v17 = sub_10001A3E8(v15, v16);
      sub_100241350(v17, v55);
      if (v56 >= 0)
      {
        v18 = v55;
      }

      else
      {
        v18 = v55[0];
      }

      v19 = &v57;
      if (v59 < 0)
      {
        v19 = v57;
      }

      *__p = 136446979;
      *&__p[4] = v14;
      v68 = 2081;
      *v69 = v18;
      *&v69[8] = 2082;
      *&v69[10] = v19;
      *&v69[18] = 1026;
      *&v69[20] = 10;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "@ClxVersion, Timer, os, %{public}s, model, %{private}s, build, %{public}s, triage, %{public}d", __p, 0x26u);
      if (v56 < 0)
      {
        operator delete(v55[0]);
      }

      if ((v62[9] & 0x80000000) != 0)
      {
        operator delete(*v60);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F97F8(__p);
      v41 = qword_1025D4628;
      sub_10001A3E8(v42, v43);
      v44 = v55;
      sub_1002412B0(v55);
      if (v56 < 0)
      {
        v44 = v55[0];
      }

      v47 = sub_10001A3E8(v45, v46);
      sub_100241350(v47, v53);
      if (v54 >= 0)
      {
        v48 = v53;
      }

      else
      {
        v48 = v53[0];
      }

      v49 = &v57;
      if (v59 < 0)
      {
        v49 = v57;
      }

      *v60 = 136446979;
      *&v60[4] = v44;
      v61 = 2081;
      *v62 = v48;
      *&v62[8] = 2082;
      *&v62[10] = v49;
      *&v62[18] = 1026;
      *&v62[20] = 10;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v41, 0, "@ClxVersion, Timer, os, %{public}s, model, %{private}s, build, %{public}s, triage, %{public}d", v60, 38);
      v51 = v50;
      if (v54 < 0)
      {
        operator delete(v53[0]);
      }

      if (v56 < 0)
      {
        operator delete(v55[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::checkStateLogging()", "%s\n", v51);
      if (v51 != __p)
      {
        free(v51);
      }
    }

    v20 = (a1 + 1696);
    v21 = 13;
    do
    {
      if (v6 - *v20 > 900.0)
      {
        if (*v20 >= 1.0)
        {
          v22 = v6 - *v20;
        }

        else
        {
          v22 = -1.0;
        }

        if (p_info[196] != -1)
        {
          sub_1018F97D0();
        }

        v23 = qword_1025D4628;
        v24 = os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          v26 = *(v20 - 2);
          v27 = *(v20 - 8);
          v28 = *v20;
          v29 = sub_10000B1F8(v24, v25);
          v30 = sub_100125220(v29);
          *__p = 136447490;
          *&__p[4] = v26;
          v68 = 1026;
          *v69 = v27;
          *&v69[4] = 2050;
          *&v69[6] = v28;
          *&v69[14] = 2050;
          *&v69[16] = v22;
          v70 = 2050;
          v71 = v6;
          v72 = 2050;
          v73 = v30;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "@ClxSnapshot, %{public}s, %{public}d, last, %{public}.1f, delta, %{public}.1f, now, %{public}.3f, propagation_us, %{public}.3f", __p, 0x3Au);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F97F8(__p);
          v31 = qword_1025D4628;
          v32 = *(v20 - 2);
          v33 = *(v20 - 8);
          v34 = *v20;
          v37 = sub_10000B1F8(v35, v36);
          v38 = sub_100125220(v37);
          *v60 = 136447490;
          *&v60[4] = v32;
          v61 = 1026;
          *v62 = v33;
          *&v62[4] = 2050;
          *&v62[6] = v34;
          *&v62[14] = 2050;
          *&v62[16] = v22;
          v63 = 2050;
          v64 = v6;
          v65 = 2050;
          v66 = v38;
          LODWORD(v52) = 58;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v31, 0, "@ClxSnapshot, %{public}s, %{public}d, last, %{public}.1f, delta, %{public}.1f, now, %{public}.3f, propagation_us, %{public}.3f", v60, v52);
          v40 = v39;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::checkStateLogging()", "%s\n", v39);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v40 != __p)
          {
            free(v40);
          }
        }
      }

      v20 += 3;
      --v21;
    }

    while (v21);
    if (v59 < 0)
    {
      operator delete(v57);
    }
  }
}