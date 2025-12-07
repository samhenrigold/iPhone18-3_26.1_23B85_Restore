void sub_1006999F0(uint64_t a1, xpc_object_t xdict)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  v7 = v5;
  if (!v5 || (v8 = sub_100007EE8(v5, v6), v9[0] = _NSConcreteStackBlock, v9[1] = 3221225472, v9[2] = sub_10069A49C, v9[3] = &unk_100AF5598, v11 = &v13, v12 = a1, v10 = v7, sub_10000D334(v8, v9), LODWORD(v8) = *(v14 + 6), v10, v8 != 10))
  {
    sub_1005B2CE4(a1, 16, xdict, *(v14 + 6));
  }

  _Block_object_dispose(&v13, 8);
}

void sub_100699B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100699B48(uint64_t a1, xpc_object_t xdict)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v5 = sub_100013C04(value, "kCBMsgArgClientName");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgPacketsPerSecond");
  if (![(__CFString *)v5 length])
  {

    v5 = @"default";
  }

  v13 = qword_100BCE950;
  v14 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    *buf = 138543362;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SetLinkRequirementsForPeer received for %{public}@", buf, 0xCu);
  }

  if (!v12 && v4)
  {
    v16 = sub_100007EE8(v14, v15);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10069A554;
    v17[3] = &unk_100B06340;
    v20 = a1;
    v18 = v4;
    v21 = v26;
    v22 = v25;
    v23 = v24;
    v5 = v5;
    v19 = v5;
    sub_10000D334(v16, v17);
  }
}

void sub_100699E18(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = 0;
  v20 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgLatencyInMs");
  if (!v11 && v4)
  {
    v13 = sub_100007EE8(v11, v12);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10069A5BC;
    v14[3] = &unk_100B04A18;
    v16 = a1;
    v15 = v4;
    v17 = v20;
    v18 = v22;
    v19 = v21;
    sub_10000D334(v13, v14);
  }
}

_BYTE *sub_10069A030(uint64_t a1, void *a2)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  sub_1000216B4(&v9);
  sub_10023130C(&v15 + 1, &v15, &v14 + 1, &v14, &v13, 0, &v11, &v12, &v10);
  sub_100022214(&v9);
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110656;
    v17 = HIDWORD(v15);
    v18 = 1024;
    v19 = v15;
    v20 = 1024;
    v21 = HIDWORD(v14);
    v22 = 1024;
    v23 = v14;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = v11;
    v28 = 2048;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PipeStatistics:connected:%d start:%d stop:%d upCount:%d upDuration:%d tech:%d timSpentInThisTransportMS:%llu", buf, 0x30u);
  }

  v5 = v13;
  if (v11 == 2)
  {
    v5 = v13 + v12 / 0x3E8;
  }

  reply = xpc_dictionary_create_reply(a2);
  v7 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBLePipeStatisticsTotalTimeSpentUpgraded", v5);
    xpc_connection_send_message(*(a1 + 16), v7);
    xpc_release(v7);
  }

  return sub_10002249C(&v9);
}

void sub_10069A220(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  *(v2 + 128) = sub_100366C08(v3, v2 + 144, __p, v2 + 56, *(v2 + 40));
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10069A2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069A2D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128))
  {
    v3 = sub_100007EE8(a1, a2);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10069A360;
    v4[3] = &unk_100ADF8F8;
    v4[4] = a1;
    sub_10000D334(v3, v4);
    *(a1 + 128) = 0;
  }
}

uint64_t sub_10069A360(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v2 = qword_100B540E8;

  return sub_100366FA0(v2, v1 + 144);
}

void sub_10069A3B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  v4 = *(v2 + 128);
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  *(*(*(a1 + 40) + 8) + 24) = sub_1003676B0(v3, v4, __p, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80) != 0, *(a1 + 88) != 0, *(a1 + 96) != 0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10069A480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069A49C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  v4 = *(v2 + 128);
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  *(*(*(a1 + 40) + 8) + 24) = sub_1003682E4(v3, v4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10069A538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069A554(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  v4 = *(v2 + 128);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  sub_1003687B8(v3, v4, v8, v5, v6, v7, v9);
}

void sub_10069A5BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  v3 = qword_100B540E8;
  v4 = *(v2 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);

  sub_100368D34(v3, v4, v5, v6, v7, v8);
}

void sub_10069A624(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, int a6, int a7, unsigned int a8, int64_t value)
{
  v16 = a3;
  v17 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v17, v16);
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  xpc_dictionary_set_string(v17, "kCBMsgArgName", v18);
  xpc_dictionary_set_int64(v17, "kCBMsgArgType", a4);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPriority", a5);
  xpc_dictionary_set_fd(v17, "kCBLePipeMsgArgSocket", a6);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgReliable", a7 ^ 1u);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerCLVersion", a8);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerCLFeatures", value);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerType", HIDWORD(value));
  v20 = 0;
  v19 = 0;
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  sub_10036E814(qword_100B540E8, &v20, &v19);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArglocalCLVersion", v20);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArglocalCLFeatures", v19);
  sub_10004DFB8(a1, 17, v17, 1);
}

void sub_10069A7F4(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, const unsigned __int8 *a6, int a7, unsigned int a8, int64_t value)
{
  v16 = a3;
  v17 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v17, v16);
  if (*(a2 + 23) >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  xpc_dictionary_set_string(v17, "kCBMsgArgName", v18);
  xpc_dictionary_set_int64(v17, "kCBMsgArgType", a4);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPriority", a5);
  xpc_dictionary_set_uuid(v17, "kCBLePipeMsgArgSocket", a6);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgReliable", a7 ^ 1u);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerCLVersion", a8);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerCLFeatures", value);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArgPeerType", HIDWORD(value));
  v20 = 0;
  v19 = 0;
  if (qword_100B540F0 != -1)
  {
    sub_10085D470();
  }

  sub_10036E814(qword_100B540E8, &v20, &v19);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArglocalCLVersion", v20);
  xpc_dictionary_set_int64(v17, "kCBLePipeMsgArglocalCLFeatures", v19);
  sub_10004DFB8(a1, 17, v17, 1);
}

void sub_10069A9C4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v9 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  sub_1005B2FB8(a1, v7, v9);
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  xpc_dictionary_set_string(v7, "kCBMsgArgName", v8);
  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a4);
  sub_10004DFB8(a1, 18, v7, 1);
}

void sub_10069AAA0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  xpc_dictionary_set_string(v6, "kCBMsgArgName", v8);
  xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a3);

  sub_10004DFB8(a1, 15, v7, 1);
}

void sub_10069AB3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = @"kCBMsgArgName";
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  sub_100052EE4(a1, 16, v4);
}

void sub_10069AC10(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 - 2) >= 3)
  {
    if (a3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4;
    }

    if (a3 == 1)
    {
      v3 = 5;
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = *(a1 + 136);
  }

  sub_100063710(a1, v3);
}

void sub_10069AC48(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v13[0] = @"kCBMsgArgName";
  v13[1] = @"kCBMsgArgDeviceUUID";
  v14[0] = v7;
  v14[1] = v8;
  v13[2] = @"kCBMsgArgState";
  v11 = [NSNumber numberWithLongLong:v10];
  v14[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  sub_100052EE4(a1, 19, v12);
}

uint64_t sub_10069AE70(uint64_t a1)
{
  *sub_100589578(a1, "NetworkProviderService", 256) = &off_100B063B0;
  if (qword_100B54DE8 != -1)
  {
    sub_10085D484();
  }

  sub_100589880(a1, off_100B54DE0);
  return a1;
}

void sub_10069AF04(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_10069AFA8(uint64_t a1, __int16 a2, uint64_t a3, int *a4, uint64_t a5)
{
  v10 = sub_1003A1C64(a1, 1953719151);
  *v10 = &off_100B064D0;
  sub_100320A6C((v10 + 50), a3, a2, a4);
  *(a1 + 592) = a5;
  *(a1 + 600) = 0;
  *(a1 + 616) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  return a1;
}

uint64_t sub_10069B054(void *a1)
{
  *a1 = &off_100B064D0;
  if (a1[75])
  {
    sub_10069B0E8(a1);
  }

  sub_100320A70((a1 + 50));

  return sub_1003A1D74(a1);
}

void sub_10069B0BC(_Unwind_Exception *a1)
{
  sub_100320A70(v1 + 400);
  sub_1003A1D74(v1);
  _Unwind_Resume(a1);
}

void sub_10069B0E8(uint64_t a1)
{
  v2 = *(a1 + 600);
  if (!v2)
  {
LABEL_8:
    *(a1 + 600) = 0;
    v6 = qword_100BCE8D0;
    if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 0;
    v7 = "HF Sendthread stopped";
    v8 = &v9;
    goto LABEL_14;
  }

  v3 = (*(*v2 + 24))(v2);
  v4 = *(a1 + 600);
  if (v3)
  {
    if (v4)
    {
      if ((*(*v4 + 72))(v4) == 2)
      {
        v5 = *(a1 + 600);
        if (v5)
        {
          if (sub_100376210(*(a1 + 600)))
          {
            *(v5 + 113) = 1;
            sub_1003764E4(v5);
          }
        }
      }
    }

    goto LABEL_8;
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 600) = 0;
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v7 = "HF Sendthread stopped & destoryed before start";
    v8 = buf;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
  }
}

void sub_10069B24C(void *a1)
{
  sub_10069B054(a1);

  operator delete();
}

void sub_10069B284(uint64_t a1, char *__s1, const __CFBoolean *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertyAllowSCOForTBT"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 592) + 64);

    v6();
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyScoSampleRate"))
  {
    valuePtr = 8000;
    CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
    (*(**(a1 + 592) + 72))(*(a1 + 592), a1, valuePtr);
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyScoCodecTypeChanged"))
  {
    number = 0;
    value = 0;
    v16 = 0;
    v17 = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyScoChannelFormat", &value) && CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyScoSampleRate", &number) && CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyTransportType", &v17))
    {
      v15 = 8000;
      v14 = 0;
      CFNumberGetValue(value, kCFNumberIntType, &v15 + 4);
      CFNumberGetValue(number, kCFNumberIntType, &v15);
      CFNumberGetValue(v17, kCFNumberIntType, &v14);
      if (_os_feature_enabled_impl() && CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyInputConfig", &v16))
      {
        valuePtr = 0;
        CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
        (*(**(a1 + 592) + 104))(*(a1 + 592), a1, valuePtr);
      }

      (*(**(a1 + 592) + 88))(*(a1 + 592), a1, v15, 1, HIDWORD(v15));
      (*(**(a1 + 592) + 96))(*(a1 + 592), a1, v14 != 0);
      v7 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        valuePtr = 67109632;
        v21 = HIDWORD(v15);
        v22 = 1024;
        *v23 = v15;
        *&v23[4] = 1024;
        *&v23[6] = v14;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "propertyDidUpdate codecID:%d, sampleRate:%u advancedTransport:%u", &valuePtr, 0x14u);
      }
    }
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyExpanseInA2DP"))
  {
    v8 = CFBooleanGetValue(a3);
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      valuePtr = 67109120;
      v21 = v8 != 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "kBTAudioMsgPropertyExpanseInA2DP: %d", &valuePtr, 8u);
    }

    (*(**(a1 + 592) + 120))(*(a1 + 592), a1, v8 != 0);
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyCallScreening"))
  {
    v10 = CFBooleanGetValue(a3);
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      valuePtr = 67109120;
      v21 = v10 != 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "kBTAudioMsgPropertyCallScreening: %d", &valuePtr, 8u);
    }

    (*(**(a1 + 592) + 128))(*(a1 + 592), a1, v10 != 0);
  }

  else if (!strcmp(__s1, "kBTAudioMsgPropertyManualVolumeUpdate"))
  {
    number = 0;
    value = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateNewVolume", &v17))
    {
      CFNumberGetValue(v17, kCFNumberSInt32Type, &v15 + 4);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentVolume", &value))
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v15);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateRampInProgress", &v16))
    {
      CFNumberGetValue(v16, kCFNumberSInt32Type, &v14);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentAudioCategory", &number))
    {
      v12 = [(__CFNumber *)number copy];
    }

    else
    {
      v12 = 0;
    }

    v13 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      valuePtr = 67109890;
      v21 = v15;
      v22 = 2112;
      *v23 = v12;
      *&v23[8] = 1024;
      v24 = BYTE4(v15);
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Manual Volume update received currentVolume: %d audioCategory %@ newVolume %d isRampInProgress %d", &valuePtr, 0x1Eu);
    }

    (*(**(a1 + 592) + 112))(*(a1 + 592), a1, v15, v12, HIDWORD(v15), v14 != 0);
  }

  else
  {

    sub_1003A432C(a1, __s1, a3);
  }
}

void sub_10069B92C(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  if (a2 == 11)
  {
    value = 0;
    v8 = 0;
    number = 0;
    valuePtr = 0;
    v6 = 8000;
    if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyScoDataSource", &value))
    {
      CFNumberGetValue(value, kCFNumberIntType, &valuePtr + 4);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyScoRouteReason", &number))
    {
      CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyScoSampleRate", &v8))
    {
      CFNumberGetValue(v8, kCFNumberIntType, &v6);
      v5 = v6;
    }

    else
    {
      v5 = 8000;
    }

    (*(**(a1 + 592) + 48))(*(a1 + 592), a1, HIDWORD(valuePtr), valuePtr, v5);
  }

  else
  {

    sub_1003A48A8(a1, a2);
  }
}

__n128 sub_10069BBBC(__n128 *a1, __n128 *a2)
{
  result = a1[38];
  a2[1].n128_u32[0] = a1[39].n128_u32[0];
  *a2 = result;
  return result;
}

double sub_10069BBD0(uint64_t a1)
{
  *(a1 + 624) = 0;
  result = 0.0;
  *(a1 + 608) = 0u;
  return result;
}

uint64_t sub_10069BBE0(uint64_t a1, int a2)
{
  v4 = sub_100320FF4(a1 + 400);
  ++*(a1 + 608);
  if (v4 != a2 && a2 != 0 && v4 != 0)
  {
    ++*(a1 + 616);
  }

  result = sub_100320FA4(a1 + 400);
  if (result)
  {
    *(a1 + 624) = 1;
  }

  return result;
}

void sub_10069BC6C(uint64_t a1, int a2, int a3)
{
  valuePtr = a3;
  *keys = *off_100B065E0;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v6 = v5;
  v7 = &kCFBooleanTrue;
  if (!a2)
  {
    v7 = &kCFBooleanFalse;
  }

  values[0] = *v7;
  values[1] = v5;
  v8 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1003A3724(a1, "kBTAudioMsgPropertyScoIsEnabled", v8);
  CFRelease(v6);
  CFRelease(v8);
}

void sub_10069BE3C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setUWBSStereoSupport: %d", v5, 8u);
  }

  sub_1003A32F8(a1, "kBTAudioMsgPropertyUWBSStereoSupport", a2);
}

void sub_10069BF00(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setIncompatibleHidConnected: %d", v5, 8u);
  }

  sub_1003A32F8(a1, "kBTAudioMsgPropertyIncompatibleHidConnected", a2);
}

void sub_10069C04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HFPAudioDevice readHandler called on data of size %lu", &v5, 0xCu);
  }
}

uint64_t sub_10069C0F0(uint64_t a1)
{
  result = *(a1 + 600);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_10069C120(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  if (a7 > 129)
  {
    if ((a7 - 255) < 2 || a7 == 130)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((a7 - 127) < 2)
    {
      goto LABEL_9;
    }

    if (a7 == 129)
    {
      v7 = _os_feature_enabled_impl();
      if (v7)
      {
        v9 = sub_10000C798(v7, v8);
        if ((*(*v9 + 352))(v9))
        {
          operator new();
        }
      }

LABEL_9:
      operator new();
    }
  }

  operator new();
}

void sub_10069C2E8(uint64_t a1)
{
  v2 = *(a1 + 600);
  if (v2 && (*(*v2 + 64))(v2) && ((*(**(a1 + 600) + 24))(*(a1 + 600)) & 1) == 0)
  {
    sub_10036470C(*(a1 + 600));
    (*(**(a1 + 600) + 32))(*(a1 + 600), 1);
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HF Sendthread started", &v9, 2u);
    }
  }

  else
  {
    v3 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 600);
      v6 = "Doesn't";
      if (v5)
      {
        if ((*(*v5 + 64))(v5))
        {
          v6 = "Does";
        }

        v8 = *(a1 + 600);
        v7 = "Not Running";
        if (v8)
        {
          if ((*(*v8 + 24))(v8))
          {
            v7 = "Running";
          }
        }
      }

      else
      {
        v7 = "Not Running";
      }

      v9 = 136315394;
      v10 = v6;
      v11 = 2080;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "HF Sendthread %s have an associated connection handle, Thread already %s: not starting", &v9, 0x16u);
    }
  }
}

