void sub_1006F92F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  a37 = &a34;
  sub_1004CA974(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_1006F9388(uint64_t a1, void *a2, int a3, double *a4, uint64_t *a5)
{
  v5 = *(a4 + 1);
  v6 = *a2;
  if (*a2)
  {
    if (*(a1 + 144))
    {
      v12 = *(v6 + 96);
      v13 = 0.02;
      if (a3)
      {
        v13 = -0.02;
      }

      v14 = v13 + a4[34];
      v15 = 1.0;
      if (v14 <= 1.0)
      {
        v15 = v14;
      }

      if (v14 >= 0.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = a2[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = (*(v6 + 144) - *(v6 + 136)) >> 4;
      if (v18 <= 0)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101915810();
        }

        v28 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
        }

        v19 = 0.0;
        if (!sub_10000A100(121, 2))
        {
          goto LABEL_41;
        }

        sub_1019157CC(buf);
        LOWORD(__y) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,CoordinateCount is 0", &__y, 2);
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v29);
      }

      else
      {
        v19 = 0.0;
        if (v18 == 1)
        {
          goto LABEL_41;
        }

        sub_10029244C(v6);
        v20 = (*(v6 + 168) - *(v6 + 160)) >> 3;
        if (v20 != v18 - 1)
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101915810();
          }

          v31 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_41;
          }

          sub_1019157CC(buf);
          LOWORD(__y) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,inconsistent array size", &__y, 2);
          v30 = v71;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v71);
          goto LABEL_80;
        }

        sub_10029244C(v6);
        if (v16 < 0.000001)
        {
          v21 = *(v6 + 136);
          v19 = *v21;
          v22 = v21[1];
          v23 = v21[2];
          v24 = v21[3];
          v74 = 0;
          *&buf[0] = 0;
          __y = 0.0;
          sub_1001063B0((a1 + 152), buf, &__y, &v74, v19, v22, 0.0, v23, v24, 0.0);
          goto LABEL_42;
        }

        if (v16 >= 0.999999)
        {
          v45 = *(v6 + 136) + 16 * v20;
          v19 = *v45;
          v22 = *(v45 + 8);
          sub_1002926F4((a1 + 152), *(v45 - 16), *(v45 - 8), *v45, v22);
          goto LABEL_42;
        }

        v37 = *(v6 + 160);
        v38 = *(v6 + 168);
        if (v37 == v38)
        {
LABEL_59:
          if (qword_1025D46B0 != -1)
          {
            sub_101915810();
          }

          v43 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_41;
          }

          sub_1019157CC(buf);
          LOWORD(__y) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,Could not interpolate to intended projection", &__y, 2);
          v30 = v44;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v44);
          goto LABEL_80;
        }

        v39 = 0.0;
        v40 = 2;
        v41 = 24;
        while (1)
        {
          v42 = *v37 / *(v6 + 40);
          if (vabdd_f64(v16, v39 + v42) < 0.000001)
          {
            break;
          }

          if (v39 + v42 > v16)
          {
            v57 = (*(v6 + 136) + v41);
            v59 = *(v57 - 3);
            v58 = *(v57 - 2);
            v60 = *(v57 - 1);
            v61 = sub_1002AADB4(v58, *v57);
            v62 = (v16 - v39) / v42;
            sub_10002DB04(v58 + v61 * v62);
            v22 = v63;
            v64 = (*(v6 + 136) + v41);
            v65 = *(v64 - 3);
            v66 = *(v64 - 2);
            v67 = *(v64 - 1);
            v68 = *v64;
            v74 = 0;
            *&buf[0] = 0;
            __y = 0.0;
            sub_1001063B0((a1 + 152), buf, &__y, &v74, v65, v66, 0.0, v67, v68, 0.0);
            v19 = v59 + (v60 - v59) * v62;
            goto LABEL_42;
          }

          ++v37;
          v41 += 16;
          ++v40;
          v39 = v39 + v42;
          if (v37 == v38)
          {
            goto LABEL_59;
          }
        }

        if (v40 < v18)
        {
          v46 = (*(v6 + 136) + v41);
          v19 = *(v46 - 1);
          v22 = *v46;
          v47 = *(v46 - 3);
          v48 = *(v46 - 2);
          v74 = 0;
          *&buf[0] = 0;
          __y = 0.0;
          sub_1001063B0((a1 + 152), buf, &__y, &v74, v47, v48, 0.0, v19, v22, 0.0);
          v49 = __y;
          v50 = *buf;
          v51 = *(v6 + 136) + v41;
          v52 = *(v51 + 8);
          v53 = *(v51 + 16);
          v74 = 0;
          *&buf[0] = 0;
          __y = 0.0;
          sub_1001063B0((a1 + 152), buf, &__y, &v74, v19, v22, 0.0, v52, v53, 0.0);
          v54 = atan2(v49, v50);
          if (v54 < 0.0)
          {
            v54 = v54 + 6.28318531;
          }

          v55 = v54 * 57.2957795;
          v56 = atan2(__y, *buf);
          if (v56 < 0.0)
          {
            v56 = v56 + 6.28318531;
          }

          sub_1004E60D8(v55, v56 * 57.2957795);
LABEL_42:
          if (v17)
          {
            sub_100008080(v17);
          }

          sub_1002A9144((a1 + 152), buf, buf + 1, v19, v22, a4[9], a4[21], v12 * 0.5 + 3.70000005);
          v32 = *(*a2 + 136);
          v33 = *(*a2 + 144);
          if (a3)
          {
            if (v33 != v32)
            {
              v32 = v33 - 2;
              v34 = v33 - 1;
LABEL_49:
              v35 = *v32;
              v36 = *v34;
LABEL_51:
              sub_1002A9144((a1 + 152), &__y, &v73, v35, v36, a4[9], a4[21], -(v12 * 0.5 + 3.70000005));
              sub_1012D00B0(a1 + 88, a5, __y, v73, *buf, *(buf + 1));
              return a5[1] != *a5;
            }
          }

          else if (v33 != v32)
          {
            v34 = v32 + 1;
            goto LABEL_49;
          }

          v35 = 0.0;
          v36 = 0.0;
          goto LABEL_51;
        }

        if (qword_1025D46B0 != -1)
        {
          sub_101915810();
        }

        v69 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
        }

        v19 = 0.0;
        if (!sub_10000A100(121, 0))
        {
LABEL_41:
          v22 = 0.0;
          goto LABEL_42;
        }

        sub_1019157CC(buf);
        LOWORD(__y) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", &__y, 2);
        v30 = v70;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v70);
      }

LABEL_80:
      if (v30 != buf)
      {
        free(v30);
      }

      goto LABEL_41;
    }

    if (qword_1025D46B0 != -1)
    {
      sub_101915810();
    }

    v27 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 134349056;
      *(buf + 4) = v5;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,Flowline data not available", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101915CC0();
      return 0;
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101915810();
    }

    v25 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 134349056;
      *(buf + 4) = v5;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,road is nullptr", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101915DB4();
      return 0;
    }
  }

  return result;
}

void sub_1006F9C78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F9C98(uint64_t a1, double a2)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101915810();
  }

  v4 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 16);
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = 134351105;
    v14 = a2;
    v15 = 2053;
    v16 = v5;
    v17 = 2053;
    v18 = v6;
    v19 = 2049;
    v20 = v10;
    v21 = 1026;
    v22 = v7;
    v23 = 2049;
    v24 = v8;
    v25 = 2050;
    v26 = v9;
    v27 = 2050;
    v28 = v11;
    v29 = 2050;
    v30 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,laneData,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{private}.1lf,laneIndex,%{public}d,id,%{private}lld,probability,%{public}.2lf,shortestDist,%{public}.2lf,proj,%{public}.2lf", &v13, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101915EA8(a1, a2);
  }
}

void sub_1006F9EEC()
{
  if (qword_102637208)
  {
    v2 = 0;
    (*(*qword_102637208 + 976))(qword_102637208, &v2);
    if (((*(*qword_102637208 + 944))() & 1) == 0)
    {
      if (qword_1025D4890 != -1)
      {
        sub_101916024();
      }

      v0 = qword_1025D4898;
      if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_FAULT))
      {
        *v1 = 0;
        _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "could not store stats data ", v1, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191604C();
      }
    }
  }
}

uint64_t sub_1006FA000(uint64_t a1, uint64_t a2)
{
  v3 = sub_100565AA0(a1, a2, "stats", 1, 0, 2);
  *v3 = off_10246C090;
  v4 = sub_100536F74((v3 + 16), "CLDaemonStats", 1, 1);
  *(a1 + 144) = 0;
  sub_10001A3E8(v4, v5);
  if (!sub_100717D04())
  {
    v10 = 0;
    sub_10001CAF4(&v8);
    v6 = sub_10001CB4C(v8, "EnableLocationAccessorySessionDebugLog", &v10, 0xFFFFFFFFLL);
    if (v9)
    {
      sub_100008080(v9);
    }

    if (v6)
    {
      *(a1 + 144) = v10;
    }
  }

  return a1;
}

void sub_1006FA0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  sub_10053700C(v12);
  sub_1005661F8(v11);
  _Unwind_Resume(a1);
}

void *sub_1006FA110(void *a1)
{
  *a1 = off_10246C090;
  sub_10053700C((a1 + 16));

  return sub_1005661F8(a1);
}

void sub_1006FA164(void *a1)
{
  *a1 = off_10246C090;
  sub_10053700C((a1 + 16));
  sub_1005661F8(a1);

  operator delete();
}

uint64_t sub_1006FA1CC(uint64_t a1, std::string *a2)
{
  v4 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_1004FF934(a1, a2);
  return (*(*v4 + 24))(v4);
}

void sub_1006FA270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA284(uint64_t a1, double *a2)
{
  v5 = a1 + 128;
  v4 = *(a1 + 128);
  v7[5] = a1 + 128;
  (*(v4 + 16))(a1 + 128);
  v8 = 256;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006FA388;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  sub_100566954(a1, a2, v7);
  return (*(*v5 + 24))(v5);
}

void sub_1006FA374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA390(uint64_t a1)
{
  v2 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_100566B4C(a1);
  return (*(*v2 + 24))(v2);
}

void sub_1006FA424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA438(uint64_t a1)
{
  v2 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  v3 = sub_100566324(a1);
  (*(*v2 + 24))(v2);
  return v3;
}

void sub_1006FA4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA4E8(uint64_t a1)
{
  v2 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  v3 = sub_100566514(a1);
  (*(*v2 + 24))(v2);
  return v3;
}

void sub_1006FA584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1006FA598(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  (*(*a1 + 968))(a1, __p);
  if (v4 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = sub_100053C00(v1);
  CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"Location Stats", v2, 0);
  CFRelease(v2);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006FA650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FA670(uint64_t a1, const void *a2, const void *a3)
{
  v6 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_10007041C(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_1006FA71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA730@<X0>(void *a2@<X8>)
{
  sub_1004C01C8(&v18);
  sub_10000EC00(&v15, "[");
  if ((v17 & 0x80u) == 0)
  {
    v3 = &v15;
  }

  else
  {
    v3 = v15;
  }

  if ((v17 & 0x80u) == 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v16;
  }

  sub_100038730(&v18, v3, v4);
  for (i = 0; i != 56; i += 4)
  {
    sub_10003DD04(&v19, __p);
    v6 = v14;
    if ((v14 & 0x80u) == 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v8 = v16;
    }

    if (v7 == v8)
    {
      if ((v14 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v10 = &v15;
      }

      else
      {
        v10 = v15;
      }

      v11 = memcmp(v9, v10, v7) == 0;
      if (v6 < 0)
      {
LABEL_25:
        operator delete(__p[0]);
        if (v11)
        {
          goto LABEL_27;
        }

LABEL_26:
        sub_100038730(&v18, ", ", 2);
        goto LABEL_27;
      }
    }

    else
    {
      v11 = 0;
      if (v14 < 0)
      {
        goto LABEL_25;
      }
    }

    if (!v11)
    {
      goto LABEL_26;
    }

LABEL_27:
    std::ostream::operator<<();
  }

  sub_100038730(&v18, "]", 1);
  sub_10003DD04(&v19, a2);
  if (v17 < 0)
  {
    operator delete(v15);
  }

  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1006FA9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA9F8@<X0>(void *a2@<X8>)
{
  sub_1004C01C8(&v18);
  sub_10000EC00(&v15, "[");
  if ((v17 & 0x80u) == 0)
  {
    v3 = &v15;
  }

  else
  {
    v3 = v15;
  }

  if ((v17 & 0x80u) == 0)
  {
    v4 = v17;
  }

  else
  {
    v4 = v16;
  }

  sub_100038730(&v18, v3, v4);
  for (i = 0; i != 56; i += 4)
  {
    sub_10003DD04(&v19, __p);
    v6 = v14;
    if ((v14 & 0x80u) == 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v8 = v16;
    }

    if (v7 == v8)
    {
      if ((v14 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v10 = &v15;
      }

      else
      {
        v10 = v15;
      }

      v11 = memcmp(v9, v10, v7) == 0;
      if (v6 < 0)
      {
LABEL_25:
        operator delete(__p[0]);
        if (v11)
        {
          goto LABEL_27;
        }

LABEL_26:
        sub_100038730(&v18, ", ", 2);
        goto LABEL_27;
      }
    }

    else
    {
      v11 = 0;
      if (v14 < 0)
      {
        goto LABEL_25;
      }
    }

    if (!v11)
    {
      goto LABEL_26;
    }

LABEL_27:
    std::ostream::operator<<();
  }

  sub_100038730(&v18, "]", 1);
  sub_10003DD04(&v19, a2);
  if (v17 < 0)
  {
    operator delete(v15);
  }

  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1006FAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006FACC0(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v6 = a2 + 16;
    }

    else
    {
      v6 = *(a2 + 2);
    }

    if ((a2[63] & 0x80u) == 0)
    {
      v7 = a2 + 40;
    }

    else
    {
      v7 = *(a2 + 5);
    }

    v8 = a2[112];
    v9 = a2[113];
    v10 = *(a2 + 58);
    v11 = a2[114];
    *buf = 68291075;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = v4;
    v19 = 2050;
    v20 = v5;
    v21 = 2081;
    v22 = v6;
    v23 = 2081;
    v24 = v7;
    v25 = 1026;
    v26 = v8;
    v27 = 1026;
    v28 = v9;
    v29 = 1026;
    v30 = v10;
    v31 = 1026;
    v32 = v11;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit monitor session, metric.valid:%{public}d, metric.timestamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, onbehalfbundleid:%{private, location:escape_only}s, clientSpecifiesMajor:%{public}d, clientSpecifiesMinor:%{public}d, totalMonitoredRegions:%{public}d, foreground:%{public}d}", buf, 0x4Eu);
  }

  AnalyticsSendEventLazy();
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FAEC4(uint64_t a1)
{
  v3[0] = @"clientSpecifiesMajor";
  v4[0] = [NSNumber numberWithBool:*(*(a1 + 32) + 112)];
  v3[1] = @"clientSpecifiesMinor";
  v4[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 113)];
  v3[2] = @"totalMonitoredRegions";
  v4[2] = [NSNumber numberWithUnsignedShort:*(*(a1 + 32) + 116)];
  v3[3] = @"appIsInForeground";
  v4[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 114)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

NSDictionary *sub_1006FAFB4(uint64_t a1)
{
  v9[0] = @"bundleId";
  v2 = *(a1 + 32);
  v3 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v3 = *v3;
  }

  v10[0] = [NSString stringWithUTF8String:v3];
  v9[1] = @"regionIdentifier";
  v4 = *(a1 + 32);
  v5 = (v4 + 88);
  if (*(v4 + 111) < 0)
  {
    v5 = *v5;
  }

  v10[1] = [NSString stringWithUTF8String:v5];
  v9[2] = @"proximityUUID";
  v6 = *(a1 + 32);
  v7 = (v6 + 64);
  if (*(v6 + 87) < 0)
  {
    v7 = *v7;
  }

  v10[2] = [NSString stringWithUTF8String:v7];
  v9[3] = @"clientSpecifiesMajor";
  v10[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 112)];
  v9[4] = @"clientSpecifiesMinor";
  v10[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 113)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
}

uint64_t sub_1006FB0EC(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v6 = a2 + 16;
    }

    else
    {
      v6 = *(a2 + 2);
    }

    if ((a2[63] & 0x80u) == 0)
    {
      v7 = a2 + 40;
    }

    else
    {
      v7 = *(a2 + 5);
    }

    v8 = *(a2 + 56);
    *buf = 68290307;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = v4;
    v16 = 2050;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    v20 = 2081;
    v21 = v7;
    v22 = 1026;
    v23 = v8;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit monitor session, metric.valid:%{public}d, metric.timestamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, onbehalfbundleid:%{private, location:escape_only}s, totalMonitoredRegions:%{public}d}", buf, 0x3Cu);
  }

  AnalyticsSendEventLazy();
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FB2C8(uint64_t a1)
{
  v2 = @"totalMonitoredRegions";
  v3 = [NSNumber numberWithUnsignedShort:*(*(a1 + 32) + 112)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *sub_1006FB350(uint64_t a1)
{
  v9[0] = @"bundleId";
  v2 = *(a1 + 32);
  v3 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v3 = *v3;
  }

  v10[0] = [NSString stringWithUTF8String:v3];
  v9[1] = @"regionIdentifier";
  v4 = *(a1 + 32);
  v5 = (v4 + 88);
  if (*(v4 + 111) < 0)
  {
    v5 = *v5;
  }

  v10[1] = [NSString stringWithUTF8String:v5];
  v9[2] = @"proximityUUID";
  v6 = *(a1 + 32);
  v7 = (v6 + 64);
  if (*(v6 + 87) < 0)
  {
    v7 = *v7;
  }

  v10[2] = [NSString stringWithUTF8String:v7];
  v9[3] = @"totalMonitoredRegions";
  v10[3] = [NSNumber numberWithUnsignedShort:*(*(a1 + 32) + 112)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
}

uint64_t sub_1006FB468(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v6 = a2 + 16;
    }

    else
    {
      v6 = *(a2 + 2);
    }

    if ((a2[63] & 0x80u) == 0)
    {
      v7 = a2 + 40;
    }

    else
    {
      v7 = *(a2 + 5);
    }

    v8 = a2[116];
    *buf = 68290307;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = v4;
    v16 = 2050;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    v20 = 2081;
    v21 = v7;
    v22 = 1026;
    v23 = v8;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit monitor session, metric.valid:%{public}d, metric.timestamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, onbehalfbundleid:%{private, location:escape_only}s, foreground:%{public}d}", buf, 0x3Cu);
  }

  AnalyticsSendEventLazy();
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FB644(uint64_t a1)
{
  v4[0] = @"appIsInForeground";
  v2 = [NSNumber numberWithBool:*(*(a1 + 32) + 116)];
  v4[1] = @"beaconState";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 124)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

NSDictionary *sub_1006FB6F0(uint64_t a1)
{
  v9[0] = @"bundleId";
  v2 = *(a1 + 32);
  v3 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v3 = *v3;
  }

  v10[0] = [NSString stringWithUTF8String:v3];
  v9[1] = @"regionIdentifier";
  v4 = *(a1 + 32);
  v5 = (v4 + 88);
  if (*(v4 + 111) < 0)
  {
    v5 = *v5;
  }

  v10[1] = [NSString stringWithUTF8String:v5];
  v9[2] = @"proximityUUID";
  v6 = *(a1 + 32);
  v7 = (v6 + 64);
  if (*(v6 + 87) < 0)
  {
    v7 = *v7;
  }

  v10[2] = [NSString stringWithUTF8String:v7];
  v9[3] = @"beaconState";
  v10[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 124)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
}

uint64_t sub_1006FB808(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v6 = a2 + 16;
    }

    else
    {
      v6 = *(a2 + 2);
    }

    v7 = a2[80];
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 13) - *(a2 + 12)) >> 3);
    v9 = *(a2 + 16);
    v10 = *(a2 + 9);
    *buf = 68290819;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1026;
    v17 = v4;
    v18 = 2050;
    v19 = v5;
    v20 = 2081;
    v21 = v6;
    v22 = 1026;
    v23 = v7;
    v24 = 2050;
    v25 = v8;
    v26 = 1026;
    v27 = v9;
    v28 = 1026;
    v29 = v10;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit ranging session, metric.valid:%{public}d, metric.timstamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, regions:%{public}d, beacons:%{public}lu, measurements:%{public}d, duration:%{public}d}", buf, 0x48u);
  }

  AnalyticsSendEventLazy();
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FBA08(uint64_t a1)
{
  v3[0] = @"appIsInForeground";
  v4[0] = [NSNumber numberWithBool:*(*(a1 + 32) + 81)];
  v3[1] = @"rangingMeasurements";
  v4[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 64)];
  v3[2] = @"rangingBeacons";
  v4[2] = [NSNumber numberWithUnsignedLong:0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 32) + 104) - *(*(a1 + 32) + 96)) >> 3)];
  v3[3] = @"rangingDuration";
  v4[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 72)];
  v3[4] = @"rangedRegions";
  v4[4] = [NSNumber numberWithUnsignedChar:*(*(a1 + 32) + 80)];
  v3[5] = @"proximityChanges";
  v4[5] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 84)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

NSDictionary *sub_1006FBB4C(uint64_t a1)
{
  v7[0] = @"bundleId";
  v2 = *(a1 + 32);
  v3 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v3 = *v3;
  }

  v8[0] = [NSString stringWithUTF8String:v3];
  v7[1] = @"proximityUUID";
  v4 = *(a1 + 32);
  v5 = (v4 + 40);
  if (*(v4 + 63) < 0)
  {
    v5 = *v5;
  }

  v8[1] = [NSString stringWithUTF8String:v5];
  v7[2] = @"rangingDuration";
  v8[2] = [NSNumber numberWithDouble:*(*(a1 + 32) + 72)];
  v7[3] = @"rangedRegions";
  v8[3] = [NSNumber numberWithUnsignedChar:*(*(a1 + 32) + 80)];
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
}

uint64_t sub_1006FBC58(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    v6 = a2 + 16;
    if ((a2[39] & 0x80u) != 0)
    {
      v6 = *(a2 + 2);
    }

    v7 = *(a2 + 16);
    *buf = 68290051;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    v14 = v4;
    v15 = 2050;
    v16 = v5;
    v17 = 2081;
    v18 = v6;
    v19 = 1026;
    v20 = v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit error event, metric.valid:%{public}d, metric.timstamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, errorType:%{public}d}", buf, 0x32u);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FBDC8(uint64_t a1)
{
  v2 = @"ErrorType";
  v3 = [NSNumber numberWithInt:*(*(a1 + 32) + 64)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_1006FBE50(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D45E0 != -1)
  {
    sub_101916474();
  }

  v3 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v7 = a2 + 16;
    }

    else
    {
      v7 = *(a2 + 2);
    }

    v8 = *(a2 + 51);
    if (v8)
    {
      LODWORD(v4) = *(a2 + 415);
      v9 = llround(v4 * 100.0 / v8);
    }

    else
    {
      v9 = -1;
    }

    *buf = 67109890;
    v16 = v5;
    v17 = 2048;
    v18 = v6;
    v19 = 2080;
    v20 = v7;
    v21 = 1026;
    v22 = v9;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#GpsAccessoryCA Submit Gps Accessory metric to CA,metric.valid,%d,metric.timestamp,%.3f,metric.bundleId,%s,LCFusionOnPercentage,%{public}.d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916488(a2);
  }

  result = AnalyticsSendEventLazy();
  v11 = *(a2 + 204);
  if (v11 != a2 + 1640)
  {
    do
    {
      result = AnalyticsSendEventLazy();
      v12 = *(v11 + 1);
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
          v13 = *(v11 + 2);
          v14 = *v13 == v11;
          v11 = v13;
        }

        while (!v14);
      }

      v11 = v13;
    }

    while (v13 != a2 + 1640);
  }

  return result;
}

