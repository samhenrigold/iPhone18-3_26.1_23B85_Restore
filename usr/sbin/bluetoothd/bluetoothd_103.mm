uint64_t sub_10076A398(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_10000C798(a1, a2);
  if ((*(*v4 + 384))(v4) && (v2 == 16 || v2 == 267 || v2 == 23))
  {
    v5 = *(a1 + 1552) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10076A41C(uint64_t a1, void *a2)
{
  v3 = a2;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v4 = [v3 UUIDString];
  sub_100007E30(v40, [v4 UTF8String]);

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v5 = sub_100788D8C(off_100B508C8, v3);
  v39 = v5;
  v6 = *(a1 + 1216);
  v7 = *(a1 + 1220);
  v8 = *(a1 + 1224);
  v9 = *(a1 + 1228);
  v10 = *(a1 + 1240);
  if (v10)
  {
    v11 = a1 + 1240;
    do
    {
      v12 = *(v10 + 28);
      v13 = v12 >= v5;
      v14 = v12 < v5;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a1 + 1240 && v5 >= *(v11 + 28))
    {
      v42 = &v39;
      v6 = *(sub_100773E70(a1 + 1232, &v39, &unk_1008A9BD0, &v42) + 16);
    }
  }

  v15 = *(a1 + 1264);
  if (v15)
  {
    v16 = a1 + 1264;
    do
    {
      v17 = *(v15 + 28);
      v13 = v17 >= v39;
      v18 = v17 < v39;
      if (v13)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * v18);
    }

    while (v15);
    if (v16 != a1 + 1264 && v39 >= *(v16 + 28))
    {
      v42 = &v39;
      v7 = *(sub_100023DF0(a1 + 1256, &v39, &unk_1008A9BD0, &v42) + 8);
    }
  }

  v19 = *(a1 + 1288);
  if (v19)
  {
    v20 = a1 + 1288;
    do
    {
      v21 = *(v19 + 28);
      v13 = v21 >= v39;
      v22 = v21 < v39;
      if (v13)
      {
        v20 = v19;
      }

      v19 = *(v19 + 8 * v22);
    }

    while (v19);
    if (v20 != a1 + 1288 && v39 >= *(v20 + 28))
    {
      v42 = &v39;
      v8 = *(sub_100773E70(a1 + 1280, &v39, &unk_1008A9BD0, &v42) + 16);
    }
  }

  v23 = *(a1 + 1312);
  if (v23)
  {
    v24 = a1 + 1312;
    do
    {
      v25 = *(v23 + 28);
      v13 = v25 >= v39;
      v26 = v25 < v39;
      if (v13)
      {
        v24 = v23;
      }

      v23 = *(v23 + 8 * v26);
    }

    while (v23);
    if (v24 != a1 + 1312 && v39 >= *(v24 + 28))
    {
      v42 = &v39;
      v9 = *(sub_100023DF0(a1 + 1304, &v39, &unk_1008A9BD0, &v42) + 8);
    }
  }

  if (SHIBYTE(v41) < 0)
  {
    sub_100008904(__p, v40[0], v40[1]);
  }

  else
  {
    *__p = *v40;
    v38 = v41;
  }

  v27 = sub_1000463C8(a1 + 1192, __p);
  if (a1 + 1200 == v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = *(v27 + 56);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
    if (v28)
    {
      goto LABEL_47;
    }
  }

  else if (v28)
  {
LABEL_47:
    if (v28 == 1)
    {
      if (SHIBYTE(v41) < 0)
      {
        sub_100008904(v33, v40[0], v40[1]);
      }

      else
      {
        *v33 = *v40;
        v34 = v41;
      }

      v30 = sub_10076A1F4(a1, v33, v9);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v33[0]);
      }

      if (v30 > v8)
      {
        v29 = sub_10076A398(a1, v39) ^ 1;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100871C8C();
    }

    v29 = 2;
    goto LABEL_67;
  }

  if (SHIBYTE(v41) < 0)
  {
    sub_100008904(__dst, v40[0], v40[1]);
  }

  else
  {
    *__dst = *v40;
    v36 = v41;
  }

  v31 = sub_10076A1F4(a1, __dst, v7);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v31 < v6 || (sub_10076A398(a1, v39) & 1) != 0)
  {
LABEL_66:
    v29 = 0;
    goto LABEL_67;
  }

  v29 = 1;
LABEL_67:
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  return v29;
}

void sub_10076A808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10076A88C(uint64_t a1, const void **a2)
{
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_100871CFC();
  }

  result = sub_1000463C8(a1 + 1192, a2);
  if ((a1 + 1200) != result)
  {
    return sub_100079DEC((a1 + 1192), result);
  }

  return result;
}

void sub_10076A908(uint64_t *result, double a2)
{
  if (a2 > 0.0)
  {
    v25 = &v25;
    v26 = &v25;
    v27 = 0;
    v3 = result[145];
    v4 = result + 146;
    if (v3 != result + 146)
    {
      do
      {
        v6 = (v3 + 32);
        v7 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
        {
          if (*(v3 + 55) < 0)
          {
            v12 = *(v3 + 32);
            sub_100008904(__dst, v12, *(v3 + 40));
          }

          else
          {
            *__dst = *v6;
            v24 = *(v3 + 48);
            v12 = (v3 + 32);
          }

          v13 = sub_100769F7C(result, __dst);
          *buf = 136446722;
          *&buf[4] = v12;
          *&buf[12] = 2048;
          *&buf[14] = v13;
          *&buf[22] = 2048;
          v31 = a2;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "purgeStaleDisconnectionHistoryLeConnectionRSSIThresholdState: %{public}s last %f cutoff %f", buf, 0x20u);
          if (SHIBYTE(v24) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        if (*(v3 + 55) < 0)
        {
          sub_100008904(__p, *(v3 + 32), *(v3 + 40));
        }

        else
        {
          *__p = *v6;
          v22 = *(v3 + 48);
        }

        v8 = sub_100769F7C(result, __p);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 < a2)
        {
          sub_100687DD0(&v25, 0, 0, v3 + 32);
        }

        v9 = *(v3 + 8);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v3 + 16);
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }

        v3 = v10;
      }

      while (v10 != v4);
      for (i = v26; i != &v25; i = i[1])
      {
        memset(buf, 0, sizeof(buf));
        if (*(i + 39) < 0)
        {
          sub_100008904(buf, i[2], i[3]);
        }

        else
        {
          *buf = *(i + 1);
          *&buf[16] = i[4];
        }

        v15 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          if ((buf[23] & 0x80u) == 0)
          {
            v16 = buf;
          }

          else
          {
            v16 = *buf;
          }

          *v28 = 136446210;
          v29 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "purgeStaleDisconnectionHistoryLeConnectionRSSIThresholdState: %{public}s deleted", v28, 0xCu);
        }

        if (buf[23] < 0)
        {
          sub_100008904(v19, *buf, *&buf[8]);
        }

        else
        {
          *v19 = *buf;
          v20 = *&buf[16];
        }

        sub_100769EEC(result, v19);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
        }

        if (buf[23] < 0)
        {
          sub_100008904(v17, *buf, *&buf[8]);
        }

        else
        {
          *v17 = *buf;
          v18 = *&buf[16];
        }

        sub_10076A88C(result, v17);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }
    }

    sub_10043C768(&v25);
  }
}

void sub_10076AD20(uint64_t a1)
{
  v1 = *(a1 + 1176);
  if (v1 <= 0x20u)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_100871D74();
    }

    return;
  }

  v18 = &v18;
  v19 = &v18;
  v20 = 0;
  v3 = *(a1 + 1160);
  if (v3 != a1 + 1168)
  {
    if (*(v3 + 55) < 0)
    {
      sub_100008904(__dst, *(v3 + 32), *(v3 + 40));
      if (*(v3 + 55) < 0)
      {
        sub_100008904(__p, *(v3 + 32), *(v3 + 40));
LABEL_9:
        v17 = sub_100769F7C(a1, __p);
        operator new();
      }
    }

    else
    {
      *__dst = *(v3 + 32);
      v16 = *(v3 + 48);
    }

    *__p = *(v3 + 32);
    v14 = *(v3 + 48);
    goto LABEL_9;
  }

  __dst[0] = sub_10076AD0C;
  sub_10077659C(&v18, &v18, 0, __dst);
  v4 = v19;
  if (v19 != &v18)
  {
    v5 = 0;
    v6 = (v1 - 32);
    do
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v16 = 0;
      if (*(v4 + 39) < 0)
      {
        sub_100008904(__dst, v4[2], v4[3]);
      }

      else
      {
        *__dst = *(v4 + 1);
        v16 = v4[4];
      }

      if (SHIBYTE(v16) < 0)
      {
        sub_100008904(v11, __dst[0], __dst[1]);
      }

      else
      {
        *v11 = *__dst;
        v12 = v16;
      }

      sub_100769EEC(a1, v11);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }

      if (SHIBYTE(v16) < 0)
      {
        sub_100008904(v9, __dst[0], __dst[1]);
      }

      else
      {
        *v9 = *__dst;
        v10 = v16;
      }

      sub_10076A88C(a1, v9);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }

      v7 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        if (SHIBYTE(v16) >= 0)
        {
          v8 = __dst;
        }

        else
        {
          v8 = __dst[0];
        }

        *buf = 136446210;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "capDisconnectionHistoryLeConnectionRSSIThresholdState: delete %{public}s", buf, 0xCu);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v6 <= ++v5)
      {
        break;
      }

      v4 = v4[1];
    }

    while (v4 != &v18);
  }

  sub_10043C768(&v18);
}

BOOL sub_10076B13C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updatePhyRateForExtendedRange for device %{public}@", buf, 0xCu);
  }

  sub_10004DFB4(buf, v5);
  v7 = sub_10004E34C(a1 + 384, buf);
  if (a1 + 392 == v7 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100871DF0();
  }

  sub_1007669E4(a1, *(v7 + 48), v5, a3);
  sub_1000088CC(v9);

  return a1 + 392 == v7;
}

void sub_10076B280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10076B2AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if ((*(a1 + 56) - 65562) > 3)
  {
    *buf = a1 + 48;
    if (*(sub_10077444C(v2 + 528, v3, &unk_1008A9BD0, buf) + 31))
    {
      *buf = v3;
      *(sub_10077444C(v2 + 528, v3, &unk_1008A9BD0, buf) + 31) = 0;
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v10 = sub_10078C174(off_100B508C8, *(a1 + 32));
        *buf = 67109378;
        *&buf[4] = 0;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setPhy forced to LE2M (%d) for useCase : %@", buf, 0x12u);
      }

      sub_10004DFB4(buf, *(a1 + 32));
      v11 = sub_10076B5C8(v2, buf, 0, 2, 2, 0);
      if (v11)
      {
        v12 = v11;
        v8 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v12;
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    *buf = a1 + 48;
    if (!*(sub_10077444C(v2 + 528, v3, &unk_1008A9BD0, buf) + 31))
    {
      *buf = v3;
      *(sub_10077444C(v2 + 528, v3, &unk_1008A9BD0, buf) + 31) = 1;
      v4 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v5 = sub_10078C174(off_100B508C8, *(a1 + 32));
        *buf = 67109378;
        *&buf[4] = 0;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPhy forced to LE1M (%d) for useCase : %@", buf, 0x12u);
      }

      sub_10004DFB4(buf, *(a1 + 32));
      v6 = sub_10076B5C8(v2, buf, 0, 1, 1, 0);
      if (v6)
      {
        v7 = v6;
        v8 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v7;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setPhy failed with error %d", buf, 8u);
        }
      }
    }
  }
}

uint64_t sub_10076B5C8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_10004DF60(a2);
    v18 = 138543362;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setPhy for device %{public}@", &v18, 0xCu);
  }

  v14 = sub_10004E34C(a1 + 384, a2);
  if (a1 + 392 == v14)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100871ED0(a2);
    }

    return 3;
  }

  else
  {
    v15 = *(v14 + 48);
    LOBYTE(v18) = 0;
    sub_1000216B4(&v18);
    v16 = sub_1002C3D98(v15, a3, a4, a5, a6);
    if (v16)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871E60();
      }

      v16 = 1;
    }

    sub_10002249C(&v18);
  }

  return v16;
}

void sub_10076B754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10076B770(os_unfair_lock_s *a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    os_unfair_lock_opaque = a1[216]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque > 4)
    {
      v4 = "UNKNOWN";
    }

    else
    {
      v4 = (&off_100B0BF80)[os_unfair_lock_opaque];
    }

    v5 = a1[232]._os_unfair_lock_opaque;
    if (v5 > 3)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = (&off_100B0BF60)[v5];
    }

    v14 = 136446466;
    v15 = v4;
    v16 = 2082;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "pauseConnectionManager called, LeConnectionState=%{public}s LeConnectionManagerState=%{public}s", &v14, 0x16u);
  }

  v7 = a1[232]._os_unfair_lock_opaque;
  if (v7 - 1 >= 3)
  {
    if (v7)
    {
      return 0;
    }

    sub_100745C6C(a1, 1u);
    result = 0;
    v9 = a1[216]._os_unfair_lock_opaque;
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          return result;
        }

        v11 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We're trying to connect - cancelling all connections, will pause when idle", &v14, 2u);
        }

        sub_10074518C(a1, 1);
        return 0;
      }

      v12 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      LOWORD(v14) = 0;
      v13 = "We're idle, lets move on";
    }

    else
    {
      if ((v9 - 2) < 2)
      {
        v10 = qword_100BCE980;
        result = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We're in the middle of connection cancellation - will pause when idle", &v14, 2u);
        return 0;
      }

      if (v9 != 4)
      {
        return result;
      }

      v12 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      LOWORD(v14) = 0;
      v13 = "We're autoReconnect, lets pause";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 2u);
LABEL_29:
    sub_100745C6C(a1, 2u);
    return 0;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100871BD8();
  }

  return 12;
}

uint64_t sub_10076BA6C(uint64_t a1)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  sub_100008760(&v14);
  v2 = sub_100007774(&v14, " client: ", 9);
  sub_100007774(v2, "LeConnectionManager", 19);
  v3 = sub_100007774(&v14, " state: (", 9);
  v4 = *(a1 + 864);
  if (v4 > 4)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = (&off_100B0BF80)[v4];
  }

  v6 = strlen(v5);
  v7 = sub_100007774(v3, v5, v6);
  sub_100007774(v7, ")", 1);
  v8 = sub_100007774(&v14, " , ManagerState: (", 18);
  v9 = *(a1 + 928);
  if (v9 > 3)
  {
    v10 = "UNKNOWN";
  }

  else
  {
    v10 = (&off_100B0BF60)[v9];
  }

  v11 = strlen(v10);
  v12 = sub_100007774(v8, v10, v11);
  sub_100007774(v12, ")", 1);
  std::stringbuf::str();
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10076BD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v10 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  sub_10076BE0C(v10, __p, a3, a4, a5, v6);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10076BDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076BE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_100007EE8(a1, a2);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3321888768;
  v13[2] = sub_10076E4D4;
  v13[3] = &unk_100B0BAC0;
  v13[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  sub_10000CA94(v12, v13);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10076BF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076BF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  sub_10076BE0C(v10, __p, a3, a4, a5, a6);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10076BFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076BFD8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {

    v4 = *(i - 40);
  }

  a1[1] = v2;
}

uint64_t sub_10076C024(unsigned __int16 *a1, int a2, int a3, int a4)
{
  if (!a4)
  {
    return 1;
  }

  if (a1[132] == a2)
  {
    v7 = a4 == 24;
  }

  else if (a1[136] == a2)
  {
    v7 = a2 - 48 == a4;
  }

  else
  {
    v8 = a1[134];
    v7 = v8 != a2 || v8 - 48 == a4;
  }

  v9 = v7;
  if (a2 - a3 >= a4 && v9)
  {
    return 1;
  }

  v11 = qword_100BCE980;
  v12 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v12)
  {
    v13[0] = 67109632;
    v13[1] = a2;
    v14 = 1024;
    v15 = a3;
    v16 = 1024;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "connectionScanParameters: Invalid combination of scan parameters interval %d window %d scancoreWindow %d  - do not use SC for connection scan.", v13, 0x14u);
    return 0;
  }

  return result;
}

__n128 sub_10076C1A8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

uint64_t sub_10076C1C0(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100063D0C(*(*(*(a1 + 32) + 8) + 48));
    v4 = sub_100063D0C(*(*(*(a1 + 32) + 8) + 56));
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = "";
    }

    else
    {
      v6 = " non-connectable-secondary:";
    }

    if (*(a1 + 40))
    {
      v7 = &stru_100B0F9E0;
    }

    else
    {
      v7 = sub_100063D0C(*(*(*(a1 + 32) + 8) + 64));
    }

    *v10 = 138544130;
    *&v10[4] = v3;
    *&v10[12] = 2114;
    *&v10[14] = v4;
    *&v10[22] = 2080;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeConnectionManager::leAddressChangedCallback dispatched addresses connectable:%{public}@ non-connectable:%{public}@%s%{public}@", v10, 0x2Au);
    if ((v5 & 1) == 0)
    {
    }
  }

  if (qword_100B508B0 != -1)
  {
    sub_10086DE54();
  }

  v8 = *(*(a1 + 32) + 8);
  *v10 = *(v8 + 48);
  *&v10[16] = *(v8 + 64);
  return sub_100753928(off_100B508A8, v10);
}

void sub_10076C3A0(id a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  sub_100754974(v2);
}

uint64_t sub_10076C3E4(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 60))
    {
      v3 = "Incoming";
    }

    else
    {
      v3 = "Outgoing";
    }

    v4 = *(a1 + 32);
    v5 = sub_100063D0C(*(a1 + 40));
    v6 = *(a1 + 56);
    v7 = *(a1 + 61);
    v9 = 136447234;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s LE Connection complete for handle %p address %{public}@ with status %d wakeEvent:%d", &v9, 0x2Cu);
  }

  if (qword_100B508B0 != -1)
  {
    sub_10086DE54();
  }

  return sub_100758B40(off_100B508A8, *(a1 + 40), *(a1 + 60), *(a1 + 32), *(a1 + 56), *(a1 + 61), *(a1 + 48));
}

uint64_t sub_10076C534(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);

  return sub_10075BB38(v2, v3);
}

uint64_t sub_10076C588(uint64_t a1)
{
  v2 = qword_100BCE980;
  v3 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v5 = *(a1 + 32);
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing ConnectionEventTrigger for device %lld", &v8, 0xCu);
  }

  v6 = sub_10000C7D0(v3, v4);
  return (*(*v6 + 3488))(v6, *(a1 + 40), 0xFFFFLL, 1, 0, 1);
}

