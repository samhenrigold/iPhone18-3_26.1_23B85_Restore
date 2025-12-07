void sub_1007702A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100770610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100770978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100770CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100771048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007713B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100771718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077174C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  v5 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *v7;
    }

    *buf = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = v6;
    v18 = 2082;
    v19 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received message from #CoreLocationAgent, User:%{public, location:escape_only}s, message:%{public, location:escape_only}s}", buf, 0x26u);
  }

  v9 = *a2;
  v10 = *(a2 + 8);
  v11[0] = v9;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1007718A8(v5, v11);
  if (v10)
  {
    sub_100008080(v10);
  }
}

void sub_1007718A8(uint64_t a1, CLConnectionMessage **a2)
{
  v3 = CLConnectionMessage::name(*a2);
  if (*(v3 + 23) < 0 && *(v3 + 8) == 38 && !memcmp(*v3, "kCLConnectionMessageAuthPromptResponse", 0x26uLL))
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    v15 = [Dictionary allKeys];
    if ([v15 containsObject:@"uuid"] && objc_msgSend(v15, "containsObject:", @"pid") && (objc_msgSend(v15, "containsObject:", @"response") & 1) != 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v17 = CLConnectionMessage::name(*a2);
        v18 = *(v17 + 23) >= 0 ? v17 : *v17;
        v24 = 68289538;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        v29 = v18;
        v30 = 2114;
        v31 = Dictionary;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt response from #CoreLocationAgent is not yet supported on this platform, message:%{public, location:escape_only}s, resposne:%{public, location:escape_only}@}", &v24, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v19 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v20 = CLConnectionMessage::name(*a2);
        if (*(v20 + 23) >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = *v20;
        }

        v24 = 68289538;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2082;
        v29 = v21;
        v30 = 2114;
        v31 = Dictionary;
        v10 = "#AuthPrompt response from #CoreLocationAgent is not yet supported on this platform";
        v11 = "{msg%{public}.0s:#AuthPrompt response from #CoreLocationAgent is not yet supported on this platform, message:%{public, location:escape_only}s, resposne:%{public, location:escape_only}@}";
        v12 = v19;
        v13 = 38;
        goto LABEL_18;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v22 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v24 = 68289282;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = Dictionary;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt auth response from #CoreLocationAgent is malformed. Don't apply auth-response, resposne:%{public, location:escape_only}@}", &v24, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v23 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v24 = 68289282;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2114;
        v29 = Dictionary;
        v10 = "#AuthPrompt auth response from #CoreLocationAgent is malformed. Don't apply auth-response";
        v11 = "{msg%{public}.0s:#AuthPrompt auth response from #CoreLocationAgent is malformed. Don't apply auth-response, resposne:%{public, location:escape_only}@}";
        v12 = v23;
LABEL_17:
        v13 = 28;
LABEL_18:
        _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v24, v13);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v5 = CLConnectionMessage::name(*a2);
      v6 = *(v5 + 23) >= 0 ? v5 : *v5;
      v24 = 68289282;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2082;
      v29 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CoreLocationAgent defaultMessageHandler received un-handled messaeg, message:%{public, location:escape_only}s}", &v24, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v7 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v8 = CLConnectionMessage::name(*a2);
      if (*(v8 + 23) >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = *v8;
      }

      v24 = 68289282;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2082;
      v29 = v9;
      v10 = "#CoreLocationAgent defaultMessageHandler received un-handled messaeg";
      v11 = "{msg%{public}.0s:#CoreLocationAgent defaultMessageHandler received un-handled messaeg, message:%{public, location:escape_only}s}";
      v12 = v7;
      goto LABEL_17;
    }
  }
}

void sub_100772054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007723BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100772724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100772A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100772DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100772E28(id *a1, uint64_t a2)
{
  v4 = sub_100018FC8(a1, a2, &xmmword_101CE6CD8);

  return sub_100033CDC(a1, a2, v4);
}

void sub_100772E74(uint64_t *a1, CLConnection *a2, uint64_t *a3)
{
  v3 = a1[106];
  if (!v3)
  {
    goto LABEL_9;
  }

  v7 = a1 + 106;
  do
  {
    v8 = *(v3 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v3;
    }

    v3 = *(v3 + 8 * v10);
  }

  while (v3);
  if (v7 == a1 + 106 || v7[4] > a2)
  {
LABEL_9:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "iter != fDaemonClients.end()";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:recreateDaemonClientForConnectionWithRegistrationMessage must only be called with a connection for an active DC, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v12 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "iter != fDaemonClients.end()";
        _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "recreateDaemonClientForConnectionWithRegistrationMessage must only be called with a connection for an active DC", "{msg%{public}.0s:recreateDaemonClientForConnectionWithRegistrationMessage must only be called with a connection for an active DC, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2082;
        v22 = "assert";
        v23 = 2081;
        v24 = "iter != fDaemonClients.end()";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:recreateDaemonClientForConnectionWithRegistrationMessage must only be called with a connection for an active DC, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager_Unified.mm", 1016, "recreateDaemonClientForConnectionWithRegistrationMessage");
      __break(1u);
LABEL_28:
      sub_10192D4D0();
    }
  }

  if (!sub_100B1FA08(v7[5]))
  {
    sub_10192E050();
  }

  sub_100112718(a1, a2);
  v14 = *a3;
  v15 = a3[1];
  v16[0] = v14;
  v16[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000540D0(a1, a2, v16);
  if (v15)
  {

    sub_100008080(v15);
  }
}

void sub_1007731A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007731C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000184F4(a1, a2);
  v6 = [*(a1 + 360) objectForKey:v5];
  v7 = [v6 containsObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", a3)}];
  if (v7)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289794;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v5;
      v20 = 2050;
      v21 = a3;
      v22 = 1026;
      v23 = a3;
      v9 = "{msg%{public}.0s:#identityValidation successful, Identity:%{public, location:escape_only}@, ConnectedClientUniquePid:%{public}lld, ConnectedClientPid:%{public}d}";
      v10 = v8;
      v11 = 44;
LABEL_10:
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68290050;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v5;
      v20 = 2050;
      v21 = a3;
      v22 = 1026;
      v23 = a3;
      v24 = 2114;
      v25 = v6;
      v9 = "{msg%{public}.0s:#warning #identityValidation Identity invalid for connected client, Identity:%{public, location:escape_only}@, ConnectedClientUniquePid:%{public}lld, ConnectedClientPid:%{public}d, AllowedUniquePids:%{public, location:escape_only}@}";
      v10 = v12;
      v11 = 54;
      goto LABEL_10;
    }
  }

  return v7;
}

void sub_1007733A4(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, void *a5, int a6)
{
  v29 = objc_alloc_init(NSAutoreleasePool);
  v11 = sub_1000184F4(a1, a2);
  if (([*(a1 + 136) dictionaryExistsAtKeyPath:v11] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    *buf = 68289794;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v11;
    v36 = 2082;
    v37 = v16;
    v38 = 1026;
    v39 = a4;
    v17 = "{msg%{public}.0s:skip persisting #dic for rehydration. Client not found, Client:%{public, location:escape_only}@, dic:%{public, location:escape_only}s, dicType:%{public}d}";
LABEL_13:
    v18 = v15;
    v19 = 44;
LABEL_37:
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_38;
  }

  if (a6 && ![a5 count])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    if (*(a3 + 23) >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    *buf = 68289794;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v11;
    v36 = 2082;
    v37 = v27;
    v38 = 1026;
    v39 = a4;
    v17 = "{msg%{public}.0s:skip persisting #dic for rehydration, payload is empty, Client:%{public, location:escape_only}@, dic:%{public, location:escape_only}s, dicType:%{public}d}";
    goto LABEL_13;
  }

  v12 = [[NSNumber numberWithUnsignedInt:?]];
  v13 = [objc_msgSend(*(a1 + 136) dictionaryForKey:@"DIC" atKeyPath:v11 defaultValue:{+[NSMutableDictionary dictionary](NSMutableDictionary, "dictionary")), "mutableCopy"}];
  if ([v13 objectForKeyedSubscript:v12])
  {
    v14 = [objc_msgSend(v13 objectForKeyedSubscript:{v12), "mutableCopy"}];
  }

  else
  {
    v14 = +[NSMutableDictionary dictionary];
  }

  v20 = v14;
  if (*(a3 + 23) >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if (a6)
  {
    [v14 removeObjectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v21)}];
    if (*(a3 + 23) >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    [v20 setObject:a5 forKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v22)}];
  }

  else
  {
    [v14 removeObjectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v21)}];
  }

  if ([v20 count])
  {
    [v13 setObject:v20 forKeyedSubscript:v12];
  }

  else
  {
    [v13 removeObjectForKey:v12];
  }

  v23 = [v13 count];
  v24 = *(a1 + 136);
  if (v23)
  {
    [v24 setDictionary:v13 forKey:@"DIC" atKeyPath:v11];
  }

  else
  {
    [v24 removeValueForKey:@"DIC" atKeyPath:v11];
  }

  [*(a1 + 136) persist];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v25 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    *buf = 68290306;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v11;
    v36 = 2082;
    v37 = v26;
    v38 = 1026;
    v39 = a4;
    v40 = 1026;
    v41 = a6;
    v42 = 2114;
    v43 = a5;
    v17 = "{msg%{public}.0s:updated persistent-store for #dic rehydration, Client:%{public, location:escape_only}@, dic:%{public, location:escape_only}s, dicType:%{public}d, coming:%{public}hhd, RehydrationPayload:%{public, location:escape_only}@}";
    v18 = v25;
    v19 = 60;
    goto LABEL_37;
  }

LABEL_38:
}

void sub_100773810(uint64_t a1)
{
  v2 = *(a1 + 832);
  if (v2)
  {
    CLConnectionServer::~CLConnectionServer(v2);
    operator delete();
  }

  sub_10077387C(a1);
  v3 = *(a1 + 960);
  if (v3)
  {
    CLConnection::deferredDelete(v3);
    *(a1 + 960) = 0;
  }

  [*(a1 + 248) invalidate];

  *(a1 + 248) = 0;
}

void sub_10077387C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 840);
  if (v3 != (a1 + 848))
  {
    do
    {
      v4 = v3[1];
      v5 = v3;
      if (v4)
      {
        do
        {
          v6 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v6 = v5[2];
          v7 = *v6 == v5;
          v5 = v6;
        }

        while (!v7);
      }

      sub_10011219C(a1, v3[4]);
      v3 = v6;
    }

    while (v6 != (a1 + 848));
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100773918(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v3 isValidCKP])
  {
    v4 = *(a1 + 840);
    if (v4 != (a1 + 848))
    {
      do
      {
        v5 = v4[1];
        v6 = v4;
        if (v5)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        v9 = v4[4];
        if ([sub_1000344B0(v4[5] 0)])
        {
          sub_10011219C(a1, v9);
        }

        v4 = v7;
      }

      while (v7 != (a1 + 848));
    }
  }
}

void *sub_1007739D0(uint64_t a1, char a2, uint64_t *a3)
{
  v9 = a2;
  sub_10001CAF4(&v7);
  sub_1000434C8(v7, @"LocationServicesEnabledIn8.0", &v9);
  if (v8)
  {
    sub_100008080(v8);
  }

  sub_10001CAF4(&v7);
  sub_10054B380(v7);
  if (v8)
  {
    sub_100008080(v8);
  }

  sub_10054B43C(&v7, @"com.apple.locationd.notbackedup", 0, @"mobile");
  sub_1000434C8(&v7, @"LocationServicesEnabledIn8.0", &v9);
  sub_10054B380(&v7);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.locationd/Prefs", 0, 0, 1u);
  sub_100773AF4(a1, a3, 1);
  return sub_10054B4D4(&v7);
}

void sub_100773AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100773AF4(uint64_t a1, uint64_t *a2, int a3)
{
  sub_1004E8744();
  v6 = sub_10003845C();
  v7 = sub_1004E8818();
  v8 = (a1 + 120);
  if ([*(a1 + 120) locationServicesEnabledStatus] != v6 || *(a1 + 824) != v7)
  {
    [*(a1 + 120) setLocationServicesEnabledStatus:v6];
    *(a1 + 824) = v7;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*v8 locationServicesEnabledStatus];
      *buf = 67109376;
      *&buf[4] = v10;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "GPS_NETWORK: currentStatus(%d) isGpsControlledByNetwork(%d)", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192E3D4((a1 + 120), v7);
    }

    if (a3)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync sending kNotificationLocationServicesStatus}", buf, 0x12u);
      }

      [*(a1 + 1560) sendGlobalAuthStatus:sub_1000193E0()];
    }

    sub_100778254(a1);
    *v28 = 0u;
    memset(v29, 0, 19);
    v26 = 0u;
    *v27 = 0u;
    memset(buf, 0, sizeof(buf));
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    memset(__p, 0, 27);
    v34 = [*(a1 + 120) locationServicesEnabledStatus];
    *v35 = 4;
    (*(*a1 + 152))(a1, v35, buf, 1, 0xFFFFFFFFLL, 0);
    sub_10077387C(a1);
    for (i = *(a1 + 1016); i; i = *i)
    {
      v13 = i + 2;
      if (*(i + 39) < 0)
      {
        v13 = *v13;
      }

      v14 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientKey:](CLClientKeyPath, "clientKeyPathWithClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13))}];
      if ([v14 isValidCKP])
      {
        v15 = sub_10004FEC8(a1, v14, &xmmword_101CE6CD8);
        sub_100034280(a1, v14, v15);
      }
    }

    v16 = *(a1 + 136);
    *v35 = _NSConcreteStackBlock;
    *v36 = 3221225472;
    *&v36[8] = sub_1007A51F0;
    *&v36[16] = &unk_1024704E8;
    v37 = a1;
    v38 = 0;
    [v16 iterateAllAnchorKeyPathsWithBlock:v35];
    sub_100774798(a1);
    sub_100774D9C(a1);
    v24[0] = &__kCFBooleanFalse;
    v21 = @"IsResetEvent";
    v22 = @"EventSource";
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    v24[1] = [NSString stringWithUTF8String:v17, v21, v22];
    v23 = @"Enabled";
    v24[2] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*v8 locationServicesEnabledStatus] == 1);
    v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:&v21 count:3];
    if (qword_1025D4890 != -1)
    {
      sub_10192E4F8();
    }

    v19 = qword_1025D4898;
    if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_DEBUG))
    {
      *v35 = 68289282;
      *v36 = 2082;
      *&v36[2] = "";
      *&v36[10] = 2114;
      *&v36[12] = v18;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#checkLocationServicesEnabledState #CoreAnalytics, Bigswitch Analytics:%{public, location:escape_only}@}", v35, 0x1Cu);
    }

    AnalyticsSendEvent();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, CLAuthorizationStatusChangedNotification, 0, 0, 0);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(*(&v31 + 1));
    }

    if (SBYTE7(v31) < 0)
    {
      operator delete(v30);
    }

    if ((v29[15] & 0x80000000) != 0)
    {
      operator delete(v28[1]);
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_100773FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100774024(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 5;
  }
}

id sub_10077403C(uint64_t a1)
{
  result = +[CLClientKeyPath nullClientKeyPath];
  v3 = *(a1 + 272);
  if (v3)
  {
    return *(v3 + 8);
  }

  return result;
}

id sub_100774074(id *a1, uint64_t a2)
{
  v3 = [-[NSArray objectAtIndexedSubscript:](sub_100019AB0(a1 a2)];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = a2;
    v11 = 2050;
    v12 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client static registration result, Client:%{public, location:escape_only}@, registration:%{public, location:CLClientRegistrationResult}lld}", v6, 0x26u);
  }

  return v3;
}

id sub_10077417C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:checkVisitMonitoringStopped}", buf, 0x12u);
  }

  v3 = *(a1 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10077429C;
  v5[3] = &unk_10246FC30;
  v5[4] = a1;
  return [v3 iterateAllAnchorKeyPathsWithBlock:v5];
}

uint64_t sub_10077429C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007743E8;
  v7[3] = &unk_10246FC80;
  v7[4] = v3;
  [v4 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v7];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2114;
    v13 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop visit monitoring for client, ckp:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  return sub_1007744DC(v3, a2, 6uLL);
}

uint64_t sub_1007743E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:stop visit monitoring for related client, relatedCkp:%{public, location:escape_only}@}", v6, 0x1Cu);
  }

  return sub_1007744DC(v3, a2, 6uLL);
}

uint64_t sub_1007744DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v5 isValidCKP];
  if (result)
  {
    v18 = 0;
    v19 = 0;
    sub_10004F9C8(a3, &v19, &v18);
    v7 = [*(a1 + 136) intForKey:v19 atKeyPath:v5 defaultValue:0xFFFFFFFFLL];
    v8 = [*(a1 + 136) intForKey:v18 atKeyPath:v5 defaultValue:0xFFFFFFFFLL];
    if (v7 != -1 && ((v9 = v7, v10 = v8, v8 == -1) || v10 < v9))
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = off_10246FCA0[a3];
        *buf = 136447234;
        v31 = v13;
        v32 = 2050;
        v33 = v9;
        v34 = 2050;
        v35 = v10;
        v36 = 2114;
        v37 = v5;
        v38 = 2050;
        v39 = Current;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#warning %{public}s time started exists (%{public}.2f), but time stopped (%{public}.2f) doesn't exist or is earlier for %{public}@ - setting to %{public}.2f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v15 = off_10246FCA0[a3];
        v20 = 136447234;
        v21 = v15;
        v22 = 2050;
        v23 = v9;
        v24 = 2050;
        v25 = v10;
        v26 = 2114;
        v27 = v5;
        v28 = 2050;
        v29 = Current;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#warning %{public}s time started exists (%{public}.2f), but time stopped (%{public}.2f) doesn't exist or is earlier for %{public}@ - setting to %{public}.2f", &v20, 52);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::checkServiceStopped(CLClientKeyPath *, CLClientServiceType)", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v14 = CFAbsoluteTimeGetCurrent();
      sub_10002FE04(a1, v14, v5, a3, 0, 0, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_100774798(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "vendor")];
  v3 = *(a1 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10077482C;
  v5[3] = &unk_10246FD68;
  v5[4] = v2;
  v5[5] = a1;
  return [v3 iterateAllAnchorKeyPathsWithBlock:v5];
}

uint64_t sub_10077482C(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = *(a1 + 40);
  do
  {
    v23 = 0;
    v24 = 0;
    v6 = sub_100774B5C(v4);
    sub_10004F9C8(v6, &v24, &v23);
    [*(v5 + 136) doubleForKey:v24 atKeyPath:a2 defaultValue:-1.0];
    v8 = v7;
    result = [*(v5 + 136) doubleForKey:v23 atKeyPath:a2 defaultValue:-1.0];
    if (v8 != -1.0)
    {
      v11 = v10;
      if (v10 == -1.0 || v10 < v8)
      {
        if (v4)
        {
          [objc_msgSend(objc_msgSend(*(v5 + 32) "vendor")];
        }

        else
        {
          result = [*(a1 + 32) syncgetHasMonitoredRegions:{objc_msgSend(a2, "legacyClientKey")}];
          if (result)
          {
            goto LABEL_17;
          }
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v14 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = off_10246FCA0[sub_100774B5C(v4)];
          *buf = 136447234;
          v36 = v15;
          v37 = 2050;
          v38 = v8;
          v39 = 2050;
          v40 = v11;
          v41 = 2114;
          v42 = a2;
          v43 = 2050;
          v44 = Current;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#warning %{public}s region time started exists (%{public}.2f), but time stopped (%{public}.2f) doesn't exist or is earlier for %{public}@ - setting to %{public}.2f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v18 = off_1025D47A8;
          v19 = off_10246FCA0[sub_100774B5C(v4)];
          v25 = 136447234;
          v26 = v19;
          v27 = 2050;
          v28 = v8;
          v29 = 2050;
          v30 = v11;
          v31 = 2114;
          v32 = a2;
          v33 = 2050;
          v34 = Current;
          LODWORD(v22) = 52;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v18, 0, "#warning %{public}s region time started exists (%{public}.2f), but time stopped (%{public}.2f) doesn't exist or is earlier for %{public}@ - setting to %{public}.2f", &v25, v22);
          v21 = v20;
          sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::checkRegionsStopped()_block_invoke", "%s\n", v20);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        v16 = sub_100774B5C(v4);
        v17 = CFAbsoluteTimeGetCurrent();
        result = sub_10002FE04(v5, v17, a2, v16, 0, 0, 0);
      }
    }

LABEL_17:
    ++v4;
  }

  while (v4 != 4);
  return result;
}

uint64_t sub_100774B5C(unsigned int a1)
{
  if (a1 >= 4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "kCLClientServiceMax != service";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v3 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "kCLClientServiceMax != service";
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "kCLClientServiceMax != service";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager_Unified.mm", 294, "serviceForRegion");
  }

  return qword_101C8D908[a1];
}

void sub_100774D9C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v2 = *(a1 + 136);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100774E6C;
  v3[3] = &unk_10246FD90;
  v3[4] = &v4;
  v3[5] = a1;
  [v2 iterateAllAnchorKeyPathsWithBlock:v3];
  if (v5[6] >= 1)
  {
    sub_1001D2F14(a1);
  }

  _Block_object_dispose(&v4, 8);
}

void sub_100774E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100774E6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  result = [*(v4 + 136) hasValueForKey:@"RangeTimeStarted" atKeyPath:a2];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 68289282;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = [a2 legacyClientKey];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:stop range for client, client:%{public, location:escape_only}@}", v7, 0x1Cu);
    }

    [*(v4 + 136) removeValueForKey:@"RangeTimeStarted" atKeyPath:a2];
    result = [*(v4 + 136) setDouble:@"RangeTimeStopped" forKey:a2 atKeyPath:CFAbsoluteTimeGetCurrent()];
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t sub_100774FC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1007744DC(v3, a2, 0xBuLL);

  return sub_1007744DC(v3, a2, 3uLL);
}

