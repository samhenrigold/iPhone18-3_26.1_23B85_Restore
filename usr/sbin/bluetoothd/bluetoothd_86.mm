uint64_t sub_100629DD4(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004DF2AC(v2, v3, 6);
}

void *sub_100629E2C(uint64_t a1, unint64_t a2)
{
  v14 = a2;
  *buf = &v14;
  if (**(sub_10005E16C(a1 + 192, &v14, &unk_1008A9BD0, buf)[5] + 48) == 1)
  {
    v3 = sub_100017E6C();
    sub_100532AB8(v3 + 744, a1 + 32);
    v4 = sub_100017E6C();
    sub_10063DEBC(v4 + 824, a1 + 48);
  }

  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14, &unk_1008A9BD0, buf)[5] + 48) + 20) = 6;
  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14, &unk_1008A9BD0, buf)[5] + 48) + 1) = 0;
  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14, &unk_1008A9BD0, buf)[5] + 48) + 8) = 0;
  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14, &unk_1008A9BD0, buf)[5] + 48) + 2) = 0;
  *buf = &v14;
  *(*(sub_10005E16C(a1 + 192, &v14, &unk_1008A9BD0, buf)[5] + 48) + 3) = 0;
  v5 = sub_100017E6C();
  (*(*v5 + 224))(v5, *(a1 + 216) + 2);
  v6 = sub_100017E6C();
  (*(*v6 + 232))(v6, a1 + 928);
  v7 = *(a1 + 216);
  *(v7 + 5) = 0;
  *v7 = 1;
  *(v7 + 3) = 0;
  **(a1 + 224) = 0;
  if ((*(v7 + 2) & 1) != 0 || (*(v7 + 8) & 1) != 0 || *(v7 + 7) == 1)
  {
    v8 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 8);
      v10 = *(v7 + 7);
      *buf = 67109376;
      *&buf[4] = v9;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dynamic Latency: Re-enable LLM, fSpatialVideoOn = %d fSpatialMusicOn = %d", buf, 0xEu);
      v7 = *(a1 + 216);
    }

    v11 = v14;
    *buf = &v14;
    v12 = sub_10005E16C(a1 + 192, &v14, &unk_1008A9BD0, buf);
    sub_100119ED8(v7, v11, *(v12[5] + 92));
  }

  *buf = &v14;
  result = sub_10005E16C(a1 + 192, &v14, &unk_1008A9BD0, buf);
  if (*result[5])
  {
    return sub_10063247C(a1, v14);
  }

  return result;
}

void sub_10062A12C(uint64_t a1)
{
  *(a1 + 1133) = 0;
  v2 = *(a1 + 1136);
  if (v2)
  {
    sub_100637048(v2);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = off_100B6F7D8;
  v11 = off_100B6F7D8;
  if (!off_100B6F7D8)
  {
    v4 = sub_10063D1E8();
    v9[3] = dlsym(v4, "tailspin_config_create_with_default_config");
    off_100B6F7D8 = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v3)
  {
    v5 = v3();
    *(a1 + 1136) = v5;
    if (v5)
    {
      sub_100636ECC(v5);
      sub_100637048(*(a1 + 1136));
      *(a1 + 1136) = 0;
    }
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"tailspin_config_t BT::soft_tailspin_config_create_with_default_config()"];
    [v6 handleFailureInFunction:v7 file:@"AudioLinkManager.mm" lineNumber:102 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10062A29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10062A2CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1296) == a2)
  {
    v2 = *(a1 + 1248);
    if (v2)
    {
      do
      {
        v2 = *(v2 + 8);
      }

      while (v2);
    }

    else
    {
      v3 = a1 + 1248;
      do
      {
        v4 = **(v3 + 16) == v3;
        v3 = *(v3 + 16);
      }

      while (v4);
    }

    v5 = *(*sub_10000C7D0(a1, a2) + 3904);

    v5();
  }

  else
  {
    *(a1 + 1296) = a2;

    sub_10063771C(a1, a2);
  }
}

void *sub_10062A3BC(uint64_t a1, unint64_t a2, int a3)
{
  v27 = a2;
  v5 = sub_100630D70(a1, a2);
  *buf = &v27;
  *(sub_10005E16C(a1 + 192, &v27, &unk_1008A9BD0, buf)[5] + 72) = v5;
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = &v27;
    v7 = *(sub_10005E16C(a1 + 192, &v27, &unk_1008A9BD0, buf)[5] + 72);
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Packet Type: Link Adaptive Packet type support=%d", buf, 8u);
  }

  v8 = sub_100630E30(a1);
  if (v8)
  {
    v10 = sub_1000DAB84(v8, v9);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100630EF4;
    v26[3] = &unk_100AE0860;
    v26[4] = a1;
    v26[5] = v27;
    sub_10000CA94(v10, v26);
  }

  *buf = &v27;
  result = sub_10005E16C(a1 + 192, &v27, &unk_1008A9BD0, buf);
  if (*(result[5] + 72))
  {
    v12 = sub_100630F58(a1, v27);
    v14 = v12;
    if (a3)
    {
      *buf = &v27;
      v15 = sub_10005E16C(a1 + 192, &v27, &unk_1008A9BD0, buf);
      if (*(v15[5] + 72) == 2)
      {
        v17 = sub_1000DAB84(v15, v16);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100631020;
        v24[3] = &unk_100AF59D0;
        v25 = v14;
        sub_10000CA94(v17, v24);
        *buf = &v27;
        v18 = sub_10005E16C(a1 + 192, &v27, &unk_1008A9BD0, buf) + 5;
        v19 = 1;
LABEL_12:
        *(*v18 + 79) = v19;
        *buf = &v27;
        result = sub_10005E16C(a1 + 192, &v27, &unk_1008A9BD0, buf);
        *(result[5] + 76) = -1;
        return result;
      }

      *buf = &v27;
    }

    else
    {
      v20 = sub_1000DAB84(v12, v13);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100631078;
      v22[3] = &unk_100AF59D0;
      v23 = v14;
      sub_10000CA94(v20, v22);
      *buf = &v27;
    }

    v21 = sub_10005E16C(a1 + 192, &v27, &unk_1008A9BD0, buf);
    v19 = 0;
    v18 = v21 + 5;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10062A6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v6 = "Start";
    }

    else
    {
      v6 = "Stop";
    }

    v7 = sub_10000E92C();
    v8 = (*(*v7 + 624))(v7);
    v9 = "NOT FORCED";
    if (v8)
    {
      v9 = "FORCED";
    }

    v22 = 136315394;
    v23 = v6;
    v24 = 2080;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio Debug Stream State : %s Ultra High Priority %s ", &v22, 0x16u);
  }

  v10 = sub_10000E92C();
  result = (*(*v10 + 624))(v10);
  if (result)
  {
    v13 = sub_10000C7D0(result, v12);
    v14 = *(a2 + 128) | (*(a2 + 132) << 32);
    v15 = sub_1000DEB14(a2);
    v16 = (*(*v13 + 56))(v13, v14, v15, 2, a3, 1, 1, 0);
    v18 = *sub_10000C7D0(v16, v17);
    v19 = (*(v18 + 944))();
    v21 = sub_10000C7D0(v19, v20);
    return (*(*v21 + 80))(v21, a2, a3);
  }

  return result;
}

uint64_t sub_10062A90C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10062A928(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10062A940(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062A9BC;
  block[3] = &unk_100B00C18;
  block[4] = a1;
  block[5] = a2;
  v7 = a3;
  v6 = a4;
  dispatch_async(v4, block);
}

void sub_10062A9BC(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 200);
    if (v4)
    {
      v6 = v3 + 192;
      v7 = v3 + 200;
      do
      {
        v8 = *(v4 + 32);
        v9 = v8 >= v1;
        v10 = v8 < v1;
        if (v9)
        {
          v7 = v4;
        }

        v4 = *(v4 + 8 * v10);
      }

      while (v4);
      if (v7 != v3 + 200 && v1 >= *(v7 + 32))
      {
        v11 = *(a1 + 52);
        *buf = a1 + 40;
        *(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 68) = v11;
        if (qword_100B512B8 != -1)
        {
          sub_100853E48();
        }

        sub_10031A0F0(qword_100B512B0, *(a1 + 40), 0, *(a1 + 48));
        v12 = *(a1 + 48);
        *buf = v2;
        *(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 88) = v12;
        v13 = sub_10000E92C();
        LOBYTE(v12) = (*(*v13 + 296))(v13);
        *buf = v2;
        *(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 64) = v12 ^ 1;
        *buf = v2;
        if (*(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 64) == 1)
        {
          *buf = v2;
          if (*sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5])
          {
            if (*(a1 + 52) >= *(v3 + 1182))
            {
              v14 = *(v3 + 1182);
            }

            else
            {
              v14 = *(a1 + 52);
            }

            *buf = v2;
            *(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 66) = v14;
            v15 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              v34 = v2;
              v16 = sub_10005E16C(v6, v2, &unk_1008A9BD0, &v34);
              v17 = sub_10062ADB8(v16, *(v16[5] + 88));
              v34 = v2;
              v18 = *(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v34)[5] + 66);
              *buf = 138412546;
              *&buf[4] = v17;
              v36 = 1024;
              v37 = v18;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Bitrate for %@ started with initial bitrate of %3d", buf, 0x12u);
            }

            *buf = v2;
            v19 = *(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 92);
            *buf = v2;
            v20 = sub_10005E16C(v6, v2, &unk_1008A9BD0, buf);
            v22 = v3 + 1248;
            v23 = *(v3 + 1248);
            if (!v23)
            {
              goto LABEL_27;
            }

            v24 = v3 + 1248;
            do
            {
              v25 = *(v23 + 32);
              v9 = v25 >= v19;
              v26 = v25 < v19;
              if (v9)
              {
                v24 = v23;
              }

              v23 = *(v23 + 8 * v26);
            }

            while (v23);
            if (v24 == v22 || v19 < *(v24 + 32))
            {
LABEL_27:
              v24 = v3 + 1248;
            }

            v27 = *(v20[5] + 66);
            v28 = v24 != v22;
            v29 = sub_1000DAB84(v20, v21);
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_10062AEB8;
            v30[3] = &unk_100AF5990;
            v33 = v28;
            v31 = v19;
            v32 = v27;
            sub_10000CA94(v29, v30);
          }
        }
      }
    }
  }
}

id sub_10062ADB8(uint64_t a1, int a2)
{
  v3 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v4 = v3;
  switch(a2)
  {
    case 0:
      v5 = @"SBC";
      goto LABEL_7;
    case 33023:
      v5 = @"AAC-ELD";
      goto LABEL_7;
    case 2:
      v5 = @"AAC-LC";
LABEL_7:
      [v3 appendString:v5];
      goto LABEL_8;
  }

  [v3 appendString:@"Unknown Codec"];
  v7 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unknown codec", v8, 2u);
  }

LABEL_8:

  return v4;
}

void sub_10062AEB8(uint64_t result)
{
  if ((*(result + 36) & 1) == 0)
  {
    if (qword_100B50AE0 != -1)
    {
      sub_10085431C();
    }

    v3 = qword_100B50AD8;
    v4 = *(result + 32);
    v5 = *(result + 34);

    sub_1004DF868(v3, v4, v5);
  }
}

void sub_10062AF1C(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  v4 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062A9BC;
  block[3] = &unk_100B00C18;
  block[4] = a1 - 24;
  block[5] = a2;
  v7 = a3;
  v6 = a4;
  dispatch_async(v4, block);
}

void sub_10062AF9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062B010;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void *sub_10062B010(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result[4];
    v4 = *(v3 + 200);
    if (v4)
    {
      v5 = v3 + 192;
      v6 = v3 + 200;
      do
      {
        v7 = *(v4 + 32);
        v8 = v7 >= v1;
        v9 = v7 < v1;
        if (v8)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * v9);
      }

      while (v4);
      if (v6 != v3 + 200 && v1 >= *(v6 + 32))
      {
        v12 = result + 5;
        *(sub_10005E16C(v5, v2, &unk_1008A9BD0, &v12)[5] + 64) = 0;
        v10 = *(v3 + 1182);
        v12 = v2;
        *(sub_10005E16C(v5, v2, &unk_1008A9BD0, &v12)[5] + 66) = v10;
        v12 = v2;
        *(sub_10005E16C(v5, v2, &unk_1008A9BD0, &v12)[5] + 70) = -1;
        v11 = *(v3 + 1182);
        v12 = v2;
        *(sub_10005E16C(v5, v2, &unk_1008A9BD0, &v12)[5] + 68) = v11;
        v12 = v2;
        result = sub_10005E16C(v5, v2, &unk_1008A9BD0, &v12);
        *(result[5] + 88) = 0;
      }
    }
  }

  return result;
}

