void sub_1006636E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 120);
  if (v4)
  {
    *(v1 - 112) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100663738(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A5D4();
    }
  }

  else
  {
    v22 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v21 = 0;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    sub_100013CA4(0, 1, v10, v11, v12, v13, v14, v15, "kCBLEAudioArgCigId");
    v16 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      sub_10085A5A0();
    }

    v18 = sub_100007EE8(v16, v17);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100677CE4;
    v19[3] = &unk_100AE15D8;
    v19[4] = a1;
    v20 = v21;
    sub_10000CA94(v18, v19);
  }
}

void sub_10066388C(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A610();
    }
  }

  else
  {
    v31 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v30 = 0u;
    memset(&v29[1], 0, 32);
    DWORD2(v30) = 1065353216;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    sub_100013CA4(0, 1, v10, v11, v12, v13, v14, v15, "kCBLEAudioArgCigId");
    array = xpc_dictionary_get_array(0, "kCBLEAudioArgCisId");
    v17 = array;
    if (array && xpc_get_type(array) == &_xpc_type_array && xpc_array_get_count(v17) == v29[2])
    {
      v18 = sub_100066200(v31, "kCBLEAudioArgCisIdentifiers");
      v19 = [v18 count];
      if (v19 == v29[2])
      {
        if (v29[2])
        {
          v21 = 0;
          do
          {
            v29[0] = xpc_array_get_int64(v17, v21);
            if (qword_100B508D0 != -1)
            {
              sub_1000D5C34();
            }

            v22 = off_100B508C8;
            v23 = [v18 objectAtIndex:v21];
            v24 = sub_100046458(v22, v23, 0);

            v32 = v29;
            v19 = sub_10067DAD4(&v29[9], v29, &unk_1008A9BD0, &v32);
            v19[3] = v24;
            ++v21;
          }

          while (v21 < v29[2]);
        }

        v25 = sub_100007EE8(v19, v20);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3321888768;
        v26[2] = sub_100677C6C;
        v26[3] = &unk_100B04E28;
        v26[4] = a1;
        v27 = *&v29[1];
        sub_10067BCBC(v28, &v29[9]);
        sub_10000CA94(v25, v26);
        sub_1001392B8(v28);
      }
    }

    sub_1001392B8(&v29[9]);
  }
}

void sub_100663B3C(_Unwind_Exception *a1)
{
  sub_1001392B8(v2 + 48);

  sub_1001392B8(v3 | 8);
  _Unwind_Resume(a1);
}

void sub_100663B88(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A64C();
    }
  }

  else
  {
    v23 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v22 = 0;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    v16 = sub_100013CA4(v23, 1, v10, v11, v12, v13, v14, v15, "kCBLEAudioArgCigId");
    v18 = sub_100007EE8(v16, v17);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100677D40;
    v19[3] = &unk_100AEB940;
    v19[4] = a1;
    v20 = HIBYTE(v22);
    v21 = v22;
    sub_10000CA94(v18, v19);
  }
}

void sub_100663CD0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A688();
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v25 = 0;
    v24 = 0;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    v16 = sub_100013CA4(v26, 1, v10, v11, v12, v13, v14, v15, "kCBMsgArgBool");
    v18 = sub_100007EE8(v16, v17);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100677DF4;
    v19[3] = &unk_100ADF940;
    v19[4] = a1;
    v20 = v27;
    v21 = HIBYTE(v25);
    v22 = v25;
    v23 = v24;
    sub_10000CA94(v18, v19);
  }
}

void sub_100663E54(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A6C4();
    }
  }

  else
  {
    v3 = sub_100007EE8(a1, a2);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100677DA0;
    v4[3] = &unk_100ADF8F8;
    v4[4] = a1;
    sub_10000CA94(v3, v4);
  }
}

void sub_100663F08(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A700();
    }
  }

  else
  {
    v23 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v22 = 0;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    v16 = sub_100013CA4(v23, 1, v10, v11, v12, v13, v14, v15, "kCBLEAudioArgCigId");
    v18 = sub_100007EE8(v16, v17);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100677E5C;
    v19[3] = &unk_100AEB940;
    v19[4] = a1;
    v20 = HIBYTE(v22);
    v21 = v22;
    sub_10000CA94(v18, v19);
  }
}

void sub_100664050(uint64_t a1, xpc_object_t xdict)
{
  v31 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v30 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgConnectionLatency");
  v12 = qword_100BCE950;
  v13 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *buf = 134217984;
    v33 = v30;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handlePeerSetConnectionLatencyMsg hasCompletionBlock=%lld", buf, 0xCu);
  }

  if (!*(v27 + 6) && v5)
  {
    v15 = sub_100007EE8(v13, v14);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100672A9C;
    v21[3] = &unk_100B04BB0;
    v23 = &v26;
    v24 = a1;
    v22 = v5;
    v25 = v31;
    sub_10000D334(v15, v21);
  }

  v16 = v30;
  v17 = qword_100BCE950;
  v18 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = *(v27 + 6);
      *buf = 67109120;
      LODWORD(v33) = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending error back %d", buf, 8u);
    }

    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", *(v27 + 6));
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
  }

  else if (v18)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not sending response !", buf, 2u);
  }

  _Block_object_dispose(&v26, 8);
}

void sub_1006642F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100664330(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_100013C04(value, "kCBMsgArgName");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      if (*(a1 + 184) == 1 && v4)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100856AE8();
        }

        v6 = off_100B508C8;
        sub_100007E30(__p, [v4 UTF8String]);
        sub_10078787C(v6, v5, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v7 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 96);
        v9 = *(a1 + 48);
        *buf = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }
}

void sub_100664514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100664550(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_100013C04(value, "kCBMsgArgName");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      if (*(a1 + 184) == 1 && v4)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100856AE8();
        }

        sub_10078380C(off_100B508C8, v5, v4);
      }
    }

    else
    {
      v6 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 96);
        v8 = *(a1 + 48);
        v9 = 138412802;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        v13 = 2112;
        v14 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v9, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }
}

void sub_10066472C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  v6 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A73C();
    }

    goto LABEL_20;
  }

  v21 = 0;
  v7 = sub_10000E92C();
  sub_100007E30(buf, "Tags");
  sub_100007E30(__p, "AllowEveryone");
  v8 = (*(*v7 + 72))(v7, buf, __p, &v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(*buf);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else if (!v8)
  {
    goto LABEL_12;
  }

  v9 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tags are for everyone !!!!!!", buf, 2u);
  }

LABEL_12:
  v21 = 1;
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  if ((sub_10004FF0C(off_100B508C8, v6, *(a1 + 96), *(a1 + 48)) & 1) == 0)
  {
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 96);
      v16 = *(a1 + 48);
      *buf = 138412802;
      *&buf[4] = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }

    goto LABEL_20;
  }

  if (*(a1 + 184))
  {
    if (!v5)
    {
LABEL_20:
      v11 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
    if (v21 != 1 || !v5)
    {
      goto LABEL_21;
    }
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  v13 = off_100B508C8;
  v14 = v5;
  sub_100007E30(v17, [v5 UTF8String]);
  v11 = sub_10004EB40(v13, v6, v17);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

LABEL_21:
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_BOOL(reply, "kCBMsgArgData", v11);
  xpc_connection_send_message(*(a1 + 16), reply);
  xpc_release(reply);
}

void sub_100664A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100664AB4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = objc_opt_new();
  v6 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v6)
  {
    v32 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(buf, "Tags");
    sub_100007E30(__p, "AllowEveryone");
    v8 = (*(*v7 + 72))(v7, buf, __p, &v32);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
      if (!v8)
      {
LABEL_12:
        v32 = 1;
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        if (sub_10004FF0C(off_100B508C8, v6, *(a1 + 96), *(a1 + 48)))
        {
          if ((*(a1 + 184) & 1) != 0 || v32 == 1)
          {
            memset(buf, 0, sizeof(buf));
            if (qword_100B508D0 != -1)
            {
              sub_1000D5C34();
            }

            sub_100788FA0(off_100B508C8, v6, buf);
            v10 = *buf;
            if (*buf != &buf[8])
            {
              do
              {
                v11 = v10 + 32;
                if (v10[55] < 0)
                {
                  v11 = *v11;
                }

                v12 = [NSString stringWithCString:v11 encoding:4];
                [v5 addObject:v12];

                v13 = *(v10 + 1);
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
                    v14 = *(v10 + 2);
                    v15 = *v14 == v10;
                    v10 = v14;
                  }

                  while (!v15);
                }

                v10 = v14;
              }

              while (v14 != &buf[8]);
            }

            sub_10004B61C(buf, *&buf[8]);
          }
        }

        else
        {
          v16 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 96);
            v25 = *(a1 + 48);
            *buf = 138412802;
            *&buf[4] = v24;
            *&buf[12] = 2112;
            *&buf[14] = v25;
            *&buf[22] = 2112;
            v35 = v6;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        goto LABEL_31;
      }
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tags are for everyone !!!!!!", buf, 2u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }

LABEL_31:
  reply = xpc_dictionary_create_reply(xdict);
  v18 = xpc_array_create(0, 0);
  if (v18)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v5;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v20)
    {
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          xpc_array_set_string(v18, 0xFFFFFFFFFFFFFFFFLL, [v23 UTF8String]);
        }

        v20 = [v19 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v20);
    }

    xpc_dictionary_set_value(reply, "kCBMsgArgData", v18);
    xpc_release(v18);
  }

  xpc_connection_send_message(*(a1 + 16), reply);
  xpc_release(reply);
}

void sub_100664F78(uint64_t a1, void *a2)
{
  if (*(a1 + 80) >= 1)
  {
    if (sub_100011EDC(a1))
    {
      value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
      v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
      if (!v5)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085A73C();
        }

        goto LABEL_25;
      }

      v6 = sub_100013C04(value, "kCBMsgArgName");
      v7 = sub_100013C04(value, "kCBMsgArgValue");
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
      {
        v8 = *(a1 + 184);
        if (v8 == 1 && v6)
        {
          if ([v7 length] < 0x401)
          {
            if (qword_100B508D0 != -1)
            {
              sub_100856AE8();
            }

            sub_1007893AC(off_100B508C8, v5, v6, v7);
          }

          else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085A7B4(v6, &v16, [v7 length]);
          }

          goto LABEL_24;
        }

        v15 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v16 = 67109890;
          *v17 = v8;
          *&v17[4] = 2112;
          *&v17[6] = v5;
          *&v17[14] = 2112;
          *&v17[16] = v6;
          *&v17[24] = 2112;
          *&v17[26] = v7;
          v12 = "handlePeerSetCustomPropertyMsg not calling LeDeviceManager::setCustomProperty. allowInternalRestrictedServices:%d id:%@ prop:%@ value:%@";
          v13 = v15;
          v14 = 38;
          goto LABEL_20;
        }
      }

      else
      {
        v9 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 96);
          v11 = *(a1 + 48);
          v16 = 138412802;
          *v17 = v10;
          *&v17[8] = 2112;
          *&v17[10] = v11;
          *&v17[18] = 2112;
          *&v17[20] = v5;
          v12 = "App %@ for user %@ is not allowed to access %@";
          v13 = v9;
          v14 = 32;
LABEL_20:
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, &v16, v14);
        }
      }

LABEL_24:

LABEL_25:
      return;
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A778();
    }
  }
}

void sub_100665284(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = v5;
  if (v5)
  {
    v8 = sub_100007EE8(v5, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100673A68;
    v9[3] = &unk_100AEB858;
    v11 = a1;
    v12 = value;
    v10 = v7;
    v13 = xdict;
    sub_10000D334(v8, v9);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }
}

void sub_1006653AC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = v5;
  if (v5)
  {
    v8 = sub_100007EE8(v5, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100673C80;
    v9[3] = &unk_100AE0BC0;
    v11 = a1;
    v10 = v7;
    v12 = xdict;
    sub_10000D334(v8, v9);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }
}

void sub_1006654C8(uint64_t a1, xpc_object_t xdict)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = v5;
  if (v5)
  {
    v8 = sub_100007EE8(v5, v6);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100676054;
    v10[3] = &unk_100AF5598;
    v12 = &v14;
    v13 = a1;
    v11 = v7;
    sub_10000D334(v8, v10);
  }

  v9 = *(v15 + 6);
  if (v9)
  {
    sub_1005B2CE4(a1, 191, xdict, v9);
  }

  _Block_object_dispose(&v14, 8);
}

void sub_1006655DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100665614(uint64_t a1, xpc_object_t xdict)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = v5;
  if (v5)
  {
    v8 = sub_10000F034(v5, v6);
    (*(*v8 + 664))(v8, *(a1 + 96), 4);
    v15 = sub_100013CA4(value, 1, v9, v10, v11, v12, v13, v14, "kCBMsgArgUUIDs");
    if (!v15)
    {
      v17 = sub_100007EE8(v15, v16);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3321888768;
      v18[2] = sub_1006760B4;
      v18[3] = &unk_100B04B38;
      v20 = a1;
      v19 = v7;
      sub_10000CB74(__p, &v22);
      __p[3] = xdict;
      sub_10000D334(v17, v18);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_10066578C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    *(v22 - 64) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1006657D4(uint64_t a1, xpc_object_t xdict)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = v5;
  if (v5)
  {
    v8 = sub_100007EE8(v5, v6);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100673F24;
    v11[3] = &unk_100AF5598;
    v13 = &v15;
    v14 = a1;
    v12 = v7;
    sub_10000D334(v8, v11);
  }

  v9 = *(v16 + 6);
  if (v9)
  {
    v10 = v9 == 10;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    sub_1005B2CE4(a1, 193, xdict, v9);
  }

  _Block_object_dispose(&v15, 8);
}

void sub_1006658F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100665928(uint64_t a1, void *a2)
{
  v41 = 0;
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v39 = 0;
  v40 = 0;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v7 = sub_10000F034(v5, v6);
  (*(*v7 + 664))(v7, *(a1 + 96), 6);
  if (!sub_100013CA4(value, 1, v8, v9, v10, v11, v12, v13, "kCBMsgArgPSM"))
  {
    if (v5)
    {
      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = 0;
      v33 = 0;
      v34 = 0;
      v20 = sub_100013CA4(v39, 0, v14, v15, v16, v17, v18, v19, "kCBL2CAPChannelInMTU");
      if (!v20)
      {
        v22 = sub_100007EE8(v20, v21);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10066E4D0;
        v23[3] = &unk_100B047B8;
        v25 = a1;
        v26 = v41;
        v27 = v40;
        v28 = v38;
        v29 = v37;
        v30 = v35;
        v31 = v34;
        v24 = v5;
        v32 = v33;
        sub_10000D334(v22, v23);
      }
    }
  }
}

void sub_100665C94(uint64_t a1, xpc_object_t xdict)
{
  v19 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgPSM");
  if (!v11)
  {
    if (v19 >> 16)
    {
      v13 = 1;
    }

    else
    {
      v13 = v4 == 0;
    }

    if (!v13)
    {
      v14 = sub_100007EE8(v11, v12);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10066E7E0;
      v15[3] = &unk_100AE0BC0;
      v17 = a1;
      v18 = v19;
      v16 = v4;
      sub_10000D334(v14, v15);
    }
  }
}

void sub_100665DCC(uint64_t a1, void *a2)
{
  v26 = 0;
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v5 = sub_10037CE6C(value, "kCBMsgArgData");
  v6 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgPSM") && !(v26 >> 16) && v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    reply = xpc_dictionary_create_reply(a2);
    v25 = reply;
    if (v23[3])
    {
      v15 = sub_100007EE8(reply, v14);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10066E62C;
      v16[3] = &unk_100B04830;
      v20 = a1;
      v21 = v26;
      v17 = v6;
      v18 = v5;
      v19 = &v22;
      sub_10000CA94(v15, v16);
    }

    _Block_object_dispose(&v22, 8);
  }
}

void sub_100665F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100665FDC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  if (v4)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v4, *(a1 + 96), *(a1 + 48)))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1000C10B4();
      }

      v6 = sub_1003AF1AC(off_100B512F0, *(a1 + 128), v4);
      if (v6)
      {
        v8 = sub_100007EE8(v6, v7);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100677350;
        v12[3] = &unk_100AE25C8;
        v15 = a1;
        v13 = v4;
        v14 = v5;
        sub_10000D334(v8, v12);
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A814();
      }
    }

    else
    {
      v9 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 96);
        v11 = *(a1 + 48);
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v4;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }
}

void sub_100666240(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v4 = sub_10037CEF8(value, "kCBMsgArgSetHighPriorityStream");
  v5 = sub_1000C9AAC(value, "kCBMsgArgHighPriorityStreamDuration");
  v6 = v5;
  if (v3)
  {
    if (!v5 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A884();
    }

    if (qword_100B50F78 != -1)
    {
      sub_10085A8C0();
    }

    v7 = qword_100B50F70;
    sub_10004DFB4(v8, v3);
    sub_100580A48(v7, v8, v4, [v6 intValue]);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A8E8();
  }
}

void sub_1006663B8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10037CE6C(value, "kCBFastLeConnectionInfoData");
  LOBYTE(value) = sub_10037CEF8(value, "kCBMsgArgEnable");
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  reply = xpc_dictionary_create_reply(xdict);
  v8 = sub_100007EE8(reply, v7);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006774BC;
  v11[3] = &unk_100B04D70;
  v15 = a1;
  v9 = v5;
  v12 = v9;
  v16 = value;
  v10 = v6;
  v13 = v10;
  v14 = v17;
  sub_10000CA94(v8, v11);

  _Block_object_dispose(v17, 8);
}

void sub_100666508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100666554(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v45 = 0;
  value = xpc_dictionary_get_value(v2, "kCBMsgArgs");
  v6 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v43 = 1;
  v44 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  reply = xpc_dictionary_create_reply(v3);
  v42 = reply;
  if (*(v4 + 80) < 2 || (v9 = sub_10000C7D0(reply, v8), ((*(*v9 + 3288))(v9) & 1) == 0))
  {
    v16 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      v18 = sub_10000C7D0(v16, v17);
      v19 = (*(*v18 + 3288))(v18);
      sub_10085A924(v19, (v4 + 80), v54);
    }

    v20 = v40[3];
    if (v20)
    {
      xpc_dictionary_set_int64(v20, "kCBMsgArgResult", 2);
      xpc_connection_send_message(*(v4 + 16), v40[3]);
      xpc_release(v40[3]);
    }
  }

  sub_100013CA4(value, 1, v10, v11, v12, v13, v14, v15, "kCBMsgArgOptions");
  v27 = sub_100013CA4(v45, 0, v21, v22, v23, v24, v25, v26, "kCBGetRangeOptionRunProcedure");
  if (v27)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A984();
    }

    v28 = v40[3];
    if (v28)
    {
      xpc_dictionary_set_int64(v28, "kCBMsgArgResult", v27);
      xpc_connection_send_message(*(v4 + 16), v40[3]);
      xpc_release(v40[3]);
    }
  }

  bzero(v53, 0xCBE8uLL);
  v35 = sub_100674AA0(v29, v45, v53, v30, v31, v32, v33, v34);
  v53[26098] = v44;
  LOBYTE(v53[26099]) = v43;
  if (v6)
  {
    v37 = sub_100007EE8(v35, v36);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100674C34;
    v46[3] = &unk_100B04CA0;
    v49 = v4;
    v50 = v44;
    v47 = v6;
    memcpy(v52, v53, sizeof(v52));
    v51 = v27;
    v48 = &v39;
    sub_10000CA94(v37, v46);
  }

  else
  {
    v38 = v40[3];
    if (v38)
    {
      xpc_dictionary_set_int64(v38, "kCBMsgArgResult", 312);
      xpc_connection_send_message(*(v4 + 16), v40[3]);
      xpc_release(v40[3]);
    }
  }

  _Block_object_dispose(&v39, 8);
}