NSDictionary *sub_1006FC158(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v178[0] = @"AccessoryManufacturer";
  v5 = (v3 + 40);
  if (*(v3 + 63) < 0)
  {
    v5 = *v5;
  }

  v179[0] = [NSString stringWithUTF8String:v5];
  v178[1] = @"AccessoryModel";
  v6 = (*v2 + 88);
  if (*(*v2 + 111) < 0)
  {
    v6 = *v6;
  }

  v179[1] = [NSString stringWithUTF8String:v6];
  v178[2] = @"AccessoryName";
  v7 = (*v2 + 64);
  if (*(*v2 + 87) < 0)
  {
    v7 = *v7;
  }

  v179[2] = [NSString stringWithUTF8String:v7];
  v178[3] = @"AccessoryFirmwareVersion";
  v8 = (*v2 + 112);
  if (*(*v2 + 135) < 0)
  {
    v8 = *v8;
  }

  v179[3] = [NSString stringWithUTF8String:v8];
  v178[4] = @"AccessoryHardwareVersion";
  v9 = (*v2 + 136);
  if (*(*v2 + 159) < 0)
  {
    v9 = *v9;
  }

  v179[4] = [NSString stringWithUTF8String:v9];
  v178[5] = @"BundleId";
  sub_1006FE0C4(*v2 + 16, (*v2 + 1456), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v179[5] = [NSString stringWithUTF8String:p_p];
  v178[6] = @"PPID";
  v11 = (*v2 + 160);
  if (*(*v2 + 183) < 0)
  {
    v11 = *v11;
  }

  v179[6] = [NSString stringWithUTF8String:v11];
  v178[7] = @"IsOnDenyList";
  v179[7] = [NSNumber numberWithBool:*(*v2 + 188)];
  v178[8] = @"IsCarPlaySessionWireless";
  v179[8] = [NSNumber numberWithBool:*(*v2 + 208) != 0];
  v178[9] = @"IsDeviceCharging";
  v179[9] = [NSNumber numberWithBool:*(*v2 + 336) != 0];
  v178[10] = @"IsAppleMapsRerouted";
  v12 = [NSNumber numberWithBool:*(*v2 + 1484) != 0];
  v13 = 0;
  v179[10] = v12;
  v178[11] = @"AccessoryType";
  memset(v177, 0, sizeof(v177));
  v14 = *(v3 + 184);
  do
  {
    if ((v14 >> v13))
    {
      *(v177 + v13) = 1;
    }

    ++v13;
  }

  while (v13 != 6);
  if (HIDWORD(v177[0]))
  {
    v15 = LODWORD(v177[1]) == 0;
  }

  else
  {
    v15 = 1;
  }

  v19 = !v15 && HIDWORD(v177[1]) == 0 && LODWORD(v177[2]) == 0 && HIDWORD(v177[2]) == 0;
  if (LODWORD(v177[0]))
  {
    if (v19)
    {
      v20 = 1;
      goto LABEL_60;
    }

    if (!*(v177 + 4) && __PAIR64__(HIDWORD(v177[1]), 0) == LODWORD(v177[2]) && !HIDWORD(v177[2]))
    {
      v20 = 3;
      goto LABEL_60;
    }
  }

  else
  {
    if (v19)
    {
      v20 = 2;
      goto LABEL_60;
    }

    if (HIDWORD(v177[0]) && !LODWORD(v177[1]) && __PAIR64__(HIDWORD(v177[1]), 0) == LODWORD(v177[2]) && !HIDWORD(v177[2]))
    {
      v20 = 4;
      goto LABEL_60;
    }

    if (!HIDWORD(v177[0]) && LODWORD(v177[1]) && !*(&v177[1] + 4) && !HIDWORD(v177[2]))
    {
      v20 = 5;
      goto LABEL_60;
    }

    if (!*(v177 + 4) && !HIDWORD(v177[1]) && LODWORD(v177[2]) && !HIDWORD(v177[2]))
    {
      v20 = 6;
      goto LABEL_60;
    }
  }

  v20 = 0;
LABEL_60:
  v179[11] = [NSNumber numberWithInt:v20];
  v178[12] = @"NumberOfLocationSession";
  v179[12] = [NSNumber numberWithUnsignedInt:*(*v2 + 196)];
  v178[13] = @"AccessoryConnectedDuration";
  v179[13] = [NSNumber numberWithUnsignedInt:*(*v2 + 192)];
  v178[14] = @"CarPlaySessionDuration";
  v179[14] = [NSNumber numberWithUnsignedInt:*(*v2 + 204)];
  v178[15] = @"TotalLocationSessionDuration";
  v179[15] = [NSNumber numberWithUnsignedInt:*(*v2 + 200)];
  v178[16] = @"DeviceLocationUnavailableEpochsCount";
  v179[16] = [NSNumber numberWithUnsignedInt:*(*v2 + 1004)];
  v178[17] = @"DeadReckonedCount";
  v179[17] = [NSNumber numberWithUnsignedInt:*(*v2 + 1008)];
  v178[18] = @"BadGPRMCCount";
  v179[18] = [NSNumber numberWithUnsignedInt:*(*v2 + 1016)];
  v178[19] = @"AppleMapsRoutingEpochCount";
  v179[19] = [NSNumber numberWithUnsignedInt:*(*v2 + 1480)];
  v178[20] = @"AppleMapsRerouteCount";
  v179[20] = [NSNumber numberWithUnsignedInt:*(*v2 + 1484)];
  v178[21] = @"AppleMapsProceedToRouteCount";
  v179[21] = [NSNumber numberWithUnsignedInt:*(*v2 + 1488)];
  v178[22] = @"NMEAScreeningEnabledDuration";
  v179[22] = [NSNumber numberWithUnsignedInt:*(*v2 + 1520)];
  v178[23] = @"NMEAScreenedEpochCount";
  v179[23] = [NSNumber numberWithUnsignedInt:*(*v2 + 1524)];
  v178[24] = @"NMEAScreenedRejectedEpochCount";
  v179[24] = [NSNumber numberWithUnsignedInt:*(*v2 + 1528)];
  v178[25] = @"WirelessCarPlayDuration";
  v179[25] = [NSNumber numberWithUnsignedInt:*(*v2 + 208)];
  v178[26] = @"NumberOfPublishedLocations";
  v179[26] = [NSNumber numberWithUnsignedInt:*(*v2 + 216)];
  v178[27] = @"ShiftedLocationEpochCount";
  v179[27] = [NSNumber numberWithUnsignedInt:*(*v2 + 212)];
  v178[28] = @"LocationSessionPercentage";
  v23 = *(*v2 + 192);
  if (v23)
  {
    LODWORD(v22) = *(*v2 + 200);
    LODWORD(v21) = llround(v22 * 100.0 / v23);
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v179[28] = [NSNumber numberWithInt:v21];
  v178[29] = @"AppleMapsRoutingPercentage";
  v26 = *(*v2 + 192);
  if (v26)
  {
    LODWORD(v25) = *(*v2 + 1480);
    LODWORD(v24) = llround(v25 * 100.0 / v26);
  }

  else
  {
    v24 = 0xFFFFFFFFLL;
  }

  v179[29] = [NSNumber numberWithInt:v24];
  v178[30] = @"DeviceChargingPercentage";
  v29 = *(*v2 + 192);
  if (v29)
  {
    LODWORD(v28) = *(*v2 + 336);
    LODWORD(v27) = llround(v28 * 100.0 / v29);
  }

  else
  {
    v27 = 0xFFFFFFFFLL;
  }

  v179[30] = [NSNumber numberWithInt:v27];
  v178[31] = @"DeviceLocationAvailablePercentage";
  v31 = *(*v2 + 200);
  if (v31)
  {
    LODWORD(v30) = llround((v31 - *(*v2 + 1004)) * 100.0 / v31);
  }

  else
  {
    v30 = 0xFFFFFFFFLL;
  }

  v179[31] = [NSNumber numberWithInt:v30];
  v178[32] = @"LocationPublishedPercentage";
  v34 = *(*v2 + 200);
  if (v34)
  {
    LODWORD(v33) = *(*v2 + 216);
    LODWORD(v32) = llround(v33 * 100.0 / v34);
  }

  else
  {
    v32 = 0xFFFFFFFFLL;
  }

  v179[32] = [NSNumber numberWithInt:v32];
  v178[33] = @"ShiftedLocationPercentage";
  v37 = *(*v2 + 200);
  if (v37)
  {
    LODWORD(v36) = *(*v2 + 212);
    LODWORD(v35) = llround(v36 * 100.0 / v37);
  }

  else
  {
    v35 = 0xFFFFFFFFLL;
  }

  v179[33] = [NSNumber numberWithInt:v35];
  v178[34] = @"BadGPRMCPercentage";
  v40 = *(*v2 + 200);
  if (v40)
  {
    LODWORD(v39) = *(*v2 + 1016);
    LODWORD(v38) = llround(v39 * 100.0 / v40);
  }

  else
  {
    v38 = 0xFFFFFFFFLL;
  }

  v179[34] = [NSNumber numberWithInt:v38];
  v178[35] = @"DeadReckonedPercentage";
  v43 = *(*v2 + 200);
  if (v43)
  {
    LODWORD(v42) = *(*v2 + 1008);
    LODWORD(v41) = llround(v42 * 100.0 / v43);
  }

  else
  {
    v41 = 0xFFFFFFFFLL;
  }

  v179[35] = [NSNumber numberWithInt:v41];
  v178[36] = @"NMEAScreenedPercentage";
  v46 = *(*v2 + 200);
  if (v46)
  {
    LODWORD(v45) = *(*v2 + 1524);
    LODWORD(v44) = llround(v45 * 100.0 / v46);
  }

  else
  {
    v44 = 0xFFFFFFFFLL;
  }

  v179[36] = [NSNumber numberWithInt:v44];
  v178[37] = @"NMEAScreenedRejectedPercentage";
  v49 = *(*v2 + 200);
  if (v49)
  {
    LODWORD(v48) = *(*v2 + 1528);
    LODWORD(v47) = llround(v48 * 100.0 / v49);
  }

  else
  {
    v47 = 0xFFFFFFFFLL;
  }

  v179[37] = [NSNumber numberWithInt:v47];
  v178[38] = @"AppleMapsReroutesPerHour";
  v179[38] = [NSNumber numberWithInt:*(a1 + 48)];
  v178[39] = @"AppleMapsProceedToRoutesPerHour";
  v179[39] = [NSNumber numberWithInt:*(a1 + 52)];
  v178[40] = @"AppleMapsReroutesOrPTRPerHour";
  v179[40] = [NSNumber numberWithInt:*(a1 + 56)];
  v178[41] = @"TTFFAllAvg";
  if (*(*v2 + 240))
  {
    v50 = *(*v2 + 248);
  }

  else
  {
    v50 = 0.0;
  }

  v179[41] = [NSNumber numberWithDouble:v50];
  v178[42] = @"TTFFAllMax";
  v179[42] = [NSNumber numberWithDouble:*(*v2 + 224)];
  v178[43] = @"TTFFAllMin";
  v179[43] = [NSNumber numberWithDouble:*(*v2 + 232)];
  v178[44] = @"TTFFAllRMS";
  if (*(*v2 + 240))
  {
    v51 = sqrt(*(*v2 + 264));
  }

  else
  {
    v51 = 0.0;
  }

  v179[44] = [NSNumber numberWithDouble:v51];
  v178[45] = @"TTFFAllSTD";
  v52 = *(*v2 + 240);
  v53 = -1.0;
  if (v52 >= 2)
  {
    v53 = sqrt(*(*v2 + 256) / (v52 - 1));
  }

  v179[45] = [NSNumber numberWithDouble:v53];
  v178[46] = @"TTFFNonDRAvg";
  if (*(*v2 + 288))
  {
    v54 = *(*v2 + 296);
  }

  else
  {
    v54 = 0.0;
  }

  v179[46] = [NSNumber numberWithDouble:v54];
  v178[47] = @"TTFFNonDRMax";
  v179[47] = [NSNumber numberWithDouble:*(*v2 + 272)];
  v178[48] = @"TTFFNonDRMin";
  v179[48] = [NSNumber numberWithDouble:*(*v2 + 280)];
  v178[49] = @"TTFFNonDRRMS";
  if (*(*v2 + 288))
  {
    v55 = sqrt(*(*v2 + 312));
  }

  else
  {
    v55 = 0.0;
  }

  v179[49] = [NSNumber numberWithDouble:v55];
  v178[50] = @"TTFFNonDRSTD";
  v56 = *(*v2 + 288);
  v57 = -1.0;
  if (v56 >= 2)
  {
    v57 = sqrt(*(*v2 + 304) / (v56 - 1));
  }

  v179[50] = [NSNumber numberWithDouble:v57];
  v178[51] = @"HorzPosSolnDiffAvg";
  v58 = 0.0;
  if (*(*v2 + 456) >= 0x5Bu)
  {
    v58 = *(*v2 + 464);
  }

  v179[51] = [NSNumber numberWithDouble:v58];
  v178[52] = @"HorzPosSolnDiffMax";
  v179[52] = [NSNumber numberWithDouble:*(*v2 + 440)];
  v178[53] = @"HorzPosSolnDiffMin";
  v179[53] = [NSNumber numberWithDouble:*(*v2 + 448)];
  v178[54] = @"HorzPosSolnDiffRMS";
  v59 = 0.0;
  if (*(*v2 + 456) >= 0x5Bu)
  {
    v59 = sqrt(*(*v2 + 480));
  }

  v179[54] = [NSNumber numberWithDouble:v59];
  v178[55] = @"HorzPosSolnDiffSTD";
  v60 = *(*v2 + 456);
  v61 = -1.0;
  if (v60 >= 0x5B)
  {
    v61 = sqrt(*(*v2 + 472) / (v60 - 1));
  }

  v179[55] = [NSNumber numberWithDouble:v61];
  v178[56] = @"HorzDRPosSolnDiffAvg";
  v62 = 0.0;
  if (*(*v2 + 624) >= 0x5Bu)
  {
    v62 = *(*v2 + 632);
  }

  v179[56] = [NSNumber numberWithDouble:v62];
  v178[57] = @"HorzDRPosSolnDiffMax";
  v179[57] = [NSNumber numberWithDouble:*(*v2 + 608)];
  v178[58] = @"HorzDRPosSolnDiffMin";
  v179[58] = [NSNumber numberWithDouble:*(*v2 + 616)];
  v178[59] = @"HorzDRPosSolnDiffRMS";
  v63 = 0.0;
  if (*(*v2 + 624) >= 0x5Bu)
  {
    v63 = sqrt(*(*v2 + 648));
  }

  v179[59] = [NSNumber numberWithDouble:v63];
  v178[60] = @"HorzDRPosSolnDiffSTD";
  v64 = *(*v2 + 624);
  v65 = -1.0;
  if (v64 >= 0x5B)
  {
    v65 = sqrt(*(*v2 + 640) / (v64 - 1));
  }

  v179[60] = [NSNumber numberWithDouble:v65];
  v178[61] = @"AltitudeSolnDiffAvg";
  v66 = 0.0;
  if (*(*v2 + 744) >= 0x5Bu)
  {
    v66 = *(*v2 + 752);
  }

  v179[61] = [NSNumber numberWithDouble:v66];
  v178[62] = @"AltitudeSolnDiffMax";
  v179[62] = [NSNumber numberWithDouble:*(*v2 + 728)];
  v178[63] = @"AltitudeSolnDiffMin";
  v179[63] = [NSNumber numberWithDouble:*(*v2 + 736)];
  v178[64] = @"AltitudeSolnDiffRMS";
  v67 = 0.0;
  if (*(*v2 + 744) >= 0x5Bu)
  {
    v67 = sqrt(*(*v2 + 768));
  }

  v179[64] = [NSNumber numberWithDouble:v67];
  v178[65] = @"AltitudeSolnDiffSTD";
  v68 = *(*v2 + 744);
  v69 = -1.0;
  if (v68 >= 0x5B)
  {
    v69 = sqrt(*(*v2 + 760) / (v68 - 1));
  }

  v179[65] = [NSNumber numberWithDouble:v69];
  v178[66] = @"CourseSolnDiffAvg";
  v70 = 0.0;
  if (*(*v2 + 864) >= 0x5Bu)
  {
    v70 = *(*v2 + 872);
  }

  v179[66] = [NSNumber numberWithDouble:v70];
  v178[67] = @"CourseSolnDiffMax";
  v179[67] = [NSNumber numberWithDouble:*(*v2 + 848)];
  v178[68] = @"CourseSolnDiffMin";
  v179[68] = [NSNumber numberWithDouble:*(*v2 + 856)];
  v178[69] = @"CourseSolnDiffRMS";
  v71 = 0.0;
  if (*(*v2 + 864) >= 0x5Bu)
  {
    v71 = sqrt(*(*v2 + 888));
  }

  v179[69] = [NSNumber numberWithDouble:v71];
  v178[70] = @"CourseSolnDiffSTD";
  v72 = *(*v2 + 864);
  v73 = -1.0;
  if (v72 >= 0x5B)
  {
    v73 = sqrt(*(*v2 + 880) / (v72 - 1));
  }

  v179[70] = [NSNumber numberWithDouble:v73];
  v178[71] = @"SpeedSolnDiffAvg";
  v74 = 0.0;
  if (*(*v2 + 968) >= 0x5Bu)
  {
    v74 = *(*v2 + 976);
  }

  v179[71] = [NSNumber numberWithDouble:v74];
  v178[72] = @"SpeedSolnDiffMax";
  v179[72] = [NSNumber numberWithDouble:*(*v2 + 952)];
  v178[73] = @"SpeedSolnDiffMin";
  v179[73] = [NSNumber numberWithDouble:*(*v2 + 960)];
  v178[74] = @"SpeedSolnDiffRMS";
  v75 = 0.0;
  if (*(*v2 + 968) >= 0x5Bu)
  {
    v75 = sqrt(*(*v2 + 992));
  }

  v179[74] = [NSNumber numberWithDouble:v75];
  v178[75] = @"SpeedSolnDiffSTD";
  v76 = *(*v2 + 968);
  v77 = -1.0;
  if (v76 >= 0x5B)
  {
    v77 = sqrt(*(*v2 + 984) / (v76 - 1));
  }

  v179[75] = [NSNumber numberWithDouble:v77];
  v178[76] = @"GPRMCLatencyAvg";
  v78 = -1.0;
  if (*(*v2 + 1064) >= 0x5Bu)
  {
    v78 = *(*v2 + 1072);
  }

  v179[76] = [NSNumber numberWithDouble:v78];
  v178[77] = @"GPRMCLatencyMax";
  v179[77] = [NSNumber numberWithDouble:*(*v2 + 1048)];
  v178[78] = @"GPRMCLatencyMin";
  v179[78] = [NSNumber numberWithDouble:*(*v2 + 1056)];
  v178[79] = @"GPRMCLatencyRMS";
  v79 = -1.0;
  if (*(*v2 + 1064) >= 0x5Bu)
  {
    v79 = sqrt(*(*v2 + 1088));
  }

  v179[79] = [NSNumber numberWithDouble:v79];
  v178[80] = @"GPRMCLatencySTD";
  v80 = *(*v2 + 1064);
  v81 = -1.0;
  if (v80 >= 0x5B)
  {
    v81 = sqrt(*(*v2 + 1080) / (v80 - 1));
  }

  v179[80] = [NSNumber numberWithDouble:v81];
  v178[81] = @"GPRMCSpacingAvg";
  v82 = -1.0;
  if (*(*v2 + 1112) >= 0x5Bu)
  {
    v82 = *(*v2 + 1120);
  }

  v179[81] = [NSNumber numberWithDouble:v82];
  v178[82] = @"GPRMCSpacingMax";
  v179[82] = [NSNumber numberWithDouble:*(*v2 + 1096)];
  v178[83] = @"GPRMCSpacingMin";
  v179[83] = [NSNumber numberWithDouble:*(*v2 + 1104)];
  v178[84] = @"GPRMCSpacingRMS";
  v83 = -1.0;
  if (*(*v2 + 1112) >= 0x5Bu)
  {
    v83 = sqrt(*(*v2 + 1136));
  }

  v179[84] = [NSNumber numberWithDouble:v83];
  v178[85] = @"GPRMCSpacingSTD";
  v84 = *(*v2 + 1112);
  v85 = -1.0;
  if (v84 >= 0x5B)
  {
    v85 = sqrt(*(*v2 + 1128) / (v84 - 1));
  }

  v179[85] = [NSNumber numberWithDouble:v85];
  v178[86] = @"GPGGALatencyAvg";
  v86 = -1.0;
  if (*(*v2 + 1192) >= 0x5Bu)
  {
    v86 = *(*v2 + 1200);
  }

  v179[86] = [NSNumber numberWithDouble:v86];
  v178[87] = @"GPGGALatencyMax";
  v179[87] = [NSNumber numberWithDouble:*(*v2 + 1176)];
  v178[88] = @"GPGGALatencyMin";
  v179[88] = [NSNumber numberWithDouble:*(*v2 + 1184)];
  v178[89] = @"GPGGALatencyRMS";
  v87 = -1.0;
  if (*(*v2 + 1192) >= 0x5Bu)
  {
    v87 = sqrt(*(*v2 + 1216));
  }

  v179[89] = [NSNumber numberWithDouble:v87];
  v178[90] = @"GPGGALatencySTD";
  v88 = *(*v2 + 1192);
  v89 = -1.0;
  if (v88 >= 0x5B)
  {
    v89 = sqrt(*(*v2 + 1208) / (v88 - 1));
  }

  v179[90] = [NSNumber numberWithDouble:v89];
  v178[91] = @"GPGGASpacingAvg";
  v90 = -1.0;
  if (*(*v2 + 1240) >= 0x5Bu)
  {
    v90 = *(*v2 + 1248);
  }

  v179[91] = [NSNumber numberWithDouble:v90];
  v178[92] = @"GPGGASpacingMax";
  v179[92] = [NSNumber numberWithDouble:*(*v2 + 1224)];
  v178[93] = @"GPGGASpacingMin";
  v179[93] = [NSNumber numberWithDouble:*(*v2 + 1232)];
  v178[94] = @"GPGGASpacingRMS";
  v91 = -1.0;
  if (*(*v2 + 1240) >= 0x5Bu)
  {
    v91 = sqrt(*(*v2 + 1264));
  }

  v179[94] = [NSNumber numberWithDouble:v91];
  v178[95] = @"GPGGASpacingSTD";
  v92 = *(*v2 + 1240);
  v93 = -1.0;
  if (v92 >= 0x5B)
  {
    v93 = sqrt(*(*v2 + 1256) / (v92 - 1));
  }

  v179[95] = [NSNumber numberWithDouble:v93];
  v178[96] = @"PASCDLatencyAvg";
  v94 = -1.0;
  if (*(*v2 + 1320) >= 0x5Bu)
  {
    v94 = *(*v2 + 1328);
  }

  v179[96] = [NSNumber numberWithDouble:v94];
  v178[97] = @"PASCDLatencyMax";
  v179[97] = [NSNumber numberWithDouble:*(*v2 + 1304)];
  v178[98] = @"PASCDLatencyMin";
  v179[98] = [NSNumber numberWithDouble:*(*v2 + 1312)];
  v178[99] = @"PASCDLatencyRMS";
  v95 = -1.0;
  if (*(*v2 + 1320) >= 0x5Bu)
  {
    v95 = sqrt(*(*v2 + 1344));
  }

  v179[99] = [NSNumber numberWithDouble:v95];
  v178[100] = @"PASCDLatencySTD";
  v96 = *(*v2 + 1320);
  v97 = -1.0;
  if (v96 >= 0x5B)
  {
    v97 = sqrt(*(*v2 + 1336) / (v96 - 1));
  }

  v179[100] = [NSNumber numberWithDouble:v97];
  v178[101] = @"PASCDSpacingAvg";
  v98 = -1.0;
  if (*(*v2 + 1368) >= 0x5Bu)
  {
    v98 = *(*v2 + 1376);
  }

  v179[101] = [NSNumber numberWithDouble:v98];
  v178[102] = @"PASCDSpacingMax";
  v179[102] = [NSNumber numberWithDouble:*(*v2 + 1352)];
  v178[103] = @"PASCDSpacingMin";
  v179[103] = [NSNumber numberWithDouble:*(*v2 + 1360)];
  v178[104] = @"PASCDSpacingRMS";
  v99 = -1.0;
  if (*(*v2 + 1368) >= 0x5Bu)
  {
    v99 = sqrt(*(*v2 + 1392));
  }

  v179[104] = [NSNumber numberWithDouble:v99];
  v178[105] = @"PASCDSpacingSTD";
  v100 = *(*v2 + 1368);
  v101 = -1.0;
  if (v100 >= 0x5B)
  {
    v101 = sqrt(*(*v2 + 1384) / (v100 - 1));
  }

  v179[105] = [NSNumber numberWithDouble:v101];
  v178[106] = @"ChargingTypeMode";
  LODWORD(v177[0]) = 0;
  v179[106] = [NSNumber numberWithInt:sub_1006FE1E8(v4, v177, (*v2 + 344))];
  v178[107] = @"AppleMapsRoutingType";
  v175 = 6;
  v179[107] = [NSNumber numberWithInt:sub_1006FE1E8(v4, &v175, (*v2 + 1496))];
  v178[108] = @"NMEAScreeningLocationType";
  v174 = 0;
  v179[108] = [NSNumber numberWithInt:sub_1006FE1E8(v4, &v174, (*v2 + 1536))];
  v178[109] = @"PASCDRavenUsedSpeedMode";
  v173 = 0;
  v179[109] = [NSNumber numberWithInt:sub_1006FE1E8(v4, &v173, (*v2 + 1560))];
  v178[110] = @"PASCDRavenRejectedSpeedMode";
  v172 = 0;
  v179[110] = [NSNumber numberWithInt:sub_1006FE1E8(v4, &v172, (*v2 + 1584))];
  v178[111] = @"GPSUnc0To5Percentage";
  v102 = sub_1006FE250(*v2 + 416, 1, 0);
  v104 = *(*v2 + 504);
  if (v104)
  {
    LODWORD(v103) = llround(v102 * 100.0 / v104);
  }

  else
  {
    v103 = 0xFFFFFFFFLL;
  }

  v179[111] = [NSNumber numberWithInt:v103];
  v178[112] = @"GPSUnc5To10Percentage";
  v105 = sub_1006FE250(*v2 + 416, 2, 0);
  v107 = *(*v2 + 504);
  if (v107)
  {
    LODWORD(v106) = llround(v105 * 100.0 / v107);
  }

  else
  {
    v106 = 0xFFFFFFFFLL;
  }

  v179[112] = [NSNumber numberWithInt:v106];
  v178[113] = @"GPSUnc10To15Percentage";
  v108 = sub_1006FE250(*v2 + 416, 3, 0);
  v110 = *(*v2 + 504);
  if (v110)
  {
    LODWORD(v109) = llround(v108 * 100.0 / v110);
  }

  else
  {
    v109 = 0xFFFFFFFFLL;
  }

  v179[113] = [NSNumber numberWithInt:v109];
  v178[114] = @"GPSUnc15To20Percentage";
  v111 = sub_1006FE250(*v2 + 416, 4, 0);
  v113 = *(*v2 + 504);
  if (v113)
  {
    LODWORD(v112) = llround(v111 * 100.0 / v113);
  }

  else
  {
    v112 = 0xFFFFFFFFLL;
  }

  v179[114] = [NSNumber numberWithInt:v112];
  v178[115] = @"GPSUnc20To30Percentage";
  v114 = sub_1006FE250(*v2 + 416, 5, 0);
  v116 = *(*v2 + 504);
  if (v116)
  {
    LODWORD(v115) = llround(v114 * 100.0 / v116);
  }

  else
  {
    v115 = 0xFFFFFFFFLL;
  }

  v179[115] = [NSNumber numberWithInt:v115];
  v178[116] = @"GPSUnc30To40Percentage";
  v117 = sub_1006FE250(*v2 + 416, 6, 0);
  v119 = *(*v2 + 504);
  if (v119)
  {
    LODWORD(v118) = llround(v117 * 100.0 / v119);
  }

  else
  {
    v118 = 0xFFFFFFFFLL;
  }

  v179[116] = [NSNumber numberWithInt:v118];
  v178[117] = @"GPSUnc40To50Percentage";
  v120 = sub_1006FE250(*v2 + 416, 7, 0);
  v122 = *(*v2 + 504);
  if (v122)
  {
    LODWORD(v121) = llround(v120 * 100.0 / v122);
  }

  else
  {
    v121 = 0xFFFFFFFFLL;
  }

  v179[117] = [NSNumber numberWithInt:v121];
  v178[118] = @"GPSUnc50To70Percentage";
  v123 = sub_1006FE250(*v2 + 416, 8, 0);
  v125 = *(*v2 + 504);
  if (v125)
  {
    LODWORD(v124) = llround(v123 * 100.0 / v125);
  }

  else
  {
    v124 = 0xFFFFFFFFLL;
  }

  v179[118] = [NSNumber numberWithInt:v124];
  v178[119] = @"GPSUnc70To100Percentage";
  v126 = sub_1006FE250(*v2 + 416, 9, 0);
  v128 = *(*v2 + 504);
  if (v128)
  {
    LODWORD(v127) = llround(v126 * 100.0 / v128);
  }

  else
  {
    v127 = 0xFFFFFFFFLL;
  }

  v179[119] = [NSNumber numberWithInt:v127];
  v178[120] = @"GPSUncOver100To200Percentage";
  v129 = sub_1006FE250(*v2 + 416, 10, 0);
  v131 = *(*v2 + 504);
  if (v131)
  {
    LODWORD(v130) = llround(v129 * 100.0 / v131);
  }

  else
  {
    v130 = 0xFFFFFFFFLL;
  }

  v179[120] = [NSNumber numberWithInt:v130];
  v178[121] = @"GPSUncOver200To300Percentage";
  v132 = sub_1006FE250(*v2 + 416, 11, 0);
  v134 = *(*v2 + 504);
  if (v134)
  {
    LODWORD(v133) = llround(v132 * 100.0 / v134);
  }

  else
  {
    v133 = 0xFFFFFFFFLL;
  }

  v179[121] = [NSNumber numberWithInt:v133];
  v178[122] = @"GPSUncOver300Percentage";
  v135 = sub_1006FE250(*v2 + 416, 12, 0);
  v137 = *(*v2 + 504);
  if (v137)
  {
    LODWORD(v136) = llround(v135 * 100.0 / v137);
  }

  else
  {
    v136 = 0xFFFFFFFFLL;
  }

  v179[122] = [NSNumber numberWithInt:v136];
  v178[123] = @"GPSUncAverage";
  v138 = 0.0;
  if (*(*v2 + 504) >= 0x5Bu)
  {
    v138 = *(*v2 + 512);
  }

  v179[123] = [NSNumber numberWithDouble:round(v138)];
  v178[124] = @"GPSUncRMS";
  v139 = 0.0;
  if (*(*v2 + 504) >= 0x5Bu)
  {
    v139 = sqrt(*(*v2 + 528));
  }

  v179[124] = [NSNumber numberWithDouble:round(v139)];
  v178[125] = @"CarPlayLCFusionFeatureOffEpochCount";
  v179[125] = [NSNumber numberWithUnsignedInt:*(*v2 + 1656)];
  v178[126] = @"CarPlayLCFusionFeatureOnEpochCount";
  v179[126] = [NSNumber numberWithUnsignedInt:*(*v2 + 1660)];
  v178[127] = @"LCFusionAccessoryNotSelectedPercentage";
  v142 = *(*v2 + 1660);
  if (v142)
  {
    LODWORD(v141) = *(*v2 + 1664);
    LODWORD(v140) = llround(v141 * 100.0 / v142);
  }

  else
  {
    v140 = 0xFFFFFFFFLL;
  }

  v179[127] = [NSNumber numberWithInt:v140];
  v178[128] = @"LCFusionAccessoryNotSelectedEpochCount";
  v179[128] = [NSNumber numberWithUnsignedInt:*(*v2 + 1664)];
  v178[129] = @"LCFusionNumberOfHypothesisSessionMax";
  v179[129] = [NSNumber numberWithUnsignedInt:*(*v2 + 1724)];
  v178[130] = @"LCFusionMutliHypothesesAccessoryOutputEpochCount";
  v179[130] = [NSNumber numberWithUnsignedInt:*(*v2 + 1668)];
  v178[131] = @"LCFusionMutliHypothesesAccessoryOutputPercentage";
  v145 = *(*v2 + 1660);
  if (v145)
  {
    LODWORD(v144) = *(*v2 + 1668);
    LODWORD(v143) = llround(v144 * 100.0 / v145);
  }

  else
  {
    v143 = 0xFFFFFFFFLL;
  }

  v179[131] = [NSNumber numberWithInt:v143];
  v178[132] = @"LCFusionGPSNotSelectedEpochCount";
  v179[132] = [NSNumber numberWithUnsignedInt:*(*v2 + 1712)];
  v178[133] = @"LCFusionGPSNotSelectedPercentage";
  v148 = *(*v2 + 1660);
  if (v148)
  {
    LODWORD(v147) = *(*v2 + 1712);
    LODWORD(v146) = llround(v147 * 100.0 / v148);
  }

  else
  {
    v146 = 0xFFFFFFFFLL;
  }

  v179[133] = [NSNumber numberWithInt:v146];
  v178[134] = @"LCFusionGPSSelectedButOverriddenPercentage";
  v151 = *(*v2 + 1660);
  if (v151)
  {
    LODWORD(v150) = *(*v2 + 1716);
    LODWORD(v149) = llround(v150 * 100.0 / v151);
  }

  else
  {
    v149 = 0xFFFFFFFFLL;
  }

  v179[134] = [NSNumber numberWithInt:v149];
  v178[135] = @"LCFusionGPSBadQualityPercentage";
  v154 = *(*v2 + 1660);
  if (v154)
  {
    LODWORD(v153) = *(*v2 + 1708);
    LODWORD(v152) = llround(v153 * 100.0 / v154);
  }

  else
  {
    v152 = 0xFFFFFFFFLL;
  }

  v179[135] = [NSNumber numberWithInt:v152];
  v178[136] = @"LCFusionGPSAccessoryDisagreeEpochCount";
  v179[136] = [NSNumber numberWithUnsignedInt:*(*v2 + 1672)];
  v178[137] = @"LCFusionGPSAccessoryDisagreePercentage";
  v157 = *(*v2 + 1660);
  if (v157)
  {
    LODWORD(v156) = *(*v2 + 1672);
    LODWORD(v155) = llround(v156 * 100.0 / v157);
  }

  else
  {
    v155 = 0xFFFFFFFFLL;
  }

  v179[137] = [NSNumber numberWithInt:v155];
  v178[138] = @"LCFusionHigherUncAccessoryYieldedPercentage";
  v160 = *(*v2 + 1660);
  if (v160)
  {
    LODWORD(v159) = *(*v2 + 1720);
    LODWORD(v158) = llround(v159 * 100.0 / v160);
  }

  else
  {
    v158 = 0xFFFFFFFFLL;
  }

  v179[138] = [NSNumber numberWithInt:v158];
  v178[139] = @"LCFusionWiFiFusedEpochCount";
  v179[139] = [NSNumber numberWithUnsignedInt:*(*v2 + 1684)];
  v178[140] = @"LCFusionTimeSinceLastWiFiFixSessionMax";
  v179[140] = [NSNumber numberWithUnsignedInt:*(*v2 + 1728)];
  v178[141] = @"LCFusionWiFiGPSDisagreePercentage";
  v163 = *(*v2 + 1660);
  if (v163)
  {
    LODWORD(v162) = *(*v2 + 1676);
    LODWORD(v161) = llround(v162 * 100.0 / v163);
  }

  else
  {
    v161 = 0xFFFFFFFFLL;
  }

  v179[141] = [NSNumber numberWithInt:v161];
  v178[142] = @"LCFusionWiFiAccessoryDisagreePercentage";
  v166 = *(*v2 + 1660);
  if (v166)
  {
    LODWORD(v165) = *(*v2 + 1680);
    LODWORD(v164) = llround(v165 * 100.0 / v166);
  }

  else
  {
    v164 = 0xFFFFFFFFLL;
  }

  v179[142] = [NSNumber numberWithInt:v164];
  v178[143] = @"LCFusionWiFiFusedPercentage";
  v169 = *(*v2 + 1660);
  if (v169)
  {
    LODWORD(v168) = *(*v2 + 1684);
    LODWORD(v167) = llround(v168 * 100.0 / v169);
  }

  else
  {
    v167 = 0xFFFFFFFFLL;
  }

  v179[143] = [NSNumber numberWithInt:v167];
  v178[144] = @"LCFusionDistanceAccessoryToFuserStateSessionMax";
  v179[144] = [NSNumber numberWithUnsignedInt:*(*v2 + 1688)];
  v178[145] = @"LCFusionDistanceAccessoryToGPSSessionMax";
  v179[145] = [NSNumber numberWithUnsignedInt:*(*v2 + 1692)];
  v178[146] = @"LCFusionDistanceAccessoryToOutput";
  v179[146] = [NSNumber numberWithUnsignedInt:*(*v2 + 1696)];
  v178[147] = @"LCFusionDistanceAccessoryToWiFiSessionMax";
  v179[147] = [NSNumber numberWithUnsignedInt:*(*v2 + 1700)];
  v178[148] = @"LCFusionDistanceGPSToOutputSessionMax";
  v179[148] = [NSNumber numberWithUnsignedInt:*(*v2 + 1704)];
  v170 = [NSDictionary dictionaryWithObjects:v179 forKeys:v178 count:149];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v170;
}

void sub_1006FE0C4(uint64_t a1@<X1>, void *a2@<X2>, std::string *a3@<X8>)
{
  v4 = *(a1 + 23);
  if (a2[2])
  {
    if (v4 < 0)
    {
      sub_100007244(a3, *a1, *(a1 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a1;
      a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    v8 = *a2;
    v6 = a2 + 1;
    v7 = v8;
    if (v8 != v6)
    {
      v9 = 0;
      do
      {
        if (v9 < *(v7 + 14))
        {
          std::string::operator=(a3, (v7 + 4));
          v9 = *(v7 + 14);
        }

        v10 = v7[1];
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
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v7 = v11;
      }

      while (v11 != v6);
    }
  }

  else if (v4 < 0)
  {
    v13 = *(a1 + 8);
    v14 = *a1;

    sub_100007244(a3, v14, v13);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void sub_1006FE1CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FE1E8(uint64_t a1, unsigned int *a2, void *a3)
{
  result = *a2;
  if (a3[2])
  {
    v6 = *a3;
    v4 = a3 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = 0;
      do
      {
        v8 = *(v5 + 8);
        v9 = v7 >= v8;
        if (v7 <= v8)
        {
          v7 = *(v5 + 8);
        }

        if (v9)
        {
          result = result;
        }

        else
        {
          result = *(v5 + 7);
        }

        v10 = v5[1];
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
            v11 = v5[2];
            v12 = *v11 == v5;
            v5 = v11;
          }

          while (!v12);
        }

        v5 = v11;
      }

      while (v11 != v4);
    }
  }

  return result;
}

uint64_t sub_1006FE250(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  for (i = *(a1 + 8); i; i = *i)
  {
    v4 = *(i + 7);
    if (v4 <= a2)
    {
      if (v4 >= a2)
      {
        return *sub_1001FD038(a1, &v6);
      }

      ++i;
    }
  }

  return a3;
}

NSDictionary *sub_1006FE2A8(uint64_t a1)
{
  v23[0] = @"UnsupportedMessage";
  v2 = *(a1 + 40);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v24[0] = [NSString stringWithUTF8String:v2];
  v23[1] = @"AccessoryManufacturer";
  v3 = *(a1 + 48);
  v4 = (v3 + 40);
  if (*(v3 + 63) < 0)
  {
    v4 = *v4;
  }

  v24[1] = [NSString stringWithUTF8String:v4];
  v23[2] = @"AccessoryModel";
  v5 = *(a1 + 48);
  v6 = (v5 + 88);
  if (*(v5 + 111) < 0)
  {
    v6 = *v6;
  }

  v24[2] = [NSString stringWithUTF8String:v6];
  v23[3] = @"AccessoryName";
  v7 = *(a1 + 48);
  v8 = (v7 + 64);
  if (*(v7 + 87) < 0)
  {
    v8 = *v8;
  }

  v24[3] = [NSString stringWithUTF8String:v8];
  v23[4] = @"AccessoryFirmwareVersion";
  v9 = *(a1 + 48);
  v10 = (v9 + 112);
  if (*(v9 + 135) < 0)
  {
    v10 = *v10;
  }

  v24[4] = [NSString stringWithUTF8String:v10];
  v23[5] = @"AccessoryHardwareVersion";
  v11 = *(a1 + 48);
  v12 = (v11 + 136);
  if (*(v11 + 159) < 0)
  {
    v12 = *v12;
  }

  v24[5] = [NSString stringWithUTF8String:v12];
  v23[6] = @"BundleId";
  sub_1006FE0C4(*(a1 + 48) + 16, (*(a1 + 48) + 1456), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v24[6] = [NSString stringWithUTF8String:p_p];
  v23[7] = @"PPID";
  v14 = *(a1 + 48);
  v15 = (v14 + 160);
  if (*(v14 + 183) < 0)
  {
    v15 = *v15;
  }

  v24[7] = [NSString stringWithUTF8String:v15];
  v23[8] = @"IsOnDenyList";
  v24[8] = [NSNumber numberWithBool:*(*(a1 + 48) + 188)];
  v23[9] = @"IsCarPlaySessionWireless";
  v24[9] = [NSNumber numberWithBool:*(*(a1 + 48) + 208) != 0];
  v23[10] = @"IsDeviceCharging";
  v24[10] = [NSNumber numberWithBool:*(*(a1 + 48) + 336) != 0];
  v23[11] = @"DeviceChargingPercentage";
  v18 = *(a1 + 48);
  v19 = *(v18 + 192);
  if (v19)
  {
    LODWORD(v17) = *(v18 + 336);
    LODWORD(v16) = llround(v17 * 100.0 / v19);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  v24[11] = [NSNumber numberWithInt:v16];
  v23[12] = @"IsAppleMapsRerouted";
  v24[12] = [NSNumber numberWithBool:*(*(a1 + 48) + 1484) != 0];
  v23[13] = @"AppleMapsReroutesPerHour";
  v24[13] = [NSNumber numberWithInt:*(a1 + 56)];
  v23[14] = @"AppleMapsProceedToRoutesPerHour";
  v24[14] = [NSNumber numberWithInt:*(a1 + 60)];
  v23[15] = @"AppleMapsReroutesOrPTRPerHour";
  v24[15] = [NSNumber numberWithInt:*(a1 + 64)];
  v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:16];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v20;
}

uint64_t sub_1006FE618(uint64_t a1, int *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1019165FC();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    v11 = a2[7];
    *buf = 67176449;
    v14 = v4;
    v15 = 1025;
    v16 = v5;
    v17 = 1025;
    v18 = v6;
    v19 = 1025;
    v20 = v7;
    v21 = 1025;
    v22 = v8;
    v23 = 1025;
    v24 = v9;
    v25 = 1025;
    v26 = v10;
    v27 = 1025;
    v28 = v11;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#gnssca,AssistanceFileCountMetrics,Submit to CA,shortTermOrbitAssistanceDailyDownloadCount,%{private}d,longTermOrbitAssistanceDailyDownloadCount,%{private}d,rtiDailyDownloadCount,%{private}d,ravenGnssAssistanceDailyDownloadCount,%{private}d,shortTermOrbitAssistanceDailyDownloadLargeCount,%{private}d,longTermOrbitAssistanceDailyDownloadLargeCount,%{private}d,rtiDailyDownloadLargeCount,%{private}d,ravenGnssAssistanceDailyDownloadLargeCount,%{private}d", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916610(a2);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FE790(uint64_t a1)
{
  v3[0] = @"shortTermOrbitAssistanceDailyDownloadCount";
  v4[0] = [NSNumber numberWithUnsignedInt:**(a1 + 32)];
  v3[1] = @"longTermOrbitAssistanceDailyDownloadCount";
  v4[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 4)];
  v3[2] = @"rtiDailyDownloadCount";
  v4[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v3[3] = @"ravenGnssAssistanceDailyDownloadCount";
  v4[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v3[4] = @"shortTermOrbitAssistanceDailyDownloadLargeCount";
  v4[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v3[5] = @"longTermOrbitAssistanceDailyDownloadLargeCount";
  v4[5] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v3[6] = @"rtiDailyDownloadLargeCount";
  v4[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 24)];
  v3[7] = @"ravenGnssAssistanceDailyDownloadLargeCount";
  v4[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 28)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
}

uint64_t sub_1006FE900(uint64_t a1, int *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1019165FC();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[14];
    *buf = 67175937;
    v22 = v4;
    v23 = 1025;
    v24 = v5;
    v25 = 1025;
    v26 = v6;
    v27 = 1025;
    v28 = v7;
    v29 = 1025;
    v30 = v8;
    v31 = 1025;
    v32 = v9;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#gnssca,GnssPowerAnalyticMetrics,Submit to CA,totalDailyGnssUsageSeconds,%{private}d,totalDailyClientGnssUsageSeconds,%{private}d,totalDailyProactiveGnssUsageSeconds,%{private}d,totalDailyGnssDebounceSeconds,%{private}d,totalDailyExclusiveProactiveGnssSeconds,%{private}d,totalDailyGnssSecondsProactiveLocationNetBalance,%{private}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916758(a2);
  }

  AnalyticsSendEventLazy();
  if (qword_1025D4650 != -1)
  {
    sub_101916854();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v11 = a2[5];
    v12 = a2[6];
    v13 = a2[7];
    v14 = a2[8];
    v15 = a2[9];
    v16 = a2[10];
    v17 = a2[11];
    v18 = a2[12];
    v19 = a2[13];
    *buf = 67176705;
    v22 = v11;
    v23 = 1025;
    v24 = v12;
    v25 = 1025;
    v26 = v13;
    v27 = 1025;
    v28 = v14;
    v29 = 1025;
    v30 = v15;
    v31 = 1025;
    v32 = v16;
    v33 = 1025;
    v34 = v17;
    v35 = 1025;
    v36 = v18;
    v37 = 1025;
    v38 = v19;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#gnssca,GnssDailyPowerAnalyticsWithContext,Submit to CA,dailyClientGnssDisplayOnOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOnInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnInsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffInsideVisitSeconds,%{private}d,dailyGnssUsageWithShortOrWiFiAssociatedSessionsSeconds,%{private}d", buf, 0x38u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191687C(a2);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FEB98(uint64_t a1)
{
  v3[0] = @"totalDailyGnssUsageSeconds";
  v4[0] = [NSNumber numberWithUnsignedInt:**(a1 + 32)];
  v3[1] = @"totalDailyClientGnssUsageSeconds";
  v4[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 4)];
  v3[2] = @"totalDailyProactiveGnssUsageSeconds";
  v4[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v3[3] = @"totalDailyGnssDebounceSeconds";
  v4[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v3[4] = @"totalDailyExclusiveProactiveGnssSeconds";
  v4[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v3[5] = @"totalDailyProactiveLocationMinusGnssSavings";
  v4[5] = [NSNumber numberWithInt:*(*(a1 + 32) + 56)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

NSDictionary *sub_1006FECC8(uint64_t a1)
{
  v3[0] = @"dailyClientGnssDisplayOnOutsideVisitSeconds";
  v4[0] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v3[1] = @"dailyDebouncePeriodDisplayOnOutsideVisitSeconds";
  v4[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 24)];
  v3[2] = @"dailyClientGnssDisplayOnInsideVisitSeconds";
  v4[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 28)];
  v3[3] = @"dailyDebouncePeriodDisplayOnInsideVisitSeconds";
  v4[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v3[4] = @"dailyClientGnssDisplayOffOutsideVisitSeconds";
  v4[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 36)];
  v3[5] = @"dailyDebouncePeriodDisplayOffOutsideVisitSeconds";
  v4[5] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v3[6] = @"dailyClientGnssDisplayOffInsideVisitSeconds";
  v4[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v3[7] = @"dailyDebouncePeriodDisplayOffInsideVisitSeconds";
  v4[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 48)];
  v3[8] = @"dailyGnssUsageWithShortOrWiFiAssociatedSessionsSeconds";
  v4[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 52)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:9];
}

uint64_t sub_1006FEE58(uint64_t a1, int *a2, uint64_t a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1019165FC();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssca Submit gnss session metric to CA", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019169D0();
  }

  sub_10001CAF4(buf);
  LOBYTE(v306[0]) = 0;
  v5 = sub_10001CB4C(*buf, "EnableVerboseGnssAnalyticsSubmissionLogging", v306, 0xFFFFFFFFLL);
  v6 = (v5 & v306[0]);
  if (*v308)
  {
    sub_100008080(*v308);
  }

  if (v6)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101916854();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a3 + 23) >= 0 ? a3 : *a3;
      v9 = *(a3 + 24);
      v10 = *(a3 + 212);
      v11 = *(a3 + 213);
      v12 = *(a3 + 28);
      v13 = *(a3 + 214);
      v14 = *(a3 + 29);
      v15 = *(a3 + 30);
      v16 = *(a3 + 31);
      v17 = *(a3 + 32);
      *buf = 68291587;
      *v308 = 2082;
      *&buf[4] = 0;
      *&v308[2] = "";
      v309 = 2081;
      *v310 = v8;
      *&v310[8] = 1025;
      *v311 = v9;
      *&v311[4] = 1025;
      *v312 = v10;
      *&v312[4] = 1025;
      *v313 = v11;
      *&v313[4] = 1025;
      *v314 = v12;
      *&v314[4] = 1025;
      *v315 = v13;
      *&v315[4] = 1025;
      *v316 = v14;
      *&v316[4] = 1025;
      *v317 = v15;
      *&v317[4] = 1025;
      *v318 = v16;
      *&v318[4] = 1025;
      *&v318[6] = v17;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, bundleId:%{private, location:escape_only}s, ratType:%{private}d, isShortTermOrbitAssistanceFileAvailable:%{private}d, isLongTermOrbitAssistanceFileAvailable:%{private}d, isRtiFileAvailable:%{private}d, isRavenGnssAssistanceFileAvailable:%{private}d, isExtendedEphemerisFileInjected:%{private}d, isTimeAssistanceProvided:%{private}d, isDEMAssistanceProvided:%{private}d, isCPIAssistanceProvided:%{private}d}", buf, 0x52u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a3 + 36);
      v20 = *(a3 + 40);
      v21 = *(a3 + 44);
      v22 = *(a3 + 48);
      v23 = *(a3 + 52);
      v24 = *(a3 + 56);
      v25 = *(a3 + 60);
      v26 = *(a3 + 64);
      v27 = *(a3 + 68);
      v29 = *(a3 + 116);
      v28 = *(a3 + 120);
      v30 = *(a3 + 124);
      v31 = *(a3 + 128);
      v32 = *(a3 + 132);
      v33 = *(a3 + 136);
      v34 = *(a3 + 140);
      v35 = *(a3 + 144);
      v36 = *(a3 + 148);
      v37 = *(a3 + 232);
      v38 = *(a3 + 236);
      v39 = *(a3 + 156);
      v40 = *(a3 + 160);
      *buf = 68294659;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v19;
      *&v310[4] = 1025;
      *&v310[6] = v20;
      *v311 = 1025;
      *&v311[2] = v21;
      *v312 = 1025;
      *&v312[2] = v22;
      *v313 = 1025;
      *&v313[2] = v23;
      *v314 = 1025;
      *&v314[2] = v24;
      *v315 = 1025;
      *&v315[2] = v25;
      *v316 = 1025;
      *&v316[2] = v26;
      *v317 = 1025;
      *&v317[2] = v27;
      *v318 = 1025;
      *&v318[2] = v29;
      *&v318[6] = 1025;
      *&v318[8] = v28;
      *&v318[12] = 1025;
      *&v318[14] = v30;
      *v319 = 1025;
      *&v319[2] = v31;
      *&v319[6] = 1025;
      *&v319[8] = v32;
      *&v319[12] = 1025;
      *&v319[14] = v33;
      *&v319[18] = 1025;
      *&v319[20] = v34;
      *&v319[24] = 1025;
      *&v319[26] = v35;
      *&v319[30] = 1025;
      *v320 = v36;
      *&v320[4] = 1025;
      *v321 = v39;
      *&v321[4] = 1025;
      *v322 = v37;
      *&v322[4] = 1025;
      *v323 = v38;
      *&v323[4] = 1025;
      *v324 = v40;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, gpsL1Cn0Avg:%{private}d, qzssL1Cn0Avg:%{private}d, galileoL1Cn0Avg:%{private}d, beidouL1Cn0Avg:%{private}d, glonassL1Cn0Avg:%{private}d, gpsL5Cn0Avg:%{private}d, qzssL5Cn0Avg:%{private}d, galileoL5Cn0Avg:%{private}d, beidouL5Cn0Avg:%{private}d, gpsL1SignalCountAvg:%{private}d, qzssL1SignalCountAvg:%{private}d, galileoL1SignalCountAvg:%{private}d, beidouL1SignalCountAvg:%{private}d, glonassL1SignalCountAvg:%{private}d, gpsL5SignalCountAvg:%{private}d, qzssL5SignalCountAvg:%{private}d, galileoL5SignalCountAvg:%{private}d, beidouL5SignalCountAvg:%{private}d, signalEnvironmentMode:%{private}d, powerMeasurementMode:%{private}d, powerStateMode:%{private}d, horizontalUncertaintyAvg:%{private}d}", buf, 0x96u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a3 + 164);
      v43 = *(a3 + 168);
      v44 = *(a3 + 172);
      v45 = *(a3 + 176);
      v46 = *(a3 + 180);
      v47 = *(a3 + 184);
      v48 = *(a3 + 185);
      v49 = *(a3 + 186);
      v50 = *(a3 + 188);
      v51 = *(a3 + 192);
      v52 = *(a3 + 196);
      v53 = *(a3 + 200);
      v54 = *(a3 + 204);
      v55 = *(a3 + 208);
      v56 = *(a3 + 216);
      v57 = *(a3 + 220);
      v58 = *(a3 + 224);
      v59 = *(a3 + 228);
      *buf = 68293635;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v42;
      *&v310[4] = 1025;
      *&v310[6] = v43;
      *v311 = 1025;
      *&v311[2] = v44;
      *v312 = 1025;
      *&v312[2] = v45;
      *v313 = 1025;
      *&v313[2] = v46;
      *v314 = 1025;
      *&v314[2] = v47;
      *v315 = 1025;
      *&v315[2] = v48;
      *v316 = 1025;
      *&v316[2] = v49;
      *v317 = 1025;
      *&v317[2] = v50;
      *v318 = 1025;
      *&v318[2] = v51;
      *&v318[6] = 1025;
      *&v318[8] = v52;
      *&v318[12] = 1025;
      *&v318[14] = v53;
      *v319 = 1025;
      *&v319[2] = v54;
      *&v319[6] = 1025;
      *&v319[8] = v55;
      *&v319[12] = 1025;
      *&v319[14] = v56;
      *&v319[18] = 1025;
      *&v319[20] = v57;
      *&v319[24] = 1025;
      *&v319[26] = v58;
      *&v319[30] = 1025;
      *v320 = v59;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, mountStateMode:%{private}d, motionActivityMode:%{private}d, movingStateMode:%{private}d, sessionDuration:%{private}d, deviceOrientationMode:%{private}d, isDisplayOn:%{private}d, isReachable:%{private}d, isBatterySaverModeOn:%{private}d, chargerTypeHistMode:%{private}d, thermalLevelAvg:%{private}d, isAccessoryYieldingLocations:%{private}d, l5OnOffStateMode:%{private}d, positionContextStateMode:%{private}d, xoCalibrationState:%{private}d, sessionStartPositionAssistHorzReliability:%{private}d, sessionStartPositionAssistHorzAcc:%{private}d, sessionStartPositionAssistType:%{private}d, wasWiFiPositioningAvailable:%{private}d}", buf, 0x7Eu);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v60 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v61 = *(a2 + 432);
      v62 = *(a2 + 433);
      v63 = *(a2 + 434);
      v64 = *(a2 + 435);
      v65 = *(a2 + 436);
      v66 = *(a2 + 437);
      v67 = *(a2 + 438);
      v68 = *(a2 + 439);
      v69 = *(a2 + 440);
      v70 = *(a2 + 441);
      v71 = *(a2 + 264);
      v72 = *(a2 + 265);
      v73 = *(a2 + 266);
      v74 = *(a2 + 267);
      v75 = *(a2 + 268);
      v76 = a2[68];
      v77 = a2[69];
      v78 = a2[70];
      v79 = *(a2 + 442);
      *buf = 68293891;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v61;
      *&v310[4] = 1025;
      *&v310[6] = v62;
      *v311 = 1025;
      *&v311[2] = v63;
      *v312 = 1025;
      *&v312[2] = v64;
      *v313 = 1025;
      *&v313[2] = v65;
      *v314 = 1025;
      *&v314[2] = v66;
      *v315 = 1025;
      *&v315[2] = v67;
      *v316 = 1025;
      *&v316[2] = v68;
      *v317 = 1025;
      *&v317[2] = v69;
      *v318 = 1025;
      *&v318[2] = v70;
      *&v318[6] = 1025;
      *&v318[8] = v71;
      *&v318[12] = 1025;
      *&v318[14] = v72;
      *v319 = 1025;
      *&v319[2] = v73;
      *&v319[6] = 1025;
      *&v319[8] = v74;
      *&v319[12] = 1025;
      *&v319[14] = v75;
      *&v319[18] = 1025;
      *&v319[20] = v76;
      *&v319[24] = 1025;
      *&v319[26] = v77;
      *&v319[30] = 1025;
      *v320 = v78;
      *&v320[4] = 1025;
      *v321 = v79;
      _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, isTimePreceedsBuildTime:%{private}d, isTimePreceedsExtendedEphemerisTime:%{private}d, isTimeJumpForward100Seconds:%{private}d, isTimeJumpBackward100Seconds:%{private}d, isLnavAntiSpoofBitZeroOnMultipleSvs:%{private}d, isOtaLeapSecondInconsistentWithExtendedEphemeris:%{private}d, isExcessiveSignalStrength:%{private}d, isHigherOrderOtaEphemerisAllZeroOnMultipleSvs:%{private}d, isOtaUtcModelInconsistentWithExtendedEphemeris:%{private}d, isOtaParameterOutOfBoundsOnMultipleSvs:%{private}d, isCn0LowVariance:%{private}d, isCn0HighValue:%{private}d, isKacRegion:%{private}d, isAltitudeOutOfBounds:%{private}d, isTimePreceedingBuildTime:%{private}d, numCn0StatsBlockedFix:%{private}d, numFixesFromFFCn0LowVarSet:%{private}d, numFixesFromFFCn0LowVarReset:%{private}d, isSessionSpoofed:%{private}d}", buf, 0x84u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v80 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v81 = *(a3 + 76);
      v82 = *(a3 + 80);
      v83 = *(a3 + 84);
      v84 = *(a3 + 88);
      v85 = *(a3 + 92);
      v86 = *(a3 + 96);
      v87 = *(a3 + 100);
      v88 = *(a3 + 104);
      v89 = *(a3 + 108);
      *buf = 68291331;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v81;
      *&v310[4] = 1025;
      *&v310[6] = v82;
      *v311 = 1025;
      *&v311[2] = v83;
      *v312 = 1025;
      *&v312[2] = v84;
      *v313 = 1025;
      *&v313[2] = v85;
      *v314 = 1025;
      *&v314[2] = v86;
      *v315 = 1025;
      *&v315[2] = v87;
      *v316 = 1025;
      *&v316[2] = v88;
      *v317 = 1025;
      *&v317[2] = v89;
      _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, gpsL1Cn0AvgFineRes:%{private}d, qzssL1Cn0AvgFineRes:%{private}d, galileoL1Cn0AvgFineRes:%{private}d, beidouL1Cn0AvgFineRes:%{private}d, glonassL1Cn0AvgFineRes:%{private}d, gpsL5Cn0AvgFineRes:%{private}d, qzssL5Cn0AvgFineRes:%{private}d, galileoL5Cn0AvgFineRes:%{private}d, beidouL5Cn0AvgFineRes:%{private}d}", buf, 0x48u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v90 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v92 = *a2;
      v91 = a2[1];
      v93 = a2[2];
      v94 = a2[3];
      v95 = a2[4];
      v96 = a2[5];
      v97 = a2[6];
      v98 = a2[7];
      v99 = a2[8];
      v100 = *(a2 + 5);
      v101 = a2[12];
      v102 = *(a2 + 7);
      v103 = a2[16];
      v104 = a2[17];
      v105 = a2[18];
      v106 = a2[19];
      v107 = a2[20];
      v108 = a2[21];
      v109 = a2[22];
      v110 = a2[23];
      v111 = a2[24];
      v112 = a2[25];
      *buf = 68294659;
      *v308 = 2082;
      *&buf[4] = 0;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v91;
      *&v310[4] = 1025;
      *&v310[6] = v93;
      *v311 = 1025;
      *&v311[2] = v92;
      *v312 = 1025;
      *&v312[2] = v94;
      *v313 = 1025;
      *&v313[2] = v95;
      *v314 = 1025;
      *&v314[2] = v96;
      *v315 = 1025;
      *&v315[2] = v97;
      *v316 = 1025;
      *&v316[2] = v98;
      *v317 = 1025;
      *&v317[2] = v99;
      *v318 = 2049;
      *&v318[2] = v100;
      *&v318[10] = 1025;
      *&v318[12] = v101;
      *&v318[16] = 2049;
      *v319 = v102;
      *&v319[8] = 1025;
      *&v319[10] = v103;
      *&v319[14] = 1025;
      *&v319[16] = v104;
      *&v319[20] = 1025;
      *&v319[22] = v105;
      *&v319[26] = 1025;
      *&v319[28] = v106;
      *v320 = 1025;
      *&v320[2] = v107;
      *v321 = 1025;
      *&v321[2] = v108;
      *v322 = 1025;
      *&v322[2] = v109;
      *v323 = 1025;
      *&v323[2] = v110;
      *v324 = 1025;
      *&v324[2] = v111;
      v325 = 1025;
      v326 = v112;
      _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, shortTermOrbitAssistanceFileAgeSeconds:%{private}d, longTermOrbitAssistanceFileAgeSeconds:%{private}d, rtiFileAgeSeconds:%{private}d, ravenGnssAssistanceFileAgeSeconds:%{private}d, pctYield:%{private}d, pctYieldPostFirstFix:%{private}d, yieldCount:%{private}d, ttff:%{private}d, epochCount:%{private}d, cellularUplinkTxBandwidth:%{private}f, cellularBand:%{private}d, cellularUplinkTxFrequency:%{private}f, cellularRSRP:%{private}d, cellularSNR:%{private}d, cellularBandEpochCount:%{private}d, mmPAssisProvPct:%{private}d, demAssisProvPct:%{private}d, taAssisProvPct:%{private}d, timeAssisProvPct:%{private}d, cpiPositionAssisProvPct:%{private}d, cpiTlyCpldPosAssisProvPct:%{private}d, rtiProvPct:%{private}d}", buf, 0x9Eu);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v113 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v114 = a2[26];
      v115 = a2[27];
      v116 = a2[28];
      v117 = a2[29];
      v118 = a2[30];
      v119 = a2[31];
      v120 = a2[32];
      v121 = a2[33];
      v122 = a2[34];
      *buf = 68291331;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v114;
      *&v310[4] = 1025;
      *&v310[6] = v115;
      *v311 = 1025;
      *&v311[2] = v116;
      *v312 = 1025;
      *&v312[2] = v117;
      *v313 = 1025;
      *&v313[2] = v118;
      *v314 = 1025;
      *&v314[2] = v119;
      *v315 = 1025;
      *&v315[2] = v120;
      *v316 = 1025;
      *&v316[2] = v121;
      *v317 = 1025;
      *&v317[2] = v122;
      _os_log_impl(dword_100000000, v113, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, accelDataProvPct:%{private}d, gyroDataProvPct:%{private}d, pressureDataProvPct:%{private}d, pedSpeedDataProvPct:%{private}d, pedSpeedConDataProvPct:%{private}d, motionDataProvPct:%{private}d, ephemerisProvPct:%{private}d, mountStateProvPct:%{private}d, signalEnvirDataProvPct:%{private}d}", buf, 0x48u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v123 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v124 = a2[35];
      v125 = a2[36];
      v126 = a2[37];
      v127 = a2[38];
      v128 = a2[39];
      v129 = a2[40];
      v130 = a2[41];
      v131 = a2[42];
      v132 = a2[43];
      v133 = a2[44];
      v134 = a2[45];
      v135 = a2[46];
      v136 = a2[47];
      v137 = a2[48];
      v138 = a2[49];
      *buf = 68292867;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v124;
      *&v310[4] = 1025;
      *&v310[6] = v125;
      *v311 = 1025;
      *&v311[2] = v126;
      *v312 = 1025;
      *&v312[2] = v127;
      *v313 = 1025;
      *&v313[2] = v128;
      *v314 = 1025;
      *&v314[2] = v129;
      *v315 = 1025;
      *&v315[2] = v130;
      *v316 = 1025;
      *&v316[2] = v131;
      *v317 = 1025;
      *&v317[2] = v132;
      *v318 = 1025;
      *&v318[2] = v133;
      *&v318[6] = 1025;
      *&v318[8] = v134;
      *&v318[12] = 1025;
      *&v318[14] = v135;
      *v319 = 1025;
      *&v319[2] = v136;
      *&v319[6] = 1025;
      *&v319[8] = v137;
      *&v319[12] = 1025;
      *&v319[14] = v138;
      _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, motionActivContextProvPct:%{private}d, mmPAssisUsedPct:%{private}d, demAssisUsedPct:%{private}d, taAssisUsedPct:%{private}d, timeAssisUsedPct:%{private}d, cpiPositionAssisUsedPct:%{private}d, cpiTlyCpldPosAssisUsedPct:%{private}d, rtiUsedPct:%{private}d, accelDataUsedPct:%{private}d, gyroDataUsedPct:%{private}d, pressureDataUsedPct:%{private}d, pedSpeedDataUsedPct:%{private}d, pedSpeedConDataUsedPct:%{private}d, motionDataUsedPct:%{private}d, ephemerisUsedPct:%{private}d}", buf, 0x6Cu);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v139 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v140 = a2[50];
      v141 = a2[51];
      v142 = a2[52];
      v143 = a2[53];
      v144 = a2[54];
      v145 = a2[55];
      v146 = a2[56];
      v147 = a2[57];
      v148 = a2[58];
      v149 = a2[59];
      v150 = *(a2 + 30);
      v151 = a2[62];
      v152 = a2[63];
      v153 = a2[64];
      v154 = a2[65];
      v155 = *(a2 + 53);
      *buf = 68293123;
      *v308 = 2082;
      *&buf[4] = 0;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v140;
      *&v310[4] = 1025;
      *&v310[6] = v141;
      *v311 = 1025;
      *&v311[2] = v142;
      *v312 = 1025;
      *&v312[2] = v143;
      *v313 = 1025;
      *&v313[2] = v144;
      *v314 = 1025;
      *&v314[2] = v145;
      *v315 = 1025;
      *&v315[2] = v146;
      *v316 = 1025;
      *&v316[2] = v147;
      *v317 = 1025;
      *&v317[2] = v148;
      *v318 = 1025;
      *&v318[2] = v149;
      *&v318[6] = 2049;
      *&v318[8] = v150;
      *&v318[16] = 1025;
      *v319 = v151;
      *&v319[4] = 1025;
      *&v319[6] = v152;
      *&v319[10] = 1025;
      *&v319[12] = v153;
      *&v319[16] = 1025;
      *&v319[18] = v154;
      *&v319[22] = 2049;
      *&v319[24] = v155;
      _os_log_impl(dword_100000000, v139, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, mountStateUsedPct:%{private}d, signalEnvirDataUsedPct:%{private}d, motionActivContextUsedPct:%{private}d, displayOnPct:%{private}d, reachablePct:%{private}d, batterySaverModeOnPct:%{private}d, anomalyStatusUnknownPct:%{private}d, anomalyStatusSimulatedPct:%{private}d, anomalyStatusAuthenticPct:%{private}d, anomalyStatusMaybeSimulatedPct:%{private}d, deresFinalAltitude:%{private}f, antL5BestDurationPct:%{private}d, antL5OtherDurationPct:%{private}d, antL5WorstDurationPct:%{private}d, gnssL5BlankingDurationPct:%{private}d, deltaFirstFixAndPositionAssistMeters:%{private}f}", buf, 0x7Au);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v156 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v157 = a2[122];
      v158 = a2[123];
      v159 = a2[124];
      v160 = a2[125];
      v161 = a2[126];
      v162 = a2[127];
      v163 = a2[128];
      v164 = a2[129];
      v165 = a2[130];
      v166 = a2[131];
      v167 = a2[132];
      v168 = a2[133];
      v169 = a2[134];
      v170 = a2[152];
      v171 = a2[154];
      v172 = a2[156];
      v173 = a2[151];
      v174 = a2[153];
      v175 = a2[155];
      *buf = 68293891;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v157;
      *&v310[4] = 1025;
      *&v310[6] = v158;
      *v311 = 1025;
      *&v311[2] = v159;
      *v312 = 1025;
      *&v312[2] = v160;
      *v313 = 1025;
      *&v313[2] = v161;
      *v314 = 1025;
      *&v314[2] = v162;
      *v315 = 1025;
      *&v315[2] = v163;
      *v316 = 1025;
      *&v316[2] = v164;
      *v317 = 1025;
      *&v317[2] = v165;
      *v318 = 1025;
      *&v318[2] = v166;
      *&v318[6] = 1025;
      *&v318[8] = v167;
      *&v318[12] = 1025;
      *&v318[14] = v168;
      *v319 = 1025;
      *&v319[2] = v169;
      *&v319[6] = 1025;
      *&v319[8] = v170;
      *&v319[12] = 1025;
      *&v319[14] = v171;
      *&v319[18] = 1025;
      *&v319[20] = v172;
      *&v319[24] = 1025;
      *&v319[26] = v173;
      *&v319[30] = 1025;
      *v320 = v174;
      *&v320[4] = 1025;
      *v321 = v175;
      _os_log_impl(dword_100000000, v156, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, ms_to_first_gps_code_lock:%{private}d, ms_to_first_glo_code_lock:%{private}d, ms_to_first_gal_code_lock:%{private}d, ms_to_first_bds_code_lock:%{private}d, ms_to_first_gps_tow_decoded:%{private}d, ms_to_first_glo_tod_decoded:%{private}d, ms_to_first_gal_tow_decoded:%{private}d, ms_to_first_bds_tow_decoded:%{private}d, ms_to_first_gps_full_sync:%{private}d, ms_to_first_glo_full_sync:%{private}d, ms_to_first_gal_full_sync:%{private}d, ms_to_first_bds_full_sync:%{private}d, me_clock_event_counter:%{private}d, phase_lock_rate_20_25dBHz:%{private}d, phase_lock_rate_25_30dBHz:%{private}d, phase_lock_rate_30plusdBHz:%{private}d, phase_available_rate_20_25dBHz:%{private}d, phase_available_rate_25_30dBHz:%{private}d, phase_available_rate_30plusdBHz:%{private}d}", buf, 0x84u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v176 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v177 = a2[157];
      v178 = a2[158];
      v179 = a2[159];
      v180 = a2[160];
      v181 = a2[161];
      v182 = a2[162];
      *buf = 68290563;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v177;
      *&v310[4] = 1025;
      *&v310[6] = v178;
      *v311 = 1025;
      *&v311[2] = v179;
      *v312 = 1025;
      *&v312[2] = v180;
      *v313 = 1025;
      *&v313[2] = v181;
      *v314 = 1025;
      *&v314[2] = v182;
      _os_log_impl(dword_100000000, v176, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, iono_model_percent_global_prediction:%{private}d, iono_model_percent_klob:%{private}d, sv_pos_percentage_brdc_file:%{private}d, sv_pos_percentage_long_term_file:%{private}d, sv_pos_percentage_ota:%{private}d, sv_pos_percentage_short_term_file:%{private}d}", buf, 0x36u);
    }
  }

  v306[99] = _NSConcreteStackBlock;
  v306[100] = 3221225472;
  v306[101] = sub_100700308;
  v306[102] = &unk_102451C38;
  v306[103] = a3;
  v306[104] = a2;
  AnalyticsSendEventLazy();
  bzero(v306, 0x318uLL);
  v305 = 0;
  v304 = 0u;
  v303 = 0u;
  v302 = 0u;
  v301 = 0u;
  bzero(v300, 0x240uLL);
  v299 = 0;
  v298 = 0u;
  v297 = 0u;
  v296 = 0u;
  v295 = 0u;
  bzero(v294, 0x240uLL);
  v183 = 0;
  v293 = 0;
  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  do
  {
    v184 = objc_opt_new();
    v185 = dword_101C89CF0[v183];
    *(&v301 + v185) = v184;
    *buf = v185;
    v186 = *(a2 + 43);
    if (!v186)
    {
      goto LABEL_63;
    }

    while (1)
    {
      v187 = *(v186 + 8);
      if (v187 <= v185)
      {
        break;
      }

LABEL_53:
      v186 = *v186;
      if (!v186)
      {
        goto LABEL_63;
      }
    }

    if (v187 < v185)
    {
      ++v186;
      goto LABEL_53;
    }

    v188 = sub_1003DD9F8((a2 + 84), buf);
    v191 = *v188;
    v189 = v188 + 1;
    v190 = v191;
    if (v191 != v189)
    {
      do
      {
        v306[11 * v185 + *(v190 + 8)] = v190[5];
        v192 = v190[1];
        if (v192)
        {
          do
          {
            v193 = v192;
            v192 = *v192;
          }

          while (v192);
        }

        else
        {
          do
          {
            v193 = v190[2];
            v194 = *v193 == v190;
            v190 = v193;
          }

          while (!v194);
        }

        v190 = v193;
      }

      while (v193 != v189);
    }

    *(&v301 + v185) = sub_10070172C(a1, &v306[11 * v185]);
LABEL_63:
    *(&v295 + v185) = objc_opt_new();
    *buf = v185;
    for (i = *(a2 + 40); i; i = *i)
    {
      v196 = *(i + 8);
      if (v196 <= v185)
      {
        if (v196 >= v185)
        {
          v197 = sub_1003DD9F8((a2 + 78), buf);
          v200 = *v197;
          v198 = v197 + 1;
          v199 = v200;
          if (v200 != v198)
          {
            do
            {
              *&v300[64 * v185 + 8 * *(v199 + 8)] = v199[5];
              v201 = v199[1];
              if (v201)
              {
                do
                {
                  v202 = v201;
                  v201 = *v201;
                }

                while (v201);
              }

              else
              {
                do
                {
                  v202 = v199[2];
                  v194 = *v202 == v199;
                  v199 = v202;
                }

                while (!v194);
              }

              v199 = v202;
            }

            while (v202 != v198);
          }

          *(&v295 + v185) = sub_1007017A0(a1, &v300[64 * v185]);
          break;
        }

        ++i;
      }
    }

    *(&v289 + v185) = objc_opt_new();
    *buf = v185;
    v203 = *(a2 + 37);
    if (!v203)
    {
      goto LABEL_93;
    }

    while (2)
    {
      v204 = *(v203 + 8);
      if (v204 > v185)
      {
        goto LABEL_83;
      }

      if (v204 < v185)
      {
        ++v203;
LABEL_83:
        v203 = *v203;
        if (!v203)
        {
          goto LABEL_93;
        }

        continue;
      }

      break;
    }

    v205 = sub_1003DD9F8((a2 + 72), buf);
    v208 = *v205;
    v206 = v205 + 1;
    v207 = v208;
    if (v208 != v206)
    {
      do
      {
        *&v294[64 * v185 + 8 * *(v207 + 8)] = v207[5];
        v209 = v207[1];
        if (v209)
        {
          do
          {
            v210 = v209;
            v209 = *v209;
          }

          while (v209);
        }

        else
        {
          do
          {
            v210 = v207[2];
            v194 = *v210 == v207;
            v207 = v210;
          }

          while (!v194);
        }

        v207 = v210;
      }

      while (v210 != v206);
    }

    *(&v289 + v185) = sub_1007017A0(a1, &v294[64 * v185]);
LABEL_93:
    ++v183;
  }

  while (v183 != 9);
  v278 = _NSConcreteStackBlock;
  v279 = 3221225472;
  v280 = sub_100701814;
  v281 = &unk_10246C528;
  v282 = a2;
  v283 = a3;
  v286 = v291;
  v287 = v292;
  v288 = v293;
  v284 = v289;
  v285 = v290;
  AnalyticsSendExplodingEventLazy();
  v267 = _NSConcreteStackBlock;
  v268 = 3221225472;
  v269 = sub_100701EC0;
  v270 = &unk_10246C528;
  v271 = a3;
  v272 = a2;
  v275 = v303;
  v276 = v304;
  v277 = v305;
  v273 = v301;
  v274 = v302;
  AnalyticsSendExplodingEventLazy();
  v256 = _NSConcreteStackBlock;
  v257 = 3221225472;
  v258 = sub_100702594;
  v259 = &unk_10246C528;
  v260 = a3;
  v261 = a2;
  v264 = v297;
  v265 = v298;
  v266 = v299;
  v262 = v295;
  v263 = v296;
  AnalyticsSendExplodingEventLazy();
  bzero(buf, 0x360uLL);
  v211 = 0;
  v255 = 0;
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  do
  {
    v212 = objc_opt_new();
    v213 = dword_101C89CF0[v211];
    *(&v251 + v213) = v212;
    LODWORD(v236[0]) = v213;
    if (sub_1000735F4(a2 + 45, v236))
    {
      v214 = sub_1000735F4(a2 + 45, v236);
      if (!v214)
      {
        sub_1000432E8("unordered_map::at: key not found");
      }

      v215 = &buf[96 * v213];
      for (j = v214[5]; j; j = *j)
      {
        v217 = *(j + 16);
        v218 = v217 - 35;
        if ((v217 - 35) > 0x31)
        {
          if (v217 < 85)
          {
            *v215 = 1;
          }

          else
          {
            *(v215 + 11) = 1;
          }
        }

        else
        {
          v219 = *(j + 20);
          if (v219 >= 1)
          {
            v220 = (v218 * 0.2 + 1.0);
            if (v220 - 1 <= 8)
            {
              *&v215[8 * v220] = v219;
            }
          }
        }
      }

      *(&v251 + v213) = sub_100702C68(a1, v215);
    }

    ++v211;
  }

  while (v211 != 9);
  v240 = _NSConcreteStackBlock;
  v241 = 3221225472;
  v242 = sub_100702CDC;
  v243 = &unk_10246C528;
  v244 = a3;
  v245 = a2;
  v248 = v253;
  v249 = v254;
  v250 = v255;
  v246 = v251;
  v247 = v252;
  AnalyticsSendExplodingEventLazy();
  v221 = objc_opt_new();
  v238 = 0;
  v239 = 0;
  v222 = *(a2 + 50);
  v223 = *(a2 + 51);
  if (v222 == v223)
  {
    v225 = 0;
  }

  else
  {
    v224 = 0;
    v225 = 0;
    do
    {
      v226 = *(v222 + 8);
      if (v226)
      {
        if ((*v222 - 2) >= 2)
        {
          if (*v222 == 1)
          {
            v239 = *(v222 + 8);
          }

          else
          {
            v225 = *(v222 + 8);
          }
        }

        else
        {
          v224 += v226;
          v238 = v224;
        }
      }

      v222 += 16;
    }

    while (v222 != v223);
  }

  v237 = v225;
  sub_1007033F0(a1, &v237);
  v227 = objc_opt_new();
  memset(v236, 0, sizeof(v236));
  v228 = *(a2 + 68);
  if (v228 != a2 + 138)
  {
    do
    {
      v229 = v228[8];
      if (v229 <= 5)
      {
        v230 = *(v228 + 5);
        if (v230)
        {
          *(v236 + v229) = v230;
        }
      }

      v231 = *(v228 + 1);
      if (v231)
      {
        do
        {
          v232 = v231;
          v231 = *v231;
        }

        while (v231);
      }

      else
      {
        do
        {
          v232 = *(v228 + 2);
          v194 = *v232 == v228;
          v228 = v232;
        }

        while (!v194);
      }

      v228 = v232;
    }

    while (v232 != a2 + 138);
  }

  sub_100703464(a1, v236);
  return AnalyticsSendExplodingEventLazy();
}