void sub_10076C674(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = sub_100063D0C(*(a1 + 40));
    v5 = *(a1 + 48);
    v6 = *(a1 + 58);
    *buf = 134218754;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LE Link disconnected for handle %p address %{public}@ with reason %d encryptionPending %d", buf, 0x22u);
  }

  if (qword_100B508B0 != -1)
  {
    sub_10086DE54();
  }

  sub_10075D410(off_100B508A8, *(a1 + 40), *(a1 + 32), *(a1 + 56), *(a1 + 59), *(a1 + 48), *(a1 + 60), *(a1 + 61), *(a1 + 52));
}

uint64_t sub_10076C79C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 44);

  return sub_100762CC4(v2, v3, v4, v5);
}

void sub_10076C7F8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100007EE8(a1, a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076C87C;
  v6[3] = &unk_100AE15D8;
  v6[4] = a2;
  v7 = a3;
  sub_10000CA94(v5, v6);
}

uint64_t sub_10076C87C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1007630E4(v2, v3, v4);
}

void sub_10076C8D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, __int16 a6, int a7, int a8)
{
  *(a2 + 280) = a3;
  *(a2 + 284) = a4;
  *(a2 + 288) = a5;
  *(a2 + 292) = a6;
  v15 = sub_100007EE8(a1, a2);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10076C9A0;
  v16[3] = &unk_100B02F90;
  v21 = a3;
  v16[4] = a2;
  v16[5] = a4;
  v20 = a6;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  sub_10000CA94(v15, v16);
}

uint64_t sub_10076C9A0(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 62);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 60);
  v7 = *(a1 + 48);
  v8 = *(a1 + 52);
  v9 = *(a1 + 56);

  return sub_1007632BC(v2, v4, v3, v5, v7, v6, v8, v9);
}

void sub_10076CA04(uint64_t a1, uint64_t a2, char a3, __int16 a4, __int16 a5, __int16 a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  v17 = sub_100007EE8(a1, a2);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10076CAD8;
  v18[3] = &unk_100B0BA20;
  v24 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v18[4] = a2;
  v18[5] = a7;
  v19 = a8;
  v20 = a9;
  v18[6] = a10;
  sub_10000CA94(v17, v18);
}

uint64_t sub_10076CAD8(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  return sub_100763550(off_100B508A8, *(a1 + 32), *(a1 + 70), *(a1 + 64), *(a1 + 66), *(a1 + 68), *(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
}

uint64_t sub_10076CB48(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  return sub_100763AD0(off_100B508A8, *(a1 + 32), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 40), *(a1 + 70), *(a1 + 71), BYTE1(*(a1 + 71)), BYTE2(*(a1 + 71)), HIBYTE(*(a1 + 71)), *(a1 + 68), *(a1 + 64), *(a1 + 75), HIBYTE(*(a1 + 75)));
}

void sub_10076CBC4(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v7 = sub_100007EE8(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v8 = a3[1];
  v10 = *a3;
  v9[2] = sub_10076CC60;
  v9[3] = &unk_100B0BA60;
  v9[4] = a2;
  v11 = v8;
  v12 = a4;
  sub_10000CA94(v7, v9);
}

uint64_t sub_10076CC60(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  return sub_1007641A0(off_100B508A8, v2, v5, *(a1 + 72));
}

void sub_10076CCC4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_100007EE8(a1, a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10076CD58;
  v8[3] = &unk_100AEB940;
  v8[4] = a2;
  v9 = a3;
  v10 = a4;
  sub_10000CA94(v7, v8);
}

void sub_10076CD58(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);

  sub_10076444C(v2, v3, v4, v5);
}

uint64_t sub_10076CDB4(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  v6 = *(a1 + 44);
  v7 = *(a1 + 46);
  v8 = *(a1 + 48);
  v9 = *(a1 + 50);

  return sub_100764628(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10076CE20(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = *(a1 + 46);
  v7 = *(a1 + 48);
  v8 = *(a1 + 50);

  return sub_1007653D4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10076CE88(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  return sub_100765E78(off_100B508A8, *(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 65), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 54), WORD1(*(a1 + 54)), WORD2(*(a1 + 54)), HIWORD(*(a1 + 54)), *(a1 + 62));
}

uint64_t sub_10076CEFC(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);

  return sub_100766AC4(v2, v3, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_10076CF5C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  return sub_100766D68(v2);
}

void sub_10076CFA0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v5 = qword_100BCE980;
  v6 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v8 = v3[9];
    buf[0] = 67109120;
    buf[1] = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "leCsProcedureCompleteCallback with status %d", buf, 8u);
  }

  v9 = sub_100007EE8(v6, v7);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10076D0E0;
  v10[3] = &unk_100B0BAA0;
  v10[4] = v4;
  memcpy(v11, v3, sizeof(v11));
  sub_10000CA94(v9, v10);
}

uint64_t sub_10076D0E0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  memcpy(__dst, (v1 + 40), sizeof(__dst));
  return sub_100763818(off_100B508A8);
}

uint64_t sub_10076D19C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_10004DF60(a2);
    *buf = 138543874;
    v17 = v7;
    v18 = 1040;
    v19 = 5;
    v20 = 2096;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setConnectionAFHMap for device %{public}@ with map %.5P", buf, 0x1Cu);
  }

  if (a1 + 392 == sub_10004E34C(a1 + 384, a2))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100871FD0(a2);
    }

    return 3;
  }

  else
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    v14 = sub_100018960(180, sub_10076D344, v8, v9, v10, v11, v12, v13, a3);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871F60();
      }

      v14 = 1;
    }

    sub_10002249C(buf);
  }

  return v14;
}

void sub_10076D328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_10076D344(int a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set AFH status=%{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

uint64_t sub_10076D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = sub_10000C798(a1, a2);
  v8 = (*(*v6 + 936))(v6);
  result = 0;
  switch(v4)
  {
    case 65536:
    case 65540:
    case 65555:
    case 65557:
    case 65562:
    case 65563:
    case 65564:
    case 65565:
    case 65566:
      v10 = 0;
      *(a3 + 1) = 1;
      *(a3 + 3) = 0;
      if (v4 == 65555)
      {
        v11 = 180000;
      }

      else
      {
        v11 = 10000;
      }

      v12 = a3 + 12;
      do
      {
        if ((v10 & 4) != 0)
        {
          v14 = sub_10000C798(result, v7);
          result = (*(*v14 + 1056))(v14);
          if (result)
          {
            *(v12 + 8) = *(a1 + 262) - 48;
            *(v12 + 12) = 1;
          }

          v13 = 3;
        }

        else
        {
          v13 = 1;
        }

        *v12 = v13;
        *(v12 + 4) = v11;
        v15 = *(a1 + 1388);
        v16 = v11;
        if (v15 > 0.0)
        {
          v17 = qword_100BCE980;
          result = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG);
          if (result)
          {
            v19 = sub_10002DC3C(v4);
            *buf = 136315906;
            v54 = v19;
            v55 = 1024;
            v56 = v10;
            v57 = 1024;
            LODWORD(v58[0]) = v11;
            WORD2(v58[0]) = 2048;
            *(v58 + 6) = v15;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Override %s Coex 0x%x connection  scan timeout %d extended by %f percent", buf, 0x22u);
            v15 = *(a1 + 1388);
            v18 = *(v12 + 4);
          }

          else
          {
            v18 = v11;
          }

          v16 = (((v15 + 100.0) / 100.0) * v18);
          *(v12 + 4) = v16;
        }

        if (*(a1 + 1384) == 1)
        {
          v16 = 48 * v16 / *(a1 + 256 + 2 * v13);
        }

        *(v12 - 8) = v16;
        *(v12 - 4) = v16;
        ++v10;
        v12 += 24;
      }

      while (v10 != 16);
      goto LABEL_40;
    case 65537:
    case 65541:
    case 65560:
      v52 = v4;
      v34 = 0;
      *(a3 + 1) = 257;
      *(a3 + 3) = 1;
      v35 = v8 & 0xFFFFFFFE;
      v36 = (a3 + 20);
      do
      {
        if ((v34 & 5) != 0)
        {
          *(v36 - 1) = 600000;
          if (v34 >= 8 && _os_feature_enabled_impl())
          {
            v37 = 0;
            *v36 = *(a1 + 268) - 48;
          }

          else
          {
            v37 = 0;
          }

          v38 = 6;
        }

        else if ((v34 & 2) != 0)
        {
          *(v36 - 1) = 0x1800004E20;
          v37 = 1;
          v38 = 4;
        }

        else
        {
          v37 = 0;
          *(v36 - 1) = 10000;
          v38 = 1;
        }

        *(v36 - 2) = v38;
        v39 = *(v36 - 1);
        if (*(a1 + 1384) == 1)
        {
          v40 = *(a1 + 256 + 2 * v38);
          v41 = 48 * v39 / v40;
          *(v36 - 3) = v41;
          if (v35 != 2)
          {
            v37 = 0;
          }

          if (v37 == 1)
          {
            v41 = (*v36 + 48) * v39 / v40;
          }
        }

        else
        {
          *(v36 - 3) = v39;
          v41 = v39;
        }

        *(v36 - 4) = v41;
        v42 = *(a1 + 1388);
        if (v42 > 0.0)
        {
          v43 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
          {
            v44 = sub_10002DC3C(v52);
            *buf = 136315906;
            v54 = v44;
            v55 = 1024;
            v56 = v34;
            v57 = 1024;
            LODWORD(v58[0]) = v39;
            WORD2(v58[0]) = 2048;
            *(v58 + 6) = v42;
            _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Override %s Coex 0x%x connection  scan timeout %d extended by %f percent", buf, 0x22u);
            v42 = *(a1 + 1388);
            v39 = *(v36 - 1);
          }

          *(v36 - 1) = (((v42 + 100.0) / 100.0) * v39);
        }

        ++v34;
        v36 += 6;
      }

      while (v34 != 16);
      goto LABEL_40;
    case 65538:
    case 65542:
    case 65556:
    case 65558:
      v20 = 0;
      *(a3 + 1) = 1;
      *(a3 + 3) = 0;
      if (v4 == 65556)
      {
        v21 = 180000;
      }

      else
      {
        v21 = 60000;
      }

      v22 = a3 + 12;
      do
      {
        if ((v20 & 4) != 0)
        {
          v24 = sub_10000C798(result, v7);
          result = (*(*v24 + 1056))(v24);
          if (result)
          {
            *(v22 + 8) = *(a1 + 262) - 48;
            *(v22 + 12) = 1;
          }

          v23 = 3;
        }

        else
        {
          v23 = 1;
        }

        *v22 = v23;
        *(v22 + 4) = v21;
        *(v22 - 8) = v21;
        *(v22 - 4) = v21;
        v25 = *(a1 + 1388);
        if (v25 > 0.0)
        {
          v26 = qword_100BCE980;
          result = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG);
          if (result)
          {
            v28 = sub_10002DC3C(v4);
            *buf = 136315906;
            v54 = v28;
            v55 = 1024;
            v56 = v20;
            v57 = 1024;
            LODWORD(v58[0]) = v21;
            WORD2(v58[0]) = 2048;
            *(v58 + 6) = v25;
            _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Override %s Coex 0x%x connection  scan timeout %d extended by %f percent", buf, 0x22u);
            v25 = *(a1 + 1388);
            v27 = *(v22 + 4);
          }

          else
          {
            v27 = v21;
          }

          *(v22 + 4) = (((v25 + 100.0) / 100.0) * v27);
        }

        ++v20;
        v22 += 24;
      }

      while (v20 != 16);
      goto LABEL_40;
    case 65539:
    case 65543:
    case 65561:
      *(a3 + 1) = 0;
      *(a3 + 3) = 0;
      *(a3 + 4) = xmmword_1008C5320;
      v29 = *(a1 + 1388);
      if (v29 > 0.0)
      {
        v30 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v54 = sub_10002DC3C(v4);
          v55 = 1024;
          v56 = 600000;
          v57 = 2048;
          v58[0] = v29;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Override %s Coex None connection  scan timeout %d extended by %f percent", buf, 0x1Cu);
          v29 = *(a1 + 1388);
          v31 = *(a3 + 16);
        }

        else
        {
          v31 = 600000.0;
        }

        *(a3 + 16) = (((v29 + 100.0) / 100.0) * v31);
      }

      goto LABEL_40;
    case 65544:
    case 65545:
    case 65546:
    case 65547:
    case 65548:
    case 65549:
    case 65550:
    case 65551:
    case 65552:
    case 65553:
    case 65554:
    case 65559:
      return result;
    default:
      if (v4 != 655360)
      {
        return result;
      }

      v45 = 0;
      *(a3 + 1) = 257;
      *(a3 + 3) = 0;
      v46 = (a3 + 16);
      do
      {
        if ((v45 & 5) != 0)
        {
          v47 = 6;
        }

        else
        {
          v47 = 1;
        }

        *(v46 - 1) = v47;
        *v46 = 10000;
        v48 = 10000;
        if (*(a1 + 1384) == 1)
        {
          v48 = 0x75300u / *(a1 + 256 + 2 * v47);
        }

        *(v46 - 3) = v48;
        *(v46 - 2) = v48;
        v49 = *(a1 + 1388);
        if (v49 > 0.0)
        {
          v50 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v54 = "AccessDigitalHomeKey";
            v55 = 1024;
            v56 = v45;
            v57 = 1024;
            LODWORD(v58[0]) = 10000;
            WORD2(v58[0]) = 2048;
            *(v58 + 6) = v49;
            _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Override %s Coex 0x%x connection  scan timeout %d extended by %f percent", buf, 0x22u);
            v49 = *(a1 + 1388);
            v51 = *v46;
          }

          else
          {
            v51 = 10000.0;
          }

          *v46 = (((v49 + 100.0) / 100.0) * v51);
        }

        ++v45;
        v46 += 6;
      }

      while (v45 != 16);
LABEL_40:
      if (*(a1 + 1520) == 1)
      {
        for (i = 16; i != 400; i += 24)
        {
          if (*(a3 + i))
          {
            *(a3 + i) = *(a1 + 1524);
          }
        }
      }

      if (*(a3 + 2) & 1) != 0 || (*(a3 + 1))
      {
        v33 = 1;
      }

      else
      {
        v33 = *(a3 + 3);
      }

      *a3 = v33 & 1;
      return 1;
  }
}

void sub_10076DBF0(uint64_t a1, void *a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v12 = sub_100788D8C(off_100B508C8, v11);
  v59 = 0;
  v13 = 4;
  memset(v58, 0, sizeof(v58));
  do
  {
    v14 = (v58 + v13);
    *v14 = 0;
    v14[1] = 0;
    *(v14 + 13) = 0;
    v13 += 24;
  }

  while (v13 != 388);
  if (sub_10076D3E8(a1, v12, v58))
  {
    if (a1 + 1368 == sub_1000463C8(a1 + 1360, a3))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1008720E0();
      }
    }

    else
    {
      *buf = a3;
      v15 = sub_1007748BC((a1 + 1360), a3, &unk_1008A9BD0, buf, &v60);
      v55 = v15[15];
      v56 = v15[14];
      v16 = v15[16];
      v57 = v15[17];
      v17 = +[NSMutableDictionary dictionary];
      [v17 setObject:@"Connection" forKeyedSubscript:@"ScanType"];
      v18 = [NSString stringWithUTF8String:sub_10002DC3C(v12)];
      v54 = a6;
      v53 = a5;
      [v17 setObject:v18 forKeyedSubscript:@"CBUseCase"];

      if (qword_100B54208 != -1)
      {
        sub_10086E578();
      }

      v52 = sub_1007F1E20(qword_100B54200, v11);
      v19 = [v52 allObjects];
      v20 = [NSArray arrayWithArray:v19];

      v21 = [v20 sortedArrayUsingSelector:"compare:"];

      v22 = [v21 componentsJoinedByString:{@", "}];
      [v17 setObject:v22 forKeyedSubscript:@"BundleID"];

      v23 = [NSNumber numberWithBool:*(a1 + 1384)];
      [v17 setObject:v23 forKeyedSubscript:@"IsFWBased"];

      v24 = [NSString stringWithUTF8String:sub_10076E4B0(a1, v16)];
      [v17 setObject:v24 forKeyedSubscript:@"InitialConnScanParamsType"];

      v25 = [NSNumber numberWithBool:BYTE3(v58[0])];
      [v17 setObject:v25 forKeyedSubscript:@"IsWiFiCoexCriticalProtected"];

      v26 = [NSNumber numberWithBool:BYTE2(v58[0])];
      [v17 setObject:v26 forKeyedSubscript:@"IsBTAudioProtected"];

      v27 = [NSNumber numberWithBool:BYTE3(v58[0])];
      [v17 setObject:v27 forKeyedSubscript:@"IsWiFi2_4GHzProtected"];

      if ((v12 & 0xFFFF0000) == 0x10000)
      {
        v28 = 63;
      }

      else
      {
        v28 = 0;
      }

      v29 = [NSNumber numberWithUnsignedLongLong:v28];
      [v17 setObject:v29 forKeyedSubscript:@"WiFiCriticalDefinition"];

      v30 = [NSNumber numberWithUnsignedInt:v57];
      [v17 setObject:v30 forKeyedSubscript:@"ScanDurationReqMsec"];

      v31 = [NSNumber numberWithUnsignedInt:v56];
      [v17 setObject:v31 forKeyedSubscript:@"ActualScanTimeReqMsec"];

      v32 = [NSNumber numberWithUnsignedInt:v55];
      [v17 setObject:v32 forKeyedSubscript:@"ActualScanTimeMCReqMsec"];

      v33 = [NSNumber numberWithUnsignedLongLong:v54];
      [v17 setObject:v33 forKeyedSubscript:@"ScanDurationMsec"];

      v34 = [NSNumber numberWithUnsignedLongLong:a4];
      [v17 setObject:v34 forKeyedSubscript:@"ActualScanTimeMsec"];

      v35 = [NSNumber numberWithUnsignedLongLong:v53];
      [v17 setObject:v35 forKeyedSubscript:@"ActualScanTimeMCMsec"];

      if (v57)
      {
        v36 = 100 * v54 / v57;
      }

      else
      {
        v36 = 0;
      }

      if (v36 <= 0x63)
      {
        v37 = v36;
      }

      else
      {
        v37 = 100;
      }

      if (v56)
      {
        v38 = 100 * a4 / v56;
      }

      else
      {
        v38 = 0;
      }

      if (v38 <= 0x63)
      {
        v39 = v38;
      }

      else
      {
        v39 = 100;
      }

      if (v55)
      {
        v40 = 100 * v53 / v55;
      }

      else
      {
        v40 = 0;
      }

      if (v40 <= 0x63)
      {
        v41 = v40;
      }

      else
      {
        v41 = 100;
      }

      v42 = [NSNumber numberWithUnsignedInt:v37];
      [v17 setObject:v42 forKeyedSubscript:@"ScanDurationMsecPercentage"];

      v43 = [NSNumber numberWithUnsignedInt:v39];
      [v17 setObject:v43 forKeyedSubscript:@"ActualScanTimeMsecPercentage"];

      v44 = [NSNumber numberWithUnsignedInt:v41];
      [v17 setObject:v44 forKeyedSubscript:@"ActualScanTimeMCMsecPercentage"];

      v45 = [NSNumber numberWithBool:v36 > 0x63];
      [v17 setObject:v45 forKeyedSubscript:@"HasScanDurationReqMet"];

      v46 = [NSNumber numberWithBool:v38 > 0x63];
      [v17 setObject:v46 forKeyedSubscript:@"HasActualScanTimeReqMet"];

      v47 = [NSNumber numberWithBool:v40 > 0x63];
      [v17 setObject:v47 forKeyedSubscript:@"HasActualScanTimeMCReqMet"];

      v48 = qword_100BCE980;
      v49 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v49)
      {
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Sending CloseLoopScanningStats :%{public}@", buf, 0xCu);
      }

      v51 = sub_10000F034(v49, v50);
      (*(*v51 + 408))(v51, v17);
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100872060(v12);
  }
}