void sub_1006668F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_10066693C(uint64_t a1, xpc_object_t xdict)
{
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11)
  {
    v12 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgServiceStartHandle");
    if (!v12)
    {
      v14 = sub_100007EE8(v12, v13);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3321888768;
      v15[2] = sub_100676328;
      v15[3] = &unk_100B04CC8;
      v17 = a1;
      v16 = v11;
      v18 = v24;
      sub_10000CB74(__p, &v20);
      __p[3] = v23;
      __p[4] = xdict;
      sub_10000D334(v14, v15);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_100666ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    *(v29 - 80) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_100666B04(uint64_t a1, xpc_object_t xdict)
{
  v23 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11)
  {
    v12 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgServiceStartHandle");
    if (!v12)
    {
      v14 = sub_100007EE8(v12, v13);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3321888768;
      v15[2] = sub_100676510;
      v15[3] = &unk_100B04CC8;
      v17 = a1;
      v16 = v11;
      v18 = v24;
      sub_10000CB74(__p, &v20);
      __p[3] = v23;
      __p[4] = xdict;
      sub_10000D334(v14, v15);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_100666C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    *(v29 - 80) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_100666CCC(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11)
  {
    v12 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgCharacteristicHandle");
    if (!v12)
    {
      v14 = sub_100007EE8(v12, v13);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1006766E4;
      v15[3] = &unk_100B04A18;
      v17 = a1;
      v16 = v11;
      v18 = v22;
      v19 = v21;
      v20 = xdict;
      sub_10000D334(v14, v15);
    }
  }
}

void sub_100666E10(uint64_t a1, xpc_object_t xdict)
{
  v27 = 0;
  v28 = 0;
  v25 = &off_100AE0A78;
  v26 = 0;
  v24 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11)
  {
    v12 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgCharacteristicHandle");
    if (!v12)
    {
      v14 = sub_100007EE8(v12, v13);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3321888768;
      v15[2] = sub_1006768D8;
      v15[3] = &unk_100B04D00;
      v17 = a1;
      v16 = v11;
      v18 = v28;
      v19 = v24;
      v20 = v27;
      v21 = &off_100AE0A78;
      v22 = v26;
      v23 = xdict;
      sub_10000D334(v14, v15);
      v21 = &off_100AE0A78;
      if (v22)
      {
        sub_10000C808(v22);
      }
    }
  }

  v25 = &off_100AE0A78;
  if (v26)
  {
    sub_10000C808(v26);
  }
}

void sub_100666FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  *(v28 - 96) = v26;
  v30 = *(v28 - 88);
  if (v30)
  {
    sub_10000C808(v30);
  }

  _Unwind_Resume(a1);
}

void sub_10066704C(uint64_t a1, xpc_object_t xdict)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11)
  {
    v12 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgCharacteristicHandle");
    if (!v12)
    {
      v14 = sub_100007EE8(v12, v13);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100676B68;
      v15[3] = &unk_100B04A18;
      v17 = a1;
      v16 = v11;
      v18 = v23;
      v19 = v21;
      v20 = xdict;
      sub_10000D334(v14, v15);
    }
  }
}

void sub_1006671A8(uint64_t a1, void *a2)
{
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v20 = 0;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11)
  {
    v12 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgCharacteristicHandle");
    if (!v12)
    {
      v14 = sub_100007EE8(v12, v13);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100676D7C;
      v15[3] = &unk_100AEB858;
      v17 = a1;
      v16 = v11;
      v18 = v20;
      v19 = a2;
      sub_10000D334(v14, v15);
    }
  }
}

void sub_100667314(uint64_t a1, xpc_object_t xdict)
{
  v23 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgDescriptorHandle");
      if (!v12)
      {
        v14 = sub_100007EE8(v12, v13);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100676F6C;
        v18[3] = &unk_100AEB858;
        v20 = a1;
        v19 = v5;
        v21 = v23;
        v22 = xdict;
        sub_10000D334(v14, v18);
      }
    }

    else
    {
      v15 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 96);
        v17 = *(a1 + 48);
        *buf = 138412802;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        v28 = 2112;
        v29 = v5;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }
}

void sub_10066751C(uint64_t a1, void *a2)
{
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v27 = 0;
  v25 = &off_100AE0A78;
  v26 = 0;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgDescriptorHandle");
      if (!v12)
      {
        v14 = sub_100007EE8(v12, v13);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3321888768;
        v18[2] = sub_10067715C;
        v18[3] = &unk_100B04D38;
        v20 = a1;
        v19 = v5;
        v21 = v27;
        v22 = &off_100AE0A78;
        v23 = v26;
        v24 = a2;
        sub_10000D334(v14, v18);
        v22 = &off_100AE0A78;
        if (v23)
        {
          sub_10000C808(v23);
        }
      }
    }

    else
    {
      v15 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 96);
        v17 = *(a1 + 48);
        *buf = 138412802;
        v29 = v16;
        v30 = 2112;
        v31 = v17;
        v32 = 2112;
        v33 = v5;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }

  v25 = &off_100AE0A78;
  if (v26)
  {
    sub_10000C808(v26);
  }
}

void sub_1006677B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, atomic_uint *a27)
{
  if (a27)
  {
    sub_10000C808(a27);
  }

  _Unwind_Resume(a1);
}

void sub_10066780C(uint64_t a1, void *a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "handleTrackPeripheralMsg";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v66 = 0x2020000000;
  v67 = 1;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v12 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v61 = 0;
  v62 = 0;
  v59 = 1;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  if (v12)
  {
    v13 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
    *(*(&buf + 1) + 24) = v13;
    if (v13)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A9F4();
      }
    }

    else
    {
      v20 = sub_100013CA4(v62, 0, v14, v15, v16, v17, v18, v19, "kCBTrackingOptionType");
      v22 = v61;
      v23 = *(&buf + 1);
      if (v61 >= 101)
      {
        *(*(&buf + 1) + 24) = 3;
        v24 = qword_100BCE950;
        v20 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
        if (v20)
        {
          *v63 = 67109120;
          v64 = v22;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unsupported apply type: %d", v63, 8u);
          v23 = *(&buf + 1);
        }
      }

      if (!*(v23 + 24))
      {
        v25 = sub_100007EE8(v20, v21);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100672B8C;
        v26[3] = &unk_100B04BD8;
        p_buf = &buf;
        v29 = a1;
        v27 = v12;
        v30 = v61;
        v31 = v60;
        v32 = v59;
        v33 = v58;
        v34 = v57;
        v35 = v56;
        v36 = v55;
        v37 = v54;
        v38 = v53;
        v39 = v52;
        v40 = v51;
        v41 = v50;
        v42 = v49;
        v43 = v48;
        v44 = v47;
        v45 = v46;
        sub_10000D334(v25, v26);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085AA64();
  }

  _Block_object_dispose(&buf, 8);
}

void sub_100667C88(uint64_t a1, void *a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "handleStopTrackingPeripheralMsg";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v12 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v26 = 0;
  buf[0] = 0;
  if (v12)
  {
    if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A9F4();
      }
    }

    else
    {
      v19 = sub_100013CA4(buf[0], 0, v13, v14, v15, v16, v17, v18, "kCBTrackingOptionType");
      v21 = sub_100007EE8(v19, v20);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100672C48;
      v22[3] = &unk_100AE0BC0;
      v24 = a1;
      v23 = v12;
      v25 = v26;
      sub_10000D334(v21, v22);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085AA64();
  }
}

void sub_100667EE4(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v4 = reply;
    v6 = 0;
    bytes = 0;
    xpc_dictionary_set_data(reply, "kCBMsgArgAddressString", &bytes, 6uLL);
    xpc_connection_send_message(*(a1 + 16), v4);
    xpc_release(v4);
  }
}

void sub_100667F4C(uint64_t a1, xpc_object_t xdict)
{
  v89 = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(v4, "kCBMsgArgDeviceUUID");
  value = 0;
  v88 = 0;
  if (*(a1 + 80) <= 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(*(a1 + 128), &v91);
      sub_10085AC08();
    }

    goto LABEL_46;
  }

  v12 = sub_100013CA4(v4, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (!v12)
  {
    v13 = sub_100013C04(v89, "kCBLePowerControlCmd");
    v14 = sub_10037CEF8(v89, "kCBlePowerControlWait4Result");
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v15 = off_100B508A8;
    sub_10004DFB4(&v91, v11);
    sub_1000C4FCC(v15, &v91, &v88);
    if ([v13 isEqualToString:@"setLeTxReportEnable"])
    {
      LOBYTE(v91.__sig) = 0;
      LOBYTE(v90[0]) = 0;
      v22 = sub_100013CA4(v89, 0, v16, v17, v18, v19, v20, v21, "kCBLePowerControlLocalEnable");
      if (!v22)
      {
        HIBYTE(v86) = 0;
        sub_1000216B4(&v86 + 1);
        v29 = sub_100018960(249, sub_100671438, v23, v24, v25, v26, v27, v28, v88);
        sub_100022214(&v86 + 1);
        sub_10002249C(&v86 + 1);
        v30 = 249;
        goto LABEL_27;
      }
    }

    else if ([v13 isEqualToString:@"setLePathLossEnable"])
    {
      LOBYTE(v91.__sig) = 0;
      v22 = sub_100013CA4(v89, 0, v31, v32, v33, v34, v35, v36, "kCBLePathLossReportingEnable");
      if (!v22)
      {
        LOBYTE(v90[0]) = 0;
        sub_1000216B4(v90);
        v29 = sub_100018960(248, sub_100671438, v37, v38, v39, v40, v41, v42, v88);
        sub_100022214(v90);
        sub_10002249C(v90);
        v30 = 248;
        goto LABEL_27;
      }
    }

    else if ([v13 isEqualToString:@"setLePathLossParam"])
    {
      LOBYTE(v90[0]) = 0;
      v86 = 0;
      v85[1] = 0;
      LOWORD(v91.__sig) = 0;
      v22 = sub_100013CA4(v89, 0, v43, v44, v45, v46, v47, v48, "kCBLeHighThreshold");
      if (!v22)
      {
        v85[0] = 0;
        sub_1000216B4(v85);
        v29 = sub_100018960(247, sub_100671438, v49, v50, v51, v52, v53, v54, v88);
        sub_100022214(v85);
        sub_10002249C(v85);
        v30 = 247;
        goto LABEL_27;
      }
    }

    else if ([v13 isEqualToString:@"readLeRemoteTxPower"])
    {
      LOBYTE(v91.__sig) = 0;
      v22 = sub_100013CA4(v89, 0, v55, v56, v57, v58, v59, v60, "kCBLePHYType");
      if (!v22)
      {
        LOBYTE(v90[0]) = 0;
        sub_1000216B4(v90);
        if (v14)
        {
          v68 = sub_1002C40BC(1, sub_100671438, &value, 8);
        }

        else
        {
          v68 = 0xFFFFFFFFLL;
        }

        v29 = sub_1000D6178(0xF6u, v61, v62, v63, v64, v65, v66, v67, v88);
        sub_100022214(v90);
        sub_10002249C(v90);
        v30 = 246;
        if ((v14 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_28:
        if (!v29)
        {
          memset(&v91, 0, sizeof(v91));
          sub_100044BBC(&v91);
          v90[0] = 0;
          v90[1] = 0;
          sub_100007F88(v90, &v91);
          if (sub_10002220C(&stru_100BCE850, v90, 0xBB8uLL))
          {
            v29 = 0;
          }

          else
          {
            v29 = 112;
          }

          sub_1000088CC(v90);
          sub_10007A068(&v91);
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (![v13 isEqualToString:@"readLeLocalTxPower"])
      {
        if ((v14 & 1) == 0)
        {
LABEL_45:

          goto LABEL_46;
        }

        v30 = 0;
        v22 = 0;
        v29 = 114;
        v68 = 0xFFFFFFFFLL;
LABEL_33:
        reply = xpc_dictionary_create_reply(xdict);
        v82 = reply;
        if (reply)
        {
          xpc_dictionary_set_int64(reply, "kCBLePowerControlCmd", v30);
          xpc_dictionary_set_int64(v82, "kCBMsgArgResult", v29);
          if (v30 == 246)
          {
            xpc_dictionary_set_int64(v82, "kCBMsgArgConnHandle", value);
            xpc_dictionary_set_int64(v82, "kCBMsgArgReason", BYTE3(value));
            xpc_dictionary_set_int64(v82, "kCBMsgArgPHY", BYTE4(value));
            xpc_dictionary_set_int64(v82, "kCBMsgArgTransmitPowerLevel", SBYTE5(value));
            xpc_dictionary_set_int64(v82, "kCBMsgArgTransmitPowerFlag", BYTE6(value));
            v83 = SHIBYTE(value);
            v84 = "kCBMsgArgDelta";
          }

          else
          {
            if (v30 != 245)
            {
LABEL_39:
              xpc_connection_send_message(*(a1 + 16), v82);
              xpc_release(v82);
              goto LABEL_40;
            }

            xpc_dictionary_set_int64(v82, "kCBMsgArgConnHandle", word_100BCE880);
            xpc_dictionary_set_int64(v82, "kCBMsgArgCurrentTxPowerLevel", byte_100BCE883);
            v83 = byte_100BCE884;
            v84 = "kCBMsgArgMaxTxPowerLevel";
          }

          xpc_dictionary_set_int64(v82, v84, v83);
          goto LABEL_39;
        }

LABEL_40:
        if ((v68 & 0x80000000) == 0)
        {
          sub_1002C411C(v68);
        }

        if (v22)
        {
          sub_1005B2CE4(a1, 231, xdict, v22);
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085AB84();
          }
        }

        goto LABEL_45;
      }

      LOBYTE(v91.__sig) = 0;
      v22 = sub_100013CA4(v89, 0, v69, v70, v71, v72, v73, v74, "kCBLePHYType");
      if (!v22 && LOBYTE(v91.__sig) - 1 <= 3)
      {
        LOBYTE(v90[0]) = 0;
        sub_1000216B4(v90);
        v29 = sub_100018960(245, sub_100671444, v75, v76, v77, v78, v79, v80, v88);
        sub_100022214(v90);
        sub_10002249C(v90);
        v30 = 245;
        goto LABEL_27;
      }
    }

    v30 = 0;
    v29 = 114;
LABEL_27:
    v68 = 0xFFFFFFFFLL;
    if ((v14 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  sub_1005B2CE4(a1, 231, xdict, v12);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085AB14();
  }

LABEL_46:
}

void sub_100668790()
{
  if (MGCopyAnswer())
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10085AC64();
    }

    v0 = off_100B50A98;
    sub_100007E30(&v3, "BT_CONTROLLER_CORE_DUMP");
    sub_100007E30(__p, "");
    sub_1005A24D4(v0, 3703, &v3, 0, 0, 0, __p);
  }

  v1 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "CBUtil controller core dump not supported on customer / production / user builds", __p, 2u);
  }
}

void sub_100668890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006688C4(uint64_t a1, unsigned int a2)
{
  result = 1;
  if (a2 > 0x2C || ((1 << a2) & 0x1CC000011000) == 0)
  {
    v4 = a2 == 81 || a2 == 49;
    return a2 == 181 || v4;
  }

  return result;
}

void sub_100668910(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  if (*a2 != a2[1])
  {
    do
    {
      if (qword_100B50900 != -1)
      {
        sub_10085771C();
      }

      v7 = qword_100B508F8;
      v8 = *v6;
      v13 = *(*v6 + 72);
      v14 = *(v8 + 88);
      sub_10000D03C(&v12, &v13);
      if (sub_100066E24(v7, &v12, *(a1 + 184), *(a1 + 200), v5))
      {
        v6 += 8;
        v9 = a2[1];
      }

      else
      {
        v10 = a2[1];
        v11 = v10 - v6 - 8;
        if (v10 != (v6 + 8))
        {
          memmove(v6, (v6 + 8), v10 - v6 - 8);
        }

        v9 = &v11[v6];
        a2[1] = &v11[v6];
      }
    }

    while (v6 != v9);
  }
}

uint64_t sub_100668A48(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  if (*(a1 + 80) > 0)
  {
    goto LABEL_14;
  }

  v15 = 0uLL;
  v16 = 0;
  if (qword_100B50900 != -1)
  {
    sub_10085AC78();
  }

  sub_10070BEF4(qword_100B508F8, v5, v3, &v15);
  *buf = xmmword_1008A4E04;
  *&buf[16] = 0;
  if (!sub_10004E15C(&v15, buf))
  {
    goto LABEL_14;
  }

  if (qword_100B50900 != -1)
  {
    sub_10085771C();
  }

  v6 = qword_100B508F8;
  v12 = xmmword_1008A4E04;
  v13 = 0;
  sub_10000D03C(buf, &v12);
  if (sub_10070BAC0(v6, v5, buf, v3))
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "External Characteristic Restricted for device %@", buf, 0xCu);
    }

    if ((*(a1 + 180) & 1) == 0)
    {
      v8 = objc_alloc_init(MTSAuthorization);
      *(a1 + 179) = [v8 isRestrictedCharacteristicsAccessAllowed];

      *(a1 + 180) = 1;
    }

    v9 = *(a1 + 179) ^ 1;
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v9 & 1;
      *&buf[8] = 2112;
      *&buf[10] = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "External Restricted Characteristic restricted:%d for device %@", buf, 0x12u);
    }
  }

  else
  {
LABEL_14:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100668C84(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (qword_100B50900 != -1)
  {
    sub_10085AC78();
  }

  v12 = 0uLL;
  v13 = 0;
  sub_10070BEF4(qword_100B508F8, v5, a3, &v12);
  if (!v12.n128_u8[0])
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085AC8C();
    }

    goto LABEL_13;
  }

  if (qword_100B50900 != -1)
  {
    sub_10085771C();
  }

  if (!sub_100066E24(qword_100B508F8, &v12, *(a1 + 184), *(a1 + 200), v5))
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v9 = *v9;
      }

      *v10 = 136446722;
      *&v10[4] = v9;
      *&v10[12] = 1024;
      *&v10[14] = a3;
      *&v10[18] = 2112;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Session %{public}s isn't entitled to access restricted handle 0x%04x on device %@! ಠ_ಠ", v10, 0x1Cu);
    }

    goto LABEL_13;
  }

  *v10 = xmmword_1008A4E04;
  *&v10[16] = 0;
  if (sub_10004E15C(&v12, v10) && (sub_100668A48(a1, v5, a3) & 1) != 0)
  {
LABEL_13:
    v6 = 902;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

uint64_t sub_100668E78(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  xpc_connection_get_audit_token();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 2;
  if ((atomic_load_explicit(&qword_100B6F7E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6F7E8))
  {
    qword_100B6F7E0 = tcc_server_create();
    __cxa_guard_release(&qword_100B6F7E8);
  }

  v2 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v8 = v14;
  v9 = v15;
  v3 = tcc_credential_create_for_process_with_audit_token();
  tcc_service_singleton_for_CF_name();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100669040;
  v7[3] = &unk_100B04500;
  v7[4] = &v10;
  v7[5] = a1;
  v4 = objc_retainBlock(v7);
  tcc_server_message_request_authorization();
  CFRelease(v3);
  CFRelease(v2);
  v5 = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_100669000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  __cxa_guard_abort(&qword_100B6F7E8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float sub_100669040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = *(a1 + 40);
    authorization_right = tcc_authorization_record_get_authorization_right();
    authorization_reason = tcc_authorization_record_get_authorization_reason();
    v7 = authorization_reason;
    if (authorization_right == 2)
    {
      v8 = 0;
    }

    else if (authorization_right)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
      if (authorization_reason == 12)
      {
        if (*(v4 + 181))
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = v8;
    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v4 + 181);
      v12 = *(*(*(a1 + 32) + 8) + 24);
      v13[0] = 67109888;
      v13[1] = v11;
      v14 = 2048;
      v15 = authorization_right;
      v16 = 2048;
      v17 = v7;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "preflight ext:%d userAuth:%llu reason:%llu response:%d", v13, 0x22u);
    }
  }

  return result;
}