void sub_100775014(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = sub_100033370(a1, a2);
  v10 = sub_10004FEC8(a1, v9, &xmmword_101CE6CD8);
  if ([(CLClientManagerAuthorizationContext *)v10 isAuthorizedForServiceTypeMask:4112])
  {
    if ([*(a1 + 120) locationRestricted])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v9;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#transcriptSession skip prompting. Restrictions enabled, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v36 = NSDebugDescriptionErrorKey;
      v37 = @"Restrictions are enabled.  Changing authorization isn't allowed";
      (*(a5 + 16))(a5, 0, [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:[NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1]]);
    }

    else if (*(a1 + 272))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 272);
        v15 = *(v14 + 1);
        v16 = *v14;
        *buf = 68289794;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v9;
        v32 = 2114;
        v33 = v15;
        v34 = 2050;
        v35 = v16;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#transcriptSession skip prompting. InflightPromptAuthorizationRequest found., Client:%{public, location:escape_only}@, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x30u);
      }

      v24 = NSDebugDescriptionErrorKey;
      v25 = @"App is already presenting the user with an authorization prompt";
      (*(a5 + 16))(a5, 0, [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:[NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1]]);
    }

    else
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1007755BC;
      v23[3] = &unk_10246FDB8;
      v23[4] = a5;
      sub_10000EC00(__p, "");
      sub_10023C2AC(v22, a4, v9, v23, __p);
      v17 = sub_1007755CC(a1, v9, 0, v22, a3);
      sub_10023DF30(v22);
      if (v21 < 0)
      {
        operator delete(__p[0]);
        if (v17)
        {
          return;
        }
      }

      else if (v17)
      {
        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v9;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Could not post #transcriptSession, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v19 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2114;
        v31 = v9;
        _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning Could not post #transcriptSession", "{msg%{public}.0s:#Warning Could not post #transcriptSession, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2114;
      v31 = v9;
      v32 = 1026;
      LODWORD(v33) = [(CLClientManagerAuthorizationContext *)v10 registrationResult];
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#transcriptSession #Warning skip prompting .No point in prompting if the user doesn't want them to get access to precise current location , Client:%{public, location:escape_only}@, RegistrationResult:%{public}d}", buf, 0x22u);
    }

    v38 = NSDebugDescriptionErrorKey;
    v39 = @"Registration Result should be WIU or Always to enable Transcript Session";
    (*(a5 + 16))(a5, 0, [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:[NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1]]);
  }
}

void sub_100775588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10023DF30(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007755CC(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5)
{
  if (!sub_10001CF3C())
  {
    v12 = sub_1000184F4(a1, a2);
    v13 = sub_100033370(a1, v12);
    sub_1000F7D18(a1, v13, 1);
    if (&SBUserNotificationPendInSetupIfNotAllowedKey)
    {
      v14 = &SBUserNotificationHideOnClonedDisplay == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || &SBUserNotificationDismissOnLock == 0 || &SBUserNotificationDefaultButtonTag == 0 || &SBUserNotificationExtensionIdentifierKey == 0 || &SBUserNotificationExtensionItemsKey == 0)
    {
      return 0;
    }

    v19 = *a4;
    v20 = sub_100783B48(a1, v12, a3);
    if (v20)
    {
      v21 = v20;
      v214 = v19;
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v22 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v12;
        v220 = 1026;
        LODWORD(v221) = v19;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CUN Creating client user notification for client, Client:%{public, location:escape_only}@, requestType:%{public}d}", buf, 0x22u);
      }

      v213 = [NSMutableDictionary dictionaryWithDictionary:a5];
      if (*(a4 + 39) < 0)
      {
        sub_100007244(buf, *(a4 + 2), *(a4 + 3));
      }

      else
      {
        *buf = *(a4 + 1);
        *&buf[16] = *(a4 + 4);
      }

      if (buf[23] >= 0)
      {
        v27 = buf;
      }

      else
      {
        v27 = *buf;
      }

      v28 = [NSString stringWithUTF8String:v27];
      v209 = v28;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      errorPtr = 0;
      v30 = sub_10001A3E8(v28, v29);
      if (sub_10001CF04(v30, v31))
      {
        v32 = sub_100055734([v12 bundleId]);
        v33 = CFBundleCreate(kCFAllocatorDefault, v32);
        v35 = v33;
        if (v33)
        {
          v36 = sub_100056238(v33, v34);
          v37 = sub_100055A24(v36, v35, @"NSLocationUsageDescriptionCarplay", 0);
          CFRelease(v35);
          if (v37)
          {
            CFRelease(v37);
          }
        }
      }

      v38 = _os_feature_enabled_impl();
      v40 = v38;
      if (v38)
      {
        v38 = [*(a1 + 136) BOOLForKey:@"AuthorizationPromptOptionTypeNegative" atKeyPath:v12 defaultValue:0];
        v41 = v38;
      }

      else
      {
        v41 = 0;
      }

      v42 = 0;
      v43 = 0;
      switch(v19)
      {
        case 0:
        case 10:
        case 15:
        case 17:
          goto LABEL_53;
        case 1:
        case 3:
          v205 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationTemporaryPreciseAuthPromptPlugin"];
          v68 = sub_100056238(v205, v67);
          format = sub_1007CB2E4(v68, @"LOCATION_CLIENT_PERMISSION_PLAIN_WHEN_IN_USE_TITLE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v70 = sub_100056238(value, v69);
          v71 = @"LOCATION_CLIENT_PERMISSION_WHENINUSE_BUTTON";
          if (v40)
          {
            v72 = @"LOCATION_CLIENT_PERMISSION_WHENINUSE_BUTTON";
          }

          else
          {
            v72 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
          }

          if (v40)
          {
            v71 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
            v73 = @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON";
          }

          else
          {
            v73 = @"LOCATION_CLIENT_PERMISSION_NEVER_BUTTON";
          }

          if (v41)
          {
            v74 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
          }

          else
          {
            v74 = v72;
          }

          if (v41)
          {
            v75 = @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON";
          }

          else
          {
            v75 = v71;
          }

          if (v41)
          {
            v76 = @"LOCATION_CLIENT_PERMISSION_NEVER_BUTTON";
          }

          else
          {
            v76 = v73;
          }

          v43 = sub_1007CB2E4(v70, v74);
          v78 = sub_100056238(v43, v77);
          cf = sub_1007CB2E4(v78, v75);
          v80 = sub_100056238(cf, v79);
          v81 = sub_1007CB2E4(v80, v76);
          v82 = sub_1007841C0(a1, v12);
          if (v82)
          {
            v208 = sub_100784288(a1, v12, v82, 1, 0, v209);
            CFRelease(v82);
            v42 = 0;
            goto LABEL_131;
          }

          if (qword_1025D4790 != -1)
          {
            sub_10192DAA4();
          }

          v151 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289282;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v12;
            _os_log_impl(dword_100000000, v151, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1025D4790 != -1)
            {
              sub_10192DAA4();
            }
          }

          v24 = qword_1025D4798;
          result = os_signpost_enabled(qword_1025D4798);
          if (result)
          {
            goto LABEL_238;
          }

          return result;
        case 2:
        case 4:
        case 5:
          v44 = sub_100056238(v38, v39);
          v45 = @"LOCATION_CLIENT_PERMISSION_WHENINUSE_BUTTON";
          if (!v40)
          {
            v45 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
          }

          if (v41)
          {
            v46 = @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON";
          }

          else
          {
            v46 = v45;
          }

          v43 = sub_1007CB2E4(v44, v46);
          v48 = sub_100056238(v43, v47);
          v49 = [(NSMutableDictionary *)v213 setObject:sub_1007CB2E4(v48 forKeyedSubscript:@"PRECISE_ON_PILL_BUTTON_TITLE"), @"PreciseButtonOnTitle"];
          v51 = sub_100056238(v49, v50);
          v52 = [(NSMutableDictionary *)v213 setObject:sub_1007CB2E4(v51 forKeyedSubscript:@"PRECISE_OFF_PILL_BUTTON_TITLE"), @"PreciseButtonOffTitle"];
          v54 = sub_100056238(v52, v53);
          [(NSMutableDictionary *)v213 setObject:sub_1007CB2E4(v54 forKeyedSubscript:@"ONLY_HERE_PILL_BUTTON_TITLE"), @"OnlyHereTitle"];
          v42 = 1;
          goto LABEL_60;
        case 6:
          v205 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationRepromptAlwaysAuthPromptPlugin"];
          v109 = [-[NSMutableDictionary objectForKey:](v213 objectForKey:{@"LocationCount", "unsignedLongValue"}];
          v111 = sub_100056238(v109, v110);
          if (v109)
          {
            format = sub_1007CB2E8(v111, @"LOCATION_CLIENT_PERMISSION_REPROMPT_OTHER");
            v112 = CFPreferencesCopyValue(@"AppleLanguages", @".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
            ValueAtIndex = CFArrayGetValueAtIndex(v112, 0);
            alloc = kCFAllocatorDefault;
            v114 = CFLocaleCreate(kCFAllocatorDefault, ValueAtIndex);
            v115 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, v114, @"%lu %@", format, &errorPtr, v109, v21);
          }

          else
          {
            format = sub_1007CB2E8(v111, @"LOCATION_REPROMPT_ALWAYS_TITLE");
            alloc = kCFAllocatorDefault;
            v115 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          }

          value = v115;
          v155 = sub_100056238(v115, v116);
          v43 = sub_1007CB2E4(v155, @"LOCATION_CLIENT_PERMISSION_WHENINUSE_ONLY_BUTTON");
          v157 = sub_100056238(v43, v156);
          cf = sub_1007CB2E4(v157, @"LOCATION_CLIENT_PERMISSION_KEEP_ALWAYS_BUTTON");
          v208 = sub_100783DEC(a1, v12);
          goto LABEL_148;
        case 7:
        case 8:
          v83 = sub_100056238(v38, v39);
          format = sub_1007CB2E4(v83, @"LOCATION_CLIENT_PERMISSION_UPGRADE_WHENINUSE_ALWAYS");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v85 = sub_100056238(value, v84);
          v43 = sub_1007CB2E4(v85, @"LOCATION_CLIENT_PERMISSION_KEEP_WHENINUSE_BUTTON");
          v87 = sub_100056238(v43, v86);
          cf = sub_1007CB2E4(v87, @"LOCATION_CLIENT_PERMISSION_ALWAYS_BUTTON");
          v208 = sub_100783DEC(a1, v12);
          goto LABEL_111;
        case 9:
          v205 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationTemporaryPreciseAuthPromptPlugin"];
          v97 = sub_100056238(v205, v96);
          format = sub_1007CB2E4(v97, @"LOCATION_CLIENT_PERMISSION_TEMPORARY_PRECISE_TITLE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v99 = sub_100056238(value, v98);
          v43 = sub_1007CB2E4(v99, @"LOCATION_CLIENT_PERMISSION_TEMPORARY_PRECISE_NO_BUTTON");
          v101 = sub_100056238(v43, v100);
          cf = sub_1007CB2E4(v101, @"LOCATION_CLIENT_PERMISSION_TEMPORARY_PRECISE_YES_BUTTON");
          v208 = [-[NSMutableDictionary objectForKey:](v213 objectForKey:{@"UsageDescription", "copy"}];
          if (v208 || !v209)
          {
            goto LABEL_100;
          }

          v102 = sub_1007841C0(a1, v12);
          v103 = v102;
          if (v102)
          {
            CFAutorelease(v102);
            v104 = [(__CFDictionary *)CFBundleGetInfoDictionary(v103) objectForKeyedSubscript:@"NSLocationTemporaryUsageDescriptionDictionary"];
            if (!v104)
            {
              sub_10023D820(a4, [NSString stringWithFormat:@"Info.plist is missing the %@ key", @"NSLocationTemporaryUsageDescriptionDictionary"]);
              return 0;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_10023D820(a4, [NSString stringWithFormat:@"Info.plist value for %@ key is not a dictionary", @"NSLocationTemporaryUsageDescriptionDictionary"]);
              return 0;
            }

            v105 = [v104 objectForKeyedSubscript:v209];
            if (!v105)
            {
              sub_10023D820(a4, @"The purposeKey provided isn't present in the app's Info.plist dictionary of temporary usage descriptions");
              return 0;
            }

            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if ((isKindOfClass & 1) == 0)
            {
              sub_10023D820(a4, @"The purposeKey provided names an entry in Info.plist which isn't a string");
              return 0;
            }

            v108 = sub_100056238(isKindOfClass, v107);
            v208 = sub_100055A24(v108, v103, v209, 1);
            if (!v208)
            {
              v208 = [v105 copy];
            }

LABEL_100:
            [(NSMutableDictionary *)v213 setObject:@"UserLocationIsPrecise" forKeyedSubscript:@"UserLocationIsPrecise"];
            goto LABEL_148;
          }

          if (qword_1025D4790 != -1)
          {
            sub_10192DAA4();
          }

          v203 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289282;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v12;
            _os_log_impl(dword_100000000, v203, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1025D4790 != -1)
            {
              sub_10192DAA4();
            }
          }

          v24 = qword_1025D4798;
          result = os_signpost_enabled(qword_1025D4798);
          if (!result)
          {
            return result;
          }

          goto LABEL_238;
        case 11:
LABEL_60:
          v205 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationVanillaWhenInUseAuthPromptPlugin"];
          v56 = sub_100056238(v205, v55);
          format = sub_1007CB2E4(v56, @"LOCATION_CLIENT_PERMISSION_WHENINUSE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v57 = [*(a1 + 136) BOOLForKey:@"IsAppClip" atKeyPath:v12 defaultValue:0];
          if (v57)
          {
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v59 = off_1025D47A8;
            v60 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
            if (v60)
            {
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v12;
              _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Client is #appclip, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
            }

            v62 = sub_100056238(v60, v61);
            v63 = sub_1007CB2E4(v62, @"LOCATION_CLIENT_PERMISSION_WHENINUSE_UNTIL_TOMORROW_BUTTON");
            cf = v63;
            v65 = v41 | v40;
            if (v41)
            {
              v66 = @"LOCATION_CLIENT_PERMISSION_NEVER_BUTTON";
            }

            else
            {
              v66 = @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON";
            }

            if (v65)
            {
LABEL_129:
              v152 = sub_100056238(v63, v64);
              v81 = sub_1007CB2E4(v152, v66);
              v153 = sub_1007841C0(a1, v12);
              if (v153)
              {
                v208 = sub_100784288(a1, v12, v153, 1, 0, v209);
                CFRelease(v153);
LABEL_131:
                *(a4 + 4) = v41;
LABEL_149:
                v127 = value;
                if (errorPtr)
                {
                  if (qword_1025D47A0 != -1)
                  {
                    sub_10192D4D0();
                  }

                  v174 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                  {
                    v175 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
                    *buf = 68289538;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v12;
                    v220 = 2082;
                    v221 = v175;
                    _os_log_impl(dword_100000000, v174, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Error, couldn't create prompt for client due to error returned by CFStringCreateStringWithValidatedFormat., Client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
                    if (qword_1025D47A0 != -1)
                    {
                      sub_10192D4D0();
                    }
                  }

                  v176 = off_1025D47A8;
                  if (os_signpost_enabled(off_1025D47A8))
                  {
                    v177 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
                    *buf = 68289538;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v12;
                    v220 = 2082;
                    v221 = v177;
                    _os_signpost_emit_with_name_impl(dword_100000000, v176, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Error, couldn't create prompt for client due to error returned by CFStringCreateStringWithValidatedFormat.", "{msg%{public}.0s:#Error, couldn't create prompt for client due to error returned by CFStringCreateStringWithValidatedFormat., Client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
                  }

                  return 0;
                }

                v126 = 32;
                if (v208)
                {
                  v210 = 32;
                  v204 = 0;
                }

                else
                {
LABEL_162:
                  value = v127;
                  v210 = v126;
                  if (qword_1025D47A0 != -1)
                  {
                    sub_10192D4D0();
                  }

                  v178 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289538;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v12;
                    v220 = 1026;
                    LODWORD(v221) = v214;
                    _os_log_impl(dword_100000000, v178, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning, unable to copy purpose string from client, Client:%{public, location:escape_only}@, requestType:%{public}d}", buf, 0x22u);
                  }

                  if ([-[NSMutableDictionary objectForKeyedSubscript:](v213 objectForKeyedSubscript:{@"isAutoPrompting", "BOOLValue"}])
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_10192D4D0();
                    }

                    v179 = off_1025D47A8;
                    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
                    if (result)
                    {
                      *buf = 68289538;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v12;
                      v220 = 1026;
                      LODWORD(v221) = v214;
                      _os_log_impl(dword_100000000, v179, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #autoPrompt fail to createAndPostClientUserNotification - purpose(UsageDescription) is NULL, Client:%{public, location:escape_only}@, requestType:%{public}d}", buf, 0x22u);
                      return 0;
                    }

                    return result;
                  }

                  v208 = 0;
                  alloc = kCFAllocatorDefault;
                  v204 = 1;
                }

                Mutable = CFDictionaryCreateMutable(alloc, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                CFDictionarySetValue(Mutable, SBUserNotificationPendInSetupIfNotAllowedKey, kCFBooleanTrue);
                if ((*(a1 + 232) & 1) == 0)
                {
                  CFDictionarySetValue(Mutable, SBUserNotificationHideOnClonedDisplay, kCFBooleanTrue);
                }

                if (value)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, value);
                  CFRelease(value);
                }

                v182 = format;
                if (format)
                {
                  CFRelease(format);
                }

                if (v43)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationAlternateButtonTitleKey, v43);
                  CFRelease(v43);
                }

                if (cf)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationOtherButtonTitleKey, cf);
                  CFRelease(cf);
                }

                if (v81)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v81);
                  CFRelease(v81);
                }

                if (v214 <= 0x13)
                {
                  if (((1 << v214) & 0xFEEBF) == 0)
                  {
                    if (((1 << v214) & 0x1100) == 0)
                    {
                      CFDictionarySetValue(Mutable, SBUserNotificationDismissOnLock, kCFBooleanTrue);
                    }

                    CFDictionarySetValue(Mutable, SBUserNotificationAllowedApplicationsKey, &off_1025543C0);
                    goto LABEL_204;
                  }

                  v183 = sub_10001A3E8(v182, v181);
                  if (!sub_10003FFF8(v183, v184) || ([objc_msgSend(v12 "clientAnchor")] & 1) == 0)
                  {
                    if (a3)
                    {
                      if (sub_10076CC80(v12))
                      {
                        CFDictionarySetValue(Mutable, kCFUserNotificationAlertTopMostKey, &__kCFBooleanTrue);
                        CFDictionarySetValue(Mutable, SBUserNotificationForcesModalAlertAppearance, &__kCFBooleanTrue);
                        CFDictionarySetValue(Mutable, SBUserNotificationDisplayActionButtonOnLockScreen, &__kCFBooleanTrue);
                      }
                    }

                    else if ([v12 bundleId] && (objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v213, "objectForKeyedSubscript:", @"IsWebClip"), "BOOLValue") & 1) == 0)
                    {
                      v218 = [v12 bundleId];
                      v185 = [NSArray arrayWithObjects:&v218 count:1];
                      CFDictionarySetValue(Mutable, SBUserNotificationAllowedApplicationsKey, v185);
                    }
                  }
                }

                if ((v214 - 13) <= 1)
                {
                  CFDictionarySetValue(Mutable, SBUserNotificationAllowInSetupKey, &__kCFBooleanTrue);
                  if (qword_1025D47A0 != -1)
                  {
                    sub_10192D4D0();
                  }

                  v186 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v186, OS_LOG_TYPE_INFO, "#CUN LocationButton prompt allowed during buddy-setup", buf, 2u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_10192E520();
                  }
                }

