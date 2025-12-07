void sub_10054CC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  sub_10000CEDC(va, v6);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10054CCA8(uint64_t a1, unint64_t *a2)
{
  v3 = a1;
  v39[0] = 0;
  v39[1] = 0;
  sub_100007F88(v39, a1);
  v4 = *(v3 + 592);
  v5 = (v3 + 600);
  if (v4 == (v3 + 600))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v25 = v3 + 600;
    v26 = v3;
    do
    {
      v38 = 0uLL;
      v38 = *v4[4];
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v7 = sub_10053BFB4(v3, &v38, 4u, &v35);
      v8 = v35;
      if (v7)
      {
        v9 = v36;
        if (v35 != v36)
        {
          do
          {
            v10 = *(v8 + 1);
            if ((v10 & 1) == 0 && *(v8 + 1))
            {
              v11 = 0;
              v12 = (v8[1] + 8);
              do
              {
                v13 = *v12;
                v12 += 8;
                if (v13 == 3)
                {
                  v33[0] = 0;
                  v33[1] = 0;
                  v34 = 0;
                  sub_100007E30(v33, "RFCOMM ServiceClass: ");
                  memset(&v32, 0, sizeof(v32));
                  if (v38.n128_u8[0] == 3)
                  {
                    if (v38.n128_u16[1] > 4u)
                    {
                      v14 = sub_100302240(v38.n128_u64[1]);
                    }

                    else
                    {
                      v14 = sub_10030253C(v38.n128_u32[2]);
                    }

                    std::string::assign(&v32, v14);
                  }

                  v29 = 0;
                  v30 = 0;
                  v31 = 0;
                  sub_100007E30(&v29, "\n");
                  __p[0] = 0;
                  __p[1] = 0;
                  v28 = 0;
                  sub_10053B318(v33, &v32.__r_.__value_.__l.__data_, &v40);
                  if (v31 >= 0)
                  {
                    v15 = &v29;
                  }

                  else
                  {
                    v15 = v29;
                  }

                  if (v31 >= 0)
                  {
                    v16 = HIBYTE(v31);
                  }

                  else
                  {
                    v16 = v30;
                  }

                  v17 = std::string::append(&v40, v15, v16);
                  v18 = *&v17->__r_.__value_.__l.__data_;
                  v28 = v17->__r_.__value_.__r.__words[2];
                  *__p = v18;
                  v17->__r_.__value_.__l.__size_ = 0;
                  v17->__r_.__value_.__r.__words[2] = 0;
                  v17->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v40.__r_.__value_.__l.__data_);
                  }

                  v19 = qword_100BCE8D8;
                  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = __p;
                    if (v28 < 0)
                    {
                      v20 = __p[0];
                    }

                    LODWORD(v40.__r_.__value_.__l.__data_) = 136315138;
                    *(v40.__r_.__value_.__r.__words + 4) = v20;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s", &v40, 0xCu);
                  }

                  sub_10054D098(a2, &v38);
                  if (SHIBYTE(v28) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v31) < 0)
                  {
                    operator delete(v29);
                  }

                  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v32.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v34) < 0)
                  {
                    operator delete(v33[0]);
                  }

                  v6 = (v6 + 1);
                }

                v11 += 2;
              }

              while (v11 < v10);
              v9 = v36;
            }

            v8 += 2;
          }

          while (v8 != v9);
          v8 = v35;
        }

        v5 = v25;
        v3 = v26;
        if (v8 != v9)
        {
          do
          {
            v33[0] = 0;
            v33[1] = 0;
            *v33 = *v8;
            sub_10037D4F4(v33);
            v8 += 2;
          }

          while (v8 != v36);
          v8 = v35;
        }
      }

      if (v8)
      {
        v36 = v8;
        operator delete(v8);
      }

      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v23 = *v22 == v4;
          v4 = v22;
        }

        while (!v23);
      }

      v4 = v22;
    }

    while (v22 != v5);
  }

  sub_1000088CC(v39);
  return v6;
}

__n128 sub_10054D098(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100551A0C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

id sub_10054D124(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = [*(a1 + 1368) copy];
  sub_1000088CC(v4);

  return v2;
}

id sub_10054D198(uint64_t a1, int a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 1368);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"kCBMsgArgPSM", v12}];
        v9 = v8;
        if (v8 && [v8 intValue] == a2)
        {
          v10 = [v7 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];

          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

id sub_10054D334(uint64_t a1, int a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 1368);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"kCBMsgArgRFCOMMChannelID", v12}];
        v9 = v8;
        if (v8 && [v8 intValue] == a2)
        {
          v10 = [v7 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];

          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

uint64_t sub_10054D4E0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 368);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054D528(uint64_t a1, _DWORD *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = sub_100007F88(v8, a1);
  *(a1 + 368) = *a2;
  v6 = sub_1000BE4B4(v4, v5);
  (*(*v6 + 376))(v6, a1, a1 + 368);
  return sub_1000088CC(v8);
}

uint64_t sub_10054D5C0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v5 = 0;
  sub_100016250(&v5);
  v2 = SWORD2(v5);
  *(a1 + 376) = v5;
  *(a1 + 384) = v2;
  return sub_1000088CC(v4);
}

void sub_10054D618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10054D62C(uint64_t a1, int a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v4 = *(a1 + 384) + (1000 * a2);
  v8[0] = v4 / 0x3E8 + *(a1 + 376);
  v8[1] = v4 % 0x3E8;
  v5 = sub_100306E3C(v8);
  sub_1000088CC(v7);
  return !v5;
}

void sub_10054D6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054D6D8(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1434) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_10054D720(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  ++*(a1 + 1439);
  return sub_1000088CC(v3);
}

uint64_t sub_10054D76C(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1);
  *(a1 + 1439) = 0;
  return sub_1000088CC(v3);
}

uint64_t sub_10054D7B0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1439);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054D7F8(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = 0;
  v2 = sub_100007F88(v14, a1);
  v4 = *(a1 + 1440);
  if (v4 || (v5 = sub_100017F4C(v2, v3), v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8)), *(a1 + 1440) = v6, handler[0] = _NSConcreteStackBlock, handler[1] = 3221225472, handler[2] = sub_10054D9E8, handler[3] = &unk_100ADF8F8, handler[4] = a1, dispatch_source_set_event_handler(v6, handler), (v4 = *(a1 + 1440)) != 0))
  {
    ++*(a1 + 1464);
    ++*(a1 + 1448);
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 67109378;
      v16 = 300;
      v17 = 2082;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Start Scan Core Page Scan backoff timer of %d seconds for device %{public}s", buf, 0x12u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      v4 = *(a1 + 1440);
    }

    v9 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v4, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(a1 + 1440));
  }

  return sub_1000088CC(v14);
}

void sub_10054D9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054D9E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(v1 + 1472);
  return sub_10054D9FC(v1);
}

uint64_t sub_10054D9FC(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, a1);
  *(a1 + 1439) = 0;
  sub_1000088CC(__p);
  v2 = *(a1 + 1440);
  if (v2)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping Scan Core Page Scan backoff timer for device %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(a1 + 1440);
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 1440));
    *(a1 + 1440) = 0;
  }

  return sub_1000088CC(v8);
}

void sub_10054DB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10054DB4C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1440) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054DB9C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  if (qword_100B50910 != -1)
  {
    sub_1008406F4();
  }

  sub_1005BBEEC(off_100B50908, v2);
  return sub_1000088CC(v4);
}

uint64_t sub_10054DC18(uint64_t a1, unsigned int a2)
{
  v16[0] = 0;
  v16[1] = 0;
  v4 = sub_100007F88(v16, a1);
  v6 = *(a1 + 1488);
  if (v6 || (v7 = sub_100017F4C(v4, v5), v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v7 + 8)), *(a1 + 1488) = v8, handler[0] = _NSConcreteStackBlock, handler[1] = 3221225472, handler[2] = sub_10054DDE4, handler[3] = &unk_100ADF8F8, handler[4] = a1, dispatch_source_set_event_handler(v8, handler), (v6 = *(a1 + 1488)) != 0))
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v14 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting connection request watchdog timer for %{public}s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = *(a1 + 1488);
    }

    v11 = dispatch_time(0, 1000000000 * a2);
    dispatch_source_set_timer(v6, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(a1 + 1488));
  }

  return sub_1000088CC(v16);
}

void sub_10054DDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054DDEC(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v3 = v7 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stalled connection request for %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  dispatch_release(*(a1 + 1488));
  *(a1 + 1488) = 0;
  sub_10000801C(v8);
  if (qword_100B50AC0 != -1)
  {
    sub_10084123C();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10054E14C;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_100592E70(off_100B50AB8, v5);
  return sub_1000088CC(v8);
}

void sub_10054DF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054DF84(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v2 = *(a1 + 1488);
  if (v2)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a1, __p);
      if (v7 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping connection request watchdog timer for %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(a1 + 1488);
    }

    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 1488));
    *(a1 + 1488) = 0;
  }

  return sub_1000088CC(v8);
}

void sub_10054E098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10054E0B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1488) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054E104(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1528);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054E14C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B50AC0 != -1)
  {
    sub_100841264();
  }

  v2 = off_100B50AB8;

  return sub_100590DE8(v2, v1);
}

uint64_t sub_10054E1A0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1496);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054E1E8(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1497) = a2;
  return sub_1000088CC(v5);
}

uint64_t sub_10054E230(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1497);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054E278(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a1, __p);
    v3 = v6 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting device %{public}s ", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  if (*(a1 + 263) < 0)
  {
    **(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  else
  {
    *(a1 + 240) = 0;
    *(a1 + 263) = 0;
  }

  if (*(a1 + 303) < 0)
  {
    **(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  else
  {
    *(a1 + 280) = 0;
    *(a1 + 303) = 0;
  }

  *(a1 + 312) = 0u;
  sub_10000CEDC(a1 + 328, *(a1 + 336));
  *(a1 + 328) = a1 + 336;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 760) = *(a1 + 752);
  LODWORD(__p[0]) = -1;
  sub_10036F480((a1 + 752), __p);
  sub_100536730(a1);
  *(a1 + 650) = 16842752;
  *(a1 + 654) = 0;
  *(a1 + 751) = 0;
  *(a1 + 1380) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1388) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1396) = 0;
  *(a1 + 1420) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1415) = 0;
  sub_10054B440(a1);
  sub_10053F420(a1);
  sub_10053CB68(a1);
  *(a1 + 796) = 0xFFFF00000000;
  *(a1 + 804) = 1;
  *(a1 + 808) = xmmword_1008A9E90;
  *(a1 + 828) = xmmword_1008A9E80;
  *(a1 + 844) = 0;
  *(a1 + 848) = 2;
  *(a1 + 850) = 0;
  *(a1 + 852) = 80;
  sub_100548B84(a1);
  *(a1 + 864) = 0;
  *(a1 + 880) = 0;
  *(a1 + 876) = 0;
  *(a1 + 868) = 0;
  *(a1 + 892) = 0u;
  *(a1 + 908) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 940) = xmmword_1008A49A0;
  *(a1 + 956) = 0;
  sub_1000E3B80((a1 + 1232));
  *(a1 + 1498) = 0;
  *(a1 + 424) = 0;
  *(a1 + 1180) = -1082130432;
  *(a1 + 1192) = *(a1 + 1184);
  *(a1 + 1208) = 0;
  *(a1 + 1049) = 1;
  *(a1 + 1051) = 0;
  *(a1 + 1053) = -1;
  *(a1 + 1056) = 0;
  *(a1 + 1428) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1060) = 0;
  *(a1 + 660) = 1;
  *(a1 + 649) = 1;
  *(a1 + 1176) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1020) = 0;
  *(a1 + 1028) = 0;
  *(a1 + 1032) = 0;
  *(a1 + 748) = 0;
  *(a1 + 750) = 0;
  *(a1 + 1433) = 0;
  *(a1 + 704) = 0;
  *(a1 + 694) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 1036) = 0;
  *(a1 + 1044) = 0;
  *(a1 + 1212) = 0u;
  sub_10054D9FC(a1);
  *(a1 + 1448) = 0;
  *(a1 + 1499) = 0;
  *(a1 + 1436) = 0;
  *(a1 + 1572) = 0;
  *(a1 + 576) = 0;
  *(a1 + 1484) = 0;
  *(a1 + 1452) = 0u;
  *(a1 + 1468) = 0u;
  if (*(a1 + 1567) < 0)
  {
    **(a1 + 1544) = 0;
    *(a1 + 1552) = 0;
  }

  else
  {
    *(a1 + 1544) = 0;
    *(a1 + 1567) = 0;
  }

  return sub_1000088CC(v7);
}

void sub_10054E5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054E600(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 240);
    if (*(a1 + 263) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: %s", buf, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8((a1 + 128), buf);
    if ((buf[23] & 0x80u) == 0)
    {
      v4 = buf;
    }

    else
    {
      v4 = *buf;
    }

    *v77 = 136446210;
    *&v77[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Address: %{public}s", v77, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v2 = qword_100BCE8D8;
  }

  v5 = a1;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_10056CB30((a1 + 176));
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Type: %s", buf, 0xCu);
    v2 = qword_100BCE8D8;
    v5 = a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (v5 + 200);
    if (*(v5 + 223) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Default name: %s", buf, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v5 + 152);
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    RSSI: %d", buf, 8u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v5 + 1176);
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: \tderivedFromLE: %d", buf, 8u);
    v2 = qword_100BCE8D8;
  }

  if (*(v5 + 512) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_10051A3CC((v5 + 512));
    *buf = 136446210;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Accessory state: %{public}s", buf, 0xCu);
    v2 = qword_100BCE8D8;
    v5 = a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:    Supported services:", buf, 2u);
  }

  v11 = *(v5 + 328);
  v12 = (v5 + 336);
  if (v11 != (v5 + 336))
  {
    do
    {
      v13 = *(v11 + 8);
      *v77 = *(v11 + 7);
      if (v13 >= 2)
      {
        v14 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_1005948F8(v77);
          if (v13 == 3)
          {
            v16 = "- Likely";
          }

          else
          {
            v16 = "";
          }

          *buf = 136446466;
          *&buf[4] = v15;
          if (v13 == 2)
          {
            v16 = "- Unlikely";
          }

          *&buf[12] = 2082;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "statedump:       %{public}s %{public}s", buf, 0x16u);
        }
      }

      v17 = v11[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v11[2];
          v19 = *v18 == v11;
          v11 = v18;
        }

        while (!v19);
      }

      v11 = v18;
    }

    while (v18 != v12);
  }

  v20 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = a1;
    if (*(a1 + 650))
    {
      v22 = "Yes";
    }

    else
    {
      v22 = "No";
    }

    *buf = 136446210;
    *&buf[4] = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:    Supports phonebook sync: %{public}s", buf, 0xCu);
    v20 = qword_100BCE8D8;
  }

  else
  {
    v21 = a1;
  }

  if (*(v21 + 650) == 1)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 651))
      {
        v23 = "Yes";
      }

      else
      {
        v23 = "No";
      }

      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:       Sync enabled: %{public}s", buf, 0xCu);
      v20 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 652))
      {
        v24 = "Yes";
      }

      else
      {
        v24 = "No";
      }

      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:       Sync recents: %{public}s", buf, 0xCu);
      v20 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 653))
      {
        v25 = "Yes";
      }

      else
      {
        v25 = "No";
      }

      *buf = 136446210;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:       Sync favorites: %{public}s", buf, 0xCu);
      v20 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 654))
      {
        v26 = "Yes";
      }

      else
      {
        v26 = "No";
      }

      *buf = 136446210;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:       Sync user permission: %{public}s", buf, 0xCu);
    }

    *&v172 = 0;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    *__p = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v157 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_100007AD0(buf);
    for (i = *(a1 + 752); i != *(a1 + 760); i += 4)
    {
      v28 = std::ostream::operator<<();
      sub_100007774(v28, " ", 1);
    }

    v29 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      std::stringbuf::str();
      v30 = v77[23] >= 0 ? v77 : *v77;
      *v175 = 136315138;
      v176 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump:       Sync group ID(s): %s", v175, 0xCu);
      if ((v77[23] & 0x80000000) != 0)
      {
        operator delete(*v77);
      }
    }

    *&buf[16] = v31;
    if (SHIBYTE(v161) < 0)
    {
      operator delete(__p[1]);
    }

    std::locale::~locale(&v157);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v20 = qword_100BCE8D8;
    v21 = a1;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v21 + 655))
    {
      v32 = "Yes";
    }

    else
    {
      v32 = "No";
    }

    *buf = 136446210;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump: \tAllow sco for turn by turn enabled: %{public}s", buf, 0xCu);
    v20 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    sub_100007E30(buf, off_100AFC518[*(v21 + 1572)]);
    if ((buf[23] & 0x80u) == 0)
    {
      v33 = buf;
    }

    else
    {
      v33 = *buf;
    }

    *v77 = 136446210;
    *&v77[4] = v33;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump: \tCarPlay type: %{public}s", v77, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v20 = qword_100BCE8D8;
    v21 = a1;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v21 + 1045))
    {
      v34 = "Yes";
    }

    else
    {
      v34 = "No";
    }

    *buf = 136446210;
    *&buf[4] = v34;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump: \tTemporary Managed Pairing Mode: %{public}s", buf, 0xCu);
    v20 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v21 + 1016))
    {
      v35 = "is";
    }

    else
    {
      v35 = "is not";
    }

    *buf = 136315138;
    *&buf[4] = v35;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "statedump:  Device %s guest device", buf, 0xCu);
  }

  if (*(v21 + 1016) == 1)
  {
    v36 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(v21 + 1020);
      *buf = 67109120;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "statedump:  Guest device last seen %d", buf, 8u);
    }
  }

  sub_10053AD54(v21);
  v40 = sub_1000BE4B4(v38, v39);
  result = (*(*v40 + 816))(v40, a1);
  if (*(a1 + 748) == 1)
  {
    *v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    *__p = 0u;
    v157 = 0u;
    v158 = 0u;
    memset(buf, 0, sizeof(buf));
    v43 = sub_1000BE4B4(result, v42);
    if ((*(*v43 + 80))(v43, a1, buf, 80))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100841278();
      }
    }

    else if (HIDWORD(v158))
    {
      v44 = sub_10000E92C();
      if ((*(*v44 + 160))(v44))
      {
        v45 = sub_1000DEEA4(a1, v77);
        if (SBYTE7(v174) < 0)
        {
          operator delete(v173[0]);
        }

        *v173 = *v77;
        *&v174 = *&v77[16];
      }

      else
      {
        v47 = qword_100BCE8D8;
        v45 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
        if (v45)
        {
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Identification - clearing friendly name in statedump. Release version with no profile installed.", v77, 2u);
        }
      }

      v48 = sub_1000BE4B4(v45, v46);
      v49 = (*(*v48 + 96))(v48, a1);
      v51 = sub_1000BE4B4(v49, v50);
      v52 = (*(*v51 + 112))(v51, a1, &v164 + 8);
      v54 = sub_1000BE4B4(v52, v53);
      v55 = (*(*v54 + 128))(v54, a1, &v161 + 8);
      v57 = sub_1000BE4B4(v55, v56);
      v58 = (*(*v57 + 144))(v57, a1, &v163);
      v60 = sub_1000BE4B4(v58, v59);
      v61 = (*(*v60 + 160))(v60, a1, &v166);
      v63 = sub_1000BE4B4(v61, v62);
      v64 = (*(*v63 + 176))(v63, a1, &v167 + 8);
      v66 = sub_1000BE4B4(v64, v65);
      (*(*v66 + 192))(v66, a1, &v169);
      v67 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v77 = 68157954;
        *&v77[4] = 152;
        *&v77[8] = 2098;
        *&v77[10] = buf;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Identification - raw dump {%{public}.*P}", v77, 0x12u);
        v67 = qword_100BCE8D8;
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        if ((SBYTE7(v174) & 0x80u) == 0)
        {
          v68 = v173;
        }

        else
        {
          v68 = v173[0];
        }

        if ((SBYTE7(v161) & 0x80u) == 0)
        {
          v69 = __p;
        }

        else
        {
          v69 = __p[0];
        }

        if (v165 >= 0)
        {
          v70 = &v164 + 8;
        }

        else
        {
          v70 = *(&v164 + 1);
        }

        v71 = *(&v161 + 1);
        if (v162 >= 0)
        {
          v71 = &v161 + 8;
        }

        if ((SBYTE7(v164) & 0x80u) == 0)
        {
          v72 = &v163;
        }

        else
        {
          v72 = v163;
        }

        if ((SBYTE7(v167) & 0x80u) == 0)
        {
          v73 = &v166;
        }

        else
        {
          v73 = v166;
        }

        if (v168 >= 0)
        {
          v74 = &v167 + 8;
        }

        else
        {
          v74 = *(&v167 + 1);
        }

        v75 = v169;
        if ((SBYTE7(v170) & 0x80u) == 0)
        {
          v75 = &v169;
        }

        *&v77[4] = 20;
        *&v77[10] = a1 + 708;
        *&v77[20] = 3;
        v79 = buf;
        v81 = v68;
        v83 = *&buf[4];
        v85 = buf[8];
        v87 = *&buf[6];
        v91 = &v159;
        *&v77[18] = 1042;
        v88 = 1042;
        v92 = 1042;
        v89 = 8;
        v93 = 8;
        *&v77[8] = 2098;
        v78 = 2098;
        v90 = 2098;
        v94 = 2098;
        v95 = &v159 + 8;
        v111 = *&buf[22];
        v115 = *&buf[26];
        v119 = *&buf[30];
        v123 = WORD1(v157);
        v127 = WORD3(v157);
        v131 = HIDWORD(v157);
        v135 = DWORD1(v158);
        v139 = buf[3];
        v141 = v69;
        v143 = v70;
        v147 = v72;
        v149 = v73;
        v151 = v74;
        v155 = BYTE8(v174);
        v97 = HIDWORD(v158);
        v99 = *&buf[10];
        v101 = *&buf[12];
        v103 = *&buf[14];
        v105 = *&buf[16];
        v107 = *&buf[18];
        v109 = *&buf[20];
        v113 = *&buf[24];
        v117 = *&buf[28];
        v121 = v157;
        v125 = WORD2(v157);
        v129 = DWORD2(v157);
        v133 = v158;
        v137 = DWORD2(v158);
        v145 = v71;
        v80 = 2082;
        v140 = 2082;
        v142 = 2082;
        v144 = 2082;
        v146 = 2082;
        v148 = 2082;
        v150 = 2082;
        v152 = 2082;
        v153 = v75;
        v82 = 1024;
        v84 = 1024;
        v86 = 1024;
        v96 = 1024;
        v98 = 1024;
        v100 = 1024;
        v102 = 1024;
        v104 = 1024;
        v106 = 1024;
        v108 = 1024;
        v110 = 1024;
        v112 = 1024;
        v114 = 1024;
        v116 = 1024;
        v118 = 1024;
        v120 = 1024;
        v122 = 1024;
        v124 = 1024;
        v126 = 1024;
        v128 = 1024;
        v130 = 1024;
        v132 = 1024;
        v134 = 1024;
        v136 = 1024;
        v138 = 1024;
        v154 = 1024;
        *v77 = 68299266;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "statedump: Identification - metric dump {%{public}.20P, %{public}.3P, %{public}s, 0x%x, 0x%x, 0x%x, %{public}.8P, %{public}.8P, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, 0x%x, %d, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %{public}s, %d}", v77, 0x12Eu);
      }
    }

    return sub_1000E3D14(buf);
  }

  return result;
}

