void sub_1007974D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007975D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007976B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1007976E8(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1025D4790 != -1)
  {
    sub_10192F910();
  }

  v10 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (a3[23] >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = v11;
    v34 = 2082;
    v35 = v12;
    v36 = 1026;
    LODWORD(v37) = a4;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SetRelevanceForInterestZone, clientKey:%{public, location:escape_only}s, zoneIdentifier:%{public, location:escape_only}s, isRelevant:%{public}hhd}", buf, 0x2Cu);
  }

  if (a2[23] >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13))}];
  if ([v14 isValidCKP])
  {
    if (a3[23] >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    v16 = [v14 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", v15), 122}];
    [*(a1 + 136) setBool:a4 forKey:@"Relevant" atKeyPath:v16];
    sub_10000EC00(buf, "");
    sub_100018918(a1, v16, buf);
    if (SBYTE3(v33) < 0)
    {
      operator delete(*buf);
      if (!a5)
      {
        return;
      }
    }

    else if (!a5)
    {
      return;
    }

    v26 = 0;
LABEL_44:
    (*(a5 + 16))(a5, v26);
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v18 = [@"setRelevance : Zone not found." UTF8String];
    v19 = a2[23] >= 0 ? a2 : *a2;
    v20 = a3[23] >= 0 ? a3 : *a3;
    *buf = 68289794;
    *&buf[4] = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = v18;
    v34 = 2082;
    v35 = v19;
    v36 = 2082;
    v37 = v20;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v21 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v22 = [@"setRelevance : Zone not found." UTF8String];
    if (a2[23] >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    if (a3[23] >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = v22;
    v34 = 2082;
    v35 = v23;
    v36 = 2082;
    v37 = v24;
    _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AuthZone operation failed.", "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
  }

  if (a5)
  {
    v27 = NSLocalizedDescriptionKey;
    v28 = @"setRelevance : Zone not found.";
    v25 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v26 = [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v25];
    goto LABEL_44;
  }
}

void sub_100797AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100797B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100797C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100797CA0(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (qword_1025D4790 != -1)
  {
    sub_10192F910();
  }

  v8 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (a3[23] >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    *buf = 68289538;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v37 = 2082;
    v38 = v9;
    v39 = 2082;
    v40 = v10;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delete InterestZone, clientKey:%{public, location:escape_only}s, zoneIdentifier:%{public, location:escape_only}s}", buf, 0x26u);
  }

  if (a2[23] >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v11))}];
  if ([v12 isValidCKP])
  {
    if (a3[23] >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    v14 = [v12 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", v13), 122}];
    sub_10000EC00(__p, "ClientRemoved");
    sub_100777AC4(a1, v14, 1, __p);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = *(a1 + 352);
    if (a2[23] >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    v17 = [NSString stringWithUTF8String:v16];
    if (a3[23] >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    [v15 stopCircularZoneMonitoringForClient:v17 withZoneId:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v18)}];
    if (a4)
    {
      v19 = 0;
LABEL_49:
      (*(a4 + 16))(a4, v19);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v21 = [@"deleteZone : Zone not found." UTF8String];
      v22 = a2[23] >= 0 ? a2 : *a2;
      v23 = a3[23] >= 0 ? a3 : *a3;
      *buf = 68289794;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2082;
      v38 = v21;
      v39 = 2082;
      v40 = v22;
      v41 = 2082;
      v42 = v23;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v24 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v25 = [@"deleteZone : Zone not found." UTF8String];
      if (a2[23] >= 0)
      {
        v26 = a2;
      }

      else
      {
        v26 = *a2;
      }

      if (a3[23] >= 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = *a3;
      }

      *buf = 68289794;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2082;
      v38 = v25;
      v39 = 2082;
      v40 = v26;
      v41 = 2082;
      v42 = v27;
      _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AuthZone operation failed.", "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
    }

    if (a4)
    {
      v31 = NSLocalizedDescriptionKey;
      v32 = @"deleteZone : Zone not found.";
      v28 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v19 = [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v28];
      goto LABEL_49;
    }
  }
}

void sub_1007980A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007981AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_100798220(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    if (sub_1007A8220(a1, v6, 2))
    {
      [*(a1 + 136) removeValueForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:v6];
      if (a3 == 3)
      {
        [*(a1 + 136) setDouble:@"VisitHistoryAccessAllowedTime" forKey:v6 atKeyPath:CFAbsoluteTimeGetCurrent()];
      }

      [*(a1 + 136) setInt:a3 forKey:@"VisitHistoryAccess" atKeyPath:v6];
      [*(a1 + 136) persist];
      sub_10000EC00(&__p, "");
      sub_100018918(a1, v6, &__p);
      if (SBYTE3(v17) < 0)
      {
        operator delete(__p);
      }

      sub_100044F7C(a1);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289538;
        v14 = 2082;
        v15 = "";
        v16 = 2114;
        v17 = v6;
        v18 = 1026;
        v19 = a3;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:set #VisitHistoryAccess - success, Client:%{public, location:escape_only}@, state:%{public}d}", &__p, 0x22u);
      }

      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __p = 68289282;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = v6;
      v10 = "{msg%{public}.0s:set #VisitHistoryAccess - locIntl NotSupported, Client:%{public, location:escape_only}@}";
      v11 = v12;
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __p = 68289282;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = a2;
      v10 = "{msg%{public}.0s:set #VisitHistoryAccess - invalid ckp, Client:%{public, location:escape_only}@}";
      v11 = v9;
LABEL_20:
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, v10, &__p, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_1007984E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079856C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    if (sub_1007A8220(a1, v6, 1))
    {
      [*(a1 + 136) setInt:a3 forKey:@"LearnedRoutesAccess" atKeyPath:v6];
      [*(a1 + 136) persist];
      sub_10000EC00(&__p, "");
      sub_100018918(a1, v6, &__p);
      if (SBYTE3(v17) < 0)
      {
        operator delete(__p);
      }

      sub_100044F7C(a1);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289538;
        v14 = 2082;
        v15 = "";
        v16 = 2114;
        v17 = v6;
        v18 = 1026;
        v19 = a3;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:set #LearnedRoutesAccess - success, Client:%{public, location:escape_only}@, state:%{public}d}", &__p, 0x22u);
      }

      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __p = 68289282;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = v6;
      v10 = "{msg%{public}.0s:set #LearnedRoutesAccess - locIntl NotSupported, Client:%{public, location:escape_only}@}";
      v11 = v12;
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __p = 68289282;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = a2;
      v10 = "{msg%{public}.0s:set #LearnedRoutesAccess - invalid ckp, Client:%{public, location:escape_only}@}";
      v11 = v9;
LABEL_18:
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, v10, &__p, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_1007987F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007988F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_100798960(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  if (v3)
  {
    objc_msgSend_cppClientKey(v3);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
  }

  v4 = a1 + 784 != sub_10045EF04(a1 + 776, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1007989F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100798AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1006E69AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100798CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1007A8220(a1, a2, 1);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = a2;
    v13 = 1026;
    v14 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Loc-Intl supported for #LearnedRoutes, Client:%{public, location:escape_only}@, supported:%{public}hhd}", v8, 0x22u);
  }

  return (*(a3 + 16))(a3, 0, v5);
}

void sub_100798E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1007A8814(a1, a2, &v5);
  v4 = sub_100E24778(v5);
  (*(a3 + 16))(a3, 0, v4);
  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_100798E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100798F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100798F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (([v5 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v44 = 2082;
      v45 = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient: unknown client}", buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289026;
      v44 = 2082;
      v45 = "";
      v14 = "#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient: unknown client";
      v15 = "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient: unknown client}";
      v16 = v18;
      v19 = 18;
LABEL_31:
      _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, buf, v19);
      return;
    }

    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v44 = 2082;
    v45 = "";
    v46 = 2114;
    *v47 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  v42 = 0;
  if (!a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v44 = 2082;
      v45 = "";
      v46 = 2114;
      *v47 = v5;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient may not take nil data, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v21 = off_1025D47A8;
    if (!os_signpost_enabled(off_1025D47A8))
    {
      return;
    }

    *buf = 68289282;
    v44 = 2082;
    v45 = "";
    v46 = 2114;
    *v47 = v5;
    v14 = "#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient may not take nil data";
    v15 = "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient may not take nil data, Client:%{public, location:escape_only}@}";
    goto LABEL_29;
  }

  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObjects:v7 fromData:v8 error:objc_opt_class(), 0], a3, &v42];
  if (!v42)
  {
    v22 = v9;
    v23 = [objc_msgSend(v9 objectsForKeys:&off_1025543F0 notFoundMarker:{+[NSNull null](NSNull, "null")), "count"}];
    if (v23 != [&off_1025543F0 count])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v29 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v30 = [&off_1025543F0 count];
        *buf = 68289538;
        v44 = 2082;
        v45 = "";
        v46 = 2050;
        *v47 = v30;
        *&v47[8] = 2050;
        v48 = v23;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TemporaryAuth missing one or more keys from decoded dict, target:%{public}lu, found:%{public}lu}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v28 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        return;
      }

      v31 = [&off_1025543F0 count];
      *buf = 68289538;
      v44 = 2082;
      v45 = "";
      v46 = 2050;
      *v47 = v31;
      *&v47[8] = 2050;
      v48 = v23;
      v14 = "#TemporaryAuth missing one or more keys from decoded dict";
      v15 = "{msg%{public}.0s:#TemporaryAuth missing one or more keys from decoded dict, target:%{public}lu, found:%{public}lu}";
LABEL_50:
      v16 = v28;
      v19 = 38;
      goto LABEL_31;
    }

    if ([v22 valueForKey:@"TransientInfoPayloadTimestamp"])
    {
      [objc_msgSend(v22 valueForKey:{@"TransientInfoPayloadTimestamp", "doubleValue"}];
      v25 = v24;
      Current = CFAbsoluteTimeGetCurrent();
      if (vabdd_f64(Current, v25) <= 10.0)
      {
        v33 = [objc_msgSend(v22 valueForKey:{@"TransientInfoPayloadHasWIU", "BOOLValue"}];
        v34 = [objc_msgSend(v22 valueForKey:{@"TransientInfoPayloadHasPrecise", "BOOLValue"}];
        v35 = [objc_msgSend(v22 valueForKey:{@"TransientInfoPayloadInUseness", "intValue"}];
        sub_10077B960(*(a1 + 136), v5, 2u, v34);
        sub_10077B960(*(a1 + 136), v5, 1u, v33);
        [*(a1 + 136) persist];
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v36 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289794;
          v44 = 2082;
          v45 = "";
          v46 = 1026;
          *v47 = v34;
          *&v47[4] = 1026;
          *&v47[6] = v35;
          LOWORD(v48) = 1026;
          *(&v48 + 2) = v33;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient, hasPrecise:%{public}hhd, inUseInt:%{public}d, hasWIU:%{public}hhd}", buf, 0x24u);
        }

        v38 = sub_101320CB8(v35, v37);
        if (v38)
        {
          [v5 legacyClientKey];
          v39 = *(a1 + 400);
          if (v5)
          {
            objc_msgSend_cppClientKey(v5);
          }

          else
          {
            memset(v41, 0, sizeof(v41));
          }

          sub_10000EC00(v40, "setTemporaryAuthorizationStatusInfoForClient");
          sub_100BA11E4(v39, v41, v40, v38, 1, buf);
          sub_1007A6D38();
        }

        if ((v33 | v34))
        {
          sub_10000EC00(buf, "");
          sub_100018918(a1, v5, buf);
          if ((v47[3] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v27 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289538;
        v44 = 2082;
        v45 = "";
        v46 = 2050;
        *v47 = Current;
        *&v47[8] = 2050;
        v48 = v25;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient stale info received, tNow:%{public}ld, sentTime:%{public}ld}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v28 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        return;
      }

      *buf = 68289538;
      v44 = 2082;
      v45 = "";
      v46 = 2050;
      *v47 = Current;
      *&v47[8] = 2050;
      v48 = v25;
      v14 = "#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient stale info received";
      v15 = "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient stale info received, tNow:%{public}ld, sentTime:%{public}ld}";
      goto LABEL_50;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v32 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v44 = 2082;
      v45 = "";
      v46 = 2114;
      *v47 = v5;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient failed to find a timestamp in the packaged data. Ignoring the packet, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v21 = off_1025D47A8;
    if (!os_signpost_enabled(off_1025D47A8))
    {
      return;
    }

    *buf = 68289282;
    v44 = 2082;
    v45 = "";
    v46 = 2114;
    *v47 = v5;
    v14 = "#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient failed to find a timestamp in the packaged data. Ignoring the packet";
    v15 = "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient failed to find a timestamp in the packaged data. Ignoring the packet, Client:%{public, location:escape_only}@}";
LABEL_29:
    v16 = v21;
    goto LABEL_30;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    v11 = [objc_msgSend(v42 "description")];
    *buf = 68289282;
    v44 = 2082;
    v45 = "";
    v46 = 2082;
    *v47 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TemporaryAuth encountered error while decoding, error:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v12 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v13 = [objc_msgSend(v42 "description")];
    *buf = 68289282;
    v44 = 2082;
    v45 = "";
    v46 = 2082;
    *v47 = v13;
    v14 = "#TemporaryAuth encountered error while decoding";
    v15 = "{msg%{public}.0s:#TemporaryAuth encountered error while decoding, error:%{public, location:escape_only}s}";
    v16 = v12;
LABEL_30:
    v19 = 28;
    goto LABEL_31;
  }
}

void sub_100799C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100799DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

NSData *sub_100799DF4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v3 isValidCKP])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2114;
      v27 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v5 = [*(a1 + 136) intForKey:@"TemporaryAuthorization" atKeyPath:v3 defaultValue:0];
    v21 = sub_1000199AC(*(a1 + 400), v3);
    v6 = v5;
    v7 = v5 & 1;
    v8 = sub_101320A5C(&v21);
    Current = CFAbsoluteTimeGetCurrent();
    v34[0] = @"TransientInfoPayloadTimestamp";
    v35[0] = [NSNumber numberWithDouble:?];
    v34[1] = @"TransientInfoPayloadInUseness";
    v35[1] = [NSNumber numberWithInt:v8];
    v34[2] = @"TransientInfoPayloadHasPrecise";
    v35[2] = [NSNumber numberWithBool:(v5 >> 1) & 1];
    v34[3] = @"TransientInfoPayloadHasWIU";
    v35[3] = [NSNumber numberWithBool:v5 & 1];
    v10 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68290050;
      v24 = 2082;
      v23 = 0;
      v25 = "";
      v26 = 2050;
      v27 = Current;
      v28 = 1026;
      v29 = v8;
      v30 = 1026;
      v31 = v7;
      v32 = 1026;
      v33 = (v6 & 2) >> 1;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient, tNow:%{public}ld, inUse:%{public}d, hasTempWIU:%{public}hhd, hasTempPrecise:%{public}hhd}", buf, 0x2Eu);
    }

    v20 = 0;
    v12 = [NSKeyedArchiver archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v20];
    if (v20)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v14 = [objc_msgSend(v20 "description")];
        *buf = 68289282;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2082;
        v27 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TemporaryAuth encountered error while converting, error:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v16 = [objc_msgSend(v20 "description")];
        *buf = 68289282;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2082;
        v27 = v16;
        _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TemporaryAuth encountered error while converting", "{msg%{public}.0s:#TemporaryAuth encountered error while converting, error:%{public, location:escape_only}s}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient: unknown client}", buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient: unknown client", "{msg%{public}.0s:#TemporaryAuth retrieveTemporaryAuthorizationStatusInfoForClient: unknown client}", buf, 0x12u);
    }

    return 0;
  }

  return v12;
}