void sub_10062B15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 232);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062B010;
  v3[3] = &unk_100AE0860;
  v3[4] = a1 - 24;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10062B1D4(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B250;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B268(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B250;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B2E8(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B364;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B37C(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B364;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B3FC(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062B474;
  v3[3] = &unk_100AEB940;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10062B488(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 232);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062B474;
  v3[3] = &unk_100AEB940;
  v3[4] = a1 - 24;
  v4 = a2;
  dispatch_async(v2, v3);
}

double sub_10062B504(void *a1, int a2)
{
  v4 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (a2)
  {
    a1[106] = v4;
  }

  else
  {
    result = (v4 - a1[106]) * 0.000000001;
    a1[107] = result;
    a1[108] += result;
  }

  return result;
}

void sub_10062B568(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B5E4;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B5FC(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B5E4;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B67C(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B6F8;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B710(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B6F8;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B790(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B80C;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B824(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B80C;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B8A4(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B920;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B938(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062B920;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062B9B8(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062BA30;
  v3[3] = &unk_100AEB940;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10062BA30(uint64_t result)
{
  if (*(*(result + 32) + 888))
  {
    sub_1006EE6E4(*(*(result + 32) + 888), *(result + 40));
  }
}

void sub_10062BA4C(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 232);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062BA30;
  v3[3] = &unk_100AEB940;
  v3[4] = a1 - 24;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10062BAC8(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062BB44;
  block[3] = &unk_100AEDA40;
  v7 = a4;
  block[4] = a1;
  block[5] = a2;
  v6 = a3;
  dispatch_async(v4, block);
}

void sub_10062BB44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    if (*(a1 + 50))
    {
      v5 = "Publish ";
    }

    else
    {
      v5 = "Unpublish ";
    }

    *buf = 136446466;
    *&buf[4] = v5;
    v23 = 2048;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dynamic Latency : A2DP Device %{public}s, device: %p", buf, 0x16u);
  }

  v6 = (a1 + 40);
  if (*(a1 + 40))
  {
    v7 = _os_feature_enabled_impl();
    if (v7)
    {
      sub_10062636C(v7, *(a1 + 40), *(a1 + 50));
    }

    v8 = v2 + 200;
    v9 = *(v2 + 200);
    if (*(a1 + 50) == 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *v6;
      v11 = v2 + 200;
      do
      {
        v12 = *(v9 + 32);
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * v14);
      }

      while (v9);
      if (v11 == v8 || v10 < *(v11 + 32))
      {
LABEL_18:
        operator new();
      }

      if (qword_100B512B8 != -1)
      {
        sub_100853E48();
      }

      sub_100319DA8(qword_100B512B0, *(a1 + 40));
      v15 = *(a1 + 48);
      *buf = v6;
      *(sub_10005E16C(v2 + 192, v6, &unk_1008A9BD0, buf)[5] + 92) = v15;
      *buf = v6;
      *(sub_10005E16C(v2 + 192, v6, &unk_1008A9BD0, buf)[5] + 96) = 1;
      v16 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Initialize the fCurrentMode to %d", buf, 8u);
      }

      *buf = v6;
      **(sub_10005E16C(v2 + 192, v6, &unk_1008A9BD0, buf)[5] + 56) = 0;
      sub_10012077C(*(v2 + 216), *v6);
    }

    else if (v9)
    {
      v17 = *v6;
      v18 = v2 + 200;
      do
      {
        v19 = *(v9 + 32);
        v13 = v19 >= v17;
        v20 = v19 < v17;
        if (v13)
        {
          v18 = v9;
        }

        v9 = *(v9 + 8 * v20);
      }

      while (v9);
      if (v18 != v8 && v17 >= *(v18 + 32))
      {
        *buf = a1 + 40;
        *(sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, buf)[5] + 96) = 0;
        *buf = a1 + 40;
        if ((*(sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, buf)[5] + 95) & 1) == 0)
        {
          *buf = a1 + 40;
          if ((*(sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, buf)[5] + 96) & 1) == 0)
          {
            *buf = a1 + 40;
            v21 = sub_10005E16C(v2 + 192, (a1 + 40), &unk_1008A9BD0, buf)[5];
            if (v21)
            {
              sub_10063CEC8(v21);
              operator delete();
            }

            sub_100075DC4((v2 + 192), (a1 + 40));
            if (qword_100B512B8 != -1)
            {
              sub_100853E48();
            }

            sub_100319F44(qword_100B512B0, *v6);
          }
        }
      }
    }
  }
}

void sub_10062BF90(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v4 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062BB44;
  block[3] = &unk_100AEDA40;
  v7 = a4;
  block[4] = a1 - 24;
  block[5] = a2;
  v6 = a3;
  dispatch_async(v4, block);
}

void sub_10062C010(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062C08C;
  block[3] = &unk_100AEDA40;
  v7 = a4;
  v6 = a3;
  block[4] = a1;
  block[5] = a2;
  dispatch_async(v4, block);
}

void sub_10062C08C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (v2 + 1312);
  v4 = *(v2 + 1312);
  if (!v4)
  {
    notify_register_check("com.apple.bluetooth.WirelessSplitterOn", (v2 + 1312));
    v4 = *v3;
  }

  state64 = 0;
  notify_get_state(v4, &state64);
  v5 = state64;
  v6 = (v2 + 1316);
  v7 = *(v2 + 1316);
  if (v7 == -1)
  {
    notify_register_check("com.apple.bluetooth.GuestConnected", (v2 + 1316));
    v7 = *v6;
  }

  v8 = v5 & 1;
  v51 = 0;
  notify_get_state(v7, &v51);
  v9 = v51;
  if (*(a1 + 50) == 1)
  {
    if (!*(v2 + 1256))
    {
      goto LABEL_15;
    }

    v10 = *(v2 + 1248);
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = *(a1 + 48);
    v12 = v2 + 1248;
    do
    {
      v13 = *(v10 + 32);
      v14 = v13 >= v11;
      v15 = v13 < v11;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *(v10 + 8 * v15);
    }

    while (v10);
    if (v12 == v2 + 1248 || v11 < *(v12 + 32))
    {
LABEL_15:
      v16 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        if (v17)
        {
          sub_1000E5A58(v17, __p);
          if (v54 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136446210;
          v56 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is enabled for device %{public}s", buf, 0xCu);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v56 = "null";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is enabled for device %{public}s", buf, 0xCu);
        }
      }

      sub_10062C76C(v2, *(a1 + 40), *(a1 + 48));
    }

    v39 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 40);
      if (v40)
      {
        sub_1000E5A58(v40, __p);
        if (v54 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        *buf = 136446210;
        v56 = v41;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is already enabled for device %{public}s", buf, 0xCu);
        if (v54 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v56 = "null";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is already enabled for device %{public}s", buf, 0xCu);
      }
    }

    __p[0] = (a1 + 48);
    v46 = sub_1003750BC(v2 + 1240, (a1 + 48), &unk_1008A9BD0, __p);
    v47 = *(a1 + 50);
    if (*(v46[5] + 20) != v47 && !sub_10062C940(v46, *(a1 + 40), v47))
    {
      v48 = *(a1 + 50);
      __p[0] = (a1 + 48);
      *(sub_1003750BC(v2 + 1240, (a1 + 48), &unk_1008A9BD0, __p)[5] + 20) = v48;
    }

    if (*(*(a1 + 40) + 1016) == 1 && (v9 & 1) != 0)
    {
      v50 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Wireless Splitter aggregation enabled setting fGuestConnectedToken to disabled", __p, 2u);
      }

      v45 = 0;
LABEL_82:
      notify_set_state(*v6, v45);
      notify_post("com.apple.bluetooth.GuestConnected");
    }
  }

  else
  {
    v19 = (a1 + 48);
    v20 = (v2 + 1248);
    v21 = *(v2 + 1248);
    if (v21)
    {
      v22 = *v19;
      v23 = v2 + 1248;
      do
      {
        v24 = *(v21 + 32);
        v14 = v24 >= v22;
        v25 = v24 < v22;
        if (v14)
        {
          v23 = v21;
        }

        v21 = *(v21 + 8 * v25);
      }

      while (v21);
      if (v23 != v20 && v22 >= *(v23 + 32))
      {
        __p[0] = (a1 + 48);
        v26 = sub_1003750BC(v2 + 1240, (a1 + 48), &unk_1008A9BD0, __p);
        v27 = *(a1 + 50);
        if (*(v26[5] + 20) != v27 && !sub_10062C940(v26, *(a1 + 40), v27))
        {
          v28 = *(a1 + 50);
          __p[0] = (a1 + 48);
          *(sub_1003750BC(v2 + 1240, (a1 + 48), &unk_1008A9BD0, __p)[5] + 20) = v28;
        }
      }
    }

    sub_10053815C(*(a1 + 40), 0);
    v29 = *v20;
    if (!*v20)
    {
      goto LABEL_41;
    }

    v30 = *v19;
    v31 = v2 + 1248;
    do
    {
      v32 = *(v29 + 32);
      v14 = v32 >= v30;
      v33 = v32 < v30;
      if (v14)
      {
        v31 = v29;
      }

      v29 = *(v29 + 8 * v33);
    }

    while (v29);
    if (v31 != v20 && v30 >= *(v31 + 32))
    {
      v36 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(a1 + 40);
        if (v37)
        {
          sub_1000E5A58(v37, __p);
          if (v54 >= 0)
          {
            v38 = __p;
          }

          else
          {
            v38 = __p[0];
          }

          *buf = 136446210;
          v56 = v38;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is disabled for device %{public}s", buf, 0xCu);
          if (v54 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v56 = "null";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Wireless Splitter Mode is disabled for device %{public}s", buf, 0xCu);
        }
      }

      std::string::assign((v2 + 1320), "WS_ERROR_DISCONNECTION_MODE_DISABLED");
      sub_1005381A4(*(a1 + 40), 0);
      sub_10062CA18(v2, *(a1 + 48));
    }

    else
    {
LABEL_41:
      std::string::assign((v2 + 1320), "WS_ERROR_DISCONNECTION_NO_DEVICE_FOR_HANDLE");
      sub_10062CB34(v2);
      v34 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *v19;
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Wireless Splitter device does not exists with handle %d, it's already deleted", __p, 8u);
      }
    }

    v42 = *(a1 + 50);
    if (v8 != v42)
    {
      notify_set_state(*v3, v42);
      notify_post("com.apple.bluetooth.WirelessSplitterOn");
    }

    if (*(*(a1 + 40) + 1016) == 1 && (v9 & 1) == 0)
    {
      std::string::assign((v2 + 1320), "WS_ERROR_START_AGGREGATION_DISABLED");
      sub_10062CB34(v2);
      v44 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Wireless Splitter aggregation disabled setting fGuestConnectedToken to enabled", __p, 2u);
      }

      v45 = 1;
      goto LABEL_82;
    }
  }

  sub_100119ED8(*(v2 + 216), 0, *(a1 + 48));
}

void sub_10062C76C(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v8 = a3;
  if (*(a1 + 1256))
  {
    v4 = 4096;
  }

  else
  {
    v4 = 2048;
  }

  sub_1005381A4(a2, v4);
  v7 = 0;
  *__val = 0;
  v5 = 0;
  if (a2)
  {
    sub_1000C2364(a2, &v7, &__val[1], __val, &v5);
  }

  operator new();
}

uint64_t sub_10062C940(uint64_t a1, uint64_t a2, char a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = sub_1000D999C(a1, a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100637B88;
  v8[3] = &unk_100B02F10;
  v9 = a3;
  v8[4] = &v10;
  v8[5] = a2;
  sub_10000D334(v5, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_10062CA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10062CA18(const std::string *a1, unsigned __int16 a2)
{
  v5 = a2;
  sub_10062A2CC(a1, 0);
  sub_10062CB34(a1);
  *buf = &v5;
  if (sub_1003750BC(&a1[51].__r_.__value_.__r.__words[2], &v5, &unk_1008A9BD0, buf)[5])
  {
    operator delete();
  }

  sub_100480E04(&a1[51].__r_.__value_.__r.__words[2], &v5);
  a1[54].__r_.__value_.__s.__data_[0] = 0;
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    size = a1[52].__r_.__value_.__l.__size_;
    *buf = 67109376;
    *&buf[4] = v5;
    v7 = 2048;
    v8 = size;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter destroying aggregate device with handle %hu fWirelessSplitterA2dpDevices devices %lu left", buf, 0x12u);
  }
}

void sub_10062CB34(const std::string *a1)
{
  v2 = sub_100017E6C();
  sub_100532AB8(v2 + 744, &a1[1].__r_.__value_.__l.__size_);
  *a1[9].__r_.__value_.__l.__data_ = 1;
  if (a1[52].__r_.__value_.__r.__words[2])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = a1[52].__r_.__value_.__r.__words[2];
    v5 = *v4;
    LODWORD(v5) = *(v4 + 32);
    *(v4 + 32) = (Current - *v4 + v5);
    if (qword_100B50910 != -1)
    {
      sub_100854250();
    }

    v6 = a1[52].__r_.__value_.__r.__words[2];
    *(v6 + 36) += *(off_100B50908 + 54);
    if (*(v6 + 103) >= 0)
    {
      v7 = *(v6 + 103);
    }

    else
    {
      v7 = *(v6 + 88);
    }

    memset(v43, 0, 24);
    v8 = v43;
    sub_1003A5170(v43, v7 + 1);
    if (v43[23] < 0)
    {
      v8 = *v43;
    }

    if (v7)
    {
      v11 = *(v6 + 80);
      v10 = (v6 + 80);
      v9 = v11;
      if (v10[23] >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v9;
      }

      memmove(v8, v12, v7);
    }

    *&v8[v7] = 45;
    v13 = a1[52].__r_.__value_.__r.__words[2];
    v16 = *(v13 + 104);
    v14 = v13 + 104;
    v15 = v16;
    v17 = *(v14 + 23);
    if (v17 >= 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = v15;
    }

    if (v17 >= 0)
    {
      v19 = *(v14 + 23);
    }

    else
    {
      v19 = *(v14 + 8);
    }

    v20 = std::string::append(v43, v18, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    v60[0] = v20->__r_.__value_.__l.__size_;
    *(v60 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v23 = a1[52].__r_.__value_.__r.__words[2];
    if (*(v23 + 151) < 0)
    {
      operator delete(*(v23 + 128));
    }

    v24 = v60[0];
    *(v23 + 128) = v21;
    *(v23 + 136) = v24;
    *(v23 + 143) = *(v60 + 7);
    *(v23 + 151) = v22;
    if ((v43[23] & 0x80000000) != 0)
    {
      operator delete(*v43);
    }

    v25 = std::string::operator=((a1[52].__r_.__value_.__r.__words[2] + 152), a1 + 55);
    v27 = sub_10000F034(v25, v26);
    (*(*v27 + 176))(v27, a1[52].__r_.__value_.__r.__words[2]);
    v28 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v29 = a1[52].__r_.__value_.__r.__words[2];
      v30 = (v29 + 80);
      if (*(v29 + 103) < 0)
      {
        v30 = *v30;
      }

      v31 = (v29 + 104);
      if (*(v29 + 127) < 0)
      {
        v31 = *v31;
      }

      v32 = (v29 + 128);
      if (*(v29 + 151) < 0)
      {
        v32 = *v32;
      }

      v34 = *(v29 + 32);
      v33 = *(v29 + 36);
      v35 = *(v29 + 40);
      v36 = *(v29 + 44);
      v38 = *(v29 + 48);
      v37 = *(v29 + 52);
      v40 = *(v29 + 68);
      v39 = *(v29 + 72);
      v41 = (v29 + 152);
      if (*(v29 + 175) < 0)
      {
        v41 = *v41;
      }

      *v43 = 67111938;
      *&v43[4] = v34;
      *&v43[8] = 1024;
      *&v43[10] = v33;
      *&v43[14] = 1024;
      *&v43[16] = v35;
      *&v43[20] = 1024;
      *&v43[22] = v36;
      v44 = 1024;
      v45 = v38;
      v46 = 1024;
      v47 = v37;
      v48 = 1024;
      v49 = v40;
      v50 = 1024;
      v51 = v39;
      v52 = 2080;
      v53 = v30;
      v54 = 2080;
      v55 = v31;
      v56 = 2080;
      v57 = v32;
      v58 = 2080;
      v59 = v41;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Wireless Splitter submitting following metric: fTotalDurationSharingSession:%us fTotalSiriActivationDuringSession:%u Sessions fTotalIncomingCallsDuringSessio:%u Calls fTotalOutgoingCallsDuringSession:%u Calls fTotalMusicPlaybackDuration:%us fTotalVideoPlaybackDuration:%us fSharingSessionStart:%u [0:Owner,1:Prox,2:Boop,3:ReConn], fSharingSessionStop:%u, fOwnerWxProductID %s, fGuestWxProductID %s, fOwnerGuestWxProductID %s fErrorCode %s", v43, 0x5Au);
    }

    v42 = a1[52].__r_.__value_.__r.__words[2];
    if (v42)
    {
      if (*(v42 + 175) < 0)
      {
        operator delete(*(v42 + 152));
      }

      if (*(v42 + 151) < 0)
      {
        operator delete(*(v42 + 128));
      }

      if (*(v42 + 127) < 0)
      {
        operator delete(*(v42 + 104));
      }

      if (*(v42 + 103) < 0)
      {
        operator delete(*(v42 + 80));
      }

      operator delete();
    }

    a1[52].__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_10062CE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10062CEBC(uint64_t a1, uint64_t a2, __int16 a3, char a4)
{
  v4 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062C08C;
  block[3] = &unk_100AEDA40;
  v7 = a4;
  v6 = a3;
  block[4] = a1 - 24;
  block[5] = a2;
  dispatch_async(v4, block);
}

void sub_10062CF4C(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 256);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062CFC8;
  v4[3] = &unk_100AF5948;
  v4[4] = a1;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062CFE0(uint64_t a1, __int16 a2, char a3)
{
  v3 = *(a1 + 232);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10062CFC8;
  v4[3] = &unk_100AF5948;
  v4[4] = a1 - 24;
  v5 = a2;
  v6 = a3;
  dispatch_async(v3, v4);
}

void sub_10062D068(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D0E0;
  block[3] = &unk_100AE0EF8;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void sub_10062D0F4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D16C;
  block[3] = &unk_100AE0880;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void *sub_10062D16C(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 200);
  if (v2)
  {
    v3 = result[5];
    do
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        if (v4 >= v3)
        {
          v5 = *(result + 12);
          v6 = result + 5;
          result = sub_10005E16C(v1 + 192, result + 5, &unk_1008A9BD0, &v6);
          *(result[5] + 112) = v5;
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10062D1F0(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D2A0;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *sub_10062D2A0(void *result)
{
  v1 = result[5];
  v2 = *(v1 + 200);
  if (v2)
  {
    v3 = result;
    v4 = result[6];
    do
    {
      v5 = v2[4];
      if (v4 >= v5)
      {
        if (v5 >= v4)
        {
          v6 = result + 6;
          result = sub_10005E16C(v1 + 192, result + 6, &unk_1008A9BD0, &v6);
          *(*(v3[4] + 8) + 24) = *(result[5] + 112);
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10062D338(uint64_t a1, _WORD *a2)
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_5;
  }

  if (qword_100B50930 != -1)
  {
    sub_100854110();
  }

  result = sub_1000F2A34(off_100B50928, a2);
  if (!result)
  {
LABEL_5:
    v5 = *(a1 + 216);

    return sub_10011ECF4(v5, a2);
  }

  return result;
}

void sub_10062D3C4(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D43C;
  block[3] = &unk_100AE0EF8;
  block[4] = a1;
  block[5] = a3;
  v5 = a2;
  dispatch_async(v3, block);
}

void sub_10062D43C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  kdebug_trace();
  v4 = sub_10062D8E8(v2, *(a1 + 48));
  v35 = v4;
  if (v4)
  {
    v5 = *(v2 + 200);
    if (v5)
    {
      v6 = v2 + 192;
      v7 = v2 + 200;
      do
      {
        v8 = *(v5 + 32);
        v9 = v8 >= v4;
        v10 = v8 < v4;
        if (v9)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * v10);
      }

      while (v5);
      if (v7 != v2 + 200 && v4 >= *(v7 + 32))
      {
        *v37 = &v35;
        if (*sub_10005E16C(v6, &v35, &unk_1008A9BD0, v37)[5])
        {
          *v37 = &v35;
          *(*sub_10005E16C(v6, &v35, &unk_1008A9BD0, v37)[5] + 112) = 1;
          v11 = mach_absolute_time();
          *v37 = &v35;
          *(*sub_10005E16C(v6, &v35, &unk_1008A9BD0, v37)[5] + 120) = v11;
          *v37 = &v35;
          v12 = sub_10005E16C(v6, &v35, &unk_1008A9BD0, v37);
          v13 = *v3;
          if (*v3 >= 0x33)
          {
            v14 = *v12[5];
            v15 = *(v14 + 512);
            ++*(v14 + 504);
            if (v15 < v13)
            {
              *(v14 + 512) = v13;
            }
          }
        }

        *v37 = 0u;
        v38 = 0u;
        v34 = time(0);
        v16 = localtime(&v34);
        strftime(v37, 0x20uLL, "%Y_%m_%d_%H:%M:%S", v16);
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_1008544CC();
        }

        if (*v3 >= 0x1F && *(v2 + 1132) == 1 && *(v2 + 1136) && (*(v2 + 1133) & 1) == 0)
        {
          *(v2 + 1133) = 1;
          v17 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
          v18 = [NSString alloc];
          v19 = [v17 objectAtIndexedSubscript:0];
          v20 = [v18 initWithFormat:@"%@/Logs/Bluetooth", v19];

          v21 = [NSString stringWithFormat:@"Overwait_A2DP_%s.tailspin", v37];
          v22 = [v20 stringByAppendingPathComponent:v21];
          v23 = [v22 copy];

          v24 = v23;
          v25 = [v23 cStringUsingEncoding:4];
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
          {
            sub_100854550();
          }

          if (v25)
          {
            v26 = open(v25, 1537, 434);
            if ((v26 & 0x80000000) != 0)
            {
              v28 = qword_100BCE8D0;
              if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
              {
                v29 = [NSNumber numberWithInt:v26];
                sub_1008545C4(v29, buf, v28);
              }
            }

            else
            {
              v27 = *(v2 + 256);
              v30[0] = _NSConcreteStackBlock;
              v30[1] = 3221225472;
              v30[2] = sub_10062DB04;
              v30[3] = &unk_100B02E70;
              v32 = v2;
              v31 = v20;
              v33 = v26;
              sub_10062D954(v26, v27, v30);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
            {
              sub_10085461C();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10062D8E8(uint64_t a1, int a2)
{
  v2 = *(a1 + 192);
  v3 = (a1 + 200);
  if (v2 == (a1 + 200))
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(v2[5] + 92);
    v6 = v5 != a2 || v5 == 0;
    if (!v6)
    {
      result = v2[4];
    }

    v7 = v2[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v2[2];
        v6 = *v8 == v2;
        v2 = v8;
      }

      while (!v6);
    }

    v2 = v8;
  }

  while (v8 != v3);
  return result;
}

void sub_10062D954(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = off_100B6F7A8;
  v13 = off_100B6F7A8;
  if (!off_100B6F7A8)
  {
    v7 = sub_10063D1E8();
    v11[3] = dlsym(v7, "tailspin_dump_output_with_options");
    off_100B6F7A8 = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v6)
  {
    v6(a1, &off_100B343D8, a2, v5);
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"int BT::soft_tailspin_dump_output_with_options(int, NSDictionary * _Nullable __strong, dispatch_queue_t _Nullable, void (^ _Nullable __strong)(BOOL))"];
    [v8 handleFailureInFunction:v9 file:@"AudioLinkManager.mm" lineNumber:133 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_10062DAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10062DB04(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v6 = "successfully";
    }

    else
    {
      v6 = "not successfully";
    }

    v7 = [*(a1 + 32) UTF8String];
    v9 = 136315394;
    v10 = v6;
    v11 = 2080;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Captured tailspin %s at %s", &v9, 0x16u);
  }

  *(v4 + 1133) = 0;
  return close(*(a1 + 48));
}

void sub_10062DBF4(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062D43C;
  block[3] = &unk_100AE0EF8;
  block[4] = a1 - 24;
  block[5] = a3;
  v5 = a2;
  dispatch_async(v3, block);
}

void sub_10062DC70(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 256);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10062DCEC;
  v6[3] = &unk_100AF6B90;
  v7 = a4;
  v8 = a3;
  v6[4] = a1;
  v6[5] = a2;
  v9 = a5;
  dispatch_async(v5, v6);
}

uint64_t sub_10062DCEC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(result + 48);
  if (v3 <= 100)
  {
    if (v3 != 11)
    {
      if (v3 == 12)
      {
        v4 = *(result + 52);
        if (v4 == 1)
        {
          goto LABEL_10;
        }

        if (v4 == 16 && *(*(result + 40) + 1016) == 1)
        {
          v5 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device disconnected setting fGuestConnectedToken to disabled", v24, 2u);
          }

          std::string::assign((v2 + 1320), "WS_ERROR_DISCONNECTION_GUEST_DISCONNECTED");
          sub_10062CB34(v2);
          notify_set_state(*(v2 + 1316), 0);
          notify_post("com.apple.bluetooth.GuestConnected");
          if (*(v1 + 52) == 1)
          {
LABEL_10:
            v6 = *(v2 + 1184);
            if (v6 == -1)
            {
              v7 = (v2 + 1184);
              notify_register_check("com.apple.bluetooth.SmartRoutingDisconnectReason", v7);
              v6 = *v7;
            }

            v8 = *(v1 + 40);
            notify_set_state(v6, (v8[128] << 40) | (v8[129] << 32) | (v8[130] << 24) | (v8[131] << 16) | (v8[132] << 8) | v8[133] | (*(v1 + 56) << 48));
            notify_post("com.apple.bluetooth.SmartRoutingDisconnectReason");
          }
        }

        result = *(v1 + 40);
        if (*(result + 1435) != 1)
        {
          return sub_10054F9BC(result, 1);
        }
      }

      return result;
    }

    v9 = *(result + 52);
    if (v9 == 1)
    {
      if (*(v2 + 1256) < 2uLL || (v10 = *(v2 + 1240), v10 == (v2 + 1248)))
      {
        v9 = 1;
LABEL_52:
        v18 = *(v1 + 40);
        v19 = v9 != 1 || v18 == 0;
        if (!v19)
        {
          v20 = (v18[128] << 40) | (v18[129] << 32) | (v18[130] << 24) | (v18[131] << 16) | (v18[132] << 8);
          v21 = v18[133];
          v22 = *(v2 + 1184);
          if (v22 == -1)
          {
            v23 = (v2 + 1184);
            notify_register_check("com.apple.bluetooth.SmartRoutingDisconnectReason", v23);
            v22 = *v23;
          }

          notify_set_state(v22, v20 | v21);

          return notify_post("com.apple.bluetooth.SmartRoutingDisconnectReason");
        }

        return result;
      }

      do
      {
        v11 = *(v1 + 40);
        if (v11)
        {
          v12 = v10[5];
          if (*(v12 + 1) == v11 + 128)
          {
            v13 = *v12;
            if (v12[20] != v13)
            {
              result = sub_10062C940(result, v11, v13);
              v12[20] = *v12;
            }
          }
        }

        v14 = v10[1];
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
            v15 = v10[2];
            v19 = *v15 == v10;
            v10 = v15;
          }

          while (!v19);
        }

        v10 = v15;
      }

      while (v15 != (v2 + 1248));
      v9 = *(v1 + 52);
    }

    if (v9 == 16)
    {
      if (*(*(v1 + 40) + 1016) == 1 && *(v2 + 1256) != 2)
      {
        v16 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter connected guest device setting fGuestConnectedToken to enabled", buf, 2u);
        }

        notify_set_state(*(v2 + 1316), 1uLL);
        return notify_post("com.apple.bluetooth.GuestConnected");
      }

      return result;
    }

    goto LABEL_52;
  }

  if (v3 == 101)
  {
    if (*(v2 + 1256) >= 2uLL && *(v2 + 1264))
    {
      if (qword_100B50AD0 != -1)
      {
        sub_100853CDC();
      }

      result = sub_1005D09A8(off_100B50AC8, *(v1 + 40));
      if (result)
      {
        result = sub_100320F94(result + 400);
        v17 = *(v2 + 1264);
        if (result)
        {
          ++*(v17 + 40);
        }

        else
        {
          ++*(v17 + 44);
        }
      }
    }
  }

  else if (v3 == 103 && *(v2 + 1256) >= 2uLL && *(v2 + 1264))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_100853CDC();
    }

    result = sub_1005D09A8(off_100B50AC8, *(v1 + 40));
    if (result)
    {
      result = sub_100320E3C(result + 400);
      if (result)
      {
        ++*(*(v2 + 1264) + 36);
      }
    }
  }

  return result;
}

void sub_10062E10C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 216);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10062DCEC;
  v6[3] = &unk_100AF6B90;
  v7 = a4;
  v8 = a3;
  v6[4] = a1 - 40;
  v6[5] = a2;
  v9 = a5;
  dispatch_async(v5, v6);
}

void sub_10062E18C(uint64_t a1)
{
  v1 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062E200;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_10062E200(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[51].__r_.__value_.__r.__words[2];
  v3 = &v1[52];
  if (v2 != &v1[52])
  {
    do
    {
      if (qword_100B508F0 != -1)
      {
        sub_100853FB4();
      }

      v4 = *(*(v2 + 5) + 8);
      v5 = *(v4 + 4);
      *buf = *v4;
      *&buf[4] = v5;
      v6 = sub_1000E6554(off_100B508E8, buf, 1);
      if (v6)
      {
        v7 = v6;
        sub_10062C940(v6, v6, 0);
        v8 = v1[52].__r_.__value_.__r.__words[2];
        if (v8 && *(v7 + 1016) == 1)
        {
          *(v8 + 72) = *(v7 + 1036);
        }

        sub_10053815C(v7, 0);
      }

      sub_10062CB34(v1);
      *buf = v2 + 16;
      if (sub_1003750BC(&v1[51].__r_.__value_.__r.__words[2], v2 + 16, &unk_1008A9BD0, buf)[5])
      {
        operator delete();
      }

      v9 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v2[16];
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter destroying aggregate device with handle %hu", buf, 8u);
      }

      v11 = *(v2 + 1);
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
          v12 = *(v2 + 2);
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }

  v1[54].__r_.__value_.__s.__data_[0] = 0;
  sub_10000CEDC(&v1[51].__r_.__value_.__r.__words[2], v1[52].__r_.__value_.__l.__data_);
  v1[51].__r_.__value_.__r.__words[2] = v3;
  *&v1[52].__r_.__value_.__l.__data_ = 0u;
  v14 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wireless Splitter size of fWirelessSplitterA2dpDevices %lu ", buf, 0xCu);
  }
}

void sub_10062E458(uint64_t a1)
{
  v1 = a1 - 24;
  v2 = *(a1 + 232);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062E200;
  block[3] = &unk_100ADF8F8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_10062E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062E544;
  block[3] = &unk_100AEC130;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v3, block);
}

void *sub_10062E544(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result[4];
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = result;
      v8 = v4 - 8;
      v9 = v4;
      do
      {
        v10 = *(v5 + 32);
        v11 = v10 >= v1;
        v12 = v10 < v1;
        if (v11)
        {
          v9 = v5;
        }

        v5 = *(v5 + 8 * v12);
      }

      while (v5);
      if (v9 != v4 && v1 >= *(v9 + 32))
      {
        *buf = result + 5;
        if ((*(sub_10005E16C(v8, v2, &unk_1008A9BD0, buf)[5] + 64) & 1) != 0 || (*buf = v2, *(sub_10005E16C(v8, v2, &unk_1008A9BD0, buf)[5] + 72) == 1))
        {
          *buf = v2;
          *(sub_10005E16C(v8, v2, &unk_1008A9BD0, buf)[5] + 78) = 1;
        }

        *buf = v2;
        result = sub_10005E16C(v8, v2, &unk_1008A9BD0, buf);
        if (*result[5])
        {
          *buf = v2;
          v13 = sub_10005E16C(v8, v2, &unk_1008A9BD0, buf);
          ++*(*v13[5] + 316);
          *buf = v2;
          result = sub_10005E16C(v8, v2, &unk_1008A9BD0, buf);
          v14 = v7[6];
          if (*(*result[5] + 80) <= v14)
          {
            *buf = v2;
            v15 = sub_10005E16C(v8, v2, &unk_1008A9BD0, buf);
            *(*v15[5] + 80) = v7[6] + 60000000;
            v23 = 0;
            v17 = sub_10000C7D0(v15, v16);
            v19 = sub_10041074C(v17, v18);
            if (v19)
            {
              *buf = v2;
              v23 = *(*sub_10005E16C(v8, v2, &unk_1008A9BD0, buf)[5] + 388);
            }

            else
            {
              v21 = sub_10000C7D0(v19, v20);
              (*(*v21 + 304))(v21, *v2 + 128, &v23);
            }

            *buf = v2;
            v22 = sub_10005E16C(v8, v2, &unk_1008A9BD0, buf);
            sub_10062EA28(*v22[5], v14, v23, 0);
          }
        }
      }
    }
  }

  return result;
}

float sub_10062EB2C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 272) * a2 / *(a1 + 276) / 0x3E8;
  if (!a3)
  {
    v5 = v3;
    v6 = 1000000.0;
    return v5 / v6;
  }

  if (a3 == 1)
  {
    v5 = v3;
    v6 = 1000.0;
    return v5 / v6;
  }

  result = 0.0;
  if (a3 == 2)
  {
    return v3;
  }

  return result;
}