void sub_1007002E8(_Unwind_Exception *a1)
{
  if (STACK[0xB78])
  {
    sub_100008080(STACK[0xB78]);
  }

  _Unwind_Resume(a1);
}

NSDictionary *sub_100700308(uint64_t a1)
{
  v4[0] = @"bundleId";
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v5[0] = [NSString stringWithUTF8String:v2];
  v4[1] = @"ratType";
  v5[1] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v4[2] = @"isShortTermOrbitAssistanceFileAvailable";
  v5[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 212)];
  v4[3] = @"isLongTermOrbitAssistanceFileAvailable";
  v5[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 213)];
  v4[4] = @"isRtiFileAvailable";
  v5[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  v4[5] = @"isRavenGnssAssistanceFileAvailable";
  v5[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 214)];
  v4[6] = @"isExtendedEphemerisFileInjected";
  v5[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 29)];
  v4[7] = @"isTimeAssistanceProvided";
  v5[7] = [NSNumber numberWithBool:*(*(a1 + 32) + 30)];
  v4[8] = @"isDEMAssistanceProvided";
  v5[8] = [NSNumber numberWithBool:*(*(a1 + 32) + 31)];
  v4[9] = @"isCPIAssistanceProvided";
  v5[9] = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  v4[10] = @"gpsL1Cn0Avg";
  v5[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 36)];
  v4[11] = @"qzssL1Cn0Avg";
  v5[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 40)];
  v4[12] = @"galileoL1Cn0Avg";
  v5[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 44)];
  v4[13] = @"beidouL1Cn0Avg";
  v5[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 48)];
  v4[14] = @"glonassL1Cn0Avg";
  v5[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 52)];
  v4[15] = @"gpsL5Cn0Avg";
  v5[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 56)];
  v4[16] = @"qzssL5Cn0Avg";
  v5[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 60)];
  v4[17] = @"galileoL5Cn0Avg";
  v5[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 64)];
  v4[18] = @"beidouL5Cn0Avg";
  v5[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 68)];
  v4[19] = @"gpsL1SignalCountAvg";
  v5[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 116)];
  v4[20] = @"qzssL1SignalCountAvg";
  v5[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 120)];
  v4[21] = @"galileoL1SignalCountAvg";
  v5[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 124)];
  v4[22] = @"beidouL1SignalCountAvg";
  v5[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v4[23] = @"glonassL1SignalCountAvg";
  v5[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v4[24] = @"gpsL5SignalCountAvg";
  v5[24] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v4[25] = @"qzssL5SignalCountAvg";
  v5[25] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v4[26] = @"galileoL5SignalCountAvg";
  v5[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v4[27] = @"beidouL5SignalCountAvg";
  v5[27] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v4[28] = @"signalEnvironmentMode";
  v5[28] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v4[29] = @"horizontalUncertaintyAvg";
  v5[29] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v4[30] = @"mountStateMode";
  v5[30] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v4[31] = @"motionActivityMode";
  v5[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v4[32] = @"movingStateMode";
  v5[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v4[33] = @"sessionDuration";
  v5[33] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v4[34] = @"deviceOrientationMode";
  v5[34] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v4[35] = @"isDisplayOn";
  v5[35] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v4[36] = @"isReachable";
  v5[36] = [NSNumber numberWithBool:*(*(a1 + 32) + 185)];
  v4[37] = @"isBatterySaverModeOn";
  v5[37] = [NSNumber numberWithBool:*(*(a1 + 32) + 186)];
  v4[38] = @"chargerTypeHistMode";
  v5[38] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v4[39] = @"thermalLevelAvg";
  v5[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v4[40] = @"isAccessoryYieldingLocations";
  v5[40] = [NSNumber numberWithBool:*(*(a1 + 32) + 196)];
  v4[41] = @"l5OnOffStateMode";
  v5[41] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v4[42] = @"positionContextStateMode";
  v5[42] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v4[43] = @"xoCalibrationState";
  v5[43] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v4[44] = @"sessionStartPositionAssistHorzReliability";
  v5[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v4[45] = @"sessionStartPositionAssistHorzAcc";
  v5[45] = [NSNumber numberWithInt:*(*(a1 + 32) + 220)];
  v4[46] = @"sessionStartPositionAssistType";
  v5[46] = [NSNumber numberWithInt:*(*(a1 + 32) + 224)];
  v4[47] = @"wasWiFiPositioningAvailable";
  v5[47] = [NSNumber numberWithBool:*(*(a1 + 32) + 228)];
  v4[48] = @"powerMeasurementMode";
  v5[48] = [NSNumber numberWithInt:*(*(a1 + 32) + 232)];
  v4[49] = @"powerStateMode";
  v5[49] = [NSNumber numberWithInt:*(*(a1 + 32) + 236)];
  v4[50] = @"isTimePreceedsBuildTime";
  v5[50] = [NSNumber numberWithBool:*(*(a1 + 40) + 432)];
  v4[51] = @"isTimePreceedsExtendedEphemerisTime";
  v5[51] = [NSNumber numberWithBool:*(*(a1 + 40) + 433)];
  v4[52] = @"isTimeJumpForward100Seconds";
  v5[52] = [NSNumber numberWithBool:*(*(a1 + 40) + 434)];
  v4[53] = @"isTimeJumpBackward100Seconds";
  v5[53] = [NSNumber numberWithBool:*(*(a1 + 40) + 435)];
  v4[54] = @"isLnavAntiSpoofBitZeroOnMultipleSvs";
  v5[54] = [NSNumber numberWithBool:*(*(a1 + 40) + 436)];
  v4[55] = @"isOtaLeapSecondInconsistentWithExtendedEphemeris";
  v5[55] = [NSNumber numberWithBool:*(*(a1 + 40) + 437)];
  v4[56] = @"isExcessiveSignalStrength";
  v5[56] = [NSNumber numberWithBool:*(*(a1 + 40) + 438)];
  v4[57] = @"isHigherOrderOtaEphemerisAllZeroOnMultipleSvs";
  v5[57] = [NSNumber numberWithBool:*(*(a1 + 40) + 439)];
  v4[58] = @"isOtaUtcModelInconsistentWithExtendedEphemeris";
  v5[58] = [NSNumber numberWithBool:*(*(a1 + 40) + 440)];
  v4[59] = @"isOtaParameterOutOfBoundsOnMultipleSvs";
  v5[59] = [NSNumber numberWithBool:*(*(a1 + 40) + 441)];
  v4[60] = @"isSessionSpoofed";
  v5[60] = [NSNumber numberWithBool:*(*(a1 + 40) + 442)];
  v4[61] = @"gpsL1Cn0AvgFineRes";
  v5[61] = [NSNumber numberWithInt:*(*(a1 + 32) + 76)];
  v4[62] = @"qzssL1Cn0AvgFineRes";
  v5[62] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v4[63] = @"galileoL1Cn0AvgFineRes";
  v5[63] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v4[64] = @"beidouL1Cn0AvgFineRes";
  v5[64] = [NSNumber numberWithInt:*(*(a1 + 32) + 88)];
  v4[65] = @"glonassL1Cn0AvgFineRes";
  v5[65] = [NSNumber numberWithInt:*(*(a1 + 32) + 92)];
  v4[66] = @"gpsL5Cn0AvgFineRes";
  v5[66] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v4[67] = @"qzssL5Cn0AvgFineRes";
  v5[67] = [NSNumber numberWithInt:*(*(a1 + 32) + 100)];
  v4[68] = @"galileoL5Cn0AvgFineRes";
  v5[68] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v4[69] = @"beidouL5Cn0AvgFineRes";
  v5[69] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v4[70] = @"shortTermOrbitAssistanceFileAgeSeconds";
  v5[70] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 4)];
  v4[71] = @"longTermOrbitAssistanceFileAgeSeconds";
  v5[71] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 8)];
  v4[72] = @"rtiFileAgeSeconds";
  v5[72] = [NSNumber numberWithUnsignedInt:**(a1 + 40)];
  v4[73] = @"ravenGnssAssistanceFileAgeSeconds";
  v5[73] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 12)];
  v4[74] = @"pctYield";
  v5[74] = [NSNumber numberWithInt:*(*(a1 + 40) + 16)];
  v4[75] = @"pctYieldPostFirstFix";
  v5[75] = [NSNumber numberWithInt:*(*(a1 + 40) + 20)];
  v4[76] = @"yieldCount";
  v5[76] = [NSNumber numberWithInt:*(*(a1 + 40) + 24)];
  v4[77] = @"ttff";
  v5[77] = [NSNumber numberWithInt:*(*(a1 + 40) + 28)];
  v4[78] = @"epochCount";
  v5[78] = [NSNumber numberWithInt:*(*(a1 + 40) + 32)];
  v4[79] = @"cellularUplinkTxBandwidth";
  v5[79] = [NSNumber numberWithDouble:*(*(a1 + 40) + 40)];
  v4[80] = @"cellularBand";
  v5[80] = [NSNumber numberWithInt:*(*(a1 + 40) + 48)];
  v4[81] = @"cellularUplinkTxFrequency";
  v5[81] = [NSNumber numberWithDouble:*(*(a1 + 40) + 56)];
  v4[82] = @"cellularRSRP";
  v5[82] = [NSNumber numberWithInt:*(*(a1 + 40) + 64)];
  v4[83] = @"cellularSNR";
  v5[83] = [NSNumber numberWithInt:*(*(a1 + 40) + 68)];
  v4[84] = @"cellularBandEpochCount";
  v5[84] = [NSNumber numberWithInt:*(*(a1 + 40) + 72)];
  v4[85] = @"mmPAssisProvPct";
  v5[85] = [NSNumber numberWithInt:*(*(a1 + 40) + 76)];
  v4[86] = @"demAssisProvPct";
  v5[86] = [NSNumber numberWithInt:*(*(a1 + 40) + 80)];
  v4[87] = @"taAssisProvPct";
  v5[87] = [NSNumber numberWithInt:*(*(a1 + 40) + 84)];
  v4[88] = @"timeAssisProvPct";
  v5[88] = [NSNumber numberWithInt:*(*(a1 + 40) + 88)];
  v4[89] = @"cpiPositionAssisProvPct";
  v5[89] = [NSNumber numberWithInt:*(*(a1 + 40) + 92)];
  v4[90] = @"cpiTlyCpldPosAssisProvPct";
  v5[90] = [NSNumber numberWithInt:*(*(a1 + 40) + 96)];
  v4[91] = @"rtiProvPct";
  v5[91] = [NSNumber numberWithInt:*(*(a1 + 40) + 100)];
  v4[92] = @"accelDataProvPct";
  v5[92] = [NSNumber numberWithInt:*(*(a1 + 40) + 104)];
  v4[93] = @"gyroDataProvPct";
  v5[93] = [NSNumber numberWithInt:*(*(a1 + 40) + 108)];
  v4[94] = @"pressureDataProvPct";
  v5[94] = [NSNumber numberWithInt:*(*(a1 + 40) + 112)];
  v4[95] = @"pedSpeedDataProvPct";
  v5[95] = [NSNumber numberWithInt:*(*(a1 + 40) + 116)];
  v4[96] = @"pedSpeedConDataProvPct";
  v5[96] = [NSNumber numberWithInt:*(*(a1 + 40) + 120)];
  v4[97] = @"motionDataProvPct";
  v5[97] = [NSNumber numberWithInt:*(*(a1 + 40) + 124)];
  v4[98] = @"ephemerisProvPct";
  v5[98] = [NSNumber numberWithInt:*(*(a1 + 40) + 128)];
  v4[99] = @"mountStateProvPct";
  v5[99] = [NSNumber numberWithInt:*(*(a1 + 40) + 132)];
  v4[100] = @"signalEnvirDataProvPct";
  v5[100] = [NSNumber numberWithInt:*(*(a1 + 40) + 136)];
  v4[101] = @"motionActivContextProvPct";
  v5[101] = [NSNumber numberWithInt:*(*(a1 + 40) + 140)];
  v4[102] = @"mmPAssisUsedPct";
  v5[102] = [NSNumber numberWithInt:*(*(a1 + 40) + 144)];
  v4[103] = @"demAssisUsedPct";
  v5[103] = [NSNumber numberWithInt:*(*(a1 + 40) + 148)];
  v4[104] = @"taAssisUsedPct";
  v5[104] = [NSNumber numberWithInt:*(*(a1 + 40) + 152)];
  v4[105] = @"timeAssisUsedPct";
  v5[105] = [NSNumber numberWithInt:*(*(a1 + 40) + 156)];
  v4[106] = @"cpiPositionAssisUsedPct";
  v5[106] = [NSNumber numberWithInt:*(*(a1 + 40) + 160)];
  v4[107] = @"cpiTlyCpldPosAssisUsedPct";
  v5[107] = [NSNumber numberWithInt:*(*(a1 + 40) + 164)];
  v4[108] = @"rtiUsedPct";
  v5[108] = [NSNumber numberWithInt:*(*(a1 + 40) + 168)];
  v4[109] = @"accelDataUsedPct";
  v5[109] = [NSNumber numberWithInt:*(*(a1 + 40) + 172)];
  v4[110] = @"gyroDataUsedPct";
  v5[110] = [NSNumber numberWithInt:*(*(a1 + 40) + 176)];
  v4[111] = @"pressureDataUsedPct";
  v5[111] = [NSNumber numberWithInt:*(*(a1 + 40) + 180)];
  v4[112] = @"pedSpeedDataUsedPct";
  v5[112] = [NSNumber numberWithInt:*(*(a1 + 40) + 184)];
  v4[113] = @"pedSpeedConDataUsedPct";
  v5[113] = [NSNumber numberWithInt:*(*(a1 + 40) + 188)];
  v4[114] = @"motionDataUsedPct";
  v5[114] = [NSNumber numberWithInt:*(*(a1 + 40) + 192)];
  v4[115] = @"ephemerisUsedPct";
  v5[115] = [NSNumber numberWithInt:*(*(a1 + 40) + 196)];
  v4[116] = @"mountStateUsedPct";
  v5[116] = [NSNumber numberWithInt:*(*(a1 + 40) + 200)];
  v4[117] = @"signalEnvirDataUsedPct";
  v5[117] = [NSNumber numberWithInt:*(*(a1 + 40) + 204)];
  v4[118] = @"motionActivContextUsedPct";
  v5[118] = [NSNumber numberWithInt:*(*(a1 + 40) + 208)];
  v4[119] = @"displayOnPct";
  v5[119] = [NSNumber numberWithInt:*(*(a1 + 40) + 212)];
  v4[120] = @"reachablePct";
  v5[120] = [NSNumber numberWithInt:*(*(a1 + 40) + 216)];
  v4[121] = @"batterySaverModeOnPct";
  v5[121] = [NSNumber numberWithInt:*(*(a1 + 40) + 220)];
  v4[122] = @"anomalyStatusUnknownPct";
  v5[122] = [NSNumber numberWithInt:*(*(a1 + 40) + 224)];
  v4[123] = @"anomalyStatusSimulatedPct";
  v5[123] = [NSNumber numberWithInt:*(*(a1 + 40) + 228)];
  v4[124] = @"anomalyStatusAuthenticPct";
  v5[124] = [NSNumber numberWithInt:*(*(a1 + 40) + 232)];
  v4[125] = @"anomalyStatusMaybeSimulatedPct";
  v5[125] = [NSNumber numberWithInt:*(*(a1 + 40) + 236)];
  v4[126] = @"deresFinalAltitude";
  v5[126] = [NSNumber numberWithDouble:*(*(a1 + 40) + 240)];
  v4[127] = @"antL5BestDurationPct";
  v5[127] = [NSNumber numberWithInt:*(*(a1 + 40) + 248)];
  v4[128] = @"antL5OtherDurationPct";
  v5[128] = [NSNumber numberWithInt:*(*(a1 + 40) + 252)];
  v4[129] = @"antL5WorstDurationPct";
  v5[129] = [NSNumber numberWithInt:*(*(a1 + 40) + 256)];
  v4[130] = @"gnssL5BlankingDurationPct";
  v5[130] = [NSNumber numberWithInt:*(*(a1 + 40) + 260)];
  v4[131] = @"deltaFirstFixAndPositionAssistMeters";
  v5[131] = [NSNumber numberWithDouble:*(*(a1 + 40) + 424)];
  v4[132] = @"ms_to_first_gps_code_lock";
  v5[132] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 488)];
  v4[133] = @"ms_to_first_glo_code_lock";
  v5[133] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 492)];
  v4[134] = @"ms_to_first_gal_code_lock";
  v5[134] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 496)];
  v4[135] = @"ms_to_first_bds_code_lock";
  v5[135] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 500)];
  v4[136] = @"ms_to_first_gps_tow_decoded";
  v5[136] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 504)];
  v4[137] = @"ms_to_first_glo_tod_decoded";
  v5[137] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 508)];
  v4[138] = @"ms_to_first_gal_tow_decoded";
  v5[138] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 512)];
  v4[139] = @"ms_to_first_bds_tow_decoded";
  v5[139] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 516)];
  v4[140] = @"ms_to_first_gps_full_sync";
  v5[140] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 520)];
  v4[141] = @"ms_to_first_glo_full_sync";
  v5[141] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 524)];
  v4[142] = @"ms_to_first_gal_full_sync";
  v5[142] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 528)];
  v4[143] = @"ms_to_first_bds_full_sync";
  v5[143] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 532)];
  v4[144] = @"me_clock_event_counter";
  v5[144] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 536)];
  v4[145] = @"phase_lock_rate_20_25dBHz";
  v5[145] = [NSNumber numberWithInt:*(*(a1 + 40) + 608)];
  v4[146] = @"phase_lock_rate_25_30dBHz";
  v5[146] = [NSNumber numberWithInt:*(*(a1 + 40) + 616)];
  v4[147] = @"phase_lock_rate_30plusdBHz";
  v5[147] = [NSNumber numberWithInt:*(*(a1 + 40) + 624)];
  v4[148] = @"phase_available_rate_20_25dBHz";
  v5[148] = [NSNumber numberWithInt:*(*(a1 + 40) + 604)];
  v4[149] = @"phase_available_rate_25_30dBHz";
  v5[149] = [NSNumber numberWithInt:*(*(a1 + 40) + 612)];
  v4[150] = @"phase_available_rate_30plusdBHz";
  v5[150] = [NSNumber numberWithInt:*(*(a1 + 40) + 620)];
  v4[151] = @"iono_model_percent_global_prediction";
  v5[151] = [NSNumber numberWithInt:*(*(a1 + 40) + 628)];
  v4[152] = @"iono_model_percent_klob";
  v5[152] = [NSNumber numberWithInt:*(*(a1 + 40) + 632)];
  v4[153] = @"sv_pos_percentage_brdc_file";
  v5[153] = [NSNumber numberWithInt:*(*(a1 + 40) + 636)];
  v4[154] = @"sv_pos_percentage_long_term_file";
  v5[154] = [NSNumber numberWithInt:*(*(a1 + 40) + 640)];
  v4[155] = @"sv_pos_percentage_ota";
  v5[155] = [NSNumber numberWithInt:*(*(a1 + 40) + 644)];
  v4[156] = @"sv_pos_percentage_short_term_file";
  v5[156] = [NSNumber numberWithInt:*(*(a1 + 40) + 648)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:157];
}