void sub_10079A390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

double sub_10079A3A4(uint64_t a1, void *a2, double a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      *v15 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#appclip setting for bundle ID %@", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101932EBC();
    }

    [*(a1 + 136) doubleForKey:@"AuthorizationRegisterTime" atKeyPath:v6 defaultValue:-1.0];
    if (v8 == -1.0)
    {
      TMGetKernelMonotonicClock();
    }

    v9 = v8;
    [*(a1 + 136) setDouble:@"AuthorizationRegisterTime" forKey:v6 atKeyPath:v8 + a3];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 68289794;
      *v15 = 0;
      *&v15[4] = 2082;
      *&v15[6] = "";
      v16 = 2114;
      v17 = v6;
      v18 = 2050;
      v19 = v9;
      v20 = 2050;
      v21 = a3;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#appclip setOrChangeAppClipAuthorizationTime, Client:%{public, location:escape_only}@, registrationTime:%{public}f, delta:%{public}f}", &v14, 0x30u);
    }

    [*(a1 + 136) persist];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v14 = 68289282;
      *v15 = 0;
      *&v15[4] = 2082;
      *&v15[6] = "";
      v16 = 2114;
      v17 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#appclip no such client, Client:%{public, location:escape_only}@}", &v14, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v12 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v14 = 68289282;
      *v15 = 0;
      *&v15[4] = 2082;
      *&v15[6] = "";
      v16 = 2114;
      v17 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#appclip no such client", "{msg%{public}.0s:#appclip no such client, Client:%{public, location:escape_only}@}", &v14, 0x1Cu);
    }
  }

  return -1.0;
}

id sub_10079A6C8(uint64_t a1, double a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#appclip looking for authorizations to clear}", buf, 0x12u);
  }

  v5 = +[NSMutableArray array];
  v6 = *(a1 + 136);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1007A3ACC;
  v21[3] = &unk_1024704A8;
  *&v21[6] = a2;
  v21[4] = v5;
  v21[5] = a1;
  [v6 iterateAllAnchorKeyPathsWithBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5);
  if (v7)
  {
    v9 = *v18;
    *&v8 = 68289282;
    v14 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          v26 = 2114;
          v27 = v11;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#appclip removing client because it expired, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        sub_10000EC00(__p, "ClientRemoved");
        sub_100777AC4(a1, v11, 1, __p);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5);
    }

    while (v7);
  }

  return [*(a1 + 136) persist];
}

void sub_10079A974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10079ABDC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102470948;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void *sub_10079AE34(void *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = xmmword_101C8D3C0;
  v4 = a1 + 1;
  a1[3] = 0;
  if (a2 == 1)
  {
    v7 = sub_1000206B4(a1, 1);
    if ((sub_1000B9370(v7, "lastBluetoothImproveAccuracyNotification", v4) & 1) == 0)
    {
      *v4 = 0xBFF0000000000000;
    }

    sub_10001CAF4(buf);
    v6 = sub_1000B9370(*buf, "BluetoothImproveAccuracyNotificationInterval", a1 + 2);
  }

  else
  {
    if (a2)
    {
      goto LABEL_13;
    }

    v5 = sub_1000206B4(a1, 0);
    if ((sub_1000B9370(v5, "lastWifiImproveAccuracyNotification", v4) & 1) == 0)
    {
      *v4 = 0xBFF0000000000000;
    }

    sub_10001CAF4(buf);
    v6 = sub_1000B9370(*buf, "WifiImproveAccuracyNotificationInterval", a1 + 2);
  }

  v8 = v6;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v8 & 1) == 0)
  {
    a1[2] = 0x4122750000000000;
  }

LABEL_13:
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = "Unknown";
    if (a2 == 1)
    {
      v10 = "Bluetooth";
    }

    if (a2)
    {
      v11 = v10;
    }

    else
    {
      v11 = "Wifi";
    }

    sub_10000EC00(__p, v11);
    if (v31 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = *__p;
    }

    v13 = *v4;
    v14 = a1[2];
    *buf = 136315650;
    *&buf[4] = v12;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    v34 = 2048;
    v35 = v14;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "last improve accuracy notification for %s, %f, retry interval, %f", buf, 0x20u);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v16 = off_1025D47A8;
    v17 = "Unknown";
    if (a2 == 1)
    {
      v17 = "Bluetooth";
    }

    if (a2)
    {
      v18 = v17;
    }

    else
    {
      v18 = "Wifi";
    }

    sub_10000EC00(v26, v18);
    if (v27 >= 0)
    {
      v19 = v26;
    }

    else
    {
      v19 = v26[0];
    }

    v20 = *v4;
    v21 = a1[2];
    *__p = 136315650;
    *&__p[4] = v19;
    v29 = 2048;
    v30 = v20;
    v31 = 2048;
    v32 = v21;
    LODWORD(v24) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v16, 2, "last improve accuracy notification for %s, %f, retry interval, %f", __p, v24, v25);
    v23 = v22;
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "CLClientManager::ImproveAccuracyNotification::ImproveAccuracyNotification(CLClientManagerTechnology)", "%s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  return a1;
}

void sub_10079B184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079B1A8(void *a1)
{
  if (a1[3])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = "Unknown";
      if (*a1 == 1)
      {
        v3 = "Bluetooth";
      }

      if (*a1)
      {
        v4 = v3;
      }

      else
      {
        v4 = "Wifi";
      }

      sub_10000EC00(__p, v4);
      if (v10 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315138;
      v12 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "clear %s improve accuracy notification", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933088(a1);
    }

    v6 = a1[3];
    a1[3] = 0;
    v7 = sub_100107858();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10079B480;
    v8[3] = &unk_102449A78;
    v8[4] = v6;
    CFRunLoopPerformBlock(v7, kCFRunLoopCommonModes, v8);
  }
}

void sub_10079B350(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 24) = 0;
  v2 = sub_100107858();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10079B3DC;
  block[3] = &unk_102449A78;
  block[4] = v1;
  CFRunLoopPerformBlock(v2, kCFRunLoopCommonModes, block);
}

void sub_10079B3DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_10079B3EC(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *a1;
  *(a1 + 8) = a3;
  v4 = (a1 + 8);
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v5 = "lastBluetoothImproveAccuracyNotification";
  }

  else
  {
    v5 = "lastWifiImproveAccuracyNotification";
  }

  v6 = sub_1000206B4(a1, a2);
  a1 = sub_100116D68(v6, v5, v4);
LABEL_6:
  v7 = *(*sub_1000206B4(a1, a2) + 944);

  return v7();
}

void sub_10079B480(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFUserNotificationCancel(v2);
    v3 = *(a1 + 32);

    CFRelease(v3);
  }
}

void sub_10079B4CC(uint64_t a1, void *a2)
{
  v4 = sub_10079DD60(a1, "CLClientManager", a2);
  *v4 = off_1024702D8;
  v4[14] = &off_1024703C0;
  *(a1 + 120) = -[CLClientManagerStateTracker initInSilo:withIdentifier:state:]([CLClientManagerStateTracker alloc], "initInSilo:withIdentifier:state:", [a2 silo], a1, &stru_1024703F8);
  v5 = [[CLSettingsMirror alloc] initInUniverse:*(a1 + 32)];
  *(a1 + 136) = 0u;
  *(a1 + 128) = v5;
  *(a1 + 240) = 0x40F5180000000000;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = kCLLocationCoordinate2DInvalid;
  *(a1 + 336) = 0;
  *(a1 + 360) = objc_opt_new();
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  sub_1007AE81C();
}

void sub_10079D7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, void *a12, void **a13, char **a14, void **a15, void **a16, char **a17, void **a18, void **a19, char **a20, char **a21, char **a22, char **a23, char **a24, uint64_t a25)
{
  v28 = *(v25 + 1584);
  *(v25 + 1584) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_1003C94DC(a13);
  sub_1003C94DC((v25 + 1352));
  sub_10001AF44(v25 + 1136, *a14);
  STACK[0x2A0] = a25;
  sub_1007AB64C(&STACK[0x2A0]);
  v29 = *(v25 + 1048);
  if (v29)
  {
    sub_100008080(v29);
  }

  sub_1007AE9F4(v25 + 1000);
  if (*(v25 + 999) < 0)
  {
    operator delete(*(v25 + 976));
  }

  sub_1003C93BC(v25 + 936, *a15);
  sub_1003C93BC(v25 + 912, *a16);
  sub_10001AF44(v25 + 888, *a17);
  sub_1003C93BC(v25 + 864, *a18);
  sub_1003C93BC(v25 + 840, *a19);
  sub_10001AF44(v25 + 800, *a20);
  sub_10001AF44(v25 + 776, *a21);
  sub_10001AF44(v25 + 752, *a22);
  sub_10001AF44(v25 + 728, *a23);
  sub_10001AF44(v25 + 704, *a24);
  sub_1003C94DC((v25 + 640));
  sub_1007AE998(v25 + 616, *a12);
  sub_1003C94DC((v25 + 528));
  sub_1003C94DC((v25 + 464));
  v30 = *(v25 + 408);
  if (v30)
  {
    sub_100008080(v30);
  }

  sub_1007A3EE0((v26 + 136), 0);
  v31 = *a11;
  *a11 = 0;
  if (v31)
  {
    sub_10068024C(a11, v31);
  }

  v32 = *(v25 + 216);
  *(v25 + 216) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(v25 + 208);
  *(v25 + 208) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v25 + 200);
  *(v25 + 200) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(v25 + 192);
  *(v25 + 192) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(v25 + 184);
  *(v25 + 184) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(v25 + 176);
  *(v25 + 176) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *(v25 + 168);
  *(v25 + 168) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = *(v25 + 160);
  *(v25 + 160) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(v25 + 152);
  *(v25 + 152) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  sub_1007A1964(v25);
  _Unwind_Resume(a1);
}

uint64_t sub_10079DD60(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102470970;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_10079DDF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079DE0C(id a1, CLClientManagerStateTracker *a2)
{
  v3 = sub_10003845C();

  [(CLClientManagerStateTracker *)a2 setLocationServicesEnabledStatus:v3];
}

id sub_10079DE48(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [*(v1 + 128) BOOLForKey:@"CLCM.AllowPromptRecording" defaultValue:*(v1 + 232)];
  *(v1 + 232) = result;
  return result;
}

void sub_10079DE88(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "ResetTimer fired", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019331B8();
  }

  v3 = [*(a1 + 128) arrayForKey:@"ResetIdentifiers" defaultValue:0];
  v4 = v3;
  if (*(a1 + 1128) == 1)
  {
    *(a1 + 1128) = 0;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Reset registration and completion reporting is un-balanced. Completion not reported for clients: %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101933560();
    }

    [*(a1 + 128) setArray:0 forKey:@"ResetIdentifiers"];
LABEL_43:
    [*(a1 + 128) setInt:0 forKey:@"ResetRetrialCount"];
    return;
  }

  if (![v3 count])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "Reset registration and completion reporting is balanced for all clients.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933484();
    }

    goto LABEL_43;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#reset-retry completing pending reset.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101933294();
  }

  v15 = a1;
  v7 = sub_1007A305C(a1);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0];
    do
    {
      v11 = 0;
      do
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(8 * v11);
        if (([v7 containsObject:v12] & 1) == 0)
        {
          if (qword_1025D4790 != -1)
          {
            sub_10192DAA4();
          }

          v13 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v12;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#reset-retry - service with identifier: %@ never checked in to retry handling reset after crash", buf, 0xCu);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101933370(v16, v12, &v17);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
    }

    while (v9);
  }

  sub_10078E990(v15);
}

void sub_10079E258(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLClientManager::onDarwinNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onDarwinNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  sub_1007A6160(a4, v6, a2);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10079E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLClientManager::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10079E5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLClientManager::onRestrictionsChangedNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onRestrictionsChangedNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007AB320;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10079E7F0(uint64_t a1, int token)
{
  v2 = *(a1 + 32);
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64)
  {
    *(v2 + 1085) = 1;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#AuthPrompt screen locked", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193368C();
    }

    sub_10079EDEC(v2, 0, 0);
  }

  else
  {
    *(v2 + 1083) = 1;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Trial period #reprompt capacitor charged", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933768();
    }

    *(v2 + 1085) = 0;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#AuthPrompt screen unlocked", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933844();
    }

    sub_10079E9B4(v2);
  }
}

void sub_10079E9B4(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 384);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = Current - v3;
  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 376);
    v7 = *(a1 + 377);
    v8 = *(a1 + 384);
    *buf = 68290050;
    v25 = 2082;
    v24 = 0;
    v26 = "";
    v27 = 1026;
    *v28 = v6;
    *&v28[4] = 1026;
    *&v28[6] = v7;
    v29 = 2050;
    v30 = v8;
    v31 = 2050;
    v32 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes #pcHistorical updating LearnedRoutesVisitedPlaces minimum criteria, fAtLeastOneLearnedRouteAvailable:%{public}hhd, fAtLeastThreeUniqueVisitsAvailable:%{public}hhd, LastUpdateTime:%{public}f, timeElapsed:%{public}f}", buf, 0x32u);
  }

  if (v4 >= 14400.0)
  {
    v9 = [objc_msgSend(*(a1 + 32) "vendor")];
    v10 = [*(a1 + 128) BOOLForKey:@"CLLearnedRoutesAvailable" defaultValue:0];
    *(a1 + 376) = v10;
    if ((v10 & 1) == 0)
    {
      LODWORD(v19) = 0;
      v11 = [[RTLearnedRouteFetchOptions alloc] initWithBundlePath:@"/System/Library/LocationBundles/LocationPromptUI.bundle" routeOriginLocation:0 routeDestinationLocation:0 routeDate:0 routeFetchType:5 fetchAllRouteLocations:1 routeOriginType:v19];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#LearnedRoutes min-criteria fetching routes", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101933920();
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1007A92D0;
      v22[3] = &unk_1024571C0;
      v22[4] = a1;
      [v9 fetchLearnedRoutesWithOptions:v11 withReply:v22];
    }

    v13 = [*(a1 + 128) BOOLForKey:@"CLVisitedPlacesAvailable" defaultValue:0];
    *(a1 + 377) = v13;
    if ((v13 & 1) == 0)
    {
      v14 = [[NSDateInterval alloc] initWithStartDate:+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate endDate:{"dateWithTimeIntervalSinceReferenceDate:", CFAbsoluteTimeGetCurrent() + -2419200.0), +[NSDate now](NSDate, "now")}];
      v15 = [[NSSet alloc] initWithObjects:{&off_10254EF60, 0}];
      v16 = [RTStoredVisitFetchOptions alloc];
      LOBYTE(v20) = 1;
      v17 = [v16 initWithAscending:1 confidence:+[NSNumber numberWithDouble:](NSNumber dateInterval:"numberWithDouble:" labelVisit:RTVisitConfidenceHigh) limit:v14 sources:1 redact:{0, v15, v20}];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2114;
        *v28 = v14;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical min-criteria fetching historical visits, dateInterval:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1007A9400;
      v21[3] = &unk_1024571C0;
      v21[4] = a1;
      [v9 fetchStoredVisitsWithOptions:v17 withReply:v21];
    }

    *(a1 + 384) = CFAbsoluteTimeGetCurrent();
  }
}