const char *sub_10076E4B0(uint64_t a1, unsigned int a2)
{
  if (a2 > 8)
  {
    return "Unknown";
  }

  else
  {
    return (&off_100B0BF18)[a2];
  }
}

void sub_10076E4D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    *buf = 136316162;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    *&buf[22] = 2048;
    *&buf[24] = v6;
    *&buf[32] = 2048;
    *&buf[34] = v7;
    v27 = 1024;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "handleConnScanRxStoppedCB: %s totalRx %llu btMCRx %llu totalTime %llu reason %d", buf, 0x30u);
  }

  if (*(a1 + 88) == 1)
  {
    v9 = v2[42];
    if (v9 != (v2 + 43))
    {
      v10 = (a1 + 40);
      while (1)
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v9 + 25, buf);
        sub_100007E30(__p, buf);
        v11 = v25;
        if ((v25 & 0x80u) == 0)
        {
          v12 = v25;
        }

        else
        {
          v12 = __p[1];
        }

        v13 = *(a1 + 63);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a1 + 48);
        }

        if (v12 != v13)
        {
          break;
        }

        if ((v25 & 0x80u) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        if (v14 >= 0)
        {
          v16 = (a1 + 40);
        }

        else
        {
          v16 = *v10;
        }

        v17 = memcmp(v15, v16, v12) == 0;
        if (v11 < 0)
        {
          goto LABEL_23;
        }

LABEL_24:
        if (v17)
        {
          v21 = sub_10004DF60(v9 + 25);
          if (*(a1 + 63) < 0)
          {
            sub_100008904(v22, *(a1 + 40), *(a1 + 48));
          }

          else
          {
            *v22 = *v10;
            v23 = *(a1 + 56);
          }

          sub_10076DBF0(v2, v21, v22, *(a1 + 64), *(a1 + 72), *(a1 + 80));
          if (SHIBYTE(v23) < 0)
          {
            operator delete(v22[0]);
          }

          sub_10004DFB4(buf, v21);
          sub_10074CD90(v2, buf, 10);
          sub_10004DFB4(buf, v21);
          sub_100756884(v2, buf, 0, 344, 0);

          return;
        }

        v18 = *(v9 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v9 + 2);
            v20 = *v19 == v9;
            v9 = v19;
          }

          while (!v20);
        }

        v9 = v19;
        if (v19 == v2 + 43)
        {
          return;
        }
      }

      v17 = 0;
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(__p[0]);
      goto LABEL_24;
    }
  }
}

void sub_10076E7B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10076E884;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_10076E894(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7 = sub_10000C7D0(v5, v6);
  if (!(*(*v7 + 3280))(v7))
  {
    goto LABEL_26;
  }

  sub_10004DFB4(uu2, v5);
  if (a1 + 1456 == sub_10004E34C(a1 + 1448, uu2))
  {
    goto LABEL_26;
  }

  v60 = 0;
  __p = 0u;
  memset(uu2, 0, sizeof(uu2));
  sub_10004DFB4(__str, v5);
  *buf = __str;
  v8 = sub_100776F00((a1 + 1448), __str, &unk_1008A9BD0, buf, v45);
  *uu2 = v8[6];
  *&uu2[8] = *(v8 + 7);
  *&uu2[24] = *(v8 + 9);
  *&uu2[40] = *(v8 + 22);
  sub_1003A5D88(&__p, v8 + 12);
  *__str = 0;
  sub_100016250(__str);
  v9 = *__str;
  v10 = *&__str[4];
  if (a3)
  {
    v11 = 1;
    v12 = 1;
  }

  else if (*&uu2[24] == 0)
  {
    v13 = *&__str[4] - *&uu2[16] + 1000 * (*__str - *&uu2[8]);
    v14 = *(a1 + 1496);
    *__str = v13 / 0x3E8;
    *&__str[4] = v13 % 0x3E8;
    *&buf[4] = 0;
    *buf = v14;
    v12 = 0;
    v11 = sub_100306C80(__str, buf) > 0;
  }

  else
  {
    v15 = *&__str[4] - *&uu2[32] + 1000 * (*__str - *&uu2[24]);
    v16 = *(a1 + 1500);
    *__str = v15 / 0x3E8;
    *&__str[4] = v15 % 0x3E8;
    *&buf[4] = 0;
    *buf = v16;
    v11 = sub_100306C80(__str, buf) > 0;
    v12 = v11;
  }

  v17 = qword_100BCE980;
  v18 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (!v18)
  {
    goto LABEL_17;
  }

  v62 = 0u;
  v63 = 0u;
  memset(__str, 0, sizeof(__str));
  snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v10);
  sub_100007E30(v45, __str);
  v20 = v46;
  v21 = v45[0];
  sub_10076FFA4(uu2);
  v22 = v45;
  if (v20 < 0)
  {
    v22 = v21;
  }

  if (__str[23] >= 0)
  {
    v23 = __str;
  }

  else
  {
    v23 = *__str;
  }

  *buf = 138413570;
  *&buf[4] = v5;
  v48 = 1024;
  v49 = a3;
  v50 = 1024;
  v51 = v11;
  v52 = 1024;
  v53 = v12;
  v54 = 2080;
  v55 = v22;
  v56 = 2080;
  v57 = v23;
  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateDenyListDevice incoming Device %@ forceUnblock=%d stopMonitoring=%d stopBlocking=%d TimeNow:%ssec entry:%s", buf, 0x32u);
  if (__str[23] < 0)
  {
    operator delete(*__str);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
    if (v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_17:
    if (v12)
    {
LABEL_18:
      v24 = sub_10000C7D0(v18, v19);
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v25 = sub_100046458(off_100B508C8, v5, 0);
      (*(*v24 + 4320))(v24, v25);
    }
  }

  if (v11)
  {
    sub_10004DFB4(__str, v5);
    sub_10077708C((a1 + 1448), __str);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

LABEL_26:
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_65;
  }

  sub_10004DFB4(uu2, v5);
  if (a1 + 1480 == sub_10004E34C(a1 + 1472, uu2))
  {
    goto LABEL_65;
  }

  v60 = 0;
  __p = 0u;
  memset(uu2, 0, sizeof(uu2));
  sub_10004DFB4(__str, v5);
  *buf = __str;
  v26 = sub_100776F00((a1 + 1472), __str, &unk_1008A9BD0, buf, v45);
  *uu2 = v26[6];
  *&uu2[8] = *(v26 + 7);
  *&uu2[24] = *(v26 + 9);
  *&uu2[40] = *(v26 + 22);
  sub_1003A5D88(&__p, v26 + 12);
  *__str = 0;
  sub_100016250(__str);
  v27 = *__str;
  v28 = *&__str[4];
  if (a3)
  {
    v29 = 1;
    v30 = 1;
  }

  else if (*&uu2[24] == 0)
  {
    v31 = *&__str[4] - *&uu2[16] + 1000 * (*__str - *&uu2[8]);
    v32 = *(a1 + 1496);
    *&__str[6] = 0;
    *__str = v31 / 0x3E8;
    *&__str[4] = v31 % 0x3E8;
    *&buf[4] = 0;
    *buf = v32;
    v30 = 0;
    v29 = sub_100306C80(__str, buf) > 0;
  }

  else
  {
    v33 = *&__str[4] - *&uu2[32] + 1000 * (*__str - *&uu2[24]);
    v34 = *(a1 + 1500);
    *&__str[6] = 0;
    *__str = v33 / 0x3E8;
    *&__str[4] = v33 % 0x3E8;
    *&buf[4] = 0;
    *buf = v34;
    v29 = sub_100306C80(__str, buf) > 0;
    v30 = v29;
  }

  v35 = qword_100BCE980;
  if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_42;
  }

  v62 = 0u;
  v63 = 0u;
  memset(__str, 0, sizeof(__str));
  snprintf(__str, 0x3FuLL, "%0llu.%0llu", v27, v28);
  sub_100007E30(v45, __str);
  v36 = v46;
  v37 = v45[0];
  sub_10076FFA4(uu2);
  v38 = v45;
  if (v36 < 0)
  {
    v38 = v37;
  }

  if (__str[23] >= 0)
  {
    v39 = __str;
  }

  else
  {
    v39 = *__str;
  }

  *buf = 138413570;
  *&buf[4] = v5;
  v48 = 1024;
  v49 = a3;
  v50 = 1024;
  v51 = v29;
  v52 = 1024;
  v53 = v30;
  v54 = 2080;
  v55 = v38;
  v56 = 2080;
  v57 = v39;
  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateDenyListDevice outgoing Device %@ forceUnblock=%d stopMonitoring=%d stopBlocking=%d TimeNow:%ssec entry:%s", buf, 0x32u);
  if (__str[23] < 0)
  {
    operator delete(*__str);
  }

  if ((v46 & 0x80000000) == 0)
  {
LABEL_42:
    if (!v29)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  operator delete(v45[0]);
  if (v29)
  {
LABEL_43:
    sub_10004DFB4(__str, v5);
    sub_10077708C((a1 + 1472), __str);
  }

LABEL_44:
  if (v30 && [*(a1 + 760) containsObject:v5])
  {
    [*(a1 + 760) removeObject:v5];
    if (*(a1 + 928))
    {
      v40 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 138543362;
        *&__str[4] = v5;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: Device %{public}@ setDeviceIntoConnectionPendingList ", __str, 0xCu);
      }

      sub_10004DFB4(__str, v5);
      sub_100749E70(a1, __str);
    }

    else
    {
      v41 = sub_10074518C(a1, 0);
      v42 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 138543618;
        *&__str[4] = v5;
        *&__str[12] = 1024;
        *&__str[14] = v41;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: Device %{public}@ cancelAllPendingConnections returned %d ", __str, 0x12u);
      }

      if (v41)
      {
        sub_10074B0D4(a1, v5);
        v43 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 138543362;
          *&__str[4] = v5;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: addToConnectingList %{public}@", __str, 0xCu);
        }

        sub_100753CFC(a1);
      }

      else
      {
        sub_10004DFB4(__str, v5);
        sub_100749E70(a1, __str);
        v44 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 138543362;
          *&__str[4] = v5;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: setDeviceIntoConnectionPendingList %{public}@", __str, 0xCu);
        }
      }
    }
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

LABEL_65:
}

void sub_10076F130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10076FC28(&a26);

  _Unwind_Resume(a1);
}

void sub_10076F1DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10076F2A8;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_10076F2BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10076F388;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_10076F398(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10076F464;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_10076F478(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10076F544;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_10076F554(uint64_t a1)
{
  v2 = *(a1 + 40);
  obj[0] = 0;
  sub_100016250(obj);
  v3 = SLODWORD(obj[0]);
  v4 = SWORD2(obj[0]);
  sub_10004DFB4(obj, *(a1 + 32));
  if (v2 + 1456 == sub_10004E34C(v2 + 1448, obj) || (*(a1 + 52) & 1) != 0)
  {
    v47 = 0;
    *v46 = 0u;
    memset(obj, 0, sizeof(obj));
    *__str = 0;
    sub_100016250(__str);
    obj[1] = *__str;
    obj[2] = *&__str[4];
    if (*(a1 + 52))
    {
      obj[3] = *__str;
      obj[4] = *&__str[4];
      LODWORD(obj[5]) = *(v2 + 1504);
      if (LODWORD(obj[5]))
      {
        v5 = 0;
        do
        {
          sub_10036F480(v46, (a1 + 48));
          ++v5;
        }

        while (v5 < LODWORD(obj[5]));
      }
    }

    else
    {
      memset(&obj[3], 0, 20);
    }

    sub_10004DFB4(__str, *(a1 + 32));
    *__p = __str;
    v6 = sub_100776F00((v2 + 1448), __str, &unk_1008A9BD0, __p, buf);
    objc_storeStrong(v6 + 6, obj[0]);
    if (v6 + 6 == obj)
    {
      *(v6 + 22) = obj[5];
    }

    else
    {
      *(v6 + 7) = *&obj[1];
      *(v6 + 9) = *&obj[3];
      *(v6 + 22) = obj[5];
      sub_1003A5C5C(v6 + 12, v46[0], v46[1], (v46[1] - v46[0]) >> 2);
    }

    v17 = *(a1 + 52);
    v18 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v19 = " ";
      v20 = *(a1 + 32);
      if (v17)
      {
        v19 = "and blocking (forced)";
      }

      *__str = 138412546;
      *&__str[4] = v20;
      *&__str[12] = 2080;
      *&__str[14] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateIncomingDisconnection Device %@ disconnected now, started monitoring %s", __str, 0x16u);
    }

    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v47 = 0;
  *v46 = 0u;
  memset(obj, 0, sizeof(obj));
  sub_10004DFB4(__str, *(a1 + 32));
  *__p = __str;
  v7 = sub_100776F00((v2 + 1448), __str, &unk_1008A9BD0, __p, buf);
  obj[0] = v7[6];
  *&obj[1] = *(v7 + 7);
  *&obj[3] = *(v7 + 9);
  LODWORD(obj[5]) = *(v7 + 22);
  sub_1003A5D88(v46, v7 + 12);
  v8 = v4 - obj[2] + 1000 * (v3 - obj[1]);
  v9 = v8 / 0x3E8;
  v10 = *(v2 + 1496);
  *&__str[6] = 0;
  *__str = v8 / 0x3E8;
  v11 = v8 % 0x3E8;
  *&__str[4] = v8 % 0x3E8;
  *&__p[4] = 0;
  *__p = v10;
  v12 = sub_100306C80(__str, __p);
  if (v12 < 0)
  {
    ++LODWORD(obj[5]);
    obj[1] = v3;
    obj[2] = v4;
    sub_10036F480(v46, (a1 + 48));
    v25 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      v49 = 0u;
      v50 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v11);
      sub_100007E30(buf, __str);
      v27 = v37 >= 0 ? buf : *buf;
      v28 = *(a1 + 48);
      *__p = 138413058;
      *&__p[4] = v26;
      v39 = 2080;
      v40 = v27;
      v41 = 1024;
      v42 = obj[5];
      v43 = 1024;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateIncomingDisconnection Device %@ disconnected %s seconds ago, increasing counter to %d, disconnectResult=%d", __p, 0x22u);
      if (v37 < 0)
      {
        operator delete(*buf);
      }
    }

    v29 = obj[5];
    v30 = *(v2 + 1504);
    v14 = LODWORD(obj[5]) >= v30;
    if (LODWORD(obj[5]) >= v30)
    {
      obj[3] = v3;
      obj[4] = v4;
      v31 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 32);
        *__str = 138412546;
        *&__str[4] = v32;
        *&__str[12] = 1024;
        *&__str[14] = v29;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateIncomingDisconnection Device %@ disconnected, counter:%d started blocking", __str, 0x12u);
      }
    }

    sub_10004DFB4(__str, *(a1 + 32));
    *__p = __str;
    v33 = sub_100776F00((v2 + 1448), __str, &unk_1008A9BD0, __p, buf);
    objc_storeStrong(v33 + 6, obj[0]);
    if (v33 + 6 == obj)
    {
      *(v33 + 22) = obj[5];
    }

    else
    {
      *(v33 + 7) = *&obj[1];
      *(v33 + 9) = *&obj[3];
      *(v33 + 22) = obj[5];
      sub_1003A5C5C(v33 + 12, v46[0], v46[1], (v46[1] - v46[0]) >> 2);
    }
  }

  else
  {
    sub_10004DFB4(__str, *(a1 + 32));
    sub_10077708C((v2 + 1448), __str);
    v13 = qword_100BCE980;
    v14 = 0;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v49 = 0u;
      v50 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v11);
      sub_100007E30(__p, __str);
      if (v41 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = *__p;
      }

      *buf = 138412546;
      *&buf[4] = v15;
      v35 = 2080;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateIncomingDisconnection  Device %@ disconnected %s seconds ago, stop monitoring", buf, 0x16u);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(*__p);
      }

      v14 = 0;
    }
  }

  if (v46[0])
  {
    v46[1] = v46[0];
    operator delete(v46[0]);
  }

  if (v12 < 0)
  {
    if (!v14)
    {
LABEL_30:
      sub_10076FCD0(v2, v22);
      return;
    }

LABEL_27:
    v23 = sub_10000C7D0(v21, v22);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v24 = sub_100046458(off_100B508C8, *(a1 + 32), 0);
    (*(*v23 + 4312))(v23, v24);
    goto LABEL_30;
  }
}

void sub_10076FBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_10076FC28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10076FC28(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10076FC64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  sub_1003A5D88((a1 + 48), (a2 + 48));
  return a1;
}