id sub_10070172C(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:11];
  for (i = 0; i != 88; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

id sub_1007017A0(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:8];
  for (i = 0; i != 64; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

NSDictionary *sub_100701814(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:11];
  for (i = 444; i != 488; i += 4)
  {
    [v2 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(*(a1 + 32) + i))}];
  }

  v7[0] = @"ratType";
  v8[0] = [NSNumber numberWithInt:*(*(a1 + 40) + 24)];
  v7[1] = @"isRtiFileAvailable";
  v8[1] = [NSNumber numberWithBool:*(*(a1 + 40) + 28)];
  v7[2] = @"isExtendedEphemerisFileInjected";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 40) + 29)];
  v7[3] = @"isTimeAssistanceProvided";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 40) + 30)];
  v7[4] = @"isDEMAssistanceProvided";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 40) + 31)];
  v7[5] = @"isCPIAssistanceProvided";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 40) + 32)];
  v7[6] = @"gpsL1Cn0Avg";
  v8[6] = [NSNumber numberWithInt:*(*(a1 + 40) + 36)];
  v7[7] = @"qzssL1Cn0Avg";
  v8[7] = [NSNumber numberWithInt:*(*(a1 + 40) + 40)];
  v7[8] = @"galileoL1Cn0Avg";
  v8[8] = [NSNumber numberWithInt:*(*(a1 + 40) + 44)];
  v7[9] = @"beidouL1Cn0Avg";
  v8[9] = [NSNumber numberWithInt:*(*(a1 + 40) + 48)];
  v7[10] = @"glonassL1Cn0Avg";
  v8[10] = [NSNumber numberWithInt:*(*(a1 + 40) + 52)];
  v7[11] = @"gpsL5Cn0Avg";
  v8[11] = [NSNumber numberWithInt:*(*(a1 + 40) + 56)];
  v7[12] = @"qzssL5Cn0Avg";
  v8[12] = [NSNumber numberWithInt:*(*(a1 + 40) + 60)];
  v7[13] = @"galileoL5Cn0Avg";
  v8[13] = [NSNumber numberWithInt:*(*(a1 + 40) + 64)];
  v7[14] = @"beidouL5Cn0Avg";
  v8[14] = [NSNumber numberWithInt:*(*(a1 + 40) + 68)];
  v7[15] = @"gpsL1SignalCountAvg";
  v8[15] = [NSNumber numberWithInt:*(*(a1 + 40) + 116)];
  v7[16] = @"qzssL1SignalCountAvg";
  v8[16] = [NSNumber numberWithInt:*(*(a1 + 40) + 120)];
  v7[17] = @"galileoL1SignalCountAvg";
  v8[17] = [NSNumber numberWithInt:*(*(a1 + 40) + 124)];
  v7[18] = @"beidouL1SignalCountAvg";
  v8[18] = [NSNumber numberWithInt:*(*(a1 + 40) + 128)];
  v7[19] = @"glonassL1SignalCountAvg";
  v8[19] = [NSNumber numberWithInt:*(*(a1 + 40) + 132)];
  v7[20] = @"gpsL5SignalCountAvg";
  v8[20] = [NSNumber numberWithInt:*(*(a1 + 40) + 136)];
  v7[21] = @"qzssL5SignalCountAvg";
  v8[21] = [NSNumber numberWithInt:*(*(a1 + 40) + 140)];
  v7[22] = @"galileoL5SignalCountAvg";
  v8[22] = [NSNumber numberWithInt:*(*(a1 + 40) + 144)];
  v7[23] = @"beidouL5SignalCountAvg";
  v8[23] = [NSNumber numberWithInt:*(*(a1 + 40) + 148)];
  v7[24] = @"signalEnvironmentMode";
  v8[24] = [NSNumber numberWithInt:*(*(a1 + 40) + 156)];
  v7[25] = @"powerMeasurementMode";
  v8[25] = [NSNumber numberWithInt:*(*(a1 + 40) + 232)];
  v7[26] = @"powerStateMode";
  v8[26] = [NSNumber numberWithInt:*(*(a1 + 40) + 236)];
  v7[27] = @"horizontalUncertaintyAvg";
  v8[27] = [NSNumber numberWithInt:*(*(a1 + 40) + 160)];
  v7[28] = @"mountStateMode";
  v8[28] = [NSNumber numberWithInt:*(*(a1 + 40) + 164)];
  v7[29] = @"motionActivityMode";
  v8[29] = [NSNumber numberWithInt:*(*(a1 + 40) + 168)];
  v7[30] = @"movingStateMode";
  v8[30] = [NSNumber numberWithInt:*(*(a1 + 40) + 172)];
  v7[31] = @"sessionDuration";
  v8[31] = [NSNumber numberWithInt:*(*(a1 + 40) + 176)];
  v7[32] = @"deviceOrientationMode";
  v8[32] = [NSNumber numberWithInt:*(*(a1 + 40) + 180)];
  v7[33] = @"isDisplayOn";
  v8[33] = [NSNumber numberWithBool:*(*(a1 + 40) + 184)];
  v7[34] = @"isReachable";
  v8[34] = [NSNumber numberWithBool:*(*(a1 + 40) + 185)];
  v7[35] = @"positionContextStateMode";
  v8[35] = [NSNumber numberWithInt:*(*(a1 + 40) + 204)];
  v7[36] = @"isSessionSpoofed";
  v8[36] = [NSNumber numberWithBool:*(*(a1 + 32) + 442)];
  v8[37] = v2;
  v7[37] = @"anomalyStatusType";
  v7[38] = @"isCn0LowVariance";
  v8[38] = [NSNumber numberWithBool:*(*(a1 + 32) + 264)];
  v7[39] = @"isCn0HighValue";
  v8[39] = [NSNumber numberWithBool:*(*(a1 + 32) + 265)];
  v7[40] = @"isKacRegion";
  v8[40] = [NSNumber numberWithBool:*(*(a1 + 32) + 266)];
  v7[41] = @"isAltitudeOutOfBounds";
  v8[41] = [NSNumber numberWithBool:*(*(a1 + 32) + 267)];
  v7[42] = @"isTimePreceedingBuildTime";
  v8[42] = [NSNumber numberWithBool:*(*(a1 + 32) + 268)];
  v7[43] = @"numCn0StatsBlockedFix";
  v8[43] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 272)];
  v7[44] = @"numFixesFromFFCn0LowVarSet";
  v8[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 276)];
  v7[45] = @"numFixesFromFFCn0LowVarReset";
  v4 = [NSNumber numberWithInt:*(*(a1 + 32) + 280)];
  v5 = *(a1 + 48);
  v8[45] = v4;
  v8[46] = v5;
  v7[46] = @"cn0VarCountArrayGpsL1";
  v7[47] = @"cn0VarCountArrayGalE1";
  v7[48] = @"cn0VarCountArrayBDSB1";
  v9 = *(a1 + 64);
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:49];
}