void sub_10079EDEC(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    if (a3 && ([a3 isEqual:*(v3 + 8)] & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(a1 + 272) + 8);
        *buf = 68289538;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2114;
        v24 = v17;
        v25 = 2114;
        v26 = a3;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt skip Teardown Inflight Prompt - actual and expected inflight client does not match, ActualInflightClient:%{public, location:escape_only}@, ExpectedInflightClient:%{public, location:escape_only}@}", buf, 0x26u);
      }
    }

    else
    {
      v7 = @"TearDown SPI Invocation";
      if (a2 == 1)
      {
        v7 = @"Squatting threshold(15 min) expired";
      }

      if (a2)
      {
        v8 = v7;
      }

      else
      {
        v8 = @"ScreenLock enabled";
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 272);
        v11 = *(v10 + 1);
        v12 = *v10;
        *buf = 68289794;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2114;
        v24 = v11;
        v25 = 2050;
        v26 = v12;
        v27 = 2082;
        v28 = [(__CFString *)v8 UTF8String];
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Teardown Inflight Prompt, Client:%{public, location:escape_only}@, PromptType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, Teardown Reason:%{public, location:escape_only}s}", buf, 0x30u);
      }

      v13 = *(a1 + 272);
      v14 = *(v13 + 48);
      if (v14)
      {
        v15 = sub_100107858();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1007A3ED8;
        block[3] = &unk_102449A78;
        block[4] = v14;
        CFRunLoopPerformBlock(v15, kCFRunLoopCommonModes, block);
        v13 = *(a1 + 272);
      }

      sub_10023D820(v13, v8);
      sub_1007A3EE0((a1 + 272), 0);
      *(a1 + 312) = 0;
    }
  }
}

void sub_10079F068(uint64_t a1, int token)
{
  v2 = *(a1 + 32);
  state64 = 0;
  state = notify_get_state(token, &state64);
  v5 = state64;
  *(v2 + 1084) = state64 != 0;
  if (v5 == 1)
  {
    if ((*(v2 + 512) & 1) == 0)
    {
      sub_100787934(state, *(v2 + 504), v2 + 464);
      *(v2 + 512) = 1;
    }

    sub_10079F0E4(v2, v4);
    *(v2 + 1083) = 0;
  }
}

void sub_10079F0E4(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  sub_10001CF3C();
  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v4 = "{msg%{public}.0s:Dropping #provisional upgrade and #reprompt notification. Restrictions enabled}";
      v5 = v3;
      v6 = 18;
LABEL_6:
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
      return;
    }

    return;
  }

  if (*(a1 + 272))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 272);
      v9 = *(v8 + 1);
      v10 = *v8;
      *buf = 68289538;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v9;
      v73 = 2050;
      v74 = v10;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:We should not get springboard.homescreenunlocked events when we have inflight prompt authorization request, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v12 = *(a1 + 272);
      v13 = *(v12 + 1);
      v14 = *v12;
      *buf = 68289538;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v13;
      v73 = 2050;
      v74 = v14;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "We should not get springboard.homescreenunlocked events when we have inflight prompt authorization request", "{msg%{public}.0s:We should not get springboard.homescreenunlocked events when we have inflight prompt authorization request, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
    }

    return;
  }

  if (*(a1 + 280) != 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "#IncidentalPrompt presenting, transitioned to homescreen.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019339FC();
    }

    if ((sub_10077834C(a1, 0) & 1) != 0 || *(a1 + 1083) != 1)
    {
      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v21 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "Trial period #reprompt capacitor fired", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101933AE0();
    }

    sub_100565518(0, &v68, v22);
    v23 = std::string::append(&v68, "locScoreInfoReport", 0x12uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v23->__r_.__value_.__l + 2);
    *buf = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (buf[23] >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    v26 = [NSString stringWithUTF8String:v25];
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      Current = CFAbsoluteTimeGetCurrent();
      v68.__r_.__value_.__r.__words[0] = 0x410FA40000000000;
      sub_10001CAF4(buf);
      sub_1000B9370(*buf, "ClientRepromptAlwaysNotificationInterval", &v68);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v36 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v68.__r_.__value_.__r.__words[0];
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Commencing #reprompt iteration, Interval:%{public}f}", buf, 0x1Cu);
      }

      if (*&v68.__r_.__value_.__l.__data_ >= 0.0)
      {
        v38 = *(a1 + 136);
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1007A3F38;
        v64[3] = &unk_1024704C8;
        v64[4] = a1;
        *&v64[5] = Current;
        v64[6] = v68.__r_.__value_.__r.__words[0];
        [v38 iterateAllAnchorKeyPathsWithBlock:v64];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v37 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "Not iterating for #reprompt: disabled", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101933BC4();
        }
      }

      return;
    }

    v68.__r_.__value_.__r.__words[0] = 0;
    v27 = -[NSDictionary fileModificationDate]([+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:v26, &v68], "fileModificationDate");
    if (v68.__r_.__value_.__r.__words[0])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v28 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v68.__r_.__value_.__r.__words[0];
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not get modification date of #reprompt file, Error:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v29 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        goto LABEL_60;
      }

      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v68.__r_.__value_.__r.__words[0];
      v30 = "Could not get modification date of #reprompt file";
      v31 = "{msg%{public}.0s:Could not get modification date of #reprompt file, Error:%{public, location:escape_only}@}";
      goto LABEL_58;
    }

    if ([(NSDate *)v27 compare:[+[NSDate dateByAddingTimeInterval:"dateByAddingTimeInterval:"]== NSOrderedAscending]
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v54 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      *buf = 68289026;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v51 = "{msg%{public}.0s:#reprompt data is over 5 days old.}";
      v52 = v54;
      v53 = 18;
    }

    else
    {
      v39 = [NSData dataWithContentsOfFile:v26 options:8 error:&v68];
      if (!v39 || v68.__r_.__value_.__r.__words[0])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v55 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2113;
          *&buf[20] = v39;
          v73 = 2114;
          v74 = v68.__r_.__value_.__r.__words[0];
          _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not read checkpointed #reprompt data, Data:%{private, location:escape_only}@, Error:%{public, location:escape_only}@}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v56 = off_1025D47A8;
        if (!os_signpost_enabled(off_1025D47A8))
        {
          goto LABEL_60;
        }

        *buf = 68289539;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2113;
        *&buf[20] = v39;
        v73 = 2114;
        v74 = v68.__r_.__value_.__r.__words[0];
        v30 = "Could not read checkpointed #reprompt data";
        v31 = "{msg%{public}.0s:Could not read checkpointed #reprompt data, Data:%{private, location:escape_only}@, Error:%{public, location:escape_only}@}";
        v32 = v56;
        v33 = 38;
        goto LABEL_59;
      }

      v40 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v39 error:&v68];
      if (!v40 || v68.__r_.__value_.__r.__words[0])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v57 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289282;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v68.__r_.__value_.__r.__words[0];
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not configure unarchiver with checkpointed #reprompt data, Error:%{public, location:escape_only}@}", buf, 0x1Cu);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v29 = off_1025D47A8;
        if (!os_signpost_enabled(off_1025D47A8))
        {
          goto LABEL_60;
        }

        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v68.__r_.__value_.__r.__words[0];
        v30 = "Could not configure unarchiver with checkpointed #reprompt data";
        v31 = "{msg%{public}.0s:Could not configure unarchiver with checkpointed #reprompt data, Error:%{public, location:escape_only}@}";
LABEL_58:
        v32 = v29;
        v33 = 28;
LABEL_59:
        _os_signpost_emit_with_name_impl(dword_100000000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v30, v31, buf, v33);
        goto LABEL_60;
      }

      v63 = objc_opt_class();
      v62 = objc_opt_class();
      v41 = objc_opt_class();
      v42 = objc_opt_class();
      v43 = objc_opt_class();
      v44 = [v40 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v63, v62, v41, v42, v43, objc_opt_class(), 0), NSKeyedArchiveRootObjectKey}];

      if (!v44)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v58 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_FAULT, "Could not unarchive checkpointed #reprompt data", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101933E14();
        }

        goto LABEL_60;
      }

      v45 = [v44 objectForKeyedSubscript:@"ClientKey"];
      v46 = [CLClientKeyPath clientKeyPathWithClientKey:v45];
      v47 = sub_10004FEC8(a1, v46, &xmmword_101CE6CD8);
      v48 = v47;
      if (v47 && ![(CLClientManagerAuthorizationContext *)v47 registrationResult])
      {
        if (*(a1 + 280) == 1)
        {
          sub_101933CA8();
        }

        sub_10000EC00(v65, "");
        sub_10023C2AC(v67, 6, v46, 0, v65);
        v59 = sub_1007755CC(a1, v46, 0, v67, v44);
        sub_10023DF30(v67);
        if (v66 < 0)
        {
          operator delete(v65[0]);
        }

        if (v59)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v60 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v45;
            v4 = "{msg%{public}.0s:Creating trial period #reprompt notification, ClientKey:%{public, location:escape_only}@}";
            v5 = v60;
            v6 = 28;
            goto LABEL_6;
          }

          return;
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v61 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
LABEL_60:
          [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v26, 0];
          return;
        }

        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v45;
        v51 = "{msg%{public}.0s:#Warning Could not post #reprompt, ClientKey:%{public, location:escape_only}@}";
        v52 = v61;
        v53 = 28;
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v49 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        v50 = [(CLClientManagerAuthorizationContext *)v48 transientAwareRegistrationResult];
        *buf = 68289538;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v45;
        v73 = 1026;
        LODWORD(v74) = v50;
        v51 = "{msg%{public}.0s:Dropping checkpointed #reprompt data because target is no longer Always authorized, ClientKey:%{public, location:escape_only}@, RegistrationResult:%{public}d}";
        v52 = v49;
        v53 = 34;
      }
    }

    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, v51, buf, v53);
    goto LABEL_60;
  }

  v15 = *(a1 + 264);
  if (!v15)
  {
    sub_10193406C();
  }

  if (*(v15 + 23) < 0)
  {
    v15 = *v15;
  }

  v16 = [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v15]];
  v17 = sub_10004FEC8(a1, v16, &xmmword_101CE6CD8);
  v18 = v17;
  if (v17 && [(CLClientManagerAuthorizationContext *)v17 registrationResult]== 8)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v16;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Creating #provisional authorization upgrade notification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (*(a1 + 272))
    {
      sub_101933F00();
    }

    sub_10000EC00(__p, "");
    sub_10023C2AC(v71, 8, v16, 0, __p);
    sub_1007755CC(a1, v16, 0, v71, 0);
    sub_10023DF30(v71);
    if (v70 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v34 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v16;
      v73 = 1026;
      LODWORD(v74) = [(CLClientManagerAuthorizationContext *)v18 registrationResult];
      v4 = "{msg%{public}.0s:Dropping #provisional authorization upgrade because target is no longer Provisionally Always authorized, Client:%{public, location:escape_only}@, RegistrationResult:%{public}d}";
      v5 = v34;
      v6 = 34;
      goto LABEL_6;
    }
  }
}

void sub_10079FFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_10023DF30(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007A0088(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onDataProtectionManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onDataProtectionManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100789448(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t *sub_1007A025C(uint64_t *a1, uint64_t a2)
{
  std::istream::sentry::sentry();
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, &std::ctype<char>::id);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1007A04A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1007A0460);
  }

  __cxa_rethrow();
}

void sub_1007A0550(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 264);
    if (v3)
    {
      if (v3[23] < 0)
      {
        v3 = *v3;
      }
    }

    else
    {
      v3 = "nobody";
    }

    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Ending #provisional intermediation reign guarantee due to staleness, king:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  v4 = *(v1 + 288);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);

    *(v1 + 288) = 0;
  }
}

void sub_1007A0668(uint64_t a1)
{
  if (*(a1 + 336))
  {
    sub_1019341D8();
  }

  v2 = *(a1 + 136);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1007A19E8;
  v14[3] = &unk_10246FC30;
  v14[4] = a1;
  [v2 iterateAllAnchorKeyPathsWithBlock:v14];
  v7 = 0;
  v8 = &v7;
  v9 = 0x4812000000;
  v10 = sub_1007A1A04;
  v11 = sub_1007A1A28;
  v12 = &unk_10238AE8B;
  memset(v13, 0, sizeof(v13));
  v3 = *(a1 + 136);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007A1A54;
  v6[3] = &unk_10246FD90;
  v6[4] = &v7;
  v6[5] = a1;
  [v3 iterateAllAnchorKeyPathsWithBlock:v6];
  if (v8[6] != v8[7])
  {
    v4 = [*(a1 + 40) newTimer];
    *(a1 + 336) = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1007A1D0C;
    v5[3] = &unk_10245D2D0;
    v5[4] = &v7;
    v5[5] = a1;
    [v4 setHandler:v5];
    [*(a1 + 336) setNextFireDelay:10.0];
  }

  _Block_object_dispose(&v7, 8);
  v15 = v13;
  sub_1007AB6A0(&v15);
}

void sub_1007A0828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  *(v22 - 56) = v21;
  sub_1007AB6A0((v22 - 56));
  _Unwind_Resume(a1);
}

id sub_1007A084C(id *a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Resetting LocationConsumptionScoreInfoArchive", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101934344();
  }

  v3 = [CLHRequestArchive alloc];
  sub_100565518(0, &v11, v4);
  v5 = std::string::append(&v11, "locScoreInfo/", 0xDuLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v13 = v5->__r_.__value_.__r.__words[2];
  *buf = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v13 >= 0)
  {
    v7 = buf;
  }

  else
  {
    v7 = *buf;
  }

  a1[63] = [(CLHRequestArchive *)v3 initWithDirectory:[NSString itemCountThresholdForAutoCleanUp:"stringWithUTF8String:" stringWithUTF8String:v7], 150];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  [a1[63] setRotationInterval:-1.0];
  sub_100787F74(a1, a1[63], (a1 + 58));
  a1[65] = [objc_msgSend(a1[4] "vendor")];
  Current = CFAbsoluteTimeGetCurrent();
  v9 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
  [v9 setClientKey:@"com.apple.locationd.all-location-clients-stop"];
  [v9 setStopTime:Current];
  [v9 setScore:0];
  return [a1[63] writeSecondaryObject:v9 toField:1];
}

void sub_1007A0A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A0A68(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Registering coreanalytics activity", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101934428();
  }

  v3 = [objc_msgSend(*(a1 + 32) "vendor")];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1007A6FA0;
  handler[3] = &unk_10245EAB8;
  handler[4] = v3;
  xpc_activity_register("com.apple.locationd.CLClientManager.coreanalytics", XPC_ACTIVITY_CHECK_IN, handler);
}

_BYTE *sub_1007A0B80(uint64_t a1)
{
  v2 = *(a1 + 136);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007A51F0;
  v4[3] = &unk_1024704E8;
  v4[4] = a1;
  v5 = 1;
  [v2 iterateAllAnchorKeyPathsWithBlock:v4];
  sub_100774798(a1);
  sub_100774D9C(a1);
  sub_1007A1D84(a1, 0);
  return sub_100044F7C(a1);
}