void sub_10076FCD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  if ((*(*v3 + 3280))(v3))
  {
    v4 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 1464);
      LODWORD(v17) = 134217984;
      *(&v17 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: LeConnectionManager::evaluateDenyListDevices incoming devices:%lu", &v17, 0xCu);
    }

    if (*(a1 + 1464))
    {
      v17 = 0uLL;
      v18 = 0;
      sub_1007770E8(&v17, a1 + 1448);
      v6 = v17;
      if (v17 != (&v17 + 8))
      {
        do
        {
          v7 = sub_10004DF60(v6 + 32);
          sub_10076E894(a1, v7, 0);

          v8 = *(v6 + 1);
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = *(v6 + 2);
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
        }

        while (v9 != (&v17 + 8));
      }

      sub_1007702C0(a1);
      sub_100773BDC(&v17, *(&v17 + 1));
    }
  }

  if (_os_feature_enabled_impl())
  {
    v11 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 1488);
      LODWORD(v17) = 134217984;
      *(&v17 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: LeConnectionManager::evaluateDenyListDevices outgoing devices:%lu", &v17, 0xCu);
    }

    if (*(a1 + 1488))
    {
      v17 = 0uLL;
      v18 = 0;
      sub_1007770E8(&v17, a1 + 1472);
      v13 = v17;
      if (v17 != (&v17 + 8))
      {
        do
        {
          v14 = sub_10004DF60(v13 + 32);
          sub_10076E894(a1, v14, 0);

          v15 = *(v13 + 1);
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = *(v13 + 2);
              v10 = *v16 == v13;
              v13 = v16;
            }

            while (!v10);
          }

          v13 = v16;
        }

        while (v16 != (&v17 + 8));
      }

      sub_1007702C0(a1);
      sub_100773BDC(&v17, *(&v17 + 1));
    }
  }
}

uint64_t sub_10076FFA4(void *a1)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  sub_100007AD0(&v23);
  v2 = std::ostream::operator<<();
  v3 = sub_100007774(v2, " fRecentDisconnectTime", 22);
  sub_1004F5248(a1 + 1, &v20);
  if ((v22 & 0x80u) == 0)
  {
    v4 = &v20;
  }

  else
  {
    LODWORD(v4) = v20;
  }

  if ((v22 & 0x80u) == 0)
  {
    v5 = v22;
  }

  else
  {
    v5 = v21;
  }

  v6 = sub_100007774(v3, v4, v5);
  v7 = sub_100007774(v6, " fStartBlockingTime:", 20);
  sub_1004F5248(a1 + 3, &__p);
  if ((v19 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LODWORD(p_p) = __p;
  }

  if ((v19 & 0x80u) == 0)
  {
    v9 = v19;
  }

  else
  {
    v9 = v18;
  }

  v10 = sub_100007774(v7, p_p, v9);
  sub_100007774(v10, " fDisconnectCount:", 18);
  v11 = std::ostream::operator<<();
  sub_100007774(v11, " DisconnectResults:", 19);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v20);
  }

  v12 = a1[6];
  for (i = a1[7]; v12 != i; v12 += 4)
  {
    v14 = std::ostream::operator<<();
    sub_100007774(v14, " ", 1);
  }

  std::stringbuf::str();
  *&v24 = v15;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[1]);
  }

  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100770270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1007FC91C(&a21);
  _Unwind_Resume(a1);
}

void sub_1007702C0(uint64_t a1)
{
  if (*(a1 + 1512) || sub_10077048C(a1) && (sub_100770AEC(a1) & 1) != 0)
  {

    sub_100745F94(a1);
  }

  else
  {
    v2 = (1000 * *(a1 + 1500)) / 0xAuLL;
    v3 = qword_100BCE980;
    v4 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      *buf = 134217984;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: armPeriodicLeConnectionDenyListTimer %llu ms Armed!", buf, 0xCu);
    }

    v6 = sub_100007EE8(v4, v5);
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v6 + 8));
    *(a1 + 1512) = v7;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100770B54;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v7, handler);
    v8 = *(a1 + 1512);
    v9 = dispatch_time(0x8000000000000000, 1000000 * v2);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 1512));
  }
}

uint64_t sub_10077048C(uint64_t a1)
{
  v1 = *(a1 + 1448);
  if (v1 == (a1 + 1456))
  {
    return 1;
  }

  while (!v1[9] && !v1[10])
  {
    v2 = v1[1];
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *v2;
      }

      while (v2);
    }

    else
    {
      do
      {
        v3 = v1[2];
        v4 = *v3 == v1;
        v1 = v3;
      }

      while (!v4);
    }

    v1 = v3;
    if (v3 == (a1 + 1456))
    {
      return 1;
    }
  }

  return 0;
}

void sub_1007704F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  obj[0] = 0;
  sub_100016250(obj);
  v3 = SLODWORD(obj[0]);
  v4 = SWORD2(obj[0]);
  sub_10004DFB4(obj, *(a1 + 32));
  if (v2 + 1480 == sub_10004E34C(v2 + 1472, obj) || (*(a1 + 52) & 1) != 0)
  {
    v38 = 0;
    *v37 = 0u;
    memset(obj, 0, sizeof(obj));
    *__str = 0;
    sub_100016250(__str);
    obj[1] = *__str;
    obj[2] = *&__str[4];
    if (*(a1 + 52))
    {
      obj[3] = *__str;
      obj[4] = *&__str[4];
      LODWORD(obj[5]) = *(v2 + 1504);
      if (LODWORD(obj[5]))
      {
        v5 = 0;
        do
        {
          sub_10036F480(v37, (a1 + 48));
          ++v5;
        }

        while (v5 < LODWORD(obj[5]));
      }
    }

    else
    {
      memset(&obj[3], 0, 20);
    }

    sub_10004DFB4(__str, *(a1 + 32));
    *__p = __str;
    v6 = sub_100776F00((v2 + 1472), __str, &unk_1008A9BD0, __p, buf);
    objc_storeStrong(v6 + 6, obj[0]);
    if (v6 + 6 == obj)
    {
      *(v6 + 22) = obj[5];
    }

    else
    {
      *(v6 + 7) = *&obj[1];
      *(v6 + 9) = *&obj[3];
      *(v6 + 22) = obj[5];
      sub_1003A5C5C(v6 + 12, v37[0], v37[1], (v37[1] - v37[0]) >> 2);
    }

    v16 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = " ";
      if (*(a1 + 52))
      {
        v18 = "and blocking (forced)";
      }

      *__str = 138412546;
      *&__str[4] = v17;
      *&__str[12] = 2080;
      *&__str[14] = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateOutgoingDisconnection Device %@ disconnected now, started monitoring %s", __str, 0x16u);
    }

    if (v37[0])
    {
      v37[1] = v37[0];
      operator delete(v37[0]);
    }

LABEL_26:
    sub_10076FCD0(v2, v19);
    return;
  }

  v38 = 0;
  *v37 = 0u;
  memset(obj, 0, sizeof(obj));
  sub_10004DFB4(__str, *(a1 + 32));
  *__p = __str;
  v7 = sub_100776F00((v2 + 1472), __str, &unk_1008A9BD0, __p, buf);
  obj[0] = v7[6];
  *&obj[1] = *(v7 + 7);
  *&obj[3] = *(v7 + 9);
  LODWORD(obj[5]) = *(v7 + 22);
  sub_1003A5D88(v37, v7 + 12);
  v8 = v4 - obj[2] + 1000 * (v3 - obj[1]);
  v9 = v8 / 0x3E8;
  v10 = *(v2 + 1496);
  *__str = v8 / 0x3E8;
  v11 = v8 % 0x3E8;
  *&__str[4] = v8 % 0x3E8;
  *&__p[4] = 0;
  *__p = v10;
  v12 = sub_100306C80(__str, __p);
  if (v12 < 0)
  {
    ++LODWORD(obj[5]);
    obj[1] = v3;
    obj[2] = v4;
    sub_10036F480(v37, (a1 + 48));
    v20 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v40 = 0u;
      v41 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v11);
      sub_100007E30(buf, __str);
      v22 = v28 >= 0 ? buf : *buf;
      v23 = *(a1 + 48);
      *__p = 138413058;
      *&__p[4] = v21;
      v30 = 2080;
      v31 = v22;
      v32 = 1024;
      v33 = obj[5];
      v34 = 1024;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateOutgoingDisconnection Device %@ disconnected %s seconds ago, increasing counter to %d, disconnectResult=%d", __p, 0x22u);
      if (v28 < 0)
      {
        operator delete(*buf);
      }
    }

    if (LODWORD(obj[5]) >= *(v2 + 1504))
    {
      obj[3] = v3;
      obj[4] = v4;
    }

    sub_10004DFB4(__str, *(a1 + 32));
    *__p = __str;
    v24 = sub_100776F00((v2 + 1472), __str, &unk_1008A9BD0, __p, buf);
    objc_storeStrong(v24 + 6, obj[0]);
    if (v24 + 6 == obj)
    {
      *(v24 + 22) = obj[5];
    }

    else
    {
      *(v24 + 7) = *&obj[1];
      *(v24 + 9) = *&obj[3];
      *(v24 + 22) = obj[5];
      sub_1003A5C5C(v24 + 12, v37[0], v37[1], (v37[1] - v37[0]) >> 2);
    }
  }

  else
  {
    sub_10004DFB4(__str, *(a1 + 32));
    sub_10077708C((v2 + 1472), __str);
    v13 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v40 = 0u;
      v41 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v11);
      sub_100007E30(__p, __str);
      v15 = v32 >= 0 ? __p : *__p;
      *buf = 138412546;
      *&buf[4] = v14;
      v26 = 2080;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateOutgoingDisconnection  Device %@ disconnected %s seconds ago, stop monitoring", buf, 0x16u);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

  if (v12 < 0)
  {
    goto LABEL_26;
  }
}

void sub_100770A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_10076FC28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100770AEC(uint64_t a1)
{
  v1 = *(a1 + 1472);
  if (v1 == (a1 + 1480))
  {
    return 1;
  }

  while (!v1[9] && !v1[10])
  {
    v2 = v1[1];
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *v2;
      }

      while (v2);
    }

    else
    {
      do
      {
        v3 = v1[2];
        v4 = *v3 == v1;
        v1 = v3;
      }

      while (!v4);
    }

    v1 = v3;
    if (v3 == (a1 + 1480))
    {
      return 1;
    }
  }

  return 0;
}

void sub_100770B54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: fLeConnectionDenyListMaintainTimer Timer expired!", v4, 2u);
  }

  sub_100745F94(v1);
  sub_10076FCD0(v1, v3);
}

void sub_100770BD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (qword_100BC7B18 != -1)
  {
    sub_100872158();
  }

  v6 = sub_100007EE8(v3, v4);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100770E38;
  v8[3] = &unk_100B0AC00;
  v10 = a1;
  v7 = v5;
  v9 = v7;
  sub_10000CA94(v6, v8);
}

void sub_100770CB4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "FastLEConnectionForceFakeLocalControllerInfo");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100BC7B10);
  v3 = byte_100BC7B10;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = byte_100BC7B10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: FastLEConnection:FastLEConnectionForceFakeLocalControllerInfo fakeControllerInfo:%d", buf, 8u);
  }
}

