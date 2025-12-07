void sub_1006CC390(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, uint64_t a6, int a7)
{
  if (qword_100B508F0 != -1)
  {
    sub_100861A8C();
  }

  v75 = *a2;
  v76 = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, &v75, 1);
  v62 = 0;
  v63 = v12;
  v60 = 0;
  v61 = 0;
  bzero(&v75, 0x201uLL);
  if (a7)
  {
    if (a7 != 3301)
    {
      v17 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      sub_1000E5A58(v12, __p);
      if (__p[23] >= 0)
      {
        v44 = __p;
      }

      else
      {
        v44 = *__p;
      }

      *buf = 67109634;
      *&buf[4] = a5;
      *&buf[8] = 2082;
      *&buf[10] = v44;
      *&buf[18] = 1024;
      *&buf[20] = a7;
      v19 = "Received invalid response for PDU 0x%02x from device %{public}s - result was %{bluetooth:OI_STATUS}u";
      goto LABEL_73;
    }

    v13 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v12, buf);
      v43 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *__p = 67109378;
      *&__p[4] = a5;
      *&__p[8] = 2082;
      *&__p[10] = v43;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received 'not implemented' response for PDU 0x%02x from device %{public}s", __p, 0x12u);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v14 = sub_100204684(a4, a5, &v60, &v75);
  v16 = v14;
  if (v14)
  {
    v17 = qword_100BCE930;
    if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    sub_1000E5A58(v63, __p);
    if (__p[23] >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = *__p;
    }

    *buf = 67109634;
    *&buf[4] = a5;
    *&buf[8] = 2082;
    *&buf[10] = v18;
    *&buf[18] = 1024;
    *&buf[20] = v16;
    v19 = "Failed to unmarshal response for PDU 0x%02x from device %{public}s - result was %{bluetooth:OI_STATUS}u";
LABEL_73:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x18u);
    if ((__p[23] & 0x80000000) != 0)
    {
      v40 = *__p;
      goto LABEL_75;
    }

    return;
  }

  switch(a5)
  {
    case 80:
      if (*a4 != 9)
      {
        v41 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
        {
          sub_100862A98(&v63, v41, v42);
        }

        return;
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, a1 + 392);
      v31 = v61;
      *__p = &v63;
      *(sub_1005C468C(a1 + 456, &v63, &unk_1008A9BD0, __p) + 10) = v31;
      if (qword_100B50AE0 != -1)
      {
        sub_10086188C();
      }

      LOBYTE(v32) = v61;
      sub_1004DAA9C(qword_100B50AD8, v63, *a4, v32 / 127.0);
      goto LABEL_44;
    case 49:
      v23 = *v61;
      if (v23 == 13)
      {
        if ((*a4 | 2) != 0xF)
        {
          v47 = sub_1000DAB84(v14, v15);
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_1006CCEC0;
          v53[3] = &unk_100ADF8F8;
          v53[4] = v63;
          sub_10000CA94(v47, v53);
          return;
        }

        v24 = v61[8];
        v25 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v63, __p);
          v26 = __p[23] >= 0 ? __p : *__p;
          *buf = 67109634;
          *&buf[4] = v24;
          *&buf[8] = 1024;
          *&buf[10] = (3302700 * v24) >> 22;
          *&buf[14] = 2082;
          *&buf[16] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Received notification for absolute volume 0x%02x (~%d%%) from device %{public}s", buf, 0x18u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v58[0] = 0;
        v58[1] = 0;
        sub_100007F88(v58, a1 + 392);
        *buf = &v63;
        *(sub_1005C468C(a1 + 456, &v63, &unk_1008A9BD0, buf) + 10) = v24;
        sub_10000801C(v58);
        v73 = 0;
        v72 = 0u;
        memset(v71, 0, sizeof(v71));
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_1000DE474(&buf[1]);
        buf[18] = 0;
        buf[20] = 0;
        BYTE2(v68) = 0;
        BYTE4(v68) = 0;
        HIDWORD(v71[2]) = 0;
        v67 = 0uLL;
        *&buf[24] = 0;
        LOBYTE(v68) = 0;
        v69 = 0uLL;
        *(&v68 + 1) = 0;
        LOBYTE(v70) = 0;
        v71[0] = 0;
        v71[1] = 0;
        *(&v70 + 1) = 0;
        *(&v71[1] + 7) = 0;
        LOBYTE(v71[3]) = 1;
        *(&v71[3] + 6) = 0;
        *(&v71[3] + 1) = 0;
        v72 = 0uLL;
        v71[5] = 0;
        LOBYTE(v73) = 0;
        *(&v73 + 2) = 0;
        v27 = sub_100536A18(v63, buf);
        if (v27 && BYTE10(v72) == 1)
        {
          v29 = qword_100BCE930;
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v63, v64);
            v30 = v65 >= 0 ? v64 : v64[0];
            *__p = 67109634;
            *&__p[4] = v24;
            *&__p[8] = 1024;
            *&__p[10] = (3302700 * v24) >> 22;
            *&__p[14] = 2082;
            *&__p[16] = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Ignoring notification for absolute volume 0x%02x (~%d%%) from device %{public}s", __p, 0x18u);
            if (v65 < 0)
            {
              operator delete(v64[0]);
            }
          }
        }

        else
        {
          v45 = *a4;
          v46 = sub_1000DAB84(v27, v28);
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_1006CCE54;
          v55[3] = &unk_100AF2A50;
          v55[4] = v63;
          v56 = v24;
          v57 = v45;
          sub_10000CA94(v46, v55);
        }

        if (*a4 == 13)
        {
          v54 = 0;
          if (sub_100204414(a2, &v54, 13))
          {
            if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(v63, __p);
              sub_100862B2C();
            }
          }
        }

        if (SHIBYTE(v71[1]) < 0)
        {
          operator delete(*(&v70 + 1));
        }

        if (SHIBYTE(v69) < 0)
        {
          operator delete(*(&v68 + 1));
        }

        if (SHIBYTE(v67) < 0)
        {
          operator delete(*&buf[24]);
        }

        nullsub_21();
        v33 = v58;
LABEL_88:
        sub_1000088CC(v33);
        return;
      }

      v34 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      sub_1000E5A58(v63, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v37 = buf;
      }

      else
      {
        v37 = *buf;
      }

      *__p = 67109378;
      *&__p[4] = v23;
      *&__p[8] = 2082;
      *&__p[10] = v37;
      v36 = "Received notification with unknown id 0x%02x from device %{public}s";
      break;
    case 16:
      if (*a4 == 12 && v61 == 3)
      {
        v20 = BYTE1(v61);
        if (!BYTE1(v61))
        {
          return;
        }

        v21 = v62;
        while (1)
        {
          v22 = *v21++;
          if (v22 == 13)
          {
            break;
          }

          if (!--v20)
          {
            return;
          }
        }

        v48 = qword_100BCE930;
        if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v63, buf);
          v49 = (buf[23] & 0x80u) == 0 ? buf : *buf;
          *__p = 136446210;
          *&__p[4] = v49;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Registering for absolute volume change notifications on device %{public}s", __p, 0xCu);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        LOBYTE(v58[0]) = 0;
        if (sub_100204414(a2, v58, 13))
        {
          if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
          {
            sub_100862B7C();
          }

          return;
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_100007F88(buf, a1 + 392);
        *__p = &v63;
        *(sub_1005C468C(a1 + 456, &v63, &unk_1008A9BD0, __p) + 10) = 30;
        sub_10000801C(buf);
        v52 = sub_1000DAB84(v50, v51);
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_1006CCDFC;
        v59[3] = &unk_100ADF8F8;
        v59[4] = v63;
        sub_10000CA94(v52, v59);
LABEL_44:
        v33 = buf;
        goto LABEL_88;
      }

      v34 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      sub_1000E5A58(v63, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v38 = buf;
      }

      else
      {
        v38 = *buf;
      }

      v39 = *a4;
      *__p = 136446466;
      *&__p[4] = v38;
      *&__p[12] = 1024;
      *&__p[14] = v39;
      v36 = "Received error response for get capabilities request from device %{public}s - response was 0x%02x";
      break;
    default:
      v34 = qword_100BCE930;
      if (!os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      sub_1000E5A58(v63, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v35 = buf;
      }

      else
      {
        v35 = *buf;
      }

      *__p = 67109378;
      *&__p[4] = a5;
      *&__p[8] = 2082;
      *&__p[10] = v35;
      v36 = "Received response for unsupported PDU 0x%02x from device %{public}s";
      break;
  }

  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v36, __p, 0x12u);
  if (buf[23] < 0)
  {
    v40 = *buf;
LABEL_75:
    operator delete(v40);
  }
}

void sub_1006CCDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_100320BE8(va);
  sub_1000088CC(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CCDFC(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100862BE4();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004DA8A4(v2, v3, 1);
}

uint64_t sub_1006CCE54(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100862BE4();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40) / 127.0;
  v5 = *(a1 + 44);

  return sub_1004DAA9C(v2, v3, v5, v4);
}

uint64_t sub_1006CCEC0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100862BE4();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004DA8A4(v2, v3, 0);
}

void sub_1006CCF18(float a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v5 = sub_10000E92C();
  sub_100007E30(buf, "PTS");
  sub_100007E30(__p, "AVRCPControllerHack");
  v6 = (*(*v5 + 72))(v5, buf, __p, &v18);
  if (v24 < 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*buf);
  }

  v18 = v6;
  if (a3)
  {
    v7 = v6 ^ 1;
    if (a1 != 0.0)
    {
      v7 = 1;
    }

    if (v7)
    {
      v12 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a3, __p);
        v13 = v24 >= 0 ? __p : *__p;
        *buf = 67109634;
        *&buf[4] = (a1 * 127.0);
        v26 = 1024;
        v27 = (a1 * 100.0);
        v28 = 2082;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting absolute volume to 0x%02x (~%d%%) on device %{public}s", buf, 0x18u);
        if (v24 < 0)
        {
          operator delete(*__p);
        }
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v10 = sub_1001A55F0((a3 + 128), (a1 * 127.0));
      v11 = buf;
    }

    else
    {
      LOBYTE(v16[0]) = 0;
      v8 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a3, buf);
        v9 = SHIBYTE(v29) >= 0 ? buf : *buf;
        *__p = 136446210;
        *&__p[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting absolute volume to zero (muted) on device %{public}s", __p, 0xCu);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(*buf);
        }
      }

      v19[0] = 0;
      sub_1000216B4(v19);
      if (sub_1001A53C0((a3 + 128), v16, 67) && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a3, buf);
        sub_100862BF8();
      }

      v10 = sub_1001A53C0((a3 + 128), v16, 195);
      if (v10 && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a3, __p);
        sub_100862C48();
      }

      v11 = v19;
    }

    sub_10002249C(v11);
    if (v10)
    {
      v14 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a3, v16);
        if (v17 >= 0)
        {
          v15 = v16;
        }

        else
        {
          v15 = v16[0];
        }

        *v19 = 136446466;
        v20 = v15;
        v21 = 1024;
        v22 = v10;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to set absolute volume on device %{public}s - result was %{bluetooth:OI_STATUS}u", v19, 0x12u);
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }
    }
  }
}

uint64_t sub_1006CD320(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v3 = sub_1001F2EFC(a2, xmmword_1008C4D28, xmmword_1008C4D28, a3);
  if (v3 && os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
  {
    sub_100862C98();
  }

  return v3;
}

uint64_t sub_1006CD38C(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  sub_10057C6D0(a2, 3);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 104);
  sub_10057C6D0(a2, 16);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 103);
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v7 = sub_1000C0D40(*a3, &v9, &v11, &v10);
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_100862CD4();
    }
  }

  else
  {
    sub_10057C6D0(a2, 1);
    sub_10057C6D0(a2, 7);
    sub_10057C70C(a2, *a3);
    sub_10057C70C(a2, v9);
    sub_10057C70C(a2, v11);
    sub_10057C6D0(a2, v10);
  }

  if (*a4)
  {
    v7 = sub_1000C0D40(*a4, &v9, &v11, &v10);
    if (v7)
    {
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
      {
        sub_100862D10();
      }
    }

    else
    {
      sub_10057C6D0(a2, 17);
      sub_10057C6D0(a2, 7);
      sub_10057C70C(a2, *a4);
      sub_10057C70C(a2, v9);
      sub_10057C70C(a2, v11);
      sub_10057C6D0(a2, v10);
    }
  }

  return v7;
}

void sub_1006CD988(uint64_t a1, uint64_t a2, char a3)
{
  v6 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast Connect AVRCP Report Connection attempt for %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, a2, a3);
}

void sub_1006CDA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE930;
  if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast Connect AVRCP Setup Complete result %d", v8, 8u);
  }

  if (a3)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100861AA0();
    }

    v7 = sub_1000DD584(off_100B50A98, a3, 20000);
    sub_10057DA84(a1, a2, v7);
  }

  sub_10057DA84(a1, a2, 0);
}

void sub_1006CDBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CDBC8(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v20[1] = 0;
  v21 = a2;
  v20[0] = 0;
  sub_100007F88(v20, a1 + 280);
  v10 = *(a1 + 352);
  if (v10)
  {
    v11 = a1 + 352;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a1 + 352 && *(v11 + 32) <= a2)
    {
      v15 = *sub_10056E904(a1 + 344, &v21);
      if (v15)
      {
        (*(*v15 + 64))(v15);
      }

      sub_100075DC4((a1 + 344), &v21);
    }
  }

  sub_10000801C(v20);
  v19 = 0;
  sub_1000216B4(&v19);
  if (a5)
  {
    v16 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "fastConnectCleanAVRCP OI_AVRCP_FastConnect_DisconnectTable", v18, 2u);
    }

    sub_100202F5C(v21 + 128);
  }

  sub_1001F3190(v21 + 128, a3, a4);
  sub_10002249C(&v19);
  return sub_1000088CC(v20);
}

void sub_1006CDD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void *sub_1006CDD5C(void *result, unint64_t a2)
{
  v12 = a2;
  v3 = result[47];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = result + 47;
  do
  {
    v5 = v3[4];
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = v3[v7];
  }

  while (v3);
  if (v4 == result + 47 || v4[4] > a2)
  {
LABEL_9:
    v8 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136446210;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Workaround RemoteMediaInfo for device %{public}s created", buf, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    operator new();
  }

  return result;
}

uint64_t sub_1006CDEF0(uint64_t result, unint64_t a2)
{
  v14 = a2;
  v2 = *(result + 376);
  if (v2)
  {
    v4 = result;
    v5 = result + 376;
    do
    {
      v6 = *(v2 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v2;
      }

      v2 = *(v2 + 8 * v8);
    }

    while (v2);
    if (v5 != result + 376 && *(v5 + 32) <= a2)
    {
      v9 = qword_100BCE930;
      if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v10 = v13 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Workaround RemoteMediaInfo for device %{public}s deleted", buf, 0xCu);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 = *sub_10056E904(v4 + 368, &v14);
      if (v11)
      {
        (*(*v11 + 64))(v11);
      }

      return sub_100075DC4((v4 + 368), &v14);
    }
  }

  return result;
}

uint64_t sub_1006CE05C(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  result = sub_1000C0348(a2);
  if (result)
  {
    v5 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v9 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Play command for device %{public}s forwarded", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_10056E904(a1 + 368, &v10);
    return (*(**(*v7 + 8) + 8))(*(*v7 + 8), v10, 501);
  }

  return result;
}

void sub_1006CE198(uint64_t a1)
{
  sub_1006CF1B4(a1);

  operator delete();
}

void sub_1006CE1E0(uint64_t a1)
{
  sub_1006CF1B4(a1 - 256);

  operator delete();
}

uint64_t sub_1006CE21C(uint64_t a1)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v2 = off_100B541C8;

  return sub_1006C3020(v2, a1);
}

void sub_1006CE270(uint64_t a1, int a2)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v4 = off_100B541C8;

  sub_1006C3F34(v4, a1, a2);
}

void sub_1006CE2CC(uint64_t a1, uint64_t a2)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v4 = off_100B541C8;

  sub_1006C341C(v4, a1, a2);
}

