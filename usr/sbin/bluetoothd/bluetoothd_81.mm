uint64_t sub_1005BDFB8(uint64_t a1)
{
  v49[0] = 0;
  v49[1] = 0;
  sub_100007F88(v49, a1 + 48);
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 248);
    v4 = *(a1 + 272);
    v5 = *(a1 + 112);
    *buf = 134218496;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    v51 = v4;
    *v52 = 1024;
    *&v52[2] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "configureNextThreshold fDiscoveryScanThresholds:%lu fConnectScanThresholds:%lu fStackStarted:%d", buf, 0x1Cu);
  }

  if (*(a1 + 112) == 1)
  {
    v47 = -1;
    v48 = -1;
    v45 = -1;
    v46 = -1;
    v44 = -1;
    v6 = *(a1 + 232);
    if (v6 == (a1 + 240))
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = sub_1005BDD74(a1, (v6 + 5));
        if (v8)
        {
          if ((*(a1 + 328) & 1) == 0 && (*(v6 + 41) & 1) == 0)
          {
            v9 = *(v6 + 16);
            if (v9)
            {
              v10 = *(v6 + 13);
              if (v10 != v9)
              {
                if (v10)
                {
                  *(v6 + 12) = v9;
                  *(v6 + 13) = v9;
                  v11 = qword_100BCEAD0;
                  v7 = 1;
                  v8 = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO);
                  if (v8)
                  {
                    sub_1005BCCE0(v6 + 40);
                    v12 = v52[1] >= 0 ? buf : *buf;
                    *v64 = 136315138;
                    v65 = v12;
                    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "New coex actuals for scanRequest %s", v64, 0xCu);
                    if ((v52[1] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }
              }
            }
          }
        }

        v13 = sub_1005BD9F8(v8, (v6 + 5), &v48, &v47, &v44);
        v14 = v6[1];
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
            v15 = v6[2];
            v16 = *v15 == v6;
            v6 = v15;
          }

          while (!v16);
        }

        v7 |= v13;
        v6 = v15;
      }

      while (v15 != (a1 + 240));
    }

    v17 = *(a1 + 256);
    if (v17 != (a1 + 264))
    {
      do
      {
        v18 = sub_1005BDD74(a1, (v17 + 7));
        if (v18)
        {
          if ((*(a1 + 328) & 1) == 0 && (*(v17 + 57) & 1) == 0)
          {
            v19 = *(v17 + 20);
            if (v19)
            {
              v20 = *(v17 + 17);
              if (v20 != v19)
              {
                if (v20)
                {
                  *(v17 + 16) = v19;
                  *(v17 + 17) = v19;
                  v21 = qword_100BCEAD0;
                  v7 = 1;
                  v18 = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO);
                  if (v18)
                  {
                    sub_1005BCCE0(v17 + 56);
                    v22 = v52[1] >= 0 ? buf : *buf;
                    *v64 = 136315138;
                    v65 = v22;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "New coex actuals for connection %s", v64, 0xCu);
                    if ((v52[1] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }
                }
              }
            }
          }
        }

        v23 = sub_1005BD9F8(v18, (v17 + 7), &v46, &v45, &v44);
        v24 = v17[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v17[2];
            v16 = *v25 == v17;
            v17 = v25;
          }

          while (!v16);
        }

        v7 |= v23;
        v17 = v25;
      }

      while (v25 != (a1 + 264));
    }

    if (*(a1 + 328))
    {
      if (v48 == -1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v48;
      }

      v27 = v47;
      if (v47 == -1)
      {
        v27 = 0;
      }

      v47 = v27;
      v48 = v26;
      if (v46 == -1)
      {
        v28 = 0;
      }

      else
      {
        v28 = v46;
      }

      v29 = v45;
      if (v45 == -1)
      {
        v29 = 0;
      }

      v45 = v29;
      v46 = v28;
      v30 = v44;
      if (v44 == -1)
      {
        v30 = 0;
      }

      v44 = v30;
    }

    v31 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7 & 1;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "configChanged=%d deltas:", buf, 8u);
      v31 = qword_100BCEAD0;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v48;
      *&buf[8] = 1024;
      *&buf[10] = v47;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "scanTotalRxDeltaMs=%u scanBtMCRxDeltaMs=%u", buf, 0xEu);
      v31 = qword_100BCEAD0;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v46;
      *&buf[8] = 1024;
      *&buf[10] = v45;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "connectTotalRxDeltaMs=%u connectBtMCRxDeltaMs=%u", buf, 0xEu);
    }

    if (*(a1 + 248) || *(a1 + 272))
    {
      if ((v7 & 1) == 0)
      {
        return sub_1000088CC(v49);
      }
    }

    else
    {
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      if ((v7 & 1) == 0)
      {
        return sub_1000088CC(v49);
      }
    }

    *buf = 0;
    sub_100016250(buf);
    v32 = *buf;
    v33 = *&buf[4];
    *(a1 + 296) = *buf;
    *(a1 + 304) = v33;
    if (*(a1 + 328) == 1)
    {
      v34 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v33 + 1000 * v32;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "configChanged! Configuring controller at time %llu", buf, 0xCu);
        v34 = qword_100BCEAD0;
      }

      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (v35)
      {
        *buf = 67111424;
        *&buf[4] = 1;
        *&buf[8] = 1024;
        *&buf[10] = 0;
        LOWORD(v51) = 1024;
        *(&v51 + 2) = v44;
        HIWORD(v51) = 1024;
        *v52 = v48;
        *&v52[4] = 1024;
        v53 = v47;
        v54 = 1024;
        v55 = v46;
        v56 = 1024;
        v57 = v45;
        v58 = 1024;
        v59 = 0;
        v60 = 1024;
        v61 = 0;
        v62 = 1024;
        v63 = 1;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "getScanStatsWithThreshold reset %u ver %u duration %u discovery %u %u conn %u %u numAdvs %u %u canWakeupAP %u", buf, 0x3Eu);
      }

      v37 = sub_10000C7D0(v35, v36);
      v38 = (*(*v37 + 4176))(v37, 1, 0, v44, v48, v47, v46, v45, 0, 1);
      if (v38)
      {
        v39 = qword_100BCEAD0;
        if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
        {
          sub_10084AAE0(v38, v39);
        }
      }
    }

    else
    {
      v40 = v45;
      if (v45 >= v47)
      {
        v40 = v47;
      }

      if (v44 >= v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = v44;
      }

      v42 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "configChanged! Setting soft timer", buf, 2u);
      }

      sub_1005BE6DC(a1, v41);
    }

    sub_100015514((a1 + 128), &stru_100AFF9E0);
  }

  return sub_1000088CC(v49);
}

void sub_1005BE6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BE6DC(uint64_t a1, unsigned int a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 48);
  v4 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "armSoftwareScanRxTimer duration=%u", buf, 8u);
  }

  if ((*(a1 + 328) & 1) == 0 && !*(a1 + 336))
  {
    v5 = qword_100BCEAD0;
    v6 = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO);
    if (v6)
    {
      *buf = 67109120;
      v16 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fSoftwareScanRxTimer %u ms Armed!", buf, 8u);
    }

    v8 = sub_100017F4C(v6, v7);
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v8 + 8));
    *(a1 + 336) = v9;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005BF5D4;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v9, handler);
    v10 = *(a1 + 336);
    v11 = dispatch_time(0x8000000000000000, 1000000 * a2);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 336));
  }

  return sub_1000088CC(v14);
}

void sub_1005BE8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BE8E4(uint64_t a1)
{
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 248);
    v4 = *(a1 + 272);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "evaluateScanRxThresholds fDiscoveryScanThresholds:%lu fConnectScanThresholds:%lu", &v6, 0x16u);
  }

  sub_1005BCFF4(a1);
  sub_1005BD4C8(a1);
  return sub_1005BDFB8(a1);
}

uint64_t sub_1005BE9B4(uint64_t a1, uint64_t *a2)
{
  v46[0] = 0;
  v46[1] = 0;
  sub_100007F88(v46, a1 + 48);
  if (*(a1 + 248))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 272) != 0;
  }

  v39 = v4;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v44 = 0u;
      v45[0] = 0;
      *__p = 0u;
      memset(v42, 0, sizeof(v42));
      v45[1] = 0;

      BYTE1(v42[0]) = 0;
      DWORD1(v42[0]) = 0;
      v7 = sub_10004DFB4(buf, *v6);
      memset(out, 0, sizeof(out));
      uuid_unparse_upper(v7, out);
      sub_100007E30(v40, out);
      if (SBYTE7(v44) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v40;
      *&v44 = v41;
      std::string::append(__p, "-connectionScan");
      v8 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
      {
        if ((SBYTE7(v44) & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        v10 = *(v6 + 8);
        v11 = *(v6 + 12);
        v12 = *(v6 + 16);
        *out = 136315906;
        *&out[4] = v9;
        *&out[12] = 1024;
        *&out[14] = v10;
        *&out[18] = 1024;
        *&out[20] = v11;
        *&out[24] = 1024;
        *&out[26] = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "requestConnectionScanRxThreshold device=%s totalRx=%u btMCRx=%u timeout=%u", out, 0x1Eu);
      }

      memset(out, 0, 24);
      v13 = [*v6 UUIDString];
      v14 = v13;
      sub_100007E30(out, [v13 UTF8String]);

      v15 = sub_1000463C8(a1 + 256, out);
      v16 = *(v6 + 8);
      v17 = *(v6 + 16);
      if (!v16 && !v17)
      {
        v18 = v15;
        if (a1 + 264 != v15)
        {
          LOBYTE(v42[0]) = 0;
          memset(v42 + 8, 0, 24);
          v19 = v45[0];
          v45[0] = 0;

          v20 = v45[1];
          v45[1] = 0;

          *(v42 + 8) = *(v18 + 64);
          LOWORD(v42[0]) = *(v18 + 56);
          DWORD2(v44) = *(v18 + 112);
          DWORD1(v42[0]) = *(v18 + 60);
          v21 = *(v18 + 84);
          DWORD2(v42[1]) = *(v18 + 80);
          HIDWORD(v42[1]) = v21;
          v22 = *(v18 + 120);
          if (v22)
          {
            v23 = objc_retainBlock(v22);
            v24 = v45[0];
            v45[0] = v23;
          }

          v25 = *(v18 + 128);
          if (v25)
          {
            v26 = objc_retainBlock(v25);
            v27 = v45[1];
            v45[1] = v26;
          }

          BYTE1(v42[0]) = 1;
          v16 = *(v6 + 8);
          v17 = *(v6 + 16);
        }
      }

      *(&v42[0] + 1) = v16;
      DWORD2(v42[1]) = v17;
      v28 = objc_retainBlock(*(v6 + 32));
      v29 = v45[1];
      v45[1] = v28;

      DWORD2(v44) = *(v6 + 20);
      v40[0] = out;
      v30 = sub_1005C1234((a1 + 256), out, &unk_1008A9BD0, v40, buf);
      v31 = v42[1];
      *(v30 + 7) = v42[0];
      *(v30 + 9) = v31;
      std::string::operator=((v30 + 11), __p);
      *(v30 + 28) = DWORD2(v44);
      v32 = objc_retainBlock(v45[0]);
      v33 = v30[15];
      v30[15] = v32;

      v34 = objc_retainBlock(v45[1]);
      v35 = v30[16];
      v30[16] = v34;

      if (BYTE1(v42[0]) == 1)
      {
        v36 = qword_100BCEAD0;
        if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
        {
          sub_1005BCCE0(v42);
          v37 = v40;
          if (v41 < 0)
          {
            v37 = v40[0];
          }

          *buf = 136315138;
          v48 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Session %s cancelled", buf, 0xCu);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[0]);
          }
        }
      }

      if (out[23] < 0)
      {
        operator delete(*out);
      }

      if (SBYTE7(v44) < 0)
      {
        operator delete(__p[0]);
      }

      v6 += 40;
    }

    while (v6 != v5);
  }

  sub_100025308(a1, v39);
  return sub_1000088CC(v46);
}

void sub_1005BEDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BEE4C(void *a1, uint64_t **a2)
{
  v50[0] = 0;
  v50[1] = 0;
  sub_100007F88(v50, (a1 + 6));
  if (a1[31])
  {
    v4 = 1;
  }

  else
  {
    v4 = a1[34] != 0;
  }

  v43 = v4;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = a1 + 30;
    do
    {
      v48 = 0u;
      v49[0] = 0;
      *__p = 0u;
      memset(v46, 0, sizeof(v46));
      v49[1] = 0;

      BYTE1(v46[0]) = 0;
      DWORD1(v46[0]) = 0;
      if (qword_100B50B88 != -1)
      {
        sub_10084ABD0();
      }

      if (sub_100618524(qword_100B50B80, *v5))
      {
        sub_100018384(*v5, buf);
        if (SBYTE7(v48) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *&buf[0].__locale_;
        *&v48 = buf[2];
      }

      else
      {
        v68 = 0;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        *v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100008760(buf);
        std::ostream::operator<<();
        std::stringbuf::str();
        if (SBYTE7(v48) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *v51;
        *&v48 = v52;
        buf[0].__locale_ = v45;
        *(&buf[0].__locale_ + *(v45 - 3)) = v44;
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56[1]);
        }

        std::locale::~locale(&buf[2]);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      std::string::append(__p, "-scan");
      v8 = qword_100BCEAD0;
      if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
      {
        if ((SBYTE7(v48) & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        v10 = *(v5 + 8);
        v11 = *(v5 + 12);
        v12 = *(v5 + 16);
        LODWORD(buf[0].__locale_) = 136315906;
        *(&buf[0].__locale_ + 4) = v9;
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = v10;
        WORD1(buf[2].__locale_) = 1024;
        HIDWORD(buf[2].__locale_) = v11;
        LOWORD(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 2) = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "requestScanRxThreshold session=%s totalRx=%u btMCRx=%u timeout=%u", buf, 0x1Eu);
      }

      v13 = *v7;
      if (!*v7)
      {
        goto LABEL_30;
      }

      v14 = *v5;
      v15 = a1 + 30;
      do
      {
        v16 = v13[4];
        v17 = v16 >= v14;
        v18 = v16 < v14;
        if (v17)
        {
          v15 = v13;
        }

        v13 = v13[v18];
      }

      while (v13);
      if (v15 == v7 || v14 < v15[4])
      {
LABEL_30:
        v15 = a1 + 30;
      }

      v19 = *(v5 + 8);
      v20 = *(v5 + 16);
      if (!v19)
      {
        v21 = !HIDWORD(v19) && v20 == 0;
        if (v21 && v15 != v7)
        {
          LOBYTE(v46[0]) = 0;
          memset(v46 + 8, 0, 24);
          v23 = v49[0];
          v49[0] = 0;

          v24 = v49[1];
          v49[1] = 0;

          *(v46 + 8) = *(v15 + 3);
          LOWORD(v46[0]) = *(v15 + 20);
          DWORD2(v48) = *(v15 + 24);
          DWORD1(v46[0]) = *(v15 + 11);
          v25 = *(v15 + 17);
          DWORD2(v46[1]) = *(v15 + 16);
          HIDWORD(v46[1]) = v25;
          v26 = v15[13];
          if (v26)
          {
            v27 = objc_retainBlock(v26);
            v28 = v49[0];
            v49[0] = v27;
          }

          v29 = v15[14];
          if (v29)
          {
            v30 = objc_retainBlock(v29);
            v31 = v49[1];
            v49[1] = v30;
          }

          BYTE1(v46[0]) = 1;
          v19 = *(v5 + 8);
          v20 = *(v5 + 16);
        }
      }

      *(&v46[0] + 1) = v19;
      DWORD2(v46[1]) = v20;
      v32 = objc_retainBlock(*(v5 + 32));
      v33 = v49[0];
      v49[0] = v32;

      DWORD2(v48) = *(v5 + 20);
      DWORD1(v46[0]) = *(v5 + 24);
      buf[0].__locale_ = v5;
      v34 = sub_1005C1468((a1 + 29), v5, &unk_1008A9BD0, buf);
      v35 = v46[1];
      *(v34 + 5) = v46[0];
      *(v34 + 7) = v35;
      std::string::operator=(v34 + 3, __p);
      *(v34 + 24) = DWORD2(v48);
      v36 = objc_retainBlock(v49[0]);
      v37 = v34[13];
      v34[13] = v36;

      v38 = objc_retainBlock(v49[1]);
      v39 = v34[14];
      v34[14] = v38;

      if (BYTE1(v46[0]) == 1)
      {
        v40 = qword_100BCEAD0;
        if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
        {
          sub_1005BCCE0(v46);
          v41 = SHIBYTE(buf[2].__locale_) >= 0 ? buf : buf[0].__locale_;
          *v51 = 136315138;
          *&v51[4] = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Session %s cancelled", v51, 0xCu);
          if (SHIBYTE(buf[2].__locale_) < 0)
          {
            operator delete(buf[0].__locale_);
          }
        }
      }

      if (SBYTE7(v48) < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 40;
    }

    while (v5 != v6);
  }

  sub_100025308(a1, v43);
  return sub_1000088CC(v50);
}

uint64_t sub_1005BF47C(_DWORD *a1, int a2, int a3, int a4, int a5, int a6)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, (a1 + 12));
  v12 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 1024;
    v24 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "scanRxThresholdVSE totalRx=%u totalBTMCRx=%u, totalConnRx=%u, totalConnBTMCRx=%u totalTime=%u", buf, 0x20u);
  }

  a1[88] = a2;
  a1[89] = a3;
  a1[90] = a6;
  a1[91] = a4;
  a1[92] = a5;
  a1[93] = a6;
  sub_1005BE8E4(a1);
  return sub_1000088CC(v14);
}

__n128 sub_1005BF5C4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1005BF5D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "fSoftwareScanRxTimer Timer expired!", buf, 2u);
  }

  sub_1005BB918(v1);
  *buf = 0;
  sub_100016250(buf);
  v3 = *buf;
  v4 = *&buf[4];
  v5 = *(v1 + 296);
  v6 = *(v1 + 304);
  *&buf[6] = 0;
  v13[0] = v5;
  v13[1] = v6;
  if ((sub_100306C80(buf, v13) & 0x80000000) != 0 || (v7 = v4 - v6 + 1000 * (v3 - v5), HIDWORD(v7)))
  {
    v8 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v1 + 304) + 1000 * *(v1 + 296);
      *buf = 134218240;
      *&buf[4] = v4 + 1000 * v3;
      v15 = 2048;
      v16 = v12;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "armSoftwareScanRxTimer: currentTime %llu fSetRxThresholdVSCTime %llu", buf, 0x16u);
    }

    LODWORD(v9) = 0;
    LODWORD(v10) = 0;
  }

  else
  {
    v9 = v7 / 0x3E8;
    v10 = v7 % 0x3E8;
  }

  return sub_1005BF47C(v1, v10 + 1000 * v9, v10 + 1000 * v9, v10 + 1000 * v9, v10 + 1000 * v9, v10 + 1000 * v9);
}