LABEL_204:
                CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:v210]);
                CFDictionarySetValue(Mutable, SBUserNotificationButtonLayoutDirectionKey, [NSNumber numberWithInt:1]);
                if ((v42 & _os_feature_enabled_impl()) == 1)
                {
                  [(NSMutableDictionary *)v213 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CLAuthPromptShowOnlyHerePill"];
                }

                if (v205 && sub_1004E87D0())
                {
                  v187 = +[NSExtensionItem extensionItemForDict:withName:withPayload:](NSExtensionItem, "extensionItemForDict:withName:withPayload:", [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v12), "dictionary"}], v21, v213);
                  v215 = 0;
                  v217 = v187;
                  v188 = [NSKeyedArchiver archivedDataWithRootObject:[NSArray arrayWithObjects:&v217 count:1] requiringSecureCoding:1 error:&v215];
                  if (v215)
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_10192D4D0();
                    }

                    v189 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
                    {
                      *buf = 68289283;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2113;
                      *&buf[20] = v215;
                      _os_log_impl(dword_100000000, v189, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed archiving extension item, error:%{private, location:escape_only}@}", buf, 0x1Cu);
                    }
                  }

                  else
                  {
                    v190 = v188;
                    CFDictionarySetValue(Mutable, SBUserNotificationExtensionIdentifierKey, v205);
                    CFDictionarySetValue(Mutable, SBUserNotificationExtensionItemsKey, v190);
                  }
                }

                if ((v204 & 1) == 0)
                {
                  CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v208);
                  CFRelease(v208);
                }

                CFRelease(v21);
                v193 = sub_10001A3E8(v191, v192);
                v195 = sub_10001CF04(v193, v194);
                if ((v195 & 1) != 0 || (v197 = sub_10001A3E8(v195, v196), sub_10003FFF8(v197, v198)))
                {
                  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
                  {
                    v199 = TCCCopyIconResourcePathForService();
                    if (v199)
                    {
                      CFDictionarySetValue(Mutable, SBUserNotificationHeaderImagePath, v199);
                      if (qword_1025D47A0 != -1)
                      {
                        sub_10192D4D0();
                      }

                      v200 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 68289538;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2050;
                        *&buf[20] = v214;
                        v220 = 2114;
                        v221 = v199;
                        _os_log_impl(dword_100000000, v200, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Will use the icon in the prompt, promptType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, iconPath:%{public, location:escape_only}@}", buf, 0x26u);
                      }

                      CFRelease(v199);
                    }

                    else
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_10192D4D0();
                      }

                      v201 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 68289282;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2050;
                        *&buf[20] = v214;
                        _os_log_impl(dword_100000000, v201, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Unable to get the icon for prompt, promptType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x1Cu);
                      }
                    }
                  }
                }

                [*(a1 + 40) currentLatchedAbsoluteTimestamp];
                result = sub_10078364C(v12, a4, Mutable, v202);
                if (result)
                {
                  sub_100783A10();
                }

                return result;
              }

              if (qword_1025D4790 != -1)
              {
                sub_10192DAA4();
              }

              v154 = qword_1025D4798;
              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
              {
                *buf = 68289282;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2114;
                *&buf[20] = v12;
                _os_log_impl(dword_100000000, v154, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
                if (qword_1025D4790 != -1)
                {
                  sub_10192DAA4();
                }
              }

              v24 = qword_1025D4798;
              result = os_signpost_enabled(qword_1025D4798);
              if (!result)
              {
                return result;
              }

LABEL_238:
              *buf = 68289282;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2114;
              *&buf[20] = v12;
              v25 = "#AuthPrompt couldn't get bundle for client";
              v26 = "{msg%{public}.0s:#AuthPrompt couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}";
LABEL_38:
              _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v25, v26, buf, 0x1Cu);
              return 0;
            }
          }

          else
          {
            v88 = sub_100056238(v57, v58);
            if (v41)
            {
              v63 = sub_1007CB2E4(v88, @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON");
              cf = v63;
            }

            else
            {
              if (v40)
              {
                v63 = sub_1007CB2E4(v88, @"LOCATION_CLIENT_PERMISSION_ONETIME_BUTTON");
                cf = v63;
                v66 = @"LOCATION_CLIENT_PERMISSION_NOT_THIS_TIME_BUTTON";
                goto LABEL_129;
              }

              v63 = sub_1007CB2E4(v88, @"LOCATION_CLIENT_PERMISSION_WHENINUSE_BUTTON");
              cf = v63;
            }
          }

          v66 = @"LOCATION_CLIENT_PERMISSION_NEVER_BUTTON";
          goto LABEL_129;
        case 12:
          v130 = sub_100056238(v38, v39);
          format = sub_1007CB2E4(v130, @"LOCATION_CLIENT_PERMISSION_INCIDENTAL_USE_MODE_TITLE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v132 = sub_100056238(value, v131);
          v43 = sub_1007CB2E4(v132, @"LOCATION_CLIENT_PERMISSION_INCIDENTAL_USE_MODE_NO_BUTTON");
          v134 = sub_100056238(v43, v133);
          cf = sub_1007CB2E4(v134, @"LOCATION_CLIENT_PERMISSION_INCIDENTAL_USE_MODE_YES_BUTTON");
          v136 = sub_100056238(cf, v135);
          v208 = sub_1007CB2E4(v136, @"LOCATION_CLIENT_PERMISSION_INCIDENTAL_USE_MODE_PURPOSE");
LABEL_111:
          v42 = 0;
          v81 = 0;
          v205 = 0;
          goto LABEL_149;
        case 13:
          v89 = sub_100056238(v38, v39);
          format = sub_1007CB2E4(v89, @"LOCATION_CLIENT_PERMISSION_PLAIN_TITLE_FOR_LOCATION_BUTTONS");
          v91 = sub_100056238(format, v90);
          v208 = sub_1007CB2E4(v91, @"LOCATION_CLIENT_PERMISSION_EXPLANATION_FOR_LOCATION_BUTTONS");
          v93 = sub_100056238(v208, v92);
          v43 = sub_1007CB2E4(v93, @"LOCATION_CLIENT_PERMISSION_DENY_LOCATION_BUTTONS");
          v95 = sub_100056238(v43, v94);
          cf = sub_1007CB2E4(v95, @"LOCATION_CLIENT_PERMISSION_ALLOW_LOCATION_BUTTONS");
          v205 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationTemporaryPreciseAuthPromptPlugin"];
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          goto LABEL_148;
        case 14:
          v139 = sub_100056238(v38, v39);
          format = sub_1007CB2E4(v139, @"LOCATION_CLIENT_PERMISSION_TITLE_FOR_LOCATION_BUTTONS");
          v141 = sub_100056238(format, v140);
          v208 = sub_1007CB2E4(v141, @"LOCATION_CLIENT_PERMISSION_EXPLANATION_FOR_LOCATION_BUTTONS");
          v143 = sub_100056238(v208, v142);
          v43 = sub_1007CB2E4(v143, @"LOCATION_CLIENT_PERMISSION_DENY_LOCATION_BUTTONS");
          v145 = sub_100056238(v43, v144);
          cf = sub_1007CB2E4(v145, @"LOCATION_CLIENT_PERMISSION_ALLOW_LOCATION_BUTTONS");
          v147 = sub_100056238(cf, v146);
          v148 = [(NSMutableDictionary *)v213 setObject:sub_1007CB2E4(v147 forKeyedSubscript:@"PRECISE_ON_PILL_BUTTON_TITLE"), @"PreciseButtonOnTitle"];
          v150 = sub_100056238(v148, v149);
          [(NSMutableDictionary *)v213 setObject:sub_1007CB2E4(v150 forKeyedSubscript:@"PRECISE_OFF_PILL_BUTTON_TITLE"), @"PreciseButtonOffTitle"];
          v205 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationVanillaWhenInUseAuthPromptPlugin"];
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          goto LABEL_148;
        case 16:
          v205 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationRepromptAlwaysAuthPromptPlugin"];
          v118 = sub_100056238(v205, v117);
          format = sub_1007CB2E8(v118, @"LOCATION_CLIENT_TRANSCRIPT_TITLE");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v119 = [-[NSMutableDictionary objectForKey:](v213 objectForKey:{@"UsageDescription", "copy"}];
          v208 = v119;
          if (!v119)
          {
            v121 = sub_100056238(0, v120);
            v122 = sub_1007CB2E8(v121, @"LOCATION_CLIENT_TRANSCRIPT_USAGE_DESCRIPTION");
            v208 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v122, &errorPtr, v21);
            CFRelease(v122);
          }

          v123 = sub_100056238(v119, v120);
          v43 = sub_1007CB2E4(v123, @"LOCATION_CLIENT_TRANSCRIPT_YES_BUTTON");
          v125 = sub_100056238(v43, v124);
          cf = sub_1007CB2E4(v125, @"LOCATION_CLIENT_TRANSCRIPT_NO_BUTTON");
          goto LABEL_148;
        case 18:
          if (!_os_feature_enabled_impl())
          {
            goto LABEL_53;
          }

          v128 = sub_1004E87D0();
          if (v128)
          {
            v128 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationLearnedRouteAuthPromptPlugin"];
            v205 = v128;
          }

          else
          {
            v205 = 0;
          }

          v158 = sub_100056238(v128, v129);
          format = sub_1007CB2E4(v158, @"LOCATION_CLIENT_PERMISSION_TITLE_FOR_LEARNED_ROUTES_BUTTONS");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v160 = sub_100056238(value, v159);
          v208 = sub_1007CB2E4(v160, @"LOCATION_CLIENT_PERMISSION_LEARNED_ROUTES_USAGE_DESCRIPTION");
          v162 = sub_100056238(v208, v161);
          v43 = sub_1007CB2E4(v162, @"LOCATION_CLIENT_PERMISSION_DENY_LEARNED_ROUTES_BUTTON");
          v164 = sub_100056238(v43, v163);
          cf = sub_1007CB2E4(v164, @"LOCATION_CLIENT_PERMISSION_ALLOW_LEARNED_ROUTES_BUTTON");
          goto LABEL_148;
        case 19:
          if (!_os_feature_enabled_impl())
          {
LABEL_53:
            CFRelease(v21);
            return 0;
          }

          v137 = sub_1004E87D0();
          if (v137)
          {
            v137 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationVisitHistoryAuthPromptPlugin"];
            v205 = v137;
          }

          else
          {
            v205 = 0;
          }

          v165 = sub_100056238(v137, v138);
          format = sub_1007CB2E4(v165, @"LOCATION_CLIENT_PERMISSION_TITLE_FOR_VISIT_HISTORY_BUTTONS");
          alloc = kCFAllocatorDefault;
          value = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, &errorPtr, v21);
          v167 = sub_100056238(value, v166);
          v168 = sub_1007CB2E4(v167, @"LOCATION_CLIENT_PERMISSION_VISIT_HISTORY_USAGE_DESCRIPTION");
          v170 = v168;
          if (v168)
          {
            v208 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v168, &errorPtr, v21);
            CFRelease(v170);
          }

          else
          {
            v208 = 0;
          }

          v171 = sub_100056238(v168, v169);
          v43 = sub_1007CB2E4(v171, @"LOCATION_CLIENT_PERMISSION_DENY_VISIT_HISTORY_BUTTON");
          v173 = sub_100056238(v43, v172);
          cf = sub_1007CB2E4(v173, @"LOCATION_CLIENT_PERMISSION_ALLOW_VISIT_HISTORY_BUTTON");
LABEL_148:
          v42 = 0;
          v81 = 0;
          goto LABEL_149;
        default:
          v42 = 0;
          v126 = 0;
          v81 = 0;
          v43 = 0;
          cf = 0;
          v205 = 0;
          format = 0;
          v127 = 0;
          goto LABEL_162;
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v23 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v12;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:createClientUserNotification: BundleDisplayName nil, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v24 = off_1025D47A8;
    result = os_signpost_enabled(off_1025D47A8);
    if (!result)
    {
      return result;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = v12;
    v25 = "createClientUserNotification: BundleDisplayName nil";
    v26 = "{msg%{public}.0s:createClientUserNotification: BundleDisplayName nil, Client:%{public, location:escape_only}@}";
    goto LABEL_38;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Pinning per-app prompts are not allowed when LocationPinning is enabled.", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10192E604();
    return 0;
  }

  return result;
}

void sub_100777308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077732C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v3 isValidCKP])
  {
    if (v3)
    {
      objc_msgSend_cppClientKey(v3);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
    }

    v4 = sub_1005D7C24((a1 + 1000), __p);
    v5 = v4;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
      if (!v5)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    for (i = v5[7]; i; i = *i)
    {
      v7 = i[4];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = i[3];
          if (v10)
          {
            sub_1006E68CC(v10);
          }

          sub_100008080(v9);
        }
      }
    }

    sub_100546628((a1 + 1000), v5, __p);
    sub_100061108(__p);
  }
}

void sub_10077740C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100777438(uint64_t a1)
{
  for (i = *(a1 + 1016); i; i = *i)
  {
    for (j = i[7]; j; j = *j)
    {
      v4 = j[4];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = j[3];
          if (v7)
          {
            sub_1006E68CC(v7);
          }

          sub_100008080(v6);
        }
      }
    }
  }

  sub_1007AD694(a1 + 1000);
}

void sub_1007774D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (![objc_msgSend(*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientKey:](CLClientKeyPath, "clientKeyPathWithClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v4))), "isValidCKP"}])
  {
    return;
  }

  v5 = sub_1005D7C24((a1 + 1000), a2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = sub_1007AD734(v5 + 5, (a2 + 48));
  if (v7)
  {
    v8 = v7;
    v9 = v7[4];
    if (v9)
    {
      v10 = v7[3];
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v11 = std::__shared_weak_count::lock(v9);
      if (v11)
      {
        v12 = v11;
        if (v10)
        {
          sub_100008080(v11);

          std::__shared_weak_count::__release_weak(v9);
          return;
        }

        sub_1007AD848(v6 + 5, v8);
        sub_100008080(v12);
      }

      else
      {
        sub_1007AD848(v6 + 5, v8);
      }

      std::__shared_weak_count::__release_weak(v9);
    }

    else
    {
      sub_1007AD848(v6 + 5, v7);
    }
  }

  if (!v6[8])
  {
    sub_100546628((a1 + 1000), v6, v13);
    sub_100061108(v13);
  }
}

uint64_t sub_100777634(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = sub_100774B5C(a3);
  Current = CFAbsoluteTimeGetCurrent();

  return sub_10002FE04(a1, Current, a2, v7, a4, 0, 0);
}

uint64_t sub_10077769C(uint64_t a1, uint64_t a2, int a3)
{
  Current = CFAbsoluteTimeGetCurrent();

  return sub_10002FE04(a1, Current, a2, 6uLL, a3, 0, 0);
}

void sub_1007776F8(id *a1, uint64_t a2, double *a3)
{
  v6 = [a1[17] registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    [a1[17] setDouble:@"TimeMissing" forKey:v6 atKeyPath:*a3];
    v7 = sub_100018FC8(a1, v6, &xmmword_101CE6CD8);

    sub_100033CDC(a1, v6, v7);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:How can an app be missing if we don't have an entry for it?, Client:%{public, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v9 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "How can an app be missing if we don't have an entry for it?", "{msg%{public}.0s:How can an app be missing if we don't have an entry for it?, Client:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }
  }
}

id sub_1007778FC(id *a1, uint64_t a2)
{
  v3 = [a1[17] registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    [a1[17] removeValueForKey:@"TimeMissing" atKeyPath:v3];
    v5 = sub_100018FC8(a1, v3, &xmmword_101CE6CD8);

    return sub_100033CDC(a1, v3, v5);
  }

  return result;
}

id sub_100777988(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    v5 = *(a1 + 136);

    return [v5 intForKey:@"PromptedSettings" atKeyPath:v3 defaultValue:0];
  }

  return result;
}

id sub_1007779F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  [*(a1 + 136) setInt:objc_msgSend(*(a1 + 136) forKey:"intForKey:atKeyPath:defaultValue:" atKeyPath:{@"PromptedSettings", v3, 0) + 1, @"PromptedSettings", v3}];
  [*(a1 + 136) persist];
  v4 = *(a1 + 136);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000352CC;
  v6[3] = &unk_10246FEF8;
  v6[4] = v3;
  v6[5] = a1;
  return [v4 iterateIdentitiesRelatedToKeyPath:v3 withBlock:v6];
}

void sub_100777AC4(uint64_t a1, char *a2, int a3, uint64_t *a4)
{
  v8 = _os_activity_create(dword_100000000, "CL: #ClearClient", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v23);

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a4;
    if (*(a4 + 23) < 0)
    {
      v10 = *a4;
    }

    *buf = 68290050;
    *&buf[4] = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "activity";
    v29 = 2114;
    v30 = a2;
    v31 = 1026;
    v32 = a3;
    v33 = 2082;
    v34 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient, event:%{public, location:escape_only}s, ckp:%{public, location:escape_only}@, localAuthorizationChange:%{public}hhd, reason:%{public, location:escape_only}s}", buf, 0x36u);
  }

  if ([a2 isValidCKP])
  {
    if ([*(a1 + 136) isKeyPathRegisteredSystemService:a2])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        v28 = a2;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#ClearClient removing client entry for System Service, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v12 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        v28 = a2;
        _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#ClearClient removing client entry for System Service", "{msg%{public}.0s:#ClearClient removing client entry for System Service, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      goto LABEL_48;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient removing client entry, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10077732C(a1, a2);
    if (a3)
    {
      v14 = [objc_msgSend(a2 "legacyClientKey")];
      v15 = v14 ? v14 : "";
      sub_10000EC00(buf, v15);
      sub_100778048(a1, buf, a4);
      if (SBYTE3(v28) < 0)
      {
        operator delete(*buf);
      }
    }

    v16 = [objc_msgSend(a2 "clientAnchor")];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = "";
    }

    sub_10000EC00(buf, v17);
    v18 = sub_1005D7C24(qword_102659E68, buf);
    v19 = v18;
    if (SBYTE3(v28) < 0)
    {
      operator delete(*buf);
      if (v19)
      {
        goto LABEL_31;
      }
    }

    else if (v18)
    {
LABEL_31:
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v20 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = a2;
      v21 = "{msg%{public}.0s:#ClearClient attribution unavailable client, Client:%{public, location:escape_only}@}";
LABEL_45:
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x1Cu);
LABEL_46:
      [*(a1 + 136) removeDictionaryAtKeyPath:a2];
      [*(a1 + 136) persist];
      sub_10000EC00(buf, "");
      sub_100018918(a1, a2, buf);
      if (SBYTE3(v28) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_48;
    }

    v22 = [*(a1 + 440) objectForKey:a2];
    if (v22)
    {
      sub_100251A28(a1, a2, v22, 1);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v20 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = a2;
      v21 = "{msg%{public}.0s:#ClearClient Completely removed attribution for client, Client:%{public, location:escape_only}@}";
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v20 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2114;
      v28 = a2;
      v21 = "{msg%{public}.0s:#ClearClient client is not attributed. No special deattribution needed, Client:%{public, location:escape_only}@}";
    }

    goto LABEL_45;
  }

LABEL_48:
  os_activity_scope_leave(&v23);
}

id sub_100778048(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = +[CLAuthSyncManager isSupported]_0(a1, a2);
  if (result)
  {
    v7 = objc_alloc_init(CLCompanionSyncAuthObject);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    [(CLCompanionSyncAuthObject *)v7 setClientKey:[NSString stringWithUTF8String:v8]];
    [(CLCompanionSyncAuthObject *)v7 setOperationType:3];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      v13[0] = 68289538;
      v13[1] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = v10;
      v18 = 2114;
      v19 = [(CLCompanionSyncAuthObject *)v7 description];
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync deleteObject, syncReason:%{public, location:escape_only}s, syncObject:%{public, location:escape_only}@}", v13, 0x26u);
    }

    v11 = *(a1 + 1560);
    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    return [v11 deleteObject:v7 withSyncSessionReason:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
  }

  return result;
}

id sub_1007781D4(id *a1)
{
  sub_100777438(a1);
  [a1[17] clear];
  [a1[138] removeAllObjects];
  [a1[137] setClientsAuthorizationMap:{objc_msgSend(a1[138], "copy")}];
  [0 isValidCKP];
  v2 = a1[137];
  v3 = [0 legacyClientKey];

  return [v2 setPersistentStoreDictionary:0 forClient:v3];
}

id sub_100778254(uint64_t a1)
{
  [*(a1 + 1104) removeAllObjects];
  [0 isValidCKP];
  [*(a1 + 1096) setPersistentStoreDictionary:0 forClient:{objc_msgSend(0, "legacyClientKey")}];
  v2 = *(a1 + 136);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007782FC;
  v4[3] = &unk_10246FC30;
  v4[4] = a1;
  return [v2 iterateAllAnchorKeyPathsWithBlock:v4];
}

uint64_t sub_1007782FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_100018FC8(v3, a2, &xmmword_101CE6CD8);

  return sub_100033CDC(v3, a2, v4);
}