void sub_1006CE328(uint64_t a1, int a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006C3A34(v6, a1, a2, a3);
}

void sub_1006CE394(uint64_t a1, __int16 a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006C3C20(v6, a1, a2, a3);
}

void sub_1006CE400(uint64_t a1)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v2 = off_100B541C8;

  sub_1006C3DDC(v2, a1);
}

void sub_1006CE4BC(uint64_t a1, unsigned int a2, char a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006C460C(v6, a1, a2, a3);
}

void sub_1006CE528(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  sub_1006C4D84(a1, a1, a2, a3);
}

void sub_1006CE58C(uint64_t a1, uint64_t a2)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  sub_1006C4F78(a1, a1, a2);
}

void sub_1006CE5E0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  sub_1006C50E4(a1, a1, a2, a3);
}

void sub_1006CE644(uint64_t a1, char a2, unsigned int a3, const void *a4)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v8 = off_100B541C8;

  sub_1006C5300(v8, a1, a2, a3, a4);
}

void sub_1006CE6B8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v8 = off_100B541C8;

  sub_1006C58E0(v8, a1, a2, a3, a4);
}

void sub_1006CE72C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v6 = a4;
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v9 = off_100B541C8;

  sub_1006CB6F4(v9, a1, a2, a4, v6, a5);
}

uint64_t sub_1006CE7A0(uint64_t a1, char a2)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v4 = off_100B541C8;

  return sub_1006C7478(v4, a1, a2);
}

uint64_t sub_1006CE7FC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C5CE4(v6, a1, a2, a3);
}

void sub_1006CE868(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006C77E4(v6, a1, a2, a3);
}

uint64_t sub_1006CE8DC(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C7A8C(v6, a1, a2, a3);
}

uint64_t sub_1006CE948(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C7C98(v6, a1, a2, a3);
}

uint64_t sub_1006CE9B4(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C800C(v6, a1, a2, a3);
}

void *sub_1006CEA20(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v14 = off_100B541C8;

  return sub_1006C8924(v14, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1006CEABC(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t *a5)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  return sub_1006C84F0(v10, a1, a2, a3, a4, a5);
}

void *sub_1006CEB40(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v14 = off_100B541C8;

  return sub_1006C9348(v14, a1, a2, a3, a4, a5, a6, a7);
}

void sub_1006CEBDC(uint64_t a1, unsigned int a2, int a3, unsigned int a4, const void *a5)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  sub_1006C9AB0(v10, a1, a2, a3, a4, a5);
}

uint64_t sub_1006CEC60(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  return sub_1006C9FAC(v6, a1, a2, a3);
}

uint64_t sub_1006CECCC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  return sub_1006CA408(v10, a1, a2, a3, a4, a5);
}

void sub_1006CED50(uint64_t a1, __int16 a2, char *a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006CA81C(v6, a1, a2, a3);
}

void sub_1006CEDBC(uint64_t a1, __int16 a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  sub_1006CAD48(v10, a1, a2, a3, a4, a5);
}

void sub_1006CEE40(uint64_t a1, __int16 a2, char *a3)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v6 = off_100B541C8;

  sub_1006CB280(v6, a1, a2, a3);
}

void sub_1006CEEAC(uint64_t result, uint64_t a2)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }
}

void sub_1006CEED8(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5, int a6)
{
  if (qword_100B541D0 != -1)
  {
    sub_100862DCC();
  }

  v10 = off_100B541C8;

  sub_1006CC390(v10, a1, 0, a3, a4, 0, a6);
}

void sub_1006CEF54(uint64_t a1, uint64_t a2)
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
    sub_1006CEFE0((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1006CEFE0(void *a1, char *__src, char *a3)
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

void sub_1006CF17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CF1B4(uint64_t a1)
{
  *a1 = off_100B07CC8;
  *(a1 + 256) = off_100B07D88;
  *(a1 + 264) = off_100B07DB0;
  *(a1 + 272) = &off_100B07DF8;
  sub_10000CEDC(a1 + 504, *(a1 + 512));
  sub_10037505C(a1 + 480, *(a1 + 488));
  sub_10000CEDC(a1 + 456, *(a1 + 464));
  sub_10007A068(a1 + 392);
  sub_10000CEDC(a1 + 368, *(a1 + 376));
  sub_10000CEDC(a1 + 344, *(a1 + 352));
  sub_10007A068(a1 + 280);

  return sub_10032F580(a1);
}

uint64_t *sub_1006CF450(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
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
    v8 = *(v3 + 32);
    if (v8 >= v5)
    {
      if (v5 >= v8)
      {
        v9 = *(v3 + 33);
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  if (v5 < v12 || v12 >= v5 && v6 < *(v7 + 33))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_1006CF4E0(uint64_t **a1, unsigned __int8 *a2, uint64_t a3, _WORD **a4)
{
  v6 = 0;
  v4 = *sub_1006CF580(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1006CF580(uint64_t a1, uint64_t **a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 32);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 33);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void sub_1006CF5E8(id a1)
{
  qword_100BC7018 = os_log_create("com.apple.bluetooth", "CBSignpost");
  byte_100BC7020[0] = 1;
  qword_100BC7008[0] = os_signpost_id_generate(qword_100BC7018);
  byte_100BC7021 = 1;
  qword_100BC7010 = os_signpost_id_generate(qword_100BC7018);
  v1 = qword_100BC7018;
  if (os_log_type_enabled(qword_100BC7018, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SingpostUtils initialized", v2, 2u);
  }
}

void sub_1006CF69C(void *a1)
{
  *a1 = &off_100B08090;
  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[4] = 0;
  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[9] = 0;
  a1[8] = a1 + 9;
  a1[7] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[11] = a1 + 12;
  a1[13] = 0;
  a1[15] = 0;
  a1[14] = a1 + 15;
  a1[16] = 0;
  a1[19] = 0;
  a1[18] = 0;
  a1[17] = a1 + 18;
  a1[21] = 0;
  a1[20] = a1 + 21;
  a1[22] = 0;
  sub_100432840(a1);
}

void sub_1006CF7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14)
{
  sub_10000CEDC(v20, *v17);
  sub_10000CEDC(v19, *v21);
  sub_10000CEDC(v18, *v16);
  sub_10000CEDC(a10, *v15);
  sub_10000CEDC(a11, *v14);
  sub_10000CEDC(a12, *v22);
  sub_10000CEDC(a14, *a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CF80C(uint64_t a1)
{
  *a1 = &off_100B08090;
  (***(a1 + 8))(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2 != (a1 + 24))
  {
    do
    {
      if (v2[5])
      {
        operator delete();
      }

      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 24));
  }

  v6 = *(a1 + 40);
  if (v6 != (a1 + 48))
  {
    do
    {
      if (v6[5])
      {
        operator delete();
      }

      v7 = v6[1];
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
          v8 = v6[2];
          v5 = *v8 == v6;
          v6 = v8;
        }

        while (!v5);
      }

      v6 = v8;
    }

    while (v8 != (a1 + 48));
  }

  v9 = *(a1 + 64);
  if (v9 != (a1 + 72))
  {
    do
    {
      if (v9[5])
      {
        operator delete();
      }

      v10 = v9[1];
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
          v11 = v9[2];
          v5 = *v11 == v9;
          v9 = v11;
        }

        while (!v5);
      }

      v9 = v11;
    }

    while (v11 != (a1 + 72));
  }

  v12 = *(a1 + 88);
  if (v12 != (a1 + 96))
  {
    do
    {
      if (v12[5])
      {
        operator delete();
      }

      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v5 = *v14 == v12;
          v12 = v14;
        }

        while (!v5);
      }

      v12 = v14;
    }

    while (v14 != (a1 + 96));
  }

  v15 = *(a1 + 112);
  if (v15 != (a1 + 120))
  {
    do
    {
      if (v15[5])
      {
        operator delete();
      }

      v16 = v15[1];
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
          v17 = v15[2];
          v5 = *v17 == v15;
          v15 = v17;
        }

        while (!v5);
      }

      v15 = v17;
    }

    while (v17 != (a1 + 120));
  }

  v18 = *(a1 + 136);
  if (v18 != (a1 + 144))
  {
    do
    {
      if (v18[5])
      {
        operator delete();
      }

      v19 = v18[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v18[2];
          v5 = *v20 == v18;
          v18 = v20;
        }

        while (!v5);
      }

      v18 = v20;
    }

    while (v20 != (a1 + 144));
  }

  v21 = *(a1 + 160);
  if (v21 != (a1 + 168))
  {
    do
    {
      if (v21[5])
      {
        operator delete();
      }

      v22 = v21[1];
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
          v23 = v21[2];
          v5 = *v23 == v21;
          v21 = v23;
        }

        while (!v5);
      }

      v21 = v23;
    }

    while (v23 != (a1 + 168));
  }

  sub_10000CEDC(a1 + 160, *(a1 + 168));
  sub_10000CEDC(a1 + 136, *(a1 + 144));
  sub_10000CEDC(a1 + 112, *(a1 + 120));
  sub_10000CEDC(a1 + 88, *(a1 + 96));
  sub_10000CEDC(a1 + 64, *(a1 + 72));
  sub_10000CEDC(a1 + 40, *(a1 + 48));
  sub_10000CEDC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_1006CFB84(_Unwind_Exception *a1)
{
  sub_10000CEDC((v1 + 20), v1[21]);
  sub_10000CEDC((v1 + 17), v1[18]);
  sub_10000CEDC((v1 + 14), v1[15]);
  sub_10000CEDC((v1 + 11), v1[12]);
  sub_10000CEDC((v1 + 8), v1[9]);
  sub_10000CEDC((v1 + 5), v1[6]);
  sub_10000CEDC((v1 + 2), v1[3]);
  _Unwind_Resume(a1);
}

void sub_1006CFBE8(uint64_t a1)
{
  sub_1006CF80C(a1);

  operator delete();
}

void *sub_1006CFC20(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v13 = a3;
  v5 = *(a2 + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a2 + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a2 + 8 && *(v6 + 32) <= a3)
  {
    v12 = *(v6 + 40);
    v11 = (v6 + 40);
    result = v12;
    if (v12)
    {
      operator delete();
    }
  }

  else
  {
LABEL_9:
    v14 = &v13;
    result = sub_10005E16C(a2, &v13, &unk_1008A9BD0, &v14);
    v11 = result + 5;
  }

  *v11 = a4;
  return result;
}

void sub_1006CFCF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a4;
  v17 = &v18;
  v18 = 0;
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1006D0A7C(&v14, a1 + 16);
    sub_10000CEDC(a1 + 16, *(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = a1 + 24;
    sub_10000CEDC(&v17, v18);
    v8 = v15;
    v17 = v14;
    v18 = v15;
    v19 = v16;
    if (v16)
    {
      v15[2] = &v18;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v8 = 0;
    }

    else
    {
      v17 = &v18;
    }

    sub_10000CEDC(&v14, v8);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 16, a4, a5);
    v14 = &v20;
    sub_10005E16C(&v17, &v20, &unk_1008A9BD0, &v14)[5] = a5;
  }

  v10 = v17;
  if (v17 != &v18)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 120))(off_100B541C8, a2, a3, v10[4], v10[5]);
      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != &v18);
  }

  sub_10000CEDC(&v17, v18);
}

void sub_1006CFEEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a4;
  v17 = &v18;
  v18 = 0;
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1006D0A7C(&v14, a1 + 40);
    sub_10000CEDC(a1 + 40, *(a1 + 48));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = a1 + 48;
    sub_10000CEDC(&v17, v18);
    v8 = v15;
    v17 = v14;
    v18 = v15;
    v19 = v16;
    if (v16)
    {
      v15[2] = &v18;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v8 = 0;
    }

    else
    {
      v17 = &v18;
    }

    sub_10000CEDC(&v14, v8);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 40, a4, a5);
    v14 = &v20;
    sub_10005E16C(&v17, &v20, &unk_1008A9BD0, &v14)[5] = a5;
  }

  v10 = v17;
  if (v17 != &v18)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 128))(off_100B541C8, a2, a3, v10[4], v10[5]);
      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != &v18);
  }

  sub_10000CEDC(&v17, v18);
}

void sub_1006D00E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a5;
  v19 = &v20;
  v20 = 0;
  if (a4)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_1006D0A7C(&v16, a1 + 64);
    sub_10000CEDC(a1 + 64, *(a1 + 72));
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = a1 + 72;
    sub_10000CEDC(&v19, v20);
    v10 = v17;
    v19 = v16;
    v20 = v17;
    v21 = v18;
    if (v18)
    {
      v17[2] = &v20;
      v16 = &v17;
      v17 = 0;
      v18 = 0;
      v10 = 0;
    }

    else
    {
      v19 = &v20;
    }

    sub_10000CEDC(&v16, v10);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 64, a5, a6);
    v16 = &v22;
    sub_10005E16C(&v19, &v22, &unk_1008A9BD0, &v16)[5] = a6;
  }

  v12 = v19;
  if (v19 != &v20)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 136))(off_100B541C8, a2, a3, a4, v12[4], v12[5]);
      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
    }

    while (v14 != &v20);
  }

  sub_10000CEDC(&v19, v20);
}

void sub_1006D02E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a3;
  v15 = &v16;
  v16 = 0;
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_1006D0A7C(&v12, a1 + 88);
    sub_10000CEDC(a1 + 88, *(a1 + 96));
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = a1 + 96;
    sub_10000CEDC(&v15, v16);
    v6 = v13;
    v15 = v12;
    v16 = v13;
    v17 = v14;
    if (v14)
    {
      v13[2] = &v16;
      v12 = &v13;
      v13 = 0;
      v14 = 0;
      v6 = 0;
    }

    else
    {
      v15 = &v16;
    }

    sub_10000CEDC(&v12, v6);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 88, a3, a4);
    v12 = &v18;
    sub_10005E16C(&v15, &v18, &unk_1008A9BD0, &v12)[5] = a4;
  }

  v8 = v15;
  if (v15 != &v16)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 144))(off_100B541C8, a2, v8[4], v8[5]);
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != &v16);
  }

  sub_10000CEDC(&v15, v16);
}

void sub_1006D04C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a3;
  v15 = &v16;
  v16 = 0;
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_1006D0A7C(&v12, a1 + 112);
    sub_10000CEDC(a1 + 112, *(a1 + 120));
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = a1 + 120;
    sub_10000CEDC(&v15, v16);
    v6 = v13;
    v15 = v12;
    v16 = v13;
    v17 = v14;
    if (v14)
    {
      v13[2] = &v16;
      v12 = &v13;
      v13 = 0;
      v14 = 0;
      v6 = 0;
    }

    else
    {
      v15 = &v16;
    }

    sub_10000CEDC(&v12, v6);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 112, a3, a4);
    v12 = &v18;
    sub_10005E16C(&v15, &v18, &unk_1008A9BD0, &v12)[5] = a4;
  }

  v8 = v15;
  if (v15 != &v16)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 152))(off_100B541C8, a2, v8[4], v8[5]);
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != &v16);
  }

  sub_10000CEDC(&v15, v16);
}

void sub_1006D06AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a5;
  v19 = &v20;
  v20 = 0;
  if (a4)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_1006D0A7C(&v16, a1 + 136);
    sub_10000CEDC(a1 + 136, *(a1 + 144));
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = a1 + 144;
    sub_10000CEDC(&v19, v20);
    v10 = v17;
    v19 = v16;
    v20 = v17;
    v21 = v18;
    if (v18)
    {
      v17[2] = &v20;
      v16 = &v17;
      v17 = 0;
      v18 = 0;
      v10 = 0;
    }

    else
    {
      v19 = &v20;
    }

    sub_10000CEDC(&v16, v10);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 136, a5, a6);
    v16 = &v22;
    sub_10005E16C(&v19, &v22, &unk_1008A9BD0, &v16)[5] = a6;
  }

  v12 = v19;
  if (v19 != &v20)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 160))(off_100B541C8, a2, a3, a4, v12[4], v12[5]);
      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
    }

    while (v14 != &v20);
  }

  sub_10000CEDC(&v19, v20);
}