void sub_100770DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100770E38(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 184) == 1 && (v3 = *(v2 + 1584)) != 0 && [v3 length] && *(v2 + 1592))
  {
    v4 = *(v2 + 1584);
    if (byte_100BC7B10 == 1)
    {
      v5 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: FastLEConnection:LeConnectionManager::readLocalControllerCachedInfo randomizing controller info", v9, 2u);
      }

      v6 = [*(v2 + 1584) length];
      v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
      memcpy(v7, [*(v2 + 1584) bytes], v6);
      arc4random_buf(&v7[v6 - 4], 4uLL);
      v8 = [NSData dataWithBytes:v7 length:v6];

      free(v7);
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100770FCC(uint64_t a1)
{
  buf[0].__locale_ = 0;
  sub_100016250(buf);
  v1 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ LE Connection Manager -------------------", buf, 2u);
    v1 = qword_100BCE980;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = sub_100063D0C(*(a1 + 288));
    LODWORD(buf[0].__locale_) = 138543362;
    *(&buf[0].__locale_ + 4) = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Local address %{public}@", buf, 0xCu);
  }

  buf[0].__locale_ = 0;
  sub_100016250(buf);
  locale_low = SLODWORD(buf[0].__locale_);
  v4 = SWORD2(buf[0].__locale_);
  v5 = *(a1 + 872);
  v6 = *(a1 + 880);
  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 1000 * (locale_low - v5) - v6 + v4;
    v9 = *(a1 + 928);
    if (v9 > 3)
    {
      v10 = "UNKNOWN";
    }

    else
    {
      v10 = (&off_100B0BF60)[v9];
    }

    v11 = *(a1 + 864);
    if (v11 > 4)
    {
      v12 = "UNKNOWN";
    }

    else
    {
      v12 = (&off_100B0BF80)[v11];
    }

    memset(buf, 0, sizeof(buf));
    snprintf(buf, 0x3FuLL, "%0llu.%0llu", v8 / 0x3E8, v8 % 0x3E8);
    sub_100007E30(out, buf);
    if (out[23] >= 0)
    {
      v13 = out;
    }

    else
    {
      v13 = *out;
    }

    v14 = *(a1 + 888);
    if (*(a1 + 1065))
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136447746;
    *(&buf[0].__locale_ + 4) = v10;
    WORD2(buf[1].__locale_) = 1024;
    *(&buf[1].__locale_ + 6) = v9;
    WORD1(buf[2].__locale_) = 2082;
    *(&buf[2].__locale_ + 4) = v12;
    WORD2(buf[3].__locale_) = 1024;
    *(&buf[3].__locale_ + 6) = v11;
    WORD1(buf[4].__locale_) = 2082;
    *(&buf[4].__locale_ + 4) = v13;
    WORD2(buf[5].__locale_) = 1024;
    *(&buf[5].__locale_ + 6) = v14;
    WORD1(buf[6].__locale_) = 2082;
    *(&buf[6].__locale_ + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: state: %{public}s(%d),%{public}s(%d) for %{public}s seconds, %d errors, fControllerConnectionListFull=%{public}s", buf, 0x3Cu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 896) != 0;
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v16;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: FastConnectionScanAssertionActive:%d", buf, 8u);
    v7 = qword_100BCE980;
  }

  if (*(a1 + 552) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 560);
    LODWORD(buf[0].__locale_) = 134217984;
    *(&buf[0].__locale_ + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: FastConnectionScanTimer interval:%f", buf, 0xCu);
    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 1067);
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: stackIsShuttingDown:%d", buf, 8u);
    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: Connected devices:", buf, 2u);
  }

  v19 = *(a1 + 384);
  if (v19 != (a1 + 392))
  {
    v20 = (a1 + 536);
    v21 = (a1 + 512);
    do
    {
      v266 = 0;
      v265 = 0u;
      v264 = 0u;
      v263 = 0u;
      v262 = 0u;
      v261 = 0u;
      v260 = 0u;
      v259 = 0u;
      v258 = 0u;
      v257 = 0u;
      v256 = 0u;
      v255 = 0u;
      *v254 = 0u;
      v253 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100007AD0(buf);
      if (a1 + 416 == sub_10004E34C(a1 + 408, v19 + 32))
      {
        v242[1] = 0;
        v242[0] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v26 = off_100B508C8;
        v27 = sub_10004DF60(v19 + 32);
        sub_10078CCAC(v26, v27, v242);

        v28 = sub_100007774(&buf[2].__locale_, "   ", 3);
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(v19 + 32, out);
        sub_100007E30(__p, out);
        if ((v251 & 0x80u) == 0)
        {
          v29 = __p;
        }

        else
        {
          LODWORD(v29) = __p[0];
        }

        if ((v251 & 0x80u) == 0)
        {
          v30 = v251;
        }

        else
        {
          v30 = __p[1];
        }

        v31 = sub_100007774(v28, v29, v30);
        v32 = sub_100007774(v31, " (not ready, added ", 19);
        sub_100773740(v242);
        if (out[23] >= 0)
        {
          v33 = out;
        }

        else
        {
          LODWORD(v33) = *out;
        }

        if (out[23] >= 0)
        {
          v34 = out[23];
        }

        else
        {
          v34 = *&out[8];
        }

        v35 = sub_100007774(v32, v33, v34);
        sub_100007774(v35, " ago)", 5);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      else
      {
        v22 = sub_100007774(&buf[2].__locale_, "   ", 3);
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(v19 + 32, out);
        sub_100007E30(__p, out);
        if ((v251 & 0x80u) == 0)
        {
          v23 = __p;
        }

        else
        {
          LODWORD(v23) = __p[0];
        }

        if ((v251 & 0x80u) == 0)
        {
          v24 = v251;
        }

        else
        {
          v24 = __p[1];
        }

        v25 = sub_100007774(v22, v23, v24);
        sub_100007774(v25, " (ready)", 8);
      }

      if (v251 < 0)
      {
        operator delete(__p[0]);
      }

      v36 = v19 + 6;
      v37 = *v20;
      if (*v20)
      {
        v38 = *v36;
        v39 = (a1 + 536);
        do
        {
          v40 = v37[4];
          v41 = v40 >= v38;
          v42 = v40 < v38;
          if (v41)
          {
            v39 = v37;
          }

          v37 = v37[v42];
        }

        while (v37);
        if (v39 != v20 && v38 >= v39[4])
        {
          sub_100007774(&buf[2].__locale_, " | CI: ", 7);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6, &unk_1008A9BD0, out);
          v43 = std::ostream::operator<<();
          sub_100007774(v43, " PL: ", 5);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6, &unk_1008A9BD0, out);
          v44 = std::ostream::operator<<();
          sub_100007774(v44, " LSTO: ", 7);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6, &unk_1008A9BD0, out);
          v45 = std::ostream::operator<<();
          sub_100007774(v45, " SubrateFactor: ", 16);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6, &unk_1008A9BD0, out);
          v46 = std::ostream::operator<<();
          sub_100007774(v46, " CN: ", 5);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6, &unk_1008A9BD0, out);
          v47 = std::ostream::operator<<();
          sub_100007774(v47, " SubrateStatus: ", 16);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6, &unk_1008A9BD0, out);
          std::ostream::operator<<();
        }
      }

      v48 = *v21;
      if (*v21)
      {
        v49 = *v36;
        v50 = (a1 + 512);
        do
        {
          v51 = v48[4];
          v41 = v51 >= v49;
          v52 = v51 < v49;
          if (v41)
          {
            v50 = v48;
          }

          v48 = v48[v52];
        }

        while (v48);
        if (v50 != v21 && v49 >= v50[4])
        {
          sub_100007774(&buf[2].__locale_, " | Max PL: ", 11);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6, &unk_1008A9BD0, out);
          v53 = std::ostream::operator<<();
          sub_100007774(v53, " Min. SubrateFactor: ", 21);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6, &unk_1008A9BD0, out);
          v54 = std::ostream::operator<<();
          sub_100007774(v54, "Max. SubrateFactor: ", 20);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6, &unk_1008A9BD0, out);
          v55 = std::ostream::operator<<();
          sub_100007774(v55, " CN: ", 5);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6, &unk_1008A9BD0, out);
          v56 = std::ostream::operator<<();
          sub_100007774(v56, " LSTO: ", 7);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6, &unk_1008A9BD0, out);
          v57 = std::ostream::operator<<();
          sub_100007774(v57, " msec", 5);
        }
      }

      v58 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v59 = out;
        if (out[23] < 0)
        {
          v59 = *out;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v59;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", __p, 0xCu);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      buf[0].__locale_ = v210;
      *(&buf[0].__locale_ + *(v210 - 3)) = v209;
      buf[2].__locale_ = v208;
      if (SHIBYTE(v255) < 0)
      {
        operator delete(v254[1]);
      }

      std::locale::~locale(&buf[4]);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v60 = v19[1];
      if (v60)
      {
        do
        {
          v61 = v60;
          v60 = *v60;
        }

        while (v60);
      }

      else
      {
        do
        {
          v61 = v19[2];
          v62 = *v61 == v19;
          v19 = v61;
        }

        while (!v62);
      }

      v19 = v61;
    }

    while (v61 != (a1 + 392));
  }

  v63 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump: UUIDToSessionMap :  fRSSIDetectionUUIDToSessionMap", buf, 2u);
    v63 = qword_100BCE980;
  }

  v64 = *(a1 + 640);
  if (v64 != (a1 + 648))
  {
    do
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v65 = sub_10004DF60(v64 + 32);
        v66 = v65;
        v67 = (v64 + 56);
        if (v64[79] < 0)
        {
          v67 = *v67;
        }

        LODWORD(buf[0].__locale_) = 138543618;
        *(&buf[0].__locale_ + 4) = v65;
        WORD2(buf[1].__locale_) = 2082;
        *(&buf[1].__locale_ + 6) = v67;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump:  Device%{public}@ : Session:%{public}s", buf, 0x16u);

        v63 = qword_100BCE980;
      }

      v68 = *(v64 + 1);
      if (v68)
      {
        do
        {
          v69 = v68;
          v68 = *v68;
        }

        while (v68);
      }

      else
      {
        do
        {
          v69 = *(v64 + 2);
          v62 = *v69 == v64;
          v64 = v69;
        }

        while (!v62);
      }

      v64 = v69;
    }

    while (v69 != (a1 + 648));
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump: UUIDToSessionMap : fUsageNotificationUUIDToSessionMap", buf, 2u);
    v63 = qword_100BCE980;
  }

  v70 = *(a1 + 664);
  if (v70 != (a1 + 672))
  {
    do
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v71 = sub_10004DF60(v70 + 32);
        LODWORD(buf[0].__locale_) = 138543362;
        *(&buf[0].__locale_ + 4) = v71;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump:  Device%{public}@ : Session", buf, 0xCu);

        v63 = qword_100BCE980;
      }

      v72 = *(v70 + 1);
      if (v72)
      {
        do
        {
          v73 = v72;
          v72 = *v72;
        }

        while (v72);
      }

      else
      {
        do
        {
          v73 = *(v70 + 2);
          v62 = *v73 == v70;
          v70 = v73;
        }

        while (!v62);
      }

      v70 = v73;
    }

    while (v73 != (a1 + 672));
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump: SessionToUUIDMap fUsagePhyStatisticsUUIDToSessionMap :  ", buf, 2u);
    v63 = qword_100BCE980;
  }

  v74 = *(a1 + 688);
  if (v74 != (a1 + 696))
  {
    do
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v75 = sub_10004DF60(v74 + 40);
        LODWORD(buf[0].__locale_) = 138543362;
        *(&buf[0].__locale_ + 4) = v75;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump:  Session:  : Device%{public}@", buf, 0xCu);

        v63 = qword_100BCE980;
      }

      v76 = *(v74 + 1);
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        do
        {
          v77 = *(v74 + 2);
          v62 = *v77 == v74;
          v74 = v77;
        }

        while (!v62);
      }

      v74 = v77;
    }

    while (v77 != (a1 + 696));
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump: SessionToUUIDMap fUsagePhyStatisticsSubratingToSessionMap :  ", buf, 2u);
    v63 = qword_100BCE980;
  }

  v78 = *(a1 + 712);
  if (v78 != (a1 + 720))
  {
    do
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v79 = *(v78 + 20);
        LODWORD(buf[0].__locale_) = 67109120;
        HIDWORD(buf[0].__locale_) = v79;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump:  Session:  : %d", buf, 8u);
        v63 = qword_100BCE980;
      }

      v80 = v78[1];
      if (v80)
      {
        do
        {
          v81 = v80;
          v80 = *v80;
        }

        while (v80);
      }

      else
      {
        do
        {
          v81 = v78[2];
          v62 = *v81 == v78;
          v78 = v81;
        }

        while (!v62);
      }

      v78 = v81;
    }

    while (v81 != (a1 + 720));
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v82 = *(a1 + 736);
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v82;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump: fLastGLobalMinRSSIApplied : %d", buf, 8u);
    v63 = qword_100BCE980;
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump: Ready devices:", buf, 2u);
  }

  v83 = *(a1 + 408);
  if (v83 != (a1 + 416))
  {
    do
    {
      v84 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v83 + 32, buf);
        sub_100007E30(out, buf);
        v85 = out[23] >= 0 ? out : *out;
        LODWORD(buf[0].__locale_) = 136446210;
        *(&buf[0].__locale_ + 4) = v85;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v86 = *(v83 + 1);
      if (v86)
      {
        do
        {
          v87 = v86;
          v86 = *v86;
        }

        while (v86);
      }

      else
      {
        do
        {
          v87 = *(v83 + 2);
          v62 = *v87 == v83;
          v83 = v87;
        }

        while (!v62);
      }

      v83 = v87;
    }

    while (v87 != (a1 + 416));
  }

  v88 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "statedump: Devices with CL Info:", buf, 2u);
  }

  v89 = *(a1 + 432);
  if (v89 != (a1 + 440))
  {
    do
    {
      v90 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v89 + 32, buf);
        sub_100007E30(out, buf);
        v91 = out[23] >= 0 ? out : *out;
        LODWORD(buf[0].__locale_) = 136446210;
        *(&buf[0].__locale_ + 4) = v91;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v92 = *(v89 + 1);
      if (v92)
      {
        do
        {
          v93 = v92;
          v92 = *v92;
        }

        while (v92);
      }

      else
      {
        do
        {
          v93 = *(v89 + 2);
          v62 = *v93 == v89;
          v89 = v93;
        }

        while (!v62);
      }

      v89 = v93;
    }

    while (v93 != (a1 + 440));
  }

  v94 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "statedump: Connecting devices:", buf, 2u);
  }

  v95 = a1;
  v96 = *(a1 + 336);
  v97 = (a1 + 344);
  if (v96 != (a1 + 344))
  {
    v98 = (a1 + 368);
    do
    {
      *__p = 0uLL;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v99 = off_100B508C8;
      v100 = sub_10004DF60(v96 + 25);
      sub_10078CCAC(v99, v100, __p);

      v101 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v212 = sub_10004DF60(v96 + 25);
        sub_100773740(__p);
        if (out[23] >= 0)
        {
          v102 = out;
        }

        else
        {
          v102 = *out;
        }

        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v103 = off_100B508C8;
        v211 = sub_10004DF60(v96 + 25);
        v104 = sub_100788D8C(v103, v211);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v105 = off_100B508C8;
        v106 = sub_10004DF60(v96 + 25);
        v107 = v97;
        v108 = sub_10078FD20(v105, v106);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v109 = off_100B508C8;
        v110 = sub_10004DF60(v96 + 25);
        v111 = sub_10078FE38(v109, v110);
        LODWORD(buf[0].__locale_) = 138544386;
        *(&buf[0].__locale_ + 4) = v212;
        WORD2(buf[1].__locale_) = 2082;
        *(&buf[1].__locale_ + 6) = v102;
        HIWORD(buf[2].__locale_) = 1024;
        LODWORD(buf[3].__locale_) = v104;
        WORD2(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 6) = v108;
        WORD1(buf[4].__locale_) = 1024;
        HIDWORD(buf[4].__locale_) = v111;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@ (added %{public}s ago) useCase:%d scanDutyCycle screenON:%d screenOFF:%d", buf, 0x28u);

        v97 = v107;
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v112 = *(a1 + 360);
      if (v112 != v98)
      {
        do
        {
          v113 = sub_10004DF60(v96 + 25);
          sub_10004DFB4(buf, v113);
          v114 = uuid_compare(v112 + 40, buf) == 0;

          if (v114)
          {
            v115 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              sub_100777574(*(v112 + 4));
              locale = buf;
              if (SHIBYTE(buf[2].__locale_) < 0)
              {
                locale = buf[0].__locale_;
              }

              *out = 136315138;
              *&out[4] = locale;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "statedump:       %s", out, 0xCu);
              if (SHIBYTE(buf[2].__locale_) < 0)
              {
                operator delete(buf[0].__locale_);
              }
            }
          }

          v117 = *(v112 + 1);
          if (v117)
          {
            do
            {
              v118 = v117;
              v117 = *v117;
            }

            while (v117);
          }

          else
          {
            do
            {
              v118 = *(v112 + 2);
              v62 = *v118 == v112;
              v112 = v118;
            }

            while (!v62);
          }

          v112 = v118;
        }

        while (v118 != v98);
      }

      v119 = *(v96 + 1);
      if (v119)
      {
        do
        {
          v120 = v119;
          v119 = *v119;
        }

        while (v119);
      }

      else
      {
        do
        {
          v120 = *(v96 + 2);
          v62 = *v120 == v96;
          v96 = v120;
        }

        while (!v62);
      }

      v96 = v120;
      v95 = a1;
    }

    while (v120 != v97);
  }

  v121 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "statedump: Disconnection reason map:", buf, 2u);
  }

  v122 = *(v95 + 456);
  v123 = (v95 + 464);
  if (v122 != v123)
  {
    do
    {
      v124 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v122 + 28, buf);
        sub_100007E30(out, buf);
        v125 = out[23] >= 0 ? out : *out;
        v126 = sub_10074D290(a1, *(v122 + 11));
        LODWORD(buf[0].__locale_) = 136446466;
        *(&buf[0].__locale_ + 4) = v125;
        WORD2(buf[1].__locale_) = 2082;
        *(&buf[1].__locale_ + 6) = v126;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s:%{public}s", buf, 0x16u);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v127 = v122[1];
      if (v127)
      {
        do
        {
          v128 = v127;
          v127 = *v127;
        }

        while (v127);
      }

      else
      {
        do
        {
          v128 = v122[2];
          v62 = *v128 == v122;
          v122 = v128;
        }

        while (!v62);
      }

      v122 = v128;
    }

    while (v128 != v123);
  }

  v129 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "statedump: Devices pending to go into filter accept list:", buf, 2u);
  }

  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v130 = *(a1 + 768);
  v131 = [v130 countByEnumeratingWithState:&v238 objects:v249 count:16];
  if (v131)
  {
    v132 = *v239;
    do
    {
      for (i = 0; i != v131; i = i + 1)
      {
        if (*v239 != v132)
        {
          objc_enumerationMutation(v130);
        }

        v134 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v135 = *(*(&v238 + 1) + 8 * i);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v135;
          _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v131 = [v130 countByEnumeratingWithState:&v238 objects:v249 count:16];
    }

    while (v131);
  }

  v136 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "statedump: Devices pending to go out of filter accept list:", buf, 2u);
  }

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v137 = *(a1 + 776);
  v138 = [v137 countByEnumeratingWithState:&v234 objects:v248 count:16];
  if (v138)
  {
    v139 = *v235;
    do
    {
      for (j = 0; j != v138; j = j + 1)
      {
        if (*v235 != v139)
        {
          objc_enumerationMutation(v137);
        }

        v141 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v142 = *(*(&v234 + 1) + 8 * j);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v142;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v138 = [v137 countByEnumeratingWithState:&v234 objects:v248 count:16];
    }

    while (v138);
  }

  v143 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "statedump: Devices pending to get updated in FilterAcceptList:", buf, 2u);
  }

  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v144 = *(a1 + 784);
  v145 = [v144 countByEnumeratingWithState:&v230 objects:v247 count:16];
  if (v145)
  {
    v146 = *v231;
    do
    {
      for (k = 0; k != v145; k = k + 1)
      {
        if (*v231 != v146)
        {
          objc_enumerationMutation(v144);
        }

        v148 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v149 = *(*(&v230 + 1) + 8 * k);
          LODWORD(buf[0].__locale_) = 138412290;
          *(&buf[0].__locale_ + 4) = v149;
          _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "statedump:    %@", buf, 0xCu);
        }
      }

      v145 = [v144 countByEnumeratingWithState:&v230 objects:v247 count:16];
    }

    while (v145);
  }

  v150 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "statedump: Overflowed connecting devices:", buf, 2u);
  }

  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v151 = *(a1 + 752);
  v152 = [v151 countByEnumeratingWithState:&v226 objects:v246 count:16];
  if (v152)
  {
    v153 = *v227;
    do
    {
      for (m = 0; m != v152; m = m + 1)
      {
        if (*v227 != v153)
        {
          objc_enumerationMutation(v151);
        }

        v155 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v156 = *(*(&v226 + 1) + 8 * m);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v156;
          _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v152 = [v151 countByEnumeratingWithState:&v226 objects:v246 count:16];
    }

    while (v152);
  }

  v157 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "statedump: Blocked connecting devices:", buf, 2u);
  }

  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v158 = *(a1 + 760);
  v159 = [v158 countByEnumeratingWithState:&v222 objects:v245 count:16];
  if (v159)
  {
    v160 = *v223;
    do
    {
      for (n = 0; n != v159; n = n + 1)
      {
        if (*v223 != v160)
        {
          objc_enumerationMutation(v158);
        }

        v162 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v163 = *(*(&v222 + 1) + 8 * n);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v163;
          _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v159 = [v158 countByEnumeratingWithState:&v222 objects:v245 count:16];
    }

    while (v159);
  }

  v164 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "statedump: Disconnecting devices:", buf, 2u);
  }

  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v165 = *(a1 + 744);
  v166 = [v165 countByEnumeratingWithState:&v218 objects:v244 count:16];
  if (v166)
  {
    v167 = *v219;
    do
    {
      for (ii = 0; ii != v166; ii = ii + 1)
      {
        if (*v219 != v167)
        {
          objc_enumerationMutation(v165);
        }

        v169 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v170 = *(*(&v218 + 1) + 8 * ii);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v170;
          _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v166 = [v165 countByEnumeratingWithState:&v218 objects:v244 count:16];
    }

    while (v166);
  }

  v171 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "statedump: Requiring low latency devices:", buf, 2u);
  }

  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v172 = *(a1 + 824);
  v173 = [v172 countByEnumeratingWithState:&v214 objects:v243 count:16];
  if (v173)
  {
    v174 = *v215;
    do
    {
      for (jj = 0; jj != v173; jj = jj + 1)
      {
        if (*v215 != v174)
        {
          objc_enumerationMutation(v172);
        }

        v176 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v177 = *(*(&v214 + 1) + 8 * jj);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v177;
          _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v173 = [v172 countByEnumeratingWithState:&v214 objects:v243 count:16];
    }

    while (v173);
  }

  v178 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "statedump: Incoming LE Connection Deny List:", buf, 2u);
    v178 = qword_100BCE980;
  }

  v179 = *(a1 + 1448);
  if (v179 != (a1 + 1456))
  {
    do
    {
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        v180 = sub_10004DF60(v179 + 32);
        sub_10076FFA4(v179 + 6);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v181 = buf;
        }

        else
        {
          v181 = buf[0].__locale_;
        }

        *out = 138543618;
        *&out[4] = v180;
        *&out[12] = 2082;
        *&out[14] = v181;
        _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@ %{public}s", out, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }

        v178 = qword_100BCE980;
      }

      v182 = *(v179 + 1);
      if (v182)
      {
        do
        {
          v183 = v182;
          v182 = *v182;
        }

        while (v182);
      }

      else
      {
        do
        {
          v183 = *(v179 + 2);
          v62 = *v183 == v179;
          v179 = v183;
        }

        while (!v62);
      }

      v179 = v183;
    }

    while (v183 != (a1 + 1456));
  }

  if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "statedump: Outgoing LE Connection Deny List:", buf, 2u);
    v178 = qword_100BCE980;
  }

  v184 = *(a1 + 1472);
  if (v184 != (a1 + 1480))
  {
    do
    {
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        v185 = sub_10004DF60(v184 + 32);
        sub_10076FFA4(v184 + 6);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v186 = buf;
        }

        else
        {
          v186 = buf[0].__locale_;
        }

        *out = 138543618;
        *&out[4] = v185;
        *&out[12] = 2082;
        *&out[14] = v186;
        _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@ %{public}s", out, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }

        v178 = qword_100BCE980;
      }

      v187 = *(v184 + 1);
      if (v187)
      {
        do
        {
          v188 = v187;
          v187 = *v187;
        }

        while (v187);
      }

      else
      {
        do
        {
          v188 = *(v184 + 2);
          v62 = *v188 == v184;
          v184 = v188;
        }

        while (!v62);
      }

      v184 = v188;
    }

    while (v188 != (a1 + 1480));
  }

  if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "statedump: Controller AutoReconnect map:", buf, 2u);
  }

  v189 = *(a1 + 800);
  if (v189 != (a1 + 808))
  {
    do
    {
      v190 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v189 + 26, buf);
        sub_100007E30(out, buf);
        v191 = out[23] >= 0 ? out : *out;
        v192 = *(v189 + 21);
        LODWORD(buf[0].__locale_) = 136446466;
        *(&buf[0].__locale_ + 4) = v191;
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = v192;
        _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s timeout:%d", buf, 0x12u);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v193 = *(v189 + 1);
      if (v193)
      {
        do
        {
          v194 = v193;
          v193 = *v193;
        }

        while (v193);
      }

      else
      {
        do
        {
          v194 = *(v189 + 2);
          v62 = *v194 == v189;
          v189 = v194;
        }

        while (!v62);
      }

      v189 = v194;
    }

    while (v194 != (a1 + 808));
  }

  v195 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "statedump: LEConnection configured Parameters:", buf, 2u);
  }

  v196 = *(a1 + 528);
  if (v196 != (a1 + 536))
  {
    v197 = qword_100BCE980;
    do
    {
      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
      {
        v198 = v196[4];
        v199 = *(v196 + 20);
        v200 = *(v196 + 21);
        v201 = *(v196 + 22);
        LODWORD(buf[0].__locale_) = 134349824;
        *(&buf[0].__locale_ + 4) = v198;
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = v199;
        WORD1(buf[2].__locale_) = 1024;
        HIDWORD(buf[2].__locale_) = v200;
        LOWORD(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 2) = v201;
        _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}p connInt:%d periLatency:%d supervisionTimeout:%d", buf, 0x1Eu);
        v197 = qword_100BCE980;
      }

      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
      {
        v202 = v196[4];
        v203 = *(v196 + 23);
        v204 = *(v196 + 24);
        v205 = *(v196 + 31);
        LODWORD(buf[0].__locale_) = 134349824;
        *(&buf[0].__locale_ + 4) = v202;
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = v203;
        WORD1(buf[2].__locale_) = 1024;
        HIDWORD(buf[2].__locale_) = v204;
        LOWORD(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 2) = v205;
        _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}p subrate:%d contNum:%d LE1M:%d", buf, 0x1Eu);
        v197 = qword_100BCE980;
      }

      v206 = v196[1];
      if (v206)
      {
        do
        {
          v207 = v206;
          v206 = *v206;
        }

        while (v206);
      }

      else
      {
        do
        {
          v207 = v196[2];
          v62 = *v207 == v196;
          v196 = v207;
        }

        while (!v62);
      }

      v196 = v207;
    }

    while (v207 != (a1 + 536));
  }

  sub_100769BA0(a1);
  sub_100769FF8(a1);
}