NSDictionary *sub_100701EC0(uint64_t a1)
{
  v7[0] = @"ratType";
  v8[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v7[1] = @"isShortTermOrbitAssistanceFileAvailable";
  v8[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 212)];
  v7[2] = @"isLongTermOrbitAssistanceFileAvailable";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 213)];
  v7[3] = @"isRtiFileAvailable";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  v7[4] = @"isExtendedEphemerisFileInjected";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 29)];
  v7[5] = @"isTimeAssistanceProvided";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 30)];
  v7[6] = @"isDEMAssistanceProvided";
  v8[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 31)];
  v7[7] = @"isCPIAssistanceProvided";
  v8[7] = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  v7[8] = @"gpsL1Cn0Avg";
  v8[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 76)];
  v7[9] = @"qzssL1Cn0Avg";
  v8[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v7[10] = @"galileoL1Cn0Avg";
  v8[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v7[11] = @"beidouL1Cn0Avg";
  v8[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 88)];
  v7[12] = @"glonassL1Cn0Avg";
  v8[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 92)];
  v7[13] = @"gpsL5Cn0Avg";
  v8[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v7[14] = @"qzssL5Cn0Avg";
  v8[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 100)];
  v7[15] = @"galileoL5Cn0Avg";
  v8[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v7[16] = @"beidouL5Cn0Avg";
  v8[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v7[17] = @"gpsL1SignalCountAvg";
  v8[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 116)];
  v7[18] = @"qzssL1SignalCountAvg";
  v8[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 120)];
  v7[19] = @"galileoL1SignalCountAvg";
  v8[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 124)];
  v7[20] = @"beidouL1SignalCountAvg";
  v8[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v7[21] = @"glonassL1SignalCountAvg";
  v8[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v7[22] = @"gpsL5SignalCountAvg";
  v8[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v7[23] = @"qzssL5SignalCountAvg";
  v8[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v7[24] = @"galileoL5SignalCountAvg";
  v8[24] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v7[25] = @"beidouL5SignalCountAvg";
  v8[25] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v7[26] = @"signalEnvironmentMode";
  v8[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v7[27] = @"horizontalUncertaintyAvg";
  v8[27] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v7[28] = @"mountStateMode";
  v8[28] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v7[29] = @"motionActivityMode";
  v8[29] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v7[30] = @"movingStateMode";
  v8[30] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v7[31] = @"sessionDuration";
  v8[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v7[32] = @"deviceOrientationMode";
  v8[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v7[33] = @"isDisplayOn";
  v8[33] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v7[34] = @"isReachable";
  v8[34] = [NSNumber numberWithBool:*(*(a1 + 32) + 185)];
  v7[35] = @"isBatterySaverModeOn";
  v8[35] = [NSNumber numberWithBool:*(*(a1 + 32) + 186)];
  v7[36] = @"chargerTypeHistMode";
  v8[36] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v7[37] = @"thermalLevelAvg";
  v8[37] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v7[38] = @"isAccessoryYieldingLocations";
  v8[38] = [NSNumber numberWithBool:*(*(a1 + 32) + 196)];
  v7[39] = @"l5OnOffStateMode";
  v8[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v7[40] = @"positionContextStateMode";
  v8[40] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v7[41] = @"xoCalibrationState";
  v8[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v7[42] = @"sessionStartPositionAssistHorzReliability";
  v8[42] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v7[43] = @"sessionStartPositionAssistHorzAcc";
  v8[43] = [NSNumber numberWithInt:*(*(a1 + 32) + 220)];
  v7[44] = @"sessionStartPositionAssistType";
  v8[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 224)];
  v7[45] = @"wasWiFiPositioningAvailable";
  v8[45] = [NSNumber numberWithBool:*(*(a1 + 32) + 228)];
  v7[46] = @"isSessionSpoofed";
  v2 = [NSNumber numberWithBool:*(*(a1 + 40) + 442)];
  v7[47] = @"signalStrengthArrayGpsL1";
  v7[48] = @"signalStrengthArrayQzssL1";
  v7[49] = @"signalStrengthArrayGalileoL1";
  v7[50] = @"signalStrengthArrayBeiDouL1";
  v7[51] = @"signalStrengthArrayGlonassL1";
  v7[52] = @"signalStrengthArrayGpsL5";
  v7[53] = @"signalStrengthArrayQzssL5";
  v7[54] = @"signalStrengthArrayGalileoL5";
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  v4 = *(a1 + 96);
  v11 = *(a1 + 80);
  v12 = v4;
  v7[55] = @"signalStrengthArrayBeiDouL5";
  v5 = *(a1 + 112);
  v8[46] = v2;
  v13 = v5;
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:56];
}

NSDictionary *sub_100702594(uint64_t a1)
{
  v7[0] = @"ratType";
  v8[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v7[1] = @"isShortTermOrbitAssistanceFileAvailable";
  v8[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 212)];
  v7[2] = @"isLongTermOrbitAssistanceFileAvailable";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 213)];
  v7[3] = @"isRtiFileAvailable";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  v7[4] = @"isExtendedEphemerisFileInjected";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 29)];
  v7[5] = @"isTimeAssistanceProvided";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 30)];
  v7[6] = @"isDEMAssistanceProvided";
  v8[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 31)];
  v7[7] = @"isCPIAssistanceProvided";
  v8[7] = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  v7[8] = @"gpsL1Cn0Avg";
  v8[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 76)];
  v7[9] = @"qzssL1Cn0Avg";
  v8[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v7[10] = @"galileoL1Cn0Avg";
  v8[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v7[11] = @"beidouL1Cn0Avg";
  v8[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 88)];
  v7[12] = @"glonassL1Cn0Avg";
  v8[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 92)];
  v7[13] = @"gpsL5Cn0Avg";
  v8[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v7[14] = @"qzssL5Cn0Avg";
  v8[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 100)];
  v7[15] = @"galileoL5Cn0Avg";
  v8[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v7[16] = @"beidouL5Cn0Avg";
  v8[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v7[17] = @"gpsL1SignalCountAvg";
  v8[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 116)];
  v7[18] = @"qzssL1SignalCountAvg";
  v8[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 120)];
  v7[19] = @"galileoL1SignalCountAvg";
  v8[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 124)];
  v7[20] = @"beidouL1SignalCountAvg";
  v8[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v7[21] = @"glonassL1SignalCountAvg";
  v8[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v7[22] = @"gpsL5SignalCountAvg";
  v8[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v7[23] = @"qzssL5SignalCountAvg";
  v8[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v7[24] = @"galileoL5SignalCountAvg";
  v8[24] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v7[25] = @"beidouL5SignalCountAvg";
  v8[25] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v7[26] = @"signalEnvironmentMode";
  v8[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v7[27] = @"horizontalUncertaintyAvg";
  v8[27] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v7[28] = @"mountStateMode";
  v8[28] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v7[29] = @"motionActivityMode";
  v8[29] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v7[30] = @"movingStateMode";
  v8[30] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v7[31] = @"sessionDuration";
  v8[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v7[32] = @"deviceOrientationMode";
  v8[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v7[33] = @"isDisplayOn";
  v8[33] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v7[34] = @"isReachable";
  v8[34] = [NSNumber numberWithBool:*(*(a1 + 32) + 185)];
  v7[35] = @"isBatterySaverModeOn";
  v8[35] = [NSNumber numberWithBool:*(*(a1 + 32) + 186)];
  v7[36] = @"chargerTypeHistMode";
  v8[36] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v7[37] = @"thermalLevelAvg";
  v8[37] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v7[38] = @"isAccessoryYieldingLocations";
  v8[38] = [NSNumber numberWithBool:*(*(a1 + 32) + 196)];
  v7[39] = @"l5OnOffStateMode";
  v8[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v7[40] = @"positionContextStateMode";
  v8[40] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v7[41] = @"xoCalibrationState";
  v8[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v7[42] = @"sessionStartPositionAssistHorzReliability";
  v8[42] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v7[43] = @"sessionStartPositionAssistHorzAcc";
  v8[43] = [NSNumber numberWithInt:*(*(a1 + 32) + 220)];
  v7[44] = @"sessionStartPositionAssistType";
  v8[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 224)];
  v7[45] = @"wasWiFiPositioningAvailable";
  v8[45] = [NSNumber numberWithBool:*(*(a1 + 32) + 228)];
  v7[46] = @"isSessionSpoofed";
  v2 = [NSNumber numberWithBool:*(*(a1 + 40) + 442)];
  v7[47] = @"signalCountArrayGpsL1";
  v7[48] = @"signalCountArrayQzssL1";
  v7[49] = @"signalCountArrayGalileoL1";
  v7[50] = @"signalCountArrayBeiDouL1";
  v7[51] = @"signalCountArrayGlonassL1";
  v7[52] = @"signalCountArrayGpsL5";
  v7[53] = @"signalCountArrayQzssL5";
  v7[54] = @"signalCountArrayGalileoL5";
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  v4 = *(a1 + 96);
  v11 = *(a1 + 80);
  v12 = v4;
  v7[55] = @"signalCountArrayBeiDouL5";
  v5 = *(a1 + 112);
  v8[46] = v2;
  v13 = v5;
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:56];
}

id sub_100702C68(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:12];
  for (i = 0; i != 96; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

NSDictionary *sub_100702CDC(uint64_t a1)
{
  v7[0] = @"ratType";
  v8[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v7[1] = @"isShortTermOrbitAssistanceFileAvailable";
  v8[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 212)];
  v7[2] = @"isLongTermOrbitAssistanceFileAvailable";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 213)];
  v7[3] = @"isRtiFileAvailable";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  v7[4] = @"isExtendedEphemerisFileInjected";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 29)];
  v7[5] = @"isTimeAssistanceProvided";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 30)];
  v7[6] = @"isDEMAssistanceProvided";
  v8[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 31)];
  v7[7] = @"isCPIAssistanceProvided";
  v8[7] = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  v7[8] = @"gpsL1Cn0Avg";
  v8[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 76)];
  v7[9] = @"qzssL1Cn0Avg";
  v8[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v7[10] = @"galileoL1Cn0Avg";
  v8[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v7[11] = @"beidouL1Cn0Avg";
  v8[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 88)];
  v7[12] = @"glonassL1Cn0Avg";
  v8[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 92)];
  v7[13] = @"gpsL5Cn0Avg";
  v8[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v7[14] = @"qzssL5Cn0Avg";
  v8[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 100)];
  v7[15] = @"galileoL5Cn0Avg";
  v8[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v7[16] = @"beidouL5Cn0Avg";
  v8[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v7[17] = @"gpsL1SignalCountAvg";
  v8[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 116)];
  v7[18] = @"qzssL1SignalCountAvg";
  v8[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 120)];
  v7[19] = @"galileoL1SignalCountAvg";
  v8[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 124)];
  v7[20] = @"beidouL1SignalCountAvg";
  v8[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v7[21] = @"glonassL1SignalCountAvg";
  v8[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v7[22] = @"gpsL5SignalCountAvg";
  v8[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v7[23] = @"qzssL5SignalCountAvg";
  v8[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v7[24] = @"galileoL5SignalCountAvg";
  v8[24] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v7[25] = @"beidouL5SignalCountAvg";
  v8[25] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v7[26] = @"signalEnvironmentMode";
  v8[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v7[27] = @"horizontalUncertaintyAvg";
  v8[27] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v7[28] = @"mountStateMode";
  v8[28] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v7[29] = @"motionActivityMode";
  v8[29] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v7[30] = @"movingStateMode";
  v8[30] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v7[31] = @"sessionDuration";
  v8[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v7[32] = @"deviceOrientationMode";
  v8[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v7[33] = @"isDisplayOn";
  v8[33] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v7[34] = @"isReachable";
  v8[34] = [NSNumber numberWithBool:*(*(a1 + 32) + 185)];
  v7[35] = @"isBatterySaverModeOn";
  v8[35] = [NSNumber numberWithBool:*(*(a1 + 32) + 186)];
  v7[36] = @"chargerTypeHistMode";
  v8[36] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v7[37] = @"thermalLevelAvg";
  v8[37] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v7[38] = @"isAccessoryYieldingLocations";
  v8[38] = [NSNumber numberWithBool:*(*(a1 + 32) + 196)];
  v7[39] = @"l5OnOffStateMode";
  v8[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v7[40] = @"positionContextStateMode";
  v8[40] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v7[41] = @"xoCalibrationState";
  v8[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v7[42] = @"sessionStartPositionAssistHorzReliability";
  v8[42] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v7[43] = @"sessionStartPositionAssistHorzAcc";
  v8[43] = [NSNumber numberWithInt:*(*(a1 + 32) + 220)];
  v7[44] = @"sessionStartPositionAssistType";
  v8[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 224)];
  v7[45] = @"wasWiFiPositioningAvailable";
  v8[45] = [NSNumber numberWithBool:*(*(a1 + 32) + 228)];
  v7[46] = @"isSessionSpoofed";
  v8[46] = [NSNumber numberWithBool:*(*(a1 + 40) + 442)];
  v7[47] = @"powerMeasurementMode";
  v8[47] = [NSNumber numberWithInt:*(*(a1 + 32) + 232)];
  v7[48] = @"powerStateMode";
  v2 = [NSNumber numberWithInt:*(*(a1 + 32) + 236)];
  v7[49] = @"jammingMetricArrayGpsL1";
  v7[50] = @"jammingMetricArrayQzssL1";
  v7[51] = @"jammingMetricArrayGalileoL1";
  v7[52] = @"jammingMetricArrayBeiDouL1";
  v7[53] = @"jammingMetricArrayGlonassL1";
  v7[54] = @"jammingMetricArrayGpsL5";
  v7[55] = @"jammingMetricArrayQzssL5";
  v7[56] = @"jammingMetricArrayGalileoL5";
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  v4 = *(a1 + 96);
  v11 = *(a1 + 80);
  v12 = v4;
  v7[57] = @"jammingMetricArrayBeiDouL5";
  v5 = *(a1 + 112);
  v8[48] = v2;
  v13 = v5;
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:58];
}

id sub_1007033F0(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  for (i = 0; i != 24; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

id sub_100703464(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:6];
  for (i = 0; i != 48; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

NSDictionary *sub_1007034D8(uint64_t a1)
{
  v3[0] = @"ratType";
  v4[0] = [NSNumber numberWithInt:*(*(a1 + 48) + 24)];
  v3[1] = @"isShortTermOrbitAssistanceFileAvailable";
  v4[1] = [NSNumber numberWithBool:*(*(a1 + 48) + 212)];
  v3[2] = @"isLongTermOrbitAssistanceFileAvailable";
  v4[2] = [NSNumber numberWithBool:*(*(a1 + 48) + 213)];
  v3[3] = @"isRtiFileAvailable";
  v4[3] = [NSNumber numberWithBool:*(*(a1 + 48) + 28)];
  v3[4] = @"isExtendedEphemerisFileInjected";
  v4[4] = [NSNumber numberWithBool:*(*(a1 + 48) + 29)];
  v3[5] = @"isTimeAssistanceProvided";
  v4[5] = [NSNumber numberWithBool:*(*(a1 + 48) + 30)];
  v3[6] = @"isDEMAssistanceProvided";
  v4[6] = [NSNumber numberWithBool:*(*(a1 + 48) + 31)];
  v3[7] = @"isCPIAssistanceProvided";
  v4[7] = [NSNumber numberWithBool:*(*(a1 + 48) + 32)];
  v3[8] = @"gpsL1Cn0Avg";
  v4[8] = [NSNumber numberWithInt:*(*(a1 + 48) + 76)];
  v3[9] = @"qzssL1Cn0Avg";
  v4[9] = [NSNumber numberWithInt:*(*(a1 + 48) + 80)];
  v3[10] = @"galileoL1Cn0Avg";
  v4[10] = [NSNumber numberWithInt:*(*(a1 + 48) + 84)];
  v3[11] = @"beidouL1Cn0Avg";
  v4[11] = [NSNumber numberWithInt:*(*(a1 + 48) + 88)];
  v3[12] = @"glonassL1Cn0Avg";
  v4[12] = [NSNumber numberWithInt:*(*(a1 + 48) + 92)];
  v3[13] = @"gpsL5Cn0Avg";
  v4[13] = [NSNumber numberWithInt:*(*(a1 + 48) + 96)];
  v3[14] = @"qzssL5Cn0Avg";
  v4[14] = [NSNumber numberWithInt:*(*(a1 + 48) + 100)];
  v3[15] = @"galileoL5Cn0Avg";
  v4[15] = [NSNumber numberWithInt:*(*(a1 + 48) + 104)];
  v3[16] = @"beidouL5Cn0Avg";
  v4[16] = [NSNumber numberWithInt:*(*(a1 + 48) + 108)];
  v3[17] = @"gpsL1SignalCountAvg";
  v4[17] = [NSNumber numberWithInt:*(*(a1 + 48) + 116)];
  v3[18] = @"qzssL1SignalCountAvg";
  v4[18] = [NSNumber numberWithInt:*(*(a1 + 48) + 120)];
  v3[19] = @"galileoL1SignalCountAvg";
  v4[19] = [NSNumber numberWithInt:*(*(a1 + 48) + 124)];
  v3[20] = @"beidouL1SignalCountAvg";
  v4[20] = [NSNumber numberWithInt:*(*(a1 + 48) + 128)];
  v3[21] = @"glonassL1SignalCountAvg";
  v4[21] = [NSNumber numberWithInt:*(*(a1 + 48) + 132)];
  v3[22] = @"gpsL5SignalCountAvg";
  v4[22] = [NSNumber numberWithInt:*(*(a1 + 48) + 136)];
  v3[23] = @"qzssL5SignalCountAvg";
  v4[23] = [NSNumber numberWithInt:*(*(a1 + 48) + 140)];
  v3[24] = @"galileoL5SignalCountAvg";
  v4[24] = [NSNumber numberWithInt:*(*(a1 + 48) + 144)];
  v3[25] = @"beidouL5SignalCountAvg";
  v4[25] = [NSNumber numberWithInt:*(*(a1 + 48) + 148)];
  v3[26] = @"signalEnvironmentMode";
  v4[26] = [NSNumber numberWithInt:*(*(a1 + 48) + 156)];
  v3[27] = @"horizontalUncertaintyAvg";
  v4[27] = [NSNumber numberWithInt:*(*(a1 + 48) + 160)];
  v3[28] = @"mountStateMode";
  v4[28] = [NSNumber numberWithInt:*(*(a1 + 48) + 164)];
  v3[29] = @"motionActivityMode";
  v4[29] = [NSNumber numberWithInt:*(*(a1 + 48) + 168)];
  v3[30] = @"movingStateMode";
  v4[30] = [NSNumber numberWithInt:*(*(a1 + 48) + 172)];
  v3[31] = @"sessionDuration";
  v4[31] = [NSNumber numberWithInt:*(*(a1 + 48) + 176)];
  v3[32] = @"deviceOrientationMode";
  v4[32] = [NSNumber numberWithInt:*(*(a1 + 48) + 180)];
  v3[33] = @"isDisplayOn";
  v4[33] = [NSNumber numberWithBool:*(*(a1 + 48) + 184)];
  v3[34] = @"isReachable";
  v4[34] = [NSNumber numberWithBool:*(*(a1 + 48) + 185)];
  v3[35] = @"isBatterySaverModeOn";
  v4[35] = [NSNumber numberWithBool:*(*(a1 + 48) + 186)];
  v3[36] = @"chargerTypeHistMode";
  v4[36] = [NSNumber numberWithInt:*(*(a1 + 48) + 188)];
  v3[37] = @"thermalLevelAvg";
  v4[37] = [NSNumber numberWithInt:*(*(a1 + 48) + 192)];
  v3[38] = @"isAccessoryYieldingLocations";
  v4[38] = [NSNumber numberWithBool:*(*(a1 + 48) + 196)];
  v3[39] = @"l5OnOffStateMode";
  v4[39] = [NSNumber numberWithInt:*(*(a1 + 48) + 200)];
  v3[40] = @"positionContextStateMode";
  v4[40] = [NSNumber numberWithInt:*(*(a1 + 48) + 204)];
  v3[41] = @"xoCalibrationState";
  v4[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 48) + 208)];
  v3[42] = @"sessionStartPositionAssistHorzReliability";
  v4[42] = [NSNumber numberWithInt:*(*(a1 + 48) + 216)];
  v3[43] = @"sessionStartPositionAssistHorzAcc";
  v4[43] = [NSNumber numberWithInt:*(*(a1 + 48) + 220)];
  v3[44] = @"sessionStartPositionAssistType";
  v4[44] = [NSNumber numberWithInt:*(*(a1 + 48) + 224)];
  v3[45] = @"wasWiFiPositioningAvailable";
  v4[45] = [NSNumber numberWithBool:*(*(a1 + 48) + 228)];
  v3[46] = @"isSessionSpoofed";
  v4[46] = [NSNumber numberWithBool:*(*(a1 + 56) + 442)];
  v3[47] = @"powerMeasurementMode";
  v4[47] = [NSNumber numberWithInt:*(*(a1 + 48) + 232)];
  v3[48] = @"powerStateMode";
  v4[48] = [NSNumber numberWithInt:*(*(a1 + 48) + 236)];
  v3[49] = @"l5ForceOffReasonHist";
  v3[50] = @"l5BandUsageHist";
  v5 = *(a1 + 32);
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:51];
}

uint64_t sub_100703B94(uint64_t a1, int *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101916AC0();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = a2[1];
    v7 = a2[2];
    v6 = a2[3];
    v8 = a2[4];
    v9 = a2[5];
    *buf = 67175937;
    v12 = v4;
    v13 = 1025;
    v14 = v5;
    v15 = 1025;
    v16 = v6;
    v17 = 1025;
    v18 = v7;
    v19 = 1025;
    v20 = v8;
    v21 = 1025;
    v22 = v9;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#gnssca Submit,BaroAlt,DriftRate Core Analytics Data,closeLoopError,%{private}d,durationSinceLastCalibEv,%{private}d,distanceFromLastCalibEv,%{private}d,estAltUnc,%{private}d,closeLoopErrorRpa,%{private}d,durationSinceLastRpaCalibEv,%{private}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916AD4(a2);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100703CF8(uint64_t a1)
{
  v5[0] = @"BaroAltCloseLoopErr";
  v6[0] = [NSNumber numberWithInt:**(a1 + 32)];
  v5[1] = @"BaroAltDistFromLastCalibEv";
  v6[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v5[2] = @"BaroAltDurationSinceLastCalibEv";
  v6[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 4)];
  v5[3] = @"BaroAltEstAltUncAtCalibEv";
  v6[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v5[4] = @"BaroAltCloseLoopErrRPAReal";
  v6[4] = [NSNumber numberWithInt:*(*(a1 + 32) + 16)];
  v5[5] = @"BaroAltCloseLoopErrRPAAbsolute";
  v2 = *(*(a1 + 32) + 16);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  v6[5] = [NSNumber numberWithInt:v3];
  v5[6] = @"BaroAltDurationSinceLastCalibEvRPA";
  v6[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:7];
}

uint64_t sub_100703E50(uint64_t a1, int *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = *(a2 + 8);
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    v9 = a2[8];
    v10 = a2[9];
    v11 = a2[10];
    v12 = a2[11];
    v13 = *(a2 + 6);
    v14 = *(a2 + 7);
    v15 = *(a2 + 8);
    *buf = 68292098;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = v13;
    v23 = 1026;
    v24 = v4;
    v25 = 1026;
    v26 = v5;
    v27 = 1026;
    v28 = v6;
    v29 = 2050;
    v30 = v7;
    v31 = 2050;
    v32 = v8;
    v33 = 1026;
    v34 = v9;
    v35 = 1026;
    v36 = v10;
    v37 = 1026;
    v38 = v11;
    v39 = 1026;
    v40 = v12;
    v41 = 2050;
    v42 = v14;
    v43 = 2050;
    v44 = v15;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRG: submit CLRGSessionMetric session, sessionDuration:%{public}f, activityType:%{public}d, CLRPowerMode:%{public}d, sessionLeeched:%{public}d, ttff_s:%{public}f, horizontalUncFF_m:%{public}f, hUnc5SecAfterFF_m:%{public}d, hUnc10SecAfterFF_m:%{public}d, hUnc15SecAfterFF_m:%{public}d, hUnc20SecAfterFF_m:%{public}d, intendedInterSessionDuration_s:%{public}f, realInterSessionDuration_s:%{public}f}", buf, 0x6Eu);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100703FFC(uint64_t a1)
{
  v3[0] = @"sessionDuration";
  v4[0] = [NSNumber numberWithDouble:*(*(a1 + 32) + 48)];
  v3[1] = @"activityType";
  v4[1] = [NSNumber numberWithInt:**(a1 + 32)];
  v3[2] = @"CLRPowerMode";
  v4[2] = [NSNumber numberWithInt:*(*(a1 + 32) + 4)];
  v3[3] = @"sessionLeeched";
  v4[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 8)];
  v3[4] = @"ttff_s";
  v4[4] = [NSNumber numberWithDouble:*(*(a1 + 32) + 16)];
  v3[5] = @"horizontalUncFF_m";
  v4[5] = [NSNumber numberWithDouble:*(*(a1 + 32) + 24)];
  v3[6] = @"hUnc5SecAfterFF_m";
  v4[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v3[7] = @"hUnc10SecAfterFF_m";
  v4[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 36)];
  v3[8] = @"hUnc15SecAfterFF_m";
  v4[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v3[9] = @"hUnc20SecAfterFF_m";
  v4[9] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v3[10] = @"intendedInterSessionDuration_s";
  v4[10] = [NSNumber numberWithDouble:*(*(a1 + 32) + 56)];
  v3[11] = @"realInterSessionDuration_s";
  v4[11] = [NSNumber numberWithDouble:*(*(a1 + 32) + 64)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
}

uint64_t sub_1007041EC(uint64_t a1, int *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    v6 = a2[4];
    v7 = *(a2 + 3);
    *buf = 68290050;
    v11 = 2082;
    v10 = 0;
    v12 = "";
    v13 = 1026;
    v14 = v4;
    v15 = 2050;
    v16 = v5;
    v17 = 1026;
    v18 = v6;
    v19 = 2050;
    v20 = v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRG: submit CLRGClientMetric session, CLRPowerMode:%{public}d, CLRActiveLifeDuration:%{public}f, CLRGnssSessionCount:%{public}d, CLRGnssSessionDuration:%{public}f}", buf, 0x32u);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100704348(uint64_t a1)
{
  v3[0] = @"CLRPowerMode";
  v4[0] = [NSNumber numberWithInt:**(a1 + 32)];
  v3[1] = @"CLRActiveLifeDuration";
  v4[1] = [NSNumber numberWithDouble:*(*(a1 + 32) + 8)];
  v3[2] = @"CLRGnssSessionCount";
  v4[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v3[3] = @"CLRGnssSessionDuration";
  v4[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 24)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

uint64_t sub_100704438(uint64_t a1, int *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    *buf = 68289794;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = v4;
    v14 = 1026;
    v15 = v5;
    v16 = 1026;
    v17 = v6;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRG: submit DailyGnss usage detail, totalGnssInADay_s:%{public}d, totalLeechedGnssInADay_s:%{public}d, totalProactiveGnssInADay_s:%{public}d}", buf, 0x24u);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100704580(uint64_t a1)
{
  v3[0] = @"totalGnssInADay_s";
  v4[0] = [NSNumber numberWithInt:**(a1 + 32)];
  v3[1] = @"totalLeechedGnssInADay_s";
  v4[1] = [NSNumber numberWithInt:*(*(a1 + 32) + 4)];
  v3[2] = @"totalProactiveGnssInADay_s";
  v4[2] = [NSNumber numberWithInt:*(*(a1 + 32) + 8)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

double sub_1007047F8(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_100704824(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1007048F8(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_100704948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100704A2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100704B18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100704B64()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100704C28()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_100704CE0()
{
  sub_10000EC00(qword_102658FE0, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, qword_102658FE0, dword_100000000);
  qword_102658FF8 = off_10246C668;
  qword_102659010 = &qword_102658FF8;
  __cxa_atexit(sub_1003EE78C, &qword_102658FF8, dword_100000000);
  qword_102659018 = off_10246C6E8;
  qword_102659030 = &qword_102659018;
  __cxa_atexit(sub_1003EE78C, &qword_102659018, dword_100000000);
  qword_102659038 = off_10246C768;
  qword_102659050 = &qword_102659038;
  __cxa_atexit(sub_1003EE790, &qword_102659038, dword_100000000);
  qword_102659058 = off_10246C7E8;
  qword_102659070 = &qword_102659058;

  return __cxa_atexit(sub_1003EE790, &qword_102659058, dword_100000000);
}

uint64_t sub_100705F8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_101916F48(a2);
  }

  return a1 + 4 * a2;
}

uint64_t sub_100705FC8(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_10191707C(a2);
  }

  if (a3 >= 2)
  {
    sub_1019171B0(a3);
  }

  return a1 + 4 * (a2 + 2 * a3);
}

void sub_1007061D4(uint64_t a1)
{
  [*(a1 + 32) _sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:*(a1 + 40) andCompletionBlock:*(a1 + 64)];

  v2 = *(a1 + 56);
}

void sub_10070652C(uint64_t a1, void *a2)
{
  if (a2)
  {
    NSLog(@"%@", [a2 userInfo]);
    v3 = *(a1 + 32);
  }

  else
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *(a1 + 80) + 29.72;
    v6 = *(a1 + 88) + -29.72;
    LODWORD(v7) = vcvtad_u64_f64((v5 - v6 + v5 - v6) / 2.56);
    [*(*(a1 + 40) + 208) fetchElevationsWithStartTime:+[NSNumber numberWithUnsignedInt:](NSNumber andEndTime:"numberWithUnsignedInt:" andBatchSize:v7) andElevationArray:{v4, v6, v5}];
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (*(*(a1 + 40) + 69) == 1)
    {
      v103 = v4;
      v9 = *(a1 + 32);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9);
      if (v10)
      {
        v11 = v10;
        v12 = MEMORY[0];
        do
        {
          v13 = 0;
          do
          {
            if (MEMORY[0] != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(8 * v13);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v15 = p_info[131];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(a1 + 96);
              [objc_msgSend(v14 "altitudeData")];
              v18 = v17;
              [objc_msgSend(v14 "altitudeData")];
              v20 = v19;
              [objc_msgSend(v14 "altitudeData")];
              v22 = v21;
              [v14 latitude];
              v24 = v23;
              [v14 longitude];
              v26 = v25;
              [v14 horizontalAccuracy];
              *buf = 134219521;
              v119 = v16;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v120 = 2048;
              v121 = v18;
              v122 = 2048;
              v123 = v20;
              v124 = 2048;
              v125 = v22;
              v126 = 2053;
              v127 = v24;
              v128 = 2053;
              v129 = v26;
              v130 = 2048;
              v131 = v27;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "enumerate locations fetched from DB,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f,lat,%{sensitive}f,lon,%{sensitive}f,horizontalAccuracy,%f", buf, 0x48u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              v28 = p_info[131];
              v29 = *(a1 + 96);
              [objc_msgSend(v14 "altitudeData")];
              v31 = v30;
              [objc_msgSend(v14 "altitudeData")];
              v33 = v32;
              [objc_msgSend(v14 "altitudeData")];
              v35 = v34;
              [v14 latitude];
              v37 = v36;
              [v14 longitude];
              v39 = v38;
              [v14 horizontalAccuracy];
              v104 = 134219521;
              v105 = v29;
              v106 = 2048;
              v107 = v31;
              v108 = 2048;
              v109 = v33;
              v110 = 2048;
              v111 = v35;
              v112 = 2053;
              v113 = v37;
              v114 = 2053;
              v115 = v39;
              v116 = 2048;
              v117 = v40;
              LODWORD(v101) = 72;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 2, "enumerate locations fetched from DB,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f,lat,%{sensitive}f,lon,%{sensitive}f,horizontalAccuracy,%f", &v104, *&v101);
              v42 = v41;
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _gatherLocationArray:andElevationArray:andTaskType:withStartTime:andEndTime:andVisitArray:andVisitSearchStartIndex:andCompletionBlock:]_block_invoke", "%s\n", v41);
              if (v42 != buf)
              {
                free(v42);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9);
          v11 = v43;
        }

        while (v43);
      }

      v4 = v103;
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103);
      if (v44)
      {
        v45 = v44;
        v46 = MEMORY[0];
        do
        {
          v47 = 0;
          do
          {
            if (MEMORY[0] != v46)
            {
              objc_enumerationMutation(v4);
            }

            v48 = *(8 * v47);
            v49 = *(a1 + 88);
            [v48 timestamp];
            if (v49 < v50)
            {
              [v48 timestamp];
              if (v51 < *(a1 + 80))
              {
                if (qword_1025D4410 != -1)
                {
                  sub_101916CCC();
                }

                v52 = p_info[131];
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                {
                  v53 = *(a1 + 96);
                  [v48 timestamp];
                  v55 = v54;
                  [v48 pressure];
                  *buf = 134218496;
                  v119 = v53;
                  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
                  v120 = 2048;
                  v121 = v55;
                  v122 = 2048;
                  v123 = v56;
                  _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "enumerate elevations fetched from DB,taskType,%lu,timestamp,%f,pressure,%f", buf, 0x20u);
                }

                v4 = v103;
                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D4410 != -1)
                  {
                    sub_101916CCC();
                  }

                  v57 = p_info[131];
                  v58 = *(a1 + 96);
                  [v48 timestamp];
                  v60 = v59;
                  [v48 pressure];
                  v104 = 134218496;
                  v105 = v58;
                  v106 = 2048;
                  v107 = v60;
                  v108 = 2048;
                  v109 = v61;
                  LODWORD(v101) = 32;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v57, 2, "enumerate elevations fetched from DB,taskType,%lu,timestamp,%f,pressure,%f", &v104, v101, v102);
                  v63 = v62;
                  sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _gatherLocationArray:andElevationArray:andTaskType:withStartTime:andEndTime:andVisitArray:andVisitSearchStartIndex:andCompletionBlock:]_block_invoke", "%s\n", v62);
                  if (v63 != buf)
                  {
                    free(v63);
                  }

                  v4 = v103;
                  p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                }
              }
            }

            v47 = v47 + 1;
          }

          while (v45 != v47);
          v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
          v45 = v64;
        }

        while (v64);
      }
    }

    v65 = (a1 + 32);
    v66 = [*(a1 + 32) count];
    if (v66)
    {
      v67 = v66;
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v68 = p_info[131];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(objc_msgSend(*v65 "firstObject")];
        v70 = v69;
        [objc_msgSend(objc_msgSend(*v65 "firstObject")];
        v72 = v71;
        [objc_msgSend(objc_msgSend(*v65 "lastObject")];
        v74 = v73;
        [objc_msgSend(objc_msgSend(*v65 "lastObject")];
        *buf = 134350080;
        v119 = v67;
        v120 = 2050;
        v121 = v70;
        v122 = 2048;
        v123 = v72;
        v124 = 2050;
        v125 = v74;
        v126 = 2048;
        v127 = v75;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "total locations,%{public}lu,first timestamp,%{public}f,first elevation,%f,last timestamp,%{public}f,last elevation,%f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019174FC((a1 + 32), v67, v76, v77, v78, v79, v80, v81);
      }
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v82 = p_info[131];
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEFAULT, "total locations,0", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101917664();
      }
    }

    v83 = [v4 count];
    if (v83)
    {
      v84 = v83;
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v85 = p_info[131];
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(v4 "firstObject")];
        v87 = v86;
        [objc_msgSend(v4 "firstObject")];
        v89 = v88;
        [objc_msgSend(v4 "lastObject")];
        v91 = v90;
        [objc_msgSend(v4 "lastObject")];
        *buf = 134350080;
        v119 = v84;
        v120 = 2050;
        v121 = v87;
        v122 = 2048;
        v123 = v89;
        v124 = 2050;
        v125 = v91;
        v126 = 2048;
        v127 = v92;
        _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEFAULT, "total elevations,%{public}lu,first timestamp,%{public}f,first pressure,%f,last timestamp,%{public}f,last pressure,%f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101917750(v4, v84, v93, v94, v95, v96, v97, v98);
      }
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v99 = p_info[131];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_DEFAULT, "total elevations,0", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019178A8();
      }
    }

    LODWORD(v100) = *(a1 + 112);
    [*(a1 + 40) _decimateLocationsWithStartTime:*(a1 + 48) andEndTime:*(a1 + 56) andLocationArray:*(a1 + 32) andElevationArray:v4 andRawLocationArray:*(a1 + 96) andRawElevationArray:*(a1 + 64) andTaskType:*(a1 + 88) andVisitArray:*(a1 + 80) andVisitSearchStartIndex:v100];

    [*(a1 + 40) _gatherLocationArray:*(a1 + 48) andElevationArray:*(a1 + 56) andTaskType:*(a1 + 96) withStartTime:*(a1 + 64) andEndTime:*(a1 + 112) andVisitArray:*(a1 + 72) andVisitSearchStartIndex:*(a1 + 80) andCompletionBlock:*(a1 + 104)];
  }
}

uint64_t sub_100707AFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  v2 = *(a2 + 8);
  if (v2 >= v3)
  {
    v4 = v2 - v3;
  }

  else
  {
    v4 = -(v2 - v3);
  }

  if (v4 > 1.0e-16)
  {
    return 0;
  }

  v7 = 1;
  while (1)
  {
    v8 = sub_10070ED48(a2, v7, v7);
    if (!v7)
    {
      v9 = *sub_10070EDA8(a1 + 8, 0, 1uLL);
      v10 = *sub_10070EDA8(a1 + 8, 0, 1uLL);
      v8 = v8 + (-(v9 * v10) * *sub_10070EF88(a1, 1uLL));
    }

    *sub_10070EF88(a1, v7) = v8;
    if (*sub_10070EF88(a1, v7) <= 0.0)
    {
      break;
    }

    if (v7)
    {
      v11 = sub_10070ED48(a2, (v7 - 1), v7);
      v12 = v11 / *sub_10070EF88(a1, v7);
      *sub_10070EDA8(a1 + 8, v7 - 1, v7) = v12;
    }

    if (--v7 == -1)
    {
      return 1;
    }
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101917AC8();
  }

  v14 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134217984;
    v16 = v7;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", &v15, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101917ADC();
    return 0;
  }

  return result;
}

void sub_100708530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *sub_100705FC8(a2, v6, 0);
    v10 = *sub_10070EDA8(a1 + 8, 0, 1uLL);
    v11 = sub_100705FC8(a2, v6, 1uLL);
    *v11 = *v11 + (v9 * v10);
    *sub_100705FC8(v47, v6, 1uLL) = 0;
    *sub_100705FC8(v47, v6, 0) = 0;
    v12 = sub_100705FC8(v47, v6, v6);
    v7 = 0;
    *v12 = 1065353216;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  for (i = 1; ; i = v15 - 1)
  {
    v14 = 0;
    v15 = i;
    v50[i] = 0;
    v16 = 1;
    v17 = 0.0;
    do
    {
      v18 = v16;
      v19 = *sub_100705FC8(a2, v15, v14);
      v20 = v19 * *sub_100705FC8(a2, v15, v14);
      v21 = v17 + (v20 * *sub_10070EF88(a1, v14));
      v22 = *sub_100705FC8(v47, v15, v14);
      v23 = v22 * *sub_100705FC8(v47, v15, v14);
      v24 = sub_10070EFC4(a3, v14);
      v16 = 0;
      v17 = v21 + (v23 * v24);
      *&v50[v15] = v17;
      v14 = 1;
    }

    while ((v18 & 1) != 0);
    if (v17 <= 0.0)
    {
      break;
    }

    if (!v15)
    {
      v44 = v50[0];
      *sub_10070EF88(a1, 0) = v44;
      v45 = v50[1];
      *sub_10070EF88(a1, 1uLL) = v45;
      return;
    }

    v25 = 0;
    v26 = 0.0;
    v27 = 1;
    do
    {
      v28 = v27;
      v29 = *sub_100705FC8(a2, 0, v25);
      v30 = v29 * *sub_10070EF88(a1, v25);
      v31 = v26 + (v30 * *sub_100705FC8(a2, v15, v25));
      v32 = *sub_100705FC8(v47, 0, v25);
      v33 = v32 * sub_10070EFC4(a3, v25);
      v34 = sub_100705FC8(v47, v15, v25);
      v27 = 0;
      v26 = v31 + (v33 * *v34);
      v25 = 1;
    }

    while ((v28 & 1) != 0);
    v35 = 0;
    *sub_10070EDA8(a1 + 8, 0, v15) = v26 / v17;
    v36 = 1;
    do
    {
      v37 = v36;
      v38 = *sub_10070EDA8(a1 + 8, 0, v15);
      v39 = *sub_100705FC8(a2, v15, v35);
      v40 = sub_100705FC8(a2, 0, v35);
      *v40 = *v40 - (v38 * v39);
      v41 = *sub_10070EDA8(a1 + 8, 0, v15);
      v42 = *sub_100705FC8(v47, v15, v35);
      v43 = sub_100705FC8(v47, 0, v35);
      v36 = 0;
      *v43 = *v43 - (v41 * v42);
      v35 = 1;
    }

    while ((v37 & 1) != 0);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101917BCC();
  }

  v46 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v49 = v15;
    _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101917BF4();
  }
}