void sub_1007A0C28(uint64_t a1, CLConnection **a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  *a2 = 0;
  v8[2] = _NSConcreteStackBlock;
  v8[3] = 3221225472;
  v8[4] = sub_1007A0D04;
  v8[5] = &unk_10245D2A8;
  v8[6] = v4;
  v8[7] = v5;
  CLConnection::setDisconnectionHandler();
  v6 = *a3;
  v7 = a3[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000540D0(v4, v5, v8);
  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1007A0CEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A0D10(uint64_t a1, _DWORD *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onDaemonStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onDaemonStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007A6298(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007A0EDC(uint64_t a1, _DWORD *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onWifiServiceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onWifiServiceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007A62F8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007A10A8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onBluetoothServiceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onBluetoothServiceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007A6A64(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007A1274(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onStatusBarNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onStatusBarNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007A64A0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007A1450(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = CLAuthorizationStatusChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v2, 0, 0, 0);
}

id sub_1007A1490(uint64_t a1, uint64_t a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#liveActivity invoking update handler", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101934504();
  }

  return [*(a1 + 32) handleLiveActivityUpdate:a2];
}

void sub_1007A1540(uint64_t a1)
{
  v2 = *(a1 + 392);
  v3 = *(a1 + 393);
  domain_answer = os_eligibility_get_domain_answer();
  if (!domain_answer)
  {
    *(a1 + 392) = 0;
  }

  v5 = os_eligibility_get_domain_answer();
  if (!v5)
  {
    *(a1 + 393) = 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 392);
    v8 = *(a1 + 393);
    *buf = 68291074;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    v14 = domain_answer;
    v15 = 1026;
    v16 = 0;
    v17 = 1026;
    v18 = v2;
    v19 = 1026;
    v20 = v7;
    v21 = 1026;
    v22 = v5;
    v23 = 1026;
    v24 = 0;
    v25 = 1026;
    v26 = v3;
    v27 = 1026;
    v28 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes  #pcHistorical os_eligibility updated, lrStatus:%{public}d, lrAnswer:%{public}d, oldLearnedRoutesEligibility:%{public}hhd, NewLearnedRoutesEligibility:%{public}hhd, vhStatus:%{public}d, vhAnswer:%{public}d, oldVisitHistoryEligibility:%{public}hhd, NewVisitHistoryEligibility:%{public}hhd}", buf, 0x42u);
  }
}

void sub_1007A16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLClientManager::onLocationIntelligenceOSEligibilityNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onLocationIntelligenceOSEligibilityNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007AB63C;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1007A1908(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000206B4(a1, a2);
  result = sub_1004FB0D0(v2, "LearnedRoutesTrackingStartTime");
  if ((result & 1) == 0)
  {
    v5 = sub_1000206B4(result, v4);
    Current = CFAbsoluteTimeGetCurrent();
    return sub_100116D68(v5, "LearnedRoutesTrackingStartTime", &Current);
  }

  return result;
}

uint64_t sub_1007A1964(uint64_t a1)
{
  *a1 = off_102470970;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_1007AEA30(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

__n128 sub_1007A1A04(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1007A1A54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  [*(v4 + 136) doubleForKey:@"BackgroundLocationTimeStarted" atKeyPath:a2 defaultValue:0.0];
  v6 = v5;
  [*(v4 + 136) doubleForKey:@"BackgroundLocationTimeStopped" atKeyPath:a2 defaultValue:0.0];
  if (v6 <= v7)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2114;
      v22 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:No BackgroundLocation found. No crash-grace CLInUseAssertion, clientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2114;
      v22 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Ongoing background location, taking temporary crash-grace DUE CLInUseAssertion, clientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v4 + 400);
    if (a2)
    {
      objc_msgSend_cppClientKey(a2);
    }

    else
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
    }

    sub_10000EC00(&__p, "crash-grace-DUE");
    sub_10000E08C(&__p, v10, v15, 5, buf);
    v12 = v9[7];
    if (v12 >= v9[8])
    {
      v13 = sub_1007AB724(v9 + 6, buf);
    }

    else
    {
      sub_10001BB2C(v9[7], buf);
      v13 = v12 + 80;
      v9[7] = v12 + 80;
    }

    v9[7] = v13;
    sub_10014588C(buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }
  }
}

void sub_1007A1CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_10014588C(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1007A1D0C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v4 = *(v2 + 48);
    ;
  }

  *(v2 + 56) = v4;
  [*(v1 + 336) invalidate];

  *(v1 + 336) = 0;
}

void sub_1007A1D84(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [*(a1 + 120) locationRestricted];
  v5 = sub_100008074();
  v6 = v5;
  v7 = sub_1007A4EC0(v5, v2);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v23 = v6 != 0;
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = v2;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Location services available %d; parental controls enabled %d (refresh %d)", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v17[0] = 67109632;
    v17[1] = v6 != 0;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "Location services available %d; parental controls enabled %d (refresh %d)", v17, 20, v15);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::checkRestrictions(BOOL)", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  [*(a1 + 120) setLocationRestricted:(v6 == 0) | v7];
  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#warning location is restricted; freezing client states", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019346BC();
      if (!v2)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v2)
    {
      return;
    }

    goto LABEL_20;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "location is not restricted", buf, 2u);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_19;
  }

  sub_1019345E0();
  if (!v2)
  {
    return;
  }

LABEL_20:
  if (v4 != [*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Applying #restrictions change to all clients", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101934798();
    }

    v12 = *(a1 + 136);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1007A5178;
    v16[3] = &unk_10246FC30;
    v16[4] = a1;
    [v12 iterateAllAnchorKeyPathsWithBlock:v16];
  }
}

uint64_t sub_1007A2140(uint64_t a1)
{
  *a1 = off_1024702D8;
  *(a1 + 112) = &off_1024703C0;
  *(*(a1 + 1040) + 8) = 0;
  sub_1008DC7DC(*(a1 + 400));

  *(a1 + 1560) = 0;
  *(a1 + 1552) = 0;
  [*(a1 + 336) invalidate];

  *(a1 + 336) = 0;
  dispatch_source_cancel(*(a1 + 696));

  *(a1 + 696) = 0;
  *(a1 + 688) = 0;
  [*(a1 + 344) invalidate];

  *(a1 + 344) = 0;
  [*(a1 + 352) invalidate];

  *(a1 + 352) = 0;
  [*(a1 + 256) invalidate];

  *(a1 + 256) = 0;
  [*(a1 + 224) invalidate];

  *(a1 + 224) = 0;
  [*(a1 + 432) invalidate];

  *(a1 + 432) = 0;
  [*(a1 + 424) invalidate];

  *(a1 + 424) = 0;
  v2 = *(a1 + 600);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
  if (v3)
  {
    v4 = MEMORY[0];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (MEMORY[0] != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(8 * i);
        [objc_msgSend(*(a1 + 600) objectForKeyedSubscript:{v6), "invalidate"}];

        [*(a1 + 600) setObject:0 forKeyedSubscript:v6];
      }

      v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
    }

    while (v3);
  }

  v7 = *(a1 + 616);
  if (v7 != (a1 + 624))
  {
    do
    {
      sub_100114ED0(v7 + 7, 0);
      v8 = v7[1];
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
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != (a1 + 624));
  }

  v11 = *(a1 + 416);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11);
  if (v12)
  {
    v13 = MEMORY[0];
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(v11);
        }

        dispatch_source_cancel(*(8 * j));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11);
    }

    while (v12);
  }

  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  [*(a1 + 368) invalidate];

  *(a1 + 368) = 0;
  *(a1 + 360) = 0;
  v15 = *(a1 + 456);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15);
  if (v16)
  {
    v17 = MEMORY[0];
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (MEMORY[0] != v17)
        {
          objc_enumerationMutation(v15);
        }

        [objc_msgSend(*(a1 + 456) objectForKeyedSubscript:{*(8 * k)), "end"}];
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15);
    }

    while (v16);
  }

  *(a1 + 456) = 0;
  [*(a1 + 296) invalidate];

  *(a1 + 296) = 0;
  if (*(a1 + 248))
  {
    sub_101934874(v19, v20, v21, v22, v23, v24, v25, v26, v51, v52, v53, v54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager.mm", 2837, "~CLClientManager");
    __break(1u);
  }

  v27 = *(a1 + 1088);
  if (v27)
  {
    notify_cancel(v27);
  }

  v28 = *(a1 + 1092);
  if (v28)
  {
    notify_cancel(v28);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.locationd/Restrictions", 0);
  v30 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(a1 + 1584);
  *(a1 + 1584) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  sub_1007AB9A0(a1 + 1056, *(a1 + 1056));
  [*(a1 + 1568) stopMonitoringCapabilityChangeForClient:CLISP_ME_TOKEN];

  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0;

  *(a1 + 1120) = 0;
  *(a1 + 1112) = 0;

  *(a1 + 1104) = 0;
  *(a1 + 1096) = 0;

  *(a1 + 1504) = 0;
  *(a1 + 120) = 0;

  *(a1 + 608) = 0;
  *(a1 + 504) = 0;

  *(a1 + 520) = 0;
  *(a1 + 568) = 0;

  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  [*(a1 + 144) invalidate];

  *(a1 + 144) = 0;
  [*(a1 + 136) persist];

  *(a1 + 136) = 0;
  *(a1 + 1592) = 0;
  v37 = *(a1 + 1584);
  *(a1 + 1584) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  sub_1003C94DC((a1 + 1512));
  sub_1003C94DC((a1 + 1352));
  sub_10001AF44(a1 + 1136, *(a1 + 1144));
  v55 = (a1 + 1056);
  sub_1007AB64C(&v55);
  v38 = *(a1 + 1048);
  if (v38)
  {
    sub_100008080(v38);
  }

  sub_1007AE9F4(a1 + 1000);
  if (*(a1 + 999) < 0)
  {
    operator delete(*(a1 + 976));
  }

  sub_1003C93BC(a1 + 936, *(a1 + 944));
  sub_1003C93BC(a1 + 912, *(a1 + 920));
  sub_10001AF44(a1 + 888, *(a1 + 896));
  sub_1003C93BC(a1 + 864, *(a1 + 872));
  sub_1003C93BC(a1 + 840, *(a1 + 848));
  sub_10001AF44(a1 + 800, *(a1 + 808));
  sub_10001AF44(a1 + 776, *(a1 + 784));
  sub_10001AF44(a1 + 752, *(a1 + 760));
  sub_10001AF44(a1 + 728, *(a1 + 736));
  sub_10001AF44(a1 + 704, *(a1 + 712));
  sub_1003C94DC((a1 + 640));
  sub_1007AE998(a1 + 616, *(a1 + 624));
  sub_1003C94DC((a1 + 528));
  sub_1003C94DC((a1 + 464));
  v39 = *(a1 + 408);
  if (v39)
  {
    sub_100008080(v39);
  }

  sub_1007A3EE0((a1 + 272), 0);
  v40 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v40)
  {
    sub_10068024C(a1 + 264, v40);
  }

  v41 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  sub_1007A1964(a1);
  return a1;
}

void sub_1007A2AF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1007A2B34(uint64_t a1)
{
  sub_1007A2140(a1);

  operator delete();
}

void sub_1007A2B6C(uint64_t a1)
{
  sub_1007A2140(a1 - 112);

  operator delete();
}

const __CFString *sub_1007A2BA8(__CFString *filePath)
{
  if (!filePath)
  {
    return 0;
  }

  v2 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, filePath, kCFURLPOSIXPathStyle, 1u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFBundleCreate(kCFAllocatorDefault, v2);
  if (v4)
  {
    v6 = v4;
    v7 = sub_100056238(v4, v5);
    v8 = _kCFBundleDisplayNameKey;
    v9 = sub_100055A24(v7, v6, _kCFBundleDisplayNameKey, 0);
    if (!v9)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000238CC(v8, __p);
        v11 = v19 >= 0 ? __p : *__p;
        *buf = 136446210;
        v21 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#warning could not get localized string '%{public}s'!", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(*__p);
        }
      }

      v12 = sub_10000A100(121, 2);
      if (v12)
      {
        sub_1019349FC(v8);
      }

      v14 = sub_100056238(v12, v13);
      v9 = sub_100055A24(v14, v6, kCFBundleNameKey, 0);
      if (!v9)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v15 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          v16 = [(__CFString *)filePath UTF8String];
          *__p = 136446210;
          *&__p[4] = v16;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "could not get UN localized bundle name from bundle at '%{public}s'; soup cannot be given to them.", __p, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101934B0C(filePath);
        }

        v9 = 0;
      }
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v3);
  return v9;
}

void sub_1007A2DFC(uint64_t a1)
{
  if (!*(a1 + 688))
  {
    *(a1 + 688) = [[CLOSTransaction alloc] initWithDescription:"CLClientManager.unsubscribeGrace"];
  }

  v2 = *(a1 + 696);
  if (v2)
  {
    v3 = dispatch_time(0, (*(a1 + 680) * 1000000000.0));
    v4 = (*(a1 + 680) * 0.5 * 1000000000.0);

    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, v4);
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [*(a1 + 40) queue]);
    *(a1 + 696) = v5;
    v6 = dispatch_time(0, (*(a1 + 680) * 1000000000.0));
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, (*(a1 + 680) * 0.5 * 1000000000.0));
    v7 = *(a1 + 696);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A2F7C;
    handler[3] = &unk_102449A78;
    handler[4] = a1;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(*(a1 + 696));
  }
}

void sub_1007A2F7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  *(v1 + 688) = 0;
}

void sub_1007A2FA8()
{
  v0 = [[CLOSTransaction alloc] initWithDescription:"CLClientManager.privacyReset"];
  v1 = dispatch_time(0, 300000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007A3054;
  block[3] = &unk_102447418;
  block[4] = v0;
  dispatch_after(v1, &_dispatch_main_q, block);
}

id sub_1007A305C(uint64_t a1)
{
  v3 = *(a1 + 64);
  v1 = a1 + 64;
  v2 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v1;
  do
  {
    v5 = *(v2 + 32);
    if ((v5 & 0x80000000) == 0)
    {
      v4 = v2;
    }

    v2 = *(v2 + ((v5 >> 28) & 8));
  }

  while (v2);
  if (v4 != v1 && *(v4 + 32) <= 0 && *(v4 + 56))
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = *(v4 + 40);
    if (v9 != (v4 + 48))
    {
      do
      {
        if (*(v9 + 63) < 0)
        {
          sub_100007244(__p, v9[5], v9[6]);
        }

        else
        {
          *__p = *(v9 + 5);
          v24 = v9[7];
        }

        if (SHIBYTE(v24) < 0)
        {
          if (!__p[1])
          {
LABEL_39:
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v16 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              *buf = 68289026;
              *v28 = 0;
              *&v28[4] = 2082;
              *&v28[6] = "";
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Found registered client for kNotificationReset with empty resetIdentifier}", buf, 0x12u);
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }
            }

            v17 = off_1025D47A8;
            if (os_signpost_enabled(off_1025D47A8))
            {
              *buf = 68289026;
              *v28 = 0;
              *&v28[4] = 2082;
              *&v28[6] = "";
              _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Found registered client for kNotificationReset with empty resetIdentifier", "{msg%{public}.0s:Found registered client for kNotificationReset with empty resetIdentifier}", buf, 0x12u);
            }

            goto LABEL_50;
          }

          v10 = __p[0];
        }

        else
        {
          if (!HIBYTE(v24))
          {
            goto LABEL_39;
          }

          v10 = __p;
        }

        if ([&off_102554438 containsObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v10)}])
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v11 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            if (v24 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = __p[0];
            }

            *buf = 136315138;
            *v28 = v12;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Skip un-tracked resetIdentifier: %s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10192DC88(buf);
            v13 = v24 >= 0 ? __p : __p[0];
            v25 = 136315138;
            v26 = v13;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "Skip un-tracked resetIdentifier: %s", &v25);
            v15 = v14;
            sub_100152C7C("Generic", 1, 0, 2, "NSArray *CLClientManager::resetIdentifiersForRegisteredClients()", "%s\n", v14);
            if (v15 != buf)
            {
              free(v15);
            }
          }
        }

        else
        {
          if (v24 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          [v8 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v18)}];
        }

LABEL_50:
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }

        v19 = v9[1];
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
            v20 = v9[2];
            v21 = *v20 == v9;
            v9 = v20;
          }

          while (!v21);
        }

        v9 = v20;
      }

      while (v20 != (v4 + 48));
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v22 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *v28 = 0;
      *&v28[4] = 2082;
      *&v28[6] = "";
      v29 = 2114;
      v30 = v8;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:fetched reset-identifiers, ResetIdentifiers:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return [v8 allObjects];
  }

  else
  {
LABEL_8:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "No registered clients for kNotificationReset.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101934C18();
    }

    return 0;
  }
}