void sub_1005BF790(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v5 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000151C0(a1 + 280);
    sub_1000151C0(&v14);
    v6 = &v12;
    if (v13 < 0)
    {
      v6 = v12;
    }

    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    v16 = v6;
    v17 = 2080;
    v18 = p_p;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "wifiStateChanged: from %s to %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    LODWORD(v8) = DWORD1(v14);
  }

  else
  {
    v8 = HIDWORD(a2);
  }

  v9 = (a1 + 280);
  if (*(a1 + 284) != v8 || *v9 != v14 || *(a1 + 288) != BYTE8(v14))
  {
    *v9 = v14;
    sub_100014FF0(a1);
  }
}

void sub_1005BF904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BF930(os_unfair_lock_s *a1, int a2)
{
  v4 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDP in progress changed to %d", buf, 8u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005BFA34;
  v5[3] = &unk_100AFF980;
  v6 = a2;
  sub_100015514(a1 + 32, v5);
}

void sub_1005BFA64(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10084ABF8();
  }

  v2 = off_100B50908;
  v3 = *(a1 + 32);

  sub_1005BF930(v2, v3);
}

void sub_1005BFAB8(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v26 = *a2;
  v27 = v3;
  v4 = *(a2 + 32);
  v24 = *(a2 + 33);
  v25 = *(a2 + 35);
  *buf = 0;
  sub_100016250(buf);
  v5 = *buf;
  v6 = *&buf[4];
  v7 = *(a1 + 296);
  v8 = *(a1 + 304);
  *&buf[6] = 0;
  v28[0] = v7;
  v28[1] = v8;
  v9 = sub_100306C80(buf, v28);
  if ((v9 & 0x80000000) != 0 || (v11 = v6 - v8 + 1000 * (v5 - v7), HIDWORD(v11)))
  {
    v12 = qword_100BCEAD0;
    v9 = os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      v16 = *(a1 + 304) + 1000 * *(a1 + 296);
      *buf = 134218240;
      *&buf[4] = v6 + 1000 * v5;
      v30 = 2048;
      v31 = v16;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "handleCriticalBLEStats: currentTime %llu fSetRxThresholdVSCTime %llu", buf, 0x16u);
    }

    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = v11 / 0x3E8;
    v14 = v11 % 0x3E8;
  }

  v15 = sub_100007EE8(v9, v10);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v18 = v26;
  v19 = v27;
  v17[2] = sub_1005BFCA8;
  v17[3] = &unk_100AFFA50;
  v20 = v4;
  v21 = v24;
  v22 = v25;
  v23 = v4;
  v17[4] = a1;
  v17[5] = v13;
  v17[6] = v14;
  sub_10000CA94(v15, v17);
}

uint64_t sub_1005BFCA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = *(a1 + 64);
    v7 = *(a1 + 68);
    v8 = *(a1 + 72);
    v9 = *(a1 + 76);
    v10 = *(a1 + 80);
    v11 = *(a1 + 84);
    v12 = *(a1 + 92);
    v13 = *(a1 + 48) + 1000 * *(a1 + 40);
    v15[0] = 67111424;
    v15[1] = v4;
    v16 = 1024;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    v26 = 1024;
    v27 = v10;
    v28 = 1024;
    v29 = v11;
    v30 = 1024;
    v31 = v12;
    v32 = 1024;
    v33 = v13;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "handleCriticalBLEStats: scan time %u MC %u numADVs %u MC %u conn scan time %u MC %u numPassUpAdvs %u MC %u reportReason %u sinceLastVSC %u", v15, 0x3Eu);
  }

  return sub_1005BF47C(v2, *(a1 + 56), *(a1 + 60), *(a1 + 72), *(a1 + 76), *(a1 + 48) + 1000 * *(a1 + 40));
}

uint64_t sub_1005BFDE8(uint64_t a1, int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 48);
  *(a1 + 496) = a2;
  v4 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    if (a2)
    {
      v5 = "yes";
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Game mode enabled: '%s'", buf, 0xCu);
  }

  return sub_1000088CC(v7);
}

void sub_1005BFECC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 48);
  if (!v8 || (*(a1 + 112) & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = [v8 UUIDString];
  sub_100007E30(&v21, [v9 UTF8String]);
  v10 = std::string::append(&v21, "_");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v22, p_p, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v24 = v14->__r_.__value_.__r.__words[2];
  *v23 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (!a4)
  {
    v22.__r_.__value_.__r.__words[0] = v23;
    if (!sub_1005C1724((a1 + 464), v23, &unk_1008A9BD0, &v22, &v21)[7])
    {
      goto LABEL_22;
    }

    sub_1005C1914((a1 + 464), v23);
    v19 = gCBDaemonServer;
    v18 = [v8 UUIDString];
    [v19 recordEventWithDeviceIdentifier:v18 initiator:1 starting:0 useCase:a3];
    goto LABEL_21;
  }

  v22.__r_.__value_.__r.__words[0] = v23;
  if (!sub_1005C1724((a1 + 464), v23, &unk_1008A9BD0, &v22, &v21)[7] && (*(a1 + 496) & 1) == 0)
  {
    v22.__r_.__value_.__r.__words[0] = v23;
    v16 = sub_1005C1724((a1 + 464), v23, &unk_1008A9BD0, &v22, &v21);
    objc_storeStrong(v16 + 7, a2);
    v17 = gCBDaemonServer;
    v18 = [v8 UUIDString];
    [v17 recordEventWithDeviceIdentifier:v18 initiator:1 starting:1 useCase:a3];
LABEL_21:
  }

LABEL_22:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

LABEL_24:
  sub_1000088CC(v25);
}

void sub_1005C012C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(v35 - 80);

  _Unwind_Resume(a1);
}

void sub_1005C01C8(uint64_t a1, char a2, char a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  *(a1 + 226) = a5 != 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10084AC0C();
  }

  v10 = sub_100029630(off_100B508A8);
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        if (qword_100B508D0 != -1)
        {
          sub_10084A9B0();
        }

        if (sub_10078D580(off_100B508C8, v14))
        {
          v15 = qword_100BCEAD0;
          if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
          {
            v16 = "not connected";
            if (*(a1 + 226))
            {
              v16 = "connected";
            }

            *buf = 136315138;
            v32 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "MIDI: Low latency HID devices %s.", buf, 0xCu);
          }

          if (a5 || *(a1 + 227) == 1)
          {
            if (qword_100B508B0 != -1)
            {
              sub_10084AC20();
            }

            v17 = 0xFFFFFFFFLL;
          }

          else
          {
            if (qword_100B508B0 != -1)
            {
              sub_10084AC20();
            }

            v17 = 4294967284;
          }

          sub_1007489DC(off_100B508A8, v14, v17, 0);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v18 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
      v11 = v18;
    }

    while (v18);
  }

  if ((a3 + a2) < 4u)
  {
    v19 = a8;
  }

  else
  {
    v19 = 0;
  }

  if (*(a1 + 225) != v19)
  {
    v20 = qword_100BCEAD0;
    if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
    {
      v21 = "False";
      if (v19)
      {
        v21 = "True";
      }

      *buf = 136315138;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Bluetooth Daemon: AoSStateChanged, isAoSAllowed: %s", buf, 0xCu);
    }

    *(a1 + 225) = v19;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1005C0504;
    v25[3] = &unk_100AFF980;
    v26 = v19;
    sub_100015514((a1 + 128), v25);
  }
}

void sub_1005C0548(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017F4C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1005C0608;
  v5[3] = &unk_100AFFA80;
  v5[4] = a1;
  sub_1005C19D8(v6, a2);
  sub_10000CA94(v4, v5);
  sub_10000CEDC(v6, v6[1]);
}

void sub_1005C0608(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = a1 + 48;
  v2 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v1;
  v5 = v2;
  do
  {
    if (*(v5 + 28) >= 1)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < 1));
  }

  while (v5);
  if (v4 == v1 || *(v4 + 28) >= 2)
  {
LABEL_8:
    v4 = v1;
  }

  v6 = *(v1 - 16);
  if (!v2)
  {
    goto LABEL_16;
  }

  v7 = v1;
  do
  {
    if (*(v2 + 28) >= 2)
    {
      v7 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < 2));
  }

  while (v2);
  if (v7 == v1 || *(v7 + 28) >= 3)
  {
LABEL_16:
    v7 = v1;
  }

  if (v4 != v1 && *(v4 + 32) >= 1)
  {
    *(v6 + 227) = 1;
    v20 = (v6 + 227);
LABEL_25:
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    if (qword_100B508B0 != -1)
    {
      sub_10084AC0C();
    }

    v9 = sub_100029630(off_100B508A8);
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v10)
    {
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          if (qword_100B508D0 != -1)
          {
            sub_10084A9B0();
          }

          if (sub_10078D580(off_100B508C8, v13))
          {
            v14 = qword_100BCEAD0;
            if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_INFO))
            {
              v15 = "not connected";
              if (*v20)
              {
                v15 = "connected";
              }

              *buf = 136315138;
              v31 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "MIDI: LEA device %s.", buf, 0xCu);
            }

            if (qword_100B508B0 != -1)
            {
              sub_10084AC20();
            }

            sub_1007489DC(off_100B508A8, v13, 0xFFFFFFFFLL, 0);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v10);
    }

    goto LABEL_44;
  }

  if (v7 == v1)
  {
    *(v6 + 227) = 0;
    v20 = (v6 + 227);
  }

  else
  {
    v8 = *(v7 + 32);
    *(v6 + 227) = v8 > 0;
    v20 = (v6 + 227);
    if (v8 > 0)
    {
      goto LABEL_25;
    }
  }

  if (*(v6 + 226) == 1)
  {
    goto LABEL_25;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10084AC0C();
  }

  v9 = sub_100029630(off_100B508A8);
  v16 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        if (qword_100B508D0 != -1)
        {
          sub_10084A9B0();
        }

        if (sub_10078D580(off_100B508C8, v19))
        {
          if (qword_100B508B0 != -1)
          {
            sub_10084AC20();
          }

          sub_1007489DC(off_100B508A8, v19, 4294967284, 0);
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

LABEL_44:
}

char *sub_1005C0C58(void *a1, char *__src, char *a3)
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

void sub_1005C0DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C0E2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1005C0E2C(a1, *a2);
    sub_1005C0E2C(a1, a2[1]);
    sub_1005C0E8C(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_1005C0E8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    v3 = *(a2 + 40);

    operator delete(v3);
  }
}

void sub_1005C0EE4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1005C0EE4(a1, *a2);
    sub_1005C0EE4(a1, a2[1]);
    sub_1005C0F44(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_1005C0F44(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1005C107C(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1005C10EC(a1, v4);
  return 1;
}

uint64_t *sub_1005C10EC(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_1005C0E8C(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t sub_1005C1138(uint64_t **a1, const void **a2)
{
  v3 = sub_1000463C8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_1005C1180(a1, v3);
  return 1;
}

uint64_t *sub_1005C1180(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_10002717C(a1, a2);
  sub_1005C0F44(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void *sub_1005C1234(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_1000867EC(a1, &v6, a2);
  if (!result)
  {
    sub_1005C12D8();
  }

  return result;
}

void sub_1005C1388(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1005C13A4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1005C13A4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_1005C0F44(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void *sub_1005C1468(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

void *sub_1005C1724(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_1000867EC(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1005C17D8();
  }

  return v5;
}

char **sub_1005C1878(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1005C18C4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1005C18C4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1005C1914(uint64_t **a1, const void **a2)
{
  v3 = sub_1000463C8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  sub_1005C18C4((v4 + 4));
  operator delete(v4);
  return 1;
}

void *sub_1005C19D8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1005C1A30(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1005C1A30(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005C1AB8(v5, (v5 + 8), v4 + 7, v4 + 7);
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

void *sub_1005C1AB8(uint64_t **a1, uint64_t *a2, int *a3, void *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_100588944(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_1005C1B54(uint64_t a1)
{
  *a1 = off_100AFFD68;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  sub_100044BBC((a1 + 16));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100044BBC((a1 + 104));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100044BBC((a1 + 192));
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a1 + 288;
  *(a1 + 304) = 0;
  return a1;
}

void sub_1005C1BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v11;
  a10 = v13;
  sub_1005C3FA4(&a10);
  sub_10007A068((v12 + 3));
  v15 = *v12;
  if (*v12)
  {
    *(v10 + 88) = v15;
    operator delete(v15);
  }

  sub_10007A068(v10 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C1C3C(uint64_t a1)
{
  *a1 = off_100AFFD68;
  v2 = (a1 + 168);
  sub_1005C3FF8(a1 + 168, *(a1 + 168));
  sub_10000CEDC(a1 + 280, *(a1 + 288));
  v3 = *(a1 + 256);
  if (v3)
  {
    *(a1 + 264) = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 192);
  v6 = v2;
  sub_1005C3FA4(&v6);
  sub_10007A068(a1 + 104);
  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 16);
  return a1;
}

void sub_1005C1CE8(uint64_t a1)
{
  sub_1005C1C3C(a1);

  operator delete();
}

uint64_t sub_1005C1D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 16);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = (a1 + 80);
  v11 = *a3;
  v12 = a3[1];
  v17 = *a3;
  v18 = v12;
  if (v8 != v9)
  {
    while (*v8 != a2 || v17 != v8[1] || v18 != v8[2])
    {
      v8 += 5;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_10:
    v16 = a2;
    v17 = v11;
    v18 = v12;
    v19 = -1;
    v20 = a4;
    sub_1005C406C(v10, &v16);
  }

  sub_1000088CC(v15);
  return 0;
}

void sub_1005C1DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C1DF8(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v6 = *(a1 + 12);
  if (v6 != 2048)
  {
    if (v6 == -1)
    {
      sub_1000DEEA4(a2, &v42);
      if (SHIBYTE(v44) < 0)
      {
        v24 = v43;
        operator delete(v42);
        if (v24)
        {
          return 1;
        }
      }

      else if (HIBYTE(v44))
      {
        return 1;
      }

      *a3 |= 4u;
      return 1;
    }

    return 0;
  }

  if (!sub_10053C3E8(a2))
  {
    if ((sub_1005C27C8(a1, a2) & 1) == 0 && *(a2 + 793) != 1)
    {
      return 0;
    }

    v19 = sub_1005C27C8(a1, a2);
    v20 = qword_100BCE8F0;
    v21 = os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        sub_1000E5A58(a2, &v42);
        if (v44 >= 0)
        {
          v22 = &v42;
        }

        else
        {
          v22 = v42;
        }

        *__p = 136446210;
        *&__p[4] = v22;
        v23 = "EIR matched for device %{public}s, requesting SDP";
        goto LABEL_52;
      }
    }

    else if (v21)
    {
      sub_1000E5A58(a2, &v42);
      if (v44 >= 0)
      {
        v27 = &v42;
      }

      else
      {
        v27 = v42;
      }

      *__p = 136446210;
      *&__p[4] = v27;
      v23 = "EIR previously matched for device %{public}s, requesting SDP for deadvertised service(s)";
LABEL_52:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v23, __p, 0xCu);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(v42);
      }
    }

    v7 = 0;
    *a3 |= 0x10u;
    return v7;
  }

  v41 = xmmword_1008A9EC0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (sub_10053BFB4(a2, &v41, 0xF000u, &v42) && v43 - v42 == 16)
  {
    v10 = *v42;
    v11 = *(v42 + 1);
    v12 = qword_100BCE8F0;
    if (v10 == 1 && v11 == 1)
    {
      v30 = *(v42 + 4);
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
      {
        sub_1000E5A58(a2, __p);
        v31 = v46 >= 0 ? __p : *__p;
        *buf = 136446210;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Device %{public}s supports SDP dirty byte caching", buf, 0xCu);
        if (v46 < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10054BEC0(a2, &v40))
      {
        v32 = qword_100BCE8F0;
        if (v30 != v40)
        {
          if (a4)
          {
            if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a2, __p);
              v38 = v46 >= 0 ? __p : *__p;
              *buf = 136446210;
              v48 = v38;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "EIR is newer than SDP for device %{public}s, re-requesting SDP", buf, 0xCu);
              if (v46 < 0)
              {
                operator delete(*__p);
              }
            }

            goto LABEL_30;
          }

          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
          {
            sub_1000E5A58(a2, __p);
            v39 = v46 >= 0 ? __p : *__p;
            *buf = 136446210;
            v48 = v39;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "SDP is newer than EIR for device %{public}s, clearing EIR", buf, 0xCu);
            if (v46 < 0)
            {
              operator delete(*__p);
            }
          }

          sub_10054B440(a2);
          goto LABEL_62;
        }

        if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
        {
          goto LABEL_62;
        }

        sub_1000E5A58(a2, __p);
        if (v46 >= 0)
        {
          v33 = __p;
        }

        else
        {
          v33 = *__p;
        }

        *buf = 136446210;
        v48 = v33;
        v34 = "Both EIR and SDP are up-to-date for device %{public}s";
        v35 = v32;
      }

      else
      {
        v36 = qword_100BCE8F0;
        if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
        {
          goto LABEL_62;
        }

        sub_1000E5A58(a2, __p);
        if (v46 >= 0)
        {
          v37 = __p;
        }

        else
        {
          v37 = *__p;
        }

        *buf = 136446210;
        v48 = v37;
        v34 = "We have SDP but not EIR for device %{public}s";
        v35 = v36;
      }

      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, v34, buf, 0xCu);
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_10084AC48(v10, v11, v12);
    }
  }

  v14 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    sub_1000E5A58(a2, __p);
    v15 = v46 >= 0 ? __p : *__p;
    *buf = 136446210;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Device %{public}s does not support SDP dirty byte caching", buf, 0xCu);
    if (v46 < 0)
    {
      operator delete(*__p);
    }
  }

  v16 = sub_10054BEC0(a2, &v40);
  v17 = qword_100BCE8F0;
  if (v16)
  {
    if (a4)
    {
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v18 = v46 >= 0 ? __p : *__p;
        *buf = 136446210;
        v48 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EIR is newer than SDP for device %{public}s, re-requesting SDP", buf, 0xCu);
        if (v46 < 0)
        {
          operator delete(*__p);
        }
      }

LABEL_30:
      sub_100536730(a2);
      v7 = 0;
      *a3 |= 0x10u;
      goto LABEL_63;
    }

    if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_62;
    }

    sub_1000E5A58(a2, __p);
    if (v46 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = *__p;
    }

    *buf = 136446210;
    v48 = v28;
    v26 = "Both EIR and SDP are up-to-date for device %{public}s";
  }

  else
  {
    if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_62;
    }

    sub_1000E5A58(a2, __p);
    if (v46 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = *__p;
    }

    *buf = 136446210;
    v48 = v25;
    v26 = "We have SDP but not EIR for device %{public}s";
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
  if (v46 < 0)
  {
LABEL_61:
    operator delete(*__p);
  }

LABEL_62:
  v7 = sub_1005C2538(a1, a2);
LABEL_63:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  return v7;
}

void sub_1005C24EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C2538(uint64_t a1, uint64_t a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 104);
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  if (v4 == v5)
  {
LABEL_8:
    if (*(a2 + 793) == 1)
    {
      v10 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, &__p);
        if (v19 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136446210;
        v22 = p_p;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SDP previously matched for device %{public}s, but no longer does", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p);
        }
      }

      *(a2 + 793) = 0;
      v12 = 1;
      goto LABEL_26;
    }

    v12 = 0;
  }

  else
  {
    while (1)
    {
      v6 = *(v4 + 8);
      __p = &off_100AE0A78;
      v18 = v6;
      if (v6)
      {
        sub_10000C69C(v6);
      }

      v7 = sub_10000C5F8(&__p);
      v8 = sub_10000C5E0(&__p);
      v9 = sub_10054D4D0(a2, v7, v8);
      __p = &off_100AE0A78;
      if (v18)
      {
        sub_10000C808(v18);
      }

      if (v9)
      {
        break;
      }

      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_8;
      }
    }

    v12 = 1;
    *(a2 + 793) = 1;
  }

  v13 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v14 = "did not match";
    if (v12)
    {
      v14 = "matched";
    }

    if (v19 >= 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p;
    }

    *buf = 136446466;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SDP %{public}s for device %{public}s", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_26:
  sub_1000088CC(v20);
  return v12;
}