uint64_t sub_10077834C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([a2 isValidCKP] & 1) == 0 && !objc_msgSend(*(a1 + 1120), "count"))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "#IncidentalPrompt skip prompting. No client for incidental prompt", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10192E6E8();
      return 0;
    }

    return result;
  }

  if (([v2 isValidCKP] & 1) == 0)
  {
    v2 = [*(a1 + 1120) lastObject];
  }

  v4 = sub_1000184F4(a1, v2);
  v5 = sub_10004306C([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
  if (v5 != 1)
  {
    v6 = v5;
    if (v5)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v12 = off_1025D47A8;
      result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *buf = 68289538;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v4;
      v36 = 2050;
      v37 = v6;
      v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. IncidentalUseMode should be UnDetermined, Client:%{public, location:escape_only}@, IncidentalUseMode:%{public, location:CLClientIncidentalUseMode}lld}";
      v13 = v12;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 38;
      goto LABEL_49;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#IncidentalPrompt Ineligible marking as NotDetermined, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10077A3D0(a1, 1, v4, 1);
  }

  v8 = sub_10004FEC8(a1, v4, &xmmword_101CE6CD8);
  if ([(CLClientManagerAuthorizationContext *)v8 registrationResult]!= 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v16 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v17 = [(CLClientManagerAuthorizationContext *)v8 registrationResult];
    *buf = 68289538;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v4;
    v36 = 1026;
    LODWORD(v37) = v17;
    v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. Registration Result should be WIU, Client:%{public, location:escape_only}@, RegistrationResult:%{public}d}";
    v13 = v16;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 34;
    goto LABEL_49;
  }

  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v4;
      v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. Restrictions enabled, Client:%{public, location:escape_only}@}";
LABEL_48:
      v13 = v9;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 28;
      goto LABEL_49;
    }

    return result;
  }

  if (([*(a1 + 1120) containsObject:v4] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      v35 = v4;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#IncidentalPrompt client queued, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    [*(a1 + 1120) addObject:v4];
  }

  if (*(a1 + 1084))
  {
    if (!*(a1 + 272))
    {
      sub_10000EC00(__p, "");
      sub_10023C2AC(v29, 12, v4, 0, __p);
      v24 = sub_1007755CC(a1, v4, 0, v29, 0);
      sub_10023DF30(v29);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (v24)
      {
        return 1;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v25 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2114;
        v35 = v4;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Could not post #IncidentalUsePrompt, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v26 = off_1025D47A8;
      result = os_signpost_enabled(off_1025D47A8);
      if (result)
      {
        *buf = 68289282;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2114;
        v35 = v4;
        _os_signpost_emit_with_name_impl(dword_100000000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning Could not post #IncidentalUsePrompt", "{msg%{public}.0s:#Warning Could not post #IncidentalUsePrompt, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        return 0;
      }

      return result;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 272);
    v22 = *(v21 + 1);
    v23 = *v21;
    *buf = 68289794;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v4;
    v36 = 2114;
    v37 = v22;
    v38 = 2050;
    v39 = v23;
    v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. InflightPromptAuthorizationRequest found., Client:%{public, location:escape_only}@, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
    v13 = v20;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 48;
LABEL_49:
    _os_log_impl(dword_100000000, v13, v14, v11, buf, v15);
    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 68289282;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2114;
    v35 = v4;
    v11 = "{msg%{public}.0s:#IncidentalPrompt skip prompting. Not at homescreen., Client:%{public, location:escape_only}@}";
    goto LABEL_48;
  }

  return result;
}

void sub_100778A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10023DF30(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_100778A6C(uint64_t a1, uint64_t *a2)
{
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [*(a1 + 608) objectForKey:v5];
  if (v6)
  {
    [v6 doubleValue];
    Current = v7;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 608) setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), v5}];
  }

  v10 = +[NSMutableDictionary dictionary];
  v12 = qword_102659E90;
  for (i = qword_102659E98; v12 != i; ++v12)
  {
    v13 = *v12;
    v19 = 0;
    v20 = 0;
    sub_10004F9C8(v13, &v20, &v19);
    v14 = v20;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v16 = a2;
      if (*(a2 + 23) < 0)
      {
        v16 = *a2;
      }

      *buf = 68289794;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = v16;
      v27 = 2050;
      v28 = v13;
      v29 = 1026;
      v30 = 1;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#usesync munged starttime for watch, client:%{public, location:escape_only}s, service:%{public, location:CLClientServiceType}lld, isReceivingLocation:%{public}hhd}", buf, 0x2Cu);
    }

    [v10 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", Current), v14}];
  }

  sub_100778C94(a1, v9);
  return [*(a1 + 1552) client:v18 didChangeUsageData:v10];
}

uint64_t sub_100778C94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000206B4(a1, a2);
  v3 = sub_1003046B4(v2);
  v5 = *(*sub_1000206B4(v3, v4) + 944);

  return v5();
}

uint64_t sub_100778D10(uint64_t a1, uint64_t a2)
{
  v3 = [sub_1000184F4(a1 a2)];
  sub_10000EC00(__p, [v3 UTF8String]);
  sub_100778DE4(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  [*(a1 + 608) removeObjectForKey:v3];
  sub_10000EC00(v6, [v3 UTF8String]);
  sub_1000337E4((a1 + 640), v6);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  return sub_100778C94(a1, v4);
}

void sub_100778DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100778DE4(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  v5 = +[NSMutableDictionary dictionary];
  v8 = qword_102659E90;
  v7 = qword_102659E98;
  if (qword_102659E90 != qword_102659E98)
  {
    *&v6 = 68289026;
    v19 = v6;
    do
    {
      v9 = *v8;
      v21 = 0;
      v22 = 0;
      sub_10004F9C8(v9, &v22, &v21);
      v10 = v21;
      v11 = v22;
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v13 = a2;
        if (*(a2 + 23) < 0)
        {
          v13 = *a2;
        }

        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = v13;
        v29 = 2050;
        v30 = v9;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#usesync send stoptime due to expiry of temp assertion, client:%{public, location:escape_only}s, service:%{public, location:CLClientServiceType}lld}", buf, 0x26u);
      }

      Current = CFAbsoluteTimeGetCurrent();
      v15 = [*(a1 + 608) objectForKey:v4];
      if (v15)
      {
        [v15 doubleValue];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #Warning Missing start time but stop location usage sync is called}", buf, 0x12u);
        }

        v16 = Current + -10.0;
      }

      [v5 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v16, v19), v11}];
      [v5 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", Current), v10}];
      ++v8;
    }

    while (v8 != v7);
  }

  return [*(a1 + 1552) client:v4 didChangeUsageData:v5];
}

uint64_t sub_100779070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    v6 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v5 defaultValue:0];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#IncidentalUseMode able to get client's incidental use mode", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192E7CC();
    }
  }

  else
  {
    v6 = 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#IncidentalUseMode  returning with value:%d", v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192E8A8(v6);
  }

  return (*(a3 + 16))(a3, v6);
}

void sub_100779210(uint64_t a1, int a2, void *a3)
{
  if (objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      LOWORD(v16) = 2082;
      *(&v16 + 2) = "";
      WORD5(v16) = 1026;
      HIDWORD(v16) = a2;
      LOWORD(v17) = 2114;
      *(&v17 + 2) = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Reported, utility:%{public}d, date:%{public, location:escape_only}@}", buf, 0x22u);
    }

    v7 = [a3 dateByAddingTimeInterval:-600.0];
    v8 = [[NSDateInterval alloc] initWithStartDate:v7 endDate:a3];
    AbsoluteTime = CFDateGetAbsoluteTime(v7);
    if (AbsoluteTime < CFAbsoluteTimeGetCurrent())
    {
      v10 = [[RTStoredLocationEnumerationOptions alloc] initWithDateInterval:v8 horizontalAccuracy:0 batchSize:0 boundingBoxLocation:14 type:0.0];
      [v10 setSmoothingRequired:1];
      *buf = 0;
      *&v16 = buf;
      *(&v16 + 1) = 0x3052000000;
      *&v17 = sub_1000474E4;
      *(&v17 + 1) = sub_10004844C;
      v18 = 0;
      v11 = [objc_msgSend(*(a1 + 32) "vendor")];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007794F0;
      v13[3] = &unk_10246FE08;
      v13[5] = buf;
      v13[6] = a1;
      v13[4] = v8;
      v14 = a2;
      [v11 enumerateStoredLocationsWithOptions:v10 withReply:v13];
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v16) = 2082;
      *(&v16 + 2) = "";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_1007794D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007794F0(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v29 = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      *v34 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LocationUtilityEvent Got error fetching locations from CoreRoutine, error:%{public, location:escape_only}@}", &v29, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v29 = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      *v34 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LocationUtilityEvent Got error fetching locations from CoreRoutine", "{msg%{public}.0s:#LocationUtilityEvent Got error fetching locations from CoreRoutine, error:%{public, location:escape_only}@}", &v29, 0x1Cu);
    }
  }

  else
  {
    v10 = *(a1 + 48);
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 68289538;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 1026;
      *v34 = a4;
      *&v34[4] = 1026;
      *&v34[6] = [a2 count];
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Reply back from CoreRoutine, enumerationCompleted:%{public}d, count:%{public}d}", &v29, 0x1Eu);
    }

    if (a4)
    {
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        [objc_msgSend(*(v10 + 584) "startDate")];
        v13 = v12;
        [objc_msgSend(*(v10 + 584) "endDate")];
        v15 = v14;
        v16 = v13 + (v14 - v13) * 0.5;
        [objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "timestamp")];
        if (v17 <= v16)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v25 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v26 = [*(*(*(a1 + 40) + 8) + 40) timestamp];
            v29 = 68290050;
            v31 = 2082;
            v30 = 0;
            v32 = "";
            v33 = 2114;
            *v34 = v26;
            *&v34[8] = 2050;
            v35 = v16;
            v36 = 2050;
            v37 = v13;
            v38 = 2050;
            v39 = v15;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LocationUtilityEvent Location timestamp is earlier than or equal to last interval in archive. Will not persist., lastLocation.timestamp:%{public, location:escape_only}@, lastLocationUtilityEventIntervalInArchiveMidPoint:%{public}.6f, lastLocationUtilityEventIntervalInArchiveStartTime:%{public}.6f, lastLocationUtilityEventIntervalInArchiveEndTime:%{public}.6f}", &v29, 0x3Au);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v27 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v28 = [*(*(*(a1 + 40) + 8) + 40) timestamp];
            v29 = 68290050;
            v31 = 2082;
            v30 = 0;
            v32 = "";
            v33 = 2114;
            *v34 = v28;
            *&v34[8] = 2050;
            v35 = v16;
            v36 = 2050;
            v37 = v13;
            v38 = 2050;
            v39 = v15;
            _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LocationUtilityEvent Location timestamp is earlier than or equal to last interval in archive. Will not persist.", "{msg%{public}.0s:#LocationUtilityEvent Location timestamp is earlier than or equal to last interval in archive. Will not persist., lastLocation.timestamp:%{public, location:escape_only}@, lastLocationUtilityEventIntervalInArchiveMidPoint:%{public}.6f, lastLocationUtilityEventIntervalInArchiveStartTime:%{public}.6f, lastLocationUtilityEventIntervalInArchiveEndTime:%{public}.6f}", &v29, 0x3Au);
          }
        }

        else
        {
          *&v18 = COERCE_DOUBLE([objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "timestamp")]);
          *&v19 = COERCE_DOUBLE([objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "timestamp")]);
          v20 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
          [v20 setStartTime:CFDateGetAbsoluteTime(v18)];
          [v20 setStopTime:CFDateGetAbsoluteTime(v19)];
          [v20 setScore:*(a1 + 56)];
          [*(v10 + 576) writeSecondaryObject:v20 toField:1];
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v21 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [*(*(*(a1 + 40) + 8) + 40) timestamp];
            v29 = 68289794;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2114;
            *v34 = v22;
            *&v34[8] = 2114;
            v35 = *&v18;
            v36 = 2114;
            v37 = *&v19;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Persist utility event interval, lastLocation.timestamp:%{public, location:escape_only}@, locationUtilityEventIntervalStart:%{public, location:escape_only}@, locationUtilityEventIntervalEnd:%{public, location:escape_only}@}", &v29, 0x30u);
          }

          *(v10 + 584) = [[NSDateInterval alloc] initWithStartDate:v18 endDate:v19];
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v23 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v29 = 68289282;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2114;
          *v34 = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent No locations in interval., interval:%{public, location:escape_only}@}", &v29, 0x1Cu);
        }
      }
    }

    else if ([a2 count])
    {

      *(*(*(a1 + 40) + 8) + 40) = [a2 lastObject];
    }
  }
}

id sub_100779AE8(uint64_t a1, uint64_t a2)
{
  if (objc_opt_class())
  {
    obj = +[NSMutableArray array];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Retrieval request, lookBackWindowStartDate:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (a2)
    {
      v5 = *(a1 + 576);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100779FE8;
      v17[3] = &unk_10246FE30;
      v17[4] = a2;
      v17[5] = obj;
      sub_100779E1C(v5, 0, v17);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      if (v6)
      {
        v7 = v6;
        v8 = MEMORY[0];
        do
        {
          v9 = 0;
          do
          {
            if (MEMORY[0] != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(8 * v9);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v11 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 startDate];
              v13 = [v10 endDate];
              *buf = 68289794;
              v19 = 0;
              v20 = 2082;
              v21 = "";
              v22 = 2114;
              v23 = a2;
              v24 = 2114;
              v25 = v12;
              v26 = 2114;
              v27 = v13;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Retrieved interval, lookBackWindowStartDate:%{public, location:escape_only}@, intervalStartDate:%{public, location:escape_only}@, intervalEndDate:%{public, location:escape_only}@}", buf, 0x30u);
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        }

        while (v7);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }

    return 0;
  }

  return obj;
}

void sub_100779E1C(void *a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_class())
  {
    *buf = 0;
    *&v10 = buf;
    *(&v10 + 1) = 0x2020000000;
    v11 = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100787370;
    v7[3] = &unk_102470088;
    v7[6] = buf;
    v7[7] = v8;
    v7[4] = a2;
    v7[5] = a3;
    [a1 iterateSecondaryData:objc_msgSend(a1 forField:"mappedSecondaryData") withHandler:{1, v7}];
    _Block_object_dispose(v8, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v10) = 2082;
      *(&v10 + 2) = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_100779FE8(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if ((a3 - a2) * 0.5 + a2 >= v6)
  {
    [*(a1 + 40) addObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", objc_msgSend([NSDate alloc], "initWithTimeIntervalSinceReferenceDate:", a2), objc_msgSend([NSDate alloc], "initWithTimeIntervalSinceReferenceDate:", a3))}];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9[0] = 68289794;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = v8;
      v14 = 1026;
      v15 = a2;
      v16 = 1026;
      v17 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Retrieved interval prior, lookBackWindowStartDate:%{public, location:escape_only}@, startTime:%{public}d, endTime:%{public}d}", v9, 0x28u);
    }
  }
}

void sub_10077A174(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  if (![*(a1 + 120) locationRestricted])
  {
LABEL_6:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    goto LABEL_8;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v9 = 2082;
    *&v9[2] = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning location services settings are frozen by restrictions - resetting}", buf, 0x12u);
    goto LABEL_6;
  }

LABEL_8:
  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v9 = 2082;
    *&v9[2] = "";
    *&v9[10] = 2114;
    *&v9[12] = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:resetting and disconnecting client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  sub_100773918(a1, v3);
  if (v3)
  {
    objc_msgSend_cppClientKey(v3);
  }

  else
  {
    *buf = 0;
    *v9 = 0;
    *&v9[8] = 0;
  }

  sub_10004EB70((a1 + 752), buf);
  if ((v9[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (v3)
    {
      goto LABEL_15;
    }
  }

  else if (v3)
  {
LABEL_15:
    objc_msgSend_cppClientKey(v3);
    goto LABEL_18;
  }

  *buf = 0;
  *v9 = 0;
  *&v9[8] = 0;
LABEL_18:
  sub_10004EB70((a1 + 776), buf);
  if ((v9[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_10000EC00(__p, "ClientRemoved");
  sub_100777AC4(a1, v3, 1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10077A394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10077A3D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = [*(a1 + 136) registeredKeyPathForClientIdentifier:?];
  v9 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v8 defaultValue:0];
  if (v9 == a2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = a2;
      v23 = 2050;
      v24 = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#IncidentalUseMode Ignoring setIncidentalUseMode for a state that's already set, current:%{public, location:CLClientIncidentalUseMode}lld, state:%{public, location:CLClientIncidentalUseMode}lld}", buf, 0x26u);
      return 0;
    }

    return result;
  }

  v12 = v9;
  if ([v8 isValidCKP])
  {
    [*(a1 + 136) setInt:a2 forKey:@"IncidentalUseMode" atKeyPath:v8];
    [*(a1 + 136) persist];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = v12;
      v23 = 2050;
      v24 = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#IncidentalUseMode able to SET client's incidental use mode, from:%{public, location:CLClientIncidentalUseMode}lld, to:%{public, location:CLClientIncidentalUseMode}lld}", buf, 0x26u);
    }

    sub_10000EC00(buf, "");
    sub_100018918(a1, v8, buf);
    if (SBYTE3(v22) < 0)
    {
      operator delete(*buf);
      if (!a4)
      {
        return 1;
      }
    }

    else if (!a4)
    {
      return 1;
    }

    sub_10077A7A0(a1, v8);
    sub_10000EC00(__p, "LocalIncidentalUseModeChange");
    sub_10077A934(a1, v8, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v14 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2114;
    v22 = a3;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Unable to find client to update #IncidentalUseMode, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v15 = off_1025D47A8;
  result = os_signpost_enabled(off_1025D47A8);
  if (result)
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2114;
    v22 = a3;
    _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to find client to update #IncidentalUseMode", "{msg%{public}.0s:Unable to find client to update #IncidentalUseMode, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void sub_10077A768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10077A7A0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_msgSend(*(a1 + 136) arrayForKey:@"VectorClocks" atKeyPath:a2 defaultValue:{&off_102554420), "mutableCopy"}];
  v5 = [v4 mutableCopy];
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber atIndexedSubscript:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v4, "objectAtIndexedSubscript:", 0), "unsignedIntValue") + 1), 0}];
  [*(a1 + 136) setArray:v4 forKey:@"VectorClocks" atKeyPath:a2];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289794;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = a2;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:triggerLocalClockUpdate, Client:%{public, location:escape_only}@, previousVectorClocks:%{public, location:escape_only}@, vectorClocks:%{public, location:escape_only}@}", v8, 0x30u);
  }

  return [*(a1 + 136) persist];
}

void sub_10077A934(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = [objc_msgSend(*(a1 + 32) "silo")];
  if (+[CLAuthSyncManager isSupported]_0(v6, v7))
  {
    v8 = _os_activity_create(dword_100000000, "CL: #authsync coalesceOutgoingSyncMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a3;
      if (*(a3 + 23) < 0)
      {
        v10 = *a3;
      }

      *buf = 68289794;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2114;
      v23 = a2;
      v24 = 2082;
      v25 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync coalesceOutgoingSyncMessage, event:%{public, location:escape_only}s, ckp:%{public, location:escape_only}@, reason:%{public, location:escape_only}s}", buf, 0x30u);
    }

    v11 = [*(a1 + 1592) objectForKey:a2];
    if (v11)
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v12 = [v11 stringByAppendingFormat:@"_%s", a3];
    }

    else
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v12 = [NSString stringWithUTF8String:a3];
    }

    [*(a1 + 1592) setObject:v12 forKey:a2];
    v13 = [*(a1 + 32) silo];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100790F40;
    v14[3] = &unk_102449BC0;
    v14[4] = a2;
    v14[5] = a1;
    [v13 async:v14];
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10077AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100033370(a1, a3);
  [*(a1 + 136) setInt:a2 forKey:@"LocationButtonUseMode" atKeyPath:v5];
  [*(a1 + 136) persist];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = v5;
    v13 = 2050;
    v14 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LocationButtonUseMode updated, Client:%{public, location:escape_only}@, Mode:%{public, location:CLClientLocationButtonUseMode}lld}", v8, 0x26u);
  }

  return 1;
}

void sub_10077AC8C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatus Received and processed interval beginning message, MessageUUID:%{public, location:escape_only}s}", v4, 0x1Cu);
  }
}

void sub_10077AD68(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (objc_opt_class())
  {
    memset(&__p, 0, sizeof(__p));
    if ([a4 isValidCKP])
    {
      v8 = sub_1000184F4(a1, a4);
      if (v8)
      {
        objc_msgSend_cppClientKey(v8);
      }

      else
      {
        memset(buf, 0, 24);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = *buf;
    }

    else
    {
      sub_100006044(&__p, [@"com.apple.locationd.all-location-clients-stop" UTF8String]);
    }

    *buf = &__p;
    v10 = sub_1007ADCC0(a3, &__p, &unk_101C66300, buf, &v20);
    if (*(v10 + 5) == 0.0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = p_p;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Updating location consumption info on start, Client:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      *(v10 + 5) = CFAbsoluteTimeGetCurrent();
      v13 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p.__r_.__value_.__r.__words[0];
      }

      [v13 setClientKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2])}];
      [v13 setStartTime:*(v10 + 5)];
      [a2 writeSecondaryObject:v13 toField:1];
      if (a1 + 808 != sub_10045EF04(a1 + 800, &__p))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v15 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          v16 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v16 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = v16;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Faulting for backtrace explaining usage score increment, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v17 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v18 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v18 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = v18;
          _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Faulting for backtrace explaining usage score increment", "{msg%{public}.0s:Faulting for backtrace explaining usage score increment, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_10077B190(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatus Received and processed interval end message, MessageUUID:%{public, location:escape_only}s}", v4, 0x1Cu);
  }
}