uint64_t sub_100669184(void *a1, void *a2)
{
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  xpc_connection_get_audit_token();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ((atomic_load_explicit(&qword_100B6F7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6F7F8))
  {
    qword_100B6F7F0 = tcc_server_create();
    __cxa_guard_release(&qword_100B6F7F8);
  }

  v4 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v14 = v20;
  v15 = v21;
  v5 = tcc_credential_create_for_process_with_audit_token();
  tcc_service_singleton_for_CF_name();
  v6 = objc_opt_new();
  [v6 setObject:a1[14] forKeyedSubscript:@"mapCentralLabelStringKey"];
  [v6 setObject:a1[15] forKeyedSubscript:@"mapLabelArrayForCalloutsKey"];
  tcc_message_options_set_client_dict();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006693E4;
  v11[3] = &unk_100B04528;
  v13 = &v16;
  v7 = v3;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  tcc_server_message_request_authorization();
  CFRelease(v5);
  CFRelease(v4);
  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_100669380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  __cxa_guard_abort(&qword_100B6F7F8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1006693E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_right() == 2;
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_10066945C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006694F8;
  v2[3] = &unk_100B04550;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  sub_100669184(v1, v2);
}

void sub_1006694F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006695A0;
  v4[3] = &unk_100ADF820;
  v5 = *(a1 + 32);
  sub_10000CA94(v3, v4);
}

void sub_1006695A0(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(a1 + 32);

  sub_1003AB71C(v2, v3);
}

void sub_1006695F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1003B2F70(v2, v3);
}

void sub_100669648(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1003BF980(v2, v3);
}

void sub_10066969C(uint64_t a1@<X1>, void *a2@<X2>, void **a3@<X8>)
{
  v18 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v17 = [LSBundleRecord bundleRecordWithBundleIdentifier:a1 allowPlaceholder:1 error:0];
  v5 = [v17 infoDictionary];
  v19 = [v5 objectForKey:v18 ofClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v19;
    if ([v16 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      obj = v16;
      v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v6)
      {
        v7 = *v22;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v21 + 1) + 8 * i);
            v10 = [CBUUID UUIDWithString:v9];
            v11 = [v10 data];
            v12 = v11;
            v13 = [v11 bytes];
            v14 = [CBUUID UUIDWithString:v9];
            v15 = [v14 data];
            sub_100065F40(&v25, v13, [v15 length]);
            sub_10000CDB8(a3, &v25);
          }

          v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v6);
      }
    }
  }
}

void sub_1006698D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void sub_10066998C(void *a1@<X1>, void *a2@<X2>, const void **a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v27 = v5;
  v28 = [LSBundleRecord bundleRecordWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
  v7 = [v28 infoDictionary];
  v8 = [v7 objectForKey:v6 ofClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v8;
    v9 = v8;
    if ([v9 count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v9;
      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            v30 = 0;
            v14 = [NSScanner scannerWithString:v13];
            [v14 scanHexInt:&v30];
            v16 = a3[1];
            v15 = a3[2];
            if (v16 >= v15)
            {
              v18 = *a3;
              v19 = v16 - *a3;
              v20 = v19 >> 1;
              if (v19 >> 1 <= -2)
              {
                sub_1000C7698();
              }

              v21 = v15 - v18;
              if (v21 <= v20 + 1)
              {
                v22 = v20 + 1;
              }

              else
              {
                v22 = v21;
              }

              v23 = v21 >= 0x7FFFFFFFFFFFFFFELL;
              v24 = 0x7FFFFFFFFFFFFFFFLL;
              if (!v23)
              {
                v24 = v22;
              }

              if (v24)
              {
                sub_1003705C4(a3, v24);
              }

              *(2 * v20) = v30;
              v17 = (2 * v20 + 2);
              memcpy(0, v18, v19);
              v25 = *a3;
              *a3 = 0;
              a3[1] = v17;
              a3[2] = 0;
              if (v25)
              {
                operator delete(v25);
              }
            }

            else
            {
              *v16 = v30;
              v17 = v16 + 2;
            }

            a3[1] = v17;
          }

          v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v10);
      }
    }

    v8 = v26;
  }
}

void sub_100669C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_100669CC8(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v6 = [LSBundleRecord bundleRecordWithBundleIdentifier:a1 allowPlaceholder:1 error:0];
  v7 = [v6 infoDictionary];
  v8 = [v7 objectForKey:v5 ofClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    if ([v9 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v10);
            }

            sub_100007E30(__p, [*(*(&v16 + 1) + 8 * v13) UTF8String]);
            sub_10034A52C(a3, __p);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }
  }
}

void sub_100669E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1000161FC(&__p);

  _Unwind_Resume(a1);
}

void sub_100669F14(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = sub_10005EBC0(off_100B512F0, *(v2 + 96));
  v4 = v3;
  v5 = sub_10066A1F4(v3, *(v2 + 96));
  if (*(a1 + 40) == 1 && *(v2 + 128))
  {
    if (qword_100B512F8 != -1)
    {
      sub_1000C10B4();
    }

    v6 = sub_1003BCCF0(off_100B512F0, *(v2 + 128));
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v2 + 96);
    v9 = *(v2 + 196);
    v10 = *(a1 + 40);
    v11 = *(v2 + 200);
    v21 = 138413826;
    v22 = v8;
    v23 = 1024;
    *v24 = v9;
    *&v24[4] = 1024;
    *&v24[6] = v4;
    v25 = 1024;
    v26 = v5;
    v27 = 1024;
    v28 = v10;
    v29 = 1024;
    v30 = v6;
    v31 = 1024;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Application: %@ privacySupported: %d tccAuthKnown %d uses medical devices %d or state restoration %d numberOfPairedDevices %d, allowedExternalRestrictedServices 0x%08x", &v21, 0x30u);
  }

  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      v12 = 0;
      *(v2 + 197) = 1;
      goto LABEL_14;
    }

    if (*(a1 + 40) != 1 || !v6)
    {
      return;
    }

    *(v2 + 197) = 1;
    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v14 = sub_1003AD58C(off_100B512F0, *(v2 + 96));
    if (v14 < 0xB)
    {
      v12 = v14;
      if (*(v2 + 197))
      {
LABEL_14:
        v13 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 67109120;
          LODWORD(v22) = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Allowing device temporarily - checkInWithoutAuth %d", &v21, 8u);
        }
      }
    }

    else
    {
      *(v2 + 197) = 0;
    }

    v15 = qword_100BCE9E0;
    v16 = os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v18 = *(v2 + 96);
      v19 = (v2 + 56);
      if (*(v2 + 79) < 0)
      {
        v19 = *v19;
      }

      v21 = 138412546;
      v22 = v18;
      v23 = 2080;
      *v24 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "handleCheckInMsg:{isAlive: true, bundleId: %@, session: %s}", &v21, 0x16u);
    }

    v20 = sub_10000EE80(v16, v17);
    (*(*v20 + 72))(v20, *(v2 + 96), 1);
    sub_1000634AC(v2);
  }
}

uint64_t sub_10066A1F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [NSArray arrayWithObjects:@"com.dexcom.", @"com.medtronic.", @"com.senseonics.", 0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067B94C;
  v7[3] = &unk_100B04E88;
  v4 = v2;
  v8 = v4;
  v9 = &v10;
  [v3 enumerateObjectsUsingBlock:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_10066A2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  _Block_object_dispose((v19 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_10066A330(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 5;
  }

  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(*(a1 + 128), __p);
    v5 = v10;
    v6 = __p[0];
    v7 = sub_1005B29E8(a1, v3);
    v8 = __p;
    if (v5 < 0)
    {
      v8 = v6;
    }

    *buf = 136315394;
    v12 = v8;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "session %s restricted state, setting power state to %s. Update manager state", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100063710(a1, v3);
}

void sub_10066A448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10066A488(uint64_t a1, int a2, void *a3, unsigned int a4)
{
  v9 = a3;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7)
  {
    v8 = *(a1 + 40);
    xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a2);
    if (!a2)
    {
      xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBFastLeConnectionInfoVersion", a4);
      xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBFastLeConnectionInfoLength", [v9 length]);
      xpc_dictionary_set_data(*(*(*(a1 + 32) + 8) + 24), "kCBFastLeConnectionInfoData", [v9 bytes], objc_msgSend(v9, "length"));
    }

    xpc_connection_send_message(*(v8 + 16), *(*(*(a1 + 32) + 8) + 24));
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
  }
}

void sub_10066A5BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_100791918(off_100B508C8, *(a1 + 32), *(a1 + 64), *(a1 + 40), 1);
  }

  else
  {
    v3 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 56));
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v3);
    xpc_connection_send_message(*(v2 + 16), v5);

    xpc_release(v5);
  }
}

void sub_10066A67C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_1007919E0(off_100B508C8, *(a1 + 32));
  }

  else
  {
    v3 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v3);
    xpc_connection_send_message(*(v2 + 16), v5);

    xpc_release(v5);
  }
}

void sub_10066A730(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_100791C14(off_100B508C8, *(a1 + 32), *(a1 + 56) == 1);
  }

  else
  {
    v3 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v3);
    xpc_connection_send_message(*(v2 + 16), v5);

    xpc_release(v5);
  }
}

void sub_10066A7F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_100046458(off_100B508C8, *(a1 + 32), 0);
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v4 = sub_1007868F4(off_100B508C8, *(a1 + 32));
    v6 = sub_10000C7D0(v4, v5);
    v7 = (*(*v6 + 2184))(v6, v3, v4, [*(a1 + 40) length], objc_msgSend(*(a1 + 40), "bytes"));
  }

  else
  {
    v7 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 56));
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(v2 + 16), v9);

    xpc_release(v9);
  }
}

void sub_10066A94C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_100046458(off_100B508C8, *(a1 + 32), 0);
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_1007868F4(off_100B508C8, *(a1 + 32));
    v5 = *sub_10000C7D0(v3, v4);
    v6 = (*(v5 + 2192))();
  }

  else
  {
    v6 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(v2 + 16), v8);

    xpc_release(v8);
  }
}

void sub_10066AA7C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) isEqualToString:@"config"];
  if (!v3)
  {
    v8 = [*(a1 + 32) isEqualToString:@"enable"];
    if (v8)
    {
      v10 = *(a1 + 64);
      if (v10 <= 1)
      {
        v13 = v10 == 1;
        v14 = sub_10000C7D0(v8, v9);
        v7 = (*(*v14 + 2240))(v14, *(a1 + 40), v13, v13);
        goto LABEL_10;
      }
    }

    goto LABEL_7;
  }

  v5 = *(a1 + 64);
  if (v5 == 2)
  {
    v12 = sub_10000C7D0(v3, v4);
    v7 = (*(*v12 + 2256))(v12, *(a1 + 40));
    goto LABEL_10;
  }

  if (v5 != 1)
  {
LABEL_7:
    v11 = 3;
    goto LABEL_11;
  }

  v6 = sub_10000C7D0(v3, v4);
  v7 = (*(*v6 + 2248))(v6, *(a1 + 40));
LABEL_10:
  v11 = v7;
LABEL_11:
  reply = xpc_dictionary_create_reply(*(a1 + 56));
  if (reply)
  {
    v16 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v11);
    xpc_connection_send_message(*(v2 + 16), v16);

    xpc_release(v16);
  }
}

uint64_t sub_10066ABFC(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v2 = off_100B508A8;
  sub_10004DFB4(v4, *(a1 + 32));
  return sub_100767160(v2, v4, *(a1 + 52), *(a1 + 54), *(a1 + 56), *(a1 + 58), *(a1 + 60), *(a1 + 40), *(a1 + 44), *(a1 + 48));
}

void sub_10066ACA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v4 = sub_10000C7D0(a1, a2);
    v5 = (*(*v4 + 1896))(v4, *(a1 + 32), *(a1 + 56), *(a1 + 57), *(a1 + 58));
  }

  else
  {
    v5 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v7 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v5);
    xpc_connection_send_message(*(v3 + 16), v7);

    xpc_release(v7);
  }
}

void sub_10066AD74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  if (v4 == 3)
  {
    v6 = sub_10000C7D0(a1, a2);
    v5 = (*(*v6 + 4328))(v6);
  }

  else
  {
    if (v4 == 2)
    {
      if (*(a1 + 32))
      {
        if (qword_100B508B0 != -1)
        {
          sub_100859FB4();
        }

        sub_10076F2BC(off_100B508A8, *(a1 + 32));
        goto LABEL_12;
      }
    }

    else if (v4 == 1 && *(a1 + 32))
    {
      if (qword_100B508B0 != -1)
      {
        sub_100859FB4();
      }

      sub_10076F1DC(off_100B508A8, *(a1 + 32));
LABEL_12:
      v5 = 0;
      goto LABEL_15;
    }

    v5 = 3;
  }

LABEL_15:
  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v5);
    xpc_connection_send_message(*(v3 + 16), v8);

    xpc_release(v8);
  }
}

void sub_10066AEB4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  if (v3 == 2)
  {
    if (*(a1 + 32))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085AE24();
      }

      if (qword_100B508B0 != -1)
      {
        sub_10085681C();
      }

      sub_10076F478(off_100B508A8, *(a1 + 32));
      goto LABEL_15;
    }
  }

  else if (v3 == 1 && *(a1 + 32))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085AE94();
    }

    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    sub_10076F398(off_100B508A8, *(a1 + 32));
LABEL_15:
    v4 = 0;
    goto LABEL_17;
  }

  v4 = 3;
LABEL_17:
  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v4);
    xpc_connection_send_message(*(v2 + 16), v6);
    xpc_release(v6);
  }
}

void sub_10066AFF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  sub_1003AFB24(v3, v4, v5);
}

void sub_10066B04C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1000787AC(v2, v3);
}

void sub_10066B0A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  v4 = sub_10009DA04(off_100B508B8);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = sub_10005201C(*(*(&v9 + 1) + 8 * i), *(v3 + 168), *(v3 + 80));
        xpc_array_append_value(*(a1 + 40), v8);
        xpc_release(v8);
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10066B200(void *a1, uint64_t a2)
{
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  v3 = off_100B508B8;
  v4 = a1[4];
  v5 = a1[5] == 1;
  v6 = a1[6] == 1;
  v7 = a1[7] == 1;

  sub_1007BF568(v3, v4, v5, v6, v7);
}

void sub_10066B270(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[6] != 0;

  sub_1003B0024(v3, v4, v5, v6, (a1 + 7));
}

void sub_10066B2DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48) != 0;
  v7 = *(a1 + 56);

  sub_1003AFF78(v3, v4, v5, v6, v7);
}

void sub_10066B348(uint64_t a1, uint64_t a2)
{
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  sub_1007C2AA4(off_100B508B8, *(a1 + 32));
  if (*(a1 + 40) == 1)
  {
    if (qword_100B508B0 != -1)
    {
      sub_100859FB4();
    }

    v3 = off_100B508A8;
    sub_10004DFB4(v4, *(a1 + 32));
    sub_10074CD90(v3, v4, 2);
  }
}

void sub_10066B40C(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[6] != 0;

  sub_1003AFD70(v3, v4, v5, v6);
}

_OWORD *sub_10066B474(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003AFEE4(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10066B4D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v13[0] = v8;
  v12[0] = @"kCBMsgArgDeviceUUID";
  v12[1] = @"kCBMsgArgPairingType";
  v9 = [NSNumber numberWithUnsignedInt:a4];
  v13[1] = v9;
  v12[2] = @"kCBMsgArgPairingPasskey";
  v10 = [NSNumber numberWithUnsignedInt:a5];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  sub_100052EE4(a1, 18, v11);
}

void sub_10066B620(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    *uuid = 0;
    v14 = 0;
    [v8 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a4);
  if (a4 == 168)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v11 = sub_10078A948(off_100B508C8, v9);
    v12 = v11;
    if (v11)
    {
      *uuid = 0;
      v14 = 0;
      [v11 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceOriginalUUID", uuid);
    }
  }

  else if (!a4)
  {
    v10 = sub_100052B30(v9);
    xpc_dictionary_set_int64(v7, "kCBMsgArgPairingState", v10);
  }

  sub_10004DFB8(a1, 19, v7, 1);
}

void sub_10066B7D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = @"kCBMsgArgDeviceUUID";
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  sub_100052EE4(a1, 20, v5);
}

void sub_10066B8A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = v6;
  if (*(a1 + 168) == 1)
  {
    v10[0] = @"kCBMsgArgDeviceUUID";
    v10[1] = @"kCBMsgArgState";
    v11[0] = v6;
    v8 = [NSNumber numberWithBool:a4];
    v11[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    sub_100052EE4(a1, 177, v9);
  }
}

void sub_10066B9C4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 80) >= 1 && [*(a1 + 32) length])
  {
    if (qword_100B512F8 != -1)
    {
      sub_1000C10B4();
    }

    v3 = sub_1003BF5E0(off_100B512F0, *(a1 + 32));
  }

  else
  {
    v3 = 0;
  }

  xpc_dictionary_set_int64(*(*(*(a1 + 40) + 8) + 24), "kCBMsgArgCount", v3);
  xpc_connection_send_message(*(v2 + 16), *(*(*(a1 + 40) + 8) + 24));
  v4 = *(*(*(a1 + 40) + 8) + 24);

  xpc_release(v4);
}