void sub_1005C278C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C27C8(uint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 104);
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  if (v4 == v5)
  {
    v10 = 0;
  }

  else
  {
    v6 = v4 + 16;
    do
    {
      v7 = *(v6 - 8);
      v13 = &off_100AE0A78;
      v14 = v7;
      if (v7)
      {
        sub_10000C69C(v7);
      }

      v8 = sub_10000C5F8(&v13);
      v9 = sub_10000C5E0(&v13);
      v10 = sub_10054C108(a2, v8, v9);
      v13 = &off_100AE0A78;
      if (v14)
      {
        sub_10000C808(v14);
      }

      if (v6 == v5)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v6 += 16;
    }

    while ((v11 & 1) == 0);
  }

  sub_1000088CC(v15);
  return v10;
}

void sub_1005C28B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005C28DC(uint64_t a1)
{
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Enabling Reporting Duplicates.", v3, 2u);
  }

  *(a1 + 304) = 1;
}

void sub_1005C2950(uint64_t a1)
{
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling Reporting Duplicates.", v3, 2u);
  }

  *(a1 + 304) = 0;
}

uint64_t sub_1005C29C0(uint64_t a1, const void *a2, size_t a3)
{
  v3 = 3;
  if (a2 && a3 - 2049 >= 0xFFFFFFFFFFFFF800)
  {
    v18[0] = 0;
    v18[1] = 0;
    sub_100007F88(v18, a1 + 104);
    if (*(a1 + 176) - *(a1 + 168) < 0x1F1uLL)
    {
      v16 = 0;
      v17 = 0;
      sub_10000C704(&v16, a2, a3);
      v8 = *(a1 + 168);
      v9 = *(a1 + 176);
      if (v8 == v9)
      {
LABEL_14:
        sub_1005C2BE0((a1 + 168), &v16);
      }

      else
      {
        while (1)
        {
          v10 = *(v8 + 8);
          v14 = &off_100AE0A78;
          v15 = v10;
          if (v10)
          {
            sub_10000C69C(v10);
          }

          if (sub_1000AF598(&v14, &v16))
          {
            break;
          }

          v14 = &off_100AE0A78;
          if (v15)
          {
            sub_10000C808(v15);
          }

          v8 += 16;
          if (v8 == v9)
          {
            goto LABEL_14;
          }
        }

        v11 = qword_100BCE8F0;
        if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Key already exists", v13, 2u);
        }

        v14 = &off_100AE0A78;
        if (v15)
        {
          sub_10000C808(v15);
        }
      }

      v16 = &off_100AE0A78;
      if (v17)
      {
        sub_10000C808(v17);
      }

      v3 = 0;
    }

    else
    {
      v7 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
      {
        sub_10084ACD0(v7);
      }

      v3 = 4;
    }

    sub_1000088CC(v18);
  }

  return v3;
}

void sub_1005C2B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, ...)
{
  va_start(va, a13);
  if (a13)
  {
    sub_10000C808(a13);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C2BE0(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005C4394(a1, a2);
  }

  else
  {
    sub_1005C4338(a1, a2);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1005C2C20(uint64_t a1, const void *a2, size_t a3)
{
  result = 3;
  if (a2 && a3 - 2049 >= 0xFFFFFFFFFFFFF800)
  {
    v7 = 0;
    v8 = 0;
    sub_10000C704(&v7, a2, a3);
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, a1 + 104);
    v5 = sub_1005C2D94(*(a1 + 168), *(a1 + 176), &v7);
    sub_1005C2D1C(a1 + 168, v5, *(a1 + 176));
    sub_1000088CC(v6);
    v7 = &off_100AE0A78;
    if (v8)
    {
      sub_10000C808(v8);
    }

    return 0;
  }

  return result;
}

void sub_1005C2CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (**a11)(), atomic_uint *a12)
{
  sub_1000088CC(&a9);
  a11 = &off_100AE0A78;
  if (a12)
  {
    sub_10000C808(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005C2D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      sub_10000AE20(v7, v4);
      v4 += 16;
      v7 += 16;
    }

    sub_1005C3FF8(a1, v7);
  }

  return a2;
}

uint64_t sub_1005C2D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!sub_1000AF598(v3, a3))
    {
      v3 += 16;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 16; i != a2; i += 16)
      {
        if (!sub_1000AF598(i, a3))
        {
          sub_10000AE20(v3, i);
          v3 += 16;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1005C2E30(uint64_t a1)
{
  *(a1 + 8) = 0;
  sub_1005C2E80(a1, 0, 0, 0);

  return sub_1005C31D0(a1, 0x4E20u);
}

uint64_t sub_1005C2E80(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_100AFFE80[a2];
  }

  v8 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sending '%{public}s' event", &buf, 0xCu);
  }

  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 16);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  if (v9 != v10)
  {
    buf = 0uLL;
    v21 = 0;
    sub_1005C4760(&buf, v9, v10, 0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3));
    sub_10000801C(v19);
    v11 = buf;
    if (buf != *(&buf + 1))
    {
      do
      {
        if (v11[1])
        {
          if (a3)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10084AD14();
            }

            v12 = sub_10056A4C4(off_100B508E8, *v11, a3);
          }

          else
          {
            v12 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_10084AD3C();
          }

          if (sub_100076290(qword_100B50B80, *v11))
          {
            v13 = v12 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            if (qword_100B540D0 != -1)
            {
              sub_10084ADA4();
            }

            operator new();
          }

          if (a2 != 1)
          {
            v14 = qword_100BCE8F0;
            if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
            {
              sub_10084AD64(&v17, v18, v14);
            }
          }

          sub_100007FB8(v19);
          v15 = sub_1005C4890(*(a1 + 80), *(a1 + 88), *v11);
          if (v15 != *(a1 + 88))
          {
            *(a1 + 88) = v15;
          }

          sub_10000801C(v19);
        }

        v11 += 5;
      }

      while (v11 != *(&buf + 1));
      v11 = buf;
    }

    if (v11)
    {
      *(&buf + 1) = v11;
      operator delete(v11);
    }
  }

  return sub_1000088CC(v19);
}

void sub_1005C3194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C31D0(void *a1, unsigned int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, (a1 + 24));
  v4 = a1[32];
  if (v4 != a1[33])
  {
    do
    {
      v8 = *v4;
      v7 = 0uLL;
      sub_1005377D0(v8, &v7);
      *&v7 = v7 + (*(&v7 + 1) + a2) / 0x3E8;
      *(&v7 + 1) = (*(&v7 + 1) + a2) % 0x3E8;
      LODWORD(v10) = v7;
      HIDWORD(v10) = WORD4(v7);
      if (sub_100306E3C(&v10) && (v10 = &v8, *(sub_1005C468C((a1 + 35), &v8, &unk_1008A9BD0, &v10) + 10) >= 1))
      {
        sub_10000801C(v9);
        (*(*a1 + 48))(a1, v8);
        sub_100007FB8(v9);
        v4 = a1[32];
      }

      else
      {
        v10 = &v8;
        v5 = sub_1005C468C((a1 + 35), &v8, &unk_1008A9BD0, &v10);
        ++*(v5 + 10);
        ++v4;
      }
    }

    while (v4 != a1[33]);
    sub_10000801C(v9);
  }

  return sub_1000088CC(v9);
}

void sub_1005C335C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C3388(uint64_t a1, void *a2)
{
  v24[1] = 0;
  v25 = a2;
  v24[0] = 0;
  sub_100007F88(v24, a1 + 192);
  __p[0] = &v25;
  *(sub_1005C468C(a1 + 280, &v25, &unk_1008A9BD0, __p) + 10) = 0;
  if (sub_1000E69B8(a1 + 256, v25))
  {
    if (*(a1 + 304) == 1)
    {
      v3 = v25;
      v4 = sub_100537A38(v25);
      sub_1005C35D8(a1, 0, v3, v4);
      v5 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v25, __p);
        if (v23 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *buf = 136446210;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reporting discovery of previously reported device %{public}s.", buf, 0xCu);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else
  {
    v8 = *(a1 + 264);
    v7 = *(a1 + 272);
    if (v8 >= v7)
    {
      v10 = *(a1 + 256);
      v11 = (v8 - v10) >> 3;
      if ((v11 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v12 = v7 - v10;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        sub_100008108(a1 + 256, v14);
      }

      *(8 * v11) = v25;
      v9 = 8 * v11 + 8;
      v15 = *(a1 + 256);
      v16 = *(a1 + 264) - v15;
      v17 = (8 * v11 - v16);
      memcpy(v17, v15, v16);
      v18 = *(a1 + 256);
      *(a1 + 256) = v17;
      *(a1 + 264) = v9;
      *(a1 + 272) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v8 = v25;
      v9 = (v8 + 1);
    }

    *(a1 + 264) = v9;
    sub_10000801C(v24);
    v19 = v25;
    v20 = sub_100537A38(v25);
    sub_1005C35D8(a1, 0, v19, v20);
  }

  return sub_1000088CC(v24);
}

void sub_1005C35B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C35D8(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    v7 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_FAULT))
    {
      sub_10084ADCC(v7);
    }
  }

  if (a2 > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_100AFFEA0[a2];
  }

  v9 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a3, &__p);
    v10 = v23 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v8;
    *&buf[12] = 2082;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending '%{public}s' event for device %{public}s", buf, 0x16u);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 16);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  if (v11 != v12)
  {
    __p = 0;
    v22 = 0;
    v23 = 0;
    sub_1005C4760(&__p, v11, v12, 0xCCCCCCCCCCCCCCCDLL * ((v12 - v11) >> 3));
    sub_10000801C(buf);
    v13 = __p;
    if (__p != v22)
    {
      do
      {
        if (v13[2])
        {
          if (a3)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10084AD14();
            }

            v14 = sub_10056A4C4(off_100B508E8, *v13, a3);
          }

          else
          {
            v14 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_10084AD3C();
          }

          if (sub_100076290(qword_100B50B80, *v13))
          {
            v15 = v14 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            if (qword_100B540D0 != -1)
            {
              sub_10084ADA4();
            }

            operator new();
          }

          v16 = qword_100BCE8F0;
          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
          {
            sub_10084AD64(&v19, v20, v16);
          }

          sub_100007FB8(buf);
          v17 = sub_1005C4890(*(a1 + 80), *(a1 + 88), *v13);
          if (v17 != *(a1 + 88))
          {
            *(a1 + 88) = v17;
          }

          sub_10000801C(buf);
        }

        v13 += 5;
      }

      while (v13 != v22);
      v13 = __p;
    }

    if (v13)
    {
      v22 = v13;
      operator delete(v13);
    }
  }

  return sub_1000088CC(buf);
}

void sub_1005C394C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C3988(_DWORD *a1, void *a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, (a1 + 48));
  v4 = sub_1000E69B8((a1 + 64), a2);
  sub_10000801C(v13);
  if (a1[3] == 2048)
  {
    if (v4)
    {
      LODWORD(__p[0]) = 0;
      if ((sub_1005C1DF8(a1, a2, __p, 0) & 1) == 0)
      {
        v5 = qword_100BCE8F0;
        if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, __p);
          if (v12 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          *buf = 136446210;
          v15 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device %{public}s no longer matches our service list", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v7 = (*a1 + 48);
        goto LABEL_16;
      }

LABEL_17:
      v9 = sub_100537A38(a2);
      sub_1005C35D8(a1, 2u, a2, v9);
      return sub_1000088CC(v13);
    }

    LODWORD(__p[0]) = 0;
    if (!sub_1005C1DF8(a1, a2, __p, 0))
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_17;
    }

    v8 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Got a device changed call for one we haven't found yet...", __p, 2u);
    }
  }

  v7 = (*a1 + 32);
LABEL_16:
  (*v7)(a1, a2);
  return sub_1000088CC(v13);
}

void sub_1005C3BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C3BE0(uint64_t a1, void *a2)
{
  v7[1] = 0;
  v8 = a2;
  v7[0] = 0;
  sub_100007F88(v7, a1 + 192);
  if (sub_10056923C((a1 + 256), a2))
  {
    sub_100075DC4((a1 + 280), &v8);
    sub_10000801C(v7);
    v4 = v8;
    v5 = sub_100537A38(v8);
    sub_1005C35D8(a1, 1u, v4, v5);
  }

  return sub_1000088CC(v7);
}

void sub_1005C3C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C3CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1005C3D40(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1005C3D40(a1, *(a1 + 56));
    if (result)
    {
      return sub_10051BAF0(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), a4);
    }
  }

  return result;
}

BOOL sub_1005C3D40(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_10084AE50();
  }

  v3 = qword_100B50B80;

  return sub_100618944(v3, a2);
}

uint64_t sub_1005C3DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1005C3D40(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1005C3D40(a1, *(a1 + 56));
    if (result)
    {
      return sub_10051BAF0(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), a4);
    }
  }

  return result;
}

uint64_t sub_1005C3E54(uint64_t *a1)
{
  result = sub_1005C3D40(a1, a1[2]);
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

uint64_t sub_1005C3EC8(uint64_t *a1)
{
  result = sub_1005C3D40(a1, a1[2]);
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

void sub_1005C3FA4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005C3FF8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1005C3FF8(uint64_t result, uint64_t a2)
{
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = v4 - 16;
    do
    {
      *(v4 - 16) = &off_100AE0A78;
      v4 -= 16;
      v6 = *(v4 + 8);
      if (v6)
      {
        sub_10000C808(v6);
      }

      v5 -= 16;
    }

    while (v4 != a2);
  }

  *(result + 8) = a2;
}

uint64_t sub_1005C406C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005C40CC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1005C40CC(uint64_t *a1, uint64_t a2)
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

  v14 = a1;
  if (v6)
  {
    sub_1005C42E0(a1, v6);
  }

  v7 = 40 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = *(a2 + 32);
  v12 = 40 * v2 + 40;
  sub_1005C4258(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 40) % 0x28uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_1005C4208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005C4258(uint64_t *result, void *a2)
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
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 24) = *(v2 + 24);
      *(v5 + 32) = *(v2 + 32);
      v2 += 40;
      v5 += 40;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_1005C42E0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1005C4338(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  *v3 = &off_100AE0A78;
  v3[1] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  *(a1 + 8) = v3 + 2;
}

uint64_t sub_1005C4394(void *a1, uint64_t a2)
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

  v20 = a1;
  if (v7)
  {
    sub_1005C44C8(a1, v7);
  }

  v8 = (16 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (16 * v2);
  v9 = *(a2 + 8);
  *v8 = &off_100AE0A78;
  v8[1] = v9;
  if (v9)
  {
    sub_10000C69C(v9);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 16 * v2;
  }

  *&v19 = v10 + 16;
  v11 = a1[1];
  v12 = (v8 + *a1 - v11);
  sub_1005C4510(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1005C45DC(&v17);
  return v16;
}

void sub_1005C44B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1005C45DC(va);
  _Unwind_Resume(a1);
}

void sub_1005C44C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1005C4510(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a4;
    v8 = a2;
    do
    {
      v9 = v8[1];
      *v4 = &off_100AE0A78;
      v4[1] = v9;
      if (v9)
      {
        sub_10000C69C(v9);
      }

      v8 += 2;
      v4 += 2;
      v7 += 2;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      do
      {
        *v6 = &off_100AE0A78;
        v11 = v6[1];
        if (v11)
        {
          sub_10000C808(v11);
        }

        v6 += 2;
        v10 += 2;
      }

      while (v6 != a3);
    }
  }
}

uint64_t sub_1005C45DC(uint64_t a1)
{
  sub_1005C4614(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005C4614(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  while (v2 != a2)
  {
    *(result + 16) = v2 - 16;
    *(v2 - 16) = &off_100AE0A78;
    v5 = *(v2 - 8);
    if (v5)
    {
      sub_10000C808(v5);
      v2 = *(result + 16);
    }

    else
    {
      v2 -= 16;
    }
  }
}

void *sub_1005C468C(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t *sub_1005C4760(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1005C47DC(result, a4);
  }

  return result;
}

void sub_1005C47DC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1005C42E0(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_1005C4890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3)
    {
      result += 40;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 40; i != a2; i += 40)
      {
        if (*i != a3)
        {
          *result = *i;
          *(result + 8) = *(i + 8);
          *(result + 24) = *(i + 24);
          *(result + 32) = *(i + 32);
          result += 40;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005C4974(uint64_t a1)
{
  *(a1 + 68) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = off_100AF0C10;
  sub_100044BBC((a1 + 8));
  *(a1 + 72) = 0;
  *a1 = off_100AFFEC8;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 1;
  return a1;
}

uint64_t sub_1005C4A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  if (*(a1 + 111) < 0)
  {
    sub_100008904(a2, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    *a2 = *(a1 + 88);
    *(a2 + 16) = *(a1 + 104);
  }

  return sub_1000088CC(v5);
}

void sub_1005C4A80(uint64_t a1, void *a2)
{
  v4 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 8);
  objc_storeStrong((a1 + 72), a2);
  v5 = [*(a1 + 72) getLocalUrl];
  v6 = [v5 absoluteString];
  std::string::assign((a1 + 88), [v6 UTF8String]);

  std::string::append((a1 + 88), "device_workarounds.db");
  sub_1000088CC(v7);
}

void sub_1005C4B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1005C4B64(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *a1 = off_100AF0C10;

  sub_10007A068(a1 + 8);
  return a1;
}

void sub_1005C4BC4(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *a1 = off_100AF0C10;

  sub_10007A068(a1 + 8);

  operator delete();
}

void sub_1005C4C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100375F94(a1, "LEConnectedAudioSendThread");
  *v6 = off_100AFFEF0;
  *(v6 + 176) = a2;
  *(v6 + 184) = a3;
  *(v6 + 192) = 0;
  *(v6 + 216) = 0;
  *(v6 + 224) = 0;
  operator new[]();
}

uint64_t sub_1005C4CF0(void *a1)
{
  *a1 = off_100AFFEF0;
  if (a1[25])
  {
    operator delete[]();
  }

  return sub_100375A90(a1);
}

void sub_1005C4D60(void *a1)
{
  sub_1005C4CF0(a1);

  operator delete();
}

uint64_t sub_1005C4DA4(uint64_t a1)
{
  v2 = sub_10077EA1C(*(a1 + 184));
  if (!v2)
  {
    return v2;
  }

  v3 = *(a1 + 232);
  switch(v3)
  {
    case 0:
      if (!(*(*a1 + 112))(a1))
      {
        return v2;
      }

      *(a1 + 232) = 1;
      goto LABEL_8;
    case 2:
LABEL_9:
      ++*(a1 + 193);
      *(a1 + 216) = 0;
      *(a1 + 224) = 0;
      *(a1 + 232) = 0;
      return v2;
    case 1:
LABEL_8:
      ++*(a1 + 192);
      if ((*(*a1 + 120))(a1))
      {
        goto LABEL_9;
      }

      break;
  }

  return v2;
}

BOOL sub_1005C4E7C(uint64_t a1)
{
  v1 = *(*(a1 + 176) + 16) * *(*(a1 + 176) + 136);
  v2 = *(a1 + 216);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_10084AE64(v4);
    }

    return 1;
  }

  else
  {
    v7 = sub_1003A2C94(*(a1 + 184), *(a1 + 200), v1 - v2);
    *(a1 + 216) += v7;
    return v7 == v3;
  }
}

