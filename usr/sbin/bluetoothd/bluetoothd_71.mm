void sub_10050AF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100320BE8(&a23);
  _Unwind_Resume(a1);
}

void sub_10050AF90(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083CA10();
  }

  v2 = sub_100029A5C(off_100B508E8);
  if (qword_100B508D0 != -1)
  {
    sub_10083CA24();
  }

  v13 = 0;
  v3 = sub_100029738(off_100B508C8) + v2;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v4 = sub_100017E6C();
  (*(*v4 + 56))(v4, &v13 + 1, &v13, &v12 + 1, &v12, &v11, &v10);
  if (v3 > 2)
  {
    goto LABEL_6;
  }

  if (v3 == 2)
  {
    if ((v13 & 0x100) != 0)
    {
LABEL_6:
      v5 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adjusting SBC bitpool to to 37 either due to > 2 Hid's or wifi state is 2.4 Ghz with >1 Hid", buf, 2u);
      }

      v6 = 37;
LABEL_9:
      *(a1 + 264) = v6;
    }
  }

  else if ((v13 & 0x100) != 0)
  {
    v7 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adjusting SBC bitpool to 42, wifi state is 2.4 Ghz", v8, 2u);
    }

    v6 = 42;
    goto LABEL_9;
  }
}

void sub_10050B10C(uint64_t a1)
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  *__p = 0u;
  v6 = 0u;
  *v7 = 0u;
  v4 = 0u;
  *v5 = 0u;
  sub_1000DE474(&v4 + 1);
  BYTE2(v5[0]) = 0;
  BYTE4(v5[0]) = 0;
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  DWORD1(v10[1]) = 0;
  v6 = 0uLL;
  v5[1] = 0;
  LOBYTE(v7[0]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v10, 0, 19);
  __p[1] = 0;
  BYTE8(v10[1]) = 1;
  *(&v10[1] + 14) = 0;
  *(&v10[1] + 9) = 0;
  v11 = 0uLL;
  *(&v10[2] + 1) = 0;
  LOBYTE(v12) = 0;
  *(&v12 + 2) = 0;
  v2 = *(a1 + 208);
  if (v2)
  {
    if (sub_100536A18(v2, &v4))
    {
      v3 = BYTE12(v10[1]);
      if (HIDWORD(v10[1]))
      {
        *(a1 + 264) = HIDWORD(v10[1]);
        *(*(*(a1 + 184) + 24) + 3) = v3;
      }
    }
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[1]);
  }

  nullsub_21();
}

uint64_t sub_10050B260(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  sub_10050CDDC(a1, a2, v8);
  v4 = sub_10050C560(v2, v3);
  v5 = v9 >> 8 <= 0x176 || v9 / 0x3E8 > v4;
  v6 = !v5;
  if (v5 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_10083CA38();
  }

  return v6;
}

uint64_t sub_10050B310(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 348) = a3;
  *(a1 + 344) = 0;
  v5 = 0;
  if (a3)
  {
    v6 = a3;
    v7 = (a2 + 3);
    do
    {
      if (*(v7 - 1) != 255 && !*(v7 - 3) && *(v7 - 2) == 1 && !*v7)
      {
        *(a1 + 344) = ++v5;
      }

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  *(a1 + 352) = 0;
  v8 = *(a1 + 360);
  if (v8)
  {
    free(v8);
    v5 = *(a1 + 344);
  }

  *(a1 + 360) = malloc_type_calloc(v5, 0x20uLL, 0x1020040C75495F1uLL);
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 344);
    *buf = 67109120;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Available endpoints: %d", buf, 8u);
  }

  v11 = *(a1 + 348);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a2 + 3);
    do
    {
      v15 = *(v14 - 1);
      if (v15 != 255 && !*(v14 - 3) && *(v14 - 2) == 1 && !*v14)
      {
        v16 = *(a1 + 360) + 32 * v13;
        *(v16 + 4) = v15;
        *(v16 + 8) = 1;
        *v16 = 0;
        v17 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67111168;
          v20 = v12;
          v21 = 1024;
          v22 = v15;
          v23 = 1024;
          v24 = 0;
          v25 = 1024;
          v26 = 1;
          v27 = 1024;
          v28 = v13;
          v29 = 1024;
          v30 = v15;
          v31 = 1024;
          v32 = 0;
          v33 = 1024;
          v34 = 1;
          v35 = 1024;
          v36 = 0;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "SaveDiscoveredPeerEndpoints Current Record = %d, seid = %d, inUse = %d, endpointType = %d, Endpoint saved: streamEndpointInfo = %d, seid = %d, inUse = %d, endpointType = %d, queryDone = %d", buf, 0x38u);
          v11 = *(a1 + 348);
        }

        ++v13;
      }

      ++v12;
      v14 += 4;
    }

    while (v12 < v11);
  }

  return 0;
}

void sub_10050B584(uint64_t a1)
{
  v2 = *(a1 + 344);
  v3 = *(a1 + 360);
  if (v2)
  {
    v4 = 0;
    v5 = 16;
    v6 = v3;
    do
    {
      if (v6)
      {
        v7 = *&v6[v5];
        if (v7)
        {
          if (*(v7 + 8))
          {
            free(*(v7 + 8));
            v3 = *(a1 + 360);
          }

          free(*&v3[v5]);
          v3 = *(a1 + 360);
          *&v3[v5] = 0;
          v2 = *(a1 + 344);
          v6 = v3;
        }
      }

      ++v4;
      v5 += 32;
    }

    while (v4 < v2);
  }

  if (v3)
  {
    free(v3);
  }

  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
}

uint64_t sub_10050B61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10050A6F0(a1);
  *(a1 + 176) = v4;
  v5 = sub_1005095F8(a1, v4);
  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083CB1C();
    }

    return 0;
  }

  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083CAA8();
    }

    return 0;
  }

  v6 = v5;
  *(a1 + 152) = *(a2 + 4);
  *(a1 + 156) = *(v5 + 4);
  sub_10050AA90(a1);
  *(a1 + 196) = 3;
  v7 = malloc_type_calloc(3uLL, 0x10uLL, 0x105204037B82EA9uLL);
  *(a1 + 184) = v7;
  *v7 = 1;
  *(*(a1 + 184) + 16) = 7;
  *(*(a1 + 184) + 17) = 0;
  *(*(a1 + 184) + 18) = *(a1 + 176);
  *(*(a1 + 184) + 19) = *(*(a2 + 16) + 19);
  *(*(a1 + 184) + 24) = malloc_type_calloc(*(*(a2 + 16) + 19), 1uLL, 0x100004077774924uLL);
  *(*(a1 + 184) + 32) = 8;
  *(a1 + 192) = 1;
  memcpy(*(*(a1 + 184) + 24), *(*(a2 + 16) + 24), *(*(a2 + 16) + 19));
  v8 = sub_10050AAE8(a1, *(a1 + 176));
  *(a1 + 272) = v8;
  v9 = *(a1 + 176);
  switch(v9)
  {
    case 255:
      v19 = qword_100BCE8B8;
      if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_61:
        sub_100509BD8();
        return *(a1 + 184);
      }

      v22 = *(a1 + 156);
      *buf = 67109120;
      *&buf[4] = v22;
      v21 = "Selecting remote Vendor-Specific A2DP SEID %u";
      goto LABEL_31;
    case 2:
      *(*(*(a1 + 184) + 24) + 1) = v8 == 44100.0;
      if (*(a1 + 272) == 44100.0)
      {
        v18 = 4;
      }

      else
      {
        v18 = -124;
      }

      *(*(*(a1 + 184) + 24) + 2) = v18;
      if (sub_10050B260(a1, *(*(v6 + 16) + 8)))
      {
        *(*(*(a1 + 184) + 24) + 3) = *(*(*(v6 + 16) + 8) + 3);
        *(*(*(a1 + 184) + 24) + 4) = *(*(*(v6 + 16) + 8) + 4);
        *(*(*(a1 + 184) + 24) + 5) = *(*(*(v6 + 16) + 8) + 5);
      }

      v19 = qword_100BCE8B8;
      if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v20 = *(a1 + 156);
      *buf = 67109120;
      *&buf[4] = v20;
      v21 = "Selecting remote AAC SEID %u";
LABEL_31:
      v23 = v19;
      v24 = 8;
LABEL_60:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v21, buf, v24);
      goto LABEL_61;
    case 0:
      if (v8 == 44100.0)
      {
        v10 = 53;
      }

      else
      {
        v10 = 48;
      }

      *(a1 + 264) = v10;
      v42 = 0;
      v11 = sub_10000E92C();
      sub_100007E30(buf, "A2DP");
      sub_100007E30(__p, "SBCBitpool");
      v12 = (*(*v11 + 128))(v11, buf, __p, &v42);
      v14 = v12;
      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      if (v46 < 0)
      {
        operator delete(*buf);
      }

      if (v14)
      {
        v15 = v42;
        v16 = qword_100BCE8B8;
        if ((v42 - 251) > 0xFFFFFF06)
        {
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined SBC Bitpool value to %d", buf, 8u);
            v15 = v42;
          }

          *(a1 + 264) = v15;
        }

        else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_10083C610();
        }
      }

      else
      {
        v25 = sub_10000C798(v12, v13);
        if ((*(*v25 + 416))(v25))
        {
          v26 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Adjusting bitpool if needed - we are Central", buf, 2u);
          }

          sub_10050AF90(a1);
        }
      }

      v27 = *(v6 + 16);
      v28 = *(*(v27 + 8) + 2);
      if (v10 >= v28)
      {
        if (*(a1 + 264) < v28)
        {
          v30 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v28;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: Increasing SBC Bitpool to %d based on sink's Minimum Bitpool Value", buf, 8u);
            v27 = *(v6 + 16);
            v28 = *(*(v27 + 8) + 2);
          }

          *(a1 + 264) = v28;
        }
      }

      else
      {
        v29 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v28;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Ignoring sink's SBC Minimum Bitpool Value of %d because it is too high", buf, 8u);
          v27 = *(v6 + 16);
        }
      }

      v31 = *(*(v27 + 8) + 3);
      if (v31 > 1)
      {
        if (*(a1 + 264) > v31)
        {
          v33 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v31;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Warning: Reducing SBC Bitpool to %d based on sink's Maximum Bitpool Value", buf, 8u);
            v27 = *(v6 + 16);
            v31 = *(*(v27 + 8) + 3);
          }

          *(a1 + 264) = v31;
        }
      }

      else
      {
        v32 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v31;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Ignoring sink's SBC Maximum Bitpool Value of %d because it is too low", buf, 8u);
          v27 = *(v6 + 16);
        }
      }

      v34 = *(*(a1 + 184) + 24);
      v35 = *(*(v27 + 8) + 2);
      if (*(v34 + 2) < v35)
      {
        *(v34 + 2) = v35;
        v34 = *(*(a1 + 184) + 24);
      }

      *(v34 + 3) = *(a1 + 264);
      if (*(a1 + 272) == 44100.0)
      {
        v36 = 33;
      }

      else
      {
        v36 = 17;
      }

      **(*(a1 + 184) + 24) = v36;
      v37 = qword_100BCE8B8;
      if (!os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v38 = *(a1 + 156);
      v39 = *(a1 + 264);
      *buf = 67109376;
      *&buf[4] = v38;
      v44 = 1024;
      v45 = v39;
      v21 = "Selecting remote SBC SEID %u with bitpool %d";
      v23 = v37;
      v24 = 14;
      goto LABEL_60;
  }

  return *(a1 + 184);
}

void sub_10050BD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10050BD58(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (!v1)
  {
    return 255;
  }

  v3 = 0;
  v4 = 0;
  v5 = *(a1 + 360);
  v6 = 32 * v1;
  while ((*(v5 + v4) & 1) != 0)
  {
    v4 += 32;
    ++v3;
    if (v6 == v4)
    {
      return 255;
    }
  }

  *(v5 + v4) = 1;
  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(v5 + v4 + 4);
    v10[0] = 67109632;
    v10[1] = v3;
    v11 = 1024;
    v12 = v9;
    v13 = 1024;
    v14 = 1;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "getNextSeidForGetCapQuery Position: %d seid: %d queryDone %d", v10, 0x14u);
    v5 = *(a1 + 360);
  }

  return *(v5 + v4 + 4);
}

uint64_t sub_10050BE78(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 840))(v3, 5))
  {
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = 60;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "A2DP Latency = %d ms for constant low latency", &v14, 8u);
    }

    return 60000;
  }

  else
  {
    v6 = *(a1 + 208);
    if (v6 && sub_1000E2140(v6, 0xCu) && !sub_1000E2140(*(a1 + 208), 0xDu) && !*(a1 + 292))
    {
      *(a1 + 292) = 150000;
    }

    v5 = *(a1 + 292);
    if (v5)
    {
      v7 = *(a1 + 304);
      v8 = qword_100BCE8B8;
      v9 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
      if (v7 == 1)
      {
        if (v9)
        {
          v14 = 67109120;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A2DP Latency = %d ms (DelayReport from accessory)", &v14, 8u);
          return *(a1 + 292);
        }
      }

      else
      {
        if (v9)
        {
          v12 = *(a1 + 280);
          v14 = 67109632;
          v15 = (v5 + v12) / 0x3E8;
          v16 = 1024;
          v17 = v5 / 0x3E8;
          v18 = 1024;
          v19 = v12 / 0x3E8;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A2DP Latency = %d ms (%d ms DelayReport from accessory + %d ms RTP blocking)", &v14, 0x14u);
          LODWORD(v5) = *(a1 + 292);
        }

        return (*(a1 + 280) + v5);
      }
    }

    else
    {
      v10 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 288) / 0x3E8u;
        v14 = 67109120;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "A2DP Latency = %d ms (estimate) calculated based on RTP packet interval", &v14, 8u);
      }

      return *(a1 + 288);
    }
  }

  return v5;
}

void sub_10050C108(uint64_t a1, int a2)
{
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting stream config delay report latency for %d", v5, 8u);
  }

  *(a1 + 292) = a2;
}

void sub_10050C1BC(uint64_t a1, int a2)
{
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    v5 = "not supported";
    if (a2)
    {
      v5 = "supported";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setting absolute volume support to %s", &v6, 0xCu);
  }

  *(a1 + 300) = a2;
}

void sub_10050C288(uint64_t a1, int a2)
{
  v4 = qword_100BCE8B8;
  v5 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v10 = 67109120;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Reported MTU = %d", &v10, 8u);
  }

  if (a2 >= 1004)
  {
    v7 = 1004;
  }

  else
  {
    v7 = a2;
  }

  if (a2 >= 680)
  {
    v8 = sub_10000C798(v5, v6);
    if ((*(*v8 + 104))(v8))
    {
      v7 = 679;
    }
  }

  *(a1 + 248) = v7 - 16;
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    v10 = 67109120;
    v11 = v7 - 16;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Setting RTP frame length to %d", &v10, 8u);
  }
}

void sub_10050C3D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 264);
  *(a2 + 2) = v2;
  v3 = 2 * v2 + 13;
  v4 = *(a1 + 272);
  *(a1 + 252) = v3;
  *(a1 + 256) = (v4 * (8 * v3) * 0.0078125 / 1000.0);
  v5 = *(a1 + 248);
  if (v5 / v3 >= 0xC)
  {
    v6 = 12;
  }

  else
  {
    v6 = v5 / v3;
  }

  *(a1 + 260) = v6;
  v7 = (128000000 * v6) / v4;
  *(a1 + 280) = v7;
  *(a1 + 288) = (v7 * 5.0);
  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134219776;
    v10 = v4 / 1000.0;
    v11 = 1024;
    v12 = v2;
    v13 = 1024;
    v14 = (v4 * (8 * v3) * 0.0078125 / 1000.0);
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = 2 * v2 + 13;
    v19 = 1024;
    v20 = v6 * v3;
    v21 = 1024;
    v22 = v5;
    v23 = 2048;
    v24 = v7 / 1000.0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A2DP configured at %2.1f KHz. Codec: SBC, Bitpool: %d (%d kbps). %d frames * %d bytes = %d per RTP (max=%d) every %.2f ms", &v9, 0x3Au);
  }
}

uint64_t sub_10050C560(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  v4 = sub_10041074C(v2, v3);
  if (v4)
  {
    return 256;
  }

  v7 = sub_10000C798(v4, v5);
  if ((*(*v7 + 760))(v7))
  {
    return 192;
  }

  else
  {
    return 244;
  }
}

void sub_10050C5C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10050C560(a1, a2);
  v5 = (a1 + 256);
  *(a1 + 256) = v4;
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "For this platform, the default AAC-LC bitrate is %d", buf, 8u);
    v4 = *v5;
  }

  v7 = *(a2 + 16);
  v8 = v7 / 0x3E8;
  if (v7 >> 8 < 0x177 || v8 > v4)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083CB90();
    }
  }

  else
  {
    *v5 = v8;
    v10 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Setting AAC-LC max bitrate to sink requested bitrate of %d", buf, 8u);
    }
  }

  v27 = *v5;
  v12 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "AACBitrate");
  v13 = (*(*v12 + 88))(v12, buf, __p, &v27);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(*buf);
    if (!v13)
    {
      goto LABEL_23;
    }
  }

  else if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v27;
  if (v27 < 96)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083CC00();
    }
  }

  else
  {
    *v5 = v27;
    v15 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined AAC-LC bitrate: %d kbps", buf, 8u);
    }
  }

LABEL_23:
  v16 = *(a1 + 256);
  v17 = *(a1 + 272);
  v18 = vcvtpd_u64_f64((1000 * v16) * 1024.0 / v17 * 0.125);
  *(a1 + 252) = v18;
  v19 = *(a1 + 248);
  v20 = v19 - 12;
  if (v19 - 12 < v18)
  {
    v16 = vcvtmd_u64_f64(v17 * (8 * v20) * 0.0009765625 / 1000.0);
    *(a1 + 252) = v20;
    *(a1 + 256) = v16;
    v18 = v19 - 12;
  }

  *(a1 + 260) = v18 + 12 <= v19;
  if (v18 + 12 > v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1024000000;
  }

  v22 = v21 / v17;
  *(a1 + 280) = v22;
  *(a1 + 288) = (v22 * 6.0);
  v23 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219776;
    if (v18 + 12 > v19)
    {
      v24 = 0;
    }

    else
    {
      v24 = v18 + 12;
    }

    *&buf[4] = v17 / 1000.0;
    v29 = 1024;
    v30 = v16;
    v31 = 1024;
    v32 = v18 + 12 <= v19;
    v33 = 1024;
    v34 = 12;
    v35 = 1024;
    v36 = v18;
    v37 = 1024;
    v38 = v24;
    v39 = 1024;
    v40 = v19;
    v41 = 2048;
    v42 = v22 / 1000.0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "A2DP configured at %2.1f KHz. Codec: AAC-LC, VBR max: %d kbps. %d frames * (%d+%d) bytes = %d per RTP (max=%d) every %.2f ms", buf, 0x3Au);
  }
}