uint64_t sub_10066BA7C(uint64_t a1, xpc_object_t object, uint64_t a3)
{
  v175 = &off_100AE0A78;
  v176 = 0;
  v173 = &off_100AE0A78;
  v174 = 0;
  type = xpc_get_type(object);
  if (type != &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v8 = xpc_get_type(object);
      sub_10085AF18(v8, buf);
    }

    goto LABEL_4;
  }

  if (*(a1 + 80) >= 2)
  {
    v157 = 0;
    type = xpc_dictionary_get_value(object, "kCBAdvOptionHoldPowerAssertion");
    if (type)
    {
      type = sub_100013DE8(type, &v157);
      v9 = type;
      if (type)
      {
        goto LABEL_5;
      }

      if (v157)
      {
        *(*(a3 + 8) + 360) = 1;
        v11 = qword_100BCE950;
        type = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
        if (type)
        {
          v12 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v12 = *v12;
          }

          *buf = 136315138;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "session %s asking to hold a power assertion for advertising", buf, 0xCu);
        }
      }
    }
  }

  if (*(a1 + 185) == 1)
  {
    *buf = 0;
    value = xpc_dictionary_get_value(object, "kCBAdvOptionUseFGInterval");
    if (value)
    {
      v9 = sub_100013DE8(value, buf);
      if (v9)
      {
        goto LABEL_5;
      }

      v14 = 48;
    }

    else
    {
      v14 = 290;
    }

    type = xpc_dictionary_get_value(object, "kCBAdvOptionAdvertisingInterval");
    if (type)
    {
      type = sub_100013DE8(type, buf);
      v9 = type;
      if (type)
      {
        goto LABEL_5;
      }

      v14 = *buf;
      if ((*buf - 16385) < 0xFFFFFFFFFFFFC01FLL)
      {
LABEL_4:
        v9 = 3;
        goto LABEL_5;
      }
    }
  }

  else
  {
    v14 = 290;
  }

  if ((((v14 - 37) >> 1) | ((v14 - 37) << 15)) <= 0xBu && ((1 << ((v14 - 37) >> 1)) & 0x92D) != 0 || (v46 = sub_10000C798(type, v7), type = (*(*v46 + 768))(v46), v15 = type, type <= v14))
  {
    LOWORD(v15) = v14;
  }

  else
  {
    v47 = qword_100BCE950;
    type = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
    if (type)
    {
      *buf = 134218496;
      *&buf[4] = v14 * 0.625;
      *&buf[12] = 2048;
      *&buf[14] = v15 * 0.625;
      *&buf[22] = 2048;
      *&buf[24] = *&buf[14];
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Limit advertising interval from %.2f msec to %.2f msec (hw limit %.2f)", buf, 0x20u);
    }
  }

  *(*(a3 + 8) + 222) = v15;
  v172 = 0;
  if (*(a1 + 80) <= 0)
  {
    v171 = 0;
  }

  else
  {
    v16 = xpc_dictionary_get_value(object, "kCBAdvOptionForcePrimaryPHY");
    if (v16)
    {
      v9 = sub_100013DE8(v16, &v172);
      if (v9)
      {
        goto LABEL_5;
      }

      if (v172 - 1 <= 2)
      {
        *(*(a3 + 8) + 339) = v172;
      }
    }

    v172 = 0;
    type = xpc_dictionary_get_value(object, "kCBAdvOptionForceSecondaryPHY");
    if (type)
    {
      type = sub_100013DE8(type, &v172);
      v9 = type;
      if (type)
      {
        goto LABEL_5;
      }

      if (v172 - 1 <= 2)
      {
        *(*(a3 + 8) + 340) = v172;
      }
    }

    v17 = *(a1 + 80);
    v171 = 0;
    if (v17 >= 1)
    {
      v18 = xpc_dictionary_get_value(object, "kCBAdvOptionForcePrimaryPhyOptions");
      if (v18)
      {
        v9 = sub_100013DE8(v18, &v171);
        if (v9)
        {
          goto LABEL_5;
        }

        if (v171 - 1 <= 3)
        {
          *(*(a3 + 8) + 343) = v171;
        }
      }

      v171 = 0;
      type = xpc_dictionary_get_value(object, "kCBAdvOptionForceSecondaryPhyOptions");
      if (type)
      {
        type = sub_100013DE8(type, &v171);
        v9 = type;
        if (type)
        {
          goto LABEL_5;
        }

        if (v171 - 1 <= 3)
        {
          *(*(a3 + 8) + 344) = v171;
        }
      }
    }
  }

  v170 = 0;
  v169 = 0;
  v142 = &off_100AE0A78;
  v167 = &off_100AE0A78;
  v168 = 0;
  if (*(a1 + 80) <= 0)
  {
    v141 = 0;
    v166 = 0;
  }

  else
  {
    v19 = sub_10000C7D0(type, v7);
    type = sub_100095E40(v19, v20);
    if (type && (type = _os_feature_enabled_impl(), type))
    {
      v21 = xpc_dictionary_get_value(object, "kCBAdvOptionUseDecisionBasedAdvPayload");
      v22 = xpc_dictionary_get_value(object, "kCBAdvOptionDBAFDecisionTypeFlags");
      v23 = xpc_dictionary_get_value(object, "kCBAdvOptionDBAFDecisionDataLength");
      type = xpc_dictionary_get_value(object, "kCBAdvOptionDBAFDecisionData");
      v141 = 0;
      if (v21)
      {
        if (v22)
        {
          if (v23)
          {
            v24 = type;
            if (type)
            {
              if (sub_10037CA58(v21, &v170 + 1) || sub_10037CA58(v22, &v170) || sub_10037CA58(v23, &v169) || sub_1000C9980(v24, &v167))
              {
                if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
                {
                  sub_10085AF5C();
                }

                v9 = 3;
                goto LABEL_275;
              }

              v58 = sub_10000C5F8(&v167);
              v59 = [NSData dataWithBytes:v58 length:v169];
              v60 = *(a3 + 8);
              v61 = v170;
              v62 = v169;
              *(v60 + 345) = HIBYTE(v170);
              *(v60 + 346) = v61;
              *(v60 + 347) = v62;
              v141 = v59;
              objc_storeStrong((v60 + 352), v59);
            }
          }
        }
      }
    }

    else
    {
      v141 = 0;
    }

    v25 = *(a1 + 80);
    v166 = 0;
    if (v25 >= 1)
    {
      type = xpc_dictionary_get_value(object, "kCBAdvOptionStopOnAdvertisingAddressChange");
      if (type)
      {
        type = sub_100013DE8(type, &v166);
        v9 = type;
        if (type)
        {
          goto LABEL_274;
        }
      }
    }
  }

  *(*(a3 + 8) + 307) = v166 != 0;
  if (*(a1 + 80) > 1)
  {
    v26 = sub_10000C7D0(type, v7);
    v27 = (*(*v26 + 3032))(v26);
    if (v27)
    {
      *buf = 0;
      v27 = xpc_dictionary_get_value(object, "kCBAdvertisementEnableEPA");
      if (v27)
      {
        v27 = sub_100013DE8(v27, buf);
        v9 = v27;
        if (v27)
        {
          goto LABEL_274;
        }

        *(*(a3 + 8) + 409) = *buf != 0;
      }
    }

    if (*(a1 + 80) >= 2)
    {
      v29 = sub_10000C7D0(v27, v28);
      if ((*(*v29 + 2720))(v29))
      {
        *buf = 0;
        v30 = xpc_dictionary_get_value(object, "kCBAdvDataObjectLocatorInstance");
        if (v30)
        {
          v9 = sub_100013DE8(v30, buf);
          if (v9)
          {
            goto LABEL_274;
          }

          *(*(a3 + 8) + 308) = *buf != 0;
        }
      }
    }
  }

  v165 = 1;
  v31 = xpc_dictionary_get_value(object, "kCBAdvDataIsConnectable");
  if (v31)
  {
    v9 = sub_100013DE8(v31, &v165);
    if (v9)
    {
      goto LABEL_274;
    }
  }

  v32 = *(a3 + 8);
  v33 = v165 == 0;
  *(v32 + 12) = v165 != 0;
  v34 = v33;
  *(v32 + 264) = v34;
  v164 = 0;
  v35 = xpc_dictionary_get_value(object, "kCBAdvDataIsObjectDiscovery");
  if (v35)
  {
    v9 = sub_100013DE8(v35, &v164);
    if (v9)
    {
      goto LABEL_274;
    }

    *(*(a3 + 8) + 264) = 3;
  }

  v163 = 0;
  v36 = xpc_dictionary_get_value(object, "kCBAdvDataIsExtended");
  if (v36)
  {
    v9 = sub_100013DE8(v36, &v163);
    if (v9)
    {
      goto LABEL_274;
    }

    v37 = *(a3 + 8);
    *(v37 + 264) = 4;
    *(v37 + 12) = 0;
  }

  v162 = 0;
  v38 = xpc_dictionary_get_value(object, "kCBAdvDataIsExtendedConnectable");
  if (v38)
  {
    v9 = sub_100013DE8(v38, &v162);
    if (v9)
    {
      goto LABEL_274;
    }

    v39 = *(a3 + 8);
    *(v39 + 264) = 4;
    *(v39 + 12) = 1;
  }

  v161 = 0;
  v40 = xpc_dictionary_get_value(object, "kCBAdvDataIsTDS");
  if (!v40)
  {
    goto LABEL_97;
  }

  v9 = sub_100013DE8(v40, &v161);
  if (!v9)
  {
    *(*(a3 + 8) + 264) = 2;
LABEL_97:
    v140 = sub_100013C04(object, "kCBAdvDataLocalName");
    if (v140)
    {
      v41 = *(a3 + 8);
      v42 = v140;
      sub_100007E30(&v160, [v140 UTF8String]);
      std::string::operator=((v41 + 16), &v160);
      if (SHIBYTE(v160.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v160.__r_.__value_.__l.__data_);
      }
    }

    v43 = xpc_dictionary_get_value(object, "kCBAdvDataAppearance");
    if (v43)
    {
      *buf = 0;
      v9 = sub_100013DE8(v43, buf);
      if (v9)
      {
LABEL_273:

        goto LABEL_274;
      }

      *(*(a3 + 8) + 40) = *buf;
    }

    v157 = 0;
    v158 = 0;
    v159 = 0;
    v44 = xpc_dictionary_get_value(object, "kCBAdvDataServiceUUIDs");
    if (v44)
    {
      v9 = sub_1000660D0(v44, &v157);
      if (v9)
      {
LABEL_271:
        if (v157)
        {
          v158 = v157;
          operator delete(v157);
        }

        goto LABEL_273;
      }

      for (i = v157; i != v158; i = (i + 20))
      {
        sub_10000CDB8((*(a3 + 8) + 64), i);
      }
    }

    v154 = 0;
    v155 = 0;
    v156 = 0;
    v48 = xpc_dictionary_get_value(object, "kCBAdvDataSolicitedServiceUUIDs");
    if (v48)
    {
      v9 = sub_1000660D0(v48, &v154);
      if (v9)
      {
        goto LABEL_269;
      }

      for (j = v154; j != v155; j = (j + 20))
      {
        sub_10000CDB8((*(a3 + 8) + 88), j);
      }
    }

    if (*(a1 + 185) == 1)
    {
      v50 = xpc_dictionary_get_value(object, "kCBAdvDataAppleMfgData");
      if (v50)
      {
        v9 = sub_1000C9980(v50, &v175);
        if (v9)
        {
          goto LABEL_269;
        }

        sub_10000AE20(*(a3 + 8) + 48, &v175);
      }
    }

    v51 = xpc_dictionary_get_value(object, "kCBAdvDataLeBluetoothDeviceAddress");
    if (v51)
    {
      v9 = sub_1000C9980(v51, &v173);
      if (v9)
      {
        goto LABEL_269;
      }

      sub_10000AE20(*(a3 + 8) + 136, &v173);
    }

    v52 = xpc_dictionary_get_value(object, "kCBAdvDataNonAppleMfgData");
    if (v52)
    {
      v9 = sub_1000C9980(v52, &v175);
      if (v9)
      {
        goto LABEL_269;
      }

      sub_10000AE20(*(a3 + 8) + 152, &v175);
    }

    if (sub_10000D26C(&v175))
    {
      *buf = 0;
      *&buf[8] = 0;
      *&buf[23] = 0;
      *&buf[16] = 0;
      v53 = xpc_dictionary_get_value(object, "kCBAdvDataAppleBeaconKey");
      if (v53)
      {
        v9 = sub_1000C9980(v53, &v175);
        if (v9)
        {
          goto LABEL_269;
        }

        if (sub_10000C5E0(&v175) != 21)
        {
          goto LABEL_140;
        }

        *buf = 5046042;
        *&buf[4] = 5378;
        sub_10004B788(&v175, &buf[6], 0x15uLL);
        v54 = *(a3 + 8);
        sub_10000C704(v178, buf, 0x1BuLL);
        sub_10000AE20(v54 + 48, v178);
        *v178 = &off_100AE0A78;
        if (*&v178[8])
        {
          sub_10000C808(*&v178[8]);
        }
      }
    }

    v55 = xpc_dictionary_get_value(object, "kCBAdvDataTDSData");
    if (v55)
    {
      v56 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "TDS advertising data found", buf, 2u);
      }

      if (*(a1 + 189) == 1)
      {
        v9 = sub_1000C9980(v55, &v175);
        if (v9)
        {
          goto LABEL_269;
        }

        if (sub_10000C5E0(&v175) <= 2)
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v57 = sub_10000C5E0(&v175);
            sub_10085AF98(buf, v57);
          }

LABEL_140:
          v9 = 1;
          goto LABEL_269;
        }

        v64 = sub_10000C5E0(&v175);
        v65 = __chkstk_darwin(v64);
        v66 = &v138 - ((v65 + 17) & 0xFFFFFFFFFFFFFFF0);
        bzero(v66, v65 + 2);
        *v66 = v64 + 1;
        v66[1] = 38;
        sub_10004B788(&v175, v66 + 2, v64);
        v67 = *(a3 + 8);
        sub_10000C704(buf, v66, v64 + 2);
        sub_10000AE20(v67 + 224, buf);
        *buf = &off_100AE0A78;
        if (*&buf[8])
        {
          sub_10000C808(*&buf[8]);
        }
      }

      else
      {
        v63 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "TDS advertising not allowed", buf, 2u);
        }
      }
    }

    v68 = xpc_dictionary_get_value(object, "kCBAdvDataRawBytesDataAdvInd");
    if (v68 || (v68 = xpc_dictionary_get_value(object, "kCBAdvDataRawBytesData")) != 0)
    {
      v69 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "Raw bytes advertising data found for ADV_IND", buf, 2u);
      }

      if (*(a1 + 191) == 1)
      {
        v9 = sub_1000C9980(v68, &v175);
        if (v9)
        {
          goto LABEL_269;
        }

        sub_10000AE20(*(a3 + 8) + 272, &v175);
      }

      else
      {
        v70 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Raw bytes advertising not allowed", buf, 2u);
        }
      }
    }

    v71 = xpc_dictionary_get_value(object, "kCBAdvDataRawBytesDataScanRsp");
    if (v71)
    {
      v72 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Raw bytes advertising data found for SCAN_RSP", buf, 2u);
      }

      if (*(a1 + 191) == 1)
      {
        v9 = sub_1000C9980(v71, &v175);
        if (v9)
        {
          goto LABEL_269;
        }

        sub_10000AE20(*(a3 + 8) + 288, &v175);
      }

      else
      {
        v73 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "Raw bytes advertising not allowed", buf, 2u);
        }
      }
    }

    v153 = 0;
    if (*(a1 + 80) < 1)
    {
      goto LABEL_171;
    }

    v74 = xpc_dictionary_get_value(object, "kCBAdvDataIsContact");
    if (v74)
    {
      v74 = sub_100013DE8(v74, &v153);
      v9 = v74;
      if (v74)
      {
LABEL_269:
        if (v154)
        {
          v155 = v154;
          operator delete(v154);
        }

        goto LABEL_271;
      }
    }

    if (v153)
    {
      v76 = sub_10000C798(v74, v75);
      if (((*(*v76 + 384))(v76) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085AFDC();
        }

        v9 = 11;
        goto LABEL_269;
      }

      v77 = *(a3 + 8);
      *(v77 + 264) = 2;
      *(v77 + 307) = 1;
      *buf = 0;
      v78 = xpc_dictionary_get_value(object, "kCBAdvOptionUseFGInterval");
      if (v78)
      {
        v9 = sub_100013DE8(v78, buf);
        if (v9)
        {
          goto LABEL_269;
        }

        v79 = 48;
      }

      else
      {
        v79 = 432;
      }

      v107 = xpc_dictionary_get_value(object, "kCBAdvOptionAdvertisingInterval");
      if (v107)
      {
        v9 = sub_100013DE8(v107, buf);
        if (v9)
        {
          goto LABEL_269;
        }

        v79 = *buf;
        if ((*buf - 16385) < 0xFFFFFFFFFFFFC01FLL)
        {
          goto LABEL_173;
        }
      }

      *(*(a3 + 8) + 222) = v79;
      v80 = v153 != 0;
    }

    else
    {
LABEL_171:
      v80 = 0;
    }

    if (sub_10067A1B8(a1, v80, a3))
    {
LABEL_173:
      v9 = 3;
      goto LABEL_269;
    }

    if (*(a1 + 80) == 2)
    {
      v139 = sub_10037CFB0(object, "kCBAdvDataServiceData");
      if (v139)
      {
        v81 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
        {
          v82 = [v139 count];
          *buf = 67109120;
          *&buf[4] = v82;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "Service data %d elements", buf, 8u);
        }

        if ([v139 count])
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085B018();
          }

LABEL_219:

          goto LABEL_173;
        }

        v84 = 0;
        *&v83 = 136446466;
        v138 = v83;
        while (1)
        {
          v186 = 0uLL;
          v85 = v84;
          v187 = 0;
          v86 = [v139 objectAtIndexedSubscript:{v84, v138}];
          v87 = v86;
          v88 = [v86 bytes];
          v89 = [v139 objectAtIndexedSubscript:v85];
          sub_100065F40(&v186, v88, [v89 length]);

          v151 = 0;
          v152 = 0;
          v90 = [v139 objectAtIndexedSubscript:v85 | 1];
          v91 = v90;
          v92 = [v90 bytes];
          v93 = [v139 objectAtIndexedSubscript:v85 | 1];
          sub_10000C704(&v151, v92, [v93 length]);

          if (v186 >= 3u)
          {
            break;
          }

          v94 = sub_10000C5E0(&v151);
          v95 = qword_100BCE950;
          if (v94 >= 0x15)
          {
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_10085B054(v184, &v185);
            }

            goto LABEL_186;
          }

          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            sub_10003B85C(&v186, buf);
            v97 = buf[23];
            v98 = *buf;
            sub_10000C250(&v151, v178);
            v99 = buf;
            if (v97 < 0)
            {
              v99 = v98;
            }

            v100 = v178;
            if (v179 < 0)
            {
              v100 = *v178;
            }

            *v180 = v138;
            v181 = v99;
            v182 = 2080;
            v183 = v100;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Adding service Data UUID:%{public}s data:%s", v180, 0x16u);
            if (v179 < 0)
            {
              operator delete(*v178);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          sub_10067A424(*(a3 + 8), &v186, &v151);
          v96 = 1;
LABEL_197:
          v151 = &off_100AE0A78;
          if (v152)
          {
            sub_10000C808(v152);
          }

          if (!v96)
          {
            goto LABEL_219;
          }

          v101 = [v139 objectAtIndexedSubscript:(v85 + 2)];
          v102 = v101 == 0;

          v84 = v85 + 2;
          if (v102)
          {
            goto LABEL_201;
          }
        }

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085B09C(&v149, v150);
        }

LABEL_186:
        v96 = 0;
        goto LABEL_197;
      }

LABEL_201:
    }

    v139 = sub_100013C04(object, "kCBAdvOptionInstanceAddress");
    if (v139)
    {
      v103 = sub_100777FF4(v139);
      v104 = v103;
      if (v103 && (!BYTE6(v103) || BYTE6(v103) == 1 && (v103 & 0xC00000000000) != 0x800000000000))
      {
        v108 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v109 = sub_100063D0C(v104);
          *buf = 138412546;
          *&buf[4] = v139;
          *&buf[12] = 2112;
          *&buf[14] = v109;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Overriding address with address string %@ (%@)", buf, 0x16u);
        }
      }

      else
      {
        v105 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v106 = sub_100063D0C(v104);
          sub_10085B0D0(v139, v106, v180, v105);
        }
      }

      *(*(a3 + 8) + 256) = v104;
    }

    v110 = xpc_dictionary_get_value(object, "kCBAdvOptionInstanceRandomAddressBytes");
    if (!v110)
    {
LABEL_243:
      v127 = sub_10003ED64(object, "kCBManagerListOfClients");
      if (!v127)
      {
        v127 = [NSArray arrayWithObjects:*(a1 + 96), 0];
      }

      v128 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v127;
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Setting client list to %@", buf, 0xCu);
      }

      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v145 = 0u;
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v129 = v127;
      v130 = [v129 countByEnumeratingWithState:&v145 objects:v177 count:16];
      if (v130)
      {
        v131 = *v146;
        do
        {
          for (k = 0; k != v130; k = k + 1)
          {
            if (*v146 != v131)
            {
              objc_enumerationMutation(v129);
            }

            sub_100007E30(v178, [*(*(&v145 + 1) + 8 * k) UTF8String]);
            sub_100071970(buf, v178, v178);
            if (v179 < 0)
            {
              operator delete(*v178);
            }
          }

          v130 = [v129 countByEnumeratingWithState:&v145 objects:v177 count:16];
        }

        while (v130);
      }

      v133 = *(a3 + 8);
      sub_100068968(&v143, buf);
      if ((v133 + 416) != &v143)
      {
        sub_1000717E8((v133 + 416), v143, &v144);
      }

      sub_10004B61C(&v143, v144);
      if (*(a1 + 80) >= 1)
      {
        *v178 = 0;
        v134 = xpc_dictionary_get_value(object, "kCBOptionUseCase");
        if (v134)
        {
          v9 = sub_100013DE8(v134, v178);
          if (v9)
          {
LABEL_267:
            sub_10004B61C(buf, *&buf[8]);

            goto LABEL_268;
          }

          if (*v178)
          {
            v135 = xpc_dictionary_get_value(object, "kCBOptionUseCaseOptions");
            if (v135)
            {
              v136 = sub_100050F18(v135);
            }

            else
            {
              v136 = 0;
            }

            v137 = *(a3 + 8);
            *(v137 + 440) = *v178;
            objc_storeStrong((v137 + 480), v136);
          }
        }
      }

      v9 = 0;
      goto LABEL_267;
    }

    v9 = sub_1000C9980(v110, &v175);
    if (v9)
    {
LABEL_268:

      goto LABEL_269;
    }

    if (sub_10000C5E0(&v175) < 6)
    {
      v9 = 8;
      goto LABEL_268;
    }

    v111 = *sub_10000C5F8(&v175);
    *&v138 = *(sub_10000C5F8(&v175) + 1);
    v112 = *(sub_10000C5F8(&v175) + 2);
    v113 = *(sub_10000C5F8(&v175) + 3);
    v114 = *(sub_10000C5F8(&v175) + 4);
    v115 = sub_10000C5F8(&v175);
    v116 = (v138 << 32) | (v111 << 40) | (v112 << 24) | (v113 << 16) | (v114 << 8) | *(v115 + 5) | 0x1000000000000;
    v117 = qword_100BCE950;
    if ((v111 & 0xC0) == 0x80)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10000C250(&v175, buf);
        v118 = buf[23];
        v119 = *buf;
        v120 = sub_100063D0C(v116);
        if (v118 >= 0)
        {
          v121 = buf;
        }

        else
        {
          v121 = v119;
        }

        v122 = v120;
        *v178 = 136315394;
        *&v178[4] = v121;
        *&v178[12] = 2112;
        *&v178[14] = v122;
        _os_log_error_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "Overriding address with Invalid address data %s (%@)", v178, 0x16u);

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