BOOL sub_10077B26C(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = a2;
      v6 = "{msg%{public}.0s:#LocationButtonFirstUsage skip prompting. Restrictions enabled, Client:%{public, location:escape_only}@}";
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
      v9 = 28;
LABEL_11:
      _os_log_impl(dword_100000000, v7, v8, v6, buf, v9);
      return 0;
    }

    return result;
  }

  if (!*(a1 + 272))
  {
    if ([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{a2), "BOOLForKey:defaultValue:", @"DefaultAccuracyReduced", 0}])
    {
      v14 = 13;
    }

    else
    {
      v14 = 14;
    }

    sub_10000EC00(__p, "");
    sub_10023C2AC(v20, v14, a2, 0, __p);
    v15 = sub_1007755CC(a1, a2, 0, v20, 0);
    sub_10023DF30(v20);
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (v15)
      {
        return 1;
      }
    }

    else if (v15)
    {
      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = a2;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Could not post #LocationButtonFirstUsage, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v17 = off_1025D47A8;
    result = os_signpost_enabled(off_1025D47A8);
    if (result)
    {
      *buf = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning Could not post #LocationButtonFirstUsage", "{msg%{public}.0s:#Warning Could not post #LocationButtonFirstUsage, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      return 0;
    }

    return result;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v10 = off_1025D47A8;
  result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v11 = *(a1 + 272);
    v12 = *(v11 + 1);
    v13 = *v11;
    *buf = 68289794;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2114;
    v26 = a2;
    v27 = 2114;
    v28 = v12;
    v29 = 2050;
    v30 = v13;
    v6 = "{msg%{public}.0s:#LocationButtonFirstUsage skip prompting. InflightPromptAuthorizationRequest found., Client:%{public, location:escape_only}@, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
    v7 = v10;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 48;
    goto LABEL_11;
  }

  return result;
}

void sub_10077B5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10023DF30(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10077B5E8(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 a4, int a5, int a6)
{
  v8 = a4;
  v10 = sub_100033370(a1, a2);
  v11 = [*(a1 + 136) intForKey:@"LocationButtonUseMode" atKeyPath:v10 defaultValue:0];
  v12 = [(CLClientManagerAuthorizationContext *)sub_10004FEC8(a1 transientAwareRegistrationResult:v10];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68290562;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = v10;
    v26 = 1026;
    v27 = v8;
    v28 = 1026;
    v29 = a5;
    v30 = 1026;
    v31 = a6;
    v32 = 2050;
    v33 = v11;
    v34 = 1026;
    v35 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth Explicit temporary authorization request received, Client:%{public, location:escape_only}@, Granted:%{public}hhd, UsingLocationButton:%{public}hhd, VoiceInteractionEnabled:%{public}hhd, LocationButtonUseMode:%{public, location:CLClientLocationButtonUseMode}lld, TransientAwareRegistrationResult:%{public}d}", &__p, 0x3Eu);
  }

  if (a5 && (v8 & 1) == 0)
  {
    sub_10192E998();
  }

  if (!a5)
  {
    goto LABEL_17;
  }

  if (v12 != 4 && v12 != 2 || (a6 & 1) == 0 && v11)
  {
    if (v11 == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v14 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289282;
        v22 = 2082;
        v23 = "";
        v24 = 2114;
        v25 = v10;
        v15 = "{msg%{public}.0s:#TemporaryAuth could not be granted , #LocationButtonUse denied, Client:%{public, location:escape_only}@}";
        v16 = v14;
        v17 = 28;
LABEL_27:
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, v15, &__p, v17);
        return;
      }

      return;
    }

LABEL_17:
    sub_10077B960(*(a1 + 136), v10, 1u, v8);
    v18 = *(a1 + 272);
    if (v18 && (*(a1 + 312) == 2 || *v18 == 1))
    {
      [*(a1 + 136) setInt:2 forKey:@"CorrectiveCompensationEnabled" atKeyPath:v10];
      [*(a1 + 136) persist];
    }

    sub_10000EC00(&__p, "");
    sub_100018918(a1, v10, &__p);
    if (SBYTE3(v25) < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v19 = sub_10077B26C(a1, v10);
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v20 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289538;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = v10;
    v26 = 1026;
    v27 = v19;
    v15 = "{msg%{public}.0s:#TemporaryAuth #LocationButtonUse prompting status, Client:%{public, location:escape_only}@, PromptingStatus:%{public}hhd}";
    v16 = v20;
    v17 = 34;
    goto LABEL_27;
  }
}

void sub_10077B93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10077B960(void *a1, uint64_t a2, unsigned int a3, int a4)
{
  if (![a1 registeredKeyPathForClientIdentifier:a2])
  {
    [a1 registerClient:a2 fromAuthSync:0];
  }

  v8 = [a1 intForKey:@"TemporaryAuthorization" atKeyPath:a2 defaultValue:0];
  if (a4)
  {
    v9 = v8 | a3;
LABEL_6:

    return [a1 setInt:v9 forKey:@"TemporaryAuthorization" atKeyPath:a2];
  }

  v9 = v8 & ~a3;
  if ((v8 & ~a3) != 0)
  {
    goto LABEL_6;
  }

  return [a1 removeValueForKey:@"TemporaryAuthorization" atKeyPath:a2];
}

void sub_10077BA38(uint64_t a1, void *a2, int a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289538;
    v11 = 2082;
    v12 = "";
    v13 = 2114;
    v14 = a2;
    v15 = 1026;
    v16 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth-Precise, Client:%{public, location:escape_only}@, granted:%{public}hhd}", &__p, 0x22u);
  }

  v7 = (a1 + 136);
  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 8;
  }

  if (a3)
  {
    v9 = 8;
  }

  else
  {
    v9 = 2;
  }

  sub_10077B960(*(a1 + 136), a2, v8, 1);
  sub_10077B960(*v7, a2, v9, 0);
  [*v7 persist];
  sub_10000EC00(&__p, "");
  sub_100018918(a1, a2, &__p);
  if (SBYTE3(v14) < 0)
  {
    operator delete(__p);
  }
}

void sub_10077BBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077BBC4(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  HIDWORD(v79) = a3;
  __p[0] = 0;
  __p[1] = 0;
  v83 = 0;
  if (a4)
  {
    v6 = sub_100033370(a1, a4);
    v81 = v6;
    if (v6)
    {
      objc_msgSend_cppClientKey(v6);
    }

    else
    {
      memset(buf, 0, 24);
    }

    if (SHIBYTE(v83) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v83 = *&buf[16];
  }

  else
  {
    v81 = 0;
    HIBYTE(v83) = 8;
    strcpy(__p, "*nobody*");
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "-";
    v9 = a1[90];
    if (a2)
    {
      v8 = "+";
    }

    *buf = 67109378;
    *&buf[4] = v9;
    *&buf[8] = 2080;
    *&buf[10] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLEEA Emergency clients %d %s 1", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192DC88(buf);
    v64 = "-";
    v65 = a1[90];
    if (a2)
    {
      v64 = "+";
    }

    v84 = 67109378;
    LODWORD(v85[0]) = v65;
    WORD2(v85[0]) = 2080;
    *(v85 + 6) = v64;
    LODWORD(v78) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#CLEEA Emergency clients %d %s 1", &v84, v78);
    v67 = v66;
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v66);
    if (v67 != buf)
    {
      free(v67);
    }
  }

  if (a2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = __p;
      if (v83 < 0)
      {
        v11 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#CLEEA adding emergency client,%{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DC88(buf);
      v68 = __p;
      if (v83 < 0)
      {
        v68 = __p[0];
      }

      v84 = 136446210;
      v85[0] = v68;
      LODWORD(v78) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#CLEEA adding emergency client,%{public}s", &v84, v78);
      v70 = v69;
      sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v69);
      if (v70 != buf)
      {
        free(v70);
      }
    }

    v12 = a1[90];
    LODWORD(v79) = v12 == 0;
    if (v12)
    {
      v13 = a1[88];
      if (v13 != a1 + 89)
      {
        do
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v14 = v13 + 4;
          v15 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v13 + 4;
            if (*(v13 + 55) < 0)
            {
              v16 = *v14;
            }

            *buf = 136446210;
            *&buf[4] = v16;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#CLEEA %{public}s is still an emergency client", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            if (*(v13 + 55) < 0)
            {
              v14 = *v14;
            }

            v84 = 136446210;
            v85[0] = v14;
            LODWORD(v78) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#CLEEA %{public}s is still an emergency client", &v84, v78, v79);
            v21 = v20;
            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v20);
            if (v21 != buf)
            {
              free(v21);
            }
          }

          v17 = v13[1];
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
              v18 = v13[2];
              v19 = *v18 == v13;
              v13 = v18;
            }

            while (!v19);
          }

          v13 = v18;
        }

        while (v18 != a1 + 89);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v36 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "#CLEEA First emergency client connected", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        LOWORD(v84) = 0;
        LODWORD(v78) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#CLEEA First emergency client connected", &v84, v78, v79);
        v75 = v74;
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v74);
        if (v75 != buf)
        {
          free(v75);
        }
      }
    }

    sub_1007446D4(a1 + 88, __p);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v22 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = __p;
    if (v83 < 0)
    {
      v23 = __p[0];
    }

    *buf = 136446210;
    *&buf[4] = v23;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#CLEEA removing emergency client,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192DC88(buf);
    v71 = __p;
    if (v83 < 0)
    {
      v71 = __p[0];
    }

    v84 = 136446210;
    v85[0] = v71;
    LODWORD(v78) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#CLEEA removing emergency client,%{public}s", &v84, v78);
    v73 = v72;
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v72);
    if (v73 != buf)
    {
      free(v73);
    }
  }

  v24 = (a1 + 88);
  v25 = sub_10045EF04((a1 + 88), __p);
  v26 = (a1 + 89);
  if (a1 + 89 == v25)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v37 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v38 = __p;
      if (v83 < 0)
      {
        v38 = __p[0];
      }

      v39 = a1[90];
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v38;
      v87 = 1026;
      v88 = v39;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLEEA Trying to remove emergency beneficiary which doesn't exist, MissingClientKey:%{public, location:escape_only}s, TotalMultisetSize:%{public}d}", buf, 0x22u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v40 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v41 = __p;
      if (v83 < 0)
      {
        v41 = __p[0];
      }

      v42 = a1[90];
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v41;
      v87 = 1026;
      v88 = v42;
      v43 = "#CLEEA Trying to remove emergency beneficiary which doesn't exist";
      v44 = "{msg%{public}.0s:#CLEEA Trying to remove emergency beneficiary which doesn't exist, MissingClientKey:%{public, location:escape_only}s, TotalMultisetSize:%{public}d}";
      goto LABEL_145;
    }
  }

  else
  {
    sub_1001D2ED0(a1 + 88, v25);
    v27 = a1[90];
    v80 = v27 == 0;
    if (v27)
    {
      v28 = *v24;
      if (*v24 != v26)
      {
        do
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v29 = v28 + 32;
          v30 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v28 + 32;
            if (v28[55] < 0)
            {
              v31 = *v29;
            }

            *buf = 136446210;
            *&buf[4] = v31;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "#CLEEA %{public}s is still an emergency client", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            if (v28[55] < 0)
            {
              v29 = *v29;
            }

            v84 = 136446210;
            v85[0] = v29;
            LODWORD(v78) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#CLEEA %{public}s is still an emergency client", &v84, v78);
            v35 = v34;
            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v34);
            if (v35 != buf)
            {
              free(v35);
            }
          }

          v32 = *(v28 + 1);
          if (v32)
          {
            do
            {
              v33 = v32;
              v32 = *v32;
            }

            while (v32);
          }

          else
          {
            do
            {
              v33 = *(v28 + 2);
              v19 = *v33 == v28;
              v28 = v33;
            }

            while (!v19);
          }

          v28 = v33;
        }

        while (v33 != v26);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v45 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "#CLEEA Last emergency client disconnected", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        LOWORD(v84) = 0;
        LODWORD(v78) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#CLEEA Last emergency client disconnected", &v84, v78);
        v77 = v76;
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v76);
        if (v77 != buf)
        {
          free(v77);
        }
      }
    }

    if (!HIDWORD(v79))
    {
      goto LABEL_127;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v46 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v47 = __p;
      if (v83 < 0)
      {
        v47 = __p[0];
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v47;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLEPTO removing beneficiary for deauthorization override, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v48 = (a1 + 91);
    v49 = sub_10045EF04((a1 + 91), __p);
    v50 = (a1 + 92);
    if (a1 + 92 != v49)
    {
      sub_1001D2ED0(a1 + 91, v49);
      v51 = *v48;
      if (*v48 != v50)
      {
        do
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v52 = v51 + 32;
          v53 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v54 = v51 + 32;
            if (v51[55] < 0)
            {
              v54 = *v52;
            }

            *buf = 136446210;
            *&buf[4] = v54;
            _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "#CLEPTO (-) : %{public}s is still a beneficiary for deauthorization override", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            if (v51[55] < 0)
            {
              v52 = *v52;
            }

            v84 = 136446210;
            v85[0] = v52;
            LODWORD(v78) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#CLEPTO (-) : %{public}s is still a beneficiary for deauthorization override", &v84, v78);
            v58 = v57;
            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v57);
            if (v58 != buf)
            {
              free(v58);
            }
          }

          v55 = *(v51 + 1);
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = *(v51 + 2);
              v19 = *v56 == v51;
              v51 = v56;
            }

            while (!v19);
          }

          v51 = v56;
        }

        while (v56 != v50);
      }

LABEL_127:
      if (v80)
      {
        sub_1004E8738(a2);
        sub_10000EC00(buf, "com.apple.locationd.CLEEA");
        sub_100773AF4(a1, buf, 1);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        [objc_msgSend(objc_msgSend(a1[4] "vendor")];
      }

      if (v81)
      {
        sub_10000EC00(buf, "");
        sub_100018918(a1, v81, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_146;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v59 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v60 = __p;
      if (v83 < 0)
      {
        v60 = __p[0];
      }

      v61 = a1[93];
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v60;
      v87 = 1026;
      v88 = v61;
      _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLEPTO Trying to remove deauthorizationOverride beneficiary which doesn't exist, MissingClientKey:%{public, location:escape_only}s, TotalMultisetSize:%{public}d}", buf, 0x22u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v40 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v62 = __p;
      if (v83 < 0)
      {
        v62 = __p[0];
      }

      v63 = a1[93];
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v62;
      v87 = 1026;
      v88 = v63;
      v43 = "#CLEPTO Trying to remove deauthorizationOverride beneficiary which doesn't exist";
      v44 = "{msg%{public}.0s:#CLEPTO Trying to remove deauthorizationOverride beneficiary which doesn't exist, MissingClientKey:%{public, location:escape_only}s, TotalMultisetSize:%{public}d}";
LABEL_145:
      _os_signpost_emit_with_name_impl(dword_100000000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v43, v44, buf, 0x22u);
    }
  }

LABEL_146:
  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10077CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077CE04(uint64_t a1, uint64_t a2)
{
  sub_100565518(0, &v37, a2);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_10192ECFC(v3, v4, v5, v6, v7, v8, v9, v10, v23, v24, v25, v26, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, v34[0]);
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager_Unified.mm", 3322, "migrateLegacySLCSubscriptions");
    __break(1u);
  }

  sub_100070148(__p, size + 17);
  if (v36 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v37;
  }

  else
  {
    v13 = v37.__r_.__value_.__r.__words[0];
  }

  memmove(v12, v13, size);
  strcpy(v12 + size, "significant.plist");
  if (v36 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (sub_100021690(v14))
  {
    sub_10004FD18();
    if (v36 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    sub_1004F9C20(v34, v15);
    v16 = sub_10007005C(v34);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16);
    if (v17)
    {
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", v20)}];
          if ([v21 isValidCKP])
          {
            sub_1000EA1BC(a1, v21, &v27);
            sub_100F3B42C(v27, [v16 objectForKeyedSubscript:v20]);
            if (v28)
            {
              sub_100008080(v28);
            }
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16);
      }

      while (v17);
    }

    if (v36 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    sub_1004E67B8(v22);
    sub_100005DA4();
  }

  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_10077D08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005DA4();
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10077D10C(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  result = sub_10001CF3C();
  if ((result & 1) == 0)
  {
    v4 = +[NSMutableArray array];
    v5 = *(a1 + 136);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10077D214;
    v8[3] = &unk_10246FF20;
    v8[4] = v4;
    [v5 iterateAllAnchorKeyPathsWithBlock:v8];
    v6 = [objc_msgSend(*(a1 + 32) "vendor")];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10077D274;
    v7[3] = &unk_10246FF40;
    v7[4] = a1;
    return [v6 checkApplications:v4 withReply:v7];
  }

  return result;
}

id sub_10077D214(uint64_t a1, void *a2)
{
  result = [a2 bundleId];
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [a2 legacyClientKey];

    return [v5 addObject:v6];
  }

  return result;
}

_BYTE *sub_10077D27C(double *a1, void *a2, void *a3, void *a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a2 count];
    v7 = [a2 count];
    v8 = &v7[[a3 count]];
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = [a4 count] + v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#ClearClient installation check found %ld uninstalled apps (amongst %ld bundle IDs)", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v53 = off_1025D47A8;
    v54 = [a2 count];
    v55 = [a2 count];
    v56 = [a3 count];
    LODWORD(v71[0]) = 134218240;
    *(v71 + 4) = v54;
    WORD2(v71[1]) = 2048;
    *(&v71[1] + 6) = &v55[v56 + [a4 count]];
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v53, 0, "#ClearClient installation check found %ld uninstalled apps (amongst %ld bundle IDs)", v71, 22);
    v58 = v57;
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::handleAppInstallationStatus(NSArray<NSString *> *, NSArray<NSString *> *, NSArray<NSString *> *)", "%s\n", v57);
    if (v58 != buf)
    {
      free(v58);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v69 = 0.0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
  if (!v9)
  {
    v11 = -1.0;
    goto LABEL_92;
  }

  v10 = *v66;
  v11 = -1.0;
  do
  {
    v12 = 0;
    do
    {
      if (*v66 != v10)
      {
        objc_enumerationMutation(a2);
      }

      v13 = *(*(&v65 + 1) + 8 * v12);
      v14 = objc_alloc_init(NSAutoreleasePool);
      v15 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientAnchor:v13 anchorType:105]);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#ClearClient %@ is missing ", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        LODWORD(v71[0]) = 138412290;
        *(v71 + 4) = v15;
        LODWORD(v59) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#ClearClient %@ is missing ", v71, v59);
        v27 = v26;
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::handleAppInstallationStatus(NSArray<NSString *> *, NSArray<NSString *> *, NSArray<NSString *> *)", "%s\n", v26);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      v69 = 2.22507386e-308;
      if (sub_10077E1DC(a1, v15, &v69))
      {
        v17 = v69;
        v18 = Current - v69;
        if (Current - v69 >= a1[30])
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v19 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 30);
            *buf = 68289794;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v15;
            *&buf[28] = 2050;
            *&buf[30] = v18;
            *&buf[38] = 2050;
            *&buf[40] = v20;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient Deleting entry as client has been missing beyond safe harbor threshold, Client:%{public, location:escape_only}@, missingTimeDuration_s:%{public}.09f, safe harbor threshold_s:%{public}.09f}", buf, 0x30u);
          }

          sub_10000EC00(__p, "ClientRemoved");
          sub_100777AC4(a1, v15, 1, __p);
          if (v64 < 0)
          {
            operator delete(__p[0]);
          }

          memset(v79, 0, 35);
          *v78 = 0u;
          memset(buf, 0, sizeof(buf));
          v80 = 0u;
          memset(v81, 0, 59);
          if (v15)
          {
            objc_msgSend_clientName(v15);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            v76 = 0;
            memset(v75, 0, sizeof(v75));
            *v74 = 0uLL;
            *v72 = 0uLL;
            memset(v73, 0, sizeof(v73));
            memset(v71, 0, sizeof(v71));
          }

          *buf = *v71;
          *&buf[16] = v71[2];
          HIBYTE(v71[2]) = 0;
          LOBYTE(v71[0]) = 0;
          if (buf[47] < 0)
          {
            operator delete(*&buf[24]);
          }

          *&buf[24] = *&v71[3];
          *&buf[40] = v71[5];
          HIBYTE(v71[5]) = 0;
          LOBYTE(v71[3]) = 0;
          if (SHIBYTE(v79[0]) < 0)
          {
            operator delete(v78[0]);
          }

          *v78 = *v72;
          v79[0] = v73[0];
          HIBYTE(v73[0]) = 0;
          LOBYTE(v72[0]) = 0;
          if (SHIBYTE(v79[3]) < 0)
          {
            operator delete(v79[1]);
          }

          *&v79[1] = *&v73[1];
          v79[3] = v73[3];
          HIBYTE(v73[3]) = 0;
          LOBYTE(v73[1]) = 0;
          LOWORD(v79[4]) = v73[4];
          BYTE2(v79[4]) = BYTE2(v73[4]);
          if (SBYTE7(v81[0]) < 0)
          {
            operator delete(v80);
          }

          v80 = *&v73[5];
          *&v81[0] = v73[7];
          HIBYTE(v73[7]) = 0;
          LOBYTE(v73[5]) = 0;
          if (SHIBYTE(v81[1]) < 0)
          {
            operator delete(*(&v81[0] + 1));
          }

          *(v81 + 8) = *v74;
          *(&v81[1] + 1) = *&v75[0];
          BYTE7(v75[0]) = 0;
          LOBYTE(v74[0]) = 0;
          if (SBYTE7(v81[3]) < 0)
          {
            operator delete(*&v81[2]);
            v81[2] = *(v75 + 8);
            *&v81[3] = *(&v75[1] + 1);
            HIBYTE(v75[1]) = 0;
            BYTE8(v75[0]) = 0;
            WORD4(v81[3]) = v76;
            BYTE10(v81[3]) = BYTE2(v76);
            if (SBYTE7(v75[0]) < 0)
            {
              operator delete(v74[0]);
            }
          }

          else
          {
            v81[2] = *(v75 + 8);
            *&v81[3] = *(&v75[1] + 1);
            HIBYTE(v75[1]) = 0;
            BYTE8(v75[0]) = 0;
            WORD4(v81[3]) = v76;
            BYTE10(v81[3]) = BYTE2(v76);
          }

          if (SHIBYTE(v73[7]) < 0)
          {
            operator delete(v73[5]);
          }

          if (SHIBYTE(v73[3]) < 0)
          {
            operator delete(v73[1]);
          }

          if (SHIBYTE(v73[0]) < 0)
          {
            operator delete(v72[0]);
          }

          if (SHIBYTE(v71[5]) < 0)
          {
            operator delete(v71[3]);
          }

          if (SHIBYTE(v71[2]) < 0)
          {
            operator delete(v71[0]);
          }

          LODWORD(v71[0]) = 1;
          (*(*a1 + 152))(a1, v71, buf, 0, 0xFFFFFFFFLL, 0);
          if (SBYTE7(v81[3]) < 0)
          {
            operator delete(*&v81[2]);
          }

          if (SHIBYTE(v81[1]) < 0)
          {
            operator delete(*(&v81[0] + 1));
          }

          if (SBYTE7(v81[0]) < 0)
          {
            operator delete(v80);
          }

          if (SHIBYTE(v79[3]) < 0)
          {
            operator delete(v79[1]);
          }

          if (SHIBYTE(v79[0]) < 0)
          {
            operator delete(v78[0]);
          }

          if (buf[47] < 0)
          {
            operator delete(*&buf[24]);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          goto LABEL_44;
        }
      }

      else
      {
        v18 = 0.0;
        v17 = v69;
      }

      if (v17 == 2.22507386e-308)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v21 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v15;
          *&buf[28] = 2050;
          *&buf[30] = Current;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient Marking client as missing, Client:%{public, location:escape_only}@, missingTime_s:%{public}.09f}", buf, 0x26u);
        }

        sub_1007776F8(a1, v15, &Current);
        v22 = *(a1 + 17);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000352CC;
        *&buf[24] = &unk_10246FEF8;
        *&buf[40] = a1;
        *&buf[32] = v15;
        [v22 iterateIdentitiesRelatedToKeyPath:v15 withBlock:buf];
      }

      if (a1[30] - v18 < v11 || v11 == -1.0)
      {
        v11 = a1[30] - v18;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v24 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 30);
        *buf = 138412802;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        *&buf[22] = 2048;
        *&buf[24] = v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "%@ has been missing for %.3fs (safe harbor threshold: %.3fs)", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        v28 = *(a1 + 30);
        LODWORD(v71[0]) = 138412802;
        *(v71 + 4) = v15;
        WORD2(v71[1]) = 2048;
        *(&v71[1] + 6) = *&v18;
        HIWORD(v71[2]) = 2048;
        v71[3] = v28;
        LODWORD(v59) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "%@ has been missing for %.3fs (safe harbor threshold: %.3fs)", v71, v59);
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::handleAppInstallationStatus(NSArray<NSString *> *, NSArray<NSString *> *, NSArray<NSString *> *)", "%s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }

