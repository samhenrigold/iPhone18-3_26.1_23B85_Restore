void sub_1001A565C(double *a1, double a2, double a3, double a4, double a5)
{
  if (a5 >= 0.0)
  {
    v5 = a5;
  }

  else
  {
    v5 = 0.0;
  }

  if (a1[8] > v5)
  {
    v7 = a1[2];
    if (v7 < a2)
    {
      a2 = a1[2];
    }

    if (a2 >= a1[3])
    {
      v8 = a2;
    }

    else
    {
      v8 = a1[3];
    }

    v9 = *a1;
    if (*a1 > a4)
    {
      a4 = *a1;
    }

    if (a1[1] <= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = a1[1];
    }

    exp(-(a4 - v9) / a1[4]);
    exp(-(v10 - v9) / a1[5]);
    v11 = -(v7 - v8);
    v12 = a1[6];
    v13 = a1[9];
    v14 = v11 / v12;
    if (v13 <= v5)
    {
      exp(-(v5 - v13) / a1[7]);
      exp(v14);
    }

    else
    {
      exp(v11 / v12);
    }
  }
}

BOOL sub_1001A576C(double **a1, int a2, double d0_0, double a3)
{
  if (a2)
  {
    return sub_100A32690(a1, d0_0, a3);
  }

  else
  {
    return sub_1001A9098(a1, d0_0, a3);
  }
}

void sub_1001A5780(uint64_t a1, double *a2, double *a3, double *a4, uint64_t a5, __n128 a6, double *a7, double *a8)
{
  v15 = sub_1001A4254(a3, a4, a6);
  if (v15)
  {
    if (*(a1 + 120) == 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B40DE8();
      }

      v16 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, already initialized", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B40DFC();
      }
    }

    else if (sub_10024C148(v15, a2, a5, a4, a7, a8))
    {
      sub_1001A9800(buf, (a5 + 8));
      v17 = *(*(*&v39[4] + (((*(&v42 + 1) + v42 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (BYTE8(v42) + v42 - 1));
      sub_100102BC8(buf);
      sub_1001A9800(buf, (a5 + 8));
      v18 = *(*(*&v39[4] + (((*(&v42 + 1) + v42 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (BYTE8(v42) + v42 - 1) + 8);
      sub_100102BC8(buf);
      if (*a2 >= 0.0)
      {
        if (v18 >= 0.0)
        {
          *(a1 + 64) = *a2;
          *(a1 + 72) = *a2;
          *(a1 + 80) = v18;
          *a1 = *a3;
          v22 = *(sub_1000F7F38() + 7) * *a4;
          *(a1 + 8) = v22 * v22;
          *(a1 + 112) = v17;
          *(a1 + 120) = 1;
          if (qword_1025D4620 != -1)
          {
            sub_101B40BC4();
          }

          v23 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            v24 = *a2;
            v25 = *a3;
            *buf = 134284289;
            *v39 = v24;
            *&v39[8] = 2049;
            *&v39[10] = v18;
            v40 = 2049;
            v41 = v25;
            LOWORD(v42) = 2050;
            *(&v42 + 2) = v22;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, initialized, wifi timestamp, %{private}0.3f, relative altitude timestamp, %{private}0.3f, initial altitude, %{private}0.3f, initial uncertainty, %{public}0.3f.", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_101B40BC4();
            }

            v26 = *a2;
            v27 = *a3;
            v30 = 134284289;
            v31 = v26;
            v32 = 2049;
            v33 = v18;
            v34 = 2049;
            v35 = v27;
            v36 = 2050;
            v37 = v22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, zaxis, kalmanFilter, initialized, wifi timestamp, %{private}0.3f, relative altitude timestamp, %{private}0.3f, initial altitude, %{private}0.3f, initial uncertainty, %{public}0.3f.", &v30, 42);
            v29 = v28;
            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAltitudeKalmanFilter::initializeKalmanFilter(const CFAbsoluteTime &, const double &, const double &, const CL::Wifi1::Types::ElevationHistory *, const double &, const double &)", "%s\n", v28);
            if (v29 != buf)
            {
              free(v29);
            }
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101B40BC4();
          }

          v21 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134283521;
            *v39 = v18;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not initialize, relative altitude timestamp %{private}0.3f was negative.", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B40BEC(v18);
          }
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B40BC4();
        }

        v19 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v20 = *a2;
          *buf = 134283521;
          *v39 = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, kalmanFilter, did not initialize, wifi measurement timestamp %{private}0.3f was negative.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B40CFC();
        }
      }
    }
  }
}

void **sub_1001A5C00(void **a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024A9BC0;
  sub_1001A9C18(a1 + 3, a2);
  return a1;
}

void *sub_1001A5C5C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = 0;
  if (result[1] != *result)
  {
    v3 = result;
    do
    {
      result = sub_100D24284(a2, &v4, &v4);
      ++v4;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 5));
  }

  return result;
}

uint64_t sub_1001A5D00(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001A5EAC(a1 + 16, a3);
  *(a1 + 40) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = sub_1001A5F04(a1, (a1 + 16));
  return a1;
}

void sub_1001A5D60(_Unwind_Exception *a1)
{
  sub_1003C93BC(v1 + 16, *(v1 + 24));
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(a1);
}

void *sub_1001A5D8C(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v4 = *sub_100D24350(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t **sub_1001A5E24(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1001A5D8C(v5, v5 + 1, v4 + 4, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t sub_1001A5EAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  sub_1001A5E24(a1, *a2, (a2 + 8));
  return a1;
}

double sub_1001A5F04(uint64_t **a1, void *a2)
{
  v4 = a2[2];
  if (!v4)
  {
    return 0.0;
  }

  if (v4 == 1)
  {
    return 1.0;
  }

  v28 = v2;
  v29 = v3;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 == a2 + 1)
  {
    v10 = 0;
    v23 = (v4 - 1) * v4;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = v8[1];
      v12 = v11;
      v13 = v8;
      if (v11)
      {
        do
        {
          v14 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v14 = v13[2];
          v15 = *v14 == v13;
          v13 = v14;
        }

        while (!v15);
      }

      if (v14 != v7)
      {
        do
        {
          v16 = **a1;
          v17 = v16 + 96 * v8[4];
          v18 = v16 + 96 * v14[4];
          sub_10018D404(v27);
          sub_1002AB240(*(v17 + 8), *(v17 + 16), *(v18 + 8), *(v18 + 16));
          if (v19 <= (*(v18 + 48) + *(v17 + 48)))
          {
            ++v10;
          }

          v20 = v14[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v14[2];
              v15 = *v21 == v14;
              v14 = v21;
            }

            while (!v15);
          }

          v14 = v21;
        }

        while (v21 != v7);
        v11 = v8[1];
      }

      if (v11)
      {
        do
        {
          v22 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v22 = v8[2];
          v15 = *v22 == v8;
          v8 = v22;
        }

        while (!v15);
      }

      v8 = v22;
    }

    while (v22 != v7);
    v23 = (a2[2] - 1) * a2[2];
    if (v10 > v23 >> 1)
    {
      if (qword_1025D4630 != -1)
      {
        sub_101A66E94();
      }

      v24 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
      {
        *v27 = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "[WifiReachIntersection] pairwise intersection count is more than the total possibility; something is wrong.", v27, 2u);
      }

      v25 = sub_10000A100(121, 0);
      result = 1.0;
      if (v25)
      {
        sub_101A66EBC();
        return 1.0;
      }

      return result;
    }
  }

  v26 = v23 >> 1;
  result = 1.0;
  if (v10 != v26)
  {
    return v10 / v26;
  }

  return result;
}

uint64_t sub_1001A612C(uint64_t a1)
{
  sub_10018D404(a1);
  *(v2 + 40) = 0xFFFF;
  *(v2 + 52) = 0;
  *(v2 + 44) = 0;
  *(v2 + 60) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v2 + 76) = _Q0;
  *(v2 + 92) = _Q0;
  *(v2 + 108) = _Q0;
  *(v2 + 124) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 128) = 0xBFF0000000000000;
  *(v2 + 152) = 0;
  *(v2 + 156) = 0xBFF0000000000000;
  *(v2 + 164) = 0x7FFFFFFF;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 168) = 0;
  *(v2 + 192) = 0;
  sub_100021ED8(v2 + 200);
  return a1;
}

double sub_1001A61B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a2 + 16) = 0u;
  *(a2 + 32) = _Q1;
  result = NAN;
  *(a2 + 48) = -1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 76) = -1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 92) = -1;
  return result;
}

BOOL sub_1001A61F4(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return 1;
  }

  sub_10000EC00(&__p, "ff:ff:ff:ff:ff:ff");
  v3 = sub_100196E8C(&__p);
  sub_1001A61B8(v3, v44);
  v4 = *(a1 + 136);
  v5 = v44[1];
  *(a1 + 72) = v44[2];
  v6 = v44[4];
  *(a1 + 88) = v44[3];
  *(a1 + 104) = v6;
  *(a1 + 120) = v44[5];
  *(a1 + 40) = v44[0];
  *(a1 + 56) = v5;
  if ((v4 & 1) == 0)
  {
    *(a1 + 136) = 1;
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v42 = 0;
  v43 = 0;
  if (sub_1001A6564(a1, &__p))
  {
    __src = 0;
    v39 = 0;
    v40 = 0;
    v7 = __p;
    v8 = v42;
    if (__p == v42)
    {
      v27 = 0;
    }

    else
    {
      v9 = 0;
      do
      {
        v10 = (**a1 + 96 * *v7);
        if (v9 >= v40)
        {
          v15 = __src;
          v16 = v9 - __src;
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __src) >> 5);
          v18 = v17 + 1;
          if (v17 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v40 - __src) >> 5) > v18)
          {
            v18 = 0x5555555555555556 * ((v40 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v40 - __src) >> 5) >= 0x155555555555555)
          {
            v19 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            sub_1001A1980(&__src, v19);
          }

          v20 = 96 * v17;
          v21 = v10[1];
          *v20 = *v10;
          *(v20 + 16) = v21;
          v22 = v10[2];
          v23 = v10[3];
          v24 = v10[5];
          *(v20 + 64) = v10[4];
          *(v20 + 80) = v24;
          *(v20 + 32) = v22;
          *(v20 + 48) = v23;
          v9 = (96 * v17 + 96);
          v25 = (v20 - v16);
          memcpy((v20 - v16), v15, v16);
          v26 = __src;
          __src = v25;
          v39 = v9;
          v40 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          v11 = v10[1];
          *v9 = *v10;
          *(v9 + 1) = v11;
          v12 = v10[2];
          v13 = v10[3];
          v14 = v10[5];
          *(v9 + 4) = v10[4];
          *(v9 + 5) = v14;
          *(v9 + 2) = v12;
          *(v9 + 3) = v13;
          v9 += 96;
        }

        v39 = v9;
        ++v7;
      }

      while (v7 != v8);
      v27 = __src;
    }

    sub_1001A9D94(&__src, v37, v27[1], v27[2]);
    v35 = 0.0;
    v36 = 0.0;
    v34 = 0;
    if (sub_1002F0CDC(v37, &v35, &v34))
    {
      v32 = 0;
      v33 = 0;
      v31 = 0;
      sub_10018D404(v44);
      sub_1002AC7D4(v44, &v33, &v32, &v31, v27[1], v27[2], v27[3], v36, v35, 0.0);
      v29 = v32;
      *(a1 + 48) = v33;
      *(a1 + 56) = v29;
      *(a1 + 72) = v34;
    }

    if (v37[0])
    {
      v37[1] = v37[0];
      operator delete(v37[0]);
    }

    if (__src)
    {
      v39 = __src;
      operator delete(__src);
    }
  }

  else if (v42 - __p == 8)
  {
    v28 = **a1 + 96 * *__p;
    *(a1 + 48) = *(v28 + 8);
    *(a1 + 72) = *(v28 + 32);
  }

  v1 = sub_10019A2D4((a1 + 40));
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_1001A64F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A6564(double *a1, void **a2)
{
  if (a1[18] == 0.0)
  {
    sub_100288420(buf, *(a1 + 2), a1 + 3);
    v4 = *a2;
    if (*a2)
    {
      a2[1] = v4;
      operator delete(v4);
    }

    v5 = 0;
    *a2 = *buf;
    a2[2] = *&buf[16];
  }

  else
  {
    v44 = (a1 + 18);
    v6 = *(a1 + 2);
    v45 = (a1 + 3);
    if (v6 == (a1 + 3))
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v7 = v6[4];
        v8 = **a1;
        if (v7 >= 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - v8) >> 5))
        {
          if (qword_1025D4630 != -1)
          {
            sub_101A66E94();
          }

          v21 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
          {
            v22 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - **a1) >> 5);
            *buf = 134349312;
            *&buf[4] = v7;
            *&buf[12] = 2050;
            *&buf[14] = v22;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "[WifiReachIntersection] out of bound candidate index %{public}lu from %{public}lu input centroids", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4630 != -1)
            {
              sub_101A66E94();
            }

            v23 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - **a1) >> 5);
            v46 = 134349312;
            v47 = v7;
            v48 = 2050;
            v49 = v23;
            LODWORD(v43) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 17, "[WifiReachIntersection] out of bound candidate index %{public}lu from %{public}lu input centroids", &v46, v43);
            v25 = v24;
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiReachIntersection::ReachIntersection::removeCentroidIndicesWithNestedAps(std::vector<size_t> &)", "%s\n", v24);
            if (v25 != buf)
            {
              free(v25);
            }
          }
        }

        else
        {
          v10 = *a2;
          v9 = a2[1];
          if (*a2 == v9)
          {
LABEL_12:
            v19 = a2[1];
            v18 = a2[2];
            if (v19 >= v18)
            {
              v26 = *a2;
              v27 = v19 - *a2;
              v28 = (v27 >> 3) + 1;
              if (v28 >> 61)
              {
                sub_10028C64C();
              }

              v29 = v18 - v26;
              if (v29 >> 2 > v28)
              {
                v28 = v29 >> 2;
              }

              v30 = v29 >= 0x7FFFFFFFFFFFFFF8;
              v31 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v30)
              {
                v31 = v28;
              }

              if (v31)
              {
                sub_1000B9708(a2, v31);
              }

              v32 = (8 * (v27 >> 3));
              *v32 = v7;
              v20 = (v32 + 1);
              memcpy(0, v26, v27);
              v33 = *a2;
              *a2 = 0;
              a2[1] = v20;
              a2[2] = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v19 = v7;
              v20 = (v19 + 1);
            }

            a2[1] = v20;
          }

          else
          {
            v11 = v8 + 96 * v7;
            while (1)
            {
              v12 = *v10;
              v13 = **a1;
              sub_10018D404(buf);
              v14 = v13 + 96 * v12;
              sub_1002AB240(*(v11 + 8), *(v11 + 16), *(v14 + 8), *(v14 + 16));
              v15 = *(v11 + 48);
              v16 = *(v14 + 48);
              v5 |= v17 <= (v16 + v15);
              if (v17 + v16 <= v15)
              {
                break;
              }

              if (++v10 == v9)
              {
                goto LABEL_12;
              }
            }
          }
        }

        v34 = v6[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v6[2];
            v36 = *v35 == v6;
            v6 = v35;
          }

          while (!v36);
        }

        v6 = v35;
      }

      while (v35 != v45);
    }

    v38 = *(a1 + 4);
    v37 = (a1 + 4);
    if (v38 >= 2 && (v5 & 1) == 0)
    {
      if (qword_1025D4630 != -1)
      {
        sub_101A66E94();
      }

      v39 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
      {
        v40 = *v37;
        v41 = *v44;
        *buf = 134349312;
        *&buf[4] = v40;
        *&buf[12] = 2050;
        *&buf[14] = v41;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_FAULT, "[WifiReachIntersection] no intersection for %{public}zu centroid(s) after passing pairwise intersection check %{public}f > 0; something is wrong", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A66FC4(v37, v44);
      }

      v5 = 0;
    }
  }

  return v5 & 1;
}

void sub_1001A6A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, double a8)
{
  v16 = rand();
  if (!(v16 % *sub_1001A7088()))
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100AD218C;
    v24 = &unk_102493508;
    v25 = a1;
    v26 = a2;
    v27 = a4;
    v28 = a8;
    v29 = a3;
    v30 = a5;
    v31 = a6;
    v32 = a7;
    AnalyticsSendEventLazy();
  }

  if (sub_100072814(a1 + 40) && sub_100072814(a2))
  {
    if (sub_100072814(a3) || sub_100072814(a5))
    {
      if (vabdd_f64(*(a1 + 116), *(a2 + 76)) <= 1.0)
      {
        v19 = rand();
        if (!(v19 % *sub_1001A7088()))
        {
          v21 = _NSConcreteStackBlock;
          v22 = 3221225472;
          v23 = sub_100AD1AC8;
          v24 = &unk_102493508;
          v25 = a1;
          v26 = a2;
          v27 = a4;
          v28 = a8;
          v29 = a3;
          v30 = a5;
          v31 = a6;
          v32 = a7;
          AnalyticsSendEventLazy();
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019E6664();
        }

        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v21) = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "[WifiPositionCalculatorWithReachIntersectionAnalytics] aborted due to deltaTimeFromRef is greater than maximum threshold", &v21, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019E6854();
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019E6664();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v21) = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "[WifiPositionCalculatorWithReachIntersectionAnalytics] aborted due to invalid afterLocation and afterLocationConservative.", &v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019E6770();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019E6664();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "[WifiPositionCalculatorWithReachIntersectionAnalytics] aborted due to invalid fRefLocation or invalid beforeLocation.", &v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019E668C();
    }
  }
}

void sub_1001A6D2C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 152) == 1 && sub_10019A2D4((a1 + 56)))
  {
    if ((*(a1 + 152) & 1) == 0)
    {
      sub_100173BA0();
    }

    v4 = *(a1 + 104);
    a2[2] = *(a1 + 88);
    a2[3] = v4;
    v5 = *(a1 + 136);
    a2[4] = *(a1 + 120);
    a2[5] = v5;
    v6 = *(a1 + 72);
    *a2 = *(a1 + 56);
    a2[1] = v6;
  }

  else
  {
    sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
    v7 = sub_100196E8C(__p);
    sub_1001A61B8(v7, a2);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1001A6DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001A6DF0(uint64_t a1, _OWORD *a2)
{
  v4 = a2[7];
  v29 = a2[6];
  v30 = v4;
  v31[0] = a2[8];
  *(v31 + 12) = *(a2 + 140);
  v5 = a2[3];
  v25 = a2[2];
  v26 = v5;
  v6 = a2[5];
  v27 = a2[4];
  v28 = v6;
  v7 = a2[1];
  *v24 = *a2;
  *&v24[16] = v7;
  sub_1001A6D2C(a1, &v21);
  *&v24[4] = v22;
  *&v24[20] = v23;
  v8 = a2[5];
  v16 = a2[4];
  v17 = v8;
  v9 = a2[3];
  v14 = a2[2];
  v15 = v9;
  *&v20[12] = *(a2 + 140);
  v10 = a2[8];
  v19 = a2[7];
  *v20 = v10;
  v18 = a2[6];
  v11 = a2[1];
  *v13 = *a2;
  *&v13[16] = v11;
  *&v13[4] = *(a1 + 176);
  *&v13[20] = *(a1 + 200);
  sub_1001A6A1C(a1 + 272, a2, v24, 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 8) - **a1) >> 5), v13, *(a1 + 264), *(a1 + 265), *(a1 + 160));
  return result;
}

void sub_1001A6EF8(uint64_t a1, __int128 *a2, char *a3)
{
  if (sub_1001A6F60(a2))
  {

    sub_100AD1884(a1 + 272, a2, a3);
  }
}