uint64_t sub_1005C4F0C(void *a1)
{
  v1 = a1[22];
  v2 = a1[25];
  v3 = a1[27];
  a1[28] += v3;
  sub_1005FEEA8(v1, v2, v3);
  return 1;
}

uint64_t sub_1005C4F44(uint64_t a1)
{
  *a1 = off_100AFFF80;
  *(a1 + 8) = off_100B00058;
  *(a1 + 16) = off_100B00078;
  *(a1 + 24) = off_100B000A0;
  *(a1 + 32) = off_100B000C8;
  *(a1 + 40) = off_100B000F8;
  *(a1 + 48) = &off_100B00158;
  sub_100044BBC((a1 + 56));
  *(a1 + 120) = 0;
  sub_100044BBC((a1 + 128));
  *(a1 + 192) = 0;
  sub_100044BBC((a1 + 200));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = a1 + 272;
  sub_100044BBC((a1 + 288));
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 352) = 0u;
  sub_100044BBC((a1 + 400));
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = a1 + 472;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  sub_100044BBC((a1 + 528));
  *(a1 + 600) = 0u;
  *(a1 + 592) = a1 + 600;
  return a1;
}

void sub_1005C50CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v11;
  sub_10000CEDC(v10 + 464, *v13);
  sub_10007A068(v10 + 400);
  a10 = v10 + 376;
  sub_1005C9F34(&a10);
  v15 = *(v10 + 368);
  if (v15)
  {
    sub_100117644(v15);
  }

  sub_10007A068(v10 + 288);
  sub_1005C9ED4(v10 + 264, *v12);
  sub_10007A068(v10 + 200);
  sub_10007A068(v10 + 128);
  sub_10007A068(v10 + 56);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C515C(uint64_t a1)
{
  *a1 = off_100AFFF80;
  *(a1 + 8) = off_100B00058;
  *(a1 + 16) = off_100B00078;
  *(a1 + 24) = off_100B000A0;
  *(a1 + 32) = off_100B000C8;
  *(a1 + 40) = off_100B000F8;
  *(a1 + 48) = &off_100B00158;
  sub_10000CEDC(a1 + 592, *(a1 + 600));
  sub_10007A068(a1 + 528);
  sub_10000CEDC(a1 + 464, *(a1 + 472));
  sub_10007A068(a1 + 400);
  v4 = (a1 + 376);
  sub_1005C9F34(&v4);
  v2 = *(a1 + 368);
  if (v2)
  {
    sub_100117644(v2);
  }

  sub_10007A068(a1 + 288);
  sub_1005C9ED4(a1 + 264, *(a1 + 272));
  sub_10007A068(a1 + 200);
  sub_10007A068(a1 + 128);
  sub_10007A068(a1 + 56);
  return a1;
}

void sub_1005C52E0(uint64_t a1)
{
  sub_1005C515C(a1);

  operator delete();
}

void sub_1005C5318(uint64_t a1)
{
  sub_1005C515C(a1 - 16);

  operator delete();
}

uint64_t sub_1005C5354(uint64_t a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_10084AEA8();
  }

  sub_10012E3B0(off_100B50F60 + 24, a1 + 24);
  if (qword_100B51078 != -1)
  {
    sub_10084AEBC();
  }

  sub_1000DB5D8(off_100B51070 + 1896, a1 + 40);
  v30[0] = 0;
  v30[1] = 0;
  v2 = sub_100007F88(v30, a1 + 56);
  *(a1 + 120) = 1;
  sub_10000801C(v2);
  sub_1005C5A18(a1);
  v3 = sub_100017E6C();
  sub_1003128B0(v3 + 384, a1 + 48);
  v6 = sub_10000C798(v4, v5);
  if ((*(*v6 + 688))(v6))
  {
    v7 = sub_10000E92C();
    sub_100007E30(buf, "ScanCorePageScan");
    sub_100007E30(__p, "ScanCorePageScanDebugEnabled");
    v8 = (*(*v7 + 72))(v7, buf, __p, a1 + 505);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 < 0)
    {
      operator delete(*buf);
      if (!v8)
      {
        goto LABEL_45;
      }
    }

    else if (!v8)
    {
LABEL_45:
      v17 = sub_10000E92C();
      if ((*(*v17 + 632))(v17))
      {
        LOBYTE(__p[0]) = 0;
        sub_1000216B4(__p);
        v18 = qword_100BCE8F0;
        if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Disabling BT Page Scans", buf, 2u);
        }

        sub_100018960(71, 0, v19, v20, v21, v22, v23, v24, 1);
        sub_10002249C(__p);
      }

      return sub_1000088CC(v30);
    }

    if (*(a1 + 505) == 1)
    {
      v9 = sub_10000E92C();
      sub_100007E30(buf, "ScanCorePageScan");
      sub_100007E30(__p, "ScanCorePageScanInterval");
      (*(*v9 + 128))(v9, buf, __p, a1 + 508);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v10 = sub_10000E92C();
      sub_100007E30(buf, "ScanCorePageScan");
      sub_100007E30(__p, "ScanCorePageScanWindow");
      (*(*v10 + 128))(v10, buf, __p, a1 + 512);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v11 = sub_10000E92C();
      sub_100007E30(buf, "ScanCorePageScan");
      sub_100007E30(__p, "ScanCorePageScanInterlaced");
      (*(*v11 + 72))(v11, buf, __p, a1 + 516);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v12 = sub_10000E92C();
      sub_100007E30(buf, "ScanCorePageScan");
      sub_100007E30(__p, "ScanCorePageScanDebugElnaMode");
      (*(*v12 + 72))(v12, buf, __p, a1 + 517);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v13 = sub_10000E92C();
      sub_100007E30(buf, "ScanCorePageScan");
      sub_100007E30(__p, "ScanCorePageScanUseAuxScanParams");
      (*(*v13 + 72))(v13, buf, __p, a1 + 518);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v14 = sub_10000E92C();
      sub_100007E30(buf, "ScanCorePageScan");
      sub_100007E30(__p, "ScanCorePageScanEnableAuxScan");
      (*(*v14 + 72))(v14, buf, __p, a1 + 519);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v15 = sub_10000E92C();
      sub_100007E30(buf, "ScanCorePageScan");
      sub_100007E30(__p, "ScanCorePageScanPreemptAuxScan");
      (*(*v15 + 72))(v15, buf, __p, a1 + 520);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      v16 = sub_10000E92C();
      sub_100007E30(buf, "ScanCorePageScan");
      sub_100007E30(__p, "ScanCorePageScanAuxScanDurationInMs");
      (*(*v16 + 128))(v16, buf, __p, a1 + 524);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (v29 < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_45;
  }

  return sub_1000088CC(v30);
}

void sub_1005C595C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1000088CC(v21 - 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C5A18(uint64_t a1)
{
  v34[0] = 0;
  v34[1] = 0;
  sub_100007F88(v34, a1 + 128);
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, a1 + 288);
  v2 = *(a1 + 192);
  if (*(a1 + 192))
  {
    v3 = *(a1 + 376);
    if (v3 == *(a1 + 384) || *(*v3 + 76) != 2)
    {
      v11 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v2;
        v8 = "Scanning is paused with a count of %d - returning";
        v9 = v11;
        v10 = 8;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
      }

LABEL_14:
      v12 = 0;
      v13 = 0;
      goto LABEL_15;
    }

    v4 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Name requests can't be paused. FULL STEAM AHEAD!", buf, 2u);
    }
  }

  v5 = *(a1 + 352);
  if (v5 || *(a1 + 376) == *(a1 + 384))
  {
    v6 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      v7 = "Scan in progress";
      if (!v5)
      {
        v7 = "No scans queued";
      }

      *buf = 136446210;
      *&buf[4] = v7;
      v8 = "%{public}s - returning";
      v9 = v6;
      v10 = 12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1 + 56);
  v13 = *(a1 + 120);
  if (v13 == 1)
  {
    v15 = 0;
    v16 = *(a1 + 376);
    while (1)
    {
      v18 = *v16;
      v17 = v16[1];
      v12 = v16[2];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v15)
      {
        sub_100117644(v15);
      }

      v19 = sub_1005CA904(buf, *(a1 + 376) + 24, *(a1 + 384), *(a1 + 376));
      v21 = v20;
      for (i = *(a1 + 384); i != v21; i -= 24)
      {
        v19 = *(i - 8);
        if (v19)
        {
          sub_100117644(v19);
        }
      }

      *(a1 + 384) = v21;
      if (v18)
      {
        *(a1 + 352) = v18;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = *(a1 + 368);
        *(a1 + 360) = v17;
        *(a1 + 368) = v12;
        if (v19)
        {
          sub_100117644(v19);
        }
      }

      else if (v17)
      {
        if (qword_100B50B88 != -1)
        {
          sub_10084AED0();
        }

        v23 = qword_100B50B80;
        v31[0] = v17;
        v31[1] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = sub_1005C6640(a1, v31);
        v25 = sub_1000117DC(v23, v24);
        if (v12)
        {
          sub_100117644(v12);
        }

        v26 = qword_100BCE8F0;
        if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
        {
          if (v25)
          {
            sub_100018384(v25, buf);
            v27 = buf;
            if (v36 < 0)
            {
              v27 = *buf;
            }

            *v37 = 136446210;
            v38 = v27;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Had no object for the scan from %{public}s", v37, 0xCu);
            if (v36 < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            sub_10084AEF8(v37, &v38, v26);
          }
        }

        (*(*v17 + 16))(v17);
        v19 = (*(*v17 + 24))(v17);
      }

      if (*(a1 + 352))
      {
        break;
      }

      v16 = *(a1 + 376);
      v15 = v12;
      if (v16 == *(a1 + 384))
      {
        goto LABEL_57;
      }
    }

    v29 = sub_100017F4C(v19, v20);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1005C79A4;
    v30[3] = &unk_100ADF8F8;
    v30[4] = a1;
    sub_10000CA94(v29, v30);
LABEL_57:
    sub_10000801C(v32);
    sub_10000801C(v33);
  }

  else
  {
    v28 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Stack wasn't started - returning", buf, 2u);
    }

    v12 = 0;
  }

  sub_1000088CC(v32);
LABEL_15:
  sub_1000088CC(v33);
  sub_1000088CC(v34);
  if (v12)
  {
    sub_100117644(v12);
  }

  return v13;
}

void sub_1005C5ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  sub_1000088CC(va2);
  if (v18)
  {
    sub_100117644(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005C5F50(uint64_t a1)
{
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DManager::stackWillStop enter", buf, 2u);
  }

  v3 = sub_100017E6C();
  sub_10036F1AC(v3 + 384, a1 + 48);
  if (qword_100B50F68 != -1)
  {
    sub_10084AF48();
  }

  sub_10007A3F0(off_100B50F60 + 24, a1 + 24);
  if (qword_100B51078 != -1)
  {
    sub_10084AF70();
  }

  sub_10007A3F0(off_100B51070 + 1896, a1 + 40);
  *buf = 0;
  v19 = 0;
  sub_100007F88(buf, a1 + 56);
  *(a1 + 120) = 0;
  sub_10000801C(buf);
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 288);
  v4 = *(a1 + 352);
  if (v4)
  {
    v5 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4[19];
      if (v6 > 3)
      {
        v7 = 0;
      }

      else
      {
        v7 = off_100B00310[v6];
      }

      *v20 = 136446210;
      *&v20[4] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping current %{public}s scan", v20, 0xCu);
      v4 = *(a1 + 352);
    }

    (*(*v4 + 24))(v4);
  }

  v8 = 101;
  while (*(a1 + 352))
  {
    if (!--v8)
    {
      v12 = sub_10000E92C();
      v13 = *(*(a1 + 352) + 76);
      sub_100007E30(v16, "");
      sub_100693260(v12, v13, v16, 1);
    }

    sub_10000801C(v17);
    j__usleep(0x186A0u);
    sub_100007FB8(v17);
  }

  sub_10000801C(v17);
  *v20 = 0uLL;
  v9 = sub_100007F88(v20, a1 + 128);
  *(a1 + 192) = 0;
  sub_10000801C(v9);
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 400);
  sub_1005C6298(a1);
  v10 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DManager::stackWillStop exit", v14, 2u);
  }

  sub_1000088CC(v15);
  sub_1000088CC(v20);
  sub_1000088CC(v17);
  return sub_1000088CC(buf);
}

void sub_1005C6220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_1000088CC(&a18);
  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C6298(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 400);
  v2 = *(a1 + 496);
  if (v2)
  {
    v3 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping Scan Core Page Scan timer", v5, 2u);
      v2 = *(a1 + 496);
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 496));
    *(a1 + 496) = 0;
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1005C635C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_100B50B88 != -1)
  {
    sub_10084AF98();
  }

  sub_1000117DC(qword_100B50B80, a2);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 200);
  if (qword_100B50B88 != -1)
  {
    sub_10084AED0();
  }

  v8 = sub_1006185D8(qword_100B50B80, a2);
  *a3 = v8;
  *a4 = 0;
  a4[1] = 0;
  if (v8)
  {
    sub_1005CA0A4();
  }

  return sub_1000088CC(v10);
}

void sub_1005C655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 + 8);
  if (v11)
  {
    sub_100117644(v11);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C6590@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 200);
  if (!a2)
  {
    goto LABEL_10;
  }

  v6 = *(a1 + 272);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = (a1 + 272);
  do
  {
    v8 = v6[4];
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 != (a1 + 272) && v7[4] <= a2)
  {
    v13 = v7[5];
    v12 = v7[6];
    *a3 = v13;
    a3[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
  }

  return sub_1000088CC(v14);
}

uint64_t sub_1005C6640(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 200);
  if (*a2)
  {
    v4 = *(v3 + 264);
    v5 = (v3 + 272);
    if (v4 != (v3 + 272))
    {
      while (1)
      {
        v7 = v4[5];
        v6 = v4[6];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = *a2;
        if (v7 == *a2)
        {
          break;
        }

        if (v6)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (v7 == v8)
        {
          goto LABEL_19;
        }

        v9 = v4[1];
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
            v10 = v4[2];
            v11 = *v10 == v4;
            v4 = v10;
          }

          while (!v11);
        }

        v4 = v10;
        if (v10 == v5)
        {
          goto LABEL_18;
        }
      }

      v3 = v4[4];
      if (!v6)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_100117644(v6);
      goto LABEL_8;
    }
  }

LABEL_18:
  v3 = 0;
LABEL_19:
  sub_1000088CC(v13);
  return v3;
}

uint64_t sub_1005C6734(uint64_t a1, unint64_t a2)
{
  v25 = a2;
  if (qword_100B50B88 != -1)
  {
    sub_10084AF98();
  }

  v4 = sub_1000117DC(qword_100B50B80, a2);
  v5 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      sub_100018384(v4, __p);
      if (v24 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying discovery agent %{public}s", buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      *&buf[4] = "(NULL)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying discovery agent %{public}s", buf, 0xCu);
    }
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 200);
  if (v25)
  {
    v7 = *(a1 + 272);
    if (v7)
    {
      v8 = (a1 + 272);
      do
      {
        v9 = *(v7 + 32);
        v10 = v9 >= v25;
        v11 = v9 < v25;
        if (v10)
        {
          v8 = v7;
        }

        v7 = *(v7 + 8 * v11);
      }

      while (v7);
      if (v8 != (a1 + 272) && v25 >= v8[4])
      {
        v12 = v8[5];
        v13 = v8[6];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22[0] = v12;
        v22[1] = v13;
        sub_1005C6B78(a1, v22);
        if (v13)
        {
          sub_100117644(v13);
        }

        __p[0] = &v25;
        v14 = sub_1005CA1F8(a1 + 264, &v25, &unk_1008A9BD0, __p);
        v15 = v14[6];
        v14[5] = 0;
        v14[6] = 0;
        if (v15)
        {
          sub_100117644(v15);
        }

        sub_1005CA2CC((a1 + 264), v8);
        if (sub_100067238())
        {
          CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
          v17 = CTGreenTeaOsLogHandle;
          if (CTGreenTeaOsLogHandle)
          {
            if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
            {
              if (v4)
              {
                sub_100018384(v4, __p);
                if (v24 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *v26 = 136446210;
                v27 = v18;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Session %{public}s is asking to destroy scan agent", v26, 0xCu);
                if (v24 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                *v26 = 136446210;
                v27 = "(NULL)";
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Session %{public}s is asking to destroy scan agent", v26, 0xCu);
              }
            }
          }
        }

        v19 = qword_100BCE8F0;
        if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
        {
          if (v4)
          {
            sub_100018384(v4, __p);
            if (v24 >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0];
            }

            *v26 = 136446210;
            v27 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to destroy scan agent", v26, 0xCu);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *v26 = 136446210;
            v27 = "(NULL)";
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to destroy scan agent", v26, 0xCu);
          }
        }

        if (qword_100B50B88 != -1)
        {
          sub_10084AED0();
        }

        sub_1006189DC(qword_100B50B80, v25);
        if (v13)
        {
          sub_100117644(v13);
        }
      }
    }
  }

  return sub_1000088CC(buf);
}