LABEL_44:

      v12 = v12 + 1;
    }

    while (v9 != v12);
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    v9 = v31;
  }

  while (v31);
LABEL_92:
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3);
  if (v32)
  {
    v33 = MEMORY[0];
    do
    {
      v34 = 0;
      do
      {
        if (MEMORY[0] != v33)
        {
          objc_enumerationMutation(a3);
        }

        v35 = *(8 * v34);
        v36 = objc_alloc_init(NSAutoreleasePool);
        v37 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientAnchor:v35 anchorType:105]);
        if (sub_10077E1DC(a1, v37, &v69))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v38 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(a1 + 30);
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v37;
            *&buf[28] = 2050;
            *&buf[30] = v39;
            _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient Client restored within safe harbor threshold - keeping, Client:%{public, location:escape_only}@, safe harbor threshold_s:%{public}.09f}", buf, 0x26u);
          }

          sub_1007778FC(a1, v37);
          v40 = *(a1 + 17);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000352CC;
          *&buf[24] = &unk_10246FEF8;
          *&buf[40] = a1;
          *&buf[32] = v37;
          [v40 iterateIdentitiesRelatedToKeyPath:v37 withBlock:buf];
        }

        v34 = v34 + 1;
      }

      while (v32 != v34);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3);
    }

    while (v32);
  }

  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4);
  if (v41)
  {
    v42 = MEMORY[0];
    do
    {
      v43 = 0;
      do
      {
        if (MEMORY[0] != v42)
        {
          objc_enumerationMutation(a4);
        }

        v44 = *(8 * v43);
        v45 = objc_alloc_init(NSAutoreleasePool);
        v46 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientAnchor:v44 anchorType:105]);
        if (sub_10077E1DC(a1, v46, &v69))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v47 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(a1 + 30);
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v46;
            *&buf[28] = 2050;
            *&buf[30] = v48;
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient Client restored (remotely) within safe harbor threshold - keeping, Client:%{public, location:escape_only}@, safe harbor threshold_s:%{public}.09f}", buf, 0x26u);
          }

          sub_1007778FC(a1, v46);
        }

        [*(a1 + 17) setBool:1 forKey:@"SyncedAuthForUninstalledApp" atKeyPath:v46];

        v43 = v43 + 1;
      }

      while (v41 != v43);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4);
    }

    while (v41);
  }

  v49 = *(a1 + 31);
  if (v11 == -1.0)
  {
    [v49 setNextFireDelay:1.79769313e308];
  }

  else
  {
    [v49 nextFireDelay];
    if (v11 < v50)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v51 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v11;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEFAULT, "#ClearClient updated AppUninstallTimer; next timer will fire in %.3fs", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192EE54(v11);
      }

      [*(a1 + 31) setNextFireDelay:v11];
    }
  }

  [*(a1 + 17) persist];
  sub_1001D2F14(a1);
  return sub_100044F7C(a1);
}

BOOL sub_10077E1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    v6 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v5), "dictionary"}];

    return sub_100D96710(v6, a3);
  }

  else
  {
    *a3 = 0x10000000000000;
    return 0;
  }
}

BOOL sub_10077E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000184F4(a1, a2);
  if (!&SBUserNotificationPendInSetupIfNotAllowedKey)
  {
    return 0;
  }

  v9 = v7;
  v10 = sub_100056238(v7, v8);
  v11 = sub_1007CB2E4(v10, @"LOCATION_ACCURACY");
  v13 = v11;
  if (a3 == 1)
  {
    v17 = sub_100056238(v11, v12);
    v18 = @"IMPROVE_LOCATION_ACCURACY_BLUETOOTH";
LABEL_9:
    v11 = sub_1007CB2E4(v17, v18);
    v19 = v11;
    goto LABEL_10;
  }

  if (!a3)
  {
    v14 = MGGetBoolAnswer();
    v15 = v14;
    v17 = sub_100056238(v14, v16);
    if (v15)
    {
      v18 = @"IMPROVE_LOCATION_ACCURACY_WLAN";
    }

    else
    {
      v18 = @"IMPROVE_LOCATION_ACCURACY_WIFI";
    }

    goto LABEL_9;
  }

  v19 = 0;
LABEL_10:
  v20 = sub_100056238(v11, v12);
  v21 = sub_1007CB2E4(v20, @"OK");
  v23 = sub_100056238(v21, v22);
  v24 = sub_1007CB2E4(v23, @"SETTINGS");
  v25 = v24;
  if (v13 && v19 && v21 && v24)
  {
    keys = SBUserNotificationPendInSetupIfNotAllowedKey;
    *v41 = kCFUserNotificationAlertHeaderKey;
    *&v41[8] = kCFUserNotificationAlertMessageKey;
    *&v41[16] = kCFUserNotificationDefaultButtonTitleKey;
    v42 = kCFUserNotificationAlternateButtonTitleKey;
    values[0] = kCFBooleanTrue;
    values[1] = v13;
    values[2] = v19;
    values[3] = v21;
    values[4] = v24;
    v26 = CFDictionaryCreate(kCFAllocatorDefault, &keys, values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v26)
    {
      error = 0;
      v27 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, v26);
      CFRelease(v26);
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_19;
  }

  v27 = 0;
  if (v24)
  {
LABEL_19:
    CFRelease(v25);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v27)
  {
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v27, sub_1007A4864, 0);
    if (RunLoopSource)
    {
      v29 = sub_100107858();
      CFRunLoopAddSource(v29, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
      CFRetain(v27);
      sub_10079B350(a4);
      *(a4 + 24) = v27;
      sub_10000EC00(__p, "");
      sub_10023C2AC(&keys, 15, v9, 0, __p);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      [*(a1 + 40) currentLatchedAbsoluteTimestamp];
      v31 = v30;
      CFRetain(v27);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v27;
      v44 = v31;
      operator new();
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v35 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      keys = 68289282;
      *v41 = 2082;
      *&v41[2] = "";
      *&v41[10] = 2114;
      *&v41[12] = v9;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not create runloop source for ImproveAccuracyPrefs notification, Client:%{public, location:escape_only}@}", &keys, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v36 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      keys = 68289282;
      *v41 = 2082;
      *&v41[2] = "";
      *&v41[10] = 2114;
      *&v41[12] = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not create runloop source for ImproveAccuracyPrefs notification", "{msg%{public}.0s:Could not create runloop source for ImproveAccuracyPrefs notification, Client:%{public, location:escape_only}@}", &keys, 0x1Cu);
    }

    CFRelease(v27);
    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v32 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    keys = 68289282;
    *v41 = 2082;
    *&v41[2] = "";
    *&v41[10] = 2114;
    *&v41[12] = v9;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Could not create ImproveAccuracyPrefs notification, Client:%{public, location:escape_only}@}", &keys, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v33 = off_1025D47A8;
  result = os_signpost_enabled(off_1025D47A8);
  if (result)
  {
    keys = 68289282;
    *v41 = 2082;
    *&v41[2] = "";
    *&v41[10] = 2114;
    *&v41[12] = v9;
    _os_signpost_emit_with_name_impl(dword_100000000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not create ImproveAccuracyPrefs notification", "{msg%{public}.0s:Could not create ImproveAccuracyPrefs notification, Client:%{public, location:escape_only}@}", &keys, 0x1Cu);
    return 0;
  }

  return result;
}

id sub_10077E830(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = (a1 + 1168);
  if (!*(a1 + 1168))
  {
    v7 = [NSDictionary alloc];
    sub_100565860(&v65);
    sub_10000EC00(&v64, off_1025D8450);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v64;
    }

    else
    {
      v8 = v64.__r_.__value_.__r.__words[0];
    }

    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v64.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v65, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    *&v71 = *(&v10->__r_.__value_.__l + 2);
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v71) & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *v6 = [v7 initWithContentsOfFile:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
    if (SBYTE7(v71) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (*v6)
    {
      *(a1 + 1176) = [objc_msgSend(*v6 "allKeys")];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v14 = [objc_msgSend(*v6 "description")];
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "DAR map: %s", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192F1C4(v6);
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v16 = [objc_msgSend(*(a1 + 1176) "description")];
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "DAR map sorted keys: %s", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192F2C4((a1 + 1176));
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        sub_100565860(&v65);
        sub_10000EC00(&v64, off_1025D8450);
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v64;
        }

        else
        {
          v18 = v64.__r_.__value_.__r.__words[0];
        }

        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v64.__r_.__value_.__l.__size_;
        }

        v20 = std::string::append(&v65, v18, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        *&v71 = *(&v20->__r_.__value_.__l + 2);
        *__p = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        v22 = __p;
        if (SBYTE7(v71) < 0)
        {
          v22 = __p[0];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v22;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "DAR: could not read map file %{public}s", &buf, 0xCu);
        if (SBYTE7(v71) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_10192DC88(__p);
        v42 = off_1025D47A8;
        sub_100565860(&v64);
        sub_10000EC00(&buf, off_1025D8450);
        if ((v67 & 0x80u) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        if ((v67 & 0x80u) == 0)
        {
          v44 = v67;
        }

        else
        {
          v44 = *(&buf + 1);
        }

        v45 = std::string::append(&v64, p_buf, v44);
        v46 = *&v45->__r_.__value_.__l.__data_;
        v65.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&v65.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        v47 = &v65;
        if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v47 = v65.__r_.__value_.__r.__words[0];
        }

        v68 = 136446210;
        v69 = v47;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v42, 17, "DAR: could not read map file %{public}s", &v68, 12);
        v49 = v48;
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (v67 < 0)
        {
          operator delete(buf);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLClientManager::reduceAccuracy(const CLClientLocation &, CLClientManagerReduceAccuracyReplyBlock)", "%s\n", v49);
        if (v49 != __p)
        {
          free(v49);
        }
      }
    }
  }

  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v61 = sub_10077F0B8;
  v62 = &unk_10246FFA8;
  v63 = a3;
  if (*v6)
  {
    if (*(a1 + 1204) == -1.0 || vabdd_f64(*(a1 + 1260), *(a2 + 76)) > 604800.0 || sub_100117154(*(a1 + 1188), *(a1 + 1196), *(a2 + 4), *(a2 + 12)) > 500.0)
    {
      v23 = a2[7];
      v24 = a2[8];
      v25 = a2[5];
      v57 = a2[6];
      v58 = v23;
      v59[0] = v24;
      *(v59 + 12) = *(a2 + 140);
      v26 = a2[3];
      v27 = a2[4];
      v28 = a2[1];
      v53 = a2[2];
      v54 = v26;
      v55 = v27;
      v56 = v25;
      v51 = *a2;
      v52 = v28;
      v29 = *(a1 + 1576);
      *&v26 = *(a2 + 4);
      *&v27 = *(a2 + 12);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10077F3CC;
      v50[3] = &unk_10246FFF0;
      v50[4] = v60;
      v50[5] = a1;
      return [v29 getNumberOfInputApsUsedInWifiTileForCoordinate:v50 withReply:{*&v26, *&v27}];
    }

    else
    {
      v36 = *(a1 + 1344);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v37 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p[0]) = 134217984;
        *(__p + 4) = v36;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "DAR: applying cached quantization %f", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192F3C4(*&v36);
      }

      v38 = a2[7];
      v76 = a2[6];
      v77 = v38;
      v78[0] = a2[8];
      *(v78 + 12) = *(a2 + 140);
      v39 = a2[3];
      v72 = a2[2];
      v73 = v39;
      v40 = a2[5];
      v74 = a2[4];
      v75 = v40;
      v41 = a2[1];
      *__p = *a2;
      v71 = v41;
      return v61(v60, __p, *&v36);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v31 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = 0x3FB999999999999ALL;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#Warning DAR: applying default quantization %f", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192F4CC();
    }

    v32 = a2[7];
    v76 = a2[6];
    v77 = v32;
    v78[0] = a2[8];
    *(v78 + 12) = *(a2 + 140);
    v33 = a2[3];
    v72 = a2[2];
    v73 = v33;
    v34 = a2[5];
    v74 = a2[4];
    v75 = v34;
    v35 = a2[1];
    *__p = *a2;
    v71 = v35;
    return v61(v60, __p, 0.1);
  }
}

void sub_10077EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

int64_t sub_10077F04C(id a1, id a2, id a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10077F0B8(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 4);
    v7 = *(a2 + 12);
    v8 = *(a2 + 20);
    *buf = 134546177;
    *&buf[4] = v6;
    *&buf[12] = 2053;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    *&buf[24] = v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "DAR: original location: %{sensitive}.8f, %{sensitive}.8f, %.2f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192F5D0();
  }

  *(a2 + 4) = vmulq_n_f64(vrndaq_f64(vdivq_f64(*(a2 + 4), vdupq_lane_s64(*&a3, 0))), a3);
  *(a2 + 20) = sqrt(a3 * a3 * 5000000000.0 + *(a2 + 20) * *(a2 + 20));
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a2 + 4);
    v11 = *(a2 + 12);
    v12 = *(a2 + 20);
    *buf = 134546177;
    *&buf[4] = v10;
    *&buf[12] = 2053;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    *&buf[24] = v12;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "DAR:  reduced location: %{sensitive}.8f, %{sensitive}.8f, %.2f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = *(a2 + 4);
    v21 = *(a2 + 12);
    v22 = *(a2 + 20);
    v26 = 134546177;
    v27 = v20;
    v28 = 2053;
    v29 = v21;
    v30 = 2048;
    v31 = v22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "DAR:  reduced location: %{sensitive}.8f, %{sensitive}.8f, %.2f", &v26, 32);
    v24 = v23;
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::reduceAccuracy(const CLClientLocation &, CLClientManagerReduceAccuracyReplyBlock)_block_invoke", "%s\n", v23);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  v13 = *(a1 + 32);
  v14 = [CLLocation alloc];
  v15 = *(a2 + 112);
  v37 = *(a2 + 96);
  v38 = v15;
  v39[0] = *(a2 + 128);
  *(v39 + 12) = *(a2 + 140);
  v16 = *(a2 + 48);
  v33 = *(a2 + 32);
  v34 = v16;
  v17 = *(a2 + 80);
  v35 = *(a2 + 64);
  v36 = v17;
  v18 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v18;
  return (*(v13 + 16))(v13, [v14 initWithClientLocation:buf]);
}

uint64_t sub_10077F3CC(uint64_t a1, int *a2)
{
  v4 = *(a1 + 40);
  v5 = [*(v4 + 1176) indexOfObject:-[NSNumber stringValue](+[NSNumber numberWithInt:](NSNumber inSortedRange:"numberWithInt:" options:a2) usingComparator:{"stringValue"), 0, objc_msgSend(*(v4 + 1176), "count"), 1024, &stru_10246FFC8}];
  if (v5 == [*(v4 + 1176) count] || objc_msgSend(objc_msgSend(*(v4 + 1176), "objectAtIndex:", v5), "integerValue") != a2)
  {
    --v5;
  }

  [objc_msgSend(*(v4 + 1168) objectForKey:{objc_msgSend(*(v4 + 1176), "objectAtIndex:", v5)), "doubleValue"}];
  v7 = v6;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 134218240;
    *&v15[4] = v7;
    *&v15[12] = 1024;
    *&v15[14] = a2;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "DAR: applying new quantization %f based on ap count %d", v15, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192F6EC(a2, v7);
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2)
  {
LABEL_10:
    memmove((v4 + 1184), (a1 + 48), 0x9CuLL);
    *(v4 + 1344) = v7;
  }

LABEL_11:
  v9 = *(a1 + 32);
  v10 = *(a1 + 160);
  v20 = *(a1 + 144);
  v21 = v10;
  v22[0] = *(a1 + 176);
  *(v22 + 12) = *(a1 + 188);
  v11 = *(a1 + 96);
  v16 = *(a1 + 80);
  v17 = v11;
  v12 = *(a1 + 128);
  v18 = *(a1 + 112);
  v19 = v12;
  v13 = *(a1 + 64);
  *v15 = *(a1 + 48);
  *&v15[16] = v13;
  return (*(v9 + 16))(v7);
}

int64_t sub_10077F5CC(id a1, id a2, id a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

void sub_10077F638(uint64_t *a1, uint64_t a2)
{
  v2 = a1[117];
  v3 = a1 + 118;
  if (v2 != a1 + 118)
  {
    while (1)
    {
      v6 = v2[4];
      if ((*(a2 + 16))(a2, v6))
      {
        break;
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
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
      if (v8 == v3)
      {
        return;
      }
    }

    *(v6 + 8) = mach_continuous_time();
    sub_10077F82C(a1, v6);
    if (qword_1025D4790 != -1)
    {
      sub_10192F910();
    }

    v10 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dic consuming a matching butterfly, eaten:%{public}p}", &v12, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_10192DAA4();
      }
    }

    v11 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v6;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dic consuming a matching butterfly", "{msg%{public}.0s:#dic consuming a matching butterfly, eaten:%{public}p}", &v12, 0x1Cu);
    }
  }
}