void sub_10050C9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10050C9E0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 256);
  *(a1 + 256) = 256;
  v4 = sub_10000C798(a1, a2);
  if ((*(*v4 + 760))(v4))
  {
    *v3 = 174;
  }

  v20 = 256;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "AACELDBitrate");
  v6 = (*(*v5 + 88))(v5, buf, __p, &v20);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(*buf);
  }

  if (v6)
  {
    v7 = v20;
    if (v20 < 96)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_10083CC70();
      }
    }

    else
    {
      *v3 = v20;
      v8 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Setting user defined AAC-ELD bitrate: %d kbps", buf, 8u);
      }
    }
  }

  v9 = *(a1 + 248);
  v10 = v9 - 2;
  v11 = *(a1 + 256);
  v12 = *(a1 + 272);
  v13 = vcvtpd_u64_f64((480000 * v11) / v12 * 0.125);
  *(a1 + 248) = v9 - 2;
  *(a1 + 252) = v13;
  v14 = v9 - 4;
  if (v14 < v13)
  {
    v11 = vcvtmd_u64_f64(v12 * (8 * v14) / 480.0 / 1000.0);
    *(a1 + 252) = v14;
    *(a1 + 256) = v11;
    v13 = v14;
  }

  if (v10 / v13 >= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v10 / v13;
  }

  *(a1 + 260) = v15;
  v16 = (480000000 * v15) / v12;
  *(a1 + 280) = v16;
  *(a1 + 288) = (v16 * 5.0);
  v17 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219776;
    *&buf[4] = v12 / 1000.0;
    v22 = 1024;
    v23 = v11;
    v24 = 1024;
    v25 = v15;
    v26 = 1024;
    v27 = 2;
    v28 = 1024;
    v29 = v13;
    v30 = 1024;
    v31 = v15 * (v13 + 2);
    v32 = 1024;
    v33 = v10;
    v34 = 2048;
    v35 = v16 / 1000.0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "A2DP configured at %2.1f KHz. Codec: AAC-ELD, VBR max: %d kbps. %d frames * (%d+%d) bytes = %d per RTP (max=%d) every %.2f ms", buf, 0x3Au);
  }
}

void sub_10050CCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10050CD28(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  a3[4] = *a2 >> 4;
  a3[5] = *a2 & 0xF;
  *a3 = a2[1] >> 4;
  a3[1] = (a2[1] >> 2) & 3;
  a3[6] = a2[1] & 3;
  a3[3] = a2[2];
  a3[2] = a2[3];
  v3 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Extracted SBC configuration data", v4, 2u);
  }
}

void sub_10050CDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = *a2;
  *(a3 + 4) = bswap32(*(a2 + 1)) >> 20;
  *(a3 + 8) = (*(a2 + 2) >> 2) & 3;
  *(a3 + 9) = *(a2 + 3) >> 7;
  *(a3 + 16) = (*(a2 + 4) << 8) | ((*(a2 + 3) & 0x7F) << 16) | *(a2 + 5);
  v3 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Extracted AAC-LC configuration data", v4, 2u);
  }
}

void sub_10050CE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = __rev16(*(a2 + 6));
  *(a3 + 4) = (*(a2 + 9) >> 4) | (16 * *(a2 + 8));
  *(a3 + 8) = *(a2 + 10) | ((*(a2 + 9) & 0xF) << 8);
  *(a3 + 12) = *(a2 + 11) >> 7;
  *(a3 + 16) = (*(a2 + 12) << 8) | ((*(a2 + 11) & 0x7F) << 16) | *(a2 + 13);
  v3 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Extracted AAC-ELD configuration data", v4, 2u);
  }
}

void sub_10050CF50(uint64_t a1)
{
  v2 = *(a1 + 176);
  v3 = qword_100BCE8B8;
  if (v2 > 254)
  {
    if (v2 == 255)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_10083CCE0();
      }
    }

    else
    {
      if (v2 != 33023)
      {
LABEL_14:
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_10083CD5C();
        }

        return;
      }

      v7 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO);
      if (v7)
      {
        v12[0] = 0x80FF04000100;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found AVDTP_CODEC_APPLE_AACELD codec type 0x%x", v12, 8u);
      }

      sub_10050CE90(v7, *(*(a1 + 184) + 24), v12);
      sub_10050C9E0(a1, v8);
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 2)
      {
        v4 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO);
        if (v4)
        {
          v12[0] = 0x204000100;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found AVDTP_CODEC_MPEG_AAC codec type 0x%x", v12, 8u);
        }

        v5 = *(a1 + 184);
        if (v5)
        {
          v6 = *(v5 + 24);
          if (v6)
          {
            memset(v12, 0, sizeof(v12));
            sub_10050CDDC(v4, v6, v12);
            sub_10050C5C8(a1, v12);
          }
        }

        return;
      }

      goto LABEL_14;
    }

    v9 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO);
    if (v9)
    {
      v12[0] = 67109120;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found AVDTP_CODEC_SBC codec type 0x%x", v12, 8u);
    }

    v10 = *(a1 + 184);
    if (v10)
    {
      v11 = *(v10 + 24);
      if (v11)
      {
        sub_10050CD28(v9, v11, v12);
        sub_10050C3D4(a1, v12);
      }
    }
  }
}

double sub_10050D254(uint64_t a1)
{
  *(a1 + 24) = *off_100AFB060;
  *(a1 + 40) = *off_100AFB070;
  *(a1 + 56) = *off_100AFB080;
  *(a1 + 72) = *off_100AFB090;
  *(a1 + 88) = "None";
  *(a1 + 96) = "StartPending";
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

uint64_t sub_10050D29C(uint64_t a1)
{
  sub_10050D2D4(a1);
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10050D2D4(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    if (*(a1 + 104))
    {
      v3 = 0;
      v4 = 16;
      do
      {
        free(*(*(a1 + 120) + v4));
        ++v3;
        v4 += 32;
      }

      while (v3 < *(a1 + 104));
      v2 = *(a1 + 120);
    }

    free(v2);
    *(a1 + 120) = 0;
  }

  return 0;
}

uint64_t sub_10050D348(uint64_t a1)
{
  *a1 = -100526831;
  *(a1 + 112) = 0;
  v2 = malloc_type_calloc(6uLL, 0x20uLL, 0x1020040C75495F1uLL);
  *(a1 + 120) = v2;
  *(v2 + 3) = 0;
  *(v2 + 4) = 1;
  *(v2 + 7) = 3;
  v3 = malloc_type_calloc(3uLL, 0x10uLL, 0x105204037B82EA9uLL);
  *(*(a1 + 120) + 16) = v3;
  *v3 = 1;
  *(*(*(a1 + 120) + 16) + 16) = 7;
  *(*(*(a1 + 120) + 16) + 17) = 0;
  *(*(*(a1 + 120) + 16) + 18) = 0;
  *(*(*(a1 + 120) + 16) + 19) = 4;
  *(*(*(a1 + 120) + 16) + 24) = a1;
  *(*(*(a1 + 120) + 16) + 32) = 8;
  v4 = *(a1 + 120);
  *(v4 + 24) = 1;
  *(v4 + 44) = 0;
  *(v4 + 36) = 2;
  *(v4 + 60) = 3;
  v5 = malloc_type_calloc(3uLL, 0x10uLL, 0x105204037B82EA9uLL);
  *(*(a1 + 120) + 48) = v5;
  *v5 = 1;
  *(*(*(a1 + 120) + 48) + 16) = 7;
  *(*(*(a1 + 120) + 48) + 18) = 0;
  *(*(*(a1 + 120) + 48) + 19) = 4;
  *(*(*(a1 + 120) + 48) + 24) = a1;
  *(*(*(a1 + 120) + 48) + 32) = 8;
  *(*(a1 + 120) + 56) = 1;
  v36 = 0;
  v6 = sub_10000E92C();
  v7 = (*(*v6 + 8))(v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "DisableAAC");
  v7 = (*(*v9 + 72))(v9, buf, __p, &v36);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(*buf);
  }

  if (v36)
  {
    v36 = 1;
    v10 = 2;
  }

  else
  {
LABEL_8:
    v11 = sub_10000C798(v7, v8);
    v36 = (*(*v11 + 832))(v11);
    v10 = 2;
    if ((v36 & 1) == 0)
    {
      *(a1 + 4) = -2088501120;
      *(a1 + 8) = 232;
      v12 = *(a1 + 120);
      *(v12 + 76) = 0;
      *(v12 + 68) = 3;
      *(v12 + 92) = 3;
      v13 = malloc_type_calloc(3uLL, 0x10uLL, 0x105204037B82EA9uLL);
      *(*(a1 + 120) + 80) = v13;
      *v13 = 1;
      *(*(*(a1 + 120) + 80) + 16) = 7;
      *(*(*(a1 + 120) + 80) + 17) = 0;
      *(*(*(a1 + 120) + 80) + 18) = 2;
      *(*(*(a1 + 120) + 80) + 19) = 6;
      *(*(*(a1 + 120) + 80) + 24) = a1 + 4;
      *(*(*(a1 + 120) + 80) + 32) = 8;
      v14 = *(a1 + 120);
      *(v14 + 88) = 1;
      *(v14 + 108) = 0;
      *(v14 + 100) = 4;
      *(v14 + 124) = 3;
      v15 = malloc_type_calloc(3uLL, 0x10uLL, 0x105204037B82EA9uLL);
      *(*(a1 + 120) + 112) = v15;
      *v15 = 1;
      *(*(*(a1 + 120) + 112) + 16) = 7;
      *(*(*(a1 + 120) + 112) + 17) = 0;
      *(*(*(a1 + 120) + 112) + 18) = 2;
      *(*(*(a1 + 120) + 112) + 19) = 6;
      *(*(*(a1 + 120) + 112) + 24) = a1 + 4;
      *(*(*(a1 + 120) + 112) + 32) = 8;
      *(*(a1 + 120) + 120) = 1;
      v10 = 4;
    }
  }

  v31 = 0;
  v16 = sub_10000E92C();
  v17 = (*(*v16 + 8))(v16);
  if (!v17)
  {
    goto LABEL_17;
  }

  v19 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "DisableAACELD");
  v17 = (*(*v19 + 72))(v19, buf, __p, &v31);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(*buf);
  }

  if (v31)
  {
    v31 = 1;
  }

  else
  {
LABEL_17:
    v20 = sub_10000C798(v17, v18);
    v31 = (*(*v20 + 368))(v20);
    if ((v31 & 1) == 0)
    {
      *(a1 + 10) = 0x800080010000004CLL;
      *(a1 + 18) = -2080340992;
      *(a1 + 22) = 226;
      v21 = *(a1 + 120) + 32 * v10;
      *(v21 + 12) = 0;
      *(v21 + 4) = 5;
      *(v21 + 28) = 3;
      v22 = malloc_type_calloc(3uLL, 0x10uLL, 0x105204037B82EA9uLL);
      *(*(a1 + 120) + 32 * v10 + 16) = v22;
      *v22 = 1;
      *(*(*(a1 + 120) + 32 * v10 + 16) + 16) = 7;
      *(*(*(a1 + 120) + 32 * v10 + 16) + 17) = 0;
      *(*(*(a1 + 120) + 32 * v10 + 16) + 18) = -1;
      *(*(*(a1 + 120) + 32 * v10 + 16) + 19) = 14;
      *(*(*(a1 + 120) + 32 * v10 + 16) + 24) = a1 + 10;
      *(*(*(a1 + 120) + 32 * v10 + 16) + 32) = 8;
      v23 = *(a1 + 120);
      *(v23 + 32 * v10 + 24) = 1;
      v24 = v10 | 1;
      v25 = v23 + 32 * v24;
      *(v25 + 12) = 0;
      *(v25 + 4) = 6;
      *(v25 + 28) = 3;
      v26 = malloc_type_calloc(3uLL, 0x10uLL, 0x105204037B82EA9uLL);
      *(*(a1 + 120) + 32 * v24 + 16) = v26;
      *v26 = 1;
      *(*(*(a1 + 120) + 32 * v24 + 16) + 16) = 7;
      *(*(*(a1 + 120) + 32 * v24 + 16) + 17) = 0;
      *(*(*(a1 + 120) + 32 * v24 + 16) + 18) = -1;
      *(*(*(a1 + 120) + 32 * v24 + 16) + 19) = 14;
      *(*(*(a1 + 120) + 32 * v24 + 16) + 24) = a1 + 10;
      *(*(*(a1 + 120) + 32 * v24 + 16) + 32) = 8;
      *(*(a1 + 120) + 32 * v24 + 24) = 1;
      v10 += 2;
    }
  }

  *(a1 + 104) = v10;
  *(a1 + 108) = v10;
  v27 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Local A2DP stream endpoints:", buf, 2u);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (*(a1 + 104))
  {
    v28 = 0;
    v29 = 16;
    do
    {
      nullsub_21();
      ++v28;
      v29 += 32;
    }

    while (v28 < *(a1 + 104));
  }

  sub_10002249C(buf);
  return 0;
}

void sub_10050DA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10050DA84(uint64_t a1)
{
  v6 = 0;
  sub_1000216B4(&v6);
  if (*(a1 + 104))
  {
    v2 = 0;
    v3 = 16;
    while (!sub_1001F5498(0, 0, *(*(a1 + 120) + v3), 3, 1, (*(a1 + 120) + v3 - 12)))
    {
      ++v2;
      v3 += 32;
      if (v2 >= *(a1 + 104))
      {
        goto LABEL_5;
      }
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083CDD0();
    }

    goto LABEL_10;
  }

LABEL_5:
  v4 = sub_1001F1758(1, &off_100B54758);
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083CE38();
    }

LABEL_10:
    v4 = 1;
  }

  sub_10002249C(&v6);
  return v4;
}

uint64_t sub_10050DBA4(uint64_t a1)
{
  v6 = 0;
  sub_1000216B4(&v6);
  if (sub_1001F18AC() && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_10083CEA0();
  }

  if (*(a1 + 104))
  {
    v2 = 0;
    v3 = 4;
    while (!sub_1001F56BC(*(*(a1 + 120) + v3)))
    {
      ++v2;
      v3 += 32;
      if (v2 >= *(a1 + 104))
      {
        goto LABEL_8;
      }
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083CF08();
    }

    v4 = 1;
  }

  else
  {
LABEL_8:
    v4 = 0;
  }

  sub_10002249C(&v6);
  return v4;
}

uint64_t sub_10050DCAC(uint64_t a1, int a2)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = *(a1 + 120);
  do
  {
    if (*(*(v5 + 16) + 18) == a2)
    {
      result = v5;
    }

    v5 += 32;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_10050DCE8(uint64_t a1, int a2)
{
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Getting local stream config for local seid %d", v8, 8u);
  }

  v5 = *(a1 + 104);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  v7 = *(a1 + 120);
  do
  {
    if (*(v7 + 4) == a2)
    {
      result = v7;
    }

    v7 += 32;
    --v5;
  }

  while (v5);
  return result;
}

void sub_10050DDC8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 23) < 0)
  {
    sub_100008904(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
  }

  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v3 & 0x80000000) == 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    return;
  }

  v5 = 0;
  v6 = v3 >> 63;
  v7 = a2->__r_.__value_.__r.__words[0];
  if ((v3 & 0x80000000) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  while (2)
  {
    v9 = v8 + size;
    v10 = v8 + v5;
LABEL_12:
    v11 = 0;
    while (*v10 != asc_1009C5A03[v11])
    {
      if (++v11 == 5)
      {
        if (++v10 != v9)
        {
          goto LABEL_12;
        }

        return;
      }
    }

    if (v10 == v9)
    {
      return;
    }

    v12 = v10 - v8;
    if (v10 - v8 == -1)
    {
      return;
    }

    if ((v6 & 1) == 0)
    {
      v7 = a2;
    }

    memset(&v18, 0, sizeof(v18));
    v13 = v7->__r_.__value_.__s.__data_[v12];
    if (v13 <= 38)
    {
      if (v13 == 34)
      {
        v14 = "&quot;";
      }

      else
      {
        if (v13 != 38)
        {
          goto LABEL_32;
        }

        v14 = "&amp;";
      }
    }

    else if (v13 == 39)
    {
      v14 = "&apos;";
    }

    else
    {
      v14 = "&gt;";
      if (v13 != 62)
      {
        if (v13 != 60)
        {
          goto LABEL_32;
        }

        v14 = "&lt;";
      }
    }

    std::string::assign(&v18, v14);
LABEL_32:
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v18.__r_.__value_.__l.__size_;
    }

    std::string::replace(a2, v12, 1uLL, v15, v16);
    v17 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v17 = v18.__r_.__value_.__l.__size_;
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v5 = v17 + v12;
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v6 = size >> 63;
    v7 = a2->__r_.__value_.__r.__words[0];
    if ((size & 0x80000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80000000) != 0)
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    if (size > v5)
    {
      continue;
    }

    break;
  }
}

void sub_10050DFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10050DFDC(uint64_t a1)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = sub_100059420(&v9, v3, v4);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v9 = 136446466;
    v10 = v7;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Hashing %{public}s as %zu", &v9, 0x16u);
  }

  return v5;
}

uint64_t sub_10050E0CC(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_1000994CC(a1, &v4, a2);
  if (!v2)
  {
    abort();
  }

  return v2 + 56;
}

void sub_10050E108(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_10050E218(uint64_t a1)
{
  v2 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "stackDidStart", v5, 2u);
  }

  *(a1 + 72) = 1;
  v3 = sub_100017E6C();
  sub_1003128B0(v3 + 384, a1 + 32);
  sub_10050E2B4(a1);
  return sub_10050E3C0(a1);
}

void sub_10050E2B4(uint64_t a1)
{
  v2 = +[NSCalendar autoupdatingCurrentCalendar];
  v3 = +[NSDate date];
  v4 = [v2 components:16 fromDate:v3];
  v5 = [v4 day];

  if (*(a1 + 248) != v5)
  {
    *(a1 + 232) = 0;
    *(a1 + 248) = v5;
    v6 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "resetting daily counters (fCurrentShortAPWakeTimeInSeconds, fDayOfMonth, fEstimatedAPWakeCount)", v7, 2u);
    }
  }
}

uint64_t sub_10050E3C0(uint64_t a1)
{
  if (*(a1 + 80) && *(a1 + 72) == 1)
  {
    __p = 0;
    v3 = 0;
    v4 = 0;
    operator new();
  }

  return 12;
}