void sub_10054F734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  sub_1000E3D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10054F768(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  LODWORD(a1) = sub_10024132C(a1 + 128);
  sub_10002249C(&v3);
  return a1 ^ 1;
}

uint64_t sub_10054F7C8(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    if (*(result + 1568) != a2)
    {
      v10[0] = 0;
      v10[1] = 0;
      v4 = sub_100007F88(v10, result);
      *(v3 + 1568) = v2;
      sub_10000801C(v4);
      if (qword_100B508F0 != -1)
      {
        sub_100840690();
      }

      v5 = sub_10056B15C(off_100B508E8, v3, 19);
      v7 = sub_100017F4C(v5, v6);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10054F8BC;
      v8[3] = &unk_100AEB940;
      v8[4] = v3;
      v9 = v2;
      sub_10000CA94(v7, v8);
      return sub_1000088CC(v10);
    }
  }

  return result;
}

uint64_t sub_10054F8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_1000154A8(a1, a2) + 72);

  return v2();
}

uint64_t sub_10054F920(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (*(a1 + 1125) == 1)
    {
      return (*(a1 + 1158) >> 5) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10054F974(_DWORD *a1)
{
  v1 = a1[282];
  if (v1 == 2)
  {
    v2 = 1452;
  }

  else
  {
    if (v1 != 1)
    {
      return 0;
    }

    v2 = 76;
  }

  if (a1[283] == v2)
  {
    return a1[284] == 8223;
  }

  return 0;
}

uint64_t sub_10054F9BC(uint64_t a1, int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v4 = sub_100007F88(v11, a1);
  if (*(a1 + 1435) != a2)
  {
    *(a1 + 1435) = a2;
    sub_10000801C(v4);
    v7 = sub_100017F4C(v5, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10054FA80;
    v9[3] = &unk_100AE15D8;
    v9[4] = a1;
    v10 = a2;
    sub_10000CA94(v7, v9);
  }

  return sub_1000088CC(v11);
}

uint64_t sub_10054FA80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B508F0 != -1)
  {
    sub_1000E2FD0();
  }

  v2 = sub_10056B15C(off_100B508E8, v1, 21);
  v4 = *(*sub_1000154A8(v2, v3) + 80);

  return v4();
}

uint64_t sub_10054FB14(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  if (*(a1 + 1437) != a2)
  {
    *(a1 + 1437) = a2;
    sub_10000801C(v5);
    if (qword_100B508F0 != -1)
    {
      sub_100840690();
    }

    sub_10056B15C(off_100B508E8, a1, 20);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_10054FBB0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1576);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054FBF8(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1576) = a2;
  sub_10000801C(v5);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  sub_10056B15C(off_100B508E8, a1, 23);
  return sub_1000088CC(v5);
}

uint64_t sub_10054FC88(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1);
  v2 = *(a1 + 1580);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10054FCD0(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1580) = a2;
  sub_10000801C(v5);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  sub_10056B15C(off_100B508E8, a1, 22);
  return sub_1000088CC(v5);
}

uint64_t sub_10054FD60(uint64_t a1)
{
  v17 = 0;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  *__p = 0u;
  v11 = 0u;
  *v12 = 0u;
  v9 = 0u;
  *v10 = 0u;
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
  LOBYTE(__p[0]) = 0;
  memset(v15, 0, 19);
  __p[1] = 0;
  BYTE8(v15[1]) = 1;
  *(&v15[1] + 14) = 0;
  *(&v15[1] + 9) = 0;
  v16 = 0uLL;
  *(&v15[2] + 1) = 0;
  LOBYTE(v17) = 0;
  *(&v17 + 2) = 0;
  v2 = sub_100536A18(a1, &v9);
  v3 = BYTE6(v17);
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1);
  v4 = *(a1 + 176);
  sub_1000088CC(v8);
  if (SHIBYTE(v15[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  v6 = v4 == 17 || v4 == 22;
  nullsub_21();
  return v6 & (v2 & v3 ^ 1u);
}

_DWORD *sub_10054FED8(_DWORD *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a2 = result[273];
  *a3 = result[274];
  *a4 = result[275];
  *a5 = result[276];
  return result;
}

__n128 sub_10054FEFC(uint64_t a1)
{
  *(a1 + 1120) = *(a1 + 1156);
  result = *(a1 + 1124);
  v2 = *(a1 + 1140);
  *(a1 + 1088) = result;
  *(a1 + 1104) = v2;
  return result;
}

uint64_t sub_10054FF18(uint64_t a1, int a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1);
  v4 = qword_100BCE8D8;
  v5 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    sub_100007E30(__p, off_100AFC518[a2]);
    v7 = v11 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Set CarPlayType : %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 1572) != a2)
  {
    *(a1 + 1572) = a2;
  }

  v8 = sub_1000BE4B4(v5, v6);
  (*(*v8 + 1520))(v8, a1, *(a1 + 1572));
  return sub_1000088CC(v12);
}

void sub_100550060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100550080(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "blockIncomingConnections %d", v8, 8u);
  }

  LOBYTE(v8[0]) = 0;
  sub_1000216B4(v8);
  if (a2)
  {
    v5 = sub_10023E518((a1 + 128));
  }

  else
  {
    v5 = sub_10023E634(a1 + 128);
  }

  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008412B4();
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  sub_10002249C(v8);
  return v6;
}

void sub_10055018C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005501A8(uint64_t a1, char a2, int a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1);
  *(a1 + 1570) = a2;
  if (a3)
  {
    sub_100550250(a1);
  }

  sub_10000801C(v7);
  if (qword_100B508F0 != -1)
  {
    sub_100840690();
  }

  sub_10056B15C(off_100B508E8, a1, 25);
  return sub_1000088CC(v7);
}

void sub_100550250(uint64_t a1)
{
  v11 = time(0);
  sub_100551C48((a1 + 1584), &v11);
  if (*(a1 + 1624))
  {
    while (1)
    {
      v2 = difftime(v11, *(*(*(a1 + 1592) + ((*(a1 + 1616) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 1616) & 0x1FFLL)));
      v3 = *(a1 + 1624);
      if (v2 < 3600.0)
      {
        break;
      }

      v4 = *(a1 + 1616);
      *(a1 + 1624) = v3 - 1;
      *(a1 + 1616) = v4 + 1;
      sub_100374F94(a1 + 1584, 1);
      if (!*(a1 + 1624))
      {
        return;
      }
    }

    if (v3 >= 0xB)
    {
      v5 = *(a1 + 1124);
      v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
      if (v5 == 1)
      {
        if (v6)
        {
          sub_100841394(a1);
        }
      }

      else if (v6)
      {
        sub_1008412F0(a1);
      }

      v7 = *(a1 + 1584);
      *(a1 + 1584) = 0u;
      v8 = *(a1 + 1600);
      *(a1 + 1600) = 0u;
      v10[0] = v7;
      v10[1] = v8;
      v9 = *(a1 + 1616);
      *(a1 + 1616) = 0u;
      v10[2] = v9;
      sub_1003617DC(v10);
    }
  }
}

uint64_t sub_100550394(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1);
  *(a1 + 1179) = a2;
  return sub_1000088CC(v5);
}

void sub_1005503DC(void ***a1)
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
        v4 -= 168;
        sub_100550FBC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_1005506E8(void *result, void *a2, void *a3)
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
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 28) = *(v9 + 28);
          sub_100083B64(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
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

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_10055084C(v5, (a2 + 28));
  }

  return result;
}

void sub_100550838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100550954(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1000C9104(v6, v10);
    }

    sub_1000C7698();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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

void sub_100550BF0(_Unwind_Exception *a1)
{
  v4 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1003C95E8(v2, *(v1 + 16));

  operator delete();
}

void *sub_100550C98(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100550CF0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100550CF0(void *result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100550D78(v5, (v5 + 8), v4 + 7, v4 + 7);
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

void *sub_100550D78(uint64_t **a1, uint64_t *a2, unsigned int *a3, void *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_100550E14(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_100550E14(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
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

void sub_100550FBC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  nullsub_21();
}

uint64_t sub_100551020(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1000C7698();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100551298(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_100551168(168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = a1[1];
  v8 = 168 * v2 + *a1 - v7;
  sub_1005512F4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100551414(&v13);
  return v12;
}

void sub_100551154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100551414(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100551168(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1006E5F04((a1 + 1), (a2 + 1));
  v4 = *(a2 + 18);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 18) = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100008904((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v6;
  if (*(a2 + 79) < 0)
  {
    sub_100008904((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v7 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v7;
  }

  *(a1 + 80) = *(a2 + 80);
  if (*(a2 + 111) < 0)
  {
    sub_100008904((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
  }

  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 112) = v9;
  return a1;
}

void sub_100551254(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  nullsub_21();
  _Unwind_Resume(a1);
}

void sub_100551298(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1005512F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2 + 1;
    v8 = (a4 + 1);
    do
    {
      v8[-1].n128_u8[15] = *(v7 - 1);
      sub_1006E5F04(v8, v7);
      v9 = *(v7 + 17);
      *(v10 + 19) = *(v7 + 19);
      *(v10 + 17) = v9;
      v11 = *(v7 + 23);
      *(v10 + 39) = *(v7 + 39);
      *(v10 + 23) = v11;
      *(v7 + 23) = 0;
      *(v7 + 31) = 0;
      *(v7 + 39) = 0;
      v12 = *(v7 + 47);
      *(v10 + 51) = *(v7 + 51);
      *(v10 + 47) = v12;
      v13 = *(v7 + 55);
      *(v10 + 71) = *(v7 + 71);
      *(v10 + 55) = v13;
      *(v7 + 71) = 0;
      *(v7 + 63) = 0;
      *(v7 + 55) = 0;
      *(v10 + 79) = *(v7 + 79);
      v14 = *(v7 + 87);
      *(v10 + 103) = *(v7 + 103);
      *(v10 + 87) = v14;
      *(v7 + 103) = 0;
      *(v7 + 95) = 0;
      *(v7 + 87) = 0;
      v15 = *(v7 + 111);
      v16 = *(v7 + 127);
      v17 = *(v7 + 143);
      *(v10 + 158) = *(v7 + 158);
      *(v10 + 143) = v17;
      *(v10 + 127) = v16;
      *(v10 + 111) = v15;
      v18 = v7 + 167;
      v7 += 168;
      v8 = (v10 + 168);
    }

    while (v18 != a3);
    while (v5 != a3)
    {
      sub_100550FBC(a1, v5);
      v5 += 168;
    }
  }
}

void **sub_100551414(void **a1)
{
  sub_100551448(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100551448(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 168;
    sub_100550FBC(v4, i - 168);
  }
}

void sub_100551490(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t **sub_100551540(uint64_t **a1, unsigned __int16 *a2, uint64_t a3)
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
      sub_1005515C0(a1, v4, a2, a2);
      ++a2;
      v6 -= 2;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1005515C0(uint64_t **a1, uint64_t *a2, unsigned __int16 *a3, _WORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_10055165C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_10055165C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
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

uint64_t *sub_10055193C(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    sub_10035EA68(a1, a3);
  }

  return a1;
}

void sub_100551A0C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_100008108(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1004F3500(a1, &v9);
}

void sub_100551B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100551C48(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    sub_100551CD4(result);
    v5 = result[1];
    v7 = result[5] + result[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++result[5];
}

void sub_100551CD4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1003626B8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100362290(a1, &v9);
}

void sub_100551E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10055239C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = Communicator;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t sub_1005524FC(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_1000D8E64(a1 + 24);

  return a1;
}

id sub_100553680(uint64_t a1)
{
  result = [*(a1 + 32) delegate];
  if (result)
  {
    v3 = qword_100BCE948;
    if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received 'call status changed' notification", v4, 2u);
    }

    [*(a1 + 32) _updateCalls];
    return (**[*(a1 + 32) delegate])();
  }

  return result;
}

void sub_100554EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  a16 = &a22;
  sub_1000D6BD4(&a16);
  _Unwind_Resume(a1);
}

void sub_1005554BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000D6BD4(&__p);
  sub_1005524FC(&a22);

  a22 = v23 - 96;
  sub_1000D6BD4(&a22);
  _Unwind_Resume(a1);
}

void sub_100555678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15, void **a16)
{
  sub_1000D6BD4(&a15);

  a16 = &a12;
  sub_1000D6BD4(&a16);
  _Unwind_Resume(a1);
}

void sub_100555730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000D6BD4(&a12);
  _Unwind_Resume(a1);
}

void sub_100555818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 24) = &a10;
  sub_1000D6BD4((v13 - 24));
  a10 = &a13;
  sub_1000D6BD4(&a10);
  _Unwind_Resume(a1);
}

void sub_100555A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, char a15)
{
  sub_1000D6BD4(&a13);
  a13 = &a15;
  sub_1000D6BD4(&a13);

  _Unwind_Resume(a1);
}

void sub_100555B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 24) = &a10;
  sub_1000D6BD4((v13 - 24));
  a10 = &a13;
  sub_1000D6BD4(&a10);
  _Unwind_Resume(a1);
}

void sub_100555D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005560D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000D8E64(va);

  _Unwind_Resume(a1);
}

void *sub_100556718(void *a1, uint64_t a2)
{
  *a1 = off_100AFC568;
  a1[1] = 0;
  v3 = [[Communicator alloc] initWithDelegate:a2];
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t sub_100556794(uint64_t a1)
{
  *a1 = off_100AFC568;
  [*(a1 + 8) invalidate];
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;

  return a1;
}

void sub_100556808(uint64_t a1)
{
  sub_100556794(a1);

  operator delete();
}

id sub_100556848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v4 = [v3 answerIncomingCall:__p];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

id sub_10055690C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v4 = [v3 releaseActiveCalls:__p];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

id sub_1005569B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v4 = [v3 holdActiveCalls:__p];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

id sub_100556A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v9 = *(a3 + 16);
  }

  v6 = [v5 dialNumber:a2 uid:__p];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

id sub_100556B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v7 = *(a2 + 16);
  }

  v4 = [v3 redialLastNumberWithUid:__p];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

id sub_100556C20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Communicator isScreening: %d", v9, 8u);
  }

  v7 = [*(a1 + 8) setScreeningCall:v5 isScreening:a3];

  return v7;
}

id sub_100556D18(uint64_t a1)
{
  v1 = [*(a1 + 8) getRegistrationStatus];

  return v1;
}

id sub_100556D7C(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v4 = [NSString stringWithUTF8String:a2];
  v5 = [v3 getCountryCodeForIdentifier:v4];

  return v5;
}

id sub_100556E20(uint64_t a1)
{
  v1 = [*(a1 + 8) getCountryCode];

  return v1;
}

id sub_100556E50(uint64_t a1)
{
  v1 = [*(a1 + 8) getCountryCodeIdentifer];

  return v1;
}

uint64_t sub_100556E98(uint64_t a1)
{
  *a1 = off_100AFC680;
  *(a1 + 8) = off_100AFC740;
  *(a1 + 16) = off_100AFC790;
  *(a1 + 24) = off_100AFC7C0;
  *(a1 + 32) = off_100AFC7E0;
  *(a1 + 40) = off_100AFC820;
  *(a1 + 48) = 0;
  sub_100044BBC((a1 + 104));
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 244) = 1;
  *(a1 + 49) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 95) = 0;
  return a1;
}

uint64_t sub_100556FB0(uint64_t a1)
{
  *a1 = off_100AFC680;
  *(a1 + 8) = off_100AFC740;
  *(a1 + 16) = off_100AFC790;
  *(a1 + 24) = off_100AFC7C0;
  *(a1 + 32) = off_100AFC7E0;
  *(a1 + 40) = off_100AFC820;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 104);
  return a1;
}

void sub_1005570CC(uint64_t a1)
{
  sub_100556FB0(a1);

  operator delete();
}

void sub_100557104(uint64_t a1)
{
  sub_100556FB0(a1 - 32);

  operator delete();
}