void sub_1005C6B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (v16)
  {
    sub_100117644(v16);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C6B78(void *a1, uint64_t *a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_10084AF98();
  }

  v4 = qword_100B50B80;
  v5 = a2[1];
  v26[0] = *a2;
  v26[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_1005C6640(a1, v26);
  v7 = sub_1000117DC(v4, v6);
  if (v5)
  {
    sub_100117644(v5);
  }

  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, (a1 + 36));
  v8 = a1[47];
  if (v8 != a1[48])
  {
    while (1)
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v10 == *a2)
      {
        break;
      }

      v8 += 3;
      if (v11)
      {
        goto LABEL_12;
      }

LABEL_13:
      if (v8 == a1[48])
      {
        goto LABEL_24;
      }
    }

    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    sub_1005CA904(__p, (v8 + 3), a1[48], v8);
    v13 = v12;
    for (i = a1[48]; i != v13; i -= 24)
    {
      v15 = *(i - 8);
      if (v15)
      {
        sub_100117644(v15);
      }
    }

    a1[48] = v13;
    v8 = a1[47];
    if (!v11)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_100117644(v11);
    goto LABEL_13;
  }

LABEL_24:
  v16 = a1[44];
  if (v16 && a1[45] == *a2)
  {
    v18 = qword_100BCE8F0;
    if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
    {
LABEL_38:
      (*(*v16 + 24))(v16);
      v17 = 400;
      goto LABEL_39;
    }

    v19 = v16[19];
    if (v19 > 3)
    {
      v20 = 0;
      if (v7)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = off_100B00310[v19];
      if (v7)
      {
LABEL_30:
        sub_100018384(v7, __p);
        if (v24 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        *buf = 136446466;
        v28 = v20;
        v29 = 2082;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Stopping current %{public}s scan on behalf of %{public}s", buf, 0x16u);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_37;
      }
    }

    *buf = 136446466;
    v28 = v20;
    v29 = 2082;
    v30 = "(NULL)";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Stopping current %{public}s scan on behalf of %{public}s", buf, 0x16u);
LABEL_37:
    v16 = a1[44];
    goto LABEL_38;
  }

  v17 = 0;
LABEL_39:
  sub_1000088CC(v25);
  return v17;
}

void sub_1005C6E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C6EBC(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v6 = *a2;
  *(*a2 + 12) = a4;
  if (a3 < 2)
  {
    v9 = a2[1];
    v17[0] = v6;
    v17[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = sub_1005C7024(a1, v17);
    goto LABEL_16;
  }

  if (a3 - 2 >= 2)
  {
    if (a3 == 4)
    {
      if (qword_100B50DB8 != -1)
      {
        v14 = a4;
        sub_10084AFAC();
        LODWORD(a4) = v14;
      }

      v11 = off_100B50DB0;
      v9 = a2[1];
      v15[0] = *a2;
      v15[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = sub_1005C7444(v11, v15, a4);
      goto LABEL_16;
    }

    return 412;
  }

  v7 = sub_10000C798(a1, a2);
  if ((*(*v7 + 368))(v7))
  {
    return 412;
  }

  v8 = *a2;
  v9 = a2[1];
  v16[0] = *a2;
  v16[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *a2;
  }

  v10 = sub_1005C7230(a1, v16, *(v8 + 8));
LABEL_16:
  v12 = v10;
  if (v9)
  {
    sub_100117644(v9);
  }

  return v12;
}

void sub_1005C7004(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100117644(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C7024(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10084AFC0();
  }

  if (sub_100574B30(off_100B50898, &v6) || v6 != 1)
  {
    v5[0] = 0;
    v5[1] = 0;
    sub_100007F88(v5, a1 + 56);
    if (*(a1 + 120) == 1)
    {
      sub_10000801C(v5);
      operator new();
    }

    v3 = 111;
    sub_1000088CC(v5);
    if (v9)
    {
      sub_100117644(v9);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_10084AFD4();
    }

    return 211;
  }

  return v3;
}

void sub_1005C71DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_1000088CC(&a11);
  if (a16)
  {
    sub_100117644(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005C7230(uint64_t a1, uint64_t *a2, char a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10084AFC0();
  }

  if (sub_100574B30(off_100B50898, &v7) || v7 != 1)
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, a1 + 56);
    if (*(a1 + 120) == 1)
    {
      sub_10000801C(v6);
      operator new();
    }

    v4 = 111;
    sub_1000088CC(v6);
    if (v10)
    {
      sub_100117644(v10);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_10084AFD4();
    }

    return 211;
  }

  return v4;
}

void sub_1005C73F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_1000088CC(&a11);
  if (a16)
  {
    sub_100117644(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005C7444(uint64_t a1, uint64_t *a2, int a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10084AFC0();
  }

  if (sub_100574B30(off_100B50898, &v7) || v7 != 1)
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, a1 + 56);
    if (*(a1 + 120) == 1)
    {
      sub_10000801C(v6);
      operator new();
    }

    v4 = 111;
    sub_1000088CC(v6);
    if (v10)
    {
      sub_100117644(v10);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_10084AFD4();
    }

    return 211;
  }

  return v4;
}

void sub_1005C7604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_1000088CC(&a11);
  if (a16)
  {
    sub_100117644(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005C7658(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005CA374(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 16) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1005C76B8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_100007F88(v4, a1 + 56);
  if (*(a1 + 120) == 1)
  {
    sub_10000801C(v4);
    operator new();
  }

  sub_1000088CC(v4);
  if (v5)
  {
    sub_100117644(v5);
  }

  return 111;
}

void sub_1005C77AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_1000088CC(&a10);
  sub_1000088CC(&a12);
  if (a16)
  {
    sub_100117644(a16);
  }

  _Unwind_Resume(a1);
}

void *sub_1005C7804(uint64_t *a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v15 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C7698();
    }

    v16 = a2 - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 3);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v17 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v26 = a1;
    if (v19)
    {
      sub_1005CA4B4(a1, v19);
    }

    v22 = 0;
    v23 = 8 * (v16 >> 3);
    v24 = v23;
    v25 = 0;
    sub_1005CA67C(&v22, a3);
    v4 = sub_1005CA7DC(a1, &v22, v4);
    sub_1005CA580(&v22);
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    v20 = *(a3 + 16);
    v6[2] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = (v6 + 3);
  }

  else
  {
    sub_1005CA608(a1, a2, v6, (a2 + 3));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 24;
    if (v8)
    {
      v9 = 0;
    }

    v10 = (a3 + v9);
    v11 = v10[1];
    *v4 = *v10;
    v12 = v10[2];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v4[2];
    v4[1] = v11;
    v4[2] = v12;
    if (v13)
    {
      sub_100117644(v13);
    }
  }

  return v4;
}

void sub_1005C7990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005CA580(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C79AC(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 288);
  v2 = *(a1 + 352);
  if (v2)
  {
    sub_10000801C(v7);
    v3 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      v4 = v2[19];
      if (v4 > 3)
      {
        v5 = 0;
      }

      else
      {
        v5 = off_100B00310[v4];
      }

      *buf = 136446210;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Running new %{public}s scan", buf, 0xCu);
    }

    (*(*v2 + 16))(v2);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005C7ADC(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 128);
  v2 = *(a1 + 192);
  v3 = v2 + 1;
  *(a1 + 192) = v2 + 1;
  if (v2)
  {
    v4 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Pausing an already paused scan - new count is %d", buf, 8u);
    }
  }

  else
  {
    *buf = 0;
    v15 = 0;
    sub_100007F88(buf, a1 + 288);
    v5 = *(a1 + 352);
    v6 = qword_100BCE8F0;
    v7 = os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v8 = v5[19];
        if (v8 > 3)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_100B00310[v8];
        }

        *v12 = 136446210;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Pausing current %{public}s scan", v12, 0xCu);
        v5 = *(a1 + 352);
      }

      (*(*v5 + 24))(v5);
    }

    else if (v7)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Pausing DManager", v12, 2u);
    }

    sub_1000088CC(buf);
  }

  return sub_1000088CC(v11);
}

void sub_1005C7CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1000088CC(va);
  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C7CD0(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 128);
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = v2 - 1;
    *(a1 + 192) = v2 - 1;
    v4 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Resuming a scan - new count is %d", buf, 8u);
      v3 = *(a1 + 192);
    }

    if (!v3)
    {
      sub_10000801C(v7);
      sub_1005C5A18(a1);
    }
  }

  else
  {
    v5 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Tried to resume a scan that wasn't paused!", buf, 2u);
    }
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1005C7E28(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 288);
  v4 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 76);
    if (v5 > 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_100B00310[v5];
    }

    *buf = 136446210;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}s scan started", buf, 0xCu);
  }

  if (*(a1 + 352) == a2)
  {
    v7 = *(a1 + 360);
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }
  }

  sub_10000801C(v9);
  *(a1 + 193) = 1;
  if (qword_100B508A0 != -1)
  {
    sub_10084B014();
  }

  sub_100575E1C(off_100B50898, 6);
  return sub_1000088CC(v9);
}

uint64_t sub_1005C7F9C(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 288);
  if (*(a1 + 352))
  {
    v4 = *(a1 + 360);
    if (v4)
    {
      (*(*v4 + 40))(v4, a2);
    }
  }

  sub_10000801C(v6);
  return sub_1000088CC(v6);
}

uint64_t sub_1005C8034(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'name changed' event for device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10084B03C();
  }

  sub_100594AA0(off_100B50AB8, a2, 0xFFFFFFFFLL, 0, 701, 0);
  return (*(*a1 + 8))(a1, a2);
}

uint64_t sub_1005C8178(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 288);
  if (*(a1 + 352))
  {
    v4 = *(a1 + 360);
    if (v4)
    {
      (*(*v4 + 32))(v4, a2);
    }
  }

  sub_10000801C(v6);
  return sub_1000088CC(v6);
}

uint64_t sub_1005C8210(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 288);
  if (*(a1 + 352))
  {
    v4 = *(a1 + 360);
    if (v4)
    {
      (*(*v4 + 48))(v4, a2);
    }
  }

  sub_10000801C(v6);
  return sub_1000088CC(v6);
}

void sub_1005C82A8(uint64_t a1)
{
  if (*(a1 + 120) != 1)
  {
    goto LABEL_6;
  }

  if (qword_100B512C8 != -1)
  {
    sub_10084B064();
  }

  v2 = sub_10000EE78(off_100B512C0);
  if (v2 == 1)
  {
    v4 = sub_100017F4C(v2, v3);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005C8380;
    v5[3] = &unk_100ADF8F8;
    v5[4] = a1;
    sub_10000CA94(v4, v5);
  }

  else
  {
LABEL_6:

    sub_1005C8388(a1);
  }
}

uint64_t sub_1005C8388(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 288);
  v2 = *(a1 + 360);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    v3 = *(a1 + 368);
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  v4 = *(a1 + 352);
  v5 = qword_100BCE8F0;
  if (v4)
  {
    if (!os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT) || ((v6 = v4[19], v6 > 3) ? (v7 = 0) : (v7 = off_100B00310[v6]), *buf = 136446210, v11 = v7, _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s scan completed", buf, 0xCu), (v4 = *(a1 + 352)) != 0))
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 352) = 0;
  }

  else if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Scan completed", buf, 2u);
  }

  sub_10000801C(v9);
  if ((sub_1005C5A18(a1) & 1) == 0)
  {
    *(a1 + 193) = 0;
    if (qword_100B508A0 != -1)
    {
      sub_10084B014();
    }

    sub_100575E1C(off_100B50898, 7);
  }

  return sub_1000088CC(v9);
}

uint64_t sub_1005C8578(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v22 = 0;
  v21 = 0;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 288);
  if (*(a1 + 352))
  {
    v8 = *(a1 + 360);
    if (v8)
    {
      v9 = sub_1005C1DF8(v8, a2, &v22, a4);
      v21 = v9;
      if ((v9 & 1) == 0)
      {
        v11 = sub_10000C798(v9, v10);
        if ((*(*v11 + 384))(v11) && *(a2 + 1572) == 2)
        {
          v12 = qword_100BCE8F0;
          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, __p);
            if (v19 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136446210;
            v24 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received LE CarPlay in EIR from %{public}s, ignore it", buf, 0xCu);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else
        {
          v14 = *(*(a1 + 360) + 12);
          if (qword_100B50AC0 != -1)
          {
            sub_10084B03C();
          }

          sub_100596FB8(off_100B50AB8, a2, v14 & 0xFFFFF7FF, &v21, &v22);
          if (v21 == 1)
          {
            sub_1000DEEA4(a2, __p);
            if (v19 >= 0)
            {
              v15 = v19;
            }

            else
            {
              v15 = __p[1];
            }

            if ((v19 & 0x8000000000000000) != 0)
            {
              operator delete(__p[0]);
            }

            if (!v15)
            {
              v22 |= 4u;
            }
          }
        }
      }
    }
  }

  sub_10000801C(v20);
  *a3 = v22;
  v16 = v21;
  sub_1000088CC(v20);
  return v16;
}

void sub_1005C8784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005C87B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017F4C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005C8830;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