uint64_t sub_100773740(unint64_t *a1)
{
  v1 = *a1;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  v13 = 0u;
  sub_100007AD0(&v12);
  if (v1 >> 7 >= 0x2A3)
  {
    v2 = std::ostream::operator<<();
    sub_100007774(v2, "days, ", 6);
  }

  v3 = v1 % 0x15180;
  if (v3 >= 0xE10)
  {
    v4 = std::ostream::operator<<();
    sub_100007774(v4, "hours, ", 7);
  }

  if (v3 % 0xE10 >= 0x3C)
  {
    v5 = std::ostream::operator<<();
    sub_100007774(v5, "minutes, ", 9);
  }

  v6 = std::ostream::operator<<();
  v7 = sub_100007774(v6, ".", 1);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 16) = 3;
  *(v7 + *(v8 - 24) + 24) = 3;
  v11 = 48;
  sub_10004DE98(v7, &v11);
  std::ostream::operator<<();
  std::stringbuf::str();
  *&v13 = v9;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100773A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1007FC91C(va);
  _Unwind_Resume(a1);
}

void sub_100773A64(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 49);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);

  sub_100740150(v2, v3, v4, v6, v5, v7);
}

uint64_t sub_100773ADC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100773B24(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  return sub_100763050(v2, (a1 + 24));
}

void sub_100773B78(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100773B78(a1, *a2);
    sub_100773B78(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

void sub_100773BDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100773BDC(a1, *a2);
    sub_100773BDC(a1, a2[1]);
    sub_100773C38(a2 + 4);

    operator delete(a2);
  }
}

void sub_100773C38(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
}

void sub_100773C7C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100773C7C(a1, *a2);
    sub_100773C7C(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_100773D48(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_100773DEC();
  }

  return result;
}