uint64_t sub_10069C510(uint64_t a1)
{
  result = *(a1 + 600);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void *sub_10069C540(uint64_t a1)
{
  result = sub_10032F49C(a1, 17);
  *result = &off_100B06600;
  result[32] = 0;
  result[33] = 0;
  return result;
}

uint64_t sub_10069C57C(void *a1)
{
  *a1 = &off_100B06600;
  v2 = a1[33];
  if (v2)
  {
    sub_100117644(v2);
  }

  return sub_10032F580(a1);
}

void sub_10069C5DC(void *a1)
{
  sub_10069C57C(a1);

  operator delete();
}

uint64_t sub_10069C624(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    sub_10042CAE8(v2);
    v3 = *(a1 + 264);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  return 0;
}

uint64_t sub_10069C664(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  sub_1000216B4(&v12);
  v3 = sub_100227254(2, 8, a2 + 128, 15, sub_10069C764, sub_10069C80C, sub_10069C860, sub_10069C89C, sub_10069C910, sub_10069C964);
  if (v3)
  {
    v4 = qword_100BCEA88;
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D498(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v3 = 305;
  }

  sub_10002249C(&v12);
  return v3;
}

void sub_10069C764(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = a1;
  if (qword_100B508F0 != -1)
  {
    sub_10085D504();
  }

  v7 = *a2;
  v8 = *(a2 + 2);
  v6 = sub_1000E6554(off_100B508E8, &v7, 1);
  if (qword_100B54DD8 != -1)
  {
    sub_10085D518();
  }

  sub_10069CA74(off_100B54DD0, v6, v5, a3);
}

void sub_10069C80C(uint64_t a1)
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  v2 = off_100B54DD0;

  sub_10069CB70(v2, a1);
}

uint64_t sub_10069C860()
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  sub_10069CC04(off_100B54DD0);
  return 0;
}

uint64_t sub_10069C89C(const void *a1, unsigned int a2)
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  v4 = *(off_100B54DD0 + 32);
  if (!v4)
  {
    return 3400;
  }

  return sub_10042CE6C(v4, a1, a2);
}

pthread_cond_t *sub_10069C910()
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  result = *(off_100B54DD0 + 32);
  if (result)
  {

    return sub_10042CDF8(result);
  }

  return result;
}

uint64_t sub_10069C964(int a1, int a2)
{
  if (qword_100B54DD8 != -1)
  {
    sub_10085D540();
  }

  v4 = off_100B54DD0;
  v5 = sub_10057E420(off_100B54DD0, a1);

  return sub_10057E710(v4, v5, 0, a2);
}

uint64_t sub_10069C9DC(void *a1, unint64_t a2)
{
  v2 = sub_10057E30C(a1, a2);
  v12 = 0;
  sub_1000216B4(&v12);
  v3 = sub_100227434(v2);
  if (v3)
  {
    v4 = qword_100BCEA88;
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D554(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v3 = 306;
  }

  sub_10002249C(&v12);
  return v3;
}

void sub_10069CA74(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  if (a4)
  {
    v7 = qword_100BCEA88;
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D498(a4, v7, v8, v9, v10, v11, v12, v13);
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10085D5C0();
    }

    v14 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, a2, v14);
  }

  sub_10057E218(a1, a2, a3);
  sub_10057DA84(a1, a2, 0);
}

uint64_t sub_10069CC04(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    sub_10042CAE8(v2);
    v3 = *(a1 + 264);
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  return 0;
}

uint64_t sub_10069CDA0(uint64_t a1)
{
  result = sub_10032F49C(a1, 16);
  *result = off_100B066C8;
  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 256) = &off_100B06738;
  *(result + 280) = 0;
  return result;
}

uint64_t sub_10069CE00(void *a1)
{
  *a1 = off_100B066C8;
  a1[32] = &off_100B06738;
  v2 = a1[34];
  if (v2)
  {
    sub_100117644(v2);
  }

  return sub_10032F580(a1);
}

void sub_10069CE80(void *a1)
{
  sub_10069CE00(a1);

  operator delete();
}

uint64_t sub_10069CEB8(uint64_t a1)
{
  v11 = off_100B06758;
  v10 = 0;
  sub_1000216B4(&v10);
  v2 = sub_100227F5C(sub_10069D020, sub_10069D08C, &off_100B06768, sub_10069D0E4, &off_100B06778, &v11, 1, 13, 256000, 1);
  sub_100022214(&v10);
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D62C();
    }

    v3 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v4 = sub_100017E6C();
    sub_1005AAE0C(v4 + 264, a1 + 256);
    v5 = sub_100017E6C();
    v6 = (*(*v5 + 32))(v5, &v9, &v8 + 1, &v8);
    sub_10069D13C(v6, v9, HIBYTE(v8), v8);
    v3 = 0;
  }

  sub_10002249C(&v10);
  return v3;
}

void sub_10069D020(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a3;
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  v6 = off_100B54DE0;

  sub_10069D518(v6, a2, a1, v3);
}

void sub_10069D08C(unsigned int a1)
{
  if (sub_1002274C0(a1, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D67C();
    }
  }
}

void sub_10069D0E4(unsigned int a1)
{
  if (sub_100227508(a1, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D6F0();
    }
  }
}

_BYTE *sub_10069D13C(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a4 - a3;
      if (a4 < a3)
      {
        v4 = 0;
      }

      v5 = 255 * v4 / a4;
    }

    else
    {
      LOBYTE(v5) = -1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v8 = 0;
  sub_1000216B4(&v8);
  v7 = 0;
  sub_100228684(&v7);
  sub_1002F7FB0(v7, v5);
  return sub_10002249C(&v8);
}

uint64_t sub_10069D1CC(uint64_t a1)
{
  v2 = sub_100017E6C();
  sub_1005AB34C(v2 + 264, a1 + 256);
  v5 = 0;
  sub_1000216B4(&v5);
  if (sub_100227438(8))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D764();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  sub_10002249C(&v5);
  return v3;
}

uint64_t sub_10069D270(uint64_t a1)
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

  *(a1 + 280) = 0;
  return 0;
}

_BYTE *sub_10069D2B4(uint64_t a1, int a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  result = sub_10069D13C(a1, a2, a3, a4);
  if ((v4 & 1) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10069D354(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  *v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_1000DE474(&v6 + 1);
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  BYTE2(v9[0]) = 0;
  BYTE4(v9[0]) = 0;
  DWORD1(v12[1]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(v9[0]) = 0;
  v10 = 0uLL;
  v9[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v12, 0, 19);
  __p[1] = 0;
  BYTE8(v12[1]) = 1;
  *(&v12[1] + 14) = 0;
  *(&v12[1] + 9) = 0;
  v13 = 0uLL;
  *(&v12[2] + 1) = 0;
  LOBYTE(v14) = 0;
  *(&v14 + 2) = 0;
  v3 = sub_100536A18(a2, &v6);
  v4 = v13;
  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  nullsub_21();
  return v3 & v4;
}

BOOL sub_10069D4A4(void *a1, unint64_t a2)
{
  v7 = 0;
  sub_1000216B4(&v7);
  v4 = sub_10057E30C(a1, a2);
  v5 = sub_100227434(v4) != 0;
  sub_10002249C(&v7);
  return v5;
}

void sub_10069D518(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_10085D7A0();
  }

  v9 = *a2;
  v10 = *(a2 + 2);
  v8 = sub_1000E6554(off_100B508E8, &v9, 1);
  if (sub_10057DFAC(a1, v8))
  {
    sub_10057D9B0(a1, v8, 1);
  }

  if (sub_10022718C(a3, a4, sub_10069D67C, sub_10069D724, sub_10069D778, sub_10069D7B4, sub_10069D828, sub_10069D87C, 0))
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D7B4();
    }
  }
}

void sub_10069D67C(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = a1;
  if (qword_100B508F0 != -1)
  {
    sub_10085D7A0();
  }

  v7 = *a2;
  v8 = *(a2 + 2);
  v6 = sub_1000E6554(off_100B508E8, &v7, 1);
  if (qword_100B54DE8 != -1)
  {
    sub_10085D828();
  }

  sub_10069D8D8(off_100B54DE0, v6, v5, a3);
}

uint64_t sub_10069D724(uint64_t a1)
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  v2 = off_100B54DE0;

  return sub_10069DB6C(v2, a1);
}

uint64_t sub_10069D778()
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  sub_10069DC84(off_100B54DE0);
  return 0;
}

uint64_t sub_10069D7B4(const void *a1, unsigned int a2)
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  v4 = *(off_100B54DE0 + 33);
  if (!v4)
  {
    return 3402;
  }

  return sub_10042CE6C(v4, a1, a2);
}

pthread_cond_t *sub_10069D828()
{
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  result = *(off_100B54DE0 + 33);
  if (result)
  {

    return sub_10042CDF8(result);
  }

  return result;
}

void sub_10069D87C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (qword_100B54DE8 != -1)
  {
    sub_10085D668();
  }

  v4 = off_100B54DE0;

  sub_10069DA4C(v4, v3, v2);
}

void sub_10069D8D8(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  if (a4)
  {
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_ERROR))
    {
      sub_10085D850();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_10085D88C();
    }

    v7 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, a2, v7);
  }

  if ((*(*(a1 + 264) + 24976) & 1) == 0 && sub_10069D354(a1, a2))
  {
    v9 = qword_100BCEA88;
    if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activating Parrot hack", v10, 2u);
    }

    *(*(a1 + 264) + 24976) = 1;
  }

  sub_10057E218(a1, a2, a3);
  sub_10057DA84(a1, a2, 0);
}

void sub_10069DA4C(void *a1, int a2, int a3)
{
  v5 = sub_10057E420(a1, a2);
  sub_10057E710(a1, v5, 0, a3);
  v6 = a1[33];
  if (v6 && *(v6 + 24976) == 1)
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    v7 = sub_10057DEF8(a1, &__p);
    v8 = __p;
    v9 = v14;
    if (__p == v14)
    {
      goto LABEL_7;
    }

    v10 = 0;
    do
    {
      v7 = sub_10069D354(v7, *v8);
      v10 |= v7;
      ++v8;
    }

    while (v8 != v9);
    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = qword_100BCEA88;
      if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deactivating Parrot hack", &v12, 2u);
      }

      *(a1[33] + 24976) = 0;
    }

    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }
}

void sub_10069DB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10069DB6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 280);
  v4 = *(a1 + 264);
  if (!v3)
  {
    if (v4)
    {
      v6 = qword_100BCEA88;
      if (os_log_type_enabled(qword_100BCEA88, OS_LOG_TYPE_FAULT))
      {
        sub_10085D8F0(v6);
      }
    }

    sub_1005CF720();
  }

  v5 = sub_10042CC9C(v4);
  if (!v5)
  {
    v5 = 0;
    ++*(a1 + 280);
  }

  return v5;
}

uint64_t sub_10069DC84(uint64_t a1)
{
  v2 = *(a1 + 280);
  v3 = *(a1 + 264);
  *(a1 + 280) = --v2;
  if (v2)
  {
    sub_10042CD40(v3);
  }

  else
  {
    sub_10042CAE8(v3);
    v4 = *(a1 + 272);
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    if (v4)
    {
      sub_100117644(v4);
    }
  }

  return 0;
}

void *sub_10069DE68(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = sub_1005ADAE8(a1, a2, a3);
  *result = &off_100B067F8;
  return result;
}

void sub_10069DE9C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085DA98();
    }

    return;
  }

  v5 = *a2;
  if (!*(a1 + 216))
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100817A60();
    }

    return;
  }

  if (*a2 > 0xBFu)
  {
    if (*a2 > 0xFBu)
    {
      if (v5 - 252 <= 2)
      {

        sub_1005AE1BC(a1, a2, a3);
        return;
      }

      goto LABEL_42;
    }

    if (v5 == 192)
    {
      v8 = -14;
LABEL_19:
      buf[0] = v8;
      if (sub_1000C0430((a1 + 192), buf))
      {
        v20 = v8;
        *buf = &v20;
        v9 = sub_100314704((a1 + 192), &v20, &unk_1008A9BD0, buf)[3];
        if (v9)
        {
          v10 = mach_absolute_time();
          v11 = v9;
          v12 = a2;
          v13 = a3;
LABEL_22:
          IOHIDUserDeviceHandleReportWithTimeStamp(v11, v10, v12, v13);
          return;
        }
      }

      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_10085D9B0();
      }

      return;
    }

    if (v5 != 198 && v5 != 224)
    {
      goto LABEL_42;
    }

LABEL_18:
    v8 = -16;
    goto LABEL_19;
  }

  v7 = v5 - 96;
  if (v5 - 96 <= 0x3B)
  {
    if (((1 << v7) & 0x380001) != 0)
    {
LABEL_9:
      v8 = -15;
      goto LABEL_19;
    }

    if (((1 << v7) & 0xC01000000000000) != 0)
    {
      goto LABEL_18;
    }
  }

  if (v5 > 0x31)
  {
    goto LABEL_42;
  }

  if (((1 << v5) & 0x3000000040004) != 0)
  {
    goto LABEL_9;
  }

  if (*a2 == 19)
  {
    v19 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 19;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received power-off notice input report (ID %u)", buf, 8u);
    }

    return;
  }

  if (*a2 != 20)
  {
LABEL_42:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085DA24();
    }

    return;
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = (*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40));
    *buf = 67109376;
    *&buf[4] = 20;
    v23 = 1024;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received exit suspend input report (ID %u), should undim %d", buf, 0xEu);
  }

  if ((*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40)))
  {
    v16 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Waking screen with spoofed click", buf, 2u);
    }

    buf[0] = -15;
    if (sub_1000C0430((a1 + 192), buf))
    {
      v20 = -15;
      *buf = &v20;
      v17 = sub_100314704((a1 + 192), &v20, &unk_1008A9BD0, buf)[3];
      *buf = 274;
      v18 = mach_absolute_time();
      IOHIDUserDeviceHandleReportWithTimeStamp(v17, v18, buf, 8);
      v21 = 18;
      v10 = mach_absolute_time();
      v12 = &v21;
      v11 = v17;
      v13 = 8;
      goto LABEL_22;
    }

    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085D974();
    }
  }
}

uint64_t sub_10069E31C(uint64_t a1, void *a2)
{
  sub_1005AE020(a1, a2);
  sub_10069E3F4(a1, a2);
  sub_10069E568(a1, a2);
  v4 = a2;
  v5 = [v4 valueForKey:@"ProductID"];
  v6 = [v5 intValue];
  v9 = 21;
  v7 = *sub_1003141CC(&unk_100BCE698, &v9);

  if (v6 != v7)
  {
    sub_10069E67C(a1, v4);
  }

  return 1;
}

uint64_t sub_10069E3F4(uint64_t a1, void *a2)
{
  v8 = xmmword_1008C4B40;
  v9 = unk_1008C4B50;
  *v10 = xmmword_1008C4B60;
  v6 = xmmword_1008C4B20;
  v7 = unk_1008C4B30;
  *&v10[15] = -1073577627;
  *(a1 + 304) = a1;
  *(a1 + 312) = -16;
  v3 = [a2 mutableCopy];
  [v3 setObject:@"Mouse" forKeyedSubscript:@"Accessory Category"];
  [v3 setObject:&off_100B34630 forKeyedSubscript:@"ExtendedData"];
  v4 = sub_1005ADE88(a1, v3, &v6, 83, *(a1 + 312), 0);
  if (v4)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10085DAD4();
  }

  return v4;
}

uint64_t sub_10069E568(uint64_t a1, void *a2)
{
  v4[4] = xmmword_1008C4BB3;
  v4[5] = unk_1008C4BC3;
  v5[0] = xmmword_1008C4BD3;
  *(v5 + 10) = *(&xmmword_1008C4BD3 + 10);
  v4[0] = xmmword_1008C4B73;
  v4[1] = unk_1008C4B83;
  v4[2] = xmmword_1008C4B93;
  v4[3] = unk_1008C4BA3;
  *(a1 + 320) = a1;
  *(a1 + 328) = -15;
  v2 = sub_1005ADE88(a1, a2, v4, 122, 241, 1);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10085DB10();
  }

  return v2;
}

uint64_t sub_10069E67C(uint64_t a1, void *a2)
{
  v4[0] = xmmword_1008C4BED;
  *(v4 + 11) = *(&xmmword_1008C4BED + 11);
  *(a1 + 336) = a1;
  *(a1 + 344) = -14;
  v2 = sub_1005ADE88(a1, a2, v4, 27, 242, 2);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10085DB4C();
  }

  return v2;
}