void sub_1005C8848(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, int a5)
{
  v7 = a2;
  v108 = a3;
  v9 = sub_10000C798(a1, a2);
  if (!(*(*v9 + 688))(v9))
  {
    return;
  }

  v10 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "unknown";
    v12 = "unknown";
    if (v7 <= 2)
    {
      v12 = off_100B00330[v7];
    }

    v13 = *(a1 + 488);
    if (v13 == 1)
    {
      v11 = "SCAN_CORE_PAGE_SCAN_ENABLE";
    }

    if (!v13)
    {
      v11 = "SCAN_CORE_PAGE_SCAN_IDLE";
    }

    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    v114 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received Scan Core Page Scan Request for event: %s, scanCorePageScanState: %s", buf, 0x16u);
  }

  if (*(a1 + 505) == 1)
  {
    v14 = *(a1 + 508);
    v15 = *(a1 + 512);
    v16 = (a1 + 516);
    v17 = (a1 + 517);
    v18 = (a1 + 518);
    v19 = (a1 + 519);
    v20 = (a1 + 520);
    v21 = *(a1 + 524);
  }

  else
  {
    v22 = (&unk_1008AA650 + 10 * a4);
    v16 = (v22 + 2);
    v17 = v22 + 5;
    v18 = (v22 + 3);
    v19 = v22 + 7;
    v23 = *v22;
    v20 = (v22 + 4);
    LOWORD(v14) = v23;
    LOWORD(v15) = 18;
    LOBYTE(v21) = 50;
  }

  v24 = *v16;
  v25 = *v17;
  v26 = *v18;
  v27 = *v19;
  v28 = *(a1 + 488);
  if (v28 == 1)
  {
    if (v7 == 2)
    {
      v65 = *v20;
      v66 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Scan Core Page Scan timer expired. Clearing Scan Core Page Scan device set.", buf, 2u);
      }

      sub_10000CEDC(a1 + 464, *(a1 + 472));
      *(a1 + 472) = 0;
      *(a1 + 480) = 0;
      *(a1 + 464) = a1 + 472;
      v69 = sub_10000C7D0(v67, v68);
      HIBYTE(v101) = v21;
      LOBYTE(v101) = v65 & 1;
      (*(*v69 + 4008))(v69, 0, v14, v15, v24 & 1, v25 & 1, v26 & 1, v27 & 1, v101);
      sub_1005C6298(a1);
    }

    else
    {
      if (v7 != 1)
      {
        if (v7 || !sub_1000295DC(v108) || sub_1000C0348(v108) || !sub_1000E2140(v108, 0xCu))
        {
          return;
        }

        v41 = *(a1 + 472);
        if (!v41)
        {
          goto LABEL_54;
        }

        v42 = a1 + 472;
        do
        {
          v43 = *(v41 + 32);
          v33 = v43 >= v108;
          v44 = v43 < v108;
          if (v33)
          {
            v42 = v41;
          }

          v41 = *(v41 + 8 * v44);
        }

        while (v41);
        if (v42 != a1 + 472 && v108 >= *(v42 + 32))
        {
          v91 = qword_100BCE8F0;
          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v108, buf);
            v92 = v115[1] >= 0 ? buf : *buf;
            *v109 = 136315138;
            *&v109[4] = v92;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "'%s' already present in Scan Core Page Scan device set.", v109, 0xCu);
            if ((v115[1] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }

        else
        {
LABEL_54:
          if (sub_10054D7B0(v108) > 4)
          {
            v79 = *(a1 + 504);
            v80 = qword_100BCE8F0;
            v81 = os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT);
            if (a5 - v79 < 10)
            {
              if (v81)
              {
                sub_1000E5A58(v108, v109);
                if (v112 >= 0)
                {
                  v88 = v109;
                }

                else
                {
                  v88 = *v109;
                }

                v89 = "unknown";
                v90 = *(a1 + 488);
                if (v90 == 1)
                {
                  v89 = "SCAN_CORE_PAGE_SCAN_ENABLE";
                }

                *buf = 136315650;
                *&buf[4] = v88;
                *&buf[12] = 2080;
                v114 = "DEVICE_ADV_RECEIVED_EVENT";
                if (!v90)
                {
                  v89 = "SCAN_CORE_PAGE_SCAN_IDLE";
                }

                *v115 = 2080;
                *&v115[2] = v89;
                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Reached maximum Scan Core Page Scan retries for Device '%s', Event: %s, State: %s.", buf, 0x20u);
                if (v112 < 0)
                {
                  operator delete(*v109);
                }
              }

              if (!sub_10054DB4C(v108))
              {
                goto LABEL_133;
              }
            }

            else
            {
              if (v81)
              {
                sub_1000E5A58(v108, v109);
                v82 = v112 >= 0 ? v109 : *v109;
                *buf = 67109890;
                *&buf[4] = a5;
                *&buf[8] = 1024;
                *&buf[10] = v79;
                v114 = 0x8200000000A0400;
                *v115 = v82;
                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Difference between currentLEAdvRSSI: %d and previousLEAdvRSSI:%d is greater than %d dB for device '%s'", buf, 0x1Eu);
                if (v112 < 0)
                {
                  operator delete(*v109);
                }
              }

              v83 = sub_10054DB4C(v108);
              v84 = v108;
              if (v83)
              {
                sub_10054D9FC(v108);
                v84 = v108;
                ++*(v108 + 735);
              }

              sub_10054D76C(v84);
              sub_1000452CC(a1 + 464, &v108, &v108);
              sub_1005C6298(a1);
              sub_1005C98D4(a1, 60);
              sub_10054D720(v108);
            }
          }

          else
          {
            v45 = qword_100BCE8F0;
            if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v108, buf);
              v46 = v115[1] >= 0 ? buf : *buf;
              *v109 = 136315394;
              *&v109[4] = v46;
              v110 = 1024;
              v111 = 60;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "'%s' not present in Scan Core Page Scan device set. Inserting it and resetting timer for %d seconds.", v109, 0x12u);
              if ((v115[1] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            if (sub_10054D7B0(v108) <= 3)
            {
              *(a1 + 504) = a5;
            }

            sub_1000452CC(a1 + 464, &v108, &v108);
            sub_1005C6298(a1);
            sub_1005C98D4(a1, 60);
            sub_10054D720(v108);
          }
        }

        return;
      }

      v105 = *v20;
      v107 = v24;
      if (!sub_1000E2140(v108, 0xCu))
      {
        return;
      }

      sub_10054D76C(v108);
      if (sub_10054DB4C(v108))
      {
        sub_10054D9FC(v108);
        ++*(v108 + 735);
      }

      v54 = *(a1 + 472);
      if (!v54)
      {
        return;
      }

      v55 = (a1 + 472);
      do
      {
        v56 = *(v54 + 32);
        v33 = v56 >= v108;
        v57 = v56 < v108;
        if (v33)
        {
          v55 = v54;
        }

        v54 = *(v54 + 8 * v57);
      }

      while (v54);
      if (v55 == (a1 + 472) || v108 < v55[4])
      {
        return;
      }

      v58 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v108, buf);
        v59 = buf;
        if (v115[1] < 0)
        {
          v59 = *buf;
        }

        *v109 = 136315138;
        *&v109[4] = v59;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "'%s' connected. Removing it from Scan Core Page Scan device set.", v109, 0xCu);
        if ((v115[1] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      sub_10002717C((a1 + 464), v55);
      operator delete(v55);
      ++*(v108 + 737);
      if (*(a1 + 480))
      {
        return;
      }

      v60 = qword_100BCE8F0;
      v61 = os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT);
      if (v61)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Scan Core Page Scan device list is empty.", buf, 2u);
      }

      v63 = sub_10000C7D0(v61, v62);
      HIBYTE(v100) = v21;
      LOBYTE(v100) = v105 & 1;
      (*(*v63 + 4008))(v63, 0, v14, v15, v107 & 1, v25 & 1, v26 & 1, v27 & 1, v100);
      sub_1005C6298(a1);
    }

    sub_1005C9A28(a1, 0);
    return;
  }

  v104 = *v20;
  v106 = v24;
  if (v28)
  {
    return;
  }

  switch(v7)
  {
    case 2u:
      v64 = qword_100BCE8F0;
      if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_FAULT))
      {
        sub_10084B078(v64);
      }

      break;
    case 1u:
      v47 = *(a1 + 472);
      v48 = v108;
      if (v47)
      {
        v49 = a1 + 472;
        do
        {
          v50 = *(v47 + 32);
          v33 = v50 >= v108;
          v51 = v50 < v108;
          if (v33)
          {
            v49 = v47;
          }

          v47 = *(v47 + 8 * v51);
        }

        while (v47);
        if (v49 != a1 + 472 && v108 >= *(v49 + 32))
        {
          v52 = qword_100BCE8F0;
          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_FAULT))
          {
            sub_1000E5A58(v108, v109);
            if (v112 >= 0)
            {
              v93 = v109;
            }

            else
            {
              v93 = *v109;
            }

            v94 = "unknown";
            v95 = *(a1 + 488);
            if (v95 == 1)
            {
              v94 = "SCAN_CORE_PAGE_SCAN_ENABLE";
            }

            *buf = 136315650;
            *&buf[4] = v93;
            *&buf[12] = 2080;
            v114 = "DEVICE_CONNECTED_EVENT";
            if (!v95)
            {
              v94 = "SCAN_CORE_PAGE_SCAN_IDLE";
            }

            *v115 = 2080;
            *&v115[2] = v94;
            _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "'%s' present in Scan Core Page Scan device set. Event: %s, State: %s.", buf, 0x20u);
            if (v112 < 0)
            {
              operator delete(*v109);
            }

            v48 = v108;
          }
        }
      }

      sub_10054D76C(v48);
      v53 = v108;
      ++*(v108 + 738);
      if (sub_10054DB4C(v53))
      {
        sub_10054D9FC(v108);
        ++*(v108 + 735);
      }

      break;
    case 0u:
      v29 = *(a1 + 472);
      v30 = v108;
      if (v29)
      {
        v31 = a1 + 472;
        do
        {
          v32 = *(v29 + 32);
          v33 = v32 >= v108;
          v34 = v32 < v108;
          if (v33)
          {
            v31 = v29;
          }

          v29 = *(v29 + 8 * v34);
        }

        while (v29);
        if (v31 != a1 + 472 && v108 >= *(v31 + 32))
        {
          v35 = qword_100BCE8F0;
          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_FAULT))
          {
            sub_1000E5A58(v108, v109);
            v96 = v109;
            if (v112 < 0)
            {
              v96 = *v109;
            }

            v97 = "unknown";
            v98 = *(a1 + 488);
            if (v98 == 1)
            {
              v97 = "SCAN_CORE_PAGE_SCAN_ENABLE";
            }

            *buf = 136315650;
            *&buf[4] = v96;
            *&buf[12] = 2080;
            v114 = "DEVICE_ADV_RECEIVED_EVENT";
            if (!v98)
            {
              v97 = "SCAN_CORE_PAGE_SCAN_IDLE";
            }

            *v115 = 2080;
            *&v115[2] = v97;
            _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "'%s' present in Scan Core Page Scan device set. Event: %s, State: %s.", buf, 0x20u);
            if (v112 < 0)
            {
              operator delete(*v109);
            }

            v30 = v108;
          }
        }
      }

      if (sub_1000295DC(v30) && !sub_1000C0348(v108) && sub_1000E2140(v108, 0xCu))
      {
        if (sub_10054D7B0(v108) <= 4)
        {
          v36 = qword_100BCE8F0;
          if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v108, buf);
            v37 = v115[1] >= 0 ? buf : *buf;
            *v109 = 136315138;
            *&v109[4] = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Adding '%s' into Scan Core Page Scan device set.", v109, 0xCu);
            if ((v115[1] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (sub_10054D7B0(v108) <= 3)
          {
            *(a1 + 504) = a5;
          }

          v38 = sub_1000452CC(a1 + 464, &v108, &v108);
          v40 = sub_10000C7D0(v38, v39);
          HIBYTE(v99) = v21;
          LOBYTE(v99) = v104 & 1;
          (*(*v40 + 4008))(v40, 1, v14, v15, v106 & 1, v25 & 1, v26 & 1, v27 & 1, v99);
          sub_1005C98D4(a1, 60);
          sub_1005C9A28(a1, 1);
          sub_10054D720(v108);
          ++*(v108 + 726);
          return;
        }

        v70 = *(a1 + 504);
        log = qword_100BCE8F0;
        v71 = os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT);
        if (a5 - v70 >= 10)
        {
          if (v71)
          {
            sub_1000E5A58(v108, v109);
            v72 = v112 >= 0 ? v109 : *v109;
            *buf = 67109890;
            *&buf[4] = a5;
            *&buf[8] = 1024;
            *&buf[10] = v70;
            v114 = 0x8200000000A0400;
            *v115 = v72;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Difference between currentLEAdvRSSI: %d and previousLEAdvRSSI:%d is greater than %d dB for device '%s'", buf, 0x1Eu);
            if (v112 < 0)
            {
              operator delete(*v109);
            }
          }

          v73 = sub_10054DB4C(v108);
          v74 = v108;
          if (v73)
          {
            sub_10054D9FC(v108);
            v74 = v108;
            ++*(v108 + 735);
          }

          sub_10054D76C(v74);
          v75 = sub_1000452CC(a1 + 464, &v108, &v108);
          v77 = sub_10000C7D0(v75, v76);
          HIBYTE(v102) = v21;
          LOBYTE(v102) = v104 & 1;
          (*(*v77 + 4008))(v77, 1, v14, v15, v106 & 1, v25 & 1, v26 & 1, v27 & 1, v102);
          sub_1005C98D4(a1, 60);
          sub_1005C9A28(a1, 1);
          sub_10054D720(v108);
          v78 = v108;
          ++*(v108 + 726);
          ++*(v78 + 733);
          return;
        }

        if (v71)
        {
          sub_1000E5A58(v108, v109);
          if (v112 >= 0)
          {
            v85 = v109;
          }

          else
          {
            v85 = *v109;
          }

          v86 = "unknown";
          v87 = *(a1 + 488);
          if (v87 == 1)
          {
            v86 = "SCAN_CORE_PAGE_SCAN_ENABLE";
          }

          *buf = 136315650;
          *&buf[4] = v85;
          *&buf[12] = 2080;
          v114 = "DEVICE_ADV_RECEIVED_EVENT";
          if (!v87)
          {
            v86 = "SCAN_CORE_PAGE_SCAN_IDLE";
          }

          *v115 = 2080;
          *&v115[2] = v86;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Reached max Scan Core Page Scan retries for Device '%s', Event: %s, State: %s.", buf, 0x20u);
          if (v112 < 0)
          {
            operator delete(*v109);
          }
        }

        if (!sub_10054DB4C(v108))
        {
LABEL_133:
          sub_10054D7F8(v108);
        }
      }

      break;
  }
}

void sub_1005C96F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(*(a4 + 8) + 216);
  if (qword_100B50AA0 != -1)
  {
    sub_10084B110();
  }

  v9 = sub_10006DBF8(off_100B50A98);
  if ((v9 & 1) != 0 || (v11 = *(a4 + 8), *(v11 + 363) != 1) || (*(v11 + 217) & 1) != 0 || v8 < -85)
  {
    if (v8 <= -85)
    {
      if (qword_100B508F0 != -1)
      {
        sub_10084B124();
      }

      v13 = sub_1000504C8(off_100B508E8, a2, 0);
      if (v13)
      {
        ++*(v13 + 1468);
      }
    }
  }

  else
  {
    v12 = sub_100017F4C(v9, v10);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1005C9848;
    v14[3] = &unk_100AEAF08;
    v14[4] = a1;
    v14[5] = a2;
    v15 = v8;
    sub_10000CA94(v12, v14);
  }
}

void sub_1005C9848(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_10084B124();
  }

  v3 = sub_1000504C8(off_100B508E8, *(a1 + 40), 0);
  if (v3)
  {
    v4 = *(a1 + 48);

    sub_1005C8848(v2, 0, v3, 1u, v4);
  }
}

uint64_t sub_1005C98D4(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v4 = sub_100007F88(v12, a1 + 400);
  v6 = *(a1 + 496);
  if (v6 || (v7 = sub_100017F4C(v4, v5), v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v7 + 8)), *(a1 + 496) = v8, dispatch_source_set_event_handler(v8, &stru_100B00178), (v6 = *(a1 + 496)) != 0))
  {
    v9 = qword_100BCE8F0;
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Start Scan Core Page Scan timer of %llu seconds", buf, 0xCu);
      v6 = *(a1 + 496);
    }

    v10 = dispatch_time(0, 1000000000 * a2);
    dispatch_source_set_timer(v6, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(a1 + 496));
  }

  return sub_1000088CC(v12);
}

void sub_1005C9A28(uint64_t a1, int a2)
{
  v4 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "unknown";
    v6 = *(a1 + 488);
    if (v6 == 1)
    {
      v7 = "SCAN_CORE_PAGE_SCAN_ENABLE";
    }

    else
    {
      v7 = "unknown";
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = "SCAN_CORE_PAGE_SCAN_IDLE";
    }

    if (a2 == 1)
    {
      v5 = "SCAN_CORE_PAGE_SCAN_ENABLE";
    }

    if (!a2)
    {
      v5 = "SCAN_CORE_PAGE_SCAN_IDLE";
    }

    v9 = 136315394;
    v10 = v8;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Scan Core Page Scan State:  %s => %s", &v9, 0x16u);
  }

  *(a1 + 488) = a2;
}

void sub_1005C9B24(id a1)
{
  v2 = sub_100017F4C(a1, v1);

  sub_10000CA94(v2, &stru_100B00198);
}

void sub_1005C9B54(uint64_t result)
{
  if (result)
  {
    if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_ERROR))
    {
      sub_10084B220();
    }
  }
}

void sub_1005C9BA8(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10084AF98();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_10084B110();
  }

  v2 = off_100B50A98 + 64;

  sub_100312650(v2, a1 + 32);
}

void sub_1005C9C2C(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10084AF98();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_10084B110();
  }

  v2 = off_100B50A98 + 64;

  sub_10007A3F0(v2, a1 + 32);
}

uint64_t sub_1005C9CB8(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    return (*(*result + 8))(result, a2);
  }

  return result;
}

uint64_t sub_1005C9CE8(uint64_t a1, int a2)
{
  if (a2)
  {
    return sub_1005C7ADC(a1);
  }

  else
  {
    return sub_1005C7CD0(a1);
  }
}

uint64_t sub_1005C9CFC(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    return (*(*(result - 16) + 8))();
  }

  return result;
}

uint64_t sub_1005C9D2C(uint64_t a1, int a2)
{
  v2 = a1 - 24;
  if (a2)
  {
    return sub_1005C7ADC(v2);
  }

  else
  {
    return sub_1005C7CD0(v2);
  }
}

void sub_1005C9D48(id a1)
{
  if (qword_100B50DB8 != -1)
  {
    sub_10084AFAC();
  }

  v2 = off_100B50DB0;

  sub_1005C8848(v2, 2, 0, 1u, 0);
}

void sub_1005C9ED4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1005C9ED4(a1, *a2);
    sub_1005C9ED4(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_100117644(v4);
    }

    operator delete(a2);
  }
}

void sub_1005C9F34(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005C9F88(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1005C9F88(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_100117644(v4);
    }
  }

  a1[1] = v2;
}

void *sub_1005CA100(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100B00268;
  sub_1005C1C38((a1 + 3));
  return a1;
}

void sub_1005CA17C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100B00268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1005CA1F8(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t *sub_1005CA2CC(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_100117644(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_1005CA374(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1005CA4B4(a1, v6);
  }

  v7 = 24 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 0uLL;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *&v17 = v7 + 24;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_1005CA50C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1005CA580(&v15);
  return v14;
}

void sub_1005CA4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1005CA580(va);
  _Unwind_Resume(a1);
}

void sub_1005CA4B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1005CA50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        sub_100117644(v7);
      }

      v5 += 24;
    }
  }
}

void **sub_1005CA580(void **a1)
{
  sub_1005CA5B4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005CA5B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_100117644(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

uint64_t sub_1005CA608(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v8 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1005CA898(&v11, a2, v7, v6);
}

void **sub_1005CA67C(void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *result) >> 3);
      }

      v10 = result[4];
      v12[4] = v3[4];
      sub_1005CA4B4(v10, v9);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    result = sub_1005CA904(v12, v5, v4, &v5[-24 * (v6 >> 1)]);
    v4 = v8;
    v3[1] = v3[1] + 8 * v7;
    v3[2] = v8;
  }

  *v4 = *a2;
  v11 = *(a2 + 16);
  *(v4 + 2) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v4 = v3[2];
  }

  v3[2] = v4 + 24;
  return result;
}

uint64_t sub_1005CA7DC(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_1005CA50C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_1005CA50C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_1005CA898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 24);
      v7 -= 24;
      *(a4 - 24) = v8;
      a4 -= 24;
      v9 = *(v7 + 8);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v10 = *(a4 + 16);
      *(a4 + 8) = v9;
      if (v10)
      {
        sub_100117644(v10);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_1005CA904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 8);
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v8 = *(a4 + 16);
      *(a4 + 8) = v7;
      if (v8)
      {
        sub_100117644(v8);
      }

      v5 += 24;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

NSObject **sub_1005CAAB0(NSObject **a1)
{
  a1[1] = os_nexus_controller_create();
  v2 = os_log_create("com.apple.bluetooth", "BTAudioSkywalk");
  v3 = v2;
  *a1 = v2;
  if (a1[1])
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v5[0]) = 134219008;
      *(v5 + 4) = 2048;
      WORD2(v5[1]) = 2048;
      *(&v5[1] + 6) = 1;
      HIWORD(v5[2]) = 2048;
      v5[3] = 1;
      LOWORD(v5[4]) = 2048;
      *(&v5[4] + 2) = 8;
      WORD1(v5[5]) = 2048;
      *(&v5[5] + 4) = 8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating skywalk nexus with NEXUS_ATTR_SLOT_BUF_SIZE: %llu, NEXUS_ATTR_RX_RINGS: %llu, NEXUS_ATTR_TX_RINGS: %llu, NEXUS_ATTR_TX_SLOTS: %llu, NEXUS_ATTR_RX_SLOTS: %llu", v5, 0x34u);
    }

    os_nexus_attr_create();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    os_nexus_attr_set();
    strcpy(v5, "com.apple.bluetooth.AudioPipe");
    HIWORD(v5[3]) = 0;
    memset(&v5[4], 0, 32);
    os_nexus_controller_register_provider();
    os_nexus_attr_destroy();
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10084B294();
  }

  return a1;
}

uint64_t sub_1005CAC64(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = off_100B00378;
  *(a1 + 8) = -1;
  *(a1 + 200) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 208) = a3;
  mach_timebase_info((a1 + 192));
  *(a1 + 200) = a2;
  *(a1 + 16) = os_log_create("com.apple.bluetooth", "BTAudioSkywalk");
  return a1;
}

uint64_t sub_1005CAD10(uint64_t a1)
{
  *a1 = off_100B00378;
  v2 = *(a1 + 16);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9.ident) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Tearing down AudioSkywalkPipe", &v9, 2u);
  }

  atomic_store(1u, (a1 + 144));
  v3 = *(a1 + 12);
  if (v3 != -1 || *(a1 + 8) != -1)
  {
    v9.ident = a1 + 144;
    *&v9.filter = 0x10000000000FFF6;
    v9.data = 0;
    v9.udata = 0;
    kevent(v3, &v9, 1, 0, 0, 0);
    kevent(*(a1 + 8), &v9, 1, 0, 0, 0);
    pthread_mutex_lock((a1 + 32));
    while (!atomic_load((a1 + 145)))
    {
      pthread_cond_wait((a1 + 96), (a1 + 32));
    }

    pthread_mutex_unlock((a1 + 32));
    pthread_cond_destroy((a1 + 96));
    pthread_mutex_destroy((a1 + 32));
    v5 = *(a1 + 8);
    if (v5 != -1)
    {
      close(v5);
    }
  }

  v6 = *(a1 + 12);
  if (v6 != -1)
  {
    close(v6);
  }

  if (*(a1 + 176))
  {
    os_channel_destroy();
  }

  v7 = *(a1 + 16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9.ident) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AudioSkywalkPipe torn down", &v9, 2u);
  }

  return a1;
}

void sub_1005CAEE8(uint64_t a1)
{
  sub_1005CAD10(a1);

  operator delete();
}