void sub_10050E76C(uint64_t a1)
{
  v2 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ContactTracingManager::stackWillStop enter", buf, 2u);
  }

  *(a1 + 72) = 0;
  [*(a1 + 288) stopActivityUpdates];
  v3 = *(a1 + 280);
  *(a1 + 280) = 0;

  v4 = sub_100017E6C();
  sub_10036F1AC(v4 + 384, a1 + 32);
  v5 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ContactTracingManager::stackWillStop exit", v6, 2u);
  }
}

_BYTE *sub_10050E84C()
{
  v1 = 0;
  sub_1000216B4(&v1);
  if (sub_1002D0518(sub_10050E928))
  {
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_10083D238();
    }
  }

  else if (sub_1002D06A4(sub_10050E990) && os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
  {
    sub_10083D2A8();
  }

  return sub_10002249C(&v1);
}

void sub_10050E928()
{
  v0 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "ExposureNotification::leAddressChangedCallback", v1, 2u);
  }
}

void sub_10050E990()
{
  v0 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "ExposureNotification::leAddressWillChangeCallback", v1, 2u);
  }
}

void sub_10050E9FC(uint64_t a1, int a2, int a3)
{
  v5 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109376;
    v6[1] = a3;
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "New PowerState:%d module:%d", v6, 0xEu);
  }
}

void sub_10050EAB8(uint64_t a1)
{
  v2 = qword_100BCEA28;
  v3 = os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO);
  if (v3)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ExposureNotification::advertisingStoppedForSession", v6, 2u);
  }

  if (*(a1 + 80))
  {
    v5 = sub_100007EE8(v3, v4);
    sub_10000CA94(v5, &stru_100AFB0C8);
  }
}

void sub_10050EB3C(id a1)
{
  if (qword_100B54770 != -1)
  {
    sub_10083D318();
  }

  v2 = off_100B54768;

  sub_10050EB80(v2);
}

uint64_t sub_10050EB80(uint64_t a1)
{
  if (*(a1 + 80))
  {
    operator new();
  }

  return 12;
}

id sub_10050EDF8(uint64_t a1)
{
  v2 = os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    sub_10083D354();
  }

  v4 = sub_10000C798(v2, v3);
  result = (*(*v4 + 384))(v4);
  if (result)
  {
    return [*(a1 + 288) stopActivityUpdates];
  }

  return result;
}

void sub_10050EE84(uint64_t a1)
{
  v2 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ContactTracingManager Power : system woke up", v3, 2u);
  }

  sub_10050E2B4(a1);
}

void sub_10050EF00(uint64_t a1, unint64_t a2)
{
  v3 = HIDWORD(a2) == 1;
  v4 = sub_100007EE8(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10050EF8C;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = v3;
  sub_10000CA94(v4, v5);
}

void sub_10050EF8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10000E92C();
  if ((*(*v3 + 176))(v3))
  {
    v4 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WifiStateChanged wiFiAssociatedToBand2GHz=%d", v6, 8u);
    }
  }

  *(v2 + 250) = *(a1 + 40);
}

double sub_10050F07C(uint64_t a1)
{
  *a1 = off_100AFB0F8;
  *(a1 + 8) = off_100AFB188;
  *(a1 + 16) = &off_100AFB1E8;
  *(a1 + 24) = &off_100AFB218;
  *(a1 + 32) = off_100AFB248;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = &off_100AFB278;
  *(a1 + 48) = a1 + 56;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = @"unknown";
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 210) = xmmword_1008A9D20;
  *(a1 + 226) = 1800;
  *(a1 + 228) = 28800;
  *(a1 + 234) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 249) = 1;
  *(a1 + 252) = 4;
  *(a1 + 256) = 5;
  *(a1 + 260) = 150;
  *&result = 0xAF000050030;
  *(a1 + 268) = 0xAF000050030;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  return result;
}

uint64_t sub_10050F1E8(uint64_t a1)
{
  v2 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "restarting advertising", buf, 2u);
  }

  v3 = sub_10050F2B4(a1);
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10050F398;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a1;
  sub_10000CA94(v5, v7);
  return 0;
}

uint64_t sub_10050F2B4(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    return 12;
  }

  if (qword_100B50C68 != -1)
  {
    sub_10083D394();
  }

  v2 = sub_1000689C0(off_100B50C60, *(a1 + 80));
  v3 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stopAdvertising returning %d", v5, 8u);
  }

  return v2;
}

uint64_t sub_10050F398(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 80))
  {
    v2 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "restarting advertising as we have a valid session", v3, 2u);
    }

    return sub_10050EB80(v1);
  }

  return result;
}

uint64_t sub_10050F414(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B51078 != -1)
  {
    sub_10083D3A8();
  }

  result = sub_10006E2A0(off_100B51070, *(v2 + 80), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10050F470(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 80))
  {
    return 12;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = sub_100007EE8(a1, a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10050F5C8;
  v8[3] = &unk_100AE25F0;
  v8[4] = &v9;
  v8[5] = a1;
  sub_10000D334(v3, v8);
  v4 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    v5 = *(v10 + 6);
    *buf = 67109120;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "stopScanning returning %d", buf, 8u);
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_10050F5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10050F5C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B51078 != -1)
  {
    sub_10083D3A8();
  }

  result = sub_100023EC0(off_100B51070, *(v2 + 80), 1, 1, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10050F62C(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10050F6B0;
  block[3] = &unk_100ADF8F8;
  block[4] = a2;
  dispatch_async(global_queue, block);
}

void sub_10050F6B0(uint64_t a1)
{
  v2 = sub_10000E92C();
  if ((*(*v2 + 176))(v2))
  {
    v3 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Benchmark: RPI generation", buf, 2u);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  bzero(buf, 0x900uLL);
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  ENRPIKDerive();
  if (*(a1 + 32))
  {
    v5 = 0;
    do
    {
      ENRPIDeriveBatch();
      v5 += 144;
    }

    while (v5 < *(a1 + 32));
  }

  v6 = CFAbsoluteTimeGetCurrent();
  v7 = sub_10000E92C();
  if ((*(*v7 + 176))(v7))
  {
    v8 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 134218240;
      v11 = v9;
      v12 = 2048;
      v13 = v6 - Current;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Benchmark: created %llu RPI's in %f seconds", &v10, 0x16u);
    }
  }
}

uint64_t sub_10050F884(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (a2 && a3 == 20)
  {
    v60 = 0uLL;
    v52 = 0;
    if (qword_100B508C0 != -1)
    {
      sub_10083D3BC();
    }

    v7 = sub_1007CE1DC(off_100B508B8, &v60, 16, &v52);
    if (qword_100B508C0 != -1)
    {
      sub_10083D3D0();
    }

    v8 = (a1 + 146);
    sub_1007CC840(off_100B508B8, a1 + 146, 16);
    if (!v7 && (*v8 == v60 ? (v9 = *(a1 + 154) == *(&v60 + 1)) : (v9 = 0), v9))
    {
      v13 = qword_100BCEA28;
      if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "using the same payload as before", buf, 2u);
      }

      *a4 = v52;
    }

    else
    {
      v10 = qword_100BCEA28;
      if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Storing new payload and address", buf, 2u);
      }

      *&buf[5] = 0;
      *&buf[1] = 0;
      buf[0] = 1;
      if (CCRandomGenerateBytes(&buf[1], 6uLL))
      {
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          sub_10083D3F8();
        }

        return 1;
      }

      buf[1] &= 0x3Fu;
      *a4 = (buf[1] << 40) | (buf[2] << 32) | (buf[3] << 24) | (buf[4] << 16) | (buf[5] << 8) | buf[6] | (buf[0] << 48);
      if (qword_100B508C0 != -1)
      {
        sub_10083D3D0();
      }

      sub_1007CE2F4(off_100B508B8, a1 + 146, 16);
    }

    v14 = sub_10000E92C();
    if ((*(*v14 + 184))(v14))
    {
      v15 = qword_100BCEA28;
      if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
      {
        v16 = sub_100063D0C(v52);
        v17 = sub_100063D0C(*a4);
        *buf = 138479107;
        *&buf[4] = v16;
        *&buf[12] = 2113;
        *&buf[14] = v17;
        *&buf[22] = 1041;
        *v54 = 16;
        *&v54[4] = 2097;
        *v55 = &v60;
        *&v55[8] = 1041;
        *v56 = 16;
        *&v56[4] = 2097;
        v57[0] = a1 + 146;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "previousAddress:%{private}@ newAddress:%{private}@ previousPayload:%{private}.16P fCurrentAdvertisingPayload:%{private}.16P", buf, 0x36u);
      }
    }

    v59[0] = 0;
    v59[1] = 0;
    if (qword_100B508C0 != -1)
    {
      sub_10083D3D0();
    }

    v18 = sub_1007CC8C0(off_100B508B8, v59, 0x10uLL, 0);
    v11 = v18;
    if (v18)
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10083D468();
      }
    }

    else
    {
      v51 = 257;
      v20 = sub_10000C798(v18, v19);
      BYTE2(v51) = (*(*v20 + 856))(v20);
      HIBYTE(v51) = 3;
      v58 = *v8;
      v50 = 0;
      if (qword_100B508C0 != -1)
      {
        sub_10083D3D0();
      }

      v11 = sub_1007CDDE8(off_100B508B8, v59, &v51, &v58, &v50);
      if (v11)
      {
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          sub_10083D4D8();
        }
      }

      else
      {
        *(a1 + 162) = v50;
        v21 = sub_10000E92C();
        if ((*(*v21 + 184))(v21))
        {
          v22 = qword_100BCEA28;
          if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v49) = SBYTE2(v51);
            v23 = v51;
            v24 = BYTE1(v51);
            v25 = HIBYTE(v51);
            v26 = sub_100063D0C(*a4);
            *&buf[4] = 20;
            *buf = 68224771;
            *&buf[8] = 2097;
            *&buf[10] = a1 + 146;
            *&buf[18] = 1024;
            *&buf[20] = v49;
            *v54 = 1024;
            *&v54[2] = (16 * (v24 & 3)) | (v23 << 6) | (4 * (v25 & 3));
            *v55 = 2113;
            *&v55[2] = v26;
            *v56 = 1040;
            *&v56[2] = 4;
            LOWORD(v57[0]) = 2096;
            *(v57 + 2) = &v50;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Payload is now %{private}.20P TXPower:%d version:0x%x address:%{private}@ aem:%.4P", buf, 0x38u);
          }
        }

        v27 = sub_10000E92C();
        if ((*(*v27 + 8))(v27))
        {
          v28 = +[NSMutableDictionary dictionary];
          v29 = +[NSLocale currentLocale];
          v30 = +[NSDate date];
          v31 = [v30 descriptionWithLocale:v29];
          [v28 setObject:v31 forKeyedSubscript:@"RPIHistoryTime"];

          v32 = [NSData dataWithBytes:a1 + 146 length:20];
          [v28 setObject:v32 forKeyedSubscript:@"RPIHistoryOTAPayload"];

          v33 = [NSNumber numberWithUnsignedChar:v50];
          [v28 setObject:v33 forKeyedSubscript:@"RPIHistoryAEMVersion"];

          v34 = [NSNumber numberWithUnsignedChar:BYTE1(v50)];
          [v28 setObject:v34 forKeyedSubscript:@"RPIHistoryAEMTxPower"];

          v35 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970];
          [v28 setObject:v35 forKeyedSubscript:@"RPIHistorySecondsSince1970"];

          if (qword_100B508C0 != -1)
          {
            sub_10083D3D0();
          }

          v36 = [NSNumber numberWithUnsignedInt:sub_1007CD970(0.0)];
          [v28 setObject:v36 forKeyedSubscript:@"RPIHistoryENIntervalNumber"];

          v37 = *(a1 + 168);
          v38 = [v28 copy];
          [v37 insertObject:v38 atIndex:0];

          while ([*(a1 + 168) count] >= 0x191)
          {
            [*(a1 + 168) removeLastObject];
          }
        }

        if (*(a1 + 113) == 1)
        {
          v39 = *(a1 + 120);
          v40 = *(a1 + 128) - v39;
          v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
          if (v40)
          {
            v42 = 1;
            v43 = (a1 + 146);
            do
            {
              v44 = v39;
              if (*(v39 + 23) < 0)
              {
                v44 = *v39;
              }

              *v43 = atoi(v44);
              v45 = sub_10000E92C();
              if ((*(*v45 + 184))(v45))
              {
                v46 = qword_100BCEA28;
                if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = v39;
                  if (*(v39 + 23) < 0)
                  {
                    v47 = *v39;
                  }

                  v48 = atoi(v47);
                  *buf = 67109376;
                  *&buf[4] = v42;
                  *&buf[8] = 1024;
                  *&buf[10] = v48;
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Force Payload fCurrentAdvertisingPayload[%d] = %d", buf, 0xEu);
                }
              }

              v39 += 24;
              ++v43;
              ++v42;
            }

            while (v39 != *(a1 + 128));
          }
        }

        else
        {
          LOBYTE(v41) = 20;
        }

        memcpy(a2, (a1 + 146), v41);
        return 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_10083D548();
    }

    return 3;
  }

  return v11;
}

uint64_t sub_1005101D4(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7 = sub_10000C798(v5, v6);
  if ((*(*v7 + 384))(v7))
  {
    if (*(a1 + 80))
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10083D5F4();
      }

LABEL_16:
      v8 = 12;
      goto LABEL_17;
    }

    if (v5)
    {
      v9 = [NSString stringWithFormat:@"%@-ENClient", v5];
      v10 = *(a1 + 96);
      *(a1 + 96) = v9;
    }

    v26 = 0;
    if (qword_100B50B88 != -1)
    {
      sub_10083D66C();
    }

    v11 = qword_100B50B80;
    sub_100007E30(&__p, [*(a1 + 96) UTF8String]);
    v12 = sub_100044414(v11, &__p, &v26, 1);
    v13 = v12;
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
      if (v13)
      {
LABEL_14:
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          sub_10083D680();
        }

        goto LABEL_16;
      }
    }

    else if (v12)
    {
      goto LABEL_14;
    }

    if (qword_100B50B88 != -1)
    {
      sub_10083D6F4();
    }

    v15 = sub_1000117DC(qword_100B50B80, v26);
    *(a1 + 80) = v15;
    if (!v15)
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10083D7FC();
      }

      goto LABEL_16;
    }

    if (*(a1 + 72) == 1 && (v15 = sub_10050E3C0(a1), v8 = v15, v15))
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10083D71C();
      }
    }

    else
    {
      __p = 0;
      p_p = &__p;
      v24 = 0x2020000000;
      v25 = 0;
      v17 = sub_100007EE8(v15, v16);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1005105BC;
      v21[3] = &unk_100AE25F0;
      v21[4] = &__p;
      v21[5] = a1;
      sub_10000D334(v17, v21);
      if (*(p_p + 6))
      {
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          sub_10083D78C();
        }

        sub_10050F470(a1, v18);
        v8 = *(p_p + 6);
      }

      else
      {
        *(a1 + 104) = a3;
        v19 = qword_100BCEA28;
        if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
        {
          v20 = *(a1 + 96);
          *buf = 134218242;
          v28 = a3;
          v29 = 2112;
          v30 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "started at %f with %@", buf, 0x16u);
        }

        v8 = 0;
      }

      _Block_object_dispose(&__p, 8);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_10083D5B8();
    }

    v8 = 11;
  }

LABEL_17:

  return v8;
}

uint64_t sub_1005105BC(uint64_t a1)
{
  result = sub_10050EB80(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1005105F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 384))(v3))
  {
    if (*(a1 + 80))
    {
      if (*(a1 + 72) == 1 && sub_10050F470(a1, v4) && os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10083D838();
      }

      if (sub_10050F2B4(a1) && os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10083D8A8();
      }

      if (qword_100B50B88 != -1)
      {
        sub_10083D6F4();
      }

      v5 = qword_100B50B80;
      v6 = sub_100011794(*(a1 + 80));
      if (sub_100079604(v5, v6))
      {
        if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
        {
          sub_10083D918();
        }
      }

      *(a1 + 80) = 0;
      v7 = *(a1 + 96);
      *(a1 + 96) = @"unknown";

      [*(a1 + 288) stopActivityUpdates];
      v8 = *(a1 + 280);
      *(a1 + 280) = 0;

      return 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10083D990();
      }

      return 12;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_10083D5B8();
    }

    return 11;
  }
}

void sub_1005107CC(uint64_t a1)
{
  v115 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ENScanWithDuplicateEnable");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v115);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v115;
  *(a1 + 112) = v115;
  v5 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Overriding contactTracingEnableScanDuplicateFilters = %d ", buf, 8u);
  }

LABEL_9:
  v6 = sub_10000E92C();
  sub_100007E30(buf, "ENForceCustomPayloadData");
  v7 = (*(*v6 + 120))(v6, buf, a1 + 120);
  v8 = v7;
  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else if (!v7)
  {
    goto LABEL_15;
  }

  *(a1 + 113) = 1;
  v9 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding ENForceCustomPayload = %d ", buf, 8u);
  }

LABEL_15:
  *(a1 + 144) = 432;
  v112 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ENForceCustomAdvInterval");
  v11 = (*(*v10 + 88))(v10, buf, __p, &v112);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else if (!v11)
  {
    goto LABEL_23;
  }

  v12 = v112;
  *(a1 + 144) = v112;
  v13 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Overriding ENForceCustomAdvInterval = %d ", buf, 8u);
  }

LABEL_23:
  v111 = 0;
  v14 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideScanWithDuplicatesDurationInMS");
  v15 = (*(*v14 + 88))(v14, buf, __p, &v111);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_31;
    }
  }

  else if (!v15)
  {
    goto LABEL_31;
  }

  v16 = v111;
  *(a1 + 214) = v111;
  v17 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Overriding fNextScanWithDuplicatesDurationInMs = %d ", buf, 8u);
  }

LABEL_31:
  v110 = 0;
  v18 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideExtraScanTimeInMs");
  v19 = (*(*v18 + 88))(v18, buf, __p, &v110);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_39;
    }
  }

  else if (!v19)
  {
    goto LABEL_39;
  }

  v20 = v110;
  *(a1 + 216) = v110;
  v21 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Overriding fExtraScanTimeInMs = %d ", buf, 8u);
  }

LABEL_39:
  v109 = 0;
  v22 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideNumOfSightingsHighThreshold");
  v23 = (*(*v22 + 88))(v22, buf, __p, &v109);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_47;
    }
  }

  else if (!v23)
  {
    goto LABEL_47;
  }

  v24 = v109;
  *(a1 + 218) = v109;
  v25 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Overriding fNumOfSightingsHighThreshold = %d ", buf, 8u);
  }