uint64_t sub_10069E7A8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 178 && a1[8] == 240)
  {
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FW update detected; invalidating SDP cache", v12, 2u);
    }

    (*(**(*a1 + 8) + 24))(*(*a1 + 8));
  }

  return (*(**a1 + 120))(*a1, a2, a3, a4, a5, a1[8]);
}

void sub_10069E8B4(uint64_t a1)
{
  sub_1005ADBAC(a1);

  operator delete();
}

id sub_10069E8EC(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 8);
  v2 = *(a1 + 72);
  sub_1000088CC(v4);

  return v2;
}

double sub_10069EDF0(uint64_t a1)
{
  *a1 = off_100B06888;
  *(a1 + 8) = -1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  return result;
}

uint64_t sub_10069EE54(uint64_t a1, uint64_t a2)
{
  *a1 = off_100B06888;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 112) = 0u;
  v5 = (a1 + 112);
  *(a1 + 160) = 0u;
  v6 = (a1 + 160);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = (a1 + 232);
  v8 = (a1 + 256);
  v9 = (a1 + 280);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=(v4, (a2 + 64));
  std::string::operator=((a1 + 88), (a2 + 88));
  std::string::operator=(v5, (a2 + 112));
  std::string::operator=((a1 + 136), (a2 + 136));
  std::string::operator=(v6, (a2 + 160));
  std::string::operator=((a1 + 184), (a2 + 184));
  if (a1 != a2)
  {
    sub_10068010C(v7, *(a2 + 232), *(a2 + 240), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 240) - *(a2 + 232)) >> 3));
    sub_100680498(v8, *(a2 + 256), *(a2 + 264), (*(a2 + 264) - *(a2 + 256)) >> 7);
    sub_1006807AC(v9, *(a2 + 280), *(a2 + 288), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 288) - *(a2 + 280)) >> 3));
  }

  std::string::operator=((a1 + 304), (a2 + 304));
  std::string::operator=((a1 + 328), (a2 + 328));
  std::string::operator=((a1 + 352), (a2 + 352));
  std::string::operator=((a1 + 400), (a2 + 400));
  return a1;
}

void sub_10069F020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 423) < 0)
  {
    operator delete(*(v3 + 400));
  }

  sub_1000161FC(va);
  if (*(v3 + 375) < 0)
  {
    operator delete(*(v3 + 352));
  }

  if (*(v3 + 351) < 0)
  {
    operator delete(*(v3 + 328));
  }

  if (*(v3 + 327) < 0)
  {
    operator delete(*(v3 + 304));
  }

  sub_1000161FC(va);
  sub_1006A1BEC(va);
  sub_1006A1B64(va);
  if (*(v3 + 231) < 0)
  {
    operator delete(*(v3 + 208));
  }

  if (*(v3 + 207) < 0)
  {
    operator delete(*(v3 + 184));
  }

  if (*(v3 + 183) < 0)
  {
    operator delete(*v7);
  }

  if (*(v3 + 159) < 0)
  {
    operator delete(*(v3 + 136));
  }

  if (*(v3 + 135) < 0)
  {
    operator delete(*v6);
  }

  if (*(v3 + 111) < 0)
  {
    operator delete(*(v3 + 88));
  }

  if (*(v3 + 87) < 0)
  {
    operator delete(*v5);
  }

  if (*(v3 + 63) < 0)
  {
    operator delete(*(v3 + 40));
  }

  if (*(v3 + 39) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10069F130(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *a1 = off_100B06888;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  sub_10067EF60(a1, a2);
  return a1;
}

void sub_10069F1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 423) < 0)
  {
    operator delete(*(v3 + 400));
  }

  sub_1000161FC(va);
  if (*(v3 + 375) < 0)
  {
    operator delete(*(v3 + 352));
  }

  if (*(v3 + 351) < 0)
  {
    operator delete(*(v3 + 328));
  }

  if (*(v3 + 327) < 0)
  {
    operator delete(*(v3 + 304));
  }

  sub_1000161FC(va);
  sub_1006A1BEC(va);
  sub_1006A1B64(va);
  if (*(v3 + 231) < 0)
  {
    operator delete(*(v3 + 208));
  }

  if (*(v3 + 207) < 0)
  {
    operator delete(*(v3 + 184));
  }

  if (*(v3 + 183) < 0)
  {
    operator delete(*(v3 + 160));
  }

  if (*(v3 + 159) < 0)
  {
    operator delete(*(v3 + 136));
  }

  if (*(v3 + 135) < 0)
  {
    operator delete(*(v3 + 112));
  }

  if (*(v3 + 111) < 0)
  {
    operator delete(*(v3 + 88));
  }

  if (*(v3 + 87) < 0)
  {
    operator delete(*(v3 + 64));
  }

  if (*(v3 + 63) < 0)
  {
    operator delete(*(v3 + 40));
  }

  if (*(v3 + 39) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10069F2F4(uint64_t a1)
{
  *a1 = off_100B06888;
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v3 = (a1 + 376);
  sub_1000161FC(&v3);
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v3 = (a1 + 280);
  sub_1000161FC(&v3);
  v3 = (a1 + 256);
  sub_1006A1BEC(&v3);
  v3 = (a1 + 232);
  sub_1006A1B64(&v3);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10069F450(uint64_t a1)
{
  sub_10069F2F4(a1);

  operator delete();
}

std::string *sub_10069F488@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if ((a1 - 1) < 6)
  {
    result = std::string::append(a2, off_100B068C8[a1 - 1]);
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    return std::string::insert(a2, 0, ";TYPE=");
  }

  return result;
}

void sub_10069F4FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10069F518(std::string *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  memset(&v22, 0, sizeof(v22));
  sub_100007E30(&v22, ";\n\"");
  if (a2 == 1)
  {
    std::string::append(&v22, ",");
  }

  for (i = 0; ; i = v19 + 2)
  {
    v7 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v7 < 0)
    {
      v8 = a1->__r_.__value_.__r.__words[0];
      size = a1->__r_.__value_.__l.__size_;
    }

    else
    {
      v8 = a1;
      size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    v10 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    v11 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
    v12 = v22.__r_.__value_.__r.__words[0];
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v22;
    }

    else
    {
      v13 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v22.__r_.__value_.__l.__size_;
    }

    if (size <= i || v10 == 0)
    {
      break;
    }

    v15 = v8 + size;
    v16 = v8 + i;
LABEL_17:
    v17 = v10;
    v18 = v13;
    while (*v16 != v18->__r_.__value_.__s.__data_[0])
    {
      v18 = (v18 + 1);
      if (!--v17)
      {
        if (++v16 != v15)
        {
          goto LABEL_17;
        }

        goto LABEL_31;
      }
    }

    if (v16 == v15)
    {
      break;
    }

    v19 = v16 - v8;
    if (v16 - v8 == -1)
    {
      break;
    }

    v20 = a1;
    if ((v7 & 0x80000000) != 0)
    {
      v20 = a1->__r_.__value_.__r.__words[0];
    }

    if (v20->__r_.__value_.__s.__data_[v19] == 10)
    {
      v21 = a1;
      if ((v7 & 0x80000000) != 0)
      {
        v21 = a1->__r_.__value_.__r.__words[0];
      }

      v21->__r_.__value_.__s.__data_[v19] = 110;
    }

    std::string::insert(a1, v16 - v8, 1uLL, 92);
  }

LABEL_31:
  *a3 = *&a1->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&a1->__r_.__value_.__l + 2);
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  if (v11 < 0)
  {
    operator delete(v12);
  }
}

void sub_10069F684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10069F6A4@<Q0>(std::string *this@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  while (1)
  {
    v8 = this;
    size = v6;
    if ((v6 & 0x80) != 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    if (v7 == (v8 + size))
    {
      break;
    }

    v10 = v7->__r_.__value_.__s.__data_[0];
    if (v10 < 0)
    {
      if (!__maskrune(v7->__r_.__value_.__s.__data_[0], 0x100uLL))
      {
        goto LABEL_13;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v10] & 0x100) == 0)
    {
      goto LABEL_13;
    }

    v11 = __tolower(v7->__r_.__value_.__s.__data_[0]);
    v12 = 0;
    do
    {
      v13 = byte_1008C4C08[v12++];
    }

    while (v13 < v11);
    v7->__r_.__value_.__s.__data_[0] = v12 + 49;
LABEL_13:
    v7 = (v7 + 1);
    v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  v14 = this;
  if (a2)
  {
    v15 = v6;
    if (v6 < 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
      v15 = this->__r_.__value_.__l.__size_;
    }

    if (v15)
    {
      do
      {
        if (v14->__r_.__value_.__s.__data_[0] == 44)
        {
          v14->__r_.__value_.__s.__data_[0] = 112;
        }

        v14 = (v14 + 1);
        --v15;
      }

      while (v15);
      v6 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    v16 = this;
    if ((v6 & 0x80) != 0)
    {
      v16 = this->__r_.__value_.__r.__words[0];
      v6 = this->__r_.__value_.__l.__size_;
    }

    for (; v6; --v6)
    {
      if (v16->__r_.__value_.__s.__data_[0] == 59)
      {
        v16->__r_.__value_.__s.__data_[0] = 119;
      }

      v16 = (v16 + 1);
    }
  }

  else
  {
    if (v6 < 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
      v6 = this->__r_.__value_.__l.__size_;
    }

    if (v6)
    {
      v17 = 0;
      while (1)
      {
        v18 = v14->__r_.__value_.__s.__data_[v17];
        if (v18 == 44 || v18 == 59)
        {
          break;
        }

        if (v6 == ++v17)
        {
          goto LABEL_40;
        }
      }

      if (v6 != v17 && v17 != -1)
      {
        std::string::erase(this, v17, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

LABEL_40:
  result = *&this->__r_.__value_.__l.__data_;
  *a3 = *&this->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void sub_10069F854(uint64_t a1, void *a2, int a3, int a4, char a5)
{
  v8 = sub_100007774(a2, "BEGIN:VCARD", 11);
  v9 = strlen(off_100B54DF0);
  sub_100007774(v8, off_100B54DF0, v9);
  if (a4)
  {
    sub_100007774(a2, "VERSION:", 8);
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_7:
        v11 = strlen(off_100B54DF0);
        sub_100007774(a2, off_100B54DF0, v11);
        goto LABEL_8;
      }

      v10 = "3.0";
    }

    else
    {
      v10 = "2.1";
    }

    sub_100007774(a2, v10, 3);
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 2) != 0)
  {
    v12 = sub_100007774(a2, "FN", 2);
    if (a3)
    {
      v13 = "";
    }

    else
    {
      v13 = ";CHARSET=UTF-8";
    }

    sub_100007E30(&v242, v13);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v242;
    }

    else
    {
      LODWORD(v14) = v242.__r_.__value_.__l.__data_;
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v242.__r_.__value_.__r.__words[1];
    }

    v16 = sub_100007774(v12, v14, v15);
    sub_100007774(v16, ":", 1);
    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 39) < 0)
    {
      sub_100008904(&__dst, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      __dst = *(a1 + 16);
    }

    sub_10069F518(&__dst, a3, &v242);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v242;
    }

    else
    {
      LODWORD(v17) = v242.__r_.__value_.__l.__data_;
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v242.__r_.__value_.__r.__words[1];
    }

    sub_100007774(a2, v17, v18);
    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v19 = strlen(off_100B54DF0);
    sub_100007774(a2, off_100B54DF0, v19);
  }

  if ((a4 & 4) == 0)
  {
    goto LABEL_198;
  }

  v20 = sub_100007774(a2, "N", 1);
  if (a3)
  {
    v21 = "";
  }

  else
  {
    v21 = ";CHARSET=UTF-8";
  }

  sub_100007E30(&v242, v21);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v242;
  }

  else
  {
    LODWORD(v22) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v242.__r_.__value_.__r.__words[1];
  }

  v24 = sub_100007774(v20, v22, v23);
  sub_100007774(v24, ":", 1);
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 63) < 0)
  {
    sub_100008904(&v240, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v240 = *(a1 + 40);
  }

  sub_10069F518(&v240, a3, &v242);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v242;
  }

  else
  {
    LODWORD(v25) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v242.__r_.__value_.__r.__words[1];
  }

  sub_100007774(a2, v25, v26);
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 87) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 72))
    {
      goto LABEL_73;
    }
  }

  else if (*(a1 + 87))
  {
    goto LABEL_73;
  }

  if ((*(a1 + 111) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 96))
    {
      goto LABEL_73;
    }
  }

  else if (*(a1 + 111))
  {
    goto LABEL_73;
  }

  v27 = *(a1 + 135);
  if (v27 < 0)
  {
    v27 = *(a1 + 120);
  }

  if (!v27)
  {
    v28 = *(a1 + 159);
    if (v28 < 0)
    {
      v28 = *(a1 + 144);
    }

    if (!v28)
    {
      goto LABEL_148;
    }
  }

LABEL_73:
  v29 = sub_100007774(a2, ";", 1);
  if (*(a1 + 87) < 0)
  {
    sub_100008904(&v239, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v239 = *(a1 + 64);
  }

  sub_10069F518(&v239, a3, &v242);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v242;
  }

  else
  {
    LODWORD(v30) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v242.__r_.__value_.__r.__words[1];
  }

  sub_100007774(v29, v30, v31);
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 111) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 96))
    {
      goto LABEL_97;
    }
  }

  else if (*(a1 + 111))
  {
    goto LABEL_97;
  }

  if ((*(a1 + 135) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 120))
    {
      goto LABEL_97;
    }
  }

  else if (*(a1 + 135))
  {
    goto LABEL_97;
  }

  v32 = *(a1 + 159);
  if (v32 < 0)
  {
    v32 = *(a1 + 144);
  }

  if (!v32)
  {
    goto LABEL_148;
  }

LABEL_97:
  v33 = sub_100007774(a2, ";", 1);
  if (*(a1 + 111) < 0)
  {
    sub_100008904(&v238, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v238 = *(a1 + 88);
  }

  sub_10069F518(&v238, a3, &v242);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v242;
  }

  else
  {
    LODWORD(v34) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v242.__r_.__value_.__r.__words[1];
  }

  sub_100007774(v33, v34, v35);
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 135) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 120))
    {
      goto LABEL_114;
    }
  }

  else if (!*(a1 + 135))
  {
LABEL_114:
    if ((*(a1 + 159) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 144))
      {
        goto LABEL_148;
      }
    }

    else if (!*(a1 + 159))
    {
      goto LABEL_148;
    }
  }

  v36 = sub_100007774(a2, ";", 1);
  if (*(a1 + 135) < 0)
  {
    sub_100008904(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
  }

  sub_10069F518(&__p, a3, &v242);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v242;
  }

  else
  {
    LODWORD(v37) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v242.__r_.__value_.__r.__words[1];
  }

  sub_100007774(v36, v37, v38);
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((*(a1 + 159) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 144))
    {
      goto LABEL_148;
    }
  }

  else if (!*(a1 + 159))
  {
    goto LABEL_148;
  }

  v39 = sub_100007774(a2, ";", 1);
  if (*(a1 + 159) < 0)
  {
    sub_100008904(&v236, *(a1 + 136), *(a1 + 144));
  }

  else
  {
    v236 = *(a1 + 136);
  }

  sub_10069F518(&v236, a3, &v242);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v242;
  }

  else
  {
    LODWORD(v40) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v242.__r_.__value_.__r.__words[1];
  }

  sub_100007774(v39, v40, v41);
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v236.__r_.__value_.__l.__data_);
  }

LABEL_148:
  v42 = strlen(off_100B54DF0);
  sub_100007774(a2, off_100B54DF0, v42);
  if ((*(a1 + 183) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 168))
    {
      goto LABEL_173;
    }
  }

  else if (!*(a1 + 183))
  {
    goto LABEL_173;
  }

  v43 = sub_100007774(a2, "X-PHONETIC-LAST-NAME", 20);
  sub_100007E30(&v242, v21);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v242;
  }

  else
  {
    LODWORD(v44) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v242.__r_.__value_.__r.__words[1];
  }

  v46 = sub_100007774(v43, v44, v45);
  v47 = sub_100007774(v46, ":", 1);
  if (*(a1 + 183) < 0)
  {
    sub_100008904(&v234, *(a1 + 160), *(a1 + 168));
  }

  else
  {
    v234 = *(a1 + 160);
  }

  sub_10069F518(&v234, a3, &v235);
  if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &v235;
  }

  else
  {
    LODWORD(v48) = v235.__r_.__value_.__l.__data_;
  }

  if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49 = v235.__r_.__value_.__r.__words[1];
  }

  v50 = sub_100007774(v47, v48, v49);
  v51 = strlen(off_100B54DF0);
  sub_100007774(v50, off_100B54DF0, v51);
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v242.__r_.__value_.__l.__data_);
  }

