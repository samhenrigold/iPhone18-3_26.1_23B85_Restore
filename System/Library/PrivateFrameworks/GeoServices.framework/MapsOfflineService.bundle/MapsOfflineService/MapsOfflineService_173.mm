void sub_A8D220(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8D7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8DC20(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A8DC7C()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8DC64);
}

void sub_A8DCA0(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2, v6);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8DC6CLL);
}

void sub_A8DCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A8DD04@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8DF3C(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8DD98(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8DD98(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_ADD038(a1);
  sub_ADD20C(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_ADD6DC(a1, v3);
        sub_ADF088(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8DF3C(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AE7DCC(a1);
  sub_AE7F9C(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AE846C(a1, v3);
        sub_AE9EB8(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8E0E0(std::string *a1@<X8>)
{
  sub_A8E17C(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8E160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8E17C(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 1;
  strcpy(v13, "t");
  v8 = std::string::append(&v24, v13, 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8E3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8E4F4(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8EA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8EEF4(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A8EF50()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA8EF38);
}

void sub_A8EF74(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2, v6);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA8EF40);
}

void sub_A8EFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A8EFD8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A8F210(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A8F06C(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A8F06C(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AF191C(a1);
  sub_AF1AF0(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AF1FC0(a1, v3);
        sub_AF396C(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A8F210(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_AFC1AC(a1);
  sub_AFC37C(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_AFC84C(a1, v3);
        sub_AFE298(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A8F3B4(std::string *a1@<X8>)
{
  sub_A8F450(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A8F434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8F450(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 0;
  v15[0] = 0;
  v6 = std::string::append(&v23, v15, 0);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 1;
  strcpy(v13, "t");
  v8 = std::string::append(&v24, v13, 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 1;
  LOWORD(__p) = 109;
  v10 = std::string::append(&v25, &__p, 1uLL);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A8F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A8F7CC(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A8FD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A901CC(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A90228()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA90210);
}

void sub_A9024C(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2, v6);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA90218);
}

void sub_A90288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A902B0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A904E8(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A90344(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A90344(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_B05EE0(a1);
  sub_B060B4(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_B06584(a1, v3);
        sub_B07F30(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A904E8(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_B10690(a1);
  sub_B10860(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_B10D30(a1, v3);
        sub_B1277C(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A9068C(std::string *a1@<X8>)
{
  sub_A90728(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A9070C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A90728(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 1;
  strcpy(v15, "f");
  v6 = std::string::append(&v23, v15, 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 1;
  strcpy(v13, "t");
  v8 = std::string::append(&v24, v13, 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 0;
  LOBYTE(__p) = 0;
  v10 = std::string::append(&v25, &__p, 0);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A90968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A90AA4(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A91044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A914A4(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A8A480((v1 + 536));
  sub_A8A480((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A91500()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 632) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 616);
  if (v3)
  {
    free(v3);
  }

  JUMPOUT(0xA914E8);
}

void sub_A91524(_Unwind_Exception *a1)
{
  v4 = v1[63];
  if (v4)
  {
    v1[64] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v1[62];
    if (v5)
    {
LABEL_5:
      free(v5);
      sub_A300F8(v2, v6);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0xA914F0);
}

void sub_A91560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_A91588@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A917C0(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A9161C(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

double sub_A9161C(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_B1A2D0(a1);
  sub_B1A4A4(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_B1A974(a1, v3);
        sub_B1C320(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

double sub_A917C0(uint64_t a1)
{
  sub_7E9A4(v15);
  sub_B24C64(a1);
  sub_B24E34(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 2 * v2 + 2;
    do
    {
      v6 = *(a1 + 664);
      v7 = *(a1 + 656);
      if (*v6 <= v7)
      {
        *v6 = v7 + 1;
        v8 = v6[2];
        v9 = v6[1] * (v7 + 1);
        v10 = (v6[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v6[3] = v8 + 4 * v9;
          }
        }

        else
        {
          sub_617214((v6 + 2), v9 - v10);
        }
      }

      if (*(v6[2] + 4 * v6[1] * v7 + 4 * (v4 & 0xFFFFFFFE) + 4) != 0x7FFFFFFF)
      {
        v11 = sub_B25304(a1, v3);
        sub_B26D50(a1, v3, v11);
      }

      v4 += 2;
      v3 = (v3 + 1);
    }

    while (v5 != v4);
  }

  v12 = sub_7EA60(v15);
  v13 = (*(a1 + 464) - *(a1 + 456));
  *(a1 + 208) = v12;
  result = (*(a1 + 584) - *(a1 + 576));
  *(a1 + 312) = v13;
  *(a1 + 320) = result;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 592) + *(a1 + 472)) - *(a1 + 624) + *(a1 + 2056) + *(a1 + 2064) + *(a1 + 2072) + 2080;
  return result;
}

void sub_A91964(std::string *a1@<X8>)
{
  sub_A91A00(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A919E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A91A00(std::string *a1@<X8>)
{
  *(&v21.__r_.__value_.__s + 23) = 1;
  LOWORD(v21.__r_.__value_.__l.__data_) = 116;
  v20 = 1;
  strcpy(__s, "w");
  v2 = std::string::append(&v21, __s, 1uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v18 = 1;
  strcpy(v17, "r");
  v4 = std::string::append(&v22, v17, 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v16 = 1;
  strcpy(v15, "f");
  v6 = std::string::append(&v23, v15, 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 1;
  strcpy(v13, "t");
  v8 = std::string::append(&v24, v13, 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v12 = 1;
  LOWORD(__p) = 109;
  v10 = std::string::append(&v25, &__p, 1uLL);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v13);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*v15);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v23.__r_.__value_.__l.__data_);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*v17);
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v22.__r_.__value_.__l.__data_);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v21.__r_.__value_.__l.__data_);
    return;
  }

LABEL_20:
  operator delete(*__s);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_A91C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v50 - 41) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v50 - 41) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v50 - 64));
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v50 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a15);
  if ((*(v50 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v50 - 96));
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v50 - 105) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a21);
  if ((*(v50 - 105) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(*(v50 - 128));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a27);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a45);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a33);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(a39);
  _Unwind_Resume(exception_object);
}

void sub_A91D84(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A92324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A92658(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A92768((v1 + 536));
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A926B4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 536);
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v6);
  _Unwind_Resume(a1);
}

void sub_A926E8(_Unwind_Exception *a1)
{
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A92704(_Unwind_Exception *a1)
{
  v4 = *(v1 + 504);
  if (v4)
  {
    *(v1 + 512) = v4;
    operator delete(v4);
  }

  sub_A9595C(v1 + 416);
  sub_A300F8(v2, v5);
  _Unwind_Resume(a1);
}

void sub_A92744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v18);
  _Unwind_Resume(a1);
}

void *sub_A92768(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 2);
        v4 -= 2;
        v6 = v7;
        if (v7)
        {
          free(v6);
          *v4 = 0;
        }
      }

      while (v4 != v3);
      v5 = a1[6];
    }

    a1[7] = v3;
    free(v5);
  }

  return a1;
}

uint64_t sub_A927EC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A929D0(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A92880(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

void sub_A92880(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B3270C(a1);
  sub_B329B8(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B32E88(a1, v3);
        sub_B34798(a1, v3, v7);
      }

      v3 = (v3 + 1);
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A929D0(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B4A048(a1);
  sub_B4A2F0(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B4A7C0(a1, v3);
        sub_B4C1A4(a1, v3, v7);
      }

      v3 = (v3 + 1);
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A92B20(std::string *a1@<X8>)
{
  sub_A8E17C(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A92BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A92BBC(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A9315C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A93490(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A92768((v1 + 536));
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A934EC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 536);
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v6);
  _Unwind_Resume(a1);
}

void sub_A93520(_Unwind_Exception *a1)
{
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A9353C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 504);
  if (v4)
  {
    *(v1 + 512) = v4;
    operator delete(v4);
  }

  sub_A9595C(v1 + 416);
  sub_A300F8(v2, v5);
  _Unwind_Resume(a1);
}

void sub_A9357C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_A935A4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A93788(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A93638(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

void sub_A93638(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B56998(a1);
  sub_B56C44(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B57114(a1, v3);
        sub_B58A24(a1, v3, v7);
      }

      v3 = (v3 + 1);
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A93788(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B63C4C(a1);
  sub_B63EF4(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B643C4(a1, v3);
        sub_B65DA8(a1, v3, v7);
      }

      v3 = (v3 + 1);
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A938D8(std::string *a1@<X8>)
{
  sub_A8F450(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A93958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A93974(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A93F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A94248(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A92768((v1 + 536));
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A942A4(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 536);
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v6);
  _Unwind_Resume(a1);
}

void sub_A942D8(_Unwind_Exception *a1)
{
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A942F4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 504);
  if (v4)
  {
    *(v1 + 512) = v4;
    operator delete(v4);
  }

  sub_A9595C(v1 + 416);
  sub_A300F8(v2, v5);
  _Unwind_Resume(a1);
}

void sub_A94334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_A9435C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A94540(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A943F0(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

void sub_A943F0(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B6FAB4(a1);
  sub_B6FD60(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B70230(a1, v3);
        sub_B71B40(a1, v3, v7);
      }

      v3 = (v3 + 1);
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A94540(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B7CC28(a1);
  sub_B7CED0(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B7D3A0(a1, v3);
        sub_B7ED84(a1, v3, v7);
      }

      v3 = (v3 + 1);
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A94690(std::string *a1@<X8>)
{
  sub_A90728(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A94710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A9472C(uint64_t a1, void *a2)
{
  v13 = 20;
  strcpy(__p, "max_memory_footprint");
  v4 = sub_5F8FC(a2, __p);
  *a1 = sub_A89D1C(v4);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 12;
  strcpy(__p, "max_distance");
  v5 = sub_5F8FC(a2, __p);
  *(a1 + 8) = sub_A89E58(v5);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 13;
  strcpy(__p, "max_num_trips");
  v6 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 16) = v6;
  v13 = 21;
  strcpy(__p, "enable_target_pruning");
  v8 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 20) = v8;
  v13 = 20;
  strcpy(__p, "deparr_slack_minutes");
  *(a1 + 24) = 600 * sub_352470(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 10;
  strcpy(__p, "trip_slack");
  v10 = sub_353010(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 28) = v10;
  operator new();
}

void sub_A94CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A95000(_Unwind_Exception *a1)
{
  sub_A40284(v1 + 680);
  sub_1F1A8(v1 + 664);
  sub_A92768((v1 + 536));
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A9505C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 632) = v5;
    operator delete(v5);
  }

  sub_A9595C(v1 + 536);
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v6);
  _Unwind_Resume(a1);
}

void sub_A95090(_Unwind_Exception *a1)
{
  sub_A92768((v1 + 416));
  sub_A300F8(v2, v4);
  _Unwind_Resume(a1);
}

void sub_A950AC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 504);
  if (v4)
  {
    *(v1 + 512) = v4;
    operator delete(v4);
  }

  sub_A9595C(v1 + 416);
  sub_A300F8(v2, v5);
  _Unwind_Resume(a1);
}

void sub_A950EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A31EF4(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_A95114@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a1 + 104) = a2[1];
  *(a1 + 88) = v5;
  *(a1 + 120) = *(a2 + 32);
  *(a1 + 128) = *(a2 + 40);
  if (*a2)
  {
    sub_A952F8(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  else
  {
    sub_A951A8(a1);
    v6 = a1 + 152;
    v7 = a3;
  }

  return sub_A3290C(v7, v6);
}

void sub_A951A8(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B88950(a1);
  sub_B88BFC(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B890CC(a1, v3);
        sub_B8A9DC(a1, v3, v7);
      }

      v3 = (v3 + 1);
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A952F8(uint64_t a1)
{
  sub_7E9A4(v12);
  sub_B95C2C(a1);
  sub_B95ED4(a1);
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = 0;
    v4 = v2 + 1;
    v5 = 1;
    do
    {
      v6 = *(a1 + 664);
      v13 = (*(a1 + 656) << *v6) | v5;
      if (*(sub_B54B10((v6 + 2), &v13) + 4) != 0x7FFFFFFF)
      {
        v7 = sub_B963A4(a1, v3);
        sub_B97D88(a1, v3, v7);
      }

      v3 = (v3 + 1);
      v5 += 2;
    }

    while (v4 != v3);
  }

  v8 = sub_7EA60(v12);
  v9 = *(a1 + 488);
  v10 = (*(a1 + 496) - *(a1 + 456));
  v11 = (*(a1 + 616) - *(a1 + 576));
  *(a1 + 208) = v8;
  *(a1 + 312) = v10;
  *(a1 + 320) = v11;
  *(a1 + 328) += *(a1 + 520) - *(a1 + 504) + *(a1 + 640) + 12 * (*(a1 + 608) + v9) - *(a1 + 624) + *(a1 + 2120) + *(a1 + 2128) + *(a1 + 2136) + 2144;
}

void sub_A95448(std::string *a1@<X8>)
{
  sub_A91A00(&v3);
  v2 = std::string::insert(&v3, 0, "bmcspa-", 7uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_A954C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A954E8(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A95524(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A95560(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A9559C(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A955D8(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A95614(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A95650(void *a1)
{
  sub_A7E5B0(a1);

  operator delete();
}

void sub_A9568C(void *a1)
{
  sub_A7E6C0(a1);

  operator delete();
}

void sub_A956C8(void *a1)
{
  sub_A7E6C0(a1);

  operator delete();
}

void sub_A95704(void *a1)
{
  sub_A7E6C0(a1);

  operator delete();
}

void sub_A95740(void *a1)
{
  sub_A7E6C0(a1);

  operator delete();
}

void sub_A95778(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 296)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }

    v7 = (i - 96);
    sub_A3212C(&v7);
    if (*(i - 161) < 0)
    {
      operator delete(*(i - 184));
    }
  }

  a1[1] = v2;
}

void *sub_A95814(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A95860(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A958B0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 48);
      if (v6)
      {
        *(v3 - 40) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 72);
      if (v7)
      {
        *(v3 - 64) = v7;
        operator delete(v7);
      }

      v8 = (v3 - 96);
      sub_A3212C(&v8);
      if (*(v3 - 161) < 0)
      {
        operator delete(*(v3 - 184));
      }

      v3 -= 296;
    }
  }

  return a1;
}

uint64_t sub_A9595C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6)
        {
          free(v5);
          *v3 = 0;
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    free(v4);
  }

  return a1;
}

void *sub_A959CC(void *a1)
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
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6)
        {
          free(v5);
          *v3 = 0;
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    free(v4);
  }

  return a1;
}

void *sub_A95A3C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    v5 = a1[7];
    v6 = a1[6];
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 2);
        v5 -= 2;
        v7 = v8;
        if (v8)
        {
          free(v7);
          *v5 = 0;
        }
      }

      while (v5 != v4);
      v6 = a1[6];
    }

    a1[7] = v4;
    free(v6);
  }

  return a1;
}

unint64_t sub_A95AC8(void *a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        if (v4 != 6)
        {
          goto LABEL_78;
        }

        if (*a1 != 1954112095 || *(a1 + 2) != 29541)
        {
          goto LABEL_78;
        }

LABEL_48:
        if (a2.n128_f64[0] >= 0.0)
        {
          if (a2.n128_f64[0] >= 4.50359963e15)
          {
            goto LABEL_68;
          }

          v15 = (a2.n128_f64[0] + a2.n128_f64[0]) + 1;
        }

        else
        {
          if (a2.n128_f64[0] <= -4.50359963e15)
          {
            goto LABEL_68;
          }

          v15 = (a2.n128_f64[0] + a2.n128_f64[0]) - 1 + (((a2.n128_f64[0] + a2.n128_f64[0]) - 1) >> 63);
        }

        a2.n128_f64[0] = (v15 >> 1);
LABEL_68:
        if (a2.n128_f64[0] < 1.84467441e19)
        {
          if (v3 >= 0.0)
          {
            if (v3 < 4.50359963e15)
            {
              v18 = (v3 + v3) + 1;
              return (v18 >> 1);
            }
          }

          else if (v3 > -4.50359963e15)
          {
            v18 = (v3 + v3) - 1 + (((v3 + v3) - 1) >> 63);
            return (v18 >> 1);
          }

          return v3;
        }

        return -2;
      }

      if (*a1 != 1114197343)
      {
        if (*a1 != 1114196831)
        {
          goto LABEL_78;
        }

LABEL_34:
        v10 = a2.n128_f64[0] * 1024.0;
        if (v3 * 1024.0 >= 0.0)
        {
LABEL_35:
          v11 = v10;
          if (v10 >= 4.50359963e15)
          {
            goto LABEL_55;
          }

          v12 = (v10 + v10) + 1;
          goto LABEL_54;
        }

LABEL_52:
        v11 = v10;
        if (v10 <= -4.50359963e15)
        {
          goto LABEL_55;
        }

        v12 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_54:
        v11 = (v12 >> 1);
LABEL_55:
        if (v11 >= 1.84467441e19)
        {
          return -2;
        }

        if (v10 >= 0.0)
        {
          if (v10 < 4.50359963e15)
          {
            v16 = (v10 + v10) + 1;
            return (v16 >> 1);
          }
        }

        else if (v10 > -4.50359963e15)
        {
          v16 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
          return (v16 >> 1);
        }

        return v10;
      }

LABEL_63:
      v10 = a2.n128_f64[0] * 1048576.0;
      if (v3 * 1048576.0 >= 0.0)
      {
        goto LABEL_35;
      }

      goto LABEL_52;
    }

    if (*a1 != 19295 || *(a1 + 2) != 66)
    {
      v14 = *a1 == 19807 && *(a1 + 2) == 66;
      v9 = a1;
      if (!v14)
      {
        goto LABEL_74;
      }

LABEL_46:
      v10 = a2.n128_f64[0] * 1000000.0;
      if (v3 * 1000000.0 >= 0.0)
      {
        goto LABEL_35;
      }

      goto LABEL_52;
    }

LABEL_51:
    v10 = a2.n128_f64[0] * 1000.0;
    if (v3 * 1000.0 >= 0.0)
    {
      goto LABEL_35;
    }

    goto LABEL_52;
  }

  if (a1[1] == 6 && **a1 == 1954112095 && *(*a1 + 4) == 29541)
  {
    goto LABEL_48;
  }

  if (a1[1] == 3 && **a1 == 19295 && *(*a1 + 2) == 66)
  {
    goto LABEL_51;
  }

  if (a1[1] == 4 && **a1 == 1114196831)
  {
    goto LABEL_34;
  }

  if (a1[1] == 3 && **a1 == 19807 && *(*a1 + 2) == 66)
  {
    goto LABEL_46;
  }

  if (a1[1] == 4 && **a1 == 1114197343)
  {
    goto LABEL_63;
  }

  if (a1[1] != 3)
  {
    goto LABEL_78;
  }

  v9 = *a1;
LABEL_74:
  v19 = *v9;
  v20 = *(v9 + 2);
  if (v19 == 18271 && v20 == 66)
  {
    v22 = 0x41CDCD6500000000;
    goto LABEL_85;
  }

LABEL_78:
  if (sub_A7DB8C(a1, "_GiB"))
  {
    v22 = 0x41D0000000000000;
LABEL_85:
    v23 = *&v22;
    goto LABEL_86;
  }

  if (!sub_A7DB8C(a1, "_TB"))
  {
    if (!sub_A7DB8C(a1, "_TiB"))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(&v30, ".", &v29);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v30;
      }

      else
      {
        v26 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v28 = sub_2D390(exception, v26, size);
    }

    v22 = 0x4270000000000000;
    goto LABEL_85;
  }

  v23 = 1.0e12;
LABEL_86:
  v24 = v3 * v23;

  return sub_A96008(v24);
}

void sub_A95FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_A96008(double a1)
{
  if (a1 >= 0.0)
  {
    v1 = a1;
    if (a1 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v2 = (a1 + a1) + 1;
  }

  else
  {
    v1 = a1;
    if (a1 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v2 = (a1 + a1) - 1 + (((a1 + a1) - 1) >> 63);
  }

  v1 = (v2 >> 1);
LABEL_7:
  if (v1 >= 1.84467441e19)
  {
    return -2;
  }

  if (a1 >= 0.0)
  {
    if (a1 < 4.50359963e15)
    {
      v3 = (a1 + a1) + 1;
      return (v3 >> 1);
    }
  }

  else if (a1 > -4.50359963e15)
  {
    v3 = (a1 + a1) - 1 + (((a1 + a1) - 1) >> 63);
    return (v3 >> 1);
  }

  return a1;
}

void sub_A960F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2670F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_A96144(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t sub_A96160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = -1;
  *(a1 + 8) = 8;
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 16843009;
  *(a1 + 32) = 256;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  v10 = a6[1];
  *(a1 + 64) = *a6;
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a7[1];
  *(a1 + 80) = *a7;
  *(a1 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a8[1];
  *(a1 + 96) = *a8;
  *(a1 + 104) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *&v13 = 0x8000000080000000;
  *(&v13 + 1) = 0x8000000080000000;
  *(a1 + 116) = v13;
  *(a1 + 136) = 10;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  if (!*a5)
  {
    operator new();
  }

  v14 = a5[1];
  *(a1 + 176) = *a5;
  *(a1 + 184) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 456) = -1;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  sub_C43044(a1 + 488, a2);
  *(a1 + 584) = *a5 == 0;
  v17 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 592, &__p);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_A96370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1F1A8(v17);
  sub_1F1A8(v16);
  sub_1F1A8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_A96410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = xmmword_229B660;
  *(a1 + 16) = 8;
  *(a1 + 20) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v6 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = 0u;
  *(a1 + 64) = 0;
  *&v7 = 0x8000000080000000;
  *(&v7 + 1) = 0x8000000080000000;
  *(a1 + 68) = v7;
  *(a1 + 88) = 10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x100000004;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = -1;
  sub_C43044(a1 + 384, a2);
  v10 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 480, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_A96524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A95814((v17 + 256));
  sub_A95860(v15 + 304);
  sub_4D0584(v15 + 256);
  sub_4D0584(v18);
  sub_4CB154(v17);
  sub_1F1A8(v16);
  _Unwind_Resume(a1);
}

void sub_A96578(uint64_t a1)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v26 = 0;
  LOBYTE(v25) = 0;
  sub_CC9264(v10, &v25);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  BYTE8(v19) = 0;
  *v20 = 0u;
  *__p = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_A98AD4(a1 + 152, v8);
  *&v25 = &v23;
  sub_A31F30(&v25);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    sub_A95778(&v8[1]);
    operator delete(v8[1]);
  }

  *(a1 + 336) = *(a1 + 88);
  sub_A98CD4(a1 + 416);
  sub_A98CD4(a1 + 536);
  *(a1 + 2072) = 0;
  *(a1 + 2056) = 0u;
  v2 = *(a1 + 24);
  *(a1 + 1440) = v2;
  *(a1 + 1444) = *(a1 + 28);
  v3 = *(a1 + 72);
  *(a1 + 1445) = v3;
  *(a1 + 688) = v2;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = v3;
  v8[0] = 0x1FFFFFFFDLL;
  v4 = sub_A98E8C(a1 + 416, v8);
  v5 = *(v4 + 8);
  if (v5 == -1)
  {
    v6 = *(a1 + 528);
    *(a1 + 528) = v6 + 1;
    *(v4 + 8) = v6;
    v7 = v4;
    sub_2512DC(a1 + 504, v8);
    *(a1 + 656) = *(v7 + 8);
  }

  else
  {
    *(a1 + 656) = v5;
  }
}

void sub_A96728(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_A9674C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v21 = 0.0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 0;
  v35 = 0;
  sub_A96160(&v36, v2, a1 + 416, a1 + 536, (a1 + 664), &v21, &v18, &v34);
  v3 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 16);
  v36 = *(a1 + 8);
  v38 = v6;
  v37 = *(a1 + 24);
  v39 = *(a1 + 28);
  v41 = *(a1 + 72);
  v40 = *(a1 + 144);
  sub_A99960(&v36, a1 + 88);
  sub_CC92D8(a1 + 184, v42, &__p);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 2056);
  v8 = *(a1 + 328);
  if (v7 > v8)
  {
    v8 = *(a1 + 2056);
  }

  *(a1 + 2056) = v8 + v7;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "Primary SPA scanned ", 20);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, " stop patterns and obtained ", 28);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " journeys in ", 13);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, " ms using ", 10);
    v13 = sub_71478(v12, v42[18]);
    sub_4A5C(v13, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v15 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v15 = v27;
      }

      v16 = v26;
      v14 = v15 - v26;
      if (v15 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v14 = 0;
        v20 = 0;
LABEL_26:
        *(&v18 + v14) = 0;
        sub_7E854(&v18, 2u);
        if (v20 < 0)
        {
          operator delete(v18);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        return sub_A40284(&v36);
      }

      v16 = v24;
      v14 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v20 = v14;
    if (v14)
    {
      memmove(&v18, v16, v14);
    }

    goto LABEL_26;
  }

  return sub_A40284(&v36);
}

void sub_A96B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A40284(&a65);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A40284(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_A96C1C(uint64_t a1, unsigned int a2)
{
  v133 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v131[0] = *(a1 + 88);
  v131[1] = v3;
  v131[2] = *(a1 + 120);
  v132 = *(a1 + 136);
  LOBYTE(v131[0]) = 1;
  v130[0] = v131;
  v130[1] = a1;
  v130[2] = &v133;
  v4 = *(a1 + 664);
  v5 = *(a1 + 656);
  if (*v4 <= v5)
  {
    *v4 = v5 + 1;
    v6 = v4[2];
    v7 = v4[1] * (v5 + 1);
    v8 = (v4[3] - v6) >> 2;
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v10 != 0 && v9)
    {
      v11 = a2;
      sub_617214((v4 + 2), v10);
      a2 = v11;
    }

    else if (!v9)
    {
      v4[3] = v6 + 4 * v7;
    }
  }

  v12 = *(v4[2] + 4 * v4[1] * v5 + 4 * ((2 * a2) | 1));
  v14 = (a1 + 92);
  v13 = *(a1 + 92);
  v134[0] = v13;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_56;
  }

  v15 = 10 * (v12 - v13);
  if (v15 >= *(a1 + 52))
  {
    v16 = sub_A9D9E8(v130, v12);
    LODWORD(v115) = v16;
    v13 = v134[0];
    if (v16 == 0x7FFFFFFF || v134[0] >= v16)
    {
LABEL_34:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_35;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_33:
      v13 = v115;
      v134[0] = v115;
      goto LABEL_34;
    }

    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v20 = sub_258D4(v19, v134);
    v21 = sub_4A5C(v20, " to ", 4);
    sub_258D4(v21, &v115);
    if ((v129 & 0x10) != 0)
    {
      v23 = v128;
      if (v128 < v125)
      {
        v128 = v125;
        v23 = v125;
      }

      v24 = &v124;
    }

    else
    {
      if ((v129 & 8) == 0)
      {
        v22 = 0;
        v118 = 0;
LABEL_28:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 2u);
        if (v118 < 0)
        {
          operator delete(__dst);
        }

        if (v127 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v121);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v24 = v122;
      v23 = v123;
    }

    v25 = *v24;
    v22 = v23 - *v24;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v118 = v23 - *v24;
    if (v22)
    {
      memmove(&__dst, v25, v22);
    }

    goto LABEL_28;
  }

LABEL_35:
  if (v15 < *(a1 + 52))
  {
    goto LABEL_56;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_53;
  }

  sub_19594F8(&v119);
  sub_4A5C(&v119, "[", 1);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, "] Journey duration (", 20);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v129 & 0x10) != 0)
  {
    v29 = v128;
    if (v128 < v125)
    {
      v128 = v125;
      v29 = v125;
    }

    v30 = v124;
    v28 = v29 - v124;
    if (v29 - v124 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_132:
      sub_3244();
    }

LABEL_43:
    if (v28 >= 0x17)
    {
      operator new();
    }

    v116 = v28;
    if (v28)
    {
      memmove(&v115, v30, v28);
    }

    goto LABEL_48;
  }

  if ((v129 & 8) != 0)
  {
    v30 = v122[0];
    v28 = v123 - v122[0];
    if (v123 - v122[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_132;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v116 = 0;
LABEL_48:
  *(&v115 + v28) = 0;
  sub_7E854(&v115, 2u);
  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v127 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v121);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_53:
  v31 = *(a1 + 60);
  if (v31 > *(a1 + 56))
  {
LABEL_54:
    v112 = v12;
    goto LABEL_55;
  }

  v111 = v12;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v43 = v31 / 10;
      v44 = v31 % 10;
      goto LABEL_89;
    }

    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v42 = std::ostream::operator<<();
    sub_4A5C(v42, "] Examining time shift of ", 26);
    v43 = v31 / 10;
    v44 = v31 % 10;
    v45 = std::ostream::operator<<();
    sub_4A5C(v45, " sec (exponential search)", 25);
    if ((v129 & 0x10) != 0)
    {
      v47 = v128;
      v48 = &v124;
      if (v128 < v125)
      {
        v128 = v125;
        v47 = v125;
        v48 = &v124;
      }

      goto LABEL_78;
    }

    if ((v129 & 8) != 0)
    {
      v47 = v123;
      v48 = v122;
LABEL_78:
      v49 = *v48;
      v46 = v47 - *v48;
      if (v46 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v46 >= 0x17)
      {
        operator new();
      }

      v116 = v47 - *v48;
      if (v46)
      {
        memmove(&v115, v49, v46);
      }

      goto LABEL_84;
    }

    v46 = 0;
    v116 = 0;
LABEL_84:
    *(&v115 + v46) = 0;
    sub_7E854(&v115, 2u);
    if (v116 < 0)
    {
      operator delete(v115);
    }

    v119 = v114;
    *(&v119 + *(*&v114 - 24)) = v113;
    if (v127 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v121);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_89:
    v50 = v31 < 0 ? -5 : 5;
    v51 = v43 + (((103 * (v50 + v44)) >> 15) & 1) + ((103 * (v50 + v44)) >> 10);
    v52 = v51 + v12;
    v53 = sub_A9D9E8(v130, v51 + v12);
    if (*(a1 + 64) * fabs((10 * (v53 - v134[0]))) >= fabs((10 * v51)))
    {
      break;
    }

    v41 = v31 + v31;
    if (v41 >= 0.0)
    {
      if (v41 >= 4.50359963e15)
      {
        goto LABEL_69;
      }

      v54 = (v41 + v41) + 1;
    }

    else
    {
      if (v41 <= -4.50359963e15)
      {
        goto LABEL_69;
      }

      v54 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
    }

    v41 = (v54 >> 1);
LABEL_69:
    v31 = v41;
    if (*(a1 + 56) < v41)
    {
      goto LABEL_54;
    }
  }

  v71 = v53;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v72 = std::ostream::operator<<();
    sub_4A5C(v72, "] Journey duration improved from ", 33);
    v73 = std::ostream::operator<<();
    sub_4A5C(v73, " to ", 4);
    v74 = std::ostream::operator<<();
    sub_4A5C(v74, " sec for time shift of ", 23);
    v75 = std::ostream::operator<<();
    sub_4A5C(v75, " sec", 4);
    if ((v129 & 0x10) != 0)
    {
      v77 = v128;
      if (v128 < v125)
      {
        v128 = v125;
        v77 = v125;
      }

      v78 = &v124;
    }

    else
    {
      if ((v129 & 8) == 0)
      {
        v76 = 0;
        v116 = 0;
        goto LABEL_143;
      }

      v78 = v122;
      v77 = v123;
    }

    v79 = *v78;
    v76 = v77 - *v78;
    if (v76 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v76 >= 0x17)
    {
      operator new();
    }

    v116 = v77 - *v78;
    if (v76)
    {
      memmove(&v115, v79, v76);
    }

LABEL_143:
    *(&v115 + v76) = 0;
    sub_7E854(&v115, 2u);
    if (v116 < 0)
    {
      operator delete(v115);
    }

    v119 = v114;
    *(&v119 + *(*&v114 - 24)) = v113;
    if (v127 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v121);
    std::ostream::~ostream();
    std::ios::~ios();
    v12 = v111;
  }

  v134[0] = v71;
  v112 = v12;
  if (v51)
  {
    v80 = vcvtd_n_f64_s32(v31, 1uLL);
    if (v80 >= 0.0)
    {
      if (v80 < 4.50359963e15)
      {
        v81 = (v80 + v80) + 1;
LABEL_154:
        v80 = (v81 >> 1);
      }
    }

    else if (v80 > -4.50359963e15)
    {
      v81 = (v80 + v80) - 1 + (((v80 + v80) - 1) >> 63);
      goto LABEL_154;
    }

    v82 = v31 * 0.25;
    if (v82 >= 0.0)
    {
      if (v82 < 4.50359963e15)
      {
        v83 = (v82 + v82) + 1;
LABEL_160:
        v82 = (v83 >> 1);
      }
    }

    else if (v82 > -4.50359963e15)
    {
      v83 = (v82 + v82) - 1 + (((v82 + v82) - 1) >> 63);
      goto LABEL_160;
    }

    v84 = v82;
    if (*(a1 + 60) > v82)
    {
      v112 = v52;
      goto LABEL_55;
    }

    v85 = v80;
    v112 = v52;
    while (2)
    {
      *(a1 + 296) = *(a1 + 296) + 1.0;
      v87 = v84 + v85;
      if (sub_7E7E4(2u))
      {
        sub_19594F8(&v119);
        sub_4A5C(&v119, "[", 1);
        v88 = std::ostream::operator<<();
        sub_4A5C(v88, "] Examining time shift of ", 26);
        v89 = v87 / 10;
        v90 = v87 % 10;
        v91 = std::ostream::operator<<();
        sub_4A5C(v91, " sec (binary refinement search)", 31);
        if ((v129 & 0x10) != 0)
        {
          v93 = v85;
          v94 = v128;
          v95 = &v124;
          if (v128 < v125)
          {
            v128 = v125;
            v94 = v125;
            v95 = &v124;
          }
        }

        else
        {
          if ((v129 & 8) == 0)
          {
            v92 = 0;
            v116 = 0;
            goto LABEL_181;
          }

          v93 = v85;
          v94 = v123;
          v95 = v122;
        }

        v96 = *v95;
        v92 = v94 - *v95;
        if (v92 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v92 >= 0x17)
        {
          operator new();
        }

        v116 = v94 - *v95;
        if (v92)
        {
          memmove(&v115, v96, v92);
        }

        v85 = v93;
LABEL_181:
        *(&v115 + v92) = 0;
        sub_7E854(&v115, 2u);
        if (v116 < 0)
        {
          operator delete(v115);
        }

        v119 = v114;
        *(&v119 + *(*&v114 - 24)) = v113;
        if (v127 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v121);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      else
      {
        v89 = v87 / 10;
        v90 = v87 % 10;
      }

      if (v87 < 0)
      {
        v97 = -5;
      }

      else
      {
        v97 = 5;
      }

      v98 = v89 + (((103 * (v97 + v90)) >> 15) & 1) + ((103 * (v97 + v90)) >> 10) + v111;
      v99 = sub_A9D9E8(v130, v98);
      if (*(a1 + 64) * fabs((10 * (v134[0] - v99))) >= fabs((10 * (v112 - v98))))
      {
        v85 = v87;
        v86 = vcvtd_n_f64_s32(v84, 1uLL);
        if (v86 >= 0.0)
        {
          goto LABEL_213;
        }
      }

      else
      {
        v100 = v99;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v119);
          sub_4A5C(&v119, "[", 1);
          v101 = std::ostream::operator<<();
          sub_4A5C(v101, "] Journey duration improved from ", 33);
          v102 = std::ostream::operator<<();
          sub_4A5C(v102, " to ", 4);
          v103 = std::ostream::operator<<();
          sub_4A5C(v103, " sec for time shift of ", 23);
          v104 = std::ostream::operator<<();
          sub_4A5C(v104, " sec", 4);
          if ((v129 & 0x10) != 0)
          {
            v107 = v85;
            v108 = v128;
            v109 = &v124;
            if (v128 < v125)
            {
              v128 = v125;
              v108 = v125;
              v109 = &v124;
            }
          }

          else
          {
            if ((v129 & 8) == 0)
            {
              v105 = 0;
              v116 = 0;
              goto LABEL_207;
            }

            v107 = v85;
            v108 = v123;
            v109 = v122;
          }

          v110 = *v109;
          v105 = v108 - *v109;
          if (v105 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v105 >= 0x17)
          {
            operator new();
          }

          v116 = v108 - *v109;
          if (v105)
          {
            memmove(&v115, v110, v105);
          }

          v85 = v107;
LABEL_207:
          *(&v115 + v105) = 0;
          sub_7E854(&v115, 2u);
          if (v116 < 0)
          {
            operator delete(v115);
          }

          v119 = v114;
          *(&v119 + *(*&v114 - 24)) = v113;
          if (v127 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v121);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v134[0] = v100;
        v112 = v98;
        v86 = vcvtd_n_f64_s32(v84, 1uLL);
        if (v86 >= 0.0)
        {
LABEL_213:
          if (v86 < 4.50359963e15)
          {
            v106 = (v86 + v86) + 1;
LABEL_164:
            v86 = (v106 >> 1);
          }

          goto LABEL_165;
        }
      }

      if (v86 > -4.50359963e15)
      {
        v106 = (v86 + v86) - 1 + (((v86 + v86) - 1) >> 63);
        goto LABEL_164;
      }

LABEL_165:
      v84 = v86;
      if (*(a1 + 60) > v86)
      {
        break;
      }

      continue;
    }
  }

LABEL_55:
  *(a1 + 232) = sub_7EA60(&__dst);
  v13 = v134[0];
  v12 = v112;
  v14 = (a1 + 92);
LABEL_56:
  if (v13 != *v14)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v119);
      sub_4A5C(&v119, "[", 1);
      v32 = std::ostream::operator<<();
      v33 = sub_4A5C(v32, "] Shifting ", 11);
      v34 = sub_4A5C(v33, "departure", 9);
      v35 = sub_4A5C(v34, " time from ", 11);
      v36 = sub_258D4(v35, v14);
      v37 = sub_4A5C(v36, " to ", 4);
      sub_258D4(v37, v134);
      if ((v129 & 0x10) != 0)
      {
        v39 = v128;
        if (v128 < v125)
        {
          v128 = v125;
          v39 = v125;
        }

        v40 = v124;
        v38 = v39 - v124;
        if (v39 - v124 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_126;
        }
      }

      else
      {
        if ((v129 & 8) == 0)
        {
          v38 = 0;
          v118 = 0;
          goto LABEL_100;
        }

        v40 = v122[0];
        v38 = v123 - v122[0];
        if (v123 - v122[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_126:
          sub_3244();
        }
      }

      if (v38 >= 0x17)
      {
        operator new();
      }

      v118 = v38;
      if (v38)
      {
        memmove(&__dst, v40, v38);
      }

LABEL_100:
      *(&__dst + v38) = 0;
      sub_7E854(&__dst, 2u);
      if (v118 < 0)
      {
        operator delete(__dst);
      }

      if (v127 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v121);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v55 = v133;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_118;
  }

  v56 = v133 + 1;
  v57 = *(a1 + 24);
  if (v133 + 1 <= v57 + 1)
  {
    v56 = v57 + 1;
  }

  if (v133 + 1 < v57 + 1)
  {
    v58 = v56 - 1;
    v59 = 2 * v133 + 3;
    v60 = v133;
    while (1)
    {
      v61 = *(a1 + 664);
      v62 = *(a1 + 656);
      if (*v61 <= v62)
      {
        *v61 = v62 + 1;
        v63 = v61[2];
        v64 = v61[1] * (v62 + 1);
        v65 = (v61[3] - v63) >> 2;
        if (v64 <= v65)
        {
          if (v64 < v65)
          {
            v61[3] = v63 + 4 * v64;
          }
        }

        else
        {
          sub_617214((v61 + 2), v64 - v65);
        }
      }

      if (*(v61[2] + 4 * v61[1] * v62 + 4 * v59) != 0x7FFFFFFF)
      {
        break;
      }

      ++v60;
      v59 += 2;
      if (v58 == v60)
      {
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    if (*(a1 + 24) >= *(a1 + 148) + v55)
    {
      v60 = *(a1 + 148) + v55;
    }

    else
    {
      v60 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v60;
  v66 = *(a1 + 144);
  v67 = v66 / 10;
  v68 = v66 % 10;
  if (v66 < 0)
  {
    v69 = -5;
  }

  else
  {
    v69 = 5;
  }

  sub_A9D9E8(v130, v67 + v12 + (((103 * (v69 + v68)) >> 15) & 1) + ((103 * (v69 + v68)) >> 10));
  return v134[0];
}

void sub_A98418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1959728(&a31);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a31);
  _Unwind_Resume(a1);
}

void sub_A985C8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_13;
  }

  v6 = a2 + 1;
  v7 = *(a1 + 24);
  if (a2 + 1 <= (v7 + 1))
  {
    v6 = v7 + 1;
  }

  if (a2 + 1 < (v7 + 1))
  {
    v8 = v6 - 1;
    v9 = 2 * a2 + 3;
    v10 = a2;
    while (1)
    {
      v11 = *(a1 + 664);
      v12 = *(a1 + 656);
      if (*v11 <= v12)
      {
        *v11 = v12 + 1;
        v13 = v11[2];
        v14 = v11[1] * (v12 + 1);
        v15 = (v11[3] - v13) >> 2;
        if (v14 <= v15)
        {
          if (v14 < v15)
          {
            v11[3] = v13 + 4 * v14;
          }
        }

        else
        {
          sub_617214((v11 + 2), v14 - v15);
        }
      }

      if (*(v11[2] + 4 * v11[1] * v12 + 4 * v9) != 0x7FFFFFFF)
      {
        break;
      }

      ++v10;
      v9 += 2;
      if (v8 == v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (*(a1 + 24) >= (*(a1 + 148) + v4))
    {
      v10 = *(a1 + 148) + v4;
    }

    else
    {
      v10 = *(a1 + 24);
    }
  }

  v16 = *(a1 + 104);
  v51[0] = *(a1 + 88);
  v51[1] = v16;
  v51[2] = *(a1 + 120);
  v52 = *(a1 + 136);
  DWORD1(v51[0]) = a3;
  *(a1 + 1440) = v10;
  sub_AA0F08(a1 + 1424, v51);
  sub_AA11F8((a1 + 1424), v4, &v43);
  sub_CC92D8(a1 + 184, a1 + 1904, &__p);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  v17 = *(a1 + 2048);
  *(a1 + 328) -= v17;
  v18 = *(a1 + 2072);
  if (v18 <= v17)
  {
    v18 = v17;
  }

  *(a1 + 2072) = v18;
  sub_AA9EA4(v44[0], v44[1], (a1 + 160));
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v30);
    sub_4A5C(&v30, "[", 1);
    v19 = std::ostream::operator<<();
    sub_4A5C(v19, "] McSPA scanned ", 16);
    v20 = std::ostream::operator<<();
    sub_4A5C(v20, " stop patterns and obtained ", 28);
    v21 = std::ostream::operator<<();
    sub_4A5C(v21, " journeys in ", 13);
    v22 = std::ostream::operator<<();
    v23 = sub_4A5C(v22, " ms using ", 10);
    v24 = sub_71478(v23, *(a1 + 2048));
    sub_4A5C(v24, " of memory", 10);
    if ((v40 & 0x10) != 0)
    {
      v26 = v39;
      if (v39 < v36)
      {
        v39 = v36;
        v26 = v36;
      }

      v27 = v35;
      v25 = v26 - v35;
      if (v26 - v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if ((v40 & 8) == 0)
      {
        v25 = 0;
        v29 = 0;
LABEL_32:
        *(&v28 + v25) = 0;
        sub_7E854(&v28, 2u);
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        std::locale::~locale(&v32);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v27 = v33;
      v25 = v34 - v33;
      if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_47:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v29 = v25;
    if (v25)
    {
      memmove(&v28, v27, v25);
    }

    goto LABEL_32;
  }

LABEL_37:
  v30 = COERCE_DOUBLE(&v50);
  sub_A31F30(&v30);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44[3]);
  }

  if (v44[0])
  {
    sub_A95778(v44);
    operator delete(v44[0]);
  }
}

void sub_A98A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a64);
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A300F8(va, v65);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A300F8(va, v66);
  _Unwind_Resume(a1);
}

uint64_t sub_A98AD4(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = a1 + 8;
  if (*(a1 + 8))
  {
    sub_A95778((a1 + 8));
    operator delete(*v5);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  v7 = *(a2 + 104);
  v8 = *(a2 + 88);
  v9 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v9;
  *(a1 + 88) = v8;
  *(a1 + 104) = v7;
  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  *(a1 + 184) = *(a2 + 184);
  v13 = *(a1 + 192);
  if (v13)
  {
    *(a1 + 200) = v13;
    operator delete(v13);
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v14 = *(a1 + 216);
  if (v14)
  {
    *(a1 + 224) = v14;
    operator delete(v14);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v15 = (a1 + 240);
  v16 = *(a1 + 240);
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = *(a1 + 248);
  v18 = *(a1 + 240);
  if (v17 == v16)
  {
    goto LABEL_21;
  }

  v19 = v17 - 3;
  do
  {
    if (*v19)
    {
      sub_A95778(v19);
      operator delete(*v19);
    }

    if (*(v19 - 25) < 0)
    {
      operator delete(*(v19 - 6));
      if ((*(v19 - 49) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((*(v19 - 49) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(*(v19 - 9));
LABEL_12:
    v20 = v19 - 9;
    v19 -= 12;
  }

  while (v20 != v16);
  v18 = *v15;
LABEL_21:
  *(a1 + 248) = v16;
  operator delete(v18);
  *v15 = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
LABEL_22:
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  return a1;
}

void sub_A98CD4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = 4;
  if (!vcvts_n_u32_f32(v2, 2uLL))
  {
    do
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v3 *= 2;
    }

    while (!(v2 * v3));
  }

  if (*(result + 48) || v3 != *(result + 56))
  {
    sub_A98D90(result, v3);
  }

  *(result + 96) = *(result + 88);
  *(result + 112) = 0;
}

uint64x2_t sub_A98D90(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    if (*(a1 + 56) == a2)
    {
      goto LABEL_7;
    }

    v5 = malloc_type_realloc(*(a1 + 80), 12 * a2, 0x10000403E1C8BA9uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v5 = malloc_type_malloc(12 * a2, 0x10000403E1C8BA9uLL);
  }

  *(a1 + 80) = v5;
  v4 = v5;
LABEL_7:
  if (a2)
  {
    v6 = 12 * a2;
    do
    {
      v7 = *(a1 + 64);
      v4[2] = *(a1 + 72);
      *v4 = v7;
      v4 += 3;
      v6 -= 12;
    }

    while (v6);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_A98E8C(uint64_t a1, unint64_t *a2)
{
  v4 = sub_A98F60(a1, a2);
  if (v4 != -1)
  {
    return *(a1 + 80) + 12 * v4;
  }

  v7 = v5;
  if (sub_A99094(a1, 1))
  {
    v11 = *a2;
    v12 = -1;
    v4 = sub_A98F60(a1, &v11);
    if (v4 != -1)
    {
      return *(a1 + 80) + 12 * v4;
    }

    v9 = v8;
    v10 = a1;
  }

  else
  {
    v11 = *a2;
    v12 = -1;
    v10 = a1;
    v9 = v7;
  }

  sub_A9936C(v10, &v11, v9, v13);
  return v13[1];
}

uint64_t sub_A98F60(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 56) - 1;
  v4 = *a2;
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33);
  v7 = *(a1 + 80);
  v9 = *(a1 + 64);
  v8 = *(a1 + 68);
  result = v6 & v3;
  v11 = (v7 + 12 * (v6 & v3));
  v12 = *v11;
  v13 = v11[1];
  if (v8 == v13 && v9 == v12)
  {
    return -1;
  }

  if (*(a1 + 40))
  {
    v17 = a1 + 32;
    v15 = *(a1 + 32);
    v16 = *(v17 + 4);
    v18 = -1;
    v19 = 1;
    do
    {
      if (v16 == v13 && v15 == v12)
      {
        if (v18 == -1)
        {
          v18 = result;
        }
      }

      else if (__PAIR64__(v13, v12) == v4)
      {
        return result;
      }

      result = (result + v19) & v3;
      v20 = (v7 + 12 * result);
      v12 = *v20;
      v13 = v20[1];
      ++v19;
    }

    while (v8 != v13 || v9 != v12);
    if (v18 != -1)
    {
      return -1;
    }

    return -1;
  }

  v22 = 1;
  while (__PAIR64__(v13, v12) != v4)
  {
    result = (result + v22) & v3;
    v23 = (v7 + 12 * result);
    v12 = *v23;
    v13 = v23[1];
    ++v22;
    if (v8 == v13 && v9 == v12)
    {
      return -1;
    }
  }

  return result;
}

uint64_t sub_A99094(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_A9945C(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_27;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_27;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_A995A0(&v26, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v27;
      *a1 = v26;
      *(a1 + 16) = v18;
      v26 = v17;
      v27 = v16;
      v19 = *(a1 + 32);
      *(a1 + 32) = v28;
      v28 = v19;
      v20 = v29;
      v21 = v30;
      v29 = *(a1 + 48);
      v22 = *(a1 + 72);
      v23 = *(a1 + 56);
      *(a1 + 48) = v20;
      *(a1 + 56) = v21;
      *(a1 + 72) = v31;
      *(a1 + 64) = *(&v30 + 1);
      v30 = v23;
      v31 = v22;
      v24 = *(a1 + 80);
      *(a1 + 80) = v32;
      v32 = v24;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v21)));
      *(a1 + 24) = 0;
      v26 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v27, v23)));
      BYTE8(v27) = 0;
      if (v24)
      {
        free(v24);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_A9936C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(result + 40);
  v4 = *(result + 48);
  if ((v4 - v5) >= 0x1555555555555555)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v6 = *(result + 80);
  if (v5 && ((v7 = (v6 + 12 * a3), *(result + 36) == v7[1]) ? (v8 = *(result + 32) == *v7) : (v8 = 0), v8))
  {
    *(result + 40) = v5 - 1;
  }

  else
  {
    *(result + 48) = v4 + 1;
  }

  v9 = v6 + 12 * a3;
  v10 = *a2;
  *(v9 + 8) = *(a2 + 2);
  *v9 = v10;
  v11 = *(result + 80);
  v12 = v11 + 12 * a3;
  v13 = v11 + 12 * *(result + 56);
  *a4 = result;
  a4[1] = v12;
  a4[2] = v13;
  return result;
}

uint64_t sub_A9945C(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_A995A0(&v18, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v19;
    *a1 = v18;
    *(a1 + 16) = v10;
    v18 = v9;
    v19 = v8;
    v11 = *(a1 + 32);
    *(a1 + 32) = v20;
    v20 = v11;
    v12 = v21;
    v13 = v22;
    v21 = *(a1 + 48);
    v14 = *(a1 + 72);
    v15 = *(a1 + 56);
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 72) = v23;
    *(a1 + 64) = *(&v22 + 1);
    v22 = v15;
    v23 = v14;
    v16 = *(a1 + 80);
    *(a1 + 80) = v24;
    v24 = v16;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v13)));
    *(a1 + 24) = 0;
    v18 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v19, v15)));
    BYTE8(v19) = 0;
    if (v16)
    {
      free(v16);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

float sub_A995A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  v5 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_A996E0(a1, a2, a3);
  }

  else
  {
    v7 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v8 = *(a1 + 16) * v7;
      if (*(a2 + 48) - *(a2 + 40) < v8)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v7 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v7 *= 2;
      }

      while (v7 < a3);
    }

    *(a1 + 56) = v7;
    result = *(a1 + 20) * v7;
    *a1 = v8;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_A996E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_A98D90(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v9 = *(a2 + 64);
    v8 = *(a2 + 68);
    if (*(a2 + 40))
    {
      v10 = 12 * v7;
      v11 = *(a2 + 80);
      while (1)
      {
        v12 = *v11;
        v13 = v11[1];
        if ((v8 != v13 || v9 != v12) && (*(a2 + 36) != v13 || *(a2 + 32) != v12))
        {
          break;
        }

        v11 += 3;
        v10 -= 12;
        if (!v10)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v36 = 12 * v7;
      v11 = *(a2 + 80);
      while (v8 == v11[1] && v9 == *v11)
      {
        v11 += 3;
        v36 -= 12;
        if (!v36)
        {
          goto LABEL_60;
        }
      }
    }
  }

  else
  {
    v11 = *(a2 + 80);
  }

  v16 = *(a2 + 80) + 12 * v7;
  if (v11 != v16)
  {
    do
    {
      v17 = *(a1 + 56) - 1;
      v18 = 0xFF51AFD7ED558CCDLL * (*v11 ^ (*v11 >> 33));
      v19 = (0xC4CEB9FE1A85EC53 * (v18 ^ (v18 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v18 ^ (v18 >> 33))) >> 33);
      v20 = *(a1 + 80);
      v22 = *(a1 + 64);
      v21 = *(a1 + 68);
      v23 = v19 & v17;
      v24 = (v20 + 12 * v23);
      if (v21 != v24[1] || v22 != *v24)
      {
        v26 = 1;
        do
        {
          v23 = (v23 + v26) & v17;
          v24 = (v20 + 12 * v23);
          ++v26;
        }

        while (v21 != v24[1] || v22 != *v24);
      }

      v28 = *v11;
      v24[2] = v11[2];
      *v24 = v28;
      ++*(a1 + 48);
      v11 += 3;
      if (v11 != v16)
      {
        v30 = *(a2 + 64);
        v29 = *(a2 + 68);
        if (*(a2 + 40))
        {
          do
          {
            v32 = *v11;
            v31 = v11[1];
            if ((v29 != v31 || v30 != v32) && (*(a2 + 36) != v31 || *(a2 + 32) != v32))
            {
              break;
            }

            v11 += 3;
          }

          while (v11 != v16);
        }

        else
        {
          do
          {
            if (v29 != v11[1] || v30 != *v11)
            {
              break;
            }

            v11 += 3;
          }

          while (v11 != v16);
        }
      }
    }

    while (v11 != (*(a2 + 80) + 12 * *(a2 + 56)));
  }

LABEL_60:
  ++*(a1 + 28);
}

void sub_A99960(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v40);
  v4 = *(a2 + 16);
  *(a1 + 112) = *a2;
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 152) = *(a2 + 40);
  sub_A99D98(a1);
  v5 = *(a1 + 48);
  v41[0] = 0x1FFFFFFFDLL;
  v6 = sub_A98E8C(v5, v41);
  v7 = *(v6 + 8);
  if (v7 != -1)
  {
    *(a1 + 456) = v7;
    if (*(a1 + 33) != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!sub_A822FC(*(a1 + 40)))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = *(v5 + 112);
  *(v5 + 112) = v8 + 1;
  *(v6 + 8) = v8;
  v9 = v6;
  sub_2512DC(v5 + 88, v41);
  *(a1 + 456) = *(v9 + 8);
  if (*(a1 + 33) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *(a1 + 48);
  v41[0] = 0x1FFFFFFFELL;
  v11 = sub_A98E8C(v10, v41);
  v12 = *(v11 + 8);
  if (v12 == -1)
  {
    v13 = *(v10 + 112);
    *(v10 + 112) = v13 + 1;
    *(v11 + 8) = v13;
    v14 = v11;
    sub_2512DC(v10 + 88, v41);
    v12 = *(v14 + 8);
  }

  sub_A9BF80(a1, 0, v12, 0, *(a1 + 116));
LABEL_9:
  LODWORD(v15) = *(a1 + 168);
  if (v15 >= 2)
  {
    v16 = 1;
    while (1)
    {
      if (*(a1 + 25) & 1) == 0 && v16 >= 2 && (*(a1 + 27))
      {
        sub_A99FE8(a1, v16);
      }

      if (v16)
      {
        v26 = *(a1 + 312);
        v27 = *(a1 + 320);
        if (v26 != v27)
        {
          v28 = *(a1 + 288);
          v29 = *(a1 + 312);
          do
          {
            v30 = *v29++;
            *(v28 + ((v30 >> 3) & 0x1FFFFFF8)) &= ~(1 << v30);
          }

          while (v29 != v27);
        }

        *(a1 + 320) = v26;
        sub_A9A170(a1, v16);
        sub_A9A428(a1, v16);
        v31 = *(a1 + 456);
        if (*(a1 + 296) > v31 && ((*(*(a1 + 288) + ((v31 >> 3) & 0x1FFFFFF8)) >> v31) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        }

        if (*(a1 + 25) == 1 && *(a1 + 312) == *(a1 + 320))
        {
LABEL_43:
          LODWORD(v15) = *(a1 + 168);
          if (v15)
          {
            goto LABEL_44;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v17 = *(a1 + 264);
        v18 = *(a1 + 272);
        if (v17 != v18)
        {
          v19 = *(a1 + 240);
          v20 = *(a1 + 264);
          do
          {
            v21 = *v20++;
            *(v19 + ((v21 >> 3) & 0x1FFFFFF8)) &= ~(1 << v21);
          }

          while (v20 != v18);
        }

        *(a1 + 272) = v17;
        sub_A9ACD0(a1, v16);
        sub_7E9A4(v41);
        v22 = *(a1 + 432);
        v23 = *(a1 + 440);
        while (v22 != v23)
        {
          v24 = *v22++;
          sub_A9C9D8(a1, v16, v24);
        }

        *(a1 + 624) = sub_7EA60(v41) + *(a1 + 624);
        v25 = *(a1 + 456);
        if (*(a1 + 248) > v25 && ((*(*(a1 + 240) + ((v25 >> 3) & 0x1FFFFFF8)) >> v25) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v16 & 0x3E);
        }

        if (*(a1 + 25) == 1 && *(a1 + 264) == *(a1 + 272))
        {
          goto LABEL_43;
        }
      }

      v32 = sub_A9D694(a1) + 744;
      if (*(a1 + 736) > v32)
      {
        v32 = *(a1 + 736);
      }

      *(a1 + 736) = v32;
      if (sub_A9BB08(a1, v16))
      {
        goto LABEL_43;
      }

      ++v16;
      v15 = *(a1 + 168);
      if (v16 >= v15)
      {
        goto LABEL_41;
      }
    }
  }

  LODWORD(v16) = 1;
LABEL_41:
  if (v15)
  {
LABEL_44:
    v33 = 0;
    v34 = v15;
    do
    {
      if ((*(*(a1 + 464) + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33))
      {
        *(a1 + 656) = *(a1 + 656) + 1.0;
        v35 = *(a1 + 176);
        v36 = *(a1 + 456);
        if (*v35 <= v36)
        {
          *v35 = v36 + 1;
          v37 = v35[2];
          v38 = v35[1] * (v36 + 1);
          v39 = (v35[3] - v37) >> 2;
          if (v38 > v39)
          {
            sub_617214((v35 + 2), v38 - v39);
          }

          else if (v38 < v39)
          {
            v35[3] = v37 + 4 * v38;
          }
        }

        *(a1 + 648) += *(v35[2] + 4 * v35[1] * v36 + 4 * v33);
      }

      ++v33;
    }

    while (v34 != v33);
  }

LABEL_53:
  *(a1 + 664) = v16;
  *(a1 + 616) = sub_7EA60(v40);
}

double sub_A99D98(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  if (v2 != v3)
  {
    v4 = *(a1 + 240);
    v5 = *(a1 + 264);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 272) = v2;
  v7 = *(a1 + 312);
  v8 = *(a1 + 320);
  if (v7 != v8)
  {
    v9 = *(a1 + 288);
    v10 = *(a1 + 312);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 320) = v7;
  v12 = *(a1 + 360);
  v13 = *(a1 + 368);
  if (v12 != v13)
  {
    v14 = *(a1 + 336);
    v15 = *(a1 + 360);
    do
    {
      v16 = *v15++;
      *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
    }

    while (v15 != v13);
  }

  *(a1 + 368) = v12;
  v17 = *(a1 + 432);
  v18 = *(a1 + 440);
  if (v17 != v18)
  {
    v19 = *(a1 + 408);
    v20 = *(a1 + 384);
    v21 = *(a1 + 432);
    do
    {
      v22 = *v21++;
      *(v19 + ((v22 >> 3) & 0x1FFFFFF8)) &= ~(1 << v22);
      *(v20 + 4 * v22) = -1;
    }

    while (v21 != v18);
  }

  *(a1 + 440) = v17;
  sub_C4306C((a1 + 488));
  *(a1 + 472) = 0;
  v33 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v34, &__p);
  v23 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v23);
  }

  *v23 = v34;
  *(a1 + 608) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(v34) = 0;
  v24 = v41;
  *(a1 + 680) = v40;
  *(a1 + 696) = v24;
  v25 = v43;
  *(a1 + 712) = v42;
  *(a1 + 728) = v25;
  v26 = v37;
  *(a1 + 616) = v36;
  *(a1 + 632) = v26;
  v27 = v39;
  *(a1 + 648) = v38;
  *(a1 + 664) = v27;
  if (v33 < 0)
  {
    operator delete(__p);
    v28 = (2 * *(a1 + 8) + 2);
    *(a1 + 168) = v28;
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v28 = (2 * *(a1 + 8) + 2);
  *(a1 + 168) = v28;
  if (*(a1 + 24))
  {
LABEL_17:
    v29 = *(a1 + 176);
    v29[3] = v29[2];
    *v29 = 0;
    v29[1] = v28;
  }

LABEL_18:
  *(a1 + 200) = *(a1 + 192);
  *(a1 + 224) = *(a1 + 216);
  sub_4D9168(a1 + 464, v28, 0);
  return sub_C430C8((a1 + 488), *(a1 + 16), v30);
}

void sub_A99FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_A99FE8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 360);
  v4 = *(a1 + 368);
  if (v3 == v4)
  {
    v19 = *(a1 + 360);
    goto LABEL_21;
  }

  v5 = a2 - 2;
  v6 = a2;
  do
  {
    v7 = *v3;
    v8 = *(a1 + 176);
    v9 = *v8;
    v10 = v8;
    if (*v8 > v7)
    {
      goto LABEL_7;
    }

    *v8 = v7 + 1;
    v11 = v8[2];
    v12 = v8[1] * (v7 + 1);
    v13 = (v8[3] - v11) >> 2;
    if (v12 > v13)
    {
      sub_617214((v8 + 2), v12 - v13);
      v10 = *(a1 + 176);
      v9 = *v10;
LABEL_7:
      v14 = *(v8[2] + 4 * v8[1] * v7 + 4 * v5);
      if (v9 <= v7)
      {
        *v10 = v7 + 1;
        v15 = v10[2];
        v16 = v10[1] * (v7 + 1);
        v17 = (v10[3] - v15) >> 2;
        if (v16 <= v17)
        {
          if (v16 < v17)
          {
            v10[3] = v15 + 4 * v16;
          }
        }

        else
        {
          sub_617214((v10 + 2), v16 - v17);
        }
      }

      v8 = v10;
      if (v14 != 0x7FFFFFFF)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    }

    if (v12 < v13)
    {
      v8[3] = v11 + 4 * v12;
    }

    v14 = *(v8[2] + 4 * v8[1] * v7 + 4 * v5);
    if (v14 != 0x7FFFFFFF)
    {
LABEL_17:
      v18 = v8[2] + 4 * v8[1] * v7;
      if (v14 < *(v18 + 4 * v6))
      {
        *(v18 + 4 * v6) = v14;
      }
    }

LABEL_3:
    ++v3;
  }

  while (v3 != v4);
  v3 = *(a1 + 360);
  v19 = *(a1 + 368);
LABEL_21:
  result = *(a1 + 696) + ((v19 - v3) >> 2);
  *(a1 + 696) = result;
  return result;
}

double sub_A9A170(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v33);
  v4 = *(a1 + 264);
  v5 = *(a1 + 272);
  if (v4 != v5)
  {
    v32 = a2 - 1;
    v30 = ~a2;
    v31 = a2;
    while (1)
    {
      v6 = *v4;
      v7 = *sub_A9C5E0((*(a1 + 48) + 88), v6);
      v8 = *(a1 + 176);
      if (*v8 <= v6)
      {
        *v8 = v6 + 1;
        v9 = v8[2];
        v10 = v8[1] * (v6 + 1);
        v11 = (v8[3] - v9) >> 2;
        if (v10 <= v11)
        {
          if (v10 < v11)
          {
            v8[3] = v9 + 4 * v10;
          }
        }

        else
        {
          sub_617214((v8 + 2), v10 - v11);
        }
      }

      v12 = *(v8[2] + 4 * v8[1] * v6 + 4 * v32);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
LABEL_20:
        v18 = v12;
        v19 = *(a1 + 64);
        if (v19)
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      }

      v14 = *(*(a1 + 40) + 4120);
      if (*(v14 + 17) == 1)
      {
        break;
      }

      v15 = sub_502FF8(v14 + 24, __ROR8__(v7, 32), 0, "stop");
      v20 = (v15 - *v15);
      if (*v20 >= 0x15u)
      {
        v17 = v20[10];
        if (v17)
        {
          goto LABEL_24;
        }
      }

      v18 = v12 + 30;
      v19 = *(a1 + 64);
      if (v19)
      {
LABEL_27:
        if (*v19 > v6)
        {
          v21 = 0;
          v22 = *(a1 + 168) + v30;
          v23 = v22;
          while (v21 <= v22)
          {
            v24 = *sub_A9C7DC(v19 + 2, v19[1] * v6 + v23);
            v21 += 2;
            v23 -= 2;
            if (v24 != 0x7FFFFFFF)
            {
              if (v24 < v18)
              {
                goto LABEL_4;
              }

              goto LABEL_32;
            }
          }
        }

        goto LABEL_4;
      }

LABEL_32:
      if (sub_A9BF80(a1, 1u, v6, v31, v18))
      {
        v25 = *(a1 + 176);
        if (*v25 <= v6)
        {
          *v25 = v6 + 1;
          v26 = v25[2];
          v27 = v25[1] * (v6 + 1);
          v28 = (v25[3] - v26) >> 2;
          if (v27 > v28)
          {
            sub_617214((v25 + 2), v27 - v28);
          }

          else if (v27 < v28)
          {
            v25[3] = v26 + 4 * v27;
          }
        }
      }

LABEL_4:
      if (++v4 == v5)
      {
        goto LABEL_37;
      }
    }

    v15 = sub_A74944(v14 + 24, v7, 0, "transfers at stop");
    v16 = (v15 - *v15);
    if (*v16 < 5u)
    {
      goto LABEL_20;
    }

    v17 = v16[2];
    if (!v17)
    {
      v18 = v12;
      v19 = *(a1 + 64);
      if (v19)
      {
        goto LABEL_27;
      }

      goto LABEL_32;
    }

LABEL_24:
    v18 = *(v15 + v17) + v12;
    v19 = *(a1 + 64);
    if (v19)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

LABEL_37:
  result = sub_7EA60(v33) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_A9A428(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v115);
  v4 = *(a1 + 264);
  v104 = *(a1 + 272);
  if (v4 != v104)
  {
    v103 = a2 - 1;
    v106 = ~a2;
    v107 = a2;
    while (1)
    {
      v105 = v4;
      v5 = *v4;
      v6 = *sub_A9C5E0((*(a1 + 48) + 88), v5);
      v7 = *(a1 + 176);
      if (*v7 <= v5)
      {
        *v7 = v5 + 1;
        v8 = v7[2];
        v9 = v7[1] * (v5 + 1);
        v10 = (v7[3] - v8) >> 2;
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v7[3] = v8 + 4 * v9;
          }
        }

        else
        {
          v11 = v6;
          sub_617214((v7 + 2), v9 - v10);
          v6 = v11;
        }
      }

      v108 = *(v7[2] + 4 * v7[1] * v5 + 4 * v103);
      sub_A74644(&v109, *(a1 + 40), v6);
      v12 = v110;
      v13 = 16;
      if (v114)
      {
        v13 = 32;
      }

      v14 = v5;
      if (v110 < *(&v109 + v13))
      {
        break;
      }

LABEL_3:
      v4 = v105 + 1;
      if (v105 + 1 == v104)
      {
        goto LABEL_161;
      }
    }

    while (1)
    {
      v16 = __ROR8__(*v12, 32);
      v17 = *(a1 + 48);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
        goto LABEL_59;
      }

      if (*(v17 + 40))
      {
        break;
      }

      v47 = 1;
      while (__PAIR64__(v26, v27) != v16)
      {
        v24 = (v24 + v47) & v18;
        v48 = (v21 + 12 * v24);
        v27 = *v48;
        v26 = v48[1];
        ++v47;
        if (v22 == v26 && v23 == v27)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      if (v24 != -1)
      {
        v50 = v21 + 12 * v24;
        v51 = *(v50 + 8);
        if (v51 == -1)
        {
          goto LABEL_93;
        }

        goto LABEL_108;
      }

      v29 = -1;
      if (sub_A99094(*(a1 + 48), 1))
      {
LABEL_34:
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_83;
        }

        if (v41)
        {
          v43 = -1;
          v44 = 1;
          do
          {
            if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
            {
              if (v43 == -1)
              {
                v43 = v37;
              }
            }

            else if (__PAIR64__(v39, v40) == v16)
            {
              goto LABEL_77;
            }

            v37 = (v37 + v44) & v33;
            v45 = (v34 + 12 * v37);
            v40 = *v45;
            v39 = v45[1];
            ++v44;
          }

          while (v35 != v39 || v36 != v40);
          if (v43 == -1)
          {
LABEL_83:
            v43 = v37;
          }

          v60 = *(v17 + 48);
          if ((v60 - v41) >= 0x1555555555555555)
          {
            goto LABEL_162;
          }
        }

        else
        {
          v57 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v57) & v33;
            v58 = (v34 + 12 * v37);
            v40 = *v58;
            v39 = v58[1];
            ++v57;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_83;
            }
          }

LABEL_77:
          if (v37 != -1)
          {
            v50 = v34 + 12 * v37;
            v51 = *(v50 + 8);
            if (v51 == -1)
            {
              goto LABEL_93;
            }

            goto LABEL_108;
          }

          v43 = -1;
          v60 = *(v17 + 48);
          if ((v60 - v41) >= 0x1555555555555555)
          {
LABEL_162:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v41 && ((v61 = (v34 + 12 * v43), *(v17 + 36) == v61[1]) ? (v62 = *(v17 + 32) == *v61) : (v62 = 0), v62))
        {
          *(v17 + 40) = v41 - 1;
          v56 = 3 * v43;
        }

        else
        {
          *(v17 + 48) = v60 + 1;
          v56 = 3 * v43;
        }

        goto LABEL_92;
      }

LABEL_60:
      v53 = *(v17 + 40);
      v52 = *(v17 + 48);
      if ((v52 - v53) >= 0x1555555555555555)
      {
        goto LABEL_162;
      }

      v34 = *(v17 + 80);
      if (v53 && ((v54 = (v34 + 12 * v29), *(v17 + 36) == v54[1]) ? (v55 = *(v17 + 32) == *v54) : (v55 = 0), v55))
      {
        *(v17 + 40) = v53 - 1;
      }

      else
      {
        *(v17 + 48) = v52 + 1;
      }

      v56 = 3 * v29;
LABEL_92:
      v63 = 4 * v56;
      v64 = v34 + v63;
      *v64 = v16;
      *(v64 + 8) = -1;
      v50 = *(v17 + 80) + v63;
      v51 = *(v50 + 8);
      if (v51 == -1)
      {
LABEL_93:
        v65 = *(v17 + 112);
        *(v17 + 112) = v65 + 1;
        *(v50 + 8) = v65;
        v67 = *(v17 + 96);
        v66 = *(v17 + 104);
        if (v67 >= v66)
        {
          v69 = *(v17 + 88);
          v70 = v67 - v69;
          v71 = (v67 - v69) >> 3;
          v72 = v71 + 1;
          if ((v71 + 1) >> 61)
          {
            sub_1794();
          }

          v73 = v66 - v69;
          if (v73 >> 2 > v72)
          {
            v72 = v73 >> 2;
          }

          if (v73 >= 0x7FFFFFFFFFFFFFF8)
          {
            v74 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v74 = v72;
          }

          if (v74)
          {
            if (!(v74 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v75 = (v67 - v69) >> 3;
          v76 = (8 * v71);
          v77 = (8 * v71 - 8 * v75);
          *v76 = v16;
          v68 = v76 + 1;
          memcpy(v77, v69, v70);
          *(v17 + 88) = v77;
          *(v17 + 96) = v68;
          *(v17 + 104) = 0;
          if (v69)
          {
            operator delete(v69);
          }

          v5 = v14;
        }

        else
        {
          *v67 = v16;
          v68 = v67 + 8;
        }

        *(v17 + 96) = v68;
        v51 = *(v50 + 8);
      }

LABEL_108:
      *(a1 + 688) = *(a1 + 688) + 1.0;
      if (v5 != v51)
      {
        v78 = *(v110 + 2);
        v79 = v78 / 10;
        v80 = v78 % 10;
        if (v78 < 0)
        {
          v81 = -5;
        }

        else
        {
          v81 = 5;
        }

        v82 = v79 + v108 + (((103 * (v81 + v80)) >> 15) & 1) + ((103 * (v81 + v80)) >> 10);
        v83 = *(a1 + 64);
        if (v83)
        {
          if (*v83 > v51)
          {
            v84 = 0;
            v85 = *(a1 + 168) + v106;
            v86 = v85;
            while (v84 <= v85)
            {
              v87 = *sub_A9C7DC(v83 + 2, v83[1] * v51 + v86);
              v84 += 2;
              v86 -= 2;
              if (v87 != 0x7FFFFFFF)
              {
                if (v87 < v82)
                {
                  break;
                }

                goto LABEL_118;
              }
            }
          }
        }

        else
        {
LABEL_118:
          if (sub_A9BF80(a1, 1u, v51, v107, v82))
          {
            v88 = *(a1 + 176);
            if (*v88 <= v51)
            {
              *v88 = v51 + 1;
              v89 = v88[2];
              v90 = v88[1] * (v51 + 1);
              v91 = (v88[3] - v89) >> 2;
              if (v90 <= v91)
              {
                if (v90 < v91)
                {
                  v88[3] = v89 + 4 * v90;
                }
              }

              else
              {
                sub_617214((v88 + 2), v90 - v91);
              }
            }
          }
        }
      }

      v15 = v111;
      v12 = (v110 + 12);
      v110 = v12;
      if (v12 == v111)
      {
        v12 = v112;
        v110 = v112;
        v92 = 1;
        v114 = 1;
      }

      else
      {
        v92 = v114;
      }

      if (v92)
      {
        v93 = v113;
      }

      else
      {
        v93 = v111;
      }

      if (*(v109 + 16) != 1 || v12 >= v93)
      {
        v5 = v14;
        if (v92)
        {
          v15 = v113;
        }

        if (v12 >= v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v95 = __ROR8__(*v12, 32);
        v96 = HIDWORD(v95) != 1 || (v95 + 3) >= 2;
        v5 = v14;
        if (v96)
        {
          while (!sub_2D5204(**(v109 + 4120)))
          {
            v15 = v111;
            v12 = (v110 + 12);
            v110 = v12;
            if (v12 == v111)
            {
              v12 = v112;
              v110 = v112;
              v92 = 1;
              v114 = 1;
              if (v112 >= v113)
              {
                goto LABEL_153;
              }
            }

            else
            {
              v92 = v114;
              v99 = 16;
              if (v114)
              {
                v99 = 32;
              }

              if (v12 >= *(&v109 + v99))
              {
                goto LABEL_153;
              }
            }

            v97 = __ROR8__(*v12, 32);
            if (HIDWORD(v97) == 1 && (v97 + 3) < 2)
            {
              goto LABEL_153;
            }
          }

          v12 = v110;
          v100 = v111;
          if (v114)
          {
            v100 = v113;
          }

          if (v110 >= v100)
          {
            goto LABEL_3;
          }
        }

        else
        {
LABEL_153:
          if (v92)
          {
            v15 = v113;
          }

          if (v12 >= v15)
          {
            goto LABEL_3;
          }
        }
      }
    }

    v29 = -1;
    v30 = 1;
    do
    {
      if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
      {
        if (v29 == -1)
        {
          v29 = v24;
        }
      }

      else if (__PAIR64__(v26, v27) == v16)
      {
        goto LABEL_56;
      }

      v24 = (v24 + v30) & v18;
      v31 = (v21 + 12 * v24);
      v27 = *v31;
      v26 = v31[1];
      ++v30;
    }

    while (v22 != v26 || v23 != v27);
    if (v29 != -1)
    {
      if (sub_A99094(*(a1 + 48), 1))
      {
        goto LABEL_34;
      }

      goto LABEL_60;
    }

LABEL_59:
    v29 = v24;
    if (sub_A99094(*(a1 + 48), 1))
    {
      goto LABEL_34;
    }

    goto LABEL_60;
  }

LABEL_161:
  result = sub_7EA60(v115) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_A9ACD0(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v176);
  v4 = *(a1 + 432);
  v5 = *(a1 + 440);
  if (v4 != v5)
  {
    v6 = *(a1 + 408);
    v7 = *(a1 + 384);
    v8 = *(a1 + 432);
    do
    {
      v9 = *v8++;
      *(v6 + ((v9 >> 3) & 0x1FFFFFF8)) &= ~(1 << v9);
      *(v7 + 4 * v9) = -1;
    }

    while (v8 != v5);
  }

  *(a1 + 440) = v4;
  v10 = *(a1 + 312);
  v167 = *(a1 + 320);
  if (v10 == v167)
  {
    goto LABEL_232;
  }

  v168 = a2;
  v164 = a2 + 1;
  while (2)
  {
    v11 = sub_A9C5E0((*(a1 + 48) + 88), *v10);
    sub_A7905C(v169, *(a1 + 40), *v11, 0, 0, 0);
LABEL_8:
    v12 = v172;
LABEL_9:
    v13 = v173;
    while (v12 < v13)
    {
      v14 = __ROR8__(*v12, 32);
      v15 = *(a1 + 56);
      v16 = *(v15 + 56) - 1;
      v17 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) >> 33));
      v18 = v17 ^ (v17 >> 33);
      v19 = *(v15 + 80);
      v21 = *(v15 + 64);
      v20 = *(v15 + 68);
      v22 = v18 & v16;
      v23 = (v19 + 12 * (v18 & v16));
      v25 = *v23;
      v24 = v23[1];
      if (v20 == v24 && v21 == v25)
      {
        goto LABEL_55;
      }

      if (*(v15 + 40))
      {
        v27 = -1;
        v28 = 1;
        do
        {
          if (*(v15 + 36) == v24 && *(v15 + 32) == v25)
          {
            if (v27 == -1)
            {
              v27 = v22;
            }
          }

          else if (__PAIR64__(v24, v25) == v14)
          {
            goto LABEL_51;
          }

          v22 = (v22 + v28) & v16;
          v29 = (v19 + 12 * v22);
          v25 = *v29;
          v24 = v29[1];
          ++v28;
        }

        while (v20 != v24 || v21 != v25);
        if (v27 != -1)
        {
          if (sub_A99094(*(a1 + 56), 1))
          {
            goto LABEL_29;
          }

          goto LABEL_56;
        }

LABEL_55:
        v27 = v22;
        if (sub_A99094(*(a1 + 56), 1))
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }

      v45 = 1;
      while (__PAIR64__(v24, v25) != v14)
      {
        v22 = (v22 + v45) & v16;
        v46 = (v19 + 12 * v22);
        v25 = *v46;
        v24 = v46[1];
        ++v45;
        if (v20 == v24 && v21 == v25)
        {
          goto LABEL_55;
        }
      }

LABEL_51:
      if (v22 != -1)
      {
        v48 = v19 + 12 * v22;
        v49 = *(v48 + 8);
        if (v49 != -1)
        {
          goto LABEL_102;
        }

        goto LABEL_53;
      }

      v27 = -1;
      if (sub_A99094(*(a1 + 56), 1))
      {
LABEL_29:
        v31 = *(v15 + 56) - 1;
        v32 = *(v15 + 80);
        v34 = *(v15 + 64);
        v33 = *(v15 + 68);
        v35 = v31 & v18;
        v36 = (v32 + 12 * (v31 & v18));
        v38 = *v36;
        v37 = v36[1];
        v39 = *(v15 + 40);
        if (v33 == v37 && v34 == v38)
        {
          goto LABEL_92;
        }

        if (v39)
        {
          v41 = -1;
          v42 = 1;
          do
          {
            if (*(v15 + 36) == v37 && *(v15 + 32) == v38)
            {
              if (v41 == -1)
              {
                v41 = v35;
              }
            }

            else if (__PAIR64__(v37, v38) == v14)
            {
              goto LABEL_82;
            }

            v35 = (v35 + v42) & v31;
            v43 = (v32 + 12 * v35);
            v38 = *v43;
            v37 = v43[1];
            ++v42;
          }

          while (v33 != v37 || v34 != v38);
          if (v41 == -1)
          {
LABEL_92:
            v41 = v35;
          }

          v74 = *(v15 + 48);
          if ((v74 - v39) >= 0x1555555555555555)
          {
            goto LABEL_233;
          }
        }

        else
        {
          v65 = 1;
          while (__PAIR64__(v37, v38) != v14)
          {
            v35 = (v35 + v65) & v31;
            v66 = (v32 + 12 * v35);
            v38 = *v66;
            v37 = v66[1];
            ++v65;
            if (v33 == v37 && v34 == v38)
            {
              v39 = 0;
              goto LABEL_92;
            }
          }

LABEL_82:
          if (v35 != -1)
          {
            v48 = v32 + 12 * v35;
            v49 = *(v48 + 8);
            if (v49 != -1)
            {
              goto LABEL_102;
            }

            goto LABEL_53;
          }

          v41 = -1;
          v74 = *(v15 + 48);
          if ((v74 - v39) >= 0x1555555555555555)
          {
LABEL_233:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v39 && ((v75 = (v32 + 12 * v41), *(v15 + 36) == v75[1]) ? (v76 = *(v15 + 32) == *v75) : (v76 = 0), v76))
        {
          *(v15 + 40) = v39 - 1;
          v64 = 3 * v41;
        }

        else
        {
          *(v15 + 48) = v74 + 1;
          v64 = 3 * v41;
        }

        goto LABEL_101;
      }

LABEL_56:
      v55 = *(v15 + 40);
      v54 = *(v15 + 48);
      if ((v54 - v55) >= 0x1555555555555555)
      {
        goto LABEL_233;
      }

      v32 = *(v15 + 80);
      if (v55 && ((v56 = (v32 + 12 * v27), *(v15 + 36) == v56[1]) ? (v57 = *(v15 + 32) == *v56) : (v57 = 0), v57))
      {
        *(v15 + 40) = v55 - 1;
      }

      else
      {
        *(v15 + 48) = v54 + 1;
      }

      v64 = 3 * v27;
LABEL_101:
      v77 = 4 * v64;
      v78 = v32 + v77;
      *v78 = v14;
      *(v78 + 8) = -1;
      v48 = *(v15 + 80) + v77;
      v49 = *(v48 + 8);
      if (v49 != -1)
      {
LABEL_102:
        v71 = *(v172 + 4);
        v72 = *(a1 + 96);
        v73 = v49;
        if (v72)
        {
          goto LABEL_103;
        }

        goto LABEL_107;
      }

LABEL_53:
      v50 = *(v15 + 112);
      *(v15 + 112) = v50 + 1;
      *(v48 + 8) = v50;
      v52 = *(v15 + 96);
      v51 = *(v15 + 104);
      if (v52 >= v51)
      {
        v58 = *(v15 + 88);
        v59 = v52 - v58;
        v60 = (v52 - v58) >> 3;
        v61 = v60 + 1;
        if ((v60 + 1) >> 61)
        {
          sub_1794();
        }

        v62 = v51 - v58;
        if (v62 >> 2 > v61)
        {
          v61 = v62 >> 2;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF8)
        {
          v63 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          if (!(v63 >> 61))
          {
            operator new();
          }

LABEL_234:
          sub_1808();
        }

        v68 = (v52 - v58) >> 3;
        v69 = (8 * v60);
        v70 = (8 * v60 - 8 * v68);
        *v69 = v14;
        v53 = v69 + 1;
        memcpy(v70, v58, v59);
        *(v15 + 88) = v70;
        *(v15 + 96) = v53;
        *(v15 + 104) = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v52 = v14;
        v53 = v52 + 8;
      }

      *(v15 + 96) = v53;
      v49 = *(v48 + 8);
      v71 = *(v172 + 4);
      v72 = *(a1 + 96);
      v73 = v49;
      if (v72)
      {
LABEL_103:
        v79 = *v72;
        v80 = 0xAAAAAAAAAAAAAAABLL * ((*(v72 + 8) - *v72) >> 4);
        if (v80 <= v168)
        {
          sub_A9C3BC(v72, v164 - v80);
          v79 = *v72;
        }

        v81 = &v79[48 * v168];
        if (*(v81 + 1) <= v73 || ((*(*v81 + ((v73 >> 3) & 0x1FFFFFF8)) >> v73) & 1) == 0)
        {
          goto LABEL_160;
        }
      }

LABEL_107:
      v82 = v73 >> 6;
      if (*(a1 + 416) <= v73)
      {
        v86 = *(a1 + 384);
        goto LABEL_127;
      }

      v83 = *(a1 + 408);
      v84 = *(v83 + 8 * v82);
      v85 = 1 << v73;
      v86 = *(a1 + 384);
      if ((v84 & (1 << v73)) == 0)
      {
        goto LABEL_127;
      }

      v87 = *(a1 + 392);
      v88 = &v87[-v86] >> 2;
      if (v88 <= v73)
      {
        v163 = v71;
        v89 = v49 + 1;
        v90 = v89 - v88;
        if (v89 <= v88)
        {
          v71 = v163;
          if (v89 < v88)
          {
            *(a1 + 392) = v86 + 4 * v89;
          }
        }

        else
        {
          v91 = *(a1 + 400);
          if (v90 > (v91 - v87) >> 2)
          {
            v92 = v91 - v86;
            v93 = v92 >> 1;
            if (v92 >> 1 <= v89)
            {
              v93 = v49 + 1;
            }

            v94 = v92 >= 0x7FFFFFFFFFFFFFFCLL;
            v95 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v94)
            {
              v95 = v93;
            }

            if (!(v95 >> 62))
            {
              operator new();
            }

            goto LABEL_234;
          }

          v96 = 4 * v90;
          memset(v87, 255, v96);
          *(a1 + 392) = &v87[v96];
          v71 = v163;
        }

        sub_4D9168(a1 + 408, v49 + 1, 0);
        v83 = *(a1 + 408);
        v82 = v73 >> 6;
        v84 = *(v83 + 8 * (v73 >> 6));
      }

      if ((v84 & v85) != 0)
      {
        v86 = *(a1 + 384);
        if (*(v86 + 4 * v73) > v71)
        {
          goto LABEL_127;
        }
      }

      else
      {
        *(v83 + 8 * v82) = v84 | v85;
        v108 = *(a1 + 440);
        v107 = *(a1 + 448);
        if (v108 >= v107)
        {
          v124 = *(a1 + 432);
          v125 = v108 - v124;
          v126 = (v108 - v124) >> 2;
          v127 = v126 + 1;
          if ((v126 + 1) >> 62)
          {
LABEL_237:
            sub_1794();
          }

          v166 = v10;
          v128 = v107 - v124;
          if (v128 >> 1 > v127)
          {
            v127 = v128 >> 1;
          }

          if (v128 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v129 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v129 = v127;
          }

          if (v129)
          {
            if (!(v129 >> 62))
            {
              operator new();
            }

            goto LABEL_234;
          }

          v130 = v82;
          v131 = v126;
          v132 = (4 * v126);
          v133 = &v132[-v131];
          *v132 = v49;
          v134 = v132 + 1;
          memcpy(v133, v124, v125);
          *(a1 + 432) = v133;
          *(a1 + 440) = v134;
          *(a1 + 448) = 0;
          if (v124)
          {
            operator delete(v124);
          }

          v82 = v130;
          v10 = v166;
          *(a1 + 440) = v134;
          v86 = *(a1 + 384);
          if (*(v86 + 4 * v73) <= v71)
          {
            goto LABEL_160;
          }

LABEL_127:
          v97 = *(a1 + 392);
          v98 = &v97[-v86] >> 2;
          if (v98 <= v73)
          {
            v99 = v49 + 1;
            v100 = v99 - v98;
            v165 = v10;
            if (v99 <= v98)
            {
              v105 = v82;
              if (v99 < v98)
              {
                v106 = (v86 + 4 * v99);
                goto LABEL_142;
              }
            }

            else
            {
              v101 = *(a1 + 400);
              if (v100 > (v101 - v97) >> 2)
              {
                v102 = v101 - v86;
                v103 = v102 >> 1;
                if (v102 >> 1 <= v99)
                {
                  v103 = v49 + 1;
                }

                v94 = v102 >= 0x7FFFFFFFFFFFFFFCLL;
                v104 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v94)
                {
                  v104 = v103;
                }

                if (!(v104 >> 62))
                {
                  operator new();
                }

                goto LABEL_234;
              }

              v105 = v82;
              memset(v97, 255, 4 * v100);
              v106 = &v97[4 * v100];
LABEL_142:
              *(a1 + 392) = v106;
            }

            sub_4D9168(a1 + 408, v49 + 1, 0);
            v82 = v105;
            v10 = v165;
          }

          v109 = *(a1 + 408);
          v110 = *(v109 + 8 * v82);
          if ((v110 & (1 << v73)) == 0)
          {
            *(v109 + 8 * v82) = v110 | (1 << v73);
            v112 = *(a1 + 440);
            v111 = *(a1 + 448);
            if (v112 >= v111)
            {
              v114 = *(a1 + 432);
              v115 = v112 - v114;
              v116 = (v112 - v114) >> 2;
              v117 = v116 + 1;
              if ((v116 + 1) >> 62)
              {
                goto LABEL_237;
              }

              v118 = v111 - v114;
              if (v118 >> 1 > v117)
              {
                v117 = v118 >> 1;
              }

              if (v118 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v119 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v119 = v117;
              }

              if (v119)
              {
                if (!(v119 >> 62))
                {
                  operator new();
                }

                goto LABEL_234;
              }

              v120 = v116;
              v121 = (4 * v116);
              v122 = &v121[-v120];
              *v121 = v49;
              v113 = v121 + 1;
              memcpy(v122, v114, v115);
              *(a1 + 432) = v122;
              *(a1 + 440) = v113;
              *(a1 + 448) = 0;
              if (v114)
              {
                operator delete(v114);
              }
            }

            else
            {
              *v112 = v49;
              v113 = v112 + 4;
            }

            *(a1 + 440) = v113;
          }

          *(*(a1 + 384) + 4 * v73) = v71;
          goto LABEL_160;
        }

        *v108 = v49;
        *(a1 + 440) = v108 + 4;
        v86 = *(a1 + 384);
        if (*(v86 + 4 * v73) > v71)
        {
          goto LABEL_127;
        }
      }

LABEL_160:
      v13 = v173;
      v12 = v172 + 2;
      v172 = v12;
      if (v12 == v173)
      {
        v123 = v170 + 2;
        v170 = v123;
        if (v123 >= v171)
        {
          break;
        }

        while (1)
        {
          v12 = *v123;
          v13 = v123[1];
          if (*v123 != v13)
          {
            break;
          }

          v123 += 2;
          v170 = v123;
          if (v123 >= v171)
          {
            goto LABEL_6;
          }
        }

        v172 = *v123;
        v173 = v13;
        if (v12 < v13)
        {
          goto LABEL_184;
        }
      }

      else if (v12 < v173)
      {
        while (1)
        {
LABEL_184:
          if ((v175 & 1) == 0)
          {
            v135 = v169[0];
            v136 = *v12;
            v137 = *(v169[0] + 4136);
            if (sub_68312C(v137 + 3896))
            {
              if (*(v137 + 3944))
              {
                if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                {
                  v157 = sub_A57824(-85.0, 0.0);
                  sub_58168(v157 >> 17, v157 >> 49);
                  dword_27339C0 = v158 | 0x40000000;
                  __cxa_guard_release(&qword_27339C8);
                }

                v138 = __ROR8__(v136, 32);
                v139 = *(v135 + 4136);
                if (dword_27339C0 == HIDWORD(v138))
                {
                  if (!sub_68312C(v139 + 3896) || !*(v139 + 3944))
                  {
                    v161 = __cxa_allocate_exception(0x40uLL);
                    v162 = sub_2D390(v161, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                  }
                }

                else
                {
                  v142 = *(v139 + 3944);
                  v143 = v142[1];
                  if (v143)
                  {
                    v144 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v138 ^ (v138 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v138 ^ (v138 >> 33))) >> 33));
                    v145 = v144 ^ (v144 >> 33);
                    v146 = vcnt_s8(v143);
                    v146.i16[0] = vaddlv_u8(v146);
                    if (v146.u32[0] > 1uLL)
                    {
                      v147 = v145;
                      if (v145 >= *&v143)
                      {
                        v147 = v145 % *&v143;
                      }
                    }

                    else
                    {
                      v147 = (*&v143 - 1) & v145;
                    }

                    v148 = *(*v142 + 8 * v147);
                    if (v148)
                    {
                      v149 = *v148;
                      if (v149)
                      {
                        if (v146.u32[0] < 2uLL)
                        {
                          v150 = *&v143 - 1;
                          while (1)
                          {
                            v154 = v149[1];
                            if (v145 == v154)
                            {
                              if (*(v149 + 5) == HIDWORD(v138) && *(v149 + 4) == v138)
                              {
                                goto LABEL_182;
                              }
                            }

                            else if ((v154 & v150) != v147)
                            {
                              goto LABEL_224;
                            }

                            v149 = *v149;
                            if (!v149)
                            {
                              goto LABEL_224;
                            }
                          }
                        }

                        do
                        {
                          v152 = v149[1];
                          if (v145 == v152)
                          {
                            if (*(v149 + 5) == HIDWORD(v138) && *(v149 + 4) == v138)
                            {
                              goto LABEL_182;
                            }
                          }

                          else
                          {
                            if (v152 >= *&v143)
                            {
                              v152 %= *&v143;
                            }

                            if (v152 != v147)
                            {
                              break;
                            }
                          }

                          v149 = *v149;
                        }

                        while (v149);
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_224:
          if (v174 == 1)
          {
            goto LABEL_8;
          }

          v155 = sub_C9E544(v169[0] + 3896);
          v12 = v172;
          if (v155 >= *(v172 + 14))
          {
            if (v174)
            {
              goto LABEL_9;
            }

            v156 = sub_585D8((v169[0] + 3896));
            v12 = v172;
            if ((v156 & 1) != 0 || (*(v172 + 15) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

LABEL_182:
          v12 = v172 + 2;
          v172 = v12;
          if (v12 == v173)
          {
            v140 = v170 + 2;
            v170 = v140;
            if (v140 >= v171)
            {
              goto LABEL_9;
            }

            while (1)
            {
              v12 = *v140;
              v141 = v140[1];
              if (*v140 != v141)
              {
                break;
              }

              v140 += 2;
              v170 = v140;
              if (v140 >= v171)
              {
                goto LABEL_6;
              }
            }

            v172 = *v140;
            v173 = v141;
            if (v12 >= v141)
            {
              goto LABEL_9;
            }
          }

          else if (v12 >= v173)
          {
            goto LABEL_9;
          }
        }
      }
    }

LABEL_6:
    if (++v10 != v167)
    {
      continue;
    }

    break;
  }

LABEL_232:
  result = sub_7EA60(v176) + *(a1 + 624);
  *(a1 + 624) = result;
  return result;
}

uint64_t sub_A9BB08(uint64_t a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v3 = sub_A9D694(a1);
  v4 = sub_A9D7D4(a1) + v3;
  sub_2D577C(**(a1 + 40));
  if (v32 == 1)
  {
    v5 = sub_32AD80(&v21) * 1048576.0;
    if (v5 >= 0.0)
    {
      v6 = v5;
      if (v5 >= 4.50359963e15)
      {
        goto LABEL_13;
      }

      v7 = (v5 + v5) + 1;
    }

    else
    {
      v6 = v5;
      if (v5 <= -4.50359963e15)
      {
        goto LABEL_13;
      }

      v7 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
    }

    v6 = (v7 >> 1);
LABEL_13:
    if (v6 >= 1.84467441e19)
    {
      v4 -= 2;
      if (v4 > *a1)
      {
        goto LABEL_23;
      }

      return 0;
    }

    if (v5 >= 0.0)
    {
      if (v5 >= 4.50359963e15)
      {
        goto LABEL_22;
      }

      v9 = (v5 + v5) + 1;
    }

    else
    {
      if (v5 <= -4.50359963e15)
      {
        goto LABEL_22;
      }

      v9 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
    }

    v5 = (v9 >> 1);
LABEL_22:
    v4 += v5;
    if (v4 > *a1)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v4 <= *a1)
  {
    return 0;
  }

LABEL_23:
  v10 = sub_7E7E4(1u);
  result = 1;
  if (!v10)
  {
    return result;
  }

  sub_19594F8(&v21);
  v11 = sub_4A5C(&v21, "Exceeded memory limit of ", 25);
  v12 = sub_71478(v11, *a1);
  v13 = sub_4A5C(v12, " in directional SPA (", 21);
  v14 = sub_71478(v13, v4);
  v15 = sub_4A5C(v14, ") in round ", 11);
  std::ostream::operator<<();
  sub_4A5C(v15, "; terminating algorithm.", 24);
  if ((v31 & 0x10) != 0)
  {
    v17 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v17 = v27;
    }

    v18 = v26;
    v16 = v17 - v26;
    if (v17 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_41:
      sub_3244();
    }

LABEL_30:
    if (v16 >= 0x17)
    {
      operator new();
    }

    v20 = v16;
    if (v16)
    {
      memmove(&__dst, v18, v16);
    }

    goto LABEL_35;
  }

  if ((v31 & 8) != 0)
  {
    v18 = v24;
    v16 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  v16 = 0;
  v20 = 0;
LABEL_35:
  *(&__dst + v16) = 0;
  sub_7E854(&__dst, 1u);
  if (v20 < 0)
  {
    operator delete(__dst);
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_A9BF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_A9BF80(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, signed int a5)
{
  v7 = a3;
  v57 = a3;
  v10 = *(a1 + 80);
  if (v10)
  {
    v12 = *v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 4);
    if (v13 <= a4)
    {
      sub_A9C3BC(*(a1 + 80), a4 - v13 + 1);
      v12 = *v10;
    }

    v14 = (v12 + 48 * a4);
    if (v14[1] <= v7 || ((*(*v14 + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 25) == 1)
  {
    v15 = a1 + 24 * a2;
    v16 = *(v15 + 192);
    v17 = *(v15 + 200);
    v18 = (v15 + 192);
    v19 = *(a1 + 456);
    v20 = (v17 - v16) >> 2;
    if (v20 <= v19)
    {
      sub_617214(v18, v19 - v20 + 1);
      v16 = *v18;
    }

    v21 = (v16 + 4 * v19);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = *(a1 + 176);
    v23 = *(a1 + 456);
    if (*v22 <= v23)
    {
      *v22 = v23 + 1;
      v24 = v22[2];
      v25 = v22[1] * (v23 + 1);
      v26 = (v22[3] - v24) >> 2;
      if (v25 <= v26)
      {
        if (v25 < v26)
        {
          v22[3] = v24 + 4 * v25;
        }
      }

      else
      {
        sub_617214((v22 + 2), v25 - v26);
      }
    }

    v21 = (v22[2] + 4 * v22[1] * v23 + 4 * a4);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  v27 = *v21;
  if (v27 != 0x7FFFFFFF)
  {
    v28 = *(a1 + 28);
    v29 = v28 / 10;
    v30 = v28 % 10;
    v31 = v28 < 0 ? -5 : 5;
    if ((v29 + v27 + (((103 * (v31 + v30)) >> 15) & 1) + ((103 * (v31 + v30)) >> 10)) <= a5)
    {
      return 0;
    }
  }

LABEL_22:
  if ((*(a1 + 25) & 1) == 0)
  {
    v36 = v7;
    v40 = *(a1 + 176);
    v41 = a4;
    if (*v40 > v7)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v32 = a1 + 24 * a2;
  v33 = *(v32 + 192);
  v34 = *(v32 + 200);
  v35 = (v32 + 192);
  v36 = v7;
  v37 = (v34 - v33) >> 2;
  if (v37 <= v7)
  {
    sub_617214(v35, v7 - v37 + 1);
    v33 = *v35;
  }

  v38 = *(v33 + 4 * v7);
  if (v38 != 0x7FFFFFFF && v38 <= a5)
  {
    return 0;
  }

  v40 = *(a1 + 176);
  v41 = a4;
  if (*v40 <= v7)
  {
LABEL_32:
    *v40 = v36 + 1;
    v42 = v40[2];
    v43 = v40[1] * (v36 + 1);
    v44 = (v40[3] - v42) >> 2;
    if (v43 <= v44)
    {
      if (v43 < v44)
      {
        v40[3] = v42 + 4 * v43;
      }
    }

    else
    {
      sub_617214((v40 + 2), v43 - v44);
    }
  }

LABEL_36:
  v45 = v40[2] + 4 * v40[1] * v36;
  v46 = *(v45 + 4 * v41);
  if (v46 != 0x7FFFFFFF && v46 <= a5)
  {
    return 0;
  }

  if (*(a1 + 25))
  {
    v48 = a1 + 24 * a2;
    v49 = *(v48 + 192);
    v50 = *(v48 + 200);
    v51 = (v48 + 192);
    v52 = (v50 - v49) >> 2;
    if (v52 <= v36)
    {
      sub_617214(v51, v36 - v52 + 1);
      v49 = *v51;
    }

    *(v49 + 4 * v36) = a5;
  }

  *(v45 + 4 * v41) = a5;
  v54 = a1 + 48 * a2;
  v55 = (v54 + 240);
  if (*(v54 + 248) > v36)
  {
    if ((*(*v55 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36))
    {
      goto LABEL_48;
    }

LABEL_51:
    sub_DD38((v55 + 3), &v57);
    v7 = v57;
    *(*v55 + ((v57 >> 3) & 0x1FFFFFF8)) |= 1 << v57;
    if (*(a1 + 25))
    {
      return 1;
    }

    goto LABEL_52;
  }

  sub_4D9168(v55, v7 + 1, 0);
  if (((*(*v55 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (*(a1 + 25))
  {
    return 1;
  }

LABEL_52:
  v56 = v7;
  if (*(a1 + 344) <= v7)
  {
    sub_4D9168(a1 + 336, v7 + 1, 0);
    v56 = v57;
  }

  if ((*(*(a1 + 336) + ((v56 >> 3) & 0x1FFFFFF8)) >> v56))
  {
    return 1;
  }

  sub_DD38(a1 + 360, &v57);
  result = 1;
  *(*(a1 + 336) + ((v57 >> 3) & 0x1FFFFFF8)) |= 1 << v57;
  return result;
}

void sub_A9C3BC(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(a1[1], v10);
      v4 += v10;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4) + a2;
    if (v7 > 0x555555555555555)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (&v3[-v5] >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        *v16 = *v15;
        *(v16 + 8) = *(v15 + 8);
        *v15 = 0;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *(v16 + 4) = 0;
        *(v16 + 5) = 0;
        *(v16 + 24) = *(v15 + 24);
        *(v16 + 5) = *(v15 + 40);
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        v15 += 48;
        v16 += 48;
      }

      while (v15 != v4);
      do
      {
        v17 = *(v5 + 24);
        if (v17)
        {
          *(v5 + 32) = v17;
          operator delete(v17);
        }

        if (*v5)
        {
          operator delete(*v5);
        }

        v5 += 48;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    a1[1] = v13;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

unint64_t sub_A9C5E0(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_A9C6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

unint64_t sub_A9C7DC(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
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

  return *a1 + 4 * a2;
}

void sub_A9C8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_A9C9D8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v124[0] = a3;
  *(a1 + 672) = *(a1 + 672) + 1.0;
  v6 = a3;
  v110 = *sub_A9C5E0((*(a1 + 56) + 88), a3);
  v7 = *(a1 + 384);
  v8 = (*(a1 + 392) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(a1 + 392) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(a1 + 384, v9 - v8);
    }

    sub_4D9168(a1 + 408, a3 + 1, 0);
  }

  v10 = *(a1 + 408);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(a1 + 432, v124);
    v6 = v124[0];
  }

  v109 = *(*(a1 + 384) + 4 * v6);
  sub_A9D53C(&v122, *(a1 + 40), v110);
  v12 = v122;
  if (v122 < v123)
  {
    while (1)
    {
      *(a1 + 680) = *(a1 + 680) + 1.0;
      v111 = *v12;
      sub_A79708(&v112, *(a1 + 40), v110, v109, 0, 1);
      v13 = v116;
      if (v116 >= v115 && v116 < v117)
      {
        break;
      }

LABEL_11:
      v12 = v122 + 4;
      v122 = v12;
      if (v12 >= v123)
      {
        return;
      }
    }

    v15 = 0;
    while (1)
    {
      v16 = __ROR8__(*v13, 32);
      v17 = *(a1 + 48);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
        goto LABEL_69;
      }

      if (*(v17 + 40))
      {
        break;
      }

      v47 = 1;
      while (__PAIR64__(v26, v27) != v16)
      {
        v24 = (v24 + v47) & v18;
        v48 = (v21 + 12 * v24);
        v27 = *v48;
        v26 = v48[1];
        ++v47;
        if (v22 == v26 && v23 == v27)
        {
          goto LABEL_69;
        }
      }

LABEL_57:
      if (v24 != -1)
      {
        v50 = v21 + 12 * v24;
        v51 = *(v50 + 8);
        if (v51 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_119;
      }

      v29 = -1;
      if (sub_A99094(*(a1 + 48), 1))
      {
LABEL_35:
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_109;
        }

        if (v41)
        {
          v43 = -1;
          v44 = 1;
          do
          {
            if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
            {
              if (v43 == -1)
              {
                v43 = v37;
              }
            }

            else if (__PAIR64__(v39, v40) == v16)
            {
              goto LABEL_91;
            }

            v37 = (v37 + v44) & v33;
            v45 = (v34 + 12 * v37);
            v40 = *v45;
            v39 = v45[1];
            ++v44;
          }

          while (v35 != v39 || v36 != v40);
          if (v43 == -1)
          {
LABEL_109:
            v43 = v37;
          }

          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v62 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v62) & v33;
            v63 = (v34 + 12 * v37);
            v40 = *v63;
            v39 = v63[1];
            ++v62;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_109;
            }
          }

LABEL_91:
          if (v37 != -1)
          {
            v50 = v34 + 12 * v37;
            v51 = *(v50 + 8);
            if (v51 != -1)
            {
              goto LABEL_59;
            }

            goto LABEL_119;
          }

          v43 = -1;
          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
LABEL_172:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v41 && ((v79 = (v34 + 12 * v43), *(v17 + 36) == v79[1]) ? (v80 = *(v17 + 32) == *v79) : (v80 = 0), v80))
        {
          *(v17 + 40) = v41 - 1;
          v57 = 3 * v43;
        }

        else
        {
          *(v17 + 48) = v78 + 1;
          v57 = 3 * v43;
        }

        goto LABEL_118;
      }

LABEL_70:
      v54 = *(v17 + 40);
      v53 = *(v17 + 48);
      if ((v53 - v54) >= 0x1555555555555555)
      {
        goto LABEL_172;
      }

      v34 = *(v17 + 80);
      if (v54 && ((v55 = (v34 + 12 * v29), *(v17 + 36) == v55[1]) ? (v56 = *(v17 + 32) == *v55) : (v56 = 0), v56))
      {
        *(v17 + 40) = v54 - 1;
      }

      else
      {
        *(v17 + 48) = v53 + 1;
      }

      v57 = 3 * v29;
LABEL_118:
      v81 = 4 * v57;
      v82 = v34 + v81;
      *v82 = v16;
      *(v82 + 8) = -1;
      v50 = *(v17 + 80) + v81;
      v51 = *(v50 + 8);
      if (v51 != -1)
      {
LABEL_59:
        if (!sub_C435EC((a1 + 488), v51, v16))
        {
          goto LABEL_133;
        }

        goto LABEL_60;
      }

LABEL_119:
      v83 = *(v17 + 112);
      *(v17 + 112) = v83 + 1;
      *(v50 + 8) = v83;
      v85 = *(v17 + 96);
      v84 = *(v17 + 104);
      if (v85 >= v84)
      {
        v87 = *(v17 + 88);
        v88 = v85 - v87;
        v89 = (v85 - v87) >> 3;
        v90 = v89 + 1;
        if ((v89 + 1) >> 61)
        {
          sub_1794();
        }

        v91 = v84 - v87;
        if (v91 >> 2 > v90)
        {
          v90 = v91 >> 2;
        }

        if (v91 >= 0x7FFFFFFFFFFFFFF8)
        {
          v92 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = v90;
        }

        if (v92)
        {
          if (!(v92 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v93 = (v85 - v87) >> 3;
        v94 = (8 * v89);
        v95 = (8 * v89 - 8 * v93);
        *v94 = v16;
        v86 = v94 + 1;
        memcpy(v95, v87, v88);
        *(v17 + 88) = v95;
        *(v17 + 96) = v86;
        *(v17 + 104) = 0;
        if (v87)
        {
          operator delete(v87);
        }
      }

      else
      {
        *v85 = v16;
        v86 = v85 + 1;
      }

      *(v17 + 96) = v86;
      v51 = *(v50 + 8);
      if (!sub_C435EC((a1 + 488), *(v50 + 8), v16))
      {
LABEL_133:
        v15 &= *(a1 + 32);
        goto LABEL_134;
      }

LABEL_60:
      if (v15 & 1) != 0 && (*(v116 + 15))
      {
        v52 = v118;
        if (v118)
        {
          v52 = *(v118 + 4 * ((v116 - v115) >> 4));
        }

        if ((v52 & v111) == 0)
        {
          v65 = (v114 + *(v114 - *v114 + 6));
          v66 = v65 + *v65;
          v67 = &v121;
          if (!v120)
          {
            v67 = v119;
          }

          v68 = *&v66[8 * *(v119 + 1) + 4 + 8 * ((v116 - v115) >> 4)] + *v67;
          v69 = *(a1 + 64);
          if (v69)
          {
            if (*v69 > v51)
            {
              v70 = 0;
              v71 = *(a1 + 168) + ~a2;
              v72 = v71;
              while (v70 <= v71)
              {
                v73 = *sub_A9C7DC(v69 + 2, v69[1] * v51 + v72);
                v70 += 2;
                v72 -= 2;
                if (v73 != 0x7FFFFFFF)
                {
                  if (v73 < v68)
                  {
                    break;
                  }

                  goto LABEL_104;
                }
              }
            }
          }

          else
          {
LABEL_104:
            if (sub_A9BF80(a1, 0, v51, a2, v68))
            {
              v74 = *(a1 + 176);
              if (*v74 <= v51)
              {
                *v74 = v51 + 1;
                v75 = v74[2];
                v76 = v74[1] * (v51 + 1);
                v77 = (v74[3] - v75) >> 2;
                if (v76 <= v77)
                {
                  if (v76 < v77)
                  {
                    v74[3] = v75 + 4 * v76;
                  }
                }

                else
                {
                  sub_617214((v74 + 2), v76 - v77);
                }
              }
            }
          }
        }
      }

      if ((*(v116 + 15) & 2) == 0)
      {
        goto LABEL_134;
      }

      if (v118)
      {
        if (*(v118 + 4 * ((v116 - v115) >> 4)) != v111)
        {
          goto LABEL_134;
        }
      }

      else if (v111)
      {
        goto LABEL_134;
      }

      v58 = *(a1 + 176);
      if (*v58 <= v51)
      {
        *v58 = v51 + 1;
        v59 = v58[2];
        v60 = v58[1] * (v51 + 1);
        v61 = (v58[3] - v59) >> 2;
        if (v60 <= v61)
        {
          if (v60 < v61)
          {
            v58[3] = v59 + 4 * v60;
          }
        }

        else
        {
          sub_617214((v58 + 2), v60 - v61);
        }
      }

      v102 = *(v58[2] + 4 * v58[1] * v51 + 4 * (a2 - 1));
      if (v102 == 0x7FFFFFFF)
      {
        goto LABEL_134;
      }

      v103 = *(v116 + 2);
      v104 = v103 + v102;
      if (v15)
      {
        v105 = (v114 + *(v114 - *v114 + 6));
        v106 = v105 + *v105;
        v107 = &v121;
        if (!v120)
        {
          v107 = v119;
        }

        if (v104 < *&v106[8 * *(v119 + 1) + 8 + 8 * ((v116 - v115) >> 4)] + *v107)
        {
          sub_A9D3B8(*(a1 + 40), &v112, v104);
        }

LABEL_168:
        v15 = 1;
        goto LABEL_134;
      }

      if (v120 == 1)
      {
        if (sub_A7A1E8(*(a1 + 40), &v112, v104, 1u))
        {
          goto LABEL_168;
        }
      }

      else if (sub_A7A710(&v112, v103 + v102, 1))
      {
        goto LABEL_168;
      }

      v15 = 0;
LABEL_134:
      v96 = v115;
      v13 = v116 + 2;
      v116 += 2;
      if (*(v112 + 16) == 1 && (v113 & 1) == 0 && v13 >= v115 && v13 < v117)
      {
        do
        {
          v98 = __ROR8__(*v13, 32);
          if (HIDWORD(v98) == 1 && (v98 + 3) < 2)
          {
            break;
          }

          v100 = sub_2D5204(**(v112 + 4120));
          v96 = v115;
          v13 = v116;
          if (v100)
          {
            break;
          }

          v13 = v116 + 2;
          v116 = v13;
        }

        while (v13 >= v115 && v13 < v117);
      }

      if (v13 < v96 || v13 >= v117)
      {
        goto LABEL_11;
      }
    }

    v29 = -1;
    v30 = 1;
    do
    {
      if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
      {
        if (v29 == -1)
        {
          v29 = v24;
        }
      }

      else if (__PAIR64__(v26, v27) == v16)
      {
        goto LABEL_57;
      }

      v24 = (v24 + v30) & v18;
      v31 = (v21 + 12 * v24);
      v27 = *v31;
      v26 = v31[1];
      ++v30;
    }

    while (v22 != v26 || v23 != v27);
    if (v29 != -1)
    {
      if (sub_A99094(*(a1 + 48), 1))
      {
        goto LABEL_35;
      }

      goto LABEL_70;
    }

LABEL_69:
    v29 = v24;
    if (sub_A99094(*(a1 + 48), 1))
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }
}

uint64_t sub_A9D3B8(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = (a2 + 104);
  v5 = *(a2 + 96);
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  v8 = *(a2 + 100);
  if (*(a2 + 96))
  {
    v9 = *(a2 + 104);
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  if (*(a2 + 96))
  {
    v10 = (a2 + 104);
  }

  else
  {
    v10 = *(a2 + 64);
  }

  v11 = *v10;
  v12 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
  v13 = *(&v12[2 * *(v6 + 4) + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v12);
  if (v5 == 1)
  {
    if (!sub_A7A1E8(a1, a2, a3, 1u))
    {
      goto LABEL_15;
    }
  }

  else if (!sub_A7A710(a2, a3, 0))
  {
    goto LABEL_15;
  }

  if (*(a2 + 96))
  {
    v14 = v4;
  }

  else
  {
    v14 = *(a2 + 64);
  }

  v15 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
  if ((*(&v15[2 * *(*(a2 + 64) + 4) + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v15) + *v14) <= v13 + v11)
  {
    return 1;
  }

LABEL_15:
  *(a2 + 64) = *(a2 + 56) + 0xFFFFFFFC00000004 * ((v6 - v7) >> 2);
  if (*(a2 + 96) != 1)
  {
    return 0;
  }

  result = 0;
  if (v5)
  {
    v17 = v8;
  }

  else
  {
    v17 = -1;
  }

  *(a2 + 100) = v17;
  *(a2 + 104) = v9;
  return result;
}