void sub_100557140(uint64_t a1, uint64_t a2)
{
  *(a1 + 168) = sub_100432918(a1, a2);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.bluetooth.mp.serial", v3);
  v5 = *(a1 + 208);
  *(a1 + 208) = v4;

  sub_1005572D8(a1);
  if (qword_100B50AA0 != -1)
  {
    sub_100841A84();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 16);
  if (sub_1000E25D8(v6, v7))
  {
    v8 = sub_100017E6C();
    sub_1005689CC(v8 + 344, a1 + 24);
    sub_100557884(a1);
    if (qword_100B50F88 != -1)
    {
      sub_100841A98();
    }

    sub_1006DC960(off_100B50F80, a1 + 32);
    (***(a1 + 168))(*(a1 + 168), a1 + 8);
    if (qword_100B508F0 != -1)
    {
      sub_100841AAC();
    }

    v9 = off_100B508E8 + 240;

    sub_1000F0D9C(v9, a1 + 40);
  }

  else
  {
    v10 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Magic Pairing cannot initialize, not supported on this platform.", v11, 2u);
    }
  }
}

uint64_t sub_1005572D8(uint64_t a1)
{
  v43[0] = 0;
  v43[1] = 0;
  v2 = sub_100007F88(v43, a1 + 104);
  v4 = sub_1000E2738(v2, v3);
  v5 = (*(*v4 + 136))(v4, a1 + 49, a1 + 65);
  v6 = qword_100BCE960;
  v7 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v9 = "not available";
    if (!v5)
    {
      v9 = "available";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloud master keys are %s in storage", &buf, 0xCu);
  }

  buf = 0uLL;
  v53 = 0;
  v10 = sub_1000E2738(v7, v8);
  v11 = (**v10)(v10, &buf);
  v12 = qword_100BCE960;
  v13 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *v44 = 67109376;
    *&v44[4] = v11;
    *&v44[8] = 2048;
    *&v44[10] = (*(&buf + 1) - buf) >> 3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "read device list result %d, pairedDev list size = %lu", v44, 0x12u);
  }

  for (i = buf; i != *(&buf + 1); ++i)
  {
    v16 = *i;
    if (*(*i + 128))
    {
LABEL_9:
      v51[0] = 0;
      v51[1] = 0;
      v50[0] = 0;
      v50[1] = 0;
      v49[0] = 0;
      v49[1] = 0;
      v48[0] = 0;
      v48[1] = 0;
      v40 = 0;
      v39 = 0;
      v17 = sub_1000E2738(v13, v14);
      v18 = (*(*v17 + 96))(v17, v16, 0, v49);
      if (!v18)
      {
        v23 = sub_1000E2738(v18, v19);
        v24 = (*(*v23 + 96))(v23, v16, 3, v50);
        v26 = sub_1000E2738(v24, v25);
        v27 = (*(*v26 + 96))(v26, v16, 2, v51);
        v29 = sub_1000E2738(v27, v28);
        v30 = (*(*v29 + 96))(v29, v16, 4, &v39);
        v32 = sub_1000E2738(v30, v31);
        (*(*v32 + 96))(v32, v16, 1, v48);
        operator new();
      }

      v20 = qword_100BCE960;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v16, v44);
        v33 = v44;
        if (v45 < 0)
        {
          v33 = *v44;
        }

        *v46 = 136446210;
        v47 = v33;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to read Magic Keys for %{public}s", v46, 0xCu);
        if (v45 < 0)
        {
          operator delete(*v44);
        }
      }
    }

    else
    {
      v21 = 0;
      while (v21 != 5)
      {
        if (*(v16 + 129 + v21++))
        {
          if ((v21 - 1) < 5)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      v13 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        sub_100841AE8(&v41, v42);
      }
    }
  }

  if (*(a1 + 184) != *(a1 + 176))
  {
    *(a1 + 240) = 1;
  }

  v34 = sub_1000E2738(v13, v14);
  v35 = (*(*v34 + 144))(v34, a1 + 81, a1 + 97);
  v36 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v37 = "not available";
    if (!v35)
    {
      v37 = "available";
    }

    *v44 = 136315138;
    *&v44[4] = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Cloud master IRK and address are %s in storage", v44, 0xCu);
  }

  sub_100566D78(a1);
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  return sub_1000088CC(v43);
}

void sub_10055781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100557884(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"SignInstatus", @"com.apple.BTServer");
  if (v2)
  {
    v3 = v2;
    if (CFEqual(v2, @"SignedIn"))
    {
      v4 = 1;
    }

    else
    {
      if (!CFEqual(v3, @"SignedOut"))
      {
LABEL_7:
        CFRelease(v3);
        goto LABEL_8;
      }

      v4 = 0;
    }

    *(a1 + 241) = v4;
    goto LABEL_7;
  }

LABEL_8:
  v5 = CFPreferencesCopyAppValue(@"CloudAccountID", @"com.apple.BTServer");
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (CStringPtr)
      {
        sub_100007E30(v12, CStringPtr);
        if (*(a1 + 239) < 0)
        {
          operator delete(*(a1 + 216));
        }

        *(a1 + 216) = *v12;
        *(a1 + 232) = *&v12[16];
      }

      goto LABEL_16;
    }
  }

  if ((*(a1 + 239) & 0x80000000) == 0)
  {
    *(a1 + 216) = 0;
    *(a1 + 239) = 0;
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  **(a1 + 216) = 0;
  *(a1 + 224) = 0;
  if (v6)
  {
LABEL_16:
    CFRelease(v6);
  }

LABEL_17:
  v9 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 241);
    v11 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v11 = *v11;
    }

    *v12 = 67109635;
    *&v12[4] = v10;
    *&v12[8] = 2160;
    *&v12[10] = 1752392040;
    *&v12[18] = 2081;
    *&v12[20] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump: MagicPairingManager: SignedIn: %d, loginID: %{private, mask.hash}s", v12, 0x1Cu);
  }
}

uint64_t sub_100557A64(void **a1, uint64_t a2)
{
  result = sub_1000E25D8(a1, a2);
  if (result)
  {
    v4 = sub_100017E6C();
    sub_100568C6C(v4 + 344, (a1 + 3));
    v8[0] = 0;
    v8[1] = 0;
    sub_100007F88(v8, (a1 + 13));
    v6 = a1[22];
    v5 = a1[23];
    if (v6 != v5)
    {
      do
      {
        v7 = *v6;
        if (*v6)
        {
          if (*(v7 + 111) < 0)
          {
            operator delete(*(v7 + 88));
          }

          operator delete();
        }

        ++v6;
      }

      while (v6 != v5);
      v6 = a1[22];
    }

    a1[23] = v6;
    (*(*a1[21] + 8))(a1[21], a1 + 1);
    (*(*a1[21] + 120))(a1[21]);
    if (qword_100B50AA0 != -1)
    {
      sub_100841B24();
    }

    sub_10007A3F0(off_100B50A98 + 64, (a1 + 2));
    if (qword_100B508F0 != -1)
    {
      sub_100841B4C();
    }

    sub_10007A3F0(off_100B508E8 + 240, (a1 + 5));
    return sub_1000088CC(v8);
  }

  return result;
}

void sub_100557BDC(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_100B508F0 != -1)
  {
    sub_100841AAC();
  }

  v10 = *a1;
  v11 = *(a1 + 2);
  v8 = sub_1000E6554(off_100B508E8, &v10, 1);
  sub_100017F4C(v8, v9);
  operator new();
}

void sub_100557CE8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    *(a1 + 48) = 1;
    if (sub_1000E25D8(a1, a2))
    {
      v15 = 0;
      sub_1000216B4(&v15);
      v3 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        v4 = "Not Signed in";
        if (*(a1 + 241))
        {
          v4 = "Signed in";
        }

        *buf = 136315394;
        *&buf[4] = "stackDidStart";
        *&buf[12] = 2080;
        *&buf[14] = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s, Device sign in status %s", buf, 0x16u);
      }

      sub_1002D7EF0();
      sub_1002D765C(&off_100AFC840);
      sub_10055867C(a1);
      sub_100022214(&v15);
      for (i = *(a1 + 176); i != *(a1 + 184); ++i)
      {
        v6 = *i;
        v21 = 0uLL;
        v22 = 0;
        sub_1006D1B74(&v21);
        v7 = *v6;
        if (qword_100B512E8 != -1)
        {
          sub_100841AC0();
        }

        v8 = sub_1006E7E2C(off_100B512E0, v7, &v21);
        if (v8 == 150)
        {
          v10 = qword_100BCE960;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v7, buf);
            v11 = buf;
            if (v18 < 0)
            {
              v11 = *buf;
            }

            *v19 = 136446210;
            v20 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deferred Magic pairing device from cloud %{public}s", v19, 0xCu);
            if (v18 < 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_100B50F88 != -1)
          {
            sub_100841B74();
          }

          sub_1006E1BF0(off_100B50F80, v7);
          memset(buf, 0, 20);
          sub_1006D1BAC(buf, (v6 + 40), 4u);
          if (qword_100B512E8 != -1)
          {
            sub_100841AC0();
          }

          sub_1006E7F2C(off_100B512E0, v7, buf, 0);
          nullsub_21();
        }

        if ((*(v6 + 78) << 40) | (*(v6 + 79) << 32) | (*(v6 + 80) << 24) | (*(v6 + 81) << 16) | (*(v6 + 82) << 8) | *(v6 + 83))
        {
          v12 = sub_100007EE8(v8, v9);
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100558934;
          v14[3] = &unk_100ADF8F8;
          v14[4] = v6;
          sub_10000CA94(v12, v14);
        }

        nullsub_21();
      }

      sub_10002249C(&v15);
    }

    else
    {
      v13 = *(a1 + 208);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1005580D4;
      block[3] = &unk_100ADF8F8;
      block[4] = a1;
      dispatch_async(v13, block);
    }
  }
}

_BYTE *sub_1005580E0(uint64_t a1, int a2)
{
  v4 = qword_100BCE960;
  v5 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v7 = (*(a1 + 184) - *(a1 + 176)) >> 3;
    v8 = (a1 + 216);
    if (*(a1 + 239) < 0)
    {
      v8 = *v8;
    }

    *buf = 134218755;
    *&buf[4] = v7;
    *&buf[12] = 2160;
    if (a2)
    {
      v9 = " <user-switched>";
    }

    else
    {
      v9 = "";
    }

    *&buf[14] = 1752392040;
    *&buf[22] = 2081;
    v40 = v8;
    v41 = 2080;
    v42 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing %lu magic paired devices from local device database for %{private, mask.hash}s%s", buf, 0x2Au);
  }

  *(a1 + 240) = 0;
  if (a2)
  {
    memset(buf, 0, sizeof(buf));
    if (qword_100B50F88 != -1)
    {
      sub_100841B74();
    }

    sub_10009DB3C(off_100B50F80, buf);
    for (i = *buf; i != *&buf[8]; ++i)
    {
      v11 = *i;
      for (j = *(a1 + 176); j != *(a1 + 184); ++j)
      {
        if (**j == v11)
        {
          goto LABEL_18;
        }
      }

      sub_1000BE6F8((v11 + 128), __p);
      (*(*a1 + 104))(a1, __p);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_18:
      ;
    }

    v13 = +[CloudPairing sharedInstance];
    v14 = [v13 cloudClient];
    [v14 invalidate];

    v5 = *buf;
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  v15 = *(a1 + 176);
  if (v15 != *(a1 + 184))
  {
    while (1)
    {
      v16 = *v15;
      v17 = sub_1000C0348(**v15);
      if (v17)
      {
        break;
      }

LABEL_35:
      *(v16 + 21) = 3;
      v24 = sub_1000E2738(v17, v18);
      v5 = (*(*v24 + 104))(v24, *v16);
      if (a2)
      {
        if (qword_100B50950 != -1)
        {
          sub_100841B9C();
        }

        v25 = 3;
      }

      else
      {
        if (qword_100B50950 != -1)
        {
          sub_100841B9C();
        }

        v25 = 1;
      }

      *(off_100B50948 + 431) = v25;
      *(a1 + 49) = 0u;
      *(a1 + 65) = 0u;
      if (*(a1 + 48) == 1)
      {
        if (qword_100B50F88 != -1)
        {
          sub_100841B74();
        }

        v26 = sub_1006E0DBC(off_100B50F80, *v16);
        sub_10055973C(v26, *v16, v25);
      }

      v27 = *v15;
      if (*v15)
      {
        if (*(v27 + 111) < 0)
        {
          operator delete(v27[11]);
        }

        operator delete();
      }

      v6 = v15 + 1;
      v28 = *(a1 + 184);
      v29 = v28 - (v15 + 1);
      if (v28 != v15 + 1)
      {
        v5 = memmove(v15, v6, v28 - (v15 + 1));
      }

      *(a1 + 184) = v15 + v29;
      if (v15 == (v15 + v29))
      {
        goto LABEL_53;
      }
    }

    v32 = 0;
    sub_1000216B4(&v32);
    v19 = sub_10023BD60(*v16 + 128);
    v20 = qword_100BCE960;
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(*v16, buf);
        v22 = buf;
        if ((buf[23] & 0x80u) != 0)
        {
          v22 = *buf;
        }

        *v35 = 136446466;
        v36 = v22;
        v37 = 1024;
        v38 = v19;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Magic Pairing disconnect failed for %{public}s on user logout with status: %d", v35, 0x12u);
LABEL_32:
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*v16, buf);
      v23 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v23 = *buf;
      }

      *v35 = 136446210;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Magic Pairing disconnected for %{public}s on user logout", v35, 0xCu);
      goto LABEL_32;
    }

    v17 = sub_10002249C(&v32);
    goto LABEL_35;
  }

LABEL_53:
  v30 = sub_1000E2738(v5, v6);
  result = (*(*v30 + 168))(v30);
  if (*(a1 + 48) == 1)
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_10055867C(a1);
    result = sub_10002249C(buf);
  }

  if (*(a1 + 239) < 0)
  {
    **(a1 + 216) = 0;
    *(a1 + 224) = 0;
  }

  else
  {
    *(a1 + 216) = 0;
    *(a1 + 239) = 0;
  }

  return result;
}

uint64_t sub_10055867C(void *a1)
{
  v1 = a1[23] - a1[22];
  if (v1)
  {
    is_mul_ok(v1 >> 3, 0x2CuLL);
    operator new[]();
  }

  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Magic paired device list is empty", buf, 2u);
  }

  return sub_1002D7E50(0, 0);
}

void sub_100558934(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, (*(a1 + 32) + 77), *(a1 + 32) + 24);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007BE07C(v2, (v3 + 77), v3 + 8);
}

uint64_t sub_1005589C8(uint64_t a1)
{
  v2 = qword_100BCE960;
  v3 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MagicPairingManager::stackWillStop enter", buf, 2u);
  }

  result = sub_1000E25D8(v3, v4);
  if (result)
  {
    *buf = 0;
    v10 = 0;
    sub_100007F88(buf, a1 + 104);
    *(a1 + 48) = 0;
    v8 = 0;
    sub_1000216B4(&v8);
    sub_1002D8A64();
    sub_100022214(&v8);
    v6 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MagicPairingManager::stackWillStop exit", v7, 2u);
    }

    sub_10002249C(&v8);
    return sub_1000088CC(buf);
  }

  return result;
}

void sub_100558ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100558AE8(uint64_t a1, uint64_t a2)
{
  result = sub_1000E25D8(a1, a2);
  if (result)
  {
    result = *(a1 + 200);
    if (result)
    {
      operator delete[]();
    }
  }

  return result;
}

id sub_100558B38(uint64_t a1)
{
  if (a1)
  {
    v2 = [BTCloudDevice alloc];
    sub_1000BE6F8((a1 + 128), __p);
    if (v14 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = [NSString stringWithUTF8String:v3];
    v5 = [v2 initWithBluetoothAddress:v4];

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = 0;
    v12 = 0;
    if (sub_1000C2364(a1, &v12 + 1, &v12, &v11 + 1, &v11))
    {
      v6 = [NSString stringWithFormat:@"%u", HIDWORD(v11)];
      [v5 setProductID:v6];

      v7 = [NSString stringWithFormat:@"%u", v12];
      [v5 setVendorID:v7];
    }

    sub_1000C23E0(a1, __p);
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = [NSString stringWithUTF8String:v8];
    [v5 setNickname:v9];

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100558D3C(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 104);
  if ((a1 + 176) != a2)
  {
    sub_10051AE40(a2, *(a1 + 176), *(a1 + 184), (*(a1 + 184) - *(a1 + 176)) >> 3);
  }

  sub_1000088CC(v5);
  return 0;
}

void *sub_100558DB8(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v4 = sub_100007F88(v9, a1 + 104);
  if (sub_1000E2570(v4, a2))
  {
    v5 = *(a1 + 176);
    v6 = *(a1 + 184);
    while (v5 != v6)
    {
      v7 = *v5;
      if (**v5 == a2)
      {
        goto LABEL_7;
      }

      ++v5;
    }
  }

  v7 = 0;
LABEL_7:
  sub_1000088CC(v9);
  return v7;
}

uint64_t sub_100558E48(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2[1016] == 1)
  {
    v4 = sub_1000E2738(a1, a2);
    (*(*v4 + 128))(v4, a2);
    return 1;
  }

  v7 = sub_1000E2570(a1, a2);
  v9 = v7;
  if (v7)
  {
    if (qword_100B50950 != -1)
    {
      sub_100841C00();
    }

    sub_10055973C(v7, a2, *(off_100B50948 + 431));
  }

  if ((a3 & 1) == 0)
  {
    v10 = qword_100BCE960;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v55);
      sub_100841C14();
    }

    if (qword_100B50950 != -1)
    {
      sub_100841B9C();
    }

    *(off_100B50948 + 431) = 1;
  }

  v11 = sub_1000E2738(v7, v8);
  v12 = (*(*v11 + 104))(v11, a2);
  if (!(v9 & 1 | ((a2[1044] & 1) == 0)) || (a2[1046] & 1) != 0 || (a2[1045] & 1) != 0)
  {
    return 1;
  }

  if (sub_1000E25D8(v12, v13) && *(a1 + 240) == 1 && *(a1 + 241) == 1)
  {
    v54[0] = 0;
    v54[1] = 0;
    sub_100007F88(v54, a1 + 104);
    v16 = *(a1 + 176);
    v17 = *(a1 + 184);
    if (v16 == v17)
    {
LABEL_25:
      v19 = 0;
    }

    else
    {
      v18 = *(a1 + 176);
      while (1)
      {
        v19 = *v18;
        if (**v18 == a2)
        {
          break;
        }

        if (++v18 == v17)
        {
          goto LABEL_25;
        }
      }
    }

    if (v17 - v16 == 8 && (*(a1 + 243) & 1) != 0)
    {
      *(a1 + 243) = 0;
    }

    if (v19)
    {
      v20 = *(v19 + 21);
      v21 = qword_100BCE960;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, v60);
        v22 = v61 >= 0 ? v60 : *v60;
        *buf = 136446466;
        *&buf[4] = v22;
        v57 = 1024;
        v58 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing Magic Pairing, Cloud status of magic device %{public}s = %d", buf, 0x12u);
        if (v61 < 0)
        {
          operator delete(*v60);
        }
      }

      if (v20 != 3)
      {
        if ((sub_10055993C(a1 + 176, a2) & 1) == 0)
        {
          v45 = qword_100BCE960;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(a2, v60);
            sub_100841C68();
          }

          v14 = 0;
          goto LABEL_84;
        }

        if (*(a1 + 48) == 1)
        {
          if ((a3 & 1) == 0)
          {
            if (qword_100B50F88 != -1)
            {
              sub_100841B74();
            }

            sub_1006E0DBC(off_100B50F80, a2);
          }

          v53 = 0;
          sub_1000216B4(&v53);
          sub_10055867C(a1);
          sub_100022214(&v53);
          sub_1005599FC(a1);
          if (a3 && *(a1 + 240) == 1)
          {
            v23 = qword_100BCE960;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(a2, v60);
              sub_100841CBC();
            }

            v24 = +[CloudPairing sharedInstance];
            v25 = [v24 cloudClient];
            sub_1000BE6F8(a2 + 128, buf);
            if (v59 >= 0)
            {
              v26 = buf;
            }

            else
            {
              v26 = *buf;
            }

            v27 = [NSString stringWithUTF8String:v26];
            v52[0] = _NSConcreteStackBlock;
            v52[1] = 3221225472;
            v52[2] = sub_100559B10;
            v52[3] = &unk_100AFC848;
            v52[4] = a2;
            [v25 deleteDeviceRecord:v27 completion:v52];

            if (v59 < 0)
            {
              operator delete(*buf);
            }

            v28 = qword_100BCE960;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(a2, buf);
              sub_100841D10();
            }

            v29 = +[CloudPairing sharedInstance];
            v30 = [v29 cloudClient];
            sub_1000BE6F8(a2 + 128, __p);
            if (v51 >= 0)
            {
              v31 = __p;
            }

            else
            {
              v31 = __p[0];
            }

            v32 = [NSString stringWithUTF8String:v31];
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 3221225472;
            v49[2] = sub_100559C54;
            v49[3] = &unk_100AFC848;
            v49[4] = a2;
            [v30 deleteMagicSettingsRecord:v32 completion:v49];

            if (v51 < 0)
            {
              operator delete(__p[0]);
            }

            v33 = qword_100BCE960;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(a2, __p);
              sub_100841D64();
            }

            v34 = +[CloudPairing sharedInstance];
            v35 = [v34 cloudClient];
            sub_1000BE6F8(a2 + 128, v47);
            if (v48 >= 0)
            {
              v36 = v47;
            }

            else
            {
              v36 = v47[0];
            }

            v37 = [NSString stringWithUTF8String:v36];
            v46[0] = _NSConcreteStackBlock;
            v46[1] = 3221225472;
            v46[2] = sub_100559D98;
            v46[3] = &unk_100AFC848;
            v46[4] = a2;
            [v35 deleteDeviceSupportInformationRecord:v37 completion:v46];

            if (v48 < 0)
            {
              operator delete(v47[0]);
            }

            sub_100559EDC(a1, v38);
          }

          sub_10002249C(&v53);
        }
      }
    }

    else
    {
      v43 = qword_100BCE960;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, v60);
        v44 = v61 >= 0 ? v60 : *v60;
        *buf = 136446210;
        *&buf[4] = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Device %{public}s not in Magic pairing list", buf, 0xCu);
        if (v61 < 0)
        {
          operator delete(*v60);
        }
      }
    }

    v14 = 1;