void sub_100708A1C(float *a1, uint64_t a2, float *a3, float *a4)
{
  v25 = 0;
  v8 = sub_10070F000(a2, 0, 0);
  v9 = v8 * *sub_10070EF88(a1, 0);
  v10 = sub_10070F000(a2, 0, 1);
  v11 = sub_10070F000(a2, 0, 0);
  v12 = *sub_10070EDA8((a1 + 2), 0, 1uLL);
  v13 = sub_10070EF88(a1, 1uLL);
  v14 = *a3 + (v8 * v9);
  if (v14 <= 0.0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101917AC8();
    }

    v23 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v27 = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101917CE4();
    }
  }

  else
  {
    v15 = v10 + (v11 * v12);
    v16 = v15 * *v13;
    *a1 = (*a3 * (1.0 / v14)) * *a1;
    v17 = v14 + (v15 * v16);
    if (v17 <= 0.0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101917AC8();
      }

      v24 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v27 = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101917DE4(buf, &v27);
      }
    }

    else
    {
      v18 = a1[2];
      a1[1] = (v14 * (1.0 / v17)) * a1[1];
      a1[2] = v18 + (v9 * -(v15 * (1.0 / v14)));
      v19 = v9 + (v16 * v18);
      v20 = (1.0 / v17) * *a4;
      v21 = sub_100705F8C(&v25, 0);
      *v21 = *v21 + (v20 * v19);
      v22 = sub_100705F8C(&v25, 1uLL);
      *v22 = *v22 + (v20 * v16);
    }
  }
}

float sub_10070AF68(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = sub_10070ED48(a1, v4, 0);
      v11 = v10 * sub_10070ED48(a2, 0, v6);
      *sub_100705FC8(&v16, v4, v6) = v11;
      v12 = sub_10070ED48(a1, v4, 1uLL);
      v13 = sub_10070ED48(a2, 1, v6);
      v14 = sub_100705FC8(&v16, v4, v6);
      v8 = 0;
      *v14 = *v14 + (v12 * v13);
      v6 = 1;
    }

    while ((v9 & 1) != 0);
    v5 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return v16;
}

float *sub_10070B064(uint64_t a1, uint64_t a2)
{
  v4 = sub_10070ED48(a1, 0, 0);
  *sub_100705FC8(a2, 0, 0) = v4;
  v5 = sub_10070ED48(a1, 0, 1uLL);
  *sub_100705FC8(a2, 1, 0) = v5;
  v6 = sub_10070ED48(a1, 1, 0);
  *sub_100705FC8(a2, 0, 1uLL) = v6;
  v7 = sub_10070ED48(a1, 1, 1uLL);
  result = sub_100705FC8(a2, 1, 1uLL);
  *result = v7;
  return result;
}

BOOL sub_10070B12C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  for (i = 1; ; i = 0)
  {
    v6 = i;
    v7 = sub_10070F3FC(a1, v4);
    if (v7 == 0.0)
    {
      break;
    }

    v4 = 1;
    if ((v6 & 1) == 0)
    {
      v8 = *sub_100705F8C(a2, 1uLL);
      v9 = sub_10070F21C(a1 + 8, 0, 1uLL);
      v10 = sub_100705F8C(a2, 0);
      *v10 = *v10 - (v8 * v9);
      v11 = sub_10070F3FC(a1, 0);
      v12 = sub_100705F8C(a2, 0);
      *v12 = *v12 / v11;
      v13 = sub_10070F3FC(a1, 1uLL);
      v14 = sub_100705F8C(a2, 1uLL);
      *v14 = *v14 / v13;
      v15 = *sub_100705F8C(a2, 0);
      *(a2 + 4) = *(a2 + 4) - (v15 * sub_10070F21C(a1 + 8, 0, 1uLL));
      return v7 != 0.0;
    }
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101917AC8();
  }

  v16 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = v4;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "D[%zu] == 0, semidefinite matrix!", &v18, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019184BC();
  }

  return v7 != 0.0;
}

float sub_10070B310(uint64_t a1, float *a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = sub_10070ED48(a1, v4, 0) * *a2;
    *sub_100705F8C(&v12, v4) = v7;
    v8 = sub_10070ED48(a1, v4, 1uLL);
    v9 = a2[1];
    v10 = sub_100705F8C(&v12, v4);
    v5 = 0;
    *v10 = *v10 + (v8 * v9);
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v12;
}

float sub_10070B3C0(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  do
  {
    *&v8[v6] = sub_10070F438(a1, v6) + *&v8[v6];
    ++v6;
  }

  while (v6 != 4);
  return *v8;
}

float sub_10070B42C(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  do
  {
    *&v8[v6] = *&v8[v6] - sub_10070F438(a1, v6);
    ++v6;
  }

  while (v6 != 4);
  return *v8;
}

void sub_10070B878(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v3 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 80);
      *buf = 134218240;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "elevation batch processing returns early due to an error in querying visit with startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019186BC();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v7 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) count];
      *buf = 67109120;
      LODWORD(v10) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "historicalVisits array count,count,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019185AC(a1);
    }

    [*(a1 + 40) _gatherLocationArray:*(a1 + 48) andElevationArray:v6 andTaskType:? withStartTime:? andEndTime:? andVisitArray:? andVisitSearchStartIndex:? andCompletionBlock:?];
  }
}

uint64_t sub_10070BAAC(uint64_t a1)
{
  [*(a1 + 40) _alignElevationArray:*(a1 + 48) andLocationArray:*(a1 + 56)];
  [*(a1 + 40) _logValuesOfLocationArray:*(a1 + 56) andElevationArray:*(a1 + 48) andTaskType:*(a1 + 80)];
  if ([*(a1 + 56) count] && objc_msgSend(*(a1 + 48), "count"))
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      if (![*(a1 + 40) _forwardProcessingWithLocationArray:*(a1 + 56) andElevationArray:*(a1 + 48) andKFEstimatesBuffer:v2 andKeepAllLocations:v3 & 1 andTaskType:*(a1 + 80)])
      {
        break;
      }

      [v2 removeAllObjects];
      v4 = 0;
      v3 = 1;
    }

    while ((v5 & 1) != 0);
    [*(a1 + 56) removeAllObjects];
    [*(a1 + 48) removeAllObjects];
    [*(a1 + 40) _backwardProcessingWithKFEstimatesBuffer:v2 andKSEstimatesBuffer:*(a1 + 64)];
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v6 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 80);
      v8 = *(a1 + 88);
      v9 = *(a1 + 96);
      v10 = [*(a1 + 56) count];
      v11 = [*(a1 + 48) count];
      *buf = 134219008;
      v33 = v7;
      v34 = 2048;
      v35 = v8;
      v36 = 2048;
      v37 = v9;
      v38 = 2048;
      v39 = v10;
      v40 = 2048;
      v41 = v11;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "No data available,taskType,%lu,startTime,%f,endTime,%f,locationCount,%lu,elevationCount,%lu", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v13 = qword_1025D4418;
      v14 = *(a1 + 80);
      v15 = *(a1 + 88);
      v16 = *(a1 + 96);
      v17 = [*(a1 + 56) count];
      v18 = [*(a1 + 48) count];
      v22 = 134219008;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2048;
      v29 = v17;
      v30 = 2048;
      v31 = v18;
      LODWORD(v21) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 0, "No data available,taskType,%lu,startTime,%f,endTime,%f,locationCount,%lu,elevationCount,%lu", &v22, v21);
      v20 = v19;
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _elevationBatchProcessingWithStartTime:andEndTime:andLocationBuffer:andKSEstimatesBuffer:andTaskType:andCompletionBlock:]_block_invoke", "%s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  return (*(*(a1 + 72) + 16))();
}

void sub_10070BE7C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10070BF14;
  v3[3] = &unk_10246C900;
  v5 = *(a1 + 64);
  v4 = *(a1 + 40);
  [v2 sendElevationsFromEstimates:v4 withCompletionBlock:v3];
}

void sub_10070BF14(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
}

void sub_10070D208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_100008080(v35);
  sub_10001423C(&a35);
  _Unwind_Resume(a1);
}

void sub_10070E87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

float sub_10070ED48(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_101918C7C(a2);
  }

  if (a3 >= 2)
  {
    sub_101918DB0(a3);
  }

  return *(a1 + 4 * (a2 + 2 * a3));
}

unint64_t sub_10070EDA8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    sub_101918EE4(a3);
  }

  if (a3 <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101917BCC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101917BCC();
      }

      v10 = 134218240;
      v11 = a3;
      v12 = 2048;
      v13 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", &v10, 22);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 2>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 2]", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_10070EF88(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_101919018(a2);
  }

  return a1 + 4 * a2;
}

float sub_10070EFC4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_10191914C(a2);
  }

  return *(a1 + 4 * a2);
}

float sub_10070F000(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    sub_101919280(a2);
  }

  if (a3 >= 2)
  {
    sub_1019193C4(a3);
  }

  return *(a1 + 4 * (a2 + a3));
}

float sub_10070F05C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 | a2)
  {
    sub_1019194F8();
  }

  v6 = sub_10070F154(a1, a2, a3);
  *sub_100705FC8(&v11, 0, 0) = v6;
  v7 = sub_10070F154(a1, a2, a3 + 1);
  *sub_100705FC8(&v11, 0, 1uLL) = v7;
  v8 = sub_10070F154(a1, a2 + 1, a3);
  *sub_100705FC8(&v11, 1, 0) = v8;
  v9 = sub_10070F154(a1, a2 + 1, a3 + 1);
  *sub_100705FC8(&v11, 1, 1uLL) = v9;
  return v11;
}

float sub_10070F154(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = 0.0;
  if (v3 <= 1)
  {
    do
    {
      v8 = v3;
      v9 = 1.0;
      v10 = 1.0;
      if (v3 != a3)
      {
        v10 = 0.0;
        if (v3 > a3)
        {
          v10 = sub_10070F21C(a1 + 8, 0, v3);
        }
      }

      if (v8 != a2)
      {
        v9 = 0.0;
        if (v8 > a2)
        {
          v9 = sub_10070F21C(a1 + 8, 0, v8);
        }
      }

      v4 = v4 + ((v9 * sub_10070F3FC(a1, v8)) * v10);
      v3 = 1;
    }

    while (!v8);
  }

  return v4;
}

float sub_10070F21C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    sub_10191965C(a3);
  }

  if (a3 <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101917BCC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/Math/CMFactoredMatrix.h, line 232,invalid element %zu <= %zu.", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101917BCC();
      }

      v10 = 134218240;
      v11 = a3;
      v12 = 2048;
      v13 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/Math/CMFactoredMatrix.h, line 232,invalid element %zu <= %zu.", &v10, 22);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "T CMFactoredMatrix<float, 2>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) const [T = float, N = 2]", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return *(a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1)));
}

float sub_10070F3FC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_101919790(a2);
  }

  return *(a1 + 4 * a2);
}

float sub_10070F438(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    sub_1019198C4(a2);
  }

  return *(a1 + 4 * a2);
}

void sub_10070F494(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246C990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10070F518(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
}

uint64_t sub_10070F720(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10070F940;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026590C0 != -1)
  {
    dispatch_once(&qword_1026590C0, block);
  }

  return qword_102637210;
}

void sub_10070F9B0(uint64_t a1, void *a2)
{
  v3 = sub_1006A597C(a1, "filtered", a2);
  v4 = v3 + 15;
  *v3 = off_10246CA00;
  v3[15] = off_10246CB50;
  v5 = sub_10018D404((v3 + 16));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  sub_10113A034((a1 + 184), *(a1 + 32), v4, v5);
  *(a1 + 1024) = [objc_msgSend(*(a1 + 32) "silo")];
  *(a1 + 1032) = 0xBFF0000000000000;
  *(a1 + 1040) = 0xBFF0000000000000;
  *&v6.__r_.__value_.__l.__data_ = xmmword_101C8A200;
  v6.__r_.__value_.__r.__words[2] = 2;
  sub_100710D94((a1 + 1048), &v6, 3);
  *(a1 + 1080) = 0u;
  *(a1 + 1072) = a1 + 1080;
  *(a1 + 1096) = 0xBFF0000000000000;
  *(a1 + 1104) = 0;
  sub_100D98054();
}

void sub_10070FCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1003C93BC(v20 + 1072, *(v20 + 1080));
  sub_1003C93BC(v20 + 1048, *(v20 + 1056));
  sub_10113A0B4(v21 + 2);
  v23 = *(v20 + 176);
  *(v20 + 176) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *v21;
  *v21 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_1006A5E8C(v20);
  _Unwind_Resume(a1);
}

void sub_10070FD90(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101919BEC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFilteredLocationController::onManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101919C00();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFilteredLocationController::onManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10071034C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10070FF5C(uint64_t a1)
{
  [*(a1 + 1024) invalidate];

  *(a1 + 1024) = 0;
}

void sub_10070FF98(uint64_t result)
{
  if (&_CPScheduleWakeAtDateWithIdentifier)
  {
    sub_100710004(result);
    if (*(result + 1096) > 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      *(result + 1104) = CFDateCreate(kCFAllocatorDefault, Current + *(result + 1096));
      CPScheduleWakeAtDateWithIdentifier();
    }
  }
}

void sub_100710004(uint64_t a1)
{
  if (&_CPCancelWakeAtDateWithIdentifier)
  {
    if (*(a1 + 1104))
    {
      CPCancelWakeAtDateWithIdentifier();
      CFRelease(*(a1 + 1104));
      *(a1 + 1104) = 0;
    }
  }
}

void sub_100710054(void *result, int a2)
{
  if (a2)
  {
    v3 = result[4];
    v4 = v3 + 184;
    (*(*v3 + 152))(v3, result + 200, result + 5, 1, 0xFFFFFFFFLL, 0);

    sub_100117C60(v4, result + 400, result + 5);
  }
}

void sub_1007100DC(id a1)
{
  sub_10001CAF4(buf);
  v3 = 0;
  v1 = sub_10001CB4C(*buf, "ADLEnableCachedLocationDebugLogs", &v3, 0xFFFFFFFFLL);
  byte_1026590C8 = v1 & v3;
  if (*v5)
  {
    sub_100008080(*v5);
  }

  if (qword_1025D4600 != -1)
  {
    sub_10191A928();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v5 = 2082;
    *&v5[2] = "";
    v6 = 1026;
    v7 = byte_1026590C8;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ADL,Enable cached location debug logs, enable:%{public}d}", buf, 0x18u);
  }
}

void sub_1007101F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100710214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = *(a2 + 76);
  v7 = *(a2 + 4);
  v8 = *(a2 + 12);
  v9 = *(a2 + 28);
  v10 = *(a2 + 44);
  v11 = *(a2 + 60);
  v12 = *(a2 + 20);
  v13 = sub_1001FD6E4(*(a2 + 96));
  v14 = *(a2 + 88);
  Current = CFAbsoluteTimeGetCurrent();
  v16 = sub_1001D24B0(a2, Current);
  if (*(a3 + 23) >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  v18 = snprintf(__str, 0x12CuLL, "%s,viewType,SingleArrowCoordinate,iOSTime,%.3f,latitude,%.9f,longitude,%.9f,altitude,%.3f,speed,%.3f,course,%.3f,horizUnc,%.3f,posType,%s,lifespan,%.3f,age,%.3f,folder,%s", v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
  v20 = sub_10000AE98(v18, v19);
  sub_10000B230(v22);
  return sub_1005D5780(v20, __str, v22);
}

double sub_10071034C(id *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C50();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Location Services state changed, clearing local cache}", &v12, 0x12u);
    }

    (*(*result + 38))(result);
    v11 = result + 23;
    if (*(a4 + 188) == 1)
    {
      sub_10113A0B8(v11);
    }

    else
    {
      return sub_10113A28C(v11);
    }
  }

  else if (!*a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C50();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Location Services reset, clearing local cache}", &v12, 0x12u);
    }

    (*(*result + 38))(result);
    v6 = [objc_msgSend(result[4] vendor];
    if (byte_1026590AF >= 0)
    {
      v7 = &qword_102659098;
    }

    else
    {
      v7 = qword_102659098;
    }

    [v6 resetNotificationConsumedForIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v7)}];
  }

  return v8;
}

void sub_100710580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a2 + 20);
  if (*(a2 + 20) <= 0.0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C50();
    }

    v25 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:No valid last confident location}", buf, 0x12u);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C50();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 4);
      v9 = *(a2 + 12);
      v10 = *(a2 + 20);
      v11 = sub_1001FD6E4(*(a2 + 96));
      v12 = *(a2 + 84);
      v26 = *(a2 + 76);
      v27 = *(a2 + 88);
      v13 = CFAbsoluteTimeGetCurrent() - v26;
      v14 = *(a2 + 128);
      *buf = 134547715;
      *&buf[4] = v8;
      *&buf[12] = 2053;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = v10;
      LOWORD(v30) = 2080;
      *(&v30 + 2) = v11;
      WORD5(v30) = 1024;
      HIDWORD(v30) = v12;
      *v31 = 2048;
      *&v31[2] = v26;
      *&v31[10] = 2048;
      *&v31[12] = v27;
      *&v31[20] = 2048;
      *&v31[22] = v13;
      *&v31[30] = 1024;
      LODWORD(v32) = v14;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Cached location,%{sensitive}.8lf,%{sensitive}.8lf,HorAcc,%.1lf,Type,%s,Confidence,%d,Timestamp,%.3f,Lifespan,%.3f,Age,%.3f,integrity,%d", buf, 0x54u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191A950(a2, v3);
    }

    sub_100021AFC(buf);
    v15 = *(a2 + 112);
    v33 = *(a2 + 96);
    v34 = v15;
    v35[0] = *(a2 + 128);
    *(v35 + 12) = *(a2 + 140);
    v16 = *(a2 + 48);
    v30 = *(a2 + 32);
    *v31 = v16;
    v17 = *(a2 + 80);
    *&v31[16] = *(a2 + 64);
    v32 = v17;
    v18 = *(a2 + 16);
    *buf = *a2;
    *&buf[16] = v18;
    memcpy(v36, a3, sizeof(v36));
    v19 = *(a3 + 520);
    v20 = *(a3 + 528);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = v19;
    v21 = v38;
    v38 = v20;
    if (v21)
    {
      sub_100008080(v21);
    }

    v22 = *(a3 + 616);
    v43 = *(a3 + 600);
    v44[0] = v22;
    *(v44 + 9) = *(a3 + 625);
    v23 = *(a3 + 552);
    v39 = *(a3 + 536);
    v40 = v23;
    v24 = *(a3 + 584);
    v41 = *(a3 + 568);
    v42 = v24;
    v28 = 0;
    (*(*a1 + 152))(a1, &v28, buf, 1, 0xFFFFFFFFLL, 0);

    if (v48)
    {
      sub_100008080(v48);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

    if (v45)
    {
      sub_100008080(v45);
    }

    if (v38)
    {
      sub_100008080(v38);
    }
  }
}

void sub_1007108B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007108EC(uint64_t a1)
{
  *a1 = off_10246CA00;
  *(a1 + 120) = off_10246CB50;
  sub_1003C93BC(a1 + 1072, *(a1 + 1080));
  sub_1003C93BC(a1 + 1048, *(a1 + 1056));
  sub_10113A0B4((a1 + 184));
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006A5E8C(a1);
}

void sub_1007109DC(uint64_t a1)
{
  *a1 = off_10246CA00;
  *(a1 + 120) = off_10246CB50;
  sub_1003C93BC(a1 + 1072, *(a1 + 1080));
  sub_1003C93BC(a1 + 1048, *(a1 + 1056));
  sub_10113A0B4((a1 + 184));
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006A5E8C(a1);

  operator delete();
}

uint64_t sub_100710AE0(uint64_t a1)
{
  v2 = a1 - 120;
  *(a1 - 120) = off_10246CA00;
  *a1 = off_10246CB50;
  sub_1003C93BC(a1 + 952, *(a1 + 960));
  sub_1003C93BC(a1 + 928, *(a1 + 936));
  sub_10113A0B4((a1 + 64));
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return sub_1006A5E8C(v2);
}

void sub_100710BD0(uint64_t a1)
{
  v2 = a1 - 120;
  *(a1 - 120) = off_10246CA00;
  *a1 = off_10246CB50;
  sub_1003C93BC(a1 + 952, *(a1 + 960));
  sub_1003C93BC(a1 + 928, *(a1 + 936));
  sub_10113A0B4((a1 + 64));
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1006A5E8C(v2);

  operator delete();
}

uint64_t **sub_100710D94(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_100710E14(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_100710E14(uint64_t **a1, uint64_t *a2, int *a3, void *a4)
{
  v4 = *sub_1005D6764(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_100710EAC()
{
  sub_10000EC00(&qword_102659098, "FilteredLocationController");

  return __cxa_atexit(&std::string::~string, &qword_102659098, dword_100000000);
}

void *sub_100710F0C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  return result;
}

uint64_t sub_100710F18(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

id *sub_100710F6C(id *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 3)
  {
    v5 = result;
    if (qword_1025D4610 != -1)
    {
      sub_10191AB08();
    }

    v6 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138477827;
      v8 = sub_10007005C(a4);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLXOTASubscription Mobile asset notification data: %{private}@", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191AB1C(a4);
    }

    return [v5[1] onUpdatedSettings:sub_10007005C(a4)];
  }

  return result;
}

id sub_100711078(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    sub_1012D11E0();
  }

  return [*(v1 + 16) register:*(v1 + 8) forNotification:3 registrationInfo:0];
}

void sub_100711144(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10191AC50();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLXOTASubscription::onMobileAssetNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10191AC64();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLXOTASubscription::onMobileAssetNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100710F6C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void *sub_100711310(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    [*(v1 + 16) unregister:*(v1 + 8) forNotification:3];
    result = v2[2];
    v2[2] = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t sub_1007113EC(uint64_t a1, double a2, double a3, double a4)
{
  v4 = fabs(a4 * 15.0) + *(a1 + 24) + *(a1 + 56);
  if (fmin(a3, v4) >= a2)
  {
    v5 = 50;
  }

  else
  {
    v5 = 25;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v6 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
  {
    v15 = 134349312;
    v16 = v4;
    v17 = 1026;
    v18 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "CLNmeaScreener,integrity,positionDiffBoundMediumIntegrity,%{public}.2lf,locIntegrity,%{public}d", &v15, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191ACC8(v5, v7, v8, v9, v10, v11, v12, v13, v4);
  }

  return v5;
}

BOOL sub_100711508(uint64_t a1, float64x2_t *a2, _DWORD *a3, double a4, double a5, double a6, double a7)
{
  v12 = vabdd_f64(a7, *(a1 + 16));
  sub_100109D18(a2, a5, a6, *a1, *(a1 + 8), 0.0);
  v14 = v13;
  v15 = fabs(v12 * a4) + *(a1 + 24);
  if (v15 >= *(a1 + 40))
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  *a3 = sub_1007113EC(a1, v14, v16, v12);
  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v17 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    v23 = *(a1 + 36);
    *buf = 134351873;
    v58 = v20;
    v59 = 2050;
    v60 = v14;
    v61 = 2050;
    v62 = v16;
    v63 = 2053;
    v64 = a5;
    v65 = 2053;
    v66 = a6;
    v67 = 2053;
    v68 = v18;
    v69 = 2053;
    v70 = v19;
    v71 = 1026;
    v72 = v22;
    v73 = 2050;
    v74 = v21;
    v75 = 1026;
    v76 = v23;
    v77 = 2050;
    v78 = v12;
    v79 = 2050;
    v80 = a4;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,screen,time,%{public}.1lf,posDiff,%{public}.2lf,positionDiffBound,%{public}.2lf,accessoryLL,%{sensitive}.7lf,%{sensitive}.7lf,referenceLL,%{sensitive}.7lf,%{sensitive}.7lf,type,%{public}d,hunc,%{public}.2lf,refFrame,%{public}d,timeDiff,%{public}.2lf,maxSpeed,%{public}.2lf", buf, 0x72u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_10191ACA0();
    }

    v25 = *a1;
    v26 = *(a1 + 8);
    v27 = *(a1 + 16);
    v28 = *(a1 + 24);
    v29 = *(a1 + 32);
    v30 = *(a1 + 36);
    v33 = 134351873;
    v34 = v27;
    v35 = 2050;
    v36 = v14;
    v37 = 2050;
    v38 = v16;
    v39 = 2053;
    v40 = a5;
    v41 = 2053;
    v42 = a6;
    v43 = 2053;
    v44 = v25;
    v45 = 2053;
    v46 = v26;
    v47 = 1026;
    v48 = v29;
    v49 = 2050;
    v50 = v28;
    v51 = 1026;
    v52 = v30;
    v53 = 2050;
    v54 = v12;
    v55 = 2050;
    v56 = a4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLNmeaScreener,screen,time,%{public}.1lf,posDiff,%{public}.2lf,positionDiffBound,%{public}.2lf,accessoryLL,%{sensitive}.7lf,%{sensitive}.7lf,referenceLL,%{sensitive}.7lf,%{sensitive}.7lf,type,%{public}d,hunc,%{public}.2lf,refFrame,%{public}d,timeDiff,%{public}.2lf,maxSpeed,%{public}.2lf", &v33, 114);
    v32 = v31;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNmeaScreener::ExternalLocationData::isLocationWithinBoundsAndSetLocIntegrity(CLDistanceCalc &, double, double, double, CFAbsoluteTime, CLLocationIntegrity &) const", "%s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  return v14 <= v16;
}

uint64_t sub_100711800(uint64_t a1, uint64_t a2)
{
  *a1 = 256;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10018D404(a1 + 32);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0;
  *(a1 + 112) = xmmword_101C8A2C0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x4069000000000000;
  *(a1 + 152) = _Q0;
  *(a1 + 168) = 0;
  *(a1 + 176) = xmmword_101C8A2D0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0x4069000000000000;
  *(a1 + 216) = _Q0;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_101C8A2E0;
  *(a1 + 256) = 0x40B3880000000000;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = xmmword_101C8A2F0;
  *(a1 + 320) = 0x40E86A0000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0xBFF0000000000000;
  *(a1 + 352) = 0xBFF0000000000000;
  *(a1 + 360) = 0;
  *(a1 + 368) = xmmword_101C8A300;
  *(a1 + 384) = 0x410E848000000000;
  sub_10071323C(a1 + 392, a2);
  *(a1 + 424) = 0;
  *(a1 + 432) = 1;
  *(a1 + 436) = 0xB40000000ALL;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0xBFF0000000000000;
  *(a1 + 472) = 50;
  *(a1 + 480) = 0xBFF0000000000000;
  v16 = 0;
  sub_10001CAF4(buf);
  v9 = sub_10005BBE4(*buf, "GpsSimulatorTestMode", &v16);
  if (v16)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v18)
  {
    sub_100008080(v18);
  }

  if (v10)
  {
    *a1 = 1;
    if (qword_1025D45E0 != -1)
    {
      sub_10191ACA0();
    }

    v11 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,fSimulatorMode,1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191ADE0(buf);
      v15[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLNmeaScreener,fSimulatorMode,1", v15, 2);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 2, "CLNmeaScreener::CLNmeaScreener(NMEAScreenerCallback)", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  return a1;
}

void sub_100711AC0(_Unwind_Exception *a1)
{
  sub_100D8D8D0((v1 + 448));
  sub_1006F7E28(v1 + 392);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_100711B1C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_10001A3E8(a1, a2);
  if (sub_10071D18C())
  {
    *(a1 + 2) = v2;
    v4 = (a1 + 2);
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
    {
      v6 = *v4;
      v15[0] = 67240192;
      v15[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLNMEAScreener,isExternalLocationDisablementAllowed,1,PauseExternalLocation,%{public}d", v15, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191AF08(v4, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v14 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,isExternalLocationDisablementAllowed,0", v15, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191AE24();
    }
  }
}

uint64_t sub_100711C78(uint64_t a1, int a2, uint64_t a3, int a4, double a5, double a6, double a7)
{
  if (*(a1 + 2) != 1)
  {
    if (*(a1 + 1) == 1)
    {
      v12 = a3;
      if (a2 == 3 || !a2)
      {
        if (a2)
        {
          v15 = "GPRMC";
        }

        else
        {
          v15 = "GPGGA";
        }

        sub_100006044((a1 + 8), v15);
        v51 = 0;
        if (!sub_100020608(a5, a6))
        {
          if (qword_1025D45E0 != -1)
          {
            sub_10191AC8C();
          }

          v26 = qword_1025D45E8;
          if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "CLNMEAScreener,screen,rejected,invalid accessory coordinate", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191B12C();
          }

          goto LABEL_31;
        }

        if (*a1 != 1)
        {
          if (a4)
          {
            LODWORD(v16) = dword_1026590D8;
            if (v16 > a7)
            {
              if (qword_1025D45E0 != -1)
              {
                sub_10191AC8C();
              }

              v17 = qword_1025D45E8;
              if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
              {
                *buf = 134349312;
                v63 = a7;
                v64 = 1026;
                *v65 = dword_1026590D8;
                _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "CLNmeaScreener,screen,data time less,%{public}.2lf,than build time,,%{public}d", buf, 0x12u);
              }

              v18 = sub_10000A100(121, 2);
              if (v18)
              {
                sub_10191B008(v18, v19, v20, v21, v22, v23, v24, v25, a7);
              }

LABEL_31:
              sub_1007124B8(a1 + 392, 1, 0);
              return 0;
            }
          }

          if (a7 >= 0.0)
          {
            v50 = 0;
            v27 = sub_100712514(a1, v12, &v51, &v50, a5, a6);
            v28 = v51;
            if (sub_100712870(a1 + 424, v27, v51, v50))
            {
              if (a7 <= 0.0 || !a4 || (v29 = *(a1 + 480), v29 <= 0.0) || vabdd_f64(a7, v29) >= 0.8)
              {
                *(a1 + 480) = a7;
                if (qword_1025D45E0 != -1)
                {
                  sub_10191AC8C();
                }

                v41 = qword_1025D45E8;
                if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
                {
                  v42 = *(a1 + 424);
                  v43 = "success";
                  v44 = *(a1 + 428);
                  if (!v28)
                  {
                    v43 = "not screened";
                  }

                  *buf = 134350595;
                  v63 = a7;
                  v64 = 2082;
                  *v65 = v43;
                  *&v65[8] = 1026;
                  *v66 = v42;
                  *&v66[4] = 1026;
                  *&v66[6] = v44;
                  *v67 = 2053;
                  *&v67[2] = a5;
                  v68 = 2053;
                  v69 = a6;
                  v70 = 1026;
                  v71 = v28;
                  _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "CLNMEAScreener,screen,%{public}.2lf,accessory location %{public}s,continuousFailCount,%{public}d,continuousSuccessCount,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,locTypeUsedForScreening,%{public}d", buf, 0x3Cu);
                }

                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D45E0 != -1)
                  {
                    sub_10191ACA0();
                  }

                  v45 = "success";
                  v46 = *(a1 + 424);
                  v47 = *(a1 + 428);
                  if (!v28)
                  {
                    v45 = "not screened";
                  }

                  v52 = 134350595;
                  v53 = a7;
                  v54 = 2082;
                  *v55 = v45;
                  *&v55[8] = 1026;
                  *v56 = v46;
                  *&v56[4] = 1026;
                  *&v56[6] = v47;
                  *v57 = 2053;
                  *&v57[2] = a5;
                  v58 = 2053;
                  v59 = a6;
                  v60 = 1026;
                  v61 = v28;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLNMEAScreener,screen,%{public}.2lf,accessory location %{public}s,continuousFailCount,%{public}d,continuousSuccessCount,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,locTypeUsedForScreening,%{public}d", &v52, 60);
                  v49 = v48;
                  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNmeaScreener::screenData(CLNmeaSentenceType, double, double, CLClientLocationReferenceFrame, BOOL, double)", "%s\n", v48);
                  if (v49 != buf)
                  {
                    free(v49);
                  }
                }

                sub_1007124B8(a1 + 392, 0, v28);
                return 1;
              }

              sub_1007124B8(a1 + 392, 1, 0);
              if (qword_1025D45E0 != -1)
              {
                sub_10191AC8C();
              }

              v30 = qword_1025D45E8;
              if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
              {
                v31 = vabdd_f64(a7, *(a1 + 480));
                *buf = 134349825;
                v63 = a7;
                v64 = 2053;
                *v65 = a5;
                *&v65[8] = 2053;
                *v66 = a6;
                *&v66[8] = 2050;
                *v67 = v31;
                _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "CLNMEAScreener,screen,%{public}.2lf,accessory location screening failed,input frequency too high,LL,%{sensitive}.7lf,%{sensitive}.7lf,time since last fix,%{public}.3lf", buf, 0x2Au);
              }

              result = sub_10000A100(121, 2);
              if (!result)
              {
                return result;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1025D45E0 != -1)
              {
                sub_10191ACA0();
              }

              v32 = vabdd_f64(a7, *(a1 + 480));
              v52 = 134349825;
              v53 = a7;
              v54 = 2053;
              *v55 = a5;
              *&v55[8] = 2053;
              *v56 = a6;
              *&v56[8] = 2050;
              *v57 = v32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLNMEAScreener,screen,%{public}.2lf,accessory location screening failed,input frequency too high,LL,%{sensitive}.7lf,%{sensitive}.7lf,time since last fix,%{public}.3lf", &v52, 42);
              v34 = v33;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNmeaScreener::screenData(CLNmeaSentenceType, double, double, CLClientLocationReferenceFrame, BOOL, double)", "%s\n", v33);
            }

            else
            {
              sub_1007124B8(a1 + 392, 1, v28);
              if (qword_1025D45E0 != -1)
              {
                sub_10191AC8C();
              }

              v35 = qword_1025D45E8;
              if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
              {
                v36 = *(a1 + 424);
                v37 = *(a1 + 428);
                *buf = 134350337;
                v63 = a7;
                v64 = 1026;
                *v65 = v36;
                *&v65[4] = 1026;
                *&v65[6] = v37;
                *v66 = 2053;
                *&v66[2] = a5;
                *v67 = 2053;
                *&v67[2] = a6;
                v68 = 1026;
                LODWORD(v69) = v28;
                _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "CLNMEAScreener,screen,%{public}.2lf,accessory location screening failed,continuousFailCount,%{public}d,continuousSuccessCount,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,locTypeUsedForScreening,%{public}d", buf, 0x32u);
              }

              result = sub_10000A100(121, 2);
              if (!result)
              {
                return result;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1025D45E0 != -1)
              {
                sub_10191ACA0();
              }

              v38 = *(a1 + 424);
              v39 = *(a1 + 428);
              v52 = 134350337;
              v53 = a7;
              v54 = 1026;
              *v55 = v38;
              *&v55[4] = 1026;
              *&v55[6] = v39;
              *v56 = 2053;
              *&v56[2] = a5;
              *v57 = 2053;
              *&v57[2] = a6;
              v58 = 1026;
              LODWORD(v59) = v28;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLNMEAScreener,screen,%{public}.2lf,accessory location screening failed,continuousFailCount,%{public}d,continuousSuccessCount,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,locTypeUsedForScreening,%{public}d", &v52, 50);
              v34 = v40;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNmeaScreener::screenData(CLNmeaSentenceType, double, double, CLClientLocationReferenceFrame, BOOL, double)", "%s\n", v40);
            }

            if (v34 != buf)
            {
              free(v34);
            }

            return 0;
          }
        }

        sub_1007124B8(a1 + 392, 0, 0);
      }
    }

    return 1;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v7 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLNMEAScreener,screen,external location update paused", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10191B218();
    return 0;
  }

  return result;
}