void sub_1006D08B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a4;
  v17 = &v18;
  v18 = 0;
  if (a3)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_1006D0A7C(&v14, a1 + 160);
    sub_10000CEDC(a1 + 160, *(a1 + 168));
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = a1 + 168;
    sub_10000CEDC(&v17, v18);
    v8 = v15;
    v17 = v14;
    v18 = v15;
    v19 = v16;
    if (v16)
    {
      v15[2] = &v18;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v8 = 0;
    }

    else
    {
      v17 = &v18;
    }

    sub_10000CEDC(&v14, v8);
  }

  else
  {
    sub_1006CFC20(a1, a1 + 160, a4, a5);
    v14 = &v20;
    sub_10005E16C(&v17, &v20, &unk_1008A9BD0, &v14)[5] = a5;
  }

  v10 = v17;
  if (v17 != &v18)
  {
    do
    {
      if (qword_100B541D0 != -1)
      {
        sub_100862DF4();
      }

      (*(*off_100B541C8 + 168))(off_100B541C8, a2, a3, v10[4], v10[5]);
      v11 = v10[1];
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
          v12 = v10[2];
          v13 = *v12 == v10;
          v10 = v12;
        }

        while (!v13);
      }

      v10 = v12;
    }

    while (v12 != &v18);
  }

  sub_10000CEDC(&v17, v18);
}

void *sub_1006D0A7C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10038AC5C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1006D0B3C(uint64_t a1)
{
  *sub_100589578(a1, "RemoteService", 8) = &off_100B08108;
  if (qword_100B541D0 != -1)
  {
    sub_100862E1C();
  }

  sub_100589880(a1, off_100B541C8);
  return a1;
}

void sub_1006D0BD0(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1006D0C08(uint64_t a1, uint64_t a2)
{
  v9 = xmmword_1008C4D90;
  v10 = xmmword_1008C4D80;
  v8 = xmmword_1008A9C00;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v10, 9u))
    {
      v4 = 4;
      if (sub_10053A020(a2, &v9, 9u))
      {
        if (sub_10053A020(a2, &v8, 9u))
        {
          v4 = 4;
        }

        else
        {
          v4 = 1;
        }
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v11 = 0;
  sub_100016250(&v11);
  *&v7 = v11;
  *(&v7 + 1) = SWORD2(v11);
  return sub_100539554(a2, v5, v4, &v7, 0);
}

uint64_t sub_1006D0D64(unint64_t a1, __int128 *a2, uint64_t a3, unint64_t *a4)
{
  v10 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v8 = sub_1006DB230(off_100B50F80, a1, &v10, a4);
  if (!v8)
  {
    sub_1006D71EC(v10, *a4, a2, a3);
  }

  return v8;
}

uint64_t sub_1006D0DF4(unint64_t *a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  sub_1006DB54C(off_100B50F80, *a1);
  *a1 = 0;
  return 0;
}

uint64_t sub_1006D0E44(unint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v2 = sub_1006DB834(off_100B50F80, a1);
  if (!v2)
  {
    return 7;
  }

  return sub_1006D7488(v2, a1);
}

uint64_t sub_1006D0EB4(unint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v2 = sub_1006DB834(off_100B50F80, a1);
  if (!v2)
  {
    return 7;
  }

  return sub_1006D703C(v2, a1);
}

uint64_t sub_1006D0F24(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v2 = sub_1006DB834(off_100B50F80, a1);
  if (!v2)
  {
    return 7;
  }

  return sub_1006D8A50(v2);
}

uint64_t sub_1006D0F90(uint64_t a1, unint64_t a2, char *a3)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v6 = sub_1006DB834(off_100B50F80, a1);
  if (v6)
  {
    v7 = v6;
    if (qword_100B508F0 != -1)
    {
      sub_100862E44();
    }

    v8 = sub_1000E41C0(off_100B508E8, a2);
    if (v8)
    {
      v9 = v8;
      v11[0] = 0;
      v11[1] = 0;
      v12 = 0;
      sub_1000DE474(v11);
      if (*a3)
      {
        sub_1006E5F20(v11, a3);
      }

      sub_1006D8AA8(v7, v9, v11);
    }
  }

  return 7;
}

uint64_t sub_1006D10BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v6 = sub_1006DB834(off_100B50F80, a1);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  if (qword_100B508F0 != -1)
  {
    sub_100862E44();
  }

  v8 = sub_1000E41C0(off_100B508E8, a2);
  if (!v8)
  {
    return 7;
  }

  return sub_1006D8CE8(v7, v8, a3);
}

uint64_t sub_1006D1178(uint64_t a1, unint64_t a2)
{
  if (qword_100B508D0 != -1)
  {
    sub_100862E58();
  }

  *uu = 0;
  v33 = 0;
  sub_1000E61D4(off_100B508C8, a2, uu);
  if (qword_100B508F0 != -1)
  {
    sub_100862E6C();
  }

  v4 = sub_1000E41C0(off_100B508E8, a2);
  if (qword_100B50F88 != -1)
  {
    sub_100862E94();
  }

  v5 = sub_1006DB834(off_100B50F80, a1);
  if (!v5)
  {
    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PairingAgent is NULL", v26, 2u);
    }

    return 7;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100862EBC();
  }

  v6 = sub_1000117DC(qword_100B50B80, v5);
  v7 = sub_1000C0348(v4);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  if (sub_100067238())
  {
    CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
    v10 = CTGreenTeaOsLogHandle;
    if (CTGreenTeaOsLogHandle)
    {
      if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
      {
        sub_100018384(v6, v26);
        v11 = v27;
        v12 = *v26;
        sub_1000E5A58(v4, __p);
        v13 = v26;
        if (v11 < 0)
        {
          v13 = v12;
        }

        if (v25 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 136446466;
        v29 = v13;
        v30 = 2082;
        v31 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Session %{public}s is asking to delete pairing for device %{public}s", buf, 0x16u);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        if (v27 < 0)
        {
          operator delete(*v26);
        }
      }
    }
  }

  v15 = qword_100BCE8D8;
  if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_35;
  }

  sub_100018384(v6, v26);
  v16 = v27;
  v17 = *v26;
  sub_1000E5A58(v4, __p);
  v18 = v26;
  if (v16 < 0)
  {
    v18 = v17;
  }

  if (v25 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  *buf = 136446466;
  v29 = v18;
  v30 = 2082;
  v31 = v19;
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session %{public}s is asking to delete pairing for device %{public}s", buf, 0x16u);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(*v26);
    if (v4)
    {
      return sub_1006D88C8(v5, v4);
    }
  }

  else
  {
LABEL_35:
    if (v4)
    {
      return sub_1006D88C8(v5, v4);
    }
  }

  if (uuid_is_null(uu))
  {
    return 7;
  }

  if (qword_100B508C0 != -1)
  {
    sub_100862EE4();
  }

  v22 = off_100B508B8;
  v23 = sub_10004DF60(uu);
  sub_1007C2AA4(v22, v23);

  return 0;
}

void sub_1006D14FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006D1530(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  if (!sub_1006DB834(off_100B50F80, a1))
  {
    return 7;
  }

  if (a2 > 3)
  {
    return 3;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100862F0C();
  }

  v5 = off_100B512E0;

  return sub_1006E8808(v5, a2);
}

uint64_t sub_1006D15D4(uint64_t a1, unint64_t a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v4 = sub_1006DB834(off_100B50F80, a1);
  if (qword_100B508F0 != -1)
  {
    sub_100862E44();
  }

  v5 = sub_1000E41C0(off_100B508E8, a2);
  if (!v4)
  {
    return 7;
  }

  v6 = v5;
  if (!v5)
  {
    return 7;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100862F0C();
  }

  v7 = off_100B512E0;

  return sub_1006E9450(v7, v6);
}

uint64_t sub_1006D169C(uint64_t a1, unint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5, uint64_t a6)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  v12 = sub_1006DB834(off_100B50F80, a1);
  if (qword_100B508F0 != -1)
  {
    sub_100862E44();
  }

  v13 = sub_1000E41C0(off_100B508E8, a2);
  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 141560835;
    v17 = 1752392040;
    v18 = 1041;
    v19 = 16;
    v20 = 2097;
    v21 = a3;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 1041;
    v25 = 16;
    v26 = 2097;
    v27 = a4;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 1041;
    v31 = 16;
    v32 = 2097;
    v33 = a5;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 1041;
    v37 = 16;
    v38 = 2097;
    v39 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BTPairingAgentSetOOBDataForDevice C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", &v16, 0x6Au);
  }

  result = 7;
  if (v12 && v13)
  {
    if (qword_100B512E8 != -1)
    {
      sub_100862F20();
    }

    return sub_1006E9014(off_100B512E0, v13, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1006D1878(uint64_t a1)
{
  if (qword_100B50F88 != -1)
  {
    sub_100862E30();
  }

  if (!sub_1006DB834(off_100B50F80, a1))
  {
    return 7;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100862F0C();
  }

  v2 = off_100B512E0;

  return sub_1006E9590(v2);
}

uint64_t sub_1006D1B74(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

__n128 sub_1006D1B80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  return result;
}

uint64_t sub_1006D1B94(uint64_t result, _OWORD *a2, unsigned int a3)
{
  *result = *a2;
  if (a3 <= 8)
  {
    *(result + 16) = a3;
  }

  return result;
}

__n128 sub_1006D1BB0(__n128 *a1, __n128 *a2, unsigned __int32 a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a3;
  return result;
}

uint64_t sub_1006D1BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 9)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

BOOL sub_1006D1BDC(_BYTE *a1)
{
  if (*a1)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 15)
    {
      break;
    }

    ++v2;
  }

  while (!a1[v3 + 1]);
  return v3 > 0xE;
}

void *sub_1006D1D68(void *a1)
{
  *a1 = off_100B082E8;
  a1[1] = off_100B083A8;
  a1[2] = off_100B083D0;
  a1[3] = &off_100B08490;
  a1[4] = 0;
  a1[10] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = 0;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, -1);
  a1[5] = dispatch_queue_create("com.apple.AuthorizationManagerSerialQueue", v2);
  return a1;
}

void sub_1006D1E3C(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_100862F48();
  }

  sub_1006D6828(off_100B512F0 + 192, a1 + 24);
  if (qword_100B508B0 != -1)
  {
    sub_100862F5C();
  }

  sub_100749B80(off_100B508A8, a1 + 16, 0);
  if (qword_100B508C0 != -1)
  {
    sub_100862F70();
  }

  sub_1007BF384(off_100B508B8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100862F84();
  }

  v2 = off_100B50A98 + 64;

  sub_100312650(v2, a1);
}

void sub_1006D1F14(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_100862F48();
  }

  sub_10007A3F0(off_100B512F0 + 192, a1 + 24);
  if (qword_100B508B0 != -1)
  {
    sub_100862F5C();
  }

  sub_100749C8C(off_100B508A8, a1 + 16);
  if (qword_100B508C0 != -1)
  {
    sub_100862F70();
  }

  sub_1007BF4C0(off_100B508B8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100862F84();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1);
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void sub_1006D1FF0(uint64_t a1)
{
  v1 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D2064;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_1006D2064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received 'stackDidStart' listener", buf, 2u);
  }

  v3 = +[NSMutableArray array];
  v4 = *(v1 + 48);
  *(v1 + 48) = v3;

  v5 = +[NSMutableDictionary dictionary];
  v6 = *(v1 + 56);
  *(v1 + 56) = v5;

  v7 = *(v1 + 32);
  *(v1 + 32) = 0;

  *(v1 + 72) = 0;
  v25 = [NSArray arrayWithObjects:@"COGITO", @"LG Watch Sport 5148", @"HUAWEI WATCH 2 0738", @"LG Urbane A94D", @"fenix 5", @"ASUS ZenWatch3 3419", @"Polar Loop 2", @"Polar M600 761E", @"Charge 2", @"Gear Fit2 (98D9)", @"The Mission 4349", @"vívoactive3", @"Ionic", @"fenix 3", @"TicWatch Pro 1291", @"Moto 360 109D", @"Charge 3", @"Versa", 0];
  v24 = [NSNumber numberWithInt:1];
  v8 = [NSNumber numberWithInt:2];
  v9 = [NSNumber numberWithInt:3];
  v10 = [NSNumber numberWithInt:4];
  v30 = [NSNumber numberWithInt:5];
  v23 = [NSNumber numberWithInt:6];
  v22 = [NSNumber numberWithInt:7];
  v29 = [NSNumber numberWithInt:8];
  v21 = [NSNumber numberWithInt:9];
  v20 = [NSNumber numberWithInt:10];
  v19 = [NSNumber numberWithInt:11];
  v18 = [NSNumber numberWithInt:12];
  v28 = [NSNumber numberWithInt:13];
  v27 = [NSNumber numberWithInt:14];
  v11 = v8;
  v26 = [NSNumber numberWithInt:15];
  v12 = [NSNumber numberWithInt:16];
  v13 = [NSNumber numberWithInt:17];
  v14 = [NSNumber numberWithInt:18];
  v17 = [NSArray arrayWithObjects:v24, v11, v9, v10, v30, v23, v22, v29, v21, v20, v19, v18, v28, v27, v26, v12, v13, v14, 0];

  v15 = [[NSDictionary alloc] initWithObjects:v17 forKeys:v25];
  v16 = qword_100BC7030;
  qword_100BC7030 = v15;
}

void sub_1006D265C(uint64_t a1)
{
  v1 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D26D0;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_1006D26D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received 'stackWillStop' listener", v5, 2u);
  }

  [*(v1 + 48) removeAllObjects];
  [*(v1 + 56) removeAllObjects];
  v3 = *(v1 + 64);
  *(v1 + 64) = 0;

  v4 = qword_100BC7030;
  qword_100BC7030 = 0;

  sub_1006D2770(v1);
}

void sub_1006D2770(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE9A0;
  v4 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deregistering FrontBoard services", buf, 2u);
      v2 = *(a1 + 32);
    }

    [v2 setHandler:0];
    [*(a1 + 32) invalidate];
    v5 = *(a1 + 32);
    *(a1 + 32) = 0;
  }

  else if (v4)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unable to deregister FrontBoard services as fDisplayLayoutMonitor is NULL", v6, 2u);
  }
}

void sub_1006D2840(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D28D8;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D28D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'lePairingCompleted' listener for device '%@'", buf, 0xCu);
  }

  if (qword_100B508D0 != -1)
  {
    sub_100862F98();
  }

  v5 = off_100B508C8;
  v6 = *(a1 + 32);
  sub_100007E30(__p, "RequiresANCSAuth");
  v7 = sub_10004EB40(v5, v6, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = qword_100BCE9A0;
  v9 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device '%@' has the tag 'RequiresANCSAuth', Check if the current bundleIdentifier is present in the device's bundle identifier list", buf, 0xCu);
    }

    v11 = sub_1006D2BF0(v2, *(a1 + 32));
    if (v11)
    {
      v12 = qword_100BCE9A0;
      if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138412546;
        v28 = v13;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "bundle identifier list for device '%@': %@", buf, 0x16u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = v11;
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v15)
      {
        v16 = *v21;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v20 + 1) + 8 * i);
            if ([v18 isEqualToString:{*(v2 + 80), v20}])
            {
              *(v2 + 73) = 1;
              sub_1006D2DB4(v2, *(a1 + 32), v18);
              goto LABEL_25;
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }
  }

  else if (v9)
  {
    v19 = *(a1 + 32);
    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device '%@' does not have the tag 'RequiresANCSAuth', not adding it to the authorization queue.", buf, 0xCu);
  }
}

id sub_1006D2BF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 device];
        v10 = [v9 UUIDString];
        v11 = [v3 UUIDString];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          v5 = [v8 bundleIdentifiers];
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

void sub_1006D2DB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D5050;
  block[3] = &unk_100AE25C8;
  v12 = v6;
  v13 = a1;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_1006D2E80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D2F18;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D2F18(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'leDeviceUnpaired' listener for device '%@'", &v5, 0xCu);
  }

  sub_1006D2FD8(v2, *(a1 + 32));
}