void sub_10062EB9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062EC10;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10062EC10(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = v4 - 8;
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v1;
        v11 = v9 < v1;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v1 >= *(v8 + 32))
      {
        *buf = a1 + 40;
        if (*(sub_10005E16C(v7, v2, &unk_1008A9BD0, buf)[5] + 16))
        {
          *buf = v2;
          v12 = sub_10005E16C(v7, v2, &unk_1008A9BD0, buf);
          ++*(*(v12[5] + 16) + 60);
          v13 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v2;
            v14 = *(*(sub_10005E16C(v7, v2, &unk_1008A9BD0, buf)[5] + 16) + 60);
            *buf = 67109120;
            *&buf[4] = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AMP Metric fTotalErrorTonePerSession is %d", buf, 8u);
          }
        }
      }
    }
  }
}

void sub_10062ED90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062EE04;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void sub_10062EE04(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = v4 - 8;
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v1;
        v11 = v9 < v1;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v1 >= *(v8 + 32))
      {
        *buf = a1 + 40;
        if (*(sub_10005E16C(v7, v2, &unk_1008A9BD0, buf)[5] + 16))
        {
          *buf = v2;
          v12 = sub_10005E16C(v7, v2, &unk_1008A9BD0, buf);
          ++*(*(v12[5] + 16) + 56);
          v13 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v2;
            v14 = *(*(sub_10005E16C(v7, v2, &unk_1008A9BD0, buf)[5] + 16) + 56);
            *buf = 67109120;
            *&buf[4] = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "AMP Metric fBudSwapCount is %d", buf, 8u);
          }
        }
      }
    }
  }
}

void sub_10062EF84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10062EFF8;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void *sub_10062EFF8(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result[4];
    v6 = *(v3 + 200);
    v4 = v3 + 200;
    v5 = v6;
    if (v6)
    {
      v7 = v4 - 8;
      v8 = v4;
      do
      {
        v9 = *(v5 + 32);
        v10 = v9 >= v1;
        v11 = v9 < v1;
        if (v10)
        {
          v8 = v5;
        }

        v5 = *(v5 + 8 * v11);
      }

      while (v5);
      if (v8 != v4 && v1 >= *(v8 + 32))
      {
        v12 = result + 5;
        if (!*(sub_10005E16C(v7, v2, &unk_1008A9BD0, &v12)[5] + 16))
        {
          operator new();
        }

        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_100854690();
        }

        v12 = v2;
        if (*(sub_10005E16C(v7, v2, &unk_1008A9BD0, &v12)[5] + 16))
        {
          operator delete();
        }

        v12 = v2;
        result = sub_10005E16C(v7, v2, &unk_1008A9BD0, &v12);
        *(result[5] + 16) = 0;
      }
    }
  }

  return result;
}

void sub_10062F210(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062F288;
  block[3] = &unk_100AEC130;
  block[4] = a1;
  block[5] = a2;
  v6 = a4;
  v7 = a3;
  dispatch_async(v4, block);
}

void sub_10062F288(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 200);
    if (v4)
    {
      v6 = v3 + 192;
      v7 = v3 + 200;
      do
      {
        v8 = *(v4 + 32);
        v9 = v8 >= v1;
        v10 = v8 < v1;
        if (v9)
        {
          v7 = v4;
        }

        v4 = *(v4 + 8 * v10);
      }

      while (v4);
      if (v7 != v3 + 200 && v1 >= *(v7 + 32))
      {
        *buf = a1 + 40;
        if (*(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 16))
        {
          v11 = *(a1 + 48);
          *buf = v2;
          *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 16) + 64) = v11;
          v12 = *(a1 + 52);
          *buf = v2;
          *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 16) + 68) = v12;
          v13 = *(v3 + 400);
          *buf = v2;
          v14 = sub_10005E16C(v6, v2, &unk_1008A9BD0, buf);
          *(*(v14[5] + 16) + 72) += v13;
          *buf = v2;
          v15 = sub_10005E16C(v6, v2, &unk_1008A9BD0, buf);
          ++*(*(v15[5] + 16) + 80);
          v16 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(v3 + 400);
            *buf = v2;
            v18 = *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 16) + 72);
            *buf = v2;
            v19 = *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, buf)[5] + 16) + 80);
            *buf = 67109632;
            *&buf[4] = v17;
            v21 = 2048;
            v22 = v18;
            v23 = 1024;
            v24 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "AMP Link UpdateAudioSkipDuration rssi %d, total rssi %lld, skip %u", buf, 0x18u);
          }
        }
      }
    }
  }
}

void sub_10062F4E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100007E30(a2, "Audio");
  v4 = *(a1 + 216);
  if (v4[8] == 1)
  {
    std::string::assign(a2, "Video");
    v4 = *(a1 + 216);
  }

  if (v4[7] == 1)
  {
    std::string::assign(a2, "Audio");
    v4 = *(a1 + 216);
  }

  if (v4[5] == 1)
  {
    std::string::assign(a2, "Game");
    v4 = *(a1 + 216);
  }

  if (v4[3] == 1)
  {
    std::string::assign(a2, "VoiceOver");
    v4 = *(a1 + 216);
  }

  if (v4[2] == 1)
  {
    std::string::assign(a2, "GarageBand");
  }

  v5 = (a1 + 1216);
  v6 = *(a1 + 1239);
  if (v6 < 0)
  {
    if (*(a1 + 1224) == 3 && **v5 == 26191 && *(*v5 + 2) == 102)
    {
      goto LABEL_54;
    }

    if (*(a1 + 1224) != 13)
    {
      goto LABEL_32;
    }

    v7 = *v5;
LABEL_22:
    v9 = *v7;
    v10 = *(v7 + 5);
    if (v9 == 0x7053206465786946 && v10 == 0x6C61697461705320)
    {
      goto LABEL_54;
    }

    goto LABEL_32;
  }

  if (v6 == 3)
  {
    if (*v5 == 26191 && *(a1 + 1218) == 102)
    {
      goto LABEL_54;
    }

    goto LABEL_32;
  }

  v7 = (a1 + 1216);
  if (*(a1 + 1239) == 13)
  {
    goto LABEL_22;
  }

LABEL_32:
  v13 = *(a1 + 216);
  if ((*(v13 + 7) & 1) != 0 || *(v13 + 8) == 1)
  {
    if (v6 >= 0)
    {
      v14 = *(a1 + 1239);
    }

    else
    {
      v14 = *(a1 + 1224);
    }

    memset(&__p, 0, sizeof(__p));
    p_p = &__p;
    sub_1003A5170(&__p, v14 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v14)
    {
      if (*(a1 + 1239) >= 0)
      {
        v16 = (a1 + 1216);
      }

      else
      {
        v16 = *(a1 + 1216);
      }

      memmove(p_p, v16, v14);
    }

    *(&p_p->__r_.__value_.__l.__data_ + v14) = 32;
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (v17 >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    v20 = std::string::append(&__p, v18, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    *&v34 = v20->__r_.__value_.__l.__size_;
    *(&v34 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v21;
    *(a2 + 8) = v34;
    *(a2 + 15) = *(&v34 + 7);
    *(a2 + 23) = v22;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_54:
  if (*(*(a1 + 216) + 5) != 1)
  {
    return;
  }

  memset(&__p, 0, sizeof(__p));
  sub_100007E30(&__p, "Game");
  if (*(a1 + 1239) < 0)
  {
    if (*(a1 + 1224) == 3 && **v5 == 26191 && *(*v5 + 2) == 102)
    {
      goto LABEL_86;
    }

    if (*(a1 + 1224) != 13)
    {
      goto LABEL_76;
    }

    v23 = *v5;
    goto LABEL_66;
  }

  if (*(a1 + 1239) != 3)
  {
    v23 = (a1 + 1216);
    if (*(a1 + 1239) != 13)
    {
      goto LABEL_76;
    }

LABEL_66:
    v25 = *v23;
    v26 = *(v23 + 5);
    if (v25 != 0x7053206465786946 || v26 != 0x6C61697461705320)
    {
      goto LABEL_76;
    }

    goto LABEL_86;
  }

  if (*v5 != 26191 || *(a1 + 1218) != 102)
  {
LABEL_76:
    v29 = *(a1 + 216);
    if ((*(v29 + 7) & 1) != 0 || *(v29 + 8) == 1)
    {
      std::operator+<char>();
      v30 = (v35 & 0x80u) == 0 ? &v34 : v34;
      v31 = (v35 & 0x80u) == 0 ? v35 : *(&v34 + 1);
      std::string::append(&__p, v30, v31);
      if (v35 < 0)
      {
        operator delete(v34);
      }
    }
  }

LABEL_86:
  v32 = *(a1 + 216);
  if (v32[7] == 1)
  {
    std::string::append(&__p, " + Audio");
    v32 = *(a1 + 216);
  }

  if (v32[8] == 1)
  {
    std::string::append(&__p, " + Video");
    v32 = *(a1 + 216);
  }

  if (v32[2] == 1)
  {
    std::string::append(&__p, " + GarageBand");
    v32 = *(a1 + 216);
  }

  if (v32[3] == 1)
  {
    std::string::append(&__p, " + VoiceOver");
  }

  std::string::operator=(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10062F98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10062F9E8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062FA60;
  block[3] = &unk_100AE0880;
  v5 = a3;
  block[4] = a1;
  block[5] = a2;
  dispatch_async(v3, block);
}

void *sub_10062FA60(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (qword_100B50940 != -1)
  {
    sub_100853F30();
  }

  *(off_100B50938 + 58) = v2;
  *(off_100B50938 + 23) = 0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008546CC();
  }

  sub_100627064(v3, *(a1 + 40), 0);
  return sub_10061D9F4(v3, *(a1 + 40));
}

uint64_t sub_10062FB08(uint64_t a1, uint64_t a2)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v4 = sub_1000E2140(a2, 0xCu);
    if (v4 || (result = sub_100627568(v4, a2), result))
    {

      return notify_post("com.apple.bluetooth.audioQuality");
    }
  }

  return result;
}

uint64_t sub_10062FB80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10062FC04;
  block[3] = &unk_100B02E90;
  block[4] = a1;
  block[5] = a2;
  v9 = a6;
  v10 = a4;
  block[6] = a3;
  block[7] = a5;
  dispatch_async(v6, block);
  return 0;
}

void sub_10062FC04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_1008540D4();
  }

  v3 = sub_1000504C8(off_100B508E8, *(a1 + 40), 0);
  if (qword_100B50910 != -1)
  {
    sub_100854250();
  }

  v4 = *(off_100B50908 + 205);
  v5 = *(a1 + 64);
  if (_os_feature_enabled_impl())
  {
    if (qword_100B50930 != -1)
    {
      sub_100854110();
    }

    sub_1000F2B48(off_100B50928, *(a1 + 68));
  }

  if (*(a1 + 68) == 1)
  {
    if (!sub_10062FF34(v2, *(a1 + 40), *(a1 + 48)))
    {
      v12 = 0;
      goto LABEL_37;
    }

    v6 = *(v2 + 904);
    v7 = *(v2 + 912);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      sub_1003A898C(v6, *(a1 + 56));
      v8 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "No";
        v10 = *(v6 + 77);
        if (v4)
        {
          v9 = "Yes";
        }

        v16 = 136315394;
        v17 = v9;
        v18 = 1024;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Stream Status %s  Already Running %d ", &v16, 0x12u);
      }

      if (*(v6 + 77) == 1 && (v5 - 3) < 0xFFFFFFFE)
      {
        v12 = 1;
        if (!v7)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_100117644(v7);
        goto LABEL_37;
      }

      v12 = 1;
      sub_1003A77B8(v6, v3, 1, *(a1 + 64));
LABEL_34:
      if (!v7)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  v13 = *(v2 + 904);
  v7 = *(v2 + 912);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  if ((v5 - 1) <= 1)
  {
    sub_1003A77B8(v13, v3, 0, *(a1 + 64));
  }

  sub_10007A3F0(v13 + 128, *(a1 + 56));
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
  {
    sub_100854740();
  }

  v12 = sub_10063007C(v2, *(a1 + 40), *(a1 + 48));
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_37:
  v14 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "Disable";
    if (*(a1 + 68))
    {
      v15 = "Enable";
    }

    v16 = 136315394;
    v17 = v15;
    v18 = 1024;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Enable/Disable Remote Timesync operation %s: Status %x ", &v16, 0x12u);
  }
}

uint64_t sub_10062FF34(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = sub_100630220();
  if (result)
  {
    v7 = 0;
    if (!*(a1 + 904))
    {
      operator new();
    }

    return sub_1003A6B20(*(a1 + 904), a2, a3, &v7);
  }

  return result;
}

void sub_100630030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100117644(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063005C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 912);
  *a2 = *(result + 904);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10063007C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!sub_100630220())
  {
    return 0;
  }

  v6 = *(a1 + 904);
  v7 = *(a1 + 912);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  v17 = 0;
  if (!sub_1003A7300(v6, a2, a3, &v17))
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_1008547B8();
    }

LABEL_22:
    v12 = 0;
    if (!v7)
    {
      return v12;
    }

LABEL_23:
    sub_100117644(v7);
    return v12;
  }

  if (v17)
  {
    goto LABEL_22;
  }

  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Deleting  mBTTimeSyncManager", buf, 2u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008547F4();
  }

  v9 = off_100B50A98;
  v10 = *(a1 + 912);
  v14 = *(a1 + 904);
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10063D9B4(v9 + 96, &v14);
  if (v15)
  {
    sub_100117644(v15);
  }

  v11 = *(a1 + 912);
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  if (v11)
  {
    sub_100117644(v11);
  }

  v12 = 1;
  if (v7)
  {
    goto LABEL_23;
  }

  return v12;
}