LABEL_84:
    sub_1000088CC(v54);
    return v14;
  }

  v39 = qword_100BCE960;
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  if (v40)
  {
    if (sub_1000E25D8(v40, v41))
    {
      if (*(a1 + 241))
      {
        v42 = "Signed In";
      }

      else
      {
        v42 = "Not Signed in";
      }
    }

    else
    {
      v42 = "Not Supported";
    }

    *v60 = 136315138;
    *&v60[4] = v42;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Magic pairing: %s", v60, 0xCu);
  }

  return 0;
}

void sub_1005595F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  sub_10002249C(&a40);
  sub_1000088CC(&a41);
  _Unwind_Resume(a1);
}

void sub_10055973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  sub_1000C2364(a2, &v16 + 1, &v16, &v15 + 1, &v15);
  v21[0] = @"PID";
  v5 = [NSNumber numberWithUnsignedInt:HIDWORD(v15)];
  v22[0] = v5;
  v21[1] = @"unpairType";
  v6 = [NSNumber numberWithUnsignedChar:a3];
  v22[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

  v8 = qword_100BCE960;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v18 = v9;
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendMagicUnpairEvent for %{public}s with unpair type %d", buf, 0x12u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = sub_10000F034(v10, v11);
  (*(*v12 + 360))(v12, v7);
}

uint64_t sub_10055993C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = v2 + 1;
  do
  {
    v5 = *v2;
    if (**v2 == a2)
    {
      if (*(v5 + 111) < 0)
      {
        operator delete(v5[11]);
      }

      operator delete();
    }

    ++v2;
    ++v4;
  }

  while (v2 != v3);
  return 0;
}

uint64_t sub_1005599FC(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 104);
  v2 = *(a1 + 176);
  if (v2 == *(a1 + 184))
  {
    goto LABEL_12;
  }

  do
  {
    v3 = sub_10055B09C(a1, **v2++);
  }

  while (v2 != *(a1 + 184));
  if (v3)
  {
LABEL_12:
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100841DB8();
    }
  }

  else
  {
    v4 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully stored MagicPairing device information in storage", v6, 2u);
    }

    sub_100566D78(a1);
  }

  return sub_1000088CC(v7);
}

void sub_100559AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100559B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100841E28();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP-] Removed cloud device for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100559C54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100841E78();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP-] Removed new cloud magic settings for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100559D98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100841EC8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP-] Removed Device Support Information for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100559EDC(uint64_t a1, uint64_t a2)
{
  if (sub_1000E25D8(a1, a2) && (*(a1 + 240) & 1) != 0)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100841AAC();
    }

    if (sub_1000BE6E8(off_100B508E8))
    {
      v3 = *(a1 + 241);
      v4 = qword_100BCE960;
      v5 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
      if (v3 == 1)
      {
        if (v5)
        {
          v6 = (*(a1 + 184) - *(a1 + 176)) >> 3;
          buf = 134217984;
          *buf_4 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CloudSync: Uploading information for %lu devices to cloud", &buf, 0xCu);
        }

        v7 = *(a1 + 184) - *(a1 + 176);
        if (v7)
        {
          is_mul_ok(v7 >> 3, 0x98uLL);
          operator new[]();
        }

        v16 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CloudSync: pushing updates to legacy layer", &buf, 2u);
        }

        (*(**(a1 + 168) + 40))(*(a1 + 168), 0, 0);
        return;
      }

      if (!v5)
      {
        return;
      }

      LOWORD(buf) = 0;
      v14 = "Warning: Account not signed in";
      v15 = v4;
    }

    else
    {
      v13 = qword_100BCE960;
      if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(buf) = 0;
      v14 = "System has not passed first unlock (or device prefs not read yet). Do not write DeviceList to Cloud";
      v15 = v13;
    }

    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &buf, 2u);
    return;
  }

  v8 = qword_100BCE960;
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v11 = sub_1000E25D8(v9, v10);
    v12 = "supported";
    if (v11)
    {
      v12 = "initialized";
    }

    buf = 136315138;
    *buf_4 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "writeDeviceListToCloud, Magic Pairing not %s.", &buf, 0xCu);
  }
}

void sub_10055ACB4(uint64_t a1, void *a2)
{
  if (sub_1000E25D8(a1, a2) && (*(a1 + 240) & 1) != 0)
  {
    if (a2)
    {
      if (*(a1 + 49) == 0 || *(a1 + 65) == 0)
      {
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          sub_100841FB8();
        }
      }

      else
      {
        v11[0] = 0;
        v11[1] = 0;
        if (!sub_1002D898C(a1 + 65, (a2 + 7), v11, 0x10uLL) && LODWORD(v11[0]) == *(*a2 + 128) && WORD2(v11[0]) == *(*a2 + 132))
        {
          if (sub_10055AF34(a2, a1 + 49, a1 + 65))
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_100841F7C();
            }
          }

          else
          {
            *(a2 + 18) = 1;
            *(a2 + 21) = 2;
            v5 = qword_100BCE960;
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(*a2, __p);
              v6 = v8 >= 0 ? __p : __p[0];
              *buf = 136446210;
              v10 = v6;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reset Magic Pairing keys for device %{public}s", buf, 0xCu);
              if (v8 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (*(a1 + 48) == 1)
            {
              LOBYTE(__p[0]) = 0;
              sub_1000216B4(__p);
              sub_10055867C(a1);
              sub_10002249C(__p);
            }

            sub_10055B09C(a1, *a2);
          }
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100841FF4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100841F40();
  }
}

void sub_10055AF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10055AF34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v16 = 0;
  v15 = 0;
  v13 = *(v5 + 128);
  v14 = *(v5 + 132);
  v6 = (v5 + 133);
  for (i = 6; i != 12; ++i)
  {
    v8 = *v6--;
    *(&v13 + i) = v8;
  }

  v9 = *(v5 + 129);
  v17 = v9 ^ *(v5 + 128);
  v10 = *(v5 + 130);
  v18 = v10 ^ v9;
  v11 = *(v5 + 131);
  v19 = v11 ^ v10;
  v20 = *(v5 + 132) ^ v11;
  if (sub_1002D89F8(a2, &v13, (a1 + 5), 0x10uLL))
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842030();
    }
  }

  else
  {
    result = sub_1002D89F8(a3, &v13, (a1 + 7), 0x10uLL);
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008420A0();
    }
  }

  return 1;
}

uint64_t sub_10055B09C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  for (i = *(a1 + 176); i != *(a1 + 184); ++i)
  {
    v5 = *i;
    if (**i == a2)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  v38 = bswap32(*(v5 + 18));
  v39 = *(v5 + 21);
  if (qword_100B512E8 != -1)
  {
    sub_100841BEC();
  }

  result = sub_1006E8D14(off_100B512E0, a2, 0, (v5 + 5));
  if (!result)
  {
    if (qword_100B512E8 != -1)
    {
      sub_100841BEC();
    }

    result = sub_1006E8D14(off_100B512E0, a2, 3, (v5 + 3));
    if (!result)
    {
      if (qword_100B512E8 != -1)
      {
        sub_100841BEC();
      }

      result = sub_1006E8D14(off_100B512E0, a2, 2, (v5 + 1));
      if (!result)
      {
        if (qword_100B512E8 != -1)
        {
          sub_100841BEC();
        }

        result = sub_1006E8D14(off_100B512E0, a2, 1, (v5 + 7));
        if (!result)
        {
          if (qword_100B512E8 != -1)
          {
            sub_100841BEC();
          }

          result = sub_1006E8D14(off_100B512E0, a2, 4, &v38);
          if (!result)
          {
            if (sub_1000E2140(a2, 0xCu) || sub_1000E2140(a2, 0x27u))
            {
              *__p = 0;
              sub_100016250(__p);
              *&v37 = *__p;
              *(&v37 + 1) = *&__p[4];
              if (!sub_1000DEB14(a2))
              {
                v7 = qword_100BCE960;
                if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1000E5A58(a2, __p);
                  v8 = v42 >= 0 ? __p : *__p;
                  *buf = 136446210;
                  *&buf[4] = v8;
                  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Applying workaround for Apple Audio Device: BT_DEVICE_TYPE_GENERIC->BT_DEVICE_TYPE_HEADPHONES for %{public}s", buf, 0xCu);
                  if (SHIBYTE(v42) < 0)
                  {
                    operator delete(*__p);
                  }
                }

                sub_100538254(a2, 20, &v37);
              }

              HIDWORD(v36) = 0;
              sub_1005379CC(a2, &v36 + 1);
              if (!HIDWORD(v36))
              {
                v9 = qword_100BCE960;
                if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1000E5A58(a2, __p);
                  v10 = v42 >= 0 ? __p : *__p;
                  *buf = 67109378;
                  *&buf[4] = 2098200;
                  *&buf[8] = 2082;
                  *&buf[10] = v10;
                  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Applying workaround for Apple Audio Device, CoD: 0->%u for %{public}s", buf, 0x12u);
                  if (SHIBYTE(v42) < 0)
                  {
                    operator delete(*__p);
                  }
                }

                sub_10053C438(a2, 2098200, &v37);
              }
            }

            else
            {
              v11 = qword_100BCE960;
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                sub_1000E5A58(a2, __p);
                v12 = v42 >= 0 ? __p : *__p;
                *buf = 136446210;
                *&buf[4] = v12;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Cannot apply workaround this device is not Apple Audio Device: %{public}s", buf, 0xCu);
                if (SHIBYTE(v42) < 0)
                {
                  operator delete(*__p);
                }
              }
            }

            v13 = sub_10000E92C();
            result = (*(*v13 + 8))(v13);
            if (result)
            {
              LODWORD(v37) = 0;
              v36 = 0;
              v35 = 0;
              sub_1000C2364(a2, &v37, &v36 + 1, &v36, &v35);
              v14 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- Magic Pairing Manager ------------------", __p, 2u);
              }

              v15 = qword_100BCE960;
              v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
              if (v16)
              {
                v18 = (a1 + 216);
                if (*(a1 + 239) < 0)
                {
                  v18 = *v18;
                }

                v19 = *(a1 + 241);
                if (sub_1000E25D8(v16, v17))
                {
                  v20 = *(a1 + 240);
                }

                else
                {
                  v20 = 0;
                }

                *__p = 136315650;
                *&__p[4] = v18;
                *&__p[12] = 1024;
                *&__p[14] = v19;
                v41 = 1024;
                v42 = v20;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cloud Account ID: %s, Cloud Signed in: %d, Initialized: %d", __p, 0x18u);
              }

              v21 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x1004100202;
                *&__p[8] = 2096;
                *&__p[10] = a1 + 49;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cached Acc Master Key:%.16P", __p, 0x12u);
              }

              v22 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x1004100202;
                *&__p[8] = 2096;
                *&__p[10] = a1 + 65;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Cached Acc Master Hint:%.16P", __p, 0x12u);
              }

              v23 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x1004100202;
                *&__p[8] = 2096;
                *&__p[10] = a1 + 81;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cached Acc Master Cloud IRK:%.16P", __p, 0x12u);
              }

              v24 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x604100202;
                *&__p[8] = 2096;
                *&__p[10] = a1 + 97;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Cached Acc Master Cloud Addr:%.6P", __p, 0x12u);
              }

              v25 = qword_100BCE960;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(a2, buf);
                v26 = v48;
                v27 = *buf;
                v28 = HIDWORD(v36);
                v34 = v36;
                v29 = sub_1000E31D0(a2);
                v30 = buf;
                *__p = 136446978;
                if (v26 < 0)
                {
                  v30 = v27;
                }

                *&__p[4] = v30;
                *&__p[12] = 1024;
                *&__p[14] = v28;
                v41 = 1024;
                v42 = v34;
                v43 = 1024;
                LODWORD(v44) = v29 & 2;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "statedump: Cached Device %{public}s, vid: %x, pid: %x, Fake: %d", __p, 0x1Eu);
                if (v48 < 0)
                {
                  operator delete(*buf);
                }
              }

              v31 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                v32 = *(v5 + 18);
                *__p = 0x1004100502;
                *&__p[8] = 2096;
                *&__p[10] = v5 + 5;
                v41 = 1040;
                v42 = 16;
                v43 = 2096;
                v44 = v5 + 7;
                v45 = 1024;
                v46 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Cached Acc Key %.16P for Hint %.16P and Ratchet %d ", __p, 0x28u);
              }

              v33 = qword_100BCE960;
              if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0x1004100402;
                *&__p[8] = 2096;
                *&__p[10] = v5 + 1;
                v41 = 1040;
                v42 = 16;
                v43 = 2096;
                v44 = v5 + 3;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Cached IRK %.16P and Encryption key %.16P", __p, 0x22u);
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10055B928(uint64_t a1, uint64_t a2, int a3)
{
  result = IsAppleInternalBuild();
  if (result)
  {
    result = sub_1000E25D8(result, v7);
    if (result)
    {
      if (*(a1 + 240) == 1)
      {
        v23[0] = 0;
        v23[1] = 0;
        sub_100007F88(v23, a1 + 104);
        for (i = *(a1 + 176); ; ++i)
        {
          if (i == *(a1 + 184))
          {
            return sub_1000088CC(v23);
          }

          v9 = *i;
          if (**i == a2)
          {
            break;
          }
        }

        v33[0] = 0;
        v33[1] = 0;
        v10 = v9[72];
        if (!sub_1002D898C(a1 + 65, (v9 + 56), v33, 0x10uLL) && (LODWORD(v33[0]) != *(*v9 + 128) || WORD2(v33[0]) != *(*v9 + 132)))
        {
          v19 = qword_100BCE960;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = sub_1002D762C(a3);
            sub_1000E5A58(a2, &__p);
            v21 = SHIBYTE(v32) >= 0 ? &__p : __p;
            *buf = 136315394;
            *&buf[4] = v20;
            v25 = 2082;
            v26 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Bad Main Account Keys; Unable to simulate Magic Pairing Error %s for device %{public}s", buf, 0x16u);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p);
            }
          }

          return sub_1000088CC(v23);
        }

        v11 = qword_100BCE960;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = sub_1002D762C(a3);
          sub_1000E5A58(a2, &__p);
          v13 = SHIBYTE(v32) >= 0 ? &__p : __p;
          *buf = 136315394;
          *&buf[4] = v12;
          v25 = 2082;
          v26 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Simulating Magic Pairing Error %s for device %{public}s", buf, 0x16u);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p);
          }
        }

        if (a3 == 7)
        {
          if (sub_10055AF34(v9, a1 + 49, a1 + 65))
          {
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              sub_100841F7C();
            }

            return sub_1000088CC(v23);
          }

          v14 = qword_100BCE960;
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          sub_1000E5A58(a2, &__p);
          v22 = SHIBYTE(v32) >= 0 ? &__p : __p;
          *buf = 136446210;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Simulating Magic Pairing Error reset accessory key without changing ratchet for device %{public}s", buf, 0xCu);
          if ((SHIBYTE(v32) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          v17 = __p;
        }

        else
        {
          if (a3 != 1)
          {
LABEL_45:
            if (*(a1 + 48) == 1)
            {
              LOBYTE(__p) = 0;
              sub_1000216B4(&__p);
              sub_10055867C(a1);
              sub_10002249C(&__p);
            }

            sub_10055B09C(a1, *v9);
            return sub_1000088CC(v23);
          }

          *(v9 + 18) = v10 + 10;
          v14 = qword_100BCE960;
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT) || ((v15 = *(v9 + 18), sub_1000E5A58(a2, buf), v27 >= 0) ? (v16 = buf) : (v16 = *buf), LODWORD(__p) = 67109634, HIDWORD(__p) = v10, v29 = 1024, v30 = v15, v31 = 2082, v32 = v16, _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Simulating Magic Pairing Error bumped ratchet from %d -> %d for device %{public}s", &__p, 0x18u), (v27 & 0x80000000) == 0))
          {
LABEL_44:

            goto LABEL_45;
          }

          v17 = *buf;
        }

        operator delete(v17);
        goto LABEL_44;
      }
    }
  }

  return result;
}

uint64_t sub_10055BD74(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  if (!*(a2 + 128))
  {
    v13 = 0;
    while (v13 != 5)
    {
      v14 = v13;
      if (*(a2 + 129 + v13++))
      {
        if (v14 < 5)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842188();
    }

    return 1;
  }

LABEL_2:
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_10084214C();
    }

    return 1;
  }

  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 104);
  v8 = *(a1 + 176);
  v9 = *(a1 + 184);
  if (v8 == v9)
  {
LABEL_8:
    v11 = qword_100BCE960;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v22 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136446210;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "creating new Magic pairing device for device %{public}s", buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    operator new();
  }

  v10 = *(a1 + 176);
  while (**v10 != a2)
  {
    if (++v10 == v9)
    {
      goto LABEL_8;
    }
  }

  v17 = *v8;
  if (**v8 != a2)
  {
    v18 = (v8 + 1);
    do
    {
      v19 = *v18++;
      v17 = v19;
    }

    while (*v19 != a2);
  }

  v16 = 0;
  *a3 = *(v17 + 5);
  *a4 = *(v17 + 7);
  sub_1000088CC(v23);
  return v16;
}