void sub_1007A353C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A3564(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_100033370(a1, a2);
  v11 = 0;
  v12 = 0;
  sub_10004F9C8(a3, &v12, &v11);
  if (([*(a1 + 136) hasValueForKey:v12 atKeyPath:v5] & 1) == 0)
  {
    v6 = v11;
    if (([*(a1 + 136) hasValueForKey:v11 atKeyPath:v5] & 1) == 0)
    {
      [*(a1 + 136) setDouble:v6 forKey:v5 atKeyPath:14406267.0];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v8 = off_10246FCA0[a3];
        *buf = 138412546;
        *&buf[4] = v5;
        v14 = 2080;
        v15 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Service: client, %@, type, %s, marked as used", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101934CFC(v5, a3);
      }
    }
  }

  if (!_os_feature_enabled_impl() || a3 <= 0xA && ((1 << a3) & 0x430) != 0)
  {
    v9 = [objc_msgSend(v5 "legacyClientKey")];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    sub_10000EC00(buf, v10);
    sub_1000F5FF0(a1, buf);
    if (v16 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1007A3734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007A3758(uint64_t a1)
{
  v1 = *(a1 + 136);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007A37CC;
  v3[3] = &unk_10246FC30;
  v3[4] = a1;
  return [v1 iterateAllAnchorKeyPathsWithBlock:v3];
}

uint64_t sub_1007A37CC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 32);
  do
  {
    v5 = qword_101C8D460[v3];
    result = _os_feature_enabled_impl();
    if (result)
    {
      if (v5 > 0xA || ((1 << v5) & 0x430) == 0)
      {
        break;
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    result = sub_10002FE04(v4, Current, a2, v5, 0, 0, 1);
    ++v3;
  }

  while (v3 != 11);
  return result;
}

id sub_1007A3888(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289282;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:clearing regions for client, client:%{public, location:escape_only}@}", v9, 0x1Cu);
    }

    for (i = 0; i != 4; ++i)
    {
      v7 = sub_100774B5C(i);
      Current = CFAbsoluteTimeGetCurrent();
      result = sub_10002FE04(a1, Current, v3, v7, 0, 0, 0);
    }
  }

  return result;
}

id sub_1007A39BC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2114;
      v10 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:clearing significant location change for client, Client:%{public, location:escape_only}@}", v6, 0x1Cu);
    }

    return [*(a1 + 136) removeValueForKey:@"SignificantTimeStarted" atKeyPath:v3];
  }

  return result;
}

void sub_1007A3ACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = TMGetRTCResetCount();
  [*(v4 + 136) doubleForKey:@"AuthorizationRegisterTime" atKeyPath:a2 defaultValue:-1.0];
  v7 = v6;
  if ([*(v4 + 136) BOOLForKey:@"Authorization" atKeyPath:a2 defaultValue:0])
  {
    if (v7 == -1.0)
    {
      return;
    }
  }

  else
  {
    if ([*(v4 + 136) BOOLForKey:@"SupportedAuthorizationMask" atKeyPath:a2 defaultValue:0])
    {
      v8 = v7 == -1.0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return;
    }
  }

  TMGetKernelMonotonicClock();
  v10 = v9;
  if (v9 < v7)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v20 = 68289794;
    *v21 = 2082;
    *&v21[2] = "";
    *&v21[10] = 2114;
    *&v21[12] = a2;
    *&v21[20] = 2050;
    *&v21[22] = v10;
    *&v21[30] = 2050;
    v22 = v7;
    v12 = "{msg%{public}.0s:#warning #appclip entry has TMMonotonicClock registration time in the future??, Client:%{public, location:escape_only}@, now:%{public}f, timeGivenAuth:%{public}f}";
    v13 = v11;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 48;
LABEL_13:
    _os_log_impl(dword_100000000, v13, v14, v12, &v20, v15);
LABEL_27:
    [*(a1 + 32) addObject:{a2, v20, *v21, *&v21[8], *&v21[16], *&v21[24], *&v22, v23}];
    return;
  }

  if (v5)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v20 = 68289282;
      *v21 = 2082;
      *&v21[2] = "";
      *&v21[10] = 1026;
      *&v21[12] = v5;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#appclip detected RTC reset count > 1, rtcResetCount:%{public}u}", &v20, 0x18u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v17 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v20 = 68289282;
      *v21 = 2082;
      *&v21[2] = "";
      *&v21[10] = 1026;
      *&v21[12] = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#appclip detected RTC reset count > 1", "{msg%{public}.0s:#appclip detected RTC reset count > 1, rtcResetCount:%{public}u}", &v20, 0x18u);
    }

    goto LABEL_27;
  }

  if (v9 - v7 > *(a1 + 48))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_27;
    }

    v20 = 68290050;
    *v21 = 2082;
    *&v21[2] = "";
    *&v21[10] = 2114;
    *&v21[12] = a2;
    *&v21[20] = 2050;
    *&v21[22] = v10;
    *&v21[30] = 2050;
    v22 = v7;
    LOWORD(v23) = 2050;
    *(&v23 + 2) = v10 - v7;
    v12 = "{msg%{public}.0s:#appclip client authorization has gone on long enough! PURGE!, Client:%{public, location:escape_only}@, now:%{public}f, timeGivenAuth:%{public}f, delta:%{public}f}";
    v13 = v18;
    v14 = OS_LOG_TYPE_DEBUG;
    v15 = 58;
    goto LABEL_13;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v19 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v20 = 68289794;
    *v21 = 2082;
    *&v21[2] = "";
    *&v21[10] = 2114;
    *&v21[12] = a2;
    *&v21[20] = 2050;
    *&v21[22] = v10;
    *&v21[30] = 2050;
    v22 = v7;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#appclip client is spared from the PURGE... for now, Client:%{public, location:escape_only}@, now:%{public}f, timeGivenAuth:%{public}f}", &v20, 0x30u);
  }
}

uint64_t sub_1007A3EE0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10023DF30(result);

    operator delete();
  }

  return result;
}

void sub_1007A3F38(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(v6 + 136) intForKey:@"Authorization" atKeyPath:a2 defaultValue:0];
  if (v7 == 4)
  {
    v8 = [*(v6 + 136) intForKey:@"ConsumptionPeriodBegin" atKeyPath:a2 defaultValue:0];
    if (v8)
    {
      v9 = (*(a1 + 40) - v8) / *(a1 + 48);
      if (v9 < 1.0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v10 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289538;
          *&buf[4] = 0;
          *v26 = 2082;
          *&v26[2] = "";
          *&v26[10] = 2114;
          *&v26[12] = a2;
          v27 = 2050;
          *v28 = v9;
          v11 = "{msg%{public}.0s:denying #reprompt for client with consumptionPeriodElapsed < 1.0, Client:%{public, location:escape_only}@, consumptionPeriodElapsed:%{public}f}";
          v12 = v10;
          v13 = 38;
LABEL_23:
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, v11, buf, v13);
          return;
        }

        return;
      }

      if (([*(v6 + 136) isKeyPathRegisteredSystemService:a2] & 1) != 0 || sub_10018E72C(v6, a2))
      {
        [*(v6 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:a2 atKeyPath:CFAbsoluteTimeGetCurrent() + 31536000.0];
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v16 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *v26 = 2082;
        *&v26[2] = "";
        *&v26[10] = 2114;
        *&v26[12] = a2;
        v11 = "{msg%{public}.0s:denying #reprompt for System Service, Client:%{public, location:escape_only}@}";
      }

      else
      {
        if (a2)
        {
          objc_msgSend_cppClientKey(a2);
        }

        else
        {
          *buf = 0;
          *v26 = 0;
          *&v26[8] = 0;
        }

        v24 = buf;
        v17 = *(sub_100046778((v6 + 464), buf, &unk_101C66300, &v24) + 12);
        if ((v26[15] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v17)
        {
          v18 = [*(v6 + 136) intForKey:@"ConsumptionCoolingRate" atKeyPath:a2 defaultValue:0];
          v19 = [*(v6 + 136) intForKey:@"NextConsumptionThresholdScore" atKeyPath:a2 defaultValue:0x7FFFFFFFLL];
          if (*(a1 + 48) == 259200.0)
          {
            if (v18 > 2)
            {
              v18 = 0;
            }

            v20 = pow(dbl_101C8D548[v18], v9) * v17;
            if (v20 <= v19)
            {
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v21 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 68289794;
                *&buf[4] = 0;
                *v26 = 2082;
                *&v26[2] = "";
                *&v26[10] = 2114;
                *&v26[12] = a2;
                v27 = 1026;
                *v28 = v19;
                *&v28[4] = 1026;
                *&v28[6] = v20;
                v11 = "{msg%{public}.0s:denying #reprompt for client, threshold not reached, Client:%{public, location:escape_only}@, nextConsumptionThresholdScore:%{public}d, exponentiatedScore:%{public}d}";
                v12 = v21;
                v13 = 40;
                goto LABEL_23;
              }

              return;
            }
          }

          else
          {
            v20 = -1.0;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v22 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            v23 = *(a1 + 48);
            *buf = 68290818;
            *&buf[4] = 0;
            *v26 = 2082;
            *&v26[2] = "";
            *&v26[10] = 2114;
            *&v26[12] = a2;
            v27 = 2050;
            *v28 = v23;
            *&v28[8] = 2050;
            v29 = v9;
            v30 = 1026;
            v31 = v17;
            v32 = 1026;
            v33 = v18;
            v34 = 2050;
            v35 = v20;
            v36 = 1026;
            v37 = v19;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Getting #reprompt info for client, clientKeyPath:%{public, location:escape_only}@, effectiveTrialRepromptInterval:%{public}f, consumptionPeriodsElapsed:%{public}f, runningScore:%{public}d, curCooling:%{public}d, exponentiatedScore:%{public}f, exponentiatedScoreThreshold:%{public}d}", buf, 0x4Cu);
          }

          [*(v6 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:a2 atKeyPath:CFAbsoluteTimeGetCurrent()];
          [*(v6 + 136) setInt:(v17 + v17) forKey:@"NextNextConsumptionThresholdScore" atKeyPath:a2];
          [*(v6 + 136) persist];
          sub_1007A45D4(v6, a2);
          *a3 = 1;
          return;
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v16 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *v26 = 2082;
        *&v26[2] = "";
        *&v26[10] = 2114;
        *&v26[12] = a2;
        v11 = "{msg%{public}.0s:denying #reprompt for client with no consumption score, Client:%{public, location:escape_only}@}";
      }
    }

    else
    {
      [*(v6 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:a2 atKeyPath:CFAbsoluteTimeGetCurrent()];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v16 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *v26 = 2082;
      *&v26[2] = "";
      *&v26[10] = 2114;
      *&v26[12] = a2;
      v11 = "{msg%{public}.0s:denying #reprompt for client without consumptionPeriodBegin, Client:%{public, location:escape_only}@}";
    }

    v12 = v16;
    v13 = 28;
    goto LABEL_23;
  }

  v14 = v7;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    *v26 = 2082;
    *&v26[2] = "";
    *&v26[10] = 2114;
    *&v26[12] = a2;
    v27 = 1026;
    *v28 = v14;
    v11 = "{msg%{public}.0s:denying #reprompt for client without Always auth, Client:%{public, location:escape_only}@, Auth:%{public}d}";
    v12 = v15;
    v13 = 34;
    goto LABEL_23;
  }
}

void sub_1007A45B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A45D4(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1000184F4(a1, a2);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3052000000;
  v13[3] = sub_1000474E4;
  v13[4] = sub_10004844C;
  v13[5] = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.reading-score-archive"];
  v6 = [NSMutableArray arrayWithCapacity:0];
  v7 = *(a1 + 504);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007A70C8;
  v12[3] = &unk_1024705A8;
  v12[4] = v6;
  sub_100779E1C(v7, v5, v12);
  if (v6 && [(NSMutableArray *)v6 count])
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289282;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#reprompt preparePromptFromConsumptionScore, Client:%{public, location:escape_only}@}", &buf, 0x1Cu);
    }

    v10 = *(a1 + 520);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007A712C;
    v11[3] = &unk_1024705D0;
    v11[4] = v5;
    v11[5] = v13;
    [v10 getStoredLocationsBetweenStartTime:v6 endTime:v11 apartFromEachOther:Current + -259200.0 lyingWithinTimeIntervals:Current withReply:300.0];
  }

  _Block_object_dispose(v13, 8);
  objc_autoreleasePoolPop(v4);
}

void sub_1007A4840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1007A4864(const void *a1, uint64_t a2)
{
  CFRetain(a1);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007AB9F0;
  v5[3] = &unk_1024707B8;
  v5[4] = a1;
  v5[5] = a2;
  return [qword_102659F80 doAsync:v5];
}

void sub_1007A48EC(uint64_t a1, CFTypeRef cf, double a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 48) = cf;
  *(a1 + 64) = a3;
}

uint64_t sub_1007A493C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = sub_100033370(a1, a2);
  }

  else
  {
    v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
    result = [v6 isValidCKP];
    if (!result)
    {
      return result;
    }
  }

  v8 = [*(a1 + 136) BOOLForKey:@"BackgroundIndicatorEnabled" atKeyPath:v6 defaultValue:0];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 68289794;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2114;
    v14 = v6;
    v15 = 1026;
    v16 = v8;
    v17 = 2050;
    v18 = a3;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:update client background indicator enabled, Client:%{public, location:escape_only}@, old:%{public}d, new:%{public}lu}", v10, 0x2Cu);
  }

  [*(a1 + 136) setBool:a3 forKey:@"BackgroundIndicatorEnabled" atKeyPath:v6];
  [*(a1 + 136) persist];
  sub_1007A5B34(a1, v6);
  return 1;
}

id sub_1007A4AC0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    return (([*(a1 + 136) intForKey:@"Authorization" atKeyPath:v3 defaultValue:0] & 6) != 0);
  }

  return result;
}

id sub_1007A4B1C(uint64_t a1, void *a2)
{
  result = [a2 isValidCKP];
  if (result)
  {
    result = [objc_msgSend(a2 "bundlePath")];
    if (result)
    {
      v5 = [a2 bundlePath];
      result = sub_1000E64C8(v5, v6);
      if (result)
      {
        result = [(CLClientManagerAuthorizationContext *)sub_10004FEC8(a1 isAuthorizedForServiceTypeMask:a2, &xmmword_101CE6CD8), "isAuthorizedForServiceTypeMask:", 16];
        if ((result & 1) == 0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v7 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#LearnedRoutes #pcHistorical deleting Allowed access - Routine(SignificantLocations) is Off", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101934E14();
          }

          v8 = *(a1 + 136);
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_1007A9694;
          v9[3] = &unk_10246FC30;
          v9[4] = a1;
          return [v8 iterateAllAnchorKeyPathsWithBlock:v9];
        }
      }
    }
  }

  return result;
}

void sub_1007A4C58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    v7 = *(a1 + 136);
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    v9 = [NSString stringWithUTF8String:v8];

    [v7 setString:v9 forKey:@"AuthorizationPurposeKey" atKeyPath:v6];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:setClientAuthorizationPurposeKey for an app we don't have an entry for, Client:%{public, location:escape_only}@}", &v12, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setClientAuthorizationPurposeKey for an app we don't have an entry for", "{msg%{public}.0s:setClientAuthorizationPurposeKey for an app we don't have an entry for, Client:%{public, location:escape_only}@}", &v12, 0x1Cu);
    }
  }
}

id sub_1007A4E58(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  v4 = [*(a1 + 136) BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v3 defaultValue:1];
  sub_100791ACC(a1, v3, 0, 1);
  return v4;
}