void sub_1006301F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  if (v10)
  {
    sub_100117644(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100630220()
{
  v0 = sub_10000E92C();
  v1 = (*(*v0 + 536))(v0);
  if (v1)
  {
    return 0;
  }

  v4 = sub_10000C7D0(v1, v2);
  v6 = sub_100410E9C(v4, v5);
  if (v6)
  {
    return 1;
  }

  v8 = *(*sub_10000C798(v6, v7) + 840);

  return v8();
}

uint64_t sub_100630310()
{
  result = sub_100630220();
  if (result)
  {
    v2 = sub_10000C7D0(result, v1);
    if (sub_100410E9C(v2, v3))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_100630340(uint64_t a1, unsigned __int8 *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v3 = a2[128];
  v4 = a2[129];
  v5 = a2[130];
  v6 = a2[131];
  v7 = a2[132];
  v8 = a2[133];
  v18 = TSNullClockIdentifier;
  if (qword_100B50940 != -1)
  {
    sub_10085481C();
  }

  v9 = *(off_100B50938 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006304F0;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8;
  block[4] = &v15;
  dispatch_sync(v9, block);
  v10 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v16[3];
    *buf = 134217984;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Reference Timestamp ID: %llx ", buf, 0xCu);
  }

  v12 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v12;
}

void sub_1006304F0(void *a1)
{
  v2 = a1[5];
  if (qword_100B508F0 != -1)
  {
    sub_1008540D4();
  }

  v3 = sub_1000504C8(off_100B508E8, a1[6], 0);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 904);
    v6 = *(v2 + 912);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      sub_1003A8168(v5, (*(a1[4] + 8) + 24), (v4[128] << 40) | (v4[129] << 32) | (v4[130] << 24) | (v4[131] << 16) | (v4[132] << 8) | v4[133]);
    }

    if (v6)
    {

      sub_100117644(v6);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100854844();
  }
}

void sub_100630604(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100117644(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063061C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[113];
  v4 = a1[114];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[32];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_1006306D8;
  v6[3] = &unk_100B02EB0;
  v6[4] = v3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a2;
  v9 = a3;
  dispatch_async(v5, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1006306D8(uint64_t *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[4];
      if (v4)
      {
        if (sub_1003A9550(a1[4]))
        {
          sub_1003A66BC(v4, a1[6], a1[7], 0);
          sub_1003A94D4(v4);
LABEL_10:
          sub_100117644(v3);
          return;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Legacy timesync trigger ended", v6, 2u);
  }

  if (v3)
  {
    goto LABEL_10;
  }
}

void sub_1006307B4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(*(a1 + 32) + 344))
    {
      v3 = 0;
      sub_1000216B4(&v3);
      sub_10024DEFC(sub_100630888, *(a1 + 40) + 128);
      sub_100022214(&v3);
      sub_10002249C(&v3);
    }

    else
    {
      v2 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack is not running. So, cannot issue the readLocalBTClock command", buf, 2u);
      }
    }
  }
}

void sub_100630888(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B50940 != -1)
  {
    sub_100853F30();
  }

  v4 = off_100B50938;
  v5 = mach_absolute_time();

  sub_10063061C(v4, v5, 312500 * a3);
}

uint64_t sub_1006308F0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && (v15 = 0, sub_1000216B4(&v15), v11 = sub_1000E1FE8(a2 + 128), sub_100022214(&v15), a1 = sub_10002249C(&v15), v11))
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0xFFFFLL;
  }

  v13 = sub_10000C7D0(a1, a2);
  return (*(*v13 + 1912))(v13, a3, a4, v12, a5, a6);
}

void sub_1006309CC(uint64_t a1)
{
  v1 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100630A40;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

uint64_t sub_100630A40(uint64_t a1)
{
  result = *(*(a1 + 32) + 888);
  if (result)
  {
    return sub_1006ED208(result);
  }

  return result;
}

void sub_100630A54(uint64_t a1, char a2, char a3, char a4, const void *a5, size_t size)
{
  v6 = size;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v12 = size;
  v22 = malloc_type_malloc(size, 0x100004077774924uLL);
  memcpy(v20[3], a5, v12);
  v13 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100630B60;
  block[3] = &unk_100B02EE8;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  block[4] = &v19;
  block[5] = a1;
  v18 = v6;
  dispatch_async(v13, block);
  _Block_object_dispose(&v19, 8);
}

void sub_100630B60(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 888);
  if (v2)
  {
    sub_1006ED3C0(v2, *(a1 + 48), *(a1 + 49), *(a1 + 50), *(*(*(a1 + 32) + 8) + 24));
  }

  v3 = *(*(*(a1 + 32) + 8) + 24);

  free(v3);
}

unint64_t sub_100630BC8(uint64_t a1, int a2, float a3)
{
  result = sub_10062D8E8(a1, a2);
  v15 = result;
  if (result)
  {
    v8 = *(a1 + 200);
    v7 = a1 + 200;
    v6 = v8;
    if (v8)
    {
      v9 = v7 - 8;
      v10 = v7;
      do
      {
        v11 = *(v6 + 32);
        v12 = v11 >= result;
        v13 = v11 < result;
        if (v12)
        {
          v10 = v6;
        }

        v6 = *(v6 + 8 * v13);
      }

      while (v6);
      if (v10 != v7 && result >= *(v10 + 32))
      {
        v16 = &v15;
        result = sub_10005E16C(v9, &v15, &unk_1008A9BD0, &v16);
        if (**(result + 40))
        {
          v16 = &v15;
          result = sub_10005E16C(v9, &v15, &unk_1008A9BD0, &v16);
          v14 = **(result + 40);
          *(v14 + 396) = *(v14 + 396) + a3;
          ++*(v14 + 400);
        }
      }
    }
  }

  return result;
}

BOOL sub_100630CD4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 888))
  {
    return 0;
  }

  v2 = *(a1 + 896);
  return v2 && v2 == a2;
}

unint64_t sub_100630CF8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  sub_1000C2364(a2, &v6, &v5, &v4 + 1, &v4);
  LOBYTE(v2) = 0;
  if (v5 == 76)
  {
    v2 = 0x200020033FuLL >> (BYTE4(v4) - 10);
    if ((HIDWORD(v4) - 8202) > 0x25)
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

unint64_t sub_100630D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E92C();
  v5 = (*(*v4 + 304))(v4);
  if (v5)
  {
    return 0;
  }

  v7 = sub_10000C798(v5, v6);
  if ((*(*v7 + 368))(v7))
  {
    return 0;
  }

  v8 = sub_100630E30(a1);
  if (v8)
  {
    return 0;
  }

  result = sub_100630CF8(v8, a2);
  if (result)
  {
    v11 = sub_10000C7D0(result, v10);
    if (sub_10041074C(v11, v12))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

BOOL sub_100630E30(uint64_t a1)
{
  v1 = *(a1 + 1256);
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "disabled";
    if (v1 > 1)
    {
      v3 = "enabled";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wireless Splitter - isWirelessSplitterEnabled is %s ", &v5, 0xCu);
  }

  return v1 > 1;
}

uint64_t sub_100630EF4(uint64_t a1)
{
  v1 = sub_100630F58(*(a1 + 32), *(a1 + 40));
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;

  return sub_1004D1518(v2, v1, 1);
}

uint64_t sub_100630F58(uint64_t a1, unint64_t a2)
{
  v11 = a2;
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 200);
  v2 = a1 + 200;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2 - 8;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2)
  {
    return 0;
  }

  if (*(v6 + 32) > a2)
  {
    return 0;
  }

  v12 = &v11;
  if (!*(sub_10005E16C(v2 - 8, &v11, &unk_1008A9BD0, &v12)[5] + 92))
  {
    return 0;
  }

  v12 = &v11;
  return *(sub_10005E16C(v5, &v11, &unk_1008A9BD0, &v12)[5] + 92);
}

uint64_t sub_100631020(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004D1518(v2, v3, 1);
}

uint64_t sub_100631078(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004D1518(v2, v3, 0);
}

uint64_t sub_1006310D0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004D1518(v2, v3, 1);
}

uint64_t sub_100631128(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004D1518(v2, v3, 0);
}

void sub_100631180(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v16 = a2;
  *buf = &v16;
  *(sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf)[5] + 66) = a3;
  *buf = &v16;
  if (*(sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf)[5] + 66) >= *(a1 + 1176) && (*buf = &v16, *sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf)[5]))
  {
    *buf = &v16;
    v5 = sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf);
    ++*(*v5[5] + 384);
  }

  else
  {
    *buf = &v16;
    if (*(sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf)[5] + 66) >= *(a1 + 1178) && (*buf = &v16, *sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf)[5]))
    {
      *buf = &v16;
      v6 = sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf);
      ++*(*v6[5] + 380);
    }

    else
    {
      *buf = &v16;
      if (*sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf)[5])
      {
        *buf = &v16;
        v7 = sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf);
        ++*(*v7[5] + 376);
      }

      else
      {
        v8 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Bitrate: Metrics not enabled", buf, 2u);
        }
      }
    }
  }

  v9 = sub_100630F58(a1, v16);
  *buf = &v16;
  v10 = sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf);
  if (*(v10[5] + 68) < v3)
  {
    *buf = &v16;
    v10 = sub_10005E16C(a1 + 192, &v16, &unk_1008A9BD0, buf);
    LOWORD(v3) = *(v10[5] + 68);
  }

  v12 = sub_1000DAB84(v10, v11);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10063148C;
  v13[3] = &unk_100AE0900;
  v14 = v9;
  v15 = v3;
  sub_10000CA94(v12, v13);
}

void sub_10063148C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);

  sub_1004DF868(v2, v3, v4);
}

void *sub_1006314E4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v7 = a2;
  v8 = &v7;
  v5 = sub_10005E16C(a1 + 192, &v7, &unk_1008A9BD0, &v8);
  ++*(v5[5] + 70);
  v8 = &v7;
  result = sub_10005E16C(a1 + 192, &v7, &unk_1008A9BD0, &v8);
  if (*(result[5] + 70) >= 6)
  {
    sub_100631180(a1, v7, a3);
    v8 = &v7;
    result = sub_10005E16C(a1 + 192, &v7, &unk_1008A9BD0, &v8);
    *(result[5] + 70) = 0;
  }

  return result;
}

void sub_1006315C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v5 = *(a1 + 256);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100631640;
  v6[3] = &unk_100AFA2C0;
  v6[4] = a1;
  v6[5] = a2;
  v7 = a3;
  v6[6] = a4;
  v8 = a5;
  dispatch_async(v5, v6);
}

void sub_100631640(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10011CCEC(*(v2 + 216), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 57));
  v3 = *(v2 + 216);
  v4 = *(a1 + 40);

  sub_10011F874(v3, v4);
}

void sub_100631690(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100631708;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100631708(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "off";
    if (**(v2 + 216))
    {
      v5 = "on";
    }

    else
    {
      v5 = "off";
    }

    if (*(a1 + 40))
    {
      v4 = "on";
    }

    v12 = 136315394;
    v13 = v5;
    v14 = 2080;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dynamic Latency fScreenOn from %s -> %s", &v12, 0x16u);
  }

  v6 = *(v2 + 216);
  v7 = *(a1 + 40);
  if (*v6 != v7)
  {
    *v6 = v7;
    if (sub_100630E30(v2) && (v8 = *(v2 + 1264)) != 0)
    {
      v9 = **(v2 + 216);
      Current = CFAbsoluteTimeGetCurrent();
      v11 = *(v2 + 1264);
      if (v9)
      {
        *(v8 + 48) += (Current - *(v11 + 24));
        *(*(v2 + 1264) + 16) = CFAbsoluteTimeGetCurrent();
      }

      else
      {
        *(v8 + 52) += (Current - *(v11 + 16));
        *(*(v2 + 1264) + 24) = CFAbsoluteTimeGetCurrent();
      }
    }

    else
    {
      sub_10011AD54(*(v2 + 216));
    }
  }
}

void sub_10063188C(uint64_t a1, char a2)
{
  v2 = *(a1 + 224);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100631708;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 32;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100631908(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100631980;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100631A10(void *a1, int a2, int a3)
{
  if (!a1[26] || (v3 = a1[24], v3 == a1 + 25))
  {
LABEL_11:
    v9 = 0;
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v4 = v3[5];
      if (*(v4 + 84) == 2 && (*(v4 + 80) & 1) != 0)
      {
        break;
      }

      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == a1 + 25)
      {
        goto LABEL_11;
      }
    }

    v8 = v3[4];
    v9 = 0;
    v10 = 0;
    if (v8)
    {
      sub_1000C2364(v8, &v10 + 1, &v10, &v9 + 1, &v9);
    }
  }

  operator new();
}

uint64_t sub_100631C44(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notify A2DPClient Accessibility headTracking change:%u", v5, 8u);
  }

  if (qword_100B50AE0 != -1)
  {
    sub_100853D2C();
  }

  return sub_1004DB15C(qword_100B50AD8, *(a1 + 32));
}

void sub_100631D14(uint64_t a1, char a2)
{
  v2 = *(a1 + 160);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100631980;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 96;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100631D90(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100631E44;
  block[3] = &unk_100AF3488;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v5 = *(a2 + 2);
  }

  dispatch_async(v2, block);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }
}

void sub_100631E44(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000DAB84(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_100631F18;
  v4[3] = &unk_100AF3488;
  if (*(a1 + 55) < 0)
  {
    sub_100008904(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
    v6 = *(a1 + 48);
  }

  sub_10000CA94(v3, v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }
}

void sub_100631EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100631F18(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notify Foreground app changed :%s", &v7, 0xCu);
  }

  v4 = [NSString alloc];
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  v6 = [v4 initWithUTF8String:v5];
  if (qword_100B50AE0 != -1)
  {
    sub_100853D2C();
  }

  sub_1004DAE58(qword_100B50AD8, v6);
}

void sub_10063203C(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006320B4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_1006320C8(uint64_t a1, char a2)
{
  v2 = *(a1 + 136);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006320B4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 120;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_100632144(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (*(v1 + 4))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 5);
  }

  return v2 & 1;
}

void sub_100632164(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006321DC;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_1006321F0(uint64_t a1, char a2)
{
  v2 = *(a1 + 208);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006321DC;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 48;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10063226C(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006322E4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_1006322F8(uint64_t a1, char a2)
{
  v2 = *(a1 + 176);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006322E4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 80;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100632374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006323EC;
  block[3] = &unk_100AEC130;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v3, block);
}

void sub_100632400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 200);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006323EC;
  block[3] = &unk_100AEC130;
  block[4] = a1 - 56;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v3, block);
}

void *sub_10063247C(void *result, unint64_t a2)
{
  v12 = a2;
  if (a2)
  {
    v2 = result;
    v13 = &v12;
    result = sub_10005E16C((result + 24), &v12, &unk_1008A9BD0, &v13);
    if (*result[5])
    {
      v13 = &v12;
      if (*(*(sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13)[5] + 48) + 20) == 1)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13);
        v4 = (result + 5);
LABEL_8:
        v8 = 144;
LABEL_14:
        *(**v4 + v8) = Current;
        return result;
      }

      v13 = &v12;
      if (*(*(sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13)[5] + 48) + 20) == 6)
      {
        v13 = &v12;
        if (*(*sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13)[5] + 144) != 0.0)
        {
          v5 = CFAbsoluteTimeGetCurrent();
          v13 = &v12;
          v6 = v5 - *(*sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13)[5] + 144);
          v13 = &v12;
          v7 = sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13);
          *(*v7[5] + 128) = v6 + *(*v7[5] + 128);
          v13 = &v12;
          result = sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13);
          v4 = (result + 5);
          Current = 0.0;
          goto LABEL_8;
        }

        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13);
        if (*(*result[5] + 152) == 0.0)
        {
          return result;
        }

        v9 = CFAbsoluteTimeGetCurrent();
        v13 = &v12;
        v10 = v9 - *(*sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13)[5] + 152);
        v13 = &v12;
        v11 = sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13);
        *(*v11[5] + 136) = v10 + *(*v11[5] + 136);
        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13);
        v4 = (result + 5);
        Current = 0.0;
      }

      else
      {
        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13);
        if (*(*(result[5] + 48) + 20) != 7)
        {
          return result;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12, &unk_1008A9BD0, &v13);
        v4 = (result + 5);
      }

      v8 = 152;
      goto LABEL_14;
    }
  }

  return result;
}

void sub_10063279C(uint64_t result, const char *a2, const char *a3, unsigned int a4)
{
  if ((a3[23] & 0x8000000000000000) != 0)
  {
    if (!*(a3 + 1))
    {
      return;
    }
  }

  else if (!a3[23])
  {
    return;
  }

  if ((a2[23] & 0x8000000000000000) == 0)
  {
    if (!a4 || !a2[23])
    {
      return;
    }

LABEL_11:
    operator new[]();
  }

  if (a4 && *(a2 + 1))
  {
    goto LABEL_11;
  }
}

void sub_100632AE0(uint64_t a1)
{
  for (i = *(a1 + 1152); i != *(a1 + 1160); ++i)
  {
    v3 = *i;
    if (*i && *(v3 + 1) && *(v3 + 2))
    {
      v4 = *v3;
      if (v4 >= 2)
      {
        v5 = 0;
        v6 = qword_100BCE8D0;
        do
        {
          v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
          if (v7)
          {
            v8 = sub_10062ADB8(v7, *(v3 + 1));
            v9 = *(*(v3 + 1) + v5);
            *buf = 138412802;
            v19 = v8;
            v20 = 1024;
            v21 = v5;
            v22 = 1024;
            v23 = v9;
            _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "A2DP Link Adaptive %@ Threshold (%d): %3d", buf, 0x18u);

            v6 = qword_100BCE8D0;
            v4 = *v3;
          }

          ++v5;
        }

        while (v5 < v4 - 1);
      }

      if (v4)
      {
        v11 = 0;
        v12 = qword_100BCE8D0;
        do
        {
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
          if (v13)
          {
            v14 = sub_10062ADB8(v13, *(v3 + 1));
            v15 = *(*(v3 + 2) + 2 * v11);
            *buf = 138412802;
            v19 = v14;
            v20 = 1024;
            v21 = v11;
            v22 = 1024;
            v23 = v15;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "A2DP Link Adaptive %@ Rate (%d): %3d", buf, 0x18u);

            v12 = qword_100BCE8D0;
            v4 = *v3;
          }

          ++v11;
        }

        while (v11 < v4);
      }
    }

    else
    {
      v10 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
      {
        sub_1008548B8(&v16, v17, v10);
      }
    }
  }
}

uint64_t sub_100632D10(uint64_t a1, unint64_t a2)
{
  v10 = a2;
  v2 = a1 + 200;
  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 192;
  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
    return 0;
  }

  v11 = &v10;
  return *(sub_10005E16C(v4, &v10, &unk_1008A9BD0, &v11)[5] + 48);
}

int32x4_t sub_100632DA0(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  v3.i32[0] = *(a3 + 165);
  v3.i32[1] = *(a3 + 167);
  v3.i32[2] = *(a3 + 1);
  v3.i32[3] = *(a3 + 169);
  result = vaddq_s32(*a2, v3);
  *a2 = result;
  v5 = a2[1].i32[1] + *(a3 + 171);
  a2[1].i32[0] += *(a3 + 173);
  a2[1].i32[1] = v5;
  return result;
}

void sub_100632DE8(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v3 = *(a3 + 229);
  v4 = a2->i32[1];
  a2->i32[0] += v3;
  v5 = *(a3 + 230);
  a2[1].i32[0] += v5;
  v6 = *(a3 + 231);
  a2[2].i32[0] += v6;
  if (v4 < v3)
  {
    a2->i32[1] = v3;
  }

  if (a2[1].i32[1] < v5)
  {
    a2[1].i32[1] = v5;
  }

  if (a2[2].i32[1] < v6)
  {
    a2[2].i32[1] = v6;
  }

  v7 = *(a3 + 232);
  v8.i32[0] = 1;
  v8.i32[1] = v7;
  a2[3] = vadd_s32(a2[3], v8);
  v9 = a2[4].u32[0];
  if (v9 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = a2[4].i32[0];
  }

  if (v9)
  {
    v7 = v10;
  }

  a2[4].i32[0] = v7;
}

id sub_100632E78(uint64_t a1, char a2)
{
  v4 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v5 = v4;
  v6 = *(a1 + 834);
  if (v6 - 212 >= 0xFFFFFF2D)
  {
    if ((a2 & 4) != 0)
    {
      v8 = @"Cell Active ";
    }

    else
    {
      v8 = @"Cell Inactive ";
    }

    [v4 appendString:v8];
    if ((a2 & 2) != 0)
    {
      v9 = @"/ WiFi5G Active ";
    }

    else
    {
      v9 = @"/ WiFi5G Inactive ";
    }

    [v5 appendString:v9];
    v10 = @"/ H ";
    v11 = @"/ B ";
    goto LABEL_19;
  }

  if (v6 >= 0xD4)
  {
    if ((a2 & 8) != 0)
    {
      [v4 appendString:@"Cell Inactive "];
      v7 = &stru_100B0F9E0;
    }

    else
    {
      [v4 appendString:@"Cell Active "];
      if ((a2 & 4) != 0)
      {
        v7 = @"/ Ant(2/4/6) ";
      }

      else
      {
        v7 = @"/ Ant(1/3/5) ";
      }
    }

    [v5 appendString:v7];
    if ((a2 & 2) != 0)
    {
      v12 = @"/ B ";
    }

    else
    {
      v12 = @"/ H ";
    }

    [v5 appendString:v12];
    v10 = @"/ WiFi5G Active";
    v11 = @"/ WiFi5G Inactive";
LABEL_19:
    if (a2)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    [v5 appendString:v13];
  }

  return v5;
}