void sub_1006D2FD8(uint64_t a1, void *a2)
{
  v23 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 48);
  v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = *v29;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [v6 device];
        v8 = [v7 UUIDString];
        v9 = [v23 UUIDString];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = [v6 bundleIdentifiers];
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = *v25;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v24 + 1) + 8 * j);
                v16 = [*(a1 + 56) objectForKey:v15];
                v17 = v16 == 0;

                if (!v17)
                {
                  v18 = [*(a1 + 56) valueForKey:v15];
                  v19 = [v18 intValue];

                  v20 = *(a1 + 56);
                  if (v19 == 1)
                  {
                    [*(a1 + 56) removeObjectForKey:v15];
                  }

                  else
                  {
                    v21 = [NSNumber numberWithInt:v19 - 1];
                    [v20 setValue:v21 forKey:v15];
                  }
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }

          [*(a1 + 48) removeObject:v6];
          goto LABEL_22;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  if (![*(a1 + 48) count])
  {
    [*(a1 + 56) removeAllObjects];
    sub_1006D2770(a1);
  }
}

void sub_1006D3304(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D339C;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D339C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'leLinkReady' listener for device '%@'", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_100862FC0();
  }

  v5 = sub_10009DA04(off_100B508B8);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (qword_100B508D0 != -1)
        {
          sub_100862F98();
        }

        v10 = off_100B508C8;
        sub_100007E30(__p, "RequiresANCSAuth");
        v11 = sub_10004EB40(v10, v9, __p);
        v12 = v11;
        if (v14 < 0)
        {
          operator delete(__p[0]);
          if (!v12)
          {
            goto LABEL_17;
          }

LABEL_16:
          sub_1006D35C0(v2, v9, 0);
          goto LABEL_17;
        }

        if (v11)
        {
          goto LABEL_16;
        }

LABEL_17:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

void sub_1006D35C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = a1;
  v22 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 48);
  v7 = [(DeviceObject *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = *v24;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      v11 = [v10 device];
      v12 = [v11 UUIDString];
      v13 = [v5 UUIDString];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(DeviceObject *)v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device '%@' is present in the authorization queue, adding the bundleIdentifier '%@' to its list", buf, 0x16u);
    }

    if (v22)
    {
      v17 = [v10 bundleIdentifiers];
      v18 = [v17 containsObject:v22];

      v19 = qword_100BCE9A0;
      if ((v18 & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = v22;
          v29 = 2112;
          v30 = v5;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Added the bundle identifier '%@' to device '%@' bundle identifier list", buf, 0x16u);
        }

        v20 = [v10 bundleIdentifiers];
        [v20 addObject:v22];

        goto LABEL_22;
      }
    }

    else
    {
      v19 = qword_100BCE9A0;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v22;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Bundle identifier '%@' already part of the device '%@' bundle identifier list", buf, 0x16u);
    }
  }

  else
  {
LABEL_9:

    v15 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device '%@' is not present in the authorization queue, creating device object and adding it to the queue for the bundleIdentifier '%@'", buf, 0x16u);
    }

    v6 = [[DeviceObject alloc] initWithDevice:v5 andBundleIdentifier:v22];
    [*(v21 + 48) addObject:v6];
  }

LABEL_22:

  if (!*(v21 + 32))
  {
    sub_1006D48B8(v21);
  }
}

void sub_1006D39B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D3A48;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D3A48(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE9A0;
  v4 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'deviceSubscribedForANCSNotification' listener for device '%@'", buf, 0xCu);
  }

  if (sub_1006D3E6C(v4, *(a1 + 32)))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v6 = off_100B508C8;
    v7 = *(a1 + 32);
    sub_100007E30(__p, "RequiresANCSAuth");
    v8 = sub_10004EB40(v6, v7, __p);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = qword_100BCE9A0;
    v10 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device '%@' already has the tag 'RequiresANCSAuth'", buf, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v34 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device '%@' does not have the tag 'RequiresANCSAuth'. Setting the tag.", buf, 0xCu);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v13 = off_100B508C8;
      v14 = *(a1 + 32);
      sub_100007E30(v29, "RequiresANCSAuth");
      sub_10078787C(v13, v14, v29);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    if (qword_100B512F8 != -1)
    {
      sub_100862FE8();
    }

    sub_1003ADE54(off_100B512F0, *(a1 + 32));
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v15 = v26 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v16)
    {
      v17 = *v26;
LABEL_21:
      v18 = 0;
      while (1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        if (([v19 isEqualToString:{@"com.apple.BTLEServer", v25}] & 1) == 0)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v16)
          {
            goto LABEL_21;
          }

          goto LABEL_27;
        }
      }

      v20 = v19;

      if (!v20)
      {
        goto LABEL_32;
      }

      v21 = qword_100BCE9A0;
      if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        *buf = 138412546;
        v34 = v20;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is interetsed in device %@", buf, 0x16u);
      }

      sub_1006D406C(v2, v20);
      sub_1006D35C0(v2, *(a1 + 32), v20);
    }

    else
    {
LABEL_27:

LABEL_32:
      v23 = qword_100BCE9A0;
      if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        *buf = 138412290;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No session interetsed in device %@", buf, 0xCu);
      }

      v20 = 0;
      sub_1006D35C0(v2, *(a1 + 32), 0);
    }
  }
}

void sub_1006D3E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006D3E6C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100863010();
  }

  v3 = off_100B508C8;
  sub_100007E30(v18, "ANCSAuthorized");
  if (sub_10004EB40(v3, v2, v18))
  {
    v4 = 1;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v5 = off_100B508C8;
    sub_100007E30(__p, "ANCSUnauthorized");
    v4 = sub_10004EB40(v5, v2, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((v19 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v6 = off_100B508C8;
    sub_100007E30(v14, "IsHearingAid");
    v7 = sub_10004EB40(v6, v2, v14);
    v8 = v7;
    if (v15 < 0)
    {
      operator delete(v14[0]);
      if (v8)
      {
        goto LABEL_17;
      }
    }

    else if (v7)
    {
LABEL_17:
      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v9 = off_100B508C8;
      sub_100007E30(v12, "ANCSAuthorized");
      sub_10078787C(v9, v2, v12);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      goto LABEL_21;
    }

    v10 = 1;
    goto LABEL_24;
  }

  operator delete(v18[0]);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  v10 = 0;
LABEL_24:

  return v10;
}

void sub_1006D4004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006D406C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 56) objectForKey:?];

  if (v3)
  {
    v4 = [*(a1 + 56) valueForKey:v8];
    v5 = [v4 intValue];

    v6 = *(a1 + 56);
    v7 = [NSNumber numberWithInt:v5 + 1];
    [v6 setValue:v7 forKey:v8];
  }

  else
  {
    v7 = [NSNumber numberWithInt:1];
    [*(a1 + 56) setValue:v7 forKey:v8];
  }
}

void sub_1006D4180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D4248;
  block[3] = &unk_100AE25C8;
  v12 = v5;
  v13 = a1;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_1006D4248(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = qword_100BCE9A0;
  v4 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'appRequestedANCSAuthorizationForDevice' listener for device '%@' and bundleIdentifier '%@'", buf, 0x16u);
  }

  if (sub_1006D3E6C(v4, *(a1 + 32)))
  {
    sub_1006D406C(v2, *(a1 + 40));
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v7 = off_100B508C8;
    v8 = *(a1 + 32);
    sub_100007E30(__p, "RequiresANCSAuth");
    v9 = sub_10004EB40(v7, v8, __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = qword_100BCE9A0;
    v11 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device '%@' already has the tag 'RequiresANCSAuth'", buf, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device '%@' does not have the tag 'RequiresANCSAuth'. Setting the tag.", buf, 0xCu);
      }

      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v14 = off_100B508C8;
      v15 = *(a1 + 32);
      sub_100007E30(v16, "RequiresANCSAuth");
      sub_10078787C(v14, v15, v16);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    sub_1006D35C0(v2, *(a1 + 32), *(a1 + 40));
  }
}

void sub_1006D4470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006D44B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006D457C;
  block[3] = &unk_100AE25C8;
  v12 = v5;
  v13 = a1;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_1006D457C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'appSessionChangedInterestInDevice' listener for device '%@' and bundleIdentifier '%@'", &v12, 0x16u);
  }

  v6 = sub_1006D4708(v2, *(a1 + 32));
  v7 = qword_100BCE9A0;
  v8 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device '%@ is present in authorization queue. Adding '%@' to the bundleIdentifier list for this device.", &v12, 0x16u);
    }

    sub_1006D406C(v2, *(a1 + 40));
    sub_1006D35C0(v2, *(a1 + 32), *(a1 + 40));
  }

  else if (v8)
  {
    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device '%@ is not present in authorization queue. Ignore appSessionChangedInterestInDevice listener", &v12, 0xCu);
  }
}

uint64_t sub_1006D4708(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) device];
        v9 = [v8 UUIDString];
        v10 = [v3 UUIDString];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

void sub_1006D48B8(uint64_t a1)
{
  v2 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering FrontBoard services", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D4990;
  v5[3] = &unk_100AF0538;
  v5[4] = a1;
  v3 = [[FBSDisplayLayoutMonitor alloc] initWithDisplayType:0 handler:v5];
  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
}

void sub_1006D4998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006D4A30;
  v6[3] = &unk_100AE1200;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1006D4A30(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v1 = *(a1 + 40);
  obj = [*(a1 + 32) elements];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v2)
  {
    v3 = *v26;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v26 != v3)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v25 + 1) + 8 * v4);
      v6 = [v5 bundleIdentifier];
      v7 = *(v1 + 80);
      *(v1 + 80) = v6;

      v8 = [v5 identifier];
      if ([v8 isEqualToString:@"com.apple.springboard.home-screen"])
      {
        break;
      }

      v9 = [v5 bundleIdentifier];
      v10 = [v9 isEqualToString:@"com.apple.Preferences"];

      if (v10)
      {
        goto LABEL_13;
      }

      v11 = *(v1 + 56);
      v12 = [v5 bundleIdentifier];
      v13 = [v11 objectForKey:v12];
      LOBYTE(v11) = v13 == 0;

      if ((v11 & 1) == 0)
      {
        v17 = [v5 bundleIdentifier];
        v15 = sub_1006D4E38(v1, v17);

        if (v15)
        {
          if (qword_100B508C0 != -1)
          {
            sub_100862FC0();
          }

          v18 = sub_10004EE74(off_100B508B8, v15);
          v19 = qword_100BCE9A0;
          v20 = os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (v20)
            {
              v21 = [v5 bundleIdentifier];
              *buf = 138412290;
              v30 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "User is in %@", buf, 0xCu);
            }

            v22 = [v5 bundleIdentifier];
            sub_1006D2DB4(v1, v15, v22);

            *(v1 + 72) = 256;
          }

          else if (v20)
          {
            v23 = [v5 bundleIdentifier];
            *buf = 138412546;
            v30 = v23;
            v31 = 2112;
            v32 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "User is in %@ but the device '%@' is not paired yet. Not showing authorization alert", buf, 0x16u);
          }
        }

        goto LABEL_26;
      }

      *(v1 + 72) = 0;
      if (v2 == ++v4)
      {
        v2 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

LABEL_13:
    v14 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User is in SpringBoard or Settings App.", buf, 2u);
    }

    if ([*(v1 + 48) count])
    {
      *(v1 + 72) = 1;
      v15 = [*(v1 + 48) objectAtIndexedSubscript:0];
      v16 = [v15 device];
      sub_1006D2DB4(v1, v16, 0);

LABEL_26:
    }
  }

LABEL_27:
}

id sub_1006D4E38(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v8 bundleIdentifiers];
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = *v16;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v9);
              }

              if ([*(*(&v15 + 1) + 8 * j) isEqualToString:v3])
              {
                v13 = [v8 device];

                goto LABEL_19;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      v13 = 0;
    }

    while (v5);
  }

  else
  {
    v13 = 0;
  }

LABEL_19:

  return v13;
}

void sub_1006D5050(void *a1)
{
  v2 = a1[6];
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "In showAuthorizationAlert %@ and bundle identifier '%@'", buf, 0x16u);
  }

  if (!*(v2 + 64))
  {
    v6 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[5];
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Display ANCS Authorization alert for %@ and bundle identifier '%@'", buf, 0x16u);
    }

    v9 = [[UserNotification alloc] initWithType:5 device:a1[4] bundleID:a1[5]];
    v10 = *(v2 + 64);
    *(v2 + 64) = v9;

    memset(buf, 0, sizeof(buf));
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v11 = off_100B508C8;
    v12 = [*(v2 + 64) device];
    sub_10004FFDC(v11, v12, __p);
    if ((v47 & 0x80u) == 0)
    {
      v13 = v47;
    }

    else
    {
      v13 = __p[1];
    }

    if (v13)
    {
      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v14 = off_100B508C8;
      v15 = [*(v2 + 64) device];
      sub_10004FFDC(v14, v15, buf);
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_100862F98();
      }

      v16 = off_100B508C8;
      v15 = [*(v2 + 64) device];
      v17 = sub_100046458(v16, v15, 0);
      v18 = sub_100063D0C(v17);
      v19 = v18;
      sub_100007E30(buf, [v18 UTF8String]);
    }

    if (v47 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = sub_10000C798(v20, v21);
    if ((*(*v22 + 392))(v22))
    {
      v23 = @"IPAD";
    }

    else
    {
      v23 = @"IPHONE";
    }

    if ((buf[23] & 0x80u) == 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    v25 = [NSString stringWithUTF8String:v24];
    v26 = [@"ANCS_TITLE_" stringByAppendingString:v23];
    v43 = [@"ANCS_AUTHORIZATION_MESSAGE_" stringByAppendingString:v23];
    v27 = sub_100438B14(v26, v26);
    v45 = 0;
    v28 = [NSString stringWithValidatedFormat:v27 validFormatSpecifiers:@"%@" error:&v45, v25];
    v29 = v45;

    if (v28)
    {
      v30 = sub_100438B14(v43, v43);
      v44 = v29;
      v31 = [NSString stringWithValidatedFormat:v30 validFormatSpecifiers:@"%@" error:&v44, v25];
      v42 = v44;

      if (v31)
      {
        v41 = sub_100438B14(@"AUTHORIZE", @"Allow");
        v32 = sub_100438B14(@"UNAUTHORIZE", @"Don't Allow");
        v33 = v41;
        v34 = v32;
        v48[0] = kCFUserNotificationAlertTopMostKey;
        v48[1] = SBUserNotificationAllowMenuButtonDismissal;
        v49[0] = &__kCFBooleanTrue;
        v49[1] = &__kCFBooleanTrue;
        v48[2] = SBUserNotificationDismissOnLock;
        v48[3] = SBUserNotificationPendWhileKeyBagLockedKey;
        v49[2] = &__kCFBooleanTrue;
        v49[3] = &__kCFBooleanTrue;
        v48[4] = kCFUserNotificationAlertHeaderKey;
        v49[4] = v28;
        v35 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:5];
        v36 = [v35 mutableCopy];

        [v36 setObject:v31 forKey:kCFUserNotificationAlertMessageKey];
        [v36 setObject:v33 forKey:kCFUserNotificationDefaultButtonTitleKey];
        if (v34)
        {
          [v36 setObject:v34 forKey:kCFUserNotificationAlternateButtonTitleKey];
        }

        v37 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x10003uLL, 0, v36);
        [*(v2 + 64) setNotification:v37];
        CFRelease(v37);
        RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v37, sub_1006D5744, 0);
        [*(v2 + 64) setRunLoopSource:RunLoopSource];
        CFRelease(RunLoopSource);
      }

      else
      {
        v40 = qword_100BCE9A0;
        if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_ERROR))
        {
          sub_100863024(v42, v40);
        }
      }

      v29 = v42;
    }

    else
    {
      v39 = qword_100BCE9A0;
      if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_ERROR))
      {
        sub_100863024(v29, v39);
      }
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1006D562C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006D5744(uint64_t a1, uint64_t a2)
{
  if (qword_100B54CA0 != -1)
  {
    sub_10086309C();
  }

  v3 = *(off_100B54C98 + 5);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D57E0;
  v4[3] = &unk_100AE0860;
  v4[4] = off_100B54C98;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1006D57E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(v2 + 64) device];
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = "unknown";
    if (v6 == 1)
    {
      v7 = "unauthorize";
    }

    *buf = 138412802;
    v31 = v4;
    if (!v6)
    {
      v7 = "authorize";
    }

    v32 = 2082;
    v33 = v7;
    v34 = 2048;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User responded to authorization notification for device %@ with %{public}s (%ld) button", buf, 0x20u);
  }

  v8 = *(a1 + 40);
  if (v8 == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v15 = off_100B508C8;
    v16 = [*(v2 + 64) device];
    sub_10078380C(v15, v16, @"RequiresANCSAuth");

    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v17 = off_100B508C8;
    v18 = [*(v2 + 64) device];
    sub_100007E30(v26, "ANCSUnauthorized");
    sub_10078787C(v17, v18, v26);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v19 = [*(v2 + 64) device];
    sub_1006D2FD8(v2, v19);

    v14 = 1;
  }

  else if (v8)
  {
    v20 = qword_100BCE9A0;
    if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_ERROR))
    {
      sub_1008630B0(v20);
    }

    v14 = 0xFFFF;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v9 = off_100B508C8;
    v10 = [*(v2 + 64) device];
    sub_10078380C(v9, v10, @"RequiresANCSAuth");

    if (qword_100B508D0 != -1)
    {
      sub_100862F98();
    }

    v11 = off_100B508C8;
    v12 = [*(v2 + 64) device];
    sub_100007E30(__p, "ANCSAuthorized");
    sub_10078787C(v11, v12, __p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = [*(v2 + 64) device];
    sub_1006D2FD8(v2, v13);

    v14 = 0;
  }

  v21 = [*(v2 + 64) bundleID];
  v22 = [*(v2 + 64) device];
  sub_1006D5BFC(v2, v22, 0, 0xFFFF, v14);

  v23 = *(v2 + 64);
  *(v2 + 64) = 0;

  if ([*(v2 + 48) count])
  {
    if (*(v2 + 73) == 1)
    {
      v24 = sub_1006D4E38(v2, v21);
      if (v24)
      {
        sub_1006D2DB4(v2, v24, v21);
      }

      goto LABEL_32;
    }

    if (*(v2 + 72) == 1)
    {
      v24 = [*(v2 + 48) objectAtIndexedSubscript:0];
      v25 = [v24 device];
      sub_1006D2DB4(v2, v25, 0);

LABEL_32:
    }
  }
}