void sub_10055C0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10055C0F4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1 + 49;
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842350();
    }
  }

  else
  {
    v7 = (a1 + 81);
    if (*(a1 + 81) != 0)
    {
LABEL_4:
      result = 0;
      *a2 = *v7;
      v9 = *(a1 + 97);
      *(a3 + 4) = *(a1 + 101);
      *a3 = v9;
      return result;
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008421C4();
    }

    v15[0] = 0;
    v15[1] = 0;
    sub_100007F88(v15, a1 + 104);
    v20[0] = 0;
    v20[1] = 0;
    *(a1 + 97) = 0;
    *(a1 + 101) = 0;
    if (sub_1002D89F8(v3, a1 + 65, a1 + 81, 0x10uLL))
    {
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100842200();
      }
    }

    else if (sub_1002D89F8(a1 + 65, v3, v20, 0x10uLL))
    {
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100842270();
      }
    }

    else
    {
      *(a1 + 97) = v20[0];
      *(a1 + 101) = WORD2(v20[0]);
      v10 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v17 = 16;
        v18 = 2096;
        v19 = a1 + 81;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fcCloudIRK %.16P ", buf, 0x12u);
      }

      v11 = qword_100BCE960;
      v12 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        *buf = 68157954;
        v17 = 6;
        v18 = 2096;
        v19 = a1 + 97;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fMasterCloudAddress %.6P ", buf, 0x12u);
      }

      v14 = sub_1000E2738(v12, v13);
      if (!(*(*v14 + 160))(v14, a1 + 81, a1 + 97))
      {
        sub_1000088CC(v15);
        goto LABEL_4;
      }

      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_1008422E0();
      }
    }

    sub_1000088CC(v15);
  }

  return 1;
}

uint64_t sub_10055C400(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (!sub_1000E25D8(a1, a2))
  {
    return 2;
  }

  if (!*(a2 + 128))
  {
    v13 = 0;
    while (v13 != 5)
    {
      v14 = v13;
      if (*(a2 + 129 + v13++))
      {
        if (v14 < 5)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_10084238C();
    }

    return 1;
  }

LABEL_3:
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    v11 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 241);
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device not signed in / master key not available. signed in = %d", buf, 8u);
    }

    return 1;
  }

  *buf = 0;
  v19 = 0;
  sub_100007F88(buf, a1 + 104);
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  if (v6 == v7)
  {
LABEL_9:
    operator new();
  }

  v8 = *(a1 + 176);
  while (**v8 != a2)
  {
    if (++v8 == v7)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v9 = *v6;
    if (**v6 == a2)
    {
      break;
    }

    if (++v6 == v7)
    {
      v9 = 0;
      break;
    }
  }

  if (a3)
  {
    *(v9 + 4) = *a3;
    *(v9 + 77) = 0;
    v16 = *(*v9 + 132);
    *(v9 + 39) = *(*v9 + 128);
    v9[41] = v16;
  }

  (*(**(a1 + 168) + 144))(*(a1 + 168));
  v10 = 0;
  sub_1000088CC(buf);
  return v10;
}

__n128 sub_10055C750(_WORD *a1, __n128 *a2)
{
  if (a2)
  {
    result = *a2;
    *(a1 + 4) = *a2;
    *(a1 + 77) = 0;
    v3 = *(*a1 + 132);
    *(a1 + 39) = *(*a1 + 128);
    a1[41] = v3;
  }

  return result;
}

uint64_t sub_10055C778(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = qword_100BCE960;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v32 >= 0 ? __p : __p[0];
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updating encryption key for device %{public}s", &buf, 0xCu);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!sub_1000E25D8(v8, v9))
  {
    return 2;
  }

  if (!*(a2 + 128))
  {
    v18 = 0;
    while (v18 != 5)
    {
      v19 = v18;
      if (*(a2 + 129 + v18++))
      {
        if (v19 < 5)
        {
          goto LABEL_9;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008423C8();
    }

    return 1;
  }

LABEL_9:
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    v16 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 241);
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device not signed in / master key not available. signed in = %d", __p, 8u);
    }

    return 1;
  }

  if (*(a1 + 240))
  {
    buf = 0uLL;
    sub_100007F88(&buf, a1 + 104);
    v11 = *(a1 + 176);
    v12 = *(a1 + 184);
    if (v11 == v12)
    {
LABEL_16:
      operator new();
    }

    v13 = *(a1 + 176);
    while (**v13 != a2)
    {
      if (++v13 == v12)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v15 = *v11;
      if (**v11 == a2)
      {
        break;
      }

      if (++v11 == v12)
      {
        v15 = 0;
        break;
      }
    }

    v23 = v15[3];
    v27 = v15;
    v24 = v23 == *a3 && v15[4] == a3[1];
    if (v24 && *(v15 + 21) == 1)
    {
      v25 = qword_100BCE960;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        if (v32 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        *v28 = 136446210;
        v29 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Encryption key for device %{public}s is already up to date", v28, 0xCu);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      if (a3)
      {
        *(v15 + 3) = *a3;
      }

      sub_100559EDC(a1, v10);
    }

    v14 = 0;
    sub_1000088CC(&buf);
  }

  else
  {
    v22 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "updateDeviceEncryptionKey, Magic Pairing Layer not initialized", __p, 2u);
    }

    return 17;
  }

  return v14;
}

void sub_10055CBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10055CBF4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!sub_1000E25D8(a1, a2))
  {
    return 2;
  }

  if (!*(a2 + 128))
  {
    v14 = 0;
    while (v14 != 5)
    {
      v15 = v14;
      if (*(a2 + 129 + v14++))
      {
        if (v15 < 5)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842474();
    }

    return 1;
  }

LABEL_3:
  if (*(a1 + 49) == 0 || (*(a1 + 241) & 1) == 0)
  {
    v12 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 241);
      *__p = 67109120;
      *&__p[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device not signed in / master key not available. signed in = %d", __p, 8u);
    }

    return 1;
  }

  if (*(a1 + 240))
  {
    v27[0] = 0;
    v27[1] = 0;
    sub_100007F88(v27, a1 + 104);
    v6 = qword_100BCE960;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v7 = v34 >= 0 ? __p : *__p;
      *buf = 136446466;
      *&buf[4] = v7;
      v29 = 1024;
      v30 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MagicPairingManager::updateDeviceRatchet from device %{public}s, ratchet %d", buf, 0x12u);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(*__p);
      }
    }

    v8 = *(a1 + 176);
    v9 = *(a1 + 184);
    if (v8 == v9)
    {
LABEL_16:
      operator new();
    }

    v10 = *(a1 + 176);
    while (**v10 != a2)
    {
      if (++v10 == v9)
      {
        goto LABEL_16;
      }
    }

    v19 = *v8;
    if (**v8 != a2)
    {
      v20 = (v8 + 1);
      do
      {
        v21 = *v20++;
        v19 = v21;
      }

      while (*v21 != a2);
    }

    v26 = v19;
    v22 = *(v19 + 18);
    v23 = qword_100BCE960;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v24 = v31 >= 0 ? buf : *buf;
      *__p = 136446722;
      *&__p[4] = v24;
      *&__p[12] = 1024;
      *&__p[14] = v22;
      v33 = 1024;
      v34 = a3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "MagicPairingManager::updateDeviceRatchet from device %{public}s, current %d -> new %d", __p, 0x18u);
      if (v31 < 0)
      {
        operator delete(*buf);
      }
    }

    v25 = a3 - v22;
    if (a3 != v22)
    {
      if (a3 > v22)
      {
        while (1)
        {
          *__p = 0;
          *&__p[8] = 0;
          if (sub_1002D7E68((v19 + 5), __p))
          {
            break;
          }

          v19 = v26;
          *(v26 + 5) = *__p;
          if (!--v25)
          {
            v22 = a3;
            goto LABEL_47;
          }
        }

        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          sub_100842404();
        }

        v11 = 1;
        goto LABEL_52;
      }

      if (v22)
      {
LABEL_47:
        *(v19 + 18) = v22;
      }

      if (*(a1 + 48) == 1)
      {
        __p[0] = 0;
        sub_1000216B4(__p);
        sub_10055867C(a1);
        sub_10002249C(__p);
      }

      sub_10055B09C(a1, a2);
    }

    v11 = 0;
LABEL_52:
    sub_1000088CC(v27);
    return v11;
  }

  v18 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "updateDeviceRatchet, Magic Pairing Layer not initialized", __p, 2u);
  }

  return 17;
}

void sub_10055D0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10055D120(uint64_t a1, void *a2, void *a3)
{
  if (sub_1000E25D8(a1, a2))
  {
    if (*a2 != *(a1 + 49) || a2[1] != *(a1 + 57))
    {
      if (!a2 || !a3)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    v9 = *a3 != *(a1 + 65) || a3[1] != *(a1 + 73);
    if (a2 && a3 && v9)
    {
LABEL_20:
      v10 = qword_100BCE960;
      v11 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        v13 = *(a1 + 240);
        LODWORD(v21) = 67109376;
        HIDWORD(v21) = v13;
        LOWORD(v22[0]) = 1024;
        *(v22 + 2) = 1;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MagicPairingInitialized: %d, keysChanged: %d, Cloud master keys are updated. Updating local keys", &v21, 0xEu);
      }

      *(a1 + 49) = *a2;
      *(a1 + 65) = *a3;
      v14 = sub_1000E2738(v11, v12);
      v15 = (*(*v14 + 152))(v14, a1 + 49, a1 + 65);
      v16 = sub_10000E92C();
      if ((*(*v16 + 8))(v16))
      {
        v17 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 0x1004100202;
          LOWORD(v22[0]) = 2096;
          *(v22 + 2) = a1 + 49;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "cloudKeysAvailable Acc Master Key:%.16P", &v21, 0x12u);
        }

        v18 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 0x1004100202;
          LOWORD(v22[0]) = 2096;
          *(v22 + 2) = a1 + 65;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "cloudKeysAvailable Acc Master Hint:%.16P", &v21, 0x12u);
        }
      }

      if (v15)
      {
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          sub_1008424B0();
        }
      }

      else
      {
        v21 = 0;
        v22[0] = 0;
        sub_100007F88(&v21, a1 + 104);
        v19 = *(a1 + 176);
        v20 = *(a1 + 184);
        sub_1000088CC(&v21);
        if (v19 == v20 && (*(a1 + 240) & 1) == 0)
        {
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            sub_100842520();
          }

          (*(**(a1 + 168) + 32))(*(a1 + 168));
        }
      }

      return;
    }

    if (v9)
    {
LABEL_31:
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
      {
        sub_10084255C();
      }

      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_1008425C4();
      }

      return;
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
    {
      sub_100842644();
    }

    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008426AC();
    }
  }

  else
  {
    v7 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cloudKeysAvailable, Magic Pairing not supported", &v21, 2u);
    }
  }
}

uint64_t sub_10055D510(uint64_t a1, unsigned __int8 **a2)
{
  v15[1] = 0;
  v16 = a2;
  v15[0] = 0;
  sub_100007F88(v15, a1 + 104);
  v4 = *a2;
  for (i = *(a1 + 176); i != *(a1 + 184); ++i)
  {
    if (**i == v4)
    {
      v8 = qword_100BCE960;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, &__p);
        v9 = v19 >= 0 ? &__p : __p.n128_u64[0];
        *buf = 136446210;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update Magic pairing device from cloud %{public}s", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      goto LABEL_19;
    }
  }

  v6 = qword_100BCE960;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v4, &__p);
    v7 = v19 >= 0 ? &__p : __p.n128_u64[0];
    *buf = 136446210;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "New Magic pairing device from cloud %{public}s", buf, 0xCu);
    if (v19 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

  sub_1000C2484(a1 + 176, &v16);
LABEL_19:
  if (qword_100B512E8 != -1)
  {
    sub_100841AC0();
  }

  if ((sub_1000294FC(off_100B512E0, v4) & 1) == 0 && *(a1 + 48) == 1)
  {
    if (qword_100B50F88 != -1)
    {
      sub_100841B74();
    }

    sub_1006E1BF0(off_100B50F80, v4);
    __p = 0uLL;
    v18 = 0;
    sub_1006D1BAC(&__p, v16 + 5, 4u);
    if (qword_100B512E8 != -1)
    {
      sub_100841AC0();
    }

    sub_1006E7F2C(off_100B512E0, v4, &__p, 0);
    nullsub_21();
  }

  if (qword_100B512E8 != -1)
  {
    sub_100841AC0();
  }

  sub_1006E8C38(off_100B512E0, v4);
  if (*(a1 + 48) == 1)
  {
    __p.n128_u8[0] = 0;
    sub_1000216B4(&__p);
    sub_10055867C(a1);
    v10 = sub_100022214(&__p);
    if ((*(v16 + 78) << 40) | (*(v16 + 79) << 32) | (*(v16 + 80) << 24) | (*(v16 + 81) << 16) | (*(v16 + 82) << 8) | *(v16 + 83))
    {
      v12 = sub_100007EE8(v10, v11);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10055D8E0;
      v14[3] = &unk_100ADF8F8;
      v14[4] = v16;
      sub_10000CA94(v12, v14);
    }

    sub_10002249C(&__p);
  }

  sub_10055B09C(a1, v4);
  *(v16 + 21) = 1;
  *(a1 + 240) = 1;
  return sub_1000088CC(v15);
}

void sub_10055D880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10055D8E0(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, (*(a1 + 32) + 77), *(a1 + 32) + 24);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007BE07C(v2, (v3 + 77), v3 + 8);
}

uint64_t sub_10055D96C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v189[1] = 0;
  v189[0] = 0;
  sub_100007F88(v189, a1 + 104);
  *(a1 + 242) = 1;
  v4 = qword_100BCE960;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "device info update callback from cloudkit for %d devices", buf, 8u);
  }

  if (a3)
  {
    v5 = 0;
    v171 = a3;
    do
    {
      v174 = v5;
      v6 = (a2 + 152 * v5);
      v187 = *v6;
      v188 = *(v6 + 2);
      if (qword_100B508F0 != -1)
      {
        sub_100841B4C();
      }

      v7 = sub_1000E6554(off_100B508E8, &v187, 1);
      v8 = v7;
      if ((*(v6 + 75) & 2) != 0)
      {
        sub_100540890(v7, 1, 1);
      }

      if (v8[128])
      {
LABEL_10:
        v184 = 0;
        v183 = 1;
        memset(&v197, 0, sizeof(v197));
        sub_100007E30(&v197, v6 + 74);
        for (i = 0; i != 31; ++i)
        {
          if ((*(v6 + 138) & (1 << i)) != 0)
          {
            *v193 = 0;
            sub_100016250(v193);
            *buf = *v193;
            *&buf[8] = *&v193[4];
            sub_100539554(v8, 1 << i, 4, buf, 0);
          }
        }

        v10 = qword_100BCE940;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v6 + 138);
          if (qword_100B50AC0 != -1)
          {
            sub_100841F18();
          }

          v12 = sub_1000DFA00(off_100B50AB8, v8);
          v13 = *(v6 + 130);
          *buf = 67109632;
          *&buf[4] = v11;
          *&buf[8] = 1024;
          *&buf[10] = v12;
          *&buf[14] = 1024;
          *&buf[16] = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating in memory device service capability details: received service mask %x, device service mask after update %x, blob version %d", buf, 0x14u);
        }

        v14 = sub_10000E92C();
        if ((*(*v14 + 8))(v14))
        {
          v15 = qword_100BCE960;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v193);
            v16 = v193;
            if (v196 < 0)
            {
              v16 = *v193;
            }

            v17 = *(v6 + 38);
            *buf = 136447490;
            *&buf[4] = v16;
            *&buf[12] = 1024;
            *&buf[14] = v17;
            *&buf[18] = 1040;
            *&buf[20] = 16;
            *&buf[24] = 2096;
            *&buf[26] = v6 + 6;
            *&buf[34] = 1040;
            *&buf[36] = 16;
            *v192 = 2096;
            *&v192[2] = v6 + 22;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Update received for magic device %{public}s with info,  ratchet = %d accessory key %.16P and Hint %.16P", buf, 0x32u);
            if (v196 < 0)
            {
              operator delete(*v193);
            }
          }

          v18 = qword_100BCE960;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v193);
            v19 = v193;
            if (v196 < 0)
            {
              v19 = *v193;
            }

            v20 = &v197;
            if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = v197.__r_.__value_.__r.__words[0];
            }

            *buf = 136447490;
            *&buf[4] = v19;
            *&buf[12] = 2080;
            *&buf[14] = v20;
            *&buf[22] = 1040;
            *&buf[24] = 16;
            *&buf[28] = 2096;
            *&buf[30] = v6 + 42;
            *&buf[38] = 1040;
            *v192 = 16;
            *&v192[4] = 2096;
            *&v192[6] = v6 + 58;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Update received for magic device %{public}s with info,  name = %s IRK %.16P and Enc Key %.16P", buf, 0x36u);
            if (v196 < 0)
            {
              operator delete(*v193);
            }
          }
        }

        for (j = *(a1 + 176); j != *(a1 + 184); ++j)
        {
          v22 = *j;
          if (**j == v8)
          {
            goto LABEL_37;
          }
        }

        v22 = 0;