LABEL_47:
  v108 = 0;
  v26 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideRSSIHighThreshold");
  v27 = (*(*v26 + 88))(v26, buf, __p, &v108);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_55;
    }
  }

  else if (!v27)
  {
    goto LABEL_55;
  }

  v28 = v108;
  *(a1 + 220) = v108;
  v29 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Overriding fHighRSSIThreshold = %d ", buf, 8u);
  }

LABEL_55:
  v107 = 0;
  v30 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideShortAPWakeDeltaInSeconds");
  v31 = (*(*v30 + 88))(v30, buf, __p, &v107);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v31)
    {
      goto LABEL_63;
    }
  }

  else if (!v31)
  {
    goto LABEL_63;
  }

  v32 = v107;
  *(a1 + 222) = v107;
  v33 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Overriding fAPWakeDeltaDurationNormalSeconds = %d ", buf, 8u);
  }

LABEL_63:
  v106 = 0;
  v34 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideNormalAPWakeDeltaInSeconds");
  v35 = (*(*v34 + 88))(v34, buf, __p, &v106);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v35)
    {
      goto LABEL_71;
    }
  }

  else if (!v35)
  {
    goto LABEL_71;
  }

  v36 = v106;
  *(a1 + 224) = v106;
  v37 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Overriding fAPWakeDeltaDurationShortSeconds = %d ", buf, 8u);
  }

LABEL_71:
  v105 = 0;
  v38 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideStationaryDurationInSeconds");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v105);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v39)
    {
      goto LABEL_79;
    }
  }

  else if (!v39)
  {
    goto LABEL_79;
  }

  v40 = v105;
  *(a1 + 226) = v105;
  v41 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Overriding fStationaryDurationSeconds = %d ", buf, 8u);
  }

LABEL_79:
  v104 = 0;
  v42 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideMaxDailyShortAPWakes");
  v43 = (*(*v42 + 88))(v42, buf, __p, &v104);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v43)
    {
      goto LABEL_87;
    }
  }

  else if (!v43)
  {
    goto LABEL_87;
  }

  v44 = v104;
  *(a1 + 228) = v104;
  v45 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v44;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Overriding fMaxDailyShortAPWakeAllowanceInSeconds = %d ", buf, 8u);
  }

LABEL_87:
  v103 = 0;
  v46 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENEnableAdaptiveAPWakeScheduling");
  v47 = (*(*v46 + 72))(v46, buf, __p, &v103);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v47)
    {
      goto LABEL_95;
    }
  }

  else if (!v47)
  {
    goto LABEL_95;
  }

  v48 = v103;
  *(a1 + 249) = v103;
  v49 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Overriding fEnableAdaptiveAPWakeScheduling = %d ", buf, 8u);
  }

LABEL_95:
  v102 = 0;
  v50 = sub_10000E92C();
  sub_100007E30(buf, "LeObserver");
  sub_100007E30(__p, "OverrideContactTracingScanDurationSeconds");
  v51 = (*(*v50 + 88))(v50, buf, __p, &v102);
  if (v102)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v52)
    {
      goto LABEL_107;
    }
  }

  else if (!v52)
  {
    goto LABEL_107;
  }

  *(a1 + 252) = v102;
  v53 = sub_10000E92C();
  if ((*(*v53 + 176))(v53))
  {
    v54 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      v55 = *(a1 + 252);
      *buf = 67109120;
      *&buf[4] = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Overriding fContactTracingScanDuration with %d seconds", buf, 8u);
    }
  }

LABEL_107:
  v101 = 0;
  v56 = sub_10000E92C();
  sub_100007E30(buf, "LeObserver");
  sub_100007E30(__p, "OverrideContactTracingScanDeltaSeconds");
  v57 = (*(*v56 + 88))(v56, buf, __p, &v101);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v57)
    {
      goto LABEL_116;
    }
  }

  else if (!v57)
  {
    goto LABEL_116;
  }

  *(a1 + 260) = v101;
  v58 = sub_10000E92C();
  if ((*(*v58 + 176))(v58))
  {
    v59 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(a1 + 260);
      *buf = 67109120;
      *&buf[4] = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Overriding fContactTracingScanDelta with %d seconds", buf, 8u);
    }
  }

LABEL_116:
  v100 = 0;
  v61 = sub_10000E92C();
  sub_100007E30(buf, "LeObserver");
  sub_100007E30(__p, "OverrideContactTracingLowDutyScanDurationSeconds");
  v62 = (*(*v61 + 88))(v61, buf, __p, &v100);
  if (v100)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v63)
    {
      goto LABEL_128;
    }
  }

  else if (!v63)
  {
    goto LABEL_128;
  }

  *(a1 + 256) = v100;
  v64 = sub_10000E92C();
  if ((*(*v64 + 176))(v64))
  {
    v65 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      v66 = *(a1 + 256);
      *buf = 67109120;
      *&buf[4] = v66;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Overriding fLowDutyCycleScanDurationWhileContactTracing with %d seconds", buf, 8u);
    }
  }

LABEL_128:
  v99 = 0;
  v67 = sub_10000E92C();
  sub_100007E30(buf, "LeObserver");
  sub_100007E30(__p, "OverrideContactTracingLowDutyScanIntervalSeconds");
  v68 = (*(*v67 + 88))(v67, buf, __p, &v99);
  if (v99)
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v69)
    {
      goto LABEL_140;
    }
  }

  else if (!v69)
  {
    goto LABEL_140;
  }

  *(a1 + 268) = v99;
  v70 = sub_10000E92C();
  if ((*(*v70 + 176))(v70))
  {
    v71 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      v72 = *(a1 + 268);
      *buf = 67109120;
      *&buf[4] = v72;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Overriding fLowDutyCycleScanIntervalWhileContactTracing with %d seconds", buf, 8u);
    }
  }

LABEL_140:
  v98 = 0;
  v73 = sub_10000E92C();
  sub_100007E30(buf, "LeObserver");
  sub_100007E30(__p, "OverrideContactTracingScanDurationA2DPWifi2GSeconds");
  v74 = (*(*v73 + 88))(v73, buf, __p, &v98);
  if (v98)
  {
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v75)
    {
      goto LABEL_152;
    }
  }

  else if (!v75)
  {
    goto LABEL_152;
  }

  *(a1 + 270) = v98;
  v76 = sub_10000E92C();
  if ((*(*v76 + 176))(v76))
  {
    v77 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      v78 = *(a1 + 270);
      *buf = 67109120;
      *&buf[4] = v78;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Overriding fContactTracingScanDurationWhileA2DPWifi2G with %d seconds", buf, 8u);
    }
  }

LABEL_152:
  v97 = 0;
  v79 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideScanWithDuplicatesDurationA2DPWifi2GInMS");
  v80 = (*(*v79 + 88))(v79, buf, __p, &v97);
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v80)
    {
      goto LABEL_161;
    }
  }

  else if (!v80)
  {
    goto LABEL_161;
  }

  *(a1 + 272) = v97;
  v81 = sub_10000E92C();
  if ((*(*v81 + 176))(v81))
  {
    v82 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v97;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Overriding fNextScanWithDuplicatesDurationA2DPWifi2GInMs = %d ", buf, 8u);
    }
  }

LABEL_161:
  v96 = 0;
  v83 = sub_10000E92C();
  sub_100007E30(buf, "ENScanOverrides");
  sub_100007E30(__p, "ENOverrideMaxAllowedRSSILevel");
  v84 = (*(*v83 + 88))(v83, buf, __p, &v96);
  v86 = v84;
  if (v114 < 0)
  {
    operator delete(__p[0]);
  }

  if (v117 < 0)
  {
    operator delete(*buf);
    if (!v86)
    {
      goto LABEL_170;
    }
  }

  else if (!v86)
  {
    goto LABEL_170;
  }

  *(a1 + 296) = v96;
  v87 = sub_10000E92C();
  v84 = (*(*v87 + 176))(v87);
  if (v84)
  {
    v88 = qword_100BCEA28;
    v84 = os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT);
    if (v84)
    {
      v89 = *(a1 + 296);
      *buf = 67109120;
      *&buf[4] = v89;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Overriding fMaxAllowedRSSILevel = %d ", buf, 8u);
    }
  }

LABEL_170:
  v90 = sub_10000C798(v84, v85);
  if ((*(*v90 + 384))(v90))
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10083D9CC();
    }

    sub_100312650(off_100B50A98 + 64, a1 + 16);
    if (qword_100B50C68 != -1)
    {
      sub_10083D32C();
    }

    sub_10072A35C(off_100B50C60, a1 + 24);
    if (qword_100B512C8 != -1)
    {
      sub_10083D9F4();
    }

    sub_10036EF4C(off_100B512C0 + 80, a1);
    if (qword_100B51078 != -1)
    {
      sub_10083DA1C();
    }

    sub_1000DB5D8(off_100B51070 + 1896, a1 + 8);
    v91 = sub_100017E6C();
    sub_100312B50(v91 + 304, a1 + 40);
    if (qword_100B50AA0 != -1)
    {
      sub_10083D9CC();
    }

    *(a1 + 88) = sub_10006DBF8(off_100B50A98);
    v92 = +[NSMutableArray array];
    v93 = *(a1 + 168);
    *(a1 + 168) = v92;

    v94 = objc_opt_new();
    v95 = *(a1 + 288);
    *(a1 + 288) = v94;
  }
}

void sub_100511BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_100511CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned __int8 *a7)
{
  if (qword_100B508C0 != -1)
  {
    sub_10083D3BC();
  }

  v13 = sub_1007CDE9C(off_100B508B8, a2, a3, a4, a7);
  v14 = sub_10000E92C();
  if ((*(*v14 + 184))(v14) && (v15 = qword_100BCEA28, os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEBUG)))
  {
    v17 = a7[2];
    v18 = a7[3];
    v21 = 67111171;
    v22 = v17;
    v23 = 1024;
    v24 = a5;
    v25 = 1024;
    v26 = v18;
    v27 = 1024;
    v28 = a6;
    v29 = 1041;
    v30 = 16;
    v31 = 2097;
    v32 = a2;
    v33 = 1041;
    v34 = 16;
    v35 = 2097;
    v36 = a3;
    v37 = 1024;
    v38 = v13;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "decryptAEM Decrypted payload TXPower:%d rssi:%d calibratioConfidence:%d saturated:%d tek:%{private}.16P rpi:%{private}.16P result:%d", &v21, 0x40u);
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else if (v13)
  {
LABEL_6:
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      sub_10083DA44();
    }

    LOBYTE(v16) = -1;
    goto LABEL_16;
  }

  v19 = a7[2];
  if (((a5 == 127) & a6) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v19 - a5) & ~((v19 - a5) >> 31);
  }

  if (!v16)
  {
    v20 = qword_100BCEA18;
    if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
    {
      v21 = 67109888;
      v22 = v19;
      v23 = 1024;
      v24 = a5;
      v25 = 1024;
      v26 = a6;
      v27 = 1024;
      v28 = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "decryptAEM returning 0 txPower:%d rssi:%d saturated:%d attn:%d", &v21, 0x1Au);
    }
  }

LABEL_16:
  a7[4] = v16;
}

void sub_100511F18()
{
  v0 = sub_10000E92C();
  if ((*(*v0 + 176))(v0))
  {
    v2 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "scanDurationStarted", v3, 2u);
    }
  }

  if (qword_100B508B0 != -1)
  {
    sub_10083DAB4();
  }

  sub_100747D7C(off_100B508A8, v1);
}

void sub_100511FD0(uint64_t a1)
{
  v2 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "scanDurationDone, report the results for %lu total devices found", buf, 0xCu);
  }

  v43 = a1;
  [*(a1 + 288) stopActivityUpdates];
  if (qword_100B51078 != -1)
  {
    sub_10083DA1C();
  }

  v4 = *(off_100B51070 + 289);
  v5 = a1;
  *(a1 + 208) = -127;
  if (v4 == 0.0)
  {
    v6 = 150;
  }

  else
  {
    v6 = (CFAbsoluteTimeGetCurrent() - v4);
    v5 = a1;
    if (v6 > 2 * *(a1 + 222))
    {
      v6 = *(a1 + 222);
    }
  }

  v40 = v6;
  v7 = *(v5 + 64);
  *(v5 + 212) = v7 - *(v5 + 210);
  v8 = sub_10000E92C();
  if ((*(*v8 + 176))(v8))
  {
    v9 = qword_100BCEA28;
    if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v43 + 210);
      v11 = *(v43 + 212);
      *buf = 67109632;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      *&buf[10] = v10;
      LOWORD(v61) = 1024;
      *(&v61 + 2) = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "newNumOfSightings:%d lastNumOfSightings:%d delta:%d", buf, 0x14u);
    }
  }

  *(v43 + 210) = v7;
  v12 = *(v43 + 48);
  v41 = (v43 + 56);
  if (v12 != (v43 + 56))
  {
    do
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      sub_100513D34(&v57, v12[7], v12[8], (v12[8] - v12[7]) >> 4);
      v14 = v57;
      v13 = v58;
      if (v58 != v57)
      {
        v15 = 0;
        v16 = 0;
        v42 = *(v57 + 8);
        v17 = *(v42 + 240) + kCFAbsoluteTimeIntervalSince1970;
        v18 = 1;
        v19 = -127;
        do
        {
          v20 = *(v14 + 8);
          v21 = *(v20 + 216);
          if (v21 == 127)
          {
            v22 = qword_100BCEA18;
            if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
            {
              sub_10083DADC(&v55, v56, v22);
            }
          }

          else
          {
            v23 = *(v20 + 217);
            if (v19 <= v21)
            {
              v19 = *(v20 + 216);
            }

            v24 = sub_10000E92C();
            v18 &= v23;
            ++v16;
            v15 += v21;
            if ((*(*v24 + 184))(v24))
            {
              v25 = qword_100BCEA28;
              if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEBUG))
              {
                v26 = *(*(v14 + 8) + 217);
                *buf = 67109632;
                *&buf[4] = v16;
                *&buf[8] = 1024;
                *&buf[10] = v21;
                LOWORD(v61) = 1024;
                *(&v61 + 2) = v26;
                _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%d) rssi:%d saturated:%d", buf, 0x14u);
              }
            }
          }

          v14 += 16;
        }

        while (v14 != v13);
        if (v16)
        {
          v27 = *(v43 + 208);
          if (v19 > v27)
          {
            LOBYTE(v27) = v19;
          }

          *(v43 + 208) = v27;
          v28 = v15 / v16;
        }

        else
        {
          v19 = 127;
          v18 = 1;
          LOBYTE(v28) = 127;
        }

        v53 = 0;
        v54 = 0;
        v76 = xmmword_1008A4DDC;
        v77 = 0;
        sub_10000D03C(buf, &v76);
        v29 = *(sub_10050E0CC(v42 + 112, buf) + 8);
        v53 = &off_100AE0A78;
        v54 = v29;
        if (v29)
        {
          sub_10000C69C(v29);
        }

        v30 = [NSData dataWithBytes:sub_10000C5F8(&v53) length:16];
        v31 = [NSData dataWithBytes:sub_10000C5F8(&v53) + 16 length:4];
        v32 = sub_10000E92C();
        if ((*(*v32 + 184))(v32))
        {
          v33 = qword_100BCEA28;
          if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138414338;
            *&buf[4] = v30;
            *&buf[12] = 2112;
            v61 = v31;
            v62 = 1024;
            v63 = v28;
            v64 = 1024;
            v65 = v19;
            v66 = 1024;
            v67 = v18 & 1;
            v68 = 2048;
            v69 = v17;
            v70 = 1024;
            v71 = v40;
            v72 = 2048;
            v73 = (v58 - v57) >> 4;
            v74 = 1024;
            v75 = v16;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "rpi:%@ aem:%@ avgRSSI:%d maxRSSI:%d saturated:%d timestamp:%f deltaSinceLastStop:%d reports:%lu validReports:%d", buf, 0x48u);
          }
        }

        if (((v58 - v57) >> 4) >= 0xFF)
        {
          LOBYTE(v34) = -1;
        }

        else
        {
          v34 = (v58 - v57) >> 4;
        }

        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1005126F0;
        v44[3] = &unk_100AFB288;
        v35 = v30;
        v45 = v35;
        v36 = v31;
        v46 = v36;
        v49 = v28;
        v50 = v19;
        v51 = v34;
        v52 = v18 & 1;
        v47 = v17;
        v48 = v40;
        sub_10050E108((v43 + 176), v44);

        v53 = &off_100AE0A78;
        if (v54)
        {
          sub_10000C808(v54);
        }
      }

      *buf = &v57;
      sub_10008D02C(buf);
      v37 = v12[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v12[2];
          v39 = *v38 == v12;
          v12 = v38;
        }

        while (!v39);
      }

      v12 = v38;
    }

    while (v38 != v41);
  }

  sub_10051377C(v43 + 48, *(v43 + 56));
  *(v43 + 56) = 0;
  *(v43 + 64) = 0;
  *(v43 + 48) = v41;
}

void sub_100512674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, atomic_uint *a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void **a33)
{
  if (a28)
  {
    sub_10000C808(a28);
  }

  a33 = &a30;
  sub_10008D02C(&a33);
  _Unwind_Resume(a1);
}

void sub_100512734(uint64_t a1, int a2)
{
  v4 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "setting aggressive scan delta to %u seconds", v5, 8u);
  }

  *(a1 + 264) = a2;
}

uint64_t sub_1005127E8(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    v2 = 1000 * v1;
  }

  else
  {
    v3 = *(a1 + 260);
    if (v3)
    {
      v2 = 1000 * v3;
    }

    else
    {
      v2 = 5;
    }
  }

  v4 = v2;
  v5 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "nextScanDelta=%llu ms", &v7, 0xCu);
  }

  return v4;
}

uint64_t sub_1005128BC(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10083DB1C();
  }

  if (sub_10003CE34(off_100B50908))
  {
    v2 = *(a1 + 252);
  }

  else
  {
    v2 = *(a1 + 256);
  }

  v3 = 1000 * v2;
  if (qword_100B54770 != -1)
  {
    sub_10083D318();
  }

  v4 = v3 + sub_100512A2C(off_100B54768);
  if (qword_100B50910 != -1)
  {
    sub_10083DB1C();
  }

  if (*(off_100B50908 + 205) == 1 && *(a1 + 250) == 1)
  {
    v4 = 1000 * *(a1 + 270);
  }

  v5 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(off_100B50908 + 205);
    v7 = *(a1 + 250);
    v9 = 134218496;
    v10 = v4;
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "getNextTotalScanDurationInMs=%llu seconds A2DP:%d wifi2G:%d", &v9, 0x18u);
  }

  return v4;
}