LABEL_173:
  if ((*(a1 + 207) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 207))
    {
      goto LABEL_198;
    }

LABEL_177:
    v52 = sub_100007774(a2, "X-PHONETIC-FIRST-NAME", 21);
    sub_100007E30(&v242, v21);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v242;
    }

    else
    {
      LODWORD(v53) = v242.__r_.__value_.__l.__data_;
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = v242.__r_.__value_.__r.__words[1];
    }

    v55 = sub_100007774(v52, v53, v54);
    v56 = sub_100007774(v55, ":", 1);
    if (*(a1 + 207) < 0)
    {
      sub_100008904(&v233, *(a1 + 184), *(a1 + 192));
    }

    else
    {
      v233 = *(a1 + 184);
    }

    sub_10069F518(&v233, a3, &v235);
    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v235;
    }

    else
    {
      LODWORD(v57) = v235.__r_.__value_.__l.__data_;
    }

    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = v235.__r_.__value_.__r.__words[1];
    }

    v59 = sub_100007774(v56, v57, v58);
    v60 = strlen(off_100B54DF0);
    sub_100007774(v59, off_100B54DF0, v60);
    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v233.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }

    goto LABEL_198;
  }

  if (*(a1 + 192))
  {
    goto LABEL_177;
  }

LABEL_198:
  v202 = a3;
  v199 = a4;
  if ((a4 & 0x80) != 0)
  {
    if (*(a1 + 240) == *(a1 + 232))
    {
      v74 = sub_100007774(a2, "TEL:", 4);
      v75 = strlen(off_100B54DF0);
      sub_100007774(v74, off_100B54DF0, v75);
    }

    else
    {
      v61 = 0;
      v62 = 0;
      do
      {
        v63 = sub_100007774(a2, "TEL", 3);
        sub_10069F488(*(*(a1 + 232) + v61 + 24), &v242);
        if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v242;
        }

        else
        {
          LODWORD(v64) = v242.__r_.__value_.__l.__data_;
        }

        if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v65 = v242.__r_.__value_.__r.__words[1];
        }

        v66 = sub_100007774(v63, v64, v65);
        v67 = sub_100007774(v66, ":", 1);
        v68 = (*(a1 + 232) + v61);
        if (*(v68 + 23) < 0)
        {
          sub_100008904(&v232, *v68, *(v68 + 1));
        }

        else
        {
          v69 = *v68;
          v232.__r_.__value_.__r.__words[2] = *(v68 + 2);
          *&v232.__r_.__value_.__l.__data_ = v69;
        }

        sub_10069F6A4(&v232, a5, &v235);
        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v235;
        }

        else
        {
          LODWORD(v70) = v235.__r_.__value_.__l.__data_;
        }

        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v71 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v71 = v235.__r_.__value_.__r.__words[1];
        }

        v72 = sub_100007774(v67, v70, v71);
        v73 = strlen(off_100B54DF0);
        sub_100007774(v72, off_100B54DF0, v73);
        if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v235.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v232.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v242.__r_.__value_.__l.__data_);
        }

        ++v62;
        v61 += 56;
      }

      while (v62 < 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 240) - *(a1 + 232)) >> 3));
    }
  }

  if ((a4 & 8) == 0)
  {
    goto LABEL_267;
  }

  if ((*(a1 + 231) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 216))
    {
      goto LABEL_267;
    }
  }

  else if (!*(a1 + 231))
  {
    goto LABEL_267;
  }

  memset(&v242, 0, sizeof(v242));
  if (a3)
  {
    v76 = "b";
  }

  else
  {
    v76 = "BASE64";
  }

  sub_100007E30(&v242, v76);
  v77 = sub_100007774(a2, "PHOTO", 5);
  if (a3)
  {
    v78 = "";
  }

  else
  {
    v78 = ";CHARSET=UTF-8";
  }

  sub_100007E30(&v235, v78);
  if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = &v235;
  }

  else
  {
    LODWORD(v79) = v235.__r_.__value_.__l.__data_;
  }

  if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v80 = v235.__r_.__value_.__r.__words[1];
  }

  v81 = sub_100007774(v77, v79, v80);
  v82 = sub_100007774(v81, ";ENCODING=", 10);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = &v242;
  }

  else
  {
    LODWORD(v83) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v84 = v242.__r_.__value_.__r.__words[1];
  }

  v85 = sub_100007774(v82, v83, v84);
  sub_100007774(v85, ";TYPE=JPEG:", 11);
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  v86 = 0;
  while (1)
  {
    v87 = *(a1 + 231);
    if ((v87 & 0x8000000000000000) != 0)
    {
      v87 = *(a1 + 216);
    }

    if (v86 >= v87)
    {
      break;
    }

    std::string::basic_string(&v235, (a1 + 208), v86, 0x4BuLL, &v227);
    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = &v235;
    }

    else
    {
      LODWORD(v88) = v235.__r_.__value_.__l.__data_;
    }

    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v89 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v89 = v235.__r_.__value_.__r.__words[1];
    }

    v90 = sub_100007774(a2, v88, v89);
    v91 = strlen(off_100B54DF0);
    sub_100007774(v90, off_100B54DF0, v91);
    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    v92 = *(a1 + 231);
    if ((v92 & 0x8000000000000000) != 0)
    {
      v92 = *(a1 + 216);
    }

    v86 += 75;
    if (v86 < v92)
    {
      sub_100007774(a2, " ", 1);
    }
  }

  if ((SHIBYTE(v242.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_267:
    if ((v199 & 0x20) != 0)
    {
      goto LABEL_268;
    }

    goto LABEL_378;
  }

  operator delete(v242.__r_.__value_.__l.__data_);
  if ((v199 & 0x20) != 0)
  {
LABEL_268:
    if (*(a1 + 264) != *(a1 + 256))
    {
      v93 = 0;
      v94 = 0;
      v95 = "";
      if (!a3)
      {
        v95 = ";CHARSET=UTF-8";
      }

      __sa = v95;
      do
      {
        v96 = sub_100007774(a2, "ADR", 3);
        sub_100007E30(&v242, __sa);
        if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v97 = &v242;
        }

        else
        {
          LODWORD(v97) = v242.__r_.__value_.__l.__data_;
        }

        if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v98 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v98 = v242.__r_.__value_.__r.__words[1];
        }

        v99 = sub_100007774(v96, v97, v98);
        sub_10069F488(*(*(a1 + 256) + v93 + 120), &v235);
        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v100 = &v235;
        }

        else
        {
          LODWORD(v100) = v235.__r_.__value_.__l.__data_;
        }

        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v101 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v101 = v235.__r_.__value_.__r.__words[1];
        }

        v102 = sub_100007774(v99, v100, v101);
        sub_100007774(v102, ":", 1);
        if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v235.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v242.__r_.__value_.__l.__data_);
        }

        memset(&v242, 0, sizeof(v242));
        *(v231 + 3) = 0;
        v231[0] = 0;
        v103 = std::string::find((*(a1 + 256) + v93), 10, 0);
        if (v103 == -1)
        {
          v106 = 0;
          v107 = 0;
          std::string::operator=(&v242, (*(a1 + 256) + v93));
          size = 0;
        }

        else
        {
          v104 = v103;
          std::string::basic_string(&v235, (*(a1 + 256) + v93), 0, v103, &v227);
          if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v242.__r_.__value_.__l.__data_);
          }

          v242 = v235;
          std::string::basic_string(&v235, (*(a1 + 256) + v93), v104 + 1, 0xFFFFFFFFFFFFFFFFLL, &v227);
          size = v235.__r_.__value_.__l.__size_;
          v106 = v235.__r_.__value_.__r.__words[0];
          v231[0] = v235.__r_.__value_.__r.__words[2];
          *(v231 + 3) = *(&v235.__r_.__value_.__r.__words[2] + 3);
          v107 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
        }

        v108 = sub_100007774(a2, ";", 1);
        if (v107 < 0)
        {
          sub_100008904(&v230, v106, size);
        }

        else
        {
          v230.__r_.__value_.__r.__words[0] = v106;
          v230.__r_.__value_.__l.__size_ = size;
          LODWORD(v230.__r_.__value_.__r.__words[2]) = v231[0];
          *(&v230.__r_.__value_.__r.__words[2] + 3) = *(v231 + 3);
          *(&v230.__r_.__value_.__s + 23) = v107;
        }

        sub_10069F518(&v230, a3, &v235);
        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v109 = &v235;
        }

        else
        {
          LODWORD(v109) = v235.__r_.__value_.__l.__data_;
        }

        if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v110 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v110 = v235.__r_.__value_.__r.__words[1];
        }

        v111 = sub_100007774(v108, v109, v110);
        v112 = sub_100007774(v111, ";", 1);
        if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&v226, v242.__r_.__value_.__l.__data_, v242.__r_.__value_.__l.__size_);
        }

        else
        {
          v226 = v242;
        }

        sub_10069F518(&v226, a3, &v227);
        if ((v229 & 0x80u) == 0)
        {
          v113 = &v227;
        }

        else
        {
          LODWORD(v113) = v227;
        }

        if ((v229 & 0x80u) == 0)
        {
          v114 = v229;
        }

        else
        {
          v114 = v228;
        }

        v115 = sub_100007774(v112, v113, v114);
        v116 = sub_100007774(v115, ";", 1);
        v117 = *(a1 + 256) + v93;
        if (*(v117 + 47) < 0)
        {
          sub_100008904(&v222, *(v117 + 24), *(v117 + 32));
        }

        else
        {
          v118 = *(v117 + 24);
          v222.__r_.__value_.__r.__words[2] = *(v117 + 40);
          *&v222.__r_.__value_.__l.__data_ = v118;
        }

        sub_10069F518(&v222, a3, &v223);
        if ((v225 & 0x80u) == 0)
        {
          v119 = &v223;
        }

        else
        {
          LODWORD(v119) = v223;
        }

        if ((v225 & 0x80u) == 0)
        {
          v120 = v225;
        }

        else
        {
          v120 = v224;
        }

        v121 = sub_100007774(v116, v119, v120);
        v122 = sub_100007774(v121, ";", 1);
        v123 = *(a1 + 256) + v93;
        if (*(v123 + 71) < 0)
        {
          sub_100008904(&v218, *(v123 + 48), *(v123 + 56));
        }

        else
        {
          v124 = *(v123 + 48);
          v218.__r_.__value_.__r.__words[2] = *(v123 + 64);
          *&v218.__r_.__value_.__l.__data_ = v124;
        }

        sub_10069F518(&v218, a3, &v219);
        if ((v221 & 0x80u) == 0)
        {
          v125 = &v219;
        }

        else
        {
          LODWORD(v125) = v219;
        }

        if ((v221 & 0x80u) == 0)
        {
          v126 = v221;
        }

        else
        {
          v126 = v220;
        }

        v127 = sub_100007774(v122, v125, v126);
        v128 = sub_100007774(v127, ";", 1);
        v129 = *(a1 + 256) + v93;
        if (*(v129 + 95) < 0)
        {
          sub_100008904(&v214, *(v129 + 72), *(v129 + 80));
        }

        else
        {
          v130 = *(v129 + 72);
          v214.__r_.__value_.__r.__words[2] = *(v129 + 88);
          *&v214.__r_.__value_.__l.__data_ = v130;
        }

        sub_10069F518(&v214, a3, &v215);
        if ((v217 & 0x80u) == 0)
        {
          v131 = &v215;
        }

        else
        {
          LODWORD(v131) = v215;
        }

        if ((v217 & 0x80u) == 0)
        {
          v132 = v217;
        }

        else
        {
          v132 = v216;
        }

        v133 = sub_100007774(v128, v131, v132);
        v134 = sub_100007774(v133, ";", 1);
        v135 = *(a1 + 256) + v93;
        if (*(v135 + 119) < 0)
        {
          sub_100008904(&v210, *(v135 + 96), *(v135 + 104));
        }

        else
        {
          v136 = *(v135 + 96);
          v210.__r_.__value_.__r.__words[2] = *(v135 + 112);
          *&v210.__r_.__value_.__l.__data_ = v136;
        }

        sub_10069F518(&v210, a3, &v211);
        if ((v213 & 0x80u) == 0)
        {
          v137 = &v211;
        }

        else
        {
          LODWORD(v137) = v211;
        }

        if ((v213 & 0x80u) == 0)
        {
          v138 = v213;
        }

        else
        {
          v138 = v212;
        }

        v139 = sub_100007774(v134, v137, v138);
        v140 = strlen(off_100B54DF0);
        sub_100007774(v139, off_100B54DF0, v140);
        if (v213 < 0)
        {
          operator delete(v211);
        }

        if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v210.__r_.__value_.__l.__data_);
        }

        if (v217 < 0)
        {
          operator delete(v215);
        }

        if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v214.__r_.__value_.__l.__data_);
        }

        if (v221 < 0)
        {
          operator delete(v219);
        }

        if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v218.__r_.__value_.__l.__data_);
        }

        if (v225 < 0)
        {
          operator delete(v223);
        }

        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v222.__r_.__value_.__l.__data_);
        }

        if (v229 < 0)
        {
          operator delete(v227);
        }

        if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v226.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v235.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v230.__r_.__value_.__l.__data_);
          if (v107 < 0)
          {
LABEL_376:
            operator delete(v106);
          }
        }

        else if (v107 < 0)
        {
          goto LABEL_376;
        }

        if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v242.__r_.__value_.__l.__data_);
        }

        ++v94;
        v93 += 128;
      }

      while (v94 < (*(a1 + 264) - *(a1 + 256)) >> 7);
    }
  }

LABEL_378:
  if ((v199 & 0x100) != 0 && *(a1 + 288) != *(a1 + 280))
  {
    v141 = 0;
    v142 = 0;
    if (a3)
    {
      v143 = "";
    }

    else
    {
      v143 = ";CHARSET=UTF-8";
    }

    do
    {
      v144 = sub_100007774(a2, "EMAIL", 5);
      sub_100007E30(&v242, v143);
      if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v145 = &v242;
      }

      else
      {
        LODWORD(v145) = v242.__r_.__value_.__l.__data_;
      }

      if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v146 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v146 = v242.__r_.__value_.__r.__words[1];
      }

      v147 = sub_100007774(v144, v145, v146);
      v148 = sub_100007774(v147, ";TYPE=INTERNET:", 15);
      v149 = (*(a1 + 280) + v141);
      if (*(v149 + 23) < 0)
      {
        sub_100008904(&v209, *v149, *(v149 + 1));
      }

      else
      {
        v150 = *v149;
        v209.__r_.__value_.__r.__words[2] = *(v149 + 2);
        *&v209.__r_.__value_.__l.__data_ = v150;
      }

      sub_10069F518(&v209, a3, &v235);
      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v151 = &v235;
      }

      else
      {
        LODWORD(v151) = v235.__r_.__value_.__l.__data_;
      }

      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v152 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v152 = v235.__r_.__value_.__r.__words[1];
      }

      v153 = sub_100007774(v148, v151, v152);
      v154 = strlen(off_100B54DF0);
      sub_100007774(v153, off_100B54DF0, v154);
      if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v235.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v209.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v242.__r_.__value_.__l.__data_);
      }

      ++v142;
      v141 += 24;
    }

    while (v142 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 288) - *(a1 + 280)) >> 3));
  }

  if ((v199 & 0x1000) == 0)
  {
    goto LABEL_433;
  }

  if ((*(a1 + 327) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 312))
    {
      goto LABEL_433;
    }
  }

  else if (!*(a1 + 327))
  {
    goto LABEL_433;
  }

  v155 = sub_100007774(a2, "TITLE", 5);
  if (a3)
  {
    v156 = "";
  }

  else
  {
    v156 = ";CHARSET=UTF-8";
  }

  sub_100007E30(&v242, v156);
  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v157 = &v242;
  }

  else
  {
    LODWORD(v157) = v242.__r_.__value_.__l.__data_;
  }

  if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v158 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v158 = v242.__r_.__value_.__r.__words[1];
  }

  v159 = sub_100007774(v155, v157, v158);
  v160 = sub_100007774(v159, ":", 1);
  if (*(a1 + 327) < 0)
  {
    sub_100008904(&v208, *(a1 + 304), *(a1 + 312));
  }

  else
  {
    v208 = *(a1 + 304);
  }

  sub_10069F518(&v208, a3, &v235);
  if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v161 = &v235;
  }

  else
  {
    LODWORD(v161) = v235.__r_.__value_.__l.__data_;
  }

  if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v162 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v162 = v235.__r_.__value_.__r.__words[1];
  }

  v163 = sub_100007774(v160, v161, v162);
  v164 = strlen(off_100B54DF0);
  sub_100007774(v163, off_100B54DF0, v164);
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v242.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_433:
    if ((v199 & 0x10000) == 0)
    {
      goto LABEL_466;
    }

    goto LABEL_434;
  }

  operator delete(v242.__r_.__value_.__l.__data_);
  if ((v199 & 0x10000) == 0)
  {
    goto LABEL_466;
  }