LABEL_241:
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000C250(&v175, buf);
      v123 = buf[23];
      v124 = *buf;
      v125 = sub_100063D0C(v116);
      if (v123 >= 0)
      {
        v126 = buf;
      }

      else
      {
        v126 = v124;
      }

      v122 = v125;
      *v178 = 136315394;
      *&v178[4] = v126;
      *&v178[12] = 2112;
      *&v178[14] = v122;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "Overriding address with address data %s (%@)", v178, 0x16u);

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      goto LABEL_241;
    }

    *(*(a3 + 8) + 256) = v116;
    goto LABEL_243;
  }

LABEL_274:

LABEL_275:
  v167 = v142;
  if (v168)
  {
    sub_10000C808(v168);
  }

LABEL_5:
  v173 = &off_100AE0A78;
  if (v174)
  {
    sub_10000C808(v174);
  }

  v175 = &off_100AE0A78;
  if (v176)
  {
    sub_10000C808(v176);
  }

  return v9;
}

void sub_10066D320(_Unwind_Exception *a1)
{
  if (*(v4 - 121) < 0)
  {
    operator delete(*(v4 - 144));
  }

  v6 = *(v1 + 176);
  if (v6)
  {
    *(v1 + 184) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 200);
  if (v7)
  {
    *(v1 + 208) = v7;
    operator delete(v7);
  }

  *(v1 + 296) = *(v1 + 48);
  v8 = *(v1 + 304);
  if (v8)
  {
    sub_10000C808(v8);
  }

  *(v1 + 336) = v3;
  v9 = *(v1 + 344);
  if (v9)
  {
    sub_10000C808(v9);
  }

  *(v1 + 352) = v2;
  v10 = *(v1 + 360);
  if (v10)
  {
    sub_10000C808(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066D5F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B368C(off_100B512F0, *(v2 + 128), a1 + 48);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10066D654(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 48) = &off_100AE0AB8;
  *(a1 + 56) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_10066D688(uint64_t a1)
{
  *(a1 + 48) = &off_100AE0AB8;
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

void sub_10066D6B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1003B3708(v2, v3);
}

uint64_t sub_10066D70C(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  v17 = &off_100AE0A78;
  v18 = 0;
  if (*(a1 + 80) < 2)
  {
    return 0;
  }

  __p = 0;
  value = xpc_dictionary_get_value(xdict, "kCBPeriodicAdvDataAdvHandle");
  if (value)
  {
    v7 = sub_100013DE8(value, &__p);
    if (v7)
    {
      goto LABEL_30;
    }

    if (__p > 0xEF)
    {
      goto LABEL_5;
    }

    *a3 = __p;
  }

  if (*(a1 + 80) >= 2)
  {
    __p = 0;
    v8 = xpc_dictionary_get_value(xdict, "KCBPeriodicAdvDataInterval");
    if (v8)
    {
      v7 = sub_100013DE8(v8, &__p);
      if (v7)
      {
        goto LABEL_30;
      }

      if (__p - 0x10000 < 0xFFFFFFFFFFFF0006)
      {
LABEL_5:
        v7 = 3;
        goto LABEL_30;
      }

      *(a3 + 2) = __p;
    }

    if (*(a1 + 80) >= 2)
    {
      __p = 0;
      v15 = 0;
      v16 = 0;
      v9 = xpc_dictionary_get_value(xdict, "KCBPeriodicAdvDataServiceUUIDs");
      if (v9)
      {
        v7 = sub_1000660D0(v9, &__p);
        v10 = __p;
        if (v7)
        {
          if (__p)
          {
            v15 = __p;
            operator delete(__p);
          }

          goto LABEL_30;
        }

        if (__p != v15)
        {
          do
          {
            sub_10000CDB8((a3 + 24), v10);
            v10 = (v10 + 20);
          }

          while (v10 != v15);
          v10 = __p;
        }

        if (v10)
        {
          v15 = v10;
          operator delete(v10);
        }
      }

      if (*(a1 + 80) >= 2)
      {
        v11 = xpc_dictionary_get_value(xdict, "KCBPeriodicAdvDataRandomData");
        if (v11)
        {
          v12 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
          {
            LOWORD(__p) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Raw bytes advertising data found", &__p, 2u);
          }

          v7 = sub_1000C9980(v11, &v17);
          if (v7)
          {
            goto LABEL_30;
          }

          sub_10000AE20(a3 + 48, &v17);
        }
      }
    }
  }

  v7 = 0;
LABEL_30:
  v17 = &off_100AE0A78;
  if (v18)
  {
    sub_10000C808(v18);
  }

  return v7;
}

void sub_10066D93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  if (a14)
  {
    sub_10000C808(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10066D97C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B50C68 != -1)
  {
    sub_10085B150();
  }

  result = sub_10072BBA0(off_100B50C60, *(v2 + 128), a1 + 48);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10066D9D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  sub_10000CB74((a1 + 72), (a2 + 72));
  v5 = *(a2 + 104);
  *(a1 + 96) = &off_100AE0A78;
  *(a1 + 104) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }
}

void sub_10066DA74(_Unwind_Exception *exception_object)
{
  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v1[7] = v2;
  v5 = v1[8];
  if (v5)
  {
    sub_10000C808(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10066DAA8(void *a1)
{
  a1[12] = &off_100AE0A78;
  v2 = a1[13];
  if (v2)
  {
    sub_10000C808(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  a1[7] = &off_100AE0A78;
  v4 = a1[8];
  if (v4)
  {

    sub_10000C808(v4);
  }
}

void *sub_10066DB48(void *a1)
{
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  a1[1] = &off_100AE0A78;
  v4 = a1[2];
  if (v4)
  {
    sub_10000C808(v4);
  }

  return a1;
}

uint64_t sub_10066DBD4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B50C68 != -1)
  {
    sub_10085B150();
  }

  result = sub_10072C07C(off_100B50C60, *(v2 + 128), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10066DC30(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1006795AC;
    applier[3] = &unk_100AEE500;
    applier[4] = a2;
    if (xpc_array_apply(a1, applier))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B164(a1);
    }

    return 3;
  }
}

uint64_t sub_10066DD04(void *a1, void ***a2)
{
  if (xpc_get_type(a1) != &_xpc_type_array)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B164(a1);
    }

    return 3;
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100679D08;
  applier[3] = &unk_100AEE500;
  applier[4] = a2;
  if (!xpc_array_apply(a1, applier))
  {
    for (i = *a2; i != a2[1]; ++i)
    {
      v6 = *i;
      __p = 0;
      v11 = 0;
      v12 = 0;
      sub_100007F20(&__p, v6 + 13);
      v8 = __p;
      v7 = v11;
      while (v8 != v7)
      {
        if (*v8)
        {
          (*(**v8 + 8))(*v8);
          v7 = v11;
        }

        ++v8;
      }

      v9 = v6[12];
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      (*(*v6 + 8))(v6);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }
    }

    return 3;
  }

  return 0;
}

void sub_10066DEB4(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  *(*(a1[4] + 8) + 24) = sub_1003B3334(off_100B512F0, *(v2 + 128), a1[6]);
  v3 = qword_100BCE950;
  if (*(*(a1[4] + 8) + 24))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B1E4();
    }

    v4 = a1[6];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Collecting GATT metrics to send to Biome", __p, 2u);
    }

    v5 = objc_opt_new();
    [v5 setObject:@"Peripheral" forKeyedSubscript:@"SessionType"];
    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v6 = [NSNumber numberWithUnsignedChar:sub_10006E254(off_100B512F0, *(v2 + 128))];
    [v5 setObject:v6 forKeyedSubscript:@"SessionState"];

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if (sub_100026F14(off_100B512F0, *(v2 + 128)))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008565BC();
      }

      v7 = sub_100024BEC(off_100B512F0, *(v2 + 128));
    }

    else
    {
      v7 = 0;
    }

    v8 = [NSNumber numberWithBool:v7];
    [v5 setObject:v8 forKeyedSubscript:@"SupportsStateRestoration"];

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v9 = [NSNumber numberWithBool:sub_100070518(off_100B512F0, *(v2 + 128))];
    [v5 setObject:v9 forKeyedSubscript:@"SupportsBackgrounding"];

    [v5 setObject:*(v2 + 96) forKeyedSubscript:@"BundleID"];
    v10 = a1[6];
    v19 = *(v10 + 72);
    v20 = *(v10 + 88);
    sub_10000D03C(&v18, &v19);
    sub_10003B85C(&v18, __p);
    if (v17 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithUTF8String:v11];
    [v5 setObject:v12 forKeyedSubscript:@"ServiceUUID"];

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = sub_10000F034(v13, v14);
    (*(*v15 + 304))(v15, v5);
  }
}

void sub_10066E208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066E26C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  return sub_1003B33AC(v3, v4, v5);
}

void sub_10066E2C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1003ADCD4(v2, v3);
}

void sub_10066E31C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  sub_1003B38FC(off_100B512F0, v3, v4, v5, a1 + 56, &v6);
}

void sub_10066E388(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_10066E3BC(uint64_t a1)
{
  *(a1 + 56) = &off_100AE0A78;
  v1 = *(a1 + 64);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

void sub_10066E3EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  sub_1003B39A8(v3, v4, v5, v6, a1 + 56);
}

void sub_10066E450(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  if (sub_1003AD798(off_100B512F0, *(v1 + 128), 1))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B254();
    }
  }
}

void sub_10066E4D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  v11 = qword_100B53FD0;
  v3 = *(v2 + 128);
  v4 = *(v2 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56) != 0;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  sub_10004DFB4(uu, *(a1 + 32));
  sub_1004C6C6C(v11, v3, (v2 + 152), v4, v5, v6, v7, v8, v10, v9, uu, 1, *(a1 + 96));
}

void sub_10066E62C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 64);
  sub_10004DFB4(v8, *(a1 + 32));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10066E72C;
  v7[3] = &unk_100B04808;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 48);
  v7[5] = v2;
  sub_1004C87F8(v3, v4, v5, v8, v6, v7);
}

void sub_10066E72C(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v7 = *(a1 + 40);
  xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBMsgArgResult", a4);
  xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBMsgArgCID", a2);
  xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBMsgArgDataLength", a3);
  xpc_connection_send_message(*(v7 + 16), *(*(*(a1 + 32) + 8) + 24));
  v8 = *(*(*(a1 + 32) + 8) + 24);

  xpc_release(v8);
}

void sub_10066E7E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 48);
  sub_10004DFB4(uu, *(a1 + 32));
  sub_1004C8290(v3, v4, v5, uu);
}

void sub_10066E888(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  sub_1004C562C(qword_100B53FD0, *(v2 + 128), v2 + 152, *(v2 + 40), *(a1 + 40), *(a1 + 48) != 0, *(a1 + 56) != 0, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), 1u, *(a1 + 96));
}

void sub_10066E95C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B53FD8 != -1)
  {
    sub_10085AD8C();
  }

  v3 = qword_100B53FD0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  sub_1004C64D0(v3, v4, v5);
}

uint64_t sub_10066E9B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100777FF4(*(a1 + 32));
  if (qword_100B50C68 != -1)
  {
    sub_10085B150();
  }

  v3 = off_100B50C60;

  return sub_10072D454(v3, v2);
}

BOOL sub_10066EA14(uint64_t a1, int a2, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v17 = a1;
    sub_10037D154(object, "kCBMsgArgOfflineAdvertisingData");
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v6 = v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          *buf = 0u;
          memset(v24, 0, sizeof(v24));
          [v10 getBytes:buf range:{0, 6}];
          [v10 getBytes:&buf[13] range:{6, 22}];
          *&buf[9] = 1643008;
          *&buf[6] = 5046046;
          v24[19] = v24[19] & 0xFC | (buf[0] >> 6);
          buf[0] |= 0xC0u;
          v11 = [NSData dataWithBytes:buf length:37];
          [v10 setData:v11];
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }

    v12 = sub_1000C9AAC(object, "kCBMsgArgOfflineAdvertisingRotationInterval");
    if (qword_100B512D8 != -1)
    {
      sub_100856954();
    }

    v13 = off_100B512D0;
    v14 = *(*(v17 + 32) + 8);
    v15 = *(v14 + 24);
    *(v14 + 24) = v15 + 1;
    sub_10031206C(v13, v15, v6, [v12 intValue]);
  }

  else
  {
    v5 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleSetOfflineAdvertisingParamsAndData not a dictionary!", buf, 2u);
    }
  }

  return type == &_xpc_type_dictionary;
}

void sub_10066ED08(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);

  sub_1007532C8(v2, v3);
}

void sub_10066ED5C(uint64_t a1, int a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    v4 = *(a1 + 40);
    xpc_dictionary_set_int64(v3, "kCBMsgArgResult", a2);
    xpc_connection_send_message(*(v4 + 16), *(*(*(a1 + 32) + 8) + 24));
    v5 = *(*(*(a1 + 32) + 8) + 24);

    xpc_release(v5);
  }
}

void sub_10066EDDC(uint64_t a1, int a2, void *a3)
{
  v21 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    v6 = *(a1 + 40);
    xpc_dictionary_set_int64(v5, "kCBMsgArgResult", a2);
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v8 = [v21 objectForKeyedSubscript:@"kCBMsgArgTimeoutInMS"];
    xpc_dictionary_set_uint64(v7, "kCBMsgArgTimeoutInMS", [v8 unsignedLongValue]);

    v9 = *(*(*(a1 + 32) + 8) + 24);
    v10 = [v21 objectForKeyedSubscript:@"kCBMsgArgHoldStableAddressState"];
    xpc_dictionary_set_BOOL(v9, "kCBMsgArgHoldStableAddressState", [v10 BOOLValue]);

    v11 = *(*(*(a1 + 32) + 8) + 24);
    v12 = [v21 objectForKeyedSubscript:@"kCBMsgArgOverrideLocalAddressState"];
    xpc_dictionary_set_BOOL(v11, "kCBMsgArgOverrideLocalAddressState", [v12 BOOLValue]);

    v13 = *(*(*(a1 + 32) + 8) + 24);
    v14 = [v21 objectForKeyedSubscript:@"kCBMsgArgPrivateModeState"];
    xpc_dictionary_set_BOOL(v13, "kCBMsgArgPrivateModeState", [v14 BOOLValue]);

    v15 = *(*(*(a1 + 32) + 8) + 24);
    v16 = [v21 objectForKeyedSubscript:@"kCBMsgArgHoldStableAddressCount"];
    xpc_dictionary_set_uint64(v15, "kCBMsgArgHoldStableAddressCount", [v16 unsignedLongValue]);

    v17 = *(*(*(a1 + 32) + 8) + 24);
    v18 = [v21 objectForKeyedSubscript:@"kCBMsgArgLePrivateAddressTimer"];
    xpc_dictionary_set_uint64(v17, "kCBMsgArgLePrivateAddressTimer", [v18 unsignedLongValue]);

    v19 = *(*(*(a1 + 32) + 8) + 24);
    v20 = [v21 objectForKeyedSubscript:@"kCBMsgArgLeHoldStablePrivateAddressTimer"];
    xpc_dictionary_set_uint64(v19, "kCBMsgArgLeHoldStablePrivateAddressTimer", [v20 unsignedLongValue]);

    xpc_connection_send_message(*(v6 + 16), *(*(*(a1 + 32) + 8) + 24));
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
  }
}

void sub_10066F090(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v4, v5);
  sub_10004DFB8(a1, 175, v4, 1);
}

void sub_10066F12C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 **a4)
{
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v7, v6);
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  v8 = sub_1005B308C(a4, &v9);
  sub_10000CEDC(&v9, v10[0]);
  xpc_dictionary_set_value(v7, "kCBMsgArgUUIDs", v8);
  xpc_release(v8);
  sub_10004DFB8(a1, 64, v7, 1);
}

void sub_10066F1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_10000CEDC(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_10066F21C(uint64_t a1, void *a2, uint64_t a3)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  if (!*(a3 + 8))
  {
    goto LABEL_39;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = *(a3 + 8);
  if (*(v7 + 39) < 0)
  {
    sub_100008904(__p, *(v7 + 16), *(v7 + 24));
  }

  else
  {
    *__p = *(v7 + 16);
    value = *(v7 + 32);
  }

  if ((SHIBYTE(value) & 0x80000000) == 0)
  {
    if (!HIBYTE(value))
    {
      goto LABEL_17;
    }

LABEL_9:
    v9 = *(a3 + 8);
    if (*(v9 + 39) < 0)
    {
      sub_100008904(__p, *(v9 + 16), *(v9 + 24));
    }

    else
    {
      *__p = *(v9 + 16);
      value = *(v9 + 32);
    }

    if (value >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    xpc_dictionary_set_string(v6, "kCBAdvDataLocalName", v10);
    if (SHIBYTE(value) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_17;
  }

  v8 = __p[1];
  operator delete(__p[0]);
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_17:
  v11 = *(a3 + 8);
  if (*(v11 + 40))
  {
    xpc_dictionary_set_uint64(v6, "kCBAdvDataAppearance", *(v11 + 40));
    v11 = *(a3 + 8);
  }

  __p[0] = 0;
  __p[1] = 0;
  value = 0;
  sub_10000CB74(__p, (v11 + 64));
  if (__p[1] != __p[0])
  {
    v35[0] = 0;
    v35[1] = 0;
    v34 = v35;
    v12 = sub_1005B308C(__p, &v34);
    sub_10000CEDC(&v34, v35[0]);
    xpc_dictionary_set_value(v6, "kCBAdvDataServiceUUIDs", v12);
    xpc_release(v12);
  }

  v13 = *(a3 + 8);
  if (v13[16])
  {
    v14 = +[NSMutableArray array];
    v15 = v13[14];
    v16 = (v13 + 15);
    if (v15 != (v13 + 15))
    {
      do
      {
        if (v15[32] == 2)
        {
          v34 = 0;
          v35[0] = 0;
          v17 = [NSData dataWithBytes:&v34 length:sub_10007A930(v15 + 32, &v34)];
          [v14 addObject:v17];

          v18 = sub_10000C5F8((v15 + 56));
          v19 = [NSData dataWithBytes:v18 length:sub_10000C5E0((v15 + 56))];
          [v14 addObject:v19];
        }

        v20 = *(v15 + 1);
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
            v21 = *(v15 + 2);
            v22 = *v21 == v15;
            v15 = v21;
          }

          while (!v22);
        }

        v15 = v21;
      }

      while (v21 != v16);
    }

    if ([v14 count])
    {
      v23 = sub_1005B31CC(v14);
      xpc_dictionary_set_value(v6, "kCBAdvDataServiceData", v23);
      xpc_release(v23);
    }

    v13 = *(a3 + 8);
  }

  if (sub_10000C5E0((v13 + 6)) && *(a1 + 185) == 1)
  {
    v24 = sub_10000C5F8(*(a3 + 8) + 48);
    v25 = sub_10000C5E0(*(a3 + 8) + 48);
    xpc_dictionary_set_data(v6, "kCBAdvDataAppleMfgData", v24, v25);
  }

  xpc_dictionary_set_value(xdict, "kCBMsgArgAdvertisementData", v6);
  xpc_release(v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_39:
  if (a2[4] != a2[3])
  {
    sub_100007F20(v33, a2 + 3);
    v26 = sub_100485818(v33);
    if (v33[0])
    {
      v33[1] = v33[0];
      operator delete(v33[0]);
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgServices", v26);
    xpc_release(v26);
  }

  if (a2[7] != a2[6])
  {
    v27 = xpc_array_create(0, 0);
    v29 = a2[6];
    for (i = a2[7]; v29 != i; v29 += 18)
    {
      __p[0] = 0;
      __p[1] = 0;
      LOWORD(value) = 0;
      uuid_copy(__p, v29);
      LOWORD(value) = *(v29 + 16);
      v30 = xpc_dictionary_create(0, 0, 0);
      v31 = sub_10004DF60(__p);
      sub_1005B2FB8(a1, v30, v31);

      xpc_dictionary_set_int64(v30, "kCBMsgArgAttributeID", value);
      xpc_array_append_value(v27, v30);
      xpc_release(v30);
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgSubscribedHandles", v27);
    xpc_release(v27);
  }

  sub_10004DFB8(a1, 63, xdict, 1);
}

void sub_10066F6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066F7A0(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, unsigned int a8)
{
  v15 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10066FB24;
  block[3] = &unk_100ADF8F8;
  v30 = a4;
  v31 = a5;
  v29 = a7;
  if (qword_100B6F800 != -1)
  {
    dispatch_once(&qword_100B6F800, block);
  }

  v16 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = a4;
    *&buf[8] = 1024;
    *&buf[10] = a5;
    *&buf[14] = 1024;
    LODWORD(v33) = a7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Channel connected callback : sockets : psm %u, cid %u, sock %d", buf, 0x14u);
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v15;
  v19 = v18;
  if (v18)
  {
    memset(buf, 0, sizeof(buf));
    [v18 getUUIDBytes:buf];
    xpc_dictionary_set_uuid(v17, "kCBMsgArgDeviceUUID", buf);
  }

  xpc_dictionary_set_int64(v17, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v17, "kCBMsgArgPSM", a4);
  xpc_dictionary_set_int64(v17, "kCBMsgArgCID", a5);
  xpc_dictionary_set_int64(v17, "kCBMsgArgOutMTU", a8);
  xpc_dictionary_set_int64(v17, "kCBMsgArgMaxQueuedPacketLength", word_100B54D38);
  xpc_dictionary_set_fd(v17, "kCBMsgArgSocket", a7);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  *buf = 0u;
  v33 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_10085681C();
  }

  sub_100740410(off_100B508A8, v19, buf);
  if (*buf)
  {
    v20 = [*&buf[8] mutableCopy];
    v21 = v20;
    if (a6 && ([v20 containsObject:*(a1 + 96)] & 1) == 0)
    {
      [v21 addObject:*(a1 + 96)];
    }

    objc_storeStrong(&buf[8], v21);
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v22 = off_100B508A8;
    v23[0] = *buf;
    v23[1] = *&buf[8];
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    sub_100740538(v22, v19, v23);
  }

  sub_10004DFB8(a1, 27, v17, 1);
}

float sub_10066FB24(uint64_t a1)
{
  v13 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "L2CAPMaxPendingPacketsLength");
  v3 = (*(*v2 + 88))(v2, buf, __p, &v13);
  if (v13)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE1(v20) < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      return result;
    }
  }

  else if (!v5)
  {
    return result;
  }

  v6 = v13;
  word_100B54D38 = v13;
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 36);
    v9 = *(a1 + 38);
    v10 = *(a1 + 32);
    *buf = 67109888;
    *&buf[4] = v6;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::channelConnected overriding max queue capacity %d bytes for psm %u, cid %u, sock %d", buf, 0x1Au);
  }

  return result;
}