LABEL_37:
        v182 = 0;
        v23 = sub_1000C2364(v8, &v182, &v184 + 1, &v184, &v183);
        v24 = qword_100BCE960;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(v6 + 71);
          v26 = *(v6 + 72);
          *buf = 67110400;
          *&buf[4] = v25;
          *&buf[8] = 1024;
          *&buf[10] = v26;
          *&buf[14] = 1024;
          *&buf[16] = v23;
          *&buf[20] = 1024;
          *&buf[22] = HIDWORD(v184);
          *&buf[26] = 1024;
          *&buf[28] = v184;
          *&buf[32] = 1024;
          *&buf[34] = v182;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device vid/pid from cloud vid - %x, cloud pid - %x; (%d) Local vid - %x, Local pid - %x, Local vidSrc - %x", buf, 0x26u);
        }

        if (*(v6 + 71) && *(v6 + 72))
        {
          if (v182 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v182;
          }

          v28 = qword_100BCE960;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(v6 + 71);
            v30 = *(v6 + 72);
            *buf = 67109376;
            *&buf[4] = v29;
            *&buf[8] = 1024;
            *&buf[10] = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "New Magic Paired Device's Cloud vid - %x, Cloud pid - %x", buf, 0xEu);
          }

          v31 = *(v6 + 71);
          v32 = *(v6 + 72);
          v184 = __PAIR64__(v31, v32);
          sub_10053D890(v8, v27, v31, v32, v183);
        }

        if (*(v6 + 130))
        {
          v33 = *(v6 + 148);
          v34 = v33 & 0xF;
          v35 = v33 >> 4;
          v36 = *(v6 + 147);
          v37 = v34 | (v33 >> 4 << 8);
          v38 = qword_100BCE960;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v37;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Retrieved double tap from cloud: %d", buf, 8u);
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v39 = sub_10033BE98(off_100B50948, v8, v34 | (v35 << 8), (v36 >> 4) & 1);
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v41 = v35;
          }

          else
          {
            v41 = BYTE1(v39);
          }

          if (v40)
          {
            v42 = v34;
          }

          else
          {
            v42 = v39;
          }

          if (sub_1000E3188(v8) != v39)
          {
            v43 = qword_100BCE960;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Updating double tap settings from cloud", buf, 2u);
            }

            if ((v36 & 8) != 0)
            {
              if (qword_100B50950 != -1)
              {
                sub_100841B9C();
              }

              sub_10033DD54(off_100B50948, v8, v41, v42, 4);
            }
          }

          v44 = *(v6 + 147) & 3;
          if (v44 == 2)
          {
            v45 = 2;
          }

          else
          {
            v45 = v44 == 1;
          }

          if (sub_1000E3314(v8) != v45)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_10033DA80(off_100B50948, v8, v45, 4);
          }

          if (*(v6 + 149))
          {
            sub_10054AE4C(v8, *(v6 + 149));
            v46 = qword_100BCE960;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, buf);
              v47 = buf[23];
              v48 = *buf;
              v49 = sub_1000C2398(v8);
              *v193 = 136446466;
              v50 = buf;
              if (v47 < 0)
              {
                v50 = v48;
              }

              *&v193[4] = v50;
              v194 = 1024;
              v195 = v49;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Color info updated for device %{public}s, color code %d", v193, 0x12u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }

          v51 = *(v6 + 147) & 4;
          v52 = qword_100BCE960;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v193);
            v53 = v196;
            v54 = *v193;
            v55 = sub_1000E356C(v8);
            v56 = v193;
            if (v53 < 0)
            {
              v56 = v54;
            }

            if (v51)
            {
              v57 = "Enabled";
            }

            else
            {
              v57 = "Disabled";
            }

            *buf = 136446722;
            *&buf[4] = v56;
            *&buf[12] = 2080;
            if (v55)
            {
              v58 = "Enabled";
            }

            else
            {
              v58 = "Disabled";
            }

            *&buf[14] = v57;
            *&buf[22] = 2080;
            *&buf[24] = v58;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "In Ear Detection state update from cloud for device %{public}s is %s, local state %s", buf, 0x20u);
            if (v196 < 0)
            {
              operator delete(*v193);
            }
          }

          if (sub_1000E356C(v8) != v51 >> 2)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_10033DF90(off_100B50948, v8, v51 != 0, 4);
          }

          v59 = qword_100BCE960;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, buf);
            v60 = buf;
            if (buf[23] < 0)
            {
              v60 = *buf;
            }

            v61 = *(v6 + 75);
            *v193 = 136446466;
            *&v193[4] = v60;
            v194 = 1024;
            v195 = v61;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Update listening mode services for device %{public}s with service - %d", v193, 0x12u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v62 = (*(v6 + 75) >> 5) & 0x700 | (*(v6 + 75) >> 10) & 7u;
          v63 = qword_100BCE960;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v193);
            v64 = v196;
            v65 = *v193;
            v66 = sub_1000E06EC(v8);
            *buf = 136446722;
            v67 = v193;
            if (v64 < 0)
            {
              v67 = v65;
            }

            *&buf[4] = v67;
            *&buf[12] = 1024;
            *&buf[14] = v66;
            *&buf[18] = 1024;
            *&buf[20] = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Click Hold mode info update for device %{public}s, current value: %d, cloud value %d", buf, 0x18u);
            if (v196 < 0)
            {
              operator delete(*v193);
            }
          }

          if (v62 && sub_1000E06EC(v8) != v62)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_100331844(off_100B50948, v8, 22, v62, 4);
            v68 = qword_100BCE960;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, buf);
              v69 = buf[23];
              v70 = *buf;
              v71 = sub_1000E06EC(v8);
              *v193 = 136446466;
              v72 = buf;
              if (v69 < 0)
              {
                v72 = v70;
              }

              *&v193[4] = v72;
              v194 = 1024;
              v195 = v71;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Click Hold mode info updated for device %{public}s, new mode %d", v193, 0x12u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }

          v73 = (*(v6 + 75) >> 7) & 7;
          v74 = qword_100BCE960;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v193);
            v75 = v196;
            v76 = *v193;
            v77 = sub_1000E32CC(v8);
            *buf = 136446722;
            v78 = v193;
            if (v75 < 0)
            {
              v78 = v76;
            }

            *&buf[4] = v78;
            *&buf[12] = 1024;
            *&buf[14] = v77;
            *&buf[18] = 1024;
            *&buf[20] = v73;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Listening mode config update for device %{public}s, current value: %d, cloud configs: %d", buf, 0x18u);
            if (v196 < 0)
            {
              operator delete(*v193);
            }
          }

          if (v73 && sub_1000E32CC(v8) != v73)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_100331844(off_100B50948, v8, 26, v73, 4);
            v79 = qword_100BCE960;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, buf);
              v80 = buf[23];
              v81 = *buf;
              v82 = sub_1000E32CC(v8);
              *v193 = 136446466;
              v83 = buf;
              if (v80 < 0)
              {
                v83 = v81;
              }

              *&v193[4] = v83;
              v194 = 1024;
              v195 = v82;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Listening mode config updated for device %{public}s, new configs %d", v193, 0x12u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }

          v84 = *(v6 + 75) & 0x40;
          v85 = qword_100BCE960;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v193);
            v86 = v196;
            v87 = *v193;
            v88 = sub_1000E2140(v8, 0x20u);
            *buf = 136446722;
            v89 = v193;
            if (v86 < 0)
            {
              v89 = v87;
            }

            *&buf[4] = v89;
            *&buf[12] = 1024;
            *&buf[14] = v88;
            *&buf[18] = 1024;
            *&buf[20] = v84 >> 6;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "TiPi supported flag update from macOS %{public}s, current local value: %d, macOS value: %d", buf, 0x18u);
            if (v196 < 0)
            {
              operator delete(*v193);
            }
          }

          if (v84)
          {
            if (!sub_1000E2140(v8, 0x20u))
            {
              sub_10053E4FC(v8, 32, 1);
              if (!sub_1000E5DB8(v8))
              {
                sub_100546280(v8, 1);
              }
            }
          }

          v90 = (*(v6 + 150) >> 2) & 3;
          v91 = qword_100BCE960;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v8, v193);
            v92 = v196;
            v93 = *v193;
            v94 = sub_1005493C4(v8);
            *buf = 136446722;
            v95 = v193;
            if (v92 < 0)
            {
              v95 = v93;
            }

            *&buf[4] = v95;
            *&buf[12] = 1024;
            *&buf[14] = v94;
            *&buf[18] = 1024;
            *&buf[20] = v90;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "One Bud ANC mode update for device %{public}s, current value: %d, cloud value %d", buf, 0x18u);
            if (v196 < 0)
            {
              operator delete(*v193);
            }
          }

          v96 = sub_1000E2140(v8, 0x2Bu);
          if (v90)
          {
            v97 = v96;
          }

          else
          {
            v97 = 1;
          }

          if ((v97 & 1) == 0 && sub_1005493C4(v8) != v90)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            sub_100331844(off_100B50948, v8, 27, v90, 4);
            v98 = qword_100BCE960;
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v8, buf);
              v99 = buf[23];
              v100 = *buf;
              v101 = sub_1005493C4(v8);
              *v193 = 136446466;
              v102 = buf;
              if (v99 < 0)
              {
                v102 = v100;
              }

              *&v193[4] = v102;
              v194 = 1024;
              v195 = v101;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "One Bud ANC mode updated for device %{public}s, new mode %d", v193, 0x12u);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }
        }

        if (!v22)
        {
          operator new();
        }

        *(v22 + 5) = *(v6 + 6);
        *(v22 + 7) = *(v6 + 22);
        v103 = *(v6 + 38);
        if (v103)
        {
          *(v22 + 18) = v103;
        }

        *(v22 + 1) = *(v6 + 42);
        *(v22 + 77) = 0;
        v104 = *(*v22 + 66);
        *(v22 + 78) = *(*v22 + 32);
        *(v22 + 41) = v104;
        *(v22 + 3) = *(v6 + 58);
        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&__str, v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_);
        }

        else
        {
          __str = v197;
        }

        std::string::operator=((v22 + 11), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v108 = sub_100538D30(v8, &v197, 1);
        *(v22 + 21) = 2;
        if (*(a1 + 48) == 1 && (*(v22 + 78) << 40) | (*(v22 + 79) << 32) | (*(v22 + 80) << 24) | (*(v22 + 81) << 16) | (*(v22 + 82) << 8) | *(v22 + 83))
        {
          v110 = sub_100007EE8(v108, v109);
          v179[0] = _NSConcreteStackBlock;
          v179[1] = 3221225472;
          v179[2] = sub_100560028;
          v179[3] = &unk_100AE0880;
          v179[4] = v22;
          v179[5] = a2;
          v180 = v174;
          sub_10000D334(v110, v179);
        }

        for (k = 0; k != 31; ++k)
        {
          if ((*(v6 + 138) & (1 << k)) != 0)
          {
            *v193 = 0;
            sub_100016250(v193);
            *buf = *v193;
            *&buf[8] = *&v193[4];
            sub_100539554(v8, 1 << k, 4, buf, 1);
          }
        }

        v112 = qword_100BCE940;
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          v113 = *(v6 + 138);
          if (qword_100B50AC0 != -1)
          {
            sub_100841F18();
          }

          v114 = sub_1000DFA00(off_100B50AB8, v8);
          v115 = *(v6 + 130);
          *buf = 67109632;
          *&buf[4] = v113;
          *&buf[8] = 1024;
          *&buf[10] = v114;
          *&buf[14] = 1024;
          *&buf[16] = v115;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Device service capability details: received service mask %x, device service mask after update %x, blob version %d", buf, 0x14u);
        }

        if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v197.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v105 = 0;
        while (v105 != 5)
        {
          if (v8[v105++ + 129])
          {
            if ((v105 - 1) < 5)
            {
              goto LABEL_10;
            }

            break;
          }
        }

        v107 = qword_100BCE960;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          sub_10084272C(&v185, v186);
        }
      }

      v5 = v174 + 1;
    }

    while (v174 + 1 != v171);
  }

  memset(buf, 0, 24);
  v116 = *(a1 + 176);
  if (v116 != *(a1 + 184))
  {
    v173 = 0;
    while (1)
    {
      v117 = *v116;
      v118 = *(*v116 + 84);
      if (v118 == 1)
      {
        *(v117 + 84) = 3;
        v119 = *v117;
        v120 = *&buf[8];
        if (*&buf[8] >= *&buf[16])
        {
          v122 = (*&buf[8] - *buf) >> 3;
          if ((v122 + 1) >> 61)
          {
            sub_1000C7698();
          }

          v123 = (*&buf[16] - *buf) >> 2;
          if (v123 <= v122 + 1)
          {
            v123 = v122 + 1;
          }

          if (*&buf[16] - *buf >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v124 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v124 = v123;
          }

          if (v124)
          {
            sub_100008108(buf, v124);
          }

          v125 = (8 * v122);
          *v125 = v119;
          v121 = 8 * v122 + 8;
          v126 = v125 - (*&buf[8] - *buf);
          memcpy(v126, *buf, *&buf[8] - *buf);
          v127 = *buf;
          *buf = v126;
          *&buf[8] = v121;
          *&buf[16] = 0;
          if (v127)
          {
            operator delete(v127);
          }
        }

        else
        {
          **&buf[8] = v119;
          v121 = v120 + 8;
        }

        *&buf[8] = v121;
        v128 = qword_100BCE960;
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*v117, &v197);
          v129 = (v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v197 : v197.__r_.__value_.__r.__words[0];
          *v193 = 136446210;
          *&v193[4] = v129;
          _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Local device info for device %{public}s needs to be pruned", v193, 0xCu);
          if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v197.__r_.__value_.__l.__data_);
          }
        }

        v118 = *(v117 + 84);
      }

      if (!v118)
      {
        break;
      }

      if (v118 == 2)
      {
        *(v117 + 84) = 1;
        v130 = qword_100BCE960;
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*v117, &v197);
          v131 = (v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v197 : v197.__r_.__value_.__r.__words[0];
          *v193 = 136446210;
          *&v193[4] = v131;
          _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Local device info for device %{public}s needs to be updated", v193, 0xCu);
          if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v197.__r_.__value_.__l.__data_);
          }
        }

LABEL_223:
      }

      if (++v116 == *(a1 + 184))
      {
        goto LABEL_227;
      }
    }

    v130 = qword_100BCE960;
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*v117, &v197);
      v132 = (v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v197 : v197.__r_.__value_.__r.__words[0];
      *v193 = 136446210;
      *&v193[4] = v132;
      _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Local device info for device %{public}s needs to be sent to cloud", v193, 0xCu);
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }
    }

    v173 = 1;
    goto LABEL_223;
  }

  v173 = 0;
LABEL_227:
  sub_10000801C(v189);
  v135 = *buf;
  if (*buf != *&buf[8])
  {
    while (1)
    {
      v136 = sub_1000E2738(v133, v134);
      v133 = (*(*v136 + 104))(v136, *v135);
      if (*(a1 + 48) == 1)
      {
        break;
      }

LABEL_262:
      if (++v135 == *&buf[8])
      {
        goto LABEL_263;
      }
    }

    v137 = *v135;
    v138 = +[CloudPairing sharedInstance];
    v139 = [v138 cloudClient];
    sub_1000BE6F8((v137 + 128), &v197);
    if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v140 = &v197;
    }

    else
    {
      v140 = v197.__r_.__value_.__r.__words[0];
    }

    v141 = [NSString stringWithUTF8String:v140];
    v178[0] = _NSConcreteStackBlock;
    v178[1] = 3221225472;
    v178[2] = sub_1005605C4;
    v178[3] = &unk_100AFC848;
    v178[4] = v137;
    [v139 deleteDeviceRecord:v141 completion:v178];

    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    v142 = +[CloudPairing sharedInstance];
    v143 = [v142 cloudClient];
    sub_1000BE6F8((v137 + 128), &v197);
    if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v144 = &v197;
    }

    else
    {
      v144 = v197.__r_.__value_.__r.__words[0];
    }

    v145 = [NSString stringWithUTF8String:v144];
    v177[0] = _NSConcreteStackBlock;
    v177[1] = 3221225472;
    v177[2] = sub_100560708;
    v177[3] = &unk_100AFC848;
    v177[4] = v137;
    [v143 deleteMagicSettingsRecord:v145 completion:v177];

    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    v146 = +[CloudPairing sharedInstance];
    v147 = [v146 cloudClient];
    sub_1000BE6F8((v137 + 128), &v197);
    if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v148 = &v197;
    }

    else
    {
      v148 = v197.__r_.__value_.__r.__words[0];
    }

    v149 = [NSString stringWithUTF8String:v148];
    v176[0] = _NSConcreteStackBlock;
    v176[1] = 3221225472;
    v176[2] = sub_10056084C;
    v176[3] = &unk_100AFC848;
    v176[4] = v137;
    [v147 deleteDeviceSupportInformationRecord:v149 completion:v176];

    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    if (!sub_1000C0348(v137))
    {
LABEL_259:
      if (qword_100B50F88 != -1)
      {
        sub_100841B74();
      }

      v133 = sub_1006E0DBC(off_100B50F80, *v135);
      goto LABEL_262;
    }

    v190[0] = 0;
    sub_1000216B4(v190);
    v150 = sub_10023BD60(v137 + 128);
    v151 = qword_100BCE960;
    v152 = v151;
    if (v150)
    {
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v137, &v197);
        if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v153 = &v197;
        }

        else
        {
          v153 = v197.__r_.__value_.__r.__words[0];
        }

        *v193 = 136315394;
        *&v193[4] = v153;
        v194 = 1024;
        v195 = v150;
        _os_log_error_impl(&_mh_execute_header, v152, OS_LOG_TYPE_ERROR, "Magic Pairing disconnect failed for %s when removing magic pairing status: %d", v193, 0x12u);
        goto LABEL_256;
      }
    }

    else if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v137, &v197);
      if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v154 = &v197;
      }

      else
      {
        v154 = v197.__r_.__value_.__r.__words[0];
      }

      *v193 = 136315138;
      *&v193[4] = v154;
      _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "Magic Pairing disconnected for %s as update is from legacy cloud removing magic pairing", v193, 0xCu);
LABEL_256:
      if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v197.__r_.__value_.__l.__data_);
      }
    }

    sub_10002249C(v190);
    goto LABEL_259;
  }

LABEL_263:
  sub_100007FB8(v189);
  v156 = *(a1 + 176);
  for (m = *(a1 + 184); v156 != m; ++v156)
  {
    v157 = *v156;
    if (*(*v156 + 84) == 3)
    {
      if (*(v157 + 111) < 0)
      {
        operator delete(*(v157 + 88));
      }

      operator delete();
    }
  }

  sub_10000801C(v189);
  if (*(a1 + 48) == 1)
  {
    v197.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&v197);
    sub_10055867C(a1);
    sub_10002249C(&v197);
  }

  sub_1005599FC(a1);
  *(a1 + 242) = 0;
  v158 = qword_100BCE960;
  if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
  {
    v159 = "No";
    if (v173)
    {
      v159 = "Yes";
    }

    LODWORD(v197.__r_.__value_.__l.__data_) = 136446210;
    *(v197.__r_.__value_.__r.__words + 4) = v159;
    _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "Magic Device list Update Required ? %{public}s", &v197, 0xCu);
  }

  if (v173)
  {
    sub_100559EDC(a1, v160);
  }

  if ((*(a1 + 240) & 1) == 0)
  {
    v161 = qword_100BCE960;
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
    {
      v162 = (*(a1 + 184) - *(a1 + 176)) >> 3;
      LODWORD(v197.__r_.__value_.__l.__data_) = 134217984;
      *(v197.__r_.__value_.__r.__words + 4) = v162;
      _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "Initial Magic Devices Initialized with devices: %lu", &v197, 0xCu);
    }

    *(a1 + 240) = 1;
    memset(&v197, 0, sizeof(v197));
    if (qword_100B508A0 != -1)
    {
      sub_100842768();
    }

    sub_1000AD9D8(off_100B50898, &v197);
    v163 = v197.__r_.__value_.__r.__words[0];
    if (v197.__r_.__value_.__r.__words[0] != v197.__r_.__value_.__l.__size_)
    {
      do
      {
        v164 = *v163;
        v165 = (*v163)[1016];
        if (_os_feature_enabled_impl())
        {
          if ((sub_1000E31D0(v164) & 2) != 0)
          {
            v166 = 0;
          }

          else
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            v166 = sub_10033748C(off_100B50948, v164);
          }
        }

        else
        {
          v166 = 1;
        }

        v167 = sub_1000DFB74(v164, 0x80000u);
        if (v167 == 4 && v166 && (v165 & 1) == 0 && (v164[1046] & 1) == 0 && (v164[1045] & 1) == 0 && (v164[1044] != 1 || sub_1000E2570(v167, v164)))
        {
          v168 = qword_100BCE960;
          if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v164, v193);
            v169 = v193;
            if (v196 < 0)
            {
              v169 = *v193;
            }

            *v190 = 136446210;
            *&v190[4] = v169;
            _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "Send Magic Keys to connected device: %{public}s", v190, 0xCu);
            if (v196 < 0)
            {
              operator delete(*v193);
            }
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          sub_1003337DC(off_100B50948, v164);
        }

        ++v163;
      }

      while (v163 != v197.__r_.__value_.__l.__size_);
      v163 = v197.__r_.__value_.__r.__words[0];
    }

    if (v163)
    {
      v197.__r_.__value_.__l.__size_ = v163;
      operator delete(v163);
    }
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return sub_1000088CC(v189);
}

void sub_10055FC00(_Unwind_Exception *a1)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *(v2 - 240);
  if (v5)
  {
    *(v2 - 232) = v5;
    operator delete(v5);
  }

  sub_1000088CC(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_100560028(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, (*(a1 + 32) + 77), *(a1 + 40) + 152 * *(a1 + 48) + 58);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = (*(a1 + 32) + 77);
  v4 = *(a1 + 40) + 152 * *(a1 + 48) + 42;

  sub_1007BE07C(v2, v3, v4);
}

void sub_1005600D0(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, (*(a1 + 32) + 77), *(a1 + 40) + 152 * *(a1 + 48) + 58);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = (*(a1 + 32) + 77);
  v4 = *(a1 + 40) + 152 * *(a1 + 48) + 42;

  sub_1007BE07C(v2, v3, v4);
}