BOOL sub_1001A6F7C(uint64_t a1, uint64_t a2)
{
  v4 = *sub_1001A6A10();
  if (v4 == 2)
  {
    result = sub_10019A2D4((a1 + 168));
    if (result)
    {
      *(a2 + 4) = *(a1 + 176);
      sub_100027CA8(a2);
      *(a2 + 20) = *(a1 + 200);
      *(a2 + 182) = 2;
      if ((*(a1 + 264) & 1) == 0)
      {
        *(a2 + 156) = -1431655765 * ((*(*a1 + 8) - **a1) >> 5);
      }

      return 1;
    }
  }

  else if (v4 == 1 && *(a1 + 152) == 1)
  {
    result = sub_10019A2D4((a1 + 56));
    if (result)
    {
      sub_1001A6D2C(a1, v6);
      *(a2 + 4) = *&v6[8];
      sub_100027CA8(a2);
      *(a2 + 20) = v7;
      *(a2 + 156) = -1431655765 * ((*(*a1 + 8) - **a1) >> 5);
      result = 1;
      *(a2 + 182) = 1;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1001A7094(void *a1@<X8>)
{
  if ((atomic_load_explicit(byte_102664AB0, memory_order_acquire) & 1) == 0)
  {
    sub_101B82524();
  }

  if (qword_102664AA0 != -1)
  {
    sub_101B82594();
  }

  v2 = *(&xmmword_102664AC0 + 1);
  *a1 = xmmword_102664AC0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

BOOL sub_1001A7210()
{
  HIDWORD(v0) = -1030792151 * rand() + 85899344;
  LODWORD(v0) = HIDWORD(v0);
  return (v0 >> 2) < 0x28F5C29;
}

void sub_1001A7250(uint64_t a1, uint64_t a2)
{
  if (sub_1001A7210())
  {
    sub_1002393EC(a1, __p);
    sub_100239484(v14, __p);
    *buf = __p;
    sub_1002394D8(buf);
    if (qword_1025D4620 != -1)
    {
      sub_101A4C50C();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100239658(v14, __p);
      v5 = v20 >= 0 ? __p : __p[0];
      *buf = 136380675;
      *&buf[4] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLWifiAssociatedApCentroidDatabase, metrics, %{private}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C3EC(__p);
      v10 = qword_1025D4628;
      sub_100239658(v14, buf);
      if (v16 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      v17 = 136380675;
      v18 = v11;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v10, 2, "CLWifiAssociatedApCentroidDatabase, metrics, %{private}s", &v17, 12);
      v13 = v12;
      if (v16 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApCentroidDatabase::submitMetricsIfPossible(const BOOL)", "%s\n", v13);
      if (v13 != __p)
      {
        free(v13);
      }
    }

    v6 = sub_100ADEA50(v14);
    sub_100243270(v14);
    v8 = v7;
    v9 = sub_100243328(v14);
    sub_101186360(v8, v9, a1 + 256, v6, a2);
    __p[0] = v14;
    sub_1002394D8(__p);
  }
}

void sub_1001A74B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22)
{
  a22 = &a12;
  sub_1002394D8(&a22);
  _Unwind_Resume(a1);
}

void sub_1001A74F0(void *a1@<X8>)
{
  if ((atomic_load_explicit(byte_10265D960, memory_order_acquire) & 1) == 0)
  {
    sub_101A45748();
  }

  if (qword_10265D950 != -1)
  {
    sub_101A457B8();
  }

  v2 = *(&xmmword_10265D970 + 1);
  *a1 = xmmword_10265D970;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

__n128 sub_1001A75A8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

void sub_1001A75DC(uint64_t **a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8, double *a9, uint64_t a10, double d2_0, uint64_t a11, uint64_t a12)
{
  v16 = a9;
  if ((atomic_load_explicit(&qword_102658508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658508))
  {
    sub_10018D404(xmmword_1026584E0);
    __cxa_guard_release(&qword_102658508);
    v16 = a9;
  }

  v17 = *(a11 + 28);
  __src = 0;
  v229 = 0;
  v230 = 0;
  v18 = *(a10 + 76);
  v19 = *(a10 + 20);
  *v16 = -1.0;
  if (v19 >= 0.0 && v19 < *(sub_1001A8F5C() + 12))
  {
    v19 = *(sub_1001A8F5C() + 12);
  }

  v21 = *a1;
  v20 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v20 - v21) >> 5) > *(sub_1001A8F5C() + 26) || v19 < 0.0)
  {
    if (*(a10 + 96) != 4)
    {
      goto LABEL_53;
    }

    v25 = 0;
LABEL_12:
    v26 = *(a10 + 84);
    if (v26 <= *(sub_1001A8F5C() + 27) || !v25)
    {
      goto LABEL_53;
    }

    goto LABEL_13;
  }

  v23 = sub_1001A8F5C();
  *&v22 = a3 - v18;
  v24 = *(v23 + 14);
  v25 = a3 - v18 <= v24;
  if (*(a10 + 96) == 4)
  {
    goto LABEL_12;
  }

  if (*&v22 > v24)
  {
LABEL_53:
    v61 = *a1;
    v60 = a1[1];
    if (*a1 != v60)
    {
      do
      {
        sub_1001A8F68(v61, v247);
        v62 = v229;
        if (v229 >= v230)
        {
          v67 = __src;
          v68 = v229 - __src;
          v69 = 0xAAAAAAAAAAAAAAABLL * ((v229 - __src) >> 5);
          v70 = v69 + 1;
          if (v69 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v230 - __src) >> 5) > v70)
          {
            v70 = 0x5555555555555556 * ((v230 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v230 - __src) >> 5) >= 0x155555555555555)
          {
            v70 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v70)
          {
            sub_1001A4428(&__src, v70);
          }

          v71 = (32 * ((v229 - __src) >> 5));
          v72 = *&v247[16];
          *v71 = *v247;
          v71[1] = v72;
          v73 = *v248;
          v74 = *&v248[16];
          v75 = v250;
          v71[4] = v249;
          v71[5] = v75;
          v71[2] = v73;
          v71[3] = v74;
          v66 = (96 * v69 + 96);
          v76 = (96 * v69 - v68);
          memcpy(v71 - v68, v67, v68);
          v77 = __src;
          __src = v76;
          v229 = v66;
          v230 = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          v63 = *&v247[16];
          *v229 = *v247;
          *(v62 + 1) = v63;
          v22 = *v248;
          v64 = *&v248[16];
          v65 = v250;
          *(v62 + 4) = v249;
          *(v62 + 5) = v65;
          *(v62 + 2) = v22;
          *(v62 + 3) = v64;
          v66 = v62 + 12;
        }

        v229 = v66;
        v61 += 12;
      }

      while (v61 != v60);
    }

LABEL_66:
    v78 = 0;
    goto LABEL_71;
  }

LABEL_13:
  v27 = *a1;
  v28 = a1[1];
  if (*a1 == v28)
  {
    v79 = *a1;
  }

  else
  {
    do
    {
      sub_100109D18(xmmword_1026584E0, *(a10 + 4), *(a10 + 12), *(v27 + 8), *(v27 + 16), 0.0);
      v30 = *(v27 + 48);
      if (*(v27 + 32) >= v30)
      {
        v30 = *(v27 + 32);
      }

      if (v29 - v30 - v19 <= 0.0)
      {
        sub_1001A8F68(v27, v247);
        v43 = v229;
        if (v229 >= v230)
        {
          v49 = __src;
          v50 = v229 - __src;
          v51 = 0xAAAAAAAAAAAAAAABLL * ((v229 - __src) >> 5);
          v52 = v51 + 1;
          if (v51 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v230 - __src) >> 5) > v52)
          {
            v52 = 0x5555555555555556 * ((v230 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v230 - __src) >> 5) >= 0x155555555555555)
          {
            v52 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v52)
          {
            sub_1001A4428(&__src, v52);
          }

          v53 = (32 * ((v229 - __src) >> 5));
          v54 = *&v247[16];
          *v53 = *v247;
          v53[1] = v54;
          v55 = *v248;
          v56 = *&v248[16];
          v57 = v250;
          v53[4] = v249;
          v53[5] = v57;
          v53[2] = v55;
          v53[3] = v56;
          v48 = (96 * v51 + 96);
          v58 = (96 * v51 - v50);
          memcpy(v53 - v50, v49, v50);
          v59 = __src;
          __src = v58;
          v229 = v48;
          v230 = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        else
        {
          v44 = *&v247[16];
          *v229 = *v247;
          *(v43 + 1) = v44;
          v45 = *v248;
          v46 = *&v248[16];
          v47 = v250;
          *(v43 + 4) = v249;
          *(v43 + 5) = v47;
          *(v43 + 2) = v45;
          *(v43 + 3) = v46;
          v48 = v43 + 12;
        }

        v229 = v48;
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018F2B38();
        }

        v31 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
        {
          CFAbsoluteTimeGetCurrent();
          sub_100EFF768(v27, v247);
          v32 = v247[23];
          v33 = *v247;
          sub_100072AFC(a10, &__p);
          v34 = v247;
          if (v32 < 0)
          {
            v34 = v33;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315395;
          *&buf[4] = v34;
          v240 = 2085;
          v241 = p_p;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#Warning WIFI_LOC: filtered by location hint, ap, %s, hint, %{sensitive}s", buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((v247[23] & 0x80000000) != 0)
          {
            operator delete(*v247);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F2B60(v247);
          v36 = qword_1025D48A8;
          CFAbsoluteTimeGetCurrent();
          sub_100EFF768(v27, &__p);
          v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v38 = __p.__r_.__value_.__r.__words[0];
          sub_100072AFC(a10, buf);
          v39 = &__p;
          if (v37 < 0)
          {
            v39 = v38;
          }

          v40 = buf;
          if (v242 < 0)
          {
            v40 = *buf;
          }

          v243 = 136315395;
          v244 = v39;
          v245 = 2085;
          v246 = v40;
          LODWORD(v220) = 22;
          _os_log_send_and_compose_impl(2, 0, v247, 1628, dword_100000000, v36, 0, "#Warning WIFI_LOC: filtered by location hint, ap, %s, hint, %{sensitive}s", &v243, v220);
          v42 = v41;
          if (v242 < 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v42);
          if (v42 != v247)
          {
            free(v42);
          }
        }
      }

      v27 += 96;
    }

    while (v27 != v28);
    v27 = *a1;
    v79 = a1[1];
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v79 - v27) >> 5) >= *(sub_1001A8F5C() + 22) && __src == v229)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F2B38();
    }

    v177 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v178 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
      *v247 = 134218240;
      *&v247[4] = v178;
      *&v247[12] = 2048;
      *&v247[14] = 0xAAAAAAAAAAAAAAABLL * ((v229 - __src) >> 5);
      _os_log_impl(dword_100000000, v177, OS_LOG_TYPE_DEFAULT, "#Warning WIFI_LOC: revert hint, %lu, %lu", v247, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F2B60(v247);
      v217 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134218240;
      *(__p.__r_.__value_.__r.__words + 4) = v217;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = 0xAAAAAAAAAAAAAAABLL * ((v229 - __src) >> 5);
      LODWORD(v220) = 22;
      _os_log_send_and_compose_impl(2, 0, v247, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning WIFI_LOC: revert hint, %lu, %lu", &__p, v220);
      v219 = v218;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v218);
      if (v219 != v247)
      {
        free(v219);
      }
    }

    v180 = *a1;
    v179 = a1[1];
    if (*a1 != v179)
    {
      do
      {
        sub_1001A8F68(v180, v247);
        v181 = v229;
        if (v229 >= v230)
        {
          v186 = __src;
          v187 = v229 - __src;
          v188 = 0xAAAAAAAAAAAAAAABLL * ((v229 - __src) >> 5);
          v189 = v188 + 1;
          if (v188 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v230 - __src) >> 5) > v189)
          {
            v189 = 0x5555555555555556 * ((v230 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v230 - __src) >> 5) >= 0x155555555555555)
          {
            v189 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v189)
          {
            sub_1001A4428(&__src, v189);
          }

          v190 = (32 * ((v229 - __src) >> 5));
          v191 = *&v247[16];
          *v190 = *v247;
          v190[1] = v191;
          v192 = *v248;
          v193 = *&v248[16];
          v194 = v250;
          v190[4] = v249;
          v190[5] = v194;
          v190[2] = v192;
          v190[3] = v193;
          v185 = (96 * v188 + 96);
          v195 = (96 * v188 - v187);
          memcpy(v190 - v187, v186, v187);
          v196 = __src;
          __src = v195;
          v229 = v185;
          v230 = 0;
          if (v196)
          {
            operator delete(v196);
          }
        }

        else
        {
          v182 = *&v247[16];
          *v229 = *v247;
          *(v181 + 1) = v182;
          v22 = *v248;
          v183 = *&v248[16];
          v184 = v250;
          *(v181 + 4) = v249;
          *(v181 + 5) = v184;
          *(v181 + 2) = v22;
          *(v181 + 3) = v183;
          v185 = v181 + 12;
        }

        v229 = v185;
        v180 += 12;
      }

      while (v180 != v179);
    }

    goto LABEL_66;
  }

  v78 = 1;
LABEL_71:
  v80 = a12;
  v81 = 0xAAAAAAAAAAAAAAABLL * ((v229 - __src) >> 5);
  v82 = 126 - 2 * __clz(v81);
  if (v229 == __src)
  {
    v83 = 0;
  }

  else
  {
    v83 = v82;
  }

  sub_1001A4480(__src, v229, v83, 1, *&v22);
  v84 = v229;
  while (1)
  {
    v85 = sub_1001A8F5C();
    v86 = 0xAAAAAAAAAAAAAAABLL * ((v84 - __src) >> 5);
    v87 = v229;
    if (v86 <= *(v85 + 21))
    {
      break;
    }

    v84 = v229 - 12;
    v229 -= 12;
  }

  v88 = __src;
  v89 = v229 - __src;
  if (v229 != __src)
  {
    do
    {
      v90 = v88[8];
      v92 = *(v88 + 13);
      v91 = *(v88 + 14);
      v93 = v88[4];
      v94 = sub_1001A8F5C();
      sub_1001A565C(v94, v91, v92, v93, a3 - v90);
      *&v95 = v95;
      *(v88 + 20) = LODWORD(v95);
      v88 += 12;
    }

    while (v88 != v87);
    v88 = __src;
    v87 = v229;
  }

  if (v88 == v87)
  {
    v223 = 1;
  }

  else
  {
    v96 = 360.0;
    v97 = -360.0;
    do
    {
      v98 = v88[1];
      if (v98 > v97)
      {
        v97 = v88[1];
      }

      if (v98 < v96)
      {
        v96 = v88[1];
      }

      v88 += 12;
    }

    while (v88 != v87);
    v223 = 1;
    if (v97 > 179.9 && v96 < -179.9)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v99 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *v247 = 134349312;
        *&v247[4] = v96;
        *&v247[12] = 2050;
        *&v247[14] = v97;
        _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_DEBUG, "WifiCalc, b360repr, min, %{public}.1lf, max, %{public}.1lf", v247, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(v247);
        LODWORD(__p.__r_.__value_.__l.__data_) = 134349312;
        *(__p.__r_.__value_.__r.__words + 4) = v96;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v97;
        LODWORD(v220) = 22;
        _os_log_send_and_compose_impl(2, 0, v247, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, b360repr, min, %{public}.1lf, max, %{public}.1lf", &__p, v220);
        v213 = v212;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v212);
        if (v213 != v247)
        {
          free(v213);
        }
      }

      v100 = __src;
      v101 = v229;
      if (__src != v229)
      {
        do
        {
          v100[1] = fmod(v100[1] + 360.0, 360.0);
          v100 += 12;
        }

        while (v100 != v101);
      }

      v223 = 0;
    }
  }

  v102 = sub_1001A8F5C();
  v224 = sub_1001A576C(&__src, *(v102 + 120), v17, d2_0);
  v104 = __src;
  v103 = v229;
  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v105 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 5);
  v106 = 0xAAAAAAAAAAAAAAABLL * ((v103 - v104) >> 5);
  v107 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v108 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
    v109 = *(a10 + 20);
    *v247 = 134350592;
    *&v247[4] = v108;
    *&v247[12] = 2050;
    *&v247[14] = v81;
    *&v247[22] = 2050;
    *&v247[24] = v105;
    *v248 = 2050;
    *&v248[2] = v106;
    *&v248[10] = 1026;
    *&v248[12] = v224;
    *&v248[16] = 2050;
    *&v248[18] = v109;
    *&v248[26] = 1026;
    *&v248[28] = v78;
    _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_DEBUG, "WifiCalc, counts, %{public}ld, %{public}ld, %{public}ld, %{public}ld, verified, %{public}d, hint, %{public}.1f, %{public}d", v247, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F29F0(v247);
    v197 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
    v198 = *(a10 + 20);
    LODWORD(__p.__r_.__value_.__l.__data_) = 134350592;
    *(__p.__r_.__value_.__r.__words + 4) = v197;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v81;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 2050;
    v232 = *&v105;
    v233 = 2050;
    v234 = *&v106;
    v235 = 1026;
    *v236 = v224;
    *&v236[4] = 2050;
    *&v236[6] = v198;
    v237 = 1026;
    v238 = v78;
    LODWORD(v220) = 64;
    _os_log_send_and_compose_impl(2, 0, v247, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, counts, %{public}ld, %{public}ld, %{public}ld, %{public}ld, verified, %{public}d, hint, %{public}.1f, %{public}d", &__p, v220);
    v200 = v199;
    sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v199);
    if (v200 != v247)
    {
      free(v200);
    }
  }

  if ((atomic_load_explicit(&qword_102658538, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658538))
  {
    sub_10018D404(xmmword_102658510);
    __cxa_guard_release(&qword_102658538);
  }

  v110 = __src;
  v111 = 0xAAAAAAAAAAAAAAABLL * ((v229 - __src) >> 5);
  if (v229 == __src)
  {
    v122 = 0.0;
  }

  else
  {
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = v111 - 1;
    if (v111 <= 1)
    {
      v116 = 1;
    }

    else
    {
      v116 = 0xAAAAAAAAAAAAAAABLL * ((v229 - __src) >> 5);
    }

    v227 = v116;
    do
    {
      v117 = v114 + 1;
      v118 = v111;
      if (v114 + 1 < v111)
      {
        v119 = v112;
        v120 = v115;
        do
        {
          sub_100109D18(xmmword_102658510, v110[12 * v114], v110[12 * v114 + 1], *(v110 + v119 + 96), *(v110 + v119 + 104), 0.0);
          v110 = __src;
          if (v121 <= (*(__src + v119 + 148) + *(__src + 24 * v114 + 13)))
          {
            ++v113;
          }

          v119 += 96;
          --v120;
        }

        while (v120);
      }

      --v115;
      v112 += 96;
      ++v114;
      v111 = v118;
    }

    while (v117 != v227);
    v122 = v113 * 100.0;
    v80 = a12;
  }

  v123 = (v111 - 1) * v111;
  if (v123 >= 2)
  {
    v124 = v122 / (v123 >> 1);
  }

  else
  {
    v124 = 100.0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v125 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *v247 = 134283521;
    *&v247[4] = v124;
    _os_log_impl(dword_100000000, v125, OS_LOG_TYPE_DEBUG, "WifiCalc, apReachOverlapPercentage, %{private}f", v247, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F29F0(v247);
    LODWORD(__p.__r_.__value_.__l.__data_) = 134283521;
    *(__p.__r_.__value_.__r.__words + 4) = v124;
    LODWORD(v220) = 12;
    _os_log_send_and_compose_impl(2, 0, v247, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, apReachOverlapPercentage, %{private}f", &__p, v220);
    v202 = v201;
    sub_100152C7C("Generic", 1, 0, 2, "void analyzeApCentroidReachOverlap(const std::vector<CLWifiAccessPoint> &)", "%s\n", v201);
    if (v202 != v247)
    {
      free(v202);
    }
  }

  HIDWORD(v126) = -1775253149 * rand() + 28633112;
  LODWORD(v126) = HIDWORD(v126);
  if ((v126 >> 2) <= 0xDA740C)
  {
    *v247 = _NSConcreteStackBlock;
    *&v247[8] = 3221225472;
    *&v247[16] = sub_10064DF84;
    *&v247[24] = &unk_102451C38;
    *v248 = v124;
    *&v248[8] = v111;
    AnalyticsSendEventLazy();
  }

  v127 = v229;
  if (__src != v229)
  {
    v128 = __src + 72;
    do
    {
      sub_10018F0D0(&__p);
      v130 = *(v80 + 8);
      v129 = *(v80 + 16);
      if (v130 >= v129)
      {
        v132 = 0xAAAAAAAAAAAAAAABLL * ((v130 - *v80) >> 3);
        v133 = v132 + 1;
        if (v132 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v134 = 0xAAAAAAAAAAAAAAABLL * ((v129 - *v80) >> 3);
        if (2 * v134 > v133)
        {
          v133 = 2 * v134;
        }

        if (v134 >= 0x555555555555555)
        {
          v135 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v135 = v133;
        }

        *v248 = v80;
        if (v135)
        {
          sub_1001A19D8(v80, v135);
        }

        v136 = 24 * v132;
        v137 = *&__p.__r_.__value_.__l.__data_;
        *(v136 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v136 = v137;
        memset(&__p, 0, sizeof(__p));
        v138 = 24 * v132 + 24;
        v139 = *(v80 + 8) - *v80;
        v140 = 24 * v132 - v139;
        memcpy((v136 - v139), *v80, v139);
        v141 = *v80;
        *v80 = v140;
        *(v80 + 8) = v138;
        v142 = *(v80 + 16);
        *(v80 + 16) = 0;
        *&v247[16] = v141;
        *&v247[24] = v142;
        *v247 = v141;
        *&v247[8] = v141;
        sub_100197A50(v247);
        v143 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(v80 + 8) = v138;
        if (v143 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v131 = *&__p.__r_.__value_.__l.__data_;
        *(v130 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v130 = v131;
        *(v80 + 8) = v130 + 24;
      }

      if (v128[16] == 1)
      {
        ++*(v80 + 24);
      }

      v144 = (v128 + 24);
      v128 += 96;
    }

    while (v144 != v127);
  }

  if (v224)
  {
    v145 = __src;
    v146 = v229;
    if (__src == v229)
    {
      v155 = 0.0;
      v156 = 1.79769313e308;
      v154 = 0.0;
      v149 = 0.0;
    }

    else
    {
      v147 = 0.0;
      v148 = 0.0;
      v149 = 0.0;
      v150 = __src;
      do
      {
        v151 = *(v150 + 20);
        v152 = *v150;
        v153 = v150[1];
        v150 += 12;
        v147 = v147 + v151 * v152;
        v148 = v148 + v151 * v153;
        v149 = v149 + v151;
      }

      while (v150 != v229);
      v154 = 0.0;
      v155 = 0.0;
      if (v149 > 0.0)
      {
        v155 = v147 / v149;
        v154 = v148 / v149;
      }

      v156 = 1.79769313e308;
      if (__src != v229)
      {
        do
        {
          if (v145[4] > 0.0)
          {
            sub_100109D18(xmmword_1026584E0, v155, v154, *v145, v145[1], v17);
            v158 = v145[4];
            if (v158 < v157)
            {
              v158 = v157;
            }

            if (v158 < v156)
            {
              v156 = v158;
            }

            v159 = v157 + *(v145 + 13);
            if (v159 >= *a9 && *a9 != -1.0)
            {
              v159 = *a9;
            }

            *a9 = v159;
          }

          v145 += 12;
        }

        while (v145 != v146);
        v145 = __src;
        v161 = v229;
        goto LABEL_171;
      }
    }

    v161 = __src;
LABEL_171:
    if (v156 >= 1.79769313e308)
    {
      v165 = -1.0;
    }

    else
    {
      v165 = v156;
    }

    *(a11 + 20) = v165;
    *(a11 + 4) = v155;
    *(a11 + 12) = v154;
    *(a11 + 132) = 1;
    *a8 = -1431655765 * ((v161 - v145) >> 5);
    *a7 = 0;
    if (*a9 < v165)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v166 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v167 = *a9;
        *v247 = 134349312;
        *&v247[4] = v167;
        *&v247[12] = 2050;
        *&v247[14] = v165;
        _os_log_impl(dword_100000000, v166, OS_LOG_TYPE_DEBUG, "WifiCalc, invalid estimatedWorstCaseErrorMeters, estimatedWorstCaseErrorMeters, %{public}0.1f, hunc, %{public}0.1f, #Warning", v247, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(v247);
        v214 = *a9;
        LODWORD(__p.__r_.__value_.__l.__data_) = 134349312;
        *(__p.__r_.__value_.__r.__words + 4) = v214;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v165;
        LODWORD(v220) = 22;
        _os_log_send_and_compose_impl(2, 0, v247, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, invalid estimatedWorstCaseErrorMeters, estimatedWorstCaseErrorMeters, %{public}0.1f, hunc, %{public}0.1f, #Warning", &__p, v220);
        v216 = v215;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v215);
        if (v216 != v247)
        {
          free(v216);
        }
      }

      *a9 = -1.0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v168 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v169 = *a9;
      v170 = *a8;
      v171 = *a7;
      *v247 = 134350593;
      *&v247[4] = v149;
      *&v247[12] = 2053;
      *&v247[14] = v155;
      *&v247[22] = 2053;
      *&v247[24] = v154;
      *v248 = 2050;
      *&v248[2] = v165;
      *&v248[10] = 2050;
      *&v248[12] = v169;
      *&v248[20] = 1026;
      *&v248[22] = v170;
      *&v248[26] = 1026;
      *&v248[28] = v171;
      _os_log_impl(dword_100000000, v168, OS_LOG_TYPE_DEBUG, "WifiCalc, est, %{public}.1f, %{sensitive}0.3f, %{sensitive}0.3f, hunc, %{public}0.1f, estWorstError, %{public}0.1f, n, %{public}d, x, %{public}d", v247, 0x40u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(v247);
      v207 = *a9;
      v208 = *a8;
      v209 = *a7;
      LODWORD(__p.__r_.__value_.__l.__data_) = 134350593;
      *(__p.__r_.__value_.__r.__words + 4) = v149;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2053;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v155;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2053;
      v232 = v154;
      v233 = 2050;
      v234 = v165;
      v235 = 2050;
      *v236 = v207;
      *&v236[8] = 1026;
      *&v236[10] = v208;
      v237 = 1026;
      v238 = v209;
      LODWORD(v220) = 64;
      _os_log_send_and_compose_impl(2, 0, v247, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, est, %{public}.1f, %{sensitive}0.3f, %{sensitive}0.3f, hunc, %{public}0.1f, estWorstError, %{public}0.1f, n, %{public}d, x, %{public}d", &__p, v220);
      v211 = v210;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v210);
      if (v211 != v247)
      {
        free(v211);
      }
    }

    goto LABEL_186;
  }

  v162 = *a1;
  if (a1[1] - *a1 == 96)
  {
    *(a11 + 4) = *(v162 + 1);
    *(a11 + 132) = 1;
    v163 = *(v162 + 4);
    v164 = *(v162 + 12);
    if (v163 < v164 / 3.0)
    {
      v163 = v164 / 3.0;
    }

    *(a11 + 20) = v163;
    *a9 = v164;
    *a8 = 1;
    *a7 = 1;
  }

  else
  {
    *a8 = 0;
    *a7 = 0;
  }

LABEL_186:
  sub_100027CA8(a11);
  v172 = v223;
  if (*(a11 + 20) < 180.0)
  {
    v172 = 1;
  }

  if ((v172 & 1) == 0)
  {
    v173 = *(a11 + 12);
    if (v173 > 180.0)
    {
      do
      {
        v173 = v173 + -360.0;
      }

      while (v173 > 180.0);
      *(a11 + 12) = v173;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v174 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v175 = *(a11 + 4);
      v176 = *(a11 + 12);
      *v247 = 134545921;
      *&v247[4] = v175;
      *&v247[12] = 2053;
      *&v247[14] = v176;
      _os_log_impl(dword_100000000, v174, OS_LOG_TYPE_DEBUG, "WifiCalc, b360repr, %{sensitive}14.8lf, %{sensitive}14.8lf", v247, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(v247);
      v203 = *(a11 + 4);
      v204 = *(a11 + 12);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134545921;
      *(__p.__r_.__value_.__r.__words + 4) = v203;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2053;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v204;
      LODWORD(v220) = 22;
      _os_log_send_and_compose_impl(2, 0, v247, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, b360repr, %{sensitive}14.8lf, %{sensitive}14.8lf", &__p, v220);
      v206 = v205;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidLatLon(const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, LatLonDebuggingData &, double)", "%s\n", v205);
      if (v206 != v247)
      {
        free(v206);
      }
    }
  }

  if (__src)
  {
    v229 = __src;
    operator delete(__src);
  }
}

void sub_1001A8E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  __cxa_guard_abort(&qword_102658538);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int32x2_t sub_1001A8F68@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1001A4418(a1))
  {
    v4 = sub_1001A8FF0(a1);
  }

  else
  {
    v4 = -1;
  }

  v5 = a1[3];
  v6 = *(a1 + 18);
  v7 = a1[10];
  v8 = *a1;
  v9 = a1[11] & 1;
  *a2 = *(a1 + 1);
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 2);
  result = vrev64_s32(a1[6]);
  *(a2 + 48) = result;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 88) = v9;
  return result;
}

uint64_t sub_1001A8FF0(uint64_t a1)
{
  if (*(a1 + 76) == -1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AC7B8C();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "fScore is not initialized!", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AC7BA0();
    }
  }

  return *(a1 + 76);
}

BOOL sub_1001A9098(float **a1, double a2, double a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  if (v6 < *(sub_1001A8F5C() + 22))
  {
    return 0;
  }

  v113 = 0;
  v114 = 0;
  v115 = 0;
  sub_1002F08F0(&v113, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5));
  v8 = sub_1002F096C(&v113, a2, a3);
  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  if (!v8)
  {
    return 1;
  }

  v10 = *a1;
  v9 = a1[1];
  if (v9 - *a1 == 192)
  {
    if (v10 != v9)
    {
      for (i = v10 + 24; i != v9; i += 24)
      {
        if (i[20] < v10[20])
        {
          v10 = i;
        }
      }
    }

    v86 = v9 - (v10 + 24);
    if (v9 != v10 + 24)
    {
      memmove(v10, v10 + 24, v86 - 7);
    }

    v7 = 0;
    a1[1] = (v10 + v86);
  }

  else
  {
    v110 = 0;
    v111 = 0;
    v12 = 4;
    v89 = -1.0;
    v112 = 0;
    do
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
      if (v13 >= v12)
      {
        v88 = v12;
        sub_100A32A88(v13, v12, &v108);
        v15 = v108;
        v14 = v109;
        v90 = v109;
        while (v15 != v14)
        {
          v105 = 0;
          v106 = 0;
          v107 = 0;
          sub_10038EB38(&v105, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 2);
          __src = 0;
          v103 = 0;
          v104 = 0;
          v16 = v105;
          v17 = v106;
          if (v105 == v106)
          {
            v18 = 0;
            v36 = 0;
          }

          else
          {
            v18 = 0;
            do
            {
              v19 = &(*a1)[24 * *v16];
              if (v18 >= v104)
              {
                v24 = __src;
                v25 = v18 - __src;
                v26 = 0xAAAAAAAAAAAAAAABLL * ((v18 - __src) >> 5);
                v27 = v26 + 1;
                if (v26 + 1 > 0x2AAAAAAAAAAAAAALL)
                {
                  sub_10028C64C();
                }

                if (0x5555555555555556 * ((v104 - __src) >> 5) > v27)
                {
                  v27 = 0x5555555555555556 * ((v104 - __src) >> 5);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v104 - __src) >> 5) >= 0x155555555555555)
                {
                  v28 = 0x2AAAAAAAAAAAAAALL;
                }

                else
                {
                  v28 = v27;
                }

                if (v28)
                {
                  sub_1001A4428(&__src, v28);
                }

                v29 = 96 * v26;
                v30 = *(v19 + 1);
                *v29 = *v19;
                *(v29 + 16) = v30;
                v31 = *(v19 + 2);
                v32 = *(v19 + 3);
                v33 = *(v19 + 5);
                *(v29 + 64) = *(v19 + 4);
                *(v29 + 80) = v33;
                *(v29 + 32) = v31;
                *(v29 + 48) = v32;
                v18 = (96 * v26 + 96);
                v34 = (v29 - v25);
                memcpy((v29 - v25), v24, v25);
                v35 = __src;
                __src = v34;
                v103 = v18;
                v104 = 0;
                if (v35)
                {
                  operator delete(v35);
                }
              }

              else
              {
                v20 = *(v19 + 1);
                *v18 = *v19;
                *(v18 + 1) = v20;
                v21 = *(v19 + 2);
                v22 = *(v19 + 3);
                v23 = *(v19 + 5);
                *(v18 + 4) = *(v19 + 4);
                *(v18 + 5) = v23;
                *(v18 + 2) = v21;
                *(v18 + 3) = v22;
                v18 += 96;
              }

              v103 = v18;
              ++v16;
            }

            while (v16 != v17);
            v36 = __src;
          }

          __p = 0;
          v100 = 0;
          v101 = 0;
          sub_1002F08F0(&__p, v36, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v36) >> 5));
          v37 = sub_1002F096C(&__p, a2, a3);
          if (__p)
          {
            v100 = __p;
            operator delete(__p);
          }

          if (!v37)
          {
            v38 = __src;
            v39 = (__src + 96);
            v40 = *__src;
            if (__src == v103 || v39 == v103)
            {
              v56 = *(__src + 1);
              v53 = *__src;
            }

            else
            {
              v41 = *__src;
              v42 = (__src + 96);
              v43 = __src;
              v44 = (__src + 96);
              do
              {
                v45 = *v44;
                v44 += 12;
                v46 = v45;
                if (v41 < v45)
                {
                  v41 = v46;
                  v43 = v42;
                }

                v42 = v44;
              }

              while (v44 != v103);
              v47 = *v43;
              v48 = (__src + 96);
              v49 = __src;
              v50 = (__src + 96);
              do
              {
                v51 = *v50;
                v50 += 12;
                v52 = v51;
                if (v51 < v40)
                {
                  v40 = v52;
                  v49 = v48;
                }

                v48 = v50;
              }

              while (v50 != v103);
              v53 = *v49;
              v54 = (__src + 96);
              v55 = __src;
              do
              {
                if (v55[1] < v54[1])
                {
                  v55 = v54;
                }

                v54 += 12;
              }

              while (v54 != v103);
              v56 = v55[1];
              do
              {
                if (v39[1] < v38[1])
                {
                  v38 = v39;
                }

                v39 += 12;
              }

              while (v39 != v103);
              v40 = v47;
            }

            v57 = v38[1];
            v96 = 0;
            v97 = 0;
            v98 = 0;
            v59 = *a1;
            v58 = a1[1];
            if (*a1 == v58)
            {
              v80 = 0;
              v60 = 0;
              v79 = *a1;
            }

            else
            {
              v60 = 0;
              do
              {
                v61 = *v59;
                v62 = v59[1];
                v63 = *(v59 + 3);
                v92 = *(v59 + 2);
                v93 = v63;
                v64 = *(v59 + 5);
                v94 = *(v59 + 4);
                v95 = v64;
                v91 = *(v59 + 1);
                v65 = v61 > v40 || v61 < v53;
                if (!v65 && v62 <= v56 && v62 >= v57)
                {
                  if (v60 >= v98)
                  {
                    v71 = v96;
                    v72 = v60 - v96;
                    v73 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v96) >> 5);
                    v74 = v73 + 1;
                    if (v73 + 1 > 0x2AAAAAAAAAAAAAALL)
                    {
                      sub_10028C64C();
                    }

                    if (0x5555555555555556 * ((v98 - v96) >> 5) > v74)
                    {
                      v74 = 0x5555555555555556 * ((v98 - v96) >> 5);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v98 - v96) >> 5) >= 0x155555555555555)
                    {
                      v75 = 0x2AAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v75 = v74;
                    }

                    if (v75)
                    {
                      sub_1001A4428(&v96, v75);
                    }

                    v76 = 32 * ((v60 - v96) >> 5);
                    *v76 = v61;
                    *(v76 + 8) = v62;
                    *(v76 + 32) = v92;
                    *(v76 + 48) = v93;
                    *(v76 + 64) = v94;
                    *(v76 + 80) = v95;
                    *(v76 + 16) = v91;
                    v60 = 96 * v73 + 96;
                    v77 = (96 * v73 - v72);
                    memcpy((v76 - v72), v71, v72);
                    v78 = v96;
                    v96 = v77;
                    v97 = v60;
                    v98 = 0;
                    if (v78)
                    {
                      operator delete(v78);
                    }
                  }

                  else
                  {
                    *v60 = v61;
                    *(v60 + 8) = v62;
                    v69 = v94;
                    v68 = v95;
                    *(v60 + 48) = v93;
                    *(v60 + 64) = v69;
                    *(v60 + 80) = v68;
                    v70 = v92;
                    *(v60 + 16) = v91;
                    *(v60 + 32) = v70;
                    v60 += 96;
                  }

                  v97 = v60;
                }

                v59 += 12;
              }

              while (v59 != v58);
              v59 = *a1;
              v79 = a1[1];
              v80 = v96;
            }

            v81 = sub_1001A8F5C();
            v82 = v96;
            if (-1431655765 * ((v79 - v59) >> 5) + 1431655765 * ((v60 - v80) >> 5) <= *(v81 + 20))
            {
              v83 = 0.0;
              if (v96 != v97)
              {
                v84 = v96;
                do
                {
                  v83 = v83 + v84[20];
                  v84 += 24;
                }

                while (v84 != v97);
              }

              if (v83 > v89)
              {
                sub_10024A16C(&v110, v96, v97, 0xAAAAAAAAAAAAAAABLL * ((v97 - v96) >> 5));
                v82 = v96;
                v89 = v83;
              }
            }

            if (v82)
            {
              v97 = v82;
              operator delete(v82);
            }
          }

          if (__src)
          {
            v103 = __src;
            operator delete(__src);
          }

          if (v105)
          {
            v106 = v105;
            operator delete(v105);
          }

          v15 += 24;
          v14 = v90;
        }

        *&v91 = &v108;
        sub_1002EC52C(&v91);
        v12 = v88;
      }

      v65 = v12-- > 2;
    }

    while (v65);
    v85 = v110;
    v7 = v110 != v111;
    if (&v110 != a1 && v110 != v111)
    {
      sub_10024A16C(a1, v110, v111, 0xAAAAAAAAAAAAAAABLL * ((v111 - v110) >> 5));
      v85 = v110;
    }

    if (v85)
    {
      v111 = v85;
      operator delete(v85);
    }
  }

  return v7;
}