void sub_100773E58(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_100773E70(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = *(v4 + 28);
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

uint64_t sub_100773F44(uint64_t **a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v6 = 0;
  v4 = *sub_100773FE4(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_100773FE4(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 28);
        v10 = *(v8 + 8);
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_15:
  *a2 = v8;
  return result;
}

uint64_t sub_1007740CC(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 28);
    v10 = v8 == v5;
    v9 = v8 < v5;
    if (v10)
    {
      v9 = *(v3 + 32) < v6;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 28);
  v13 = v6 < *(v7 + 32);
  v10 = v5 == v12;
  v14 = v5 < v12;
  if (v10)
  {
    v14 = v13;
  }

  if (v14)
  {
    return v2;
  }

  return v7;
}

void *sub_10077444C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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

char *sub_100774520(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1007746BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007746F4(uint64_t a1, unsigned __int8 *uu2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = uuid_compare((v3 + 26), uu2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || uuid_compare(uu2, (v5 + 26)) < 0)
  {
    return v2;
  }

  return v5;
}

void *sub_100774770(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    sub_100774834();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = v5[4];
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

void sub_1007748A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_1007748BC(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_1000867EC(a1, &v6, a2);
  if (!result)
  {
    sub_100774960();
  }

  return result;
}

void sub_100774A00(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100774A1C(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100774AC0(a1, &v6, uu1);
  if (!result)
  {
    sub_100774B48();
  }

  return result;
}

const unsigned __int8 *sub_100774AC0(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *uu1)
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
        if ((uuid_compare(uu1, v4 + 28) & 0x80000000) == 0)
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

      if ((uuid_compare(v7 + 28, uu1) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
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

void sub_100774BB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100774BCC(uint64_t a1, unsigned __int8 *uu2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = uuid_compare((v3 + 28), uu2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || uuid_compare(uu2, (v5 + 28)) < 0)
  {
    return v2;
  }

  return v5;
}

void *sub_100774C48(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100774AC0(a1, &v6, uu1);
  if (!result)
  {
    sub_100774CEC();
  }

  return result;
}

void sub_100774D64(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100774D7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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

void *sub_100774E50(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_100774EF4();
  }

  return result;
}

void sub_100774F74(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10067DA0C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100774FF8(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_10077509C();
  }

  return result;
}

void sub_10077511C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100775138(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100775138(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
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

uint64_t *sub_10077519C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  operator delete(a2);
  return v3;
}

void *sub_1007751E0(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_100775284();
  }

  return result;
}

void sub_1007752F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100775308(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    sub_1007753CC();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = v5[4];
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

void sub_10077543C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100775454(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_1007754F8();
  }

  return result;
}

void sub_100775564(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_1007755E4(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t sub_10077571C(void *a1, const unsigned __int8 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000C7698();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_1007758EC(a1, v7);
  }

  __p = 0;
  v11 = 16 * v2;
  v13 = 0;
  uuid_copy((16 * v2), a2);
  v12 = 16 * v2 + 16;
  sub_100775848(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_100775810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100775848(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = (v4 + *a1 - v6);
    do
    {
      uuid_copy(v8, v5);
      v5 += 16;
      v8 += 16;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = v5;
  a2[1] = v5;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_1007758EC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_100775934(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_1007759D8(a1, &v6, uu1);
  if (!result)
  {
    sub_100775A60();
  }

  return result;
}

const unsigned __int8 *sub_1007759D8(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *uu1)
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
        if ((uuid_compare(uu1, v4 + 26) & 0x80000000) == 0)
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

      if ((uuid_compare(v7 + 26, uu1) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
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

void sub_100775ACC(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100775BB4(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_1007759D8(a1, &v6, uu1);
  if (!result)
  {
    sub_100775C58();
  }

  return result;
}

void sub_100775CC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100775CDC(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_100774BCC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_100775D30(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_1007746F4(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_100775D84(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  sub_100097C34(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100775DDC(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100774AC0(a1, &v6, uu1);
  if (!result)
  {
    sub_100775E80();
  }

  return result;
}

void sub_100775EF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100775F10(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100775F68(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100775F68(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100775FF0(v5, (v5 + 8), v4 + 4, v4 + 4);
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

void *sub_100775FF0(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_1000988F0(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10077608C(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

void *sub_100776130(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_1000867EC(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1007761E4();
  }

  return v5;
}

uint64_t sub_10077625C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1003C473C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_1007762A8(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 3) = __dst + 24;
  *(__dst + 4) = __dst + 24;
  *(__dst + 5) = 0;
  return __dst;
}

uint64_t *sub_100776304(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    *(i + 1) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return sub_100776354(a1, a1, a2, a3);
  }

  else
  {
    return sub_1000C1358(a1, i, a1);
  }
}

uint64_t *sub_100776354(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void *sub_100776440(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_1000867EC(a1, &v6, a2);
  if (!result)
  {
    sub_1007764E4();
  }

  return result;
}

void sub_100776580(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10077659C(uint64_t **a1, uint64_t **a2, unint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      if ((*a4)((*a2 + 2), (a1 + 2)))
      {
        v10 = *v8;
        v9 = v8[1];
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v4;
        *(v11 + 8) = v8;
        *v8 = v11;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v13 = a3 >> 1;
      v14 = (a3 >> 1) + 1;
      v15 = a1;
      do
      {
        v15 = v15[1];
        --v14;
      }

      while (v14 > 1);
      v16 = sub_10077659C(a1, v15, a3 >> 1, a4);
      v4 = sub_10077659C(v15, a2, a3 - v13, a4);
      if ((*a4)((v4 + 2), (v16 + 2)))
      {
          ;
        }

        v19 = *i;
        v20 = *(*i + 8);
        v21 = *v4;
        *(v21 + 8) = v20;
        *v20 = v21;
        v22 = *v16;
        v18 = v16[1];
        *(v22 + 8) = v4;
        *v4 = v22;
        *v16 = v19;
        v19[1] = v16;
      }

      else
      {
        v18 = v16[1];
        i = v4;
        v4 = v16;
      }

      if (v18 != i && i != a2)
      {
        v23 = i;
        do
        {
          if ((*a4)((i + 2), (v18 + 2)))
          {
              ;
            }

            v25 = *j;
            v26 = *(*j + 8);
            v27 = *i;
            v27[1] = v26;
            *v26 = v27;
            if (v23 == i)
            {
              v23 = j;
            }

            v29 = *v18;
            v28 = v18[1];
            v29[1] = i;
            *i = v29;
            *v18 = v25;
            v25[1] = v18;
            v18 = v28;
            i = j;
          }

          else
          {
            v18 = v18[1];
          }
        }

        while (v18 != v23 && i != a2);
      }
    }
  }

  return v4;
}

void sub_100776794(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10076BFD8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1007767E8(unint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v7 = sub_100776854(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *v3 = v4;
    v5 = *(a2 + 1);
    *(v3 + 24) = *(a2 + 6);
    *(v3 + 8) = v5;
    v6 = a2[4];
    a2[4] = 0;
    *(v3 + 32) = v6;
    v7 = v3 + 40;
  }

  a1[1] = v7;
  return v7 - 40;
}

uint64_t sub_100776854(unint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000C7698();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10077699C(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = 40 * v2;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *a2 = 0;
  *v7 = v8;
  v9 = *(a2 + 1);
  *(v7 + 24) = *(a2 + 6);
  *(v7 + 8) = v9;
  v10 = a2[4];
  a2[4] = 0;
  *(v7 + 32) = v10;
  *&v19 = 40 * v2 + 40;
  v11 = a1[1];
  v12 = 40 * v2 + *a1 - v11;
  sub_1007769F4(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_100776A84(&v17);
  return v16;
}

void sub_100776988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100776A84(va);
  _Unwind_Resume(a1);
}

void sub_10077699C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1007769F4(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      *a4 = v5;
      v6 = *(v4 + 1);
      *(a4 + 24) = *(v4 + 6);
      *(a4 + 8) = v6;
      v7 = v4[4];
      v4[4] = 0;
      *(a4 + 32) = v7;
      v4 += 5;
      a4 += 40;
    }

    while (v4 != a3);
  }

  sub_100776A3C(a1, a2, a3);
}

void sub_100776A3C(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t sub_100776A84(uint64_t a1)
{
  sub_100776ABC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100776ABC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }
}

uint64_t *sub_100776B18(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100776B78(result, a4);
  }

  return result;
}

void sub_100776B78(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_10077699C(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_100776BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(a4 + 32) = objc_retainBlock(*(v6 + 32));
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
  }

  return a4;
}

uint64_t sub_100776C38(uint64_t **a1, const void **a2)
{
  v3 = sub_1000463C8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_100079DEC(a1, v3);
  return 1;
}

void *sub_100776CC8(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_10004A7D0(a1, &v6, uu1);
  if (!result)
  {
    sub_100776D6C();
  }

  return result;
}

void sub_100776DF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100776E10(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100776E10(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_100776E74(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_100776EBC(a1, v3);
  return 1;
}

uint64_t *sub_100776EBC(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);

  operator delete(a2);
  return v3;
}

void *sub_100776F00(uint64_t **a1, unsigned __int8 *uu1, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_10004A7D0(a1, &v10, uu1);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100776FB4();
  }

  return v5;
}

uint64_t sub_100777040(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100773C38(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10077708C(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_10004E34C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  sub_100773C38(v4 + 4);
  operator delete(v4);
  return 1;
}

void *sub_1007770E8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100777140(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100777140(void *result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007771C8(v5, (v5 + 8), v4 + 32, (v4 + 32));
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

void *sub_1007771C8(uint64_t **a1, uint64_t *a2, unsigned __int8 *uu2, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *sub_1000AE8C4(a1, a2, &v10, &v9, uu2);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_100777268();
  }

  return v4;
}

void sub_1007772F0(float a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  *a4 = a1;
  *(a4 + 4) = v4;
  *(a4 + 12) = 1024;
  *(a4 + 14) = a3;
}

void *sub_100777318(const unsigned __int8 *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1000D67B4(a1, va);
}

void sub_100777330(float a1, uint64_t a2, uint64_t a3, int a4)
{
  *a3 = a1;
  *(a3 + 4) = v4;
  *(a3 + 12) = 1024;
  *(a3 + 14) = a4;
}

void sub_100777380(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_1007773A0()
{
  v0 = objc_autoreleasePoolPush();
  sub_100364534(&stru_100BCEBC8);
  __cxa_atexit(sub_1003645A0, &stru_100BCEBC8, &_mh_execute_header);
  sub_100364534(&stru_100BCEBF8);
  __cxa_atexit(sub_1003645A0, &stru_100BCEBF8, &_mh_execute_header);
  sub_100044BBC(&stru_100BCEC28);
  __cxa_atexit(sub_10007A068, &stru_100BCEC28, &_mh_execute_header);
  sub_100044BBC(&stru_100BCEC68);
  __cxa_atexit(sub_10007A068, &stru_100BCEC68, &_mh_execute_header);
  sub_100364534(&stru_100BCECB0);
  __cxa_atexit(sub_1003645A0, &stru_100BCECB0, &_mh_execute_header);
  sub_100044BBC(&stru_100BCECE0);
  __cxa_atexit(sub_10007A068, &stru_100BCECE0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

id sub_1007774DC(uint64_t a1)
{
  sub_100777574(a1);
  if (v5 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v2 = [NSString stringWithUTF8String:p_p];
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_100777558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100777574(uint64_t a1)
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_100008760(&v20);
  *(&v21[-1] + *(v20 - 24) + 8) |= 0x4000u;
  v19 = 48;
  v1 = sub_10004DE98(&v20, &v19);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 24) = 2;
  *(v1 + *(v2 - 24) + 8) = *(v1 + *(v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = std::ostream::operator<<();
  v4 = sub_100007774(v3, ":", 1);
  v5 = *v4;
  *(v4 + *(*v4 - 24) + 24) = 2;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = std::ostream::operator<<();
  v7 = sub_100007774(v6, ":", 1);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 24) = 2;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = std::ostream::operator<<();
  v10 = sub_100007774(v9, ":", 1);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 24) = 2;
  *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  v12 = std::ostream::operator<<();
  v13 = sub_100007774(v12, ":", 1);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 24) = 2;
  *(v13 + *(v14 - 24) + 8) = *(v13 + *(v14 - 24) + 8) & 0xFFFFFFB5 | 8;
  v15 = std::ostream::operator<<();
  v16 = sub_100007774(v15, ":", 1);
  v17 = *v16;
  *(v16 + *(*v16 - 24) + 24) = 2;
  *(v16 + *(v17 - 24) + 8) = *(v16 + *(v17 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  std::stringbuf::str();
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v21);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100777A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003B8618(va);
  _Unwind_Resume(a1);
}

id sub_100777A3C(uint64_t a1)
{
  sub_100777AD4(a1);
  if (v5 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v2 = [NSString stringWithUTF8String:p_p];
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_100777AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100777AD4(uint64_t a1)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  sub_100008760(&v23);
  *(&v24[-1] + *(v23 - 24) + 8) |= 0x4000u;
  v22 = 48;
  v2 = sub_10004DE98(&v23, &v22);
  v3 = *v2;
  *(v2 + *(*v2 - 24) + 24) = 2;
  *(v2 + *(v3 - 24) + 8) = *(v2 + *(v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = std::ostream::operator<<();
  v5 = sub_100007774(v4, ":", 1);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 24) = 2;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v7 = std::ostream::operator<<();
  v8 = sub_100007774(v7, ":", 1);
  v9 = *v8;
  *(v8 + *(*v8 - 24) + 24) = 2;
  *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
  v10 = std::ostream::operator<<();
  v11 = sub_100007774(v10, ":", 1);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 24) = 2;
  *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v13 = std::ostream::operator<<();
  v14 = sub_100007774(v13, ":", 1);
  v15 = *v14;
  *(v14 + *(*v14 - 24) + 24) = 2;
  *(v14 + *(v15 - 24) + 8) = *(v14 + *(v15 - 24) + 8) & 0xFFFFFFB5 | 8;
  v16 = std::ostream::operator<<();
  v17 = sub_100007774(v16, ":", 1);
  v18 = *v17;
  *(v17 + *(*v17 - 24) + 24) = 2;
  *(v17 + *(v18 - 24) + 8) = *(v17 + *(v18 - 24) + 8) & 0xFFFFFFB5 | 8;
  std::ostream::operator<<();
  v19 = sub_100007774(&v23, "-", 1);
  *(v19 + *(*v19 - 24) + 8) &= ~0x4000u;
  if ((a1 & 0xFF000000000000) != 0)
  {
    v20 = "Random";
  }

  else
  {
    v20 = "Public";
  }

  sub_100007774(v19, v20, 6);
  std::stringbuf::str();
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v24);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100777FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003B8618(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100777FF4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    sub_100007E30(__p, [v1 UTF8String]);
    v3 = sub_100778080(__p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unint64_t sub_100778080(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    if ((*(a1 + 1) - 25) < 0xFFFFFFFFFFFFFFE8)
    {
      return 0;
    }

    v1 = *a1;
  }

  else if (a1[23] - 25 < 0xFFFFFFE8)
  {
    return 0;
  }

  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (sscanf(v1, "%hhX:%hhX:%hhX:%hhX:%hhX:%hhX", &v5, &v5 + 1, &v5 + 2, &v5 + 3, &v6, &v6 + 1) == 6)
  {
    return (v5 << 40) | (BYTE1(v5) << 32) | (BYTE2(v5) << 24) | (HIBYTE(v5) << 16) | (v6 << 8) | HIBYTE(v6);
  }

  if (sscanf(v1, "%7s %hhX:%hhX:%hhX:%hhX:%hhX:%hhX", &v7, &v5, &v5 + 1, &v5 + 2, &v5 + 3, &v6, &v6 + 1) != 7)
  {
    return 0;
  }

  v4 = v7 != 1818391888 || *(&v7 + 3) != 6515052;
  return (v4 << 48) | (v5 << 40) | (BYTE1(v5) << 32) | (BYTE2(v5) << 24) | (HIBYTE(v5) << 16) | (v6 << 8) | HIBYTE(v6);
}

id sub_100778224(unint64_t a1)
{
  v1 = sub_10009A66C(a1);
  v4 = v1;
  v6 = BYTE6(v1);
  v5 = WORD2(v1);
  v2 = +[NSMutableData data];
  [v2 appendBytes:&v4 length:1];
  [v2 appendBytes:&v4 + 1 length:6];

  return v2;
}

uint64_t sub_1007782B8(uint64_t a1, const void **a2)
{
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  if ([v5 isEqualToString:@"APPEARANCE_KEYBOARD"])
  {
    v6 = 961;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_MOUSE"])
  {
    v6 = 962;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_TOUCHPAD"])
  {
    v6 = 969;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_JOYSTICK"])
  {
    v6 = 963;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_GAMEPAD"])
  {
    v6 = 964;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_GENERIC AUDIO SINK"])
  {
    v6 = 2112;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_STANDALONE SPEAKER"])
  {
    v6 = 2113;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_SOUNDBAR"])
  {
    v6 = 2114;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_BOOKSHELF SPEAKER"])
  {
    v6 = 2115;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_STANDMOUNTED SPEAKER"])
  {
    v6 = 2116;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_SPEAKERPHONE"])
  {
    v6 = 2117;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_EARBUD"])
  {
    v6 = 2369;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_HEADSET"])
  {
    v6 = 2370;
  }

  else if ([v5 isEqualToString:@"APPEARANCE_HEADPHONES"])
  {
    v6 = 2371;
  }

  else
  {
    if (([v5 isEqualToString:@"IsHearingAid"] & 1) == 0)
    {

      goto LABEL_34;
    }

    v6 = 2625;
  }

  *(a1 + 392) = v6;
LABEL_34:
  sub_10077C9B4((a1 + 176), a2, a2);
  return v7 & 1;
}

uint64_t sub_1007784E8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  sub_1000D8E68(a2, &v16);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v16;
  *(a2 + 16) = v17;
  v8 = *(a1 + 128);
  if (v8 < a3)
  {
    goto LABEL_4;
  }

  if (v8 == a3)
  {
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = *(a1 + 127);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a1 + 112);
    }

    if (v11 != v12)
    {
      goto LABEL_4;
    }

    v14 = v10 >= 0 ? a2 : *a2;
    v15 = v13 >= 0 ? (a1 + 104) : *(a1 + 104);
    if (memcmp(v14, v15, v11) || (a4 & 1) != 0)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    *(a1 + 128) = a3;
    std::string::operator=((a1 + 104), a2);
    return 1;
  }

  return 0;
}

void sub_1007785DC(uint64_t a1, void *a2, int a3)
{
  LODWORD(v3) = a3;
  v4 = a2;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__p = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_100008760(&v11);
  v5 = [v4 bytes];
  v6 = [v4 length];
  v7 = v11;
  *(&v12[-1] + *(v11 - 24) + 8) = *(&v12[-1] + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = &v12[-1] + *(v7 - 24);
  if (*(v8 + 36) == -1)
  {
    std::ios_base::getloc((&v12[-1] + *(v7 - 24)));
    v9 = std::locale::use_facet(&v26, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v26);
  }

  *(v8 + 36) = 48;
  if (v6 >= v3)
  {
    v3 = v3;
  }

  else
  {
    v3 = v6;
  }

  if (v3)
  {
    do
    {
      v10 = v11;
      *(v12 + *(v11 - 24) + 8) = 2;
      *(&v11 + *(v10 - 24) + 8) = *(&v11 + *(v10 - 24) + 8) & 0xFFFFFF4F | 0x80;
      ++v5;
      std::ostream::operator<<();
      --v3;
    }

    while (v3);
  }

  std::stringbuf::str();
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_1007788D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v10 - 88));
  sub_1003B8618(&a9);

  _Unwind_Resume(a1);
}

int32x2_t sub_100778910(int32x2_t *a1, __int32 a2)
{
  v2.i32[0] = 1;
  v2.i32[1] = a2;
  result = vadd_s32(a1[58], v2);
  a1[58] = result;
  a1[59].i32[0] = a2;
  return result;
}

int32x2_t sub_10077892C(uint64_t a1, __int32 a2)
{
  v2.i32[0] = 1;
  v2.i32[1] = a2;
  result = vadd_s32(*(a1 + 452), v2);
  *(a1 + 452) = result;
  *(a1 + 460) = a2;
  return result;
}

void sub_10077894C(uint64_t a1)
{
  v1 = *(a1 + 464);
  if (v1 && *(a1 + 468) / v1)
  {
    *(__dst + 3) = 0;
    __dst[0] = 0;
    v3 = *(a1 + 336);
    v4 = v3;
    if (v3)
    {
      memcpy(__dst, [v3 bytes], objc_msgSend(v3, "length"));
      v5 = *(__dst + 1);
      v6 = *(__dst + 3);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v20 = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
    v8 = *(a1 + 464);
    if (v8)
    {
      v9 = *(a1 + 468) / v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 452);
    if (v10)
    {
      v11 = (*(a1 + 456) / v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 472);
    v13 = *(a1 + 460);
    sub_1000D38CC(&v20, 13);
    HIDWORD(v20) = v9;
    v21 = __PAIR64__(v12, v11);
    v22 = __PAIR64__(v6, v13);
    v23 = v5;
    v14 = qword_100BCE900;
    v15 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      *buf = 67110400;
      v26 = v9;
      v27 = 1024;
      v28 = v11;
      v29 = 1024;
      v30 = v12;
      v31 = 1024;
      v32 = v13;
      v33 = 1024;
      v34 = v6;
      v35 = 1024;
      v36 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending LeConnectionPhyStats AWDMetric: RSSI Average %d, PER Average %d%%, RSSI %d, PER %d%% pid %d Vid %d", buf, 0x26u);
    }

    v17 = sub_10000F034(v15, v16);
    if (v17)
    {
      v19 = sub_10000F034(v17, v18);
      (*(*v19 + 40))(v19, &v20);
    }

    *(a1 + 452) = 0;
    *(a1 + 460) = 0;
    *(a1 + 468) = 0;
  }

  else
  {
    v7 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not sending LE connection phy stats as average RSSI is 0 dBm", buf, 2u);
    }
  }
}

uint64_t sub_100778BAC(id *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 beaconIdentifier];

    if (v6)
    {
      v7 = [v5 allowedSessions];
      if (v7 && ([v5 allowedSessions], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, v9))
      {
        v10 = [v5 longTermKeyMap];
        if (v10 && ([v5 longTermKeyMap], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v12))
        {
          v13 = [v5 serialNumber];
          if (v13)
          {
            v14 = [v5 serialNumber];
            v15 = [v14 length];

            if (v15)
            {
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              obj = [v5 longTermKeyMap];
              v16 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
              if (v16)
              {
                v17 = *v50;
                while (2)
                {
                  v18 = 0;
                  do
                  {
                    if (*v50 != v17)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v19 = *(*(&v49 + 1) + 8 * v18);
                    if (!v19 || [*(*(&v49 + 1) + 8 * v18) length] != 7)
                    {
                      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                      {
                        v42 = [v5 beaconIdentifier];
                        sub_100872274(v19, v42, buf);
                      }

                      v37 = 8;
LABEL_44:

                      goto LABEL_40;
                    }

                    v20 = [v5 longTermKeyMap];
                    v21 = [v20 objectForKeyedSubscript:v19];

                    v47 = 0u;
                    v48 = 0u;
                    v45 = 0u;
                    v46 = 0u;
                    v22 = v21;
                    v23 = [v22 countByEnumeratingWithState:&v45 objects:v64 count:16];
                    if (v23)
                    {
                      v24 = *v46;
                      v43 = v16;
                      while (2)
                      {
                        v25 = v17;
                        v26 = 0;
                        do
                        {
                          if (*v46 != v24)
                          {
                            objc_enumerationMutation(v22);
                          }

                          v27 = *(*(&v45 + 1) + 8 * v26);
                          if (!v27 || [*(*(&v45 + 1) + 8 * v26) length] <= 0xF)
                          {
                            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                            {
                              v41 = [v5 beaconIdentifier];
                              sub_10087221C(v27, v41, buf);
                            }

                            v37 = 149;
                            goto LABEL_44;
                          }

                          v26 = v26 + 1;
                        }

                        while (v23 != v26);
                        v23 = [v22 countByEnumeratingWithState:&v45 objects:v64 count:16];
                        v17 = v25;
                        v16 = v43;
                        if (v23)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v18 = v18 + 1;
                  }

                  while (v18 != v16);
                  v16 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }
              }

              v28 = qword_100BCE900;
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *a1;
                v30 = [v5 beaconIdentifier];
                v31 = [v5 groupIdentifier];
                v32 = [v5 serialNumber];
                v33 = [v5 partIdentifier];
                v34 = [v5 managedByFindMy];
                *buf = 138413570;
                *&buf[4] = v29;
                v54 = 2112;
                v55 = v30;
                v56 = 2112;
                v57 = v31;
                v58 = 2112;
                v59 = v32;
                v60 = 1024;
                v61 = v33;
                v62 = 1024;
                v63 = v34;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "fIdentifier:%@ fFindMyID:%@ fFindMyGroupID:%@ fFindMySerialNumber:%@ fFindMyPartID:%d fManagedByFindMy:%d", buf, 0x36u);
              }

              v35 = [v5 longTermKeyMap];
              [v35 count];
              *buf = 0;
              sub_100016250(buf);
              v36 = *&buf[4];
              a1[5] = *buf;
              a1[6] = v36;

              goto LABEL_30;
            }
          }

          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_1008722CC();
          }
        }

        else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          v39 = [v5 beaconIdentifier];
          sub_100872308(v39, buf);
        }
      }

      else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v38 = [v5 beaconIdentifier];
        sub_10087235C(v38, buf);
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008723B0();
    }

    v37 = 3;
    goto LABEL_40;
  }

LABEL_30:
  objc_storeStrong(a1 + 8, a2);
  v37 = 0;
  *(a1 + 238) = 1;
LABEL_40:

  return v37;
}

void sub_1007791B4(uint64_t a1)
{
  v2 = sub_100432950();
  if (v2 && *(a1 + 80) && *(a1 + 88) && *(a1 + 64))
  {
    v3 = *a1;
    v4 = *(a1 + 64);
    v5 = *(a1 + 80);
    v6 = *(a1 + 88);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1007792B8;
    v8[3] = &unk_100AFC890;
    v9 = v3;
    v7 = v3;
    [v2 successfulConnectionForPeripheral:v4 leMAC:v5 ltk:v6 completion:v8];
  }
}

void sub_1007792B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  v5 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "successfulConnectionForPeripheral returned %@", buf, 0xCu);
  }

  v7 = sub_100007EE8(v5, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100779404;
  v8[3] = &unk_100ADF820;
  v9 = *(a1 + 32);
  sub_10000CA94(v7, v8);
}

void sub_100779404(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_1008723EC();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);

  sub_10078149C(v2, v3);
}

void sub_100779458(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100007E30(__p, "_HID_DEVICE_");
    sub_100071970((a1 + 176), __p, __p);
  }

  else
  {
    sub_100007E30(__p, "_HID_DEVICE_");
    sub_100776C38((a1 + 176), __p);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007794D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007794F4(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100007E30(__p, "_LE_AUDIO_DEVICE_");
    sub_100071970((a1 + 176), __p, __p);
  }

  else
  {
    sub_100007E30(__p, "_LE_AUDIO_DEVICE_");
    sub_100776C38((a1 + 176), __p);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100779570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100779590(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100007E30(__p, "_HAS_LE_AUDIO_DEVICE_");
    sub_100071970((a1 + 176), __p, __p);
  }

  else
  {
    sub_100007E30(__p, "_HAS_LE_AUDIO_DEVICE_");
    sub_100776C38((a1 + 176), __p);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10077960C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077962C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100007E30(__p, "_TMAS_LE_AUDIO_DEVICE_");
    sub_100071970((a1 + 176), __p, __p);
  }

  else
  {
    sub_100007E30(__p, "_TMAS_LE_AUDIO_DEVICE_");
    sub_100776C38((a1 + 176), __p);
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007796A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007796C8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*(a1 + 496))
  {
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = *(a1 + 496);
    *(a1 + 496) = v6;

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v8 = [v9 length];
  if (v5 && v8 && [v5 length])
  {
    [*(a1 + 496) setObject:v5 forKeyedSubscript:v9];
  }

LABEL_9:
}

void sub_100779798(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if ([v5 length])
    {
      v3 = *(a1 + 496);
      if (v3)
      {
        v4 = [v3 objectForKeyedSubscript:v5];

        if (v4)
        {
          [*(a1 + 496) removeObjectForKey:v5];
        }
      }
    }
  }
}

id sub_10077982C(uint64_t a1)
{
  v2 = *(a1 + 496);
  if (v2 && [v2 count])
  {
    v3 = +[NSMutableSet set];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 496);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(a1 + 496) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
          v9 = v8;
          if (v8 && [v8 length])
          {
            [v3 addObject:v9];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    if ([v3 count])
    {
      v10 = [v3 allObjects];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1007799F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = sub_10077982C(a1);
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [v6 containsObject:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100779AA0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*(a1 + 504))
  {
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = *(a1 + 504);
    *(a1 + 504) = v6;

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v8 = [v9 length];
  if (v5 && v8 && [v5 count])
  {
    [*(a1 + 504) setObject:v5 forKeyedSubscript:v9];
  }

LABEL_9:
}

void sub_100779B70(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if ([v5 length])
    {
      v3 = *(a1 + 504);
      if (v3)
      {
        v4 = [v3 objectForKeyedSubscript:v5];

        if (v4)
        {
          [*(a1 + 504) removeObjectForKey:v5];
        }
      }
    }
  }
}

id sub_100779C04(uint64_t a1)
{
  v2 = *(a1 + 504);
  if (v2 && [v2 count])
  {
    v3 = +[NSMutableSet set];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = *(a1 + 504);
    v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = *v21;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = [*(a1 + 504) objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
          v8 = v7;
          if (v7 && [v7 count])
          {
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              v11 = *v17;
              do
              {
                for (j = 0; j != v10; j = j + 1)
                {
                  if (*v17 != v11)
                  {
                    objc_enumerationMutation(v9);
                  }

                  [v3 addObject:*(*(&v16 + 1) + 8 * j)];
                }

                v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
              }

              while (v10);
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v4);
    }

    if ([v3 count])
    {
      v13 = [v3 allObjects];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_100779E70(uint64_t a1, uint64_t a2)
{
  v3 = sub_100779C04(a1);
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [NSNumber numberWithUnsignedInt:a2];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100779F0C(uint64_t a1, int a2, void *a3, int a4)
{
  v8 = a3;
  v10 = sub_10000C7D0(v8, v9);
  if (((*(*v10 + 3256))(v10) & 1) == 0)
  {
    v12 = 0;
    goto LABEL_27;
  }

  v11 = *(a1 + 528) != a2 || *(a1 + 532) != a4;
  v13 = *(a1 + 520);
  if ((v8 || !v13) && (!v8 || v13))
  {
    v14 = 0;
    if (v8 && v13)
    {
      v14 = [v13 isEqualToData:v8] ^ 1;
    }
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 528) = a2;
  objc_storeStrong((a1 + 520), a3);
  v15 = v14 | v11;
  *(a1 + 532) = a4;
  if (a4 != 2)
  {
    *(a1 + 544) = 1;
  }

  if (v15 || (*(a1 + 544) & 1) == 0)
  {
    sub_10077A220(a1, 0);
    sub_10077AAB4(a1, 0);
  }

  if (!a2 || ![v8 length] || (*(a1 + 529) & 1) != 0)
  {
    if (v15)
    {
      if (qword_100B512F8 != -1)
      {
        sub_100872484();
      }

      sub_1003C19E8(off_100B512F0, *a1);
    }

    v16 = 0;
    goto LABEL_24;
  }

  if (*(a1 + 544) == 1)
  {
    v12 = sub_10077A220(a1, 1);
    if (!v12)
    {
      v16 = 1;
      sub_10077AAB4(a1, 1);
LABEL_24:
      v12 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100872400();
    }

    v12 = 0;
  }

  v16 = 1;
LABEL_25:
  v17 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
  {
    v18 = *a1;
    v19 = *(a1 + 530);
    v20 = *(a1 + 529);
    v21 = *(a1 + 544);
    v22 = *(a1 + 532);
    v23 = *(a1 + 520);
    v24 = *(a1 + 528);
    v26 = 138415362;
    v27 = v18;
    v28 = 1024;
    v29 = a2;
    v30 = 2112;
    v31 = v8;
    v32 = 1024;
    v33 = v15;
    v34 = 1024;
    v35 = v16;
    v36 = 1024;
    v37 = v12;
    v38 = 1024;
    v39 = v19;
    v40 = 1024;
    v41 = v20;
    v42 = 1024;
    v43 = v21;
    v44 = 1024;
    v45 = v22;
    v46 = 2112;
    v47 = v23;
    v48 = 1024;
    v49 = v24;
    v50 = 1024;
    v51 = a4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FastLeConnection:setControllerInfo fIdentifier:%@ version:%d info:%@ dataChanged:%d enable:%d result:%d fControllerLTKStored:%d fControllerInfoConfigured:%d fFastLeConnectionAllowed:%d fControllerInfoOrigin:%d fControllerInfo:%@ fControllerInfoVersion:%d newOrigin:%d", &v26, 0x5Cu);
  }

LABEL_27:

  return v12;
}

uint64_t sub_10077A220(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100872498();
  }

  if (*(off_100B50A98 + 60) != 1)
  {
    return 12;
  }

  v4 = sub_10000C7D0(a1, a2);
  v5 = (*(*v4 + 3256))(v4);
  if (!v5)
  {
    return 0;
  }

  v7 = a1[3];
  if (v7 || (v7 = a1[2]) != 0)
  {
    if (v2 && *(a1 + 528))
    {
      if (*(a1 + 544) != 1)
      {
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
        {
          sub_1008724AC();
        }

        v22 = 0;
        v23 = 0;
        LODWORD(v10) = 12;
        goto LABEL_39;
      }

      if ((*(a1 + 530) & 1) == 0)
      {
        v8 = a1[69];
        if (v8 && (v8 = [v8 length]) != 0)
        {
          v9 = sub_10000C7D0(v8, v6);
          v5 = (*(*v9 + 2184))(v9, v7, a1[3] != 0, [a1[69] length], objc_msgSend(a1[69], "bytes"));
          if (v5)
          {
            LODWORD(v10) = v5;
            v11 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
            {
              v12 = *a1;
              sub_10004D9B0(v7);
              v13 = v67 >= 0 ? __p : *__p;
              v14 = a1[65];
              v15 = *(a1 + 528);
              *buf = 138413314;
              *&buf[4] = v12;
              v54 = 2080;
              v55 = v13;
              v56 = 2112;
              *v57 = v14;
              *&v57[8] = 1024;
              *v58 = v15;
              *&v58[4] = 1024;
              *v59 = v10;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "FastLEConnection:Failed writeStoredLTKForDevice for device %@ (%s) cached data:%@ version:%d returned %d aborting", buf, 0x2Cu);
              if (v67 < 0)
              {
                operator delete(*__p);
              }
            }

            goto LABEL_30;
          }

          *(a1 + 530) = 1;
        }

        else
        {
          v37 = sub_10000C7D0(v8, v6);
          v5 = (*(*v37 + 3264))(v37);
          if ((v5 & 1) == 0)
          {
            v38 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
            {
              v50 = *a1;
              sub_10004D9B0(v7);
              v51 = v56 >= 0 ? buf : *buf;
              *__p = 138412546;
              *&__p[4] = v50;
              v65 = 2080;
              v66 = v51;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "FastLEConnection:LeDevice::enableFastLEConnection device %@ (%s) No LTK provided but required", __p, 0x16u);
              if (SHIBYTE(v56) < 0)
              {
                operator delete(*buf);
              }
            }

            v22 = 0;
            v23 = 0;
            LODWORD(v10) = 149;
            goto LABEL_39;
          }
        }
      }

      if (*(a1 + 529))
      {
        return 0;
      }

      v10 = sub_10000C7D0(v5, v6);
      LODWORD(v10) = (*(*v10 + 2208))(v10, v7, a1[3] != 0, *(a1 + 528), [a1[65] length], objc_msgSend(a1[65], "bytes"));
      if (!v10)
      {
        v23 = 0;
        v22 = 1;
        *(a1 + 529) = 1;
        goto LABEL_39;
      }

      v44 = qword_100BCE900;
      v5 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        v46 = *a1;
        sub_10004D9B0(v7);
        v47 = v67 >= 0 ? __p : *__p;
        v48 = a1[65];
        v49 = *(a1 + 528);
        *buf = 138413314;
        *&buf[4] = v46;
        v54 = 2080;
        v55 = v47;
        v56 = 2112;
        *v57 = v48;
        *&v57[8] = 1024;
        *v58 = v49;
        *&v58[4] = 1024;
        *v59 = v10;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "FastLEConnection:LeDevice::enableFastLEConnection Failed writePeerControllerCachedInfo for device %@ (%s) cached data:%@ version:%d returned %d, aborting", buf, 0x2Cu);
        if (v67 < 0)
        {
          operator delete(*__p);
        }
      }

      if (*(a1 + 530) != 1)
      {
LABEL_30:
        v22 = 0;
        v23 = 0;
LABEL_39:
        v52 = 0;
        v25 = sub_1000216B4(&v52);
        v26 = *(a1 + 530);
        v28 = sub_10000C7D0(v25, v27);
        v29 = (*(*v28 + 3264))(v28);
        v30 = sub_1002D3634(v7, v26, v22, v29 ^ 1u);
        v31 = v30;
        if (v22)
        {
          v32 = 1;
        }

        else
        {
          v32 = v10;
        }

        if (v30)
        {
          v10 = v32;
        }

        else
        {
          v10 = v10;
        }

        v33 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *a1;
          sub_10004D9B0(v7);
          if (v67 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = *__p;
          }

          v36 = *(a1 + 544);
          *buf = 138414082;
          *&buf[4] = v34;
          v54 = 2080;
          v55 = v35;
          v56 = 1024;
          *v57 = v2;
          *&v57[4] = 1024;
          *&v57[6] = v36;
          *v58 = 1024;
          *&v58[2] = v31;
          *v59 = 1024;
          *&v59[2] = v23;
          v60 = 1024;
          v61 = v22;
          v62 = 1024;
          v63 = v10;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "FastLEConnection:LeDevice::enableFastLEConnection device:%@ address:%s enable:%d fFastLeConnectionAllowed:%d LE_GAP_EnableFastLeConnectionForAddress:%d shouldRemoveLTKFromController:%d, shouldEnable:%d ret:%d", buf, 0x3Au);
          if (v67 < 0)
          {
            operator delete(*__p);
          }
        }

        sub_10002249C(&v52);
        return v10;
      }
    }

    else
    {
      if (*(a1 + 529) == 1)
      {
        v16 = sub_10000C7D0(v5, v6);
        v5 = (*(*v16 + 2216))(v16, v7, a1[3] != 0);
        *(a1 + 529) = 0;
        if (v5)
        {
          v17 = v5;
          v18 = qword_100BCE900;
          v5 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR);
          if (v5)
          {
            v41 = *a1;
            sub_10004D9B0(v7);
            v42 = v67 >= 0 ? __p : *__p;
            *buf = 138412802;
            *&buf[4] = v41;
            v54 = 2080;
            v55 = v42;
            v56 = 1024;
            *v57 = v17;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "FastLEConnection:LeDevice::enableFastLEConnection FastLEConnection:removePeerControllerCachedInfo device %@ (%s) returned %d", buf, 0x1Cu);
            if (v67 < 0)
            {
              operator delete(*__p);
            }
          }
        }
      }

      if ((*(a1 + 530) & 1) == 0)
      {
        LODWORD(v10) = 0;
        goto LABEL_30;
      }

      LODWORD(v10) = 0;
    }

    v19 = sub_10000C7D0(v5, v6);
    v20 = (*(*v19 + 2192))(v19, v7, a1[3] != 0);
    *(a1 + 530) = 0;
    if (v20)
    {
      v21 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v39 = *a1;
        sub_10004D9B0(v7);
        v40 = v67 >= 0 ? __p : *__p;
        *buf = 138412802;
        *&buf[4] = v39;
        v54 = 2080;
        v55 = v40;
        v56 = 1024;
        *v57 = v20;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "FastLEConnection:LeDevice::enableFastLEConnection FastLEConnection:removeStoredLTKForDevice device %@ (%s) returned %d", buf, 0x1Cu);
        if (v67 < 0)
        {
          operator delete(*__p);
        }
      }
    }

    v22 = 0;
    v23 = 1;
    goto LABEL_39;
  }

  v24 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    v45 = *a1;
    *buf = 138412290;
    *&buf[4] = v45;
    _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "FastLEConnection: %@ Address cannot be 0", buf, 0xCu);
    v24 = qword_100BCE900;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_10087251C();
  }

  return 8;
}

void sub_10077AAB4(uint64_t *a1, int a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10077AD14;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100BC7B20 != -1)
  {
    dispatch_once(&qword_100BC7B20, block);
  }

  v4 = a1[67];
  if (a2)
  {
    if (!v4 && *(a1 + 133) == 3)
    {
      v5 = qword_100BCE900;
      v6 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        v8 = *a1;
        *buf = 138412546;
        v18 = v8;
        v19 = 2048;
        v20 = qword_100B54EE0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FastLeConnection:enableClientControllerInfoTimer %@ timer duration %llums armed!", buf, 0x16u);
      }

      v9 = sub_100007EE8(v6, v7);
      v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v9 + 8));
      a1[67] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10077AEB8;
      v15[3] = &unk_100ADF8F8;
      v15[4] = a1;
      dispatch_source_set_event_handler(v10, v15);
      v11 = a1[67];
      v12 = dispatch_time(0x8000000000000000, 1000000 * qword_100B54EE0);
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_activate(a1[67]);
    }
  }

  else if (v4)
  {
    v13 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a1;
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FastLeConnection:enableClientControllerInfoTimer %@ timer destroyed!", buf, 0xCu);
      v4 = a1[67];
    }

    dispatch_source_cancel(v4);
    dispatch_release(a1[67]);
    a1[67] = 0;
  }
}

void sub_10077AD14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DeviceFastLeConnectionClientTimeoutSeconds");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v10);
  if (v10)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = 1000 * v10;
  qword_100B54EE0 = v5;
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v1;
    *buf = 138412546;
    *&buf[4] = v7;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FastLeConnection:enableClientControllerInfoTimer %@ Overriding timer duration to %llums", buf, 0x16u);
  }
}

void sub_10077AE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10077AEB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *v1;
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FastLeConnection:enableClientControllerInfoTimer %@ timer expired!", &v5, 0xCu);
  }

  dispatch_source_cancel(*(v1 + 536));
  dispatch_release(*(v1 + 536));
  *(v1 + 536) = 0;
  return sub_100779F0C(v1, 0, 0, 0);
}

uint64_t sub_10077AF88(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100BC7B30 != -1)
  {
    sub_10087258C();
  }

  v4 = sub_10000C7D0(a1, a2);
  result = (*(*v4 + 3256))(v4);
  if (result)
  {
    if (*(a1 + 528))
    {
      v6 = *(a1 + 520);
      if (v6)
      {
        if ([v6 length])
        {
          v7 = *(a1 + 532);
          if (v7)
          {
            if (v7 == 2)
            {
              v8 = v2;
            }

            else
            {
              v8 = 1;
            }

            *(a1 + 544) = v8;
            v9 = qword_100BCE900;
            if (byte_100BC7B28 == 1)
            {
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
              {
                v10 = *a1;
                v14 = 138412802;
                v15 = v10;
                v16 = 1024;
                v17 = byte_100BC7B29;
                v18 = 1024;
                v19 = 1;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: FastLEConnection:fastLeConnectionAllowed %@ forceAllow:%d forceOverride:%d", &v14, 0x18u);
                v9 = qword_100BCE900;
              }

              v8 = byte_100BC7B29;
              *(a1 + 544) = byte_100BC7B29;
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v11 = *a1;
              v12 = *(a1 + 532);
              v14 = 138413058;
              v15 = v11;
              v16 = 1024;
              v17 = v2;
              v18 = 1024;
              v19 = v8;
              v20 = 1024;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FastLEConnection:fastLeConnectionAllowed %@ allowed:%d fFastLeConnectionAllowed:%d fControllerInfoOrigin:%d", &v14, 0x1Eu);
              if (*(a1 + 544))
              {
LABEL_17:
                v13 = 1;
                return sub_10077A220(a1, v13);
              }
            }

            else if (v8)
            {
              goto LABEL_17;
            }

            v13 = 0;
            return sub_10077A220(a1, v13);
          }
        }
      }
    }

    return 12;
  }

  return result;
}

void sub_10077B188(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DeviceFastLeConnectionForceAllow");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100BC7B29);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  byte_100BC7B28 = 1;
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100BC7B29)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: FastLeConnection:fastLeConnectionAllowed DeviceFastLeConnectionForceAllow %s", buf, 0xCu);
  }
}

void sub_10077B2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_10077B320(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "?";
  }

  else
  {
    return (&off_100B0C048)[a1];
  }
}

uint64_t sub_10077B344(uint64_t a1)
{
  sub_100007E30(v29, "A1603");
  v2 = sub_1000463C8(a1 + 176, v29);
  v3 = a1 + 184;
  if (a1 + 184 == v2)
  {
    sub_100007E30(v27, "A2051");
    if (v2 == sub_1000463C8(a1 + 176, v27))
    {
      sub_100007E30(v25, "A3085");
      if (v2 == sub_1000463C8(a1 + 176, v25))
      {
        sub_100007E30(__p, "A2538");
        v4 = v2 != sub_1000463C8(a1 + 176, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v4 = 1;
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }
    }

    else
    {
      v4 = 1;
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }

  else
  {
    v4 = 1;
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
    if (v4)
    {
      return 4;
    }
  }

  else if (v4)
  {
    return 4;
  }

  sub_100007E30(v21, "HasTS");
  v6 = sub_1000463C8(a1 + 176, v21);
  v8 = v6;
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v3 != v8)
  {
    v9 = sub_10000C798(v6, v7);
    v10 = (*(*v9 + 384))(v9);
    if (v10)
    {
      return 2;
    }

    v13 = sub_10000C798(v10, v11);
    return (*(*v13 + 368))(v13);
  }

  sub_100007E30(v19, "_GHS_DEVICE_");
  v12 = sub_1000463C8(a1 + 176, v19);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v3 != v12)
  {
    return 12;
  }

  if (*(a1 + 608))
  {
    return 5;
  }

  v14 = *(a1 + 200);
  if (!v14)
  {
    v15 = *(a1 + 372);
    if (v15 == 655360)
    {
      v16 = 11;
    }

    else
    {
      v16 = 0;
    }

    if (v15 == 21)
    {
      return 3;
    }

    else
    {
      return v16;
    }
  }

  if ([v14 containsString:@"iPhone"])
  {
    return 1;
  }

  if ([*(a1 + 200) containsString:@"Watch"])
  {
    return 2;
  }

  if ([*(a1 + 200) containsString:@"iPad"])
  {
    return 10;
  }

  if ([*(a1 + 200) containsString:@"iMac"] & 1) != 0 || (objc_msgSend(*(a1 + 200), "containsString:", @"MacBook"))
  {
    return 9;
  }

  result = CBProductIDFromNSString();
  if (result)
  {
    v17 = [CBProductInfo productInfoWithProductID:result];
    v18 = [v17 flags];

    if ((v18 & 0x2000) == 0)
    {
      if ((v18 & 0x4000) != 0)
      {
        return 8;
      }

      if ((v18 & 0x8000) != 0)
      {
        return 7;
      }

      return ((v18 << 15) >> 31) & 6;
    }

    return 5;
  }

  return result;
}

void sub_10077B704(uint64_t *a1, char a2)
{
  *(a1 + 160) = a2;
  if ((a2 & 1) == 0 && (*(a1 + 161) & 1) == 0)
  {
    *(a1 + 162) = 0;
  }

  v3 = a1[3];
  if (v3 || (v3 = a1[2]) != 0)
  {
    if ((a2 & 1) == 0)
    {
      v4 = a1[69];
      a1[69] = 0;

      if (*(a1 + 530) == 1)
      {
        v7 = sub_10000C7D0(v5, v6);
        v8 = (*(*v7 + 2192))(v7, v3, a1[3] != 0);
        if (v8)
        {
          v9 = v8;
          v10 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            v11 = *a1;
            sub_10004D9B0(v3);
            if (v14 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 138412802;
            v16 = v11;
            v17 = 2080;
            v18 = p_p;
            v19 = 1024;
            v20 = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "FastLEConnection:setLEPaired removePeerControllerCachedInfo device %@ (%s) returned %d", buf, 0x1Cu);
            if (v14 < 0)
            {
              operator delete(__p);
            }
          }
        }

        else
        {
          *(a1 + 530) = 0;
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_1008725A0();
  }
}

void sub_10077B8BC(id *a1, void *a2)
{
  v4 = a2;
  v5 = a1 + 69;
  objc_storeStrong(a1 + 69, a2);
  v7 = a1[3];
  if (!v7)
  {
    v7 = a1[2];
  }

  v8 = *v5;
  if (*v5)
  {
    if ((*(a1 + 530) & 1) == 0 && *(a1 + 160) == 1 && *(a1 + 529) == 1)
    {
      v9 = sub_10000C7D0(v8, v6);
      v10 = (*(*v9 + 2184))(v9, v7, a1[3] != 0, [a1[69] length], objc_msgSend(*v5, "bytes"));
      *(a1 + 530) = 1;
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v12 = *a1;
      sub_10004D9B0(v7);
      if (v25 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = a1[65];
      v15 = *(a1 + 528);
      *buf = 138413314;
      v27 = v12;
      v28 = 2080;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 1024;
      v33 = v15;
      v34 = 1024;
      v35 = v10;
      v16 = "FastLEConnection:setLocalLTK writeStoredLTKForDevice device %@ (%s) controller cached data:%@ version:%d failed with error %d";
      v17 = v11;
      v18 = 44;
      goto LABEL_21;
    }

    v8 = [v8 length];
    if (v8)
    {
      goto LABEL_24;
    }
  }

  if (*(a1 + 530) == 1)
  {
    v19 = sub_10000C7D0(v8, v6);
    v20 = (*(*v19 + 2192))(v19, v7, a1[3] != 0);
    if (!v20)
    {
      *(a1 + 530) = 0;
      goto LABEL_24;
    }

    v21 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      v22 = *a1;
      sub_10004D9B0(v7);
      if (v25 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      *buf = 138412802;
      v27 = v22;
      v28 = 2080;
      v29 = v23;
      v30 = 1024;
      LODWORD(v31) = v20;
      v16 = "FastLEConnection:setLocalLTK removePeerControllerCachedInfo device %@ (%s) returned %d";
      v17 = v21;
      v18 = 28;
LABEL_21:
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_24:
}

void sub_10077BBC0(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 164) = a2;
  if (!a2)
  {
    a3 = 0;
  }

  *(a1 + 56) = a3;
  if (a2)
  {
    *(a1 + 416) = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    *(a1 + 165) = 0;
    *(a1 + 236) = 0;
  }
}

uint64_t sub_10077BC08(uint64_t result, int a2)
{
  *(result + 168) = a2;
  if (*(result + 164) == 1)
  {
    v2 = result;
    if (*(result + 532) == 3)
    {
      v3 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *v2;
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FastLEConnection:setLinkReadyDurationMS device %@ connected with Fast LE Connection cached info set by a CB client, removing.", &v5, 0xCu);
      }

      return sub_100779F0C(v2, 0, 0, 0);
    }
  }

  return result;
}