void sub_1006D5BFC(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v9 = a2;
  v10 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006D5CB8;
  v12[3] = &unk_100B047E0;
  v13 = v9;
  v14 = a1;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v11 = v9;
  dispatch_async(v10, v12);
}

void sub_1006D5CB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_100863010();
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_10004FFDC(off_100B508C8, *(a1 + 32), &v17);
  if (SHIBYTE(v19) < 0)
  {
    if (v18)
    {
      v3 = v17;
      goto LABEL_8;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_13;
  }

  if (!HIBYTE(v19))
  {
    goto LABEL_10;
  }

  v3 = &v17;
LABEL_8:
  v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v3, +[NSString defaultCStringEncoding]);
  v5 = [qword_100BC7030 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    v7 = 0xFFFF;
  }

LABEL_13:
  if (qword_100B508B0 != -1)
  {
    sub_1008630F4();
  }

  v8 = off_100B508A8;
  v9 = [*(v2 + 64) device];
  sub_10004DFB4(buf, v9);
  sub_100050290(v8, buf);

  v10 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = &v17;
    if (v19 < 0)
    {
      v11 = v17;
    }

    v12 = *(a1 + 48);
    v13 = *(a1 + 52);
    v14 = *(a1 + 56);
    *buf = 136447490;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v13;
    *&buf[24] = 1024;
    *&buf[26] = v14;
    *&buf[30] = 1024;
    LODWORD(v21) = v7;
    WORD2(v21) = 1024;
    *(&v21 + 6) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Push AWD stats ANCS for %{public}s : triggerLoc: %u, prevPermission: %u, currPermission: %u, deviceCategory = %u, connectedTransport = %u", buf, 0x2Au);
  }

  v21 = 0u;
  v22 = 0u;
  memset(buf, 0, sizeof(buf));
  if (v19 >= 0)
  {
    v15 = &v17;
  }

  else
  {
    v15 = v17;
  }

  sub_100007E30(&__p, v15);
  sub_1003C3DDC(buf, &__p, 1, *(a1 + 48), *(a1 + 52), *(a1 + 56), v7, 0, 0xFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (qword_100B541F8 != -1)
  {
    sub_10086311C();
  }

  sub_10000EFDC(qword_100B541F0, buf);
  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }
}

void sub_1006D5F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006D5FE4(uint64_t a1)
{
  v32 = a1;
  v3 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: ---------------- ANCS Authorization Manager ----------------", &buf, 2u);
    v3 = qword_100BCE9A0;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(v32 + 48) count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: pendingAuthorizationDevicesQueue: %ld devices", &buf, 0xCu);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(v32 + 48);
  v5 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v5)
  {
    v35 = *v46;
    do
    {
      v36 = v5;
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        v8 = qword_100BCE9A0;
        if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100862F98();
          }

          v9 = off_100B508C8;
          v10 = [v7 device];
          sub_10004FFDC(v9, v10, &buf);
          if ((v50 & 0x80u) == 0)
          {
            v11 = v50;
          }

          else
          {
            v11 = *(&buf + 1);
          }

          if (v11)
          {
            if (qword_100B508D0 != -1)
            {
              sub_100862F98();
            }

            v12 = off_100B508C8;
            v1 = [v7 device];
            sub_10004FFDC(v12, v1, __p);
            if (v44 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_100862F98();
            }

            v14 = off_100B508C8;
            v33 = [v7 device];
            v15 = sub_100046458(v14, v33, 0);
            v2 = sub_100063D0C(v15);
            v13 = [v2 UTF8String];
          }

          v16 = [v7 device];
          *v51 = 136315394;
          v52 = v13;
          v53 = 2112;
          v54 = v16;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: Device: %s (%@)", v51, 0x16u);

          if (v11)
          {
            if (v44 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
          }

          if (v50 < 0)
          {
            operator delete(buf);
          }

          v8 = qword_100BCE9A0;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v7 bundleIdentifiers];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v17;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    BundleIdentifiers: %@", &buf, 0xCu);

          v8 = qword_100BCE9A0;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100862F98();
          }

          v18 = off_100B508C8;
          v19 = [v7 device];
          sub_100007E30(v41, "RequiresANCSAuth");
          v20 = sub_10004EB40(v18, v19, v41);
          v21 = "No";
          if (v20)
          {
            v21 = "Yes";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v21;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    RequiresANCSAuth: %s", &buf, 0xCu);
          if (v42 < 0)
          {
            operator delete(v41[0]);
          }

          v8 = qword_100BCE9A0;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100862F98();
          }

          v22 = off_100B508C8;
          v23 = [v7 device];
          sub_100007E30(v39, "ANCSAuthorized");
          v24 = sub_10004EB40(v22, v23, v39);
          v25 = "No";
          if (v24)
          {
            v25 = "Yes";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v25;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    ANCSAuthorized: %s", &buf, 0xCu);
          if (v40 < 0)
          {
            operator delete(v39[0]);
          }

          v8 = qword_100BCE9A0;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (qword_100B508D0 != -1)
          {
            sub_100862F98();
          }

          v26 = off_100B508C8;
          v27 = [v7 device];
          sub_100007E30(v37, "ANCSUnauthorized");
          v28 = sub_10004EB40(v26, v27, v37);
          v29 = "No";
          if (v28)
          {
            v29 = "Yes";
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v29;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump:    ANCSUnauthorized: %s", &buf, 0xCu);
          if (v38 < 0)
          {
            operator delete(v37[0]);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v5);
  }

  v30 = qword_100BCE9A0;
  if (os_log_type_enabled(qword_100BCE9A0, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(v32 + 56);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "statedump:    appBundleIndentifiers: %@", &buf, 0xCu);
  }
}

void sub_1006D67C8(id *a1)
{
  sub_1006D6AC0(a1);

  operator delete();
}

void sub_1006D6828(uint64_t a1, uint64_t a2)
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
    sub_1006D68B4((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1006D68B4(void *a1, char *__src, char *a3)
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

void sub_1006D6A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006D6D44(uint64_t a1)
{
  *a1 = off_100B085A8;
  sub_100044BBC((a1 + 8));
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  sub_100044BBC((a1 + 136));
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  return a1;
}

void sub_1006D6DEC(_Unwind_Exception *a1)
{
  sub_10000CEDC(v2, *v4);
  sub_10000CEDC(v3, *v5);
  sub_10007A068(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D6E1C(uint64_t a1)
{
  *a1 = off_100B085A8;
  sub_1006D703C(a1, 0);
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 8);
  v2 = *(a1 + 88);
  if (v2 != (a1 + 96))
  {
    do
    {
      if (v2[5])
      {
        nullsub_21();
        operator delete();
      }

      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 96));
  }

  v6 = *(a1 + 112);
  if (v6 != (a1 + 120))
  {
    do
    {
      v7 = v6[5];
      if (v7)
      {
        sub_1006D9A14(v6[5], *(v7 + 8));
        operator delete();
      }

      v8 = v6[1];
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
          v9 = v6[2];
          v5 = *v9 == v6;
          v6 = v9;
        }

        while (!v5);
      }

      v6 = v9;
    }

    while (v9 != (a1 + 120));
  }

  sub_10000CEDC(a1 + 224, *(a1 + 232));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = a1 + 232;
  sub_1000088CC(v12);
  sub_10000CEDC(a1 + 224, *(a1 + 232));
  v10 = *(a1 + 200);
  if (v10)
  {
    *(a1 + 208) = v10;
    operator delete(v10);
  }

  sub_10007A068(a1 + 136);
  sub_10000CEDC(a1 + 112, *(a1 + 120));
  sub_10000CEDC(a1 + 88, *(a1 + 96));
  sub_10007A068(a1 + 8);
  return a1;
}

void sub_1006D6FE8(_Unwind_Exception *a1)
{
  sub_10000CEDC(v1 + 224, *(v1 + 232));
  v3 = *(v1 + 200);
  if (v3)
  {
    *(v1 + 208) = v3;
    operator delete(v3);
  }

  sub_10007A068(v1 + 136);
  sub_10000CEDC(v1 + 112, *(v1 + 120));
  sub_10000CEDC(v1 + 88, *(v1 + 96));
  sub_10007A068(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D703C(uint64_t a1, unint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 8);
  if (*(a1 + 72) == 1)
  {
    if (a2)
    {
      v4 = *(a1 + 232);
      if (v4)
      {
        v5 = a1 + 232;
        do
        {
          v6 = *(v4 + 32);
          v7 = v6 >= a2;
          v8 = v6 < a2;
          if (v7)
          {
            v5 = v4;
          }

          v4 = *(v4 + 8 * v8);
        }

        while (v4);
        if (v5 != a1 + 232 && *(v5 + 32) <= a2 && *(v5 + 40) == 1)
        {
          *(v5 + 40) = 0;
        }
      }
    }

    else
    {
      v9 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopping pairing agent...", v11, 2u);
      }

      if (*(a1 + 80))
      {
        sub_10000801C(v12);
        sub_1006D78F0(a1, 161);
        sub_100007FB8(v12);
      }

      *(a1 + 72) = 0;
      sub_10000801C(v12);
      if (qword_100B50F88 != -1)
      {
        sub_100863144();
      }

      sub_1006DF5BC(off_100B50F80);
    }

    sub_1006D7574(a1, 1u, 0, 0, a2);
  }

  sub_1000088CC(v12);
  return 0;
}

void sub_1006D719C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006D71B4(uint64_t a1)
{
  sub_1006D6E1C(a1);

  operator delete();
}

uint64_t sub_1006D71EC(uint64_t a1, unint64_t *a2, __int128 *a3, uint64_t a4)
{
  v14[1] = 0;
  v15 = a2;
  v14[0] = 0;
  sub_100007F88(v14, a1 + 8);
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 136);
  v8 = *(a1 + 200);
  v9 = *(a1 + 208);
  v10 = a3[1];
  v17 = *a3;
  v18 = v10;
  v19 = a3[2];
  if (v8 != v9)
  {
    while (*v8 != a2 || memcmp(&v17, v8 + 1, 0x30uLL))
    {
      v8 += 9;
      if (v8 == v9)
      {
        goto LABEL_7;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_7:
    v11 = a3[1];
    v17 = *a3;
    v18 = v11;
    v19 = a3[2];
    v16 = a2;
    v20 = -1;
    v21 = a4;
    sub_1006D9A70((a1 + 200), &v16);
  }

  v16 = &v15;
  *(sub_1005702E4(a1 + 224, &v15, &unk_1008A9BD0, &v16) + 40) = 0;
  sub_1000088CC(v13);
  sub_1000088CC(v14);
  return 0;
}

void sub_1006D7328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D734C(uint64_t a1, unint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 136);
  v4 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), a2);
  if (v4 != *(a1 + 208))
  {
    *(a1 + 208) = v4;
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    v6 = a1 + 232;
    do
    {
      v7 = *(v5 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * v9);
    }

    while (v5);
    if (v6 != a1 + 232 && *(v6 + 32) <= a2)
    {
      if (*(v6 + 40) == 1)
      {
        sub_1006D703C(a1, a2);
      }

      sub_10002717C((a1 + 224), v6);
      operator delete(v6);
    }
  }

  sub_1000088CC(v11);
  return 0;
}

uint64_t sub_1006D7488(uint64_t a1, unint64_t a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 8);
  v4 = *(a1 + 232);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 232;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 232 && *(v5 + 32) <= a2)
  {
    if (*(v5 + 40))
    {
      v9 = 160;
    }

    else
    {
      *(v5 + 40) = 1;
      if ((*(a1 + 72) & 1) == 0)
      {
        *(a1 + 72) = 1;
        *(a1 + 80) = 0;
      }

      sub_10000801C(v11);
      sub_1006D7574(a1, 0, 0, 0, a2);
      v9 = 0;
    }
  }

  else
  {
LABEL_9:
    v9 = 7;
  }

  sub_1000088CC(v11);
  return v9;
}

uint64_t sub_1006D7574(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a2 > 3)
  {
    v9 = "unknown";
  }

  else
  {
    v9 = off_100B08778[a2];
  }

  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Sending '%{public}s' event with result %d", buf, 0x12u);
  }

  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 136);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  if (v11 == v12)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v16 = 106;
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    sub_1006DA118(buf, v11, v12, 0x8E38E38E38E38E39 * ((v12 - v11) >> 3));
    sub_10000801C(v18);
    v13 = *buf;
    if (*buf != *&buf[8])
    {
      do
      {
        if (v13[1] && (!a5 || *v13 == a5))
        {
          if (a3)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10086316C();
            }

            v14 = sub_10056A4C4(off_100B508E8, *v13, a3);
          }

          else
          {
            v14 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v13) && v14)
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(v18);
          v15 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v13);
          if (v15 != *(a1 + 208))
          {
            *(a1 + 208) = v15;
          }

          sub_10000801C(v18);
        }

        v13 += 9;
      }

      while (v13 != *&buf[8]);
      v13 = *buf;
    }

    if (v13)
    {
      *&buf[8] = v13;
      operator delete(v13);
    }

    v16 = 0;
  }

  sub_1000088CC(v18);
  return v16;
}

void sub_1006D78B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D78F0(uint64_t a1, int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      *(a1 + 80) = 0;
      sub_10000801C(v9);
      v5 = sub_1006D7574(a1, 3u, v4, a2, 0);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pairing agent is not started - ignoring pairing attempt", v8, 2u);
    }

    v5 = 162;
  }

  sub_1000088CC(v9);
  return v5;
}