void sub_1001A974C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35)
{
  v37 = *(v35 - 200);
  if (v37)
  {
    *(v35 - 192) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *sub_1001A9800(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 8));
  }

  else
  {
    v8 = (*v7 + 16 * v4);
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 8));
    v11 = (*v10 + 16 * v9);
  }

  sub_1001A99DC(a1, v7, v8, v10, v11);
  return a1;
}

void *sub_1001A98A4(unint64_t *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 32 * (v9 - v8) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_1001AED40(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 8));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 16 * v11;
    v15 = v14;
  }

  v23[0] = v13;
  v23[1] = v15;
  result = sub_100014378(v23, a4);
  while (v14 != v17)
  {
    v18 = (v13 == result ? v17 : *v13 + 4096);
    if (v14 == v18)
    {
      v18 = v14;
    }

    else
    {
      v19 = v14;
      do
      {
        v20 = *a3++;
        *v19 = v20;
        if ((a3 - *a2) == 4096)
        {
          v21 = a2[1];
          ++a2;
          a3 = v21;
        }

        ++v19;
      }

      while (v19 != v18);
    }

    a1[5] += (v18 - v14) >> 4;
    if (v13 == result)
    {
      break;
    }

    v22 = v13[1];
    ++v13;
    v14 = v22;
  }

  return result;
}

void *sub_1001A99DC(unint64_t *a1, char *a2, __int128 *a3, char *a4, __int128 *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  return sub_1001A98A4(a1, a2, a3, v5);
}

void sub_1001A9A10(uint64_t a1, uint64_t a2)
{
  v3 = 2 * *(a2 + 156) + 63;
  *(a2 + 84) = v3;
  if (*(a1 + 3452) >= 0.0 && *(a2 + 20) >= 0.0)
  {
    sub_10018D404(v7);
    sub_1001097CC(v7, a1 + 3432, a2);
    v6 = v5 <= 35000.0 && *(a2 + 156) == 1;
    v3 = *(a2 + 84);
    if (v6)
    {
      ++v3;
    }
  }

  if (v3 >= 80)
  {
    v3 = 80;
  }

  *(a2 + 84) = v3;
}

void sub_1001A9B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100D24248(v16);
  v18 = *(v15 + 8);
  if (v18)
  {
    sub_100008080(v18);
  }

  _Unwind_Resume(a1);
}

void **sub_1001A9C18(void **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1001A9D18(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  v4 = *a1;
  v5 = a1[1];
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5));
  a1[3] = 0;
  v7 = a1 + 3;
  a1[4] = 0;
  a1[5] = 0;
  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  sub_1001A9F5C(v4, v5, v8, 1, v3);
  if (*a1 != a1[1])
  {
    sub_1001A9D94(a1, &v11, *(*a1 + 1), *(*a1 + 2));
    v9 = *v7;
    if (*v7)
    {
      a1[4] = v9;
      operator delete(v9);
      *v7 = 0;
      a1[4] = 0;
      a1[5] = 0;
    }

    *(a1 + 3) = v11;
    a1[5] = v12;
  }

  return a1;
}

void sub_1001A9CE8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1001A9D18(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001B3C78(result, a4);
  }

  return result;
}

void sub_1001A9D78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A9D94(uint64_t *a1@<X0>, const void **a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      sub_10018D404(v22);
      sub_1001063B0(v22, &v25, &v24, &v23, a3, a4, 0.0, *(v4 + 8), *(v4 + 16), 0.0);
      v9 = v25;
      v10 = *(v4 + 48);
      v12 = a2[1];
      v11 = a2[2];
      if (v12 >= v11)
      {
        v14 = *a2;
        v15 = v12 - *a2;
        v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3) + 1;
        if (v16 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          sub_1001AB518(a2, v18);
        }

        v19 = 8 * (v15 >> 3);
        *v19 = v24;
        *(v19 + 8) = v9;
        *(v19 + 16) = v10;
        v13 = (v19 + 24);
        v20 = (v19 - v15);
        memcpy((v19 - v15), v14, v15);
        v21 = *a2;
        *a2 = v20;
        a2[1] = v13;
        a2[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = v24;
        *(v12 + 1) = v9;
        v13 = v12 + 24;
        *(v12 + 2) = v10;
      }

      a2[1] = v13;
      v4 += 96;
    }

    while (v4 != v5);
  }
}

