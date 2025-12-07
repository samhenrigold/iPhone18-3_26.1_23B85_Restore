void sub_1004BDD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, xpc_object_t object, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  v65 = *(v63 - 232);
  if (v65)
  {
    sub_100004A34(v65);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataServiceController::getCurrent5GSlicingCellInfo_sync(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6)
{
  bzero(v20, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v20, (a1 + 1224));
  if (a2 == 2)
  {
    RegisteredNetworkInfo::operator=();
  }

  if (v21 != 14)
  {
    if (v21 == 16)
    {
      if (v31 == 1)
      {
        *a3 = MCC::getIntValue(v28);
        *a4 = MCC::getIntValue(v27);
        *a5 = v29;
        *a6 = v30;
        v14 = MCC::valid(v28) ? MCC::valid(v27) : 0;
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315138;
          v19 = asStringBool(v14);
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Slice cell info from NR (NSA): %s", &v18, 0xCu);
        }

        if (v14)
        {
          goto LABEL_20;
        }
      }

      if (v26 == 1 && MCC::valid(v23) && MCC::valid(v22))
      {
        *a3 = MCC::getIntValue(v23);
        *a4 = MCC::getIntValue(v22);
        *a5 = v24;
        *a6 = v25;
        v12 = *(a1 + 40);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        LOWORD(v18) = 0;
        v13 = "#I Slice cell info from LTE (NR NSA)";
        goto LABEL_15;
      }
    }

    else if (v21 == 17 && v31 == 1)
    {
      *a3 = MCC::getIntValue(v28);
      *a4 = MCC::getIntValue(v27);
      *a5 = v29;
      *a6 = v30;
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        v13 = "#I Slice cell info from NR (SA)";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v18, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (v26 != 1)
  {
    goto LABEL_26;
  }

  *a3 = MCC::getIntValue(v23);
  *a4 = MCC::getIntValue(v22);
  *a5 = v24;
  *a6 = v25;
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    v13 = "#I Slice cell info from LTE";
    goto LABEL_15;
  }

LABEL_20:
  v16 = 1;
LABEL_27:
  sub_10004543C(v20);
  return v16;
}

void sub_1004BE224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004543C(va);
  _Unwind_Resume(a1);
}

void DataServiceController::requestSliceByUUID(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v7 = *(a2 + 2);
  }

  sub_1004C6168(&v8, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void *DataServiceController::saveForwardedApp(uint64_t **this, uint64_t ***a2)
{
  result = TrafficDescriptor::hasBundleInfo(a2);
  if (result)
  {
    v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if ((a2[9] & 1) == 0)
    {
      sub_1000D1644();
    }

    rep = v5.__d_.__rep_;
    v8 = (a2 + 6);
    result = sub_1004C768C(this + 650, a2 + 6, &unk_101802C98, &v8, &v7);
    result[7] = rep;
  }

  return result;
}

void DataServiceController::requestSliceDeactivation(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

uint64_t sub_1004BE5E0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = TrafficDescriptor::TrafficDescriptor();
      v8 += 304;
      v10 += 304;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 304;
    v12 = a4 - v7;
    v13 = a2 + v7 - 304 - a4;
    do
    {
      result = TrafficDescriptor::operator=();
      v11 -= 304;
      v13 -= 304;
      v12 += 304;
    }

    while (v12);
  }

  return result;
}

TrafficDescriptor *sub_1004BE6A0(unint64_t *a1, const TrafficDescriptor *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0xD79435E50D79436 * ((v4 - *a1) >> 4);
      }

      v10 = a1[4];
      v12 = a1[4];
      sub_1001C1634(v10, v9);
    }

    v8 = (0x86BCA1AF286BCA1BLL * (v7 >> 4) + 1) / -2;
    v5 = (v6 - 304 * ((0x86BCA1AF286BCA1BLL * (v7 >> 4) + 1) / 2));
    if (v6 != v4)
    {
      do
      {
        TrafficDescriptor::operator=();
        v6 += 304;
        v5 = (v5 + 304);
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = v6 + 304 * v8;
    a1[2] = v5;
  }

  result = TrafficDescriptor::TrafficDescriptor(v5, a2);
  a1[2] += 304;
  return result;
}