void sub_100632FE0(unsigned __int8 *a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: ----------------------------Packet------------------Target iPA Tx Power------------------------", &v18, 2u);
  }

  if ((a2 - 2001) < 2 || a2 == 3000)
  {
    if (a1[690] >= a1[666])
    {
      v12 = a1[666];
    }

    else
    {
      v12 = a1[690];
    }

    if (a1[706] >= a1[668])
    {
      v13 = a1[668];
    }

    else
    {
      v13 = a1[706];
    }

    if (a1[722] >= a1[670])
    {
      v14 = a1[670];
    }

    else
    {
      v14 = a1[722];
    }

    if (a1[738] >= a1[672])
    {
      v15 = a1[672];
    }

    else
    {
      v15 = a1[738];
    }

    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a1[674];
      if (v16 >= a1[664])
      {
        v16 = a1[664];
      }

      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v16, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              BDR                         %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v12, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              EDR                         %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v13, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                             LEData                       %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v13, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                             LEAdv                        %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v14, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              HDR4                        %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v15, 1uLL);
      v11 = "statedump:                              HDR8                        %.2f dBm";
      goto LABEL_51;
    }
  }

  else if (a2 == 2000)
  {
    if (a1[675] >= a1[666])
    {
      v5 = a1[666];
    }

    else
    {
      v5 = a1[675];
    }

    v6 = a1[668];
    if (a1[676] >= v6)
    {
      v7 = a1[668];
    }

    else
    {
      v7 = a1[676];
    }

    if (a1[677] >= v6)
    {
      v8 = a1[668];
    }

    else
    {
      v8 = a1[677];
    }

    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[674];
      if (v10 >= a1[664])
      {
        v10 = a1[664];
      }

      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v10, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              BDR                         %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v5, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              EDR                         %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v7, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                             LEData                       %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v8, 1uLL);
      v11 = "statedump:                             LEAdv                        %.2f dBm";
LABEL_51:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v18, 0xCu);
    }
  }

  v17 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump: ============================= End of bluetooth power targets dump ==========================", &v18, 2u);
  }
}

void sub_100633460(unsigned __int8 *a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v51) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: ========================= Bluetooth Tx Power Targets (CC0) ===============================", &v51, 2u);
  }

  if ((a2 - 2001) < 2 || a2 == 3000)
  {
    v5 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: ------EDR-------Target ePA Tx Power-------------------Power Caps--------------------------", &v51, 2u);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[667];
      v16 = a1[691];
      v17 = a1[802];
      if (v16 >= v15)
      {
        v18 = a1[667];
      }

      else
      {
        v18 = a1[691];
      }

      if (v17 < v18)
      {
        v18 = a1[802];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v18, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v15, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v16, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v17, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular Off          %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[667];
      v20 = a1[691];
      v21 = a1[810];
      if (v20 >= v19)
      {
        v22 = a1[667];
      }

      else
      {
        v22 = a1[691];
      }

      if (v21 < v22)
      {
        v22 = a1[810];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v22, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v19, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v20, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v21, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a1[667];
      v24 = a1[691];
      v25 = a1[818];
      if (v24 >= v23)
      {
        v26 = a1[667];
      }

      else
      {
        v26 = a1[691];
      }

      if (v25 < v26)
      {
        v26 = a1[818];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v26, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v23, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v24, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v25, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:      WiFi 5G On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: ------HDR4-------Target ePA Tx Power-------------------Power Caps--------------------------", &v51, 2u);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = a1[671];
      v28 = a1[739];
      v29 = a1[802];
      if (v28 >= v27)
      {
        v28 = a1[671];
      }

      if (v29 < v28)
      {
        v28 = a1[802];
      }

      v30 = vcvtd_n_f64_u32(a1[723], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v28, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v27, 1uLL);
      v55 = 2048;
      v56 = v30;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v29, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular Off          %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a1[671];
      v32 = a1[739];
      v33 = a1[810];
      if (v32 >= v31)
      {
        v32 = a1[671];
      }

      if (v33 < v32)
      {
        v32 = a1[810];
      }

      v34 = vcvtd_n_f64_u32(a1[723], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v32, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v31, 1uLL);
      v55 = 2048;
      v56 = v34;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v33, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v35 = a1[671];
      v36 = a1[739];
      v37 = a1[818];
      if (v36 >= v35)
      {
        v36 = a1[671];
      }

      if (v37 < v36)
      {
        v36 = a1[818];
      }

      v38 = vcvtd_n_f64_u32(a1[723], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v36, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v35, 1uLL);
      v55 = 2048;
      v56 = v38;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v37, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:      WiFi 5G On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: ------HDR8-------Target ePA Tx Power-------------------Power Caps--------------------------", &v51, 2u);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v39 = a1[673];
      v40 = a1[755];
      v41 = a1[802];
      if (v40 >= v39)
      {
        v40 = a1[673];
      }

      if (v41 < v40)
      {
        v40 = a1[802];
      }

      v42 = vcvtd_n_f64_u32(a1[739], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v40, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v39, 1uLL);
      v55 = 2048;
      v56 = v42;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v41, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular Off          %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v43 = a1[673];
      v44 = a1[755];
      v45 = a1[810];
      if (v44 >= v43)
      {
        v44 = a1[673];
      }

      if (v45 < v44)
      {
        v44 = a1[810];
      }

      v46 = vcvtd_n_f64_u32(a1[739], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v44, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v43, 1uLL);
      v55 = 2048;
      v56 = v46;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v45, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v47 = a1[673];
      v48 = a1[755];
      v49 = a1[818];
      if (v48 >= v47)
      {
        v48 = a1[673];
      }

      if (v49 < v48)
      {
        v48 = a1[818];
      }

      v50 = vcvtd_n_f64_u32(a1[739], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v48, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v47, 1uLL);
      v55 = 2048;
      v56 = v50;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v49, 1uLL);
      v14 = "statedump:      WiFi 5G On           %.2f dBm                   [%.2f,%.2f,%.2f]";
      goto LABEL_85;
    }
  }

  else if (a2 == 2000)
  {
    v5 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: ------Use Case-------Target ePA Tx Power-------------------Power Caps--------------------------", &v51, 2u);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[802];
      v7 = a1[679];
      v8 = a1[667];
      if (v7 >= v6)
      {
        v9 = a1[802];
      }

      else
      {
        v9 = a1[679];
      }

      if (v8 < v9)
      {
        v9 = a1[667];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v9, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v8, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v7, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v6, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular Off          %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[803];
      v11 = a1[679];
      v12 = a1[667];
      if (v11 >= v10)
      {
        v13 = a1[803];
      }

      else
      {
        v13 = a1[679];
      }

      if (v12 < v13)
      {
        v13 = a1[667];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v13, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v12, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v11, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v10, 1uLL);
      v14 = "statedump:     Cellular On           %.2f dBm                   [%.2f,%.2f,%.2f]";
LABEL_85:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v14, &v51, 0x2Au);
    }
  }
}

void sub_100633C48(uint64_t a1, int a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, uint64_t a7)
{
  v28 = 0;
  v27 = 0;
  if (a2 == 2)
  {
    v13 = sub_10000E92C();
    sub_100007E30(buf, "ePA");
    sub_100007E30(__p, "DisableA2DP");
    (*(*v13 + 72))(v13, buf, __p, &v28 + 1);
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_9;
    }

    v14 = sub_10000E92C();
    sub_100007E30(buf, "ePA");
    sub_100007E30(__p, "DisableHFP");
    (*(*v14 + 72))(v14, buf, __p, &v28 + 1);
  }

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(*buf);
  }

LABEL_9:
  v15 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "DisableReTxEPA");
  (*(*v15 + 72))(v15, buf, __p, &v28);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(*buf);
  }

  v16 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "DisableThresholdEPA");
  v17 = (*(*v16 + 72))(v16, buf, __p, &v27);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26 < 0)
  {
    operator delete(*buf);
  }

  *a3 = HIBYTE(v28);
  *a4 = v28;
  *a5 = v27;
  *a6 = 3;
  if (a2 == 2)
  {
    v19 = sub_10000C798(v17, v18);
    if ((*(*v19 + 168))(v19))
    {
LABEL_19:
      *a6 = 7;
    }
  }

  else if (a2 == 1)
  {
    v20 = sub_10000C798(v17, v18);
    if ((*(*v20 + 176))(v20))
    {
      if (!sub_100537D2C(a7))
      {
        goto LABEL_19;
      }
    }
  }

  if (*a4 == 1)
  {
    *a6 &= ~2u;
    v21 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: Disabling ePA for retransmission policy through defaults write", buf, 2u);
    }
  }

  if (*a5 == 1)
  {
    *a6 &= ~1u;
    v22 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Warning: Disabling threshold based ePA policy through defaults write", buf, 2u);
    }
  }
}

void sub_100633FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10063402C(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  v65 = 0;
  v64 = 0;
  sub_100633C48(a1, a4, a1 + 345, &v65, &v64, &v65 + 1, a2);
  if (a1[345] == 1)
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ePA disabled by defaults write", buf, 2u);
    }

    return;
  }

  v11 = sub_10000C7D0(v8, v9);
  v13 = sub_100410AA0(v11, v12);
  if (!v13)
  {
    sub_10000C7D0(v13, v14);
    if (!sub_1004108D4())
    {
      return;
    }

    v27 = qword_100BCE8D0;
    v28 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Enable EPA for Marconi", buf, 2u);
    }

    v30 = sub_10000C7D0(v28, v29);
    (*(*v30 + 168))(v30, a2, 2, 0, 30, 10);
    goto LABEL_39;
  }

  sub_10061F5E4(a1, a2, a4, a1 + 886);
  v17 = sub_10000C798(v15, v16);
  if ((*(*v17 + 168))(v17))
  {
    v18 = sub_1000271F0();
    if (a4 == 1)
    {
      v20 = -75;
    }

    else
    {
      v20 = -80;
    }

    if (v18 == 163)
    {
      v21 = 4294967197;
    }

    else
    {
      v21 = v20;
    }

    v22 = sub_10000C7D0(v18, v19);
    v26 = *(v22 + 800) < 0x7D0u || (v24 = sub_10000C7D0(v22, v23), *(v24 + 800) > 0xF9Fu) || *(sub_10000C7D0(v24, v25) + 800) < 0xBB8u;
    v47 = qword_100BCE8D0;
    v48 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (v48)
    {
      v50 = a1[886];
      *buf = 67109888;
      v67 = HIBYTE(v65);
      v68 = 1024;
      v69 = v50;
      v70 = 1024;
      v71 = v21;
      v72 = 1024;
      v73 = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Enabling beamforming, policy: %#x, iPA-Beamforming RSSI threshold: %d dBm, ePA-Beamforming RSSI threshold: %d dBm, beamforming gain threshold: %d dB", buf, 0x1Au);
    }

    if (!v26)
    {
      goto LABEL_30;
    }

    if (qword_100B50B60 != -1)
    {
      sub_100853DA4();
    }

    v48 = sub_1003774D4();
    if (v48 && (v51 = sub_10000C798(v48, v49), v48 = (*(*v51 + 456))(v51), (v48 & 1) == 0))
    {
      v53 = sub_100634584(v48, a2, HIBYTE(v65), a1[886], 0, v21, -70, 0);
    }

    else
    {
LABEL_30:
      v52 = sub_10000C7D0(v48, v49);
      v53 = (*(*v52 + 112))(v52, 0, a2, HIBYTE(v65), a1[886], 0, v21);
    }

    v54 = sub_10063480C(v53, a2, 1);
    v56 = sub_10000C7D0(v54, v55);
    if ((*(v56 + 800) - 23) > 0x7B8)
    {
      v57 = 2;
    }

    else
    {
      v57 = 4;
    }

    sub_1006349F8(v56, v57, a2, 1);
    goto LABEL_39;
  }

  sub_10061F850(a1, a3, a1 + 884, a1 + 885);
  v32 = sub_10061F8D8(a1, v31);
  v34 = sub_10000C7D0(v32, v33);
  v36 = sub_100410F60(v34, v35);
  v37 = a1[885];
  v38 = qword_100BCE8D0;
  v39 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  v41 = HIBYTE(v65);
  if (v36 == v37)
  {
    if (v39)
    {
      v42 = a1[886];
      v43 = 25 * a1[884];
      *buf = 67109888;
      v67 = HIBYTE(v65);
      v68 = 1024;
      v69 = v42;
      v70 = 1024;
      v71 = v43;
      v72 = 1024;
      v73 = 25 * v36;
      v44 = "Enabling ePA, policy: %#x, Threshold: %d dBm, Tx power high: %d, low: %d";
      v45 = v38;
      v46 = 26;
LABEL_35:
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v44, buf, v46);
    }
  }

  else if (v39)
  {
    v58 = a1[886];
    v59 = 25 * a1[884];
    *buf = 67110144;
    v67 = HIBYTE(v65);
    v68 = 1024;
    v69 = v58;
    v70 = 1024;
    v71 = v59;
    v72 = 1024;
    v73 = 25 * v37;
    v74 = 1024;
    v75 = 25 * v36;
    v44 = "Enabling ePA, policy: %#x, Threshold: %d dBm, Tx power high: %d, medium: %d, low (unused): %d";
    v45 = v38;
    v46 = 32;
    goto LABEL_35;
  }

  v60 = sub_10000C7D0(v39, v40);
  v61 = (*(*v60 + 88))(v60, a2, 1, v41, a1[884], a1[885], a1[886]);
  v63 = sub_10000C7D0(v61, v62);
  (*(*v63 + 104))(v63, 1);
LABEL_39:
  if (qword_100B50AC0 != -1)
  {
    sub_100853D54();
  }

  sub_100594AA0(off_100B50AB8, a2, 0xFFFFFFFFLL, 0, 702, 0);
}

uint64_t sub_100634584(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char a6, char a7, int a8)
{
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  v15 = sub_1000DEB14(a2);
  if (v15 == 22 || v15 == 17)
  {
    v17 = 60;
  }

  else
  {
    v17 = 45;
  }

  if (a8)
  {
    LOBYTE(v18) = 75;
  }

  else
  {
    LOBYTE(v18) = v17;
  }

  v33 = 0;
  v19 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "iPAMaxThreshold");
  v20 = (*(*v19 + 88))(v19, buf, __p, &v33);
  v22 = v20;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v37 & 0x80000000) == 0)
  {
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_16:
    v18 = -v33;
    v23 = qword_100BCE8D0;
    v20 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      *buf = 67109120;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined iPA-Max threshold to -%d dBm through defaults write", buf, 8u);
    }

    goto LABEL_18;
  }

  operator delete(*buf);
  if (v22)
  {
    goto LABEL_16;
  }

LABEL_18:
  v24 = 0;
  v25 = 0;
  LOBYTE(v34[0]) = 2;
  v26 = 1;
  while (1)
  {
    v27 = v26;
    v28 = &v34[v25] + 1;
    *v28 = v25;
    *(v28 + 1) = 6;
    v28[3] = v28[3] & 0xF8 | a3 & 7;
    v28[4] = v18;
    v28[5] = a4;
    if (a3)
    {
      if (v24)
      {
        break;
      }
    }

    v26 = 0;
    v28[6] = a6;
    v28[7] = a5;
    v24 = 1;
    v25 = 1;
    if ((v27 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v28[6] = a7;
  v28[7] = a5;
LABEL_24:
  v29 = sub_10000C7D0(v20, v21);
  return (*(*v29 + 128))(v29, a2, 17, v34);
}

void sub_1006347D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063480C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000E92C();
  if (!(*(*v5 + 384))(v5))
  {
    return 0;
  }

  v6 = sub_10000E92C();
  if (!(*(*v6 + 392))(v6))
  {
    return 0;
  }

  v7 = qword_100BCE8D0;
  v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v24 = 0;
    v10 = "Enabling beamforming VSE Logging";
    v11 = &v24;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = "Disabling beamforming VSE Logging";
    v11 = buf;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
LABEL_9:
  v12 = sub_10000C7D0(v8, v9);
  v13 = (*(*v12 + 112))(v12, 2, a2, a3, 0, 0, 0);
  v14 = qword_100BCE8D0;
  if (!v13)
  {
    v17 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO);
    if (a3)
    {
      if (v17)
      {
        v22 = 0;
        v18 = "Beamforming VSE Logging enabled";
        v19 = &v22;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v18, v19, 2u);
      }
    }

    else if (v17)
    {
      v21 = 0;
      v18 = "Beamforming VSE Logging disabled";
      v19 = &v21;
      goto LABEL_20;
    }

    return 0;
  }

  v15 = v13;
  v16 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR);
  if (a3)
  {
    if (v16)
    {
      sub_100854968();
    }
  }

  else if (v16)
  {
    sub_1008548F8();
  }

  return v15;
}

uint64_t sub_1006349F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 == 4 || a2 == 2;
  if (a2 == 4 || a2 == 2)
  {
    v8 = sub_10000E92C();
    if (!(*(*v8 + 384))(v8))
    {
      return 0;
    }
  }

  v9 = sub_10000E92C();
  if (!(*(*v9 + 392))(v9) && v7)
  {
    return 0;
  }

  v13 = qword_100BCE8D0;
  v14 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    v16 = "Logging";
    if (a2 == 1)
    {
      v16 = "Global control";
    }

    v17 = "Enable";
    if (!a4)
    {
      v17 = "Disable";
    }

    v21 = 136315394;
    v22 = v16;
    v23 = 2080;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beamforming MRC %s %s", &v21, 0x16u);
  }

  v18 = sub_10000C7D0(v14, v15);
  v19 = (*(*v18 + 136))(v18, a2, a3, a4);
  v11 = v19;
  if (a2 == 1 && v19)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854AB8();
    }
  }

  else if (v19)
  {
    v20 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR);
    if (a4)
    {
      if (v20)
      {
        sub_100854A48();
      }
    }

    else if (v20)
    {
      sub_1008549D8();
    }
  }

  return v11;
}

uint64_t sub_100634C30(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0(a1, a2);
  v5 = sub_100410AA0(v3, v4);
  if (v5)
  {
    v7 = qword_100BCE8D0;
    v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disable Enhanced Power save ", buf, 2u);
    }

    v10 = sub_10000C798(v8, v9);
    v11 = (*(*v10 + 168))(v10);
    if (v11)
    {
      v13 = qword_100BCE8D0;
      v14 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disable Enhanced Power and beamforming", v36, 2u);
      }

      v16 = sub_10000C7D0(v14, v15);
      if (*(v16 + 800) >= 0x7D0u)
      {
        v18 = sub_10000C7D0(v16, v17);
        if (*(v18 + 800) <= 0xF9Fu)
        {
          v20 = sub_10000C7D0(v18, v19);
          if (*(v20 + 800) > 0xBB7u)
          {
            goto LABEL_14;
          }
        }
      }

      if (qword_100B50B60 != -1)
      {
        sub_100853DA4();
      }

      v20 = sub_1003774D4();
      if (v20 && (v22 = sub_10000C798(v20, v21), v20 = (*(*v22 + 456))(v22), (v20 & 1) == 0))
      {
        v24 = sub_100634584(v20, a2, 0, -69, 0, -80, -70, 0);
      }

      else
      {
LABEL_14:
        v23 = sub_10000C7D0(v20, v21);
        v24 = (*(*v23 + 112))(v23, 0, a2, 0, 4294967227, 0, 4294967216);
      }

      v32 = sub_10063480C(v24, a2, 0);
      v34 = sub_10000C7D0(v32, v33);
      if ((*(v34 + 800) - 23) > 0x7B8)
      {
        v35 = 2;
      }

      else
      {
        v35 = 4;
      }

      sub_1006349F8(v34, v35, a2, 0);
    }

    else
    {
      v28 = sub_10000C7D0(v11, v12);
      v29 = (*(*v28 + 88))(v28, a2, 1, 0, 0, 0, 4294967227);
      v31 = sub_10000C7D0(v29, v30);
      (*(*v31 + 104))(v31, 0);
    }
  }

  else
  {
    sub_10000C7D0(v5, v6);
    result = sub_1004108D4();
    if (!result)
    {
      return result;
    }

    v27 = sub_10000C7D0(result, v26);
    (*(*v27 + 168))(v27, a2, 0, 0, 0, 0);
  }

  if (qword_100B50AC0 != -1)
  {
    sub_100853D54();
  }

  return sub_100594AA0(off_100B50AB8, a2, 0xFFFFFFFFLL, 0, 703, 0);
}