void sub_10077F82C(uint64_t *a1, unint64_t a2)
{
  v3 = a1[118];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1;
  p_info = a1 + 118;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      p_info = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (p_info == a1 + 118 || p_info[4] > a2)
  {
LABEL_9:
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290051;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = sub_100008880(a2);
      v24 = 2050;
      v25 = a2;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "iter != fDaemonIdentifiableClientsWithoutConnection.end()";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:destroying disconnected #dic - not found, ClientKey:%{public, location:escape_only}@, this:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v11 = sub_100008880(a2);
      *buf = 68290051;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v11;
      v24 = 2050;
      v25 = a2;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "iter != fDaemonIdentifiableClientsWithoutConnection.end()";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "destroying disconnected #dic - not found", "{msg%{public}.0s:destroying disconnected #dic - not found, ClientKey:%{public, location:escape_only}@, this:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v12 = sub_100008880(a2);
      *buf = 68290051;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2114;
      v23 = v12;
      v24 = 2050;
      v25 = a2;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "iter != fDaemonIdentifiableClientsWithoutConnection.end()";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:destroying disconnected #dic - not found, ClientKey:%{public, location:escape_only}@, this:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager_Unified.mm", 3670, "destroyDaemonIdentifiableClient");
    __break(1u);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_100008880(a2);
    *buf = 68289538;
    *&buf[4] = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2114;
    v23 = v14;
    v24 = 2050;
    v25 = a2;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:destroying #dic, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v15 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v16 = sub_100008880(a2);
    *buf = 68289538;
    *&buf[4] = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2114;
    v23 = v16;
    v24 = 2050;
    v25 = a2;
    _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "destroying #dic", "{msg%{public}.0s:destroying #dic, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
  }

  sub_10000EC00(buf, [[NSString stringWithFormat:?];
  v17 = sub_100008880(a2);
  v18 = (*(*a2 + 24))(a2);
  sub_1007733A4(v4, v17, buf, v18, 0, 0);
  sub_10045E8A0(v4 + 117, p_info);
  operator delete(p_info);
  (*(*a2 + 8))(a2);
  if (SBYTE3(v23) < 0)
  {
    operator delete(*buf);
  }
}

void sub_10077FD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10077FD50(uint64_t a1)
{
  v2 = [*(a1 + 40) newTimer];
  *(a1 + 144) = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10077FDE8;
  v4[3] = &unk_102449A78;
  v4[4] = a1;
  [v2 setHandler:v4];
  return [*(a1 + 144) setNextFireDelay:600.0];
}

id sub_10077FDE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 136) persist];
  v2 = *(v1 + 144);

  return [v2 setNextFireDelay:600.0];
}

id sub_10077FEB8(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];

  return [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:a1 error:a2];
}

NSData *sub_10077FF70(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:&off_10254EF18 forKeyedSubscript:@"version"];
  v3 = +[NSMutableDictionary dictionary];
  v4 = *(a1 + 136);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007801CC;
  v9[3] = &unk_10246FD68;
  v9[4] = v3;
  v9[5] = a1;
  [v4 iterateAllAnchorKeyPathsWithBlock:v9];
  [v2 setObject:v3 forKeyedSubscript:@"clients"];
  [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", sub_1000193E0() == 1), @"global"}];
  v8 = 0;
  result = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
  if (v8)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:failed to archive authorization decisions, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v7 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to archive authorization decisions", "{msg%{public}.0s:failed to archive authorization decisions, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return 0;
  }

  return result;
}

void sub_1007801CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    objc_msgSend_clientName(a2);
  }

  else
  {
    v19 = 0;
    *__p = 0u;
    v18 = 0u;
    v15 = 0u;
    *v16 = 0u;
    v13 = 0u;
    *v14 = 0u;
    *v11 = 0u;
    *v12 = 0u;
    *v9 = 0u;
    v10 = 0u;
    *v8 = 0u;
  }

  v5 = [a2 legacyClientKey];
  sub_10003B25C(v8);
  if (v15 >= 0)
  {
    v6 = &v14[1];
  }

  else
  {
    v6 = v14[1];
  }

  if ([[NSString stringWithUTF8String:?], "hasPrefix:", @"com.apple."])
  {
    goto LABEL_11;
  }

  v7 = HIBYTE(v12[0]);
  if (SHIBYTE(v12[0]) < 0)
  {
    v7 = v11[1];
  }

  if (v7)
  {
LABEL_11:
    [*(a1 + 32) setObject:objc_msgSend(objc_msgSend(*(v4 + 136) forKeyedSubscript:{"readonlyStoreAtKeyPath:", a2), "dictionary"), v5}];
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v9[0]) < 0)
  {
    operator delete(v8[0]);
  }
}

NSError *sub_100780350(uint64_t a1, uint64_t a2, void *a3)
{
  memset(&__s1, 0, sizeof(__s1));
  v5 = sub_1000206B4(a1, a2);
  if (sub_100005050(v5, @"kAuthorizationDecisionsConfirmationToken", &__s1))
  {
    v6 = [objc_msgSend(a3 "UUIDString")];
    v7 = strlen(v6);
    v8 = v7;
    v9 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v7 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_9;
      }

      if (v7 == -1)
      {
        sub_1003CC9DC();
      }

      p_s1 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_9;
      }

      p_s1 = &__s1;
    }

    if (!memcmp(p_s1, v6, v8))
    {
      v13 = 0;
      if ((v9 & 0x80) == 0)
      {
        return v13;
      }

      goto LABEL_21;
    }
  }

LABEL_9:
  v16 = 0;
  sub_10077FEB8(a2, &v16);
  if (v16)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [-[NSError description](v16 "description")];
      *buf = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Attempting to apply archived auth decisions; early return due to failure to unarchive authorization decisions, errorDesc:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v13 = v16;
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Did not fail to unarchive authorization decisions! This is unexpected unless the archive came from a Sydro or earlier device. Early returning because this function must no-op.}", buf, 0x12u);
    }

    v13 = [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:0];
  }

  if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_21:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  return v13;
}

id sub_1007805C8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v4 isValidCKP])
  {
    v5 = *(a1 + 136);

    return [v5 intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v4 defaultValue:0];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#compensation failed to load persistent store for client, Client:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v8 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#compensation failed to load persistent store for client", "{msg%{public}.0s:#compensation failed to load persistent store for client, Client:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }

    return 0;
  }
}

void sub_1007807A8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_10001CF3C();
  v5 = *(a1 + 272);
  if (!v4)
  {
    if (v5)
    {
      v6 = *v5;
      goto LABEL_9;
    }

LABEL_15:

    sub_1007815E8(a1, v2);
    return;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *v5;
  if (v6 == 17)
  {

    sub_1007808B0(a1, v2);
    return;
  }

LABEL_9:
  switch(v6)
  {
    case 15:

      sub_100781234(a1, v2);
      break;
    case 10:

      sub_10078104C(a1, v2);
      break;
    case 6:

      sub_1007809DC(a1, v2);
      return;
    default:
      goto LABEL_15;
  }
}

uint64_t sub_1007808B0(uint64_t a1, char a2)
{
  if ((a2 & 3) - 1 >= 2)
  {
    if ((a2 & 3) != 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134349056;
        v7 = 3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Pinning no user response to pinned location authorization (flags 0x%{public}lx)", &v6, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192FA20();
      }
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  sub_10023DC84(*(a1 + 272));
  return sub_1007A3EE0((a1 + 272), 0);
}

uint64_t sub_1007809DC(uint64_t a1, char a2)
{
  v4 = sub_1000184F4(a1, *(*(a1 + 272) + 8));
  if ((a2 & 3u) > 1uLL)
  {
    if ((a2 & 3) == 3)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v4;
        *&buf[12] = 2050;
        *&buf[14] = 3;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#warning No user response to #reprompt for client %{public}@ (flags 0x%{public}lx)", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192FB14();
      }

      goto LABEL_17;
    }
  }

  else if ((a2 & 3) != 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "User has selected 'WIU' on #reprompt for %{public}@, changing authorization.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192FC1C();
    }

    sub_100791600(a1, v4, 4, 0, v6, 1, 1);
LABEL_17:
    v24 = 0;
    goto LABEL_25;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "User has authorized continued access for %@ at #reprompt", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192FD0C();
  }

  v24 = 1;
LABEL_25:
  [*(a1 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:v4 atKeyPath:CFAbsoluteTimeGetCurrent()];
  sub_100565518(0, &v25, v9);
  v10 = std::string::append(&v25, "locScoreInfoReport", 0x12uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v10->__r_.__value_.__l + 2);
  *buf = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (buf[23] >= 0)
  {
    v12 = buf;
  }

  else
  {
    v12 = *buf;
  }

  v22 = [NSString stringWithUTF8String:v12];
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v13 = [*(a1 + 136) intForKey:@"ConsumptionCoolingRate" atKeyPath:v4 defaultValue:{0, v22}];
  v14 = [*(a1 + 136) intForKey:@"NextConsumptionThresholdScore" atKeyPath:v4 defaultValue:0];
  v15 = [*(a1 + 136) intForKey:@"NextNextConsumptionThresholdScore" atKeyPath:v4 defaultValue:0];
  if (v24)
  {
    if (v4)
    {
      objc_msgSend_cppClientKey(v4);
    }

    else
    {
      memset(buf, 0, 24);
    }

    v25.__r_.__value_.__r.__words[0] = buf;
    v16 = *(sub_100046778((a1 + 464), buf, &unk_101C66300, &v25) + 12);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    [*(a1 + 136) setInt:v15 forKey:@"NextConsumptionThresholdScore" atKeyPath:v4];
    [*(a1 + 136) removeValueForKey:@"NextNextConsumptionThresholdScore" atKeyPath:v4];
    if (v13 + 1 < 2)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if ((v14 + v14) < v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    [*(a1 + 136) setInt:v18 forKey:@"ConsumptionCoolingRate" atKeyPath:v4];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290562;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v4;
      v27 = 1026;
      v28 = v14;
      v29 = 1026;
      v30 = v15;
      v31 = 1026;
      v32 = v16;
      v33 = 1026;
      v34 = v13;
      v35 = 1026;
      v36 = v18;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting #reprompt thresholds, Client:%{public, location:escape_only}@, priorThreshold:%{public}d, newThreshold:%{public}d, currentUsage:%{public}d, priorCooling:%{public}d, newCooling:%{public}d}", buf, 0x3Au);
    }
  }

  [*(a1 + 136) persist];
  AnalyticsSendEventLazy();
  v25.__r_.__value_.__r.__words[0] = 0;
  if (![+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v25.__r_.__value_.__r.__words[0];
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Got error removing #reprompt checkpoint file, Error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  return sub_1007A3EE0((a1 + 272), 0);
}

void sub_100780FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10078104C(uint64_t a1, char a2)
{
  v4 = sub_1000184F4(a1, *(*(a1 + 272) + 8));
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  v6 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v9 = 68289538;
    *v10 = 0;
    *&v10[4] = 2082;
    *&v10[6] = "";
    *&v10[14] = 2114;
    *&v10[16] = v4;
    v11 = 1026;
    v12 = a2 & 3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt User responded on BigSwitch prompt, Client:%{public, location:escape_only}@, response:%{public}d}", &v9, 0x22u);
  }

  if ((a2 & 3u) <= 1uLL)
  {
    if ((a2 & 3) != 0)
    {
      sub_1007A5DBC(v6, "prefs:root=Privacy&path=LOCATION");
    }

    goto LABEL_9;
  }

  if ((a2 & 3) == 2)
  {
LABEL_9:
    sub_1007779F4(a1, v4);
    goto LABEL_16;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    *v10 = v4;
    *&v10[8] = 2050;
    *&v10[10] = 3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#warning no user response to client %{public}@ (flags 0x%{public}lx)", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192FDFC();
  }

LABEL_16:
  sub_10023DC84(*(a1 + 272));
  return sub_1007A3EE0((a1 + 272), 0);
}

void sub_100781234(uint64_t a1, char a2)
{
  v4 = sub_1000184F4(a1, *(*(a1 + 272) + 8));
  v5 = *(*(a1 + 272) + 48);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  v7 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 68289538;
    *&buf[4] = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2114;
    v27 = v4;
    v28 = 1026;
    v29 = a2 & 3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt User responded on ImproveAccuracyPrefs prompt, Client:%{public, location:escape_only}@, response:%{public}d}", buf, 0x22u);
  }

  v8 = *(a1 + 1056);
  v9 = *(a1 + 1064);
  while (v8 != v9)
  {
    v7 = v8[3];
    if (v7)
    {
      v7 = CFEqual(v7, v5);
      v9 = *(a1 + 1064);
      if (v7)
      {
        break;
      }
    }

    v8 += 4;
  }

  if (v8 != v9)
  {
    if ((a2 & 3u) > 1uLL)
    {
      if ((a2 & 3) != 2)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v13 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = "Unknown";
          if (*v8 == 1)
          {
            v14 = "Bluetooth";
          }

          if (*v8)
          {
            v15 = v14;
          }

          else
          {
            v15 = "Wifi";
          }

          sub_10000EC00(buf, v15);
          if (SBYTE3(v27) >= 0)
          {
            v16 = buf;
          }

          else
          {
            v16 = *buf;
          }

          v19 = 136446466;
          v20 = v16;
          v21 = 2050;
          v22 = 3;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#warning no user response for improve accuracy prefs notification %{public}s (flags 0x%{public}lx)", &v19, 0x16u);
          if (SBYTE3(v27) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192FEFC(v8);
        }

        goto LABEL_42;
      }
    }

    else if ((a2 & 3) != 0)
    {
      if (!*v8)
      {
        v10 = "prefs:root=WIFI";
        goto LABEL_40;
      }

      if (*v8 == 1)
      {
        v10 = "prefs:root=Bluetooth";
LABEL_40:
        sub_1007A5DBC(v7, v10);
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_10079B3EC(v8, v18, Current);
LABEL_42:
    sub_10079B350(v8);
    sub_10023DC84(*(a1 + 272));
    sub_1007A3EE0((a1 + 272), 0);
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2050;
    v27 = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:ImproveAccuracyNotification object not created for notification, notification:%{public}p}", buf, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v12 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2050;
    v27 = v5;
    _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ImproveAccuracyNotification object not created for notification", "{msg%{public}.0s:ImproveAccuracyNotification object not created for notification, notification:%{public}p}", buf, 0x1Cu);
  }
}

void sub_1007815E8(uint64_t a1, char a2)
{
  v4 = sub_1000184F4(a1, *(*(a1 + 272) + 8));
  if (([v4 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = **(a1 + 272);
      goto LABEL_9;
    }

    v6 = *(*(a1 + 272) + 8);
    *buf = 68289282;
    *&buf[4] = 0;
    *v95 = 2082;
    *&v95[2] = "";
    *&v95[10] = 2114;
    *&v95[12] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning onClientUserNotification fInflightPromptAuthorizationRequest failed to evaluate to a real, registered client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  v7 = **(a1 + 272);
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

LABEL_9:
  v8 = off_1025D47A8;
  v9 = a2 & 3;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    *&buf[4] = 0;
    *v95 = 2082;
    *&v95[2] = "";
    *&v95[10] = 2114;
    *&v95[12] = v4;
    *&v95[20] = 1026;
    *&v95[22] = v7;
    *&v95[26] = 1026;
    *&v95[28] = a2 & 3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt User responded to prompt for client, client:%{public, location:escape_only}@, requestType:%{public}d, response:%{public}d}", buf, 0x28u);
  }

  if (v9 == 3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v95 = 2082;
      *&v95[2] = "";
      *&v95[10] = 2114;
      *&v95[12] = v4;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt User dismissed prompt for client, client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v98[0] = @"ClientKey";
    v99[0] = [v4 userlessClientKeyPath];
    v98[1] = @"RequestType";
    v99[1] = [NSNumber numberWithUnsignedInt:v7];
    v98[2] = @"Dismissed";
    v99[2] = &__kCFBooleanTrue;
    [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:3];
    AnalyticsSendEvent();
    sub_10023D820(*(a1 + 272), @"The user dismissed the prompt");
    sub_1007A3EE0((a1 + 272), 0);
    return;
  }

  v11 = *(*(a1 + 272) + 4);
  v12 = _os_feature_enabled_impl();
  v13 = *(a1 + 272);
  if (*(v13 + 39) < 0)
  {
    sub_100007244(__p, *(v13 + 16), *(v13 + 24));
  }

  else
  {
    *__p = *(v13 + 16);
    v88 = *(v13 + 32);
  }

  if (v7 <= 8)
  {
    if ((v7 - 1) >= 5)
    {
      if ((v7 - 7) >= 2)
      {
        goto LABEL_71;
      }

      if (v9 == 1)
      {
        v25 = 0;
        v9 = 4;
      }

      else
      {
        if (v9 != 2)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v83 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            *buf = 68290051;
            *&buf[4] = 0;
            *v95 = 2082;
            *&v95[2] = "";
            *&v95[10] = 2114;
            *&v95[12] = v4;
            *&v95[20] = 1026;
            *&v95[22] = a2 & 3;
            *&v95[26] = 2082;
            *&v95[28] = "assert";
            v96 = 2081;
            v97 = "false";
            _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Impossible response to WhenInUse Upgrade to Always prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v84 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            *buf = 68290051;
            *&buf[4] = 0;
            *v95 = 2082;
            *&v95[2] = "";
            *&v95[10] = 2114;
            *&v95[12] = v4;
            *&v95[20] = 1026;
            *&v95[22] = a2 & 3;
            *&v95[26] = 2082;
            *&v95[28] = "assert";
            v96 = 2081;
            v97 = "false";
            _os_signpost_emit_with_name_impl(dword_100000000, v84, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Impossible response to WhenInUse Upgrade to Always prompt", "{msg%{public}.0s:Impossible response to WhenInUse Upgrade to Always prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v85 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            *buf = 68290051;
            *&buf[4] = 0;
            *v95 = 2082;
            *&v95[2] = "";
            *&v95[10] = 2114;
            *&v95[12] = v4;
            *&v95[20] = 1026;
            *&v95[22] = a2 & 3;
            *&v95[26] = 2082;
            *&v95[28] = "assert";
            v96 = 2081;
            v97 = "false";
            _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Impossible response to WhenInUse Upgrade to Always prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
          }

          v82 = 5416;
          goto LABEL_246;
        }

        v9 = 3;
        v25 = 1;
      }

      if (*(a1 + 264))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v44 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 288) != 0;
          *buf = 68289794;
          *&buf[4] = 0;
          *v95 = 2082;
          *&v95[2] = "";
          *&v95[10] = 2114;
          *&v95[12] = v4;
          *&v95[20] = 2050;
          *&v95[22] = v9;
          *&v95[30] = 1026;
          *&v95[32] = v45;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#provisional prompt response, Client:%{public, location:escape_only}@, GrantedStatus:%{public, location:CLClientAuthorizationStatus}lld, FollowupPending:%{public}hhd}", buf, 0x2Cu);
        }

        [*(a1 + 40) currentLatchedAbsoluteTimestamp];
        v47 = v46;
        v48 = *(a1 + 304);
        *(a1 + 304) = 0;
        v20 = -1.0;
        [*(a1 + 136) doubleForKey:@"ProvisionalMonitoringBegin" atKeyPath:v4 defaultValue:-1.0];
        v50 = v49;
        if (v49 != -1.0)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v20 = Current - v50;
          v52 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v95 = 2082;
            *&v95[2] = "";
            *&v95[10] = 2114;
            *&v95[12] = v4;
            *&v95[20] = 2050;
            *&v95[22] = v20;
            _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#provisional total duration, ClientKey:%{public, location:escape_only}@, duration:%{public}f}", buf, 0x26u);
          }
        }

        v53 = *(a1 + 288);
        if (v53)
        {
          (*(v53 + 16))(v53, v25);

          *(a1 + 288) = 0;
          v18 = 3;
        }

        else
        {
          v18 = 0;
        }

        v74 = sub_100033370(a1, v4);
        sub_100791C88(a1, v74, 1, 0, 1);
        v22 = 0;
        v72 = v47 - v48;
        goto LABEL_197;
      }

      sub_100791ACC(a1, v4, 0, 1);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v57 = off_1025D47A8;
      v20 = -1.0;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(a1 + 288) != 0;
        *buf = 68289794;
        *&buf[4] = 0;
        *v95 = 2082;
        *&v95[2] = "";
        *&v95[10] = 2114;
        *&v95[12] = v4;
        *&v95[20] = 2050;
        *&v95[22] = v9;
        *&v95[30] = 1026;
        *&v95[32] = v58;
        _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Non-#provisional WIU to Always #AuthPrompt prompt response, ClientKey:%{public, location:escape_only}@, GrantedStatus:%{public, location:CLClientAuthorizationStatus}lld, BypassingSomeoneElseOnDeck:%{public}hhd}", buf, 0x2Cu);
      }

      goto LABEL_135;
    }