LABEL_434:
  if ((*(a1 + 351) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 336))
    {
      goto LABEL_466;
    }

LABEL_438:
    v165 = sub_100007774(a2, "ORG", 3);
    if (a3)
    {
      v166 = "";
    }

    else
    {
      v166 = ";CHARSET=UTF-8";
    }

    sub_100007E30(&v242, v166);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v167 = &v242;
    }

    else
    {
      LODWORD(v167) = v242.__r_.__value_.__l.__data_;
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v168 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v168 = v242.__r_.__value_.__r.__words[1];
    }

    v169 = sub_100007774(v165, v167, v168);
    v170 = sub_100007774(v169, ":", 1);
    if (*(a1 + 351) < 0)
    {
      sub_100008904(&v207, *(a1 + 328), *(a1 + 336));
    }

    else
    {
      v207 = *(a1 + 328);
    }

    sub_10069F518(&v207, a3, &v235);
    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v171 = &v235;
    }

    else
    {
      LODWORD(v171) = v235.__r_.__value_.__l.__data_;
    }

    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v172 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v172 = v235.__r_.__value_.__r.__words[1];
    }

    sub_100007774(v170, v171, v172);
    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }

    if ((*(a1 + 375) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 360))
      {
        goto LABEL_482;
      }
    }

    else if (!*(a1 + 375))
    {
      goto LABEL_482;
    }

    v173 = sub_100007774(a2, ";", 1);
    if (*(a1 + 375) < 0)
    {
      sub_100008904(&v206, *(a1 + 352), *(a1 + 360));
    }

    else
    {
      v206 = *(a1 + 352);
    }

    sub_10069F518(&v206, a3, &v242);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v174 = &v242;
    }

    else
    {
      LODWORD(v174) = v242.__r_.__value_.__l.__data_;
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v175 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v175 = v242.__r_.__value_.__r.__words[1];
    }

    sub_100007774(v173, v174, v175);
    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v206.__r_.__value_.__l.__data_);
    }

LABEL_482:
    v176 = strlen(off_100B54DF0);
    sub_100007774(a2, off_100B54DF0, v176);
    if ((v199 & 0x100000) == 0)
    {
      goto LABEL_499;
    }

    goto LABEL_483;
  }

  if (*(a1 + 351))
  {
    goto LABEL_438;
  }

LABEL_466:
  if ((v199 & 0x100000) == 0)
  {
    goto LABEL_499;
  }

LABEL_483:
  if (*(a1 + 384) != *(a1 + 376))
  {
    v177 = 0;
    v178 = 0;
    do
    {
      v179 = sub_100007774(a2, "URL:", 4);
      v180 = (*(a1 + 376) + v177);
      if (*(v180 + 23) < 0)
      {
        sub_100008904(&v205, *v180, *(v180 + 1));
      }

      else
      {
        v181 = *v180;
        v205.__r_.__value_.__r.__words[2] = *(v180 + 2);
        *&v205.__r_.__value_.__l.__data_ = v181;
      }

      sub_10069F518(&v205, v202, &v242);
      if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v182 = &v242;
      }

      else
      {
        LODWORD(v182) = v242.__r_.__value_.__l.__data_;
      }

      if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v183 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v183 = v242.__r_.__value_.__r.__words[1];
      }

      v184 = sub_100007774(v179, v182, v183);
      v185 = strlen(off_100B54DF0);
      sub_100007774(v184, off_100B54DF0, v185);
      if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v242.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v205.__r_.__value_.__l.__data_);
      }

      ++v178;
      v177 += 24;
    }

    while (v178 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 384) - *(a1 + 376)) >> 3));
  }

LABEL_499:
  if ((v199 & 0x200000) != 0 && *(a1 + 8) != -1)
  {
    v186 = sub_100007774(a2, "UID:", 4);
    *(v186 + *(*v186 - 24) + 8) = *(v186 + *(*v186 - 24) + 8) & 0xFFFFFFB5 | 8;
    v187 = std::ostream::operator<<();
    *(v187 + *(*v187 - 24) + 8) = *(v187 + *(*v187 - 24) + 8) & 0xFFFFFFB5 | 2;
    v188 = strlen(off_100B54DF0);
    sub_100007774(v187, off_100B54DF0, v188);
  }

  if ((v199 & 0x800000) != 0)
  {
    if ((*(a1 + 423) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 408))
      {
        return;
      }
    }

    else if (!*(a1 + 423))
    {
      return;
    }

    v189 = sub_100007774(a2, "NICKNAME", 8);
    if (v202)
    {
      v190 = "";
    }

    else
    {
      v190 = ";CHARSET=UTF-8";
    }

    sub_100007E30(&v242, v190);
    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v191 = &v242;
    }

    else
    {
      LODWORD(v191) = v242.__r_.__value_.__l.__data_;
    }

    if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v192 = HIBYTE(v242.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v192 = v242.__r_.__value_.__r.__words[1];
    }

    v193 = sub_100007774(v189, v191, v192);
    v194 = sub_100007774(v193, ":", 1);
    if (*(a1 + 423) < 0)
    {
      sub_100008904(&v204, *(a1 + 400), *(a1 + 408));
    }

    else
    {
      v204 = *(a1 + 400);
    }

    sub_10069F518(&v204, v202, &v235);
    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v195 = &v235;
    }

    else
    {
      LODWORD(v195) = v235.__r_.__value_.__l.__data_;
    }

    if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v196 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v196 = v235.__r_.__value_.__r.__words[1];
    }

    v197 = sub_100007774(v194, v195, v196);
    v198 = strlen(off_100B54DF0);
    sub_100007774(v197, off_100B54DF0, v198);
    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1006A11BC(_Unwind_Exception *a1)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1006A160C()
{
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    JUMPOUT(0x1006A1588);
  }

  JUMPOUT(0x1006A15F4);
}

void *sub_1006A1630(uint64_t a1, void *a2)
{
  v2 = sub_100007774(a2, "END:VCARD", 9);
  v3 = strlen(off_100B54DF0);
  v4 = off_100B54DF0;

  return sub_100007774(v2, v4, v3);
}

uint64_t sub_1006A1690(uint64_t a1, int a2, int a3, char a4)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_100008760(&v10);
  sub_10069F854(a1, &v10, a2, a3, a4);
  sub_1006A1630(v8, &v10);
  std::stringbuf::str();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1006A1844(uint64_t a1, int a2, int a3, char a4)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  sub_100008760(&v17);
  sub_10069F854(a1, &v17, a2, a3, a4);
  sub_100007774(&v17, "X-IRMC-CALL-DATETIME;", 21);
  v8 = *(a1 + 424);
  if (v8 < 3)
  {
    sub_100007774(&v17, off_100B068F8[v8], qword_1008C4C10[v8]);
  }

  v9 = sub_100007774(&v17, ":", 1);
  v10 = *(a1 + 455);
  if (v10 >= 0)
  {
    LODWORD(v11) = a1 + 432;
  }

  else
  {
    v11 = *(a1 + 432);
  }

  if (v10 >= 0)
  {
    LODWORD(v12) = *(a1 + 455);
  }

  else
  {
    v12 = *(a1 + 440);
  }

  v13 = sub_100007774(v9, v11, v12);
  v14 = strlen(off_100B54DF0);
  v15 = sub_100007774(v13, off_100B54DF0, v14);
  sub_1006A1630(v15, &v17);
  std::stringbuf::str();
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1006A1A90(uint64_t a1)
{
  *a1 = off_100B068B0;
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  return sub_10069F2F4(a1);
}

void sub_1006A1AF0(uint64_t a1)
{
  *a1 = off_100B068B0;
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  sub_10069F2F4(a1);

  operator delete();
}

void sub_1006A1B64(void ***a1)
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
        sub_100437FA4(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1006A1BEC(void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100680710(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double sub_1006A2000(uint64_t a1)
{
  *a1 = off_100B06920;
  *(a1 + 8) = off_100B06968;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_1006A2058(uint64_t a1)
{
  v2 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeSensorTrackingManager: initialize", v3, 2u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10085DCE0();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  if (qword_100B51078 != -1)
  {
    sub_10085DD08();
  }

  sub_1000DB5D8(off_100B51070 + 1896, a1 + 8);
}

void sub_1006A211C(uint64_t a1)
{
  v2 = qword_100BCEA48;
  v3 = os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v5 = *(a1 + 19);
    v6 = *(a1 + 20);
    v18[0] = 67109376;
    v18[1] = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack will start: ftotalTrackingCapacity: %d, fremainingTrackingCapacity: %d", v18, 0xEu);
  }

  *(a1 + 64) = 0;
  v7 = sub_10000C7D0(v3, v4);
  v8 = (*(*v7 + 2792))(v7);
  if (v8)
  {
    *(a1 + 16) = 1;
    v10 = sub_10000C7D0(v8, v9);
    v11 = (*(*v10 + 2800))(v10);
    if (v11)
    {
      *(a1 + 17) = 1;
    }

    v13 = sub_10000C7D0(v11, v12);
    if ((*(*v13 + 2808))(v13))
    {
      *(a1 + 18) = 1;
    }

    v14 = +[NSMutableDictionary dictionary];
    v15 = *(a1 + 48);
    *(a1 + 48) = v14;

    v16 = +[NSMutableSet set];
    v17 = *(a1 + 56);
    *(a1 + 56) = v16;

    *(a1 + 19) = 25700;
  }
}

void sub_1006A22C8(uint64_t a1)
{
  v2 = qword_100BCEA48;
  v3 = os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v5 = [*(a1 + 56) count];
    v6 = [*(a1 + 48) count];
    v7 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    *buf = 134218496;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack did stop fcurrentlyTrackedDevices: %lu, fsensorTrackingRequests: %lu, fsensorTrackingSessions: %lu", buf, 0x20u);
  }

  v8 = sub_100007EE8(v3, v4);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006A2438;
  v10[3] = &unk_100ADF8F8;
  v10[4] = a1;
  sub_10000D334(v8, v10);
  v9 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LeSensorTrackingManager::stackWillStop exit", buf, 2u);
  }
}

void *sub_1006A2438(void *result)
{
  v1 = result[4];
  if ((*(v1 + 16) & 1) != 0 || *(v1 + 18) == 1)
  {
    *(v1 + 19) = 0;
    *(v1 + 32) = *(v1 + 24);
    [*(v1 + 56) removeAllObjects];
    v2 = *(v1 + 48);

    return [v2 removeAllObjects];
  }

  return result;
}

uint64_t sub_1006A24A0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned __int8 a8, int a9, unsigned __int8 a10, char a11, char a12, __int16 a13, unsigned __int16 a14, unsigned __int16 a15, __int16 a16)
{
  v23 = a3;
  v24 = v23;
  if (*(a1 + 16) & 1) != 0 || (*(a1 + 18))
  {
    if (!a2)
    {
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DFF4();
      }

      goto LABEL_32;
    }

    if (!v23)
    {
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DFC0();
      }

      goto LABEL_32;
    }

    if (a4 >= 0x65)
    {
      v25 = qword_100BCEA48;
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DF54(a4, v25, v26, v27, v28, v29, v30, v31);
      }

LABEL_32:
      v32 = 3;
      goto LABEL_33;
    }

    if ((a5 & 0x80) != 0)
    {
      v41 = qword_100BCEA48;
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DEE8(a5, v41, v42, v43, v44, v45, v46, v47);
      }

      goto LABEL_32;
    }

    sub_100018384(a2, __p);
    if (v82[9] >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = *__p;
    }

    v78 = [NSString stringWithUTF8String:v33];
    if ((v82[9] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v34 = qword_100BCEA48;
    if (!v78)
    {
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085DEB4();
      }

      v32 = 1;
      goto LABEL_80;
    }

    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 138545410;
      *&__p[4] = v78;
      *&__p[12] = 2114;
      *v82 = v24;
      *&v82[8] = 1024;
      *&v82[10] = a4;
      *&v82[14] = 1024;
      *&v82[16] = a5;
      *v83 = 1024;
      *&v83[2] = a7;
      v84 = 1024;
      v85 = a9;
      v86 = 1024;
      v87 = BYTE1(a9);
      v88 = 1024;
      v89 = HIBYTE(a9);
      v90 = 1024;
      v91 = a10;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "startTracking for session: %{public}@ for device %{public}@ for type %d with timeout value %d rssi:%d:%d:%d eCfg:%d:%d", __p, 0x40u);
    }

    v77 = [*(a1 + 48) objectForKeyedSubscript:v78];
    v79 = sub_1006A3020(v77, v77, v24);
    v35 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEBUG))
    {
      v69 = *(a1 + 48);
      *__p = 138543874;
      *&__p[4] = v69;
      *&__p[12] = 2114;
      *v82 = v77;
      *&v82[8] = 2114;
      *&v82[10] = v79;
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Current sensor tracking requests: %{public}@, tracking devices set %{public}@ for foundDevice %{public}@", __p, 0x20u);
    }

    sub_1006A31A8(a1);
    if (v79)
    {
      v36 = [v79 appleTypes];
      v37 = [NSNumber numberWithUnsignedChar:a4];
      v38 = [v36 containsObject:v37];

      if (v38)
      {
        v39 = qword_100BCEA48;
        if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v79 appleTypes];
          *__p = 138543874;
          *&__p[4] = v24;
          *&__p[12] = 1024;
          *v82 = a4;
          *&v82[4] = 2114;
          *&v82[6] = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Already tracking same device %{public}@ and same type: %d, %{public}@", __p, 0x1Cu);
        }
      }

      else
      {
        v56 = [v79 appleTypes];
        v57 = v56 == 0;

        if (v57)
        {
          v58 = +[NSMutableSet set];
          [v79 setAppleTypes:v58];
        }

        v59 = [v79 appleTypes];
        v60 = [NSNumber numberWithUnsignedChar:a4];
        [v59 addObject:v60];

        v61 = qword_100BCEA48;
        if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEBUG))
        {
          v62 = [v79 appleTypes];
          sub_10085DD64(v62, buf, v61);
        }

        if ([v79 currentState] == 1 || objc_msgSend(v79, "currentState") == 3)
        {
          if (qword_100B512F8 != -1)
          {
            sub_10085DDBC();
          }

          sub_1003B73C8(off_100B512F0, a2, v24, [v79 currentState], a4);
        }
      }

      if (sub_1006A3268(a1, v79))
      {
        v32 = sub_1006A34AC(a1, 0, [v79 rssiIncreaseScanThreshold], objc_msgSend(v79, "rssiIncreaseScanWindowThreshold"), objc_msgSend(v79, "rssiIncreaseScanIntervalThreshold"), objc_msgSend(v79, "rssiIncreaseScanTimeoutThreshold"), objc_msgSend(v79, "sensorTimeoutBetweenIncreaseScan"));
        if (v32)
        {
          if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
          {
            sub_10085DDE4();
          }

          goto LABEL_79;
        }
      }