void sub_100560174(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE960;
  v8 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (!v5 || v6)
  {
    if (v8)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "After legacy magic pairing, unable to fetch magic setting record: %@, Error: %@", &buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "After legacy magic pairing, fetched magic setting record: %@", &buf, 0xCu);
    }

    v9 = [v5 deviceIDFeatureBitsV1];
    v10 = [v9 length] == 0;

    if (!v10)
    {
      LODWORD(v26) = 0;
      v11 = [v5 deviceIDFeatureBitsV1];
      v12 = v11;
      sub_100007E30(&buf, [v11 UTF8String]);
      v13 = std::stoul(&buf, 0, 0);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v14 = sub_10053E4A8(*(a1 + 32), &v26);
      if (v26 == v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      if ((v15 & 1) == 0)
      {
        v16 = qword_100BCE960;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BE6F8((*(a1 + 32) + 128), &buf);
          v17 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          *v27 = 136446466;
          *&v27[4] = v17;
          v28 = 1024;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetched iCloud update for DID supported feature bits version 1, address: %{public}s, supported feature bits 0x%x", v27, 0x12u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        sub_10053DCEC(*(a1 + 32), v13, 0);
      }
    }

    v18 = [v5 deviceIDFeatureBitsV2];
    v19 = [v18 length] == 0;

    if (!v19)
    {
      v26 = 0;
      v20 = [v5 deviceIDFeatureBitsV2];
      v21 = v20;
      sub_100007E30(&buf, [v20 UTF8String]);
      v22 = std::stoull(&buf, 0, 0);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v25 = __ROR8__(v22, 32);
      if (!sub_10053E4E0(*(a1 + 32), &v26) || v26 != v25)
      {
        v23 = qword_100BCE960;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000BE6F8((*(a1 + 32) + 128), v27);
          if (v30 >= 0)
          {
            v24 = v27;
          }

          else
          {
            v24 = *v27;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
          *(buf.__r_.__value_.__r.__words + 4) = v24;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = HIDWORD(v22);
          WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(buf.__r_.__value_.__r.__words[2]) = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Apply Fetched iCloud update for DID extended supported feature bits version 2, address: %{public}s, extended supported feature bits I1: 0x%x, I2: 0x%x", &buf, 0x18u);
          if (v30 < 0)
          {
            operator delete(*v27);
          }
        }

        HIDWORD(v26) |= v22;
        sub_10053DFDC(*(a1 + 32), v26, 0);
      }
    }
  }
}

void sub_1005605C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100842790();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP] Removed cloud device for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100560708(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_1008427E0();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP] Removed new cloud magic settings for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10056084C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100842830();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MP] Removed cloud info settings for %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100560998(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v4 = a2;
  v6 = sub_1000E25D8(a1, a2);
  v7 = qword_100BCE960;
  v8 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = "Signed in";
      if (!v4)
      {
        v9 = "Not Signed in";
      }

      v10 = a3;
      if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = a3->__r_.__value_.__r.__words[0];
      }

      *buf = 136446723;
      *&buf[4] = v9;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      v18 = 2081;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Cloud Sign in status as %{public}s for %{private, mask.hash}s", buf, 0x20u);
    }

    v16[0] = 0;
    v16[1] = 0;
    sub_100007F88(v16, a1 + 104);
    *(a1 + 241) = v4;
    if (v4)
    {
      std::string::operator=((a1 + 216), a3);
      (*(**(a1 + 168) + 16))(*(a1 + 168));
      if (*(a1 + 49) != 0)
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_100007F88(buf, a1 + 104);
        v11 = *(a1 + 176);
        v12 = *(a1 + 184);
        sub_1000088CC(buf);
        if (v11 == v12 && (*(a1 + 240) & 1) == 0)
        {
          (*(**(a1 + 168) + 32))(*(a1 + 168));
        }
      }

      sub_100560C50(a1);
    }

    else
    {
      sub_1005580E0(a1, 0);
    }

    sub_100560D78(a1);
    if (qword_100B53FC8 != -1)
    {
      sub_100842880();
    }

    v13 = qword_100B53FC0;
    v14 = *(a1 + 241);
    if (*(a1 + 239) < 0)
    {
      sub_100008904(&__p, *(a1 + 216), *(a1 + 224));
    }

    else
    {
      __p = *(a1 + 216);
    }

    sub_100319A20(v13, v14, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1000088CC(v16);
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cloudSignStatusChanged, Magic Pairing not supported", buf, 2u);
  }
}

void sub_100560C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

void sub_100560C50(uint64_t a1)
{
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 245);
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resync Local Records to Cloud, in-progress - %d", buf, 8u);
  }

  if ((*(a1 + 245) & 1) == 0)
  {
    if (*(a1 + 208))
    {
      *(a1 + 245) = 1;
      v4 = dispatch_time(0, 120000000000);
      v5 = *(a1 + 208);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100563A00;
      block[3] = &unk_100ADF8F8;
      block[4] = a1;
      dispatch_after(v4, v5, block);
    }
  }
}

void sub_100560D78(uint64_t a1)
{
  if (*(a1 + 241) != 1)
  {
    v3 = 0;
    goto LABEL_12;
  }

  v2 = (a1 + 216);
  if ((*(a1 + 239) & 0x80000000) == 0)
  {
    if (!*(a1 + 239))
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (*(a1 + 224))
  {
    v2 = *v2;
LABEL_8:
    v4 = CFStringCreateWithCString(0, v2, 0x8000100u);
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }

    if (*(a1 + 241))
    {
      goto LABEL_14;
    }

LABEL_12:
    v5 = @"SignedOut";
    goto LABEL_15;
  }

LABEL_13:
  v3 = 0;
LABEL_14:
  v5 = @"SignedIn";
LABEL_15:
  CFPreferencesSetAppValue(@"SignInstatus", v5, @"com.apple.BTServer");
  CFPreferencesSetAppValue(@"CloudAccountID", v3, @"com.apple.BTServer");
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_100560E64(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a2 = *(a1 + 241);
  v5 = (a1 + 216);
  if (*(a1 + 239) < 0)
  {
    sub_100008904(v8, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    *v8 = *v5;
    *&v8[16] = *(a1 + 232);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = *v8;
  *(a3 + 16) = *&v8[16];
  v6 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Not Signed in";
    if (*(a1 + 241))
    {
      v7 = "Signed in";
    }

    if (*(a1 + 239) < 0)
    {
      v5 = *v5;
    }

    *v8 = 136446723;
    *&v8[4] = v7;
    *&v8[12] = 2160;
    *&v8[14] = 1752392040;
    *&v8[22] = 2081;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Current Cloud Sign in status as %{public}s with login %{private, mask.hash}s", v8, 0x20u);
  }
}

uint64_t sub_100560FB0(uint64_t result, uint64_t a2, int a3)
{
  if (a3 > 4096)
  {
    v5 = result;
    v52[0] = 0;
    v52[1] = 0;
    sub_100007F88(v52, result + 104);
    v6 = *(v5 + 176);
    v7 = *(v5 + 184);
    if (v6 == v7)
    {
      return sub_1000088CC(v52);
    }

    while (1)
    {
      v8 = *v6;
      if (**v6 == a2)
      {
        break;
      }

      if (++v6 == v7)
      {
        return sub_1000088CC(v52);
      }
    }

    v9 = qword_100BCE960;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, v54);
      v10 = v55 >= 0 ? v54 : *v54;
      v11 = *(v5 + 242) ? "in" : "not in";
      *buf = 67109634;
      *&buf[4] = a3;
      *&buf[8] = 2082;
      *&buf[10] = v10;
      *&buf[18] = 2082;
      *&buf[20] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Local Magic device info changed (%d) for device %{public}s with cloud sync is %{public}s progress", buf, 0x1Cu);
      if (v55 < 0)
      {
        operator delete(*v54);
      }
    }

    if (*(v5 + 242))
    {
      return sub_1000088CC(v52);
    }

    switch(a3)
    {
      case 4102:
        if ((sub_1000E31D0(a2) & 2) != 0)
        {
          v18 = qword_100BCE960;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v19 = buf[23] >= 0 ? buf : *buf;
            *v54 = 136446210;
            *&v54[4] = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fake magic paired device %{public}s", v54, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v20 = *(v8 + 21);
          if (v20 != 1)
          {
            if (!v20)
            {
              sub_1000DEEA4(a2, buf);
              sub_100538D30(a2, buf, 0);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v21 = sub_10055993C(v5 + 176, a2);
              v23 = sub_1000E2738(v21, v22);
              (*(*v23 + 104))(v23, a2);
            }

            return sub_1000088CC(v52);
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v29 = sub_1003360F8(off_100B50948, a2);
          if (!v29)
          {
            return sub_1000088CC(v52);
          }

          v31 = v8[3] != 0x101010101010101 || v8[4] != 0x101010101010101;
          v8[1] = 0x101010101010101;
          v8[2] = 0x101010101010101;
          *(v8 + 77) = 0;
          v32 = *(*v8 + 132);
          *(v8 + 78) = *(*v8 + 128);
          *(v8 + 41) = v32;
          v8[3] = 0x101010101010101;
          v8[4] = 0x101010101010101;
          if (*(v5 + 48) == 1)
          {
            sub_100561904(v29, v8);
          }

          if (!v31)
          {
            return sub_1000088CC(v52);
          }
        }

        else
        {
          if (*(v8 + 21))
          {
            return sub_1000088CC(v52);
          }

          if ((sub_1000E31D0(a2) & 2) != 0)
          {
            if (qword_100B50950 != -1)
            {
              sub_100841B9C();
            }

            if (!sub_10033748C(off_100B50948, a2))
            {
              return sub_1000088CC(v52);
            }
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          if (sub_1003360F8(off_100B50948, a2))
          {
            return sub_1000088CC(v52);
          }

          v16 = qword_100BCE960;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v17 = buf[23] >= 0 ? buf : *buf;
            *v54 = 136446210;
            *&v54[4] = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Seems like genuine magic paired device %{public}s, needs to be synced", v54, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }

        break;
      case 4099:
        __dst[0] = 0;
        v13 = sub_10053E4E0(a2, __dst);
        if (HIDWORD(__dst[0]) == -1)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v15 = qword_100BCE960;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_1000BE6F8((a2 + 128), v54);
            v33 = v55 >= 0 ? v54 : *v54;
            *buf = 136446722;
            *&buf[4] = v33;
            *&buf[12] = 1024;
            *&buf[14] = __dst[0];
            *&buf[18] = 1024;
            *&buf[20] = HIDWORD(__dst[0]);
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Dropping iCloud update for DID extended supported feature bits version 2, address: %{public}s, extended supported feature bits I1: 0x%x, I2: 0x%x", buf, 0x18u);
            if (v55 < 0)
            {
              operator delete(*v54);
            }
          }

          return sub_1000088CC(v52);
        }

        break;
      case 4098:
        sub_1000C23E0(a2, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          v24 = *&buf[8];
          operator delete(*buf);
          if (!v24)
          {
            goto LABEL_58;
          }
        }

        else if (!buf[23])
        {
LABEL_58:
          v50 = 1;
          v51 = 0;
          v49 = 0;
          if (sub_1000C2364(a2, &v51, &v49 + 1, &v49, &v50))
          {
            v25 = [CBProductInfo productInfoWithProductID:v49];
            v26 = [v25 productName];

            if (v26)
            {
              v27 = qword_100BCE960;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v54;
                sub_1000E5A58(a2, v54);
                if (v55 < 0)
                {
                  v28 = *v54;
                }

                if (*(v8 + 111) < 0)
                {
                  sub_100008904(__dst, v8[11], v8[12]);
                }

                else
                {
                  *__dst = *(v8 + 11);
                  v48 = v8[13];
                }

                v34 = SHIBYTE(v48);
                v35 = __dst[0];
                sub_1000C23E0(a2, __p);
                v36 = __dst;
                if (v34 < 0)
                {
                  v36 = v35;
                }

                if (v46 >= 0)
                {
                  v37 = __p;
                }

                else
                {
                  v37 = __p[0];
                }

                *buf = 136446722;
                *&buf[4] = v28;
                *&buf[12] = 2080;
                *&buf[14] = v36;
                *&buf[22] = 2080;
                *&buf[24] = v37;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Device name changed to default for %{public}s, Old Name: %s, New Name: %s", buf, 0x20u);
                if (v46 < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(v48) < 0)
                {
                  operator delete(__dst[0]);
                }

                if (v55 < 0)
                {
                  operator delete(*v54);
                }
              }

              sub_100007E30(buf, [v26 utf8ValueSafe]);
              __dst[0] = 0;
              sub_100016250(__dst);
              *v54 = SLODWORD(__dst[0]);
              *&v54[8] = SWORD2(__dst[0]);
              sub_100538494(a2, buf, v54);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }
          }
        }

        v38 = qword_100BCE960;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v54;
          sub_1000E5A58(a2, v54);
          if (v55 < 0)
          {
            v39 = *v54;
          }

          if (*(v8 + 111) < 0)
          {
            sub_100008904(__dst, v8[11], v8[12]);
          }

          else
          {
            *__dst = *(v8 + 11);
            v48 = v8[13];
          }

          v40 = SHIBYTE(v48);
          v41 = __dst[0];
          sub_1000C23E0(a2, __p);
          v42 = __dst;
          if (v40 < 0)
          {
            v42 = v41;
          }

          if (v46 >= 0)
          {
            v43 = __p;
          }

          else
          {
            v43 = __p[0];
          }

          *buf = 136446722;
          *&buf[4] = v39;
          *&buf[12] = 2080;
          *&buf[14] = v42;
          *&buf[22] = 2080;
          *&buf[24] = v43;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Magic device name changed for %{public}s, Old Name: %s, New Name: %s", buf, 0x20u);
          if (v46 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v48) < 0)
          {
            operator delete(__dst[0]);
          }

          if (v55 < 0)
          {
            operator delete(*v54);
          }
        }

        sub_1000C23E0(a2, &v44);
        std::string::operator=((v8 + 11), &v44);
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        break;
    }

    if (*(v8 + 3) != 0 && *(v8 + 1) != 0)
    {
      sub_100559EDC(v5, v12);
    }

    return sub_1000088CC(v52);
  }

  return result;
}

void sub_1005617CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v36 - 105) < 0)
  {
    operator delete(*(v36 - 128));
  }

  sub_1000088CC(&a27);
  _Unwind_Resume(a1);
}

void sub_100561904(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 78) << 40) | (*(a2 + 79) << 32) | (*(a2 + 80) << 24) | (*(a2 + 81) << 16) | (*(a2 + 82) << 8) | *(a2 + 83))
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3812000000;
    v9[3] = sub_100042378;
    v9[4] = nullsub_26;
    v9[5] = "";
    v10 = *(a2 + 77);
    v11 = *(a2 + 78);
    v12 = *(a2 + 82);
    v3 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    v4 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    if (v3 && (v6 = v4) != 0)
    {
      *v3 = *(a2 + 24);
      *v4 = *(a2 + 8);
      v7 = sub_100007EE8(v4, v5);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100563658;
      v8[3] = &unk_100AE0EB8;
      v8[4] = v9;
      v8[5] = v3;
      v8[6] = v6;
      sub_10000CA94(v7, v8);
    }

    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008428A8();
    }

    _Block_object_dispose(v9, 8);
  }
}

void sub_100561AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100561AC8(uint64_t a1, int a2)
{
  v4 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 244);
    *buf = 67109376;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deviceOnlineStatusChanged from [%d] to [%d]", buf, 0xEu);
  }

  v6 = *(a1 + 208);
  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100561BE4;
    v7[3] = &unk_100AE15D8;
    v7[4] = a1;
    v8 = a2;
    dispatch_async(v6, v7);
  }
}

void sub_100561BE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 244) & 1) == 0 && *(a1 + 40) == 1)
  {
    sub_100560C50(*(a1 + 32));
  }

  *(v2 + 244) = *(a1 + 40);
}

void sub_100561C34(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 241) == 1 && (*(a2 + 1044) != 1 || (sub_1000E2570(a1, a2) & 1) != 0))
  {
    v4 = qword_100BCE960;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v5 = v21 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: Updating %{public}s", buf, 0xCu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1000BE6F8((a2 + 128), __p);
    if (v21 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v7 = [NSString stringWithUTF8String:v6];
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = +[CloudPairing sharedInstance];
    v9 = [v8 cloudClient];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100561F64;
    v17[3] = &unk_100AFC8B8;
    v10 = v7;
    v18 = v10;
    v19 = a2;
    [v9 deviceRecord:v10 completion:v17];

    v11 = +[CloudPairing sharedInstance];
    v12 = [v11 cloudClient];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1005626B4;
    v15[3] = &unk_100AFC920;
    v13 = v10;
    v16 = v13;
    [v12 deviceSupportInformationRecord:v13 completion:v15];
  }

  else
  {
    v14 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
    {
      sub_1008428E4(a1, v14);
    }
  }
}

void sub_100561F64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842960();
    }

LABEL_4:

    goto LABEL_5;
  }

  v7 = sub_100777FF4(*(a1 + 32));
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842AD8();
    }

    goto LABEL_4;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100841AAC();
  }

  v8 = sub_1000504C8(off_100B508E8, v7, 0);
  if (!v8)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842A9C();
    }

    goto LABEL_4;
  }

  v9 = qword_100BCE960;
  v10 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: updating pid/vid for cloudDevice", buf, 2u);
    }

    *buf = 0;
    LODWORD(v32) = 0;
    LODWORD(__p[0]) = 0;
    LODWORD(v35) = 0;
    if (sub_1000C2364(*(a1 + 40), buf, &v32, __p, &v35))
    {
      v11 = [NSString stringWithFormat:@"%u", LODWORD(__p[0])];
      [v5 setProductID:v11];

      v12 = [NSString stringWithFormat:@"%u", v32];
      [v5 setVendorID:v12];
    }

    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008429D0();
    }

LABEL_28:
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (sub_1000DFC04(v8, &v32))
    {
      if (qword_100B50950 != -1)
      {
        sub_100841B9C();
      }

      v13 = off_100B50948;
      memset(v31, 0, sizeof(v31));
      sub_10003E428(v31, v32, v33, 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3));
      LODWORD(v13) = sub_10034A4D4(v13, v31, 1u);
      *buf = v31;
      sub_1000161FC(buf);
      if (v13)
      {
        v14 = (v32 + 24);
        if (*(v32 + 47) < 0)
        {
          v14 = *v14;
        }

        v15 = [NSString stringWithUTF8String:v14];
        [v5 setModelNumber:v15];
      }

      if (qword_100B50950 != -1)
      {
        sub_100841B9C();
      }

      v16 = off_100B50948;
      memset(v30, 0, sizeof(v30));
      sub_10003E428(v30, v32, v33, 0xAAAAAAAAAAAAAAABLL * ((v33 - v32) >> 3));
      LODWORD(v16) = sub_10034A4D4(v16, v30, 2u);
      *buf = v30;
      sub_1000161FC(buf);
      if (v16)
      {
        v17 = (v32 + 48);
        if (*(v32 + 71) < 0)
        {
          v17 = *v17;
        }

        v18 = [NSString stringWithUTF8String:v17];
        [v5 setManufacturer:v18];
      }

      v19 = qword_100BCE960;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v8, __p);
        if (v37 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        v21 = [v5 vendorID];
        v22 = [v5 productID];
        v23 = [v5 modelNumber];
        v24 = [v5 manufacturer];
        *buf = 136447234;
        *&buf[4] = v20;
        v39 = 2112;
        v40 = v21;
        v41 = 2112;
        v42 = v22;
        v43 = 2112;
        v44 = v23;
        v45 = 2112;
        v46 = v24;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: cloudDevice for %{public}s vendorId = %@ productId = %@ model = %@ manufacturer = %@ ", buf, 0x34u);

        if (v37 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v25 = +[CloudPairing sharedInstance];
      v26 = [v25 cloudClient];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100562654;
      v28[3] = &unk_100AFC890;
      v29 = 0;
      [v26 createDeviceRecord:v5 completion:v28];

      v27 = v29;
    }

    else
    {
      v27 = qword_100BCE960;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v8, buf);
        sub_100842A0C();
      }
    }

    v35 = &v32;
    sub_1000161FC(&v35);

    goto LABEL_5;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: Creating new cloudDevice", buf, 2u);
  }

  v5 = sub_100558B38(v8);
  if (v5)
  {
    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842A60();
  }