LABEL_28:
    if (v11)
    {
      if ((a2 & 3) != 0)
      {
        if (v9 != 1)
        {
          v15 = 0;
          v9 = 0;
LABEL_137:
          v23 = 1;
          goto LABEL_138;
        }

        goto LABEL_63;
      }

LABEL_64:
      v23 = 0;
      v24 = 0;
      v15 = 0;
      v9 = 2;
      goto LABEL_139;
    }

    if (v12)
    {
      if ((a2 & 3) == 0)
      {
        v15 = 0;
        goto LABEL_137;
      }

      if (v9 != 1)
      {
LABEL_63:
        v23 = 0;
        v15 = 0;
        v9 = 0;
LABEL_138:
        v24 = 1;
LABEL_139:
        if (*(a1 + 312) == 3)
        {
          *(a1 + 233) = 1;
          *buf = 0;
          *v95 = buf;
          *&v95[8] = 0x2020000000;
          *&v95[16] = 0;
          v59 = *(a1 + 136);
          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_1007A5D78;
          v86[3] = &unk_102470538;
          v86[4] = buf;
          [v59 iterateIdentitiesRelatedToKeyPath:v4 withBlock:v86];
          v60 = [NSString stringWithFormat:@"%@-%@", @"cl-user-zone", [[NSNumber numberWithUnsignedInteger:?]]];
          _Block_object_dispose(buf, 8);
          if (!v24)
          {
LABEL_141:
            if ((v7 - 3) < 0xFFFFFFFE)
            {
              v61 = v15;
            }

            else
            {
              v61 = 0;
            }

            if (v61 == 1)
            {
              v62 = sub_100033370(a1, v4);
              sub_100791C88(a1, v62, 0, 0, 1);
              v18 = 2;
            }

            else
            {
              v18 = 0;
            }

            goto LABEL_166;
          }
        }

        else
        {
          v60 = 0;
          if (!v24)
          {
            goto LABEL_141;
          }
        }

        if (v23)
        {
          sub_10077B960(*(a1 + 136), v4, 4u, 1);
          [*(a1 + 136) setBool:1 forKey:@"AuthorizationPromptOptionTypeNegative" atKeyPath:v4];
          if (v11)
          {
            v18 = 14;
          }

          else
          {
            v18 = 13;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v63 = off_1025D47A8;
          if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_166;
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *v95 = 2082;
          *&v95[2] = "";
          *&v95[10] = 2114;
          *&v95[12] = v4;
          v64 = "{msg%{public}.0s:#TemporaryAuth Client has been granted temporary negative status, Client:%{public, location:escape_only}@}";
        }

        else
        {
          if (v60)
          {
            v4 = [v4 clientKeyPathWithReplacementSubIdentityId:v60 subIdentityType:122];
          }

          sub_10077B960(*(a1 + 136), v4, 1u, 1);
          [*(a1 + 136) removeValueForKey:@"AuthorizationPromptOptionTypeNegative" atKeyPath:v4];
          if (v11)
          {
            v18 = 12;
          }

          else
          {
            v18 = 1;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v63 = off_1025D47A8;
          if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_166;
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *v95 = 2082;
          *&v95[2] = "";
          *&v95[10] = 2114;
          *&v95[12] = v4;
          v64 = "{msg%{public}.0s:#TemporaryAuth Client has been granted temporary positive status, ClientKey:%{public, location:escape_only}@}";
        }

        _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 0x1Cu);
LABEL_166:
        v65 = *(a1 + 312) - 1;
        if (v65 > 2)
        {
          v66 = 0;
        }

        else
        {
          v66 = dword_101C8D928[v65];
        }

        if ((v7 & 0xFFFFFFFD) == 1)
        {
          v22 = 2;
        }

        else
        {
          v22 = v66;
        }

        v67 = HIBYTE(v88);
        if (v88 < 0)
        {
          v67 = __p[1];
        }

        if (v67)
        {
          sub_1007A4C58(a1, v4, __p);
        }

        else
        {
          v68 = [*(a1 + 136) registeredKeyPathForClientIdentifier:v4];
          if ([v68 isValidCKP])
          {
            [*(a1 + 136) removeValueForKey:@"AuthorizationPurposeKey" atKeyPath:v68];
          }
        }

LABEL_194:
        *(a1 + 312) = 0;
LABEL_195:
        v20 = -1.0;
        goto LABEL_196;
      }
    }

    else
    {
      if ((a2 & 3) == 0)
      {
        goto LABEL_64;
      }

      if (v9 == 1)
      {
        goto LABEL_63;
      }
    }

    v23 = 0;
    v24 = 0;
    v9 = 4;
    v15 = 1;
    goto LABEL_139;
  }

  if (v7 <= 12)
  {
    if (v7 == 9)
    {
      v39 = a2 & 3;
      if (v39 == 2)
      {
        v18 = 4;
      }

      else
      {
        v18 = 5;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v40 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v41 = "NO";
        *buf = 68289538;
        *&buf[4] = 0;
        *&v95[2] = "";
        *v95 = 2082;
        if (v39 == 2)
        {
          v41 = "YES";
        }

        *&v95[10] = 2114;
        *&v95[12] = v4;
        *&v95[20] = 2082;
        *&v95[22] = v41;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Temporary relief from #compensation response, ClientKey:%{public, location:escape_only}@, TempPrecise:%{public, location:escape_only}s}", buf, 0x26u);
      }

      if (v39 == 2)
      {
        v42 = 2;
      }

      else
      {
        v42 = 8;
      }

      sub_10077B960(*(a1 + 136), v4, v42, 1);
      v43 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
      v9 = v43;
      if (v43)
      {
        if (v43 == 2)
        {
          v9 = 4;
        }

        else if (v43 == 4)
        {
          v9 = 3;
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v76 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v95 = 2082;
            *&v95[2] = "";
            *&v95[10] = 2114;
            *&v95[12] = v4;
            *&v95[20] = 2050;
            *&v95[22] = v9;
            _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected authorization status for #TemporaryAuth precise promptee, ClientKey:%{public, location:escape_only}@, AuthMask:%{public}lu}", buf, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v77 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v95 = 2082;
            *&v95[2] = "";
            *&v95[10] = 2114;
            *&v95[12] = v4;
            *&v95[20] = 2050;
            *&v95[22] = v9;
            _os_signpost_emit_with_name_impl(dword_100000000, v77, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected authorization status for #TemporaryAuth precise promptee", "{msg%{public}.0s:Unexpected authorization status for #TemporaryAuth precise promptee, ClientKey:%{public, location:escape_only}@, AuthMask:%{public}lu}", buf, 0x26u);
          }

          v9 = 2;
        }
      }

      [NSNumber numberWithBool:v39 == 2];
      v22 = 0;
      goto LABEL_195;
    }

    if (v7 != 11)
    {
      if (v7 == 12)
      {
        v16 = a2 & 3;
        if (v16 == 2)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        if ((a2 & 3) == 2)
        {
          v18 = 6;
        }

        else
        {
          v18 = 7;
        }

        sub_10077A3D0(a1, v17, v4, 1);
        [NSNumber numberWithBool:v16 == 2];
        [*(a1 + 1120) removeObject:v4];
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v19 = off_1025D47A8;
        v20 = -1.0;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v21 = "Disallowed";
          *buf = 68289538;
          *&v95[2] = "";
          *&buf[4] = 0;
          *v95 = 2082;
          if (v16 == 2)
          {
            v21 = "Allowed";
          }

          *&v95[10] = 2114;
          *&v95[12] = v4;
          *&v95[20] = 2082;
          *&v95[22] = v21;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt response, ClientKey:%{public, location:escape_only}@, IncidentalUseMode:%{public, location:escape_only}s}", buf, 0x26u);
        }

        v22 = 0;
        v9 = 4;
        goto LABEL_196;
      }

      goto LABEL_71;
    }

    goto LABEL_28;
  }

  if (v7 <= 17)
  {
    if ((v7 - 13) < 2)
    {
      if (v9 == 2)
      {
        v14 = 1;
      }

      else
      {
        if (v9 != 1)
        {
          if (qword_1025D47A0 != -1)
          {
            goto LABEL_247;
          }

          while (1)
          {
            v79 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              *buf = 68290051;
              *&buf[4] = 0;
              *v95 = 2082;
              *&v95[2] = "";
              *&v95[10] = 2114;
              *&v95[12] = v4;
              *&v95[20] = 1026;
              *&v95[22] = a2 & 3;
              *&v95[26] = 2082;
              *&v95[28] = "assert";
              v96 = 2081;
              v97 = "false";
              _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Impossible response to LocationButtonUse prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }
            }

            v80 = off_1025D47A8;
            if (os_signpost_enabled(off_1025D47A8))
            {
              *buf = 68290051;
              *&buf[4] = 0;
              *v95 = 2082;
              *&v95[2] = "";
              *&v95[10] = 2114;
              *&v95[12] = v4;
              *&v95[20] = 1026;
              *&v95[22] = a2 & 3;
              *&v95[26] = 2082;
              *&v95[28] = "assert";
              v96 = 2081;
              v97 = "false";
              _os_signpost_emit_with_name_impl(dword_100000000, v80, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Impossible response to LocationButtonUse prompt", "{msg%{public}.0s:Impossible response to LocationButtonUse prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }
            }

            v81 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
            {
              *buf = 68290051;
              *&buf[4] = 0;
              *v95 = 2082;
              *&v95[2] = "";
              *&v95[10] = 2114;
              *&v95[12] = v4;
              *&v95[20] = 1026;
              *&v95[22] = a2 & 3;
              *&v95[26] = 2082;
              *&v95[28] = "assert";
              v96 = 2081;
              v97 = "false";
              _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Impossible response to LocationButtonUse prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
            }

            v82 = 5377;
LABEL_246:
            abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager.mm", v82, "onClientUserNotification");
            __break(1u);
LABEL_247:
            sub_10192D4D0();
          }
        }

        v14 = 0;
        v9 = 0;
      }

      [*(a1 + 136) setInt:v9 forKey:@"LocationButtonUseMode" atKeyPath:v4];
      v54 = *(a1 + 136);
      if (v14)
      {
        sub_10077B960(v54, v4, 1u, 1);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v55 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *v95 = 2082;
          *&v95[2] = "";
          *&v95[10] = 2114;
          *&v95[12] = v4;
          _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth granted temporary auth , allowed chosen on #LocationButtonUse prompt, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v9 = 0;
        v18 = 8;
      }

      else
      {
        v56 = sub_100031744([objc_msgSend(v54 readonlyStoreAtKeyPath:{v4), "dictionary"}]);
        if (v56 >= 5)
        {
          v18 = 9;
          v9 = 2;
        }

        else
        {
          v9 = dword_101C8D934[v56];
          v18 = 9;
        }
      }

      v70 = *(a1 + 312) - 1;
      if (v70 > 2)
      {
        v71 = 0;
      }

      else
      {
        v71 = dword_101C8D928[v70];
      }

      if (v7 == 13)
      {
        v22 = 2;
      }

      else
      {
        v22 = v71;
      }

      goto LABEL_194;
    }

    if (v7 == 16)
    {
      v28 = a2 & 3;
      if (v28 == 1)
      {
        v18 = 10;
      }

      else
      {
        v18 = 11;
      }

      v29 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
      if (v29 > 4)
      {
        v9 = 2;
      }

      else
      {
        v9 = dword_101C8D934[v29];
      }

      [NSNumber numberWithBool:v28 == 1];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v36 = off_1025D47A8;
      v20 = -1.0;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_224;
      }

      v69 = "Disallowed";
      *buf = 68289538;
      *&v95[2] = "";
      *&buf[4] = 0;
      *v95 = 2082;
      if (v28 == 1)
      {
        v69 = "Allowed";
      }

      *&v95[10] = 2114;
      *&v95[12] = v4;
      *&v95[20] = 2082;
      *&v95[22] = v69;
      v38 = "{msg%{public}.0s:#AuthPrompt response, ClientKey:%{public, location:escape_only}@, IncidentalUseMode:%{public, location:escape_only}s}";
LABEL_223:
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, v38, buf, 0x26u);
LABEL_224:
      v22 = 0;
      goto LABEL_196;
    }

LABEL_71:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v30 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240448;
      *&buf[4] = a2 & 3;
      *v95 = 1026;
      *&v95[2] = v7;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "#AuthPrompt Received response (%{public}d) for invalid/unrecognized response type (%{public}d)", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192DC88(buf);
      v91[0] = 67240448;
      v91[1] = a2 & 3;
      v92 = 1026;
      v93 = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "#AuthPrompt Received response (%{public}d) for invalid/unrecognized response type (%{public}d)", v91, 14);
      v32 = v31;
      sub_100152C7C("Generic", 1, 0, 0, "void CLClientManager::onClientUserNotification(CFOptionFlags)", "%s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    goto LABEL_198;
  }

  if (v7 == 18)
  {
    v20 = -1.0;
    v9 = 2;
    if (_os_feature_enabled_impl())
    {
      v33 = a2 & 3;
      if (v33 == 2)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      if ((a2 & 3) == 2)
      {
        v18 = 17;
      }

      else
      {
        v18 = 18;
      }

      [*(a1 + 136) setInt:v34 forKey:@"LearnedRoutesAccess" atKeyPath:v4];
      v35 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
      if (v35 <= 4)
      {
        v9 = dword_101C8D934[v35];
      }

      [NSNumber numberWithBool:v33 == 2];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v36 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_224;
      }

      v37 = "Disallowed";
      *buf = 68289538;
      *&v95[2] = "";
      *&buf[4] = 0;
      *v95 = 2082;
      if (v33 == 2)
      {
        v37 = "Allowed";
      }

      *&v95[10] = 2114;
      *&v95[12] = v4;
      *&v95[20] = 2082;
      *&v95[22] = v37;
      v38 = "{msg%{public}.0s:#AuthPrompt response, ClientKey:%{public, location:escape_only}@, LearnedRoutes:%{public, location:escape_only}s}";
      goto LABEL_223;
    }

LABEL_135:
    v22 = 0;
    v18 = 0;
    goto LABEL_196;
  }

  if (v7 != 19)
  {
    goto LABEL_71;
  }

  v20 = -1.0;
  if (_os_feature_enabled_impl())
  {
    [*(a1 + 136) removeValueForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:v4];
    v26 = a2 & 3;
    if (v26 == 2)
    {
      [*(a1 + 136) setDouble:@"VisitHistoryAccessAllowedTime" forKey:v4 atKeyPath:CFAbsoluteTimeGetCurrent()];
      v18 = 15;
      v27 = 3;
    }

    else
    {
      v18 = 16;
      v27 = 2;
    }

    [*(a1 + 136) setInt:v27 forKey:@"VisitHistoryAccess" atKeyPath:v4];
    v75 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
    if (v75 > 4)
    {
      v9 = 2;
    }

    else
    {
      v9 = dword_101C8D934[v75];
    }

    [NSNumber numberWithBool:v26 == 2];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v36 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_224;
    }

    v78 = "Disallowed";
    *buf = 68289538;
    *&v95[2] = "";
    *&buf[4] = 0;
    *v95 = 2082;
    if (v26 == 2)
    {
      v78 = "Allowed";
    }

    *&v95[10] = 2114;
    *&v95[12] = v4;
    *&v95[20] = 2082;
    *&v95[22] = v78;
    v38 = "{msg%{public}.0s:#AuthPrompt response, ClientKey:%{public, location:escape_only}@, VisitHistory:%{public, location:escape_only}s}";
    goto LABEL_223;
  }

  v22 = 0;
  v18 = 0;
  v9 = 2;
LABEL_196:
  v72 = -1.0;
LABEL_197:
  v89[0] = @"ClientKey";
  v90[0] = [v4 userlessClientKeyPath];
  v89[1] = @"Special";
  v90[1] = [NSNumber numberWithUnsignedInt:v18];
  v89[2] = @"RequestType";
  v90[2] = [NSNumber numberWithUnsignedInt:v7];
  v89[3] = @"GrantedStatus";
  v90[3] = [NSNumber numberWithUnsignedInt:v9];
  v89[4] = @"CCStatus";
  v90[4] = [NSNumber numberWithUnsignedInt:v22];
  v89[5] = @"OnDeckDuration";
  v90[5] = [NSNumber numberWithDouble:v72];
  v89[6] = @"ProvisionalMonitoringDuration";
  v90[6] = [NSNumber numberWithDouble:v20];
  [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:7];
  AnalyticsSendEvent();
  sub_100791600(a1, v4, v9, v22, v73, 1, 1);
  sub_10023DC84(*(a1 + 272));
  sub_1007A3EE0((a1 + 272), 0);
LABEL_198:
  if (SHIBYTE(v88) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100782FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100783014(uint64_t a1, uint64_t a2)
{
  if (!sub_10001CF3C() || !sub_10003845C())
  {
    return 0;
  }

  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 68289026;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v5 = "{msg%{public}.0s:#createAndPostPinnedLocationAuthorization skip prompting. Restrictions enabled}";
    v6 = v4;
    v7 = OS_LOG_TYPE_INFO;
    v8 = 18;
    goto LABEL_13;
  }

  if (*(a1 + 272))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v10 = **(a1 + 272);
    *buf = 68289282;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2050;
    v44 = v10;
    v5 = "{msg%{public}.0s:#createAndPostPinnedLocationAuthorization skip prompting. InflightPromptAuthorizationRequest found., inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
    v6 = v9;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 28;
LABEL_13:
    _os_log_impl(dword_100000000, v6, v7, v5, buf, v8);
    return 0;
  }

  v11 = 0;
  if (&SBUserNotificationPendInSetupIfNotAllowedKey && &SBUserNotificationHideOnClonedDisplay && &SBUserNotificationDefaultButtonTag && &SBUserNotificationExtensionIdentifierKey && &SBUserNotificationExtensionItemsKey)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CUN Creating user notification for pinned location authorization}", buf, 0x12u);
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v16 = sub_100056238(Mutable, v15);
    v17 = sub_1007CB2E4(v16, @"LOCATION_PINNED_AUTHORIZATION_TITLE");
    v19 = v17;
    if (v17)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v17);
      CFRelease(v19);
    }

    v20 = sub_100056238(v17, v18);
    v21 = sub_1007CB2E4(v20, @"LOCATION_PINNED_AUTHORIZE");
    v23 = v21;
    if (v21)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v21);
      CFRelease(v23);
    }

    v24 = sub_100056238(v21, v22);
    v25 = sub_1007CB2E4(v24, @"LOCATION_PINNED_NOT_AUTHORIZE");
    v27 = v25;
    if (v25)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v25);
      CFRelease(v27);
    }

    v28 = sub_100056238(v25, v26);
    v29 = sub_1007CB2E4(v28, @"LOCATION_PINNED_PERMISSION_EXPLANATION_FOR_LOCATION_BUTTONS");
    if (v29)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v29);
      CFRelease(v29);
    }

    CFDictionarySetValue(Mutable, SBUserNotificationPendInSetupIfNotAllowedKey, kCFBooleanTrue);
    if ((*(a1 + 232) & 1) == 0)
    {
      CFDictionarySetValue(Mutable, SBUserNotificationHideOnClonedDisplay, kCFBooleanTrue);
    }

    CFDictionarySetValue(Mutable, SBUserNotificationAllowInSetupKey, &__kCFBooleanTrue);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v30 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "#CUN Pinned location authorization prompt allowed during buddy-setup", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930054();
    }

    CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:32]);
    v31 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationPinnedLocationAuthPromptPlugin"];
    if (v31 && sub_1004E87D0())
    {
      v38 = 0;
      v45 = [NSExtensionItem extensionItemForPinnedAuthorizationWithPayload:a2];
      v32 = [NSKeyedArchiver archivedDataWithRootObject:[NSArray arrayWithObjects:&v45 count:1] requiringSecureCoding:1 error:&v38];
      if (v38)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v33 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289283;
          v40 = 0;
          v41 = 2082;
          v42 = "";
          v43 = 2113;
          v44 = v38;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed archiving extension item, error:%{private, location:escape_only}@}", buf, 0x1Cu);
        }
      }

      else
      {
        v34 = v32;
        CFDictionarySetValue(Mutable, SBUserNotificationExtensionIdentifierKey, v31);
        CFDictionarySetValue(Mutable, SBUserNotificationExtensionItemsKey, v34);
      }
    }

    sub_10000EC00(__p, "");
    sub_10023C2AC(buf, 17, 0, 0, __p);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    [*(a1 + 40) currentLatchedAbsoluteTimestamp];
    v11 = sub_10078364C(0, buf, Mutable, v35);
    if (v11)
    {
      sub_100783A10();
    }

    sub_10023DF30(buf);
  }

  return v11;
}

BOOL sub_10078364C(uint64_t a1, int *a2, CFDictionaryRef dictionary, double a4)
{
  error = 0;
  v8 = *a2;
  v9 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x20uLL, &error, dictionary);
  CFRelease(dictionary);
  if (v9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = a1;
      v26 = 1026;
      v27 = v8;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CUN Created client user notification for client, Client:%{public, location:escape_only}@, requestType:%{public}d}", buf, 0x22u);
    }

    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v9, sub_1007A4864, 0);
    if (RunLoopSource)
    {
      v12 = RunLoopSource;
      sub_1007A48EC(a2, v9, a4);
      CFRelease(v9);
      v13 = sub_100107858();
      CFRunLoopAddSource(v13, v12, kCFRunLoopCommonModes);
      CFRelease(v12);
      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = a1;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CUN Could not create runloop source for  CFUserNotification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = a1;
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CUN Could not create runloop source for  CFUserNotification", "{msg%{public}.0s:#CUN Could not create runloop source for  CFUserNotification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    CFRelease(v9);
    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = a1;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CUN Could not create CFUserNotification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v16 = off_1025D47A8;
  result = os_signpost_enabled(off_1025D47A8);
  if (result)
  {
    *buf = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = a1;
    _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CUN Could not create CFUserNotification", "{msg%{public}.0s:#CUN Could not create CFUserNotification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    return 0;
  }

  return result;
}