LABEL_77:
      v71 = qword_100BCEA48;
      v32 = 0;
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *(a1 + 48);
        v73 = *(a1 + 56);
        *__p = 138543618;
        *&__p[4] = v72;
        *&__p[12] = 2114;
        *v82 = v73;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Now tracking requests: %{public}@ with currently tracking devices: %{public}@", __p, 0x16u);
        v32 = 0;
      }

      goto LABEL_79;
    }

    v49 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "New session or new device to add in trackign list", __p, 2u);
    }

    WORD2(v75) = a16;
    LODWORD(v75) = __PAIR32__(a15, a14);
    HIWORD(v74) = a13;
    BYTE5(v74) = a12;
    BYTE4(v74) = a10;
    LODWORD(v74) = a9;
    v50 = [TrackingDevice initWithDevice:"initWithDevice:type:timeoutValue:targetCore:rssiThreshold:rssiThresholdGone:invalidRssiHandling:rssiPrecision:rssiPrecisionGone:eventConfiguration:vseBuffering:rssiIncreaseScanThreshold:rssiIncreaseScanWindowThreshold:rssiIncreaseScanIntervalThreshold:rssiIncreaseScanTimeoutThreshold:sensorTimeoutBetweenIncreaseScan:" type:v24 timeoutValue:a4 targetCore:a5 rssiThreshold:a6 rssiThresholdGone:a7 invalidRssiHandling:a8 rssiPrecision:v74 rssiPrecisionGone:v75 eventConfiguration:? vseBuffering:? rssiIncreaseScanThreshold:? rssiIncreaseScanWindowThreshold:? rssiIncreaseScanIntervalThreshold:? rssiIncreaseScanTimeoutThreshold:? sensorTimeoutBetweenIncreaseScan:?];
    v51 = sub_1006A3648(a1, v24);
    v52 = qword_100BCEA48;
    v53 = os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT);
    v76 = v51;
    if (v51)
    {
      if (v53)
      {
        v54 = [v51 currentState] - 1;
        if (v54 > 2)
        {
          v55 = @"Not Set";
        }

        else
        {
          v55 = off_100B06BE8[v54];
        }

        *__p = 138543362;
        *&__p[4] = v55;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Some other sesssion is tracking this device with state: %{public}@", __p, 0xCu);
      }

      -[TrackingDevice setCurrentState:](v50, "setCurrentState:", [v51 currentState]);
      if ([(TrackingDevice *)v50 currentState]== 1 || [(TrackingDevice *)v50 currentState]== 3)
      {
        if (qword_100B512F8 != -1)
        {
          sub_10085DDBC();
        }

        sub_1003B73C8(off_100B512F0, a2, v24, [(TrackingDevice *)v50 currentState], a4);
      }
    }

    else
    {
      if (v53)
      {
        v63 = [(TrackingDevice *)v50 timeoutValue];
        v64 = [(TrackingDevice *)v50 rssiThreshold];
        v65 = [(TrackingDevice *)v50 rssiPrecision];
        v66 = [(TrackingDevice *)v50 invalidRssiHandling];
        v67 = [(TrackingDevice *)v50 eventConfiguration];
        v68 = [(TrackingDevice *)v50 vseBuffering];
        *__p = 67110400;
        *&__p[4] = v63;
        *&__p[8] = 1024;
        *&__p[10] = v64;
        *v82 = 1024;
        *&v82[2] = v65;
        *&v82[6] = 1024;
        *&v82[8] = v66;
        *&v82[12] = 1024;
        *&v82[14] = v67;
        *&v82[18] = 1024;
        *v83 = v68;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "No other session is tracking this device - start tracking with timeout: %d rssi:%d:%d handling:%d eventCfg:%d vseBuf:%d", __p, 0x26u);
      }

      v32 = sub_1006A3824(a1, v24, [(TrackingDevice *)v50 timeoutValue], [(TrackingDevice *)v50 targetCore], [(TrackingDevice *)v50 rssiThreshold], [(TrackingDevice *)v50 rssiThresholdGone], [(TrackingDevice *)v50 invalidRssiHandling], [(TrackingDevice *)v50 rssiPrecision], [(TrackingDevice *)v50 rssiPrecisionGone], [(TrackingDevice *)v50 eventConfiguration], [(TrackingDevice *)v50 vseBuffering]);
      if (v32)
      {
        if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
        {
          sub_10085DE4C();
        }

        goto LABEL_75;
      }
    }

    if (v77)
    {
      [v77 addObject:v50];
    }

    else
    {
      v70 = [NSMutableSet setWithObject:v50];
      [*(a1 + 48) setObject:v70 forKeyedSubscript:v78];

      sub_1006A3AA4(a1, a2);
    }

    if (!sub_1006A3268(a1, v50) || (v32 = sub_1006A34AC(a1, 0, [(TrackingDevice *)v50 rssiIncreaseScanThreshold], [(TrackingDevice *)v50 rssiIncreaseScanWindowThreshold], [(TrackingDevice *)v50 rssiIncreaseScanIntervalThreshold], [(TrackingDevice *)v50 rssiIncreaseScanTimeoutThreshold], [(TrackingDevice *)v50 sensorTimeoutBetweenIncreaseScan]), !v32))
    {

      goto LABEL_77;
    }

    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
    {
      sub_10085DDE4();
    }

LABEL_75:

LABEL_79:
LABEL_80:

    goto LABEL_33;
  }

  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
  {
    sub_10085DD30();
  }

  v32 = 11;
LABEL_33:

  return v32;
}

id sub_1006A3020(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 deviceUUID];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

uint64_t sub_1006A31A8(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006A45A8;
  v4[3] = &unk_100B069E8;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1006A3250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006A3268(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_100042420;
  v18[4] = sub_100042680;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 rssiIncreaseScanThreshold];
    v6 = *(a1 + 48);
    *buf = 67109378;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getMinThresholdForAllSessionAskingIncreaseScanParams: %d in %{public}@", buf, 0x12u);
  }

  if (*(a1 + 18) == 1)
  {
    if ((*(a1 + 64) & 1) != 0 || ![v3 rssiIncreaseScanThreshold])
    {
      v7 = *(a1 + 48);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1006A46D8;
      v10[3] = &unk_100B06A10;
      v11 = v3;
      v12 = v18;
      v13 = &v14;
      [v7 enumerateKeysAndObjectsUsingBlock:v10];
      v8 = *(v15 + 24);
    }

    else
    {
      v8 = 1;
      *(v15 + 24) = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);

  return v8 & 1;
}

void sub_1006A3460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1006A34AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = qword_100BCEA48;
  v14 = os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    v16 = [*(a1 + 56) count];
    v17 = *(a1 + 19);
    v18 = *(a1 + 20);
    v22 = 134218496;
    v23 = v16;
    v24 = 1024;
    v25 = v17;
    v26 = 1024;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "startTrackingForNewDevice - tracked devices: %lu, total: %d, remaining: %d", &v22, 0x18u);
  }

  if (a3)
  {
    v19 = sub_10000C7D0(v14, v15);
    result = (*(*v19 + 832))(v19, 1, a3, a4, a5, a6, a7);
    if (!result)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    v21 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 67109120;
      LODWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "rssiIncreaseScanThreshold is not configured %d", &v22, 8u);
    }

    return 1;
  }

  return result;
}

id sub_1006A3648(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100042420;
  v18 = sub_100042680;
  v19 = 0;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 138543618;
    v21 = v3;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "anySessionTrackingThisDevice: %{public}@ in %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006A4510;
  v10[3] = &unk_100B069C0;
  v12 = &v14;
  v13 = a1;
  v11 = v3;
  v7 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void sub_1006A37F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1006A3824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, char a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v18 = a2;
  if ([*(a1 + 56) count] == *(a1 + 19))
  {
    v19 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
    {
      v29 = [*(a1 + 56) count];
      v30 = *(a1 + 19);
      v31 = *(a1 + 20);
      *buf = 134218496;
      v34 = v29;
      v35 = 1024;
      v36 = v30;
      v37 = 1024;
      v38 = v31;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "startTrackingForNewDevice - maxed out tracked devices: %lu, total: %d, remaining: %d", buf, 0x18u);
    }

    v20 = 4;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_10085E028();
    }

    v21 = sub_100046458(off_100B508C8, v18, 0);
    v23 = sub_10000C7D0(v21, v22);
    *(&v32 + 3) = __PAIR16__(a11, a10);
    BYTE2(v32) = a9;
    BYTE1(v32) = a8;
    LOBYTE(v32) = a7;
    v20 = (*(*v23 + 824))(v23, v21, a3, a1 + 19, a1 + 20, a4, a5, a6, v32);
    if (!v20)
    {
      [*(a1 + 56) addObject:v18];
    }

    v24 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 56) count];
      v26 = *(a1 + 19);
      v27 = *(a1 + 20);
      *buf = 134218496;
      v34 = v25;
      v35 = 1024;
      v36 = v26;
      v37 = 1024;
      v38 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "startTrackingForNewDevice - tracked devices: %lu, total: %d, remaining: %d", buf, 0x18u);
    }
  }

  return v20;
}

void sub_1006A3AA4(void *a1, uint64_t a2)
{
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1[4] - a1[3]) >> 3;
    v22 = 134217984;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "addSessionToTrackingSessions: number of currently tracking sessions %lu", &v22, 0xCu);
  }

  if (a2)
  {
    v6 = a1[3];
    v8 = a1[4];
    v7 = a1 + 3;
    v9 = v6;
    if (v6 != v8)
    {
      while (*v9 != a2)
      {
        if (++v9 == v8)
        {
          goto LABEL_9;
        }
      }
    }

    if (v9 == v8)
    {
LABEL_9:
      v10 = a1[5];
      if (v8 >= v10)
      {
        v11 = v8 - v6;
        if ((v11 + 1) >> 61)
        {
          sub_1000C7698();
        }

        v12 = v10 - v6;
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
          sub_100008108((a1 + 3), v14);
        }

        v15 = (8 * v11);
        *v15 = a2;
        v8 = (8 * v11 + 8);
        v16 = a1[3];
        v17 = a1[4] - v16;
        v18 = v15 - v17;
        memcpy(v15 - v17, v16, v17);
        v19 = a1[3];
        a1[3] = v18;
        a1[4] = v8;
        a1[5] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8++ = a2;
      }

      a1[4] = v8;
    }

    v20 = qword_100BCEA48;
    if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
    {
      v21 = (v8 - *v7) >> 3;
      v22 = 134217984;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Currently tracking sessions: %lu", &v22, 0xCu);
    }
  }
}

void sub_1006A3C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = v7;
  if (*(a1 + 16) & 1) != 0 || (*(a1 + 18))
  {
    if (a2)
    {
      if (v7)
      {
        if (a4 < 0x65)
        {
          sub_100018384(a2, __p);
          if (v40 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = *__p;
          }

          v17 = [NSString stringWithUTF8String:v16];
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*__p);
          }

          v18 = qword_100BCEA48;
          if (v17)
          {
            if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(a1 + 48);
              v20 = *(a1 + 56);
              *__p = 138544386;
              *&__p[4] = v17;
              v38 = 2114;
              v39 = v8;
              v40 = 1024;
              v41 = a4;
              v42 = 2114;
              v43 = v19;
              v44 = 2114;
              v45 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "stopTracking for session: %{public}@ for device %{public}@ for type %d with current requests %{public}@ and devices %{public}@", __p, 0x30u);
            }

            v21 = [*(a1 + 48) objectForKeyedSubscript:v17];
            v22 = sub_1006A3020(v21, v21, v8);
            v23 = v22;
            if (v22)
            {
              v24 = [v22 appleTypes];
              v25 = [NSNumber numberWithUnsignedChar:a4];
              v26 = [v24 containsObject:v25];

              if (v26)
              {
                v27 = [v23 appleTypes];
                v28 = [NSNumber numberWithUnsignedChar:a4];
                [v27 removeObject:v28];
              }

              v29 = [v23 appleTypes];
              v30 = [v29 count] == 0;

              if (v30)
              {
                [v21 removeObject:v23];
                v31 = sub_1006A3648(a1, v8);
                if (!v31)
                {
                  v32 = qword_100BCEA48;
                  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
                  {
                    *__p = 0;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No other session is tracking this device - stop tracking", __p, 2u);
                  }

                  sub_1006A4174(a1, v8);
                }
              }
            }

            if (![v21 count])
            {
              v33 = qword_100BCEA48;
              if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 0;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "This session is not tracking any devices, remove session ID from tracking requests", __p, 2u);
              }

              [*(a1 + 48) removeObjectForKey:v17];
              sub_1006A42E4(a1, v17);
            }

            v34 = qword_100BCEA48;
            if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
            {
              v35 = *(a1 + 48);
              v36 = *(a1 + 56);
              *__p = 138543618;
              *&__p[4] = v35;
              v38 = 2114;
              v39 = v36;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Now tracking requests: %{public}@ with currently tracking devices: %{public}@", __p, 0x16u);
            }
          }

          else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
          {
            sub_10085E070();
          }
        }

        else
        {
          v9 = qword_100BCEA48;
          if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
          {
            sub_10085E0A4(a4, v9, v10, v11, v12, v13, v14, v15);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
      {
        sub_10085E110();
      }
    }

    else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
    {
      sub_10085E144();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_ERROR))
  {
    sub_10085E03C();
  }
}

void sub_1006A4174(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10085E028();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  v6 = sub_10000C7D0(v4, v5);
  (*(*v6 + 840))(v6, v4, a1 + 19, a1 + 20);
  [*(a1 + 56) removeObject:v3];
  v7 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 56) count];
    v9 = *(a1 + 19);
    v10 = *(a1 + 20);
    v11 = 134218496;
    v12 = v8;
    v13 = 1024;
    v14 = v9;
    v15 = 1024;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "stopTrackingForDevice - tracked devices: %lu, total: %d, remaining: %d", &v11, 0x18u);
  }
}

void sub_1006A42E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    *__p = 138543618;
    *&__p[4] = v3;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "removeSessionFromTrackingSessions %{public}@, number of currently tracking sessions: %lu", __p, 0x16u);
  }

  if (v3)
  {
    v6 = *(a1 + 24);
    if (v6 != *(a1 + 32))
    {
      v7 = (v6 + 1);
      while (1)
      {
        sub_100018384(*v6, __p);
        if (v17 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = *__p;
        }

        v9 = [NSString stringWithUTF8String:v8];
        if (v17 < 0)
        {
          operator delete(*__p);
        }

        if ([v9 isEqualToString:v3])
        {
          break;
        }

        ++v6;
        v7 += 8;
        if (v6 == *(a1 + 32))
        {
          goto LABEL_17;
        }
      }

      v10 = *(a1 + 32);
      v11 = v10 - v7;
      if (v10 != v7)
      {
        memmove(v7 - 8, v7, v10 - v7);
      }

      *(a1 + 32) = &v7[v11 - 8];

LABEL_17:
      v12 = qword_100BCEA48;
      if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (*(a1 + 32) - *(a1 + 24)) >> 3;
        *__p = 134217984;
        *&__p[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Now tracking sessions: %lu", __p, 0xCu);
      }
    }
  }
}

void sub_1006A4510(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = sub_1006A3020(v9, v9, *(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_1006A45A8(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v8 + 1) + 8 * i) rssiIncreaseScanThreshold])
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1006A46D8(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 rssiIncreaseScanThreshold])
        {
          v9 = [v8 rssiIncreaseScanThreshold];
          if (v9 < [*(a1 + 32) rssiIncreaseScanThreshold])
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) setRssiIncreaseScanThreshold:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "rssiIncreaseScanThreshold")}];
  [*(a1 + 32) setRssiIncreaseScanWindowThreshold:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "rssiIncreaseScanWindowThreshold")}];
  [*(a1 + 32) setRssiIncreaseScanIntervalThreshold:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "rssiIncreaseScanIntervalThreshold")}];
  [*(a1 + 32) setRssiIncreaseScanTimeoutThreshold:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "rssiIncreaseScanTimeoutThreshold")}];
  [*(a1 + 32) setSensorTimeoutBetweenIncreaseScan:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "sensorTimeoutBetweenIncreaseScan")}];
}

uint64_t sub_1006A48DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    *__p = 138543618;
    *&__p[4] = v3;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sessionFromSessionIDString: %{public}@ from tracking sessions: %lu", __p, 0x16u);
  }

  if (!v3 || (v6 = *(a1 + 24), v6 == *(a1 + 32)))
  {
LABEL_12:
    v7 = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v6;
      sub_100018384(*v6, __p);
      v8 = v15 >= 0 ? __p : *__p;
      v9 = [NSString stringWithUTF8String:v8];
      if (v15 < 0)
      {
        operator delete(*__p);
      }

      v10 = [v9 isEqualToString:v3];

      if (v10)
      {
        break;
      }

      if (++v6 == *(a1 + 32))
      {
        goto LABEL_12;
      }
    }
  }

  return v7;
}

void sub_1006A4A8C(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  v8 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 2)
    {
      v9 = @"Not Set";
    }

    else
    {
      v9 = off_100B06BE8[(a3 - 1)];
    }

    v10 = *(a1 + 48);
    *buf = 138543874;
    v19 = v7;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "leSensorStateChanged received %{public}@ with state: %{public}@ with currently tracked requests %{public}@", buf, 0x20u);
  }

  v11 = *(a1 + 48);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1006A4C24;
  v13[3] = &unk_100B06A88;
  v14 = v7;
  v15 = a1;
  v16 = a3;
  v17 = a4;
  v12 = v7;
  [v11 enumerateKeysAndObjectsUsingBlock:v13];
}

void sub_1006A4C24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1006A48DC(*(a1 + 40), v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006A4D10;
  v9[3] = &unk_100B06A60;
  v8 = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = v8;
  v11 = v7;
  [v6 enumerateObjectsUsingBlock:v9];
}