BOOL sub_1007A4EC0(uint64_t a1, int a2)
{
  strcpy(v17, "SBParentalControlsCapabilities");
  memset(&v15, 0, sizeof(v15));
  sub_10054B43C(v14, @"com.apple.springboard", 1, @"mobile");
  v13 = 0;
  if (a2)
  {
    sub_10054B380(v14);
  }

  if (sub_10001CB4C(v14, "SBParentalControlsEnabled", &v13, 0xFFFFFFFFLL) && v13 && (v3 = sub_1001C0EF0(v14, v17), v13 = 0, v3 >= 1))
  {
    v4 = 0;
    do
    {
      if (!sub_100175094(v14, v17, &v15))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v5 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "NameValuePair::get failed despite our bounds checking", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10192DC88(buf);
          v12[0] = 0;
          LODWORD(v11) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "NameValuePair::get failed despite our bounds checking", v12, v11);
          v9 = v8;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLClientManager::areParentalControlsEnabled(BOOL)", "%s\n", v8);
          if (v9 != buf)
          {
            free(v9);
          }
        }
      }

      v6 = std::string::compare(&v15, "location");
      v7 = v6 == 0;
      v13 = v6 == 0;
      if (!v6)
      {
        break;
      }

      ++v4;
    }

    while (v4 < v3);
  }

  else
  {
    v7 = 0;
  }

  sub_10054B4D4(v14);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1007A5140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_10054B4D4(&a13);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007A5178(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_10000EC00(__p, "");
  sub_100018918(v3, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007A51D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A51F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  sub_1007744DC(v4, a2, 0xAuLL);
  sub_1007744DC(v4, a2, 4uLL);
  v5 = [*(v4 + 416) objectForKeyedSubscript:a2];
  if (v5)
  {
    dispatch_source_cancel(v5);
    [*(v4 + 416) removeObjectForKey:a2];
  }

  sub_1000ED87C(v4, *(v4 + 504), (v4 + 464), a2);
  if (_os_feature_enabled_impl())
  {
    sub_1000ED87C(v4, *(v4 + 568), (v4 + 528), a2);
  }

  v6 = sub_1007744DC(v4, a2, 5uLL);
  if ((atomic_load_explicit(&qword_102659F60, memory_order_acquire) & 1) == 0)
  {
    v24 = v6;
    v25 = __cxa_guard_acquire(&qword_102659F60);
    v6 = v24;
    if (v25)
    {
      v26 = objc_opt_class() && objc_opt_class() && objc_opt_class() && objc_opt_class() && objc_opt_class() != 0;
      byte_102659F58 = v26;
      __cxa_guard_release(&qword_102659F60);
      v6 = v24;
    }
  }

  if ((v6 & byte_102659F58) == 1 && *(a1 + 40) == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Resuming client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (a2)
    {
      objc_msgSend_clientName(a2);
    }

    else
    {
      v53 = 0;
      *__p = 0u;
      v52 = 0u;
      v49 = 0u;
      *v50 = 0u;
      v47 = 0u;
      *v48 = 0u;
      *v45 = 0u;
      *v46 = 0u;
      v44 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    if ([a2 bundleId])
    {
      v8 = [a2 bundleId];
      v28 = 0;
      v9 = [RBSProcessHandle handleForPredicate:[RBSProcessPredicate predicateMatchingBundleIdentifier:v8] error:&v28];
      v10 = v9;
      *v38 = 0;
      *&v39 = v38;
      *(&v39 + 1) = 0x3052000000;
      v40 = sub_1000474E4;
      v41 = sub_10004844C;
      v42 = 0;
      if (!v9 || ([v9 pid] & 0x80000000) != 0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v18 = [a2 bundleId];
          *v29 = 68289538;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2114;
          v34 = v18;
          v35 = 2114;
          v36 = v28;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Failed to get the process handle, bundleID:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", v29, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v19 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v20 = [a2 bundleId];
          *v29 = 68289538;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2114;
          v34 = v20;
          v35 = 2114;
          v36 = v28;
          _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning Failed to get the process handle", "{msg%{public}.0s:#Warning Failed to get the process handle, bundleID:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", v29, 0x26u);
        }
      }

      else
      {
        v37 = [RBSDomainAttribute attributeWithDomain:@"com.apple.locationd" name:@"Location"];
        v11 = [[RBSAssertion alloc] initWithExplanation:@"locationd-resume-on-crash" target:+[RBSTarget targetWithPid:](RBSTarget attributes:{"targetWithPid:", objc_msgSend(v10, "pid")), +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v37, 1)}];
        *(v39 + 40) = v11;
        if (!v11)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v12 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v13 = [v8 UTF8String];
            *v29 = 68289538;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2082;
            v34 = v13;
            v35 = 2114;
            v36 = v28;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#warning Failed to resume: init failure, client:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", v29, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v14 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v15 = [v8 UTF8String];
            *v29 = 68289538;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2082;
            v34 = v15;
            v35 = 2114;
            v36 = v28;
            _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#warning Failed to resume: init failure", "{msg%{public}.0s:#warning Failed to resume: init failure, client:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", v29, 0x26u);
          }
        }

        if ([*(v39 + 40) acquireWithError:&v28])
        {
          v16 = *(v4 + 40);
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1007A5A60;
          v27[3] = &unk_10245AE50;
          v27[4] = v38;
          [v16 afterInterval:v27 async:10.0];
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v22 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v8 UTF8String];
            *v29 = 68289538;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2082;
            v34 = v23;
            v35 = 2114;
            v36 = v28;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Failed to resume: assertion not acquired, client:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", v29, 0x26u);
          }
        }
      }

      _Block_object_dispose(v38, 8);
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v21 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 68289026;
        *&v38[4] = 0;
        LOWORD(v39) = 2082;
        *(&v39 + 2) = "";
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Non-app client is/was a background client?}", v38, 0x12u);
      }
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v50[0]);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48[1]);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[1]);
    }

    if (SHIBYTE(v46[0]) < 0)
    {
      operator delete(v45[0]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1007A5A60(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) invalidate];

  *(*(*(a1 + 32) + 8) + 40) = 0;
}

void sub_1007A5AAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if ([*(v3 + 136) isKeyPathRegisteredSystemService:a2])
  {
    sub_10000EC00(__p, "");
    sub_100018918(v3, a2, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1007A5B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A5B34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  v4 = sub_10005C54C(a1, v3);
  v5 = *(a1 + 840);
  v6 = (a1 + 848);
  if (v5 != v6)
  {
    v7 = v4;
    do
    {
      if ([sub_1000344B0(v5[5] 0)])
      {
        sub_10005C6A4(v5[5], v7);
      }

      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }
}

NSDictionary *sub_1007A5BE0(uint64_t a1)
{
  v2 = *(a1 + 48);
  [(NSDate *)[(NSDictionary *)[+[NSFileManager attributesOfItemAtPath:0]error:"attributesOfItemAtPath:error:" fileModificationDate:&v8]] timeIntervalSinceReferenceDate];
  v4 = 0.0;
  if (v3 > 0.0)
  {
    v5 = v3;
    [*(v2 + 40) currentLatchedAbsoluteTimestamp];
    v4 = v6 - v5;
  }

  v9[0] = @"ClientKey";
  v10[0] = [*(a1 + 40) userlessClientKeyPath];
  v9[1] = @"KeepAsIs";
  v10[1] = [NSNumber numberWithBool:*(a1 + 76)];
  v9[2] = @"RepromptAge";
  v10[2] = [NSNumber numberWithDouble:v4];
  v9[3] = @"PriorCooling";
  v10[3] = [NSNumber numberWithInt:*(a1 + 56)];
  v9[4] = @"PriorThreshold";
  v10[4] = [NSNumber numberWithInt:*(a1 + 60)];
  v9[5] = @"NewCooling";
  v10[5] = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
  v9[6] = @"NewThreshold";
  v10[6] = [NSNumber numberWithInt:*(a1 + 68)];
  v9[7] = @"CurrentUsage";
  v10[7] = [NSNumber numberWithUnsignedInt:*(a1 + 72)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:8];
}

id sub_1007A5D78(uint64_t a1, void *a2)
{
  result = [a2 subIdentityType];
  if (result == 122)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void sub_1007A5DBC(uint64_t a1, const char *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "";
    if (a2)
    {
      v4 = a2;
    }

    *buf = 136446210;
    v11 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "open preferences with url, %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101934EF0();
  }

  v5 = [NSURL URLWithString:[NSString stringWithUTF8String:a2]];
  if (v5)
  {
    v6 = v5;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007A5FAC;
    block[3] = &unk_102447418;
    block[4] = v6;
    dispatch_async(global_queue, block);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v11 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Couldn't create Preferences URL, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101934FF0();
    }
  }
}

void sub_1007A5FAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "could not launch Preferences", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019350E0();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1007A6070(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = [a3 UTF8String];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes #pcHistorical - os_eligibility_change notification received, notification:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  sub_1007A1540(a1);
}

void sub_1007A6160(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v5 = *a3;
      LODWORD(__p[0]) = 67240192;
      HIDWORD(__p[0]) = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unknown notification: %{public}d", __p, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019351C4();
    }
  }

  else
  {
    sub_10000EC00(__p, "com.apple.locationd.darwin_notification");
    sub_100773AF4(a1, __p, 1);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1007A6274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007A6298(uint64_t result, uint64_t a2, _DWORD *a3, char *a4)
{
  if (*a3 == 8)
  {
    v4 = result;
    v5 = *a4;
    *(result + 1080) = *a4;
    if ((v5 & 1) == 0)
    {
      for (i = *(result + 1056); i != *(v4 + 1064); i += 32)
      {
        Current = CFAbsoluteTimeGetCurrent();
        result = sub_10079B3EC(i, v8, Current);
      }
    }
  }

  return result;
}

void sub_1007A62F8(uint64_t a1, uint64_t a2, _DWORD *a3, char *a4)
{
  if (*a3 == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a4;
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:wifi power state, power:%{public}d}", &v11, 0x18u);
    }

    v8 = *a4;
    *(a1 + 1081) = (*a4 & 1) == 0;
    if (v8)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:wifi enabled}", &v11, 0x12u);
      }

      for (i = *(a1 + 1056); i != *(a1 + 1064); i += 4)
      {
        if (!*i)
        {
          sub_10079B1A8(i);
          return;
        }
      }
    }
  }
}

void sub_1007A64A0(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v7 = sub_10001A3E8(a1, a2);
  if (sub_1000F4760(v7, v8))
  {
    v9 = *a3;
    if (*a3 == 2)
    {
      if (*a4 != 7)
      {
        sub_101935490();
      }

      v10 = 8;
    }

    else if (v9 == 1)
    {
      if (*a4 != 4)
      {
        sub_1019354BC();
      }

      v10 = 4;
    }

    else
    {
      if (v9)
      {
        goto LABEL_15;
      }

      if (*a4 != 3)
      {
        sub_1019354E8();
      }

      v10 = 2;
    }

    if (*(a4 + 4) == 1)
    {
      v11 = *(a1 + 448) | v10;
    }

    else
    {
      v11 = *(a1 + 448) & ~v10;
    }

    *(a1 + 448) = v11;
    v12 = *(a1 + 424);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1007A690C;
    v29[3] = &unk_102470558;
    v29[4] = (v11 >> 2) & 2 | v11;
    v29[5] = v10;
    [v12 updateVolatileData:v29 completion:0];
  }

LABEL_15:
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (*a3 || *a4 != 3)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v20 = *a3;
        v21 = *a4;
        v43 = 68289538;
        v44 = 2082;
        *v45 = "";
        *&v45[8] = 2050;
        *&v45[10] = v20;
        v46 = 2050;
        v47 = v21;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim unsupported system system service notification for entity, notification:%{public, location:CLStatusBarIconManager_Type::Notification}lld, entityClass:%{public, location:CLStatusBarIconManager_Type::EntityClass}lld}", &v43, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v22 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v23 = *a3;
        v24 = *a4;
        v43 = 68289538;
        v44 = 2082;
        *v45 = "";
        *&v45[8] = 2050;
        *&v45[10] = v23;
        v46 = 2050;
        v47 = v24;
        _os_signpost_emit_with_name_impl(dword_100000000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#sbim unsupported system system service notification for entity", "{msg%{public}.0s:#sbim unsupported system system service notification for entity, notification:%{public, location:CLStatusBarIconManager_Type::Notification}lld, entityClass:%{public, location:CLStatusBarIconManager_Type::EntityClass}lld}", &v43, 0x26u);
      }
    }

    else
    {
      v13 = *(a1 + 1086);
      v14 = *(a4 + 4);
      *(a1 + 1086) = v14;
      if (v13 != v14)
      {
        sub_1007AEAE8(&v43, a1 + 1512);
        memset(v27, 0, sizeof(v27));
        v28 = 1065353216;
        memset(v25, 0, sizeof(v25));
        v26 = 1065353216;
        v15 = *(a1 + 1528);
        v34 = 0;
        v35 = *&v45[6];
        v32 = 0;
        v33 = v15;
        v30 = v27;
        v31 = 0;
        sub_1007ABC28(&v35, &v34, &v33, &v32, &v30, &buf);
        v16 = *(a1 + 1528);
        v34 = 0;
        v35 = v16;
        v32 = 0;
        v33 = *&v45[6];
        v30 = v25;
        v31 = 0;
        sub_1007ABC28(&v35, &v34, &v33, &v32, &v30, &buf);
        sub_1007A695C(a1, v27);
        sub_1007A69E0(a1, v25);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(a1 + 1086);
          buf = 68289538;
          v37 = 2082;
          v38 = "";
          v39 = 1026;
          v40 = v13;
          v41 = 1026;
          v42 = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sbim system service switch state changed, from:%{public}hhd, to:%{public}hhd}", &buf, 0x1Eu);
        }

        sub_1003C94DC(v25);
        sub_1003C94DC(v27);
        sub_1003C94DC(&v43);
      }
    }
  }
}

void sub_1007A68E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  sub_1003C94DC(&a9);
  sub_1003C94DC(&a15);
  sub_1003C94DC((v15 - 112));
  _Unwind_Resume(a1);
}

id sub_1007A690C(uint64_t a1, void *a2, void *a3)
{
  [a2 setActiveDisplayModes:*(a1 + 32)];
  v5 = *(a1 + 40) == 2;

  return [a3 setUserInitiated:v5];
}

NSDictionary *sub_1007A695C(uint64_t a1, uint64_t a2)
{
  result = +[NSDictionary dictionary];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    do
    {
      v7 = v5 + 2;
      if (*(v5 + 39) < 0)
      {
        v7 = *v7;
      }

      result = [*(a1 + 1552) client:+[NSString stringWithUTF8String:](NSString didChangeUsageData:{"stringWithUTF8String:", v7), v6}];
      v5 = *v5;
    }

    while (v5);
  }

  return result;
}

id *sub_1007A69E0(id *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = (v2 + 2);
      if (*(v2 + 39) < 0)
      {
        v4 = v2[2];
      }

      result = [v3[194] client:+[NSString stringWithUTF8String:](NSString didChangeUsageData:{"stringWithUTF8String:", v4), sub_100792C78(v3, v2 + 2)}];
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_1007A6A64(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a4 + 113);
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:bluetooth power state, power:%{public}d}", &v11, 0x18u);
    }

    v8 = *(a4 + 113);
    *(a1 + 1082) = (v8 & 1) == 0;
    if (v8)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:bluetooth enabled}", &v11, 0x12u);
      }

      for (i = *(a1 + 1056); i != *(a1 + 1064); i += 4)
      {
        if (*i == 1)
        {
          sub_10079B1A8(i);
          return;
        }
      }
    }
  }
}