uint64_t sub_100512A2C(uint64_t a1)
{
  v2 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 216);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "getExtraScanDurationInMs %d", v5, 8u);
  }

  return *(a1 + 216);
}

uint64_t sub_100512AD8(uint64_t a1)
{
  v2 = *(a1 + 214);
  if (qword_100B50910 != -1)
  {
    sub_10083DB1C();
  }

  if (*(off_100B50908 + 205) == 1 && *(a1 + 250) == 1)
  {
    v2 = *(a1 + 272);
  }

  v3 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(off_100B50908 + 205);
    v5 = *(a1 + 250);
    v7 = 134218496;
    v8 = v2;
    v9 = 1024;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getNextScanWithDupsDurationInSeconds %llu A2DP:%d wifi2G:%d", &v7, 0x18u);
  }

  return v2;
}

uint64_t sub_100512BEC(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10083DB1C();
  }

  if (sub_10003CE34(off_100B50908))
  {
    return 48;
  }

  else
  {
    return *(a1 + 268);
  }
}

uint64_t sub_100512C40(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(a1 + 240)];

  if ((*(a1 + 249) & 1) == 0)
  {
    v18 = sub_10000E92C();
    if (!(*(*v18 + 176))(v18))
    {
      return *(a1 + 222);
    }

    v19 = qword_100BCEA28;
    if (!os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      return *(a1 + 222);
    }

    v20 = *(a1 + 222);
    *buf = 67109120;
    v31 = v20;
    v21 = "getNextScanAPWakeDelta adaptive AP Wake scheduling disabled, returning fAPWakeDeltaDurationNormalSeconds:%d";
    goto LABEL_17;
  }

  v3 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 210);
    v5 = *(a1 + 208);
    v6 = *(a1 + 228);
    v7 = *(a1 + 232);
    v8 = *(a1 + 220);
    v9 = *(a1 + 218);
    *buf = 67110400;
    v31 = v4;
    v32 = 1024;
    v33 = v5;
    v34 = 1024;
    v35 = v6;
    v36 = 1024;
    v37 = v7;
    v38 = 1024;
    v39 = v8;
    v40 = 1024;
    v41 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getNextScanAPWakeDelta fLastScanNumOfIndividualSightings:%d fLastScanMaxRSSI:%d fMaxDailyShortAPWakeAllowanceInSeconds:%dseconds fCurrentShortAPWakeTimeInSeconds:%dseconds fHighRSSIThreshold:%d fNumOfSightingsHighThreshold:%d", buf, 0x26u);
  }

  if (*(a1 + 210) <= *(a1 + 218) && *(a1 + 220) > *(a1 + 208) || *(a1 + 228) <= *(a1 + 232))
  {
    v19 = qword_100BCEA28;
    if (!os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
    {
      return *(a1 + 222);
    }

    v22 = *(a1 + 222);
    *buf = 67109120;
    v31 = v22;
    v21 = "getNextScanAPWakeDelta returning fAPWakeDeltaDurationNormalSeconds:%d";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 8u);
    return *(a1 + 222);
  }

  v29 = 0;
  v10 = sub_100017E6C();
  (*(*v10 + 104))(v10, &v29 + 1, &v29);
  v28 = 0;
  v11 = sub_100017E6C();
  (*(*v11 + 128))(v11, &v28);
  v12 = v28;
  v13 = HIBYTE(v29);
  v14 = qword_100BCEA28;
  v15 = os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT);
  if ((v13 & 1) != 0 || v12)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Connected to power, not changing fCurrentShortAPWakeTimeInSeconds", buf, 2u);
    }
  }

  else
  {
    if (v15)
    {
      v16 = *(a1 + 232);
      v17 = *(a1 + 224);
      *buf = 67109376;
      v31 = v16;
      v32 = 1024;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "fCurrentShortAPWakeTimeInSeconds:%d adding %d", buf, 0xEu);
    }

    *(a1 + 232) += *(a1 + 224);
  }

  v25 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 224);
    v27 = *(a1 + 232);
    *buf = 67110144;
    v31 = v26;
    v32 = 1024;
    v33 = v27;
    v34 = 1024;
    v35 = HIBYTE(v29);
    v36 = 1024;
    v37 = v29;
    v38 = 1024;
    v39 = v12 != 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "getNextScanAPWakeDelta returning fAPWakeDeltaDurationShortSeconds:%d fCurrentShortAPWakeTimeInSeconds:%d battCharging:%d battCapacity:%d powerAdapterConnected:%d", buf, 0x20u);
  }

  return *(a1 + 224);
}

void sub_100513008(uint64_t a1, uint64_t a2)
{
  v2 = BYTE4(a2);
  *(a1 + 218) = WORD1(a2);
  *(a1 + 249) = a2 & 1;
  *(a1 + 224) = HIWORD(a2);
  *(a1 + 220) = a2 << 24 >> 56;
  v4 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setServerConfigParams fHighRSSIThreshold = %d ", &v8, 8u);
    v4 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 249);
    v8 = 67109120;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setServerConfigParams fEnableAdaptiveAPWakeScheduling = %d ", &v8, 8u);
    v4 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 224);
    v8 = 67109120;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setServerConfigParams fAPWakeDeltaDurationShortSeconds = %d ", &v8, 8u);
    v4 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 218);
    v8 = 67109120;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setServerConfigParams fNumOfSightingsHighThreshold = %d ", &v8, 8u);
  }
}

void sub_1005131C0(uint64_t a1)
{
  v2 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ---------------- ContactTracing Manager ----------------", &v23, 2u);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    v23 = 134218240;
    *v24 = v3;
    *&v24[8] = 1024;
    LODWORD(v25) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fSession:%llx fStarted:%d", &v23, 0x12u);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 104);
    v23 = 138412546;
    *v24 = v5;
    *&v24[8] = 2048;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fSessionOwner:%@ fStartTime:%f", &v23, 0x16u);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 208);
    v8 = *(a1 + 210);
    v9 = *(a1 + 212);
    v23 = 67109632;
    *v24 = v7;
    *&v24[4] = 1024;
    *&v24[6] = v8;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fLastScanMaxRSSI:%d fLastScanNumOfIndividualSightings:%d fLastSightingDelta:%d", &v23, 0x14u);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 214);
    v11 = *(a1 + 216);
    v23 = 67109376;
    *v24 = v10;
    *&v24[4] = 1024;
    *&v24[6] = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fNextScanWithDuplicatesDurationInMs:%d fExtraScanTimeInMs:%d", &v23, 0xEu);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 218);
    v13 = *(a1 + 220);
    v23 = 67109376;
    *v24 = v12;
    *&v24[4] = 1024;
    *&v24[6] = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fNumOfSightingsHighThreshold:%d fHighRSSIThreshold:%d", &v23, 0xEu);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 222);
    v15 = *(a1 + 224);
    v23 = 67109376;
    *v24 = v14;
    *&v24[4] = 1024;
    *&v24[6] = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fAPWakeDeltaDurationNormalSeconds:%d fAPWakeDeltaDurationShortSeconds:%d", &v23, 0xEu);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 232);
    v17 = *(a1 + 228);
    v18 = *(a1 + 248);
    v23 = 67109632;
    *v24 = v16;
    *&v24[4] = 1024;
    *&v24[6] = v17;
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v18;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fCurrentShortAPWakeTimeInSeconds:%d fMaxDailyShortAPWakeAllowanceInSeconds:%d fDayOfMonth:%d", &v23, 0x14u);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 234);
    v20 = *(a1 + 249);
    v23 = 67109376;
    *v24 = v19;
    *&v24[4] = 1024;
    *&v24[6] = v20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fEstimatedAPWakeCount:%d fEnableAdaptiveAPWakeScheduling:%d", &v23, 0xEu);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 296);
    v23 = 67109120;
    *v24 = v21;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fMaxAllowedRSSILevel:%d", &v23, 8u);
    v2 = qword_100BCEA28;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 274);
    v23 = 67109120;
    *v24 = v22;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fInvalidRSSIReportCounter:%d", &v23, 8u);
  }
}

void sub_1005135F4(uint64_t a1)
{
  sub_100513640(a1);

  operator delete();
}

uint64_t sub_100513640(uint64_t a1)
{
  *a1 = off_100AFB0F8;
  *(a1 + 8) = off_100AFB188;
  *(a1 + 16) = &off_100AFB1E8;
  *(a1 + 24) = &off_100AFB218;
  *(a1 + 32) = off_100AFB248;
  *(a1 + 40) = &off_100AFB278;

  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 120);
  sub_1000161FC(&v4);

  sub_10051377C(a1 + 48, *(a1 + 56));
  return a1;
}

void sub_10051377C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10051377C(a1, *a2);
    sub_10051377C(a1, *(a2 + 1));
    v4 = (a2 + 56);
    sub_10008D02C(&v4);
    operator delete(a2);
  }
}

uint64_t sub_1005137DC(uint64_t **a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *sub_100513888(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_100513888(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = bswap64(*a3);
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = bswap64(*(v4 + 32));
        if (v6 == v8)
        {
          break;
        }

        v9 = v6;
LABEL_10:
        if (v9 < v8)
        {
          v10 = -1;
        }

        else
        {
          v10 = 1;
        }

        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_24;
        }
      }

      v9 = bswap64(*(a3 + 8));
      v8 = bswap64(v7[5]);
      if (v9 != v8)
      {
        goto LABEL_10;
      }

      v9 = bswap32(*(a3 + 16));
      v8 = bswap32(*(v7 + 12));
      if (v9 != v8)
      {
        goto LABEL_10;
      }

LABEL_14:
      v11 = bswap64(v7[4]);
      v12 = bswap64(*a3);
      if (v11 != v12 || (v11 = bswap64(v7[5]), v12 = bswap64(*(a3 + 8)), v11 != v12) || (v11 = bswap32(*(v7 + 12)), v12 = bswap32(*(a3 + 16)), v11 != v12))
      {
        v13 = v11 < v12 ? -1 : 1;
        if (v13 < 0)
        {
          result = v7 + 1;
          v4 = v7[1];
          if (v4)
          {
            continue;
          }
        }
      }

      goto LABEL_24;
    }
  }

  v7 = result;
LABEL_24:
  *a2 = v7;
  return result;
}

uint64_t sub_100513984(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_10009643C(a1, a2);
  }

  else
  {
    sub_1005139C8(a1, a2);
    v4 = v3 + 16;
  }

  a1[1] = v4;
  return v4 - 16;
}

void sub_1005139C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  *v3 = &off_100AE0AB8;
  v3[1] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  *(a1 + 8) = v3 + 2;
}

uint64_t *sub_100513D34(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100513D98(result, a4);
  }

  return result;
}

void sub_100513D98(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100096570(a1, a2);
  }

  sub_1000C7698();
}

void sub_100513DD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    v7 = *(result + 8);
  }

  else
  {
    v5 = a2;
    v6 = *(result + 8);
    v7 = v6;
    do
    {
      v8 = *(v5 + 8);
      *v7 = &off_100AE0AB8;
      v7[1] = v8;
      if (v8)
      {
        sub_10000C69C(v8);
      }

      v5 += 16;
      v7 += 2;
      v6 += 2;
    }

    while (v5 != a3);
  }

  *(result + 8) = v7;
}

uint64_t sub_100514044(uint64_t a1)
{
  *a1 = off_100AFB3D8;
  *(a1 + 8) = off_100AFB468;
  *(a1 + 16) = off_100AFB488;
  *(a1 + 24) = off_100AFB4B0;
  *(a1 + 32) = &off_100AFB4F0;
  *(a1 + 40) = &off_100AFB508;
  *(a1 + 48) = &off_100AFB520;
  sub_100044BBC((a1 + 56));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  return a1;
}

void sub_100514170(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10083DB30();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50F68 != -1)
  {
    sub_10083DB44();
  }

  sub_10012E3B0(off_100B50F60 + 24, a1 + 16);
  if (qword_100B50F88 != -1)
  {
    sub_10083DB58();
  }

  sub_1006DC960(off_100B50F80, a1 + 24);
  if (qword_100B50AC0 != -1)
  {
    sub_10083DB6C();
  }

  sub_1005907D4(off_100B50AB8, a1 + 32);
  if (qword_100B512C8 != -1)
  {
    sub_10083DB80();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1 + 40);
  *(a1 + 120) = 0;
}

void sub_100514268(uint64_t a1)
{
  if (qword_100B512C8 != -1)
  {
    sub_10083DB80();
  }

  sub_10007A3F0(off_100B512C0 + 80, a1 + 40);
  if (qword_100B50AC0 != -1)
  {
    sub_10083DB6C();
  }

  sub_1005908D4(off_100B50AB8, a1 + 32);
  if (qword_100B50F88 != -1)
  {
    sub_10083DB58();
  }

  sub_1006DCA90(off_100B50F80, a1 + 24);
  if (qword_100B50F68 != -1)
  {
    sub_10083DB44();
  }

  sub_10007A3F0(off_100B50F60 + 24, a1 + 16);
  if (qword_100B50B88 != -1)
  {
    sub_10083DB30();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  v2 = *(a1 + 232);
  if (v2 != *(a1 + 240))
  {
    do
    {
      v3 = *v2;
      if (qword_100B50B88 != -1)
      {
        sub_10083DB30();
      }

      sub_1006189DC(qword_100B50B80, v3);
      if (qword_100B50B88 != -1)
      {
        sub_10083DB30();
      }

      sub_100618E84(qword_100B50B80, v3);
      ++v2;
    }

    while (v2 != *(a1 + 240));
    v2 = *(a1 + 232);
  }

  *(a1 + 240) = v2;
}

uint64_t sub_1005143D8(void *a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 7));
  v4 = a1[26];
  v5 = a1[27];
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = a1[28];
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v10 = v7 - v4;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        sub_100008108((a1 + 26), v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = a1[26];
      v15 = a1[27] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[26];
      a1[26] = v16;
      a1[27] = v8;
      a1[28] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = a2;
      v8 = (v5 + 1);
    }

    a1[27] = v8;
  }

  return sub_1000088CC(v19);
}

uint64_t sub_100514508(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 56);
  v5 = *(a1 + 208);
  v4 = *(a1 + 216);
  if (v5 != v4)
  {
    v6 = *(a1 + 208);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 216);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 216) = &v7[v5];
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1005145AC(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 56);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_100007F20(&v10, (a1 + 208));
  sub_10000801C(v13);
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s was plugged in", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = v10;
  if (v10 != v11)
  {
    do
    {
      (*(**v6 + 16))(*v6, a2);
      ++v6;
    }

    while (v6 != v11);
    v6 = v10;
  }

  if (v6)
  {
    v11 = v6;
    operator delete(v6);
  }

  return sub_1000088CC(v13);
}

void sub_10051471C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100514758(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 56);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_100007F20(&v10, (a1 + 208));
  sub_10000801C(v13);
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s was unplugged", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = v10;
  if (v10 != v11)
  {
    do
    {
      (*(**v6 + 24))(*v6, a2);
      ++v6;
    }

    while (v6 != v11);
    v6 = v10;
  }

  if (v6)
  {
    v11 = v6;
    operator delete(v6);
  }

  return sub_1000088CC(v13);
}

void sub_1005148C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100514904(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 56);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_100007F20(&v10, (a1 + 208));
  sub_10000801C(v13);
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s was registered as a new accessory", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = v10;
  if (v10 != v11)
  {
    do
    {
      (*(**v6 + 32))(*v6, a2);
      ++v6;
    }

    while (v6 != v11);
    v6 = v10;
  }

  if (v6)
  {
    v11 = v6;
    operator delete(v6);
  }

  return sub_1000088CC(v13);
}

void sub_100514A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100514AB0(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 56);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_100007F20(&v10, (a1 + 208));
  sub_10000801C(v13);
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v5 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device %{public}s reported a battery level change", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = v10;
  if (v10 != v11)
  {
    do
    {
      (*(**v6 + 40))(*v6, a2);
      ++v6;
    }

    while (v6 != v11);
    v6 = v10;
  }

  if (v6)
  {
    v11 = v6;
    operator delete(v6);
  }

  return sub_1000088CC(v13);
}

void sub_100514C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100514C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 56);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_100007F20(&v17, (a1 + 208));
  sub_10000801C(v20);
  v10 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a3, __p);
    v11 = v16 >= 0 ? __p : __p[0];
    v12 = a2 > 0xD ? "?" : (&off_100AFB7A8)[a2];
    *buf = 136446722;
    v22 = v11;
    v23 = 2080;
    v24 = v12;
    v25 = 1024;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Device %{public}s Audio Accessory msg received [%s], len: %d", buf, 0x1Cu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = v17;
  if (v17 != v18)
  {
    do
    {
      (*(**v13 + 48))(*v13, a2, a3, a4, a5);
      ++v13;
    }

    while (v13 != v18);
    v13 = v17;
  }

  if (v13)
  {
    v18 = v13;
    operator delete(v13);
  }

  return sub_1000088CC(v20);
}

void sub_100514E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100514E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 56);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_100007F20(&v16, (a1 + 208));
  sub_10000801C(v19);
  v10 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136446978;
    v21 = v11;
    v22 = 1024;
    v23 = a3;
    v24 = 1024;
    v25 = a4;
    v26 = 1024;
    v27 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Device %{public}s reported command status: type %d, result %u, reason %u", buf, 0x1Eu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = v16;
  if (v16 != v17)
  {
    do
    {
      (*(**v12 + 56))(*v12, a2, a3, a4, a5);
      ++v12;
    }

    while (v12 != v17);
    v12 = v16;
  }

  if (v12)
  {
    v17 = v12;
    operator delete(v12);
  }

  return sub_1000088CC(v19);
}

void sub_10051500C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100515048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 56);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&v14, (a1 + 208));
  sub_10000801C(v17);
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v9 = v13 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v19 = v9;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device %{public}s Context Detect msg received, len: %d", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = v14;
  if (v14 != v15)
  {
    do
    {
      (*(**v10 + 64))(*v10, a2, a3, a4);
      ++v10;
    }

    while (v10 != v15);
    v10 = v14;
  }

  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  return sub_1000088CC(v17);
}

void sub_1005151DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100515218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 56);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&v14, (a1 + 208));
  sub_10000801C(v17);
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v9 = v13 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v19 = v9;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device %{public}s Conversation Detect msg received, len: %d", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = v14;
  if (v14 != v15)
  {
    do
    {
      (*(**v10 + 72))(*v10, a2, a3, a4);
      ++v10;
    }

    while (v10 != v15);
    v10 = v14;
  }

  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  return sub_1000088CC(v17);
}