void sub_1005CAF20(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = objc_retainBlock(a2);
  v10 = *(a1 + 152);
  *(a1 + 152) = v9;

  v11 = objc_retainBlock(v8);
  v12 = *(a1 + 160);
  *(a1 + 160) = v11;

  v13 = objc_retainBlock(v7);
  v14 = *(a1 + 168);
  *(a1 + 168) = v13;

  atomic_store(0, (a1 + 144));
  atomic_store(0, (a1 + 145));
  if (*(a1 + 152))
  {
    *(a1 + 12) = kqueue();
  }

  if (*(a1 + 160))
  {
    *(a1 + 8) = kqueue();
  }

  fd = os_channel_get_fd();
  v16.ident = __chkstk_darwin(fd);
  *&v16.filter = 393215;
  memset(&v16.fflags, 0, 20);
  v17 = a1 + 144;
  v18 = 393206;
  v20 = 0;
  v19 = 0;
  v21 = 0;
  if (kevent(*(a1 + 12), &v16, 2, 0, 0, 0) == -1)
  {
    if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_10084B2C8();
    }
  }

  else if (*(a1 + 152))
  {
    pthread_mutex_init((a1 + 32), 0);
    pthread_cond_init((a1 + 96), 0);
    memset(&v22, 0, sizeof(v22));
    pthread_attr_init(&v22);
    pthread_attr_setdetachstate(&v22, 2);
    pthread_create((a1 + 24), &v22, sub_1005CB114, a1);
  }
}

uint64_t sub_1005CB114(uint64_t a1)
{
  pthread_setname_np("AudioSkywalkPipeReadLoop");
  v2 = os_log_create("com.apple.bluetooth", "BTAudioSkywalk");
  v3 = v2;
  v4 = *(a1 + 200);
  if (!v4)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10084B2FC(v3);
    }

    v4 = 22000;
    *(a1 + 200) = 22000;
  }

  v5 = 1000 * v4 * *(a1 + 196) / *(a1 + 192);
  policy_info = v5;
  v16 = v5 >> 2;
  v17 = v16;
  v18 = 0;
  v6 = mach_thread_self();
  thread_policy_set(v6, 2u, &policy_info, 4u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14.ident) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting AudioSkywalk read loop", &v14, 2u);
  }

  mach_absolute_time();
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  v7 = (a1 + 216);
  if (!atomic_load((a1 + 144)))
  {
    v9 = 20000000 * *(a1 + 196) / *(a1 + 192);
    do
    {
      memset(&v14, 0, sizeof(v14));
      kevent(*(a1 + 12), 0, 0, &v14, 1, 0);
      if (v14.filter != -1)
      {
        break;
      }

      v10 = mach_absolute_time();
      v11 = v10;
      if (*v7 && *(a1 + 224) && v10 > *v7 + v9)
      {
        (*(*(a1 + 168) + 16))();
      }

      sub_1005CB37C(a1);
      *(a1 + 216) = v11 + v5;
      *(a1 + 224) = v11;
    }

    while (!atomic_load((a1 + 144)));
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14.ident) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping AudioSkywalk read loop", &v14, 2u);
  }

  pthread_mutex_lock((a1 + 32));
  atomic_store(1u, (a1 + 145));
  pthread_cond_signal((a1 + 96));
  pthread_mutex_unlock((a1 + 32));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14.ident) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AudioSkywalk read loop stopped", &v14, 2u);
  }

  return 0;
}

void sub_1005CB37C(uint64_t a1)
{
  if (*(a1 + 176))
  {
    os_channel_ring_id();
    os_channel_rx_ring();
    if (os_channel_get_next_slot())
    {
      if (*(a1 + 208) == 1 && os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_DEBUG))
      {
        sub_10084B378();
      }

      (*(*(a1 + 152) + 16))(*(a1 + 152), 0);
      os_channel_get_next_slot();
      os_channel_advance_slot();
    }

    os_channel_sync();
  }

  else if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
  {
    sub_10084B3F4();
  }
}

uint64_t sub_1005CB48C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1005CAC64(a1, a3, a4);
  *v6 = off_100B00398;
  v6[30] = 0;
  v7 = v6 + 30;
  v6[31] = 0;
  v6[32] = 0;
  v6[29] = *(a2 + 8);
  v8 = [[NSUUID alloc] initWithUUIDBytes:a2 + 16];
  v9 = *(a1 + 248);
  *(a1 + 248) = v8;

  v21[0] = 0;
  v21[1] = 0;
  [*(a1 + 248) getUUIDBytes:v21];
  v20[0] = 0;
  v20[1] = 0;
  if (os_nexus_controller_alloc_provider_instance())
  {
    if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_10084B428();
    }
  }

  else
  {
    v10 = objc_alloc_init(NSUUID);
    v11 = *(a1 + 256);
    *(a1 + 256) = v10;

    v19[0] = 0;
    v19[1] = 0;
    [*(a1 + 256) getUUIDBytes:v19];
    os_nexus_controller_bind_provider_instance();
    os_nexus_controller_bind_provider_instance();
    v12 = [[NSUUID alloc] initWithUUIDBytes:v20];
    v13 = *(a1 + 240);
    *(a1 + 240) = v12;

    v14 = *(a1 + 16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *v7;
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registering Audio skywalk server channel to %@", &v17, 0xCu);
    }

    os_channel_attr_create();
    os_channel_attr_set();
    os_channel_attr_set_key();
    *(a1 + 176) = os_channel_create_extended();
    os_channel_attr_destroy();
    if (!*(a1 + 176) && os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      sub_10084B45C();
    }
  }

  return a1;
}

uint64_t sub_1005CB720(uint64_t a1)
{
  *a1 = off_100B00398;
  v3[0] = 0;
  v3[1] = 0;
  [*(a1 + 240) getUUIDBytes:v3];
  os_nexus_controller_free_provider_instance();

  sub_1005CAD10(a1);
  return a1;
}

void sub_1005CB808(uint64_t a1)
{
  sub_1005CB720(a1);

  operator delete();
}

uint64_t sub_1005CB850(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = off_100AFF238;
  sub_100044BBC((a1 + 8));
  *(a1 + 72) = 0;
  *(a1 + 76) = a4;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *a1 = off_100B003B8;
  v8 = sub_100044BBC((a1 + 96));
  *(a1 + 160) = 0;
  *(a1 + 168) = a3;
  *(a1 + 88) = sub_10057104C(v8, v9);
  return a1;
}

void sub_1005CB8F4(_Unwind_Exception *a1)
{
  sub_10007A068((v1 + 12));
  *v1 = v2;
  sub_10007A068((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t sub_1005CB920(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10084B490();
  }

  WORD2(v11) = WORD2(a3);
  LODWORD(v11) = a3;
  v8 = sub_1000E6554(off_100B508E8, &v11, 1);
  if (!a2)
  {
    v9 = v8;
    if (v8)
    {
      v12 = 0;
      sub_100016250(&v12);
      *&v11 = v12;
      *(&v11 + 1) = SWORD2(v12);
      sub_100538494(v9, a4, &v11);
      (*(**(a1 + 80) + 16))(*(a1 + 80), v9);
    }
  }

  return sub_1005B15E0(a1, 0);
}

void sub_1005CBA00(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 8);
  v2 = *(a1 + 72);
  sub_1000088CC(v3);
  if (v2)
  {
    sub_1000D660C();
  }

  else
  {
    sub_1005AF1D0(a1);
    sub_1005CBA60(a1);
  }
}

uint64_t sub_1005CBA60(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 96);
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 160);
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Stepping scan with mode %u", buf, 8u);
  }

  if (*(a1 + 160))
  {
    v4 = 114;
LABEL_6:
    *(a1 + 160) = 128;
    sub_10000801C(v6);
    sub_1005B15E0(a1, v4);
    return sub_1000088CC(v6);
  }

  *(a1 + 160) = 4;
  buf[0] = 0;
  sub_1000216B4(buf);
  v4 = sub_10023D470(sub_1005CBD08, *(a1 + 168) + 128, 4, a1);
  sub_10002249C(buf);
  if (v4)
  {
    goto LABEL_6;
  }

  return sub_1000088CC(v6);
}

void sub_1005CBB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002249C(va);
  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CBBC4(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 96);
  v2 = qword_100BCE8F0;
  if (os_log_type_enabled(qword_100BCE8F0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 160);
    *buf = 67109120;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping scan with mode %u", buf, 8u);
  }

  v4 = *(a1 + 160);
  if (v4 == 4)
  {
    v5 = *(a1 + 168);
    *(a1 + 160) = 128;
    sub_10000801C(v14);
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_10023D538(v5 + 128, v6, v7, v8, v9, v10, v11, v12);
    sub_100022214(buf);
    sub_10002249C(buf);
  }

  else if (!v4)
  {
    *(a1 + 160) = 128;
  }

  return sub_1000088CC(v14);
}

void sub_1005CBD08(uint64_t result, int a2, std::string::value_type *a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

uint64_t sub_1005CBDE0(uint64_t a1, uint64_t a2, int a3, int *a4, std::string::value_type *__s)
{
  *(a1 + 8) = 1;
  *a1 = &off_100B003F0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (a4)
  {
    v6 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 28) = v6;
  }

  if (__s)
  {
    std::string::assign((a1 + 40), __s);
  }

  return a1;
}

void sub_1005CBE68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CBE84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 28) | (*(a1 + 32) << 32);
  if (*(a1 + 63) < 0)
  {
    sub_100008904(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v5 = *(a1 + 56);
  }

  sub_1005CB920(v1, v2, v3 & 0xFFFFFFFFFFFFLL, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005CBF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005CBF28(uint64_t a1)
{
  *a1 = &off_100B003F0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

void sub_1005CBF78(uint64_t a1)
{
  *a1 = &off_100B003F0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  operator delete();
}

void *sub_1005CBFE8(void *a1)
{
  *a1 = off_100B003B8;
  sub_10007A068((a1 + 12));
  *a1 = off_100AFF238;
  sub_10007A068((a1 + 1));
  return a1;
}

void sub_1005CC050(void *a1)
{
  *a1 = off_100B003B8;
  sub_10007A068((a1 + 12));
  *a1 = off_100AFF238;
  sub_10007A068((a1 + 1));

  operator delete();
}

uint64_t sub_1005CC14C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  v10 = *(a1 + 80);
  v11 = (a1 + 88);
  if (v10 != (a1 + 88))
  {
    v12 = a5;
    do
    {
      v13 = v10[4];
      if (v13)
      {
        if (*(*(v13 + 32) + 160) == 1)
        {
          v14 = xpc_dictionary_create(0, 0, 0);
          v15 = v14;
          if (v14)
          {
            xpc_dictionary_set_uint64(v14, "kCBMsgArgID", *(v13 + 16));
            xpc_dictionary_set_uint64(v15, "kCBMsgArgDiscoveryAgentID", a2);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgStatus", a3);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgBTDevice", a4);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgResult", v12);
            sub_100383144(*(v13 + 32), "kCBMsgIdDiscoveryAgentStatusEvent", v15, 1);
          }
        }
      }

      v16 = v10[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
      }

      v10 = v17;
    }

    while (v17 != v11);
  }

  return sub_1000088CC(v20);
}

uint64_t sub_1005CC2D4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 8);
  v10 = *(a1 + 80);
  v11 = (a1 + 88);
  if (v10 != (a1 + 88))
  {
    v12 = a5;
    do
    {
      v13 = v10[4];
      if (v13)
      {
        if (*(*(v13 + 32) + 160) == 1)
        {
          v14 = xpc_dictionary_create(0, 0, 0);
          v15 = v14;
          if (v14)
          {
            xpc_dictionary_set_uint64(v14, "kCBMsgArgID", *(v13 + 16));
            xpc_dictionary_set_uint64(v15, "kCBMsgArgDiscoveryAgentID", a2);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgEvent", a3);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgBTDevice", a4);
            xpc_dictionary_set_uint64(v15, "kCBMsgArgAttributes", v12);
            sub_100383144(*(v13 + 32), "kCBMsgIdDiscoveryAgentDiscoveryEvent", v15, 1);
          }
        }
      }

      v16 = v10[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v10[2];
          v18 = *v17 == v10;
          v10 = v17;
        }

        while (!v18);
      }

      v10 = v17;
    }

    while (v17 != v11);
  }

  return sub_1000088CC(v20);
}

void sub_1005CC45C(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a5)
  {
    if (qword_100B540D0 != -1)
    {
      sub_10084B4A4();
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005CC524;
    v10[3] = &unk_100AF2780;
    v10[4] = a3;
    v10[5] = result;
    v10[6] = a5;
    v11 = a2;
    v12 = a4;
    sub_100614A70(off_100B540C8, v10);
  }
}

void sub_1005CC524(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_10084B4B8();
  }

  if (!sub_100618944(qword_100B50B80, *(a1 + 32)))
  {
    goto LABEL_10;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10084B4B8();
  }

  if (sub_100618944(qword_100B50B80, *(a1 + 40)))
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v6 = *(a1 + 60);

    sub_1005CC14C(v2, v3, v5, v4, v6);
  }

  else
  {
LABEL_10:
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10084B4CC(v7);
    }
  }
}

uint64_t sub_1005CC5F0(uint64_t result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a5)
  {
    return sub_1005CC2D4(a5, result, a2, a3, a4);
  }

  return result;
}

void sub_1005CC614(id a1)
{
  v9 = "kCBMsgIdDiscoveryAgentCreateMsg";
  v10 = 31;
  v11 = &v9;
  v1 = sub_1005CD53C(&xmmword_100BCE828, &v9, &unk_1008A9BD0, &v11);
  v1[4] = sub_1005CC854;
  v1[5] = 0;
  v9 = "kCBMsgIdDiscoveryAgentDestroyMsg";
  v10 = 32;
  v11 = &v9;
  v2 = sub_1005CD53C(&xmmword_100BCE828, &v9, &unk_1008A9BD0, &v11);
  v2[4] = sub_1005CCA68;
  v2[5] = 0;
  v9 = "kCBMsgIdDiscoveryAgentStartScanMsg";
  v10 = 34;
  v11 = &v9;
  v3 = sub_1005CD53C(&xmmword_100BCE828, &v9, &unk_1008A9BD0, &v11);
  v3[4] = sub_1005CCC98;
  v3[5] = 0;
  v9 = "kCBMsgIdDiscoveryAgentStartScanForAdvertizedDataMsg";
  v10 = 51;
  v11 = &v9;
  v4 = sub_1005CD53C(&xmmword_100BCE828, &v9, &unk_1008A9BD0, &v11);
  v4[4] = sub_1005CCE0C;
  v4[5] = 0;
  v9 = "kCBMsgIdDiscoveryAgentStopScanMsg";
  v10 = 33;
  v11 = &v9;
  v5 = sub_1005CD53C(&xmmword_100BCE828, &v9, &unk_1008A9BD0, &v11);
  v5[4] = sub_1005CCED4;
  v5[5] = 0;
  v9 = "kCBMsgIdDiscoveryAgentGetDevicesMsg";
  v10 = 35;
  v11 = &v9;
  v6 = sub_1005CD53C(&xmmword_100BCE828, &v9, &unk_1008A9BD0, &v11);
  v6[4] = sub_1005CCF9C;
  v6[5] = 0;
  v9 = "kCBMsgIdDiscoveryAgentAddKeyMsg";
  v10 = 31;
  v11 = &v9;
  v7 = sub_1005CD53C(&xmmword_100BCE828, &v9, &unk_1008A9BD0, &v11);
  v7[4] = sub_1005CD180;
  v7[5] = 0;
  v9 = "kCBMsgIdDiscoveryAgentRemoveKeyMsg";
  v10 = 34;
  v11 = &v9;
  v8 = sub_1005CD53C(&xmmword_100BCE828, &v9, &unk_1008A9BD0, &v11);
  v8[4] = sub_1005CD280;
  v8[5] = 0;
}

uint64_t sub_1005CC854(uint64_t a1, xpc_object_t xdict)
{
  value = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSessionID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084B524();
  }

  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  if (uint64)
  {
    v7 = *(a1 + 72);
    v8 = *(v7 + 40);
    asid = xpc_connection_get_asid(*(v7 + 16));
    if (qword_100B50B88 != -1)
    {
      sub_10084B58C();
    }

    if (sub_100618FB0(qword_100B50B80, uint64, v8, asid))
    {
      v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040DFBAE579uLL);
      v14 = v10;
      v10[1] = sub_1005CC5F0;
      v10[2] = v6;
      *v10 = sub_1005CC45C;
      v10[4] = *(a1 + 72);
      LODWORD(uint64) = sub_1005AD1DC(uint64, v10, a1, &value);
      if (uint64)
      {
        free(v10);
      }

      else
      {
        v10[3] = value;
        sub_1000452CC(a1 + 80, &v14, &v14);
      }

      uint64 = uint64;
    }

    else
    {
      uint64 = 7;
    }
  }

  else
  {
    uint64 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  v12 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgDiscoveryAgentID", value);
    xpc_dictionary_set_uint64(v12, "kCBMsgArgResult", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }

  return sub_1000088CC(v15);
}

void sub_1005CCA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CCA68(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoveryAgentID");
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084B5B4(uint64, v6, v7, v8, v9, v10, v11, v12);
  }

  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 8);
  if (uint64)
  {
    v23 = uint64;
    v13 = *(a1 + 80);
    if (v13 == (a1 + 88))
    {
      uint64 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v22 = v13[4];
        if (v23 == *(v22 + 3))
        {
          v14 = sub_1005AD298(&v23);
          if (v14)
          {
            v15 = qword_100BCE950;
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v26 = uint64;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not destroy discovery agent %llx", buf, 0xCu);
            }
          }

          else
          {
            sub_100075DC4((a1 + 80), &v22);
            free(v22);
            v14 = 0;
          }
        }

        v16 = v13[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v13[2];
            v18 = *v17 == v13;
            v13 = v17;
          }

          while (!v18);
        }

        v13 = v17;
      }

      while (v17 != (a1 + 88));
      uint64 = v14;
    }
  }

  reply = xpc_dictionary_create_reply(xdict);
  v20 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v20);
    xpc_release(v20);
  }

  return sub_1000088CC(v24);
}

void sub_1005CCC98(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoveryAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoveryMode");
  v7 = xpc_dictionary_get_uint64(value, "kCBMsgArgServices");
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218496;
    v13 = uint64;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BTDiscoveryMsgHandler::handleBTDiscoveryAgentStartScanMsg discvoveryAgentID:%llx mode:%llx services:%llx", &v12, 0x20u);
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v9 = sub_1005AD2E8(uint64, v6, v7);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_1005CCE0C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoveryAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084B624();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1005AD4E4(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1005CCED4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoveryAgentID");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084B68C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1005AD5D8(uint64);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_1005CCF9C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoveryAgentID");
  v6 = xpc_dictionary_get_uint64(value, "kCbMsgArgDeviceArrayMaxSize");
  v15 = 0;
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  bzero(&v15 - v7, v9);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084B6F4();
  }

  v10 = 1;
  if (uint64 && v6 <= 0x100)
  {
    v10 = sub_1005AD6C4(uint64, v8, &v15, v6);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v10);
    xpc_dictionary_set_uint64(v12, "kCbMsgArgDeviceArrayMaxSize", v15);
    v13 = xpc_array_create(0, 0);
    if (!v10 && v15)
    {
      for (i = 0; i < v15; ++i)
      {
        xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, *&v8[8 * i]);
      }
    }

    xpc_dictionary_set_value(v12, "kCBMsgArgDeviceArray", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v13);
    xpc_release(v12);
  }
}