void sub_1001A9F38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001A9F5C(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 6;
  v10 = a2 - 12;
  v11 = a2 - 18;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 5);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (a2[-3].n128_u32[0] < v12[3].n128_u32[0])
        {
          v303 = *v12;
          v342 = v12[1];
          v456 = v12[4];
          v492 = v12[5];
          v381 = v12[2];
          v420 = v12[3];
          v168 = a2[-1];
          v170 = a2[-4];
          v169 = a2[-3];
          v12[4] = a2[-2];
          v12[5] = v168;
          v12[2] = v170;
          v12[3] = v169;
          v171 = a2[-5];
          *v12 = a2[-6];
          v12[1] = v171;
          a2[-6] = v303;
          a2[-5] = v342;
          result = v381;
          a2[-2] = v456;
          a2[-1] = v492;
          a2[-4] = v381;
          a2[-3] = v420;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v178 = v12[9].n128_i32[0];
      v179 = v12[15].n128_i32[0];
      if (v178 >= v12[3].n128_u32[0])
      {
        if (v179 < v178)
        {
          v388 = v12[8];
          v425 = v12[9];
          v461 = v12[10];
          v497 = v12[11];
          v310 = v12[6];
          v349 = v12[7];
          v245 = v12[15];
          v12[8] = v12[14];
          v12[9] = v245;
          v246 = v12[17];
          v12[10] = v12[16];
          v12[11] = v246;
          v247 = v12[13];
          v12[6] = v12[12];
          v12[7] = v247;
          v12[12] = v310;
          v12[13] = v349;
          v12[16] = v461;
          v12[17] = v497;
          result = v425;
          v12[14] = v388;
          v12[15] = v425;
          if (v12[9].n128_u32[0] < v12[3].n128_u32[0])
          {
            v311 = *v12;
            v350 = v12[1];
            v462 = v12[4];
            v498 = v12[5];
            v389 = v12[2];
            v426 = v12[3];
            v248 = v12[11];
            v12[4] = v12[10];
            v12[5] = v248;
            v249 = v12[9];
            v12[2] = v12[8];
            v12[3] = v249;
            v250 = v12[7];
            *v12 = v12[6];
            v12[1] = v250;
            v12[6] = v311;
            v12[7] = v350;
            result = v389;
            v12[10] = v462;
            v12[11] = v498;
            v12[8] = v389;
            v12[9] = v426;
          }
        }
      }

      else if (v179 >= v178)
      {
        v314 = *v12;
        v353 = v12[1];
        v464 = v12[4];
        v500 = v12[5];
        v392 = v12[2];
        v428 = v12[3];
        v264 = v12[11];
        v12[4] = v12[10];
        v12[5] = v264;
        v265 = v12[9];
        v12[2] = v12[8];
        v12[3] = v265;
        v266 = v12[7];
        *v12 = v12[6];
        v12[1] = v266;
        v12[6] = v314;
        v12[7] = v353;
        result = v392;
        v12[10] = v464;
        v12[11] = v500;
        v12[8] = v392;
        v12[9] = v428;
        if (v179 < v12[9].n128_u32[0])
        {
          v393 = v12[8];
          v429 = v12[9];
          v465 = v12[10];
          v501 = v12[11];
          v315 = v12[6];
          v354 = v12[7];
          v267 = v12[15];
          v12[8] = v12[14];
          v12[9] = v267;
          v268 = v12[17];
          v12[10] = v12[16];
          v12[11] = v268;
          v269 = v12[13];
          v12[6] = v12[12];
          v12[7] = v269;
          v12[12] = v315;
          v12[13] = v354;
          v12[16] = v465;
          v12[17] = v501;
          result = v429;
          v12[14] = v393;
          v12[15] = v429;
        }
      }

      else
      {
        v305 = *v12;
        v344 = v12[1];
        v458 = v12[4];
        v494 = v12[5];
        v383 = v12[2];
        v422 = v12[3];
        v180 = v12[17];
        v12[4] = v12[16];
        v12[5] = v180;
        v181 = v12[15];
        v12[2] = v12[14];
        v12[3] = v181;
        v182 = v12[13];
        *v12 = v12[12];
        v12[1] = v182;
        v12[12] = v305;
        v12[13] = v344;
        result = v383;
        v12[16] = v458;
        v12[17] = v494;
        v12[14] = v383;
        v12[15] = v422;
      }

      if (a2[-3].n128_u32[0] >= v12[15].n128_u32[0])
      {
        return result;
      }

      v394 = v12[14];
      v430 = v12[15];
      v466 = v12[16];
      v502 = v12[17];
      v316 = v12[12];
      v355 = v12[13];
      v270 = a2[-5];
      v12[12] = *v9;
      v12[13] = v270;
      v271 = a2[-1];
      v273 = a2[-4];
      v272 = a2[-3];
      v12[16] = a2[-2];
      v12[17] = v271;
      v12[14] = v273;
      v12[15] = v272;
      *v9 = v316;
      a2[-5] = v355;
      result = v394;
      a2[-2] = v466;
      a2[-1] = v502;
      a2[-4] = v394;
      a2[-3] = v430;
      if (v12[15].n128_u32[0] >= v12[9].n128_u32[0])
      {
        return result;
      }

      v395 = v12[8];
      v431 = v12[9];
      v467 = v12[10];
      v503 = v12[11];
      v317 = v12[6];
      v356 = v12[7];
      v274 = v12[15];
      v12[8] = v12[14];
      v12[9] = v274;
      v275 = v12[17];
      v12[10] = v12[16];
      v12[11] = v275;
      v276 = v12[13];
      v12[6] = v12[12];
      v12[7] = v276;
      v12[12] = v317;
      v12[13] = v356;
      v12[16] = v467;
      v12[17] = v503;
      result = v431;
      v12[14] = v395;
      v12[15] = v431;
LABEL_192:
      if (v12[9].n128_u32[0] < v12[3].n128_u32[0])
      {
        v318 = *v12;
        v357 = v12[1];
        v468 = v12[4];
        v504 = v12[5];
        v396 = v12[2];
        v432 = v12[3];
        v277 = v12[11];
        v12[4] = v12[10];
        v12[5] = v277;
        v278 = v12[9];
        v12[2] = v12[8];
        v12[3] = v278;
        v279 = v12[7];
        *v12 = v12[6];
        v12[1] = v279;
        v12[6] = v318;
        v12[7] = v357;
        result = v396;
        v12[10] = v468;
        v12[11] = v504;
        v12[8] = v396;
        v12[9] = v432;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_100D2368C(v12, v12 + 6, v12 + 12, v12 + 18, a2 - 6).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 2303)
    {
      v183 = v12 + 6;
      v185 = v12 == a2 || v183 == a2;
      if (a4)
      {
        if (!v185)
        {
          v186 = 0;
          v187 = v12;
          do
          {
            v188 = v183;
            v189 = v187[9].n128_i32[0];
            if (v189 < v187[3].n128_u32[0])
            {
              v345 = v188[1];
              v384 = v188[2];
              v306 = *v188;
              v513 = *(&v187[9] + 4);
              v519 = *(&v187[10] + 4);
              result = v187[11];
              v190 = v186;
              HIDWORD(v519) = result.n128_u32[0];
              while (1)
              {
                v191 = (v12->n128_u64 + v190);
                v192 = *(&v12[3] + v190);
                v191[8] = *(&v12[2] + v190);
                v191[9] = v192;
                v193 = *(&v12[5] + v190);
                v191[10] = *(&v12[4] + v190);
                v191[11] = v193;
                v194 = *(&v12[1] + v190);
                v191[6] = *(v12 + v190);
                v191[7] = v194;
                if (!v190)
                {
                  break;
                }

                v190 -= 96;
                if (v189 >= *(v191 - 12))
                {
                  v195 = &v12[6] + v190;
                  goto LABEL_129;
                }
              }

              v195 = v12;
LABEL_129:
              *v195 = v306;
              *(v195 + 16) = v345;
              *(v195 + 32) = v384;
              *(v195 + 48) = v189;
              *(v195 + 52) = v513;
              *(v195 + 68) = v519;
              *(v195 + 80) = result;
            }

            v183 = v188 + 6;
            v186 += 96;
            v187 = v188;
          }

          while (&v188[6] != a2);
        }
      }

      else if (!v185)
      {
        do
        {
          v251 = v183;
          v252 = a1[9].n128_i32[0];
          if (v252 < a1[3].n128_u32[0])
          {
            v351 = v183[1];
            v390 = v183[2];
            v312 = *v183;
            v516 = *(a1 + 148);
            *v522 = *(a1 + 164);
            *&v522[12] = a1[11];
            do
            {
              v253 = v183[-3];
              v183[2] = v183[-4];
              v183[3] = v253;
              v254 = v183[-1];
              v183[4] = v183[-2];
              v183[5] = v254;
              v255 = v183[-5];
              *v183 = v183[-6];
              v183[1] = v255;
              v256 = v183[-9].n128_i32[0];
              v183 -= 6;
            }

            while (v252 < v256);
            *v183 = v312;
            v183[1] = v351;
            v183[2] = v390;
            v183[3].n128_u32[0] = v252;
            result = v516;
            v183[5] = *&v522[12];
            *(v183 + 68) = *v522;
            *(v183 + 52) = v516;
          }

          v183 = v251 + 6;
          a1 = v251;
        }

        while (&v251[6] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v196 = (v14 - 2) >> 1;
        v197 = v196;
        do
        {
          v198 = v197;
          if (v196 >= v197)
          {
            v199 = (2 * v197) | 1;
            v200 = &v12[6 * v199];
            if (2 * v197 + 2 < v14)
            {
              v201 = v200[3].n128_i32[0];
              v202 = v200[9].n128_i32[0];
              v203 = v201 < v202;
              v204 = v201 >= v202 ? 0 : 96;
              v200 = (v200 + v204);
              if (v203)
              {
                v199 = 2 * v197 + 2;
              }
            }

            v205 = &v12[6 * v197];
            v206 = v205[3].n128_i32[0];
            if (v200[3].n128_u32[0] >= v206)
            {
              v346 = v205[1];
              v385 = v205[2];
              v307 = *v205;
              *&v520[12] = v205[5];
              v514 = *(v205 + 52);
              *v520 = *(v205 + 68);
              do
              {
                v207 = v205;
                v205 = v200;
                v208 = v200[1];
                *v207 = *v200;
                v207[1] = v208;
                v209 = v200[2];
                v210 = v200[3];
                v211 = v200[5];
                v207[4] = v200[4];
                v207[5] = v211;
                v207[2] = v209;
                v207[3] = v210;
                if (v196 < v199)
                {
                  break;
                }

                v212 = (2 * v199) | 1;
                v200 = &v12[6 * v212];
                v213 = 2 * v199 + 2;
                if (v213 < v14)
                {
                  v214 = v200[3].n128_i32[0];
                  v215 = v200[9].n128_i32[0];
                  v216 = v214 < v215;
                  v217 = v214 >= v215 ? 0 : 96;
                  v200 = (v200 + v217);
                  if (v216)
                  {
                    v212 = v213;
                  }
                }

                v199 = v212;
              }

              while (v200[3].n128_u32[0] >= v206);
              *v205 = v307;
              v205[1] = v346;
              v205[2] = v385;
              v205[3].n128_u32[0] = v206;
              *(v205 + 52) = v514;
              *(v205 + 68) = *v520;
              v205[5] = *&v520[12];
            }
          }

          v197 = v198 - 1;
        }

        while (v198);
        v218 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 5);
        do
        {
          v219 = 0;
          v308 = *v12;
          v347 = v12[1];
          v459 = v12[4];
          v495 = v12[5];
          v386 = v12[2];
          v423 = v12[3];
          v220 = v12;
          do
          {
            v221 = &v220[6 * v219];
            v222 = v221 + 6;
            v223 = (2 * v219) | 1;
            v219 = 2 * v219 + 2;
            if (v219 >= v218)
            {
              v219 = v223;
            }

            else if (v221[9].n128_u32[0] >= v221[15].n128_u32[0])
            {
              v219 = v223;
            }

            else
            {
              v222 = v221 + 12;
            }

            v224 = v222[1];
            *v220 = *v222;
            v220[1] = v224;
            v225 = v222[2];
            v226 = v222[3];
            v227 = v222[5];
            v220[4] = v222[4];
            v220[5] = v227;
            v220[2] = v225;
            v220[3] = v226;
            v220 = v222;
          }

          while (v219 <= ((v218 - 2) >> 1));
          a2 -= 6;
          if (v222 == a2)
          {
            *v222 = v308;
            v222[1] = v347;
            result = v386;
            v222[4] = v459;
            v222[5] = v495;
            v222[2] = v386;
            v222[3] = v423;
          }

          else
          {
            v228 = a2[1];
            *v222 = *a2;
            v222[1] = v228;
            v229 = a2[2];
            v230 = a2[3];
            v231 = a2[5];
            v222[4] = a2[4];
            v222[5] = v231;
            v222[2] = v229;
            v222[3] = v230;
            a2[4] = v459;
            a2[5] = v495;
            a2[2] = v386;
            a2[3] = v423;
            result = v308;
            *a2 = v308;
            a2[1] = v347;
            v232 = v222 - v12 + 96;
            if (v232 >= 97)
            {
              v233 = (-2 - 0x5555555555555555 * (v232 >> 5)) >> 1;
              v234 = &v12[6 * v233];
              v235 = v222[3].n128_i32[0];
              if (v234[3].n128_u32[0] < v235)
              {
                v521 = v222[1];
                v525 = v222[2];
                v515 = *v222;
                v507 = *(v222 + 52);
                *v510 = *(v222 + 68);
                *&v510[12] = v222[5];
                do
                {
                  v236 = v222;
                  v222 = v234;
                  v237 = v234[1];
                  *v236 = *v234;
                  v236[1] = v237;
                  v238 = v234[2];
                  v239 = v234[3];
                  v240 = v234[5];
                  v236[4] = v234[4];
                  v236[5] = v240;
                  v236[2] = v238;
                  v236[3] = v239;
                  if (!v233)
                  {
                    break;
                  }

                  v233 = (v233 - 1) >> 1;
                  v234 = &v12[6 * v233];
                }

                while (v234[3].n128_u32[0] < v235);
                *v222 = v515;
                v222[1] = v521;
                v222[2] = v525;
                v222[3].n128_u32[0] = v235;
                *(v222 + 52) = v507;
                *(v222 + 68) = *v510;
                result = *&v510[12];
                v222[5] = *&v510[12];
              }
            }
          }

          v203 = v218-- <= 2;
        }

        while (!v203);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v12[6 * (v14 >> 1)];
    v17 = a2[-3].n128_i32[0];
    if (v13 > 0x3000)
    {
      v18 = v16[3].n128_i32[0];
      if (v18 >= v12[3].n128_u32[0])
      {
        if (v17 < v18)
        {
          v282 = *v16;
          v321 = v16[1];
          v435 = v16[4];
          v471 = v16[5];
          v360 = v16[2];
          v399 = v16[3];
          v28 = a2[-1];
          v30 = a2[-4];
          v29 = a2[-3];
          v16[4] = a2[-2];
          v16[5] = v28;
          v16[2] = v30;
          v16[3] = v29;
          v31 = a2[-5];
          *v16 = *v9;
          v16[1] = v31;
          *v9 = v282;
          a2[-5] = v321;
          a2[-2] = v435;
          a2[-1] = v471;
          a2[-4] = v360;
          a2[-3] = v399;
          if (v16[3].n128_u32[0] < v12[3].n128_u32[0])
          {
            v283 = *v12;
            v322 = v12[1];
            v436 = v12[4];
            v472 = v12[5];
            v361 = v12[2];
            v400 = v12[3];
            v32 = v16[5];
            v34 = v16[2];
            v33 = v16[3];
            v12[4] = v16[4];
            v12[5] = v32;
            v12[2] = v34;
            v12[3] = v33;
            v35 = v16[1];
            *v12 = *v16;
            v12[1] = v35;
            *v16 = v283;
            v16[1] = v322;
            v16[4] = v436;
            v16[5] = v472;
            v16[2] = v361;
            v16[3] = v400;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v280 = *v12;
          v319 = v12[1];
          v433 = v12[4];
          v469 = v12[5];
          v358 = v12[2];
          v397 = v12[3];
          v19 = a2[-1];
          v21 = a2[-4];
          v20 = a2[-3];
          v12[4] = a2[-2];
          v12[5] = v19;
          v12[2] = v21;
          v12[3] = v20;
          v22 = a2[-5];
          *v12 = *v9;
          v12[1] = v22;
          goto LABEL_26;
        }

        v286 = *v12;
        v325 = v12[1];
        v439 = v12[4];
        v475 = v12[5];
        v364 = v12[2];
        v403 = v12[3];
        v44 = v16[5];
        v46 = v16[2];
        v45 = v16[3];
        v12[4] = v16[4];
        v12[5] = v44;
        v12[2] = v46;
        v12[3] = v45;
        v47 = v16[1];
        *v12 = *v16;
        v12[1] = v47;
        *v16 = v286;
        v16[1] = v325;
        v16[4] = v439;
        v16[5] = v475;
        v16[2] = v364;
        v16[3] = v403;
        if (a2[-3].n128_u32[0] < v16[3].n128_u32[0])
        {
          v280 = *v16;
          v319 = v16[1];
          v433 = v16[4];
          v469 = v16[5];
          v358 = v16[2];
          v397 = v16[3];
          v48 = a2[-1];
          v50 = a2[-4];
          v49 = a2[-3];
          v16[4] = a2[-2];
          v16[5] = v48;
          v16[2] = v50;
          v16[3] = v49;
          v51 = a2[-5];
          *v16 = *v9;
          v16[1] = v51;
LABEL_26:
          *v9 = v280;
          a2[-5] = v319;
          a2[-2] = v433;
          a2[-1] = v469;
          a2[-4] = v358;
          a2[-3] = v397;
        }
      }

      v52 = &v12[6 * v15];
      v53 = v52 - 6;
      v54 = v52[-3].n128_i32[0];
      v55 = a2[-9].n128_i32[0];
      if (v54 >= v12[9].n128_u32[0])
      {
        if (v55 < v54)
        {
          v288 = *v53;
          v327 = v53[1];
          v441 = v53[4];
          v477 = v53[5];
          v366 = v53[2];
          v405 = v53[3];
          v60 = a2[-7];
          v62 = a2[-10];
          v61 = a2[-9];
          v53[4] = a2[-8];
          v53[5] = v60;
          v53[2] = v62;
          v53[3] = v61;
          v63 = a2[-11];
          *v53 = *v10;
          v53[1] = v63;
          *v10 = v288;
          a2[-11] = v327;
          a2[-8] = v441;
          a2[-7] = v477;
          a2[-10] = v366;
          a2[-9] = v405;
          if (v53[3].n128_u32[0] < v12[9].n128_u32[0])
          {
            v367 = v12[8];
            v406 = v12[9];
            v442 = v12[10];
            v478 = v12[11];
            v289 = v12[6];
            v328 = v12[7];
            v64 = v53[1];
            v12[6] = *v53;
            v12[7] = v64;
            v65 = v53[5];
            v67 = v53[2];
            v66 = v53[3];
            v12[10] = v53[4];
            v12[11] = v65;
            v12[8] = v67;
            v12[9] = v66;
            *v53 = v289;
            v53[1] = v328;
            v53[4] = v442;
            v53[5] = v478;
            v53[2] = v367;
            v53[3] = v406;
          }
        }
      }

      else
      {
        if (v55 < v54)
        {
          v365 = v12[8];
          v404 = v12[9];
          v440 = v12[10];
          v476 = v12[11];
          v287 = v12[6];
          v326 = v12[7];
          v56 = a2[-11];
          v12[6] = *v10;
          v12[7] = v56;
          v57 = a2[-7];
          v59 = a2[-10];
          v58 = a2[-9];
          v12[10] = a2[-8];
          v12[11] = v57;
          v12[8] = v59;
          v12[9] = v58;
          goto LABEL_38;
        }

        v369 = v12[8];
        v408 = v12[9];
        v444 = v12[10];
        v480 = v12[11];
        v291 = v12[6];
        v330 = v12[7];
        v76 = v53[1];
        v12[6] = *v53;
        v12[7] = v76;
        v77 = v53[5];
        v79 = v53[2];
        v78 = v53[3];
        v12[10] = v53[4];
        v12[11] = v77;
        v12[8] = v79;
        v12[9] = v78;
        *v53 = v291;
        v53[1] = v330;
        v53[4] = v444;
        v53[5] = v480;
        v53[2] = v369;
        v53[3] = v408;
        if (a2[-9].n128_u32[0] < v53[3].n128_u32[0])
        {
          v287 = *v53;
          v326 = v53[1];
          v440 = v53[4];
          v476 = v53[5];
          v365 = v53[2];
          v404 = v53[3];
          v80 = a2[-7];
          v82 = a2[-10];
          v81 = a2[-9];
          v53[4] = a2[-8];
          v53[5] = v80;
          v53[2] = v82;
          v53[3] = v81;
          v83 = a2[-11];
          *v53 = *v10;
          v53[1] = v83;
LABEL_38:
          *v10 = v287;
          a2[-11] = v326;
          a2[-8] = v440;
          a2[-7] = v476;
          a2[-10] = v365;
          a2[-9] = v404;
        }
      }

      v84 = &v12[6 * v15];
      v85 = v84[9].n128_i32[0];
      v86 = a2[-15].n128_i32[0];
      if (v85 >= v12[15].n128_u32[0])
      {
        if (v86 < v85)
        {
          v293 = v84[6];
          v332 = v84[7];
          v446 = v84[10];
          v482 = v84[11];
          v371 = v84[8];
          v410 = v84[9];
          v91 = a2[-13];
          v93 = a2[-16];
          v92 = a2[-15];
          v84[10] = a2[-14];
          v84[11] = v91;
          v84[8] = v93;
          v84[9] = v92;
          v94 = a2[-17];
          v84[6] = *v11;
          v84[7] = v94;
          *v11 = v293;
          a2[-17] = v332;
          a2[-14] = v446;
          a2[-13] = v482;
          a2[-16] = v371;
          a2[-15] = v410;
          if (v84[9].n128_u32[0] < v12[15].n128_u32[0])
          {
            v372 = v12[14];
            v411 = v12[15];
            v447 = v12[16];
            v483 = v12[17];
            v294 = v12[12];
            v333 = v12[13];
            v95 = v84[7];
            v12[12] = v84[6];
            v12[13] = v95;
            v96 = v84[11];
            v98 = v84[8];
            v97 = v84[9];
            v12[16] = v84[10];
            v12[17] = v96;
            v12[14] = v98;
            v12[15] = v97;
            v84[6] = v294;
            v84[7] = v333;
            v84[10] = v447;
            v84[11] = v483;
            v84[8] = v372;
            v84[9] = v411;
          }
        }
      }

      else
      {
        if (v86 < v85)
        {
          v370 = v12[14];
          v409 = v12[15];
          v445 = v12[16];
          v481 = v12[17];
          v292 = v12[12];
          v331 = v12[13];
          v87 = a2[-17];
          v12[12] = *v11;
          v12[13] = v87;
          v88 = a2[-13];
          v90 = a2[-16];
          v89 = a2[-15];
          v12[16] = a2[-14];
          v12[17] = v88;
          v12[14] = v90;
          v12[15] = v89;
          goto LABEL_47;
        }

        v373 = v12[14];
        v412 = v12[15];
        v448 = v12[16];
        v484 = v12[17];
        v295 = v12[12];
        v334 = v12[13];
        v99 = v84[7];
        v12[12] = v84[6];
        v12[13] = v99;
        v100 = v84[11];
        v102 = v84[8];
        v101 = v84[9];
        v12[16] = v84[10];
        v12[17] = v100;
        v12[14] = v102;
        v12[15] = v101;
        v84[6] = v295;
        v84[7] = v334;
        v84[10] = v448;
        v84[11] = v484;
        v84[8] = v373;
        v84[9] = v412;
        if (a2[-15].n128_u32[0] < v84[9].n128_u32[0])
        {
          v292 = v84[6];
          v331 = v84[7];
          v445 = v84[10];
          v481 = v84[11];
          v370 = v84[8];
          v409 = v84[9];
          v103 = a2[-13];
          v105 = a2[-16];
          v104 = a2[-15];
          v84[10] = a2[-14];
          v84[11] = v103;
          v84[8] = v105;
          v84[9] = v104;
          v106 = a2[-17];
          v84[6] = *v11;
          v84[7] = v106;
LABEL_47:
          *v11 = v292;
          a2[-17] = v331;
          a2[-14] = v445;
          a2[-13] = v481;
          a2[-16] = v370;
          a2[-15] = v409;
        }
      }

      v107 = v16[3].n128_i32[0];
      v108 = v84[9].n128_i32[0];
      if (v107 >= v53[3].n128_u32[0])
      {
        if (v108 < v107)
        {
          v297 = *v16;
          v336 = v16[1];
          v450 = v16[4];
          v486 = v16[5];
          v375 = v16[2];
          v414 = v16[3];
          v112 = v84[11];
          v16[4] = v84[10];
          v16[5] = v112;
          v113 = v84[9];
          v16[2] = v84[8];
          v16[3] = v113;
          v114 = v84[7];
          *v16 = v84[6];
          v16[1] = v114;
          v84[6] = v297;
          v84[7] = v336;
          v84[10] = v450;
          v84[11] = v486;
          v84[8] = v375;
          v84[9] = v414;
          if (v16[3].n128_u32[0] < v53[3].n128_u32[0])
          {
            v298 = *v53;
            v337 = v53[1];
            v451 = v53[4];
            v487 = v53[5];
            v376 = v53[2];
            v415 = v53[3];
            v115 = v16[5];
            v53[4] = v16[4];
            v53[5] = v115;
            v116 = v16[3];
            v53[2] = v16[2];
            v53[3] = v116;
            v117 = v16[1];
            *v53 = *v16;
            v53[1] = v117;
            *v16 = v298;
            v16[1] = v337;
            v16[4] = v451;
            v16[5] = v487;
            v16[2] = v376;
            v16[3] = v415;
          }
        }
      }

      else
      {
        if (v108 < v107)
        {
          v296 = *v53;
          v335 = v53[1];
          v449 = v53[4];
          v485 = v53[5];
          v374 = v53[2];
          v413 = v53[3];
          v109 = v84[11];
          v53[4] = v84[10];
          v53[5] = v109;
          v110 = v84[9];
          v53[2] = v84[8];
          v53[3] = v110;
          v111 = v84[7];
          *v53 = v84[6];
          v53[1] = v111;
          goto LABEL_56;
        }

        v299 = *v53;
        v338 = v53[1];
        v452 = v53[4];
        v488 = v53[5];
        v377 = v53[2];
        v416 = v53[3];
        v118 = v16[5];
        v53[4] = v16[4];
        v53[5] = v118;
        v119 = v16[3];
        v53[2] = v16[2];
        v53[3] = v119;
        v120 = v16[1];
        *v53 = *v16;
        v53[1] = v120;
        *v16 = v299;
        v16[1] = v338;
        v16[4] = v452;
        v16[5] = v488;
        v16[2] = v377;
        v16[3] = v416;
        if (v84[9].n128_u32[0] < v16[3].n128_u32[0])
        {
          v296 = *v16;
          v335 = v16[1];
          v449 = v16[4];
          v485 = v16[5];
          v374 = v16[2];
          v413 = v16[3];
          v121 = v84[11];
          v16[4] = v84[10];
          v16[5] = v121;
          v122 = v84[9];
          v16[2] = v84[8];
          v16[3] = v122;
          v123 = v84[7];
          *v16 = v84[6];
          v16[1] = v123;
LABEL_56:
          v84[6] = v296;
          v84[7] = v335;
          v84[10] = v449;
          v84[11] = v485;
          v84[8] = v374;
          v84[9] = v413;
        }
      }

      v300 = *v12;
      v339 = v12[1];
      v453 = v12[4];
      v489 = v12[5];
      v378 = v12[2];
      v417 = v12[3];
      v124 = v16[5];
      v126 = v16[2];
      v125 = v16[3];
      v12[4] = v16[4];
      v12[5] = v124;
      v12[2] = v126;
      v12[3] = v125;
      v127 = v16[1];
      *v12 = *v16;
      v12[1] = v127;
      *v16 = v300;
      v16[1] = v339;
      v16[4] = v453;
      v16[5] = v489;
      v16[2] = v378;
      v16[3] = v417;
      goto LABEL_58;
    }

    v23 = v12[3].n128_i32[0];
    if (v23 >= v16[3].n128_u32[0])
    {
      if (v17 < v23)
      {
        v284 = *v12;
        v323 = v12[1];
        v437 = v12[4];
        v473 = v12[5];
        v362 = v12[2];
        v401 = v12[3];
        v36 = a2[-1];
        v38 = a2[-4];
        v37 = a2[-3];
        v12[4] = a2[-2];
        v12[5] = v36;
        v12[2] = v38;
        v12[3] = v37;
        v39 = a2[-5];
        *v12 = *v9;
        v12[1] = v39;
        *v9 = v284;
        a2[-5] = v323;
        a2[-2] = v437;
        a2[-1] = v473;
        a2[-4] = v362;
        a2[-3] = v401;
        if (v12[3].n128_u32[0] < v16[3].n128_u32[0])
        {
          v285 = *v16;
          v324 = v16[1];
          v438 = v16[4];
          v474 = v16[5];
          v363 = v16[2];
          v402 = v16[3];
          v40 = v12[5];
          v42 = v12[2];
          v41 = v12[3];
          v16[4] = v12[4];
          v16[5] = v40;
          v16[2] = v42;
          v16[3] = v41;
          v43 = v12[1];
          *v16 = *v12;
          v16[1] = v43;
          *v12 = v285;
          v12[1] = v324;
          v12[4] = v438;
          v12[5] = v474;
          v12[2] = v363;
          v12[3] = v402;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v23)
    {
      v281 = *v16;
      v320 = v16[1];
      v434 = v16[4];
      v470 = v16[5];
      v359 = v16[2];
      v398 = v16[3];
      v24 = a2[-1];
      v26 = a2[-4];
      v25 = a2[-3];
      v16[4] = a2[-2];
      v16[5] = v24;
      v16[2] = v26;
      v16[3] = v25;
      v27 = a2[-5];
      *v16 = *v9;
      v16[1] = v27;
LABEL_35:
      *v9 = v281;
      a2[-5] = v320;
      a2[-2] = v434;
      a2[-1] = v470;
      a2[-4] = v359;
      a2[-3] = v398;
      goto LABEL_58;
    }

    v290 = *v16;
    v329 = v16[1];
    v443 = v16[4];
    v479 = v16[5];
    v368 = v16[2];
    v407 = v16[3];
    v68 = v12[5];
    v70 = v12[2];
    v69 = v12[3];
    v16[4] = v12[4];
    v16[5] = v68;
    v16[2] = v70;
    v16[3] = v69;
    v71 = v12[1];
    *v16 = *v12;
    v16[1] = v71;
    *v12 = v290;
    v12[1] = v329;
    v12[4] = v443;
    v12[5] = v479;
    v12[2] = v368;
    v12[3] = v407;
    if (a2[-3].n128_u32[0] < v12[3].n128_u32[0])
    {
      v281 = *v12;
      v320 = v12[1];
      v434 = v12[4];
      v470 = v12[5];
      v359 = v12[2];
      v398 = v12[3];
      v72 = a2[-1];
      v74 = a2[-4];
      v73 = a2[-3];
      v12[4] = a2[-2];
      v12[5] = v72;
      v12[2] = v74;
      v12[3] = v73;
      v75 = a2[-5];
      *v12 = *v9;
      v12[1] = v75;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v128 = v12[3].n128_i32[0];
LABEL_61:
      v129 = 0;
      v517 = v12[1];
      v523 = v12[2];
      v511 = *v12;
      v505 = *(v12 + 52);
      *v508 = *(v12 + 68);
      *&v508[12] = v12[5];
      do
      {
        v130 = v12[v129 + 9].n128_i32[0];
        v129 += 6;
      }

      while (v130 < v128);
      v131 = &v12[v129];
      v132 = a2;
      if (v129 == 6)
      {
        v135 = a2;
        while (v131 < v135)
        {
          v133 = v135 - 6;
          v136 = v135[-3].n128_i32[0];
          v135 -= 6;
          if (v136 < v128)
          {
            goto LABEL_71;
          }
        }

        v133 = v135;
      }

      else
      {
        do
        {
          v133 = v132 - 6;
          v134 = v132[-3].n128_i32[0];
          v132 -= 6;
        }

        while (v134 >= v128);
      }

LABEL_71:
      v12 = v131;
      if (v131 < v133)
      {
        v137 = v133;
        do
        {
          v301 = *v12;
          v340 = v12[1];
          v454 = v12[4];
          v490 = v12[5];
          v379 = v12[2];
          v418 = v12[3];
          v138 = v137[5];
          v140 = v137[2];
          v139 = v137[3];
          v12[4] = v137[4];
          v12[5] = v138;
          v12[2] = v140;
          v12[3] = v139;
          v141 = v137[1];
          *v12 = *v137;
          v12[1] = v141;
          *v137 = v301;
          v137[1] = v340;
          v137[4] = v454;
          v137[5] = v490;
          v137[2] = v379;
          v137[3] = v418;
          do
          {
            v142 = v12[9].n128_i32[0];
            v12 += 6;
          }

          while (v142 < v128);
          do
          {
            v143 = v137[-3].n128_i32[0];
            v137 -= 6;
          }

          while (v143 >= v128);
        }

        while (v12 < v137);
      }

      v144 = v12 - 6;
      if (&v12[-6] != a1)
      {
        v145 = v12[-5];
        *a1 = *v144;
        a1[1] = v145;
        v146 = v12[-4];
        v147 = v12[-3];
        v148 = v12[-1];
        a1[4] = v12[-2];
        a1[5] = v148;
        a1[2] = v146;
        a1[3] = v147;
      }

      *v144 = v511;
      v12[-5] = v517;
      v12[-4] = v523;
      v12[-3].n128_u32[0] = v128;
      result = v505;
      v12[-1] = *&v508[12];
      *(v12 - 28) = *v508;
      *(v12 - 44) = v505;
      if (v131 < v133)
      {
        goto LABEL_82;
      }

      v149 = sub_100D23A9C(a1, &v12[-6]);
      if (sub_100D23A9C(v12, a2))
      {
        a2 = v12 - 6;
        if (!v149)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v149)
      {
LABEL_82:
        result.n128_u64[0] = sub_1001A9F5C(a1, v12 - 6, a3, a4 & 1, result).n128_u64[0];
        a4 = 0;
      }
    }

    else
    {
      v128 = v12[3].n128_i32[0];
      if (v12[-3].n128_u32[0] < v128)
      {
        goto LABEL_61;
      }

      v518 = v12[1];
      v524 = v12[2];
      v512 = *v12;
      v506 = *(v12 + 52);
      *v509 = *(v12 + 68);
      *&v509[12] = v12[5];
      if (v128 >= a2[-3].n128_u32[0])
      {
        n128_u64 = v12[6].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          v153 = *(n128_u64 + 48);
          n128_u64 += 96;
        }

        while (v128 >= v153);
      }

      else
      {
        v150 = v12;
        do
        {
          v12 = v150 + 6;
          v151 = v150[9].n128_i32[0];
          v150 += 6;
        }

        while (v128 >= v151);
      }

      v154 = a2;
      if (v12 < a2)
      {
        v155 = a2;
        do
        {
          v154 = v155 - 6;
          v156 = v155[-3].n128_i32[0];
          v155 -= 6;
        }

        while (v128 < v156);
      }

      while (v12 < v154)
      {
        v302 = *v12;
        v341 = v12[1];
        v455 = v12[4];
        v491 = v12[5];
        v380 = v12[2];
        v419 = v12[3];
        v157 = v154[5];
        v159 = v154[2];
        v158 = v154[3];
        v12[4] = v154[4];
        v12[5] = v157;
        v12[2] = v159;
        v12[3] = v158;
        v160 = v154[1];
        *v12 = *v154;
        v12[1] = v160;
        *v154 = v302;
        v154[1] = v341;
        v154[4] = v455;
        v154[5] = v491;
        v154[2] = v380;
        v154[3] = v419;
        do
        {
          v161 = v12[9].n128_i32[0];
          v12 += 6;
        }

        while (v128 >= v161);
        do
        {
          v162 = v154[-3].n128_i32[0];
          v154 -= 6;
        }

        while (v128 < v162);
      }

      v163 = v12 - 6;
      if (&v12[-6] != a1)
      {
        v164 = v12[-5];
        *a1 = *v163;
        a1[1] = v164;
        v165 = v12[-4];
        v166 = v12[-3];
        v167 = v12[-1];
        a1[4] = v12[-2];
        a1[5] = v167;
        a1[2] = v165;
        a1[3] = v166;
      }

      a4 = 0;
      *v163 = v512;
      v12[-5] = v518;
      v12[-4] = v524;
      v12[-3].n128_u32[0] = v128;
      result = v506;
      v12[-1] = *&v509[12];
      *(v12 - 28) = *v509;
      *(v12 - 44) = v506;
    }
  }

  v172 = v12[9].n128_i32[0];
  v173 = a2[-3].n128_i32[0];
  if (v172 >= v12[3].n128_u32[0])
  {
    if (v173 >= v172)
    {
      return result;
    }

    v387 = v12[8];
    v424 = v12[9];
    v460 = v12[10];
    v496 = v12[11];
    v309 = v12[6];
    v348 = v12[7];
    v241 = a2[-5];
    v12[6] = *v9;
    v12[7] = v241;
    v242 = a2[-1];
    v244 = a2[-4];
    v243 = a2[-3];
    v12[10] = a2[-2];
    v12[11] = v242;
    v12[8] = v244;
    v12[9] = v243;
    *v9 = v309;
    a2[-5] = v348;
    result = v387;
    a2[-2] = v460;
    a2[-1] = v496;
    a2[-4] = v387;
    a2[-3] = v424;
    goto LABEL_192;
  }

  if (v173 >= v172)
  {
    v313 = *v12;
    v352 = v12[1];
    v463 = v12[4];
    v499 = v12[5];
    v391 = v12[2];
    v427 = v12[3];
    v257 = v12[11];
    v12[4] = v12[10];
    v12[5] = v257;
    v258 = v12[9];
    v12[2] = v12[8];
    v12[3] = v258;
    v259 = v12[7];
    *v12 = v12[6];
    v12[1] = v259;
    v12[6] = v313;
    v12[7] = v352;
    result = v391;
    v12[10] = v463;
    v12[11] = v499;
    v12[8] = v391;
    v12[9] = v427;
    if (a2[-3].n128_u32[0] >= v12[9].n128_u32[0])
    {
      return result;
    }

    v382 = v12[8];
    v421 = v12[9];
    v457 = v12[10];
    v493 = v12[11];
    v304 = v12[6];
    v343 = v12[7];
    v260 = a2[-5];
    v12[6] = *v9;
    v12[7] = v260;
    v261 = a2[-1];
    v263 = a2[-4];
    v262 = a2[-3];
    v12[10] = a2[-2];
    v12[11] = v261;
    v12[8] = v263;
    v12[9] = v262;
  }

  else
  {
    v304 = *v12;
    v343 = v12[1];
    v457 = v12[4];
    v493 = v12[5];
    v382 = v12[2];
    v421 = v12[3];
    v174 = a2[-1];
    v176 = a2[-4];
    v175 = a2[-3];
    v12[4] = a2[-2];
    v12[5] = v174;
    v12[2] = v176;
    v12[3] = v175;
    v177 = a2[-5];
    *v12 = *v9;
    v12[1] = v177;
  }

  *v9 = v304;
  a2[-5] = v343;
  result = v382;
  a2[-2] = v457;
  a2[-1] = v493;
  a2[-4] = v382;
  a2[-3] = v421;
  return result;
}

void sub_1001AB518(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

__int16 *sub_1001AB570(__int16 *result, uint64_t a2)
{
  v3 = result;
  result[132] = 0;
  if (*(result + 152) != 1)
  {
    goto LABEL_14;
  }

  result = sub_10019A2D4(result + 7);
  if (!result)
  {
    goto LABEL_14;
  }

  v4 = **v3;
  v5 = *(*v3 + 8);
  if (v4 == v5)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4 + 96;
    do
    {
      sub_10018D404(v14);
      sub_100109D18(v14, *(a2 + 4), *(a2 + 12), *(v6 - 88), *(v6 - 80), 0.0);
      v7 = *(v6 - 48);
      v9 = v8 < v7;
      v10 = v8 >= v7 || v6 == v5;
      v6 += 96;
    }

    while (!v10);
  }

  *(v3 + 265) = v9;
  *(v3 + 264) = v9;
  v11 = sub_1001A6A10();
  result = sub_1001AB698(v11);
  if (result)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((*(*v3 + 8) - **v3) >> 5);
    result = sub_1001A6A10();
    if (v12 > *(result + 1))
    {
LABEL_14:
      *(v3 + 264) = 1;
    }
  }

  if (*(v3 + 264) == 1)
  {
    *(v3 + 11) = *(a2 + 4);
    v13 = *(a2 + 20);
  }

  else
  {
    if ((v3[76] & 1) == 0)
    {
      sub_100173BA0();
    }

    v13 = *(v3 + 11);
    *(v3 + 11) = *(v3 + 4);
  }

  *(v3 + 25) = v13;
  return result;
}

uint64_t sub_1001AB710(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102664838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102664838))
  {
    unk_102664830 = sub_101226BEC();
    __cxa_guard_release(&qword_102664838);
  }

  v2 = &unk_102664830;
  if (!byte_102664831)
  {
    v2 = (a1 + 139);
  }

  return *v2;
}