void sub_10066FC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10066FCE0(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5)
{
  v9 = a2;
  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67109632;
    HIDWORD(v14) = a3;
    LOWORD(v15) = 1024;
    *(&v15 + 2) = a4;
    HIWORD(v15) = 1024;
    v16 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Channel disconnected callback result : %d, psm : %u, cid = %u", &v14, 0x14u);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v9;
  v13 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = 0;
    [v12 getUUIDBytes:&v14];
    xpc_dictionary_set_uuid(v11, "kCBMsgArgDeviceUUID", &v14);
  }

  xpc_dictionary_set_int64(v11, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v11, "kCBMsgArgPSM", a4);
  xpc_dictionary_set_int64(v11, "kCBMsgArgCID", a5);
  sub_10004DFB8(a1, 28, v11, 1);
}

void sub_10066FE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v13 = a2;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Channel published callback PSM : %u result : %d", buf, 0xEu);
  }

  v7 = [NSNumber numberWithUnsignedShort:a2, @"kCBMsgArgPSM"];
  v10[1] = @"kCBMsgArgResult";
  v11[0] = v7;
  v8 = [NSNumber numberWithInt:a3];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  sub_100052EE4(a1, 25, v9);
}

void sub_100670008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v13 = a2;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Channel unpublished callback PSM : %u, result : %d", buf, 0xEu);
  }

  v7 = [NSNumber numberWithUnsignedShort:a2, @"kCBMsgArgPSM"];
  v10[1] = @"kCBMsgArgResult";
  v11[0] = v7;
  v8 = [NSNumber numberWithInt:a3];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  sub_100052EE4(a1, 26, v9);
}

void sub_100670184(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v18) = 67109890;
    HIDWORD(v18) = a4;
    LOWORD(v19) = 1024;
    *(&v19 + 2) = a3;
    HIWORD(v19) = 1024;
    v20 = a5;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Channel data received callback PSM : %u, result : %d, cid : %d data : %@", &v18, 0x1Eu);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  v15 = v11;
  v16 = v15;
  if (v15)
  {
    v18 = 0;
    v19 = 0;
    [v15 getUUIDBytes:&v18];
    xpc_dictionary_set_uuid(v14, "kCBMsgArgDeviceUUID", &v18);
  }

  xpc_dictionary_set_int64(v14, "kCBMsgArgResult", a3);
  xpc_dictionary_set_int64(v14, "kCBMsgArgPSM", a4);
  xpc_dictionary_set_int64(v14, "kCBMsgArgCID", a5);
  v17 = v12;
  xpc_dictionary_set_data(v14, "kCBMsgArgData", [v12 bytes], objc_msgSend(v12, "length"));
  sub_10004DFB8(a1, 32, v14, 1);
}

void sub_10067038C()
{
  v0 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::advertisingStarted", v1, 2u);
  }
}

void sub_1006703F4()
{
  v0 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::advertisingStopped", v1, 2u);
  }
}

void sub_10067045C(uint64_t a1, int a2)
{
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::scanningStarted error:%d", v4, 8u);
  }
}

void sub_100670500(uint64_t a1, int a2)
{
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::scanningStopped error:%d", v4, 8u);
  }
}

void sub_1006705A4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v15 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138413826;
    v17 = a3;
    v18 = 2112;
    v19 = a4;
    v20 = 1024;
    v21 = a5;
    v22 = 1024;
    v23 = a6;
    v24 = 1024;
    v25 = a7;
    v26 = 2048;
    v27 = a1;
    v28 = 1024;
    v29 = a8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::deviceFound data:%@ encryptedAEM:%@ avgRSSI:%d count:%d saturated:%d timestamp:%f lastScanDeltaSeconds:%d", &v16, 0x38u);
  }
}

uint64_t sub_1006706BC(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  result = sub_1007A3CE4(off_100B51070);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10067070C(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_100066A74(off_100B512F0, *(v2 + 128), a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

id sub_100670768(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  for (i = 0; i < [v1 count]; ++i)
  {
    v4 = [v1 objectAtIndex:i];
    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", sub_10002C70C([v4 longLongValue]));
    [v2 addObject:v5];
  }

  v6 = [v2 copy];

  return v6;
}

void sub_10067087C(void *a1)
{
  v2 = a1[6];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[5];

  sub_1003B1ACC(v3, v4, v5, v6);
}

void sub_1006708D8(id a1)
{
  v48 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionMinCELength");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v48);
  if (v48)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else if (!v3)
  {
    goto LABEL_13;
  }

  v4 = qword_100BCE950;
  v5 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v6 = v48;
  if (v5)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionMinCELength:%d", buf, 8u);
    v6 = v48;
  }

  byte_100B6F810 = v6;
  byte_100B6F815 = 1;
LABEL_13:
  v7 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionMaxCELength");
  v8 = (*(*v7 + 88))(v7, buf, __p, &v48);
  if (v48)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else if (!v9)
  {
    goto LABEL_25;
  }

  v10 = qword_100BCE950;
  v11 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v12 = v48;
  if (v11)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionMaxCELength:%d", buf, 8u);
    v12 = v48;
  }

  byte_100B6F811 = v12;
  byte_100B6F815 = 1;
LABEL_25:
  v13 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionMinCIFrames");
  v14 = (*(*v13 + 88))(v13, buf, __p, &v48);
  if (v48)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_37;
    }
  }

  else if (!v15)
  {
    goto LABEL_37;
  }

  v16 = qword_100BCE950;
  v17 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v18 = v48;
  if (v17)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionMinCELength:%d", buf, 8u);
    v18 = v48;
  }

  byte_100B6F810 = v18;
  byte_100B6F815 = 1;
LABEL_37:
  v19 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionMaxCIFrames");
  v20 = (*(*v19 + 88))(v19, buf, __p, &v48);
  if (v48)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v21)
    {
      goto LABEL_49;
    }
  }

  else if (!v21)
  {
    goto LABEL_49;
  }

  v22 = qword_100BCE950;
  v23 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v24 = v48;
  if (v23)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionMaxCELength:%d", buf, 8u);
    v24 = v48;
  }

  byte_100B6F811 = v24;
  byte_100B6F815 = 1;
LABEL_49:
  v25 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideConnectionSupervisionTimeout");
  v26 = (*(*v25 + 88))(v25, buf, __p, &v48);
  if (v48)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_61;
    }
  }

  else if (!v27)
  {
    goto LABEL_61;
  }

  v28 = qword_100BCE950;
  v29 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  v30 = v48;
  if (v29)
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Warning: DebugOverrideConnectionSupervisionTimeout:%d", buf, 8u);
    v30 = v48;
  }

  byte_100B6F811 = v30;
  byte_100B6F815 = 1;
LABEL_61:
  v45 = 0;
  v31 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "DebugOverrideAutoReconnectEnabled");
  v32 = (*(*v31 + 72))(v31, buf, __p, &v45);
  v33 = v45;
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  v34 = v32 & v33;
  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v34)
    {
      goto LABEL_70;
    }
  }

  else if (!v34)
  {
    goto LABEL_70;
  }

  v35 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Warning: AutoReconnectEnabled for everyone", buf, 2u);
  }

  byte_100B6F816 = v45;
LABEL_70:
  v36 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideTxPowerConnectInd");
  v37 = (*(*v36 + 88))(v36, buf, __p, &v48);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v37)
    {
      goto LABEL_79;
    }
  }

  else if (!v37)
  {
    goto LABEL_79;
  }

  v38 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Warning: OverrideTxPowerConnectInd:%d", buf, 8u);
  }

  byte_100B6F812 = v48;
  byte_100B6F815 = 1;
LABEL_79:
  v39 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideTxPowerAuxConnectReq");
  v40 = (*(*v39 + 88))(v39, buf, __p, &v48);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v40)
    {
      goto LABEL_88;
    }
  }

  else if (!v40)
  {
    goto LABEL_88;
  }

  v41 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Warning: OverrideTxPowerAuxConnectReq:%d", buf, 8u);
  }

  LOBYTE(word_100B6F813) = v48;
  byte_100B6F815 = 1;
LABEL_88:
  v42 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideMrcEnable");
  v43 = (*(*v42 + 88))(v42, buf, __p, &v48);
  if (v47 < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 < 0)
  {
    operator delete(*buf);
    if (!v43)
    {
      return;
    }
  }

  else if (!v43)
  {
    return;
  }

  v44 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v48;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Warning: OverrideMrcEnable:%d", buf, 8u);
  }

  HIBYTE(word_100B6F813) = v48;
  byte_100B6F815 = 1;
}

void sub_1006711FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

void sub_100671278(void *a1)
{
  v2 = a1[6];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[5];

  sub_1003B02AC(v3, v4, v5, v6);
}

uint64_t sub_1006712D4(uint64_t a1)
{
  v2 = 0;
  v6 = 0;
  v5 = 0;
  do
  {
    *(&v5 + v2++) = arc4random_uniform(0x20u);
  }

  while (v2 != 5);
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v3 = off_100B508A8;
  sub_10004DFB4(v7, *(a1 + 32));
  return sub_10076D19C(v3, v7, &v5);
}

void sub_100671394(int a1)
{
  v2 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set LE AFH completed with status=%{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

void sub_100671444(uint64_t a1, __int16 a2, char a3, char a4, char a5)
{
  word_100BCE880 = a2;
  byte_100BCE882 = a3;
  byte_100BCE883 = a4;
  byte_100BCE884 = a5;
  sub_10002286C(&stru_100BCE850);
}

uint64_t sub_100671468(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v3 = off_100B51070;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  return sub_1007A6B74(v3, v4, v5);
}

uint64_t sub_1006714C4(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return sub_1007A6788(v2, v3, v4, v5);
}

uint64_t sub_100671520(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (v2)
  {
    v3 = 0;
    v4 = &v10;
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      v5 = off_100B508C8;
      v6 = [*(a1 + 32) objectAtIndexedSubscript:{v3, v10, v11, v12, v13}];
      v7 = sub_100046458(v5, v6, 0);
      v8 = sub_10009A66C(v7);
      *v4 = v8;
      *(v4 + 6) = BYTE6(v8);
      *(v4 + 2) = WORD2(v8);

      ++v3;
      v4 = (v4 + 7);
    }

    while (v2 != v3);
  }

  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  return sub_1007A682C(off_100B51070, &v10, v2, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_100671680(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1007A6C3C(v2, v3, v4);
}

uint64_t sub_1006716D4(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 656);

  return v2();
}

uint64_t sub_100671754(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v2 = off_100B508A8;
  sub_10004DFB4(v4, *(a1 + 32));
  return sub_10074EFB0(v2, v4, *(a1 + 40), *(a1 + 48));
}

void sub_1006717E8(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = a2;
  v8 = xpc_dictionary_create(0, 0, 0);
  reply = xpc_dictionary_create_reply(v8);
  if (reply)
  {
    v10 = v7;
    v11 = v10;
    if (v10)
    {
      *uuid = 0;
      v13 = 0;
      [v10 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(reply, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", a4);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgNumConfigSupported", *a3);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgMaxProceduresSupported", *(a3 + 1));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgNumAntennasSupported", a3[4]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRolesSupported", a3[5]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgModes_Supported", a3[6]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRTTCapability", a3[7]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRTTCoarseN", a3[8]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRTTSoundingN", a3[9]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgRTTRandomPayloadN", a3[10]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgCSSyncPHYsSupported", a3[16]);
    xpc_dictionary_set_uint64(reply, "kCBMsgArgSubfeaturesSupported", *(a3 + 9));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTIP1TimesSupported", *(a3 + 10));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTIP2TimesSupported", *(a3 + 11));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTFcsTimesSupported", *(a3 + 12));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTPMTimesSupported", *(a3 + 13));
    xpc_dictionary_set_uint64(reply, "kCBMsgArgTSWTimesSupported", a3[28]);
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
  }
}

uint64_t sub_100671A48(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2884(off_100B512F0, *(v2 + 128));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671AA0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B28D4(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671AFC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8[0] = v5;
  *(v8 + 10) = *(a1 + 82);
  result = sub_1003B294C(off_100B512F0, v3, v4, &v7);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671B78(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B29E4(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671BD4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2A5C(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671C30(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8[0] = v5;
  *(v8 + 10) = *(a1 + 82);
  result = sub_1003B2AD4(off_100B512F0, v3, v4, &v7);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671CD8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2BA0(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671D38(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2C20(off_100B512F0, *(v2 + 128), *(a1 + 32), *(*(*(a1 + 48) + 8) + 24), *(a1 + 64));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671DA4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  result = sub_1003B2CB0(off_100B512F0, v3, v4, v7);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671E18(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2D3C(off_100B512F0, *(v2 + 128), a1 + 48);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100671E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_100671EA8(uint64_t a1)
{
  *(a1 + 48) = &off_100AE0A78;
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

uint64_t sub_100671ED8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2D94(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671F40(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2E28(off_100B512F0, *(v2 + 128));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671F98(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2E78(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100671FF4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2EF0(off_100B512F0, *(v2 + 128), *(a1 + 32), a1 + 56);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100672054(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v2 = off_100B508A8;
  sub_10004DFB4(v4, *(a1 + 32));
  return sub_10074F028(v2, v4, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

uint64_t sub_1006720F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  v8 = *(a1 + 88);
  result = sub_1003B2664(off_100B512F0, v3, v4, v7, *(v2 + 96));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100672170(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B271C(off_100B512F0, *(v2 + 128), *(a1 + 56) != 0, *(a1 + 32), *(a1 + 72), *(a1 + 64));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1006721E0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = *(v2 + 128);
  v4 = *(a1 + 56) != 0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = *(a1 + 88);
  v9[0] = *(a1 + 72);
  v9[1] = v7;
  result = sub_1003B27B4(off_100B512F0, v3, v4, v5, v6, v9, *(a1 + 104), *(v2 + 96));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100672348(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v3 = off_100B51070;
  v4 = *(v2 + 128);
  v5 = sub_10000C5F8(a1 + 40);
  v6 = sub_10000C5E0(a1 + 40);
  v7 = sub_10000C5F8(a1 + 56);
  v8 = sub_10000C5E0(a1 + 56);
  HIBYTE(v10) = *(a1 + 112);
  LOBYTE(v10) = *(a1 + 104);
  return sub_1007A68D8(v3, v4, v5, v6, v7, v8, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v10, *(a1 + 120), *(a1 + 128), *(a1 + 136));
}

void sub_100672424(void *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  a1[5] = &off_100AE0A78;
  a1[6] = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a2 + 64);
  a1[7] = &off_100AE0A78;
  a1[8] = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }
}

void sub_1006724AC(_Unwind_Exception *exception_object)
{
  *(v1 + 40) = v2;
  v4 = *(v1 + 48);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006724C8(void *a1)
{
  a1[7] = &off_100AE0A78;
  v2 = a1[8];
  if (v2)
  {
    sub_10000C808(v2);
  }

  a1[5] = &off_100AE0A78;
  v3 = a1[6];
  if (v3)
  {

    sub_10000C808(v3);
  }
}

uint64_t sub_100672558(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v3 = off_100B51070;
  v4 = *(v2 + 128);
  v5 = sub_10000C5F8(a1 + 40);
  v6 = sub_10000C5E0(a1 + 40);
  v7 = sub_10000C5F8(a1 + 56);
  v8 = sub_10000C5E0(a1 + 56);
  HIBYTE(v10) = *(a1 + 112);
  LOBYTE(v10) = *(a1 + 104);
  return sub_1007A6A30(v3, v4, v5, v6, v7, v8, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v10, *(a1 + 120));
}

void sub_100672628(void *a1)
{
  v2 = a1[5];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[6] != 0;
  v7 = a1[7] != 0;

  sub_1003B217C(v3, v4, v5, v6, v7, 0);
}

void sub_10067269C(void *a1)
{
  v2 = a1[6];
  if (*(v2 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B410();
    }

    goto LABEL_19;
  }

  v3 = (a1 + 4);
  if (!a1[4])
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B52C();
    }

    goto LABEL_19;
  }

  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  if (sub_1007868D4(off_100B508C8, *v3))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B4BC();
    }

LABEL_19:
    v4 = 0;
    goto LABEL_20;
  }

  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  sub_10003EF30(off_100B508C8);
  *uu = 0;
  v9 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  sub_10078A9E0(off_100B508C8, *v3, uu);
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B44C();
    }

    goto LABEL_19;
  }

  v7 = sub_10004DF60(uu);
  v4 = sub_10005201C(v7, *(v2 + 168), *(v2 + 80));

LABEL_20:
  v6 = a1[5];
  v5 = a1 + 5;
  xpc_dictionary_set_value(*(*(v6 + 8) + 24), "kCBMsgArgDevices", v4);
  xpc_connection_send_message(*(v2 + 16), *(*(*v5 + 8) + 24));
  xpc_release(*(*(*v5 + 8) + 24));
  if (v4)
  {
    xpc_release(v4);
  }
}

void sub_1006728D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1006728F0(void *a1)
{
  v2 = a1[6];
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = a1[4];
  v6 = a1[5];

  sub_1003B23FC(v3, v4, v5, v6);
}

void sub_10067294C(id a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;

  sub_1003B3B1C(v2);
}

void sub_100672990(id a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;

  sub_1003B3A54(v2);
}

uint64_t sub_1006729D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = off_100B51070;
  if (*(v1 + 96))
  {
    v3 = *(v1 + 96);
  }

  else
  {
    v3 = @"-";
  }

  return sub_1007AD898(v2, v3);
}

uint64_t sub_100672A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = off_100B51070;
  if (*(v1 + 96))
  {
    v3 = *(v1 + 96);
  }

  else
  {
    v3 = @"-";
  }

  return sub_1007ADB50(v2, v3);
}

void sub_100672A9C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_1003B37AC(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56));
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AppManager::getInstance()->setConnectionLatency returned %d", v5, 8u);
  }
}

uint64_t sub_100672B8C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B30BC(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100672C48(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  sub_1003B3278(v3, v4, v5, v6);
}

void sub_100672CA8(id a1)
{
  v39 = 0;
  __buf = 0;
  arc4random_buf(&__buf, 6uLL);
  v1 = __buf | 0x3FLL;
  LOBYTE(__buf) = __buf | 0x3F;
  v2 = HIBYTE(v39) | 0x3FLL;
  HIBYTE(v39) |= 0x3Fu;
  v3 = BYTE1(__buf);
  v4 = BYTE2(__buf);
  v5 = HIBYTE(__buf);
  v6 = v39;
  *uu = 0;
  v41 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  v7 = (v1 << 40) | (v3 << 32) | (v4 << 24) | (v5 << 16) | (v6 << 8) | v2;
  sub_1000498D4(off_100B508C8, v7 | 0x1000000000000, 1u, 1u, 0, 0, uu);
  if (!uuid_is_null(uu))
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
    v25 = 0u;
    v26 = 0u;
    memset(v24, 0, sizeof(v24));
    v22 = 0u;
    v23 = 0u;
    sub_100007AD0(&v22);
    v8 = sub_100007774(&v23, "FAKE_LE_DEVICE_", 15);
    sub_10004D9B0(v7 | 0x1000000000000);
    if ((v21 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      LODWORD(p_p) = __p;
    }

    if ((v21 & 0x80u) == 0)
    {
      v10 = v21;
    }

    else
    {
      v10 = v20;
    }

    sub_100007774(v8, p_p, v10);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v11 = off_100B508C8;
    std::stringbuf::str();
    sub_100783194(v11, uu, &v17, 1);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v12 = off_100B508C8;
    v13 = sub_10004DF60(uu);
    sub_100007E30(v15, "_FAKE_LE_DEVICE");
    sub_10078787C(v12, v13, v15);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    *&v23 = v14;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*(&v25 + 1));
    }

    std::locale::~locale(v24);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }
}

void sub_100673018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1007FC91C(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_100673088(uint64_t a1)
{
  v11 = 0;
  __buf = 0;
  arc4random_buf(&__buf, 6uLL);
  v9 = 0;
  v8 = 0;
  arc4random_buf(&v8, 6uLL);
  v1 = v8 | 0x3FLL;
  LOBYTE(v8) = v8 | 0x3F;
  v2 = HIBYTE(v9) | 0x3FLL;
  HIBYTE(v9) |= 0x3Fu;
  v3 = BYTE1(v8);
  v4 = BYTE2(v8);
  v5 = HIBYTE(v8);
  v6 = v9;
  *uu = 0;
  v13 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_1000498D4(off_100B508C8, (v1 << 40) | (v3 << 32) | (v4 << 24) | (v5 << 16) | (v6 << 8) | v2 | 0x1000000000000, 1u, 1u, 0, 0, uu);
  result = uuid_is_null(uu);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_100673938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1007FC91C(&a32);
  *(v33 - 184) = a9;
  v35 = *(v33 - 176);
  if (v35)
  {
    sub_10000C808(v35);
  }

  _Unwind_Resume(a1);
}

void sub_100673A68(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_100013C04(*(a1 + 48), "kCBMsgArgName");
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  if (sub_10004FF0C(off_100B508C8, *(a1 + 32), *(v2 + 96), *(v2 + 48)))
  {
    if (*(v2 + 184) == 1)
    {
      v4 = 0;
      if (*(a1 + 32) && v3)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100856AE8();
        }

        v4 = sub_10078928C(off_100B508C8, *(a1 + 32), v3);
      }
    }

    else
    {
      v4 = 0;
    }

    reply = xpc_dictionary_create_reply(*(a1 + 56));
    if (reply)
    {
      v10 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_string(reply, "kCBMsgArgCustomPropertyName", [v3 UTF8String]);
      xpc_dictionary_set_value(reply, "kCBMsgArgCustomPropertyValue", v10);
      xpc_connection_send_message(*(v2 + 16), reply);
      if (v10)
      {
        xpc_release(v10);
      }

      xpc_release(reply);
    }
  }

  else
  {
    v5 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v6 = *(v2 + 96);
      v7 = *(v2 + 48);
      v8 = *(a1 + 32);
      v11 = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v11, 0x20u);
    }
  }
}

void sub_100673C80(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  if (sub_10004FF0C(off_100B508C8, *(a1 + 32), *(v2 + 96), *(v2 + 48)))
  {
    if (*(v2 + 184) == 1 && *(a1 + 32))
    {
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      v3 = sub_1007891E0(off_100B508C8, *(a1 + 32));
    }

    else
    {
      v3 = &__NSArray0__struct;
    }

    reply = xpc_dictionary_create_reply(*(a1 + 48));
    if (reply)
    {
      v9 = xpc_array_create(0, 0);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, [v14 UTF8String]);
          }

          v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }

      xpc_dictionary_set_value(reply, "kCBMsgArgCustomPropertyNames", v9);
      xpc_connection_send_message(*(v2 + 16), reply);
      if (v9)
      {
        xpc_release(v9);
      }

      xpc_release(reply);
    }
  }

  else
  {
    v4 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v5 = *(v2 + 96);
      v6 = *(v2 + 48);
      v7 = *(a1 + 32);
      *buf = 138412802;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }
  }
}