void sub_1006A4D10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceUUID];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 currentState];
    [v3 setCurrentState:*(a1 + 48)];
    if (v6 == 2)
    {
      if ((*(a1 + 48) | 2) != 3)
      {
        goto LABEL_19;
      }
    }

    else if ((v6 & 0xFFFFFFFD) != 1 || *(a1 + 48) != 2)
    {
      goto LABEL_19;
    }

    v7 = [v3 appleTypes];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1006A4FC8;
    v20[3] = &unk_100B06A38;
    v14 = *(a1 + 32);
    v8 = v14;
    v21 = v14;
    v22 = *(a1 + 48);
    [v7 enumerateObjectsUsingBlock:v20];

    if (*(a1 + 49) == 1)
    {
      v18 = &off_100AE0A78;
      v19 = 0;
      v11 = sub_100432718(v9, v10);
      p_p = &__p;
      sub_100614BB8(*(a1 + 40), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v13 = *(a1 + 32);
      v15 = &off_100AE0A78;
      v16 = v19;
      if (v19)
      {
        sub_10000C69C(v19);
      }

      (*(*v11 + 40))(v11, 7, p_p, v13, &v15);
      v15 = &off_100AE0A78;
      if (v16)
      {
        sub_10000C808(v16);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v18 = &off_100AE0A78;
      if (v19)
      {
        sub_10000C808(v19);
      }
    }
  }

LABEL_19:
}

void sub_1006A4F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, atomic_uint *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_10000C808(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1006A4FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (qword_100B512F8 != -1)
  {
    sub_10085E214();
    v3 = v4;
  }

  sub_1003B73C8(off_100B512F0, *(a1 + 40), *(a1 + 32), *(a1 + 48), [v3 intValue]);
}

void sub_1006A5078(uint64_t a1)
{
  v2 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Sensor Tracking Manager -------------------", &v8, 2u);
    v2 = qword_100BCEA48;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 48) count];
    v4 = (*(a1 + 32) - *(a1 + 24)) >> 3;
    v8 = 134218240;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Tracking Requests: %lu %lu", &v8, 0x16u);
  }

  [*(a1 + 48) enumerateKeysAndObjectsUsingBlock:&stru_100B06AC8];
  v5 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 56) count];
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: Total Devices currently tracked: %lu", &v8, 0xCu);
  }

  [*(a1 + 56) enumerateObjectsUsingBlock:&stru_100B06B48];
  v7 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Sensor Tracking Manager END -------------------", &v8, 2u);
  }
}

void sub_1006A522C(id a1, NSString *a2, NSMutableSet *a3, BOOL *a4)
{
  v5 = a3;
  v6 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: --------- %{public}@ ---------", &v7, 0xCu);
  }

  [(NSMutableSet *)v5 enumerateObjectsUsingBlock:&stru_100B06B08];
}

void sub_1006A530C(id a1, TrackingDevice *a2, BOOL *a3)
{
  v3 = a2;
  v4 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(TrackingDevice *)v3 deviceUUID];
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tDevice: %{public}@", &v11, 0xCu);

    v4 = qword_100BCEA48;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TrackingDevice *)v3 appleTypes];
    v7 = [v6 allObjects];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tTypes: %{public}@", &v11, 0xCu);

    v4 = qword_100BCEA48;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TrackingDevice *)v3 currentState]- 1;
    if (v8 > 2)
    {
      v9 = @"Not Set";
    }

    else
    {
      v9 = off_100B06BE8[v8];
    }

    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tCurrentState: %{public}@", &v11, 0xCu);
    v4 = qword_100BCEA48;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(TrackingDevice *)v3 timeoutValue];
    v11 = 67109120;
    LODWORD(v12) = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: \tTimeout: %d", &v11, 8u);
  }
}

void sub_1006A5540(id a1, NSUUID *a2, BOOL *a3)
{
  v3 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10085E028();
  }

  v4 = sub_100046458(off_100B508C8, v3, 0);
  v5 = qword_100BCEA48;
  if (os_log_type_enabled(qword_100BCEA48, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C(v4);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: \tDevice: %{public}@ - %{public}@", &v7, 0x16u);
  }
}

uint64_t sub_1006A5810(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v4 = sub_10000C798(a1, a2);
  v5 = (*(*v4 + 56))(v4, 2);
  if (v5)
  {
    LOBYTE(v5) = sub_100540A94(a2);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t sub_1006A587C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 8) == 1)
  {
    v6 = sub_100432410(a1, a2);
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        v10 = sub_100540CA8(*a1);
        LOWORD(result) = (*(*v6 + 16))(v6, 4294967294, v10);
      }

      else if (a2 == 2)
      {
        v8 = sub_1005411F4(*a1, 0);
        v9 = sub_100540CA8(*a1);
        LOWORD(result) = (*(*v6 + 16))(v6, v8, v9);
      }

      else
      {
        LOWORD(result) = 0;
      }
    }

    else if ((a2 - 3) >= 5)
    {
      if (a2 == 8)
      {
        LODWORD(result) = sub_100540CA8(*a1);
        if (result)
        {
          LOWORD(result) = (*(*v6 + 32))(v6);
        }
      }

      else
      {
        LOWORD(result) = a2 == 11;
      }
    }

    else
    {
      LODWORD(result) = sub_100540C18(*a1);
      if (result)
      {
        LOWORD(result) = (*(*v6 + 24))(v6, a2);
        if (a3 < result)
        {
          LOWORD(result) = a3;
        }
      }
    }
  }

  else
  {
    LOWORD(result) = 0;
  }

  return result;
}

void *sub_1006A5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  if (*(a1 + 8) != 1)
  {
    goto LABEL_20;
  }

  v14 = sub_100432410(a1, a2);
  v15 = v14;
  if (a2 <= 6)
  {
    if ((a2 - 3) >= 3)
    {
      if (a2 == 1)
      {
        v21 = sub_100540CA8(*a1);
        result = (*(*v15 + 40))(v15, 4294967294, v21, a3, a4, a5, a7);
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_20;
        }

        v16 = sub_1005411F4(*a1, 0);
        v17 = sub_100540CA8(*a1);
        result = (*(*v15 + 40))(v15, v16, v17, a3, a4, a5, a7);
      }

      goto LABEL_19;
    }

    goto LABEL_11;
  }

  switch(a2)
  {
    case 7:
LABEL_11:
      v19 = sub_100540C18(*a1);
      if (a4 < a6 && v19)
      {
        v20 = a6 - a4;
        if ((a6 - a4) >= a5)
        {
          v20 = a5;
        }

        result = (*(*v15 + 48))(v15, a2, a4, v20);
        break;
      }

LABEL_20:
      operator new();
    case 8:
      if (!sub_100540CA8(*a1))
      {
        goto LABEL_20;
      }

      result = (*(*v15 + 56))(v15, a4, a5);
      break;
    case 0xB:
      result = (*(*v14 + 64))(v14);
      break;
    default:
      goto LABEL_20;
  }

LABEL_19:
  if (!result)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1006A5C5C(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v6 = sub_100432410(a1, a2);
  v7 = v6;
  if (a2 > 6)
  {
    if (a2 != 7)
    {
      if (a2 != 8 || !sub_100540CA8(*a1))
      {
        return 0;
      }

      v10 = *(*v7 + 56);

      return v10(v7, (a3 - 1), 1);
    }
  }

  else if ((a2 - 3) >= 3)
  {
    if (a2 == 2)
    {
      v8 = *(*v6 + 80);

      return v8();
    }

    return 0;
  }

  if (!sub_100540C18(*a1))
  {
    return 0;
  }

  v11 = *(*v7 + 48);

  return v11(v7, a2, (a3 - 1), 1);
}

uint64_t sub_1006A5DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v10 = a2;
  v11 = sub_100432410(a1, a2);
  if (v10 != 2)
  {
    return 0;
  }

  v12 = v11;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v16 = *(a3 + 16);
  }

  v13 = (*(*v12 + 88))(v12, __p, a4, a5, a6);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_1006A5ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v12 = a2;
  v13 = sub_100432410(a1, a2);
  if (v12 != 2)
  {
    return 0;
  }

  v14 = v13;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v18 = *(a3 + 16);
  }

  v15 = (*(*v14 + 96))(v14, __p, a4, a5, a6, a7);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return v15;
}

void sub_1006A5FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A5FF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v3 = *(*sub_100432410(a1, a2) + 104);

  return v3();
}

uint64_t sub_1006A6064(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v3 = sub_100432498(a1, a2);
  if (a2 > 8)
  {
    return 0;
  }

  v4 = 0;
  if (((1 << a2) & 0x1BC) != 0)
  {
    return (**v3)(v3, a2, 0);
  }

  return v4;
}

uint64_t sub_1006A6104(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v3 = sub_100432498(a1, a2);
  if (a2 == 8 || a2 == 2)
  {
    return (*(*v3 + 8))(v3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A6188(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v2 = sub_100432498(a1, a2);
  return (*(*v2 + 16))(v2);
}

void sub_1006A61E4(uint64_t a1)
{
  sub_1006A6298(a1);

  operator delete();
}

uint64_t sub_1006A622C(uint64_t a1, size_t count)
{
  *a1 = off_100B06C40;
  *(a1 + 8) = count;
  *(a1 + 16) = 0;
  if (count)
  {
    *(a1 + 16) = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
  }

  return a1;
}

uint64_t sub_1006A6298(uint64_t a1)
{
  *a1 = off_100B06C40;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);
    if (*(a1 + 8))
    {
      v4 = 0;
      do
      {
        v5 = *(*(a1 + 16) + 8 * v4);
        if (v5)
        {
          (*(*v5 + 8))(v5);
          v3 = *(a1 + 8);
        }

        ++v4;
      }

      while (v4 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1006A6344(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    return 0;
  }

  v2 = a2;
  result = *(*(a1 + 16) + 8 * a2);
  if (!result)
  {
    *(*(a1 + 16) + 8 * a2) = (*(*a1 + 24))(a1, a2);
    return *(*(a1 + 16) + 8 * v2);
  }

  return result;
}

uint64_t sub_1006A63C8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) <= a2)
  {
    v4 = qword_100BCE978;
    if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_FAULT))
    {
      sub_10085E228(v4);
    }
  }

  v5 = *(a1 + 16);
  result = *(v5 + 8 * a2);
  if (result)
  {
    result = (*(*result + 8))(result);
    v5 = *(a1 + 16);
  }

  *(v5 + 8 * a2) = 0;
  return result;
}

uint64_t sub_1006A6460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 776);
  if (v2 > 7)
  {
    switch(v2)
    {
      case 8:
        operator new();
      case 16:
        operator new();
      case 32:
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
        operator new();
    }
  }

  else
  {
    switch(v2)
    {
      case 1:
        goto LABEL_5;
      case 2:
        operator new();
      case 4:
LABEL_5:
        operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_ERROR))
  {
    sub_10085E2AC();
  }

  return 0;
}