void sub_1004BE830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C1734(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004BE848(uint64_t a1, uint64_t a2, TrafficDescriptor *a3)
{
  v6 = *(a2 + 8);
  sub_1001C1690(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_1001C1690(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t *sub_1004BE904(uint64_t *result, const TrafficDescriptor *a2, const TrafficDescriptor *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001C1AD4(result, a4);
  }

  return result;
}

void sub_1004BE96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001B8A7C(&a9);
  _Unwind_Resume(a1);
}

void sub_1004BE98C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1004BE9D4(uint64_t a1)
{
  sub_1004BEA0C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1004BEA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_1004BEA68(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001C1AD4(result, a4);
  }

  return result;
}

void sub_1004BEAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001B8A7C(&a9);
  _Unwind_Resume(a1);
}

TrafficDescriptor *sub_1004BEAF0(uint64_t a1, const TrafficDescriptor *a2, const TrafficDescriptor *a3, TrafficDescriptor *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      TrafficDescriptor::TrafficDescriptor(a4, v6);
      v6 = (v6 + 304);
      a4 = (a4 + 304);
      v7 -= 304;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1004BEB50(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 304);
    do
    {
      TrafficDescriptor::~TrafficDescriptor(v4);
      v4 = (v5 - 304);
      v2 += 304;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BEB74(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000DEC00(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_1004BEC80(32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  sub_1004BED00(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1004BED70(&v14);
  return v13;
}

void sub_1004BEC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1004BED70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004BEC80(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1004BED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1004BEC80(a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1004C2A34(v6);
      v6 += 32;
    }
  }
}

uint64_t sub_1004BED70(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_1004C2A34(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

TrafficDescriptor *sub_1004BEDC0(TrafficDescriptor *a1, const TrafficDescriptor *a2)
{
  *a1 = 0;
  *(a1 + 304) = 0;
  if (*(a2 + 304) == 1)
  {
    TrafficDescriptor::TrafficDescriptor(a1, a2);
    *(a1 + 304) = 1;
  }

  return a1;
}

void sub_1004BEE08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 304) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BEE28(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_1004BEE7C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1004C2A34(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1004BEF00(char **a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1004BF0A8(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  sub_1004BF034(a1, (48 * v2), a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = (48 * v2 + *a1 - v7);
  sub_1004BF100(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1004BF208(&v13);
  return v12;
}

void sub_1004BF020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1004BF208(va);
  _Unwind_Resume(a1);
}

void *sub_1004BF034(int a1, void *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v5;
  }

  return sub_10009AEBC(__dst + 3, a3 + 24);
}

void sub_1004BF08C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BF0A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1004BF100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a2 + v6);
      v8 = a4 + v6;
      v9 = *(a2 + v6);
      *(v8 + 16) = *(a2 + v6 + 16);
      *v8 = v9;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = 0;
      *(v8 + 24) = *(a2 + v6 + 24);
      v10 = (a2 + v6 + 32);
      v11 = *v10;
      *(a4 + v6 + 32) = *v10;
      v12 = a4 + v6 + 32;
      v13 = *(a2 + v6 + 40);
      *(v8 + 40) = v13;
      if (v13)
      {
        *(v11 + 16) = v12;
        v7[3] = v10;
        *v10 = 0;
        *(a2 + v6 + 40) = 0;
      }

      else
      {
        *(v8 + 24) = v12;
      }

      v6 += 48;
    }

    while (a2 + v6 != a3);
    while (v5 != a3)
    {
      sub_1004BF1B4(v5);
      v5 += 48;
    }
  }
}

void sub_1004BF1B4(uint64_t a1)
{
  sub_10001BB0C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1004BF208(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1004BF1B4(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004BF258(char **a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1004BF62C(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_1004BF3A4(a1, (56 * v2), a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = (56 * v2 + *a1 - v7);
  sub_1004BF688(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1004BF76C(&v13);
  return v12;
}

void sub_1004BF390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1004BF76C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004BF3A4(int a1, void *__dst, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v5;
  }

  v6 = *(a3 + 24);
  __dst[4] = 0;
  *(__dst + 24) = v6;
  __dst[5] = 0;
  __dst[6] = 0;
  return sub_1004BF43C(__dst + 4, *(a3 + 4), *(a3 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 5) - *(a3 + 4)) >> 4));
}

void sub_1004BF420(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004BF43C(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004BF4C4(result, a4);
  }

  return result;
}

void sub_1004BF4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1004BF5A8(&a9);
  _Unwind_Resume(a1);
}

void sub_1004BF4C4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1004BF0A8(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1004BF510(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      sub_1004BF034(a1, __dst, v6);
      v6 += 3;
      __dst += 48;
      v8 -= 48;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_1004BF580(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      sub_1004BF1B4(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BF5A8(void ***a1)
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
        v4 -= 48;
        sub_1004BF1B4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1004BF62C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1004BF688(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = v6[2];
      *(a4 + 48) = *(v6 + 6);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1004BF724(v5);
      v5 = (v5 + 56);
    }
  }
}

void sub_1004BF724(uint64_t a1)
{
  v2 = (a1 + 32);
  sub_1004BF5A8(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_1004BF76C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_1004BF724(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004BF7BC(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(a1, a2, v3) && *(v7 + 24) == *(v6 + 24))
  {
    v10 = v7 + 4;
    v8 = v7[4];
    v9 = v10[1];
    v12 = v6 + 4;
    v11 = v6[4];
    if (v9 - v8 == v12[1] - v11)
    {
      if (v8 == v9)
      {
        return 1;
      }

      while (1)
      {
        v13 = *(v8 + 23);
        if (v13 >= 0)
        {
          v14 = *(v8 + 23);
        }

        else
        {
          v14 = *(v8 + 8);
        }

        v15 = *(v11 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v11 + 8);
        }

        if (v14 != v15)
        {
          break;
        }

        v17 = v13 >= 0 ? v8 : *v8;
        v18 = v16 >= 0 ? v11 : *v11;
        if (memcmp(v17, v18, v14) || *(v8 + 40) != *(v11 + 40))
        {
          break;
        }

        v19 = *(v8 + 24);
        if (v19 != (v8 + 32))
        {
          v20 = *(v11 + 24);
          do
          {
            result = TrafficDescriptor::operator==();
            if (!result)
            {
              return result;
            }

            v22 = v19[1];
            v23 = v19;
            if (v22)
            {
              do
              {
                v19 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v19 = v23[2];
                v24 = *v19 == v23;
                v23 = v19;
              }

              while (!v24);
            }

            v25 = v20[1];
            if (v25)
            {
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v26 = v20[2];
                v24 = *v26 == v20;
                v20 = v26;
              }

              while (!v24);
            }

            v20 = v26;
          }

          while (v19 != (v8 + 32));
        }

        v8 += 48;
        v11 += 48;
        result = 1;
        if (v8 == v9)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

void sub_1004BF98C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1004BFB08(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1004BFB70(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_1004BFC58(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 56;
        sub_1004BF724(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1004BFC58(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1004BFBC0(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_1004BFB08(char **a1)
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
        v3 -= 56;
        sub_1004BF724(v3);
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

void sub_1004BFB70(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1004BF62C(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1004BFBC0(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      sub_1004BF3A4(a1, __dst, v6);
      v6 = (v6 + 56);
      __dst += 56;
      v8 -= 56;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_1004BFC30(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      sub_1004BF724(v4);
      v4 -= 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1004BFC58(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    do
    {
      std::string::operator=(this, v5);
      this[1].__r_.__value_.__s.__data_[0] = v5[1].__r_.__value_.__s.__data_[0];
      if (this != v5)
      {
        sub_1004BFCE8(&this[1].__r_.__value_.__l.__size_, v5[1].__r_.__value_.__l.__size_, v5[1].__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((v5[1].__r_.__value_.__r.__words[2] - v5[1].__r_.__value_.__l.__size_) >> 4));
      }

      v5 = (v5 + 56);
      this = (this + 56);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1004BFCE8(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1004BFE54(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_1004BF4C4(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_1004BFEBC(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_1004BF1B4(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_1004BFEBC(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1004BF510(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_1004BFE54(char **a1)
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
        v3 -= 48;
        sub_1004BF1B4(v3);
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

std::string *sub_1004BFEBC(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    p_size = &__str[1].__r_.__value_.__l.__size_;
    do
    {
      std::string::operator=(this, v5);
      if (v5 != this)
      {
        sub_10001ACB0(this[1].__r_.__value_.__r.__words, v5[1].__r_.__value_.__l.__data_, p_size);
      }

      v5 += 2;
      this += 2;
      p_size += 6;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t *sub_1004BFF3C(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004BFB70(result, a4);
  }

  return result;
}

void sub_1004BFFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1004BFFC4(&a9);
  _Unwind_Resume(a1);
}

void sub_1004BFFC4(void ***a1)
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
        sub_1004BF724(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1004C0048(uint64_t a1)
{
  sub_10006DCAC(a1 + 328, *(a1 + 336));
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  sub_100009970(a1 + 184, *(a1 + 192));
  sub_100009970(a1 + 160, *(a1 + 168));
  sub_1004C0118(*(a1 + 144));
  sub_100009970(a1 + 104, *(a1 + 112));
  sub_1004C01D4(a1 + 80, *(a1 + 88));
  v3 = (a1 + 56);
  sub_1001B8A7C(&v3);
  v3 = (a1 + 32);
  sub_1001B8A7C(&v3);
  return a1;
}

void sub_1004C0118(void *a1)
{
  if (a1)
  {
    sub_1004C0118(*a1);
    sub_1004C0118(a1[1]);
    sub_1004C016C((a1 + 4));

    operator delete(a1);
  }
}

void sub_1004C016C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

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

void sub_1004C01D4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1004C01D4(a1, *a2);
    sub_1004C01D4(a1, *(a2 + 1));
    v4 = *(a2 + 11);
    if (v4)
    {
      *(a2 + 12) = v4;
      operator delete(v4);
    }

    v5 = (a2 + 64);
    sub_1000087B4(&v5);
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void *sub_1004C0254(uint64_t a1, int *a2, char **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004C0360(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), *a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_1004C034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

void sub_1004C0360(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

void *sub_1004C03A8(uint64_t a1, void *a2, char **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004C0360(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), *a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_1004C04A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

void *sub_1004C04B4(uint64_t a1, int *a2, char *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004C0360(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_1004C05AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

void *sub_1004C05C0(uint64_t a1, int *a2, char *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004C0360(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_1004C06B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

void *sub_1004C06CC(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_10024FB30(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
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

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_1004C0830(v5, a2 + 4);
  }

  return result;
}

void sub_1004C081C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

void *sub_1004C08D0(void *result, unsigned int *a2, unsigned int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
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

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = v9[7];
          sub_10042531C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = *(v9 + 1);
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
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

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_1004C0A34(v5, a2 + 7);
  }

  return result;
}

void sub_1004C0A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

void *sub_1004C0AD4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004C0B2C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004C0B2C(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1004C0BB4(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1004C0BB4(uint64_t **a1, uint64_t *a2, unsigned int *a3, _DWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_1004C0C50(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1004C0C50(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

_BYTE *sub_1004C0DF8(_BYTE *__dst, __int128 *a2, __int128 **a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  sub_10004EFD0(__dst + 24, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  *(__dst + 6) = 0;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_1001B9EC4(__dst + 6, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  return __dst;
}

void sub_1004C0EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

double sub_1004C0ED8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_100071A6C(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;

  *&result = sub_100015184(a1 + 48, a2 + 3).n128_u64[0];
  return result;
}

uint64_t sub_1004C0F5C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 24);
  sub_1000087B4(&v4);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004C0FB8(uint64_t a1)
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

uint64_t **sub_1004C1038(uint64_t **a1, unsigned __int16 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 2 * a3;
    do
    {
      sub_1004C10B8(a1, v4, a2, a2);
      ++a2;
      v6 -= 2;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1004C10B8(uint64_t **a1, uint64_t *a2, unsigned __int16 *a3, _WORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_1004C1154(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1004C1154(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 13), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 13) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 26);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 13))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 26);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_1004C12FC(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1004C13C8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1004C13C8(a1, *a2);
    sub_1004C13C8(a1, *(a2 + 1));
    if (a2[80] == 1 && a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

uint64_t sub_1004C1438(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v3 = *sub_1004C14D8(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_1004C14D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_1004C1560(a3, (v4 + 4)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_1004C1560((v7 + 4), a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_1004C1560(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1 && (v3 & 1) != 0)
  {
    if (*a1 < *a2)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (*a1 != *a2)
    {
      return v4;
    }

LABEL_12:
    v6 = *(a1 + 20);
    v7 = *(a2 + 20);
    if (v6 == 1 && (v7 & 1) != 0)
    {
      v8 = *(a1 + 16);
      v9 = *(a2 + 16);
      v10 = v8 == v9;
      if (v8 < v9)
      {
        LODWORD(v4) = -1;
      }

      else
      {
        LODWORD(v4) = 1;
      }

      if (v10)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      if (((v6 ^ 1) & v7) != 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      if ((v7 | v6))
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }
  }

  v5 = (v2 ^ 1) & v3;
  if (v5)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (v5 == v2)
  {
    goto LABEL_12;
  }

  return v4;
}

void *sub_1004C15FC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_1004C1688(a1, &v4, a2);
  if (!result)
  {
    sub_1004C1710();
  }

  return result;
}

void *sub_1004C1688(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_1004C17B4(a3, (v4 + 4)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_1004C17B4((v7 + 4), a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1004C1798(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004C1888(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C17B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 1 && (v3 & 1) != 0)
  {
    if (*a1 < *a2)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (*a1 != *a2)
    {
      return v4;
    }
  }

  else
  {
    v5 = (v2 ^ 1) & v3;
    if (v5)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (v5 != v2)
    {
      return v4;
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6 == 1 && (v7 & 1) != 0)
  {
    v8 = *(a1 + 8);
    v9 = *(a2 + 8);
    v10 = v8 == v9;
    if (v8 < v9)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (!v10)
    {
      return v4;
    }
  }

  else
  {
    v11 = (v6 ^ 1) & v7;
    if (v11)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = 1;
    }

    if (v11 != v6)
    {
      return v4;
    }
  }

  v12 = *(a1 + 48);
  v13 = *(a2 + 48);
  if (v12 == 1 && (v13 & 1) != 0)
  {
    return sub_1000068BC((a1 + 24), (a2 + 24));
  }

  if (((v12 ^ 1) & v13) != 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if ((v13 | v12))
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

void sub_1004C1888(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 80) == 1 && *(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

__n128 sub_1004C1970(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50180;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1004C19C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C1A0C(uint64_t a1)
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

uint64_t sub_1004C1AFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E50210;
  a2[1] = v2;
  return result;
}

void sub_1004C1B28(uint64_t a1, unsigned int *a2, int *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *a3;
  TrafficDescriptor::TrafficDescriptor();
  v7 = *(a1 + 8);
  if (!v6)
  {
LABEL_9:
    v5 = (*(*v7 + 1120))(v7);
    v6 = 0;
    goto LABEL_10;
  }

  v8 = (*(*v7 + 1120))(v7);
  v9 = (*(*v7 + 1120))(v7);
  v10 = (*(*v7 + 1120))(v7);
  v11 = (*(*v7 + 1064))(v7, v10);
  v32 = 0;
  LOBYTE(v8) = DataServiceController::SlicesDataContainer::configured(v7 + 4960, v8, v9, v11, v31);
  sub_100007E44(v31);
  if ((v8 & 1) == 0)
  {
    v12 = *(v7 + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      TrafficDescriptor::toString(&v25, &v21);
      v13 = v26 >= 0 ? &v25 : v25;
      *buf = 136446210;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Do not have slicing allowed, forwarding to Internet: %{public}s", buf, 0xCu);
      if (v26 < 0)
      {
        operator delete(v25);
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  v14 = (*(**(v7 + 6) + 16))(*(v7 + 6), v5);
  v24 = 0uLL;
  DataServiceController::getConnection_sync(v7, v5, v6, &v24);
  if (v24)
  {
    goto LABEL_17;
  }

  v15 = (*(*v7 + 1120))(v7);
  DataServiceController::getConnection_sync(v7, v15, 0, &v25);
  v16 = v25;
  v25 = 0uLL;
  v17 = *(&v24 + 1);
  v24 = v16;
  if (!v17)
  {
    if (!v16)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  sub_100004A34(v17);
  if (*(&v25 + 1))
  {
    sub_100004A34(*(&v25 + 1));
  }

  if (v24)
  {
LABEL_17:
    if ((DataServiceController::isInternalSliceApp_sync(v7, &v21) & 1) == 0 && v23 == 1)
    {
      BYTE4(v21) = 0;
      v22 = 0;
    }

    v18 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = &v25;
      TrafficDescriptor::toString(&v25, &v21);
      if (v26 < 0)
      {
        v19 = v25;
      }

      (*(*v24 + 488))(v24);
      v20 = asString();
      *buf = 136446466;
      v28 = v19;
      v29 = 2082;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor traffic forward: %{public}s to %{public}s", buf, 0x16u);
      if (v26 < 0)
      {
        operator delete(v25);
      }
    }

    DataServiceController::saveForwardedApp(v7, &v21);
    (*(*v24 + 448))(v24, &v21);
  }

LABEL_26:
  if (*(&v24 + 1))
  {
    sub_100004A34(*(&v24 + 1));
  }

  TrafficDescriptor::~TrafficDescriptor(&v21);
}

void sub_1004C1F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 - 168);
  if (v11)
  {
    sub_100004A34(v11);
  }

  TrafficDescriptor::~TrafficDescriptor(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C1FBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C2008(uint64_t a1)
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

void *sub_1004C2088(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_1004C212C();
  }

  return result;
}

void sub_1004C21E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004C2200(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1004C2200(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (__p[160] == 1)
    {
      sub_10006DCAC((__p + 136), *(__p + 18));
    }

    if (__p[112] == 1)
    {
      sub_100009970((__p + 88), *(__p + 12));
    }

    if (__p[80] == 1)
    {
      sub_10006DCAC((__p + 56), *(__p + 8));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1004C22AC(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100173768(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_1004C2328(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  sub_100265450(v4 + 40);
  operator delete(v4);
  return 1;
}

uint64_t *sub_1004C23B4(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_1004C247C();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_1004C2560(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  sub_1004C25A4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C25A4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100265450(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_1004C2678(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = a3[23];
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 1);
  }

  if (v6 == v7)
  {
    v9 = v5 >= 0 ? a2 : *a2;
    v10 = v8 >= 0 ? a3 : *a3;
    if (!memcmp(v9, v10, v6))
    {
      return 1;
    }
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v11 = &v32;
  sub_1000677C4(&v32, v6 + 5);
  if (v34 < 0)
  {
    v11 = v32;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(v11, v12, v6);
  }

  strcpy(v11 + v6, "_NULL");
  v13 = HIBYTE(v34);
  if (v34 >= 0)
  {
    v14 = HIBYTE(v34);
  }

  else
  {
    v14 = v33;
  }

  v15 = a3[23];
  if (v15 >= 0)
  {
    v16 = a3[23];
  }

  else
  {
    v16 = *(a3 + 1);
  }

  if (v14 == v16)
  {
    v17 = v34 >= 0 ? &v32 : v32;
    v18 = v15 >= 0 ? a3 : *a3;
    if (!memcmp(v17, v18, v14))
    {
      v27 = 1;
      if ((v13 & 0x80) == 0)
      {
        return v27;
      }

      goto LABEL_59;
    }
  }

  __p = 0;
  v30 = 0;
  v31 = 0;
  p_p = &__p;
  sub_1000677C4(&__p, v16 + 5);
  if (v31 < 0)
  {
    p_p = __p;
  }

  if (v16)
  {
    if (a3[23] >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    memmove(p_p, v20, v16);
  }

  strcpy(p_p + v16, "_NULL");
  v21 = SHIBYTE(v31);
  if (v31 >= 0)
  {
    v22 = HIBYTE(v31);
  }

  else
  {
    v22 = v30;
  }

  v23 = *(a2 + 23);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a2 + 8);
  }

  if (v22 != v23)
  {
    v27 = 0;
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v31 >= 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p;
  }

  if (v24 >= 0)
  {
    v26 = a2;
  }

  else
  {
    v26 = *a2;
  }

  v27 = memcmp(v25, v26, v22) == 0;
  if (v21 < 0)
  {
LABEL_57:
    operator delete(__p);
  }

LABEL_58:
  if (v34 < 0)
  {
LABEL_59:
    operator delete(v32);
  }

  return v27;
}

void sub_1004C28B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C28D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C291C(uint64_t a1)
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

uint64_t sub_1004C299C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004C2A34(uint64_t a1)
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

uint64_t sub_1004C2AB4(uint64_t a1)
{
  *a1 = off_101E50330;
  sub_1004C291C(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1004C2B08(uint64_t a1)
{
  *a1 = off_101E50330;
  sub_1004C291C(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1004C2C44(uint64_t a1, void *a2)
{
  *a2 = off_101E50330;
  v4 = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *v4 = v5;
  }

  return sub_1004C299C((a2 + 4), a1 + 32);
}

void sub_1004C2CC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C2CE8(char *a1)
{
  sub_1004C2E48((a1 + 8));

  operator delete(a1);
}

uint64_t sub_1004C2D24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(*(a1 + 56), *a2 + 48, a1 + 8) ^ 1;
}

uint64_t sub_1004C2D7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C2DC8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1004C2E48(uint64_t a1)
{
  sub_1004C291C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1004C2E98(uint64_t a1)
{
  *a1 = off_101E503C0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1004C2EE8(uint64_t a1)
{
  *a1 = off_101E503C0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

char *sub_1004C2FEC(char *result, void *a2)
{
  *a2 = off_101E503C0;
  v2 = a2 + 1;
  if (result[31] < 0)
  {
    return sub_100005F2C(v2, *(result + 1), *(result + 2));
  }

  v3 = *(result + 8);
  v2[2] = *(result + 3);
  *v2 = v3;
  return result;
}

void sub_1004C3034(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_1004C3048(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_1004C30E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C3130(uint64_t a1)
{
  *a1 = off_101E50440;
  if (*(a1 + 328) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor((a1 + 24));
  }

  return a1;
}

void sub_1004C3184(uint64_t a1)
{
  *a1 = off_101E50440;
  if (*(a1 + 328) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor((a1 + 24));
  }

  operator delete();
}

TrafficDescriptor *sub_1004C3280(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50440;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return sub_1004BEDC0((a2 + 24), (a1 + 24));
}

void sub_1004C32BC(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor((a1 + 24));
  }
}

void sub_1004C32D4(char *__p)
{
  if (__p[328] == 1)
  {
    TrafficDescriptor::~TrafficDescriptor((__p + 24));
  }

  operator delete(__p);
}

uint64_t sub_1004C331C(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v5 = *a3;
  v6 = *(a1 + 8);
  if ((*(**a4 + 960))(*a4, 2))
  {
    return 1;
  }

  v7 = sub_1000A8A0C(*(v6 + 144), *(a1 + 16));
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*v7 == v9)
  {
    return 1;
  }

  while (1)
  {
    v11 = *v8;
    v10 = v8[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v11 || (*(*v11 + 488))(v11) != v5)
    {
      v17 = 3;
      if (!v10)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    v26 = 0;
    v27[0] = 0;
    v27[1] = 0;
    v12 = (*(*v11 + 416))(v11, v28);
    sub_10009AEBC(&v26, v12);
    v13 = v26;
    if (v26 == v27)
    {
LABEL_16:
      v17 = 0;
    }

    else
    {
      while (1)
      {
        if ((*(a1 + 328) & 1) == 0)
        {
          sub_1000D1644();
        }

        if (TrafficDescriptor::equalsTraffic((v13 + 4), (a1 + 24)))
        {
          break;
        }

        v14 = v13[1];
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
            v15 = v13[2];
            v16 = *v15 == v13;
            v13 = v15;
          }

          while (!v16);
        }

        v13 = v15;
        if (v15 == v27)
        {
          goto LABEL_16;
        }
      }

      v18 = *(v6 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        TrafficDescriptor::toString(v24, (v13 + 4));
        if (v25 >= 0)
        {
          v19 = v24;
        }

        else
        {
          v19 = v24[0];
        }

        if ((*(a1 + 328) & 1) == 0)
        {
          sub_1000D1644();
        }

        TrafficDescriptor::toString(__p, (a1 + 24));
        v20 = __p;
        if (v23 < 0)
        {
          v20 = __p[0];
        }

        *buf = 136315394;
        v31 = v19;
        v32 = 2080;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I equalsTraffic: matched td=%s, dnnTd=%s", buf, 0x16u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }
      }

      v17 = 1;
    }

    sub_10001BB0C(&v26, v27[0]);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
      if (!v10)
      {
        goto LABEL_34;
      }

LABEL_33:
      sub_100004A34(v10);
      goto LABEL_34;
    }

    if (v10)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (v17 != 3 && v17)
    {
      return 0;
    }

    v8 += 2;
    if (v8 == v9)
    {
      return 1;
    }
  }
}

void sub_1004C363C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001BB0C(&a20, a21);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004C36A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1004C36F0(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[304] = 0;
  if (*(a2 + 304) == 1)
  {
    TrafficDescriptor::TrafficDescriptor();
    a1[304] = 1;
  }

  return a1;
}

void sub_1004C3738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 304) == 1)
  {
    TrafficDescriptor::~TrafficDescriptor(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004C37E0(uint64_t a1, void *a2, unsigned int *a3, void *a4)
{
  if (!(*(**a4 + 960))(*a4, 2))
  {
    return 1;
  }

  v5 = *a2;
  v6 = (*a2 + 48);
  v7 = asString();
  v8 = strlen(v7);
  v9 = *(v5 + 71);
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v8 != v9)
    {
      return 1;
    }

    return memcmp(v6, v7, v8) != 0;
  }

  if (v8 == *(v5 + 56))
  {
    if (v8 == -1)
    {
      sub_10013C334();
    }

    v6 = *v6;
    return memcmp(v6, v7, v8) != 0;
  }

  return 1;
}

uint64_t sub_1004C38B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1004C3978(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1004C39AC(uint64_t a1, uint64_t a2, int *a3, void *a4)
{
  v5 = *a3;
  v6 = *(a1 + 8);
  if ((*(**a4 + 960))(*a4, 2))
  {
    v7 = sub_1000A8A0C(*(v6 + 144), *(a1 + 16));
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*v7 == v9)
    {
      return 0;
    }

    while (1)
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11 && (*(*v11 + 488))(v11) == v5)
      {
        __p[0] = 0;
        __p[1] = 0;
        v15 = 0;
        v12 = *((*(*v11 + 416))(v11, __p) + 16) != 0;
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v12 = 3;
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      if (v12 != 3 && v12)
      {
        break;
      }

      v8 += 2;
      if (v8 == v9)
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_1004C3B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C3B4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C3C6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C3CB8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004C3D50(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004C3DE8(uint64_t a1)
{
  *a1 = off_101E50640;
  v2 = a1 + 24;
  v4 = (a1 + 56);
  sub_1001B8A7C(&v4);
  sub_1004C2008(v2);
  return a1;
}

void sub_1004C3E4C(uint64_t a1)
{
  *a1 = off_101E50640;
  v1 = a1 + 24;
  v2 = (a1 + 56);
  sub_1001B8A7C(&v2);
  sub_1004C2008(v1);
  operator delete();
}

void sub_1004C3F68(_Unwind_Exception *a1)
{
  sub_1004C2008(v1 + 24);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004C3F8C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50640;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  sub_1004C3D50(a2 + 24, a1 + 24);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return sub_1004BE904((a2 + 56), *(a1 + 56), *(a1 + 64), 0x86BCA1AF286BCA1BLL * ((*(a1 + 64) - *(a1 + 56)) >> 4));
}

uint64_t sub_1004C402C(uint64_t a1)
{
  v3 = (a1 + 56);
  sub_1001B8A7C(&v3);
  return sub_1004C2008(a1 + 24);
}

void sub_1004C406C(void **a1)
{
  v2 = a1 + 7;
  sub_1001B8A7C(&v2);
  sub_1004C2008((a1 + 3));
  operator delete(a1);
}

void sub_1004C40B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  if (*(a1 + 64) == v4)
  {
    sub_1002030E0();
  }

  v6 = *a3;
  v26 = *(a1 + 8);
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  TrafficDescriptor::TrafficDescriptor(&v29, v4);
  if (v6)
  {
    v7 = 304;
    v8 = 1;
    do
    {
      v9 = *(a1 + 56);
      if (v8 >= 0x86BCA1AF286BCA1BLL * ((*(a1 + 64) - v9) >> 4))
      {
        break;
      }

      if ((v33 & 1) == 0 && *(v9 + v7 + 208) == 1)
      {
        sub_1004C4560(&v32[136], (v9 + v7 + 184));
      }

      if ((BYTE8(v29) & 1) == 0)
      {
        v10 = v9 + v7;
        if (*(v9 + v7 + 8) == 1)
        {
          v11 = *(v10 + 4);
          BYTE8(v29) = *(v10 + 8);
          DWORD1(v29) = v11;
        }
      }

      if ((BYTE8(v31) & 1) == 0 && *(v9 + v7 + 40) == 1)
      {
        sub_10012BF3C(&v30, (v9 + v7 + 16));
      }

      if ((TrafficDescriptor::hasBundleInfo(&v29) & 1) == 0 && TrafficDescriptor::hasBundleInfo((v9 + v7)))
      {
        sub_10012BF3C(v32, (v9 + v7 + 48));
      }

      if ((v32[128] & 1) == 0 && *(v9 + v7 + 176) == 1)
      {
        sub_10012BF3C(&v32[104], (v9 + v7 + 152));
      }

      if ((BYTE6(v33) & 1) == 0)
      {
        v12 = v9 + v7;
        if (*(v9 + v7 + 214) == 1)
        {
          v13 = *(v12 + 212);
          BYTE6(v33) = *(v12 + 214);
          WORD2(v33) = v13;
        }
      }

      if ((BYTE12(v33) & 1) == 0 && BYTE12(v33) != *(v9 + v7 + 220) && *(v9 + v7 + 220))
      {
        DWORD2(v33) = *(v9 + v7 + 216);
        BYTE12(v33) = 1;
      }

      if ((v34 & 1) == 0)
      {
        v14 = v9 + v7;
        if (*(v9 + v7 + 224) == 1)
        {
          v15 = *(v14 + 222);
          LOBYTE(v34) = *(v14 + 224);
          HIWORD(v33) = v15;
        }
      }

      if ((BYTE8(v34) & 1) == 0)
      {
        v16 = v9 + v7;
        if (*(v9 + v7 + 232) == 1)
        {
          v17 = *(v16 + 228);
          BYTE8(v34) = *(v16 + 232);
          DWORD1(v34) = v17;
        }
      }

      if ((TrafficDescriptor::hasDnnInfo(&v29) & 1) == 0 && TrafficDescriptor::hasDnnInfo((v9 + v7)))
      {
        sub_10012BF3C(v35, (v9 + v7 + 240));
      }

      ++v8;
      v7 += 304;
      --v6;
    }

    while (v6);
  }

  v18 = *(a1 + 16);
  TrafficDescriptor::TrafficDescriptor(v27, &v29);
  v28 = 1;
  v19 = DataServiceController::chooseConnectionTypeByDnn_sync(v26, v18, a2, v27);
  if (v28 == 1)
  {
    TrafficDescriptor::~TrafficDescriptor(v27);
  }

  v20 = *(v26 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a2 + 23);
    v22 = *a2;
    v23 = asString();
    if (v21 >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = v22;
    }

    *buf = 136446466;
    v37 = v24;
    v38 = 2080;
    v39 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor match: for dnn %{public}s selected connection %s", buf, 0x16u);
  }

  v25 = *(a1 + 16);
  TrafficDescriptor::TrafficDescriptor(buf, &v29);
  sub_1004ADB00(a1 + 24, v25, v19);
  TrafficDescriptor::~TrafficDescriptor(buf);
  TrafficDescriptor::~TrafficDescriptor(&v29);
}

uint64_t sub_1004C4494(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C44E0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_1004C4560(CSIPacketAddress *result, const CSIPacketAddress *a2)
{
  if (*(result + 24) == *(a2 + 24))
  {
    if (*(result + 24))
    {

      CSIPacketAddress::operator=();
    }
  }

  else if (*(result + 24))
  {
    *(result + 24) = 0;
  }

  else
  {
    CSIPacketAddress::CSIPacketAddress(result, a2);
    *(v3 + 24) = 1;
  }
}

uint64_t sub_1004C45B4(uint64_t a1)
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

uint64_t sub_1004C4634(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004C46CC(uint64_t a1)
{
  *a1 = off_101E506D0;
  v2 = a1 + 24;
  v4 = (a1 + 368);
  sub_1001B8A7C(&v4);
  TrafficDescriptor::~TrafficDescriptor((a1 + 56));
  sub_1004C45B4(v2);
  return a1;
}

void sub_1004C4738(uint64_t a1)
{
  *a1 = off_101E506D0;
  v2 = a1 + 24;
  v3 = (a1 + 368);
  sub_1001B8A7C(&v3);
  TrafficDescriptor::~TrafficDescriptor((a1 + 56));
  sub_1004C45B4(v2);
  operator delete();
}

void sub_1004C486C(_Unwind_Exception *a1)
{
  TrafficDescriptor::~TrafficDescriptor((v1 + 56));
  sub_1004C45B4(v1 + 24);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004C48A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E506D0;
  v4 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v4;
  sub_1004C4634(a2 + 24, a1 + 24);
  TrafficDescriptor::TrafficDescriptor((a2 + 56), (a1 + 56));
  *(a2 + 360) = *(a1 + 360);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  return sub_1004BE904((a2 + 368), *(a1 + 368), *(a1 + 376), 0x86BCA1AF286BCA1BLL * ((*(a1 + 376) - *(a1 + 368)) >> 4));
}

void sub_1004C493C(_Unwind_Exception *a1)
{
  TrafficDescriptor::~TrafficDescriptor((v1 + 56));
  sub_1004C45B4(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C4960(uint64_t a1)
{
  v3 = (a1 + 368);
  sub_1001B8A7C(&v3);
  TrafficDescriptor::~TrafficDescriptor((a1 + 56));
  return sub_1004C45B4(a1 + 24);
}

void sub_1004C49A8(void **a1)
{
  v2 = a1 + 46;
  sub_1001B8A7C(&v2);
  TrafficDescriptor::~TrafficDescriptor((a1 + 7));
  sub_1004C45B4((a1 + 3));
  operator delete(a1);
}

void sub_1004C49F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 360);
    TrafficDescriptor::toString(__p, (a1 + 56));
    v7 = v17 >= 0 ? __p : __p[0];
    v8 = *(a2 + 23) >= 0 ? a2 : *a2;
    *buf = 67109634;
    v20 = v6;
    v21 = 2080;
    v22 = v7;
    v23 = 2082;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I TrafficDescriptor lookup result[%u] for %s: dnn %{public}s", buf, 0x1Cu);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9 || (v10 = *(a1 + 368), v11 = *(a1 + 360) + 1, v12 = *(a1 + 376), v13 = 0x86BCA1AF286BCA1BLL * ((v12 - v10) >> 4), v11 >= v13) || (v14 = *(a1 + 16), __p[1] = 0, v17 = 0, __p[0] = 0, sub_1004BE904(__p, v10, v12, v13), sub_1004C4634(buf, a1 + 24), v15 = DataServiceController::selectDnnForTd_sync(v4, v14, v11, __p, buf), sub_1004C45B4(buf), v18 = __p, sub_1001B8A7C(&v18), (v15 & 1) == 0))
  {
    sub_1004C4CB8(a1 + 24, a2, *(a1 + 360));
  }
}

void sub_1004C4BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, ...)
{
  va_start(va, a12);
  sub_1004C45B4(va);
  a12 = &a9;
  sub_1001B8A7C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C4BEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C4C38(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1004C4CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1004C4D0C(uint64_t a1)
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

uint64_t sub_1004C4D8C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004C4E24(uint64_t a1)
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

uint64_t sub_1004C4EA4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1004C4F3C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

void *sub_1004C5010(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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
      v7 = v4[4];
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

uint64_t *sub_1004C50EC(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

__n128 sub_1004C5230(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50788;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1004C5264(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = subscriber::asString();
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 136315394;
    v7 = v4;
    v8 = 2082;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA::     [dump %s] Slice configured: %{public}s", &v6, 0x16u);
  }
}

uint64_t sub_1004C5334(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004C5380(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10010935C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004C53D8(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1004C5424(*(a1 + 8), (a1 + 16));
  }

  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1004C5424(void *a1, void *a2)
{
  if (a1[6] == a2[2])
  {
    v4 = a1[4];
    v5 = a1 + 5;
    if (v4 == a1 + 5)
    {
      return 0;
    }

    v6 = *a2;
    while (*(v4 + 7) == *(v6 + 7) && rest::operator==())
    {
      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v9 = *v4 == v8;
          v8 = v4;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  sub_1004C551C(a1, a2);
  return 1;
}

uint64_t sub_1004C551C(uint64_t a1, void *a2)
{
  sub_10004645C((a1 + 32), a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t sub_1004C558C(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4, int *a5)
{
  v7 = 0;
  v8 = 0;
  v5 = *sub_1000504CC(a1, a2, &v8, &v7, a3);
  if (!v5)
  {
    operator new();
  }

  return v5;
}

uint64_t sub_1004C5638(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1004C5424(*(a1 + 8), (a1 + 16));
  }

  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1004C56F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E50808;
  a2[1] = v2;
  return result;
}

void sub_1004C5720(uint64_t a1, uint64_t *a2)
{
  v3 = **(a1 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I     (update) Slice configured: %{public}s", &v5, 0xCu);
  }
}

uint64_t sub_1004C57D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004C5890(void *a1, const char **a2, const char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E50888;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), *a2, a3);
  return a1;
}

void sub_1004C5910(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E50888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004C5970(void *a1)
{
  *a1 = off_101E508D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004C59BC(void *a1)
{
  *a1 = off_101E508D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004C5A9C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E508D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004C5ADC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004C5AEC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004C5B2C(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        sub_10000501C(__p, "Managed DB update");
        DataServiceController::updateSlicingDefinitionsWithAppDB(v3, __p);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004C5BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C5BDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004C5C48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E50958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004C5CAC(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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
      v7 = v4[4];
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

void *sub_1004C5D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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
      v7 = v4[4];
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

uint64_t sub_1004C5E68(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1004C016C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 sub_1004C5F2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E509A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1004C5F60(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = subscriber::asString();
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 136315394;
    v7 = v4;
    v8 = 2082;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I     [insert app %s] Slice configured: %{public}s", &v6, 0x16u);
  }
}

uint64_t sub_1004C6030(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1004C607C(void **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1017726B4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  sub_10000501C(__p, "");
  v10 = v1[4];
  if (!v10)
  {
    sub_100022DB4();
  }

  (*(*v10 + 48))(v10, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001C2304(&v13);
  return sub_1000049E0(&v12);
}

void sub_1004C6134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1001C2304(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C6168(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004C6200(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1004C6280(void **a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = (*(**v1 + 1120))(*v1);
  if ((*(*v2 + 2272))(v2, v3, 0))
  {
    memset(v35, 0, 64);
    memset(v34, 0, sizeof(v34));
    memset(v33, 0, sizeof(v33));
    v31 = 0u;
    v32 = 0u;
    buf = 0u;
    TrafficDescriptor::TrafficDescriptor(&buf);
    memset(&v20, 0, sizeof(v20));
    sub_10000501C(__p, "DNN:");
    v4 = v1 + 1;
    sub_1004C6AEC(&v20, (v1 + 1), &__p[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      sub_1001696A4(v35, &v20);
    }

    else
    {
      memset(__p, 0, 24);
      sub_10000501C(v28, "dnn:");
      sub_1004C6AEC(__p, (v1 + 1), v28);
      if ((v28[23] & 0x80000000) != 0)
      {
        operator delete(*v28);
      }

      v8 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v8)
      {
        sub_1001696A4(v35, __p);
      }

      else
      {
        memset(v28, 0, 24);
        sub_10000501C(&v21, "AppCategory:");
        sub_1004C6AEC(v28, (v1 + 1), &v21.__r_.__value_.__l.__data_);
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        v9 = v28[23];
        if (v28[23] < 0)
        {
          v9 = *&v28[8];
        }

        if (v9)
        {
          sub_1001696A4(v33, v28);
        }

        else
        {
          memset(&v21, 0, sizeof(v21));
          sub_10000501C(v24, "appcategory:");
          sub_1004C6AEC(&v21, (v1 + 1), v24);
          if (v25 < 0)
          {
            operator delete(v24[0]);
          }

          v10 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
          v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
          if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v21.__r_.__value_.__l.__size_;
          }

          if (v10)
          {
            sub_1001696A4(v33, &v21);
            v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
          }

          if (v11 < 0)
          {
            operator delete(v21.__r_.__value_.__l.__data_);
          }
        }

        if ((v28[23] & 0x80000000) != 0)
        {
          operator delete(*v28);
        }
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (!TrafficDescriptor::empty(&buf))
    {
      sub_100169660(v34, "vpn");
      v13 = v2[5];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v1 + 1;
        if (*(v1 + 31) < 0)
        {
          v14 = *v4;
        }

        TrafficDescriptor::toString(__p, &buf);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0].__r_.__value_.__r.__words[0];
        }

        *v28 = 136315394;
        *&v28[4] = v14;
        *&v28[12] = 2082;
        *&v28[14] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Slice requested for %s - trying to forward traffic descriptor %{public}s", v28, 0x16u);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      memset(&v28[8], 0, 48);
      v29 = 0;
      *v28 = v2;
      if (*(v1 + 31) < 0)
      {
        sub_100005F2C(&v28[8], v1[1], v1[2]);
      }

      else
      {
        v16 = *v4;
        *&v28[24] = v1[3];
        *&v28[8] = v16;
      }

      sub_1004C6168(&v28[32], (v1 + 4));
      TrafficDescriptor::TrafficDescriptor(__p, &buf);
      v21.__r_.__value_.__r.__words[0] = *v28;
      if ((v28[31] & 0x80000000) != 0)
      {
        sub_100005F2C(&v21.__r_.__value_.__s.__data_[8], *&v28[8], *&v28[16]);
      }

      else
      {
        *&v21.__r_.__value_.__r.__words[1] = *&v28[8];
        v22 = *&v28[24];
      }

      sub_1004C6168(&v23, &v28[32]);
      v26 = 0;
      operator new();
    }

    v12 = v2[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 31) < 0)
      {
        v4 = *v4;
      }

      LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315138;
      *(__p[0].__r_.__value_.__r.__words + 4) = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s - but we found no slice info, failing the request", __p, 0xCu);
    }

    memset(__p, 0, 24);
    sub_1004C6A8C((v1 + 4), 0, 0, __p, 22);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    TrafficDescriptor::~TrafficDescriptor(&buf);
  }

  else
  {
    v6 = v2[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v1 + 1;
      if (*(v1 + 31) < 0)
      {
        v7 = *v7;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s - but we are not able to use slice right now, failing the request", &buf, 0xCu);
    }

    buf = 0uLL;
    *&v31 = 0;
    sub_1004C6A8C((v1 + 4), 0, 0, &buf, 61);
    if (SBYTE7(v31) < 0)
    {
      operator delete(buf);
    }
  }

  sub_1004C6A2C(&v19);
  return sub_1000049E0(&v18);
}

void sub_1004C68B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  TrafficDescriptor::~TrafficDescriptor(&STACK[0x200]);
  sub_1004C6A2C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004C6A2C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1004C0FB8(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1004C6A8C(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v9 = a2;
  v7 = a5;
  v8 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  return (*(*v5 + 48))(v5, &v9, &v8, a4, &v7);
}

std::string *sub_1004C6AEC@<X0>(std::string *__return_ptr a1@<X8>, std::string *__str@<X0>, const void **a3@<X1>)
{
  if (*(a3 + 23) >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = a3[1];
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size > v4)
  {
    std::string::basic_string(&__p, __str, 0, v4, &v17);
    v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    v10 = *(a3 + 23);
    v11 = v10;
    if (v10 < 0)
    {
      v10 = a3[1];
    }

    if (v9 == v10)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v11 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      v14 = memcmp(p_p, v13, v9) == 0;
      if (v8 < 0)
      {
LABEL_27:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v14)
        {
          return sub_10000501C(a1, "");
        }

        return std::string::basic_string(a1, __str, v4, 0xFFFFFFFFFFFFFFFFLL, &__p);
      }
    }

    else
    {
      v14 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_27;
      }
    }

    if (!v14)
    {
      return sub_10000501C(a1, "");
    }

    return std::string::basic_string(a1, __str, v4, 0xFFFFFFFFFFFFFFFFLL, &__p);
  }

  return sub_10000501C(a1, "");
}

uint64_t sub_1004C6C4C(uint64_t a1)
{
  sub_1004C0FB8(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1004C6C88(uint64_t a1)
{
  *a1 = off_101E50A28;
  sub_1004C0FB8(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1004C6CDC(uint64_t a1)
{
  *a1 = off_101E50A28;
  sub_1004C0FB8(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1004C6E10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E50A28;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  return sub_1004C6168(a2 + 40, a1 + 40);
}

void sub_1004C6E88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C6EAC(char *a1)
{
  sub_1004C763C((a1 + 8));

  operator delete(a1);
}

void sub_1004C6EE8(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *a3;
  TrafficDescriptor::TrafficDescriptor();
  v7 = *(a1 + 8);
  v8 = (*(*v7[6] + 16))(v7[6], v5);
  if (isSlice())
  {
    v9 = ((*v7)[140])(v7);
    v10 = ((*v7)[140])(v7);
    v11 = ((*v7)[140])(v7);
    v12 = ((*v7)[133])(v7, v11);
    v40 = 0;
    LOBYTE(v9) = DataServiceController::SlicesDataContainer::configured((v7 + 620), v9, v10, v12, v39);
    sub_100007E44(v39);
    if (v9)
    {
      v33 = 0;
      v34 = 0;
      DataServiceController::getConnection_sync(v7, v5, v6, &v33);
      if (!v33)
      {
        v21 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = a1 + 16;
          if (*(a1 + 39) < 0)
          {
            v22 = *(a1 + 16);
          }

          *buf = 136315138;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s: failure (3): ???", buf, 0xCu);
        }

        memset(buf, 0, sizeof(buf));
        sub_1004C6A8C(a1 + 40, 0, 0, buf, 61);
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        v23 = *buf;
        goto LABEL_50;
      }

      v31 = 0uLL;
      v32 = 0;
      if ((*(*v33 + 168))(v33))
      {
        (*(*v33 + 464))(buf);
        v13 = *v8;
        v32 = *&buf[16];
        v31 = *buf;
        v14 = HIBYTE(*&buf[16]);
        v15 = buf[23];
        if ((buf[23] & 0x80u) != 0)
        {
          v14 = *(&v31 + 1);
        }

        if (!v14)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16 = a1 + 16;
            if (*(a1 + 39) < 0)
            {
              v16 = *(a1 + 16);
            }

            *buf = 136315138;
            *&buf[4] = v16;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Slice requested for %s: failure (4): interface name empty", buf, 0xCu);
          }

          memset(buf, 0, sizeof(buf));
          sub_1004C6A8C(a1 + 40, 0, 0, buf, 61);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

LABEL_48:
          if ((v15 & 0x80) == 0)
          {
            goto LABEL_51;
          }

          v23 = v31;
LABEL_50:
          operator delete(v23);
LABEL_51:
          if (v34)
          {
            sub_100004A34(v34);
          }

          goto LABEL_53;
        }
      }

      else
      {
        v15 = 0;
        v13 = *v8;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 39) >= 0)
        {
          v24 = a1 + 16;
        }

        else
        {
          v24 = *(a1 + 16);
        }

        v25 = v29;
        TrafficDescriptor::toString(v29, v28);
        if (v30 < 0)
        {
          v25 = v29[0];
        }

        (*(*v33 + 488))(v33);
        v26 = asString();
        v27 = v31;
        if (v15 >= 0)
        {
          v27 = &v31;
        }

        *buf = 136315906;
        *&buf[4] = v24;
        *&buf[12] = 2082;
        *&buf[14] = v25;
        *&buf[22] = 2080;
        v36 = v26;
        v37 = 2080;
        v38 = v27;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Slice requested for %s: TrafficDescriptor traffic forward: %{public}s to %s, current interface name: %s", buf, 0x2Au);
        if (v30 < 0)
        {
          operator delete(v29[0]);
        }
      }

      DataServiceController::saveForwardedApp(v7, v28);
      if (SHIBYTE(v32) < 0)
      {
        sub_100005F2C(buf, v31, *(&v31 + 1));
      }

      else
      {
        *buf = v31;
        *&buf[16] = v32;
      }

      sub_1004C6A8C(a1 + 40, v5, v6, buf, 0);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      (*(*v33 + 448))(v33, v28);
      LOBYTE(v15) = HIBYTE(v32);
      goto LABEL_48;
    }

    v19 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1 + 16;
      if (*(a1 + 39) < 0)
      {
        v20 = *(a1 + 16);
      }

      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s: failure (2): do not have slicing allowed", buf, 0xCu);
    }
  }

  else
  {
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = a1 + 16;
      if (*(a1 + 39) < 0)
      {
        v18 = *(a1 + 16);
      }

      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N Slice requested for %s: failure (1)", buf, 0xCu);
    }
  }

  memset(buf, 0, sizeof(buf));
  sub_1004C6A8C(a1 + 40, 0, 0, buf, 61);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_53:
  TrafficDescriptor::~TrafficDescriptor(v28);
}

void sub_1004C7538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 153) < 0)
  {
    operator delete(*(v3 - 176));
  }

  if (*(v3 - 201) < 0)
  {
    operator delete(*(v3 - 224));
  }

  v5 = *(v3 - 184);
  if (v5)
  {
    sub_100004A34(v5);
  }

  TrafficDescriptor::~TrafficDescriptor(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C75F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004C763C(uint64_t a1)
{
  sub_1004C0FB8(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void *sub_1004C768C(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_1004C7730();
  }

  return result;
}

void sub_1004C77CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004C77E8(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v3 = *(*v1 + 112);
  __p = *(*v1 + 104);
  v30 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v30)
  {
    sub_100004A34(v30);
  }

  v4 = *(&v36 + 1);
  v5 = v36;
  if (v36 == *(&v36 + 1))
  {
    goto LABEL_53;
  }

  v6 = v37;
  do
  {
    if (v37(*v5))
    {
      break;
    }

    ++v5;
  }

  while (v5 != *(&v36 + 1));
  v25 = *(&v36 + 1);
  if (v5 == *(&v36 + 1))
  {
LABEL_53:
    v22 = *(v2 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (v1 + 8);
      if (*(v1 + 31) < 0)
      {
        v23 = *v23;
      }

      LODWORD(v36) = 136315138;
      *(&v36 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I requestSliceDeactivation: cannot find interface %s", &v36, 0xCu);
    }
  }

  else
  {
LABEL_10:
    v7 = *v5;
    v8 = 28;
    while (1)
    {
      v32 = 0;
      v33 = 0;
      DataServiceController::getConnection_sync(v2, v7, v8, &v32);
      if (v32 && ((*(*v32 + 168))(v32) & 1) != 0)
      {
        __p = 0;
        v30 = 0;
        v31 = 0;
        v9 = (*(*v32 + 416))(v32, &__p);
        if (v31 >= 0)
        {
          v10 = HIBYTE(v31);
        }

        else
        {
          v10 = v30;
        }

        v11 = *(v1 + 31);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v1 + 16);
        }

        if (v10 == v11 && ((v13 = v9, v31 >= 0) ? (v14 = &__p) : (v14 = __p), v12 >= 0 ? (v15 = (v1 + 8)) : (v15 = *(v1 + 8)), !memcmp(v14, v15, v10)))
        {
          mustKeepSliceAliveAll_sync = DataServiceController::mustKeepSliceAliveAll_sync(v2, v8, v13, &v28, 0, 0, 1);
          if (mustKeepSliceAliveAll_sync & 0x100) != 0 && (mustKeepSliceAliveAll_sync)
          {
            v18 = *(v2 + 40);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              if (v31 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              *buf = 136315138;
              v35 = p_p;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I requestSliceDeactivation: cannot deactivate interface %s", buf, 0xCu);
            }
          }

          else
          {
            v20 = *(v2 + 40);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              if (v31 >= 0)
              {
                v21 = &__p;
              }

              else
              {
                v21 = __p;
              }

              *buf = 136315138;
              v35 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I requestSliceDeactivation: found interface %s", buf, 0xCu);
            }

            (*(*v32 + 96))(v32, "slice deactivation requested", "CommCenter");
          }

          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v16 = 6;
      }

      if (v33)
      {
        sub_100004A34(v33);
      }

      if (v16 != 6 && v16)
      {
        break;
      }

      if (++v8 == 36)
      {
        do
        {
          ++v5;
        }

        while (v5 != v4 && (v6(*v5) & 1) == 0);
        if (v5 != v25)
        {
          goto LABEL_10;
        }

        goto LABEL_53;
      }
    }
  }

  sub_1000EF424(&v27);
  return sub_1000049E0(&v26);
}

void sub_1004C7BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_1000EF424(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C7C0C()
{
  v1 = 52429500;
  sub_1004C1038(&qword_101FBA3C0, &v1, 2);
  return __cxa_atexit(sub_1004A15F0, &qword_101FBA3C0, &_mh_execute_header);
}

void *sub_1004C7C78(void *result, uint64_t a2)
{
  *result = off_101E50AA8;
  result[1] = a2;
  return result;
}

uint64_t sub_1004C7CD4(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  return (*(*a1 + 24))(a1, a2, v5, a3);
}

uint64_t sub_1004C7D14(void **a1, void *a2, const void *a3, void **a4)
{
  memset(&c, 0, sizeof(c));
  *md = 0;
  v37 = 0;
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, a2, a3);
  CC_MD5_Final(md, &c);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  sub_10000D518(&v16);
  buf[0] = 48;
  sub_1004C80C4(&v16, buf);
  v8 = 0;
  *(&v17[-1] + *(v16 - 24) + 8) = *(&v17[-1] + *(v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  do
  {
    *(v17 + *(v16 - 24) + 8) = 2;
    std::ostream::operator<<();
    ++v8;
  }

  while (v8 != 16);
  sub_10000D684(&v16, buf);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = *buf;
  a4[2] = *&buf[16];
  v9 = *a1[1];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = ((*a1)[5])(a1);
    ctu::hex(a2, a3, v12);
    if (v15 >= 0)
    {
      v13 = &v14;
    }

    else
    {
      v13 = v14;
    }

    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    *buf = 136315906;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    *&buf[22] = 2080;
    v33 = v13;
    v34 = 2080;
    v35 = a4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#D %s%scomputeDigest, data:0x%s -> %s", buf, 0x2Au);
    if (v15 < 0)
    {
      operator delete(v14);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_1004C8098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void *sub_1004C80C4(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t sub_1004C818C(void **a1, void *a2, const void *a3, void *a4, const void *a5, uint64_t a6)
{
  v12 = *a6;
  v14 = *(a6 + 8) - v12;
  if (v14 > 0xF)
  {
    if (v14 != 16)
    {
      *(a6 + 8) = v12 + 16;
    }
  }

  else
  {
    sub_10018D3CC(a6, 16 - v14);
    v12 = *a6;
  }

  CCHmac(1u, a2, a3, a4, a5, v12);
  v15 = *a1[1];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = ((*a1)[5])(a1);
    ctu::hex(a2, a3, v18);
    if (v28 >= 0)
    {
      v20 = &v27;
    }

    else
    {
      v20 = v27;
    }

    ctu::hex(a4, a5, v19);
    ctu::hex();
    v21 = &v25;
    if (v26 < 0)
    {
      v21 = v25;
    }

    if (v24 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136316162;
    v30 = v17;
    v31 = 2080;
    v32 = ", ";
    v33 = 2080;
    v34 = v20;
    v35 = 2080;
    v36 = v21;
    v37 = 2080;
    v38 = p_p;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#D %s%scomputeHmac, key:0x%s, data:0x%s -> %s", buf, 0x34u);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }
  }

  return 1;
}

void sub_1004C83A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004C83DC(void **a1, void *a2, const void *a3, void **a4)
{
  memset(&c, 0, sizeof(c));
  *md = 0u;
  v37 = 0u;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, a2, a3);
  CC_SHA256_Final(md, &c);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  sub_10000D518(&v16);
  buf[0] = 48;
  sub_1004C80C4(&v16, buf);
  v8 = 0;
  *(&v17[-1] + *(v16 - 24) + 8) = *(&v17[-1] + *(v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  do
  {
    *(v17 + *(v16 - 24) + 8) = 2;
    std::ostream::operator<<();
    ++v8;
  }

  while (v8 != 32);
  sub_10000D684(&v16, buf);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = *buf;
  a4[2] = *&buf[16];
  v9 = *a1[1];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = ((*a1)[5])(a1);
    ctu::hex(a2, a3, v12);
    if (v15 >= 0)
    {
      v13 = &v14;
    }

    else
    {
      v13 = v14;
    }

    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    *buf = 136315906;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    *&buf[22] = 2080;
    v33 = v13;
    v34 = 2080;
    v35 = a4;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#D %s%scomputeDigest, data:0x%s -> %s", buf, 0x2Au);
    if (v15 < 0)
    {
      operator delete(v14);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v17);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_1004C8764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C8790(void **a1, void *a2, const void *a3, void *a4, const void *a5, uint64_t a6)
{
  v12 = *a6;
  v14 = *(a6 + 8) - v12;
  if (v14 > 0x1F)
  {
    if (v14 != 32)
    {
      *(a6 + 8) = v12 + 32;
    }
  }

  else
  {
    sub_10018D3CC(a6, 32 - v14);
    v12 = *a6;
  }

  CCHmac(2u, a2, a3, a4, a5, v12);
  v15 = *a1[1];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = ((*a1)[5])(a1);
    ctu::hex(a2, a3, v18);
    if (v28 >= 0)
    {
      v20 = &v27;
    }

    else
    {
      v20 = v27;
    }

    ctu::hex(a4, a5, v19);
    ctu::hex();
    v21 = &v25;
    if (v26 < 0)
    {
      v21 = v25;
    }

    if (v24 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136316162;
    v30 = v17;
    v31 = 2080;
    v32 = ", ";
    v33 = 2080;
    v34 = v20;
    v35 = 2080;
    v36 = v21;
    v37 = 2080;
    v38 = p_p;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#D %s%scomputeHmac, key:0x%s, data:0x%s -> %s", buf, 0x34u);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }
  }

  return 1;
}

void sub_1004C89A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C89E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = a2;
  operator new();
}

void **sub_1004C8AA4(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *i)
  {
    v3 = i[5];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return sub_1001754E8(a1);
}

const void **sub_1004C8B18(void *a1, uint64_t *a2)
{
  result = sub_10031B8D0(a1, a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

const void **sub_1004C8BA4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000D3314(a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    sub_1004C8E28();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100022D3C(a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_1004C8E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1001758B4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004C8ECC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001758B4(v3, v2);
  _Unwind_Resume(a1);
}

void DataModel::DataModel(uint64_t a1, void *a2)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 128) = -1;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 182) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  CSIPacketAddress::CSIPacketAddress((a1 + 196));
  CSIPacketAddress::CSIPacketAddress((a1 + 220));
  CSIPacketAddress::CSIPacketAddress((a1 + 244));
  CSIPacketAddress::CSIPacketAddress((a1 + 268));
  CSIPacketAddress::CSIPacketAddress((a1 + 292));
  MCCAndMNC::MCCAndMNC((a1 + 320));
  *(a1 + 384) = 11;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  sub_1004CA38C();
}

void sub_1004C8FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 408);
  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_1002FECBC(v10 + 320);
  if (*(v10 + 183) < 0)
  {
    operator delete(*v11);
  }

  v14 = *(v10 + 144);
  if (v14)
  {
    sub_100004A34(v14);
  }

  a10 = (v10 + 104);
  sub_1001DFF90(&a10);
  sub_10001E200(&a10);
  a10 = (v10 + 56);
  sub_1000212F4(&a10);
  v15 = *(v10 + 48);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(v10 + 32);
  if (v16)
  {
    sub_100004A34(v16);
  }

  a10 = v10;
  sub_1000212F4(&a10);
  _Unwind_Resume(a1);
}

void DataModel::~DataModel(DataModel *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(this + 383) < 0)
  {
    operator delete(*(this + 45));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  v4 = *(this + 18);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v7 = (this + 104);
  sub_1001DFF90(&v7);
  v7 = (this + 80);
  sub_10001E200(&v7);
  v7 = (this + 56);
  sub_1000212F4(&v7);
  v5 = *(this + 6);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = this;
  sub_1000212F4(&v7);
}

std::string *DataModel::update(std::string *result, const std::string **a2)
{
  v2 = *a2;
  if (*a2)
  {
    size = result[17].__r_.__value_.__l.__size_;
    std::string::operator=(size, *a2);
    std::string::operator=((size + 24), v2 + 1);
    v4 = *(&v2[2].__r_.__value_.__r.__words[1] + 7);
    *(size + 48) = *&v2[2].__r_.__value_.__l.__data_;
    *(size + 63) = v4;
    result = std::string::operator=((size + 72), v2 + 3);
    *(size + 96) = v2[4].__r_.__value_.__s.__data_[0];
  }

  return result;
}

void DataServiceModels::~DataServiceModels(DataServiceModels *this)
{
  *this = off_101E50BF0;
  v1 = (this + 8);
  sub_1004C9638(&v1);
}

{
  *this = off_101E50BF0;
  v1 = (this + 8);
  sub_1004C9638(&v1);
  operator delete();
}

void *DataServiceModels::DataServiceModels(void *a1)
{
  a1[1] = 0;
  v2 = (a1 + 1);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101E50BA8;
  DataServiceModels::makeInitialDataModelsContainer(&v4);
  sub_1004C95D8(v2);
  *(a1 + 1) = v4;
  a1[3] = v5;
  v5 = 0;
  v4 = 0uLL;
  v6 = &v4;
  sub_1004C9638(&v6);
  return a1;
}

void sub_1004C92EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v9 = off_101E50BF0;
  sub_1004C9638(&a9);
  _Unwind_Resume(a1);
}

void DataServiceModels::makeInitialDataModelsContainer(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  subscriber::makeSimSlotRange();
  v2 = v3;
  if (v3 != v4)
  {
    do
    {
      if (v5(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v4);
    if (v2 != v4)
    {
      operator new();
    }
  }
}

void sub_1004C94B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1004C9638(va);
  _Unwind_Resume(a1);
}

void *sub_1004C9514(void *a1)
{
  *a1 = off_101E50BF0;
  v3 = (a1 + 1);
  sub_1004C9638(&v3);
  return a1;
}

void sub_1004C956C(void *a1)
{
  *a1 = off_101E50BF0;
  v1 = (a1 + 1);
  sub_1004C9638(&v1);
  operator delete();
}

void sub_1004C95D8(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        DataModel::~DataModel((v3 - 432));
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

void sub_1004C9638(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        DataModel::~DataModel((v4 - 432));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1004C96BC(unint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x97B425ED097B42)
  {
    sub_1000CE3D4();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v6 = 0x97B425ED097B42;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1004CA23C(a1, v6);
  }

  v13 = 0;
  v14 = 432 * v2;
  sub_1004C9804(432 * v2, a2);
  v15 = 432 * v2 + 432;
  v7 = a1[1];
  v8 = 432 * v2 + *a1 - v7;
  sub_1004CA298(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1004CA33C(&v13);
  return v12;
}

void sub_1004C97F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1004CA33C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004C9804(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1004C9ACC(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1004C9C14((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_1004C9D5C((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 5);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1004C9FB4((a1 + 104), *(a2 + 104), *(a2 + 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v6 = *(a2 + 144);
  *(a1 + 144) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 152) = *(a2 + 152);
  if (*(a2 + 183) < 0)
  {
    sub_100005F2C((a1 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v7 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = v7;
  }

  v8 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v8;
  CSIPacketAddress::CSIPacketAddress((a1 + 196), (a2 + 196));
  CSIPacketAddress::CSIPacketAddress((a1 + 220), (a2 + 220));
  CSIPacketAddress::CSIPacketAddress((a1 + 244), (a2 + 244));
  CSIPacketAddress::CSIPacketAddress((a1 + 268), (a2 + 268));
  CSIPacketAddress::CSIPacketAddress((a1 + 292), (a2 + 292));
  MCC::MCC((a1 + 320), (a2 + 320));
  MCC::MCC((a1 + 352), (a2 + 352));
  v9 = *(a2 + 384);
  *(a1 + 388) = *(a2 + 388);
  *(a1 + 384) = v9;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  v10 = *(a2 + 408);
  *(a1 + 408) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 416) = *(a2 + 416);
  v11 = *(a2 + 424);
  *(a1 + 424) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1004C9A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 144);
  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_1001DFF90(&a10);
  sub_10001E200(&a10);
  sub_1000212F4(&a10);
  v13 = *(v10 + 48);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(v10 + 32);
  if (v14)
  {
    sub_100004A34(v14);
  }

  a10 = v10;
  sub_1000212F4(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004C9ACC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_1004C9B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1004C9B54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_1004C9BDC(v7);
  return v4;
}

uint64_t sub_1004C9BDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t *sub_1004C9C14(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_1004C9C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_1004C9C9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_1004C9D24(v7);
  return v4;
}

uint64_t sub_1004C9D24(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t *sub_1004C9D5C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004C9DE4(result, a4);
  }

  return result;
}

void sub_1004C9DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10001E200(&a9);
  _Unwind_Resume(a1);
}

void sub_1004C9DE4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1004C9E20(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1004C9E20(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1004C9E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 8);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  LOBYTE(v12) = 1;
  sub_1004C9F34(v11);
  return v4;
}

uint64_t sub_1004C9F34(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004C9F6C(a1);
  }

  return a1;
}

void sub_1004C9F6C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t *sub_1004C9FB4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA03C(result, a4);
  }

  return result;
}

void sub_1004CA01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001DFF90(&a9);
  _Unwind_Resume(a1);
}

void sub_1004CA03C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1001DFEA0(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t *sub_1004CA088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_1004CA138(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1004CA1B4(v8);
  return v4;
}

uint64_t *sub_1004CA138(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_1004CA198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CA1B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA1EC(a1);
  }

  return a1;
}

void sub_1004CA1EC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_1004CA23C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x97B425ED097B43)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1004CA298(uint64_t a1, DataModel *a2, DataModel *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      sub_1004C9804(a4, v8);
      v8 = (v8 + 432);
      a4 += 432;
      v7 -= 432;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      DataModel::~DataModel(v6);
      v6 = (v6 + 432);
    }
  }
}

void sub_1004CA318(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 432);
    do
    {
      DataModel::~DataModel(v4);
      v4 = (v5 - 432);
      v2 += 432;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004CA33C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 432;
    DataModel::~DataModel((i - 432));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_1004CA3F8(char *a1, __int128 *a2)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = off_101E40F08;
  sub_1013B70C4(a1 + 24, a2);
  return a1;
}

const __CFDictionary *HTTPRedirectMonitorMode::create@<X0>(const __CFDictionary **a5@<X4>, void *a6@<X8>)
{
  result = *a5;
  if (*a5)
  {
    Value = CFDictionaryGetValue(result, @"RATOverrides");
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFArrayGetTypeID()))
    {
      v44 = 0;
      v45 = 0;
      v42 = 0;
      v43 = &v44;
      v40 = &v41;
      v41 = 0;
      v39 = sub_10029EB94(v8, @"technology-mask");
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
          v13 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v14 = CFGetTypeID(ValueAtIndex);
            if (v14 != CFDictionaryGetTypeID())
            {
              v13 = 0;
            }
          }

          v15 = CFDictionaryGetValue(v13, @"technology-mask");
          v16 = v15;
          if (v15)
          {
            v17 = CFGetTypeID(v15);
            if (v17 == CFNumberGetTypeID())
            {
              valuePtr = 0;
              if (CFNumberGetValue(v16, kCFNumberIntType, &valuePtr))
              {
                v49 = 0;
                v50 = 0;
                v51 = 0;
                sub_1002A516C(valuePtr, v39, &v49);
                v18 = v49;
                if (v49 != v50)
                {
                  v19 = CFDictionaryGetValue(v13, @"configuration");
                  v20 = v19;
                  if (v19)
                  {
                    v21 = CFGetTypeID(v19);
                    if (v21 == CFDictionaryGetTypeID())
                    {
                      v22 = CFDictionaryGetValue(v20, @"PcoOutOfData");
                      v23 = v22;
                      if (v22)
                      {
                        v24 = CFGetTypeID(v22);
                        if (v24 == CFDictionaryGetTypeID())
                        {
                          v25 = CFDictionaryGetValue(v23, @"ContainerId");
                          v26 = v25;
                          LODWORD(__p[0]) = -1;
                          if (v25)
                          {
                            v27 = CFGetTypeID(v25);
                            if (v27 == CFNumberGetTypeID())
                            {
                              ctu::cf::assign(__p, v26, v28);
                            }

                            v38 = __p[0];
                            if ((__p[0] & 0x80000000) == 0)
                            {
                              v29 = CFDictionaryGetValue(v23, @"ExpiredValues");
                              v30 = v29;
                              if (v29)
                              {
                                v31 = CFGetTypeID(v29);
                                if (v31 == CFArrayGetTypeID())
                                {
                                  __p[0] = 0;
                                  __p[1] = 0;
                                  v47 = 0;
                                  context = __p;
                                  v54.length = CFArrayGetCount(v30);
                                  v54.location = 0;
                                  CFArrayApplyFunction(v30, v54, sub_100359A28, &context);
                                  v37 = __p[0];
                                  if (__p[0] != __p[1])
                                  {
                                    v32 = v49;
                                    v33 = v50;
                                    if (v49 != v50)
                                    {
                                      v34 = __p[1];
                                      v36 = (__p[1] - __p[0]) >> 2;
                                      do
                                      {
                                        LODWORD(__p[0]) = v38;
                                        v47 = 0;
                                        v48 = 0;
                                        __p[1] = 0;
                                        sub_10024064C(&__p[1], v37, v34, v36);
                                        sub_1004CC3EC(&v40, v32, v32, __p);
                                        if (__p[1])
                                        {
                                          v47 = __p[1];
                                          operator delete(__p[1]);
                                        }

                                        ++v32;
                                      }

                                      while (v32 != v33);
                                    }
                                  }

                                  if (v37)
                                  {
                                    operator delete(v37);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v18 = v49;
                }

                if (v18)
                {
                  v50 = v18;
                  operator delete(v18);
                }
              }
            }
          }
        }
      }

      sub_1004CC540(&v43, v44);
      v35 = v41;
      v43 = v40;
      v44 = v41;
      v45 = v42;
      if (v42)
      {
        v41[2] = &v44;
        v40 = &v41;
        v41 = 0;
        v42 = 0;
        v35 = 0;
      }

      else
      {
        v43 = &v44;
      }

      sub_1004CC540(&v40, v35);
    }

    else
    {
      v44 = 0;
      v45 = 0;
      v43 = &v44;
    }

    sub_1004CC5A4();
  }

  *a6 = 0;
  a6[1] = 0;
  return result;
}

void sub_1004CA858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *__p, void *a28, uint64_t a29)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  v31 = *(v29 - 128);
  if (v31)
  {
    *(v29 - 120) = v31;
    operator delete(v31);
  }

  sub_1004CC540(&a21, a22);
  sub_1004CC540(&a24, a25);
  _Unwind_Resume(a1);
}

void HTTPRedirectMonitorMode::init(HTTPRedirectMonitorMode *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

uint64_t HTTPRedirectMonitorMode::HTTPRedirectMonitorMode(uint64_t a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, CFDictionaryRef *a6, uint64_t a7)
{
  v14 = *a2;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = a4[1];
  v40 = *a4;
  v41 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v39 = *(a5 + 16);
  }

  sub_10031435C(a1, &object, a3, &v40, "mm.redirect", __p);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E50C10;
  sub_10000501C(&v36, "mm.redirect");
  v16 = *a2;
  v35 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v34 = 0;
  ctu::RestModule::RestModule();
  if (v35)
  {
    dispatch_release(v35);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  CFDictionaryGetValue(*a6, @"DataPlanProbeUrl");
  sub_10000501C(&v32, "http://www.apple.com/library/test/success.html");
  ctu::cf::assign();
  *(a1 + 256) = v32;
  *(a1 + 272) = v33;
  v33 = 0;
  v32 = 0uLL;
  Value = CFDictionaryGetValue(*a6, @"DataPlanProbeTimeout");
  v18 = Value;
  *&v44 = 0x4014000000000000;
  if (Value)
  {
    v19 = CFGetTypeID(Value);
    if (v19 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v44, v18, v20);
    }
  }

  *(a1 + 280) = v44;
  v21 = CFDictionaryGetValue(*a6, @"KeepPDPUpOnProbeError");
  v22 = v21;
  LOBYTE(v44) = 0;
  if (v21 && (v23 = CFGetTypeID(v21), v23 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v44, v22, v24);
    v25 = v44;
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 288) = v25;
  v26 = CFDictionaryGetValue(*a6, @"CellularDataPlanNotSubscribedErrors");
  v27 = v26;
  v31 = 0u;
  if (v26 && (v28 = CFGetTypeID(v26), v28 == CFArrayGetTypeID()))
  {
    v44 = 0uLL;
    v45 = 0;
    context = &v44;
    v46.length = CFArrayGetCount(v27);
    v46.location = 0;
    CFArrayApplyFunction(v27, v46, sub_100359A28, &context);
    v31 = v44;
    v29 = v45;
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 296) = v31;
  *(a1 + 312) = v29;
  sub_1004CC8D8((a1 + 320), a7);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  return a1;
}

void sub_1004CAD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17, dispatch_object_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, dispatch_object_t object)
{
  if (a33)
  {
    sub_100004A34(a33);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void HTTPRedirectMonitorMode::~HTTPRedirectMonitorMode(HTTPRedirectMonitorMode *this)
{
  *this = off_101E50C10;
  v2 = (this + 160);
  sub_10035899C(this + 176, this + 160);
  sub_1004CAF44(this + 208, v2);
  sub_100358A0C(this + 184, v2);
  sub_100358AEC(this + 232, v2);
  ctu::RestModule::disconnect(v2);
  v3 = *(this + 44);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1004CC540(this + 320, *(this + 41));
  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  sub_100359978(this + 232, *(this + 30));
  sub_10006DCAC(this + 208, *(this + 27));
  sub_100077CD4(this + 184, *(this + 24));
  v5 = *(this + 21);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10031452C(this);
}

{
  HTTPRedirectMonitorMode::~HTTPRedirectMonitorMode(this);

  operator delete();
}

void sub_1004CAF44(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/reg_data_modes");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004CAF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HTTPRedirectMonitorMode::runMonitorModeAction_sync(HTTPRedirectMonitorMode *this)
{
  isActionAllowed_sync = HTTPRedirectMonitorMode::isActionAllowed_sync(this);
  if ((isActionAllowed_sync & 0x100) != 0)
  {
    if (isActionAllowed_sync != 3)
    {
      goto LABEL_27;
    }

    ServiceMap = Registry::getServiceMap(*(this + 6));
    v5 = ServiceMap;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    v38 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v38);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        if (!v12)
        {
LABEL_25:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

LABEL_27:
          v26 = *(this + 44);
          *(this + 43) = 0;
          *(this + 44) = 0;
          if (!v26)
          {
            return;
          }

LABEL_53:
          sub_100004A34(v26);
          return;
        }

LABEL_23:
        v25 = (*(*v12 + 808))(v12);
        sub_10000501C(v43, "HTTP Redirect Start");
        (*(*v12 + 88))(v12, v25, 1, 1, v43, 1, 0);
        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!*(this + 43))
  {
    v14 = Registry::getServiceMap(*(this + 6));
    v15 = v14;
    if ((v16 & 0x8000000000000000) != 0)
    {
      v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
      v18 = 5381;
      do
      {
        v16 = v18;
        v19 = *v17++;
        v18 = (33 * v18) ^ v19;
      }

      while (v19);
    }

    std::mutex::lock(v14);
    v38 = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, &v38);
    if (v20)
    {
      v22 = v20[3];
      v21 = v20[4];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v15);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v21);
        v23 = 0;
        if (!v22)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    if (!v22)
    {
LABEL_19:
      v24 = *(this + 5);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_101772730(v24);
      }

LABEL_51:
      if (v23)
      {
        return;
      }

      v26 = v21;
      goto LABEL_53;
    }

LABEL_31:
    if (*(this + 279) < 0)
    {
      sub_100005F2C(__p, *(this + 32), *(this + 33));
    }

    else
    {
      *__p = *(this + 16);
      v41 = *(this + 34);
    }

    v39[0] = 0;
    v39[1] = 0;
    v38 = v39;
    (*(*v22 + 16))(&v42, v22, 0, __p, &v38);
    v27 = (this + 344);
    v28 = v42;
    v42 = 0uLL;
    v29 = *(this + 44);
    *(this + 344) = v28;
    if (v29)
    {
      sub_100004A34(v29);
      if (*(&v42 + 1))
      {
        sub_100004A34(*(&v42 + 1));
      }
    }

    sub_1000DD0AC(&v38, v39[0]);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 37) != *(this + 38))
    {
      (*(**v27 + 104))(*v27, 0);
    }

    (*(**(this + 43) + 96))(*(this + 43), *(this + 35));
    (*(**v27 + 176))(*v27, 1);
    (*(**v27 + 152))(*v27, kCTDataConnectionServiceTypeInternet);
    sub_100004AA0(&v38, this + 1);
    v31 = v38;
    v30 = v39[0];
    if (v39[0])
    {
      atomic_fetch_add_explicit(v39[0] + 2, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
    }

    (*(**(this + 43) + 8))(*(this + 43), *(this + 3));
    v32 = *(this + 43);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 1174405120;
    v36[2] = sub_1004CB744;
    v36[3] = &unk_101E50C80;
    v36[4] = this;
    v36[5] = v31;
    v37 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v32 + 16))(v32, v36);
    v33 = *v27;
    v34[1] = 0;
    v35 = 0;
    v34[0] = 0;
    (*(*v33 + 40))(v33, v34);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_weak(v37);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    goto LABEL_51;
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1017726EC(v3);
  }
}

void sub_1004CB534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HTTPRedirectMonitorMode::isActionAllowed_sync(HTTPRedirectMonitorMode *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(this + 44);
    v3 = (this + 192);
    do
    {
      if (v1[8] >= v2)
      {
        v3 = v1;
      }

      v1 = *&v1[2 * (v1[8] < v2)];
    }

    while (v1);
    if (v3 == (this + 192) || (v4 = v3[8], v2 < v4))
    {
      v5 = 0;
LABEL_31:
      v6 = 1;
      return v5 | (v6 << 8);
    }

    v7 = *(this + 30);
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = this + 240;
    do
    {
      if (*(v7 + 8) >= v4)
      {
        v8 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < v4)];
    }

    while (v7);
    if (v8 == this + 240 || v4 < *(v8 + 8))
    {
      goto LABEL_30;
    }

    v9 = v8[135];
    if (v9 >= 0)
    {
      v10 = v8[135];
    }

    else
    {
      v10 = *(v8 + 15);
    }

    v11 = *(this + 87);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(this + 9);
    }

    if (v10 != v11 || (v9 >= 0 ? (v13 = v8 + 112) : (v13 = *(v8 + 14)), (v16 = *(this + 8), v14 = this + 64, v15 = v16, v12 >= 0) ? (v17 = v14) : (v17 = v15), memcmp(v13, v17, v10)))
    {
LABEL_30:
      v5 = 1;
      goto LABEL_31;
    }

    if (*(v8 + 12) == 5)
    {
      v19 = v3[16];
      v20 = v19 > 3;
      LOBYTE(v19) = 8 * v19;
      v21 = 0x3000403u >> v19;
      v6 = 0x1000101u >> v19;
      if (v20)
      {
        v5 = 0;
      }

      else
      {
        v5 = v21;
      }

      if (v20)
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 1;
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  return v5 | (v6 << 8);
}

void sub_1004CB744(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_36:
        sub_100004A34(v7);
        return;
      }

      v8 = *(v5 + 352);
      *(v5 + 344) = 0;
      *(v5 + 352) = 0;
      if (v8)
      {
        sub_100004A34(v8);
      }

      if ((*(**a2 + 16))() == 1)
      {
        if ((*(**a2 + 24))() == 200)
        {
          v9 = 1;
        }

        else
        {
          v11 = *(v5 + 296);
          v12 = *(v5 + 304);
          if (v11 != v12)
          {
            v13 = (*(**a2 + 24))();
            while (*v11 != v13)
            {
              if (++v11 == v12)
              {
                v9 = 0;
                v10 = 0;
                goto LABEL_19;
              }
            }

            v14 = *(v5 + 40);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = (*(**a2 + 24))();
              *buf = 67109120;
              *&buf[4] = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Matched expiry failure code: %d", buf, 8u);
            }
          }

          v9 = 0;
        }

        v10 = 1;
      }

      else
      {
        v9 = 0;
        v10 = *(v5 + 296) == *(v5 + 304);
      }

LABEL_19:
      if (*(v5 + 288) & 1) != 0 || v10 && (v9)
      {
LABEL_35:
        sub_100314A14(v5, v9 | (v10 << 8));
        goto LABEL_36;
      }

      ServiceMap = Registry::getServiceMap(*(v5 + 48));
      v17 = ServiceMap;
      if (v18 < 0)
      {
        v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
        v20 = 5381;
        do
        {
          v18 = v20;
          v21 = *v19++;
          v20 = (33 * v20) ^ v21;
        }

        while (v21);
      }

      std::mutex::lock(ServiceMap);
      *buf = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, buf);
      if (v22)
      {
        v24 = v22[3];
        v23 = v22[4];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v17);
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v23);
          v25 = 0;
          if (!v24)
          {
LABEL_33:
            if ((v25 & 1) == 0)
            {
              sub_100004A34(v23);
            }

            goto LABEL_35;
          }

LABEL_31:
          v26 = (*(*v24 + 808))(v24);
          sub_10000501C(__p, "HTTP Redirect Failure");
          (*(*v24 + 88))(v24, v26, 1, 0, __p, 1, 0);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v24 = 0;
      }

      std::mutex::unlock(v17);
      v23 = 0;
      v25 = 1;
      if (!v24)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }
}

uint64_t sub_1004CBAFC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004CBB18(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void HTTPRedirectMonitorMode::handleInternetConnectionStateUpdated_sync(HTTPRedirectMonitorMode *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v3 = *(this + 44);
    v4 = (this + 192);
    do
    {
      if (v1[8] >= v3)
      {
        v4 = v1;
      }

      v1 = *&v1[2 * (v1[8] < v3)];
    }

    while (v1);
    if (v4 != (this + 192))
    {
      v5 = v4[8];
      if (v3 >= v5)
      {
        v6 = *(this + 30);
        if (v6)
        {
          v7 = this + 240;
          do
          {
            if (*(v6 + 8) >= v5)
            {
              v7 = v6;
            }

            v6 = *&v6[8 * (*(v6 + 8) < v5)];
          }

          while (v6);
          if (v7 != this + 240 && v5 >= *(v7 + 8))
          {
            v8 = v7[135];
            if (v8 >= 0)
            {
              v9 = v7[135];
            }

            else
            {
              v9 = *(v7 + 15);
            }

            v10 = *(this + 87);
            v11 = v10;
            if ((v10 & 0x80u) != 0)
            {
              v10 = *(this + 9);
            }

            if (v9 == v10)
            {
              v14 = *(v7 + 14);
              v12 = v7 + 112;
              v13 = v14;
              v15 = v8 >= 0 ? v12 : v13;
              v16 = v11 >= 0 ? (this + 64) : *(this + 8);
              if (!memcmp(v15, v16, v9))
              {
                v17 = v4[16];
                if (v17)
                {
                  if (v17 == 2)
                  {
                    if (!*(this + 90))
                    {
                      HTTPRedirectMonitorMode::runMonitorModeAction_sync(this);
                    }

                    *(this + 90) = 2;
                  }
                }

                else
                {
                  *(this + 90) = 0;
                }
              }
            }
          }
        }
      }
    }
  }
}

void HTTPRedirectMonitorMode::handlePcoInfoUpdated_sync(HTTPRedirectMonitorMode *a1, int *a2)
{
  if (*(a1 + 42))
  {
    if (sub_10030D8C4(*(a2 + 1)))
    {
      isActionAllowed_sync = HTTPRedirectMonitorMode::isActionAllowed_sync(a1);
      if ((isActionAllowed_sync & 0x100) == 0 || isActionAllowed_sync != 1)
      {
        v5 = *(a2 + 3);
        if (v5 != *(a2 + 4))
        {
          v6 = *(a1 + 27);
          if (v6)
          {
            v7 = *a2;
            v8 = (a1 + 216);
            do
            {
              if (v6[7] >= v7)
              {
                v8 = v6;
              }

              v6 = *&v6[2 * (v6[7] < v7)];
            }

            while (v6);
            if (v8 != (a1 + 216) && v7 >= v8[7])
            {
              v9 = *(a1 + 41);
              if (v9)
              {
                v10 = v8[8];
                v11 = a1 + 328;
                do
                {
                  if (*(v9 + 8) >= v10)
                  {
                    v11 = v9;
                  }

                  v9 = *&v9[8 * (*(v9 + 8) < v10)];
                }

                while (v9);
                if (v11 != a1 + 328 && v10 >= *(v11 + 8) && a2[4] == *(v11 + 10))
                {
                  v13 = *(v11 + 6);
                  v12 = *(v11 + 7);
                  if (v13 != v12)
                  {
                    v14 = *v5;
                    while (*v13 != v14)
                    {
                      if (++v13 == v12)
                      {
                        return;
                      }
                    }

                    v15 = *(a1 + 5);
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      v16[0] = 67109120;
                      v16[1] = v14;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Matched PCO expiry: 0x%02x", v16, 8u);
                    }

                    HTTPRedirectMonitorMode::runMonitorModeAction_sync(a1);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void HTTPRedirectMonitorMode::dumpState_sync(HTTPRedirectMonitorMode *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (this + 256);
    if (*(this + 279) < 0)
    {
      v4 = *v4;
    }

    v5 = *(this + 35);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v5;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v36 = printers::asString((this + 288), v3);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I URL %s - Timeout: %f, Keep PDP up: %s", &buf, 0x20u);
  }

  v7 = *(this + 37);
  v6 = *(this + 38);
  if (v7 != v6)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v32 = ",";
      v33 = 1;
      memset(&v34, 0, sizeof(v34));
      std::to_string(&buf, *v7);
      v34 = buf;
      for (i = v7 + 1; i != v6; ++i)
      {
        sub_100074CFC(&v32, &buf);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        std::string::append(&v34, p_buf, size);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        std::to_string(&buf, *i);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &buf;
        }

        else
        {
          v12 = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v13 = buf.__r_.__value_.__l.__size_;
        }

        std::string::append(&v34, v12, v13);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      v14 = &v34;
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v34.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Expiry HTTP Responses: %{public}s", &buf, 0xCu);
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }
  }

  if (*(this + 42))
  {
    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I PCO Expiry Config:", &buf, 2u);
    }

    v16 = *(this + 40);
    if (v16 != (this + 328))
    {
      do
      {
        v17 = *(this + 5);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I {", &buf, 2u);
          v17 = *(this + 5);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = asString();
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I  Data Mode: %s", &buf, 0xCu);
          v17 = *(this + 5);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          std::to_string(&buf, *(v16 + 10));
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &buf;
          }

          else
          {
            v19 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v34.__r_.__value_.__l.__data_) = 136315138;
          *(v34.__r_.__value_.__r.__words + 4) = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I  Technology: %s", &v34, 0xCu);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v17 = *(this + 5);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v16 + 6);
          v20 = *(v16 + 7);
          v32 = ",";
          v33 = 1;
          memset(&v34, 0, sizeof(v34));
          if (v21 != v20)
          {
            std::to_string(&buf, *v21);
            v34 = buf;
            while (++v21 != v20)
            {
              sub_100074CFC(&v32, &buf);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v22 = &buf;
              }

              else
              {
                v22 = buf.__r_.__value_.__r.__words[0];
              }

              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v23 = buf.__r_.__value_.__l.__size_;
              }

              std::string::append(&v34, v22, v23);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              std::to_string(&buf, *v21);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v24 = &buf;
              }

              else
              {
                v24 = buf.__r_.__value_.__r.__words[0];
              }

              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v25 = buf.__r_.__value_.__l.__size_;
              }

              std::string::append(&v34, v24, v25);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }
          }

          v26 = &v34;
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v26 = v34.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v26;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I  Failure Codes: %{public}s", &buf, 0xCu);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          v17 = *(this + 5);
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I }", &buf, 2u);
        }

        v27 = *(v16 + 1);
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = *(v16 + 2);
            v29 = *v28 == v16;
            v16 = v28;
          }

          while (!v29);
        }

        v16 = v28;
      }

      while (v28 != (this + 328));
    }
  }

  v30 = *(this + 5);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asString();
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Connection State: %s", &buf, 0xCu);
  }

  sub_100314754(this);
}

void sub_1004CC38C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004CC3EC(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4)
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

void sub_1004CC4DC(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      __p[7] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1004CC540(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1004CC540(a1, *a2);
    sub_1004CC540(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *sub_1004CC660(void *a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, const void **a6, uint64_t a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E50D08;
  sub_1004CC758(a1 + 3, a2, a3, a4, a5, a6, a7);
  return a1;
}

void sub_1004CC6DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E50D08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1004CC758(void *a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5, const void **a6, uint64_t a7)
{
  v13 = *a2;
  v20 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *a4;
  v15 = a4[1];
  v19[0] = v14;
  v19[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v18, a6);
  sub_1004CC8D8(v17, a7);
  HTTPRedirectMonitorMode::HTTPRedirectMonitorMode(a1, &v20, a3, v19, a5, &v18, v17);
  sub_1004CC540(v17, v17[1]);
  sub_10001021C(&v18);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  *a1 = &off_101E50D58;
  return a1;
}

void sub_1004CC85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  sub_1004CC540(va, v8);
  sub_10001021C(va1);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1004CC8A0(HTTPRedirectMonitorMode *a1)
{
  HTTPRedirectMonitorMode::~HTTPRedirectMonitorMode(a1);

  operator delete();
}

void *sub_1004CC8D8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004CC930(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1004CC930(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1004CC9B8(v5, (v5 + 8), v4 + 8, (v4 + 8));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_1004CC9B8(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1004CCA48();
  }

  return result;
}

void sub_1004CCADC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004CC4DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1004CCAF8(uint64_t **a1)
{
  v1 = **a1;
  Registry::createRestModuleOneTimeUseConnection(&v3, *(v1 + 48));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100118C58(v1 + 176, v1 + 160);
  v2[0] = HTTPRedirectMonitorMode::handleInternetConnectionStateUpdated_sync;
  v2[1] = 0;
  sub_1004CCD68(v1 + 184, v1 + 160, v1, v2);
}

void sub_1004CCC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_1004CCC88(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/reg_data_modes");
  v5[0] = off_101E50EF0;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004CCD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004CCE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004CCF04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E50DF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1004CCF44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004CCF90(uint64_t *a1, xpc_object_t *a2)
{
  sub_10035A2E4(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}