void sub_1005153AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005153E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 56);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&v14, (a1 + 208));
  sub_10000801C(v17);
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v9 = v13 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v19 = v9;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device %{public}s Sleep Detection msg received, len: %d", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = v14;
  if (v14 != v15)
  {
    do
    {
      (*(**v10 + 80))(*v10, a2, a3, a4);
      ++v10;
    }

    while (v10 != v15);
    v10 = v14;
  }

  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  return sub_1000088CC(v17);
}

void sub_10051557C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005155B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 56);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&v14, (a1 + 208));
  sub_10000801C(v17);
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v9 = v13 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v19 = v9;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device %{public}s PME config msg received, len: %d", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = v14;
  if (v14 != v15)
  {
    do
    {
      (*(**v10 + 96))(*v10, a2, a3, a4);
      ++v10;
    }

    while (v10 != v15);
    v10 = v14;
  }

  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  return sub_1000088CC(v17);
}

void sub_10051574C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100515788(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 56);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_100007F20(&v16, (a1 + 208));
  sub_10000801C(v19);
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v9 = v15 >= 0 ? __p : __p[0];
    v10 = *a4;
    v11 = a4[1];
    *buf = 136446722;
    v21 = v9;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device %{public}s Raw Gesture msg received, type: %u side: %u", buf, 0x18u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = v16;
  if (v16 != v17)
  {
    do
    {
      (*(**v12 + 104))(*v12, a2, a3, a4);
      ++v12;
    }

    while (v12 != v17);
    v12 = v16;
  }

  if (v12)
  {
    v17 = v12;
    operator delete(v12);
  }

  return sub_1000088CC(v19);
}

void sub_10051592C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100515968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 56);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&v14, (a1 + 208));
  sub_10000801C(v17);
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v9 = v13 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v19 = v9;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device %{public}s Dynamic End of Charge msg received, len: %d", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = v14;
  if (v14 != v15)
  {
    do
    {
      (*(**v10 + 48))(*v10, 12, a2, a3, a4);
      ++v10;
    }

    while (v10 != v15);
    v10 = v14;
  }

  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  return sub_1000088CC(v17);
}

void sub_100515B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100515B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 56);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&v14, (a1 + 208));
  sub_10000801C(v17);
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v9 = v13 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v19 = v9;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device %{public}s Personal Translation msg received, len: %d", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = v14;
  if (v14 != v15)
  {
    do
    {
      (*(**v10 + 48))(*v10, 13, a2, a3, a4);
      ++v10;
    }

    while (v10 != v15);
    v10 = v14;
  }

  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  return sub_1000088CC(v17);
}

void sub_100515CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100515D10(uint64_t a1, uint64_t a2)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 56);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_100007F20(&v25, (a1 + 208));
  sub_10000801C(v28);
  v4 = qword_100BCE8C8;
  v5 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    sub_1000E5A58(a2, __p);
    v7 = v24 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device %{public}s reported in ear state change", buf, 0xCu);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  for (i = v25; i != v26; ++i)
  {
    v5 = (*(**i + 128))(*i, a2);
  }

  if (sub_1005FC8F4(v5, v6))
  {
    *buf = 0;
    v22 = 0;
    if (qword_100B50950 != -1)
    {
      sub_10083DBC8();
    }

    sub_10033C1E4(off_100B50948, a2, buf, &v22);
    sub_1000C23E0(a2, __p);
    if (v24 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = [NSString stringWithUTF8String:v9];
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000BE6F8((a2 + 128), __p);
    if (v24 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithUTF8String:v11];
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v29[0] = @"primaryInEarStatus";
    v13 = [NSNumber numberWithUnsignedInt:*buf];
    v30[0] = v13;
    v29[1] = @"secondaryInEarStatus";
    v14 = [NSNumber numberWithUnsignedInt:v22];
    v30[1] = v14;
    v15 = +[_CDContextQueries bluetoothNameKey];
    v29[2] = v15;
    v30[2] = v10;
    v16 = +[_CDContextQueries bluetoothAddressKey];
    v29[3] = v16;
    v30[3] = v12;
    v17 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];

    v18 = [_CDContextualKeyPath keyPathWithKey:@"/bluetooth/inEarStatus"];
    v19 = [v17 copy];
    v20 = +[_CDClientContext userContext];
    [v20 setObject:v19 forKeyedSubscript:v18];
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083DB94();
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return sub_1000088CC(v28);
}

void sub_100516088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100516178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 56);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&v14, (a1 + 208));
  sub_10000801C(v17);
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v9 = v13 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v19 = v9;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Device %{public}s Accessory Usage Summary info msg received, len: %d", buf, 0x12u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = v14;
  if (v14 != v15)
  {
    do
    {
      (*(**v10 + 88))(*v10, a2, a3, a4);
      ++v10;
    }

    while (v10 != v15);
    v10 = v14;
  }

  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  return sub_1000088CC(v17);
}

void sub_10051630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100516348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 56);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_100007F20(&v18, (a1 + 208));
  sub_10000801C(v21);
  v12 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v13 = v17 >= 0 ? __p : __p[0];
    *buf = 136448258;
    v23 = v13;
    v24 = 1024;
    v25 = a3;
    v26 = 1024;
    v27 = BYTE1(a3);
    v28 = 1024;
    v29 = BYTE2(a3);
    v30 = 1024;
    v31 = BYTE3(a3);
    v32 = 1024;
    v33 = BYTE4(a3);
    v34 = 1024;
    v35 = BYTE5(a3);
    v36 = 1024;
    v37 = a4;
    v38 = 1024;
    v39 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Device %{public}s relay msg received: srcAddr %02X:%02X:%02X:%02X:%02X:%02X, type %d, len %d", buf, 0x3Cu);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = v18;
  if (v18 != v19)
  {
    do
    {
      (*(**v14 + 136))(*v14, a2, a3 & 0xFFFFFFFFFFFFLL, a4, a5, a6);
      ++v14;
    }

    while (v14 != v19);
    v14 = v18;
  }

  if (v14)
  {
    v19 = v14;
    operator delete(v14);
  }

  return sub_1000088CC(v21);
}

void sub_100516544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100516580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 56);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_100007F20(&v12, (a1 + 208));
  sub_10000801C(v15);
  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v7 = v11 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v17 = v7;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Device %{public}s stream state changed: %u", buf, 0x12u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = v12;
  if (v12 != v13)
  {
    do
    {
      (*(**v8 + 144))(*v8, a2, a3);
      ++v8;
    }

    while (v8 != v13);
    v8 = v12;
  }

  if (v8)
  {
    v13 = v8;
    operator delete(v8);
  }

  return sub_1000088CC(v15);
}

void sub_100516704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100516740(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 56);
  v6 = *(a1 + 256);
  if (v6 == *(a1 + 264))
  {
    v17 = 106;
  }

  else
  {
    do
    {
      if (qword_100B50B88 != -1)
      {
        sub_10083DBF0();
      }

      if (sub_100076290(qword_100B50B80, *v6))
      {
        v6 += 7;
        v7 = *(a1 + 264);
      }

      else
      {
        v8 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: AccessoryManager, Invalid BTAccessoryManager handle - removing associated callbacks", buf, 2u);
        }

        v9 = *(a1 + 264);
        if (v6 + 7 == v9)
        {
          v7 = v6;
        }

        else
        {
          v10 = v6;
          v7 = v6;
          do
          {
            v11 = *(v7 + 56);
            v7 += 56;
            *v10 = v11;
            v12 = *(v10 + 80);
            *(v10 + 8) = *(v10 + 64);
            *(v10 + 24) = v12;
            *(v10 + 40) = *(v10 + 96);
            *(v10 + 48) = *(v10 + 104);
            v13 = (v10 + 112);
            v10 = v7;
          }

          while (v13 != v9);
        }

        *(a1 + 264) = v7;
      }
    }

    while (v6 != v7);
    v14 = *(a1 + 256);
    *buf = 0;
    v20 = 0;
    v21 = 0;
    sub_10051B344(buf, v14, v7, 0x6DB6DB6DB6DB6DB7 * ((v7 - v14) >> 3));
    sub_10000801C(v22);
    v16 = *buf;
    v15 = v20;
    if (*buf != v20)
    {
      do
      {
        if (qword_100B50B88 != -1)
        {
          sub_10083DBF0();
        }

        sub_100076290(qword_100B50B80, *v16);
        if (qword_100B508F0 != -1)
        {
          sub_10083DC18();
        }

        sub_10056A4C4(off_100B508E8, *v16, a2);
        if (v16[1])
        {
          if (qword_100B540D0 != -1)
          {
            sub_10083DC40();
          }

          operator new();
        }

        v16 += 7;
      }

      while (v16 != v15);
      v16 = *buf;
    }

    if (v16)
    {
      v20 = v16;
      operator delete(v16);
    }

    v17 = 0;
  }

  sub_1000088CC(v22);
  return v17;
}

void sub_100516A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100516A38(uint64_t a1, uint64_t a2, int a3, char a4, unsigned int a5, const void *a6)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 56);
  v8 = *(a1 + 256);
  if (v8 == *(a1 + 264))
  {
    v19 = 106;
  }

  else
  {
    do
    {
      if (qword_100B50B88 != -1)
      {
        sub_10083DBF0();
      }

      if (sub_100076290(qword_100B50B80, *v8))
      {
        v8 += 7;
        v9 = *(a1 + 264);
      }

      else
      {
        v10 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: AccessoryManager, Invalid BTAccessoryManager handle - removing associated callbacks", buf, 2u);
        }

        v11 = *(a1 + 264);
        if (v8 + 7 == v11)
        {
          v9 = v8;
        }

        else
        {
          v12 = v8;
          v9 = v8;
          do
          {
            v13 = *(v9 + 56);
            v9 += 56;
            *v12 = v13;
            v14 = *(v12 + 80);
            *(v12 + 8) = *(v12 + 64);
            *(v12 + 24) = v14;
            *(v12 + 40) = *(v12 + 96);
            *(v12 + 48) = *(v12 + 104);
            v15 = (v12 + 112);
            v12 = v9;
          }

          while (v15 != v11);
        }

        *(a1 + 264) = v9;
      }
    }

    while (v8 != v9);
    v16 = *(a1 + 256);
    *buf = 0;
    v22 = 0;
    v23 = 0;
    sub_10051B344(buf, v16, v9, 0x6DB6DB6DB6DB6DB7 * ((v9 - v16) >> 3));
    sub_10000801C(v24);
    v18 = *buf;
    v17 = v22;
    if (*buf != v22)
    {
      do
      {
        if (qword_100B50B88 != -1)
        {
          sub_10083DBF0();
        }

        sub_100076290(qword_100B50B80, *v18);
        if (qword_100B508F0 != -1)
        {
          sub_10083DC18();
        }

        sub_10056A4C4(off_100B508E8, *v18, a2);
        if (v18[2])
        {
          if (qword_100B540D0 != -1)
          {
            sub_10083DC40();
          }

          operator new();
        }

        v18 += 7;
      }

      while (v18 != v17);
      v18 = *buf;
    }

    if (v18)
    {
      v22 = v18;
      operator delete(v18);
    }

    v19 = 0;
  }

  sub_1000088CC(v24);
  return v19;
}

void sub_100516D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100516D98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, const void *a6)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 56);
  v7 = *(a1 + 256);
  if (v7 == *(a1 + 264))
  {
    v18 = 106;
  }

  else
  {
    do
    {
      if (qword_100B50B88 != -1)
      {
        sub_10083DBF0();
      }

      if (sub_100076290(qword_100B50B80, *v7))
      {
        v7 += 7;
        v8 = *(a1 + 264);
      }

      else
      {
        v9 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: AccessoryManager, Invalid BTAccessoryManager handle - removing associated callbacks", buf, 2u);
        }

        v10 = *(a1 + 264);
        if (v7 + 7 == v10)
        {
          v8 = v7;
        }

        else
        {
          v11 = v7;
          v8 = v7;
          do
          {
            v12 = *(v8 + 56);
            v8 += 56;
            *v11 = v12;
            v13 = *(v11 + 80);
            *(v11 + 8) = *(v11 + 64);
            *(v11 + 24) = v13;
            *(v11 + 40) = *(v11 + 96);
            *(v11 + 48) = *(v11 + 104);
            v14 = (v11 + 112);
            v11 = v8;
          }

          while (v14 != v10);
        }

        *(a1 + 264) = v8;
      }
    }

    while (v7 != v8);
    v15 = *(a1 + 256);
    *buf = 0;
    v22 = 0;
    v23 = 0;
    sub_10051B344(buf, v15, v8, 0x6DB6DB6DB6DB6DB7 * ((v8 - v15) >> 3));
    sub_10000801C(v24);
    v17 = *buf;
    v16 = v22;
    if (*buf != v22)
    {
      do
      {
        if (qword_100B50B88 != -1)
        {
          sub_10083DBF0();
        }

        sub_100076290(qword_100B50B80, *v17);
        if (qword_100B508F0 != -1)
        {
          sub_10083DC18();
        }

        sub_10056A4C4(off_100B508E8, *v17, a2);
        if (v17[3])
        {
          if (qword_100B540D0 != -1)
          {
            sub_10083DC40();
          }

          operator new();
        }

        v17 += 7;
      }

      while (v17 != v16);
      v17 = *buf;
    }

    if (v17)
    {
      v22 = v17;
      operator delete(v17);
    }

    v18 = 0;
  }

  sub_1000088CC(v24);
  return v18;
}

void sub_1005170B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10051710C(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 56);
  v7 = *(a1 + 256);
  if (v7 == *(a1 + 264))
  {
    v18 = 106;
  }

  else
  {
    do
    {
      if (qword_100B50B88 != -1)
      {
        sub_10083DBF0();
      }

      if (sub_100076290(qword_100B50B80, *v7))
      {
        v7 += 7;
        v8 = *(a1 + 264);
      }

      else
      {
        v9 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: AccessoryManager, Invalid BTAccessoryManager handle - removing associated callbacks", buf, 2u);
        }

        v10 = *(a1 + 264);
        if (v7 + 7 == v10)
        {
          v8 = v7;
        }

        else
        {
          v11 = v7;
          v8 = v7;
          do
          {
            v12 = *(v8 + 56);
            v8 += 56;
            *v11 = v12;
            v13 = *(v11 + 80);
            *(v11 + 8) = *(v11 + 64);
            *(v11 + 24) = v13;
            *(v11 + 40) = *(v11 + 96);
            *(v11 + 48) = *(v11 + 104);
            v14 = (v11 + 112);
            v11 = v8;
          }

          while (v14 != v10);
        }

        *(a1 + 264) = v8;
      }
    }

    while (v7 != v8);
    v15 = *(a1 + 256);
    *buf = 0;
    v21 = 0;
    v22 = 0;
    sub_10051B344(buf, v15, v8, 0x6DB6DB6DB6DB6DB7 * ((v8 - v15) >> 3));
    sub_10000801C(v23);
    v17 = *buf;
    v16 = v21;
    if (*buf != v21)
    {
      do
      {
        if (qword_100B50B88 != -1)
        {
          sub_10083DBF0();
        }

        sub_100076290(qword_100B50B80, *v17);
        if (qword_100B508F0 != -1)
        {
          sub_10083DC18();
        }

        sub_10056A4C4(off_100B508E8, *v17, a2);
        if (v17[4])
        {
          if (qword_100B540D0 != -1)
          {
            sub_10083DC40();
          }

          operator new();
        }

        v17 += 7;
      }

      while (v17 != v16);
      v17 = *buf;
    }

    if (v17)
    {
      v21 = v17;
      operator delete(v17);
    }

    v18 = 0;
  }

  sub_1000088CC(v23);
  return v18;
}

void sub_1005173DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100517414(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 56);
  v3 = *(a1 + 160);
  v2 = *(a1 + 168);
  if (v3 != v2)
  {
    v4 = *(a1 + 120);
    if ((v4 & 1) != 0 || *(a1 + 121) == 1)
    {
      v5 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "(someone is pairing)";
        if (v4)
        {
          v6 = "(someone is connecting)";
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
        *(buf.__r_.__value_.__r.__words + 4) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Auto pairing is not allowed at the moment %{public}s, trying again later", &buf, 0xCu);
      }
    }

    else
    {
      v7 = *v3;
      v8 = v2 - (v3 + 1);
      if (v2 != v3 + 1)
      {
        memmove(*(a1 + 160), v3 + 1, v2 - (v3 + 1));
      }

      *(a1 + 168) = v3 + v8;
      sub_10000801C(v11);
      sub_1005145AC(a1, v7);
      if ((sub_1000295DC(v7) & 1) == 0)
      {
        if (qword_100B50AC0 != -1)
        {
          sub_10083DC68();
        }

        memset(&buf, 0, sizeof(buf));
        v9 = sub_10059234C(off_100B50AB8, v7, -1, &buf, 2);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (!v9)
        {
          sub_100007FB8(v11);
          *(a1 + 128) = v7;
          sub_10000801C(v11);
        }
      }
    }
  }

  return sub_1000088CC(v11);
}

uint64_t sub_1005175FC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = result;
    if (qword_100B508F0 != -1)
    {
      sub_10083DC90();
    }

    result = sub_1000504C8(off_100B508E8, a2, 0);
    if (result)
    {
      v9 = result;
      if (a3)
      {
        v10 = 7;
      }

      else
      {
        v10 = 8;
      }

      v11 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "Not Ready";
        v13 = 136446722;
        if (a3)
        {
          v12 = "Ready";
        }

        v14 = v12;
        v15 = 2048;
        v16 = a5;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Remote Timesync: Timesync Notification %{public}s : %llx [%d]", &v13, 0x1Cu);
      }

      return sub_100516740(v8, v9, v10, 0);
    }
  }

  return result;
}

void sub_10051774C(uint64_t a1, uint64_t a2)
{
  v2 = qword_100BCE8C8;
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notify clients of head track change", v5, 2u);
    }

    sub_100516740(a1, a2, 14, 0);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083DCA4();
  }
}

void sub_1005177FC(uint64_t a1, uint64_t a2)
{
  v2 = qword_100BCE8C8;
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notify clients of head track change", v5, 2u);
    }

    sub_100516740(a1, a2, 15, 0);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083DCD8();
  }
}

uint64_t sub_1005178AC(uint64_t result, int a2, int a3)
{
  if (a2 == 1)
  {
    v3 = result;
    if (a3)
    {
      if (a3 == 1)
      {

        return sub_100517414(result);
      }
    }

    else
    {
      v5[0] = 0;
      v5[1] = 0;
      sub_100007F88(v5, result + 56);
      *(v3 + 120) = 0;
      if (*(v3 + 128))
      {
        v4 = *(v3 + 128);
        sub_10000801C(v5);
        sub_1000C2484(v3 + 160, &v4);
      }

      return sub_1000088CC(v5);
    }
  }

  return result;
}