double sub_1006A6738(uint64_t a1)
{
  *&result = 0x200000000;
  *(a1 + 8) = 0x200000000;
  *a1 = off_100B06C70;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1006A6774(uint64_t a1)
{
  *a1 = off_100B06C70;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A67C4(uint64_t a1)
{
  *a1 = off_100B06C70;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A6834(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_10085E2E0();
  }

  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  sub_100574D30(off_100B50898, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(v9, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v3 = std::string::append(&__p, "");
  v4 = v3->__r_.__value_.__r.__words[0];
  v11[0] = v3->__r_.__value_.__l.__size_;
  *(v11 + 7) = *(&v3->__r_.__value_.__r.__words[1] + 7);
  v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v6 = v11[0];
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 31) = *(v11 + 7);
  *(a1 + 39) = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  return 1;
}

void sub_1006A6974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1006A69C4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v26, "\r\n");
  if (*(a1 + 40) == 1)
  {
    v4 = "+CGMI: ";
  }

  else
  {
    v4 = "+GMI: ";
  }

  v5 = std::string::append(&v26, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 16);
  v8 = a1 + 16;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::string::append(&v27, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v24, "\r\n");
  if ((v25 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24[1];
  }

  v17 = std::string::append(&v28, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v29, v19, v20);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1006A6B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A6C0C(uint64_t a1)
{
  *&result = 0x200000001;
  *(a1 + 8) = 0x200000001;
  *a1 = off_100B06CA0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1006A6C48(uint64_t a1)
{
  *a1 = off_100B06CA0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A6C98(uint64_t a1)
{
  *a1 = off_100B06CA0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A6D08(uint64_t a1)
{
  if (qword_100B508A0 != -1)
  {
    sub_10085E2E0();
  }

  sub_100574C2C(off_100B50898, __p);
  if (v5 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  std::string::assign((a1 + 16), v2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1006A6D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A6DA4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v26, "\r\n");
  if (*(a1 + 40) == 1)
  {
    v4 = "+CGMM: ";
  }

  else
  {
    v4 = "+GMM: ";
  }

  v5 = std::string::append(&v26, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 16);
  v8 = a1 + 16;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::string::append(&v27, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v24, "\r\n");
  if ((v25 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24[1];
  }

  v17 = std::string::append(&v28, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v29, v19, v20);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1006A6F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A6FE4(uint64_t a1)
{
  *&result = 0x200000002;
  *(a1 + 8) = 0x200000002;
  *a1 = off_100B06CD0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1006A701C(uint64_t a1)
{
  *a1 = off_100B06CD0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A706C(uint64_t a1)
{
  *a1 = off_100B06CD0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A70DC(uint64_t a1)
{
  v9 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(v7, "HFP");
  sub_100007E30(__p, "HideGeneralRevision");
  (*(*v2 + 72))(v2, v7, __p, &v9);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v9 == 1)
  {
    std::string::assign((a1 + 16), "Unknown");
  }

  else
  {
    if (qword_100B508A0 != -1)
    {
      sub_10085E2F4();
    }

    sub_100574CAC(off_100B50898, v7);
    if (v8 >= 0)
    {
      v3 = v7;
    }

    else
    {
      v3 = v7[0];
    }

    std::string::assign((a1 + 16), v3);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  return 1;
}

void sub_1006A71FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006A7234(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v26, "\r\n");
  if (*(a1 + 40) == 1)
  {
    v4 = "+CGMR: ";
  }

  else
  {
    v4 = "+GMR: ";
  }

  v5 = std::string::append(&v26, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 16);
  v8 = a1 + 16;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::string::append(&v27, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v24, "\r\n");
  if ((v25 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v24[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v24[1];
  }

  v17 = std::string::append(&v28, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v23 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v20 = v23;
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::string::append(&v29, v19, v20);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_1006A73E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A7474(uint64_t a1)
{
  *&result = 0x200000003;
  *(a1 + 8) = 0x200000003;
  *a1 = off_100B06D00;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1006A74B0(uint64_t a1)
{
  *a1 = off_100B06D00;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A7500(uint64_t a1)
{
  *a1 = off_100B06D00;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

BOOL sub_1006A7570(uint64_t a1)
{
  if (qword_100B54080 != -1)
  {
    sub_10085E31C();
  }

  return sub_1006FCD8C(off_100B54078) == 0;
}

void sub_1006A75C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 39) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 39))
  {
LABEL_3:
    sub_100007E30(&v24, "\r\n");
    if (*(a1 + 40) == 1)
    {
      v4 = "+CGSN: ";
    }

    else
    {
      v4 = "+GSN: ";
    }

    v5 = std::string::append(&v24, v4);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = *(a1 + 39);
    if (v7 >= 0)
    {
      v8 = (a1 + 16);
    }

    else
    {
      v8 = *(a1 + 16);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 39);
    }

    else
    {
      v9 = *(a1 + 24);
    }

    v10 = std::string::append(&v25, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(v22, "\r\n");
    if ((v23 & 0x80u) == 0)
    {
      v12 = v22;
    }

    else
    {
      v12 = v22[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v13 = v23;
    }

    else
    {
      v13 = v22[1];
    }

    v14 = std::string::append(&v26, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(__p, "\r\nOK\r\n");
    if ((v21 & 0x80u) == 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v17 = v21;
    }

    else
    {
      v17 = __p[1];
    }

    v18 = std::string::append(&v27, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    a2[2] = *(&v18->__r_.__value_.__l + 2);
    *a2 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    return;
  }

  sub_100007E30(a2, "\r\nERROR\r\n");
}

void sub_1006A77AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A7840(uint64_t a1, uint64_t a2, int a3, char *__s)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = a3;
  *a1 = off_100B06D30;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  if (a3 == 2)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    sub_100007E30(&__p, __s);
    v5 = &dword_100BC6F50;
    v6 = 5;
    while (1)
    {
      v7 = *(v5 + 31);
      v8 = v29 >= 0 ? HIBYTE(v29) : v28;
      v9 = v29 >= 0 ? &__p : __p;
      v10 = v7 >= 0 ? *(v5 + 31) : *(v5 + 2);
      v11 = v7 >= 0 ? v5 + 2 : *(v5 + 1);
      v12 = v10 >= v8 ? v8 : v10;
      v13 = memcmp(v9, v11, v12);
      if (v10 == v8 && v13 == 0)
      {
        break;
      }

      std::operator+<char>();
      v15 = std::string::append(&v25, "");
      v26 = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v16 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      size = v26.__r_.__value_.__l.__size_;
      v18 = v26.__r_.__value_.__r.__words[0];
      v19 = HIBYTE(v29);
      if (v29 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        v19 = v28;
        p_p = __p;
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v26.__r_.__value_.__r.__words[0];
      }

      else
      {
        size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
        v21 = &v26;
      }

      if (size >= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = size;
      }

      v23 = size == v19;
      if (memcmp(p_p, v21, v22))
      {
        v23 = 0;
      }

      if (v16 < 0)
      {
        operator delete(v18);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      if (v23)
      {
        break;
      }

      v5 += 8;
      if (!--v6)
      {
        goto LABEL_41;
      }
    }

    *(a1 + 16) = *v5;
LABEL_41:
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1006A7A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A7A5C(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 == 2)
  {
    v4 = *(a1 + 16);
    if (v4 != 1)
    {
      *(*(a1 + 32) + 776) = v4;
      return 1;
    }

    return 0;
  }

  if (v1 == 1)
  {
    *(a1 + 16) = *(*(a1 + 32) + 776);
    return 1;
  }

  if (v1)
  {
    return 0;
  }

  v2 = *(a1 + 20);
  v3 = vadd_s32(v2, 0x500000005);
  v2.i32[0] |= 0x3Eu;
  v2.i32[1] = v3.i32[1];
  *(a1 + 20) = v2;
  return 1;
}

void sub_1006A7AC4(_DWORD *a1@<X0>, std::string *a2@<X8>)
{
  memset(&v28, 0, sizeof(v28));
  v4 = a1[3];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        sub_100007E30(&__p, "\r\n");
        if ((v27 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v27 & 0x80u) == 0)
        {
          v6 = v27;
        }

        else
        {
          v6 = v26;
        }

        std::string::append(&v28, p_p, v6);
        if (v27 < 0)
        {
          operator delete(__p);
        }

        std::string::append(&v28, "+CSCS: ");
        v7 = &qword_100BC6F40;
        v8 = 6;
        do
        {
          if (a1[4] == *(v7 - 4))
          {
            v9 = *(v7 + 15);
            if (v9 >= 0)
            {
              v10 = (v7 - 1);
            }

            else
            {
              v10 = *(v7 - 1);
            }

            if (v9 >= 0)
            {
              v11 = *(v7 + 15);
            }

            else
            {
              v11 = *v7;
            }

            std::string::append(&v28, v10, v11);
          }

          v7 += 4;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      sub_100007E30(&__p, "\r\n");
      if ((v27 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v14 = v27;
      }

      else
      {
        v14 = v26;
      }

      std::string::append(&v28, v13, v14);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      std::string::append(&v28, "+CSCS: (");
      v15 = 0;
      v16 = &qword_100BC6F40;
      v17 = 6;
      do
      {
        if ((*(v16 - 2) & a1[5]) != 0)
        {
          if (v15)
          {
            std::string::append(&v28, ",");
          }

          v18 = *(v16 + 15);
          if (v18 >= 0)
          {
            v19 = (v16 - 1);
          }

          else
          {
            v19 = *(v16 - 1);
          }

          if (v18 >= 0)
          {
            v20 = *(v16 + 15);
          }

          else
          {
            v20 = *v16;
          }

          std::string::append(&v28, v19, v20);
          ++v15;
        }

        v16 += 4;
        --v17;
      }

      while (v17);
      std::string::append(&v28, ")");
    }

    goto LABEL_47;
  }

  v12 = "\r\nERROR\r\n";
  if (v4 == 2)
  {
    if (a1[4] != 1)
    {
      v12 = "\r\nOK\r\n";
    }

    goto LABEL_66;
  }

  if (v4 == 3)
  {
LABEL_66:
    sub_100007E30(a2, v12);
    goto LABEL_67;
  }

LABEL_47:
  sub_100007E30(&__p, "\r\n");
  if ((v27 & 0x80u) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v22 = v27;
  }

  else
  {
    v22 = v26;
  }

  std::string::append(&v28, v21, v22);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  sub_100007E30(&__p, "\r\nOK\r\n");
  if ((v27 & 0x80u) == 0)
  {
    v23 = &__p;
  }

  else
  {
    v23 = __p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v24 = v27;
  }

  else
  {
    v24 = v26;
  }

  std::string::append(&v28, v23, v24);
  if (v27 < 0)
  {
    operator delete(__p);
  }

  *a2 = v28;
  memset(&v28, 0, sizeof(v28));
LABEL_67:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_1006A7D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

double sub_1006A7DE0(void *a1)
{
  *&result = 0x200000005;
  a1[1] = 0x200000005;
  *a1 = off_100B06D60;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_1006A7E14(uint64_t a1)
{
  *a1 = off_100B06D60;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A7E64(uint64_t a1)
{
  *a1 = off_100B06D60;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

BOOL sub_1006A7ED4(uint64_t a1)
{
  if (qword_100B54080 != -1)
  {
    sub_10085E31C();
  }

  return sub_1006FCD64(off_100B54078) == 0;
}

void sub_1006A7F24(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 39) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 39))
  {
LABEL_3:
    sub_100007E30(&v23, "\r\n");
    v4 = std::string::append(&v23, "+CIMI: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = *(a1 + 39);
    if (v6 >= 0)
    {
      v7 = (a1 + 16);
    }

    else
    {
      v7 = *(a1 + 16);
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 39);
    }

    else
    {
      v8 = *(a1 + 24);
    }

    v9 = std::string::append(&v24, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(v21, "\r\n");
    if ((v22 & 0x80u) == 0)
    {
      v11 = v21;
    }

    else
    {
      v11 = v21[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v12 = v22;
    }

    else
    {
      v12 = v21[1];
    }

    v13 = std::string::append(&v25, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_100007E30(__p, "\r\nOK\r\n");
    if ((v20 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v16 = v20;
    }

    else
    {
      v16 = __p[1];
    }

    v17 = std::string::append(&v26, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    a2[2] = *(&v17->__r_.__value_.__l + 2);
    *a2 = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    return;
  }

  sub_100007E30(a2, "\r\nERROR\r\n");
}

void sub_1006A80FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A8190(uint64_t result, int a2)
{
  *(result + 8) = 7;
  *(result + 12) = a2;
  *result = off_100B06D90;
  return result;
}

void sub_1006A81D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 12);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v12 = "\r\nOK\r\n";
      goto LABEL_42;
    }
  }

  else
  {
    if (!v3)
    {
      sub_100007E30(&v27, "\r\n");
      v13 = std::string::append(&v27, "+CREG: 1");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&v24, "\r\n");
      if ((v26 & 0x80u) == 0)
      {
        v15 = &v24;
      }

      else
      {
        v15 = v24;
      }

      if ((v26 & 0x80u) == 0)
      {
        v16 = v26;
      }

      else
      {
        v16 = v25;
      }

      v17 = std::string::append(&v28, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v23 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v23 & 0x80u) == 0)
      {
        v11 = v23;
      }

      else
      {
        v11 = v22;
      }

      goto LABEL_30;
    }

    if (v3 == 1)
    {
      sub_100007E30(&v27, "\r\n");
      v4 = std::string::append(&v27, "+CREG: 1,1");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&v24, "\r\n");
      if ((v26 & 0x80u) == 0)
      {
        v6 = &v24;
      }

      else
      {
        v6 = v24;
      }

      if ((v26 & 0x80u) == 0)
      {
        v7 = v26;
      }

      else
      {
        v7 = v25;
      }

      v8 = std::string::append(&v28, v6, v7);
      v9 = *&v8->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(&__p, "\r\nOK\r\n");
      if ((v23 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v23 & 0x80u) == 0)
      {
        v11 = v23;
      }

      else
      {
        v11 = v22;
      }

LABEL_30:
      v19 = std::string::append(&v29, p_p, v11);
      v20 = *&v19->__r_.__value_.__l.__data_;
      a2[2] = *(&v19->__r_.__value_.__l + 2);
      *a2 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (v26 < 0)
      {
        operator delete(v24);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      return;
    }
  }

  v12 = "\r\nERROR\r\n";
LABEL_42:

  sub_100007E30(a2, v12);
}

void sub_1006A8438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A84C8(uint64_t result, int a2)
{
  *(result + 8) = 8;
  *(result + 12) = a2;
  *result = off_100B06DC0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1006A84F8(uint64_t a1)
{
  *a1 = off_100B06DC0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A8548(uint64_t a1)
{
  *a1 = off_100B06DC0;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

BOOL sub_1006A85B8(uint64_t a1)
{
  memset(__p, 0, sizeof(__p));
  sub_100007E30(&__p[1], "");
  if (qword_100B54080 != -1)
  {
    sub_10085E330();
  }

  v2 = sub_1006FCDB4(off_100B54078);
  if (!v2)
  {
    if (SHIBYTE(__p[3]) < 0)
    {
      sub_100008904(&v4, __p[1], __p[2]);
    }

    else
    {
      v4 = *&__p[1];
      v5 = __p[3];
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  return v2 == 0;
}

void sub_1006A8698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A86B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_100007E30(a3, "\r\nERROR\r\n");
  v8 = *(a1 + 12);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_100007E30(&v34, "\r\nOK\r\n");
      goto LABEL_45;
    }

    if (v8 != 3)
    {
      return result;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v9 = sub_1006A6460(v6, a2);
      sub_100007E30(&v31, "\r\n");
      v10 = std::string::append(&v31, "+COPS: 0,0,");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      sub_10039BE10(v9, &v30, (a1 + 16));
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v30;
      }

      else
      {
        v12 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v32, v12, size);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(v28, "\r\n");
      if ((v29 & 0x80u) == 0)
      {
        v16 = v28;
      }

      else
      {
        v16 = v28[0];
      }

      if ((v29 & 0x80u) == 0)
      {
        v17 = v29;
      }

      else
      {
        v17 = v28[1];
      }

      v18 = std::string::append(&v33, v16, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      sub_100007E30(__p, "\r\nOK\r\n");
      if ((v27 & 0x80u) == 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      if ((v27 & 0x80u) == 0)
      {
        v21 = v27;
      }

      else
      {
        v21 = __p[1];
      }

      v22 = std::string::append(&v34, v20, v21);
      v23 = v22->__r_.__value_.__r.__words[0];
      v35[0] = v22->__r_.__value_.__l.__size_;
      *(v35 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
      v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      v25 = v35[0];
      *a3 = v23;
      *(a3 + 8) = v25;
      *(a3 + 15) = *(v35 + 7);
      *(a3 + 23) = v24;
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    return result;
  }

  sub_100007E30(&v34, "\r\nERROR\r\n");
LABEL_45:
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  result = *&v34.__r_.__value_.__l.__data_;
  *a3 = v34;
  return result;
}

void sub_1006A89B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 73) < 0)
  {
    operator delete(*(v46 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v45 + 23) < 0)
  {
    operator delete(*v45);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A8A84(void *a1)
{
  *&result = 0x200000009;
  a1[1] = 0x200000009;
  *a1 = off_100B06DF0;
  return result;
}

void sub_1006A8AD0(std::string *a1@<X8>)
{
  sub_100007E30(&v15, "\r\n");
  v2 = std::string::append(&v15, "+CPAS: READY");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v13, "\r\n");
  if ((v14 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v17, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1006A8C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006A8C94(void *a1)
{
  *&result = 0x20000000ALL;
  a1[1] = 0x20000000ALL;
  *a1 = off_100B06E20;
  return result;
}

void sub_1006A8CE0(std::string *a1@<X8>)
{
  sub_100007E30(&v15, "\r\n");
  v2 = std::string::append(&v15, "+CPIN: READY");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v13, "\r\n");
  if ((v14 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13[1];
  }

  v6 = std::string::append(&v16, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v17, v8, v9);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1006A8E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A8EA4(void *a1)
{
  a1[1] = 0x20000000BLL;
  *a1 = off_100B06E50;
  sub_100007E30(a1 + 2, "0,0");
  return a1;
}

uint64_t sub_1006A8EFC(uint64_t a1)
{
  *a1 = off_100B06E50;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A8F4C(uint64_t a1)
{
  *a1 = off_100B06E50;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A8FBC(uint64_t a1)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  v11 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  sub_100008760(&v8);
  v7 = 0;
  v2 = sub_100017E6C();
  (*(*v2 + 104))(v2, &v7 + 1, &v7);
  v3 = std::ostream::operator<<();
  sub_100007774(v3, ",", 1);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_1006A91A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1003B8618(va);
  _Unwind_Resume(a1);
}

void sub_1006A91B8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v25, "\r\n");
  v4 = std::string::append(&v25, "+CBC: ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v26, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v23, "\r\n");
  if ((v24 & 0x80u) == 0)
  {
    v14 = v23;
  }

  else
  {
    v14 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v23[1];
  }

  v16 = std::string::append(&v27, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v22 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v19 = v22;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::string::append(&v28, v18, v19);
  *a2 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1006A9350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006A93E4(void *a1)
{
  a1[1] = 0x20000000CLL;
  *a1 = off_100B06E80;
  sub_100007E30(a1 + 2, "0");
  return a1;
}

uint64_t sub_1006A943C(uint64_t a1)
{
  *a1 = off_100B06E80;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1006A948C(uint64_t a1)
{
  *a1 = off_100B06E80;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1006A94FC(uint64_t a1)
{
  v8 = 0;
  v7 = 0;
  *__s = 0;
  if (qword_100B54080 != -1)
  {
    sub_10085E31C();
  }

  sub_1006FCE04(off_100B54078);
  v2 = (v8 + 113) >> 1;
  v8 = v2;
  if (v2 <= 0)
  {
    v2 = 0;
    v8 = 0;
  }

  else if (v2 >= 0x20)
  {
    v2 = 31;
    v8 = 31;
  }

  sprintf(__s, "%2d", v2);
  v3 = (a1 + 16);
  std::string::assign((a1 + 16), __s);
  v4 = qword_100BCE978;
  if (os_log_type_enabled(qword_100BCE978, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 39) < 0)
    {
      v3 = *v3;
    }

    *buf = 67109634;
    v10 = v8;
    v11 = 2082;
    v12 = __s;
    v13 = 2082;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reporting signal quality %i (== %{public}s == %{public}s)", buf, 0x1Cu);
  }

  return 1;
}

void sub_1006A9664(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100007E30(&v27, "\r\n");
  v4 = std::string::append(&v27, "+CSQ: ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 16);
  v7 = a1 + 16;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v28, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v29, ",99");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(v25, "\r\n");
  if ((v26 & 0x80u) == 0)
  {
    v16 = v25;
  }

  else
  {
    v16 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v17 = v26;
  }

  else
  {
    v17 = v25[1];
  }

  v18 = std::string::append(&v30, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  sub_100007E30(__p, "\r\nOK\r\n");
  if ((v24 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v21 = v24;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = std::string::append(&v31, v20, v21);
  *a2 = *v22;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1006A9840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006A98EC(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  *(a1 + 8) = 13;
  *(a1 + 12) = a3;
  *a1 = off_100B06FA0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  v6 = sub_10000C798(a1, a2);
  if ((*(*v6 + 56))(v6, 2) && *(a1 + 12) == 2)
  {
    if (*a4 == 34)
    {
      ++a4;
    }

    v7 = &off_100B06EA8;
    v8 = 15;
    while (strncmp(a4, *v7, 2uLL))
    {
      v7 += 2;
      if (!--v8)
      {
        return a1;
      }
    }

    *(a1 + 24) = *(v7 - 2);
  }

  return a1;
}

uint64_t sub_1006A99E4(uint64_t a1, void *a2)
{
  v4 = sub_10000C798(a1, a2);
  result = (*(*v4 + 56))(v4, 2);
  if (result)
  {
    v6 = *(a1 + 12);
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (sub_1006AE3F8(a2, *(a1 + 16), *(a1 + 24)))
        {
          return 1;
        }

        *(a1 + 24) = 0;
      }
    }

    else
    {
      if (!v6)
      {
        return 1;
      }

      if (v6 == 1)
      {
        *(a1 + 24) = sub_1006AE590(a2, *(a1 + 16));
        *(a1 + 28) = sub_1006AE5C8(a2, *(a1 + 16));
        return 1;
      }
    }

    return 0;
  }

  return result;
}