double sub_1001AB7A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xFFFF;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 44) = _Q0;
  *(a2 + 60) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 108) = 0;
  *(a2 + 100) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 96) = 4;
  *(a2 + 4) = *(a1 + 8);
  *(a2 + 20) = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  *(a2 + 36) = *(a1 + 40);
  result = *(a1 + 64);
  *(a2 + 76) = result;
  return result;
}

uint64_t sub_1001AB810(uint64_t a1, void *a2, __int128 *a3, void *a4, __int128 *a5, const std::string *a6, uint64_t a7)
{
  *a1 = 0xFFFF;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = xmmword_101C75BF0;
  v14 = a1 + 332;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 36) = _Q0;
  *(a1 + 52) = _Q0;
  *(a1 + 68) = _Q0;
  *(a1 + 84) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0xBFF0000000000000;
  *(a1 + 124) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0xFFFF;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = xmmword_101C75BF0;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = _Q0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0xBFF0000000000000;
  *(a1 + 268) = 0;
  *(a1 + 252) = 0;
  *(a1 + 260) = 0;
  *(a1 + 272) = 0xBFF0000000000000;
  *(a1 + 280) = 0x7FFFFFFF;
  *(a1 + 300) = 0;
  *(a1 + 284) = 0;
  *(a1 + 292) = 0;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0xFFFF;
  *(a1 + 324) = 0;
  *(a1 + 316) = 0;
  v36 = _Q0;
  *(a1 + 332) = xmmword_101C75BF0;
  *(a1 + 348) = _Q0;
  *(a1 + 364) = _Q0;
  *(a1 + 380) = _Q0;
  *(a1 + 396) = 0;
  *(a1 + 424) = 0;
  *(a1 + 400) = 0xBFF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 428) = 0xBFF0000000000000;
  *(a1 + 436) = 0x7FFFFFFF;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  sub_10018D404(a1 + 472);
  *(a1 + 512) = *a2;
  v20 = *a3;
  v21 = a3[2];
  *(a1 + 536) = a3[1];
  *(a1 + 552) = v21;
  *(a1 + 520) = v20;
  v22 = a3[3];
  v23 = a3[4];
  v24 = a3[5];
  *(a1 + 616) = *(a3 + 12);
  *(a1 + 584) = v23;
  *(a1 + 600) = v24;
  *(a1 + 568) = v22;
  v25 = a4[1];
  *(a1 + 624) = *a4;
  *(a1 + 632) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 640) = 0;
  if (*(a5 + 23) < 0)
  {
    sub_100007244((a1 + 648), *a5, *(a5 + 1));
  }

  else
  {
    v26 = *a5;
    *(a1 + 664) = *(a5 + 2);
    *(a1 + 648) = v26;
  }

  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  sub_1001AE1CC(a1 + 696);
  sub_1001AE1CC(a1 + 792);
  sub_1001AE284(a1 + 888);
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1504) = 0u;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 1538) = 0;
  *(a1 + 1552) = 0u;
  *(a1 + 1544) = a1 + 1552;
  *(a1 + 1568) = -1;
  sub_10018D404(a1 + 1576);
  *(a1 + 1616) = 0xFFFF;
  *(a1 + 1620) = 0u;
  *(v14 + 1304) = xmmword_101C75BF0;
  *(v14 + 1320) = v36;
  *(v14 + 1336) = v36;
  *(v14 + 1352) = v36;
  *(a1 + 1700) = 0;
  *(a1 + 1704) = 0xBFF0000000000000;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0;
  *(v14 + 1400) = 0xBFF0000000000000;
  *(a1 + 1740) = 0x7FFFFFFF;
  *(a1 + 1744) = 0;
  *(a1 + 1768) = 0;
  *(a1 + 1752) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1776) = a1 + 1784;
  *(a1 + 1800) = 0;
  *(a1 + 1804) = 257;
  *(a1 + 1808) = 0x5000001F4;
  *(a1 + 1816) = 4;
  *(v14 + 1488) = xmmword_101C89010;
  *(a1 + 1836) = 0x244480000;
  sub_1001AE288(a1 + 888, a6);
  v27 = *(a7 + 96);
  if (v27 == 1)
  {
    sub_100419914((a1 + 888), a7);
    v27 = *(a7 + 96);
  }

  if (v27 <= 0xB && ((1 << v27) & 0xC02) != 0)
  {
    v28 = *(a7 + 16);
    *a1 = *a7;
    *(a1 + 16) = v28;
    v29 = *(a7 + 32);
    v30 = *(a7 + 48);
    v31 = *(a7 + 80);
    *(a1 + 64) = *(a7 + 64);
    *(a1 + 80) = v31;
    *(a1 + 32) = v29;
    *(a1 + 48) = v30;
    v32 = *(a7 + 96);
    v33 = *(a7 + 112);
    v34 = *(a7 + 128);
    *(a1 + 140) = *(a7 + 140);
    *(a1 + 112) = v33;
    *(a1 + 128) = v34;
    *(a1 + 96) = v32;
  }

  return a1;
}

void sub_1001ABB6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 640);
  *(v1 + 640) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 632);
  if (v4)
  {
    sub_100008080(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001ABC20(uint64_t a1)
{
  v2 = a1 + 284;
  sub_10018D404(a1);
  *(v3 + 40) = 0xFFFF;
  *(v3 + 52) = 0;
  *(v3 + 44) = 0;
  *(v3 + 60) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v3 + 76) = _Q1;
  *(v3 + 92) = _Q1;
  *(v3 + 108) = _Q1;
  *(v3 + 124) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 128) = 0xBFF0000000000000;
  *(v3 + 152) = 0;
  *(v3 + 156) = 0xBFF0000000000000;
  *(v3 + 164) = 0x7FFFFFFF;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  *(v3 + 196) = 0xFFFF;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = xmmword_101C75BF0;
  *(v3 + 232) = _Q1;
  *(v3 + 248) = _Q1;
  *(v3 + 264) = 0xBFF0000000000000;
  *(v3 + 272) = 0xBFF0000000000000;
  *(v3 + 280) = 0;
  *v2 = 0xBFF0000000000000;
  *(v3 + 308) = 0;
  *(v3 + 292) = 0;
  *(v3 + 300) = 0;
  *(v3 + 312) = 0xBFF0000000000000;
  *(v3 + 320) = 0x7FFFFFFF;
  *(v3 + 340) = 0;
  *(v3 + 324) = 0;
  *(v3 + 332) = 0;
  *(v3 + 348) = 0;
  *(v3 + 352) = 0xFFFF;
  *(v3 + 364) = 0;
  *(v3 + 356) = 0;
  *(v2 + 88) = xmmword_101C75BF0;
  *(v2 + 104) = _Q1;
  *(v2 + 120) = _Q1;
  *(v2 + 136) = _Q1;
  *(v3 + 436) = 0;
  *(v3 + 464) = 0;
  *(v3 + 440) = 0xBFF0000000000000;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  *(v2 + 184) = 0xBFF0000000000000;
  *(v3 + 476) = 0x7FFFFFFF;
  *(v3 + 480) = 0;
  *(v3 + 488) = 0;
  *(v3 + 496) = 0;
  *(v3 + 504) = 0;
  *(v3 + 508) = 0;
  sub_10000EC00((v3 + 512), "N/A");
  *(a1 + 536) = 0;
  sub_10000EC00((a1 + 544), "not_set");
  sub_10000EC00((a1 + 568), "not_set");
  return a1;
}

void sub_1001ABD88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 567) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 535) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001ABDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100100690();
  if ((sub_1001AC2B4(v4) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(__p);
      v8 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136380675;
      *(&buf + 4) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as it got disabled by CLWifi1Settings!", &buf, 0xCu);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA4E9C(a1);
    }

    sub_1001E268C(a1 + 888, 1);
    return 0;
  }

  sub_1001AE290(a1);
  sub_1001E0C14(a1 + 792, a2);
  if (fabs(*(a1 + 696)) > 90.0 || fabs(*(a1 + 704)) > 180.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(__p);
      v6 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136380675;
      *(&buf + 4) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as it does not have a valid centroid!", &buf, 0xCu);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA50AC(a1);
    }

    sub_1001E268C(a1 + 888, 2);
    return 0;
  }

  (*(**(a1 + 624) + 48))(&buf);
  if (buf)
  {
    sub_100199FB0(buf);
    sub_1001E0C88(buf);
    v10 = buf;
    sub_1001ADFA4(a1 + 696, __p);
    Current = CFAbsoluteTimeGetCurrent();
    v12 = sub_1001E0C90(v10, __p, Current);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3FB0();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "WifiCalc, #warning, movingApDetector is null", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA3FD8(__p);
      v18[0] = 0;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, #warning, movingApDetector is null", v18, 2);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL isBadClientSideCentroidByMovingApDetector(const std::shared_ptr<CLMovingApDetector> &, const CLWifiAccessPoint &)", "%s\n", v16);
      if (v17 != __p)
      {
        free(v17);
      }
    }

    v12 = 0;
  }

  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3FB0();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(__p);
      v15 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136380675;
      *(&buf + 4) = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as it fails to pass cross-check with GPS/Cell!", &buf, 0xCu);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA4FA4(a1);
    }

    sub_1001E268C(a1 + 888, 3);
    return 0;
  }

  sub_1001E0C9C(a1 + 888, (a1 + 1496));
  sub_1001E95BC(a1, a2);
  if (sub_1001E0E04(a1))
  {
    sub_1001EA6AC(a1, a2);
    sub_1001E9CCC(a1 + 888, 1);
    return 1;
  }

  else
  {
    sub_1001E9CCC(a1 + 888, 0);
    if (*(a1 + 1424) != 10)
    {
      return 0;
    }

    result = 0;
    *(a2 + 181) = 1;
  }

  return result;
}

void sub_1001AC294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001AC2B4(uint64_t a1)
{
  if (qword_102664828 != -1)
  {
    sub_101B79098();
  }

  v2 = word_102664820;
  if ((word_102664820 & 0x100) == 0)
  {
    v2 = *(a1 + 137);
  }

  return v2 & 1;
}

void sub_1001AC300(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 671);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 656);
  }

  if (v4)
  {
    sub_10082C78C(a1 + 648);
  }

  sub_1001AC420(&v10);
  sub_1001B3390(v10, (a1 + 512));
  v5 = v11;
  v9[0] = v10;
  v9[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000EC00(__p, "Wifi");
  v6 = sub_100100690();
  sub_1001AC4CC(a1, v9, __p, (v6 + 80), a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_100008080(v5);
  }

  if (v11)
  {
    sub_100008080(v11);
  }
}

void sub_1001AC3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (v19)
  {
    sub_100008080(v19);
  }

  if (a19)
  {
    sub_100008080(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AC420(void *a1@<X8>)
{
  if ((atomic_load_explicit(byte_10265A588, memory_order_acquire) & 1) == 0)
  {
    sub_10194CF68();
  }

  if (!xmmword_10265A5A0 || !sub_10018E854(xmmword_10265A5A0))
  {
    sub_10082C9DC();
  }

  v2 = *(&xmmword_10265A5A0 + 1);
  *a1 = xmmword_10265A5A0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1001AC4CC(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string::size_type a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (*a2)
  {
    if (sub_10018E854(*a2))
    {
      sub_10018F1F0(*a2, &buf.__r_.__value_.__l.__data_);
      v10 = *(a1 + 672);
      if (v10)
      {
        *(a1 + 680) = v10;
        operator delete(v10);
        *(a1 + 672) = 0;
        *(a1 + 680) = 0;
        *(a1 + 688) = 0;
      }

      *(a1 + 672) = buf;
      sub_1001ACAE0(v49, a1 + 672, a4);
      sub_1001AD9CC(v49, v40);
      if (fabs(*v40) <= 90.0 && fabs(*(v40 + 1)) <= 180.0)
      {
        *(a1 + 1520) = sub_10007280C(v49);
      }

      if (*(a1 + 1488) != 1 || *(a1 + 1480) == -1)
      {
        *(a1 + 1480) = sub_1001AEBCC(v49);
        *(a1 + 1488) = v11;
        sub_1001AE000(v49, &buf);
        v12 = (a1 + 1496);
        if (*(a1 + 1519) < 0)
        {
          operator delete(*v12);
        }

        *v12 = *&buf.__r_.__value_.__l.__data_;
        *(a1 + 1512) = *(&buf.__r_.__value_.__l + 2);
      }

      if (qword_1025D4620 != -1)
      {
        sub_101AA3FB0();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 680);
        v15 = *(a1 + 672);
        if (*(a3 + 23) >= 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = *a3;
        }

        sub_10018F0D0(&v41);
        v17 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
        v18 = v41.__r_.__value_.__r.__words[0];
        sub_1001AEBD8(v40, &__p);
        v19 = &v41;
        if (v17 < 0)
        {
          v19 = v18;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 134349827;
        *(buf.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 6);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2081;
        v46 = v19;
        v47 = 2085;
        v48 = p_p;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiCalc, using %{public}zu %{public}s harvest samples for associated AP %{private}s from harvest database, computed centroid %{sensitive}s", &buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA3FD8(&buf);
        v28 = qword_1025D4628;
        v29 = *(a1 + 680);
        v30 = *(a1 + 672);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }

        sub_10018F0D0(&__p);
        v31 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v32 = __p.__r_.__value_.__r.__words[0];
        sub_1001AEBD8(v40, v37);
        v33 = &__p;
        if (v31 < 0)
        {
          v33 = v32;
        }

        LODWORD(v41.__r_.__value_.__l.__data_) = 134349827;
        *(v41.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 6);
        if (v38 >= 0)
        {
          v34 = v37;
        }

        else
        {
          v34 = v37[0];
        }

        WORD2(v41.__r_.__value_.__r.__words[1]) = 2082;
        *(&v41.__r_.__value_.__r.__words[1] + 6) = a3;
        HIWORD(v41.__r_.__value_.__r.__words[2]) = 2081;
        v42 = v33;
        v43 = 2085;
        v44 = v34;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v28, 0, "WifiCalc, using %{public}zu %{public}s harvest samples for associated AP %{private}s from harvest database, computed centroid %{sensitive}s", &v41, 42);
        v36 = v35;
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "CLWifiAccessPoint CLWifiPositionCalculatorWithAssociatedAp::calculateAssociatedApCentroidFromHarvestDatabase(std::shared_ptr<CLWifiAssociatedApHarvestDatabase>, const std::string &, const CFTimeInterval &)", "%s\n", v36);
        if (v36 != &buf)
        {
          free(v36);
        }
      }

      v21 = v40[3];
      a5[2] = v40[2];
      a5[3] = v21;
      v22 = v40[5];
      a5[4] = v40[4];
      a5[5] = v22;
      v23 = v40[1];
      *a5 = v40[0];
      a5[1] = v23;
      if (v54 < 0)
      {
        operator delete(v53);
      }

      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101AA3E94();
      }

      v26 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        sub_10018F0D0(&buf);
        v27 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        *v49 = 136380675;
        v50 = v27;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "WifiCalc, #warning, unable to compute centroid for associated AP %{private}s due to invalid harvest database", v49, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA3EA8(a1);
      }

      sub_1001AE1CC(a5);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(&buf);
      v25 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      *v49 = 136380675;
      v50 = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "WifiCalc, #warning, unable to compute centroid for associated AP %{private}s due to invalid harvest database handle", v49, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA401C(a1);
    }

    sub_1001AE1CC(a5);
  }
}