void sub_100517948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100517964(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  *(a1 + 120) = 0;
  if (*(a1 + 128) == a2)
  {
    *(a1 + 128) = 0;
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005179C4(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  *(a1 + 120) = a2;
  if ((a2 & 1) == 0)
  {
    sub_10000801C(v5);
    sub_100517414(a1);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100517A3C(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 56);
  *(a1 + 120) = 0;
  return sub_1000088CC(v3);
}

uint64_t sub_100517A80(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 40);
  *(a1 + 104) = 0;
  return sub_1000088CC(v3);
}

uint64_t sub_100517AC4(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 56);
  *(a1 + 121) = 1;
  return sub_1000088CC(v3);
}

uint64_t sub_100517B0C(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 32);
  *(a1 + 97) = 1;
  return sub_1000088CC(v3);
}

uint64_t sub_100517B54(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 56);
  *(a1 + 121) = 0;
  sub_10000801C(v3);
  sub_100517414(a1);
  return sub_1000088CC(v3);
}

uint64_t sub_100517BC4(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  if (sub_1000E69B8(a1 + 136, a2))
  {
    sub_10056923C((a1 + 136), a2);
  }

  return sub_1000088CC(v5);
}

void sub_100517C40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 <= 200)
  {
    if (a4 == 101)
    {
      byte_100B6EFB0 = 1;
      return;
    }

    if (a4 != 102)
    {
      return;
    }

    v6 = &byte_100B6EFB0;
  }

  else
  {
    if (a4 == 201)
    {
      byte_100B6EFB1 = 1;
      return;
    }

    if (a4 != 202)
    {
      if (a4 == 902)
      {
        if (qword_100B50950 != -1)
        {
          sub_10083DD0C();
        }

        v5 = off_100B50948;

        sub_100337A4C(v5, a2);
      }

      return;
    }

    v6 = &byte_100B6EFB1;
  }

  *v6 = 0;
  if (byte_100B6EFB2 == 1)
  {
    v7 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *&buf[4] = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AWD - Request is in queue already", &buf[4], 2u);
    }
  }

  else
  {
    *buf = 0;
    v16 = 0;
    sub_1000C2364(a2, &buf[4], buf, &v16 + 1, &v16);
    v8 = sub_10000E92C();
    v9 = (*(*v8 + 8))(v8);
    if (v9)
    {
      v11 = sub_10000C798(v9, v10);
      if ((*(*v11 + 352))(v11))
      {
        if (qword_100B50AC0 != -1)
        {
          sub_10083DC68();
        }

        v12 = sub_1000E077C(off_100B50AB8, a2);
        if ((v12 & 0x80000) != 0 && (HIDWORD(v16) - 8194) <= 0xE && ((1 << (BYTE4(v16) - 2)) & 0x409B) != 0)
        {
          byte_100B6EFB2 = 1;
          v14 = sub_100017F4C(v12, v13);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_100517E9C;
          v15[3] = &unk_100ADF8F8;
          v15[4] = a2;
          sub_10008E008(v14, 250, v15);
        }
      }
    }
  }
}

void sub_100517E9C(uint64_t a1)
{
  if (byte_100B6EFB0 & 1) != 0 || (byte_100B6EFB1)
  {
    goto LABEL_9;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10083DD20();
  }

  if (*(off_100B50A98 + 60) != 1)
  {
    goto LABEL_9;
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10083DB6C();
  }

  if ((sub_1000E077C(off_100B50AB8, *(a1 + 32)) & 0x80000) != 0)
  {
    v3 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AWD - Send request to collect diagnose", buf, 2u);
    }

    if (qword_100B50950 != -1)
    {
      sub_10083DBC8();
    }

    sub_100330C90(off_100B50948, *(a1 + 32), 32, 0, 0);
  }

  else
  {
LABEL_9:
    v2 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AWD - Can't send request to collect diagnose", v4, 2u);
    }
  }

  byte_100B6EFB2 = 0;
}

uint64_t sub_100518000(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_10083DB30();
  }

  v4 = sub_1000117DC(qword_100B50B80, a2);
  if (!a2)
  {
    return 0;
  }

  v5 = v4;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 56);
  v6 = *(a1 + 232);
  v7 = *(a1 + 240);
  if (v6 != v7)
  {
    while (*v6 != a2)
    {
      if (++v6 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_9:
    v8 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        sub_100018384(v5, v10);
        sub_10083DD34(v10, buf, v8);
      }

      else
      {
        sub_10083DDA8(buf, v8);
      }
    }

    a1 = 0;
  }

  sub_1000088CC(v11);
  return a1;
}

void sub_100518134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100518150(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10083DB30();
  }

  v4 = sub_100076290(qword_100B50B80, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 56);
  v7 = *(a1 + 232);
  for (i = *(a1 + 240); v7 != i; i = *(a1 + 240))
  {
    v8 = *v7;
    if (*v7 == a2)
    {
      goto LABEL_18;
    }

    if (qword_100B50B88 != -1)
    {
      sub_10083DBF0();
    }

    if (sub_100076290(qword_100B50B80, v8) == v5)
    {
      goto LABEL_18;
    }

    ++v7;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10083DBF0();
  }

  v10 = sub_1006185D8(qword_100B50B80, v5);
  if (v10)
  {
    sub_1000C2484(a1 + 232, &v10);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

LABEL_18:
  sub_1000088CC(v11);
  return v8;
}

void sub_10051827C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_100518294(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 56);
  v4 = sub_1000E69B8(a1 + 136, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_100518300(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 56);
  v8 = *(a1 + 256);
  v9 = *(a1 + 264);
  v10 = a3[1];
  v18 = *a3;
  v19 = v10;
  if (v8 != v9)
  {
    while (1)
    {
      if (*v8 == a2)
      {
        v11 = v18 == v8[1] && *(&v18 + 1) == v8[2];
        v12 = v11 && v19 == v8[3];
        if (v12 && *(&v19 + 1) == v8[4])
        {
          break;
        }
      }

      v8 += 7;
      if (v8 == v9)
      {
        goto LABEL_16;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_16:
    v14 = a3[1];
    v18 = *a3;
    v19 = v14;
    v17 = a2;
    v20 = -1;
    v21 = a4;
    sub_10051B630((a1 + 256), &v17);
  }

  sub_1000088CC(v16);
  return 0;
}

void sub_1005183D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005183EC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 56);
  v6 = a3[1];
  v13 = *a3;
  v14 = v6;
  v7 = *(a1 + 256);
  v8 = *(a1 + 264);
  v12 = a2;
  v9 = sub_10051B8E4(v7, v8, &v12);
  if (v9 != *(a1 + 264))
  {
    *(a1 + 264) = v9;
  }

  sub_1000088CC(v11);
  return 0;
}

void sub_1005184AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005184C0(uint64_t a1, uint64_t a2)
{
  v10[1] = 0;
  v11 = a2;
  v10[0] = 0;
  sub_100007F88(v10, a1 + 56);
  if (sub_1000E69B8(a1 + 136, a2))
  {
    v4 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
    {
      sub_1000E5A58(a2, __p);
      if (v9 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Device %{public}s has already been registered", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = 601;
  }

  else
  {
    sub_1000C2484(a1 + 136, &v11);
    sub_10000801C(v10);
    if (qword_100B50AC0 != -1)
    {
      sub_10083DC68();
    }

    sub_100598044(off_100B50AB8, v11);
    sub_100514904(a1, v11);
    v6 = sub_100516740(a1, v11, 2, 0);
  }

  sub_1000088CC(v10);
  return v6;
}

void sub_100518638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100518658(uint64_t a1, unsigned __int8 *a2)
{
  v16 = a2;
  v15 = 0;
  if (sub_100518294(a1, a2))
  {
    sub_1005414DC(a2, &v15);
    if (v15 == 1)
    {
      return 603;
    }

    sub_100541494(v16, 1);
    sub_100516740(a1, v16, 0, 1);
    if (qword_100B512C8 != -1)
    {
      sub_10083DE90();
    }

    if (sub_10000EE78(off_100B512C0))
    {
      v13[0] = 0;
      v13[1] = 0;
      sub_100007F88(v13, a1 + 56);
      v5 = *(a1 + 120);
      if ((v5 & 1) != 0 || *(a1 + 121) == 1)
      {
        v6 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v16, &__p);
          v7 = "(someone is pairing)";
          if (v5)
          {
            v7 = "(someone is connecting)";
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136446466;
          v18 = v7;
          v19 = 2082;
          v20 = p_p;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Auto pairing is not allowed at the moment %{public}s, queuing up device %{public}s for later", buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_1000C2484(a1 + 160, &v16);
      }

      else
      {
        sub_10000801C(v13);
        sub_1005145AC(a1, v16);
        if (sub_1000295DC(v16))
        {
          goto LABEL_22;
        }

        if (qword_100B50AC0 != -1)
        {
          sub_10083DC68();
        }

        memset(&__p, 0, sizeof(__p));
        v12 = sub_10059234C(off_100B50AB8, v16, -1, &__p, 2);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v12)
        {
          goto LABEL_22;
        }

        sub_100007FB8(v13);
        *(a1 + 128) = v16;
      }

      sub_10000801C(v13);
LABEL_22:
      sub_1000088CC(v13);
      return 0;
    }

    v9 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v16, &__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Queuing up device %{public}s for after power on", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    sub_100007F88(&__p, a1 + 56);
    sub_1000C2484(a1 + 160, &v16);
    sub_10000801C(&__p);
    if (qword_100B512C8 != -1)
    {
      sub_10083DE90();
    }

    v11 = sub_100579C50(off_100B512C0);
    sub_1000088CC(&__p);
    if (!v11)
    {
      return 0;
    }

    return 200;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083DDF4(a2);
    }

    return 600;
  }
}

void sub_1005189B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1005189F4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (sub_100518294(a1, a2))
  {
    sub_1005414DC(a2, &v7);
    if (v7 == 2)
    {
      return 604;
    }

    else
    {
      sub_100541494(a2, 2);
      v6[0] = 0;
      v6[1] = 0;
      sub_100007F88(v6, a1 + 56);
      sub_10056923C((a1 + 160), a2);
      sub_10000801C(v6);
      sub_100514758(a1, a2);
      v4 = sub_100516740(a1, a2, 0, 2);
      sub_1000088CC(v6);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083DEB8(a2);
    }

    return 600;
  }

  return v4;
}

void sub_100518AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100518AF4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = 0;
  if (sub_100518294(a1, a2))
  {
    sub_1005414DC(a2, &v6);
    result = 0;
    *a3 = v6;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083DF54(a2);
    }

    return 600;
  }

  return result;
}

uint64_t sub_100518B78(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  result = sub_10053F0BC(a2, &v5);
  if (!result)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t sub_100518BC8(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  if ((a1 + 136) != a2)
  {
    sub_10051AE40(a2, *(a1 + 136), *(a1 + 144), (*(a1 + 144) - *(a1 + 136)) >> 3);
  }

  sub_1000088CC(v5);
  return 0;
}

uint64_t sub_100518C44(uint64_t a1, uint64_t a2)
{
  sub_100514AB0(a1, a2);

  return sub_100516740(a1, a2, 1, 0);
}

uint64_t sub_100518C8C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000C23E0(a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending BT_ACCESSORY_NAME_CHANGED for %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100516740(a1, a2, 4, 0);
}

uint64_t sub_100518D80(uint64_t a1, uint64_t a2)
{
  sub_100515D10(a1, a2);

  return sub_100516740(a1, a2, 6, 0);
}

uint64_t sub_100518DD8(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v7 = a5;
  v8 = a4;
  sub_100516348(a1, a2, *a3 | (*(a3 + 2) << 32), a4, a5, a6);
  v12 = *a3 | (*(a3 + 2) << 32);

  return sub_100516D98(a1, a2, v12, v8, v7, a6);
}

void sub_100518E60(uint64_t a1, uint64_t a2)
{
  v2 = sub_100516740(a1, a2, 23, 0);
  v3 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEBUG))
  {
    sub_10083DFEC(v2, v3);
  }
}

uint64_t sub_100518ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  sub_100514E60(a1, a2, a3, a4, a5);

  return sub_10051710C(a1, a2, v7, v6, v5);
}

uint64_t sub_100518F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_100516580(a1, a2, a3);
  switch(v3)
  {
    case 2:
      v6 = a1;
      v7 = a2;
      v8 = 10;
      goto LABEL_7;
    case 1:
      v6 = a1;
      v7 = a2;
      v8 = 11;
      goto LABEL_7;
    case 0:
      v6 = a1;
      v7 = a2;
      v8 = 9;
LABEL_7:

      return sub_100516740(v6, v7, v8, 0);
  }

  v10 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E064(v3, v10);
  }

  return 1;
}

uint64_t sub_100518FFC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10083DD0C();
  }

  v5 = off_100B50948;

  return sub_10033DA80(v5, a2, a3, 2);
}

uint64_t sub_10051905C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10083DD0C();
  }

  v5 = off_100B50948;

  return sub_10033DB4C(v5, a2, a3);
}

uint64_t sub_1005190B8(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  if (qword_100B50950 != -1)
  {
    sub_10083DD0C();
  }

  v7 = off_100B50948;

  return sub_10033DD54(v7, a2, a3, a4, 2);
}

uint64_t sub_100519128(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a5;
    v6 = a4;
    v16 = 0;
    v17 = 0;
    sub_1000C2364(a2, &v17 + 1, &v17, &v16 + 1, &v16);
    v10 = sub_100539FE8(a2);
    v11 = qword_100BCE8C8;
    if (!v10)
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083E0DC();
      }

      return 11;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000E2140(a2, 0x14u);
      v13 = "No";
      if (v12)
      {
        v13 = "Yes";
      }

      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Sensor data support: %s", buf, 0xCu);
    }

    v14 = (HIDWORD(v16) - 8202) > 9 || ((1 << (BYTE4(v16) - 10)) & 0x311) == 0;
    if (v14 && !sub_1000E2140(a2, 0x14u))
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083E110();
      }

      return 11;
    }

    if (qword_100B50940 != -1)
    {
      sub_10083E144();
    }

    return sub_10062FB80(off_100B50938, (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], a3, v6, a1 + 48, v5);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E16C();
    }

    return 1;
  }
}

uint64_t sub_100519354(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  if (qword_100B50940 != -1)
  {
    sub_10083E1A0();
  }

  v5 = sub_100630340(off_100B50938, a2);
  *a3 = v5;
  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Reference Timestamp ID: %llx ", &v8, 0xCu);
  }

  return 0;
}

uint64_t sub_100519430(uint64_t a1, uint64_t a2, int *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083DC90();
  }

  sub_10056C0AC(off_100B508E8, a2, a3);
  v5 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a3;
    sub_1000C23E0(a2, __p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 67109378;
    v12 = v6;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "getSpatialAudioAllowSpatial: Allowed = %d For  %s", buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_100519550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_10083DC90();
  }

  sub_10056C1D8(off_100B508E8, a2, a3);
  v6 = qword_100BCE8C8;
  v7 = os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    sub_1000C23E0(a2, __p);
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 67109378;
    v16 = a3;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notifySpatialAudioAllowSpatialChanged to %d  %s", buf, 0x12u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = sub_1000DAB84(v7, v8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005196D8;
  v12[3] = &unk_100ADF8F8;
  v12[4] = a2;
  sub_10000CA94(v10, v12);
  sub_100519738(a1, a2);
  return 0;
}

uint64_t sub_1005196D8(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AE0 != -1)
    {
      sub_10083E1B4();
    }

    v2 = qword_100B50AD8;
    v3 = *(v1 + 32);

    return sub_1004DB488(v2, v3);
  }

  return result;
}

uint64_t sub_100519738(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000C23E0(a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending BT_ACCESSORY_SETTINGS_CHANGED for %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100516740(a1, a2, 5, 0);
}

uint64_t sub_10051982C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5)
{
  v16 = 1;
  v8 = [NSString stringWithUTF8String:a3];
  if (qword_100B508F0 != -1)
  {
    sub_10083DC90();
  }

  sub_1000E6A78(off_100B508E8, a2, v8, a4, &v16);
  *a5 = -v16;
  v9 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    if (v15 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = *a4;
    v12 = "Off";
    if (*a5 == -1)
    {
      v12 = "On";
    }

    *buf = 136315906;
    v18 = v10;
    v19 = 2112;
    v20 = v8;
    v21 = 1024;
    v22 = v11;
    v23 = 2080;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get Spatial Audio Mode for device %s :[%@] Mode= %u Head Tracking %s", buf, 0x26u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_1005199DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (qword_100B50940 != -1)
  {
    sub_10083E1A0();
  }

  sub_10063977C(off_100B50938, a2, v3);
  v5 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 67109378;
    v11 = v3;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateSpatialAudioSpatialActiveChanged to %d  %s", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_100519AF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v9 = a3;
  v10 = a5 == -1;
  if (qword_100B508F0 != -1)
  {
    sub_10083DC90();
  }

  sub_10056C300(off_100B508E8, a2, v9, a4, a5 == -1);
  v11 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    if (v26 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = @"None";
    *buf = 136315906;
    v28 = v12;
    v14 = "YES";
    if (v9)
    {
      v13 = v9;
    }

    v29 = 1024;
    v30 = a4;
    if (a5 != -1)
    {
      v14 = "NO";
    }

    v31 = 2112;
    v32 = v13;
    v33 = 2082;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notify Spatial Audio Mode changed for device %s to %d for App %@ Head Tracking %{public}s", buf, 0x26u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v15 = [(__CFString *)v9 copy];
  v17 = sub_1000DAB84(v15, v16);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100519D6C;
  v20[3] = &unk_100AE2880;
  v22 = a2;
  v18 = v15;
  v21 = v18;
  v23 = a4;
  v24 = v10;
  sub_10000CA94(v17, v20);
  sub_100519738(a1, a2);

  return 0;
}

uint64_t sub_100519D6C(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    if (qword_100B50AE0 != -1)
    {
      sub_10083E1B4();
    }

    v2 = qword_100B50AD8;
    v4 = *(v1 + 32);
    v3 = *(v1 + 40);
    v5 = *(v1 + 48);
    v6 = *(v1 + 52);

    return sub_1004DB6BC(v2, v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_100519DD4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10083DD0C();
  }

  v5 = off_100B50948;

  return sub_10033DF90(v5, a2, a3, 2);
}

uint64_t sub_100519E34(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (qword_100B50950 != -1)
  {
    sub_10083DD0C();
  }

  v7 = off_100B50948;

  return sub_10033C1E4(v7, a2, a3, a4);
}

uint64_t sub_100519EA0(uint64_t a1, uint64_t a2, int *a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10083DD0C();
  }

  v5 = off_100B50948;

  return sub_10033C47C(v5, a2, a3);
}

uint64_t sub_100519EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v14 = a4;
    v15 = 2082;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sending %{public}s changed for %{public}s", buf, 0x16u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100516740(a1, a2, a3, 0);
}