void sub_1006D79CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D79E0(uint64_t a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 8);
  if (*(a1 + 72))
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = v4 == a2;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      sub_10000801C(v13);
      v6 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(a1 + 80), __p);
        if (v12 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        *buf = 136446210;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pairing already in progress for device %{public}s", buf, 0xCu);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1006D78F0(a1, 161);
      sub_100007FB8(v13);
    }

    *(a1 + 80) = a2;
    sub_10000801C(v13);
    v8 = sub_1006D7574(a1, 2u, a2, 0, 0);
  }

  else
  {
    v9 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Pairing agent is not started - ignoring pairing attempt", __p, 2u);
    }

    v8 = 162;
  }

  sub_1000088CC(v13);
  return v8;
}

void sub_1006D7B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D7BA4(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863218();
    }

    goto LABEL_8;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10086324C();
    }

LABEL_8:
    v3 = 162;
    goto LABEL_9;
  }

  sub_10000801C(v5);
  v3 = sub_1006D7C80(a1, v2, 4);
LABEL_9:
  sub_1000088CC(v5);
  return v3;
}

uint64_t sub_1006D7C80(uint64_t a1, uint64_t a2, char a3)
{
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v6 = v17 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'pincode request' pairing event for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 136);
  v7 = *(a1 + 200);
  v8 = *(a1 + 208);
  if (v7 == v8)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v13 = 106;
  }

  else
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_1006DA118(&__p, v7, v8, 0x8E38E38E38E38E39 * ((v8 - v7) >> 3));
    sub_10000801C(buf);
    v9 = __p;
    if (__p != v16)
    {
      do
      {
        if (v9[2])
        {
          if (a2)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10086316C();
            }

            v10 = sub_10056A4C4(off_100B508E8, *v9, a2);
          }

          else
          {
            v10 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v9))
          {
            v11 = v10 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(buf);
          v12 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v9);
          if (v12 != *(a1 + 208))
          {
            *(a1 + 208) = v12;
          }

          sub_10000801C(buf);
        }

        v9 += 9;
      }

      while (v9 != v16);
      v9 = __p;
    }

    if (v9)
    {
      v16 = v9;
      operator delete(v9);
    }

    v13 = 0;
  }

  sub_1000088CC(buf);
  return v13;
}

void sub_1006D7FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D7FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 8);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863218();
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10086324C();
    }

LABEL_8:
    v7 = 162;
    goto LABEL_9;
  }

  sub_10000801C(v9);
  v7 = sub_1006D80DC(a1, v6, v4, v3);
LABEL_9:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_1006D80DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a4 ? "numeric comparison" : "user confirmation";
    sub_1000E5A58(a2, &__p);
    v9 = v20 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v8;
    *&buf[12] = 2082;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending '%{public}s request' pairing event for device %{public}s", buf, 0x16u);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 136);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  if (v10 == v11)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v16 = 106;
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_1006DA118(&__p, v10, v11, 0x8E38E38E38E38E39 * ((v11 - v10) >> 3));
    sub_10000801C(buf);
    v12 = __p;
    if (__p != v19)
    {
      do
      {
        if (v12[2])
        {
          if (a2)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10086316C();
            }

            v13 = sub_10056A4C4(off_100B508E8, *v12, a2);
          }

          else
          {
            v13 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v12))
          {
            v14 = v13 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(buf);
          v15 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v12);
          if (v15 != *(a1 + 208))
          {
            *(a1 + 208) = v15;
          }

          sub_10000801C(buf);
        }

        v12 += 9;
      }

      while (v12 != v19);
      v12 = __p;
    }

    if (v12)
    {
      v19 = v12;
      operator delete(v12);
    }

    v16 = 0;
  }

  sub_1000088CC(buf);
  return v16;
}

void sub_1006D8438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D8474(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 8);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100863218();
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 80);
  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10086324C();
    }

LABEL_8:
    v5 = 162;
    goto LABEL_9;
  }

  sub_10000801C(v7);
  v5 = sub_1006D855C(a1, v4, v2);
LABEL_9:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1006D855C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v6 = v17 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'passkey display request' pairing event for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0uLL;
  sub_100007F88(buf, a1 + 136);
  v7 = *(a1 + 200);
  v8 = *(a1 + 208);
  if (v7 == v8)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v13 = 106;
  }

  else
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_1006DA118(&__p, v7, v8, 0x8E38E38E38E38E39 * ((v8 - v7) >> 3));
    sub_10000801C(buf);
    v9 = __p;
    if (__p != v16)
    {
      do
      {
        if (v9[2])
        {
          if (a2)
          {
            if (qword_100B508F0 != -1)
            {
              sub_10086316C();
            }

            v10 = sub_10056A4C4(off_100B508E8, *v9, a2);
          }

          else
          {
            v10 = 4294901761;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v9))
          {
            v11 = v10 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(buf);
          v12 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v9);
          if (v12 != *(a1 + 208))
          {
            *(a1 + 208) = v12;
          }

          sub_10000801C(buf);
        }

        v9 += 9;
      }

      while (v9 != v16);
      v9 = __p;
    }

    if (v9)
    {
      v16 = v9;
      operator delete(v9);
    }

    v13 = 0;
  }

  sub_1000088CC(buf);
  return v13;
}

void sub_1006D888C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D88C8(uint64_t **a1, unsigned __int8 *a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 1));
  v4 = a1[12];
  if (v4)
  {
    v5 = (a1 + 12);
    do
    {
      v6 = v4[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = v4[v8];
    }

    while (v4);
    if (v5 != (a1 + 12) && v5[4] <= a2)
    {
      if (v5[5])
      {
        nullsub_21();
        operator delete();
      }

      sub_10002717C(a1 + 11, v5);
      operator delete(v5);
    }
  }

  v11 = a1[15];
  v10 = a1 + 15;
  v9 = v11;
  if (v11)
  {
    v12 = v10 - 1;
    v13 = v10;
    do
    {
      v14 = v9[4];
      v7 = v14 >= a2;
      v15 = v14 < a2;
      if (v7)
      {
        v13 = v9;
      }

      v9 = v9[v15];
    }

    while (v9);
    if (v13 != v10 && v13[4] <= a2)
    {
      v16 = v13[5];
      if (v16)
      {
        sub_1006D9A14(v13[5], *(v16 + 8));
        operator delete();
      }

      sub_10002717C(v12, v13);
      operator delete(v13);
    }
  }

  sub_10000801C(v19);
  if (qword_100B50F88 != -1)
  {
    sub_100863144();
  }

  v17 = sub_1006E0DBC(off_100B50F80, a2);
  sub_1000088CC(v19);
  return v17;
}

uint64_t sub_1006D8A50(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return 0;
  }

  if (qword_100B50F88 != -1)
  {
    sub_100863280();
  }

  v2 = off_100B50F80;

  return sub_1006DF5BC(v2);
}

void sub_1006D8AA8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v12[1] = 0;
  v12[2] = a2;
  v12[0] = 0;
  sub_100007F88(v12, a1 + 8);
  v7 = *(a1 + 96);
  v6 = (a1 + 96);
  v5 = v7;
  if (v7)
  {
    v8 = v6;
    do
    {
      v9 = *(v5 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    if (v8 != v6 && v8[4] <= a2)
    {
      if (v8[5])
      {
        nullsub_21();
        operator delete();
      }

      sub_10002717C(v6 - 1, v8);
      operator delete(v8);
    }
  }

  operator new();
}

uint64_t sub_1006D8C30(uint64_t a1, unint64_t a2, __n128 *a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v8 = *(a1 + 96);
  v7 = a1 + 96;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 != v7 && *(v9 + 32) <= a2)
  {
    sub_1006E5F04(a3, *(v9 + 40));
    v13 = 0;
  }

  else
  {
LABEL_9:
    v13 = 1;
  }

  sub_1000088CC(v15);
  return v13;
}

uint64_t sub_1006D8CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (qword_100B50F88 != -1)
  {
    sub_100863280();
  }

  v5 = off_100B50F80;

  return sub_1006DFC84(v5, a2, v3);
}

uint64_t sub_1006D8D44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v8 = *(a1 + 120);
  v7 = a1 + 120;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 32) > a2 || (v13 = *(v9 + 40), v14 = sub_1006D9E8C(v13, a3), v13 + 8 == v14))
  {
LABEL_11:
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 48);
  }

  sub_1000088CC(v17);
  return v15;
}

uint64_t sub_1006D8E0C(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v16[1] = 0;
  v16[2] = a2;
  v16[0] = 0;
  sub_100007F88(v16, a1 + 8);
  v8 = *(a1 + 120);
  v7 = a1 + 120;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 32) > a2)
  {
LABEL_9:
    operator new();
  }

  v15 = *(v9 + 40);
  v18 = a3;
  v13 = sub_1006D9F10(v15, a3, &unk_1008A9BD0, &v18, &v17);
  ++*(v13 + 12);
  return sub_1000088CC(v16);
}

void sub_1006D8F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D8F34(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68159490;
    *&buf[4] = 16;
    LOWORD(v19) = 2096;
    *(&v19 + 2) = a2;
    WORD5(v19) = 1040;
    HIDWORD(v19) = 16;
    v20 = 2096;
    v21 = a3;
    v22 = 1040;
    v23 = 16;
    v24 = 2096;
    v25 = a4;
    v26 = 1040;
    v27 = 16;
    v28 = 2096;
    v29 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending 'local OOB Data Ready' event C192:{private, mask.hash}%.16P R192:{private, mask.hash}%.16P C256:{private, mask.hash}%.16P R256:{private, mask.hash}%.16P", buf, 0x42u);
  }

  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 136);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  if (v11 == v12)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008631E4();
    }

    v15 = 106;
  }

  else
  {
    *buf = 0;
    v19 = 0uLL;
    sub_1006DA118(buf, v11, v12, 0x8E38E38E38E38E39 * ((v12 - v11) >> 3));
    sub_10000801C(v17);
    v13 = *buf;
    if (*buf != v19)
    {
      do
      {
        if (v13[6])
        {
          if (qword_100B50B88 != -1)
          {
            sub_100863194();
          }

          if (sub_100076290(qword_100B50B80, *v13))
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008631BC();
            }

            operator new();
          }

          sub_100007FB8(v17);
          v14 = sub_1006D9D98(*(a1 + 200), *(a1 + 208), *v13);
          if (v14 != *(a1 + 208))
          {
            *(a1 + 208) = v14;
          }

          sub_10000801C(v17);
        }

        v13 += 9;
      }

      while (v13 != v19);
      v13 = *buf;
    }

    if (v13)
    {
      *&v19 = v13;
      operator delete(v13);
    }

    v15 = 0;
  }

  sub_1000088CC(v17);
  return v15;
}

void sub_1006D924C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D92D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1006D9344(a1, *(a1 + 56));
    if (result)
    {
      return sub_10051BAF0(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), a4);
    }
  }

  return result;
}

BOOL sub_1006D9344(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863294();
  }

  v3 = qword_100B50B80;

  return sub_100618944(v3, a2);
}

uint64_t sub_1006D93E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1006D9344(a1, *(a1 + 48));
    if (result)
    {
      return sub_10052CE3C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), a4);
    }
  }

  return result;
}

uint64_t sub_1006D94A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1006D9344(a1, *(a1 + 48));
    if (result)
    {
      return sub_10051BAF0(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), -*(a1 + 60), a4);
    }
  }

  return result;
}

uint64_t sub_1006D9560(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    result = sub_1006D9344(a1, *(a1 + 48));
    if (result)
    {
      return sub_10052CE3C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), a4);
    }
  }

  return result;
}

uint64_t sub_1006D9618(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_1006D9344(a1, *(a1 + 40));
  if (result)
  {
    return sub_10051BB5C(a2, a3, *(a1 + 40), a1 + 48, a1 + 64, a1 + 80, a1 + 96, a4);
  }

  return result;
}