id sub_1007A6C10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007A6CF4;
  v7[3] = &unk_10246FC80;
  v7[4] = v4;
  result = [v5 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v7];
  if (*(a1 + 40) == 1)
  {
    result = [*(v4 + 136) isKeyPathRegisteredSystemService:a2];
    if (result)
    {
      result = [*(v4 + 136) intForKey:@"Authorization" atKeyPath:a2 defaultValue:0];
      if (result == 4)
      {
        return [*(v4 + 136) removeValueForKey:@"Authorization" atKeyPath:a2];
      }
    }
  }

  return result;
}

id sub_1007A6CF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1007A3888(v3, a2);

  return sub_1007A39BC(v3, a2);
}

id sub_1007A6DA8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  result = [*(v2 + 600) objectForKeyedSubscript:*(a1 + 40)];
  if (v3 == result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 68289282;
      *&buf[4] = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient releasing in use assertion, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (*(a1 + 64) == 1)
    {
      v7 = [objc_msgSend(*(a1 + 40) "legacyClientKey")];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = "";
      }

      sub_10000EC00(__p, v8);
      sub_100778DE4(v2, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      [*(v2 + 608) removeObjectForKey:*(a1 + 48)];
      sub_100778C94(v2, v9);
    }

    sub_10000EC00(buf, [*(a1 + 48) UTF8String]);
    sub_1007AEC28((v2 + 616), buf);
    if (SBYTE3(v19) < 0)
    {
      operator delete(*buf);
    }

    v11 = *(a1 + 40);
    v10 = (a1 + 40);
    [objc_msgSend(*(v2 + 600) objectForKeyedSubscript:{v11), "invalidate"}];
    v12 = (v2 + 600);

    return [*v12 setObject:0 forKeyedSubscript:*v10];
  }

  return result;
}

void sub_1007A6F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A6FA0(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state)
  {
    if (state == 2)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "coreanalytics activity run", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019355F0();
      }

      [*(a1 + 32) triggerAnalyticsCollect];
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "coreanalytics activity check-in", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101935514();
    }
  }
}

id sub_1007A70C8(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  v4 = [[CLInterval alloc] initWithStart:a2 end:a3];

  return [v3 addObject:v4];
}

id sub_1007A712C(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 count];
  v7 = [a3 count];
  v26[0] = @"ClientKey";
  v27[0] = [*(a1 + 32) clientKey];
  v26[1] = @"LocationCount";
  v27[1] = [NSNumber numberWithInt:v7 + v6];
  v27[2] = a2;
  v26[2] = @"Locations";
  v26[3] = @"Launches";
  v27[3] = a3;
  v22 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:[NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4] requiringSecureCoding:1 error:&v22];
  if (!v9 || v22)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 32);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v24 = 2114;
      v25 = v22;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not archive checkpoint data, Client:%{public, location:escape_only}@, Error:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v12 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v13 = *(a1 + 32);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v13;
      v24 = 2114;
      v25 = v22;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not archive checkpoint data", "{msg%{public}.0s:Could not archive checkpoint data, Client:%{public, location:escape_only}@, Error:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v9 = 0;
  }

  sub_100565518(0, &__p, v8);
  v14 = std::string::append(&__p, "locScoreInfoReport", 0x12uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v14->__r_.__value_.__l + 2);
  *buf = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (buf[23] >= 0)
  {
    v16 = buf;
  }

  else
  {
    v16 = *buf;
  }

  v17 = [NSString stringWithUTF8String:v16];
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (![(NSData *)v9 writeToFile:v17 options:805306369 error:&v22])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v19;
      v24 = 2114;
      v25 = v22;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Could not serialize reprompt checkpoint data, Client:%{public, location:escape_only}@, Error:%{public, location:escape_only}@}", buf, 0x26u);
    }
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  *(*(*(a1 + 40) + 8) + 40) = 0;
  return result;
}

void sub_1007A74C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007A7500(void *a1)
{
  if ([a1 objectForKeyedSubscript:@"Type"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 objectForKeyedSubscript:@"ServiceMaskOperator"])
      {
        if (![a1 objectForKeyedSubscript:@"ServiceMaskOperator"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v14 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"ServiceMaskOperator" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v15 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v16 = [@"ServiceMaskOperator" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v16;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
            v12 = v15;
            goto LABEL_29;
          }

          return result;
        }
      }

      v2 = [objc_msgSend(a1 objectForKeyedSubscript:{@"Type", "intValue"}];
      if (v2 == 2)
      {
        if (![a1 objectForKeyedSubscript:@"PhenolicLocation"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v21 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"PhenolicLocation" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v5 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v22 = [@"PhenolicLocation" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v22;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
            goto LABEL_28;
          }

          return result;
        }
      }

      else
      {
        v3 = v2;
        if (v2 != 1)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v17 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289282;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2050;
            v30 = v3;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:value-type validation of Info.plist zone received un-recongnised zone type, ZoneType:%{public, location:CLClientInterestZoneType}lld}", &v25, 0x1Cu);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v18 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v25 = 68289282;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2050;
            v30 = v3;
            v8 = "value-type validation of Info.plist zone received un-recongnised zone type";
            v9 = "{msg%{public}.0s:value-type validation of Info.plist zone received un-recongnised zone type, ZoneType:%{public, location:CLClientInterestZoneType}lld}";
            v12 = v18;
            v13 = 28;
            goto LABEL_30;
          }

          return result;
        }

        if (![a1 objectForKeyedSubscript:@"Latitude"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v19 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"Latitude" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v5 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v20 = [@"Latitude" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v20;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
            goto LABEL_28;
          }

          return result;
        }

        if (![a1 objectForKeyedSubscript:@"Longitude"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v23 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"Longitude" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v5 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v24 = [@"Longitude" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v24;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
            goto LABEL_28;
          }

          return result;
        }

        if (![a1 objectForKeyedSubscript:@"Radius"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v4 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"Radius" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v5 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v7 = [@"Radius" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v7;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
LABEL_28:
            v12 = v5;
LABEL_29:
            v13 = 38;
LABEL_30:
            _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, &v25, v13);
            return 0;
          }

          return result;
        }
      }

      return 1;
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v25 = 68289538;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = [@"Type" UTF8String];
    v31 = 2114;
    v32 = a1;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v5 = off_1025D47A8;
  result = os_signpost_enabled(off_1025D47A8);
  if (result)
  {
    v11 = [@"Type" UTF8String];
    v25 = 68289538;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = v11;
    v31 = 2114;
    v32 = a1;
    v8 = "invalid zone config";
    v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1007A7EA8(void *a1, void *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2114;
    v26 = a1;
    v27 = 2114;
    v28 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:check #pla zones are identical, Zone1:%{public, location:escape_only}@, Zone2:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v17 = sub_1007A80C4;
  v18 = &unk_1024705F8;
  v19 = a1;
  v20 = a2;
  v5 = [a1 objectForKeyedSubscript:{@"Type", _NSConcreteStackBlock, 3221225472}];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = @"ServiceMaskOperator" != @"Type";
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = &off_10254EF48;
  }

  v8 = [v20 objectForKeyedSubscript:@"Type"];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = @"ServiceMaskOperator" != @"Type";
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = &off_10254EF48;
  }

  v11 = [v7 isEqual:v10];
  v12 = v17(&v16, @"Latitude");
  v13 = v17(&v16, @"Longitude");
  v14 = v17(&v16, @"Radius");
  return v11 & v12 & v13 & v14 & v17(&v16, @"ServiceMaskOperator");
}

id sub_1007A80C4(uint64_t a1, __CFString *a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = @"ServiceMaskOperator" != a2;
  }

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = &off_10254EF48;
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:a2];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = @"ServiceMaskOperator" != a2;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = &off_10254EF48;
  }

  return [v6 isEqual:v9];
}

id sub_1007A8160(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  [*(v5 + 136) migrateDictionaryAtKeyPath:a2 toKeyPath:a3 forceMigrationOnAuthCollision:1];
  sub_10000EC00(__p, "ClientRemoved");
  sub_100777AC4(v5, a2, 1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return [*(v5 + 136) setInt:1 forKey:@"Provenance" atKeyPath:a3];
}

void sub_1007A81FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007A8220(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_10001A3E8(a1, a2);
  v8 = sub_10001CF04(v6, v7);
  v9 = [*(a1 + 136) intForKey:@"LocationIntelligenceCapabilities" atKeyPath:a2 defaultValue:0];
  v10 = [*(a1 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:a2 defaultValue:0];
  v11 = [*(a1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:a2 defaultValue:0];
  v12 = [*(a1 + 136) isKeyPathRegisteredSystemService:a2];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v13 = v12 | ((v9 & 2) >> 1);
  v14 = v12 | v9;
  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 376);
    v17 = *(a1 + 377);
    v18 = *(a1 + 392);
    v19 = *(a1 + 393);
    *buf = 68292098;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2114;
    v37 = a2;
    v38 = 1026;
    *v39 = a3;
    *&v39[4] = 1026;
    *&v39[6] = v8;
    v40 = 1026;
    v41 = v12;
    v42 = 1026;
    v43 = v10;
    v44 = 1026;
    v45 = v11;
    v46 = 1026;
    v47 = v16;
    v48 = 1026;
    v49 = v17;
    v50 = 1026;
    v51 = v18;
    v52 = 1026;
    v53 = v19;
    v54 = 1026;
    v55 = v14 & 1;
    v56 = 1026;
    v57 = v13;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Check locationIntelligence, Client:%{public, location:escape_only}@, type:%{public}d, isIphone:%{public}hhd, isSystemService:%{public}hhd, LearnedRoutesAccess:%{public}d, VisitHistoryAccess:%{public}d, fAtLeastOneLearnedRouteAvailable:%{public}hhd, fAtLeastThreeUniqueVisitsAvailable:%{public}hhd, LearnedRoutesOSEligibility:%{public}hhd, VisitHistoryOSEligibility:%{public}hhd, entitledForRoutes:%{public}hhd, entitledForVisitHistory:%{public}hhd}", buf, 0x5Eu);
  }

  if (!v8)
  {
    goto LABEL_28;
  }

  if (a3 == 2)
  {
    if (v11 - 4 > 0xFFFFFFFD)
    {
      v26 = 1;
    }

    else
    {
      v26 = *(a1 + 377);
    }

    v27 = sub_1007A8604();
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v28 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2114;
      v37 = a2;
      v38 = 1026;
      *v39 = v27;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Check locationIntelligence #pcHistorical, Client:%{public, location:escape_only}@, isTimeCorrect:%{public}hhd}", buf, 0x22u);
    }

    if ((v13 & v26) == 1)
    {
      v29 = v27 & *(a1 + 393);
      return v29 & 1;
    }

LABEL_28:
    v29 = 0;
    return v29 & 1;
  }

  if (a3 != 1)
  {
    goto LABEL_28;
  }

  if ((v10 & 0xFFFFFFFE) == 2)
  {
    v20 = 1;
  }

  else
  {
    v20 = v12;
  }

  if (v20)
  {
    goto LABEL_18;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v23 = sub_1000206B4(v21, v22);
  if (sub_1000B9370(v23, "LearnedRoutesTrackingStartTime", &Current))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v24 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2114;
      v37 = a2;
      v38 = 2050;
      *v39 = Current;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes TrackingStartTime exists, Client:%{public, location:escape_only}@, savedStartTime:%{public}f}", buf, 0x26u);
    }
  }

  if (*(a1 + 376))
  {
LABEL_18:
    v25 = 0;
  }

  else
  {
    v25 = CFAbsoluteTimeGetCurrent() - Current <= 3888000.0;
  }

  v29 = 0;
  if ((v14 & 1) != 0 && !v25)
  {
    v29 = *(a1 + 392);
  }

  return v29 & 1;
}

uint64_t sub_1007A8604()
{
  if (TMIsAutomaticTimeEnabled())
  {
    return 1;
  }

  v1 = TMGetReferenceTime();
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290050;
    *&v4[4] = 2082;
    *v4 = 0;
    *&v4[6] = "";
    v5 = 2050;
    v6 = 0;
    v7 = 2050;
    v8 = 0;
    v9 = 1026;
    v10 = 0;
    v11 = 1026;
    v12 = v1 != 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical ReferenceTime Alignment, referenceTime:%{public}f, uncertainty:%{public}f, reliability:%{public}d, isReferenceTimeReceived:%{public}hhd}", buf, 0x32u);
  }

  return 0;
}

void sub_1007A8814(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1000184F4(a1, a2);
  v23 = v5;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    objc_msgSend_cppClientKey(v5);
  }

  else
  {
    *buf = 0;
    *v25 = 0;
    *&v25[8] = 0;
  }

  v16 = buf;
  v6 = sub_10005AD2C((a1 + 1000), buf, &unk_101C66300, &v16);
  if ((v25[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = &v22;
  v7 = sub_10005AFCC(v6 + 10, &v22, &unk_101C66300, buf);
  v8 = v7[4];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0 || (v10 = v7[3]) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *v25 = 2082;
      *&v25[2] = "";
      *&v25[10] = 2082;
      *&v25[12] = "18CLPushSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      v26 = 2114;
      v27 = v23;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating persistent subscription due to demand, type:%{public, location:escape_only}s, clientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v21 = sub_100018FC8(a1, v23, &xmmword_101CE6CD8);
    if (v23)
    {
      objc_msgSend_cppClientKey(v23);
    }

    else
    {
      v19 = 0uLL;
      v20 = 0;
    }

    sub_100E24D0C(__p);
    sub_1000603E0(buf, &v19, __p, v22);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    sub_1007AEC84();
  }

  if (!v11)
  {
    *a3 = 0;
    a3[1] = 0;
    if (qword_1025D47A0 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "result";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager.h", 383, "getOrCreatePersistentSubscriptionForClient");
      __break(1u);
LABEL_33:
      sub_10192D4D0();
    }
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v11;
  a3[1] = v9;
  sub_100008080(v9);
}

void sub_1007A8D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100008080(v29);
  if (*(v28 + 8))
  {
    sub_100008080(*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

id sub_1007A8E24(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (([v4 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = a2;
    v8 = "{msg%{public}.0s:#VisitHistoryAccess NotRelevant - invalid ckp, Client:%{public, location:escape_only}@}";
    v9 = v7;
    goto LABEL_15;
  }

  if ((sub_1007A8220(a1, v4, 2) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v4;
    v8 = "{msg%{public}.0s:#VisitHistoryAccess NotRelevant - locIntl NotSupported, Client:%{public, location:escape_only}@}";
    v9 = v10;
LABEL_15:
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x1Cu);
    return 0;
  }

  v5 = [*(a1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:v4 defaultValue:0];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v4;
    v18 = 1026;
    v19 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#VisitHistoryAccess, Client:%{public, location:escape_only}@, Value:%{public}d}", &v12, 0x22u);
  }

  return v5;
}

id sub_1007A906C(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (([v4 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = a2;
    v8 = "{msg%{public}.0s:#LearnedRoutesAccess NotRelevant - invalid ckp, Client:%{public, location:escape_only}@}";
    v9 = v7;
    goto LABEL_15;
  }

  if ((sub_1007A8220(a1, v4, 1) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v4;
    v8 = "{msg%{public}.0s:#LearnedRoutesAccess NotRelevant - locIntl NotSupported, Client:%{public, location:escape_only}@}";
    v9 = v10;
LABEL_15:
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x1Cu);
    return 0;
  }

  v5 = [*(a1 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:v4 defaultValue:0];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v4;
    v18 = 1026;
    v19 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutesAccess, Client:%{public, location:escape_only}@, Value:%{public}d}", &v12, 0x22u);
  }

  return v5;
}

void sub_1007A92D0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = [a2 count];
    v12 = 2082;
    v13 = [objc_msgSend(a3 "description")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes min-criteria fetchLearnedRoutes handler, count:%{public}d, error:%{public, location:escape_only}s}", v7, 0x22u);
  }

  if (a3)
  {
    *(v5 + 384) = 0;
  }

  else if ([a2 count])
  {
    *(v5 + 376) = 1;
  }
}

void sub_1007A9400(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289538;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    *v19 = [objc_msgSend(a3 "description")];
    *&v19[8] = 1026;
    v20 = [a2 count];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical min-criteria visits reply-handler, Error:%{public, location:escape_only}s, visits:%{public}d}", &buf, 0x22u);
  }

  if (a3)
  {
    *(v5 + 384) = 0;
  }

  else
  {
    v7 = objc_alloc_init(NSMutableSet);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, 0);
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(a2);
          }

          [v7 addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(objc_msgSend(*(8 * i), "placeInference"), "mapItem"), "muid"))}];
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      }

      while (v9);
    }

    *(v5 + 377) = [v7 count] > 2;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 count];
      v14 = *(v5 + 377);
      buf = 68289538;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      *v19 = v13;
      *&v19[4] = 1026;
      *&v19[6] = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical min-criteria visits reply-handler, uniqueVisits:%{public}d, fAtLeastThreeUniqueVisitsAvailable:%{public}hhd}", &buf, 0x1Eu);
    }
  }
}