uint64_t sub_10051A00C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending AACP capabilities received for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100516740(a1, a2, 22, 0);
}

uint64_t sub_10051A100(uint64_t a1, uint64_t *a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_10083DB58();
  }

  v4 = sub_10009DB3C(off_100B50F80, &v20);
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E1C8();
    }
  }

  else
  {
    v19[0] = 0;
    v19[1] = 0;
    sub_100007F88(v19, a1 + 56);
    *(a1 + 192) = *(a1 + 184);
    v5 = v20;
    if (v20 != v21)
    {
      do
      {
        v18 = *v5;
        v6 = sub_10054AFB4(v18);
        v7 = sub_100539FE8(v18);
        v16 = 0;
        v17 = 0;
        sub_1000C2364(v18, &v17 + 1, &v17, &v16 + 1, &v16);
        v8 = qword_100BCE8C8;
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C23E0(v18, __p);
          v10 = __p;
          if (v15 < 0)
          {
            v10 = __p[0];
          }

          v11 = "False";
          if (v7)
          {
            v12 = "True";
          }

          else
          {
            v12 = "False";
          }

          if (v6 != -1.0)
          {
            v11 = "True";
          }

          *buf = 136316162;
          v24 = v10;
          v25 = 1024;
          v26 = HIDWORD(v16);
          v27 = 1024;
          v28 = v17;
          v29 = 2080;
          v30 = v12;
          v31 = 2080;
          v32 = v11;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "deviceName = %s, pid=0x%x, vid=0x%x, isAppleBT=%s, isHAESupported=%s", buf, 0x2Cu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v9 = v6 == -1.0 || v7;
        if ((v9 & 1) == 0)
        {
          sub_1000C2484(a1 + 184, &v18);
        }

        ++v5;
      }

      while (v5 != v21);
    }

    if ((a1 + 184) != a2)
    {
      sub_10051AE40(a2, *(a1 + 184), *(a1 + 192), (*(a1 + 192) - *(a1 + 184)) >> 3);
    }

    sub_1000088CC(v19);
    v4 = 0;
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v4;
}

void sub_10051A384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_1000088CC(&a18);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const char *sub_10051A3CC(_DWORD *a1)
{
  v1 = "Unknown";
  if (*a1 == 2)
  {
    v1 = "Unplugged";
  }

  if (*a1 == 1)
  {
    return "Plugged in";
  }

  else
  {
    return v1;
  }
}

void sub_10051A44C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E1FC();
  }

  v8 = off_100B508D8;
  if (sub_10051A520(a1, *(a1 + 40)) && sub_10051A520(a1, *(a1 + 56)) && v8[32] != v8[33])
  {
    sub_10051BAF0(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), a4);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E210();
  }
}

BOOL sub_10051A520(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_10083DB30();
  }

  v3 = qword_100B50B80;

  return sub_100618944(v3, a2);
}

uint64_t sub_10051A574(uint64_t a1)
{
  *a1 = off_100AFB578;
  free(*(a1 + 64));
  return a1;
}

void sub_10051A5BC(uint64_t a1)
{
  *a1 = off_100AFB578;
  free(*(a1 + 64));

  operator delete();
}

void sub_10051A624(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E1FC();
  }

  v8 = off_100B508D8;
  if (sub_10051A520(a1, *(a1 + 40)) && sub_10051A520(a1, *(a1 + 48)) && v8[32] != v8[33])
  {
    sub_10051BB0C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 62), *(a1 + 64), a4);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E210();
  }
}

uint64_t sub_10051A704(uint64_t a1)
{
  *a1 = off_100AFB5B8;
  free(*(a1 + 72));
  return a1;
}

void sub_10051A74C(uint64_t a1)
{
  *a1 = off_100AFB5B8;
  free(*(a1 + 72));

  operator delete();
}

void sub_10051A7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E1FC();
  }

  v8 = off_100B508D8;
  if (sub_10051A520(a1, *(a1 + 40)) && sub_10051A520(a1, *(a1 + 48)) && v8[32] != v8[33])
  {
    sub_10051BB34(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56) | (*(a1 + 60) << 32), *(a1 + 64), *(a1 + 68), *(a1 + 72), a4);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E210();
  }
}

void sub_10051A8B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E1FC();
  }

  v8 = off_100B508D8;
  if (sub_10051A520(a1, *(a1 + 40)) && sub_10051A520(a1, *(a1 + 48)) && v8[32] != v8[33])
  {
    sub_10051BB5C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 62), a4);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10083E210();
  }
}

void sub_10051A98C(void *a1)
{
  sub_10051AF6C(a1);

  operator delete();
}

void sub_10051A9D0(uint64_t a1)
{
  sub_10051AF6C((a1 - 24));

  operator delete();
}

uint64_t sub_10051AA10(uint64_t *a1)
{
  result = sub_10051A520(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_10051AA84(uint64_t *a1)
{
  result = sub_10051A520(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_10051AAF8(uint64_t *a1)
{
  result = sub_10051A520(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_10051AB6C(uint64_t *a1)
{
  result = sub_10051A520(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

void sub_10051ABE0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10051AC6C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10051AC6C(void *a1, char *__src, char *a3)
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

void sub_10051AE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10051AE40(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000080CC(v6, v10);
    }

    sub_1000C7698();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_10051AF6C(void *a1)
{
  *a1 = off_100AFB3D8;
  a1[1] = off_100AFB468;
  a1[2] = off_100AFB488;
  a1[3] = off_100AFB4B0;
  a1[4] = &off_100AFB4F0;
  a1[5] = &off_100AFB508;
  a1[6] = &off_100AFB520;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  v4 = a1[26];
  if (v4)
  {
    a1[27] = v4;
    operator delete(v4);
  }

  v5 = a1[23];
  if (v5)
  {
    a1[24] = v5;
    operator delete(v5);
  }

  v6 = a1[20];
  if (v6)
  {
    a1[21] = v6;
    operator delete(v6);
  }

  v7 = a1[17];
  if (v7)
  {
    a1[18] = v7;
    operator delete(v7);
  }

  sub_10007A068((a1 + 7));
  return a1;
}

uint64_t *sub_10051B344(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10051B3C8(result, a4);
  }

  return result;
}

void sub_10051B3C8(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_10051B418(a1, a2);
  }

  sub_1000C7698();
}

void sub_10051B418(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10051B544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3)
    {
      result += 56;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 56; i != a2; i += 56)
      {
        if (*i != a3)
        {
          *result = *i;
          v6 = *(i + 8);
          *(result + 24) = *(i + 24);
          *(result + 8) = v6;
          *(result + 40) = *(i + 40);
          *(result + 48) = *(i + 48);
          result += 56;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10051B630(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10051B698(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 48) = *(a2 + 48);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_10051B698(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000C7698();
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

  v15 = a1;
  if (v6)
  {
    sub_10051B418(a1, v6);
  }

  v7 = 56 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = *(a2 + 48);
  v13 = 56 * v2 + 56;
  sub_10051B854(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 56) % 0x38uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_10051B7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10051B854(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      v6 = *(v2 + 8);
      *(v5 + 24) = *(v2 + 24);
      *(v5 + 8) = v6;
      *(v5 + 40) = *(v2 + 40);
      *(v5 + 48) = *(v2 + 48);
      v2 += 56;
      v5 += 56;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t sub_10051B8E4(uint64_t a1, uint64_t a2, void *a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (1)
    {
      if (*a3 == *result)
      {
        v5 = a3[1] == *(result + 8) && a3[2] == *(result + 16);
        v6 = v5 && a3[3] == *(result + 24);
        if (v6 && a3[4] == *(result + 32))
        {
          break;
        }
      }

      result += 56;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 56; i != a2; i += 56)
      {
        if (*a3 == *i)
        {
          v9 = a3[1] == *(i + 8) && a3[2] == *(i + 16);
          v10 = v9 && a3[3] == *(i + 24);
          if (v10 && a3[4] == *(i + 32))
          {
            continue;
          }
        }

        *result = *i;
        v12 = *(i + 8);
        *(result + 24) = *(i + 24);
        *(result + 8) = v12;
        *(result + 40) = *(i + 40);
        *(result + 48) = *(i + 48);
        result += 56;
      }
    }
  }

  return result;
}

uint64_t sub_10051BB7C(unint64_t a1, unint64_t *a2)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v4 = sub_100518150(off_100B508D8, a1);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10051BBD8(unint64_t a1, __int128 *a2, uint64_t a3)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v6 = sub_100518000(off_100B508D8, a1);
  if (!v6)
  {
    return 7;
  }

  return sub_100518300(v6, a1, a2, a3);
}

uint64_t sub_10051BC64(unint64_t a1, __int128 *a2)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v4 = sub_100518000(off_100B508D8, a1);
  if (!v4)
  {
    return 7;
  }

  return sub_1005183EC(v4, a1, a2);
}

uint64_t sub_10051BCDC(unint64_t a1, int *a2, char *a3, uint64_t a4, char *a5, unint64_t *a6)
{
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  sub_1006E5ED8(v36, 0);
  v24 = *a2;
  v25 = *(a2 + 2);
  if (!a6 || !a2 || !a3 || !a5)
  {
    v17 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1000BE6F8(&v24, v27);
      v22 = v27[0];
      v23 = "(Valid Handle)";
      if (v28 >= 0)
      {
        v22 = v27;
      }

      *__p = 136315906;
      if (!a6)
      {
        v23 = "(NULL)";
      }

      *&__p[4] = a3;
      v30 = 2080;
      v31 = a5;
      v32 = 2080;
      v33 = v22;
      v34 = 2080;
      v35 = v23;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid argument - %s %s %s %s", __p, 0x2Au);
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    v15 = 3;
    goto LABEL_41;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E258();
  }

  v12 = sub_100518000(off_100B508D8, a1);
  if (!v12)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    goto LABEL_28;
  }

  if (!v24)
  {
    v18 = 1;
    while (v18 != 6)
    {
      if (*(&v24 + v18++))
      {
        if ((v18 - 2) < 5)
        {
          goto LABEL_9;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1000BE6F8(&v24, __p);
      sub_10083E410();
    }

    goto LABEL_37;
  }

LABEL_9:
  if (qword_100B508F0 != -1)
  {
    sub_10083E280();
  }

  *__p = *a2;
  *&__p[4] = *(a2 + 2);
  v13 = sub_1000E6554(off_100B508E8, __p, 1);
  if (!v13)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1000BE6F8(&v24, __p);
      sub_10083E3BC();
    }

LABEL_37:
    v15 = 8;
    goto LABEL_41;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E280();
  }

  sub_10056B7FC(off_100B508E8, v13, a4);
  sub_100007E30(__p, a3);
  v26 = 0;
  sub_100016250(&v26);
  v27[0] = v26;
  v27[1] = SWORD2(v26);
  sub_100538494(v13, __p, v27);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(*__p);
  }

  sub_1006E5F20(v36, a5);
  if (qword_100B512E8 != -1)
  {
    sub_10083E2A8();
  }

  sub_1006E86E8(off_100B512E0, v13, v36);
  v14 = sub_1005184C0(v12, v13);
  v15 = v14;
  if (v14 == 601 || !v14)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083E280();
    }

    v16 = sub_10056A4C4(off_100B508E8, a1, v13);
    *a6 = v16;
    if (v16)
    {
      v15 = 0;
      goto LABEL_41;
    }

    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1000BE6F8(&v24, __p);
      sub_10083E2D0();
    }

LABEL_28:
    v15 = 7;
    goto LABEL_41;
  }

  v20 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1000BE6F8(&v24, v27);
    sub_10083E324(v27, __p, v15, v20);
  }

  *a6 = 0;
LABEL_41:
  nullsub_21();
  return v15;
}

uint64_t sub_10051C178(unint64_t a1, unint64_t a2)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v4 = sub_100518000(off_100B508D8, a1);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E464();
    }

    return 7;
  }

  if (a2 - 4294901761u < 2 || !a2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E498();
    }

    return 3;
  }

  v6 = v4;
  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E4F4();
    }

    return 7;
  }

  v8 = v7;
  if (qword_100B50B88 != -1)
  {
    sub_10083E4E0();
  }

  v9 = sub_1000117DC(qword_100B50B80, a1);
  if (v9)
  {
    v10 = v9;
    if (sub_100067238())
    {
      CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
      if (CTGreenTeaOsLogHandle)
      {
        v12 = CTGreenTeaOsLogHandle;
        if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v10, v19);
          v13 = v20;
          v14 = v19[0];
          sub_1000E5A58(v8, __p);
          v15 = v19;
          if (v13 < 0)
          {
            v15 = v14;
          }

          if (v18 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136446466;
          v22 = v15;
          v23 = 2082;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Session %{public}s is asking to plug device %{public}s", buf, 0x16u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          if (v20 < 0)
          {
            operator delete(v19[0]);
          }
        }
      }
    }
  }

  return sub_100518658(v6, v8);
}

void sub_10051C3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10051C400(unint64_t a1, unint64_t a2)
{
  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v4 = sub_100518000(off_100B508D8, a1);
  if (!v4)
  {
    return 7;
  }

  v5 = v4;
  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v7 = sub_1000E41C0(off_100B508E8, a2);
  if (!v7)
  {
    return 7;
  }

  return sub_1005189F4(v5, v7);
}

uint64_t sub_10051C4C0(unint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v6 = sub_100518000(off_100B508D8, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v9 = sub_1000E41C0(off_100B508E8, a2);
  if (!v9)
  {
    return 7;
  }

  return sub_100518AF4(v7, v9, a3);
}

uint64_t sub_10051C5A0(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = 3;
  if (a2 && a3)
  {
    if (qword_100B508E0 != -1)
    {
      sub_10083E244();
    }

    v9 = sub_100518000(off_100B508D8, a1);
    if (v9)
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      v4 = sub_100518BC8(v9, &__p);
      if (!v4)
      {
        v10 = 0;
        if (a4)
        {
          v11 = __p;
          while (v11 != v16)
          {
            v12 = *v11;
            if (qword_100B508F0 != -1)
            {
              sub_10083E280();
            }

            v13 = sub_10056A4C4(off_100B508E8, a1, v12);
            if (!v13)
            {
              v4 = 7;
              goto LABEL_18;
            }

            *(a2 + 8 * v10++) = v13;
            ++v11;
            if (a4 == v10)
            {
              v10 = a4;
              break;
            }
          }
        }

        v4 = 0;
        *a3 = v10;
      }

LABEL_18:
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }

    else
    {
      return 7;
    }
  }

  return v4;
}

void sub_10051C6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10051C6F8(unint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v6 = sub_100518000(off_100B508D8, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v9 = sub_1000E41C0(off_100B508E8, a2);
  if (!v9)
  {
    return 7;
  }

  return sub_100518B78(v7, v9, a3);
}

uint64_t sub_10051C7D8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 3;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v6 = sub_100518000(off_100B508D8, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  result = 3;
  if (a2 - 4294901761u < 2 || !a2)
  {
    return result;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10083E4CC();
  }

  v9 = sub_1000E41C0(off_100B508E8, a2);
  if (!v9)
  {
    return 7;
  }

  return sub_100518BBC(v7, v9, a3);
}

uint64_t sub_10051C8B8(unint64_t a1, unint64_t a2, int *a3)
{
  if (!a3)
  {
    return 3;
  }

  if (qword_100B508E0 != -1)
  {
    sub_10083E244();
  }

  v6 = sub_100518000(off_100B508D8, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  result = 3;
  if (a2 - 4294901761u >= 2 && a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_10083E4CC();
    }

    v9 = sub_1000E41C0(off_100B508E8, a2);
    if (v9)
    {
      v10 = sub_100518294(v7, v9);
      result = 0;
      *a3 = v10 << 31 >> 31;
      return result;
    }

    return 7;
  }

  return result;
}

uint64_t sub_10051C990(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetLinkKey", v8, 2u);
  }

  if (a1 && a2 && a3)
  {
    if (qword_100B508E0 != -1)
    {
      sub_10083E258();
    }

    if (sub_100518000(off_100B508D8, a1))
    {
      arc4random_buf(a3, 0x10uLL);
      return 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10083E528();
    }

    return 3;
  }
}

uint64_t sub_10051CA8C(unint64_t a1, int *a2, char *a3, uint64_t a4, int a5, _OWORD *a6, unint64_t *a7)
{
  if (a2 && a3 && a6 && a7)
  {
    v19 = *a2;
    v20 = *(a2 + 2);
    v23 = 0uLL;
    v24 = 0;
    sub_1006D1BAC(&v23, a6, 5u);
    if (qword_100B508E0 != -1)
    {
      sub_10083E258();
    }

    if (sub_100518000(off_100B508D8, a1))
    {
      if (qword_100B508F0 != -1)
      {
        sub_10083E280();
      }

      *__p = *a2;
      *&__p[4] = *(a2 + 2);
      v13 = sub_1000E6554(off_100B508E8, __p, 1);
      if (v13)
      {
        if (qword_100B508F0 != -1)
        {
          sub_10083E280();
        }

        sub_10056B7FC(off_100B508E8, v13, a4);
        sub_100007E30(__p, a3);
        v21 = 0;
        sub_100016250(&v21);
        *&v22 = v21;
        *(&v22 + 1) = SWORD2(v21);
        sub_100538494(v13, __p, &v22);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(*__p);
        }

        for (i = 0; i != 31; ++i)
        {
          if (((1 << i) & a5) != 0)
          {
            *&v22 = 0;
            sub_100016250(&v22);
            *__p = v22;
            *&__p[8] = SWORD2(v22);
            sub_100539554(v13, 1 << i, 4, __p, 0);
          }
        }

        if (qword_100B512E8 != -1)
        {
          sub_10083E2A8();
        }

        v15 = sub_1006E7F2C(off_100B512E0, v13, &v23, 0);
        if (qword_100B508F0 != -1)
        {
          sub_10083E280();
        }

        *a7 = sub_10056A4C4(off_100B508E8, a1, v13);
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
        {
          sub_1000BE6F8(&v19, __p);
          sub_10083E3BC();
        }

        v15 = 8;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_10083E464();
      }

      v15 = 7;
    }

    nullsub_21();
  }

  else
  {
    v16 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      v18 = "(Valid Handle)";
      *__p = 136315650;
      *&__p[4] = a3;
      if (!a7)
      {
        v18 = "(NULL)";
      }

      *&__p[12] = 2048;
      *&__p[14] = a2;
      v26 = 2080;
      v27 = v18;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid argument - %s %p %s", __p, 0x20u);
    }

    return 3;
  }

  return v15;
}