void sub_1006D967C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v4 = (a2 + 8);
  memset(&v13, 0, sizeof(v13));
  sub_1003A5170(&v13, 0xCuLL);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v13;
  }

  else
  {
    v5 = v13.__r_.__value_.__r.__words[0];
  }

  strcpy(v5, "\t\tfStarted: ");
  if (*(a1 + 72))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = std::string::append(&v13, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v14, "\n");
  v10 = v9->__r_.__value_.__r.__words[0];
  *v4 = v9->__r_.__value_.__l.__size_;
  *(v4 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v12 = SHIBYTE(v14.__r_.__value_.__r.__words[2]);
  *a2 = v10;
  *(a2 + 23) = v11;
  if (v12 < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1006D979C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006D97D0(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
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

uint64_t sub_1006D9844(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
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

uint64_t sub_1006D98B8(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
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

uint64_t sub_1006D992C(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
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

uint64_t sub_1006D99A0(unint64_t *a1)
{
  result = sub_1006D9344(a1, a1[2]);
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

void sub_1006D9A14(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1006D9A14(a1, *a2);
    sub_1006D9A14(a1, a2[1]);
    nullsub_21();

    operator delete(a2);
  }
}

uint64_t sub_1006D9A70(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006D9AE0(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(v3 + 8) = v4;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 64) = *(a2 + 64);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1006D9AE0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000C7698();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1006D9D3C(a1, v6);
  }

  v7 = 72 * v2;
  __p = 0;
  v13 = v7;
  v15 = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v9;
  *(v7 + 8) = v8;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 64) = *(a2 + 64);
  v14 = 72 * v2 + 72;
  sub_1006D9CA4(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 = (v14 - v13 - 72) % 0x48uLL + v13;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_1006D9C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1006D9CA4(uint64_t *result, void *a2)
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
      v7 = *(v2 + 24);
      *(v5 + 40) = *(v2 + 40);
      *(v5 + 24) = v7;
      *(v5 + 8) = v6;
      *(v5 + 56) = *(v2 + 56);
      *(v5 + 64) = *(v2 + 64);
      v2 += 72;
      v5 += 72;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_1006D9D3C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_1006D9D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3)
    {
      result += 72;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 72; i != a2; i += 72)
      {
        if (*i != a3)
        {
          *result = *i;
          v6 = *(i + 8);
          v7 = *(i + 24);
          *(result + 40) = *(i + 40);
          *(result + 24) = v7;
          *(result + 8) = v6;
          *(result + 56) = *(i + 56);
          *(result + 64) = *(i + 64);
          result += 72;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1006D9E8C(uint64_t a1, uint64_t a2)
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
    v6 = sub_1006E5F48(v3 + 28, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1006E5F48(a2, v5 + 28))
  {
    return v2;
  }

  return v5;
}

void *sub_1006D9F10(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_1006D9FC4(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1006DA04C();
  }

  return v5;
}

void *sub_1006D9FC4(uint64_t a1, void *a2, uint64_t a3)
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
        if (!sub_1006E5F48(a3, v4 + 28))
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

      if (!sub_1006E5F48(v7 + 28, a3))
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

uint64_t sub_1006DA0CC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      nullsub_21();
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1006DA118(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1006DA1A4(result, a4);
  }

  return result;
}

void sub_1006DA1A4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_1006D9D3C(a1, a2);
  }

  sub_1000C7698();
}

uint64_t sub_1006DA32C(uint64_t a1)
{
  *a1 = off_100B087A8;
  *(a1 + 8) = off_100B08830;
  *(a1 + 16) = off_100B08850;
  *(a1 + 24) = off_100B08888;
  *(a1 + 32) = off_100B088B0;
  *(a1 + 40) = 0;
  sub_100044BBC((a1 + 48));
  *(a1 + 112) = 0;
  sub_100044BBC((a1 + 120));
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  sub_100044BBC((a1 + 208));
  *(a1 + 272) = 0;
  sub_100044BBC((a1 + 280));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 408) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = &off_100B08A40;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  sub_100044BBC((a1 + 416));
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = a1 + 512;
  sub_100044BBC((a1 + 536));
  *(a1 + 632) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  return a1;
}

void sub_1006DA490(_Unwind_Exception *a1)
{
  v4 = v2;
  sub_10000CEDC((v1 + 63), *v4);
  v6 = v1[60];
  if (v6)
  {
    v1[61] = v6;
    operator delete(v6);
  }

  sub_10007A068((v1 + 52));
  v7 = v1[43];
  if (v7)
  {
    v1[44] = v7;
    operator delete(v7);
  }

  sub_10007A068((v1 + 35));
  sub_10007A068((v3 + 3));
  v8 = *v3;
  if (*v3)
  {
    v1[24] = v8;
    operator delete(v8);
  }

  sub_10007A068((v1 + 15));
  sub_10007A068((v1 + 6));
  _Unwind_Resume(a1);
}

uint64_t sub_1006DA52C(uint64_t a1)
{
  *a1 = off_100B087A8;
  *(a1 + 8) = off_100B08830;
  *(a1 + 16) = off_100B08850;
  *(a1 + 24) = off_100B08888;
  *(a1 + 32) = off_100B088B0;
  v2 = *(a1 + 608);
  if (v2)
  {
    *(a1 + 616) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 536);
  sub_10000CEDC(a1 + 504, *(a1 + 512));
  v3 = *(a1 + 480);
  if (v3)
  {
    *(a1 + 488) = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 416);
  v4 = *(a1 + 344);
  if (v4)
  {
    *(a1 + 352) = v4;
    operator delete(v4);
  }

  sub_10007A068(a1 + 280);
  sub_10007A068(a1 + 208);
  v5 = *(a1 + 184);
  if (v5)
  {
    *(a1 + 192) = v5;
    operator delete(v5);
  }

  sub_10007A068(a1 + 120);
  sub_10007A068(a1 + 48);
  return a1;
}

void sub_1006DA674(uint64_t a1)
{
  sub_1006DA52C(a1);

  operator delete();
}

void sub_1006DA6AC(uint64_t a1)
{
  sub_1006DA52C(a1 - 16);

  operator delete();
}

void sub_1006DA6E8(uint64_t a1, int *a2, uint64_t a3, int a4, _OWORD *a5, char a6)
{
  v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v16 = *a2;
  v17 = *(a2 + 2);
  *v12 = *a5;
  v13 = *(a1 + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006DA7C8;
  v14[3] = &unk_100B088D0;
  v15 = a4;
  v18 = a6;
  v14[4] = v12;
  v14[5] = a2;
  v14[6] = a3;
  sub_10000CA94(v13, v14);
}

_BYTE *sub_1006DA7C8(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008632A8();
  }

  *buf = *(a1 + 60);
  *&buf[4] = *(a1 + 64);
  v2 = sub_1000E6554(off_100B508E8, buf, 1);
  v3 = qword_100BCE940;
  if (v2)
  {
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    sub_1000DEEA4(v2, __p);
    if (v26 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Oh no, we have no device !", buf, 2u);
    v3 = qword_100BCE940;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "UNKNOWN";
LABEL_12:
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 66);
    *buf = 136316419;
    *&buf[4] = v4;
    v31 = 1024;
    v32 = v5;
    v33 = 2160;
    v34 = 1752392040;
    v35 = 1041;
    v36 = 16;
    v37 = 2097;
    v38 = v6;
    v39 = 1024;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Classic SMP pairing completed to %s with status %d IRK:%{private, mask.hash}.16P useH7=%d", buf, 0x32u);
    if (v2 && v26 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_15:
  if (!*(a1 + 56))
  {
    v29 = 0uLL;
    v27 = 0uLL;
    v28 = 0;
    sub_1006D1B74(&v27);
    if (qword_100B512E8 != -1)
    {
      sub_1008632BC();
    }

    if (sub_1006E7E2C(off_100B512E0, v2, &v27))
    {
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1008632E4();
      }
    }

    else
    {
      v8 = sub_1006D1BC8(&v27);
      v24 = 0;
      sub_1000216B4(&v24);
      nullsub_21();
      v10 = v9;
      v11 = sub_1006D1C18();
      LODWORD(v10) = sub_10029B850(v10, v11, &v29, *(a1 + 66));
      sub_100022214(&v24);
      if (v10)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_100863354();
        }
      }

      else
      {
        v12 = v8;
        if (qword_100B508C0 != -1)
        {
          sub_1008633C4();
        }

        v13 = *(a1 + 40);
        v22 = *(a1 + 32);
        v23 = off_100B508B8;
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v18 = v13[4];
        v19 = v13[5];
        v20 = *(a1 + 66);
        sub_1000DEEA4(v2, buf);
        sub_1007CB20C(v23, (v14 << 40) | (v15 << 32) | (v16 << 24) | (v17 << 16) | (v18 << 8) | v19, 1, &v29, v22, v20, v12 == 8, buf);
        if (SBYTE3(v34) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_10002249C(&v24);
    }

    nullsub_21();
  }

  free(*(a1 + 32));
  buf[0] = 0;
  sub_1000216B4(buf);
  sub_100247BFC(*(a1 + 48), 3);
  return sub_10002249C(buf);
}

void sub_1006DAB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a15);
  nullsub_21();
  _Unwind_Resume(a1);
}

void sub_1006DABCC(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100007F88(v1, a1 + 208);
  operator new();
}

uint64_t sub_1006DAD98(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100863464();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 32);
  if (qword_100B512E8 != -1)
  {
    sub_1000DF9EC();
  }

  sub_1006E89A0(off_100B512E0, a1 + 16);
  if (qword_100B50B88 != -1)
  {
    sub_100863478();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B50F68 != -1)
  {
    sub_10086348C();
  }

  sub_10007A3F0(off_100B50F60 + 24, a1 + 24);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 48);
  v2 = *(a1 + 184);
  if (v2 != *(a1 + 192))
  {
    do
    {
      v3 = *v2;
      v4 = *(a1 + 112);
      if (v4)
      {
        sub_1006D734C(v4, *v2);
      }

      if (qword_100B50B88 != -1)
      {
        sub_1008633EC();
      }

      sub_1006189DC(qword_100B50B80, v3);
      ++v2;
    }

    while (v2 != *(a1 + 192));
    v2 = *(a1 + 184);
  }

  *(a1 + 192) = v2;
  v5 = *(a1 + 112);
  if (v5)
  {
    v6 = qword_100BCE940;
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT) || (LOWORD(v9[0]) = 0, _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PairingManager is terminating. Deleting fAgent!", v9, 2u), (v5 = *(a1 + 112)) != 0))
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 112) = 0;
  }

  sub_10000801C(v10);
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 208);
  *(a1 + 272) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_1005711C4(v7);
    operator delete();
  }

  *(a1 + 40) = 0;
  sub_1000088CC(v9);
  return sub_1000088CC(v10);
}

void sub_1006DAFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DAFD4(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 120);
  if (a2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling existing pairing timeout event", v6, 2u);
      }

      *(v3 + 9) = 1;
      *(a2 + 40) = 0;
    }
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1006DB07C(uint64_t a1, void *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 120);
  if (a2)
  {
    sub_1006DAFD4(a1, a2);
    v4 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating a new pairing timeout event", v6, 2u);
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_1008634A0();
  }

  return sub_1000088CC(v7);
}

void sub_1006DB218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DB230(void *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863478();
  }

  v8 = sub_1000117DC(qword_100B50B80, a2);
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, (a1 + 6));
  if (!a1[14])
  {
    v9 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "allocating fAgent", __p, 2u);
    }

    operator new();
  }

  if (qword_100B50B88 != -1)
  {
    sub_1008633EC();
  }

  v10 = sub_1006185D8(qword_100B50B80, a2);
  *a4 = v10;
  if (v10)
  {
    *a3 = a1[14];
    v12 = a1[24];
    v11 = a1[25];
    if (v12 >= v11)
    {
      v15 = a1[23];
      v16 = (v12 - v15) >> 3;
      if ((v16 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v17 = v11 - v15;
      v18 = v17 >> 2;
      if (v17 >> 2 <= (v16 + 1))
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        sub_100008108((a1 + 23), v19);
      }

      v20 = (8 * v16);
      *v20 = *a4;
      v13 = 8 * v16 + 8;
      v21 = a1[23];
      v22 = a1[24] - v21;
      v23 = v20 - v22;
      memcpy(v20 - v22, v21, v22);
      v24 = a1[23];
      a1[23] = v23;
      a1[24] = v13;
      a1[25] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v12 = *a4;
      v13 = (v12 + 1);
    }

    a1[24] = v13;
    v25 = qword_100BCE940;
    v14 = 0;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        sub_100018384(v8, __p);
        if (v29 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        *buf = 136446210;
        v32 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Creating pairing agent for session %{public}s", buf, 0xCu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v32 = "(NULL)";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Creating pairing agent for session %{public}s", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 7;
  }

  sub_1000088CC(v30);
  return v14;
}

void sub_1006DB50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DB54C(void *a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_100863478();
  }

  v4 = sub_1000117DC(qword_100B50B80, a2);
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      sub_100018384(v4, __p);
      if (v20 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying pairing agent for session %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v22 = "(NULL)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying pairing agent for session %{public}s", buf, 0xCu);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, (a1 + 6));
  v8 = a1[23];
  v7 = a1[24];
  if (v8 != v7)
  {
    v9 = (v8 + 1);
    while (1)
    {
      v10 = *v8;
      if (*v8 == a2)
      {
        break;
      }

      ++v8;
      v9 += 8;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    v11 = a1[14];
    if (v11)
    {
      sub_1006D734C(v11, *v8);
    }

    if (qword_100B50B88 != -1)
    {
      sub_1008633EC();
    }

    sub_1006189DC(qword_100B50B80, v10);
    v12 = v9 - 8;
    v13 = a1[24];
    v14 = v13 - v9;
    if (v13 != v9)
    {
      memmove(v9 - 8, v9, v13 - v9);
    }

    v7 = &v12[v14];
    a1[24] = &v12[v14];
  }

LABEL_23:
  if (a1[14] && v7 == a1[23])
  {
    v15 = sub_10000E92C();
    if ((*(*v15 + 8))(v15))
    {
      v16 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "destroyAgent";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - deleting fAgent as fHandleList size is 0", buf, 0xCu);
      }
    }

    v17 = a1[14];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    a1[14] = 0;
  }

  sub_10000801C(__p);
  return sub_1000088CC(__p);
}

void sub_1006DB814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DB834(void *a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, (a1 + 6));
  for (i = a1[23]; ; ++i)
  {
    if (i == a1[24])
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }
  }

  v5 = a1[14];
LABEL_7:
  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1006DB8AC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 208);
  if ((*(a1 + 272) & 1) == 0)
  {
    sub_100570C90(*(a1 + 40), QOS_CLASS_USER_INITIATED);
    *(a1 + 272) = 1;
    *(a1 + 352) = *(a1 + 344);
    sub_10000801C(v4);
    v3 = 0;
    sub_1000216B4(&v3);
    sub_1002FCD94(1);
    sub_100022214(&v3);
    sub_10002249C(&v3);
  }

  return sub_1000088CC(v4);
}

void sub_1006DB93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006DB96C(uint64_t a1)
{
  if (*(a1 + 528))
  {
    v1 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Classic SMP Disabled", buf, 2u);
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v2 = sub_10024AE98(sub_1006DBCA4);
    sub_100022214(__p);
    v3 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Classic_SMPInit returned %d", buf, 8u);
    }

    sub_10002249C(__p);
  }

  v17 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "Pairing");
  sub_100007E30(__p, "DisableH7");
  v5 = (*(*v4 + 72))(v4, buf, __p, &v17);
  v6 = v17;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v5 & v6;
  if (v19 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Disabling Classic SMP local H7 support!", buf, 2u);
  }

  sub_10024B4F8();
LABEL_16:
  v14 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(buf, "Pairing");
  sub_100007E30(__p, "ForceReplyH7");
  v10 = (*(*v9 + 72))(v9, buf, __p, &v14);
  v11 = v14;
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v10 & v11;
  if (v19 < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      return;
    }
  }

  else if (!v12)
  {
    return;
  }

  v13 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Forcing Classic SMP to reply with H7!", buf, 2u);
  }

  sub_10024B508();
}

void sub_1006DBC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006DBCA4(uint64_t a1, int a2, _OWORD *a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008632A8();
  }

  *buf = *a1;
  *&buf[4] = *(a1 + 4);
  v8 = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      sub_1000DEEA4(v8, __p);
      if (v12 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136316419;
      *&buf[4] = v10;
      v14 = 1024;
      v15 = a2;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 1041;
      v19 = 16;
      v20 = 2097;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_Classic_SMP_PairingComplete device:%s status %d IRK:%{private, mask.hash}.16P useH7=%d", buf, 0x32u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136316419;
      *&buf[4] = "UNKNOWN";
      v14 = 1024;
      v15 = a2;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 1041;
      v19 = 16;
      v20 = 2097;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_Classic_SMP_PairingComplete device:%s status %d IRK:%{private, mask.hash}.16P useH7=%d", buf, 0x32u);
    }
  }

  *buf = 0;
  sub_10023DB58(a1, buf);
  sub_100246BB4(a1, 0);
  if (qword_100B50F88 != -1)
  {
    sub_1008634D4();
  }

  sub_1006DA6E8(off_100B50F80, a1, *buf, a2, a3, a4);
}

uint64_t sub_1006DBEFC(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PairingManager::stackWillStop enter", buf, 2u);
  }

  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 208);
  if (*(a1 + 272) == 1)
  {
    *(a1 + 272) = 0;
    if ((*(a1 + 528) & 1) == 0)
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10024B064();
      sub_100022214(buf);
      sub_10002249C(buf);
    }

    v10[0] = 0;
    v10[1] = 0;
    sub_100007F88(v10, a1 + 280);
    *buf = 0;
    v8 = 0;
    v9 = 0;
    sub_100007F20(buf, (a1 + 344));
    *(a1 + 352) = *(a1 + 344);
    sub_10000801C(v10);
    for (i = *buf; i != v8; ++i)
    {
      sub_1006DC0D4(a1, *i, 0xA1u);
    }

    sub_100571164(*(a1 + 40));
    sub_10000801C(v11);
    v4 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PairingManager::stackWillStop exit", v6, 2u);
    }

    if (*buf)
    {
      v8 = *buf;
      operator delete(*buf);
    }

    sub_1000088CC(v10);
  }

  return sub_1000088CC(v11);
}