uint64_t sub_100673F24(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B388C(off_100B512F0, *(v2 + 128), *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100673F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  sub_1007C5A1C(off_100B508B8, *(a1 + 32), &v43);
  v42 = 0;
  bytes = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_10085B568();
  }

  sub_10009BE34(off_100B50A98, &bytes);
  v39 = 0;
  v40 = 0;
  if (qword_100B508C0 != -1)
  {
    sub_1008569B8();
  }

  sub_10000C704(&v39, off_100B508B8 + 184, 0x10uLL);
  v4 = BYTE8(v47);
  v37 = *(&v47 + 9);
  v38 = *(&v47 + 13);
  v35 = 0;
  v36 = 0;
  sub_10000C704(&v35, &v43, 0x10uLL);
  v33 = 0;
  v34 = 0;
  sub_10000C704(&v33, &v44 + 12, 0x10uLL);
  v31 = 0;
  v32 = 0;
  sub_10000C704(&v31, &v44 + 4, 8uLL);
  v29 = 0;
  v30 = 0;
  sub_10000C704(&v29, &v46, 8uLL);
  v27 = 0;
  v28 = 0;
  sub_10000C704(&v27, &v46 + 8, 0x10uLL);
  v25 = 0;
  v26 = 0;
  sub_10000C704(&v25, &v45 + 14, 2uLL);
  v23 = 0;
  v24 = 0;
  sub_10000C704(&v23, &v44 + 2, 2uLL);
  reply = xpc_dictionary_create_reply(*(a1 + 48));
  v6 = reply;
  if (reply)
  {
    xpc_dictionary_set_data(reply, "kCBMsgArgAddressString", &bytes, 6uLL);
    v7 = sub_10000C5F8(&v39);
    v8 = sub_10000C5E0(&v39);
    xpc_dictionary_set_data(v6, "kCBMsgArgLocalIRK", v7, v8);
    v9 = sub_10000C5F8(&v35);
    v10 = sub_10000C5E0(&v35);
    xpc_dictionary_set_data(v6, "kCBMsgArgRemoteLTK", v9, v10);
    v11 = sub_10000C5F8(&v23);
    v12 = sub_10000C5E0(&v23);
    xpc_dictionary_set_data(v6, "kCBMsgArgRemoteEdiv", v11, v12);
    v13 = sub_10000C5F8(&v31);
    v14 = sub_10000C5E0(&v31);
    xpc_dictionary_set_data(v6, "kCBMsgArgRemoteRand", v13, v14);
    v15 = sub_10000C5F8(&v33);
    v16 = sub_10000C5E0(&v33);
    xpc_dictionary_set_data(v6, "kCBMsgArgLocalLTK", v15, v16);
    v17 = sub_10000C5F8(&v25);
    v18 = sub_10000C5E0(&v25);
    xpc_dictionary_set_data(v6, "kCBMsgArgLocalEdiv", v17, v18);
    v19 = sub_10000C5F8(&v29);
    v20 = sub_10000C5E0(&v29);
    xpc_dictionary_set_data(v6, "kCBMsgArgLocalRand", v19, v20);
    v21 = sub_10000C5F8(&v27);
    v22 = sub_10000C5E0(&v27);
    xpc_dictionary_set_data(v6, "kCBMsgArgRemoteIRK", v21, v22);
    xpc_dictionary_set_data(v6, "kCBMsgArgRemoteAddress", &v37, 6uLL);
    xpc_dictionary_set_int64(v6, "kCBMsgArgRemoteAddressType", v4);
    xpc_connection_send_message(*(v3 + 16), v6);
    xpc_release(v6);
  }

  v23 = &off_100AE0A78;
  if (v24)
  {
    sub_10000C808(v24);
  }

  v25 = &off_100AE0A78;
  if (v26)
  {
    sub_10000C808(v26);
  }

  v27 = &off_100AE0A78;
  if (v28)
  {
    sub_10000C808(v28);
  }

  v29 = &off_100AE0A78;
  if (v30)
  {
    sub_10000C808(v30);
  }

  v31 = &off_100AE0A78;
  if (v32)
  {
    sub_10000C808(v32);
  }

  v33 = &off_100AE0A78;
  if (v34)
  {
    sub_10000C808(v34);
  }

  v35 = &off_100AE0A78;
  if (v36)
  {
    sub_10000C808(v36);
  }

  v39 = &off_100AE0A78;
  if (v40)
  {
    sub_10000C808(v40);
  }
}

void sub_100674460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, atomic_uint *a14, uint64_t a15, atomic_uint *a16, uint64_t a17, atomic_uint *a18, uint64_t a19, atomic_uint *a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, atomic_uint *a25)
{
  if (a12)
  {
    sub_10000C808(a12);
  }

  if (a14)
  {
    sub_10000C808(a14);
  }

  if (a16)
  {
    sub_10000C808(a16);
  }

  if (a18)
  {
    sub_10000C808(a18);
  }

  if (a20)
  {
    sub_10000C808(a20);
  }

  if (a22)
  {
    sub_10000C808(a22);
  }

  if (a25)
  {
    sub_10000C808(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067460C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  value = 0;
  v4 = *sub_10000C7D0(a1, a2);
  v5 = (*(v4 + 4160))();
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  if (reply)
  {
    v7 = reply;
    xpc_dictionary_set_int64(reply, "kCBUsageStatsLePercent", WORD4(v10) + WORD2(v10));
    xpc_dictionary_set_int64(v7, "kCBUsageStatsClPercent", WORD5(v10) + WORD3(v10));
    if (qword_100B50910 != -1)
    {
      sub_10085B590();
    }

    v8 = sub_1000AD270(off_100B50908);
    xpc_dictionary_set_int64(v7, "kCBUsageStatsIsAudioStreaming", v8);
    xpc_dictionary_set_int64(v7, "kCBUsageStatsTimeStampNsMonotonic", value);
    xpc_dictionary_set_int64(v7, "kCBMsgArgResult", v5);
    xpc_connection_send_message(*(v3 + 16), v7);
    xpc_release(v7);
  }
}

uint64_t sub_100674798(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003C1668(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 56), *(a1 + 64) != 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100674804(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v3 = sub_1000C5064(off_100B508A8);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        if (sub_10004FF0C(off_100B508C8, v7, *(v2 + 96), *(v2 + 48)))
        {
          v8 = sub_10005201C(v7, *(v2 + 168), *(v2 + 80));
          xpc_array_append_value(*(a1 + 40), v8);
          xpc_release(v8);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1006749A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 80) < 1 || *(a1 + 48) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B5B8();
    }

    v3 = 0;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_1007922A8(off_100B508C8, *(a1 + 48));
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    if (*(a1 + 48) >= 1)
    {
      xpc_dictionary_set_int64(v4, "kCBMsgArgResultDeviceCount", v3);
      v4 = *(*(*(a1 + 32) + 8) + 24);
    }

    xpc_connection_send_message(*(v2 + 16), v4);
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
  }
}

uint64_t sub_100674AA0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100013CA4(a2, 0, a3, a4, a5, a6, a7, a8, "kCBCSNumAntennaPath");
  a3[52199] = 0;
  xpc_dictionary_set_data(a2, "kCBCSStepMode", a3 + 14, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepChannel", a3 + 174, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepDataLength", a3 + 334, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepData", a3 + 494, 0x6400uLL);
  xpc_dictionary_set_data(a2, "kCBCSReflectorStepMode", a3 + 26112, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSReflectorStepChannel", a3 + 26272, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepDataLength", a3 + 334, 0xA0uLL);
  xpc_dictionary_set_data(a2, "kCBCSStepData", a3 + 494, 0x6400uLL);
  return 0;
}

void sub_100674C34(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *(v1 + 48);
  if (*(v2 + 80) >= 2)
  {
    v3 = v1;
    v4 = *(v1 + 56);
    if ((v4 & 4) != 0)
    {
      if (qword_100B512F8 != -1)
      {
        sub_1000C10B4();
      }

      memcpy(v8, v3 + 68, sizeof(v8));
      v5 = sub_1003C16F8(off_100B512F0);
      if ((v3[7] & 0x1000) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = 0;
      if ((v4 & 0x1000) == 0)
      {
LABEL_11:
        if (v5 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085B668();
        }

        v6 = *(*(v3[5] + 8) + 24);
        if (v6)
        {
          xpc_dictionary_set_int64(v6, "kCBMsgArgResult", v5);
          xpc_connection_send_message(*(v2 + 16), *(*(v3[5] + 8) + 24));
          xpc_release(*(*(v3[5] + 8) + 24));
        }

        return;
      }
    }

    sub_1003177AC();
    memcpy(v8, v3 + 68, 0x65F2uLL);
    memcpy(__dst, v3 + 26166, sizeof(__dst));
    sub_100318C74();
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085B62C();
  }
}

void sub_100674E2C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  if (v6)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v6, *(a1 + 96), *(a1 + 48)))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1000C10B4();
      }

      if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v6))
      {
        v7 = xpc_dictionary_create(0, 0, 0);
        v8 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v9 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v9 = *v9;
          }

          *value_4 = 138412546;
          *&value_4[4] = v6;
          *&value_4[12] = 2082;
          *&value_4[14] = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'connection completed' event for device %@ to session %{public}s", value_4, 0x16u);
        }

        v10 = v6;
        *value_4 = 0;
        *&value_4[8] = 0;
        [v10 getUUIDBytes:value_4];
        xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", value_4);

        xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a4);
        if (!a4)
        {
          if (qword_100B508B0 != -1)
          {
            sub_10085681C();
          }

          v11 = off_100B508A8;
          sub_10004DFB4(value_4, v10);
          v12 = sub_1000501F8(v11, value_4);
          xpc_dictionary_set_int64(v7, "kCBMsgArgConnectionRole", v12);
          if (qword_100B541E8 != -1)
          {
            sub_1000E7B38();
          }

          v13 = sub_1000503B8(qword_100B541E0, v10);
          xpc_dictionary_set_int64(v7, "kCBMsgArgATTMTU", v13);
          if (qword_100B508B0 != -1)
          {
            sub_10085681C();
          }

          v14 = off_100B508A8;
          sub_10004DFB4(value_4, v10);
          if (sub_100050290(v14, value_4))
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          xpc_dictionary_set_int64(v7, "kCBMsgArgConnectionTransport", v15);
          if (*(a1 + 168) == 1)
          {
            if (qword_100B508B0 != -1)
            {
              sub_10085681C();
            }

            v16 = off_100B508A8;
            sub_10004DFB4(value_4, v10);
            v17 = sub_100050304(v16, value_4);
            xpc_dictionary_set_BOOL(v7, "kCBMsgArgIsLinkEncrypted", v17);
          }

          value = 0;
          if (qword_100B50F78 != -1)
          {
            sub_10085A8C0();
          }

          v18 = qword_100B50F70;
          sub_10004DFB4(value_4, v10);
          if (!sub_1005807A8(v18, value_4, &value))
          {
            xpc_dictionary_set_int64(v7, "kCBMsgArgsTransport", value);
          }
        }

        sub_10004DFB8(a1, 92, v7, 1);
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A814();
      }
    }

    else
    {
      v19 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 96);
        v21 = *(a1 + 48);
        *value_4 = 138412802;
        *&value_4[4] = v20;
        *&value_4[12] = 2112;
        *&value_4[14] = v21;
        v24 = 2112;
        v25 = v6;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", value_4, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085B6DC();
  }
}

void sub_100675268(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  sub_10004DFB4(uu2, v4);
  v5 = sub_10004E34C(a1 + 208, uu2);
  v6 = v5;
  if (a1 + 216 != v5)
  {
    v7 = *(v5 + 48);
    v8 = (v5 + 56);
    if (v7 != (v5 + 56))
    {
      do
      {
        v9 = v7[4];
        if (v9)
        {
          (*(*v9 + 8))(v9);
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

      while (v11 != v8);
    }

    sub_10067D88C((a1 + 208), v6);
  }
}

void sub_1006753A4(uint64_t a1, uint64_t a2, void *a3, BOOL a4)
{
  v6 = a3;
  if (*(a1 + 168) == 1)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v7 = sub_10004FF0C(off_100B508C8, v6, *(a1 + 96), *(a1 + 48));
    v8 = qword_100BCE950;
    if (v7)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v9 = *v9;
        }

        v13 = 138412546;
        v14 = v6;
        v15 = 2082;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'connection state updated' event for device %@ to session %{public}s", &v13, 0x16u);
      }

      v10 = sub_10005201C(v6, *(a1 + 168), *(a1 + 80));
      xpc_dictionary_set_BOOL(v10, "kCBMsgArgConnectionState", a4);
      sub_10004DFB8(a1, 95, v10, 1);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 96);
      v12 = *(a1 + 48);
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v13, 0x20u);
    }
  }
}