void sub_1007A9694(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(v3 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:a2 defaultValue:0];
  if (v4 == 3)
  {
    [*(v3 + 136) setInt:1 forKey:@"LearnedRoutesAccess" atKeyPath:a2];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289282;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes deleted Allowed access Routine(Off), Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }
  }

  if ([*(v3 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:a2 defaultValue:0] == 3)
  {
    [*(v3 + 136) setInt:1 forKey:@"VisitHistoryAccess" atKeyPath:a2];
    [*(v3 + 136) removeValueForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:a2];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289282;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical deleted Allowed access Routine(Off), Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }
  }

  else if (v4 != 3)
  {
    return;
  }

  [*(v3 + 136) persist];
  sub_10000EC00(&__p, "");
  sub_100018918(v3, a2, &__p);
  if (SBYTE3(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_1007A98D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A99BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1007A9AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1007A9AE8(_BYTE *result, void *a2)
{
  v9 = a2;
  if ((result[108] & 1) == 0)
  {
    v4 = *(result + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 80);
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_101933650();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = result + 8;
        if (result[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019357CC(result, a2);
      }
    }
  }
}

uint64_t sub_1007A9C8C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_1007AEF2C(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1007A9E18(uint64_t a1)
{
  if ((atomic_load_explicit(byte_1025D85F0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_1019358E0();
    a1 = v3;
  }

  v1 = *(*a1 + 96);

  return v1();
}

uint64_t sub_1007A9E9C(char *a1, int a2, int *a3, const std::string *a4)
{
  v31 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v30 = v10;
      v13 = *a3;
      v16 = *(v10 + 6);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 7) >= v13)
        {
          v17 = v14;
        }

        v14 = *&v14[8 * (*(v14 + 7) < v13)];
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 7))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 8);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 8) >= v13)
        {
          v19 = v18;
        }

        v18 = *&v18[8 * (*(v18 + 8) < v13)];
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 8))
      {
        v29 = v19;
        v26 = *(v19 + 7);
        *buf = &v31;
        v27 = sub_100036120((v19 + 40), &v31, &unk_101C66300, buf);
        std::string::operator=((v27 + 5), a4);
        *__p = 0u;
        memset(v36, 0, sizeof(v36));
        v33 = 0u;
        *v34 = 0u;
        memset(buf, 0, sizeof(buf));
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        memset(v40, 0, 27);
        v41 = 0;
        v42 = 0;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1007AF190(buf);
        }

        if (SHIBYTE(v40[2]) < 0)
        {
          operator delete(v40[0]);
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(*(&v38 + 1));
        }

        if (SBYTE7(v38) < 0)
        {
          operator delete(v37);
        }

        if ((v36[15] & 0x80000000) != 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v34[0]);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(*&buf[24]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = (a1 + 56);
        v29 = a1 + 64;
        v21 = byte_1025D85F8;
        v28 = v13;
        *buf = &v28;
        *(sub_1001830A0((a1 + 56), &v28, &unk_101C66300, buf) + 80) = v21;
        v28 = *a3;
        *buf = &v28;
        v22 = sub_1001830A0((a1 + 56), &v28, &unk_101C66300, buf);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v28 = *a3;
        *buf = &v28;
        v24 = sub_1001830A0(v20, &v28, &unk_101C66300, buf);
        *buf = &v31;
        v25 = sub_100036120((v24 + 5), &v31, &unk_101C66300, buf);
        std::string::operator=((v25 + 5), a4);
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410((v30 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101935948(a1);
    return 0;
  }

  return result;
}

void sub_1007AA2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_1007AA31C(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_101933650();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_101935A68(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007AA4B0(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_1001134E4((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_101933664();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101933664();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLClientManager_Type::Notification, CLClientManager_Type::NotificationData, char, CLClientManager_Type::RegInfo>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLClientManager_Type::Notification, NotificationData_T = CLClientManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLClientManager_Type::RegInfo]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_1007AA854(uint64_t a1, int *a2, std::string *this)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v3;
  do
  {
    if (*(v4 + 32) >= v7)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v7));
  }

  while (v4);
  if (v8 == v3)
  {
    return 0;
  }

  if (v7 < *(v8 + 32))
  {
    return 0;
  }

  v9 = *(v8 + 64);
  if (!v9)
  {
    return 0;
  }

  std::string::operator=(this, *(v8 + 64));
  std::string::operator=(this + 1, (v9 + 24));
  std::string::operator=(this + 2, (v9 + 48));
  std::string::operator=(this + 3, (v9 + 72));
  v10 = *(v9 + 98);
  LOWORD(this[4].__r_.__value_.__l.__data_) = *(v9 + 96);
  this[4].__r_.__value_.__s.__data_[2] = v10;
  std::string::operator=((this + 104), (v9 + 104));
  std::string::operator=((this + 128), (v9 + 128));
  std::string::operator=((this + 152), (v9 + 152));
  v11 = *(v9 + 176);
  this[7].__r_.__value_.__s.__data_[10] = *(v9 + 178);
  LOWORD(this[7].__r_.__value_.__r.__words[1]) = v11;
  this[7].__r_.__value_.__r.__words[2] = *(v9 + 184);
  return 1;
}

void sub_1007AA9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AA9F8(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_101933650();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101935C90(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_101933650();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101935B7C(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_101933664();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_101933664();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLClientManager_Type::Notification, CLClientManager_Type::NotificationData, char, CLClientManager_Type::RegInfo>::listClients() [Notification_T = CLClientManager_Type::Notification, NotificationData_T = CLClientManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLClientManager_Type::RegInfo]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
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
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
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
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_1007AADBC(uint64_t a1)
{
  sub_1007AE6CC(a1);

  operator delete();
}

id sub_1007AAEB4(uint64_t a1)
{
  result = [*(a1 + 32) proxyForService:@"CLClientManager"];
  qword_102659F80 = result;
  return result;
}

uint64_t sub_1007AAEE4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  sub_1007AAF48(a1, a2);
  return a1;
}

void sub_1007AAF2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AAF48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:0];
    sub_10023DC84(a1);
  }

  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  LOBYTE(v4) = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  v9 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v9;
  v10 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v10;
  v11 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  *&v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  return a1;
}

_OWORD *sub_1007AB040(_OWORD *a1, void *a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  v4 = [a2 intForKey:@"Authorization" defaultValue:0];
  v5 = [a2 intForKey:@"IncidentalUseMode" defaultValue:0];
  v6 = [a2 BOOLForKey:@"AuthorizationUpgradeAvailable" defaultValue:1];
  v7 = [a2 intForKey:@"CorrectiveCompensationEnabled" defaultValue:0];
  v8 = [a2 intForKey:@"VisitHistoryAccess" defaultValue:0];
  v9 = [a2 intForKey:@"LearnedRoutesAccess" defaultValue:0];
  [a2 intForKey:@"SupportedAuthorizationMask" defaultValue:0];
  sub_1007AB17C(v12, v4, v5, v6, v7, v8, v9);
  v10 = v12[1];
  *a1 = v12[0];
  a1[1] = v10;
  return a1;
}

uint64_t sub_1007AB17C(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  *result = 0;
  v7 = 1;
  if (a2 != 4 && a2 != 2)
  {
    if (a2 == 1)
    {
      v8 = -1;
      if (a3 == 2)
      {
        v9 = -1;
      }

      else
      {
        v9 = 0;
      }

      if (a3 == 3)
      {
        v9 = 1;
      }

      *result = -1;
      *(result + 4) = v9;
      goto LABEL_19;
    }

    v7 = 0;
  }

  if (a3 == 2)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (a3 == 3)
  {
    v10 = 1;
  }

  *result = v7;
  *(result + 4) = v10;
  v11 = a4 - 1;
  if (a2 == 4)
  {
    v11 = 1;
  }

  v8 = v11;
LABEL_19:
  v12 = a5 == 1;
  if (a5 == 2)
  {
    v12 = -1;
  }

  *(result + 8) = v8;
  *(result + 12) = v12;
  if (a6 == 2)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  if (a6 == 3)
  {
    v13 = 1;
  }

  if (a7 == 2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if (a7 == 3)
  {
    v14 = 1;
  }

  *(result + 16) = v13;
  *(result + 20) = v14;
  *(result + 24) = 0;
  return result;
}

_DWORD *sub_1007AB22C(_DWORD *result, _DWORD *a2)
{
  if (*result != *a2)
  {
    *result += *a2;
  }

  v2 = result[1];
  v3 = a2[1];
  if (v2 != v3)
  {
    result[1] = v3 + v2;
  }

  v4 = result[2];
  v5 = a2[2];
  if (v4 != v5)
  {
    result[2] = v5 + v4;
  }

  v6 = result[3];
  v7 = a2[3];
  if (v6 != v7)
  {
    result[3] = v7 + v6;
  }

  v8 = result[4];
  v9 = a2[4];
  if (v8 != v9)
  {
    result[4] = v9 + v8;
  }

  v10 = result[5];
  v11 = a2[5];
  if (v10 != v11)
  {
    result[5] = v11 + v10;
  }

  v12 = result[6];
  v13 = a2[6];
  if (v12 != v13)
  {
    result[6] = v13 + v12;
  }

  v14 = result[7];
  v15 = a2[7];
  if (v14 != v15)
  {
    result[7] = v15 + v14;
  }

  return result;
}

uint64_t sub_1007AB32C(__int128 **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (a1[1] - *a1) >> 5;
  v7 = v6 + 1;
  if ((v6 + 1) >> 59)
  {
    sub_10028C64C();
  }

  v10 = a1[2] - *a1;
  if (v10 >> 4 > v7)
  {
    v7 = v10 >> 4;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFE0)
  {
    v11 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v7;
  }

  v23 = a1;
  if (v11)
  {
    sub_1007AB434(a1, v11);
  }

  v12 = (32 * v6);
  v20 = 0;
  v21 = v12;
  *(&v22 + 1) = 0;
  v13 = a2[1];
  *v12 = *a2;
  v12[1] = v13;
  *&v22 = 32 * v6 + 32;
  v14 = a1[1];
  v15 = (32 * v6 + *a1 - v14);
  sub_1007AB47C(a1, *a1, v14, v15, a5, a6);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_1007AB5C0(&v20);
  return v19;
}

void sub_1007AB420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007AB5C0(va);
  _Unwind_Resume(a1);
}

void sub_1007AB434(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1007AB47C(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v6 += 2;
      *a4 = v7;
      a4[1] = v8;
      a4 += 2;
    }

    while (v6 != a3);
    v13 = a4;
  }

  v11 = 1;
  sub_1007AB500(a1, a2, a3);
  return sub_1007AB544(v10);
}

void sub_1007AB500(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      sub_10079B1A8(v4);
      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t sub_1007AB544(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007AB57C(a1);
  }

  return a1;
}

void sub_1007AB57C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    sub_10079B1A8(v1);
  }
}

uint64_t sub_1007AB5C0(uint64_t a1)
{
  sub_1007AB5F8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007AB5F8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(a1 + 16) = v4 - 32;
    sub_10079B1A8((v4 - 32));
  }
}

void sub_1007AB64C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007AB9A0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007AB6A0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10014588C(v4 - 80);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1007AB724(void *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_10028C64C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1007AB854(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  sub_10001BB2C((80 * v2), a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = (80 * v2 + *a1 - v7);
  sub_1007AB8AC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1007AB950(&v13);
  return v12;
}

void sub_1007AB840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007AB950(va);
  _Unwind_Resume(a1);
}

void sub_1007AB854(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1007AB8AC(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_10001BB2C(a4, v8);
      v8 += 5;
      a4 += 5;
      v7 -= 80;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_10014588C(v6);
      v6 += 80;
    }
  }

  return result;
}

void sub_1007AB92C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 80;
    do
    {
      v4 = sub_10014588C(v4) - 80;
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AB950(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_10014588C(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007AB9A0(uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; sub_10079B1A8(i))
  {
    i -= 4;
  }

  *(a1 + 8) = a2;
}

void sub_1007AB9F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 272);
  if (v4 && *(v4 + 48) == *(a1 + 32))
  {
    sub_1007807A8(a2, *(a1 + 40));
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40) & 3;
      v7 = *(a2 + 272);
      v8 = v7 != 0;
      v9 = *(a1 + 32);
      if (v7)
      {
        v7 = *(v7 + 48);
      }

      *buf = 68290050;
      v15 = 2082;
      v14 = 0;
      v16 = "";
      v17 = 1026;
      v18 = v6;
      v19 = 1026;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt #Thunk CFUserNotification, ResponseFlag:%{public}d, HasInflightAuthPromptRequest:%{public}hhd, ThunkCFUN:%{public, location:escape_only}@, InflightCFUN:%{public, location:escape_only}@}", buf, 0x32u);
    }

    if ((~*(a1 + 40) & 3) != 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "#AuthPrompt #Thunk InflightAuthPromptRequest has unexpected state", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101935D94();
      }
    }
  }

  v11 = sub_100107858();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007ABC18;
  block[3] = &unk_102449A78;
  block[4] = *(a1 + 32);
  CFRunLoopPerformBlock(v11, kCFRunLoopCommonModes, block);
}

uint64_t sub_1007ABC28@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, char **a3@<X2>, char **a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *result;
  v9 = *a2;
  if (*result == *a2)
  {
LABEL_15:
    v17 = *a5;
    v9 = v8;
  }

  else
  {
    v12 = *a3;
    if (*a3 != *a4)
    {
      v14 = result;
      while ((sub_100019438((v8 + 16), v12 + 16) & 0x80) == 0)
      {
        result = sub_100019438(*a3 + 2, (*v14 + 16));
        v15 = a3;
        if ((result & 0x80) == 0)
        {
          result = *v14;
          v16 = v14;
          v15 = a3;
LABEL_8:
          *v16 = *result;
        }

        *v15 = **v15;
        v8 = *v14;
        v9 = *a2;
        if (*v14 == *a2)
        {
          goto LABEL_15;
        }

        v12 = *a3;
        if (*a3 == *a4)
        {
          goto LABEL_11;
        }
      }

      result = sub_1003C9040(*a5, (*v14 + 16), *v14 + 16);
      a5[1] = result;
      v16 = a5 + 1;
      v15 = v14;
      goto LABEL_8;
    }

LABEL_11:
    v17 = *a5;
    if (v8 != v9)
    {
      v19 = *a5;
      v18 = *a5;
      do
      {
        result = sub_1003C9040(v18, (v8 + 16), v8 + 16);
        v8 = *v8;
      }

      while (v8 != v9);
      *&v17 = v19;
      *(&v17 + 1) = *result;
    }
  }

  *a6 = v9;
  *(a6 + 8) = v17;
  return result;
}