uint64_t sub_1006DC0D4(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v52[1] = 0;
  v53 = 0;
  v7 = a2 + 128;
  v6 = a2[128];
  v8 = a2[129];
  v9 = a2[130];
  v10 = a2[131];
  v11 = a2[132];
  v12 = a2[133];
  v52[0] = 0;
  sub_100007F88(v52, a1 + 280);
  v47 = a3;
  sub_10056923C((a1 + 344), a2);
  v13 = *(a1 + 512);
  if (v13)
  {
    v14 = (a1 + 512);
    do
    {
      v15 = *(v13 + 32);
      v16 = v15 >= a2;
      v17 = v15 < a2;
      if (v16)
      {
        v14 = v13;
      }

      v13 = *(v13 + 8 * v17);
    }

    while (v13);
    if (v14 != (a1 + 512) && v14[4] <= a2)
    {
      sub_1006DAFD4(a1, v14[5]);
      v18 = v14[5];
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      sub_10002717C((a1 + 504), v14);
      operator delete(v14);
    }
  }

  sub_10000801C(v52);
  v51[0] = 0;
  v51[1] = 0;
  sub_100007F88(v51, a1 + 48);
  v19 = *(a1 + 112);
  v20 = v47;
  if (v19)
  {
    sub_1006D78F0(v19, v47);
  }

  v21 = (v6 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (v11 << 8) | v12;
  if (v21)
  {
    v22 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v23 = v56[3] >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Pairing complete for device %{public}s", buf, 0xCu);
      if ((v56[3] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v45 = v21;
    if (*(a1 + 272) == 1)
    {
      v50 = 0;
      sub_1000216B4(&v50);
      sub_1002FCBC0(v7, 0);
      v24 = sub_1002D3618(v21);
      v48 = v24;
      v49 = WORD2(v24);
      if (sub_10023DB58(&v48, &v53))
      {
        v46 = 0;
      }

      else
      {
        v46 = sub_100255544(v53);
      }

      v27 = sub_10025557C(v53);
      sub_100022214(&v50);
      sub_10053CE84(a2, 255);
      sub_10053CCBC(a2, 255);
      v28 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v29 = v62 >= 0 ? buf : *buf;
        *__p = 136446722;
        *&__p[4] = v29;
        *&__p[12] = 1024;
        *v55 = v46;
        *&v55[4] = 1024;
        *v56 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Device %{public}s ClassicSMPSupported:%d encryptionMode:%d", __p, 0x18u);
        if (v62 < 0)
        {
          operator delete(*buf);
        }
      }

      sub_10002249C(&v50);
      v26 = v27 == 2;
    }

    else
    {
      v25 = qword_100BCE940;
      v26 = 0;
      v46 = 0;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Stack shutting down, ignore pairing timeout", __p, 2u);
        v26 = 0;
        v46 = 0;
      }
    }

    v30 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v26;
      v32 = sub_10054E5F8(a2);
      v33 = *(a1 + 528);
      v34 = a2[1177];
      v35 = sub_1007774DC(v45);
      *__p = 67110402;
      *&__p[4] = v47;
      *&__p[8] = 1024;
      *&__p[10] = v32;
      *v55 = 1024;
      *&v55[2] = v46;
      *v56 = 1024;
      *&v56[2] = v33;
      v20 = v47;
      v57 = 1024;
      v58 = v34;
      v59 = 2112;
      v60 = v35;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "pairingComplete result:%d device->isDerivedFromLE:%d connectionSupportsClassicSMP:%d fCTKDDisabled:%d isPendingClassicSMP:%d address:%@", __p, 0x2Au);

      v26 = v31;
    }

    if (v20 || *(a1 + 272) != 1 || (sub_10054E5F8(a2) & 1) != 0 || (*(a1 + 528) & 1) != 0 || ((v46 ^ 1) & 1) != 0)
    {
      goto LABEL_63;
    }

    if (a2[1177] == 1)
    {
      sub_100246BB4(v7, 1);
      v36 = qword_100BCE940;
      if (v26)
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, __p);
          v37 = v56[3] >= 0 ? __p : *__p;
          *buf = 136446210;
          *&buf[4] = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Initiating Classic SMP with device %{public}s", buf, 0xCu);
          if ((v56[3] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        a2[1177] = 0;
        buf[0] = 0;
        sub_1000216B4(buf);
        v38 = sub_10024B0B4(v53);
        sub_100022214(buf);
        if (v38)
        {
          if (v38 == 4821)
          {
            v39 = qword_100BCE940;
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Failed to start Classic SMP Pairing, waiting for other side to initiate", __p, 2u);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
            {
              sub_100863530();
            }

            sub_1000618AC(buf);
            sub_100246BB4(v7, 0);
            sub_100022214(buf);
          }
        }

        v40 = buf;
        goto LABEL_62;
      }

      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
      {
        sub_1008634FC();
      }

      __p[0] = 0;
      sub_1000216B4(__p);
      sub_100246BB4(v7, 0);
      sub_100022214(__p);
    }

    else
    {
      a2[1177] = 1;
      __p[0] = 0;
      sub_1000216B4(__p);
      sub_100246BB4(v7, 1);
      sub_100022214(__p);
    }

    v40 = __p;
LABEL_62:
    sub_10002249C(v40);
LABEL_63:
    *buf = 0uLL;
    if (qword_100B508D0 != -1)
    {
      sub_1008635A0();
    }

    sub_1000498D4(off_100B508C8, (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], 1u, 0, 0, 0, buf);
    if (qword_100B508D0 != -1)
    {
      sub_1008635A0();
    }

    v41 = off_100B508C8;
    v42 = sub_10004DF60(buf);
    *(sub_10004B1D8(v41, v42) + 161) = 1;

    if (_os_feature_enabled_impl())
    {
      if (qword_100B508C0 != -1)
      {
        sub_1008633C4();
      }

      v43 = off_100B508B8;
      sub_100007E30(__p, "");
      sub_1007CB20C(v43, v45, 0, 0, 0, 0, 0, __p);
      if ((v56[3] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (qword_100B50F68 != -1)
  {
    sub_100863414();
  }

  sub_100530B30(off_100B50F60);
  sub_1006DCDD0(a1, a2, v20);
  if (v20 && !sub_10053E610(a2))
  {
    if (qword_100B512E8 != -1)
    {
      sub_1008632BC();
    }

    sub_1006E877C(off_100B512E0, a2);
  }

  sub_1000088CC(v51);
  return sub_1000088CC(v52);
}

void sub_1006DC8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1000088CC(&a15);
  sub_1000088CC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DC960(void *a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 52));
  v4 = a1[60];
  v5 = a1[61];
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
    v7 = a1[62];
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
        sub_100008108((a1 + 60), v12);
      }

      v13 = (8 * v9);
      *v13 = a2;
      v8 = 8 * v9 + 8;
      v14 = a1[60];
      v15 = a1[61] - v14;
      v16 = v13 - v15;
      memcpy(v13 - v15, v14, v15);
      v17 = a1[60];
      a1[60] = v16;
      a1[61] = v8;
      a1[62] = 0;
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

    a1[61] = v8;
  }

  return sub_1000088CC(v19);
}

uint64_t sub_1006DCA90(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 416);
  v5 = *(a1 + 480);
  v4 = *(a1 + 488);
  if (v5 != v4)
  {
    v6 = *(a1 + 480);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 488);
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

    *(a1 + 488) = &v7[v5];
  }

  return sub_1000088CC(v9);
}

BOOL sub_1006DCB34(uint64_t a1, uint64_t a2)
{
  if (qword_100B508E0 != -1)
  {
    sub_1008635C8();
  }

  if (!sub_100518294(off_100B508D8, a2))
  {
    return 0;
  }

  v4 = 0;
  if (qword_100B508E0 != -1)
  {
    sub_1008635C8();
  }

  return !sub_100518AF4(off_100B508D8, a2, &v4) && v4 == 1;
}

uint64_t sub_1006DCBD4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v17 = 0;
  v16 = 0u;
  *v14 = 0u;
  memset(v15, 0, sizeof(v15));
  *v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_1000DE474(&v9 + 1);
  BYTE2(v10[0]) = 0;
  BYTE4(v10[0]) = 0;
  BYTE2(v12[0]) = 0;
  BYTE4(v12[0]) = 0;
  DWORD1(v15[1]) = 0;
  v11 = 0uLL;
  v10[1] = 0;
  LOBYTE(v12[0]) = 0;
  v13 = 0uLL;
  v12[1] = 0;
  LOBYTE(v14[0]) = 0;
  memset(v15, 0, 19);
  v14[1] = 0;
  BYTE8(v15[1]) = 1;
  *(&v15[1] + 14) = 0;
  *(&v15[1] + 9) = 0;
  v16 = 0uLL;
  *(&v15[2] + 1) = 0;
  LOBYTE(v17) = 0;
  *(&v17 + 2) = 0;
  if (sub_100536A18(v2, &v9) && (BYTE10(v15[1]) & 1) != 0 || sub_10053E610(v2))
  {
    __p = 0;
    v7 = 0;
    v8 = 0;
    if (sub_10009DB3C(a1, &__p))
    {
      v2 = 0;
      if (!__p)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = __p;
      if (__p != v7)
      {
        v4 = __p;
        while (*v4 != v2)
        {
          if (++v4 == v7)
          {
            v4 = v7;
            break;
          }
        }
      }

      v2 = v7 != v4;
      if (!__p)
      {
        goto LABEL_16;
      }
    }

    v7 = __p;
    operator delete(__p);
  }

  else
  {
    v2 = 0;
  }

LABEL_16:
  if (SHIBYTE(v15[0]) < 0)
  {
    operator delete(v14[1]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  nullsub_21();
  return v2;
}

void sub_1006DCD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100320BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DCDD0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v7 = v22 >= 0 ? &__p : __p;
    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'pairing complete' event for device %{public}s with result %d", buf, 0x12u);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100007F88(buf, a1 + 416);
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_100007F20(&__p, (a1 + 480));
  sub_10000801C(buf);
  for (i = __p; i != v21; ++i)
  {
    v8 = (*(**i + 24))(*i, a2, a3);
  }

  if (!a3)
  {
    v11 = a2[128];
    v12 = a2[129];
    v13 = a2[130];
    v14 = a2[131];
    v15 = a2[132];
    v16 = a2[133];
    v17 = sub_100017F4C(v8, v9);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1006E1E3C;
    v19[3] = &unk_100ADF8F8;
    v19[4] = (v11 << 40) | (v12 << 32) | (v13 << 24) | (v14 << 16) | (v15 << 8) | v16;
    sub_10000CA94(v17, v19);
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return sub_1000088CC(buf);
}

void sub_1006DCFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006DD2E8(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  v9 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 141560835;
    v11 = 1752392040;
    v12 = 1041;
    v13 = 16;
    v14 = 2097;
    v15 = a2;
    v16 = 2160;
    v17 = 1752392040;
    v18 = 1041;
    v19 = 16;
    v20 = 2097;
    v21 = a3;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 1041;
    v25 = 16;
    v26 = 2097;
    v27 = a4;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 1041;
    v31 = 16;
    v32 = 2097;
    v33 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PairingManager::localOOBDataGenerated C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", &v10, 0x6Au);
  }

  operator new();
}

void sub_1006DD488(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 208);
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 280);
  __p[0] = a2[1];
  sub_1000C2484(a1 + 344, __p);
  operator new();
}

void sub_1006DDDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a33);
  nullsub_21();
  sub_1000088CC(&a12);
  sub_10002249C(&a17);
  sub_1000088CC(&a18);
  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DDEBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[1];
  v9 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v8, __p);
    v10 = v18;
    v11 = __p[0];
    v12 = (*(*a2 + 48))(a2);
    v13 = __p;
    if (v10 < 0)
    {
      v13 = v11;
    }

    v14 = "for self-initiated pairing to";
    *buf = 136315650;
    if (a3)
    {
      v14 = "for incoming pairing from";
    }

    *&buf[4] = v14;
    *&buf[12] = 2082;
    *&buf[14] = v13;
    *&buf[22] = 1024;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notifying 'pairing started' %s %{public}s for Auth type %d", buf, 0x1Cu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1 + 416);
  memset(buf, 0, sizeof(buf));
  sub_100007F20(buf, (a1 + 480));
  sub_10000801C(__p);
  v15 = *buf;
  if (*buf != *&buf[8])
  {
    do
    {
      (*(**v15 + 16))(*v15, v8, a3, a4);
      ++v15;
    }

    while (v15 != *&buf[8]);
    v15 = *buf;
  }

  if (v15)
  {
    *&buf[8] = v15;
    operator delete(v15);
  }

  return sub_1000088CC(__p);
}

void sub_1006DE0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006DE0F8(uint64_t a1, void **a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 208);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 280);
  __p = a2[1];
  sub_1000C2484(a1 + 344, &__p);
  operator new();
}

void sub_1006DE7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

void sub_1006DE84C(uint64_t a1, uint64_t *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 208);
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 280);
  __p = a2[1];
  sub_1000C2484(a1 + 344, &__p);
  operator new();
}

void sub_1006DEC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DECAC(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 208);
  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141560835;
    *&buf[4] = 1752392040;
    *&buf[12] = 1041;
    *&buf[14] = 16;
    v15 = 2097;
    v16 = a2;
    v17 = 2160;
    v18 = 1752392040;
    v19 = 1041;
    v20 = 16;
    v21 = 2097;
    v22 = a3;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 1041;
    v26 = 16;
    v27 = 2097;
    v28 = a4;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 1041;
    v32 = 16;
    v33 = 2097;
    v34 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PairingManager::notifyLocalOOBDataReady C192:%{private, mask.hash}.16P R192:%{private, mask.hash}.16P C256:%{private, mask.hash}.16P R256:%{private, mask.hash}.16P", buf, 0x6Au);
  }

  if (*(a1 + 272))
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1 + 48);
    v11 = *(a1 + 112);
    if (v11)
    {
      sub_1006D8F34(v11, a2, a3, a4, a5);
    }

    else if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008636C0();
    }

    sub_1000088CC(buf);
  }

  else if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_10086379C();
  }

  return sub_1000088CC(v13);
}

void sub_1006DEE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000088CC(va);
  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006DEEA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    v28 = 0;
    v8 = a2 + 128;
    v26 = *(a2 + 128);
    v27 = *(a2 + 132);
    v25 = sub_10023DB58(&v26, &v28);
    v54 = 0;
    v53 = 0u;
    memset(v52, 0, sizeof(v52));
    v50 = 0u;
    *v51 = 0u;
    v48 = 0u;
    *v49 = 0u;
    v46 = 0u;
    *v47 = 0u;
    sub_1000DE474(&v46 + 1);
    BYTE2(v47[0]) = 0;
    BYTE4(v47[0]) = 0;
    BYTE2(v49[0]) = 0;
    BYTE4(v49[0]) = 0;
    DWORD1(v52[1]) = 0;
    v48 = 0uLL;
    v47[1] = 0;
    LOBYTE(v49[0]) = 0;
    v50 = 0uLL;
    v49[1] = 0;
    LOBYTE(v51[0]) = 0;
    memset(v52, 0, 19);
    v51[1] = 0;
    BYTE8(v52[1]) = 1;
    *(&v52[1] + 14) = 0;
    *(&v52[1] + 9) = 0;
    v53 = 0uLL;
    *(&v52[2] + 1) = 0;
    LOBYTE(v54) = 0;
    *(&v54 + 2) = 0;
    if (sub_100536A18(a2, &v46) && BYTE2(v54) == 1)
    {
      v9 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, &__p);
        v10 = (v37 & 0x8000) == 0 ? &__p : __p;
        *buf = 136446210;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Force No Clasic SMP support for device %{public}s", buf, 0xCu);
        if (SBYTE1(v37) < 0)
        {
          operator delete(__p);
        }
      }

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v8;
      v13 = *(a2 + 1177);
      v14 = *(a1 + 528);
      v15 = sub_1000295DC(a2);
      v16 = sub_1000E69B8(a1 + 344, a2);
      sub_1000BE6F8(&v26, buf);
      v17 = buf;
      if (v30 < 0)
      {
        v17 = *buf;
      }

      LODWORD(__p) = 67110914;
      HIDWORD(__p) = v25;
      v32 = 1024;
      v33 = a4;
      v34 = 1024;
      v35 = v13;
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      v39 = v15;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v11;
      v44 = 2082;
      v45 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "encryptionComplete status:%d encryptionMode:%d pendingClassicSMP:%d fCTKDDisabled=%d isPaired:%d isPairing:%d disableRemoteCTKDSupport:%d address:%{public}s", &__p, 0x36u);
      if (v30 < 0)
      {
        operator delete(*buf);
      }

      v8 = v24;
    }

    if (a4 == 2 && !v25 && ((v11 | *(a1 + 528)) & 1) == 0)
    {
      sub_100246BB4(v8, 1);
      if (*(a2 + 1177) == 1)
      {
        v18 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__p);
          v19 = (v37 & 0x8000) == 0 ? &__p : __p;
          *buf = 136446210;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Initiating Classic SMP with device %{public}s", buf, 0xCu);
          if (SBYTE1(v37) < 0)
          {
            operator delete(__p);
          }
        }

        *(a2 + 1177) = 0;
        v20 = sub_10024B0B4(v28);
        if (v20)
        {
          if (v20 == 4821)
          {
            v21 = qword_100BCE940;
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(__p) = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to start Classic SMP Pairing, waiting for other side to initiate", &__p, 2u);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
            {
              sub_100863530();
            }

            sub_100246BB4(v8, 0);
          }
        }
      }

      else if (sub_1000E69B8(a1 + 344, a2) || (sub_1000295DC(a2) & 1) == 0)
      {
        *(a2 + 1177) = 1;
      }
    }

    if (SHIBYTE(v52[0]) < 0)
    {
      operator delete(v51[1]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[1]);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[1]);
    }

    nullsub_21();
  }

  v22 = sub_10000F034(a1, a2);
  return (*(*v22 + 672))(v22, a3, 1);
}