double sub_1001ACAE4(float64x2_t *a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return -1.0;
  }

  sub_101207E8C(a2);
  v4 = *a2;
  v5 = a2[1];
  v6 = *v4;
  v7 = *(v4 + 16);
  v8 = *(v4 + 48);
  v65 = *(v4 + 32);
  v66 = v8;
  v63 = v6;
  v64 = v7;
  v9 = *(v4 + 64);
  v10 = *(v4 + 80);
  v11 = *(v4 + 112);
  v69 = *(v4 + 96);
  v70 = v11;
  v67 = v9;
  v68 = v10;
  v12 = *(v4 + 128);
  v13 = *(v4 + 144);
  v14 = *(v4 + 176);
  v73 = *(v4 + 160);
  v74 = v14;
  v71 = v12;
  v72 = v13;
  if (v4 != v5)
  {
    v15 = v4;
    do
    {
      v16 = *(v4 + 24);
      *v83 = *(v4 + 8);
      v84 = v16;
      v17 = *(v4 + 40);
      v18 = *(v4 + 56);
      v19 = *(v4 + 88);
      v87 = *(v4 + 72);
      v88 = v19;
      v85 = v17;
      v86 = v18;
      v20 = *(v4 + 104);
      v21 = *(v4 + 120);
      v22 = *(v4 + 136);
      *(v91 + 12) = *(v4 + 148);
      v90 = v21;
      v91[0] = v22;
      v89 = v20;
      v23 = *(v15 + 24);
      *__p = *(v15 + 8);
      v55 = v23;
      v24 = *(v15 + 40);
      v25 = *(v15 + 56);
      v26 = *(v15 + 88);
      v58 = *(v15 + 72);
      v59 = v26;
      v56 = v24;
      v57 = v25;
      v27 = *(v15 + 104);
      v28 = *(v15 + 120);
      v29 = *(v15 + 136);
      *(v62 + 12) = *(v15 + 148);
      v61 = v28;
      v62[0] = v29;
      v60 = v27;
      sub_1001097CC(a1 + 6, v83, __p);
      if (v30 > *(sub_1001CBE20() + 10))
      {
        break;
      }

      v31 = *v15;
      v32 = v15[1];
      v33 = v15[3];
      v65 = v15[2];
      v66 = v33;
      v63 = v31;
      v64 = v32;
      v34 = v15[4];
      v35 = v15[5];
      v36 = v15[7];
      v69 = v15[6];
      v70 = v36;
      v67 = v34;
      v68 = v35;
      v37 = v15[8];
      v38 = v15[9];
      v39 = v15[11];
      v73 = v15[10];
      v74 = v39;
      v71 = v37;
      v72 = v38;
      v15 += 12;
    }

    while (v15 != v5);
  }

  v40 = *(v4 + 84) - *(&v68 + 4);
  if (v40 < 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B6FAA0();
    }

    v41 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_1001912D0(v4, v83);
      v42 = SBYTE7(v84);
      v43 = v83[0];
      sub_1001912D0(&v63, __p);
      v44 = v83;
      if (v42 < 0)
      {
        v44 = v43;
      }

      if ((SBYTE7(v55) & 0x80u) == 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = __p[0];
      }

      *buf = 136643075;
      *&buf[4] = v44;
      v76 = 2085;
      v77 = v45;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "WifiCentroidCalculator, timestamps out of order in getStationaryTimeInSeconds(), newest: %{sensitive}s, oldest: %{sensitive}s", buf, 0x16u);
      if (SBYTE7(v55) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v84) < 0)
      {
        operator delete(v83[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B6FAC8(v83);
      v46 = qword_1025D4628;
      sub_1001912D0(v4, __p);
      v47 = SBYTE7(v55);
      v48 = __p[0];
      sub_1001912D0(&v63, buf);
      v49 = __p;
      if (v47 < 0)
      {
        v49 = v48;
      }

      if (v78 >= 0)
      {
        v50 = buf;
      }

      else
      {
        v50 = *buf;
      }

      v79 = 136643075;
      v80 = v49;
      v81 = 2085;
      v82 = v50;
      _os_log_send_and_compose_impl(2, 0, v83, 1628, dword_100000000, v46, 17, "WifiCentroidCalculator, timestamps out of order in getStationaryTimeInSeconds(), newest: %{sensitive}s, oldest: %{sensitive}s", &v79, 22);
      v52 = v51;
      if (v78 < 0)
      {
        operator delete(*buf);
      }

      if (SBYTE7(v55) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100152C7C("Generic", 1, 0, 0, "double CLWifiCentroidCalculator::computeStationaryTimeInSeconds(const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v52);
      if (v52 != v83)
      {
        free(v52);
      }
    }
  }

  return v40;
}

void sub_1001ACEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001ACED8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_10019033C(a1, a2);
  }

  sub_10028C64C();
}

void sub_1001ACF24(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 136);
  *(a1 + 144) = *(a1 + 136);
  if (*a2 == a2[1])
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B6FA8C();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, empty input entries", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B6FE90();
    }
  }

  else
  {
    sub_101207E8C(a2);
    if (*(a1 + 216) == 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B6FA8C();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_10018F0D0(__p);
        if (__p[23] >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = *__p;
        }

        *buf = 136380675;
        *&buf[4] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, detected %{private}s as moving AP", buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B6FD68(a1);
      }
    }

    else
    {
      v8 = *a2;
      v9 = *(*a2 + 8);
      v85 = *(*a2 + 24);
      *buf = v9;
      v10 = *(v8 + 40);
      v11 = *(v8 + 56);
      v12 = *(v8 + 72);
      v89 = *(v8 + 88);
      v88 = v12;
      v87 = v11;
      v86 = v10;
      v13 = *(v8 + 104);
      v14 = *(v8 + 120);
      v15 = *(v8 + 136);
      *(v92 + 12) = *(v8 + 148);
      v92[0] = v15;
      v91 = v14;
      v90 = v13;
      v16 = sub_1001AD9A0(v8);
      if (qword_1025D4620 != -1)
      {
        sub_101B6FA8C();
      }

      v17 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_1001912D0(v8, __p);
        v18 = __p[23] >= 0 ? __p : *__p;
        *v70 = 136642819;
        v71 = v18;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, newest entry %{sensitive}s", v70, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B6FB0C(v8);
      }

      v19 = (a1 + 208);
      if (v16 <= *(a1 + 208))
      {
        v22 = *(sub_1001CBE20() + 8);
        v23 = *a2;
        v24 = a2[1];
        if (*a2 != v24)
        {
          do
          {
            v25 = *(v23 + 24);
            *__p = *(v23 + 8);
            *&__p[16] = v25;
            v26 = *(v23 + 40);
            v27 = *(v23 + 56);
            v28 = *(v23 + 88);
            v79 = *(v23 + 72);
            v80 = v28;
            v77 = v26;
            v78 = v27;
            v29 = *(v23 + 104);
            v30 = *(v23 + 120);
            v31 = *(v23 + 136);
            *&v83[12] = *(v23 + 148);
            v82 = v30;
            *v83 = v31;
            v81 = v29;
            sub_1001097CC((a1 + 96), buf, __p);
            if (v32 < v22)
            {
              v33 = *(a1 + 144);
              v34 = *(a1 + 152);
              if (v33 >= v34)
              {
                v45 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v2) >> 6);
                v46 = v45 + 1;
                if (v45 + 1 > 0x155555555555555)
                {
                  sub_10028C64C();
                }

                v47 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v2) >> 6);
                if (2 * v47 > v46)
                {
                  v46 = 2 * v47;
                }

                if (v47 >= 0xAAAAAAAAAAAAAALL)
                {
                  v48 = 0x155555555555555;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  sub_10019033C(v2, v48);
                }

                v49 = 192 * v45;
                v50 = *v23;
                v51 = v23[1];
                v52 = v23[3];
                *(v49 + 32) = v23[2];
                *(v49 + 48) = v52;
                *v49 = v50;
                *(v49 + 16) = v51;
                v53 = v23[4];
                v54 = v23[5];
                v55 = v23[7];
                *(v49 + 96) = v23[6];
                *(v49 + 112) = v55;
                *(v49 + 64) = v53;
                *(v49 + 80) = v54;
                v56 = v23[8];
                v57 = v23[9];
                v58 = v23[11];
                *(v49 + 160) = v23[10];
                *(v49 + 176) = v58;
                *(v49 + 128) = v56;
                *(v49 + 144) = v57;
                v44 = 192 * v45 + 192;
                v59 = *(a1 + 136);
                v60 = *(a1 + 144) - v59;
                v61 = 192 * v45 - v60;
                memcpy((v49 - v60), v59, v60);
                v62 = *(a1 + 136);
                *(a1 + 136) = v61;
                *(a1 + 144) = v44;
                *(a1 + 152) = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              else
              {
                v35 = *v23;
                v36 = v23[1];
                v37 = v23[3];
                v33[2] = v23[2];
                v33[3] = v37;
                *v33 = v35;
                v33[1] = v36;
                v38 = v23[4];
                v39 = v23[5];
                v40 = v23[7];
                v33[6] = v23[6];
                v33[7] = v40;
                v33[4] = v38;
                v33[5] = v39;
                v41 = v23[8];
                v42 = v23[9];
                v43 = v23[11];
                v33[10] = v23[10];
                v33[11] = v43;
                v33[8] = v41;
                v33[9] = v42;
                v44 = (v33 + 12);
              }

              *(a1 + 144) = v44;
            }

            v23 += 12;
          }

          while (v23 != v24);
        }

        if (qword_1025D4620 != -1)
        {
          sub_101B6FAA0();
        }

        v63 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v64 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
          v65 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6);
          *__p = 134218496;
          *&__p[4] = v64;
          *&__p[12] = 2048;
          *&__p[14] = v65;
          *&__p[22] = 2048;
          *&__p[24] = v22;
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, using %zu samples from %zu samples based on outlier threshold %.1f", __p, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101B6FAA0();
          }

          v66 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
          v67 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6);
          *v70 = 134218496;
          v71 = v66;
          v72 = 2048;
          v73 = v67;
          v74 = 2048;
          v75 = v22;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 2, "WifiCentroidCalculator, using %zu samples from %zu samples based on outlier threshold %.1f", v70, 32);
          v69 = v68;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiCentroidCalculator::computeEntriesToUse(const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v68);
          if (v69 != __p)
          {
            free(v69);
          }
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B6FAA0();
        }

        v20 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *v19;
          *__p = 134283777;
          *&__p[4] = v16;
          *&__p[12] = 2049;
          *&__p[14] = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "WifiCentroidCalculator, discarding all entries as newest entry has age %{private}.1fs, greater than %{private}.1fs", __p, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B6FC34(v19, v16);
        }
      }
    }
  }
}

BOOL sub_1001AD5F4(float64x2_t *a1, uint64_t *a2)
{
  v2 = sub_1001AD820(a1, a2);
  if (qword_1025D4620 != -1)
  {
    sub_101B6FA8C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_10018F0D0(__p);
    v4 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136380931;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, AP %{private}s has %{public}d moves", &buf, 0x12u);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B6FAA0();
    }

    v6 = qword_1025D4628;
    sub_10018F0D0(&buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v11 = 136380931;
    v12 = p_buf;
    v13 = 1026;
    v14 = v2;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v6, 2, "WifiCentroidCalculator, AP %{private}s has %{public}d moves", &v11, 18);
    v9 = v8;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiCentroidCalculator::isMovingAp(const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v9);
    if (v9 != __p)
    {
      free(v9);
    }
  }

  return v2 > *(sub_1001CBE20() + 22);
}

uint64_t sub_1001AD820(float64x2_t *a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  sub_101207E8C(a2);
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (!v5)
  {
LABEL_12:
    sub_10046F324();
  }

  v6 = *(v4 + 24);
  __dst[0] = *(v4 + 8);
  __dst[1] = v6;
  v7 = *(v4 + 40);
  v8 = *(v4 + 56);
  v9 = *(v4 + 88);
  __dst[4] = *(v4 + 72);
  __dst[5] = v9;
  __dst[2] = v7;
  __dst[3] = v8;
  v10 = *(v4 + 104);
  v11 = *(v4 + 120);
  v12 = *(v4 + 136);
  *(v31 + 12) = *(v4 + 148);
  __dst[7] = v11;
  v31[0] = v12;
  __dst[6] = v10;
  if (0xAAAAAAAAAAAAAAABLL * (v5 >> 6) < 2)
  {
    return 0;
  }

  v13 = 0;
  v14 = 1;
  v15 = 200;
  do
  {
    v16 = *(v4 + v15 + 16);
    v28[0] = *(v4 + v15);
    v28[1] = v16;
    v17 = *(v4 + v15 + 32);
    v18 = *(v4 + v15 + 48);
    v19 = *(v4 + v15 + 80);
    v28[4] = *(v4 + v15 + 64);
    v28[5] = v19;
    v28[2] = v17;
    v28[3] = v18;
    v20 = *(v4 + v15 + 96);
    v21 = *(v4 + v15 + 112);
    v22 = *(v4 + v15 + 128);
    *&v29[12] = *(v4 + v15 + 140);
    v28[7] = v21;
    *v29 = v22;
    v28[6] = v20;
    sub_1001097CC(a1 + 6, __dst, v28);
    v24 = v23;
    v25 = sub_1001CBE20();
    v4 = *a2;
    v26 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6);
    if (v24 > *(v25 + 10))
    {
      if (v26 <= v14)
      {
        goto LABEL_12;
      }

      v13 = (v13 + 1);
      memmove(__dst, (v4 + v15), 0x9CuLL);
    }

    ++v14;
    v15 += 192;
  }

  while (v14 < v26);
  return v13;
}

__n128 sub_1001AD9CC@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001ADAF4(a1);
  sub_1001ADC5C(a1);
  sub_1001ADD60(a1);
  sub_1001ADEC8(a1);
  sub_1001AE670(a1);
  sub_1001AE73C(a1, (a1 + 136));
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

long double sub_1001ADA38(uint64_t a1)
{
  if (*sub_1001CBE20() != 1)
  {
    return 1.0;
  }

  v2 = *(a1 + 168);
  if (*(sub_1001CBE20() + 2) < v2)
  {
    v2 = *(sub_1001CBE20() + 2);
  }

  if (*(sub_1001CBE20() + 1) > v2)
  {
    v2 = *(sub_1001CBE20() + 1);
  }

  v3 = *(sub_1001CBE20() + 2) - v2;
  v4 = v3 / *(sub_1001CBE20() + 3);

  return exp(v4);
}

void sub_1001ADAF4(uint64_t a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
  v3 = -180.0;
  if (v2 < *(sub_1001CBE20() + 18))
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 == v5)
  {
    goto LABEL_16;
  }

  v6 = 1.79769313e308;
  v7 = -1.79769313e308;
  v8 = *(a1 + 136);
  do
  {
    v9 = *(v8 + 20);
    v7 = fmax(v7, v9);
    v6 = fmin(v6, v9);
    v8 += 192;
  }

  while (v8 != v5);
  v10 = v6 < -179.9 && v7 > 179.9;
  if (v4 == v5)
  {
LABEL_16:
    v17 = -180.0;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = *(v4 + 12);
      v15 = *(v4 + 20);
      v16 = sub_1001ADA38(v4);
      if (v10)
      {
        v15 = fmod(v15 + 360.0, 360.0);
      }

      v13 = v13 + v16;
      v11 = v11 + v14 * v16;
      v12 = v12 + v15 * v16;
      v4 += 192;
    }

    while (v4 != v5);
    v17 = -180.0;
    if (v13 > 0.0)
    {
      v3 = v11 / v13;
      v17 = v12 / v13;
      if (v12 / v13 > 180.0)
      {
        v17 = v17 + -360.0;
      }
    }
  }

  *a1 = v3;
  *(a1 + 8) = v17;
}

void sub_1001ADC5C(uint64_t a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
  v3 = -1.0;
  if (v2 >= *(sub_1001CBE20() + 18) && fabs(*a1) <= 90.0 && fabs(*(a1 + 8)) <= 180.0)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 144);
    if (v4 != v5)
    {
      v6 = 0.0;
      v7 = 0.0;
      do
      {
        sub_100109D18((a1 + 96), *(v4 + 12), *(v4 + 20), *a1, *(a1 + 8), 0.0);
        v9 = v8;
        v10 = sub_1001ADA38(v4);
        v6 = v6 + v9 * v10 * v9;
        v7 = v7 + v10;
        v4 += 192;
      }

      while (v4 != v5);
      if (v7 > 0.0)
      {
        v3 = fmax(sqrt(v6 / v7), *(sub_1001CBE20() + 7));
      }
    }
  }

  *(a1 + 32) = v3;
}

char *sub_1001ADD60(void *a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[18] - a1[17]) >> 6);
  v3 = sub_1001CBE20();
  if (v2 >= *(v3 + 18))
  {
    v7 = a1[17];
    v8 = a1[18];
    if (v7 == v8)
    {
      goto LABEL_10;
    }

    v9 = 0.0;
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
    v12 = 0.0;
    do
    {
      LODWORD(v3) = sub_1001ADE70(v3, v7);
      if (v3)
      {
        v13 = *(v7 + 36);
        v11 = fmax(v11, v13);
        v10 = fmin(v10, v13);
        v14 = sub_1001ADA38(v7);
        v12 = v12 + v14;
        v9 = v9 + v13 * v14;
      }

      v7 += 192;
    }

    while (v7 != v8);
    if (v12 == 0.0 || (result = sub_1001CBE20(), v11 - v10 > *(result + 5)))
    {
LABEL_10:
      result = sub_1001CBE20();
      a1[2] = *(result + 6);
      v5 = -1.0;
      v6 = 5;
    }

    else
    {
      v6 = 2;
      v5 = v9 / v12;
    }
  }

  else
  {
    result = sub_1001CBE20();
    v5 = *(result + 6);
    v6 = 2;
  }

  *&a1[v6] = v5;
  return result;
}

BOOL sub_1001ADE70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  if (v3 == *(sub_1001CBE20() + 6))
  {
    return 0;
  }

  v5 = *(a2 + 44);
  return v5 <= *(sub_1001CBE20() + 4);
}

void sub_1001ADEC8(uint64_t a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
  v3 = -1.0;
  if (v2 >= *(sub_1001CBE20() + 18))
  {
    v4 = *(a1 + 16);
    v5 = sub_1001CBE20();
    if (v4 != *(v5 + 6))
    {
      v6 = *(a1 + 136);
      v7 = *(a1 + 144);
      if (v6 != v7)
      {
        v8 = 0.0;
        v9 = 0.0;
        do
        {
          LODWORD(v5) = sub_1001ADE70(v5, v6);
          if (v5)
          {
            v10 = vabdd_f64(*(a1 + 16), *(v6 + 36));
            v11 = sub_1001ADA38(v6);
            v8 = v8 + v11 * v10 * v10;
            v9 = v9 + v11;
          }

          v6 += 192;
        }

        while (v6 != v7);
        if (v9 > 0.0)
        {
          v3 = sqrt(v8 / v9);
        }
      }
    }
  }

  *(a1 + 40) = v3;
}

uint64_t sub_1001ADFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001970F8(a2, *(a1 + 72), *(a1 + 52), *(a1 + 48), 0, *(a1 + 24), -1, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), *(a1 + 64));
  *(result + 88) = *(a1 + 88);
  return result;
}

char *sub_1001AE000@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[207] < 0)
  {
    return sub_100007244(a2, *(result + 23), *(result + 24));
  }

  *a2 = *(result + 184);
  *(a2 + 16) = *(result + 25);
  return result;
}

uint64_t sub_1001AE028(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001A3E8(a1, a2);
  result = sub_1001AE054(v2, v3);
  if (result)
  {
    sub_10001A3E8(result, v5);
    return sub_10001CF3C() ^ 1;
  }

  return result;
}

BOOL sub_1001AE054(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000733FC(a1, a2);
  if (v2)
  {
    return 1;
  }

  v4 = sub_1000734AC(v2, v3);
  if (v4)
  {
    return 1;
  }

  v6 = sub_10006FE64(v4, v5);
  if (v6)
  {
    return 1;
  }

  v9 = sub_10006FDD0(v6, v7);
  if (v9)
  {
    v9 = sub_10006FEAC(v9, v10);
    if (!v9)
    {
      return 1;
    }
  }

  return sub_100718F78(v9);
}