void sub_1005CD180(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoveryAgentID");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgKey", &length);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084B75C();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1005AD850(uint64, data, length);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1005CD280(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgDiscoveryAgentID");
  length = 0;
  data = xpc_dictionary_get_data(value, "kCBMsgArgKey", &length);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10084B7C4();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_1005AD900(uint64, data, length);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1005CD384(void *a1)
{
  sub_1004B0900(a1);

  operator delete();
}

uint64_t sub_1005CD3BC(void *a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, (a1 + 1));
  v2 = a1[10];
  v3 = a1 + 11;
  if (v2 != a1 + 11)
  {
    do
    {
      free(v2[4]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  sub_10000CEDC((a1 + 10), a1[11]);
  a1[11] = 0;
  a1[12] = 0;
  a1[10] = v3;
  return sub_1000088CC(v8);
}

uint64_t **sub_1005CD53C(void *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_100059420(&v19, *a2, *(a2 + 8));
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
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
LABEL_20:
    operator new();
  }

  v16 = a2;
  v14 = *a2;
  v15 = *(v16 + 8);
  while (1)
  {
    v17 = v13[1];
    if (v17 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v17 >= *&v8)
      {
        v17 %= *&v8;
      }
    }

    else
    {
      v17 &= *&v8 - 1;
    }

    if (v17 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (v13[3] != v15 || memcmp(v13[2], v14, v15))
  {
    goto LABEL_19;
  }

  return v13;
}

void sub_1005CD7B8()
{
  v0 = objc_autoreleasePoolPush();
  xmmword_100BCE828 = 0u;
  unk_100BCE838 = 0u;
  dword_100BCE848 = 1065353216;
  __cxa_atexit(sub_1005CC148, &xmmword_100BCE828, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void sub_1005CD824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    sub_1000C2364(a2, &v26, &v25, &v24 + 1, &v24);
    v23 = 0;
    sub_10053FD5C(a2, &v23);
    v5 = objc_alloc_init(CBUserNotificationRequest);
    [v5 setEvent:a3];
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v7 = v22 >= 0 ? __p : __p[0];
      *buf = 136447234;
      *&buf[4] = "void BT::UserNotificationRequest::postUserNotificationHIDWithDevice(Device *, CBUserNotificationEvent)";
      v28 = 2082;
      v29 = v7;
      v30 = 1024;
      v31 = v25;
      v32 = 1024;
      v33 = HIDWORD(v24);
      v34 = 1024;
      v35 = v24;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: “%{public}s” notify event for HID device;  vid 0x%x pid 0x%x version 0x%x", buf, 0x28u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = objc_alloc_init(CBDevice);
    [v8 setProductID:HIDWORD(v24)];
    [v8 setVendorID:v25];
    v9 = [[NSData alloc] initWithBytes:a2 + 128 length:6];
    [v8 setBtAddressData:v9];

    v10 = [NSNumber numberWithUnsignedInt:v24];
    v11 = [v10 stringValue];
    [v8 setFirmwareVersion:v11];

    if (v23 >= 0x65)
    {
      v12 = 0;
    }

    else
    {
      v12 = v23;
    }

    [v8 setBatteryInfoMain:v12];
    sub_1000C23E0(a2, buf);
    if (v30 >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v14 = [NSString stringWithUTF8String:v13];
    [v8 setName:v14];

    if (SHIBYTE(v30) < 0)
    {
      operator delete(*buf);
    }

    if ((sub_1005CDBFC([v5 setDevice:v8], v5) & 1) == 0)
    {
      v15 = objc_alloc_init(CBUserController);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1005CDEA0;
      v17[3] = &unk_100AEB260;
      v18 = v5;
      v19 = v8;
      v20 = v15;
      v16 = v15;
      [v16 userNotificationEvent:v18 completion:v17];
    }
  }

  else
  {
    sub_10084B82C();
  }
}

uint64_t sub_1005CDBFC(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((SBSIsSystemApertureAvailable() & 1) == 0)
  {
    sub_10084B8D0(buf);
    v8 = buf[0];
    goto LABEL_22;
  }

  v3 = v2;
  v4 = v3;
  if (!v3)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084BAD0(v11, v12, v13);
    }

    v8 = 0;
    goto LABEL_21;
  }

  v5 = [v3 device];
  if (v5)
  {
    if ([v4 event] == 1)
    {
      v6 = objc_alloc_init(BTServicesClient);
      v7 = NSSelectorFromString(@"showHIDConnectedBannerAperture:completion:");
      v8 = objc_opt_respondsToSelector();
      if (v8)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1005CDEA8;
        v22[3] = &unk_100AFC890;
        v9 = v6;
        v23 = v9;
        v10 = objc_retainBlock(v22);
        [v9 performSelector:v7 withObject:v5 withObject:v10];
      }

      else
      {
        v18 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10084B9D8(v18, v19, v20);
        }

        [v6 invalidate];
      }

      goto LABEL_20;
    }

    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10084B97C(buf, [v4 event], v17);
    }
  }

  else
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084BA54(v14, v15, v16);
    }
  }

  v8 = 0;
LABEL_20:

LABEL_21:
LABEL_22:

  return v8 & 1;
}

void sub_1005CDEB0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (v4)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10084BB4C();
    }

    if (sub_10078DEFC(off_100B508C8, v4))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10084BB4C();
      }

      v5 = sub_10078F7A8(off_100B508C8, v4);
      if ([v5 length] < 5)
      {
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v6 = [v5 bytes];
        v7 = *(v6 + 1);
        v8 = *(v6 + 3);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10084BB4C();
      }

      v9 = sub_100046458(off_100B508C8, v4, 0);
      v10 = v9;
      v26 = 0;
      v25 = 0;
      if (v9)
      {
        LOBYTE(v25) = BYTE5(v9);
        BYTE1(v25) = BYTE4(v9);
        BYTE2(v25) = BYTE3(v9);
        HIBYTE(v25) = BYTE2(v9);
        LOBYTE(v26) = BYTE1(v9);
        HIBYTE(v26) = v9;
      }

      v11 = objc_alloc_init(CBUserNotificationRequest);
      [v11 setEvent:a3];
      v12 = qword_100BCE8D8;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (qword_100B508D0 != -1)
        {
          sub_10084BB4C();
        }

        sub_10004FFDC(off_100B508C8, v4, __p);
        if (v28 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        *buf = 136446978;
        *&buf[4] = "void BT::UserNotificationRequest::postUserNotificationHIDWithUUID(NSUUID *__strong, CBUserNotificationEvent)";
        *&buf[12] = 2082;
        *&buf[14] = v13;
        *&buf[22] = 1024;
        v30 = v7;
        v31 = 1024;
        v32 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: “%{public}s” notify event for LE HID device;  vid 0x%x pid 0x%x", buf, 0x22u);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = objc_alloc_init(CBDevice);
      [v14 setProductID:v8];
      [v14 setVendorID:v7];
      if (v10)
      {
        v15 = [[NSData alloc] initWithBytes:&v25 length:6];
        [v14 setBtAddressData:v15];
      }

      memset(buf, 0, sizeof(buf));
      if (qword_100B508D0 != -1)
      {
        sub_10084BBE8();
      }

      sub_10004FFDC(off_100B508C8, v4, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v16 = buf;
      }

      else
      {
        v16 = *buf;
      }

      v17 = [NSString stringWithUTF8String:v16];
      [v14 setName:v17];

      if ((sub_1005CDBFC([v11 setDevice:v14], v11) & 1) == 0)
      {
        v18 = objc_alloc_init(CBUserController);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1005CE3AC;
        v21[3] = &unk_100AEB260;
        v22 = v11;
        v23 = v14;
        v24 = v18;
        v19 = v18;
        [v19 userNotificationEvent:v22 completion:v21];
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (qword_100B508D0 != -1)
        {
          sub_10084BB4C();
        }

        sub_10004FFDC(off_100B508C8, v4, buf);
        sub_10084BB60(buf, __p, v20);
      }
    }
  }

  else
  {
    sub_10084BC10();
  }
}

uint64_t sub_1005CE41C(uint64_t a1)
{
  *sub_100589578(a1, "GamingService", 2048) = &off_100B004F8;
  if (qword_100B54A98 != -1)
  {
    sub_10084BCB4();
  }

  sub_100589880(a1, off_100B54A90);
  return a1;
}

uint64_t sub_1005CE4B0(uint64_t a1)
{
  if (qword_100B54A98 != -1)
  {
    sub_10084BCB4();
  }

  v2 = off_100B54A90;

  return sub_1005CEAB0(v2);
}

uint64_t sub_1005CE4F4(uint64_t a1, uint64_t a2)
{
  v11 = xmmword_1008A9EC0;
  result = sub_10053C3E8(a2);
  if (result)
  {
    v5 = sub_10053A020(a2, &v11, 4u);
    v6 = *(a1 + 32);
    v12 = 0;
    if (v5)
    {
      sub_100016250(&v12);
      *&v10 = v12;
      *(&v10 + 1) = SWORD2(v12);
      v7 = a2;
      v8 = v6;
      v9 = 4;
    }

    else
    {
      sub_100016250(&v12);
      *&v10 = v12;
      *(&v10 + 1) = SWORD2(v12);
      v7 = a2;
      v8 = v6;
      v9 = 1;
    }

    return sub_100539554(v7, v8, v9, &v10, 0);
  }

  return result;
}

uint64_t sub_1005CE5B0(uint64_t a1)
{
  v1 = (*(*a1 + 112))(a1);
  if (v1)
  {
    v3 = sub_10009BD9C(v1, v2);
    (*(*v3 + 120))(v3, 120, 10);
  }

  return 1;
}

void sub_1005CE624(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1005CE6D4(uint64_t a1)
{
  result = sub_10032F49C(a1, 18);
  *result = off_100B00620;
  *(result + 288) = 0;
  *(result + 276) = 0;
  *(result + 252) = 0;
  *(result + 260) = 0;
  *(result + 268) = 0;
  return result;
}

uint64_t sub_1005CE720(void *a1)
{
  *a1 = off_100B00620;
  v2 = a1[34];
  if (v2)
  {
    sub_100117644(v2);
  }

  return sub_10032F580(a1);
}

void sub_1005CE780(void *a1)
{
  sub_1005CE720(a1);

  operator delete();
}

uint64_t sub_1005CE7C4(uint64_t a1)
{
  *(a1 + 252) = 0;
  v3 = 0;
  sub_1000216B4(&v3);
  if (sub_1002298D4(sub_1005CE89C, sub_1005CE908, &off_100B00678, sub_1005CE960, &off_100B00688, 0, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10084BCC8();
    }

    v1 = 1;
  }

  else
  {
    v1 = 0;
  }

  sub_10002249C(&v3);
  return v1;
}

uint64_t sub_1005CE89C(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a3;
  if (qword_100B54A98 != -1)
  {
    sub_10084BD04();
  }

  v6 = off_100B54A90;

  return sub_1005CF1B0(v6, a2, a1, v3);
}

void sub_1005CE908(unsigned int a1)
{
  if (sub_1002274C0(a1, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10084BD18();
    }
  }
}

void sub_1005CE960(unsigned int a1)
{
  if (sub_100227508(a1, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10084BD88();
    }
  }
}

uint64_t sub_1005CE9B8(uint64_t a1)
{
  v6 = 0;
  sub_1000216B4(&v6);
  v2 = *(a1 + 252);
  if (v2)
  {
    sub_1002F8018(v2);
    *(a1 + 252) = 0;
  }

  v3 = *(a1 + 256);
  if (v3)
  {
    free(v3);
    *(a1 + 256) = 0;
  }

  if (sub_100227438(2))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10084BDF8();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_10002249C(&v6);
  return v4;
}

uint64_t sub_1005CEA70(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    sub_10042CAE8(v2);
    v3 = *(a1 + 272);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  return 0;
}

uint64_t sub_1005CEAB0(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_10084BE34();
  }

  v22 = 0u;
  v23 = 0u;
  v2 = sub_100573910(off_100B50898);
  v19 = &v19;
  v20 = &v19;
  v21 = 0;
  v18 = 0;
  if (qword_100B508A0 != -1)
  {
    sub_10084BE48();
  }

  sub_100573958(off_100B50898, &v19);
  if (qword_100B508A0 != -1)
  {
    sub_10084BE48();
  }

  sub_1005739C8(off_100B50898, &v18);
  if (*(a1 + 80) == 1)
  {
    v17 = 0;
    sub_1000216B4(&v17);
    v3 = *(a1 + 256);
    if (v3)
    {
      free(v3);
      *(a1 + 256) = 0;
    }

    v4 = *(a1 + 252);
    if (v4)
    {
      sub_1002F8018(v4);
      *(a1 + 252) = 0;
    }

    if (v2)
    {
      v5 = malloc_type_calloc(2 * v2 + 6, 0x18uLL, 0x10F20406C095635uLL);
      v6 = v5;
      if (!v5)
      {
        if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
        {
          sub_10084BEE0();
        }

        goto LABEL_26;
      }

      *v5 = 1;
      v5[8] = 6;
      *(v5 + 5) = 1;
      *(v5 + 2) = &unk_1008AA6A8;
      *(v5 + 12) = 4;
      v5[32] = 6;
      *(v5 + 17) = 2;
      *(v5 + 5) = &unk_100B00698;
      *(v5 + 24) = 9;
      v5[56] = 6;
      *(v5 + 29) = 1;
      *(v5 + 8) = &unk_100B006B8;
      *(v5 + 36) = 778;
      v5[80] = 1;
      *(v5 + 41) = 4;
      *(v5 + 22) = 0;
      *(v5 + 48) = -4096;
      v5[104] = 1;
      *(v5 + 53) = 1;
      *(v5 + 28) = v18;
      *(v5 + 60) = 512;
      v5[128] = 1;
      *(v5 + 65) = 4;
      *(v5 + 34) = v2;
      v7 = v20;
      if (v20 != &v19)
      {
        v8 = 0;
        do
        {
          v9 = v7[2];
          v10 = &v5[24 * (v8 + 6)];
          *v10 = v8 + 513;
          v11 = v9[1];
          *(v10 + 5) = v9[2];
          v10[8] = 4;
          *(v10 + 2) = v11;
          v12 = &v5[24 * (v8 + 7)];
          *v12 = v8 + 514;
          v12[8] = 4;
          v14 = v9 + 3;
          v13 = v9[3];
          *(v12 + 5) = v14[1];
          *(v12 + 2) = v13;
          v7 = v7[1];
          v8 += 2;
        }

        while (v7 != &v19);
      }

      *&v22 = v5;
      WORD4(v22) = 2 * v2 + 6;
      *&v23 = &unk_100B006C8;
      WORD4(v23) = 1;
      if (sub_1002F7E1C(&v22, (a1 + 252)))
      {
        if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
        {
          sub_10084BE70();
        }

        free(v6);
LABEL_26:
        v15 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0;
    }

    v15 = 0;
    *(a1 + 256) = v6;
    *(a1 + 288) = v2;
LABEL_27:
    sub_10002249C(&v17);
    goto LABEL_28;
  }

  v15 = 105;
LABEL_28:
  sub_100028EB4(&v19);
  return v15;
}

void sub_1005CEDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CEDC8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_100227254(2, 2, a2 + 128, 4111, sub_1005CEEC8, sub_1005CEF70, sub_1005CEFC4, sub_1005CF008, sub_1005CF07C, sub_1005CF0D0);
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10084BF1C();
    }

    v3 = 305;
  }

  sub_10002249C(&v5);
  return v3;
}

void sub_1005CEEC8(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = a1;
  if (qword_100B508F0 != -1)
  {
    sub_10084BF8C();
  }

  v7 = *a2;
  v8 = *(a2 + 2);
  v6 = sub_1000E6554(off_100B508E8, &v7, 1);
  if (qword_100B54A98 != -1)
  {
    sub_10084BFA0();
  }

  sub_1005CF30C(off_100B54A90, v6, v5, a3);
}

uint64_t sub_1005CEF70(uint64_t a1)
{
  if (qword_100B54A98 != -1)
  {
    sub_10084BD04();
  }

  v2 = off_100B54A90;

  return sub_1005CF408(v2, a1);
}

uint64_t sub_1005CEFC4(uint64_t a1)
{
  if (qword_100B54A98 != -1)
  {
    sub_10084BD04();
  }

  v2 = off_100B54A90;

  return sub_1005CF4E8(v2);
}

uint64_t sub_1005CF008(const void *a1, unsigned int a2)
{
  if (qword_100B54A98 != -1)
  {
    sub_10084BD04();
  }

  v4 = *(off_100B54A90 + 33);
  if (!v4)
  {
    return 3404;
  }

  return sub_10042CE6C(v4, a1, a2);
}

pthread_cond_t *sub_1005CF07C(uint64_t a1)
{
  if (qword_100B54A98 != -1)
  {
    sub_10084BD04();
  }

  result = *(off_100B54A90 + 33);
  if (result)
  {

    return sub_10042CDF8(result);
  }

  return result;
}

uint64_t sub_1005CF0D0(uint64_t a1, int a2)
{
  v3 = a1;
  if (qword_100B54A98 != -1)
  {
    sub_10084BD04();
  }

  v4 = off_100B54A90;
  v5 = sub_10057E420(off_100B54A90, v3);

  return sub_10057E710(v4, v5, 0, a2);
}

BOOL sub_1005CF148(void *a1, unint64_t a2)
{
  v2 = sub_10057E30C(a1, a2);
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_100227434(v2) != 0;
  sub_10002249C(&v5);
  return v3;
}

uint64_t sub_1005CF1B0(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10084BF8C();
  }

  v11 = *a2;
  v12 = *(a2 + 2);
  v8 = sub_1000E6554(off_100B508E8, &v11, 1);
  if (*(a1 + 288))
  {
    v9 = v8;
    if (sub_10057DFAC(a1, v8))
    {
      sub_10057D9B0(a1, v9, 1);
    }
  }

  result = sub_10022718C(a3, a4, sub_1005CEEC8, sub_1005CEF70, sub_1005CEFC4, sub_1005CF008, sub_1005CF07C, sub_1005CF0D0, 0);
  if (result)
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10084BFC8();
    }

    return sub_100227434(a3);
  }

  return result;
}