uint64_t sub_1007124B8(uint64_t a1, char a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

BOOL sub_100712514(uint64_t a1, int a2, int *a3, char *a4, double a5, double a6)
{
  *a3 = 0;
  if (*(a1 + 1) != 1)
  {
    return 1;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 472) = 50;
  if (*(a1 + 456) == 1 && vabdd_f64(sub_1000081AC(), *(a1 + 464)) < 20.0 && *(a1 + 457) == 1 && *(a1 + 160) < *(a1 + 184) && vabdd_f64(Current, *(a1 + 152)) < 3.0)
  {
    v13 = a1 + 136;
    v14 = 1;
    v15 = 1;
    goto LABEL_14;
  }

  if (vabdd_f64(Current, *(a1 + 88)) < 3.0)
  {
    v15 = 0;
    v13 = a1 + 72;
    v14 = 1;
    goto LABEL_14;
  }

  if (vabdd_f64(Current, *(a1 + 216)) < 1800.0)
  {
    v15 = 0;
    v13 = a1 + 200;
    v14 = 4;
    goto LABEL_14;
  }

  if (vabdd_f64(Current, *(a1 + 280)) >= 1800.0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v19 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v20 = *v20;
      }

      v21 = *(a1 + 88);
      v22 = *(a1 + 216);
      v23 = *(a1 + 280);
      v24 = *(a1 + 344);
      *buf = 136381699;
      *&buf[4] = v20;
      *&buf[12] = 2050;
      *&buf[14] = v21;
      *&buf[22] = 2050;
      *&buf[24] = v22;
      *v39 = 2048;
      *&v39[2] = v23;
      *&v39[10] = 2050;
      *&v39[12] = v24;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,%{private}s,external location unavailable,gps,%{public}.1lf,wifi,%{public}.1lf,cell{public},%.1lf,LAC,%{public}.1lf", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191B304(a1, v25, v26, v27, v28, v29, v30, v31);
    }

    return 1;
  }

  v15 = 0;
  v13 = a1 + 264;
  v14 = 6;
LABEL_14:
  *a3 = v14;
  *a4 = v15;
  if (*(a1 + 456))
  {
    v16 = 50.0;
  }

  else
  {
    v16 = 100.0;
  }

  v17 = *(v13 + 36);
  if (v17 != a2)
  {
    if (a2 == 2)
    {
      v32 = *v13;
      v36 = *(v13 + 8);
      v37 = v32;
      v35 = *(v13 + 24);
      if (sub_100D8D8D4((a1 + 448), v17, &v37, &v36, &v35, 5, v32, v36, v35) == 2)
      {
        v33 = *(v13 + 16);
        *buf = *v13;
        *&buf[16] = v33;
        v34 = *(v13 + 48);
        *v39 = *(v13 + 32);
        *&v39[16] = v34;
        *buf = v37;
        *&buf[8] = v36;
        *&buf[24] = v35;
        *&v39[4] = 2;
        return sub_100711508(buf, (a1 + 32), (a1 + 472), v16, a5, a6, Current);
      }
    }

    return 1;
  }

  return sub_100711508(v13, (a1 + 32), (a1 + 472), v16, a5, a6, Current);
}

uint64_t sub_100712870(uint64_t a1, int a2, int a3, int a4)
{
  if (!off_1025D53B8)
  {
    operator new();
  }

  if (*(off_1025D53B8 + 1))
  {
    v4 = *off_1025D53B8;
  }

  else
  {
    v4 = 0;
  }

  if ((a3 & 0xFFFFFFF7) == 1 && a4)
  {
    if (a2)
    {
      v5 = *(a1 + 4);
      *a1 = 0;
      *(a1 + 4) = v5 + 1;
      if ((*(a1 + 8) & 1) == 0 && v5 >= *(a1 + 16))
      {
        *(a1 + 8) = 1;
      }
    }

    else
    {
      v7 = (*a1)++;
      *(a1 + 4) = 0;
      if (v7 >= *(a1 + 12))
      {
        *(a1 + 8) = 0;
      }
    }

    if (v4)
    {
      v6 = 1;
      return v6 & 1;
    }

LABEL_18:
    v6 = *(a1 + 8);
    return v6 & 1;
  }

  if (!(v4 & 1 | ((a2 & 1) == 0)))
  {
    goto LABEL_18;
  }

  v6 = v4 & a2;
  return v6 & 1;
}

uint64_t sub_100712994(uint64_t result, int a2, double a3, double a4, double a5)
{
  if (a2)
  {
    *(result + 40) = a3;
  }

  *(result + 48) = a3;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 72) = 0xBFF0000000000000;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

void sub_1007129B4(uint64_t a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  if (!sub_100020608(a5, a6))
  {
    return;
  }

  v14 = *(a1 + 48);
  if (vabdd_f64(v14, a4) < 0.001)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v15 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v96 = a4;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLCourseScreener,%{public}.2lf,duplicate data ignored", buf, 0xCu);
    }

    v16 = sub_10000A100(121, 2);
    if (v16)
    {
      sub_10191B570(v16, v17, v18, v19, v20, v21, v22, v23, a4);
    }

    return;
  }

  v24 = *(a1 + 40);
  if (v24 < 0.0)
  {
    *(a1 + 40) = a4;
    v24 = a4;
  }

  if (a7 < 8.0 && !*(a1 + 92) && vabdd_f64(a4, v24) < 30.0)
  {
    *(a1 + 48) = a4;
    *(a1 + 56) = a5;
    *(a1 + 64) = a6;
    *(a1 + 72) = 0xBFF0000000000000;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    return;
  }

  v25 = vabdd_f64(a4, v14);
  if (v14 < 0.0 || v25 > 5.0)
  {
    *(a1 + 40) = a4;
    *(a1 + 48) = a4;
    *(a1 + 56) = a5;
    *(a1 + 64) = a6;
    *(a1 + 72) = 0xBFF0000000000000;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v27 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349825;
      v96 = a4;
      v97 = 2053;
      v98 = a5;
      v99 = 2053;
      v100 = a6;
      v101 = 2050;
      v102 = a7;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CLCourseScreener,%{public}.2lf,reset,unable to screen,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45E0 != -1)
      {
        sub_10191ACA0();
      }

      v61 = 134349825;
      v62 = a4;
      v63 = 2053;
      v64 = a5;
      v65 = 2053;
      v66 = a6;
      v67 = 2050;
      v68 = a7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLCourseScreener,%{public}.2lf,reset,unable to screen,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf", &v61, 42);
LABEL_76:
      v58 = v28;
      sub_100152C7C("Generic", 1, 0, 2, "void CLCourseScreener::screenAndCorrectCourse(const CFAbsoluteTime, const double, const double, const double, double &, double &)", "%s\n", v28);
      if (v58 != buf)
      {
        free(v58);
      }

      return;
    }

    return;
  }

  ++*(a1 + 88);
  *(a1 + 48) = a4;
  sub_100109D18(a1, *(a1 + 56), *(a1 + 64), a5, a6, 0.0);
  v30 = v29;
  if (v29 <= 5.0)
  {
    v33 = *(a1 + 72);
    goto LABEL_39;
  }

  v31 = sub_1002E9798(a1, *(a1 + 56), *(a1 + 64), a5, a6);
  if (v31 >= 0.0)
  {
    v33 = v31;
    *(a1 + 64) = a6;
    *(a1 + 72) = v31;
    *(a1 + 56) = a5;
LABEL_39:
    v34 = *(a1 + 92);
    HIDWORD(v35) = 1079574528;
    LODWORD(v35) = *(a1 + 88);
    v36 = *a2;
    v59 = v34 * 100.0 / v35;
    v60 = *a3;
    v37 = -1.0;
    if (v33 >= 0.0)
    {
      v47 = fmod(v36 - v33, 360.0);
      if (v47 < 0.0)
      {
        v47 = v47 + 360.0;
      }

      if (v47 > 180.0)
      {
        v47 = v47 + -360.0;
      }

      v37 = fabs(v47);
      if (v36 < 0.0 || v37 > 45.0)
      {
        if (a7 > 5.0 || v36 < 0.0 || *(a1 + 84) >= 4u && v59 > 25.0)
        {
          if (a7 > 5.0)
          {
            ++*(a1 + 80);
          }

          if (v36 >= 0.0)
          {
            if (a7 > 20.0 || *(a1 + 80) >= 6u)
            {
              *(a1 + 92) = v34 + 1;
              *a2 = v33;
              v49 = *(a1 + 84);
              if (a7 > 5.0)
              {
                ++v49;
              }

              *(a1 + 84) = v49;
            }
          }

          else
          {
            *(a1 + 92) = v34 + 1;
            ++*(a1 + 100);
            *a2 = v33;
          }
        }
      }

      else if (*(a1 + 80) > 4u)
      {
        if (v37 > 22.5 && v60 < v37)
        {
          ++*(a1 + 96);
          *a3 = v37;
        }
      }

      else
      {
        *(a1 + 80) = 0;
      }
    }

    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v38 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      v39 = *a2;
      v40 = *a3;
      v41 = *(a1 + 88);
      v42 = *(a1 + 92);
      v43 = *(a1 + 96);
      v44 = *(a1 + 100);
      v46 = *(a1 + 80);
      v45 = *(a1 + 84);
      *buf = 134353153;
      v96 = a4;
      v97 = 2050;
      v98 = v36;
      v99 = 2050;
      v100 = v39;
      v101 = 2050;
      v102 = v37;
      v103 = 2050;
      v104 = v60;
      v105 = 2050;
      v106 = v40;
      v107 = 2053;
      v108 = a5;
      v109 = 2053;
      v110 = a6;
      v111 = 2050;
      v112 = a7;
      v113 = 2050;
      v114 = v30;
      v115 = 1026;
      v116 = v41;
      v117 = 1026;
      v118 = v42;
      v119 = 1026;
      v120 = v43;
      v121 = 1026;
      v122 = v45;
      v123 = 2050;
      v124 = v59;
      v125 = 1026;
      v126 = v44;
      v127 = 1026;
      v128 = v46;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "CLCourseScreener,%{public}.2lf,prevCourse,%{public}.2lf,newCourse,%{public}.2lf,diff,%{public}.2lf,prevCourseUnc,%{public}.2lf,newCourseUnc,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf,distance,%{public}.2lf,screenedCount,%{public}d,changedCount,%{public}d,uncChangedCount,%{public}d,highSpeedChangedCount,%{public}d,courseChangedPercentage,%{public}.2lf,invalidCourseCorrected,%{public}d,contCourseChangeRequired,%{public}d", buf, 0x94u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45E0 != -1)
      {
        sub_10191ACA0();
      }

      v50 = *a2;
      v51 = *a3;
      v52 = *(a1 + 88);
      v53 = *(a1 + 92);
      v54 = *(a1 + 96);
      v55 = *(a1 + 100);
      v57 = *(a1 + 80);
      v56 = *(a1 + 84);
      v61 = 134353153;
      v62 = a4;
      v63 = 2050;
      v64 = v36;
      v65 = 2050;
      v66 = v50;
      v67 = 2050;
      v68 = v37;
      v69 = 2050;
      v70 = v60;
      v71 = 2050;
      v72 = v51;
      v73 = 2053;
      v74 = a5;
      v75 = 2053;
      v76 = a6;
      v77 = 2050;
      v78 = a7;
      v79 = 2050;
      v80 = v30;
      v81 = 1026;
      v82 = v52;
      v83 = 1026;
      v84 = v53;
      v85 = 1026;
      v86 = v54;
      v87 = 1026;
      v88 = v56;
      v89 = 2050;
      v90 = v59;
      v91 = 1026;
      v92 = v55;
      v93 = 1026;
      v94 = v57;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLCourseScreener,%{public}.2lf,prevCourse,%{public}.2lf,newCourse,%{public}.2lf,diff,%{public}.2lf,prevCourseUnc,%{public}.2lf,newCourseUnc,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf,distance,%{public}.2lf,screenedCount,%{public}d,changedCount,%{public}d,uncChangedCount,%{public}d,highSpeedChangedCount,%{public}d,courseChangedPercentage,%{public}.2lf,invalidCourseCorrected,%{public}d,contCourseChangeRequired,%{public}d", &v61, 148);
      goto LABEL_76;
    }

    return;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  *(a1 + 72) = 0xBFF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v32 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134350081;
    v96 = a4;
    v97 = 2053;
    v98 = a5;
    v99 = 2053;
    v100 = a6;
    v101 = 2050;
    v102 = a7;
    v103 = 2050;
    v104 = v30;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "CLCourseScreener,%{public}.2lf,reset,unable to compute course,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf,distance,%{public}.2lf", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_10191ACA0();
    }

    v61 = 134350081;
    v62 = a4;
    v63 = 2053;
    v64 = a5;
    v65 = 2053;
    v66 = a6;
    v67 = 2050;
    v68 = a7;
    v69 = 2050;
    v70 = v30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLCourseScreener,%{public}.2lf,reset,unable to compute course,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf,distance,%{public}.2lf", &v61, 52);
    goto LABEL_76;
  }
}

uint64_t sub_10071323C(uint64_t a1, uint64_t a2)
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

double sub_1007132D4()
{
  result = sub_100322A38() + -259200.0;
  dword_1026590D8 = result;
  return result;
}

void *sub_100713304(uint64_t a1, uint64_t a2)
{
  v3 = 10;
  result = sub_100ED8FC0(a1, &v3, qword_1026590E0, a2);
  *result = off_10246CD48;
  result[38] = 0;
  result[39] = 0;
  result[37] = 0;
  return result;
}

uint64_t sub_100713360(uint64_t a1)
{
  *a1 = off_10246CD48;
  v3 = (a1 + 296);
  sub_1001D22FC(&v3);
  return sub_100ED90F4(a1);
}

void sub_1007133BC(uint64_t a1)
{
  *a1 = off_10246CD48;
  v2 = (a1 + 296);
  sub_1001D22FC(&v2);
  sub_100ED90F4(a1);
  operator delete();
}

uint64_t sub_100713434(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 304);
  if (v2 != v3)
  {
    v5 = a2[1];
    do
    {
      if (v5 >= a2[2])
      {
        v5 = sub_100714994(a2, v2);
      }

      else
      {
        sub_10071492C(a2, v2);
        v5 += 56;
      }

      a2[1] = v5;
      v2 += 56;
    }

    while (v2 != v3);
  }

  return 1;
}

uint64_t sub_1007134A8(uint64_t a1, FILE *a2)
{
  v83 = a1;
  if (!a2)
  {
    sub_10191B7EC(qword_1025D48A0 == -1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10191B678();
  }

  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Traversing preload manifest file", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191B68C();
  }

  memset(&v91, 0, sizeof(v91));
  do
  {
    v4 = fread(__ptr, 1uLL, 0x400uLL, a2);
    std::string::append(&v91, __ptr, v4);
  }

  while (v4 && !feof(a2) && !ferror(a2));
  if (ferror(a2))
  {
    v5 = 0;
    goto LABEL_69;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10191B780();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v91.__r_.__value_.__l.__size_;
    }

    *buf = 134217984;
    *&buf[4] = size;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Preload manifest tile size = %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191B7A8(buf);
    v65 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v65 = v91.__r_.__value_.__l.__size_;
    }

    *v105 = 134217984;
    *&v105[4] = v65;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Preload manifest tile size = %lu", v105);
    v67 = v66;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v66);
    if (v67 != buf)
    {
      free(v67);
    }
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v91;
  }

  else
  {
    v8 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v91.__r_.__value_.__l.__size_;
  }

  v10 = [NSData dataWithBytes:v8 length:v9];
  context = objc_autoreleasePoolPush();
  v11 = [[PBDataReader alloc] initWithData:v10];
  v12 = [TRANSITPbRegionPreloadManifest alloc];
  v13 = [(TRANSITPbRegionPreloadManifest *)v12 readFrom:v11];
  if (!v12)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10191B780();
    }

    v17 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "failed to allocate transit tile", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_67;
    }

    sub_10191B7A8(buf);
    *v105 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "failed to allocate transit tile", v105, 2);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v18);
LABEL_142:
    if (v19 == buf)
    {
      goto LABEL_67;
    }

LABEL_143:
    free(v19);
    goto LABEL_67;
  }

  if ((v13 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10191B780();
    }

    v20 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v21 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
      v22 = v91.__r_.__value_.__l.__size_;
      (*(*v83 + 16))(buf);
      v23 = (v21 & 0x80u) == 0 ? v21 : v22;
      v24 = v113[1] >= 0 ? buf : *buf;
      *v105 = 134349314;
      *&v105[4] = v23;
      *&v105[12] = 2082;
      v106 = v24;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "failed to decode transit tile protobuf, encrypted=%{public}lu tile=%{public}s", v105, 0x16u);
      if ((v113[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_67;
    }

    sub_10191B7A8(buf);
    v25 = qword_1025D48A8;
    v26 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
    v27 = v91.__r_.__value_.__l.__size_;
    (*(*v83 + 16))(v105);
    if ((v26 & 0x80u) == 0)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    if ((SBYTE1(v107) & 0x80u) == 0)
    {
      v29 = v105;
    }

    else
    {
      v29 = *v105;
    }

    v96 = 134349314;
    v97 = v28;
    v98 = 2082;
    v99 = v29;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 17, "failed to decode transit tile protobuf, encrypted=%{public}lu tile=%{public}s", &v96, 22);
    v19 = v30;
    if (SBYTE1(v107) < 0)
    {
      operator delete(*v105);
    }

    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v19);
    if (v19 == buf)
    {
      goto LABEL_67;
    }

    goto LABEL_143;
  }

  if ([(TRANSITPbRegionPreloadManifest *)v12 hasVersion]&& [(TRANSITPbRegionPreloadManifest *)v12 hasGenerationTimeSecs]&& [(TRANSITPbRegionPreloadManifest *)v12 marketsCount])
  {
    [(TRANSITPbRegionPreloadManifest *)v12 generationTimeSecs];
    v15 = v14;
    if ([(TRANSITPbRegionPreloadManifest *)v12 hasExpirationAgeSecs])
    {
      v16 = [(TRANSITPbRegionPreloadManifest *)v12 expirationAgeSecs];
    }

    else
    {
      v16 = 15292800;
    }

    v33 = v15 - kCFAbsoluteTimeIntervalSince1970;
    *(v83 + 184) = [(TRANSITPbRegionPreloadManifest *)v12 version];
    *(v83 + 52) = 3865470568200000;
    *(v83 + 64) = -1;
    *(v83 + 176) = v33;
    *(v83 + 200) = v16;
    if (qword_1025D48A0 != -1)
    {
      sub_10191B780();
    }

    v34 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v35 = [(TRANSITPbRegionPreloadManifest *)v12 version];
      Current = CFAbsoluteTimeGetCurrent();
      *buf = 67110400;
      *&buf[4] = v35;
      *&buf[8] = 1024;
      *&buf[10] = 1800000;
      v112 = 0x800000DBBA00400;
      *v113 = v33;
      *&v113[8] = 2048;
      *v114 = Current - v33;
      *&v114[8] = 1024;
      v115 = v16;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "ver,%d,x,%d,y,%d,generated,%.01lf,age,%.01f,ageThresh,%d", buf, 0x2Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191B7A8(buf);
      v69 = qword_1025D48A8;
      v70 = [(TRANSITPbRegionPreloadManifest *)v12 version];
      v71 = CFAbsoluteTimeGetCurrent();
      *v105 = 67110400;
      *&v105[4] = v70;
      *&v105[8] = 1024;
      *&v105[10] = 1800000;
      v106 = 0x800000DBBA00400;
      v107 = v33;
      v108 = 2048;
      *&v109 = v71 - v33;
      LOWORD(v110) = 1024;
      *(&v110 + 2) = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v69, 2, "ver,%d,x,%d,y,%d,generated,%.01lf,age,%.01f,ageThresh,%d", v105, 46, v80, v81, *&context, v83);
      v73 = v72;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v72);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    sub_1001D22AC((v83 + 296));
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v37 = [(TRANSITPbRegionPreloadManifest *)v12 markets];
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37);
    if (v38)
    {
      v84 = *v88;
      do
      {
        v39 = 0;
        do
        {
          if (*v88 != v84)
          {
            objc_enumerationMutation(v37);
          }

          v40 = *(*(&v87 + 1) + 8 * v39);
          if ([v40 hasNorthWestLatitude] && objc_msgSend(v40, "hasNorthWestLongitude") && objc_msgSend(v40, "hasSouthEastLatitude") && objc_msgSend(v40, "hasSouthEastLongitude"))
          {
            v86 = 0uLL;
            [v40 northWestLatitude];
            *&v86 = v41;
            [v40 northWestLongitude];
            *(&v86 + 1) = v42;
            v85 = 0uLL;
            [v40 southEastLatitude];
            v85.n128_u64[0] = v43;
            [v40 southEastLongitude];
            v85.n128_u64[1] = v44;
            sub_100E93080(v105, &v86, &v85);
            if (qword_1025D48A0 != -1)
            {
              sub_10191B780();
            }

            v45 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134546433;
              *&buf[4] = v86;
              *&buf[12] = 2053;
              v112 = *(&v86 + 1);
              *v113 = 2053;
              *&v113[2] = v85.n128_u64[0];
              *v114 = 2053;
              *&v114[2] = v85.n128_u64[1];
              _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "Reading new market, {%{sensitive}.06lf,%{sensitive}.06lf}, {%{sensitive}.06lf,%{sensitive}.06lf}", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191B7A8(buf);
              v96 = 134546433;
              v97 = v86;
              v98 = 2053;
              v99 = *(&v86 + 1);
              v100 = 2053;
              __p = v85.n128_u64[0];
              v102 = 2053;
              v103 = v85.n128_u64[1];
              LODWORD(v79) = 42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Reading new market, {%{sensitive}.06lf,%{sensitive}.06lf}, {%{sensitive}.06lf,%{sensitive}.06lf}", &v96, v79);
              v60 = v59;
              sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v59);
              if (v60 != buf)
              {
                free(v60);
              }
            }

            v46 = [v40 tiles];
            v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46);
            if (v47)
            {
              v48 = 0;
              v49 = MEMORY[0];
              do
              {
                v50 = 0;
                do
                {
                  if (MEMORY[0] != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v51 = *(8 * v50);
                  if ([v51 hasTileType] && !objc_msgSend(v51, "tileType") && objc_msgSend(v51, "hasTileX") && objc_msgSend(v51, "hasTileY"))
                  {
                    *buf = 0;
                    sub_1000850D0(&v96, buf);
                    LODWORD(v97) = [v51 tileX];
                    HIDWORD(v97) = [v51 tileY];
                    v52 = sub_100085338(&v96);
                    v53 = sub_100085314(&v96);
                    if ([v51 hasIsAllowOverCellular])
                    {
                      v54 = [v51 isAllowOverCellular];
                    }

                    else
                    {
                      v54 = 0;
                    }

                    if (qword_1025D48A0 != -1)
                    {
                      sub_10191B780();
                    }

                    v55 = qword_1025D48A8;
                    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134545921;
                      *&buf[4] = v52;
                      *&buf[12] = 2053;
                      v112 = *&v53;
                      _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "Adding new tile to market, [%{sensitive}.06lf,%{sensitive}.06lf]", buf, 0x16u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_10191B7A8(buf);
                      v92 = 134545921;
                      v93 = v52;
                      v94 = 2053;
                      v95 = v53;
                      LODWORD(v79) = 22;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Adding new tile to market, [%{sensitive}.06lf,%{sensitive}.06lf]", &v92, v79);
                      v57 = v56;
                      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v56);
                      if (v57 != buf)
                      {
                        free(v57);
                      }
                    }

                    sub_100E9306C(buf, v54, v52, v53);
                    sub_100E9309C(v105, buf);
                    if (v104 < 0)
                    {
                      operator delete(__p);
                    }

                    v48 = 1;
                  }

                  v50 = v50 + 1;
                }

                while (v47 != v50);
                v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46);
                v47 = v58;
              }

              while (v58);
              if (v48)
              {
                sub_100714654((v83 + 296), v105);
              }
            }

            if (*&v109 != 0.0)
            {
              v110 = v109;
              operator delete(v109);
            }
          }

          v39 = v39 + 1;
        }

        while (v39 != v38);
        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37);
        v38 = v61;
      }

      while (v61);
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10191B780();
    }

    v62 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      (*(*v83 + 16))(buf, v83);
      v63 = v113[1] >= 0 ? buf : *buf;
      v64 = 0x6DB6DB6DB6DB6DB7 * ((*(v83 + 304) - *(v83 + 296)) >> 3);
      *v105 = 136315394;
      *&v105[4] = v63;
      *&v105[12] = 2048;
      v106 = v64;
      _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "loaded transit tile %s with %lu regions", v105, 0x16u);
      if ((v113[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191B7A8(buf);
      v74 = qword_1025D48A8;
      (*(*v83 + 16))(v105);
      if ((SBYTE1(v107) & 0x80u) == 0)
      {
        v75 = v105;
      }

      else
      {
        v75 = *v105;
      }

      v76 = 0x6DB6DB6DB6DB6DB7 * ((*(v83 + 304) - *(v83 + 296)) >> 3);
      v96 = 136315394;
      v97 = v75;
      v98 = 2048;
      v99 = v76;
      LODWORD(v79) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v74, 2, "loaded transit tile %s with %lu regions", &v96, v79);
      v78 = v77;
      if (SBYTE1(v107) < 0)
      {
        operator delete(*v105);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v78);
      if (v78 != buf)
      {
        free(v78);
      }
    }

    v5 = 1;
    goto LABEL_68;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10191B780();
  }

  v31 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "failed to get fields in manifest", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10191B7A8(buf);
    *v105 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "failed to get fields in manifest", v105, 2);
    v19 = v68;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v68);
    goto LABEL_142;
  }

LABEL_67:
  v5 = 0;
LABEL_68:
  objc_autoreleasePoolPop(context);
LABEL_69:
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_100714570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100714654(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_100714994(a1, a2);
  }

  else
  {
    sub_10071492C(a1, a2);
    v4 = v3 + 56;
  }

  a1[1] = v4;
  return v4 - 56;
}

uint64_t sub_100714698@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10003848C(v14);
  v4 = sub_100038730(&v15, "CLRegionPreloadManifestTile(", 28);
  v5 = sub_100038730(v4, "super=", 6);
  sub_1005EF450(a1, __p);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_100038730(v5, v6, v7);
  sub_100038730(v8, ", numMarkets=", 13);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, ")", 1);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100073518(v14, a2);
  v15 = v10;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1007148C8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_10071492C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  result = sub_100714B00((v3 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 8) = v3 + 56;
  return result;
}

uint64_t sub_100714994(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_10028C64C();
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

  v18 = a1;
  if (v6)
  {
    sub_100714B7C(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  v17 = (56 * v2);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  sub_100714B00((56 * v2 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_100714BD8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100714D1C(&v15);
  return v14;
}

void sub_100714AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100714D1C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100714B00(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100485E1C(result, a4);
  }

  return result;
}

void sub_100714B60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100714B7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100714BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 32);
      if (v8)
      {
        *(v5 + 40) = v8;
        operator delete(v8);
      }

      v5 += 56;
    }
  }

  return sub_100714C9C(v10);
}

uint64_t sub_100714C9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100714CD4(a1);
  }

  return a1;
}