void sub_100634F34(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_10000C798(a1, a2);
  v9 = (*(*v8 + 144))(v8);
  if (a2 && v9)
  {
    if (*(a1 + 344))
    {
      v56 = 0;
      sub_1000216B4(&v56);
      v10 = sub_10024132C(a2 + 128);
      v11 = sub_100022214(&v56);
      v13 = sub_10000C798(v11, v12);
      v14 = (*(*v13 + 168))(v13);
      if (((v14 | v10) & 1) == 0)
      {
        v16 = sub_10000E92C();
        v14 = (*(*v16 + 352))(v16);
        if (!v14)
        {
          v22 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            v23 = "A2DP";
            if (a4 == 1)
            {
              v23 = "HFP";
            }

            v24 = "started";
            if (!a3)
            {
              v24 = "stopped";
            }

            *buf = 136315394;
            v58 = v23;
            v59 = 2080;
            v60 = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s stream %s: Diversity inactive since role is peripheral or not supporting TxBF", buf, 0x16u);
          }

          goto LABEL_71;
        }
      }

      v17 = *(sub_10000C7D0(v14, v15) + 800);
      if (!a3)
      {
        v20 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v21 = "A2DP";
          if (a4 == 1)
          {
            v21 = "HFP";
          }

          *buf = 136315138;
          v58 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s stream stopped: Disabling diversity", buf, 0xCu);
        }

        if (v17 <= 0x13)
        {
          sub_1006359E4(a1, 0, 3);
        }

        goto LABEL_71;
      }

      sub_1000618AC(&v56);
      if (a4 == 1)
      {
        v18 = sub_1000E2040(a2 + 128);
      }

      else
      {
        if (a4 != 2)
        {
          v25 = 0;
LABEL_27:
          if ((*(a2 + 1435) & 0xFE) == 2)
          {
            v26 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Low Latency Traffic detected, use ACL Connection instead", buf, 2u);
            }

            v25 = sub_1000E1FE8(a2 + 128);
          }

          sub_100022214(&v56);
          if (!v25)
          {
            goto LABEL_71;
          }

          v27 = qword_100BCE8D0;
          v28 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
          if (v28)
          {
            v30 = "A2DP";
            if (a4 == 1)
            {
              v30 = "HFP";
            }

            *buf = 136315138;
            v58 = v30;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s stream started: Enabling diversity/TxBF", buf, 0xCu);
          }

          if (v17 <= 0x13)
          {
            v28 = sub_1006359E4(a1, v25, 3);
          }

          v31 = sub_10000C798(v28, v29);
          v32 = (*(*v31 + 152))(v31);
          if ((v32 & 1) == 0)
          {
            v34 = sub_10000C798(v32, v33);
            if (!(*(*v34 + 160))(v34))
            {
              goto LABEL_65;
            }
          }

          v35 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Platform supports enhanced diversity, configuring antenna pair before enabling diversity", buf, 2u);
          }

          v36 = sub_10000E92C();
          if ((*(*v36 + 368))(v36))
          {
            v37 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Warning: Forcing enhanced diversity antenna pair via defaults write", buf, 2u);
            }

            v38 = sub_10000E92C();
            v39 = (*(*v38 + 376))(v38);
            v40 = sub_100635C10(a1, v39);
            v41 = qword_100BCE8D0;
            v42 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              if (v42)
              {
                *buf = 0;
                v43 = "Warning: Forcing enhanced diversity antenna pair via defaults write failed";
                v44 = v41;
                v45 = 2;
LABEL_64:
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, buf, v45);
              }

LABEL_65:
              if (v17 < 0x14)
              {
                v52 = 5;
              }

              else
              {
                v52 = 6;
              }

              v53 = sub_10000E92C();
              if ((*(*v53 + 320))(v53))
              {
                v54 = sub_10000E92C();
                v52 = (*(*v54 + 328))(v54);
              }

              v55 = sub_1006359E4(a1, v25, v52);
              sub_100635EF4(v55, v25, 1);
LABEL_71:
              sub_10002249C(&v56);
              return;
            }

            if (!v42)
            {
              goto LABEL_65;
            }

            if (*(a1 + 876))
            {
              v51 = "default";
            }

            else
            {
              v51 = "non-default";
            }

            *buf = 136315138;
            v58 = v51;
            v43 = "Warning: Enhanced diversity antenna pair set to %s config at stream start based on defaults write";
          }

          else
          {
            v46 = sub_100017E6C();
            v47 = (*(*v46 + 264))(v46);
            v48 = v47;
            if (v47 >= 2 && v47 != *(a1 + 880))
            {
              v49 = qword_100BCE8D0;
              if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Device orientation outdated, updating orientation first", buf, 2u);
              }

              *(a1 + 880) = v48;
            }

            sub_100635D6C(a1);
            v41 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_65;
            }

            if (*(a1 + 876))
            {
              v50 = "default";
            }

            else
            {
              v50 = "non-default";
            }

            *buf = 136315138;
            v58 = v50;
            v43 = "Enhanced diversity antenna pair set to %s config at stream start based on orientation";
          }

          v44 = v41;
          v45 = 12;
          goto LABEL_64;
        }

        v18 = sub_1000E1FE8(a2 + 128);
      }

      v25 = v18;
      goto LABEL_27;
    }

    v19 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Stack is not ready, cannot update diversity settings", buf, 2u);
    }
  }
}

void sub_100635670(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100854B4C();
  }

  v2 = off_100B54078;

  sub_1006FCA38(v2, v1 + 16);
}

void sub_1006356C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100854B4C();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 16);
}

uint64_t sub_100635718()
{
  v11 = 0;
  v10 = 0;
  v7 = 10;
  v0 = sub_1000271F0();
  v2 = 1;
  if (v0 != 90)
  {
    v0 = sub_1000271F0();
    if (v0 != 28)
    {
      v2 = 0;
    }
  }

  v3 = sub_10000C7D0(v0, v1);
  v4 = (*(*v3 + 896))(v3, 4095, 2, v2, 0, 0, &v7, &v10);
  v5 = qword_100BCE8D0;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854B60();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Default BT antenna set to %d", buf, 8u);
  }

  return v4;
}

uint64_t sub_10063586C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_10000C7D0(a1, a2);
  if (*(v3 + 800) >= 0x7D0u)
  {
    v3 = sub_10000C7D0(v3, v4);
    if (*(v3 + 800) <= 0xF9Fu)
    {
      v3 = sub_10000C7D0(v3, v4);
      if (*(v3 + 800) > 0xBB7u)
      {
        return 0;
      }
    }
  }

  v13 = 0;
  v12 = 0;
  v9 = 10;
  v6 = *sub_10000C7D0(v3, v4);
  v5 = (*(v6 + 896))();
  v7 = qword_100BCE8D0;
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854BD4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Diversity follow mode set to %d", buf, 8u);
  }

  return v5;
}

uint64_t sub_1006359E4(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_10000C7D0(a1, a2);
  if (*(v6 + 800) < 0x7D0u || (v8 = sub_10000C7D0(v6, v7), *(v8 + 800) > 0xF9Fu) || *(sub_10000C7D0(v8, v9) + 800) < 0xBB8u)
  {
    v21 = 0;
    sub_1000216B4(&v21);
    if (sub_1000B8B5C(a2) || sub_1000C0E08(a2))
    {
      v11 = *a2;
    }

    else
    {
      v11 = 4095;
    }

    v12 = sub_100022214(&v21);
    v14 = sub_10000C798(v12, v13);
    v15 = (*(*v14 + 168))(v14);
    if (((v3 > 5) & v15) != 0)
    {
      v17 = -125;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_10000C7D0(v15, v16);
    v10 = (*(*v18 + 896))(v18, v11, 1, v3, 0, v17, 0, 0);
    v19 = qword_100BCE8D0;
    if (v10)
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100854C44();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        v23 = v3;
        v24 = 1024;
        v25 = v11;
        v26 = 1024;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Diversity mode %d set on handle %d with beamforming/diversity threshold %d", buf, 0x14u);
      }

      *(a1 + 872) = v3;
    }

    sub_10002249C(&v21);
  }

  else
  {
    v10 = 0;
    *(a1 + 872) = v3;
  }

  return v10;
}

uint64_t sub_100635C10(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = 0;
  v11 = 0;
  v8 = 10;
  v4 = *sub_10000C7D0(a1, a2);
  v5 = (*(v4 + 896))();
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854CB4();
    }
  }

  else
  {
    *(a1 + 876) = v2 == 1;
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Diversity antenna pair set to (0, %d)", buf, 8u);
    }
  }

  return v5;
}

void sub_100635D6C(uint64_t a1)
{
  v2 = 1;
  v3 = sub_1000271F0();
  if (v3 > 79)
  {
    if (v3 > 133)
    {
      if (v3 == 134 || v3 == 136)
      {
        return;
      }

      goto LABEL_12;
    }

    if ((v3 - 80) >= 2)
    {
      if (v3 == 91)
      {
        if (*(a1 + 880) == 7)
        {
          v2 = 1;
        }

        else
        {
          v2 = 2;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    if ((v3 - 74) < 2)
    {
LABEL_5:
      v4 = (*(a1 + 880) & 0xFFFFFFFE) == 6;
      goto LABEL_9;
    }

    if ((v3 - 76) >= 2)
    {
      if ((v3 - 78) >= 2)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

  v4 = *(a1 + 880) == 2;
LABEL_9:
  if (v4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

LABEL_12:
  v5 = sub_100635C10(a1, v2);
  v6 = qword_100BCE8D0;
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854D24();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 880);
    v8[0] = 67109376;
    v8[1] = v7;
    v9 = 1024;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device orientation set to %d, setting diversity antenna to %d", v8, 0xEu);
  }
}

uint64_t sub_100635EF4(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_10000C7D0(a1, a2);
  if (*(v5 + 800) >= 0x7D0u)
  {
    v7 = sub_10000C7D0(v5, v6);
    if (*(v7 + 800) <= 0xF9Fu && *(sub_10000C7D0(v7, v8) + 800) > 0xBB7u)
    {
      return 0;
    }
  }

  v9 = sub_10000E92C();
  v10 = (*(*v9 + 336))(v9);
  if (!v10)
  {
    return 0;
  }

  if (v3)
  {
    v12 = sub_10000E92C();
    v10 = (*(*v12 + 344))(v12);
    v3 = v10;
  }

  v13 = *a2;
  v23 = 0;
  v22 = 0;
  v14 = *sub_10000C7D0(v10, v11);
  v15 = (*(v14 + 896))();
  v16 = qword_100BCE8D0;
  if (v15)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854DA4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v19 = v3;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Diversity log mode %d set on handle %d", buf, 0xEu);
  }

  return v15;
}

uint64_t sub_1006360F0(_DWORD *a1, unint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, _DWORD *a6, uint64_t a7)
{
  if (qword_100B50AD0 != -1)
  {
    sub_100853CDC();
  }

  v25 = 0uLL;
  v26 = 0;
  result = sub_1005D0AF4(off_100B50AC8, a2, &v25);
  if (result)
  {
    v16 = v25.n128_u32[0];
    v15 = v25.n128_u32[1];
    v17 = v25.n128_u32[3];
    a1[297] = v25.n128_u32[1];
    a1[298] = v16;
    a1[302] = v17;
    *a3 = v15 - a1[300];
    *a4 = v16 - a1[301];
    *a6 = v17 - a1[303];
    v18 = a1[299];
    if (v18 == 128)
    {
      v19 = *a4;
      if (*a4 <= 0x41)
      {
        v20 = 66;
        goto LABEL_10;
      }
    }

    else if (v18 == 256)
    {
      v19 = *a4;
      if (*a4 <= 0x84)
      {
        v20 = 133;
LABEL_10:
        *a5 = v20 - v19;
      }
    }

    a1[300] = v15;
    a1[301] = v16;
    a1[303] = v17;
    v21 = sub_10000E92C();
    result = (*(*v21 + 8))(v21);
    if (result)
    {
      v24 = a1[299];
      if ((v24 - 127) < 3 || v24 == 256)
      {
        return sub_10063626C(a1, a2, *a3, *a4, *a5, v25.n128_i32[2], &v25, a7, v22, v23);
      }
    }
  }

  return result;
}

void *sub_10063626C(void *result, unint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, float a9, float a10)
{
  v37 = a2;
  if (!(a4 | a3 | a5))
  {
    return result;
  }

  v16 = result;
  v17 = *(a8 + 6);
  v18 = v17 < -90;
  if (v17 >= -90)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (*(a8 + 229) > -85)
  {
    v18 = v19;
  }

  if (*(a8 + 230) > -85)
  {
    ++v18;
  }

  if (*(a8 + 231) > -85)
  {
    ++v18;
  }

  if (v18 <= 1)
  {
    v20 = 15;
  }

  else
  {
    v20 = 45;
  }

  v21 = v20 * (a5 + a4) / 0x64;
  if (v21 < a3 || (a4 / 0x14 >= a5 ? (v22 = 1) : (v22 = 2), a6 ? (v23 = v22) : (v23 = a4 / 0x14 < a5), v21 < *(a8 + 28)))
  {
    v23 = 1;
  }

  if (*(a8 + 40) >= 4u)
  {
    goto LABEL_29;
  }

  v24 = *(a8 + 42);
  if (*(a8 + 42))
  {
    LOWORD(a10) = *(a8 + 28);
    v25 = (LODWORD(a10) * 100.0) / v24;
    if (v25 > 8.0)
    {
      goto LABEL_29;
    }

    LOWORD(v25) = *(a8 + 32);
    if (((LODWORD(v25) * 100.0) / v24) > 8.0)
    {
      goto LABEL_29;
    }
  }

  LOWORD(a9) = *(a8 + 70);
  v26 = (100 * (*(a8 + 64) + *(a8 + 52) + *(a8 + 74))) / LODWORD(a9);
  if (v26 <= 20.0)
  {
    if (v26 < 5.0)
    {
      *(result + 384) = 0;
    }

    goto LABEL_30;
  }

  v27 = ++*(result + 384);
  if (v27 >= 0x3C)
  {
LABEL_29:
    sub_100625738(result, a2, 60);
  }

LABEL_30:
  if (!v23)
  {
    *buf = &v37;
    v36 = (v16 + 24);
LABEL_40:
    result = sub_10005E16C(v36, &v37, &unk_1008A9BD0, buf);
    *(result[5] + 108) = 0;
    return result;
  }

  *buf = &v37;
  v28 = sub_10005E16C((v16 + 24), &v37, &unk_1008A9BD0, buf);
  ++*(v28[5] + 108);
  v29 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = &v37;
    v30 = *(sub_10005E16C((v16 + 24), &v37, &unk_1008A9BD0, buf)[5] + 108);
    *buf = &v37;
    v31 = *(sub_10005E16C((v16 + 24), &v37, &unk_1008A9BD0, buf)[5] + 104);
    v32 = *(a7 + 16);
    v33 = *(a8 + 28);
    *buf = 67110912;
    *&buf[4] = a3;
    v39 = 1024;
    v40 = a4;
    v41 = 1024;
    v42 = a5;
    v43 = 1024;
    v44 = a6;
    v45 = 1024;
    v46 = v30;
    v47 = 1024;
    v48 = v31;
    v49 = 1024;
    v50 = v32;
    v51 = 1024;
    v52 = v33;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "AudioQuality PLC %u,RxCnt %u,Miss %u,LengthErr %u,Credit %u, total credit:%u,isHDR:%u,NAK %u", buf, 0x32u);
  }

  *buf = &v37;
  if (*(sub_10005E16C((v16 + 24), &v37, &unk_1008A9BD0, buf)[5] + 108) >= 5u)
  {
    sub_100625738(v16, v37, 60);
  }

  *buf = &v37;
  result = sub_10005E16C((v16 + 24), &v37, &unk_1008A9BD0, buf);
  if (*(result[5] + 108) >= 0xAu)
  {
    v34 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "AudioQuality need to trigger banner", buf, 2u);
    }

    *buf = &v37;
    v35 = sub_10005E16C((v16 + 24), &v37, &unk_1008A9BD0, buf);
    ++*(v35[5] + 104);
    *buf = &v37;
    v36 = (v16 + 24);
    goto LABEL_40;
  }

  return result;
}

void sub_1006366CC(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 4u)
    {
      v9 = &stru_100B0F9E0;
    }

    else
    {
      v9 = *(&off_100B03200 + (a3 & 7));
    }

    *buf = 138412290;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: ----------Use Case-----------------%@ Target ePA Tx Power,Ant0(Ant1)----------------Power Caps----------------", buf, 0xCu);
  }

  if (a2)
  {
    v10 = 0;
    v11 = a1 + 408;
    v12 = 4 * a3 + 4;
    v13 = v12 + a4;
    v14 = (a4 + 23);
    v15 = v12;
    do
    {
      v16 = 0;
      v32 = 0;
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v17 = &v32;
      v18 = &v31;
      v19 = &v30;
      v20 = &v29;
      v21 = 1;
      v28 = 0;
      do
      {
        v22 = v21;
        v23 = *(v11 + (v15 | (2 * v16)));
        *v18 = v23;
        v24 = *(v11 + v13 + 2 * v16);
        *v19 = v24;
        v25 = *(v11 + v10 + v14 + v16 * a2);
        *v20 = v25;
        if (v23 < v25)
        {
          v25 = v23;
        }

        if (v24 < v25)
        {
          LOBYTE(v25) = v24;
        }

        *v17 = v25;
        v17 = &v31 + 1;
        v18 = (&v30 + 1);
        v19 = (&v29 + 1);
        v20 = &v28;
        v16 = 1;
        v21 = 0;
      }

      while ((v22 & 1) != 0);
      v26 = sub_100632E78(a1, v10);
      v27 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138414338;
        v34 = v26;
        v35 = 2048;
        v36 = vcvtd_n_f64_u32(v32, 2uLL);
        v37 = 2048;
        v38 = vcvtd_n_f64_u32(HIBYTE(v31), 2uLL);
        v39 = 2048;
        v40 = vcvtd_n_f64_u32(v31, 2uLL);
        v41 = 2048;
        v42 = vcvtd_n_f64_u32(HIBYTE(v30), 2uLL);
        v43 = 2048;
        v44 = vcvtd_n_f64_u32(v30, 2uLL);
        v45 = 2048;
        v46 = vcvtd_n_f64_u32(HIBYTE(v29), 2uLL);
        v47 = 2048;
        v48 = vcvtd_n_f64_u32(v29, 2uLL);
        v49 = 2048;
        v50 = vcvtd_n_f64_u32(v28, 2uLL);
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: %@          %.2f(%.2f) dBm          [%.2f(%.2f),%.2f(%.2f),%.2f(%.2f)]", buf, 0x5Cu);
      }

      ++v10;
    }

    while (v10 != a2);
  }
}

void sub_100636974(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: -------------------------------Link------------------Target iPA Tx Power,Ant0(Ant1)-------------------------", buf, 2u);
  }

  if (a2)
  {
    v7 = 0;
    v8 = a3;
    v9 = (a1 + 413);
    v10 = a2;
    do
    {
      if (*(v9 - 2) >= v9[v8 - 2])
      {
        v11 = v9[v8 - 2];
      }

      else
      {
        v11 = *(v9 - 2);
      }

      if (*v9 >= v9[v8])
      {
        v12 = v9[v8];
      }

      else
      {
        v12 = *v9;
      }

      v13 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v14 = &stru_100B0F9E0;
        if (v7 <= 4u)
        {
          v14 = *(&off_100B03200 + (v7 & 7));
        }

        *buf = 138412802;
        v16 = v14;
        v17 = 2048;
        v18 = vcvtd_n_f64_u32(v11, 2uLL);
        v19 = 2048;
        v20 = vcvtd_n_f64_u32(v12, 2uLL);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:                              %5@                         %4.2f(%4.2f) dBm", buf, 0x20u);
      }

      v9 += 4;
      ++v7;
    }

    while (v10 != v7);
  }
}

void sub_100636B10(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_10000C7D0(a1, a2) + 800);
  if ((v3 - 1) > 0x7CE)
  {
    if ((v3 - 2000) <= 0x7CF && *(a1 + 836) && *(a1 + 838) && *(a1 + 840))
    {
      sub_100633460(a1, v3);

      sub_100632FE0(a1, v3);
    }
  }

  else
  {
    v4 = *(a1 + 834);
    if (*(a1 + 834))
    {
      if (v4 <= 0xD3)
      {
        v5 = 8;
      }

      else
      {
        v5 = 12;
      }

      if (v4 <= 0xD3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 5;
      }

      v7 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v8[0] = 67109120;
        v8[1] = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: ===================================== Bluetooth Tx Power Targets (CC%d) ====================================", v8, 8u);
      }

      sub_1006366CC(a1, v5, 1, 23);
      if (v4 >= 0xD4)
      {
        sub_1006366CC(a1, 0xCu, 3, 23);
        sub_1006366CC(a1, 0xCu, 4, 23);
      }

      sub_100636974(a1, v6, 0x17u);
    }
  }
}

void sub_100636CCC(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------- Audio Link Manager -------------------", v4, 2u);
  }

  sub_100636B10(a1, v3);
}