void sub_100675580(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  xarray = xpc_array_create(0, 0);
  if (a3)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (*(a3 + 16) != *(a3 + 8))
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v7 = sub_1005B308C((a3 + 8), buf);
      sub_10000CEDC(buf, *&buf[8]);
      xpc_dictionary_set_value(v6, "kCBMsgArgUUIDs", v7);
      xpc_release(v7);
    }

    if (*a3 == 1)
    {
      xpc_dictionary_set_BOOL(v6, "kCBScanOptionAllowDuplicates", 1);
    }

    v8 = *(a3 + 56);
    v9 = *(a3 + 64);
    v10 = (a3 + 56);
    if (v9 != v8)
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v11 = sub_1005B308C(v10, buf);
      sub_10000CEDC(buf, *&buf[8]);
      xpc_dictionary_set_value(xdict, "kCBScanOptionSolicitedServiceUUIDs", v11);
      xpc_release(v11);
    }

    xpc_dictionary_set_value(xdict, "kCBMsgArgOptions", v6);
    xpc_release(v6);
  }

  for (i = *a2; i != a2[1]; ++i)
  {
    v13 = *i;
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v14 = off_100B508C8;
    v15 = sub_10004DF60(v13);
    LOBYTE(v14) = sub_10004FF0C(v14, v15, *(a1 + 96), *(a1 + 48));

    if ((v14 & 1) == 0)
    {
      v20 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 96);
        v22 = *(a1 + 48);
        v23 = sub_10004DF60(v13);
        *buf = 138412802;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        *&buf[22] = 2112;
        v40 = v23;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      continue;
    }

    memset(buf, 0, sizeof(buf));
    sub_100007F20(buf, (v13 + 24));
    v16 = xpc_dictionary_create(0, 0, 0);
    string = 0;
    v37 = 0;
    v38 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    v17 = off_100B508C8;
    v18 = sub_10004DF60(v13);
    sub_10004FFDC(v17, v18, &string);

    if (SHIBYTE(v38) < 0)
    {
      if (v37)
      {
        p_string = string;
        goto LABEL_22;
      }
    }

    else if (HIBYTE(v38))
    {
      p_string = &string;
LABEL_22:
      xpc_dictionary_set_string(v16, "kCBMsgArgName", p_string);
    }

    xpc_dictionary_set_uuid(v16, "kCBMsgArgDeviceUUID", v13);
    if (qword_100B541E8 != -1)
    {
      sub_1000E7B38();
    }

    v24 = qword_100B541E0;
    v25 = sub_10004DF60(v13);
    v26 = sub_1000503B8(v24, v25);
    xpc_dictionary_set_int64(v16, "kCBMsgArgATTMTU", v26);

    xpc_dictionary_set_BOOL(v16, "kCBMsgArgState", *(v13 + 16));
    v27 = xpc_array_create(0, 0);
    for (j = *(v13 + 48); j != *(v13 + 56); j += 18)
    {
      xpc_array_set_int64(v27, 0xFFFFFFFFFFFFFFFFLL, *(j + 16));
    }

    xpc_dictionary_set_value(v16, "kCBMsgArgSubscribedHandles", v27);
    xpc_release(v27);
    v29 = sub_10004DF60(v13);
    sub_100668910(a1, buf, v29);

    __p = 0;
    __dst = 0;
    v35 = 0;
    if (*&buf[8] != *buf)
    {
      sub_1000080CC(&__p, (*&buf[8] - *buf) >> 3);
    }

    v30 = sub_100485818(&__p);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    xpc_dictionary_set_value(v16, "kCBMsgArgServices", v30);
    xpc_release(v30);
    xpc_array_append_value(xarray, v16);
    xpc_release(v16);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(string);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  xpc_dictionary_set_value(xdict, "kCBMsgArgDevices", xarray);
  sub_10004DFB8(a1, 99, xdict, 1);
  xpc_release(xarray);
}

void sub_100675B34(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, int a6)
{
  v10 = a3;
  if (*(a1 + 168) == 1)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    v12 = v10;
    v13 = v12;
    if (v12)
    {
      *uuid = 0;
      v15 = 0;
      [v12 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_double(v11, "kCBMsgArgConnectionInterval", a4 * 1.25);
    xpc_dictionary_set_int64(v11, "kCBMsgArgConnectionLatency", a5);
    xpc_dictionary_set_double(v11, "kCBMsgArgSupervisionTimeout", (10 * a6));
    sub_10004DFB8(a1, 178, v11, 1);
  }
}

void sub_100675C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = a3;
  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = v14;
  v17 = v16;
  if (v16)
  {
    *uuid = 0;
    v19 = 0;
    [v16 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v15, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_uint64(v15, "kCBMsgArgTimeOfDay", a4);
  xpc_dictionary_set_uint64(v15, "kCBMsgArgLocalRefTime", a5);
  xpc_dictionary_set_uint64(v15, "kCBMsgArgRemoteRefTime", a6);
  xpc_dictionary_set_uint64(v15, "kCBMsgArgTimeToSend", a7);
  xpc_dictionary_set_int64(v15, "kCBMsgArgGMTDelta", a8);
  sub_10004DFB8(a1, 193, v15, 1);
}

void sub_100675E18(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  if (*(a1 + 168) == 1)
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v8 = *v8;
      }

      *buf = 138412546;
      v15 = v6;
      v16 = 2082;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending 'host state updated' event for device %@ to session %{public}s", buf, 0x16u);
    }

    if (a4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [NSNumber numberWithLongLong:v9, @"kCBMsgArgDeviceUUID", @"kCBMsgArgState", v6];
    v13[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:&v12 count:2];
    sub_100052EE4(a1, 176, v11);
  }
}

void sub_100675FA8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 169) == 1)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = v7;
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    xpc_dictionary_set_string(v7, "kCBMsgArgName", v9);
    xpc_dictionary_set_int64(v8, "kCBMsgArgState", a3);

    sub_10004DFB8(a1, 98, v8, 1);
  }
}

uint64_t sub_100676054(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  result = sub_1003B2498(off_100B512F0, *(v2 + 128), *(a1 + 32), *(v2 + 182));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1006762F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006764F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void sub_1006768D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sub_100668C84(v2, *(a1 + 32), *(a1 + 48));
  v4 = *(a1 + 56);
  if (!v4)
  {
    operator new();
  }

  v8 = 0;
  if (!v3)
  {
    if (qword_100B50900 != -1)
    {
      sub_10085AC78();
    }

    v5 = qword_100B508F8;
    if (qword_100B512F8 != -1)
    {
      sub_1000C10B4();
    }

    if (off_100B512F0)
    {
      v6 = off_100B512F0 + 48;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 128);
    sub_10004DFB4(uu1, *(a1 + 32));
    sub_10070D9A4(v5, v6, v7, uu1, v4 == 0, *(a1 + 48), *(a1 + 64), a1 + 72, 0);
  }
}

void sub_100676B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  *(a1 + 72) = &off_100AE0A78;
  *(a1 + 80) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_100676B38(uint64_t a1)
{
  *(a1 + 72) = &off_100AE0A78;
  v1 = *(a1 + 80);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

void sub_100677350(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B50900 != -1)
  {
    sub_10085AC78();
  }

  v3 = qword_100B508F8;
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  if (off_100B512F0)
  {
    v4 = off_100B512F0 + 48;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 128);
  sub_10004DFB4(v7, *(a1 + 32));
  sub_100007E30(__p, [*(a1 + 40) UTF8String]);
  sub_10070E28C(v3, v4, v5, v7, __p, 0);
}

void sub_100677498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006774BC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B794();
    }

    v3 = 12;
  }

  else if (*(a1 + 32))
  {
    if (qword_100B512F8 != -1)
    {
      sub_1000C10B4();
    }

    v3 = sub_1003C17F0(off_100B512F0, *(v2 + 128), *(a1 + 32), *(a1 + 64), *(a1 + 40));
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B7D0();
    }

    v3 = 8;
  }

  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4)
  {
    xpc_dictionary_set_int64(v4, "kCBMsgArgResult", v3);
    xpc_connection_send_message(*(v2 + 16), *(*(*(a1 + 48) + 8) + 24));
    xpc_release(*(*(*(a1 + 48) + 8) + 24));
  }
}

uint64_t sub_1006775D0(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = sub_10037CE6C(object, "kCBMatchActionRulePeerAddress");
    v8 = sub_10037CE6C(object, "kCBMatchActionRuleLocalToken");
    v9 = v8;
    if (v8 && [v8 length] == 6)
    {
      if (v7 && [v7 length] == 6)
      {
        [v6 setObject:v7 forKeyedSubscript:@"MatchActionRulePeerAddress"];
        [v6 setObject:v9 forKeyedSubscript:@"MatchActionRuleLocalToken"];
        [v6 setObject:&off_100B339A8 forKeyedSubscript:@"MatchActionRuleHopValue"];
        v10 = *(a1 + 32);
        v11 = [v6 copy];
        [v10 addObject:v11];

        v5 = 1;
LABEL_13:

        return v5;
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085B80C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B848();
    }

    v5 = 0;
    goto LABEL_13;
  }

  return 0;
}

void sub_100677758(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100677790(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100856D04();
  }

  v2 = sub_1007A3008(off_100B51070, *(a1 + 32));
  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "setMatchActionRules returned %d", v4, 8u);
  }
}

void sub_100677860(uint64_t a1)
{
  __dst[0] = 0;
  __dst[1] = 0;
  memcpy(__dst, [*(a1 + 32) bytes], *(a1 + 40));
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  sub_1003B00D4(off_100B512F0, (a1 + 48), __dst);
}

uint64_t sub_100677900(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;

  return sub_1003B0130(v2, a1 + 32);
}

void sub_100677954(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(a1 + 32);

  sub_1003B97D0(v2, v3);
}

void sub_1006779A8(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v10)
    {
      v7 = [v10 remoteHostID];
      xpc_dictionary_set_string(v5, "kCBMsgArgWhbRemoteControllerId", [v7 UTF8String]);

      v8 = *(a1 + 40);
      v9 = [v10 identifier];
      xpc_dictionary_set_string(v8, "kCBMsgArgWhbRemoteDeviceUUID", [v9 UTF8String]);

      v5 = *(a1 + 40);
    }

    xpc_dictionary_set_int64(v5, "kCBMsgArgResult", a3);
    xpc_connection_send_message(*(v6 + 16), *(a1 + 40));
    xpc_release(*(a1 + 40));
  }
}

void sub_100677ACC(id a1)
{
  if (qword_100B50C68 != -1)
  {
    sub_10085B150();
  }

  v2 = off_100B50C60;

  sub_10072D25C(v2, 1, 3, 1);
}

void sub_100677B1C(uint64_t a1, uint64_t a2)
{
  if (qword_100B508C0 != -1)
  {
    sub_10085AF04();
  }

  v3 = sub_1007CE3D4(off_100B508B8, 1);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_100677B88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v2 = qword_100B54348;
  v3 = *(v1 + 128);

  return sub_10042E44C(v2, v3);
}

void sub_100677BDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v3 = qword_100B54348;
  v4 = *(v2 + 128);

  sub_10042E5E4(v3, v4, a1 + 40);
}

uint64_t *sub_100677C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  return sub_10067BBAC((a1 + 64), (a2 + 64));
}

void sub_100677C54(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void sub_100677C6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v3 = qword_100B54348;
  v4 = *(v2 + 128);

  sub_10042EAE4(v3, v4, (a1 + 40));
}

void sub_100677CE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v3 = qword_100B54348;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  sub_10042E8CC(v3, v4, v5);
}

void sub_100677D40(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54350 != -1)
  {
    sub_10085B884();
  }

  v3 = qword_100B54348;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);

  sub_10042EDBC(v3, v4, v5, v6);
}

uint64_t sub_100677DA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54360 != -1)
  {
    sub_10085B898();
  }

  v2 = qword_100B54358;
  v3 = *(v1 + 128);

  return sub_10042F0B4(v2, v3);
}

_BYTE *sub_100677DF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54360 != -1)
  {
    sub_10085B898();
  }

  v3 = qword_100B54358;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 42);

  return sub_10042F0C4(v3, v4, v5, v6, v7);
}

void sub_100677E5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B54360 != -1)
  {
    sub_10085B898();
  }

  v3 = qword_100B54358;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);

  sub_10042F154(v3, v4, v5, v6);
}

void sub_100677EBC(uint64_t a1, int a2, void *a3, char a4)
{
  v7 = a3;
  v11 = a4;
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8)
  {
    v9 = *(a1 + 40);
    xpc_dictionary_set_int64(v8, "kCBMsgArgResult", a2);
    if (!a2)
    {
      v10 = objc_opt_new();
      [v10 appendBytes:&v11 length:1];
      [v10 appendData:v7];
      xpc_dictionary_set_data(*(*(*(a1 + 32) + 8) + 24), "kCBFastLeConnectionInfoData", [v10 bytes], objc_msgSend(v10, "length"));
    }

    xpc_connection_send_message(*(v9 + 16), *(*(*(a1 + 32) + 8) + 24));
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
  }
}

void sub_100677FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v6 = *v6;
    }

    *buf = 138412546;
    *&buf[4] = v4;
    v17 = 2082;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'device name updated' event for device %@ to session %{public}s", buf, 0x16u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  if (sub_10004FF0C(off_100B508C8, v4, *(a1 + 96), *(a1 + 48)))
  {
    v13 = @"kCBMsgArgDeviceUUID";
    v14 = @"kCBMsgArgName";
    v15[0] = v4;
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    sub_10004FFDC(off_100B508C8, v4, buf);
    if (v19 >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    v8 = [NSString stringWithUTF8String:v7, v13, v14, v15[0]];
    v15[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:&v13 count:2];

    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }

    sub_100052EE4(a1, 189, v9);
  }

  else
  {
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 96);
      v12 = *(a1 + 48);
      *buf = 138412802;
      *&buf[4] = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }
  }
}

void sub_100678264(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  v8 = a3;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v8;
  v11 = v10;
  if (v10)
  {
    *uuid = 0;
    v13 = 0;
    [v10 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v9, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_int64(v9, "kCBMsgArgData", a5);
  xpc_dictionary_set_int64(v9, "kCBMsgArgResult", a4);
  sub_10004DFB8(a1, 191, v9, 1);
}

void sub_10067838C(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    *uuid = 0;
    v11 = 0;
    [v8 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", uuid);
  }

  xpc_dictionary_set_int64(v7, "kCBMsgArgVisibleInSettings", a4);
  sub_10004DFB8(a1, 196, v7, 1);
}

void sub_10067849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = sub_10000C5F8(a3);
  v9 = sub_10000C5E0(a3);
  xpc_dictionary_set_data(v7, "kCBMsgArgLeZone", v8, v9);
  v10 = sub_10000C5F8(a4);
  v11 = sub_10000C5E0(a4);
  xpc_dictionary_set_data(v7, "kCBMsgArgLeZoneMask", v10, v11);

  sub_10004DFB8(a1, 97, v7, 1);
}

void sub_100678568(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v13[0] = v8;
  v12[0] = @"kCBMsgArgDeviceUUID";
  v12[1] = @"kCBTrackingOptionState";
  v9 = [NSNumber numberWithUnsignedChar:a4];
  v13[1] = v9;
  v12[2] = @"kCBTrackingOptionType";
  v10 = [NSNumber numberWithUnsignedChar:a5];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  sub_100052EE4(a1, 96, v11);
}

void sub_1006786B8(uint64_t a1, int a2, void *a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t value)
{
  v15 = a3;
  if (*(a1 + 80) >= 1)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v15;
    v18 = v17;
    if (v17)
    {
      *uuid = 0;
      v20 = 0;
      [v17 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v16, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTClockEventType", a4);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTLocalClock", a5);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTRemoteClock", a6);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTClockSeconds", a8);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTClockMicroSeconds", value);
    xpc_dictionary_set_uint64(v16, "kCBGetControllerBTClockEventCounter", a7);
    sub_10004DFB8(a1, 222, v16, 1);
  }
}

void sub_100678860(uint64_t a1, int a2, void *a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t value, uint64_t a10)
{
  v16 = a3;
  if (*(a1 + 80) >= 1)
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    v18 = v16;
    v19 = v18;
    if (v18)
    {
      *uuid = 0;
      v21 = 0;
      [v18 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v17, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockExceptionStatus", a4);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTLocalClock", value);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTRemoteClock", HIDWORD(value));
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockEventCounter", a6);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockConnectionIntervalMicroSec", 1250 * a5);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockCEOffset", a7);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockHostTime", a8);
    xpc_dictionary_set_uint64(v17, "kCBGetControllerBTClockMicroSeconds", a10);
    sub_10004DFB8(a1, 235, v17, 1);
  }
}

void sub_100678A3C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v6 = a3;
  if (*(a1 + 80) >= 1)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = v6;
    v9 = v8;
    if (v8)
    {
      *uuid = 0;
      v11 = 0;
      [v8 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v7, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_uint64(v7, "kCBCSConfigId", *a4);
    xpc_dictionary_set_uint64(v7, "kCBCSStartAclConnEvent", *(a4 + 1));
    xpc_dictionary_set_uint64(v7, "kCBCSProcedureCounter", *(a4 + 2));
    xpc_dictionary_set_uint64(v7, "kCBCSFrequencyCompensation", *(a4 + 3));
    xpc_dictionary_set_uint64(v7, "kCBCSProcedureDoneStatus", a4[9]);
    xpc_dictionary_set_uint64(v7, "kCBCSSubEventDoneStatus", a4[10]);
    xpc_dictionary_set_uint64(v7, "kCBCSReferencePowerLevel", a4[8]);
    xpc_dictionary_set_uint64(v7, "kCBCSNumAntennaPath", a4[12]);
    xpc_dictionary_set_uint64(v7, "kCBCSNumStepsReported", a4[13]);
    xpc_dictionary_set_data(v7, "kCBCSStepMode", a4 + 14, 0xA0uLL);
    xpc_dictionary_set_data(v7, "kCBCSStepChannel", a4 + 174, 0xA0uLL);
    xpc_dictionary_set_data(v7, "kCBCSStepDataLength", a4 + 334, 0xA0uLL);
    xpc_dictionary_set_data(v7, "kCBCSStepData", a4 + 494, 0x6400uLL);
    xpc_dictionary_set_uint64(v7, "kCBCSCurrentStepIndex", a4[26094]);
    sub_10004DFB8(a1, 234, v7, 1);
  }
}

void sub_100678C70(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, const void *a8, char a9, char a10, char a11, char a12, char a13, unsigned __int16 value, int value_2, unsigned __int8 value_6)
{
  v21 = a3;
  if (*(a1 + 80) >= 1)
  {
    v22 = xpc_dictionary_create(0, 0, 0);
    v23 = v21;
    v24 = v23;
    if (v23)
    {
      *uuid = 0;
      v28 = 0;
      [v23 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v22, "kCBMsgArgDeviceUUID", uuid);
    }

    *uuid = 0;
    v28 = 0;
    sub_10000C704(uuid, a8, a9);
    v25 = sub_10000C5F8(uuid);
    v26 = sub_10000C5E0(uuid);
    xpc_dictionary_set_data(v22, "kCBGetRssiStatisticsRawData", v25, v26);
    xpc_dictionary_set_int64(v22, "kCBGetRssiStatisticsDetectionAverage", a10);
    xpc_dictionary_set_int64(v22, "kCBGetRssiStatisticsDetectionMedian", a12);
    xpc_dictionary_set_int64(v22, "kCBGetRssiStatisticsDetectionMaximum", a11);
    xpc_dictionary_set_int64(v22, "kCBGetRssiStatisticsDetectionMinimum", a13);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionCoreMotionAndMask", a4);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionCoreMotionAndMask2", a5);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionCoreMotionXorMask", a6);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionVariance", value);
    xpc_dictionary_set_uint64(v22, "kCBGetRssiStatisticsDetectionState", value_6);
    xpc_dictionary_set_int64(v22, "kCBMsgArgResult", value_2);
    sub_10004DFB8(a1, 226, v22, 1);
    *uuid = &off_100AE0A78;
    if (v28)
    {
      sub_10000C808(v28);
    }
  }
}

void sub_100678F50(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, unsigned int a6, int64_t a7, int a8)
{
  v14 = a3;
  if (*(a1 + 80) >= 1)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v14;
    v17 = v16;
    if (v16)
    {
      *uuid = 0;
      v19 = 0;
      [v16 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v15, "kCBMsgArgDeviceUUID", uuid);
    }

    xpc_dictionary_set_int64(v15, "kCBUsageStatsLePercent", a4);
    xpc_dictionary_set_int64(v15, "kCBUsageStatsClPercent", a5);
    xpc_dictionary_set_int64(v15, "kCBUsageStatsIsAudioStreaming", a6);
    xpc_dictionary_set_int64(v15, "kCBUsageStatsTimeStampNsMonotonic", a7);
    xpc_dictionary_set_int64(v15, "kCBMsgArgResult", a8);
    sub_10004DFB8(a1, 227, v15, 1);
  }
}