void sub_1001AE0AC(double *a1, double *a2, uint64_t a3)
{
  if (rand() % 100 <= 0)
  {
    sub_1002E98BC(a1, a2);
    v7 = 11;
    strcpy(__p, "WifiHarvest");
    sub_1002E9B38(a1, a3, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = 10;
    strcpy(__p, "GpsHarvest");
    sub_1002E9B38(a2, a3, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1001AE1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001AE1CC@<D0>(uint64_t a1@<X8>)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  v2 = sub_100196E8C(__p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001A61B8(v2, __p);
  sub_1001A8F68(__p, a1);
  *a1 = vdupq_n_s64(0xC066800000000000);
  *(a1 + 16) = 0xC07F400000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 52) = 0xFFFFFFFFLL;
  *(a1 + 88) = 0;
  return result;
}

void sub_1001AE268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AE290(uint64_t a1)
{
  *(a1 + 1528) = 0;
  sub_1001AC300(a1, &v19);
  v2 = v22;
  *(a1 + 824) = v21;
  *(a1 + 840) = v2;
  *(a1 + 856) = v23[0];
  *(a1 + 865) = *(v23 + 9);
  v3 = v20;
  *(a1 + 792) = v19;
  *(a1 + 808) = v3;
  if (sub_1001AE028(v4, v5))
  {
    sub_1001AEC20(a1, __p);
    v6 = v17;
    *(a1 + 728) = v16;
    *(a1 + 744) = v6;
    *(a1 + 760) = v18[0];
    *(a1 + 769) = *(v18 + 9);
    v7 = v15;
    *(a1 + 696) = *__p;
    *(a1 + 712) = v7;
    sub_1001AE0AC(&v19, (a1 + 696), a1);
    if (fabs(*(a1 + 696)) <= 90.0 && fabs(*(a1 + 704)) <= 180.0)
    {
      sub_100238844(a1, &v19);
      sub_10000EC00(__p, "Valid: gnss_harvest_database");
      sub_1001E0C0C(a1 + 888, __p);
      if (SBYTE7(v15) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = 1;
      goto LABEL_20;
    }
  }

  sub_1001AF058(a1, __p);
  v8 = v17;
  *(a1 + 728) = v16;
  *(a1 + 744) = v8;
  *(a1 + 760) = v18[0];
  *(a1 + 769) = *(v18 + 9);
  v9 = v15;
  *(a1 + 696) = *__p;
  *(a1 + 712) = v9;
  sub_1001AE0AC(&v19, (a1 + 696), a1);
  if (fabs(*(a1 + 696)) <= 90.0 && fabs(*(a1 + 704)) <= 180.0)
  {
    sub_100238844(a1, &v19);
    sub_10000EC00(__p, "Valid: local_store");
    sub_1001E0C0C(a1 + 888, __p);
    if (SBYTE7(v15) < 0)
    {
      operator delete(__p[0]);
    }

    v11 = 3;
    goto LABEL_20;
  }

  v10 = sub_100100690();
  if (sub_1001E49C8(v10) && fabs(*&v19) <= 90.0 && fabs(*(&v19 + 1)) <= 180.0)
  {
    sub_10000EC00(__p, "Valid: wifi_harvest_database");
    sub_1001E0C0C(a1 + 888, __p);
    if (SBYTE7(v15) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = v22;
    *(a1 + 728) = v21;
    *(a1 + 744) = v12;
    *(a1 + 760) = v23[0];
    *(a1 + 769) = *(v23 + 9);
    v13 = v20;
    *(a1 + 696) = v19;
    *(a1 + 712) = v13;
    v11 = 2;
LABEL_20:
    *(a1 + 1528) = v11;
    return;
  }

  sub_10000EC00(__p, "Invalid");
  sub_1001E0C0C(a1 + 888, __p);
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001AE51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001AE544(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_1001AE1CC(a1);
  sub_10018D404(a1 + 96);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *a3;
  *(a1 + 216) = 0;
  if (*a2 == a2[1])
  {
    *(a1 + 160) = 0xBFF0000000000000;
  }

  else
  {
    *(a1 + 72) = **a2;
    sub_101207A44(a2, __p);
    *(a1 + 160) = sub_1001ACAE4(a1, __p);
    *(a1 + 216) = sub_1001AD5F4(a1, __p);
    sub_1001ACF24(a1, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_1001AE62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (*(v11 + 207) < 0)
  {
    operator delete(*v13);
  }

  v15 = *v12;
  if (*v12)
  {
    *(v11 + 144) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AE670(uint64_t a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
  if (v2 < *(sub_1001CBE20() + 18) || fabs(*a1) > 90.0 || fabs(*(a1 + 8)) > 180.0 || (v3 = *(a1 + 136), v4 = *(a1 + 144), v3 == v4))
  {
    v5 = -1;
  }

  else
  {
    v5 = -1;
    do
    {
      sub_100109D18((a1 + 96), *(v3 + 12), *(v3 + 20), *a1, *(a1 + 8), 0.0);
      v5 = fmax(v5, v6);
      v3 += 192;
    }

    while (v3 != v4);
  }

  *(a1 + 52) = v5;
}

void sub_1001AE73C(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return;
  }

  sub_101207E8C(a2);
  v4 = *a2;
  v5 = (a2[1] - *a2) >> 6;
  *(a1 + 168) = *(*a2 + 184);
  *(a1 + 176) = 1;
  sub_100191B4C(v4, buf);
  v6 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    operator delete(*v6);
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * v5;
  *v6 = *buf;
  *(a1 + 200) = *&buf[16];
  if (*(v4 + 184) != -1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B6FAA0();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 184);
      if (*(a1 + 207) < 0)
      {
        v9 = *v6;
      }

      *buf = 136380931;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiCentroidCalculator, inferred associated AP LOI type %{private}s using newest sample out of %zu samples", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B6FAA0();
      }

      if (*(a1 + 207) < 0)
      {
        v6 = *v6;
      }

      v29 = 136380931;
      v30 = v6;
      v31 = 2048;
      v32 = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiCentroidCalculator, inferred associated AP LOI type %{private}s using newest sample out of %zu samples", &v29, 22, *v28, *&v28[8], *&v28[24]);
      goto LABEL_39;
    }

    return;
  }

  sub_1001ADFA4(a1, buf);
  sub_1001AB7A0(buf, &v29);
  v11 = *a2;
  v10 = a2[1];
  if (v10 == *a2)
  {
    return;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v11 + v12;
    if (*(v11 + v12 + 184) != -1)
    {
      break;
    }

LABEL_18:
    ++v13;
    v12 += 192;
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 6) <= v13)
    {
      return;
    }
  }

  v15 = *(v14 + 24);
  *buf = *(v14 + 8);
  *&buf[16] = v15;
  v16 = *(v14 + 40);
  v17 = *(v14 + 56);
  v18 = *(v14 + 88);
  v35 = *(v14 + 72);
  v36 = v18;
  *&buf[32] = v16;
  v34 = v17;
  v19 = *(v14 + 104);
  v20 = *(v14 + 120);
  v21 = *(v14 + 136);
  *(v39 + 12) = *(v14 + 148);
  v38 = v20;
  v39[0] = v21;
  v37 = v19;
  sub_1001097CC((a1 + 96), &v29, buf);
  v23 = v22;
  if (v22 > *(sub_1001CBE20() + 8))
  {
    v11 = *a2;
    v10 = a2[1];
    goto LABEL_18;
  }

  *(a1 + 168) = *(v11 + v12 + 184);
  *(a1 + 176) = 1;
  sub_100191B4C(v11 + v12, buf);
  if (*(a1 + 207) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *buf;
  *(a1 + 200) = *&buf[16];
  if (qword_1025D4620 != -1)
  {
    sub_101B6FAA0();
  }

  v24 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v25 = (a1 + 184);
    if (*(a1 + 207) < 0)
    {
      v25 = *v6;
    }

    *buf = 136381443;
    *&buf[4] = v25;
    *&buf[12] = 1024;
    *&buf[14] = v13 + 1;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 2048;
    *&buf[30] = v23;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "WifiCentroidCalculator, inferred associated AP LOI type %{private}s using sample %d / %zu, distance %.1fm", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B6FAA0();
    }

    if (*(a1 + 207) < 0)
    {
      v6 = *v6;
    }

    *v28 = 136381443;
    *&v28[4] = v6;
    *&v28[12] = 1024;
    *&v28[14] = v13 + 1;
    *&v28[18] = 2048;
    *&v28[20] = v7;
    *&v28[28] = 2048;
    *&v28[30] = v23;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "WifiCentroidCalculator, inferred associated AP LOI type %{private}s using sample %d / %zu, distance %.1fm", v28, 38, *v28, *&v28[8], *&v28[24]);
LABEL_39:
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiCentroidCalculator::inferLocationOfInterestType(const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }
}

void *sub_1001AEBD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1001ADFA4(a1, v5);
  sub_1001AB7A0(v5, v4);
  return sub_1001D78F4(a2);
}

void sub_1001AEC20(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 671);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 656);
  }

  if (v4)
  {
    sub_10082C75C(a1 + 648);
  }

  sub_1001CBD74(&v10);
  sub_1001B3390(v10, (a1 + 512));
  v5 = v11;
  v9[0] = v10;
  v9[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000EC00(__p, "GPS");
  v6 = sub_100100690();
  sub_1001AC4CC(a1, v9, __p, (v6 + 88), a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_100008080(v5);
  }

  if (v11)
  {
    sub_100008080(v11);
  }
}

void sub_1001AECFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (v19)
  {
    sub_100008080(v19);
  }

  if (a19)
  {
    sub_100008080(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AED40(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4)
  {
    v5 = (v4 >> 8) + 1;
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 8)
  {
    v7 = v6 >> 8;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 8)
  {
    for (a1[4] = v6 - (v7 << 8); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_10045E430(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_10045E858(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 8; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_10045E430(a1, v16);
    }
  }
}

void sub_1001AEFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AF058(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001AE1CC(a2);
  if (sub_1001AF614())
  {
    v4 = sub_1001AB6B4(*(a1 + 624));
    if (v4 && (v5 = v4, ([v4 isValid] & 1) != 0))
    {
      [v5 purgeOlderRecords];
      if (qword_1025D4620 != -1)
      {
        sub_101AA3E94();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        objc_msgSend_getBasicInfo(v5);
        v7 = __p[23] >= 0 ? __p : *__p;
        *buf = 136642819;
        v38 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, fetching associated AP centroid from local store, %{sensitive}s", buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA4210();
      }

      v8 = [v5 fetchRecord:sub_10023A2FC(a1)];
      if (v8)
      {
        Current = CFAbsoluteTimeGetCurrent();
        [v8 lastUpdated];
        v11 = v10;
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v12 = Current - v11;
        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [objc_msgSend(v8 "description")];
          *__p = 136643075;
          *&__p[4] = v14;
          *&__p[12] = 2049;
          *&__p[14] = v12;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, found associated AP centroid from local store: %{sensitive}s, age: %{private}.1fs", __p, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA4314(v8, v12);
        }

        [v8 latitude];
        *a2 = v15;
        [v8 longitude];
        *(a2 + 8) = v16;
        [v8 altitude];
        *(a2 + 16) = v17;
        [v8 horizontalAccuracy];
        *(a2 + 32) = v18;
        [v8 verticalAccuracy];
        *(a2 + 40) = v19;
        *(a2 + 52) = [v8 reach];
        [v8 stationaryTimeInSeconds];
        *(a1 + 1520) = v20;
        sub_10000EC00(__p, [objc_msgSend(v8 "loiType")]);
        v21 = (a1 + 1496);
        if (*(a1 + 1519) < 0)
        {
          operator delete(*v21);
        }

        *v21 = *__p;
        *(a1 + 1512) = *&__p[16];
        if (*(a1 + 1519) < 0)
        {
          v27 = *(a1 + 1504);
          if (v27 <= 5)
          {
            if (v27 != 3)
            {
              if (v27 == 4)
              {
                if (**v21 == 1701670728)
                {
LABEL_92:
                  v29 = 0;
                  v28 = 0;
                  goto LABEL_93;
                }

                v23 = **v21;
                goto LABEL_52;
              }

LABEL_88:
              v29 = 0;
              v31 = 0;
              v28 = 0;
              goto LABEL_89;
            }

            if (**v21 != 31047 || *(*v21 + 2) != 109)
            {
              goto LABEL_88;
            }

            goto LABEL_83;
          }

          if (v27 != 6)
          {
            if (v27 != 7)
            {
              goto LABEL_88;
            }

            v21 = *v21;
            goto LABEL_60;
          }

          if (**v21 != 1869112147 || *(*v21 + 2) != 27759)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v22 = *(a1 + 1519);
          if (v22 <= 5)
          {
            if (v22 != 3)
            {
              if (v22 == 4)
              {
                v23 = *v21;
                if (*v21 == 1701670728)
                {
                  goto LABEL_92;
                }

LABEL_52:
                if (v23 == 1802661719)
                {
                  v28 = 0;
                  v29 = 1;
LABEL_93:
                  v31 = 1;
                  goto LABEL_89;
                }

                goto LABEL_88;
              }

              goto LABEL_88;
            }

            if (*v21 != 31047 || *(a1 + 1498) != 109)
            {
              goto LABEL_88;
            }

LABEL_83:
            v28 = 0;
            v31 = 1;
            v29 = 3;
            goto LABEL_89;
          }

          if (v22 != 6)
          {
            if (v22 != 7)
            {
              goto LABEL_88;
            }

LABEL_60:
            if (*v21 != 1852534357 || *(v21 + 3) != 1853321070)
            {
              goto LABEL_88;
            }

            v28 = -256;
            v31 = 1;
            v29 = 255;
LABEL_89:
            *(a1 + 1480) = v28 | v29;
            *(a1 + 1488) = v31;

            return;
          }

          if (*v21 != 1869112147 || *(a1 + 1500) != 27759)
          {
            goto LABEL_88;
          }
        }

        v28 = 0;
        v31 = 1;
        v29 = 2;
        goto LABEL_89;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101AA3FB0();
      }

      v26 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, could not find associated AP centroid from local store", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA4454();
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101AA3E94();
      }

      v25 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip fetching associated AP centroid from local store as the store is invalid", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA4540();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip fetching associated AP centroid from local store as it is disabled by settings", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA4124();
    }
  }
}

uint64_t sub_1001AF614()
{
  v32 = 0;
  sub_10001CAF4(&buf);
  v0 = sub_10001CB4C(buf, "iCloudSharingEnabled", &v32, 0xFFFFFFFFLL);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019DB1F0();
    }

    v1 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if (v32)
      {
        v2 = "true";
      }

      else
      {
        v2 = "false";
      }

      LODWORD(buf) = 136380675;
      *(&buf + 4) = v2;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "CLWifi1Settings, #Warning defaults write iCloudSharingEnabled to %{private}s", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DB370(&v32);
    }

    v3 = &v32;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019DB1F0();
    }

    v4 = qword_1025D4628;
    v5 = os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      sub_10001A3E8(v5, v6);
      sub_1001AF89C(&buf);
      v7 = v34 >= 0 ? &buf : buf;
      *v35 = 136446210;
      v36 = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWifi1Settings, system version: %{public}s", v35, 0xCu);
      if (v34 < 0)
      {
        operator delete(buf);
      }
    }

    v8 = sub_10000A100(121, 2);
    if (v8)
    {
      sub_1019DB218();
    }

    v10 = sub_10001A3E8(v8, v9);
    v12 = sub_10001CF04(v10, v11);
    if (v12)
    {
      v3 = sub_100100690() + 117;
    }

    else
    {
      sub_10001A3E8(v12, v13);
      v14 = sub_10001CF3C();
      if (v14)
      {
        v3 = sub_100100690() + 120;
      }

      else
      {
        v17 = sub_10001A3E8(v14, v15);
        v19 = sub_10003FFF8(v17, v18);
        v20 = v19;
        v22 = sub_10001A3E8(v19, v21);
        if (v20)
        {
          v24 = sub_1001AE054(v22, v23);
          v25 = sub_100100690();
          if (v24)
          {
            v3 = v25 + 118;
          }

          else
          {
            v3 = v25 + 119;
          }
        }

        else
        {
          v26 = sub_1007194F0(v22, v23);
          if (v26)
          {
            v3 = sub_100100690() + 122;
          }

          else
          {
            v28 = sub_10001A3E8(v26, v27);
            v30 = sub_1007195F0(v28, v29);
            v31 = sub_100100690();
            if (v30)
            {
              v3 = v31 + 123;
            }

            else
            {
              v3 = v31 + 126;
            }
          }
        }
      }
    }
  }

  return *v3;
}

void sub_1001AF87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001AF89C@<X0>(void *a1@<X8>)
{
  v2 = _CFCopyServerVersionDictionary();
  if (!v2)
  {
    v2 = _CFCopySystemVersionDictionary();
  }

  v3 = [v2 objectForKey:_kCFSystemVersionProductVersionKey];
  v4 = [v2 objectForKey:_kCFSystemVersionProductNameKey];
  v5 = [v2 objectForKey:_kCFSystemVersionBuildVersionKey];
  v6 = @"???";
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = @"???";
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = @"???";
  }

  if (v5)
  {
    v6 = v5;
  }

  v9 = [NSString stringWithFormat:@"%@ %@ (%@)", v7, v8, v6];

  v10 = [(NSString *)v9 UTF8String];

  return sub_10000EC00(a1, v10);
}

void sub_1001AFBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  a23 = &a15;
  sub_1002394D8(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AFC18(uint64_t a1, void *a2)
{
  result = sub_10018E854(a1);
  if (result)
  {
    if (qword_1025D4850 != -1)
    {
      sub_10194D038();
    }

    v5 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      std::operator+<char>();
      sub_1001912D0(a2, v40);
      v6 = __p;
      if (v39 < 0)
      {
        v6 = __p[0];
      }

      if (v43 >= 0)
      {
        v7 = v40;
      }

      else
      {
        v7 = *v40;
      }

      *buf = 136315395;
      *&buf[4] = v6;
      v31 = 2085;
      v32 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "%s, adding associated AP harvest sample: %{sensitive}s", buf, 0x16u);
      if (v43 < 0)
      {
        operator delete(*v40);
      }

      if (v39 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194CFF4(__p);
      v14 = off_1025D4858;
      std::operator+<char>();
      v15 = v43;
      v16 = *v40;
      sub_1001912D0(a2, buf);
      v17 = v40;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if (v33 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      v34 = 136315395;
      v35 = v17;
      v36 = 2085;
      v37 = v18;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v14, 0, "%s, adding associated AP harvest sample: %{sensitive}s", &v34, 22);
      v20 = v19;
      if (v33 < 0)
      {
        operator delete(*buf);
      }

      if (v43 < 0)
      {
        operator delete(*v40);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::addHarvestSample(const CLWifiHarvestDatabaseEntry &)", "%s\n", v20);
      if (v20 != __p)
      {
        free(v20);
      }
    }

    *(a1 + 256) = *a2;
    if (sub_1001B00D0(a1, a2))
    {
      return 1;
    }

    else
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v8 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        v9 = v39;
        v10 = __p[0];
        v11 = sub_10018E854(a1);
        v12 = __p;
        v13 = "invalid";
        if (v9 < 0)
        {
          v12 = v10;
        }

        if (v11)
        {
          v13 = "valid";
        }

        *v40 = 136315394;
        *&v40[4] = v12;
        v41 = 2080;
        v42 = v13;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "%s, #warning, could not insert associated AP harvest sample into %s database!", v40, 0x16u);
        if (v39 < 0)
        {
          operator delete(__p[0]);
        }
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_10194CFF4(__p);
        v21 = off_1025D4858;
        std::operator+<char>();
        v22 = v43;
        v23 = *v40;
        v24 = sub_10018E854(a1);
        v25 = v40;
        v26 = "invalid";
        if (v22 < 0)
        {
          v25 = v23;
        }

        if (v24)
        {
          v26 = "valid";
        }

        *buf = 136315394;
        *&buf[4] = v25;
        v31 = 2080;
        v32 = v26;
        LODWORD(v29) = 22;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 0, "%s, #warning, could not insert associated AP harvest sample into %s database!", buf, v29);
        v28 = v27;
        if (v43 < 0)
        {
          operator delete(*v40);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::addHarvestSample(const CLWifiHarvestDatabaseEntry &)", "%s\n", v28);
        if (v28 != __p)
        {
          free(v28);
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_1001B0090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B00D0(uint64_t a1, uint64_t a2)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(v41);
    v3 = sub_100038730(&v42, "INSERT OR REPLACE INTO ", 23);
    v4 = (a1 + 232);
    if (*(a1 + 255) < 0)
    {
      v4 = *v4;
    }

    v5 = strlen(v4);
    v6 = sub_100038730(v3, v4, v5);
    v7 = sub_100038730(v6, "(", 3);
    v8 = sub_100038730(v7, "MAC", 3);
    v9 = sub_100038730(v8, ",", 1);
    v10 = sub_100038730(v9, "Channel", 7);
    v11 = sub_100038730(v10, ",", 1);
    v12 = sub_100038730(v11, "Rssi", 4);
    v13 = sub_100038730(v12, ",", 1);
    v14 = sub_100038730(v13, "ScanTimestamp", 13);
    v15 = sub_100038730(v14, ",", 1);
    v16 = strlen("Timestamp");
    v17 = sub_100038730(v15, "Timestamp", v16);
    v18 = sub_100038730(v17, ",", 1);
    v19 = strlen("Latitude");
    v20 = sub_100038730(v18, "Latitude", v19);
    v21 = sub_100038730(v20, ",", 1);
    v22 = strlen("Longitude");
    v23 = sub_100038730(v21, "Longitude", v22);
    v24 = sub_100038730(v23, ",", 1);
    v25 = strlen("HorizontalAccuracy");
    v26 = sub_100038730(v24, "HorizontalAccuracy", v25);
    v27 = sub_100038730(v26, ",", 1);
    v28 = strlen("Altitude");
    v29 = sub_100038730(v27, "Altitude", v28);
    v30 = sub_100038730(v29, ",", 1);
    v31 = strlen("VerticalAccuracy");
    v32 = sub_100038730(v30, "VerticalAccuracy", v31);
    v33 = sub_100038730(v32, ",", 1);
    v34 = sub_100038730(v33, "LoiType", 7);
    v35 = sub_100038730(v34, ") VALUES ", 9);
    sub_100038730(v35, "(?,?,?,?,?,?,?,?,?,?,?);", 24);
    sub_100073518(v41, __p);
    if (v40 >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    sub_1000388D8(a1 + 64, v36);
  }

  if (qword_1025D4850 != -1)
  {
    sub_101AE3294();
  }

  v37 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call insertOrReplace() without a backing database in CLWifiHarvestDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE32A8();
  }

  return 0;
}

void sub_1001B08E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B0960(uint64_t a1)
{
  v1 = a1;
  v3 = *(a1 + 16);
  (*(*v3 + 16))(v3);
  LODWORD(v1) = sqlite3_changes(*(v1 + 8));
  (*(*v3 + 24))(v3);
  return v1;
}

void sub_1001B09FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

double sub_1001B0A10(uint64_t a1)
{
  v1 = (a1 + 8);
  v5 = *(a1 + 8);
  sub_10001CAF4(&buf);
  v2 = sub_1000B9370(buf, "databasePurgeThreshold", &v5);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B78E54();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134283521;
      *(&buf + 4) = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLWifi1Settings, #Warning defaults write databasePurgeThreshold to %{private}.1f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B793B8();
    }

    v1 = &v5;
  }

  return *v1;
}

void sub_1001B0B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B0B4C(uint64_t a1, double *a2)
{
  v4 = a1 + 8;
  (*(*a1 + 16))(__p);
  sub_1001B0C14(a2, a1 + 64, v4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001B0BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001B0BEC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[255] < 0)
  {
    return sub_100007244(a2, *(result + 29), *(result + 30));
  }

  *a2 = *(result + 232);
  *(a2 + 16) = *(result + 31);
  return result;
}