void sub_100636D40(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_100B6F7C0;
  v11 = off_100B6F7C0;
  if (!off_100B6F7C0)
  {
    v5 = sub_10063D1E8();
    v9[3] = dlsym(v5, "tailspin_kdbg_filter_subclass_set");
    off_100B6F7C0 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, 1, a2, 1);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void BT::soft_tailspin_kdbg_filter_subclass_set(tailspin_config_t, uint8_t, uint8_t, BOOL)"];
    [v6 handleFailureInFunction:v7 file:@"AudioLinkManager.mm" lineNumber:114 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100636E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100636ECC(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_100B6F7C8;
  v9 = off_100B6F7C8;
  if (!off_100B6F7C8)
  {
    v3 = sub_10063D1E8();
    v7[3] = dlsym(v3, "tailspin_config_apply_sync");
    off_100B6F7C8 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"BOOL BT::soft_tailspin_config_apply_sync(const tailspin_config_t)"];
    [v4 handleFailureInFunction:v5 file:@"AudioLinkManager.mm" lineNumber:126 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100637018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100637048(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_100B6F7D0;
  v9 = off_100B6F7D0;
  if (!off_100B6F7D0)
  {
    v3 = sub_10063D1E8();
    v7[3] = dlsym(v3, "tailspin_config_free");
    off_100B6F7D0 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void BT::soft_tailspin_config_free(tailspin_config_t)"];
    [v4 handleFailureInFunction:v5 file:@"AudioLinkManager.mm" lineNumber:120 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100637194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006371C4(uint64_t a1, int a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063723C;
  v3[3] = &unk_100ADF940;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10063723C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 880) != v4)
  {
    *(v3 + 880) = v4;
    sub_100637260(v3, a2);
  }
}

void sub_100637260(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 344))
  {
    v3 = sub_10000C798(a1, a2);
    v4 = (*(*v3 + 160))(v3);
    if (v4)
    {

      sub_10061EEB4(a1, 0);
    }

    else
    {
      v7 = sub_10000C798(v4, v5);
      if ((*(*v7 + 152))(v7))
      {
        if (*(a1 + 208))
        {
          v8 = *(a1 + 192);
          if (v8 != (a1 + 200))
          {
            v9 = 0;
            while (1)
            {
              v10 = *(v8[5] + 80);
              if (v10)
              {
                break;
              }

              v11 = v8[1];
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
                  v12 = v8[2];
                  v13 = *v12 == v8;
                  v8 = v12;
                }

                while (!v13);
              }

              v9 |= v10;
              v8 = v12;
              if (v12 == (a1 + 200))
              {
                if ((v9 & 1) == 0)
                {
                  return;
                }

                break;
              }
            }

            if (*(a1 + 872) != 3)
            {
              v14 = sub_10000E92C();
              if (((*(*v14 + 368))(v14) & 1) == 0)
              {

                sub_100635D6C(a1);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stack is not ready, cannot update device orientation", v15, 2u);
    }
  }
}

void sub_100637424(uint64_t a1, int a2)
{
  v2 = *(a1 + 192);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063723C;
  v3[3] = &unk_100ADF940;
  v3[4] = a1 - 64;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_1006374C8(uint64_t a1, unint64_t a2)
{
  v28 = a2;
  __p[0] = &v28;
  v3 = sub_10005E16C(a1 + 192, &v28, &unk_1008A9BD0, __p);
  v4 = *(a1 + 1248);
  if (v4)
  {
    v5 = *(v3[5] + 92);
    v6 = (a1 + 1248);
    v7 = a1 + 1248;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != v6 && v5 >= *(v7 + 32))
    {
      v11 = *(a1 + 1240);
      if (v11 != v6)
      {
        v12 = 0;
        while (1)
        {
          if (qword_100B508F0 != -1)
          {
            sub_100853FB4();
          }

          v13 = *(v11[5] + 8);
          v14 = *(v13 + 4);
          LODWORD(__p[0]) = *v13;
          WORD2(__p[0]) = v14;
          v15 = sub_1000E6554(off_100B508E8, __p, 1);
          v16 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v15, __p);
            v17 = v27;
            v18 = __p[0];
            v19 = sub_1005491CC(v15);
            *buf = 136315394;
            v20 = __p;
            if (v17 < 0)
            {
              v20 = v18;
            }

            v30 = v20;
            v31 = 1024;
            v32 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter %s spatial allowed %d", buf, 0x12u);
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v21 = sub_1005491CC(v15);
          if (v21 != 1)
          {
            break;
          }

          v22 = v11[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v11[2];
              v24 = *v23 == v11;
              v11 = v23;
            }

            while (!v24);
          }

          v12 |= v21 == 1;
          v11 = v23;
          if (v23 == v6)
          {
            return v12 & 1;
          }
        }
      }
    }
  }

  v12 = 0;
  return v12 & 1;
}

void sub_1006376F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063771C(uint64_t a1, int a2)
{
  v2 = *(a1 + 1264);
  if (v2)
  {
    if (a2)
    {
      v4 = sub_100017E6C();
      (*(*v4 + 160))(v4, *(a1 + 216));
      v5 = sub_100017E6C();
      sub_100532818(v5 + 744, a1 + 32);
      v6 = **(a1 + 216);
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a1 + 1264);
      if (v6 == 1)
      {
        *(v8 + 16) = Current;
        *(v8 + 24) = 0;
      }

      else
      {
        *(v8 + 24) = Current;
        *(v8 + 16) = 0;
      }
    }

    else
    {
      v9 = **(a1 + 216);
      v10 = CFAbsoluteTimeGetCurrent();
      v11 = 24;
      if (v9)
      {
        v11 = 16;
      }

      *(v2 + 48) += (v10 - *(*(a1 + 1264) + v11));
      v12 = sub_100017E6C();
      sub_100532AB8(v12 + 744, a1 + 32);
      **(a1 + 216) = 1;
    }
  }
}

BOOL sub_100637810(void *a1, uint64_t a2, void *a3)
{
  v3 = a1[157];
  if (v3 < 2)
  {
    v7 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wireless Splitter - getWirelessSplitterAddresses, disabled", buf, 2u);
    }
  }

  else
  {
    v5 = a1[156];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = v5[1];
      }

      while (v5);
    }

    else
    {
      v8 = a1 + 156;
      do
      {
        v6 = v8[2];
        v9 = *v6 == v8;
        v8 = v6;
      }

      while (v9);
    }

    v10 = v6[5];
    v11 = *(*(a1[155] + 40) + 8);
    v12 = *(v11 + 2);
    v27 = *v11;
    v28 = v12;
    v13 = *(v10 + 8);
    v14 = *(v13 + 4);
    LODWORD(v13) = *v13;
    v25 = v13;
    v26 = v14;
    *a2 = v27;
    *(a2 + 4) = v12;
    *(a2 + 6) = v13;
    *(a2 + 10) = v14;
    v15 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v27, buf);
      v16 = v24;
      v17 = *buf;
      sub_1000BE6F8(&v25, __p);
      v18 = buf;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v22 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *v29 = 136315394;
      v30 = v18;
      v31 = 2080;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wireless Splitter - getWirelessSplitterAddresses, enabled user1: %s user2: %s", v29, 0x16u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v24 < 0)
      {
        operator delete(*buf);
      }
    }

    *a3 = 2;
  }

  return v3 > 1;
}

void sub_100637A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100637A2C(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 1240);
  v3 = (a1 + 1248);
  if (v2 != (a1 + 1248))
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 16);
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 1;
        if (v9 >> 1 <= -2)
        {
          sub_1000C7698();
        }

        v11 = v7 - v8;
        if (v11 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = v11;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          sub_1003705C4(a2, v13);
        }

        *(2 * v10) = v6;
        v5 = (2 * v10 + 2);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 2;
      }

      a2[1] = v5;
      v15 = v2[1];
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
          v16 = v2[2];
          v17 = *v16 == v2;
          v2 = v16;
        }

        while (!v17);
      }

      v2 = v16;
    }

    while (v16 != v3);
  }
}

void sub_100637B6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100637B88(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_100853CDC();
  }

  v2 = sub_1005D09A8(off_100B50AC8, *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v14 = 0;
    sub_1000216B4(&v14);
    v4 = sub_100320D94(v3 + 400);
    v5 = sub_100210C40(v4, (*(a1 + 48) & 1) == 0);
    sub_100022214(&v14);
    *(*(*(a1 + 32) + 8) + 24) = v5 != 0;
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      sub_1000E5A58(*(a1 + 40), __p);
      v8 = "re-enabled";
      if (v7)
      {
        v8 = "disabled";
      }

      v9 = "successfully";
      if (v5)
      {
        v9 = "not successfully";
      }

      *buf = 136315650;
      *&buf[4] = v9;
      if (v16 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      v18 = 2080;
      v19 = v8;
      v20 = 2082;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter %s %s inband ringtone for phone call support for device %{public}s", buf, 0x20u);
      if (v16 < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10002249C(&v14);
  }

  else
  {
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        sub_1000E5A58(v12, buf);
        if (v20 >= 0)
        {
          v13 = buf;
        }

        else
        {
          v13 = *buf;
        }

        *__p = 136446210;
        *&__p[4] = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter looks like HFP Service for device %{public}s is not available", __p, 0xCu);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        *__p = 136446210;
        *&__p[4] = "NULL";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter looks like HFP Service for device %{public}s is not available", __p, 0xCu);
      }
    }
  }
}

void sub_100637E14(uint64_t a1)
{
  v1 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100637E88;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_100637E88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 350) & 1) == 0)
  {
    *(v1 + 392) = CFAbsoluteTimeGetCurrent();
    *(v1 + 350) = 1;
  }
}

void sub_100637EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100637F34;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void *sub_100637F34(void *result)
{
  v1 = result[4];
  if ((*(v1 + 349) & 1) == 0 && *(v1 + 350) == 1)
  {
    v3 = result + 5;
    v2 = result[5];
    if (v2)
    {
      v4 = *(v1 + 200);
      if (v4)
      {
        v5 = v1 + 192;
        v6 = v1 + 200;
        do
        {
          v7 = *(v4 + 32);
          v8 = v7 >= v2;
          v9 = v7 < v2;
          if (v8)
          {
            v6 = v4;
          }

          v4 = *(v4 + 8 * v9);
        }

        while (v4);
        if (v6 != v1 + 200 && v2 >= *(v6 + 32))
        {
          v13 = result + 5;
          result = sub_10005E16C(v5, v3, &unk_1008A9BD0, &v13);
          if (*(result[5] + 32))
          {
            v10 = *(v1 + 392);
            v13 = v3;
            *(*(sub_10005E16C(v5, v3, &unk_1008A9BD0, &v13)[5] + 32) + 32) = v10;
            Current = CFAbsoluteTimeGetCurrent();
            v13 = v3;
            v12 = Current - *(*(sub_10005E16C(v5, v3, &unk_1008A9BD0, &v13)[5] + 32) + 32);
            v13 = v3;
            result = sub_10005E16C(v5, v3, &unk_1008A9BD0, &v13);
            *(*(result[5] + 32) + 104) = v12;
          }
        }
      }
    }

    *(v1 + 349) = 1;
  }

  return result;
}

void sub_100638090(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10063810C;
  block[3] = &unk_100AEDA80;
  block[4] = a1;
  block[5] = a2;
  v7 = a4;
  v6 = a3;
  dispatch_async(v4, block);
}

void *sub_10063810C(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result;
    v4 = result[4];
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      v8 = v5 - 8;
      v9 = v5;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= v1;
        v12 = v10 < v1;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v5 && v1 >= *(v9 + 32))
      {
        v18 = result + 5;
        result = sub_10005E16C(v8, v2, &unk_1008A9BD0, &v18);
        if (*result[5])
        {
          v18 = v2;
          v13 = sub_10005E16C(v8, v2, &unk_1008A9BD0, &v18);
          ++*(*v13[5] + 288);
          v18 = v2;
          v14 = sub_10005E16C(v8, v2, &unk_1008A9BD0, &v18);
          ++*(*v14[5] + 280);
          v15 = *(v3 + 52);
          v18 = v2;
          v16 = sub_10005E16C(v8, v2, &unk_1008A9BD0, &v18);
          *(*v16[5] + 264) += v15;
          v17 = *(v3 + 12);
          v18 = v2;
          result = sub_10005E16C(v8, v2, &unk_1008A9BD0, &v18);
          *(*result[5] + 272) += v17;
        }
      }
    }
  }

  return result;
}

void sub_10063828C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 256);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100638308;
  v6[3] = &unk_100AF6B90;
  v6[4] = a1;
  v6[5] = a2;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_async(v5, v6);
}

void *sub_100638308(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result;
    v4 = result[4];
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      v8 = v5 - 8;
      v9 = v5;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= v1;
        v12 = v10 < v1;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v5 && v1 >= *(v9 + 32))
      {
        v20 = result + 5;
        if (*sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20)[5])
        {
          Current = CFAbsoluteTimeGetCurrent();
          v20 = v2;
          *(*sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20)[5] + 200) = Current;
          v14 = CFAbsoluteTimeGetCurrent();
          v20 = v2;
          *(*sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20)[5] + 216) = v14;
        }

        v20 = v2;
        result = sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20);
        if (*(result[5] + 32))
        {
          v15 = CFAbsoluteTimeGetCurrent();
          v20 = v2;
          *(*(sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20)[5] + 32) + 16) = v15;
          v16 = CFAbsoluteTimeGetCurrent();
          v20 = v2;
          *(*(sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20)[5] + 32) + 40) = v16;
          v17 = v3[12];
          v20 = v2;
          *(*(sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20)[5] + 32) + 56) = v17;
          v18 = v3[13];
          v20 = v2;
          *(*(sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20)[5] + 32) + 64) = v18;
          v19 = v3[14];
          v20 = v2;
          result = sub_10005E16C(v8, v2, &unk_1008A9BD0, &v20);
          *(*(result[5] + 32) + 124) = v19;
        }
      }
    }
  }

  return result;
}

void sub_100638540(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006385B8;
  block[3] = &unk_100AE0880;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void *sub_1006385B8(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result[4];
    v4 = v3[25];
    if (v4)
    {
      v5 = result;
      v6 = (v3 + 24);
      v7 = v3 + 25;
      do
      {
        v8 = v4[4];
        v9 = v8 >= v1;
        v10 = v8 < v1;
        if (v9)
        {
          v7 = v4;
        }

        v4 = v4[v10];
      }

      while (v4);
      if (v7 != v3 + 25 && v1 >= v7[4])
      {
        v28 = result + 5;
        if (*sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5])
        {
          Current = CFAbsoluteTimeGetCurrent();
          v28 = v2;
          *(*sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 208) = Current;
          v12 = CFAbsoluteTimeGetCurrent();
          v28 = v2;
          *(*sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 224) = v12;
          v28 = v2;
          v13 = *(*sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 208);
          v28 = v2;
          v14 = v13 - *(*sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 200);
          v28 = v2;
          v15 = *sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5];
          LODWORD(v16) = *(v15 + 232);
          *(v15 + 232) = (v14 + v16);
          v28 = v2;
          v17 = *(*sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 224);
          v28 = v2;
          v18 = v17 - *(*sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 216);
          v28 = v2;
          v19 = *sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5];
          LODWORD(v20) = *(v19 + 248);
          *(v19 + 248) = (v18 + v20);
        }

        v28 = v2;
        result = sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28);
        if (*(result[5] + 32))
        {
          v21 = CFAbsoluteTimeGetCurrent();
          v28 = v2;
          *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 24) = v21;
          v22 = CFAbsoluteTimeGetCurrent();
          v28 = v2;
          *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 48) = v22;
          v28 = v2;
          v23 = *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 24);
          v28 = v2;
          v24 = (v23 - *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 16));
          v28 = v2;
          *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 8) = v24;
          v28 = v2;
          v25 = *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 48);
          v28 = v2;
          v26 = (v25 - *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 40));
          v28 = v2;
          *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 4) = v26;
          v27 = *(v5 + 12);
          v28 = v2;
          *(*(sub_10005E16C(v6, v2, &unk_1008A9BD0, &v28)[5] + 32) + 120) = v27;
          return sub_1006389C0(v3, v5[5]);
        }
      }
    }
  }

  return result;
}

void *sub_1006389C0(void *result, unint64_t a2)
{
  v16 = a2;
  if (a2)
  {
    v2 = result;
    v3 = result[25];
    if (v3)
    {
      v4 = result + 24;
      v5 = result + 25;
      do
      {
        v6 = v3[4];
        v7 = v6 >= a2;
        v8 = v6 < a2;
        if (v7)
        {
          v5 = v3;
        }

        v3 = v3[v8];
      }

      while (v3);
      if (v5 != result + 25 && v5[4] <= a2)
      {
        v17 = &v16;
        result = sub_10005E16C(v4, &v16, &unk_1008A9BD0, &v17);
        if (*(result[5] + 32))
        {
          v14 = 0;
          v15 = 0;
          sub_1000C2364(v16, &v15 + 1, &v15, &v14, &v14 + 1);
          v9 = v14;
          v17 = &v16;
          v10 = sub_10005E16C(v4, &v16, &unk_1008A9BD0, &v17);
          *(*(v10[5] + 32) + 112) = v9;
          v12 = sub_10000F034(v10, v11);
          v17 = &v16;
          v13 = sub_10005E16C(v4, &v16, &unk_1008A9BD0, &v17);
          (*(*v12 + 72))(v12, *(v13[5] + 32));
          v17 = &v16;
          *(*(sub_10005E16C(v4, &v16, &unk_1008A9BD0, &v17)[5] + 32) + 116) = 0;
          v17 = &v16;
          *(*(sub_10005E16C(v4, &v16, &unk_1008A9BD0, &v17)[5] + 32) + 8) = 0;
          v17 = &v16;
          result = sub_10005E16C(v4, &v16, &unk_1008A9BD0, &v17);
          *(*(result[5] + 32) + 4) = 0;
          *(v2 + 349) = 0;
          v2[49] = 0;
        }
      }
    }
  }

  return result;
}

std::string *sub_100638B98@<X0>(char a1@<W1>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = "";
  sub_100007E30(a2, "");
  if ((a1 + 1) < 5u)
  {
    v4 = off_100B03228[(a1 + 1)];
  }

  return std::string::assign(a2, v4);
}

void sub_100638C0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100638C28(uint64_t a1, void *a2, int a3, char a4, int a5, int a6, int a7)
{
  v11 = a2;
  __p = 0;
  v33 = 0uLL;
  sub_100007E30(&__p, "");
  if (a3 == 255)
  {
    memset(&v31, 0, sizeof(v31));
    sub_100638B98(a4, &v31);
    v12 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = &v31;
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v31.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v13;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Overwriting the 'unknown->%s' spatial transition string with '%s->%s'", &buf, 0x20u);
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v31.__r_.__value_.__l.__size_;
    }

    memset(&buf, 0, sizeof(buf));
    p_buf = &buf;
    sub_1003A5170(&buf, size + 2);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v31;
      }

      else
      {
        v16 = v31.__r_.__value_.__r.__words[0];
      }

      memmove(p_buf, v16, size);
    }

    strcpy(p_buf + size, "->");
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v31;
    }

    else
    {
      v17 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v31.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&buf, v17, v18);
    v20 = v19->__r_.__value_.__r.__words[0];
    v34.__r_.__value_.__r.__words[0] = v19->__r_.__value_.__l.__size_;
    *(v34.__r_.__value_.__r.__words + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
    v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    __p = v20;
    *&v33 = v34.__r_.__value_.__r.__words[0];
    *(&v33 + 7) = *(v34.__r_.__value_.__r.__words + 7);
    HIBYTE(v33) = v21;
  }

  else
  {
    sub_100638B98(a3, &v31);
    v22 = std::string::append(&v31, "->");
    v23 = *&v22->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    sub_100638B98(a4, &v34);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v34;
    }

    else
    {
      v24 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v34.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&buf, v24, v25);
    v27 = v26->__r_.__value_.__r.__words[0];
    v35[0] = v26->__r_.__value_.__l.__size_;
    *(v35 + 7) = *(&v26->__r_.__value_.__r.__words[1] + 7);
    v28 = HIBYTE(v26->__r_.__value_.__r.__words[2]);
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    __p = v27;
    *&v33 = v35[0];
    *(&v33 + 7) = *(v35 + 7);
    HIBYTE(v33) = v28;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  memset(&buf, 0, sizeof(buf));
  if (a5)
  {
    v29 = "On";
  }

  else
  {
    v29 = "Off";
  }

  sub_100007E30(&buf, v29);
  std::string::append(&buf, "->");
  if (a6)
  {
    v30 = "On";
  }

  else
  {
    v30 = "Off";
  }

  std::string::append(&buf, v30);
  operator new();
}