LABEL_5:
}

void sub_100562550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  *(v35 - 144) = &a21;
  sub_1000161FC((v35 - 144));

  _Unwind_Resume(a1);
}

void sub_100562654(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842B14();
  }
}

void sub_1005626B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842B84();
    }
  }

  else
  {
    v8 = sub_100777FF4(*(a1 + 32));
    if (v8)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100841AAC();
      }

      v9 = sub_1000504C8(off_100B508E8, v8, 0);
      if (v9)
      {
        if (!v5)
        {
          v10 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: Creating new deviceSupportInformation", buf, 2u);
          }

          v6 = [[BTCloudDeviceSupportInformation alloc] initWithBluetoothAddress:*(a1 + 32)];
        }

        *buf = 0;
        v40 = 0;
        v41 = 0;
        if (sub_1000DFC04(v9, buf))
        {
          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v11 = off_100B50948;
          memset(v37, 0, sizeof(v37));
          sub_10003E428(v37, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v11) = sub_10034A4D4(v11, v37, 3u);
          __p.__r_.__value_.__r.__words[0] = v37;
          sub_1000161FC(&__p);
          if (v11)
          {
            v12 = (*buf + 72);
            if (*(*buf + 95) < 0)
            {
              v12 = *v12;
            }

            v13 = [NSString stringWithUTF8String:v12];
            [v6 setCaseSerialNumber:v13];
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v14 = off_100B50948;
          memset(v36, 0, sizeof(v36));
          sub_10003E428(v36, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v14) = sub_10034A4D4(v14, v36, 6u);
          __p.__r_.__value_.__r.__words[0] = v36;
          sub_1000161FC(&__p);
          if (v14)
          {
            v15 = (*buf + 144);
            if (*(*buf + 167) < 0)
            {
              v15 = *v15;
            }

            v16 = [NSString stringWithUTF8String:v15];
            [v6 setHardwareVersion:v16];
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v17 = off_100B50948;
          memset(v35, 0, sizeof(v35));
          sub_10003E428(v35, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v17) = sub_10034A4D4(v17, v35, 8u);
          __p.__r_.__value_.__r.__words[0] = v35;
          sub_1000161FC(&__p);
          if (v17)
          {
            v18 = (*buf + 192);
            if (*(*buf + 215) < 0)
            {
              v18 = *v18;
            }

            v19 = [NSString stringWithUTF8String:v18];
            [v6 setLeftBudSerialNumber:v19];
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v20 = off_100B50948;
          memset(v34, 0, sizeof(v34));
          sub_10003E428(v34, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v20) = sub_10034A4D4(v20, v34, 9u);
          __p.__r_.__value_.__r.__words[0] = v34;
          sub_1000161FC(&__p);
          if (v20)
          {
            v21 = (*buf + 216);
            if (*(*buf + 239) < 0)
            {
              v21 = *v21;
            }

            v22 = [NSString stringWithUTF8String:v21];
            [v6 setRightBudSerialNumber:v22];
          }

          if (qword_100B50950 != -1)
          {
            sub_100841B9C();
          }

          v23 = off_100B50948;
          memset(v33, 0, sizeof(v33));
          sub_10003E428(v33, *buf, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - *buf) >> 3));
          LODWORD(v23) = sub_10034A4D4(v23, v33, 0xAu);
          __p.__r_.__value_.__r.__words[0] = v33;
          sub_1000161FC(&__p);
          if (v23)
          {
            v24 = (*buf + 240);
            if (*(*buf + 263) < 0)
            {
              v24 = *v24;
            }

            v25 = [NSString stringWithUTF8String:v24];
            [v6 setBudsFirmwareVersion:v25];
          }

          memset(&__p, 0, sizeof(__p));
          if (sub_100541DD8(v9, &__p))
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v27 = [NSString stringWithUTF8String:p_p];
            [v6 setAncAssetVersion:v27];
          }

          v28 = qword_100BCE960;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v9, v42);
            v29 = v43 >= 0 ? v42 : v42[0];
            *v44 = 136446210;
            *&v44[4] = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "updateAACPVersionInfo: Writing cloud record for %{public}s", v44, 0xCu);
            if (v43 < 0)
            {
              operator delete(v42[0]);
            }
          }

          +[CloudPairing sharedInstance];
          if (v5)
            v30 = {;
            v31 = [v30 cloudClient];
            [v31 modifyDeviceSupportInformationRecord:v6 completion:&stru_100AFC8F8];
          }

          else
            v30 = {;
            v31 = [v30 cloudClient];
            [v31 createDeviceSupportInformationRecord:v6 completion:&stru_100AFC8D8];
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v32 = qword_100BCE960;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v9, &__p);
            sub_100842A0C();
          }
        }

        *v44 = buf;
        sub_1000161FC(v44);
      }

      else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100842A9C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842AD8();
    }
  }
}

void sub_100562D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  __p = &a30;
  sub_1000161FC(&__p);

  _Unwind_Resume(a1);
}

void sub_100562E60(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842BF4();
  }
}

void sub_100562EB8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842C64();
  }
}

void sub_100562F10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = qword_100BCE960;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v4 = v13 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateCaseInfo: Updating %{public}s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1000BE6F8((a2 + 128), __p);
    if (v13 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [NSString stringWithUTF8String:v5];
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = +[CloudPairing sharedInstance];
    v8 = [v7 cloudClient];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100563130;
    v10[3] = &unk_100AFC920;
    v9 = v6;
    v11 = v9;
    [v8 deviceSupportInformationRecord:v9 completion:v10];
  }
}

void sub_100563130(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842CD4();
    }

    goto LABEL_34;
  }

  if (!v5)
  {
    v8 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateCaseInfo: Creating new deviceSupportInformation", buf, 2u);
    }

    v6 = [[BTCloudDeviceSupportInformation alloc] initWithBluetoothAddress:*(a1 + 32)];
  }

  v9 = [v6 bluetoothAddress];
  v10 = sub_100777FF4(v9);

  if (v10)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100841B4C();
    }

    v11 = sub_1000504C8(off_100B508E8, v10, 0);
    if (v11)
    {
      v12 = v23;
      v24 = 0;
      v22 = 0u;
      *v23 = 0u;
      *buf = 0u;
      sub_100007E30(v23, "");
      if (!sub_1000E0610(v11, buf))
      {
        v14 = qword_100BCE960;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000E5A58(v11, v27);
          sub_100842D44();
        }

        goto LABEL_32;
      }

      v13 = [NSString stringWithFormat:@"%llu", v22];
      [v6 setCaseFirmwareVersion:v13];

      if (SHIBYTE(v24) < 0)
      {
        if (v23[1] <= 1)
        {
LABEL_21:
          v16 = qword_100BCE960;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v11, __p);
            if (v26 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            v18 = [v6 caseFirmwareVersion];
            v19 = [v6 caseName];
            *v27 = 136446722;
            v28 = v17;
            v29 = 2112;
            v30 = v18;
            v31 = 2112;
            v32 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "updateCaseInfo: Writing cloud record for %{public}s: caseVersion %@, caseName %@", v27, 0x20u);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          +[CloudPairing sharedInstance];
          if (v5)
            v14 = {;
            v20 = [v14 cloudClient];
            [v20 modifyDeviceSupportInformationRecord:v6 completion:&stru_100AFC960];
          }

          else
            v14 = {;
            v20 = [v14 cloudClient];
            [v20 createDeviceSupportInformationRecord:v6 completion:&stru_100AFC940];
          }

LABEL_32:
          if (SHIBYTE(v24) < 0)
          {
            operator delete(v23[0]);
          }

          goto LABEL_34;
        }

        v12 = v23[0];
      }

      else if (HIBYTE(v24) <= 1u)
      {
        goto LABEL_21;
      }

      v15 = [NSString stringWithUTF8String:v12];
      [v6 setCaseName:v15];

      goto LABEL_21;
    }
  }

LABEL_34:
}

void sub_1005634E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005635A8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842D98();
  }
}

void sub_100563600(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842E08();
  }
}

void sub_100563658(void *a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_10079E618(off_100B51070, (*(a1[4] + 8) + 48), a1[5]);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  sub_1007BE07C(off_100B508B8, (*(a1[4] + 8) + 48), a1[6]);
  free(a1[5]);
  v2 = a1[6];

  free(v2);
}

void sub_1005636F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E25D8(a1, a2);
  v4 = qword_100BCE960;
  v5 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UpdateCloudDeviceInformation triggered", __p, 2u);
    }

    if (*(a1 + 49) == 0)
    {
      v11 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UpdateCloudDeviceInformation trigger, no master key found, pull from cloud", __p, 2u);
      }

      (*(**(a1 + 168) + 16))(*(a1 + 168));
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      sub_100007F88(__p, a1 + 104);
      v6 = *(a1 + 176);
      v7 = *(a1 + 184);
      sub_1000088CC(__p);
      if (v6 == v7 && (*(a1 + 240) & 1) == 0)
      {
        v12 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "UpdateCloudDeviceInformation triggers, Master key is available but no Magic Paired Devices. Let's fetch if any available.", __p, 2u);
        }

        (*(**(a1 + 168) + 32))(*(a1 + 168));
      }

      else
      {
        v17[0] = 0;
        v17[1] = 0;
        sub_100007F88(v17, a1 + 104);
        for (i = *(a1 + 176); i != *(a1 + 184); ++i)
        {
          v10 = *i;
          if (*(*i + 84) != 1 && *(v10 + 24) != 0 && *(v10 + 8) != 0)
          {
            v13 = qword_100BCE960;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(*v10, __p);
              if (v16 >= 0)
              {
                v14 = __p;
              }

              else
              {
                v14 = __p[0];
              }

              *buf = 136446210;
              v19 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Local device info for device %{public}s needs to be pushed again", buf, 0xCu);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_30;
          }
        }

        if (*(a1 + 243) != 1)
        {
          goto LABEL_31;
        }

LABEL_30:
        *(a1 + 243) = 0;
        sub_100559EDC(a1, v8);
LABEL_31:
        sub_10000801C(v17);
        sub_1000088CC(v17);
      }
    }
  }

  else if (v5)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping UpdateCloudDeviceInformation for Magic Pairing, not supported on this platform", __p, 2u);
  }
}

void sub_1005639D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100563A00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[241];
    v5 = v1[244];
    v6[0] = 67109376;
    v6[1] = v4;
    v7 = 1024;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initiate Sync, Signed in - %d, Network available - %d", v6, 0xEu);
  }

  if (v1[241] == 1 && v1[244] == 1)
  {
    sub_1005636F8(v1, v3);
  }

  v1[245] = 0;
}

void sub_100563ADC(uint64_t a1, uint64_t a2)
{
  if (sub_1000E25D8(a1, a2) && (*(a1 + 240) & 1) != 0)
  {
    if (!a2 || (*(a1 + 241) & 1) == 0)
    {
      return;
    }

    v4 = *a2;
    v5 = qword_100BCE960;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, &v85);
      v6 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "writeMagicPairingSettingToCloud Update cloud device information, write magic pairing setting to cloud for %{public}s", buf, 0xCu);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }
    }

    v79 = 1;
    v80 = 0;
    v78 = 0;
    if ((sub_1000C2364(v4, &v80, &v78 + 1, &v78, &v79) & 1) == 0)
    {
      v7 = qword_100BCE960;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, buf);
        v8 = v84 >= 0 ? buf : *buf;
        LODWORD(v85.__r_.__value_.__l.__data_) = 136446722;
        *(v85.__r_.__value_.__r.__words + 4) = v8;
        WORD2(v85.__r_.__value_.__r.__words[1]) = 1024;
        *(&v85.__r_.__value_.__r.__words[1] + 6) = v78;
        WORD1(v85.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(v85.__r_.__value_.__r.__words[2]) = HIDWORD(v78);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeMagicPairingSettingToCloud Error fetching DeviceId for magic paired device %{public}s with pid: %x, vid: %x", &v85, 0x18u);
        if (v84 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    v9 = sub_1000E3314(v4);
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 1;
    }

    if (sub_1000E356C(v4))
    {
      v11 = v10 | 4;
    }

    else
    {
      v11 = v10;
    }

    v12 = qword_100BCE960;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, &v85);
      v13 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
      v14 = v85.__r_.__value_.__r.__words[0];
      v15 = sub_1000E356C(v4);
      v16 = &v85;
      v17 = "disabled";
      if (v13 < 0)
      {
        v16 = v14;
      }

      if (v15)
      {
        v17 = "Enabled";
      }

      *buf = 136446466;
      *&buf[4] = v16;
      v82 = 2080;
      v83 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "In Ear Detection  state for device  %{public}s is %s", buf, 0x16u);
      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }
    }

    if (sub_1000E2140(v4, 0xEu))
    {
      v18 = v11 | 8;
    }

    else
    {
      v18 = v11;
    }

    if (sub_1000E2140(v4, 0x16u))
    {
      v18 |= 0x10u;
    }

    v73 = sub_1000E3188(v4);
    v19 = sub_1000E3188(v4);
    v72 = sub_1000E06EC(v4);
    v71 = sub_1000E06EC(v4);
    v70 = sub_1000E32CC(v4);
    v68 = sub_1000E32CC(v4);
    v20 = sub_1000E2140(v4, 0x20u);
    v69 = sub_1005493C4(v4);
    v67 = sub_1000E31D0(v4);
    if (v20)
    {
      v21 = 64;
    }

    else
    {
      v21 = 0;
    }

    v66 = v21;
    v22 = _os_feature_enabled_impl();
    if (v22)
    {
      v23 = sub_10054B3E0(v4);
      v24 = v23 == 0;

      if (v24)
      {
        v74 = 0;
      }

      else
      {
        v25 = objc_alloc_init(NSDateFormatter);
        v26 = +[NSTimeZone localTimeZone];
        [v25 setTimeZone:v26];

        [v25 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZZ"];
        v27 = sub_10054B3E0(v4);
        v74 = [v25 stringFromDate:v27];
      }

      if (sub_10054B398(v4) != -1)
      {
        v75 = [NSString stringWithFormat:@"%lu", sub_10054B398(v4)];
LABEL_54:
        v33 = [BTMagicPairingSettings alloc];
        sub_1000BE6F8((v4 + 128), &v85);
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v85;
        }

        else
        {
          v34 = v85.__r_.__value_.__r.__words[0];
        }

        v35 = [NSString stringWithUTF8String:v34];
        v36 = [v33 initWithBluetoothAddress:v35];

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        v37 = [NSString stringWithFormat:@"%u", HIDWORD(v78)];
        [v36 setVendorID:v37];

        v38 = [NSString stringWithFormat:@"%u", v78];
        [v36 setProductID:v38];

        v39 = [NSData dataWithBytes:a1 + 49 length:16];
        [v36 setMasterKey:v39];

        v40 = [NSData dataWithBytes:a1 + 65 length:16];
        [v36 setMasterHint:v40];

        v41 = [NSData dataWithBytes:a2 + 40 length:16];
        [v36 setAccessoryKey:v41];

        v42 = [NSData dataWithBytes:a2 + 56 length:16];
        [v36 setAccessoryHint:v42];

        v43 = [NSData dataWithBytes:a2 + 24 length:16];
        [v36 setEncryptionKey:v43];

        v44 = [NSData dataWithBytes:a2 + 8 length:16];
        [v36 setIrk:v44];

        v45 = [NSString stringWithFormat:@"%u", *(a2 + 72)];
        [v36 setRatchet:v45];

        v46 = [NSString stringWithFormat:@"%d", v18];
        [v36 setSettingsMask:v46];

        v47 = [NSString stringWithFormat:@"%d", (v19 >> 4) & 0xFF0 | v73];
        [v36 setButtonModes:v47];

        v48 = [NSString stringWithFormat:@"%u", sub_1000C2398(v4)];
        [v36 setColor:v48];

        v49 = [NSString stringWithFormat:@"%d", 2];
        [v36 setVersion:v49];

        if (qword_100B50AC0 != -1)
        {
          sub_100841F18();
        }

        v50 = [NSString stringWithFormat:@"%u", sub_1000DFA00(off_100B50AB8, v4)];
        [v36 setSupportedServices:v50];

        v51 = [NSString stringWithFormat:@"%u", (32 * v72) & 0xE000 | ((v71 & 7) << 10) | ((v70 & 7) << 7) | v66 & 0xFFFFFFF1 | (4 * (v69 & 3)) | (2 * (v67 & 1))];
        [v36 setListeningServices:v51];

        v52 = [NSString stringWithFormat:@"%u", v68 & 0xF];
        [v36 setListeningServicesV2:v52];

        if (v22)
        {
          if (v75)
          {
            [v36 setOptimizedBatteryCharging:v75];
          }

          if (v74)
          {
            [v36 setOptimizedBatteryFullChargeDeadline:v74];
          }
        }

        __val = 0;
        *buf = 0;
        if (sub_10053E4A8(v4, &__val))
        {
          v53 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v85.__r_.__value_.__l.__data_) = 67109120;
            HIDWORD(v85.__r_.__value_.__r.__words[0]) = __val;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "DID supported fetaure bits (version 1) is updated to 0x%x. Sync to iCloud", &v85, 8u);
          }

          std::to_string(&v85, __val);
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = &v85;
          }

          else
          {
            v54 = v85.__r_.__value_.__r.__words[0];
          }

          v55 = [NSString stringWithUTF8String:v54];
          [v36 setDeviceIDFeatureBitsV1:v55];

          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          v56 = sub_10053E4E0(v4, buf);
          if (*&buf[4] == -1)
          {
            v57 = 0;
          }

          else
          {
            v57 = v56;
          }

          if (v57 == 1)
          {
            v58 = qword_100BCE960;
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v85.__r_.__value_.__l.__data_) = 67109376;
              HIDWORD(v85.__r_.__value_.__r.__words[0]) = *buf;
              LOWORD(v85.__r_.__value_.__r.__words[1]) = 1024;
              *(&v85.__r_.__value_.__r.__words[1] + 2) = *&buf[4];
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "DID extended supported fetaure bits (version 2) is updated to I1 0x%x I2 0x%x. Sync to iCloud", &v85, 0xEu);
            }

            std::to_string(&v85, *&buf[4] | (*buf << 32));
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = &v85;
            }

            else
            {
              v59 = v85.__r_.__value_.__r.__words[0];
            }

            v60 = [NSString stringWithUTF8String:v59];
            [v36 setDeviceIDFeatureBitsV2:v60];

            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }
          }
        }

        v61 = sub_100558B38(v4);
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
        {
          sub_100842E78();
        }

        if (v61)
        {
          v62 = +[CloudPairing sharedInstance];
          v63 = [v62 cloudClient];
          [v63 createDeviceRecord:v61 completion:&stru_100AFC980];
        }

        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEBUG))
        {
          sub_100842EEC();
        }

        v64 = +[CloudPairing sharedInstance];
        v65 = [v64 cloudClient];
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1005648E4;
        v76[3] = &unk_100AFC848;
        v76[4] = v4;
        [v65 createMagicSettingsRecord:v36 completion:v76];

        return;
      }
    }

    else
    {
      v74 = 0;
    }

    v75 = 0;
    goto LABEL_54;
  }

  v28 = qword_100BCE960;
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    v31 = sub_1000E25D8(v29, v30);
    v32 = "supported";
    if (v31)
    {
      v32 = "initialized";
    }

    LODWORD(v85.__r_.__value_.__l.__data_) = 136315138;
    *(v85.__r_.__value_.__r.__words + 4) = v32;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "writeMagicPairingSettingToCloud, Magic Pairing not %s.", &v85, 0xCu);
  }
}