id *sub_1001B0C14(double *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  sub_10000FF38(v27, "CLLocationDatabase::clearLocationsByAge", 0);
  if (sub_100023B68(a2))
  {
    if (*(a3 + 8) != 1)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1001B1FD8;
      v26[3] = &unk_102463E88;
      v26[4] = a1;
      v26[5] = a4;
      v26[6] = mach_absolute_time();
      v26[7] = v26;
      sub_10003848C(v24);
      v13 = sub_100038730(&v25, "DELETE FROM ", 12);
      v14 = *(a4 + 23);
      if (v14 >= 0)
      {
        v15 = a4;
      }

      else
      {
        v15 = *a4;
      }

      if (v14 >= 0)
      {
        v16 = *(a4 + 23);
      }

      else
      {
        v16 = a4[1];
      }

      v17 = sub_100038730(v13, v15, v16);
      v18 = sub_100038730(v17, " WHERE ", 7);
      v19 = sub_100038730(v18, "Timestamp", 9);
      v20 = sub_100038730(v19, " < ? OR ", 8);
      v21 = sub_100038730(v20, "Timestamp", 9);
      sub_100038730(v21, " > ?", 4);
      sub_100073518(v24, buf);
      if (v29 >= 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      sub_1000388D8(a2, v22);
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018F331C();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Can't clear locations by age in read-only database", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F3344(buf);
      LOWORD(v24[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Can't clear locations by age in read-only database", v24, 2);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 0, "static void CLLocationDatabase::clearLocationsByAge(const CFTimeInterval &, CLSqliteDatabase &, const CLSqliteDatabase::SqliteProperties &, const std::string &)", "%s\n", v9);
      goto LABEL_15;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018F3718();
    }

    v11 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call clearLocationsByAge() without a backing database in CLLocationDatabase!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F3AFC(buf);
      LOWORD(v24[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4858, 2, "#Warning Attempt to call clearLocationsByAge() without a backing database in CLLocationDatabase!", v24, 2);
      v10 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationDatabase::clearLocationsByAge(const CFTimeInterval &, CLSqliteDatabase &, const CLSqliteDatabase::SqliteProperties &, const std::string &)", "%s\n", v12);
LABEL_15:
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return sub_10001A420(v27);
}

void sub_1001B163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55)
{
  if (v55)
  {
    (*(*v55 + 8))(v55, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a11);
  sub_10010069C(&a53);
  sub_10001A420(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B16EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v30[2] = v4;
  v5 = (*(*v4 + 16))(v4);
  v31 = 256;
  if (*(a1 + 56) == 1)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v8 = *v8;
      }

      *buf = 68289282;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2082;
      v37 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Attempt to reduceFreePages on readonly database, path:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v9 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v10 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v10 = *v10;
      }

      *buf = 68289282;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2082;
      v37 = v10;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Attempt to reduceFreePages on readonly database", "{msg%{public}.0s:Attempt to reduceFreePages on readonly database, path:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v11 = 2;
    goto LABEL_65;
  }

  v12 = sub_1001B1CF8(v5, v6);
  if (sub_1001B1CF0(v12))
  {
    sub_10000FF38(v30, "IncrementalVacuum", 0);
    v29[0] = mach_absolute_time();
    v29[1] = &stru_102463EC8;
    v28 = 0;
    if (sub_1001B1D30(*(a1 + 8), "pragma page_count;", &v28))
    {
      v13 = v28;
    }

    else
    {
      v13 = -1;
    }

    if (sub_1001B1D30(*(a1 + 8), "pragma freelist_count;", &v28))
    {
      v14 = v28;
    }

    else
    {
      v14 = -1;
    }

    v15 = v13 - v14;
    if (v13)
    {
      v16 = v15 / v13;
    }

    else
    {
      v16 = 1.0;
    }

    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v19 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v20 = *v20;
      }

      *buf = 68290306;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2082;
      v37 = v20;
      v38 = 2050;
      v39 = v13;
      v40 = 2050;
      v41 = v14;
      v42 = 2050;
      v43 = v16;
      v44 = 2050;
      v45 = a2;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reduceFreePages, path:%{public, location:escape_only}s, page_count:%{public}lld, freelist_count:%{public}lld, loadFactor:%{public}f, incrementalVacuumPageLimit:%{public}lld}", buf, 0x44u);
    }

    if (!v14)
    {
      goto LABEL_42;
    }

    if (v13 < 0 || (v14 & 0x8000000000000000) != 0)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v21 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        v22 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v22 = *v22;
        }

        *buf = 68289282;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2082;
        v37 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot reduceFreePages, path:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }
      }

      v23 = off_1025D4858;
      if (os_signpost_enabled(off_1025D4858))
      {
        v24 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v24 = *v24;
        }

        *buf = 68289282;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2082;
        v37 = v24;
        _os_signpost_emit_with_name_impl(dword_100000000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot reduceFreePages", "{msg%{public}.0s:Cannot reduceFreePages, path:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      v11 = 4;
      goto LABEL_64;
    }

    if (v16 <= 0.85 || v14 >= 0x200)
    {
      if (v16 >= 0.4)
      {
        v25 = (v14 * 0.8);
      }

      else
      {
        v25 = v14 - v15;
      }

      if (v25 >= a2)
      {
        v26 = a2;
      }

      else
      {
        v26 = v25;
      }

      if (sub_100617784(a1, v26))
      {
        v11 = v25 > a2;
      }

      else
      {
        v11 = 4;
      }
    }

    else
    {
LABEL_42:
      v11 = 0;
    }

LABEL_64:
    sub_10010069C(v29);
    sub_10001A420(v30);
    goto LABEL_65;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v17 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v18 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v18 = *v18;
    }

    *buf = 68289282;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2082;
    v37 = v18;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Attempt to reduceFreePages with incremental vacuum disabled, path:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = 3;
LABEL_65:
  (*(*v4 + 24))(v4);
  return v11;
}

uint64_t sub_1001B1CF8(uint64_t a1, uint64_t a2)
{
  if (qword_10265EB38 != -1)
  {
    sub_101A89CB4();
  }

  return qword_102637D68;
}

BOOL sub_1001B1D30(sqlite3_stmt *a1, char *a2, sqlite3_int64 *a3)
{
  v5 = sub_100038FF4(a1, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sqlite3_step(v5);
  v8 = v7 == 100;
  if (v7 == 100)
  {
    *a3 = sqlite3_column_int64(v6, 0);
  }

  sub_1001B1DA0(a1, v6);
  return v8;
}

void sub_1001B1DA0(sqlite3 *a1, sqlite3_stmt *pStmt)
{
  v5 = sqlite3_finalize(pStmt);
  if (v5)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v3 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        v4 = sqlite3_errmsg(a1);
      }

      else
      {
        v4 = "no database";
      }

      *buf = 68289795;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 1040;
      v11 = 4;
      v12 = 2098;
      v13 = &v5;
      v14 = 2081;
      v15 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Finalized statement previously failed, rc:%{public, location:SqliteResult}.*P, errmsg:%{private, location:escape_only}s}", buf, 0x2Cu);
    }
  }
}

void sub_1001B1EC0(id a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_1000080EC(a3 - a2);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v6 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68290050;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "elapsed";
    v12 = 2050;
    v13 = a2;
    v14 = 2050;
    v15 = a3;
    v16 = 2050;
    v17 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reduceFreePages, event:%{public, location:escape_only}s, begin_mach:%{public}llu, end_mach:%{public}llu, elapsed_s:%{public}.09f}", v7, 0x3Au);
  }
}

void sub_1001B1FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000080EC(a3 - a2);
  if (qword_1025D4600 != -1)
  {
    sub_1018F3B40();
  }

  v7 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = **(a1 + 32);
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    v10[0] = 68290563;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "elapsed";
    v15 = 2050;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    v19 = 2050;
    v20 = v6;
    v21 = 2050;
    v22 = v9;
    v23 = 2081;
    v24 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLLocationDatabase::clearLocationsByAge, event:%{public, location:escape_only}s, begin_mach:%{public}llu, end_mach:%{public}llu, elapsed_s:%{public}.09f, age_s:%{public}.09f, tableName:%{private, location:escape_only}s}", v10, 0x4Eu);
  }
}

void sub_1001B211C(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_1001B2710(a2, &v39);
  v3 = v39;
  v4 = v40;
  if (v39 != v40)
  {
    do
    {
      v38 = *v3;
      v41 = &v38;
      v5 = sub_1001B2C5C(a1, &v38, &unk_101C66300, &v41);
      v6 = v5;
      v7 = v5[4];
      v8 = v5[5];
      if (v7 >= v8)
      {
        v19 = v5[3];
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v19) >> 6);
        v21 = v20 + 1;
        if (v20 + 1 > 0x155555555555555)
        {
          sub_10028C64C();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v19) >> 6);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0xAAAAAAAAAAAAAALL)
        {
          v23 = 0x155555555555555;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          sub_10019033C((v5 + 3), v23);
        }

        v24 = 192 * v20;
        v25 = *v3;
        v26 = v3[1];
        v27 = v3[3];
        *(v24 + 32) = v3[2];
        *(v24 + 48) = v27;
        *v24 = v25;
        *(v24 + 16) = v26;
        v28 = v3[4];
        v29 = v3[5];
        v30 = v3[7];
        *(v24 + 96) = v3[6];
        *(v24 + 112) = v30;
        *(v24 + 64) = v28;
        *(v24 + 80) = v29;
        v31 = v3[8];
        v32 = v3[9];
        v33 = v3[11];
        *(v24 + 160) = v3[10];
        *(v24 + 176) = v33;
        *(v24 + 128) = v31;
        *(v24 + 144) = v32;
        v18 = 192 * v20 + 192;
        v34 = v5[3];
        v35 = v5[4] - v34;
        v36 = 192 * v20 - v35;
        memcpy((v24 - v35), v34, v35);
        v37 = v6[3];
        v6[3] = v36;
        v6[4] = v18;
        v6[5] = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        v9 = *v3;
        v10 = v3[1];
        v11 = v3[3];
        v7[2] = v3[2];
        v7[3] = v11;
        *v7 = v9;
        v7[1] = v10;
        v12 = v3[4];
        v13 = v3[5];
        v14 = v3[7];
        v7[6] = v3[6];
        v7[7] = v14;
        v7[4] = v12;
        v7[5] = v13;
        v15 = v3[8];
        v16 = v3[9];
        v17 = v3[11];
        v7[10] = v3[10];
        v7[11] = v17;
        v7[8] = v15;
        v7[9] = v16;
        v18 = (v7 + 12);
      }

      v6[4] = v18;
      v3 += 12;
    }

    while (v3 != v4);
    v3 = v39;
  }

  if (v3)
  {
    v40 = v3;
    operator delete(v3);
  }
}

void **sub_1001B2334(uint64_t a1)
{
  sub_1001B211C(v46, a1);
  v2 = sub_100100690();
  v4 = v47;
  if (v47)
  {
    v5 = *(v2 + 4);
    *&v3 = 136315906;
    v35 = v3;
    do
    {
      v6 = v4[3];
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v4[4] - v6) >> 6);
      v8 = v7 > v5;
      v9 = v7 - v5;
      if (v8)
      {
        v10 = v6 + 192 * v9;
        v11 = *(v10 + 24);
        v38 = *(v10 + 8);
        v39 = v11;
        v12 = *(v10 + 40);
        v13 = *(v10 + 56);
        v14 = *(v10 + 88);
        *v42 = *(v10 + 72);
        *&v42[16] = v14;
        v40 = v12;
        v41 = v13;
        v15 = *(v10 + 104);
        v16 = *(v10 + 120);
        v17 = *(v10 + 136);
        *(v45 + 12) = *(v10 + 148);
        v44 = v16;
        v45[0] = v17;
        v43 = v15;
        Current = CFAbsoluteTimeGetCurrent();
        v19 = *&v42[12];
        if (qword_1025D4850 != -1)
        {
          sub_10194CFCC();
        }

        v20 = Current - v19;
        v21 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
        {
          std::operator+<char>();
          v22 = SHIBYTE(v51);
          v23 = *v48;
          sub_10018F0D0(&__p);
          v24 = v48;
          if (v22 < 0)
          {
            v24 = v23;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = v35;
          v56 = v24;
          v57 = 2048;
          v58 = v20;
          v59 = 2080;
          v60 = p_p;
          v61 = 1024;
          v62 = v5;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "%s, deleting samples older than %.1f(s) for mac %s to keep maximum %d samples", buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v51) < 0)
          {
            operator delete(*v48);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194CFF4(buf);
          v26 = off_1025D4858;
          std::operator+<char>();
          v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v28 = __p.__r_.__value_.__r.__words[0];
          sub_10018F0D0(&v36);
          v29 = &__p;
          if (v27 < 0)
          {
            v29 = v28;
          }

          v30 = &v36;
          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v30 = v36.__r_.__value_.__r.__words[0];
          }

          *v48 = v35;
          *&v48[4] = v29;
          v49 = 2048;
          v50 = v20;
          v51 = 2080;
          v52 = v30;
          v53 = 1024;
          v54 = v5;
          LODWORD(v34) = 38;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 2, "%s, deleting samples older than %.1f(s) for mac %s to keep maximum %d samples", v48, v34, v35, DWORD2(v35));
          v32 = v31;
          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApHarvestDatabase::deleteOldSamplesBeyondThresholdForEachAssociatedAp()", "%s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }

        sub_100F795C4(a1, (v4 + 2), &v42[12]);
      }

      v4 = *v4;
    }

    while (v4);
  }

  return sub_1001B2ECC(v46);
}

void sub_1001B2710(uint64_t a1@<X0>, const void **a2@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10018FE0C(a1, v13);
    v4 = std::string::append(v13, " ", 1uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    *&v12[16] = *(&v4->__r_.__value_.__l + 2);
    *v12 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    sub_1001901C8(&v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v14;
    }

    else
    {
      v6 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(v12, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16 = v8->__r_.__value_.__r.__words[2];
    v15 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if ((v12[23] & 0x80000000) != 0)
    {
      operator delete(*v12);
    }

    if ((v13[23] & 0x80000000) != 0)
    {
      operator delete(*v13);
    }

    if (v16 >= 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15;
    }

    sub_1000388D8(a1 + 64, v10);
  }

  if (qword_1025D4850 != -1)
  {
    sub_101AE3294();
  }

  v11 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getAllEntries() without a backing database in CLWifiHarvestDatabase!", v12, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE353C();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_1001B2B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001B2C5C(void *a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_10018D3FC(a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void **sub_1001B2ECC(void **a1)
{
  sub_1001B2F08(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1001B2F08(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void **sub_1001B2F54(uint64_t a1)
{
  sub_1001B211C(v31, a1);
  v2 = *(sub_100100690() + 5);
  if (v31[3] > v2)
  {
    sub_1001E9E88(v27, v31);
    if (v29)
    {
      v3 = v28;
      v4 = *v28;
      if (*v28)
      {
        do
        {
          if (*(v4[4] - 108) < *(v3[4] - 108))
          {
            v3 = v4;
          }

          v4 = *v4;
        }

        while (v4);
      }

      v5 = v3[2];
    }

    else
    {
      sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
      v5 = sub_100196E8C(__p);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(*__p);
      }
    }

    v30 = v5;
    sub_1001B2ECC(v27);
    v6 = sub_1001EA21C(v31, &v30);
    Current = CFAbsoluteTimeGetCurrent();
    v8 = sub_10019D138(v31, &v30);
    if (!v8)
    {
      sub_1000432E8("unordered_map::at: key not found");
    }

    v9 = *(v8[4] - 108);
    if (qword_1025D4850 != -1)
    {
      sub_10194CFCC();
    }

    v10 = Current - v9;
    v11 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      std::operator+<char>();
      v12 = SHIBYTE(v35);
      v13 = *v32;
      sub_10018F0D0(&v26);
      v14 = v32;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v26;
      }

      else
      {
        v15 = v26.__r_.__value_.__r.__words[0];
      }

      *__p = 136316162;
      *&__p[4] = v14;
      v42 = 2048;
      v43 = v6;
      v44 = 2080;
      v45 = v15;
      v46 = 2048;
      v47 = v10;
      v48 = 1024;
      v49 = v2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%s, deleting all %zu samples for mac %s that was last harvested %.1f(s) ago to keep maximum %d distinct APs", __p, 0x30u);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(*v32);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194CFF4(__p);
      v17 = off_1025D4858;
      std::operator+<char>();
      v18 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      v19 = v26.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v25);
      v20 = &v26;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v25;
      }

      else
      {
        v21 = v25.__r_.__value_.__r.__words[0];
      }

      *v32 = 136316162;
      *&v32[4] = v20;
      v33 = 2048;
      v34 = v6;
      v35 = 2080;
      v36 = v21;
      v37 = 2048;
      v38 = v10;
      v39 = 1024;
      v40 = v2;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v17, 2, "%s, deleting all %zu samples for mac %s that was last harvested %.1f(s) ago to keep maximum %d distinct APs", v32, 48, v24, *&v25.__r_.__value_.__l.__data_, LODWORD(v25.__r_.__value_.__r.__words[1]));
      v23 = v22;
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApHarvestDatabase::deleteAssociatedApThatHasNotBeenHarvestedForTheLongestTimeIfNecessary()", "%s\n", v23);
      if (v23 != __p)
      {
        free(v23);
      }
    }

    sub_100F7999C(a1, &v30);
  }

  return sub_1001B2ECC(v31);
}

void sub_1001B3390(uint64_t a1, void *a2)
{
  if (sub_10018E854(a1))
  {
    v4 = sub_1000081AC();
    if (v4 - *(a1 + 368) >= 7200.0)
    {
      *(a1 + 368) = v4;
      sub_1001B211C(v63, a1);
      v5 = v64;
      if (v64)
      {
        v6 = 0;
        do
        {
          v6 -= 0x5555555555555555 * ((v5[4] - v5[3]) >> 6);
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        v6 = 0;
      }

      v9 = v65;
      sub_1001E9E88(v59, v63);
      if (v61)
      {
        v10 = v60;
        v11 = *v60;
        if (*v60)
        {
          do
          {
            if (v10[4] - v10[3] < v11[4] - v11[3])
            {
              v10 = v11;
            }

            v11 = *v11;
          }

          while (v11);
        }

        v12 = v10[2];
      }

      else
      {
        sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
        v12 = sub_100196E8C(__p);
        if (SHIBYTE(v90) < 0)
        {
          operator delete(*__p);
        }
      }

      v62 = v12;
      sub_1001B2ECC(v59);
      v13 = sub_1001EA21C(v63, &v62);
      sub_1001E9E88(v55, v63);
      if (v57)
      {
        v14 = v56;
        v15 = *v56;
        if (*v56)
        {
          do
          {
            if (v15[4] - v15[3] < v14[4] - v14[3])
            {
              v14 = v15;
            }

            v15 = *v15;
          }

          while (v15);
        }

        v16 = v14[2];
      }

      else
      {
        sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
        v16 = sub_100196E8C(__p);
        if (SHIBYTE(v90) < 0)
        {
          operator delete(*__p);
        }
      }

      v58 = v16;
      sub_1001B2ECC(v55);
      v17 = sub_1001EA21C(v63, &v58);
      v18 = sub_1001EA21C(v63, a2);
      v19 = -1.0;
      if (sub_10019D138(v63, a2))
      {
        v20 = sub_10019D138(v63, a2);
        if (!v20)
        {
          sub_1000432E8("unordered_map::at: key not found");
        }

        v21 = v20[3];
        if (v21 != v20[4])
        {
          v19 = (CFAbsoluteTimeGetCurrent() - *(v21 + 84)) / 3600.0;
        }
      }

      v22 = -1.0;
      if (sub_10019D138(v63, a2))
      {
        v23 = sub_10019D138(v63, a2);
        if (!v23)
        {
          sub_1000432E8("unordered_map::at: key not found");
        }

        v24 = v23[4];
        if (v23[3] != v24)
        {
          v22 = CFAbsoluteTimeGetCurrent() - *(v24 - 108);
        }
      }

      v54 = v22;
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v25 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
      {
        std::operator+<char>();
        if (v69 >= 0)
        {
          v26 = buf;
        }

        else
        {
          v26 = *buf;
        }

        v46 = v26;
        v27 = &v53;
        sub_10018F0D0(&v53);
        v48 = v18;
        v28 = v17;
        v29 = v13;
        v30 = v9;
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v27 = v53.__r_.__value_.__r.__words[0];
        }

        sub_10018F0D0(&v52);
        v31 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
        v32 = v52.__r_.__value_.__r.__words[0];
        sub_10018F0D0(&v51);
        v33 = &v52;
        if (v31 < 0)
        {
          v33 = v32;
        }

        v34 = &v51;
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v51.__r_.__value_.__r.__words[0];
        }

        *__p = 136317699;
        *&__p[4] = v46;
        v88 = 2049;
        v9 = v30;
        v89 = v30;
        v90 = 2049;
        v91 = v6;
        v92 = 2049;
        v13 = v29;
        v93 = v29;
        v94 = 2080;
        v95 = v27;
        v96 = 2049;
        v17 = v28;
        v97 = v28;
        v98 = 2080;
        v99 = v33;
        v100 = 2081;
        v101 = v34;
        v102 = 2049;
        v18 = v48;
        v103 = v48;
        v104 = 2049;
        v105 = v19;
        v106 = 2049;
        v107 = v22;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "%s, %{private}zu APs, %{private}zu total samples, max samples: %{private}zu (%s), min samples: %{private}zu (%s), current associated AP %{private}s has %{private}zu samples and oldest sample age of %{private}.1f hours, latest sample age of %{private}.1f seconds", __p, 0x70u);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v69) < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194CFF4(__p);
        v35 = off_1025D4858;
        std::operator+<char>();
        v47 = v35;
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v53;
        }

        else
        {
          v36 = v53.__r_.__value_.__r.__words[0];
        }

        v37 = &v52;
        sub_10018F0D0(&v52);
        v49 = v18;
        v38 = v13;
        v39 = v9;
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v52.__r_.__value_.__r.__words[0];
        }

        sub_10018F0D0(&v51);
        v40 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
        v41 = v51.__r_.__value_.__r.__words[0];
        sub_10018F0D0(&v50);
        v42 = &v51;
        if (v40 < 0)
        {
          v42 = v41;
        }

        v43 = &v50;
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v43 = v50.__r_.__value_.__r.__words[0];
        }

        *buf = 136317699;
        *&buf[4] = v36;
        v67 = 2049;
        v9 = v39;
        v68 = v39;
        v69 = 2049;
        v70 = v6;
        v71 = 2049;
        v72 = v38;
        v73 = 2080;
        v74 = v37;
        v75 = 2049;
        v76 = v17;
        v77 = 2080;
        v78 = v42;
        v79 = 2081;
        v80 = v43;
        v81 = 2049;
        v82 = v49;
        v83 = 2049;
        v84 = v19;
        v85 = 2049;
        v86 = v22;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v47, 2, "%s, %{private}zu APs, %{private}zu total samples, max samples: %{private}zu (%s), min samples: %{private}zu (%s), current associated AP %{private}s has %{private}zu samples and oldest sample age of %{private}.1f hours, latest sample age of %{private}.1f seconds", buf, 112);
        v45 = v44;
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApHarvestDatabase::logDatabaseInfoAndSubmitMetricsIfPossible(const CLMacAddress &)", "%s\n", v45);
        if (v45 != __p)
        {
          free(v45);
        }
      }

      sub_1001EA27C(a1 + 304, v9, v6, &v54, v19);
      sub_1001EA2F8(a1, v63, a2);
      sub_1001B2ECC(v63);
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10194D038();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      std::operator+<char>();
      v8 = v90 >= 0 ? __p : *__p;
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%s, #warning, could not log database info as it is invalid", buf, 0xCu);
      if (SHIBYTE(v90) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194D04C(a1);
    }
  }
}