void sub_1006390FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006391C0(uint64_t result)
{
  if (*(result + 160) == 1)
  {
    v11 = v1;
    v12 = v2;
    v3 = result;
    if (*(result + 152))
    {
      sub_10062F4E8(result, &v9);
      v6 = *(v3 + 152);
      if (*(v6 + 47) < 0)
      {
        operator delete(*(v6 + 24));
      }

      *(v6 + 24) = v9;
      *(v6 + 40) = v10;
      v7 = sub_10000F034(v4, v5);
      result = (*(*v7 + 192))(v7, *(v3 + 152));
      v8 = *(v3 + 152);
      if (v8)
      {
        if (*(v8 + 151) < 0)
        {
          operator delete(*(v8 + 128));
        }

        if (*(v8 + 111) < 0)
        {
          operator delete(*(v8 + 88));
        }

        if (*(v8 + 71) < 0)
        {
          operator delete(*(v8 + 48));
        }

        if (*(v8 + 47) < 0)
        {
          operator delete(*(v8 + 24));
        }

        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
        }

        operator delete();
      }

      *(v3 + 152) = 0;
      *(v3 + 160) = 0;
    }
  }

  return result;
}

void sub_1006392D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = qword_100BCE8D0;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = v7;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AudioLinkManager setSpatialModeWithBundleID：%@, mode:%u, headtrack:%u", buf, 0x18u);
    }

    if (*(a1 + 1296) == 1)
    {
      v9 = [NSNumber numberWithBool:a4, @"kCBMsgArgParamSpatialHeadTracking"];
      v14[1] = @"kCBMsgArgParamSpatialMode";
      v15[0] = v9;
      v10 = [NSNumber numberWithUnsignedInt:a3];
      v15[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

      v12 = sub_100639508(a1);
      v13 = *(a1 + 1304);
      *(a1 + 1304) = v12;

      [*(a1 + 1304) setObject:v11 forKey:v7];
    }

    else
    {
      if (qword_100B50AA0 != -1)
      {
        sub_1008547F4();
      }

      sub_1005A608C(off_100B50A98, v7, a3, a4);
    }

    sub_1000E6C1C(a1, a4, a3);
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100854E14();
  }
}

id sub_100639508(uint64_t a1)
{
  if (*(a1 + 1296) == 1 && (v1 = *(a1 + 1304)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100853C50();
    }

    v2 = sub_1005A6278(off_100B50A98);
  }

  return v2;
}

void sub_100639570(uint64_t a1, void *a2, unsigned __int8 *a3, int *a4)
{
  v7 = a2;
  v8 = *(a1 + 1304);
  if (!v8)
  {
    v9 = sub_100639508(a1);
    v10 = *(a1 + 1304);
    *(a1 + 1304) = v9;

    v8 = *(a1 + 1304);
  }

  v11 = [v8 objectForKey:v7];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKey:@"kCBMsgArgParamSpatialMode"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 unsignedIntValue];
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100854E50();
      }

      if ([v7 caseInsensitiveCompare:@"com.apple.facetime"])
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    *a4 = v15;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854E8C();
    }

    if ([v7 caseInsensitiveCompare:@"com.apple.facetime"])
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    *a4 = v16;
  }

  v17 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *a4;
    v19 = *a3;
    v20 = 138412802;
    v21 = v7;
    v22 = 1024;
    v23 = v18;
    v24 = 1024;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AudioLinkManager getSpatialModeWithBundleIDInSplitter : %@=>%u,%u", &v20, 0x18u);
  }
}

void sub_10063977C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006397F4;
  block[3] = &unk_100AEAF08;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void sub_1006397F4(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = *(a1 + 32);
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      v8 = v5;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v1;
        v11 = v9 < v1;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v5 && v1 >= *(v8 + 32))
      {
        v12 = *(a1 + 48);
        *buf = a1 + 40;
        *(sub_10005E16C(v5 - 8, v2, &unk_1008A9BD0, buf)[5] + 94) = v12;
        if (qword_100B508E0 != -1)
        {
          sub_100854EC8();
        }

        sub_100519738(off_100B508D8, *v2);
        v13 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 48))
          {
            v14 = "Active";
          }

          else
          {
            v14 = "Not Active";
          }

          *buf = 136446210;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Spatial Audio %{public}s", buf, 0xCu);
        }
      }
    }
  }
}

uint64_t sub_100639958(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100639A08;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *sub_100639A08(void *result)
{
  v1 = result + 6;
  v2 = result[6];
  if (v2)
  {
    v3 = result;
    v4 = result[5];
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      result = (v5 - 8);
      v8 = v5;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v2;
        v11 = v9 < v2;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v5 && v2 >= *(v8 + 32))
      {
        v12 = v1;
        result = sub_10005E16C(result, v1, &unk_1008A9BD0, &v12);
        *(*(v3[4] + 8) + 24) = *(result[5] + 94);
      }
    }
  }

  return result;
}

uint64_t sub_100639AAC()
{
  os_eligibility_get_domain_answer();
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100854EF0();
  }

  return 0;
}

void sub_100639BFC(uint64_t a1, void *a2)
{
  v4 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 280);
  objc_storeStrong((a1 + 920), a2);
  *(a1 + 929) = v4 != 0;
  v7 = sub_1000DAB84(v5, v6);
  sub_10000CA94(v7, &stru_100B02F30);
  sub_1000088CC(v8);
}

void sub_100639C9C(id a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;

  sub_1004DB318(v2);
}

id sub_100639CE0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 280);
  v2 = *(a1 + 920);
  sub_1000088CC(v4);

  return v2;
}

uint64_t sub_100639D40(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C798(a1, a2) + 840);

  return v2();
}

void sub_100639D94(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100639E0C;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100639E0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile Allowed change to %d ", v9, 8u);
  }

  *(v2 + 928) = *(a1 + 40);
  if (qword_100B50AA0 != -1)
  {
    sub_1008547F4();
  }

  if (*(v2 + 928))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = sub_1005A5E40(off_100B50A98, v5);
  v8 = sub_1000DAB84(v6, v7);
  sub_10000CA94(v8, &stru_100B02F50);
}

void sub_100639F0C(id a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;

  sub_1004DB318(v2);
}

void sub_100639F50(uint64_t a1, char a2)
{
  v2 = *(a1 + 144);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100639E0C;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 112;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_100639FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E012C(a2, 0x40u);
  if (v4)
  {
    v6 = sub_10000C798(v4, v5);
    v7 = (*(*v6 + 840))(v6, 3);
  }

  else
  {
    v7 = 0;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100853C50();
  }

  v8 = sub_10059A098(off_100B50A98);
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 280);
  v9 = *(a1 + 920);
  sub_10000801C(v18);
  if (a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "NO";
      v13 = *(a1 + 928);
      *buf = 136316162;
      if (v9)
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      v20 = "YES";
      if (v8 == 1)
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      v21 = 2080;
      v22 = v14;
      if (v13)
      {
        v12 = "YES";
      }

      v23 = 2080;
      v24 = v15;
      v25 = 2080;
      v26 = "YES";
      v27 = 2080;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile User preference, Support = %s Enrollment = %s User Choice = %s Owned Device %s Allowed %s", buf, 0x34u);
    }

    v16 = 0;
    if (v9 && v8 == 1)
    {
      v16 = *(a1 + 928);
    }
  }

  else
  {
    v16 = 0;
  }

  sub_1000088CC(v18);
  return v16 & 1;
}

void sub_10063A1B8(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063A230;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10063A244(uint64_t a1, char a2)
{
  v2 = *(a1 + 128);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063A230;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 128;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10063A2C0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = _os_feature_enabled_impl();
  if (a3 && v6)
  {
    if (sub_10010C5DC(*(a1 + 224), a3))
    {
      v7 = *(a1 + 256);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10063A37C;
      block[3] = &unk_100AEAF08;
      v9 = a2;
      block[4] = a1;
      block[5] = a3;
      dispatch_async(v7, block);
    }
  }
}

void sub_10063A390(uint64_t a1, unint64_t a2, int a3)
{
  v11 = a2;
  v12 = &v11;
  v4 = sub_10005E16C(a1 + 192, &v11, &unk_1008A9BD0, &v12);
  v5 = *(v4[5] + 92);
  v7 = sub_1000DAB84(v4, v6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10063A448;
  v8[3] = &unk_100B02F70;
  v9 = v5;
  v10 = a3 == 240;
  sub_10000CA94(v7, v8);
}

void sub_10063A448(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);

  sub_1004DF8B0(v2, v3, v4);
}

void sub_10063A4A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1000D999C(a1, a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10063A524;
  v6[3] = &unk_100AE15D8;
  v6[4] = a2;
  v7 = a3;
  sub_10000CA94(v5, v6);
}

uint64_t sub_10063A524(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AD0 != -1)
    {
      sub_100853CDC();
    }

    v2 = off_100B50AC8;
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);

    return sub_1005E4B8C(v2, v3, v4);
  }

  return result;
}

void sub_10063A588(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v6 = sub_10010C5DC(*(a1 + 224), a2);
    if ((v6 & 1) != 0 || !a4)
    {
      v8 = sub_1000DAB84(v6, v7);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10063A624;
      v9[3] = &unk_100AE15D8;
      v9[4] = a2;
      v10 = a4;
      sub_10000CA94(v8, v9);
    }
  }
}

uint64_t sub_10063A624(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AD0 != -1)
    {
      sub_100853CDC();
    }

    v2 = off_100B50AC8;
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);

    return sub_1005D328C(v2, v3, v4);
  }

  return result;
}

void sub_10063A688(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  sub_10054F9BC(a2, a3);
  if (qword_100B512B8 != -1)
  {
    sub_100854F60();
  }

  v5 = qword_100B512B0;

  sub_10031A678(v5, a2, v3);
}

void sub_10063A6F0(uint64_t a1, char a2, int *a3, char a4, int a5, int a6, char a7, char a8, __int16 a9)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v9 = *(a1 + 256);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10063A790;
  v10[3] = &unk_100AF6B90;
  v10[4] = a1;
  v14 = a2;
  v17 = a4;
  v11 = a5;
  v12 = a6;
  v18 = a7;
  v19 = a8;
  v13 = a9;
  dispatch_async(v9, v10);
}

void sub_10063A7E4(uint64_t a1, int a2, unsigned __int8 *a3, char a4, __int16 a5, uint64_t a6)
{
  if (_os_feature_enabled_impl())
  {
    v12 = (*a3 << 40) | (a3[1] << 32) | (a3[2] << 24) | (a3[3] << 16);
    v13 = a3[4];
    v14 = a3[5];
    v15 = *(a1 + 256);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10063A8DC;
    v16[3] = &unk_100B02F90;
    v17 = a2;
    v16[4] = a1;
    v16[5] = v12 | (v13 << 8) | v14;
    v19 = a4;
    v18 = a5;
    v16[6] = a6;
    dispatch_async(v15, v16);
  }
}

uint64_t sub_10063A8FC(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v6 = *(sub_100632D10(a1, a3) + 24);
  v7 = sub_100632D10(a1, a3);
  v8 = v7;
  if (a2 != 7)
  {
    v12 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 216);
      v14 = *(v13 + 8 * a2 + 176);
      v13 += 48;
      v15 = *(v13 + 8 * v6);
      v16 = *(v13 + 8 * *(v8 + 24));
      v18 = 136446722;
      v19 = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unhandled Low Latency Game Transition: %{public}s. State: %{public}s -> %{public}s.", &v18, 0x20u);
    }

    return 0;
  }

  if (v6 != 13 && v6 != 10)
  {
    if ((v6 - 11) <= 1)
    {
      *(v7 + 24) = 8;
      sub_10010E8E0(*(a1 + 224), 3, a3);
      return 1;
    }

    return 0;
  }

  *(v7 + 24) = 12;
  v10 = *(a1 + 224);
  v11 = 1;
  sub_10010E55C(v10, 1, a3);
  return v11;
}

void sub_10063AA70(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10063AAEC;
  block[3] = &unk_100AE0880;
  v6 = a2;
  v7 = a3;
  block[4] = a1;
  block[5] = a4;
  dispatch_async(v4, block);
}

void sub_10063AAEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10062D8E8(v2, *(a1 + 48));
  v19 = v3;
  sub_100625738(v2, v3, 60);
  if (v3)
  {
    v5 = (v2 + 200);
    v4 = *(v2 + 200);
    if (v4)
    {
      v6 = (v2 + 200);
      do
      {
        v7 = v4[4];
        v8 = v7 >= v3;
        v9 = v7 < v3;
        if (v8)
        {
          v6 = v4;
        }

        v4 = v4[v9];
      }

      while (v4);
      if (v6 != v5 && v3 >= v6[4])
      {
        block = &v19;
        if (*(sub_10005E16C(v2 + 192, &v19, &unk_1008A9BD0, &block)[5] + 24))
        {
          block = &v19;
          v10 = sub_10005E16C(v2 + 192, &v19, &unk_1008A9BD0, &block);
          ++*(*(v10[5] + 24) + 180);
        }
      }
    }

    if (v19)
    {
      v11 = *v5;
      if (*v5)
      {
        v12 = (v2 + 200);
        do
        {
          v13 = v11[4];
          v8 = v13 >= v19;
          v14 = v13 < v19;
          if (v8)
          {
            v12 = v11;
          }

          v11 = v11[v14];
        }

        while (v11);
        if (v12 != v5 && v19 >= v12[4])
        {
          block = &v19;
          if (*(sub_10005E16C(v2 + 192, &v19, &unk_1008A9BD0, &block)[5] + 32))
          {
            block = &v19;
            v15 = sub_10005E16C(v2 + 192, &v19, &unk_1008A9BD0, &block);
            ++*(*(v15[5] + 32) + 116);
          }
        }
      }
    }
  }

  if (*(a1 + 50) >= 0x33u)
  {
    v16 = *(a1 + 40);
    v17 = *(v2 + 256);
    block = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10062E544;
    v23 = &unk_100AEC130;
    v24 = v2;
    v25 = v19;
    v26 = v16;
    dispatch_async(v17, &block);
    v18 = *(v2 + 256);
    block = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100631640;
    v23 = &unk_100AFA2C0;
    v24 = v2;
    v25 = v19;
    v27 = 256;
    v26 = 0;
    dispatch_async(v18, &block);
  }
}

void sub_10063AD60(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updating the tipiConnection state for a2dp audio packet flush metrics: %d", buf, 8u);
  }

  v7 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10063AE6C;
  block[3] = &unk_100AEAF08;
  block[4] = a1;
  block[5] = a2;
  v9 = a3;
  dispatch_async(v7, block);
}

void *sub_10063AE6C(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result[4];
    v5 = *(v2 + 200);
    v3 = v2 + 200;
    v4 = v5;
    if (v5)
    {
      v6 = v3;
      do
      {
        v7 = *(v4 + 32);
        v8 = v7 >= v1;
        v9 = v7 < v1;
        if (v8)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * v9);
      }

      while (v4);
      if (v6 != v3 && v1 >= *(v6 + 32))
      {
        v10 = *(result + 48);
        v11 = result + 5;
        result = sub_10005E16C(v3 - 8, result + 5, &unk_1008A9BD0, &v11);
        *(result[5] + 40) = v10;
      }
    }
  }

  return result;
}

void *sub_10063AF08(uint64_t a1, unint64_t a2)
{
  v31 = a2;
  *&v27 = &v31;
  v3 = sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27);
  std::string::assign((*(v3[5] + 24) + 40), "No");
  *&v27 = &v31;
  v4 = sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27);
  std::string::assign((*(v4[5] + 24) + 88), "2.4G");
  *&v27 = &v31;
  v5 = sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27);
  std::string::assign((*(v5[5] + 24) + 112), "0000");
  *&v27 = &v31;
  *(*(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24) + 164) = 0;
  v29 = 0;
  v30 = 0;
  result = v31;
  if (v31)
  {
    sub_1000C2364(v31, &v30 + 1, &v30, &v29, &v29 + 1);
    v7 = v29;
    *&v27 = &v31;
    *(*(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24) + 36) = v7;
    v8 = v31;
    if (*(v31 + 1436) == 1)
    {
      *&v27 = &v31;
      v9 = sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27);
      std::string::assign((*(v9[5] + 24) + 40), "Yes");
      v8 = v31;
    }

    sub_10063B444(a1, v8);
    *&v27 = &v31;
    v10 = *sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5];
    *&v27 = &v31;
    v11 = sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27);
    std::string::operator=((*(v11[5] + 24) + 64), v10 + 19);
    if (*(v31 + 1437) == 1)
    {
      *&v27 = &v31;
      v12 = sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27);
      std::string::assign((*(v12[5] + 24) + 88), "5G");
    }

    *&v27 = &v31;
    v13 = *(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24);
    v14 = *(v13 + 200);
    if (v14 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = *(v13 + 196) / v14;
    }

    *&v27 = &v31;
    *(*(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24) + 192) = v15;
    if (sub_1000E2140(v31, 0xCu))
    {
      sub_1000E2D2C(v31, 0xAu, &v27);
      v32 = &v31;
      v16 = *(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v32)[5] + 24);
      if (*(v16 + 135) < 0)
      {
        operator delete(*(v16 + 112));
      }

      *(v16 + 112) = v27;
      *(v16 + 128) = v28;
    }

    *&v27 = &v31;
    v17 = *(*(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 48) + 16);
    *&v27 = &v31;
    *(*(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24) + 136) = v17;
    *&v27 = &v31;
    v18 = *(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24);
    v19 = v18[6];
    if (v19)
    {
      v20 = *v18 / v19;
    }

    else
    {
      v20 = 0;
    }

    *&v27 = &v31;
    *(*(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24) + 140) = v20;
    *&v27 = &v31;
    v21 = *(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24);
    v22 = *(v21 + 148);
    if (v22)
    {
      v23 = *(v21 + 172) / v22;
    }

    else
    {
      v23 = 0;
    }

    *&v27 = &v31;
    *(*(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24) + 144) = v23;
    *&v27 = &v31;
    v24 = *(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24);
    v25 = *(v24 + 168);
    if (v25)
    {
      v26 = *(v24 + 176) / v25;
    }

    else
    {
      v26 = 0;
    }

    *&v27 = &v31;
    *(*(sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27)[5] + 24) + 152) = v26;
    *&v27 = &v31;
    result = sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27);
    if (*(result[5] + 40) == 1)
    {
      *&v27 = &v31;
      result = sub_10005E16C(a1 + 192, &v31, &unk_1008A9BD0, &v27);
      *(*(result[5] + 24) + 164) = 1;
    }
  }

  return result;
}

void sub_10063B428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063B444(uint64_t a1, unint64_t a2)
{
  v12 = a2;
  __p.__r_.__value_.__r.__words[0] = &v12;
  if (*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &__p)[5])
  {
    __p.__r_.__value_.__r.__words[0] = &v12;
    v3 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &__p);
    std::string::assign((*v3[5] + 456), "Audio");
    v4 = *(a1 + 216);
    if (v4[8] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v5 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &__p);
      std::string::assign((*v5[5] + 456), "Video Spatial");
      v4 = *(a1 + 216);
    }

    if (v4[7] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v6 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &__p);
      std::string::assign((*v6[5] + 456), "Audio Spatial");
      v4 = *(a1 + 216);
    }

    if (v4[5] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v7 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &__p);
      std::string::assign((*v7[5] + 456), "Game");
      v4 = *(a1 + 216);
    }

    if (v4[3] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v8 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &__p);
      std::string::assign((*v8[5] + 456), "VoiceOver");
      v4 = *(a1 + 216);
    }

    if (v4[2] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v9 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &__p);
      std::string::assign((*v9[5] + 456), "GarageBand");
    }

    __p.__r_.__value_.__r.__words[0] = &v12;
    if (*(*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &__p)[5] + 160) == 1)
    {
      memset(&__p, 0, sizeof(__p));
      sub_100007E30(&__p, "Game");
      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5] + 163) == 1)
      {
        std::string::append(&__p, " + Audio");
      }

      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5] + 161) == 1)
      {
        std::string::append(&__p, " + AudioSpatial");
      }

      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5] + 162) == 1)
      {
        std::string::append(&__p, " + VideoSpatial");
      }

      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5] + 165) == 1)
      {
        std::string::append(&__p, " + GarageBand");
      }

      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13)[5] + 164) == 1)
      {
        std::string::append(&__p, " + VoiceOver");
      }

      v13 = &v12;
      v10 = sub_10005E16C(a1 + 192, &v12, &unk_1008A9BD0, &v13);
      std::string::operator=((*v10[5] + 456), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}