void sub_100714CD4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t sub_100714D1C(uint64_t a1)
{
  sub_100714D54(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100714D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

BOOL sub_100714E94()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

BOOL sub_100714F08()
{
  v0 = MGCopyAnswer();
  Value = CFBooleanGetValue(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return Value != 0;
}

uint64_t sub_100714F54()
{
  if (MGIsDeviceOfType())
  {
    return 2;
  }

  v6 = 1244490093;
  *buf = xmmword_101C8A4E0;
  if (MGIsDeviceOfType())
  {
    return 5;
  }

  v9 = 1377801277;
  *v8 = xmmword_101C8A4F4;
  if (MGIsDeviceOfType())
  {
    return 5;
  }

  if (MGIsDeviceOfType())
  {
    return 19;
  }

  if (MGIsDeviceOfType())
  {
    return 20;
  }

  v6 = 1839812531;
  *buf = xmmword_101C8A508;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 20;
  }

  if (MGIsDeviceOfType())
  {
    return 52;
  }

  v6 = -435113336;
  *buf = xmmword_101C8A51C;
  if (MGIsDeviceOfType())
  {
    return 53;
  }

  v6 = -1997581659;
  *buf = xmmword_101C8A530;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 158;
  }

  v6 = -1441055153;
  *buf = xmmword_101C8A544;
  if (MGIsDeviceOfType())
  {
    return 159;
  }

  if (MGIsDeviceOfType())
  {
    return 160;
  }

  if (MGIsDeviceOfType())
  {
    return 3;
  }

  if (MGIsDeviceOfType())
  {
    return 6;
  }

  v6 = 1602014129;
  *buf = xmmword_101C8A558;
  if (MGIsDeviceOfType())
  {
    return 7;
  }

  v6 = -810116762;
  *buf = xmmword_101C8A56C;
  if (MGIsDeviceOfType())
  {
    return 8;
  }

  v6 = -1195351767;
  *buf = xmmword_101C8A580;
  if (MGIsDeviceOfType())
  {
    return 9;
  }

  if (MGIsDeviceOfType())
  {
    return 10;
  }

  if (MGIsDeviceOfType())
  {
    return 11;
  }

  v6 = 1789837692;
  *buf = xmmword_101C8A594;
  if (MGIsDeviceOfType())
  {
    return 13;
  }

  v6 = 48355600;
  *buf = xmmword_101C8A5A8;
  if (MGIsDeviceOfType())
  {
    return 14;
  }

  v6 = -1239654590;
  *buf = xmmword_101C8A5BC;
  if (MGIsDeviceOfType())
  {
    return 15;
  }

  v6 = -679691073;
  *buf = xmmword_101C8A5D0;
  if (MGIsDeviceOfType())
  {
    return 16;
  }

  v6 = -1579092758;
  *buf = xmmword_101C8A5E4;
  if (MGIsDeviceOfType())
  {
    return 17;
  }

  v6 = 1430379884;
  *buf = xmmword_101C8A5F8;
  if (MGIsDeviceOfType())
  {
    return 18;
  }

  if (MGIsDeviceOfType())
  {
    return 21;
  }

  v6 = -798153473;
  *buf = xmmword_101C8A60C;
  if (MGIsDeviceOfType())
  {
    return 22;
  }

  v6 = -776721724;
  *buf = xmmword_101C8A620;
  if (MGIsDeviceOfType())
  {
    return 23;
  }

  v6 = -1403227947;
  *buf = xmmword_101C8A634;
  if (MGIsDeviceOfType())
  {
    return 24;
  }

  v6 = 729118884;
  *buf = xmmword_101C8A648;
  if (MGIsDeviceOfType())
  {
    return 25;
  }

  v6 = 1046806126;
  *buf = xmmword_101C8A65C;
  if (MGIsDeviceOfType())
  {
    return 26;
  }

  v9 = -188760945;
  *v8 = xmmword_101C8A670;
  if (MGIsDeviceOfType())
  {
    return 26;
  }

  v6 = -489993439;
  *buf = xmmword_101C8A684;
  if (MGIsDeviceOfType())
  {
    return 27;
  }

  v6 = 886875686;
  *buf = xmmword_101C8A698;
  if (MGIsDeviceOfType())
  {
    return 28;
  }

  v6 = -1639077591;
  *buf = xmmword_101C8A6AC;
  if (MGIsDeviceOfType())
  {
    return 29;
  }

  v6 = 338555555;
  *buf = xmmword_101C8A6C0;
  if (MGIsDeviceOneOfType())
  {
    return 30;
  }

  v6 = 1032708406;
  *buf = xmmword_101C8A6D4;
  if (MGIsDeviceOfType())
  {
    return 31;
  }

  v6 = 729903963;
  *buf = xmmword_101C8A6E8;
  if (MGIsDeviceOfType())
  {
    return 32;
  }

  v6 = 1278131292;
  *buf = xmmword_101C8A6FC;
  if (MGIsDeviceOfType())
  {
    return 33;
  }

  v6 = -1841712216;
  *buf = xmmword_101C8A710;
  if (MGIsDeviceOfType())
  {
    return 34;
  }

  v6 = 1275676051;
  *buf = xmmword_101C8A724;
  if (MGIsDeviceOfType())
  {
    return 35;
  }

  v6 = 1908474541;
  *buf = xmmword_101C8A738;
  if (MGIsDeviceOfType())
  {
    return 36;
  }

  v6 = -1022451852;
  *buf = xmmword_101C8A74C;
  if (MGIsDeviceOfType())
  {
    return 62;
  }

  v6 = 1729782187;
  *buf = xmmword_101C8A760;
  if (MGIsDeviceOfType())
  {
    return 63;
  }

  if (MGIsDeviceOfType())
  {
    return 37;
  }

  v6 = 368885834;
  *buf = xmmword_101C8A774;
  if (MGIsDeviceOfType())
  {
    return 38;
  }

  v6 = -414334491;
  *buf = xmmword_101C8A788;
  if (MGIsDeviceOfType())
  {
    return 39;
  }

  if (MGIsDeviceOfType())
  {
    return 40;
  }

  v6 = -526227167;
  *buf = xmmword_101C8A79C;
  if (MGIsDeviceOfType())
  {
    return 41;
  }

  v6 = -1509831889;
  *buf = xmmword_101C8A7B0;
  if (MGIsDeviceOfType())
  {
    return 42;
  }

  v6 = 1960366092;
  *buf = xmmword_101C8A7C4;
  if (MGIsDeviceOfType())
  {
    return 43;
  }

  v6 = -2114570942;
  *buf = xmmword_101C8A7D8;
  if (MGIsDeviceOfType())
  {
    return 148;
  }

  v6 = -1527788847;
  *buf = xmmword_101C8A7EC;
  if (MGIsDeviceOfType())
  {
    return 44;
  }

  v6 = 1532898719;
  *buf = xmmword_101C8A800;
  if (MGIsDeviceOfType())
  {
    return 45;
  }

  v6 = 996646949;
  *buf = xmmword_101C8A814;
  if (MGIsDeviceOfType())
  {
    return 46;
  }

  v6 = -563086000;
  *buf = xmmword_101C8A828;
  if (MGIsDeviceOfType())
  {
    return 47;
  }

  v6 = 659506830;
  *buf = xmmword_101C8A83C;
  if (MGIsDeviceOfType())
  {
    return 48;
  }

  v6 = 213746202;
  *buf = xmmword_101C8A850;
  if (MGIsDeviceOfType())
  {
    return 49;
  }

  v6 = 289690957;
  *buf = xmmword_101C8A864;
  if (MGIsDeviceOfType())
  {
    return 50;
  }

  v6 = 586720268;
  *buf = xmmword_101C8A878;
  if (MGIsDeviceOfType())
  {
    return 51;
  }

  v6 = -350584140;
  *buf = xmmword_101C8A88C;
  if (MGIsDeviceOfType())
  {
    return 54;
  }

  v6 = 368778837;
  *buf = xmmword_101C8A8A0;
  if (MGIsDeviceOfType())
  {
    return 55;
  }

  if (MGIsDeviceOfType())
  {
    return 56;
  }

  v6 = -1418383976;
  *buf = xmmword_101C8A8B4;
  if (MGIsDeviceOfType())
  {
    return 57;
  }

  v6 = -1213485500;
  *buf = xmmword_101C8A8C8;
  if (MGIsDeviceOfType())
  {
    return 58;
  }

  if (MGIsDeviceOfType())
  {
    return 59;
  }

  v6 = 1425254930;
  *buf = xmmword_101C8A8DC;
  if (MGIsDeviceOfType())
  {
    return 60;
  }

  v6 = 1899561076;
  *buf = xmmword_101C8A8F0;
  if (MGIsDeviceOfType())
  {
    return 61;
  }

  v6 = -199226823;
  *buf = xmmword_101C8A904;
  if (MGIsDeviceOfType())
  {
    return 64;
  }

  v9 = 1412427398;
  *v8 = xmmword_101C8A918;
  if (MGIsDeviceOfType())
  {
    return 64;
  }

  v6 = -1283070668;
  *buf = xmmword_101C8A92C;
  if (MGIsDeviceOfType())
  {
    return 65;
  }

  v9 = 160260070;
  *v8 = xmmword_101C8A940;
  if (MGIsDeviceOfType())
  {
    return 65;
  }

  v6 = 1711910369;
  *buf = xmmword_101C8A954;
  if (MGIsDeviceOfType())
  {
    return 66;
  }

  v6 = -1282800328;
  *buf = xmmword_101C8A968;
  if (MGIsDeviceOfType())
  {
    return 67;
  }

  v6 = 897736383;
  *buf = xmmword_101C8A97C;
  if (MGIsDeviceOfType())
  {
    return 68;
  }

  v6 = -453987047;
  *buf = xmmword_101C8A990;
  if (MGIsDeviceOfType())
  {
    return 69;
  }

  v6 = 450980336;
  *buf = xmmword_101C8A9A4;
  if (MGIsDeviceOfType())
  {
    return 70;
  }

  v6 = 414393924;
  *buf = xmmword_101C8A9B8;
  if (MGIsDeviceOfType())
  {
    return 71;
  }

  v6 = -996295886;
  *buf = xmmword_101C8A9CC;
  if (MGIsDeviceOfType())
  {
    return 72;
  }

  v6 = -337121064;
  *buf = xmmword_101C8A9E0;
  if (MGIsDeviceOfType())
  {
    return 73;
  }

  v6 = -2092955395;
  *buf = xmmword_101C8A9F4;
  if (MGIsDeviceOfType())
  {
    return 74;
  }

  v6 = 674998600;
  *buf = xmmword_101C8AA08;
  if (MGIsDeviceOfType())
  {
    return 75;
  }

  v6 = 317289457;
  *buf = xmmword_101C8AA1C;
  if (MGIsDeviceOfType())
  {
    return 76;
  }

  v6 = 401945557;
  *buf = xmmword_101C8AA30;
  if (MGIsDeviceOfType())
  {
    return 77;
  }

  v6 = -232427879;
  *buf = xmmword_101C8AA44;
  if (MGIsDeviceOfType())
  {
    return 78;
  }

  v6 = -427474227;
  *buf = xmmword_101C8AA58;
  if (MGIsDeviceOfType())
  {
    return 79;
  }

  v9 = 1477534141;
  *v8 = xmmword_101C8AA6C;
  if (MGIsDeviceOfType())
  {
    return 79;
  }

  v6 = -1843102369;
  *buf = xmmword_101C8AA80;
  if (MGIsDeviceOfType())
  {
    return 80;
  }

  if (MGIsDeviceOfType())
  {
    return 81;
  }

  v6 = 470738981;
  *buf = xmmword_101C8AA94;
  if (MGIsDeviceOfType())
  {
    return 82;
  }

  if (MGIsDeviceOfType())
  {
    return 83;
  }

  v6 = 710807826;
  *buf = xmmword_101C8AAA8;
  if (MGIsDeviceOfType())
  {
    return 84;
  }

  if (MGIsDeviceOfType())
  {
    return 85;
  }

  v6 = 1860682089;
  *buf = xmmword_101C8AABC;
  if (MGIsDeviceOfType())
  {
    return 86;
  }

  if (MGIsDeviceOfType())
  {
    return 87;
  }

  v6 = -2085056298;
  *buf = xmmword_101C8AAD0;
  if (MGIsDeviceOfType())
  {
    return 88;
  }

  v6 = 2146530832;
  *buf = xmmword_101C8AAE4;
  if (MGIsDeviceOfType())
  {
    return 89;
  }

  v6 = -1742178852;
  *buf = xmmword_101C8AAF8;
  if (MGIsDeviceOfType())
  {
    return 90;
  }

  v6 = 617174804;
  *buf = xmmword_101C8AB0C;
  if (MGIsDeviceOfType())
  {
    return 91;
  }

  v6 = 1330813729;
  *buf = xmmword_101C8AB20;
  if (MGIsDeviceOfType())
  {
    return 92;
  }

  if (MGIsDeviceOfType())
  {
    return 93;
  }

  if (MGIsDeviceOfType())
  {
    return 94;
  }

  v6 = 152704997;
  *buf = xmmword_101C8AB34;
  if (MGIsDeviceOfType())
  {
    return 95;
  }

  v6 = -338255497;
  *buf = xmmword_101C8AB48;
  if (MGIsDeviceOfType())
  {
    return 96;
  }

  v6 = -1040127899;
  *buf = xmmword_101C8AB5C;
  if (MGIsDeviceOfType())
  {
    return 97;
  }

  v6 = 283967174;
  *buf = xmmword_101C8AB70;
  if (MGIsDeviceOfType())
  {
    return 98;
  }

  v6 = 1530707451;
  *buf = xmmword_101C8AB84;
  if (MGIsDeviceOfType())
  {
    return 99;
  }

  v6 = -871113647;
  *buf = xmmword_101C8AB98;
  if (MGIsDeviceOfType())
  {
    return 100;
  }

  v6 = 483476120;
  *buf = xmmword_101C8ABAC;
  if (MGIsDeviceOfType())
  {
    return 101;
  }

  v6 = 1472775220;
  *buf = xmmword_101C8ABC0;
  if (MGIsDeviceOfType())
  {
    return 102;
  }

  v6 = 56502976;
  *buf = xmmword_101C8ABD4;
  if (MGIsDeviceOfType())
  {
    return 103;
  }

  v6 = 282158961;
  *buf = xmmword_101C8ABE8;
  if (MGIsDeviceOfType())
  {
    return 104;
  }

  v6 = 1282132887;
  *buf = xmmword_101C8ABFC;
  if (MGIsDeviceOfType())
  {
    return 105;
  }

  v6 = -961843768;
  *buf = xmmword_101C8AC10;
  if (MGIsDeviceOfType())
  {
    return 106;
  }

  v6 = 1326690998;
  *buf = xmmword_101C8AC24;
  if (MGIsDeviceOfType())
  {
    return 107;
  }

  v6 = -441172408;
  *buf = xmmword_101C8AC38;
  if (MGIsDeviceOfType())
  {
    return 108;
  }

  v6 = -126099363;
  *buf = xmmword_101C8AC4C;
  if (MGIsDeviceOfType())
  {
    return 109;
  }

  v6 = 1756484512;
  *buf = xmmword_101C8AC60;
  if (MGIsDeviceOfType())
  {
    return 110;
  }

  v6 = 763775061;
  *buf = xmmword_101C8AC74;
  if (MGIsDeviceOfType())
  {
    return 111;
  }

  v6 = -1092155788;
  *buf = xmmword_101C8AC88;
  if (MGIsDeviceOfType())
  {
    return 112;
  }

  v6 = -557458837;
  *buf = xmmword_101C8AC9C;
  if (MGIsDeviceOfType())
  {
    return 113;
  }

  v6 = -63049871;
  *buf = xmmword_101C8ACB0;
  if (MGIsDeviceOfType())
  {
    return 114;
  }

  v6 = 1730000236;
  *buf = xmmword_101C8ACC4;
  if (MGIsDeviceOfType())
  {
    return 115;
  }

  v6 = 406601745;
  *buf = xmmword_101C8ACD8;
  if (MGIsDeviceOfType())
  {
    return 116;
  }

  v6 = 1530338216;
  *buf = xmmword_101C8ACEC;
  if (MGIsDeviceOfType())
  {
    return 117;
  }

  v6 = -1930811061;
  *buf = xmmword_101C8AD00;
  if (MGIsDeviceOfType())
  {
    return 118;
  }

  v6 = 1654218604;
  *buf = xmmword_101C8AD14;
  if (MGIsDeviceOfType())
  {
    return 119;
  }

  v6 = -182498503;
  *buf = xmmword_101C8AD28;
  if (MGIsDeviceOfType())
  {
    return 124;
  }

  v6 = -2030489149;
  *buf = xmmword_101C8AD3C;
  if (MGIsDeviceOfType())
  {
    return 120;
  }

  v6 = 841005628;
  *buf = xmmword_101C8AD50;
  if (MGIsDeviceOfType())
  {
    return 121;
  }

  v6 = 223445260;
  *buf = xmmword_101C8AD64;
  if (MGIsDeviceOfType())
  {
    return 122;
  }

  v6 = 1219348060;
  *buf = xmmword_101C8AD78;
  if (MGIsDeviceOfType())
  {
    return 123;
  }

  v6 = -1384522500;
  *buf = xmmword_101C8AD8C;
  if (MGIsDeviceOfType())
  {
    return 125;
  }

  v6 = -782763850;
  *buf = xmmword_101C8ADA0;
  if (MGIsDeviceOfType())
  {
    return 126;
  }

  v6 = 1815762806;
  *buf = xmmword_101C8ADB4;
  if (MGIsDeviceOfType())
  {
    return 127;
  }

  v6 = -1897771119;
  *buf = xmmword_101C8ADC8;
  if (MGIsDeviceOfType())
  {
    return 128;
  }

  v6 = -652049476;
  *buf = xmmword_101C8ADDC;
  if (MGIsDeviceOfType())
  {
    return 129;
  }

  v6 = 373548423;
  *buf = xmmword_101C8ADF0;
  if (MGIsDeviceOfType())
  {
    return 130;
  }

  v6 = -1921398171;
  *buf = xmmword_101C8AE04;
  if (MGIsDeviceOfType())
  {
    return 131;
  }

  v6 = 2140507472;
  *buf = xmmword_101C8AE18;
  if (MGIsDeviceOfType())
  {
    return 132;
  }

  v6 = -936391310;
  *buf = xmmword_101C8AE2C;
  if (MGIsDeviceOfType())
  {
    return 133;
  }

  v6 = 2030516999;
  *buf = xmmword_101C8AE40;
  *v8 = xmmword_101C8AE54;
  v9 = -1276010597;
  if (MGIsDeviceOneOfType())
  {
    return 134;
  }

  v6 = -762483149;
  *buf = xmmword_101C8AE68;
  *v8 = xmmword_101C8AE7C;
  v9 = -1926937532;
  if (MGIsDeviceOneOfType())
  {
    return 135;
  }

  v6 = -1902732724;
  *buf = xmmword_101C8AE90;
  *v8 = xmmword_101C8AEA4;
  v9 = -342357580;
  if (MGIsDeviceOneOfType())
  {
    return 136;
  }

  v6 = 300442574;
  *buf = xmmword_101C8AEB8;
  *v8 = xmmword_101C8AECC;
  v9 = -1294188889;
  if (MGIsDeviceOneOfType())
  {
    return 137;
  }

  if (MGIsDeviceOfType())
  {
    return 138;
  }

  v6 = -61007701;
  *buf = xmmword_101C8AEE0;
  if (MGIsDeviceOfType())
  {
    return 139;
  }

  if (MGIsDeviceOfType())
  {
    return 140;
  }

  v6 = -235416490;
  *buf = xmmword_101C8AEF4;
  if (MGIsDeviceOfType())
  {
    return 141;
  }

  v6 = -820493242;
  *buf = xmmword_101C8AF08;
  if (MGIsDeviceOfType())
  {
    return 143;
  }

  v6 = -1157300313;
  *buf = xmmword_101C8AF1C;
  if (MGIsDeviceOfType())
  {
    return 144;
  }

  v6 = -2132668294;
  *buf = xmmword_101C8AF30;
  if (MGIsDeviceOfType())
  {
    return 145;
  }

  if (MGIsDeviceOfType())
  {
    return 146;
  }

  if (MGIsDeviceOfType())
  {
    return 147;
  }

  if (MGIsDeviceOfType())
  {
    return 149;
  }

  if (MGIsDeviceOfType())
  {
    return 150;
  }

  v6 = 1737149739;
  *buf = xmmword_101C8AF44;
  if (MGIsDeviceOfType())
  {
    return 151;
  }

  v6 = 1577888303;
  *buf = xmmword_101C8AF58;
  if (MGIsDeviceOfType())
  {
    return 152;
  }

  v6 = -1918230744;
  *buf = xmmword_101C8AF6C;
  if (MGIsDeviceOfType())
  {
    return 153;
  }

  v6 = 1126727276;
  *buf = xmmword_101C8AF80;
  if (MGIsDeviceOfType())
  {
    return 154;
  }

  v6 = 300130091;
  *buf = xmmword_101C8AF94;
  if (MGIsDeviceOfType())
  {
    return 155;
  }

  v6 = 343814884;
  *buf = xmmword_101C8AFA8;
  if (MGIsDeviceOfType())
  {
    return 156;
  }

  v6 = -1675932945;
  *buf = xmmword_101C8AFBC;
  if (MGIsDeviceOfType())
  {
    return 157;
  }

  if (MGIsDeviceOfType())
  {
    return 161;
  }

  if (MGIsDeviceOfType())
  {
    return 162;
  }

  if (MGIsDeviceOfType())
  {
    return 166;
  }

  v6 = -1840391155;
  *buf = xmmword_101C8AFD0;
  if (MGIsDeviceOfType())
  {
    return 167;
  }

  v6 = -121925081;
  *buf = xmmword_101C8AFE4;
  if (MGIsDeviceOfType())
  {
    return 142;
  }

  v6 = 1071957977;
  *buf = xmmword_101C8AFF8;
  if (MGIsDeviceOfType())
  {
    return 168;
  }

  v6 = 438437663;
  *buf = xmmword_101C8B00C;
  if (MGIsDeviceOfType())
  {
    return 169;
  }

  v6 = 1575123478;
  *buf = xmmword_101C8B020;
  if (MGIsDeviceOfType())
  {
    return 170;
  }

  v6 = -382792827;
  *buf = xmmword_101C8B034;
  if (MGIsDeviceOfType())
  {
    return 171;
  }

  v6 = 123138233;
  *buf = xmmword_101C8B048;
  if (MGIsDeviceOfType())
  {
    return 172;
  }

  v6 = 681511593;
  *buf = xmmword_101C8B05C;
  if (MGIsDeviceOfType())
  {
    return 173;
  }

  v6 = 169342588;
  *buf = xmmword_101C8B070;
  if (MGIsDeviceOfType())
  {
    return 174;
  }

  if (MGIsDeviceOfType())
  {
    return 175;
  }

  v6 = 713503427;
  *buf = xmmword_101C8B084;
  if (MGIsDeviceOfType())
  {
    return 176;
  }

  v6 = -1632750650;
  *buf = xmmword_101C8B098;
  if (MGIsDeviceOfType())
  {
    return 177;
  }

  v6 = -1820426635;
  *buf = xmmword_101C8B0AC;
  if (MGIsDeviceOfType())
  {
    return 178;
  }

  v6 = -937652876;
  *buf = xmmword_101C8B0C0;
  if (MGIsDeviceOfType())
  {
    return 179;
  }

  v6 = 1874287171;
  *buf = xmmword_101C8B0D4;
  if (MGIsDeviceOfType())
  {
    return 180;
  }

  v6 = -781324731;
  *buf = xmmword_101C8B0E8;
  if (MGIsDeviceOfType())
  {
    return 181;
  }

  v6 = 1214880059;
  *buf = xmmword_101C8B0FC;
  if (MGIsDeviceOfType())
  {
    return 182;
  }

  v6 = 426359977;
  *buf = xmmword_101C8B110;
  if (MGIsDeviceOfType())
  {
    return 183;
  }

  v6 = -1354433901;
  *buf = xmmword_101C8B124;
  if (MGIsDeviceOfType())
  {
    return 184;
  }

  v6 = 1021543808;
  *buf = xmmword_101C8B138;
  if (MGIsDeviceOfType())
  {
    return 185;
  }

  if (MGIsDeviceOfType())
  {
    return 186;
  }

  if (MGIsDeviceOfType())
  {
    return 187;
  }

  v6 = 1459208360;
  *buf = xmmword_101C8B14C;
  if (MGIsDeviceOfType())
  {
    return 188;
  }

  if (MGIsDeviceOfType())
  {
    return 189;
  }

  v6 = 431774303;
  *buf = xmmword_101C8B160;
  if (MGIsDeviceOfType())
  {
    return 180;
  }

  if (MGIsDeviceOfType())
  {
    return 190;
  }

  if (MGIsDeviceOfType())
  {
    return 191;
  }

  if (MGIsDeviceOfType())
  {
    return 163;
  }

  if (MGIsDeviceOfType())
  {
    return 192;
  }

  if (MGIsDeviceOfType())
  {
    return 164;
  }

  if (MGIsDeviceOfType())
  {
    return 165;
  }

  v6 = 345196535;
  *buf = xmmword_101C8B174;
  if (MGIsDeviceOfType())
  {
    return 193;
  }

  v6 = 440949464;
  *buf = xmmword_101C8B188;
  if (MGIsDeviceOfType())
  {
    return 194;
  }

  v6 = 688565114;
  *buf = xmmword_101C8B19C;
  if (MGIsDeviceOfType())
  {
    return 195;
  }

  v6 = -493418906;
  *buf = xmmword_101C8B1B0;
  if (MGIsDeviceOfType())
  {
    return 196;
  }

  if (MGIsDeviceOfType())
  {
    return 197;
  }

  v6 = -584398440;
  *buf = xmmword_101C8B1C4;
  if (MGIsDeviceOfType())
  {
    return 202;
  }

  if (MGIsDeviceOfType())
  {
    return 203;
  }

  v6 = -879476163;
  *buf = xmmword_101C8B1D8;
  if (MGIsDeviceOfType())
  {
    return 204;
  }

  v6 = -695298128;
  *buf = xmmword_101C8B1EC;
  *v8 = xmmword_101C8B200;
  v9 = 804488105;
  if (MGIsDeviceOneOfType())
  {
    return 205;
  }

  v6 = 1614584579;
  *buf = xmmword_101C8B214;
  *v8 = xmmword_101C8B228;
  v9 = 324288768;
  if (MGIsDeviceOneOfType())
  {
    return 206;
  }

  v6 = 460218192;
  *buf = xmmword_101C8B23C;
  *v8 = xmmword_101C8B250;
  v9 = 2144905009;
  if (MGIsDeviceOneOfType())
  {
    return 207;
  }

  v6 = 127894440;
  *buf = xmmword_101C8B264;
  *v8 = xmmword_101C8B278;
  v9 = 1070997468;
  if (MGIsDeviceOneOfType())
  {
    return 208;
  }

  v6 = 372777383;
  *buf = xmmword_101C8B28C;
  if (MGIsDeviceOfType())
  {
    return 209;
  }

  v6 = -858079590;
  *buf = xmmword_101C8B2A0;
  if (MGIsDeviceOfType())
  {
    return 210;
  }

  v6 = -212523443;
  *buf = xmmword_101C8B2B4;
  if (MGIsDeviceOfType())
  {
    return 211;
  }

  v6 = 646100384;
  *buf = xmmword_101C8B2C8;
  if (MGIsDeviceOfType())
  {
    return 212;
  }

  v6 = -340360463;
  *buf = xmmword_101C8B2DC;
  if (MGIsDeviceOfType())
  {
    return 213;
  }

  v6 = 1605231531;
  *buf = xmmword_101C8B2F0;
  if (MGIsDeviceOfType())
  {
    return 214;
  }

  if (MGIsDeviceOfType())
  {
    return 215;
  }

  if (MGIsDeviceOfType())
  {
    return 216;
  }

  v6 = -545612308;
  *buf = xmmword_101C8B304;
  if (MGIsDeviceOfType())
  {
    return 217;
  }

  v6 = 1178062702;
  *buf = xmmword_101C8B318;
  if (MGIsDeviceOfType())
  {
    return 218;
  }

  v6 = 958549802;
  *buf = xmmword_101C8B32C;
  if (MGIsDeviceOfType())
  {
    return 219;
  }

  v6 = 1377540371;
  *buf = xmmword_101C8B340;
  if (MGIsDeviceOfType())
  {
    return 220;
  }

  v6 = -1047119348;
  *buf = xmmword_101C8B354;
  if (MGIsDeviceOfType())
  {
    return 221;
  }

  v6 = -1346985080;
  *buf = xmmword_101C8B368;
  if (MGIsDeviceOfType())
  {
    return 222;
  }

  if (MGIsDeviceOfType())
  {
    return 223;
  }

  if (MGIsDeviceOfType())
  {
    return 224;
  }

  v6 = -1243071412;
  *buf = xmmword_101C8B37C;
  if (MGIsDeviceOfType())
  {
    return 225;
  }

  v6 = 2017356181;
  *buf = xmmword_101C8B390;
  if (MGIsDeviceOfType())
  {
    return 226;
  }

  if (MGIsDeviceOfType())
  {
    return 227;
  }

  if (MGIsDeviceOfType())
  {
    return 228;
  }

  v6 = -1231738393;
  *buf = xmmword_101C8B3A4;
  if (MGIsDeviceOfType())
  {
    return 229;
  }

  v6 = 164967128;
  *buf = xmmword_101C8B3B8;
  if (MGIsDeviceOfType())
  {
    return 230;
  }

  if (MGIsDeviceOfType())
  {
    return 231;
  }

  if (MGIsDeviceOfType())
  {
    return 232;
  }

  v6 = -1431778695;
  *buf = xmmword_101C8B3CC;
  if (MGIsDeviceOfType())
  {
    return 233;
  }

  v6 = 533419158;
  *buf = xmmword_101C8B3E0;
  if (MGIsDeviceOfType())
  {
    return 234;
  }

  v6 = 1106979518;
  *buf = xmmword_101C8B3F4;
  if (MGIsDeviceOfType())
  {
    return 235;
  }

  v6 = -609570151;
  *buf = xmmword_101C8B408;
  if (MGIsDeviceOfType())
  {
    return 236;
  }

  v6 = -874769875;
  *buf = xmmword_101C8B41C;
  if (MGIsDeviceOfType())
  {
    return 237;
  }

  v6 = 1223847566;
  *buf = xmmword_101C8B430;
  if (MGIsDeviceOfType())
  {
    return 238;
  }

  v6 = 185580364;
  *buf = xmmword_101C8B444;
  if (MGIsDeviceOfType())
  {
    return 239;
  }

  v6 = -1379821877;
  *buf = xmmword_101C8B458;
  if (MGIsDeviceOfType())
  {
    return 240;
  }

  if (MGIsDeviceOfType())
  {
    return 241;
  }

  v6 = 1878025452;
  *buf = xmmword_101C8B46C;
  if (MGIsDeviceOfType())
  {
    return 242;
  }

  v6 = 1725957070;
  *buf = xmmword_101C8B480;
  if (MGIsDeviceOfType())
  {
    return 243;
  }

  v6 = 538967431;
  *buf = xmmword_101C8B494;
  if (MGIsDeviceOfType())
  {
    return 244;
  }

  v6 = 2060712151;
  *buf = xmmword_101C8B4A8;
  if (MGIsDeviceOfType())
  {
    return 245;
  }

  v6 = 802516499;
  *buf = xmmword_101C8B4BC;
  if (MGIsDeviceOfType())
  {
    return 246;
  }

  v6 = -1919324456;
  *buf = xmmword_101C8B4D0;
  if (MGIsDeviceOfType())
  {
    return 247;
  }

  v6 = 1127969586;
  *buf = xmmword_101C8B4E4;
  if (MGIsDeviceOfType())
  {
    return 248;
  }

  v6 = 1292009573;
  *buf = xmmword_101C8B4F8;
  if (MGIsDeviceOfType())
  {
    return 249;
  }

  v6 = 1656760039;
  *buf = xmmword_101C8B50C;
  if (MGIsDeviceOfType())
  {
    return 250;
  }

  v6 = -2071977621;
  *buf = xmmword_101C8B520;
  if (MGIsDeviceOfType())
  {
    return 251;
  }

  v6 = -543210860;
  *buf = xmmword_101C8B534;
  if (MGIsDeviceOfType())
  {
    return 252;
  }

  v6 = -1597604211;
  *buf = xmmword_101C8B548;
  if (MGIsDeviceOfType())
  {
    return 253;
  }

  if (MGIsDeviceOfType())
  {
    return 142;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10191B9D0();
  }

  if (sub_100717D04())
  {
    return 1;
  }

  if (MGIsDeviceOfType())
  {
    return 254;
  }

  v6 = -12497897;
  *buf = xmmword_101C8B55C;
  if (MGIsDeviceOfType())
  {
    return 255;
  }

  v6 = -518121279;
  *buf = xmmword_101C8B570;
  if (MGIsDeviceOfType())
  {
    return 256;
  }

  v6 = -773054213;
  *buf = xmmword_101C8B584;
  if (MGIsDeviceOfType())
  {
    return 257;
  }

  v6 = -1204420428;
  *buf = xmmword_101C8B598;
  if (MGIsDeviceOfType())
  {
    return 258;
  }

  if (MGIsDeviceOfType())
  {
    return 280;
  }

  v1 = MGCopyAnswer();
  if (v1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      *&buf[4] = v1;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "unknown HW model %{private}@; file radar to CoreMotion Factory | 1.0", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10191BA20(v1);
    }

    CFRelease(v1);
    return 0;
  }

  if (qword_1025D4870 != -1)
  {
    sub_10191B9F8();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    sub_1000238CC(@"HWModelStr", buf);
    v4 = v7 >= 0 ? buf : *buf;
    *v8 = 136380675;
    *&v8[4] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "unknown HW model %{private}s; file radar to CoreMotion Factory | 1.0", v8, 0xCu);
    if (v7 < 0)
    {
      operator delete(*buf);
    }
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10191BB24();
    return 0;
  }

  return result;
}