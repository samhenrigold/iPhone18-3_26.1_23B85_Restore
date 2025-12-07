void sub_100783A80(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007AAEB4;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102659F78 != -1)
  {
    dispatch_once(&qword_102659F78, block);
  }
}

void sub_100783B08(uint64_t a1, uint64_t a2)
{
  v3 = sub_100033370(a1, a2);

  sub_1000F7D18(a1, v3, 1);
}

const __CFString *sub_100783B48(uint64_t a1, void *a2, void *a3)
{
  sub_10001A3E8(a1, a2);
  v6 = sub_10001CF3C();
  if (!a3 || !v6)
  {
    goto LABEL_5;
  }

  sub_10000EC00(&__p, [a3 UTF8String]);
  v8 = sub_10106229C(&__p, v7);
  v10 = v8;
  if (SBYTE3(v33) < 0)
  {
    operator delete(__p);
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_5:
    v11 = [*(a1 + 136) stringForKey:@"PlatformSpecificBundleId" atKeyPath:a2 defaultValue:0];
    if (!v11)
    {
      v11 = [a2 bundleId];
    }

LABEL_11:
    v17 = +[NSMutableArray array];
    v19 = sub_100056238(v17, v18);
    v20 = sub_1007CB450(v19);
    if (v20)
    {
      [v17 addObject:v20];
    }

    if (v11)
    {
      v28 = 0;
      v21 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v11 allowPlaceholder:0 error:&v28];
      if (v28)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v22 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          v23 = [v11 UTF8String];
          __p = 68289538;
          v30 = 2082;
          v31 = "";
          v32 = 2082;
          v33 = v23;
          v34 = 2114;
          v35 = v28;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Could not get LSApplicationRecord from cfDisplayIdentifier, cfDisplayIdentifier:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", &__p, 0x26u);
        }
      }

      if (v21)
      {
        v24 = [v21 localizedNameWithPreferredLocalizations:v17];
        v16 = v24;
        if (v24)
        {
          CFRetain(v24);
LABEL_26:

          return v16;
        }
      }

      v25 = sub_1000E9840(v11);
      v26 = sub_1007A2BA8(v25);
    }

    else
    {
      if (![a2 bundlePath])
      {
        v16 = 0;
        goto LABEL_26;
      }

      v26 = sub_1007A2BA8([a2 bundlePath]);
    }

    v16 = v26;
    goto LABEL_26;
  }

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = sub_101061E48(a3, v9);
  v14 = v12;
  if (!v12)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v15 = sub_100056238(v12, v13);
  v16 = sub_100055A24(v15, v14, _kCFBundleDisplayNameKey, 0);
  CFRelease(v14);
  return v16;
}

void sub_100783DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_100783DEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  errorPtr = 0;
  v4 = sub_1007841C0(a1, v3);
  if (!v4)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192F910();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:copyCombinedClientPurpose couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_10192DAA4();
      }
    }

    v6 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289282;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = v3;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "copyCombinedClientPurpose couldn't get bundle for client", "{msg%{public}.0s:copyCombinedClientPurpose couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  v7 = sub_100784288(a1, v3, v4, 0, 1, 0);
  if (v7)
  {
    v8 = v7;
    goto LABEL_11;
  }

  v8 = sub_100784288(a1, v3, v4, 0, 0, 0);
  if (!v8)
  {
LABEL_11:
    v9 = 0;
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = sub_100784288(a1, v3, v4, 1, 0, 0);
  v17 = sub_100056238(v15, v16);
  if (v15)
  {
    v9 = sub_1007CB2E4(v17, @"LOCATION_CLIENT_PERMISSION_MESSAGE");
    v18 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@ %@", v9, &errorPtr, v8, v15);
  }

  else
  {
    v9 = sub_1007CB2E4(v17, @"LOCATION_CLIENT_PERMISSION_MESSAGE_REDUCED");
    v18 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v9, &errorPtr, v8);
  }

  v8 = v18;
  if (v4)
  {
LABEL_12:
    CFRelease(v4);
  }

LABEL_13:
  if (v9)
  {
    CFRelease(v9);
  }

  if (errorPtr)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v11 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = v3;
      v26 = 2082;
      v27 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Error, couldn't copyCombinedClientPurpose for client due to error returned by CFStringCreateStringWithValidatedFormat., client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v12 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v13 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = v3;
      v26 = 2082;
      v27 = v13;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Error, couldn't copyCombinedClientPurpose for client due to error returned by CFStringCreateStringWithValidatedFormat.", "{msg%{public}.0s:#Error, couldn't copyCombinedClientPurpose for client due to error returned by CFStringCreateStringWithValidatedFormat., client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
    }
  }

  return v8;
}

id sub_1007841C0(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (result)
  {
    v4 = result;
    v5 = [*(a1 + 136) stringForKey:@"BundleId" atKeyPath:result defaultValue:0];
    v6 = [*(a1 + 136) stringForKey:@"PlatformSpecificBundleId" atKeyPath:v4 defaultValue:0];
    v7 = [*(a1 + 136) stringForKey:@"BundlePath" atKeyPath:v4 defaultValue:0];

    return sub_101062B3C(v6, v5, v7, 0);
  }

  return result;
}

__CFString *sub_100784288(uint64_t a1, void *a2, __CFBundle *a3, void *a4, int a5, __CFString *a6)
{
  if (!a3)
  {
    return 0;
  }

  if (a4 >= 2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543618;
      v27 = a2;
      v28 = 1026;
      LODWORD(v29) = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Requesting client (%{public}@) purpose for unsupported registration type %{public}d", &v26, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930358(a2, a4);
    }

    return 0;
  }

  if (a5)
  {
    v12 = sub_100056238(a1, a2);
    v13 = &off_102459FA8;
LABEL_12:
    v14 = sub_100055A24(v12, a3, *v13, 0);
    goto LABEL_16;
  }

  if (!a4)
  {
    v24 = sub_100056238(a1, a2);
    v9 = sub_100055A24(v24, a3, @"NSLocationAlwaysUsageDescription", 0);
    if (v9)
    {
      goto LABEL_17;
    }

    v12 = sub_100056238(0, v25);
    v13 = &off_102459F90;
    goto LABEL_12;
  }

  v16 = [(__CFString *)a6 length];
  v12 = sub_100056238(v16, v17);
  if (!v16)
  {
    v13 = &off_102459FA0;
    goto LABEL_12;
  }

  v14 = sub_1007CADA0(v12, a3, @"NSLocationAuthorizationPurposeDescriptionDictionary", a6, 0);
LABEL_16:
  v9 = v14;
  if (v14)
  {
LABEL_17:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v26 = 138412546;
      v27 = a2;
      v28 = 2080;
      v29 = [(__CFString *)v9 UTF8String];
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "purpose string from %@'s bundle: '%s'", &v26, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930138(a2, v9);
    }

    return v9;
  }

  v20 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v20 isValidCKP])
  {
    return 0;
  }

  v21 = [*(a1 + 136) stringForKey:@"Purpose" atKeyPath:v20 defaultValue:0];
  v9 = 0;
  if (a4 != 1)
  {
    v22 = v21;
    if (v21)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v26 = 138412546;
        v27 = v20;
        v28 = 2080;
        v29 = [v22 UTF8String];
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "purpose string from %@'s property: '%s'", &v26, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101930248(v20, v22);
      }

      CFRetain(v22);
      return v22;
    }
  }

  return v9;
}

uint64_t sub_1007845CC(uint64_t a1, uint64_t a2, unsigned int *a3, NSDictionary *a4)
{
  v8 = *a3;
  v9 = sub_1000344B0(a2, 0);
  v10 = (*(*a2 + 96))(a2);
  v11 = sub_100019AB0(a1, v9);
  v12 = [-[NSArray objectAtIndexedSubscript:](v11 objectAtIndexedSubscript:{0), "intValue"}];
  v13 = [-[NSArray objectAtIndexedSubscript:](v11 objectAtIndexedSubscript:{1), "intValue"}];
  v14 = sub_100B20814(a2);
  if (v12 == 2 && (sub_100B2080C(a2) & v14 & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v22 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v48 = 2082;
      *&v48[2] = "";
      *&v48[10] = 2114;
      *&v48[12] = v9;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Not showing prompt because the client asked us not to, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    goto LABEL_24;
  }

  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v48 = 2082;
      *&v48[2] = "";
      *&v48[10] = 2114;
      *&v48[12] = v9;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt location services settings are frozen by restrictions - denying, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10023D820(a3, @"Restrictions are enabled.  Changing authorization isn't allowed");
    v12 = 2;
    if (v13 <= 8 && ((1 << v13) & 0x103) != 0)
    {
      return v13;
    }

    return v12;
  }

  v16 = [*(a1 + 120) locationServicesEnabledStatus];
  if (v16)
  {
    if (v12 > 4 || v12 == 3)
    {
      return v12;
    }

    if (*(a1 + 272))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v18 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = +[CLClientKeyPath nullClientKeyPath];
        v20 = *(a1 + 272);
        if (v20)
        {
          v19 = *(v20 + 1);
          v21 = *v20;
        }

        else
        {
          v21 = 5;
        }

        *buf = 68290050;
        *v48 = 2082;
        *&buf[4] = 0;
        *&v48[2] = "";
        *&v48[10] = 2114;
        *&v48[12] = v9;
        *&v48[20] = 2050;
        *&v48[22] = v8;
        *&v48[30] = 2114;
        v49 = v19;
        v50 = 2050;
        v51 = v21;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring request because authorization in progress, Client:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inflightClientKey:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x3Au);
      }

      sub_10023D820(a3, @"App is already presenting the user with an authorization prompt");
      return v12;
    }

    if ([*(a1 + 120) locationServicesEnabledStatus] != 1)
    {
      return v12;
    }

    if (v8 <= 0xB)
    {
      if (((1 << v8) & 0xB9E) != 0)
      {
        if (sub_100B311DC(a2))
        {
          sub_100B1FA00(a2);
          v24 = sub_1000539F8(buf);
          v25 = sub_101061D8C([(CLClientKeyPath *)v24 bundleId]);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v26 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289794;
            *&buf[4] = 0;
            *v48 = 2082;
            *&v48[2] = "";
            *&v48[10] = 2114;
            *&v48[12] = v24;
            *&v48[20] = 2114;
            *&v48[22] = v9;
            *&v48[30] = 1026;
            LODWORD(v49) = v25;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt check if #webClip, NaturalIdentity:%{public, location:escape_only}@, Client:%{public, location:escape_only}@, isWebClip:%{public}hhd}", buf, 0x2Cu);
          }

          if (v25)
          {
            v45 = @"IsWebClip";
            v46 = [NSNumber numberWithBool:1];
            a4 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          }
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v27 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          *&buf[4] = 0;
          *v48 = 2082;
          *&v48[2] = "";
          *&v48[10] = 1026;
          *&v48[12] = v8;
          *&v48[16] = 2114;
          *&v48[18] = v9;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Showing #AuthPrompt, requestType:%{public}d, Client:%{public, location:escape_only}@}", buf, 0x22u);
        }

        sub_1007AAEE4(v43, a3);
        v28 = sub_1007755CC(a1, v9, v10, v43, a4);
        sub_10023DF30(v43);
        if (v28)
        {
          goto LABEL_77;
        }

        return v12;
      }

      if (v8 == 5)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v40 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          return v12;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *v48 = 2082;
        *&v48[2] = "";
        *&v48[10] = 2114;
        *&v48[12] = v9;
        v41 = "{msg%{public}.0s:#AuthPrompt #Notice ERROR: Client is depending on legacy on-demand authorization, which is not supported for new apps, Client:%{public, location:escape_only}@}";
LABEL_98:
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0x1Cu);
        return v12;
      }

      if (v8 == 10)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v40 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          return v12;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *v48 = 2082;
        *&v48[2] = "";
        *&v48[10] = 2114;
        *&v48[12] = v9;
        v41 = "{msg%{public}.0s:#AuthPrompt Client requested a big switch prompt, but the big switch is already on, Client:%{public, location:escape_only}@}";
        goto LABEL_98;
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v42 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_FAULT, "#AuthPrompt Unrecognized/invalid request type: %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101930460();
    }

    return v12;
  }

  if (sub_1000F42C0(v16, v17))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v23 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v48 = 2082;
      *&v48[2] = "";
      *&v48[10] = 2114;
      *&v48[12] = v9;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Not showing big switch re-enable prompt on OSX, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return 2;
  }

  if ((sub_100B2080C(a2) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v33 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v48 = 2082;
      *&v48[2] = "";
      *&v48[10] = 2114;
      *&v48[12] = v9;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Not showing big switch re-enable prompt because the client asked us not to, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

LABEL_24:
    sub_10023D820(a3, @"App asked us not to show prompts");
    return 2;
  }

  if ((v14 & 1) == 0 && (!sub_100B20824(a2) || sub_100777988(a1, v9) >= *(a1 + 968)))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v35 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v48 = 2082;
      *&v48[2] = "";
      *&v48[10] = 2114;
      *&v48[12] = v9;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Not showing big switch re-enable prompt because the client has asked for too many, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10023D820(a3, @"App asked us too many times to show big switch re-enable prompt.");
    return 2;
  }

  if (*(a1 + 272))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v29 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v30 = +[CLClientKeyPath nullClientKeyPath];
      v31 = *(a1 + 272);
      if (v31)
      {
        v30 = *(v31 + 1);
        v32 = *v31;
      }

      else
      {
        v32 = 5;
      }

      *buf = 68290050;
      *v48 = 2082;
      *&buf[4] = 0;
      *&v48[2] = "";
      *&v48[10] = 2114;
      *&v48[12] = v9;
      *&v48[20] = 2050;
      *&v48[22] = v8;
      *&v48[30] = 2114;
      v49 = v30;
      v50 = 2050;
      v51 = v32;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring request because authorization in progress -- not showing big switch re-enable prompt, Client:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x3Au);
    }

    sub_10023D820(a3, @"App is already presenting the user with an authorization prompt");
    return 2;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v36 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v48 = 2082;
    *&v48[2] = "";
    *&v48[10] = 2114;
    *&v48[12] = v9;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Showing big switch #AuthPrompt, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  *a3 = 10;
  sub_1007AAEE4(v44, a3);
  v37 = sub_1007851A4(a1, v9, v10, v44);
  sub_10023DF30(v44);
  v12 = 2;
  if (v37)
  {
    LODWORD(v8) = 10;
LABEL_77:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v38 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v48 = 2082;
      *&v48[2] = "";
      *&v48[10] = 2114;
      *&v48[12] = v9;
      *&v48[20] = 2050;
      *&v48[22] = v8;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt posted, Client:%{public, location:escape_only}@, type:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
    }

    v39 = *(a1 + 136);
    *buf = _NSConcreteStackBlock;
    *v48 = 3221225472;
    *&v48[8] = sub_1000352CC;
    *&v48[16] = &unk_10246FEF8;
    *&v48[24] = v9;
    v49 = a1;
    [v39 iterateIdentitiesRelatedToKeyPath:v9 withBlock:buf];
  }

  return v12;
}

void sub_10078517C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10023DF30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007851A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (sub_10001CF3C())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Pinning per-app prompts are not allowed when LocationPinning is enabled.", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101930750();
      return 0;
    }
  }

  else
  {
    v10 = sub_1000184F4(a1, a2);
    if (!&SBUserNotificationPendInSetupIfNotAllowedKey)
    {
      return 0;
    }

    v11 = v10;
    v12 = sub_100783B48(a1, v10, a3);
    if (v12)
    {
      v14 = v12;
      errorPtr = 0;
      v15 = sub_100056238(v12, v13);
      v16 = sub_1007CB2E4(v15, @"LOCATION_DISABLED");
      v17 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v16, &errorPtr, v14);
      if (errorPtr)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v19 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          v20 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
          *buf = 68289538;
          *&buf[4] = 0;
          *v44 = 2082;
          *&v44[2] = "";
          *&v44[10] = 2114;
          *&v44[12] = v11;
          *&v44[20] = 2082;
          *&v44[22] = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Error, couldn't createAndPostClientPrefsNotification for client due to error returned by CFStringCreateStringWithValidatedFormat., Client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v21 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v22 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
          *buf = 68289538;
          *&buf[4] = 0;
          *v44 = 2082;
          *&v44[2] = "";
          *&v44[10] = 2114;
          *&v44[12] = v11;
          *&v44[20] = 2082;
          *&v44[22] = v22;
          _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Error, couldn't createAndPostClientPrefsNotification for client due to error returned by CFStringCreateStringWithValidatedFormat.", "{msg%{public}.0s:#Error, couldn't createAndPostClientPrefsNotification for client due to error returned by CFStringCreateStringWithValidatedFormat., Client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
        }

        return 0;
      }

      v25 = v17;
      v26 = sub_100056238(v17, v18);
      v27 = sub_1007CB2E4(v26, @"LOCATION_DISABLED_SETTINGS");
      v29 = sub_100056238(v27, v28);
      v30 = sub_1007CB2E4(v29, @"LOCATION_DISABLED_CANCEL");
      *buf = SBUserNotificationPendInSetupIfNotAllowedKey;
      *v44 = kCFUserNotificationAlertHeaderKey;
      *&v44[8] = kCFUserNotificationAlternateButtonTitleKey;
      *&v44[16] = kCFUserNotificationDefaultButtonTitleKey;
      values[0] = kCFBooleanTrue;
      values[1] = v25;
      values[2] = v27;
      values[3] = v30;
      v31 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v16)
      {
        CFRelease(v16);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      CFRelease(v14);
      error = 0;
      v32 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, v31);
      CFRelease(v31);
      if (v32)
      {
        RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v32, sub_1007A4864, 0);
        if (RunLoopSource)
        {
          v34 = sub_100107858();
          CFRunLoopAddSource(v34, RunLoopSource, kCFRunLoopCommonModes);
          CFRelease(RunLoopSource);
          [*(a1 + 40) currentLatchedAbsoluteTimestamp];
          sub_1007A48EC(a4, v32, v35);
          CFRelease(v32);
          operator new();
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v37 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *v40 = 138543362;
          v41 = v11;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "Could not create runloop source for client prefs notification for %{public}@", v40, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101930560();
        }

        CFRelease(v32);
        return 0;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v36 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *v40 = 138543362;
        v41 = v11;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_FAULT, "Could not create client prefs notification for %{public}@", v40, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101930658();
        return 0;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *v44 = 2082;
        *&v44[2] = "";
        *&v44[10] = 2114;
        *&v44[12] = v11;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:createClientPrefsNotification: BundleDisplayName nil, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v24 = off_1025D47A8;
      result = os_signpost_enabled(off_1025D47A8);
      if (result)
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *v44 = 2082;
        *&v44[2] = "";
        *&v44[10] = 2114;
        *&v44[12] = v11;
        _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "createClientPrefsNotification: BundleDisplayName nil", "{msg%{public}.0s:createClientPrefsNotification: BundleDisplayName nil, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        return 0;
      }
    }
  }

  return result;
}

NSDictionary *sub_100785848(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1000193E0();
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v3 = +[NSMutableArray array];
  v4 = *(v1 + 136);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100785CFC;
  v15[3] = &unk_102470040;
  v15[4] = v3;
  v15[5] = @"Authorization";
  v15[6] = &v32;
  v15[7] = &v28;
  v15[8] = &v24;
  v15[9] = &v20;
  v15[10] = &v16;
  v15[11] = v1;
  [v4 iterateAllAnchorKeyPathsWithBlock:v15];
  v5 = log2([*(v1 + 136) clientCount]);
  if ([v3 count])
  {
    [*(v1 + 40) currentLatchedAbsoluteTimestamp];
    v7 = [v3 objectAtIndexedSubscript:{v6 % objc_msgSend(v3, "count")}];
    v8 = [*(v1 + 136) intForKey:@"Authorization" atKeyPath:v7 defaultValue:0];
    v9 = [*(v1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v7 defaultValue:0];
    v10 = [*(v1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v7 defaultValue:0];
    v11 = [*(v1 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:v7 defaultValue:0];
    v12 = [*(v1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:v7 defaultValue:0];
    v36[0] = @"BigSwitchEnabled";
    v37[0] = [NSNumber numberWithBool:v2 == 1];
    v36[1] = @"AggLog2ClientCount";
    v37[1] = [NSNumber numberWithInt:v5];
    v36[2] = @"AggNoSSDisabled";
    v37[2] = [NSNumber numberWithBool:*(v25 + 24)];
    v36[3] = @"ClientKey";
    v37[3] = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [objc_msgSend(v7 "userlessClientKeyPath")]);
    v36[4] = @"AuthMask";
    v37[4] = [NSNumber numberWithInt:v8];
    v36[5] = @"AggNoIUEligible";
    v37[5] = [NSNumber numberWithBool:*(v21 + 24)];
    v36[6] = @"AggNoIUDenied";
    v37[6] = [NSNumber numberWithBool:*(v17 + 24)];
    v36[7] = @"IUMode";
    v37[7] = [NSNumber numberWithInt:v10];
    v36[8] = @"AggNoAlwaysApps";
    v37[8] = [NSNumber numberWithBool:*(v33 + 24)];
    v36[9] = @"AggNoChosenCCOn";
    v37[9] = [NSNumber numberWithBool:*(v29 + 24)];
    v36[10] = @"CCStatus";
    v37[10] = [NSNumber numberWithInt:v9];
    v36[11] = @"LRAccess";
    v37[11] = [NSNumber numberWithInt:v11];
    v36[12] = @"VHAccess";
    v37[12] = [NSNumber numberWithInt:v12];
    v13 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:13];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v13;
}

void sub_100785C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100785CFC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 88);
  v5 = [a2 legacyClientKey];
  if ([*(v4 + 136) hasValueForKey:@"SupportedAuthorizationMask" atKeyPath:a2] && (objc_msgSend(*(v4 + 136), "hasValueForKey:atKeyPath:", @"TimeMissing", a2) & 1) == 0)
  {
    [*(a1 + 32) addObject:a2];
  }

  v6 = [*(v4 + 136) intForKey:*(a1 + 40) atKeyPath:a2 defaultValue:0];
  v7 = [*(v4 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:a2 defaultValue:0];
  v8 = [*(v4 + 136) intForKey:@"IncidentalUseMode" atKeyPath:a2 defaultValue:0];
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && v6 == 4)
  {
    if (a2)
    {
      objc_msgSend_clientName(a2);
      if (BYTE1(v20))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = 0;
      *__p = 0u;
      v24 = 0u;
      v21 = 0u;
      *v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v17 = 0u;
      *v18 = 0u;
      *v15 = 0u;
      v16 = 0u;
      *v14 = 0u;
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_14:
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(*(&v20 + 1));
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[1]);
    }

    if (SHIBYTE(v18[0]) < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[1]);
    }

    if (SHIBYTE(v15[0]) < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && v7 == 2)
  {
    sub_10000EC00(v14, [v5 UTF8String]);
    if (sub_1013208AC(v14))
    {
      v11 = sub_1010626CC(v5);
      if (SHIBYTE(v15[0]) < 0)
      {
        operator delete(v14[0]);
      }

      if ((v11 & 1) == 0)
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }

    else if (SHIBYTE(v15[0]) < 0)
    {
      operator delete(v14[0]);
    }
  }

  v12 = *(*(*(a1 + 64) + 8) + 24) == 1 && v6 == 1;
  if (v12 && ([@"com.apple.locationd.bundle-/System/Library/LocationBundles/WifiCalling.bundle" isEqualToString:v5] & 1) == 0)
  {
    if (a2)
    {
      objc_msgSend_clientName(a2);
      if (BYTE1(v20))
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }

    else
    {
      v25 = 0;
      *__p = 0u;
      v24 = 0u;
      v21 = 0u;
      *v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v17 = 0u;
      *v18 = 0u;
      *v15 = 0u;
      v16 = 0u;
      *v14 = 0u;
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(*(&v20 + 1));
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[1]);
    }

    if (SHIBYTE(v18[0]) < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[1]);
    }

    if (SHIBYTE(v15[0]) < 0)
    {
      operator delete(v14[0]);
    }
  }

  v13 = *(*(a1 + 72) + 8);
  if ((*(v13 + 24) & 1) != 0 || *(*(*(a1 + 80) + 8) + 24) == 1)
  {
    if (v8)
    {
      *(v13 + 24) = 0;
      if (v8 == 2)
      {
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }
  }
}

void sub_100786058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100786074(uint64_t a1)
{
  v56 = [[CLOSTransaction alloc] initWithDescription:"CLClientManager::getInternalState"];
  v61 = [objc_msgSend(*(a1 + 136) "getStateSummary")];
  v2 = +[NSMutableDictionary dictionary];
  obj = +[NSMutableArray array];
  v3 = *(a1 + 1104);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
  if (v4)
  {
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(8 * i);
        v8 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [*(a1 + 1104) objectForKeyedSubscript:v7]);
        [v2 setObject:objc_msgSend(objc_msgSend(*(a1 + 1104) forKeyedSubscript:{"objectForKeyedSubscript:", v7), "getStateSummary"), v8}];
        v9 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", v7)}];
        if ([v9 isValidCKP])
        {
          [objc_msgSend(v61 objectForKeyedSubscript:{objc_msgSend(v9, "clientKey")), "setObject:forKeyedSubscript:", v8, @"AuthContext"}];
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
    }

    while (v4);
  }

  v60 = +[NSMutableDictionary dictionary];
  v10 = *(a1 + 840);
  if (v10 != (a1 + 848))
  {
    do
    {
      v11 = v10[5];
      v12 = [NSNumber numberWithUnsignedLong:v11];
      [v60 setObject:sub_100B311E4(v11) forKeyedSubscript:v12];
      v13 = [objc_msgSend(v60 objectForKeyedSubscript:{v12), "objectForKeyedSubscript:", @"AuthContext"}];
      if (v13 && ![v2 objectForKeyedSubscript:v13])
      {
        [obj addObject:sub_100B20804(v11)];
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
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
    }

    while (v15 != (a1 + 848));
  }

  v59 = +[NSMutableDictionary dictionary];
  v17 = *(a1 + 912);
  if (v17 != (a1 + 920))
  {
    do
    {
      v18 = v17[5];
      v19 = [NSNumber numberWithUnsignedLong:v18];
      [v59 setObject:sub_10102B830(v18) forKeyedSubscript:v19];
      v20 = [objc_msgSend(v59 objectForKeyedSubscript:{v19), "objectForKeyedSubscript:", @"AuthContext"}];
      if (v20 && ![v2 objectForKeyedSubscript:v20])
      {
        [obj addObject:*(v18 + 40)];
      }

      v21 = v17[1];
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
          v22 = v17[2];
          v16 = *v22 == v17;
          v17 = v22;
        }

        while (!v16);
      }

      v17 = v22;
    }

    while (v22 != (a1 + 920));
  }

  v58 = +[NSMutableDictionary dictionary];
  v23 = *(a1 + 936);
  if (v23 != (a1 + 944))
  {
    do
    {
      v24 = v23[4];
      v25 = [NSNumber numberWithUnsignedLong:v24];
      [v58 setObject:sub_10102B830(v24) forKeyedSubscript:v25];
      v26 = [objc_msgSend(v58 objectForKeyedSubscript:{v25), "objectForKeyedSubscript:", @"AuthContext"}];
      if (v26 && ![v2 objectForKeyedSubscript:v26])
      {
        [obj addObject:*(v24 + 40)];
      }

      v27 = v23[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v23[2];
          v16 = *v28 == v23;
          v23 = v28;
        }

        while (!v16);
      }

      v23 = v28;
    }

    while (v28 != (a1 + 944));
  }

  v29 = +[NSMutableDictionary dictionary];
  for (j = *(a1 + 1016); j; j = *j)
  {
    for (k = j[7]; k; k = *k)
    {
      v32 = k[4];
      if (v32)
      {
        v33 = std::__shared_weak_count::lock(v32);
        if (v33)
        {
          v34 = v33;
          v35 = k[3];
          if (v35)
          {
            v36 = [NSNumber numberWithUnsignedLong:k[3]];
            [v29 setObject:(*(*v35 + 32))(v35) forKeyedSubscript:v36];
            v37 = [objc_msgSend(v29 objectForKeyedSubscript:{v36), "objectForKeyedSubscript:", @"AuthContext"}];
            if (v37)
            {
              if (![v2 objectForKeyedSubscript:v37])
              {
                [obj addObject:v35[17]];
              }
            }
          }

          sub_100008080(v34);
        }
      }
    }
  }

  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
  if (v38)
  {
    v39 = MEMORY[0];
    do
    {
      for (m = 0; m != v38; m = m + 1)
      {
        if (MEMORY[0] != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(8 * m);
        v42 = [NSNumber numberWithUnsignedLong:v41];
        if (![v2 objectForKeyedSubscript:v42])
        {
          [v2 setObject:objc_msgSend(v41 forKeyedSubscript:{"getStateSummary"), v42}];
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
    }

    while (v38);
  }

  v57 = +[NSMutableDictionary dictionary];
  obja = +[NSMutableDictionary dictionary];
  v43 = *(a1 + 864);
  if (v43 != (a1 + 872))
  {
    do
    {
      v44 = v43[5];
      v45 = (*(*v44 + 32))(v44);
      if (v45)
      {
        v46 = [NSNumber numberWithUnsignedLong:v44];
        v48 = obja;
        {
          [v48 setObject:v45 forKeyedSubscript:v46];
        }
      }

      v50 = v43[1];
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = v43[2];
          v16 = *v51 == v43;
          v43 = v51;
        }

        while (!v16);
      }

      v43 = v51;
    }

    while (v51 != (a1 + 872));
  }

  v52 = +[NSMutableDictionary dictionary];
  [v52 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", CFAbsoluteTimeGetCurrent()), @"CollectTimestamp"}];
  v53 = objc_alloc_init(NSDateFormatter);
  [v53 setDateFormat:@"yyyy-MM-dd HH:mm:ssZ"];
  [v52 setObject:objc_msgSend(v53 forKeyedSubscript:{"stringFromDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", CFAbsoluteTimeGetCurrent())), @"CollectTime"}];
  [v52 setObject:-[NSProcessInfo operatingSystemVersionString](+[NSProcessInfo processInfo](NSProcessInfo forKeyedSubscript:{"processInfo"), "operatingSystemVersionString"), @"BuildVersion"}];
  v54 = +[NSMutableDictionary dictionary];
  [v54 setObject:v61 forKeyedSubscript:@"AuthorizationDatabaseState"];

  [v54 setObject:sub_100BA12D8(*(a1 + 400)) forKeyedSubscript:@"InUseLevelTrackerState"];
  [v54 setObject:v2 forKeyedSubscript:@"AuthorizationContextStates"];
  [v54 setObject:v60 forKeyedSubscript:@"DaemonClientStates"];
  [v54 setObject:v59 forKeyedSubscript:@"DaemonIdentifiableClientStates"];
  [v54 setObject:v58 forKeyedSubscript:@"DaemonIdentifiableClientWithoutConnectionStates"];
  [v54 setObject:v29 forKeyedSubscript:@"PersistentSubscriptionStates"];
  [v54 setObject:v57 forKeyedSubscript:@"InUseAssertionStates"];
  [v54 setObject:obja forKeyedSubscript:@"EmergencyAssertionStates"];
  [v54 setObject:v52 forKeyedSubscript:@"CollectionMetadata"];

  return v54;
}

void sub_100786930(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v12 isValidCKP])
  {

    sub_100786AA8(a1, v12, a3, a4, a5, a6);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 68289282;
      v14[1] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#luHistorical client not found - fetching dateIntervals, Client:%{public, location:escape_only}@}", v14, 0x1Cu);
    }
  }
}

void sub_100786AA8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (objc_opt_class())
  {
    v58 = sub_1000184F4(a1, a2);
    v54 = a6;
    v57 = a3;
    if ([objc_msgSend(a4 objectForKeyedSubscript:{@"com.apple.developer.corelocation.wilderness-safety", "BOOLValue"}])
    {
      obj = +[NSMutableArray array];
    }

    else
    {
      v13 = [objc_msgSend(a4 objectForKeyedSubscript:{@"com.apple.locationd.transcript-session", "BOOLValue"}];
      obj = +[NSMutableArray array];
      if (!v13)
      {
        v16 = 0;
        v14 = a1;
        v15 = 0;
        goto LABEL_11;
      }
    }

    v14 = a1;
    v15 = sub_100779AE8(a1, a5);
    v16 = 1;
LABEL_11:
    v17 = +[NSMutableArray array];
    v56 = v14;
    v18 = sub_100788F6C(v14, v58);
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68290306;
      v66 = 2082;
      v67 = "";
      v68 = 2114;
      *v69 = a5;
      *&v69[8] = 2114;
      *&v69[10] = v18;
      v70 = 2114;
      v71 = [a3 startDate];
      v72 = 2114;
      v73 = [a3 endDate];
      v74 = 2114;
      v75 = v58;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationAttributionInfo #luHistorical calculateCheeseCoverage, lookbackWindowStartDate:%{public, location:escape_only}@, transcriptStartDate:%{public, location:escape_only}@, interestStartDate:%{public, location:escape_only}@, interestEndDate:%{public, location:escape_only}@, Client:%{public, location:escape_only}@}", &buf, 0x44u);
    }

    v20 = v16 ^ 1;
    if (!v18)
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = 0;
      if (!v16)
      {
LABEL_35:
        v61 = 0;
        v62 = &v61;
        v63 = 0x2020000000;
        v64 = 0;
        v31 = v17;
        if (_os_feature_enabled_impl())
        {
          v32 = *(v56 + 568);
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_100789330;
          v60[3] = &unk_102470148;
          v60[6] = &v61;
          v60[7] = v56;
          v60[4] = v17;
          v60[5] = obj;
          sub_100779E1C(v32, v58, v60);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
            v31 = v17;
          }

          v33 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [obj count];
            buf = 68289538;
            v66 = 2082;
            v67 = "";
            v68 = 1026;
            *v69 = v34;
            *&v69[4] = 2114;
            *&v69[6] = v58;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationAttributionInfo finished iterating through swiss cheese archive, resultCount:%{public}d, Client:%{public, location:escape_only}@}", &buf, 0x22u);
          }
        }

        while (1)
        {
          v35 = [v31 count];
          if (v35 <= *(v62 + 6))
          {
            break;
          }

          [obj addObject:{objc_msgSend(v31, "objectAtIndexedSubscript:")}];
          ++*(v62 + 6);
        }

        [objc_msgSend(v57 "startDate")];
        v37 = v36;
        [objc_msgSend(v57 "endDate")];
        v39 = v38;
        v40 = [obj count];
        if (v40)
        {
          v41 = v40 - 1;
          do
          {
            [objc_msgSend(objc_msgSend(obj objectAtIndexedSubscript:{v41), "startDate"), "timeIntervalSinceReferenceDate"}];
            v43 = v42;
            [objc_msgSend(objc_msgSend(obj objectAtIndexedSubscript:{v41), "endDate"), "timeIntervalSinceReferenceDate"}];
            v45 = v44;
            v46 = [objc_msgSend(obj objectAtIndexedSubscript:{v41), "intersectsDateInterval:", v57}];
            if (v43 < v37 || v45 > v39)
            {
              if (v46)
              {
                if (v43 < v37 || v45 <= v39 || v43 >= v39)
                {
                  if (v43 < v37 && v45 <= v39)
                  {
                    [obj replaceObjectAtIndex:v41 withObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v37), +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v45))}];
                  }
                }

                else
                {
                  [obj replaceObjectAtIndex:v41 withObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v43), +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v39))}];
                }
              }

              else
              {
                [obj removeObjectAtIndex:v41];
              }
            }

            --v41;
          }

          while (v41 != -1);
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        if (v47)
        {
          v48 = MEMORY[0];
          do
          {
            v49 = 0;
            do
            {
              if (MEMORY[0] != v48)
              {
                objc_enumerationMutation(obj);
              }

              v50 = *(8 * v49);
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v51 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
              {
                v52 = [v50 startDate];
                v53 = [v50 endDate];
                buf = 68289794;
                v66 = 2082;
                v67 = "";
                v68 = 2114;
                *v69 = v52;
                *&v69[8] = 2114;
                *&v69[10] = v53;
                v70 = 2114;
                v71 = v58;
                _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationAttributionInfo #luHistorical cheeseCoverage calculated and includes this interval, startDate:%{public, location:escape_only}@, endDate:%{public, location:escape_only}@, Client:%{public, location:escape_only}@}", &buf, 0x30u);
              }

              v49 = v49 + 1;
            }

            while (v47 != v49);
            v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
          }

          while (v47);
        }

        (*(v55 + 16))(v55, obj);
        _Block_object_dispose(&v61, 8);
        return;
      }
    }

    else
    {
      v21 = +[NSMutableArray array];
      [v21 addObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", v18, +[NSDate now](NSDate, "now"))}];
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    v22 = 0;
    v23 = 0;
    while (1)
    {
      if ([v15 count] <= v23)
      {
        if ([v21 count] <= v22)
        {
          goto LABEL_35;
        }

        v24 = v22;
      }

      else
      {
        v24 = v22;
      }

      v25 = [v15 count];
      v26 = [v21 count];
      v27 = v26;
      if (v26 <= v24)
      {
        v29 = 0.0;
        if (v25 <= v23)
        {
          goto LABEL_34;
        }
      }

      else
      {
        [objc_msgSend(objc_msgSend(v21 objectAtIndexedSubscript:{v24), "startDate"), "timeIntervalSinceReferenceDate"}];
        v29 = v28;
        if (v25 <= v23)
        {
          goto LABEL_32;
        }
      }

      [objc_msgSend(objc_msgSend(v15 objectAtIndexedSubscript:{v23), "startDate"), "timeIntervalSinceReferenceDate"}];
      if (v30 > v29 && v27 > v24)
      {
LABEL_32:
        v26 = [v17 addObject:{objc_msgSend(v21, "objectAtIndexedSubscript:", v24)}];
        ++v22;
        goto LABEL_34;
      }

      v26 = [v17 addObject:{objc_msgSend(v15, "objectAtIndexedSubscript:", v23++)}];
LABEL_34:
      sub_1007891C4(v26, v17);
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v66 = 2082;
    v67 = "";
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", &buf, 0x12u);
  }
}

void sub_100787310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100787370(uint64_t a1, uint64_t a2)
{
  v3 = [[CLPLocationConsumptionScoreInfo alloc] initWithData:a2];
  if ([@"com.apple.locationd.all-location-clients-stop" isEqualToString:{objc_msgSend(v3, "clientKey")}])
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    if (v4 > 0.0 && v4 < *(*(*(a1 + 56) + 8) + 24))
    {
      (*(*(a1 + 40) + 16))();
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    goto LABEL_6;
  }

  if (([*(a1 + 32) isValidCKP] & 1) == 0)
  {
LABEL_11:
    v7 = *(a1 + 40);
    [v3 startTime];
    v9 = v8;
    [v3 stopTime];
    (*(v7 + 16))(v7, v9, v10);
    goto LABEL_19;
  }

  v5 = [objc_msgSend(*(a1 + 32) "clientKey")];
  v6 = [v3 hasStartTime];
  if ((v5 & 1) == 0)
  {
    if (v6)
    {
      [v3 startTime];
    }

    else
    {
      [v3 stopTime];
    }

    v12 = *(a1 + 56);
    goto LABEL_18;
  }

  if (v6 && [v3 hasStopTime])
  {
    goto LABEL_11;
  }

  if ([v3 hasStartTime])
  {
    [v3 startTime];
    v12 = *(a1 + 48);
LABEL_18:
    *(*(v12 + 8) + 24) = v11;
    goto LABEL_19;
  }

  if ([v3 hasStopTime])
  {
    v13 = *(*(*(a1 + 48) + 8) + 24);
    if (v13 > 0.0)
    {
      [v3 stopTime];
      if (v13 < v14)
      {
        v15 = *(a1 + 40);
        v16 = *(*(*(a1 + 48) + 8) + 24);
        [v3 stopTime];
        (*(v15 + 16))(v15, v16, v17);
LABEL_6:
        *(*(*(a1 + 48) + 8) + 24) = 0;
        goto LABEL_19;
      }
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v18 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v19 = *(*(*(a1 + 48) + 8) + 24);
    v22 = 68289538;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2050;
    v27 = v19;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid ConsumptionScore interval, startTime:%{public}f, scoreInfo:%{public, location:escape_only}@}", &v22, 0x26u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v20 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v21 = *(*(*(a1 + 48) + 8) + 24);
    v22 = 68289538;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2050;
    v27 = v21;
    v28 = 2114;
    v29 = v3;
    _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid ConsumptionScore interval", "{msg%{public}.0s:Invalid ConsumptionScore interval, startTime:%{public}f, scoreInfo:%{public, location:escape_only}@}", &v22, 0x26u);
  }

LABEL_19:
}

void sub_1007876D0(void *a1)
{
  sub_10000EC00(&__p, [@"com.apple.locationd.all-location-clients-stop" UTF8String]);
  p_p = &__p;
  v2 = sub_100046778(a1, &__p, &unk_101C66300, &p_p);
  if (SBYTE3(v15) < 0)
  {
    operator delete(__p);
  }

  v3 = a1[2];
  if (v3)
  {
    v4 = *(v2 + 5) + 10.0;
    do
    {
      v5 = v3[5];
      if (v5 > 0.0)
      {
        if (v5 <= v4)
        {
          *(v3 + 12) += (v4 - v5);
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v6 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v7 = *(v3 + 5);
            __p = 68289538;
            v12 = 2082;
            v13 = "";
            v14 = 2050;
            v15 = v7;
            v16 = 2050;
            v17 = v4;
            _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Detected CFAbsoluteTime rollback when reading usage score, PreviousTimestamp:%{public}f, Timestamp:%{public}f}", &__p, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v8 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v9 = *(v3 + 5);
            __p = 68289538;
            v12 = 2082;
            v13 = "";
            v14 = 2050;
            v15 = v9;
            v16 = 2050;
            v17 = v4;
            _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Detected CFAbsoluteTime rollback when reading usage score", "{msg%{public}.0s:Detected CFAbsoluteTime rollback when reading usage score, PreviousTimestamp:%{public}f, Timestamp:%{public}f}", &__p, 0x26u);
          }
        }
      }

      v3[5] = 0.0;
      v3 = *v3;
    }

    while (v3);
  }
}

void sub_100787910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100787934(uint64_t a1, void *a2, uint64_t a3)
{
  if (objc_opt_class())
  {
    [a2 pruneSecondaryDataOlderThan:CFAbsoluteTimeGetCurrent() + -432000.0];
    v5 = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.reading-score-archive"];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Updating the #reprompt location consumption score info from archive}", buf, 0x12u);
    }

    v7 = objc_autoreleasePoolPush();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100787BB8;
    v10[3] = &unk_1024700A8;
    v10[4] = a3;
    [a2 iterateSecondaryData:objc_msgSend(a2 forField:"mappedSecondaryData") withHandler:{1, v10}];
    objc_autoreleasePoolPop(v7);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Finished - Updating the #reprompt location consumption score info from archive}", buf, 0x12u);
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
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_100787BB8(uint64_t a1, uint64_t a2)
{
  v3 = [[CLPLocationConsumptionScoreInfo alloc] initWithData:a2];
  sub_100787C1C(*(a1 + 32), v3);
}

void sub_100787C1C(void *a1, void *a2)
{
  if (!objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    v16 = 2082;
    v17 = "";
    v6 = "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
    _os_log_impl(dword_100000000, v7, v8, v6, buf, 0x12u);
    return;
  }

  if ([@"com.apple.locationd.all-location-clients-stop" isEqualToString:{objc_msgSend(a2, "clientKey")}])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v16 = 2082;
      v17 = "";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Detected locationd startup; marking all historical clients as stopped}", buf, 0x12u);
    }

    sub_1007876D0(a1);
    return;
  }

  if (![a2 clientKey])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v13 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    v16 = 2082;
    v17 = "";
    v6 = "{msg%{public}.0s:Detected clientKey is empty}";
    v7 = v13;
    v8 = OS_LOG_TYPE_DEBUG;
    goto LABEL_26;
  }

  sub_10000EC00(buf, [objc_msgSend(a2 "clientKey")]);
  v14 = buf;
  v9 = sub_100046778(a1, buf, &unk_101C66300, &v14);
  if (v18 < 0)
  {
    operator delete(*buf);
  }

  sub_10000EC00(buf, [@"com.apple.locationd.all-location-clients-stop" UTF8String]);
  v14 = buf;
  v10 = sub_100046778(a1, buf, &unk_101C66300, &v14);
  if (v18 < 0)
  {
    operator delete(*buf);
  }

  if ([a2 hasStartTime] && objc_msgSend(a2, "hasStopTime"))
  {
    *(v9 + 12) += 500;
    [a2 stopTime];
  }

  else if ([a2 hasStartTime])
  {
    [a2 startTime];
    v9[5] = v12;
    [a2 startTime];
  }

  else
  {
    if (![a2 hasScore])
    {
      return;
    }

    *(v9 + 12) += [a2 score];
    v9[5] = 0;
    [a2 stopTime];
  }

  v10[5] = v11;
}

void sub_100787F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100787F74(uint64_t a1, uint64_t a2, uint64_t a3)
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
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Registering pruning activity with check-in criteria for location consumption score info archive.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930834();
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
    xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, 86400);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_GRACE_PERIOD, 14400);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007881DC;
    handler[3] = &unk_1024700F8;
    handler[4] = a2;
    handler[5] = a1;
    handler[6] = a3;
    xpc_activity_register("CLClientManager.loc-consumption-pruning", v7, handler);
    xpc_release(v7);
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
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_1007881DC(void *a1, xpc_activity_t activity)
{
  v3 = a1[5];
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v5 = *(v3 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100788338;
    v8[3] = &unk_1024700D0;
    v8[4] = a1[4];
    v8[5] = v3;
    v8[6] = a1[6];
    [v5 async:v8];
  }

  else
  {
    v6 = state;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip consumption score pruning activity, Current State:%{public}ld}", buf, 0x1Cu);
    }
  }
}

void sub_100788348(uint64_t a1, void *a2, uint64_t a3)
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
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v47) = 2082;
      *(&v47 + 2) = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Pruning location consumption score info archive.}", buf, 0x12u);
    }

    v42 = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.pruning-score-archive"];
    context = objc_autoreleasePoolPush();
    sub_1007ADFF8(v44, a3);
    v7 = [a2 pruneAndGetSecondaryDataOlderThan:CFAbsoluteTimeGetCurrent() + -259200.0];
    if ([v7 length])
    {
      *buf = 0;
      *&v47 = buf;
      *(&v47 + 1) = 0x5812000000;
      v48 = sub_100788C48;
      v49 = sub_100788C54;
      v50 = &unk_10238AE8B;
      memset(v51, 0, sizeof(v51));
      v52 = 1065353216;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100788C5C;
      v43[3] = &unk_102470120;
      v43[4] = buf;
      [a2 iterateSecondaryData:v7 forField:1 withHandler:v43];
      sub_1007876D0((v47 + 48));
      for (i = *(v47 + 64); i; i = *i)
      {
        v9 = i + 2;
        v10 = sub_1005D7C24(v44, i + 2);
        v11 = v10;
        if (v10)
        {
          *(v10 + 12) -= *(i + 12);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v12 = off_1025D47A8;
          if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            continue;
          }

          if (*(i + 39) < 0)
          {
            v9 = *v9;
          }

          v13 = -*(i + 12);
          v14 = *(v11 + 12);
          v53 = 68289794;
          v54 = 2082;
          v55 = "";
          v56 = 2082;
          v57 = v9;
          v58 = 1026;
          v59 = v13;
          v60 = 1026;
          v61 = v14;
          v15 = v12;
          v16 = OS_LOG_TYPE_DEBUG;
          v17 = "{msg%{public}.0s:Pruning LocationConsumptionUsageScore, Client:%{public, location:escape_only}s, ScoreAdjustment:%{public}d, NewScore:%{public}d}";
          v18 = 40;
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v19 = off_1025D47A8;
          if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v53 = 68289026;
          v54 = 2082;
          v55 = "";
          v15 = v19;
          v16 = OS_LOG_TYPE_DEFAULT;
          v17 = "{msg%{public}.0s:#Warning Found a client in pruned data, that does not exist in memory.}";
          v18 = 18;
        }

        _os_log_impl(dword_100000000, v15, v16, v17, &v53, v18);
      }

      _Block_object_dispose(buf, 8);
      sub_1003C94DC(v51);
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Before rotation stopping the active clients", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DC88(buf);
      LOWORD(v53) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 1, "Before rotation stopping the active clients", &v53, 2, context, v42);
      v35 = v34;
      sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::pruneAndRotateLocationConsumptionScoreArchiveAndUpdateTheStateAccordingly(CLHRequestArchive *, ConsumptionScoreMap &)", "%s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    v21 = objc_alloc_init(NSMutableArray);
    for (j = v45; j; j = *j)
    {
      if (*(j + 5) > 0.0)
      {
        v23 = j + 2;
        if (*(j + 39) < 0)
        {
          v23 = *v23;
        }

        v24 = [NSString stringWithUTF8String:v23];
        if ([(NSString *)v24 isEqualToString:@"com.apple.locationd.all-location-clients-stop"])
        {
          sub_1000ED87C(a1, a2, v44, 0);
          [v21 addObject:{+[NSNull null](NSNull, "null")}];
        }

        else
        {
          v25 = [CLClientKeyPath clientKeyPathWithClientKey:v24];
          sub_1000ED87C(a1, a2, v44, v25);
          [v21 addObject:v25];
        }
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v26 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "Rotating location consumption score info archive.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DC88(buf);
      LOWORD(v53) = 0;
      LODWORD(v40) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "Rotating location consumption score info archive.", &v53, v40);
      v37 = v36;
      sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::pruneAndRotateLocationConsumptionScoreArchiveAndUpdateTheStateAccordingly(CLHRequestArchive *, ConsumptionScoreMap &)", "%s\n", v36);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    [a2 rotateSecondaryFile];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v27 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "After rotation resuming the stopped clients", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DC88(buf);
      LOWORD(v53) = 0;
      LODWORD(v40) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 1, "After rotation resuming the stopped clients", &v53, v40);
      v39 = v38;
      sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::pruneAndRotateLocationConsumptionScoreArchiveAndUpdateTheStateAccordingly(CLHRequestArchive *, ConsumptionScoreMap &)", "%s\n", v38);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21);
    if (v28)
    {
      v29 = MEMORY[0];
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (MEMORY[0] != v29)
          {
            objc_enumerationMutation(v21);
          }

          v31 = *(8 * k);
          if ([v31 isEqual:{+[NSNull null](NSNull, "null")}])
          {
            v32 = 0;
          }

          else
          {
            v32 = v31;
          }

          sub_10077AD68(a1, a2, v44, v32);
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21);
      }

      while (v28);
    }

    sub_1003C94DC(v44);
    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v33 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v47) = 2082;
      *(&v47 + 2) = "";
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_100788C5C(uint64_t a1, uint64_t a2)
{
  v3 = [[CLPLocationConsumptionScoreInfo alloc] initWithData:a2];
  sub_100787C1C((*(*(a1 + 32) + 8) + 48), v3);
}

void sub_100788CC8(uint64_t a1)
{
  if (objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Resetting resetLocationAttributionIntervalArchive", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930910();
    }

    v3 = [CLHRequestArchive alloc];
    sub_100565518(0, &v12, v4);
    v5 = std::string::append(&v12, "locationAttributionInfo/", 0x18uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v5->__r_.__value_.__l + 2);
    *buf = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (buf[23] >= 0)
    {
      v7 = buf;
    }

    else
    {
      v7 = *buf;
    }

    *(a1 + 568) = [(CLHRequestArchive *)v3 initWithDirectory:[NSString itemCountThresholdForAutoCleanUp:"stringWithUTF8String:" stringWithUTF8String:v7], 500];
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    [*(a1 + 568) setRotationInterval:-1.0];
    v8 = (a1 + 568);
    sub_100787F74(a1, *(a1 + 568), a1 + 528);
    Current = CFAbsoluteTimeGetCurrent();
    v10 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
    [v10 setClientKey:@"com.apple.locationd.all-location-clients-stop"];
    [v10 setStopTime:Current];
    [v10 setScore:0];
    [*v8 writeSecondaryObject:v10 toField:1];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_100788F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSDate *sub_100788F6C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) dictionaryForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:"stringWithUTF8String:" defaultValue:{off_1025D6538[0]), a2, 0}];
  if (!v3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v13 = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a2;
    v8 = "{msg%{public}.0s:#luHistorical TranscriptSession not found - fetching dateIntervals, Client:%{public, location:escape_only}@}";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEBUG;
    goto LABEL_15;
  }

  v4 = [v3 objectForKeyedSubscript:@"startDate"];
  if (!v4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v13 = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a2;
    v8 = "{msg%{public}.0s:#luHistorical transcriptStartDate not found, Client:%{public, location:escape_only}@}";
    v9 = v11;
    v10 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(dword_100000000, v9, v10, v8, &v13, 0x1Cu);
    return 0;
  }

  [v4 doubleValue];
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 68289538;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a2;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#luHistorical transcriptStartDate, Client:%{public, location:escape_only}@, startDate:%{public, location:escape_only}@}", &v13, 0x26u);
  }

  return v5;
}

void sub_1007891C4(uint64_t a1, void *a2)
{
  v3 = [a2 count];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = v3 - 1;
    v6 = [a2 objectAtIndexedSubscript:v4];
    v14 = [a2 objectAtIndexedSubscript:v5];
    [objc_msgSend(v6 "endDate")];
    v8 = v7;
    [objc_msgSend(v14 "startDate")];
    if (v8 >= v9)
    {
      [objc_msgSend(v6 "startDate")];
      v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [objc_msgSend(v6 "endDate")];
      v12 = v11;
      [objc_msgSend(v14 "endDate")];
      if (v12 < v13)
      {
        [objc_msgSend(v14 "endDate")];
        [a2 replaceObjectAtIndex:v4 withObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", v10, +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:"))}];
      }

      [a2 removeObjectAtIndex:v5];
    }
  }
}

void sub_100789330(uint64_t a1, double a2, double a3)
{
  if ([*(a1 + 32) count] > *(*(*(a1 + 48) + 8) + 24) && (v6 = objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:")) != 0 && (v7 = v6, objc_msgSend(objc_msgSend(v6, "startDate"), "timeIntervalSinceReferenceDate"), v8 <= a2))
  {
    v9 = [*(a1 + 40) addObject:v7];
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v9 = [*(a1 + 40) addObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", a2), +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", a3))}];
  }

  v10 = *(a1 + 40);

  sub_1007891C4(v9, v10);
}

void sub_100789448(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  [*(a1 + 32) silo];
  if ((*(a1 + 1600) & 1) == 0 && *a3 == 1)
  {
    v7 = *(a4 + 4);
    *(a1 + 1600) = v7;
    if (v7 == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 68289026;
        v9[1] = 0;
        v10 = 2082;
        v11 = "";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#dic rehydration on device first unlock}", v9, 0x12u);
      }

      [*(*(a1 + 1584) + 16) unregister:*(*(a1 + 1584) + 8) forNotification:1];
      sub_100789568(a1);
    }
  }
}

void sub_100789568(void *a1)
{
  __p = 0;
  v28 = 0;
  v29 = 0;
  v2 = a1[114];
  v3 = a1 + 115;
  if (v2 != a1 + 115)
  {
    v4 = 0;
    do
    {
      if (v4 >= v29)
      {
        v5 = (v4 - __p) >> 3;
        if ((v5 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v6 = (v29 - __p) >> 2;
        if (v6 <= v5 + 1)
        {
          v6 = v5 + 1;
        }

        if (v29 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v7 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v7 = v6;
        }

        if (v7)
        {
          sub_10045E858(&__p, v7);
        }

        *(8 * v5) = v2[4];
        v4 = (8 * v5 + 8);
        v8 = (8 * v5 - (v28 - __p));
        memcpy(v8, __p, v28 - __p);
        v9 = __p;
        __p = v8;
        v28 = v4;
        v29 = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v4 = v2[4];
        v4 += 8;
      }

      v28 = v4;
      v10 = v2[1];
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
          v11 = v2[2];
          v12 = *v11 == v2;
          v2 = v11;
        }

        while (!v12);
      }

      v2 = v11;
    }

    while (v11 != v3);
    for (i = __p; i != v4; ++i)
    {
      sub_10011219C(a1, *i);
    }
  }

  v14 = a1[117];
  v25 = a1;
  v15 = a1 + 118;
  if (v14 != v15)
  {
    do
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sub_100008880(v14[4]);
        v18 = v14[4];
        *buf = 68289538;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2114;
        v35 = v17;
        v36 = 2050;
        v37 = v18;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dic triggerRetirement due to rehydration, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v19 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v20 = sub_100008880(v14[4]);
        v21 = v14[4];
        *buf = 68289538;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2114;
        v35 = v20;
        v36 = 2050;
        v37 = v21;
        _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dic triggerRetirement due to rehydration", "{msg%{public}.0s:#dic triggerRetirement due to rehydration, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
      }

      sub_10102CAF8(v14[4]);
      v22 = v14[1];
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
          v23 = v14[2];
          v12 = *v23 == v14;
          v14 = v23;
        }

        while (!v12);
      }

      v14 = v23;
    }

    while (v23 != v15);
  }

  v24 = v25[17];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10078A1A0;
  v26[3] = &unk_10246FC30;
  v26[4] = v25;
  [v24 iterateAllAnchorKeyPathsWithBlock:v26];
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_100789928(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1000184F4(a1, a2);
  v7 = [objc_msgSend(a4 dictionaryForKey:@"DIC" defaultValue:{0), "objectForKeyedSubscript:", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", a3), "stringValue")}];
  if (v7)
  {
    v19 = v7;
    obj = [v7 allKeys];
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
    if (!v8)
    {
      return;
    }

    v9 = MEMORY[0];
    while (1)
    {
      v10 = 0;
      do
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [v19 objectForKeyedSubscript:*(8 * v10)];
        if (a3 > 3)
        {
          switch(a3)
          {
            case 4:
              operator new();
            case 5:
              operator new();
            case 6:
              if ([objc_msgSend(v11 objectForKey:{@"SessionActive", "BOOLValue"}])
              {
                operator new();
              }

              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v16 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
              {
                __p = 68289538;
                v21 = 2082;
                v22 = "";
                v23 = 2114;
                v24 = v6;
                v25 = 1026;
                v26 = 6;
                v13 = v16;
                v14 = "{msg%{public}.0s:#dic CLDaemonServiceSession session is not active. Will skip on being a butterfly, Client:%{public, location:escape_only}@, dicType:%{public}d}";
                goto LABEL_34;
              }

              goto LABEL_35;
          }
        }

        else
        {
          switch(a3)
          {
            case 1:
              operator new();
            case 2:
              operator new();
            case 3:
              if ([objc_msgSend(v11 objectForKey:{@"SessionActive", "BOOLValue"}])
              {
                operator new();
              }

              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v15 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
              {
                __p = 68289538;
                v21 = 2082;
                v22 = "";
                v23 = 2114;
                v24 = v6;
                v25 = 1026;
                v26 = 3;
                v13 = v15;
                v14 = "{msg%{public}.0s:#dic CLDaemonBackgroundActivitySession session is not active. Will skip on being a butterfly, Client:%{public, location:escape_only}@, dicType:%{public}d}";
                goto LABEL_34;
              }

              goto LABEL_35;
          }
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          __p = 68289538;
          v21 = 2082;
          v22 = "";
          v23 = 2114;
          v24 = v6;
          v25 = 1026;
          v26 = a3;
          v13 = v12;
          v14 = "{msg%{public}.0s:#Warning #dic rehydration, unrecognized dic type, Client:%{public, location:escape_only}@, dicType:%{public}d}";
LABEL_34:
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, v14, &__p, 0x22u);
        }

LABEL_35:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      if (!v8)
      {
        return;
      }
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289538;
    v21 = 2082;
    v22 = "";
    v23 = 2114;
    v24 = v6;
    v25 = 1026;
    v26 = a3;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip #dic rehydration, specified dic type does not exists, Client:%{public, location:escape_only}@, dicType:%{public}d}", &__p, 0x22u);
  }
}

id sub_10078A1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078A218;
  v5[3] = &unk_10246FC80;
  v5[4] = v2;
  return [v3 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v5];
}

void sub_10078A218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#dic #rehydration started, Client:%{public, location:escape_only}@}", &v11, 0x1Cu);
  }

  if ([*(v3 + 136) hasValueForKey:@"DIC" atKeyPath:a2])
  {
    v5 = [*(v3 + 136) readonlyStoreAtKeyPath:a2];
    sub_100789928(v3, a2, 3, v5);
    sub_100789928(v3, a2, 1, v5);
    sub_100789928(v3, a2, 2, v5);
    sub_100789928(v3, a2, 4, v5);
    sub_100789928(v3, a2, 6, v5);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = a2;
      v7 = "{msg%{public}.0s:#dic #rehydration completed, Client:%{public, location:escape_only}@}";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
      _os_log_impl(dword_100000000, v8, v9, v7, &v11, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = a2;
      v7 = "{msg%{public}.0s:skip #rehydration No #dic, Client:%{public, location:escape_only}@}";
      v8 = v10;
      v9 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }
  }
}

void sub_10078A488(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a1 + 136) hasValueForKey:@"SubIdentities" atKeyPath:a2])
  {
    if ([a3 objectForKeyedSubscript:@"RemoteUsage"])
    {
      v4 = [a3 objectForKeyedSubscript:@"RemoteUsage"];
      v5 = [v4 allKeys];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5);
      if (v6)
      {
        v7 = *v33;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v33 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v32 + 1) + 8 * i);
            [v4 objectForKeyedSubscript:v9];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [objc_msgSend(a3 objectForKeyedSubscript:{@"RemoteUsage", "setObject:forKeyedSubscript:", objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", v9), "objectAtIndexedSubscript:", 1), v9}];
            }
          }

          v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5);
        }

        while (v6);
      }
    }

    v10 = 0;
    while (1)
    {
      v31 = 0uLL;
      sub_10004F9C8(v10, &v31 + 1, &v31);
      v12 = *(&v31 + 1);
      v11 = v31;
      if (v31 != 0)
      {
        break;
      }

LABEL_20:
      if (++v10 == 24)
      {
        return;
      }
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0x7FEFFFFFFFFFFFFFLL;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0xBFF0000000000000;
    [*(a1 + 136) iterateIdentitiesRelatedToKeyPath:? withBlock:?];
    if (*(v28 + 24) == 1)
    {
      v13 = [NSNumber numberWithDouble:v20[3]];
    }

    else
    {
      if (*(v24 + 24) != 1)
      {
LABEL_19:
        _Block_object_dispose(&v15, 8);
        _Block_object_dispose(&v19, 8);
        _Block_object_dispose(&v23, 8);
        _Block_object_dispose(&v27, 8);
        goto LABEL_20;
      }

      v13 = [NSNumber numberWithDouble:v16[3]];
      v12 = v11;
    }

    [a3 setObject:v13 forKeyedSubscript:v12];
    goto LABEL_19;
  }
}

void sub_10078A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10078A7EC(void *a1, void *a2)
{
  v4 = a1[9];
  v5 = objc_autoreleasePoolPush();
  if (([a2 isEqual:a1[4]] & 1) == 0 && +[CLAuthorizationDatabase keyPath:sharesAuthWithKeyPath:](CLAuthorizationDatabase, "keyPath:sharesAuthWithKeyPath:", a2, a1[4]))
  {
    v6 = [*(v4 + 136) readonlyStoreAtKeyPath:a2];
    [v6 doubleForKey:a1[10] defaultValue:-1.0];
    v8 = v7;
    [v6 doubleForKey:a1[11] defaultValue:-1.0];
    if (v8 == -1.0)
    {
      if (v9 != -1.0)
      {
        *(*(a1[7] + 8) + 24) = 1;
        v11 = *(a1[8] + 8);
        if (*(v11 + 24) < v9)
        {
          *(v11 + 24) = v9;
        }
      }
    }

    else
    {
      *(*(a1[5] + 8) + 24) = 1;
      v10 = *(a1[6] + 8);
      if (v8 < *(v10 + 24))
      {
        *(v10 + 24) = v8;
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10078A900(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Running #AuthDatabaseMigration_7", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930BB8();
  }

  v3 = *(a1 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078AA5C;
  v5[3] = &unk_10246FC30;
  v5[4] = a1;
  [v3 iterateAllAnchorKeyPathsWithBlock:v5];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Finished #AuthDatabaseMigration_7", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930C94();
  }
}

id sub_10078AA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078AAD4;
  v5[3] = &unk_10246FC80;
  v5[4] = v2;
  return [v3 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v5];
}

id sub_10078AAD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(v3 + 136) intForKey:@"SupportedAuthorizationMask" atKeyPath:a2 defaultValue:0];
  if ((v4 & 6) == 4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2114;
      v39 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration client's authorization mask contains Always but not WhenInUse, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    [*(v3 + 136) setInt:v4 | 2 forKey:@"SupportedAuthorizationMask" atKeyPath:a2];
  }

  v6 = [*(v3 + 136) hasValueForKey:@"Authorized" atKeyPath:a2];
  v7 = [*(v3 + 136) hasValueForKey:@"Authorization" atKeyPath:a2];
  if (v6 && (v7 & 1) == 0)
  {
    if ([*(v3 + 136) BOOLForKey:@"Authorized" atKeyPath:a2 defaultValue:0])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration AuthMigrate: Y => Always, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v9 = 4;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v10 = off_1025D47A8;
      v9 = 1;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        v9 = 1;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration AuthMigrate: N => Never, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    if (v4)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration AuthMigrate: Authorization mask already available, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#AuthDatabaseMigration AuthMigrate: Imputing default supported authorization mask, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      [*(v3 + 136) setInt:7 forKey:@"SupportedAuthorizationMask" atKeyPath:a2];
    }

    if ((sub_10078B250(v3, a2, v9, 0, 0, 1, 1) & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthDatabaseMigration Client missing for authorization update, but didn't we just create it?, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2114;
        v39 = a2;
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#AuthDatabaseMigration Client missing for authorization update, but didn't we just create it?", "{msg%{public}.0s:#AuthDatabaseMigration Client missing for authorization update, but didn't we just create it?, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  [*(v3 + 136) removeValueForKey:@"Authorized" atKeyPath:a2];
  if (([*(v3 + 136) hasValueForKey:@"RemoteUsage" atKeyPath:a2] & 1) == 0)
  {
    v15 = +[NSMutableDictionary dictionary];
    v16 = 32;
    v17 = &qword_101C8D448;
    do
    {
      v34 = 0;
      *buf = 0;
      sub_10004F9C8(*(v17 - 1), buf, &v34);
      v32 = 0;
      v33 = 0;
      sub_10004F9C8(*v17, &v33, &v32);
      v18 = *buf;
      [*(v3 + 136) doubleForKey:*buf atKeyPath:a2 defaultValue:-1.0];
      if (v19 != -1.0)
      {
        v20 = [NSNumber numberWithDouble:?];
        [v15 setObject:v20 forKeyedSubscript:v33];
        [*(v3 + 136) removeValueForKey:v18 atKeyPath:a2];
      }

      v21 = v34;
      [*(v3 + 136) doubleForKey:v34 atKeyPath:a2 defaultValue:-1.0];
      if (v22 != -1.0)
      {
        v23 = [NSNumber numberWithDouble:?];
        [v15 setObject:v23 forKeyedSubscript:v32];
        [*(v3 + 136) removeValueForKey:v21 atKeyPath:a2];
      }

      v17 += 2;
      v16 -= 16;
    }

    while (v16);
    if ([v15 count])
    {
      [*(v3 + 136) setDictionary:v15 forKey:@"RemoteUsage" atKeyPath:a2];
    }
  }

  if ([a2 website])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v24 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(v3 + 136) readonlyStoreAtKeyPath:a2];
      *buf = 68289538;
      *&buf[4] = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2114;
      v39 = a2;
      v40 = 2114;
      v41 = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthDatabaseMigration found website. Removing from database, client:%{public, location:escape_only}@, dictionary:%{public, location:escape_only}@}", buf, 0x26u);
    }

    [*(v3 + 136) removeDictionaryAtKeyPath:a2];
  }

  v26 = [*(v3 + 136) hasValueForKey:@"Registered" atKeyPath:a2];
  v27 = [*(v3 + 136) hasValueForKey:@"Authorization" atKeyPath:a2];
  v28 = [*(v3 + 136) hasValueForKey:@"SupportedAuthorizationMask" atKeyPath:a2];
  v29 = [*(v3 + 136) isKeyPathRegisteredSystemService:a2];
  v30 = *(v3 + 136);
  if (v27 & 1) != 0 || (v26 & v28 & 1) != 0 || (v29)
  {
    [v30 removeValueForKey:@"SuppressShowingInSettings" atKeyPath:a2];
    return [*(v3 + 136) setBool:1 forKey:@"Registered" atKeyPath:a2];
  }

  else
  {
    [v30 setBool:1 forKey:@"SuppressShowingInSettings" atKeyPath:a2];
    return [*(v3 + 136) removeValueForKey:@"Registered" atKeyPath:a2];
  }
}

uint64_t sub_10078B250(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  if (a5)
  {
    v11 = sub_100033370(a1, a2);
  }

  else
  {
    v11 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
    result = [v11 isValidCKP];
    if (!result)
    {
      return result;
    }
  }

  if ([v11 zoneId])
  {
    if (([*(a1 + 136) dictionaryExistsAtKeyPath:v11] & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v11;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Zone not found - adding zone under client., Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      result = os_signpost_enabled(off_1025D47A8);
      if (result)
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v11;
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Zone not found - adding zone under client.", "{msg%{public}.0s:Zone not found - adding zone under client., Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        return 0;
      }

      return result;
    }
  }

  else if ([v11 website] && (objc_msgSend(*(a1 + 136), "dictionaryExistsAtKeyPath:", v11) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:website not found - added website subIdentity under client., Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  v16 = [*(a1 + 136) hasValueForKey:@"Authorization" atKeyPath:v11];
  v17 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v11 defaultValue:0];
  v18 = [*(a1 + 136) intForKey:? atKeyPath:? defaultValue:?];
  v48 = v17;
  if (v17 != a3)
  {
    sub_1000F7D18(a1, v11, 0);
    if (a7)
    {
      sub_10077A7A0(a1, v11);
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v19 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68291330;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = v11;
    v59 = 1026;
    *v60 = v17;
    *&v60[4] = 2050;
    *&v60[6] = a3;
    v61 = 1026;
    v62 = v18;
    v63 = 1026;
    v64 = a4;
    v65 = 1026;
    v66 = a7;
    v67 = 1026;
    v68 = a6;
    v69 = 1026;
    v70 = v17 != a3;
    v71 = 1026;
    v72 = v16;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:update client authorization mask, Client:%{public, location:escape_only}@, old:%{public}d, new:%{public}lu, oldCC:%{public}d, newCC:%{public}d, localAuthorizationChange:%{public}d, mayIncreaseAuth:%{public}hhd, authStateHasChanged:%{public}hhd, hasAuth:%{public}hhd}", buf, 0x50u);
  }

  if (![v11 zoneId] && !objc_msgSend(v11, "website"))
  {
    if (a3)
    {
      v22 = [*(a1 + 136) intForKey:? atKeyPath:? defaultValue:?];
      if ((a3 & ~v22) != 0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v23 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349570;
          *&buf[4] = a3;
          *&buf[12] = 2114;
          *&buf[14] = v11;
          *&buf[22] = 1026;
          *&buf[24] = v22;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "#warning New authMask %{public}lu for client %{public}@ implicitly extends its supported mask (%{public}d) until next connection & slide", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v52 = 134349570;
          v53 = a3;
          v54 = 2114;
          v55 = v11;
          v56 = 1026;
          v57 = v22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 0, "#warning New authMask %{public}lu for client %{public}@ implicitly extends its supported mask (%{public}d) until next connection & slide", &v52, 28);
          v47 = v46;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLClientManager::updateStaticAuthorizationMaskForClientWithCompensation(CLClientKeyPath *, CLLocationDictionaryUtilitiesAuthorizationMask, CLClientCorrectiveCompensation, BOOL, BOOL, BOOL)", "%s\n", v46);
          if (v47 != buf)
          {
            free(v47);
          }
        }

        v22 = (v22 | a3);
      }

      [*(a1 + 136) setInt:v22 forKey:@"SupportedAuthorizationMask" atKeyPath:v11];
      if (a3 != 2)
      {
        sub_100791C88(a1, v11, 1, a3 == 4, a7);
      }

      goto LABEL_29;
    }

    sub_100791C88(a1, v11, 1, 0, a7);
LABEL_47:
    v24 = [*(a1 + 136) isKeyPathRegisteredSystemService:v11];
    v25 = v24;
    if (v17)
    {
      if (v24)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v26 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v11;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#ClearingAuthorization for System Service!, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v27 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v11;
          _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#ClearingAuthorization for System Service!", "{msg%{public}.0s:#ClearingAuthorization for System Service!, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        goto LABEL_65;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v31 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v59 = 1026;
      *v60 = v17;
      v29 = "{msg%{public}.0s:#ClearingAuthorization updateStaticAuthorizationMask setting to not-determined, client:%{public, location:escape_only}@, oldAuth:%{public}d}";
      v30 = v31;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v28 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v59 = 1026;
      *v60 = v25;
      v29 = "{msg%{public}.0s:#ClearingAuthorization updateStaticAuthorizationMask setting to not-determined, but it's already set to not-determined., Client:%{public, location:escape_only}@, SystemService:%{public}hhd}";
      v30 = v28;
    }

    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, v29, buf, 0x22u);
LABEL_65:
    [*(a1 + 136) removeValueForKey:@"Authorization" atKeyPath:v11];
    v20 = 0;
    goto LABEL_66;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

LABEL_29:
  if (v48 >= a3 || (v20 = a3, a6))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v21 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v59 = 2050;
      *v60 = a3;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:setting authorization value, Client:%{public, location:escape_only}@, newAuth:%{public}lu}", buf, 0x26u);
    }

    [*(a1 + 136) setInt:a3 forKey:@"Authorization" atKeyPath:v11];
    v20 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v11 defaultValue:0];
  }

LABEL_66:
  if (v18 >= a4)
  {
    v32 = 1;
  }

  else
  {
    v32 = a6;
  }

  if (a4 && v32)
  {
    [*(a1 + 136) setInt:a4 forKey:@"CorrectiveCompensationEnabled" atKeyPath:v11];
  }

  v33 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v11 defaultValue:0];
  if (v20 != 2 && v33)
  {
    sub_10077A3D0(a1, 1, v11, a7);
  }

  if (a4)
  {
    v34 = a4;
  }

  else
  {
    v34 = v18;
  }

  if ((v20 & 6) == 0 || v34 == 2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v39 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289794;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v11;
      v59 = 2050;
      *v60 = v20;
      *&v60[8] = 1026;
      *&v60[10] = v34;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical vhAccessAllowedTime deleted during updateStaticAuthMask, Client:%{public, location:escape_only}@, newMask:%{public}lu, ccForVisitHistory:%{public}d}", buf, 0x2Cu);
    }

    [*(a1 + 136) removeValueForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:v11];
  }

  else
  {
    v35 = [*(a1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:v11 defaultValue:0] == 3;
    [*(a1 + 136) doubleForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:v11 defaultValue:0.0];
    if (v36 == 0.0 && v35)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v38 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v11;
        v59 = 2050;
        *v60 = v20;
        *&v60[8] = 1026;
        *&v60[10] = v34;
        _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical setting vhAccessAllowedTime during updateStaticAuthMask, Client:%{public, location:escape_only}@, newMask:%{public}lu, ccForVisitHistory:%{public}d}", buf, 0x2Cu);
      }

      [*(a1 + 136) setDouble:@"VisitHistoryAccessAllowedTime" forKey:v11 atKeyPath:CFAbsoluteTimeGetCurrent()];
    }
  }

  if ([*(a1 + 136) BOOLForKey:@"IsAppClip" atKeyPath:v11 defaultValue:0])
  {
    if (v20 == 2)
    {
      TMGetKernelMonotonicClock();
      v41 = v40;
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v42 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v11;
        v59 = 2050;
        *v60 = v41;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting registration time for #appclip, Client:%{public, location:escape_only}@, registrationTime:%{public}f}", buf, 0x26u);
      }

      [*(a1 + 136) setDouble:@"AuthorizationRegisterTime" forKey:v11 atKeyPath:v41];
      goto LABEL_106;
    }

    [*(a1 + 136) removeValueForKey:@"AuthorizationRegisterTime" atKeyPath:v11];
  }

  if ((v20 & 6) == 0)
  {
    [*(a1 + 136) removeValueForKey:@"ProvisionalMonitoring" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"ConsumptionPeriodBegin" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"NextConsumptionThresholdScore" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"NextNextConsumptionThresholdScore" atKeyPath:v11];
    if (v20 == 1)
    {
      [*(a1 + 136) removeValueForKey:@"TemporaryAuthorization" atKeyPath:v11];
      [*(a1 + 136) removeValueForKey:@"LocationButtonUseMode" atKeyPath:v11];
    }

    else
    {
      sub_100791ACC(a1, v11, 1, a7);
    }
  }

LABEL_106:
  if (([*(a1 + 136) isKeyPathRegisteredSystemService:v11] & 1) == 0 && !objc_msgSend(v11, "subIdentityId"))
  {
    v43 = *(a1 + 136);
    if (v20 == 4)
    {
      if (([v43 hasValueForKey:@"ConsumptionPeriodBegin" atKeyPath:v11] & 1) == 0)
      {
        [*(a1 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:v11 atKeyPath:CFAbsoluteTimeGetCurrent()];
      }

      if (([*(a1 + 136) hasValueForKey:@"NextConsumptionThresholdScore" atKeyPath:v11] & 1) == 0)
      {
        [*(a1 + 136) setInt:0 forKey:@"NextConsumptionThresholdScore" atKeyPath:v11];
      }

      goto LABEL_115;
    }

    [v43 removeValueForKey:@"ConsumptionPeriodBegin" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"NextConsumptionThresholdScore" atKeyPath:v11];
    [*(a1 + 136) removeValueForKey:@"NextNextConsumptionThresholdScore" atKeyPath:v11];
  }

  if (v20)
  {
LABEL_115:
    [*(a1 + 136) removeValueForKey:@"AuthorizationPromptOptionTypeNegative" atKeyPath:v11];
  }

  if (v18 != a4 && a4 != 0 || v48 != a3)
  {
    if (a7)
    {
      if (![v11 website])
      {
        sub_10000EC00(__p, "AuthorizationChange");
        sub_10077A934(a1, v11, __p);
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  [*(a1 + 136) persist];
  sub_10000EC00(buf, "");
  sub_100018918(a1, v11, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  return 1;
}

void sub_10078C0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078C12C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Running #AuthDatabaseMigration_9", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930D70();
  }

  v3 = *(a1 + 136);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10078C290;
  v6[3] = &unk_10246FC30;
  v6[4] = a1;
  [v3 iterateAllAnchorKeyPathsWithBlock:v6];
  sub_10077D10C(a1, v4);
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Finished #AuthDatabaseMigration_9", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930E4C();
  }
}

id sub_10078C290(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if ([a2 executablePath])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return [*(v3 + 136) removeDictionaryAtKeyPath:{a2, v12, *v13, *&v13[8], *&v13[16], *&v13[24]}];
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2114;
    *&buf[20] = a2;
    v5 = "{msg%{public}.0s:Removing executable client from authdb, Client:%{public, location:escape_only}@}";
    v6 = buf;
    v7 = v4;
    v8 = 28;
LABEL_6:
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v5, v6, v8);
    return [*(v3 + 136) removeDictionaryAtKeyPath:{a2, v12, *v13, *&v13[8], *&v13[16], *&v13[24]}];
  }

  result = [a2 bundleId];
  if (result)
  {
    memset(buf, 0, 41);
    result = [*(v3 + 136) expensivelyGetIdentifyingInformation:buf forClient:a2];
    if (result)
    {
      v10 = [a2 bundleId];
      result = [v10 isEqual:*buf];
      if ((result & 1) == 0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v11 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          return [*(v3 + 136) removeDictionaryAtKeyPath:{a2, v12, *v13, *&v13[8], *&v13[16], *&v13[24]}];
        }

        v12 = 68289538;
        *v13 = 2082;
        *&v13[2] = "";
        *&v13[10] = 2114;
        *&v13[12] = [a2 bundleId];
        *&v13[20] = 2114;
        *&v13[22] = *buf;
        v5 = "{msg%{public}.0s:#Warning found alternative identity as top-level identity authdb. Removing client from authdb, ExistingClientBundleId:%{public, location:escape_only}@, CanonicalizedBundleId:%{public, location:escape_only}@}";
        v6 = &v12;
        v7 = v11;
        v8 = 38;
        goto LABEL_6;
      }
    }
  }

  return result;
}

void sub_10078C464(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Running #AuthDatabaseMigration_8", &v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101930F28();
  }

  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientAnchor:anchorType:](CLClientKeyPath, "clientKeyPathWithClientAnchor:anchorType:", @"/System/Library/PrivateFrameworks/AssistantServices.framework", 112)}];
  if ([v3 isValidCKP])
  {
    v4 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v3 defaultValue:0];
    v5 = [*(a1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v3 defaultValue:0];
    if (v4 == 2 && v5 == 0)
    {
      sub_10078C700(a1, v3, 1, @"Siri needs to be reset");
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v8 = "{msg%{public}.0s:#AuthDatabaseMigration_8 Siri authorization cleared}";
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v7 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v10 = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v8 = "{msg%{public}.0s:#AuthDatabaseMigration_8 Siri has a user-set authorization value; not clearing.}";
    }

    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x12u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

LABEL_22:
    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Finished #AuthDatabaseMigration_8", &v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931004();
    }
  }
}

id sub_10078C700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v7 isValidCKP];
  if (result)
  {
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
      v13 = 1026;
      v14 = a3;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearingAuthorization and corrective compensation, localAuthorizationChange:%{public}hhd, Client:%{public, location:escape_only}@, Reason:%{public, location:escape_only}@}", v10, 0x2Cu);
    }

    [*(a1 + 136) removeValueForKey:@"CorrectiveCompensationEnabled" atKeyPath:v7];
    return sub_10078B250(a1, v7, 0, 0, 0, 1, a3);
  }

  return result;
}

void sub_10078C854(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v49[0] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/Weather.framework" anchorType:112];
  v50[0] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.weather" anchorType:105];
  v49[1] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.Shoebox" anchorType:105];
  v50[1] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/PassKitCore.framework" anchorType:112];
  v49[2] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.Passbook" anchorType:105];
  v50[2] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/PassKitCore.framework" anchorType:112];
  v49[3] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/Parsec.framework" anchorType:112];
  v50[3] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/CoreParsec.framework" anchorType:112];
  v2 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:4];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
  if (v3)
  {
    v4 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v33 + 1) + 8 * v5);
        if ([*(a1 + 136) dictionaryExistsAtKeyPath:v6])
        {
          v7 = [(NSDictionary *)v2 objectForKeyedSubscript:v6];
          v8 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v6 defaultValue:0xFFFFFFFFLL];
          if ([*(a1 + 136) migrateDictionaryAtKeyPath:v6 toKeyPath:v7 forceMigrationOnAuthCollision:0])
          {
            v9 = sub_1007805C8(a1, v7);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v10 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289794;
              v40 = 0;
              v41 = 2082;
              v42 = "";
              v43 = 2114;
              v44 = v7;
              v45 = 1026;
              v46 = v8;
              v47 = 1026;
              v48 = v9;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthDatabaseMigration #authsync Calling on synchronizeAuthorizationChangeTypeAdd, ToKey:%{public, location:escape_only}@, FromAuth:%{public}d, CorrectiveCompensation:%{public}d}", buf, 0x28u);
            }

            sub_10000EC00(__p, "Migration-migrator");
            sub_10077A934(a1, v6, __p);
            if (v32 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
    }

    while (v3);
  }

  objc_autoreleasePoolPop(context);
  v11 = objc_autoreleasePoolPush();
  v38[0] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.webapp" anchorType:105];
  v38[1] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.AdSheet" anchorType:105];
  v38[2] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.AdSheetPad" anchorType:105];
  v38[3] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.AdSheetPhone" anchorType:105];
  v38[4] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.springboard" anchorType:105];
  v38[5] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"com.apple.CarPlayApp" anchorType:105];
  v38[6] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/Assistant.framework" anchorType:112];
  v38[7] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/AOSNotification.framework" anchorType:112];
  v38[8] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/LocationBundles/LocationPerformance.framework" anchorType:112];
  v38[9] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/LocationBundles/LocationdInternal.framework" anchorType:112];
  v38[10] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/iAdCore.framework" anchorType:112];
  v38[11] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/Applications/AdSheet.app" anchorType:112];
  v38[12] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Twitter.framework" anchorType:112];
  v38[13] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Weibo.framework" anchorType:112];
  v38[14] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Facebook.framework" anchorType:112];
  v38[15] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/SocialServices/Twitter.socialplugin" anchorType:112];
  v38[16] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/SocialServices/Weibo.socialplugin" anchorType:112];
  v38[17] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/SocialServices/Facebook.socialplugin" anchorType:112];
  v38[18] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Social.framework/XPCServices/com.apple.twitter.xpc" anchorType:112];
  v38[19] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Social.framework/XPCServices/com.apple.weibo.xpc" anchorType:112];
  v38[20] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/Frameworks/Social.framework/XPCServices/com.apple.facebook.xpc" anchorType:112];
  v38[21] = [CLClientKeyPath clientKeyPathWithClientAnchor:@"/System/Library/PrivateFrameworks/CoreSuggestions.framework" anchorType:112];
  v12 = [NSArray arrayWithObjects:v38 count:22];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12);
  if (v13)
  {
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        if ([*(a1 + 136) dictionaryExistsAtKeyPath:v16])
        {
          [*(a1 + 136) removeDictionaryAtKeyPath:v16];
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12);
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v11);
  v37[0] = @"AttributionCount";
  v37[1] = @"AuthorizationPurposeKey";
  v37[2] = @"AppSwitcherQuitAppTime";
  v37[3] = @"TrialPeriodBegin";
  v37[4] = @"TrialPeriodNeedsReprompt";
  v37[5] = @"ExistsInLSDatabase";
  v17 = [NSArray arrayWithObjects:v37 count:6];
  v18 = *(a1 + 136);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10078D14C;
  v26[3] = &unk_10246FD68;
  v26[4] = v17;
  v26[5] = a1;
  [v18 iterateAllAnchorKeyPathsWithBlock:v26];
  v19 = GEOGetDefaultInteger();
  v20 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithClientAnchor:anchorType:](CLClientKeyPath, "clientKeyPathWithClientAnchor:anchorType:", @"/System/Library/LocationBundles/AppGenius.bundle", 112)}];
  if ([v20 isValidCKP])
  {
    v21 = v19 == 2;
    v22 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v20 defaultValue:0] == 1 || v21;
    if ((v22 & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v40 = 0;
        v41 = 2082;
        v42 = "";
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting Improve Maps to Denied because Maps does not believe it is authorized.}", buf, 0x12u);
      }

      sub_10078B250(a1, v20, 1uLL, 0, 1, 1, 1);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v24 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning AppGenius is not registered during update-version migration; this may be acceptable if we have never set up system services on this device before.}", buf, 0x12u);
    }
  }
}

void sub_10078D128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10078D14C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078D1CC;
  v5[3] = &unk_10246FEF8;
  v5[4] = *(a1 + 32);
  v5[5] = v2;
  return [v3 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v5];
}

void sub_10078D1CC(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v13, v23, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(v4 + 136) removeValueForKey:*(*(&v13 + 1) + 8 * i) atKeyPath:a2];
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
    }

    while (v6);
  }

  v9 = [a2 bundlePath];
  if (v9)
  {
    v10 = v9;
    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      if (([v10 isEqualToString:{objc_msgSend(v10, "stringByResolvingSymlinksInPath")}] & 1) == 0)
      {
        [*(v4 + 136) removeDictionaryAtKeyPath:a2];
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v11 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          v18 = 0;
          v19 = 2082;
          v20 = "";
          v21 = 2114;
          v22 = v10;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthDatabaseMigration Clearing client with symlinks in its bundlePath, BundlePath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2114;
        v22 = v10;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthDatabaseMigration #warning bundle path does not exist on disk;  clearing., BundlePath:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      [*(v4 + 136) removeDictionaryAtKeyPath:a2];
    }
  }
}

void sub_10078D428(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Starting #AuthDatabaseMigration", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019310E0();
  }

  v7 = [CLAuthorizationDatabase authorizationDatabaseWithFilename:a2 withDataProtectionClass:2];
  *(a1 + 136) = v7;
  v8 = [(CLAuthorizationDatabase *)v7 migrationVersionNumber];
  v11 = v10;
  if (v10 < 7.0)
  {
    sub_10078A900(a1);
  }

  if (v11 < 8.1)
  {
    sub_10078C464(a1);
  }

  if (v11 < 9.0)
  {
    sub_10078C12C(a1);
  }

  if (v11 < 17.0)
  {
    v12 = 1;
  }

  else
  {
    v12 = a3;
  }

  if (v12 == 1)
  {
    sub_10078C854(a1);
  }

  sub_10001A3E8(v8, v9);
  sub_1007181FC(buf, "kern.bootsessionuuid");
  if (SBYTE3(v31) >= 0)
  {
    v13 = buf;
  }

  else
  {
    v13 = *buf;
  }

  v14 = [NSString stringWithUTF8String:v13];
  v16 = v14;
  if (SBYTE3(v31) < 0)
  {
    operator delete(*buf);
  }

  v26 = 0;
  v17 = sub_1000206B4(v14, v15);
  sub_1003045C8(v17, @"kLastBootSessionUUID", &v26);
  if (![(NSString *)v16 isEqualToString:v26])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v18 = off_1025D47A8;
    v19 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2114;
      v31 = v16;
      v32 = 2114;
      v33 = v26;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:First locationd run for boot session, bootSession:%{public, location:escape_only}@, lastSession:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v21 = sub_1000206B4(v19, v20);
    v22 = sub_1004FD43C(v21);
    v24 = sub_1000206B4(v22, v23);
    (*(*v24 + 944))(v24);
    goto LABEL_31;
  }

  if (v12)
  {
LABEL_31:
    [*(a1 + 136) performFullSystemServiceSetup];
  }

  [*(a1 + 136) completeMigration];
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v25 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "Finished #AuthDatabaseMigration", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019311C4();
  }
}

void sub_10078D75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10078D780(uint64_t a1, uint64_t a2)
{
  if (qword_102659F30 != -1)
  {
    sub_1019312A8();
  }

  return qword_102659F28;
}

void *sub_10078D7E0(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  if (qword_102659F30 != -1)
  {
    sub_1019312A8();
  }

  v3 = [qword_102659F28 objectForKey:a1];
  if (!v3)
  {
    return a1;
  }

  v4 = v3;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = [a1 UTF8String];
    v9 = 2082;
    v10 = [v4 UTF8String];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#authsync translating %{public}s to %{public}s", &v7, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019312BC(a1, v4);
  }

  return v4;
}

id sub_10078D91C(uint64_t a1)
{
  if (qword_102659F40 != -1)
  {
    sub_1019313D8();
  }

  result = [qword_102659F38 valueForKey:a1];
  if (!result)
  {
    return a1;
  }

  return result;
}

void sub_10078D96C(id a1)
{
  v2[0] = @"com.apple.NanoMaps";
  v2[1] = @"com.apple.weather.watchapp";
  v3[0] = @"com.apple.Maps";
  v3[1] = @"com.apple.weather";
  qword_102659F38 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = qword_102659F38;
}

CLCompanionSyncAuthObject *sub_10078DA00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_alloc_init(CLCompanionSyncAuthObject);
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  [(CLCompanionSyncAuthObject *)v8 setClientKey:[NSString stringWithUTF8String:v9]];
  [(CLCompanionSyncAuthObject *)v8 setClearClient:a3];
  [(CLCompanionSyncAuthObject *)v8 setOperationType:a4];
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      return v8;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    return v8;
  }

  v10 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", a2))}];
  if (![v10 isValidCKP] || (objc_msgSend(*(a1 + 136), "BOOLForKey:atKeyPath:defaultValue:", @"SuppressShowingInSettings", v10, 0) & 1) != 0)
  {
    return 0;
  }

  v11 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v10 defaultValue:0];
  if (v11)
  {
    [(CLCompanionSyncAuthObject *)v8 setAuthMask:v11];
  }

  v12 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v10 defaultValue:0];
  if (v12)
  {
    [(CLCompanionSyncAuthObject *)v8 setIncidentalUseMode:v12];
  }

  v13 = [*(a1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v10 defaultValue:0xFFFFFFFFLL];
  if ((v13 & 0x80000000) == 0)
  {
    [(CLCompanionSyncAuthObject *)v8 setCorrectiveCompensationMask:v13];
  }

  -[CLCompanionSyncAuthObject setAuthorizationUpgradeAvailable:](v8, "setAuthorizationUpgradeAvailable:", [*(a1 + 136) BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v10 defaultValue:1]);
  v14 = *(a1 + 136);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10078DCC4;
  v19[3] = &unk_10246FEF8;
  v19[4] = v8;
  v19[5] = a1;
  [v14 iterateIdentitiesRelatedToKeyPath:v10 withBlock:v19];
  v15 = [objc_msgSend(*(a1 + 136) arrayForKey:@"VectorClocks" atKeyPath:v10 defaultValue:{&off_1025543D8), "mutableCopy"}];
  v16 = +[NSMutableArray array];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10078DECC;
  v18[3] = &unk_1024701D8;
  v18[4] = v16;
  [v15 enumerateObjectsUsingBlock:v18];
  -[CLCompanionSyncAuthObject setVectorClocks:](v8, "setVectorClocks:", [v16 copy]);
  return v8;
}

id sub_10078DCC4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  result = [a2 subIdentityType];
  if (result == 122)
  {
    v6 = objc_alloc_init(CLCompanionSyncInterestZone);
    -[CLCompanionSyncInterestZone setZoneIdentifier:](v6, "setZoneIdentifier:", [a2 zoneId]);
    v7 = [*(v4 + 136) intForKey:@"Authorization" atKeyPath:a2 defaultValue:0];
    if (v7)
    {
      [(CLCompanionSyncInterestZone *)v6 setAuthMask:v7];
    }

    v8 = [*(v4 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:a2 defaultValue:0];
    if (v8)
    {
      [(CLCompanionSyncInterestZone *)v6 setCorrectiveCompensationMask:v8];
    }

    v9 = [*(v4 + 136) intForKey:@"Type" atKeyPath:a2 defaultValue:0];
    if (v9)
    {
      [(CLCompanionSyncInterestZone *)v6 setZoneType:v9];
    }

    [*(v4 + 136) doubleForKey:@"Latitude" atKeyPath:a2 defaultValue:-1.0];
    if (v10 != -1.0)
    {
      [(CLCompanionSyncInterestZone *)v6 setLatitude:?];
    }

    [*(v4 + 136) doubleForKey:@"Longitude" atKeyPath:a2 defaultValue:-1.0];
    if (v11 != -1.0)
    {
      [(CLCompanionSyncInterestZone *)v6 setLongitude:?];
    }

    [*(v4 + 136) doubleForKey:@"Radius" atKeyPath:a2 defaultValue:-1.0];
    if (v12 != -1.0)
    {
      [(CLCompanionSyncInterestZone *)v6 setRadius:?];
    }

    v13 = [*(v4 + 136) intForKey:@"ServiceMaskOperator" atKeyPath:a2 defaultValue:0xFFFFFFFFLL];
    if (v13 != -1)
    {
      [(CLCompanionSyncInterestZone *)v6 setServiceMaskOperator:v13];
    }

    v14 = [*(v4 + 136) intForKey:@"Provenance" atKeyPath:a2 defaultValue:0xFFFFFFFFLL];
    if (v14 != -1)
    {
      [(CLCompanionSyncInterestZone *)v6 setProvenance:v14];
    }

    v15 = *(a1 + 32);

    return [v15 addInterestZones:v6];
  }

  return result;
}

void sub_10078DECC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_alloc_init(CLAuthSyncVectorClock);
  [(CLAuthSyncVectorClock *)v6 setKey:sub_100920F1C(a3)];
  -[CLAuthSyncVectorClock setValue:](v6, "setValue:", [a2 unsignedIntValue]);
  [*(a1 + 32) addObject:v6];
}

id sub_10078DF5C(uint64_t a1, void *a2, char a3, char a4, char a5)
{
  v10 = objc_alloc_init(NSMutableArray);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10078E01C;
  v12[3] = &unk_102470200;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v12[4] = v10;
  v12[5] = a1;
  [a2 enumerateObjectsUsingBlock:v12];
  return v10;
}

void sub_10078E01C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (*(a1 + 48) == 1 && [a2 isEqualToString:@"RESET"])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      __p = 68289026;
      v16 = 2082;
      v17 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#authsync Ignoring RESET from ReunionSyncList during reunion sync}", &__p, 0x12u);
    }

    return;
  }

  if (([a2 isEqualToString:&stru_1025052F8] & 1) == 0 && !objc_msgSend(a2, "isEqualToString:", @"TOGGLE"))
  {
    v9 = [*(v4 + 136) intForKey:@"Authorization" atKeyPath:objc_msgSend(*(v4 + 136) defaultValue:{"registeredKeyPathForClientIdentifier:", +[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", a2)), 0}] == 0;
    v10 = [sub_10078D7E0(a2 *(a1 + 50))];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = "";
    }

    sub_10000EC00(&__p, v11);
    v12 = sub_10078DA00(v4, &__p, v9, 2);
    v13 = v12;
    if (v18 < 0)
    {
      operator delete(__p);
      if (v13)
      {
        goto LABEL_18;
      }
    }

    else if (v12)
    {
LABEL_18:
      [*(a1 + 32) addObject:v13];
      return;
    }

    v14 = objc_alloc_init(CLCompanionSyncAuthObject);
    [(CLCompanionSyncAuthObject *)v14 setClientKey:a2];
    [(CLCompanionSyncAuthObject *)v14 setOperationType:3];
    [*(a1 + 32) addObject:v14];
    return;
  }

  if ((*(a1 + 49) & 1) == 0)
  {
    v6 = sub_1000193E0();
    v7 = objc_alloc_init(CLCompanionSyncAuthObject);
    [(CLCompanionSyncAuthObject *)v7 setClientKey:sub_10078D7E0(a2, *(a1 + 50))];
    [(CLCompanionSyncAuthObject *)v7 setAuthMask:v6];
    [(CLCompanionSyncAuthObject *)v7 setOperationType:1];
    v8 = *(a1 + 32);

    [v8 addObject:v7];
  }
}

void sub_10078E2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10078E2DC(id *a1, void *a2, unsigned int a3, int a4, int a5)
{
  if (a5)
  {
    sub_10078E990(a1);
  }

  v43 = +[NSMutableSet set];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
  if (v5)
  {
    v6 = *v64;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v64 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = +[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", sub_10078D91C([*(*(&v63 + 1) + 8 * i) clientKey]));
        [v43 addObject:v8];
        [v43 addObject:{sub_100033370(a1, v8)}];
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    }

    while (v5);
  }

  if (a5)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43);
    if (v9)
    {
      v10 = *v60;
      do
      {
        for (j = 0; j != v9; j = j + 1)
        {
          if (*v60 != v10)
          {
            objc_enumerationMutation(v43);
          }

          v12 = *(*(&v59 + 1) + 8 * j);
          if (([v12 isValidCKP] & 1) == 0)
          {
            [a1[17] registerClient:v12 fromAuthSync:1];
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43);
      }

      while (v9);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    if (v45)
    {
      v13 = *v56;
      v41 = a3;
      v40 = @"VectorClocks";
      do
      {
        for (k = 0; k != v45; k = k + 1)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(a2);
          }

          v15 = *(*(&v55 + 1) + 8 * k);
          v16 = +[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", sub_10078D91C([v15 clientKey]));
          v17 = sub_100033370(a1, v16);
          if ([v15 hasPeerIndexInVectorClocks])
          {
            v18 = [v15 peerIndexInVectorClocks];
          }

          else
          {
            v18 = 0;
          }

          v19 = sub_10078F050(a1, v17, a4 + 1);
          v20 = [v15 vectorClocks];
          if ([v20 count])
          {
            v21 = [objc_msgSend(v20 objectAtIndexedSubscript:{0), "value"}];
          }

          else
          {
            v21 = 0;
          }

          if ([v20 count] && v18 < objc_msgSend(v20, "count"))
          {
            v22 = [objc_msgSend(v20 objectAtIndexedSubscript:{v18), "value"}];
          }

          else
          {
            v22 = 0;
          }

          [v19 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber atIndexedSubscript:{"numberWithUnsignedInt:", v22), 0}];
          [v19 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber atIndexedSubscript:{"numberWithUnsignedInt:", v21), a3}];
          [a1[17] setArray:v19 forKey:@"VectorClocks" atKeyPath:v17];
          [a1[17] persist];
        }

        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      }

      while (v45);
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
  if (v37)
  {
    v39 = 0;
    v36 = *v52;
    do
    {
      for (m = 0; m != v37; m = m + 1)
      {
        if (*v52 != v36)
        {
          objc_enumerationMutation(a2);
        }

        v24 = *(*(&v51 + 1) + 8 * m);
        if ([v24 hasPeerIndexInVectorClocks])
        {
          v46 = [v24 peerIndexInVectorClocks];
        }

        else
        {
          v46 = 0;
        }

        sub_10000EC00(__p, [objc_msgSend(v24 "clientKey")]);
        v25 = [v24 authMask];
        v26 = [v24 correctiveCompensationMask];
        if ([v24 hasIncidentalUseMode])
        {
          v27 = [v24 incidentalUseMode];
          v39 = v27 >> 8;
          v28 = v27;
          v29 = dword_100000000;
        }

        else
        {
          v29 = 0;
          v28 = 0;
        }

        if ([v24 hasAuthorizationUpgradeAvailable])
        {
          v30 = [v24 authorizationUpgradeAvailable];
          v31 = 256;
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        v32 = [v24 clearClient];
        v40 = v40 & 0xFFFFFFFFFFFF0000 | [v24 suppressShowingInSettings] | 0x100;
        v41 = v30 | v31 | v41 & 0xFFFFFFFFFFFF0000;
        sub_10078F0DC(a1, __p, 0, v25, v26 | dword_100000000, v29 | v28 | (v39 << 8), v30 | v31, v32, v40, 1, [v24 vectorClocks], a3, v46, a4);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }

        sub_10000EC00(__p, [objc_msgSend(v24 "clientKey")]);
        sub_100790614(a1, __p, [v24 interestZones], a3, v46, a4);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    }

    while (v37);
  }

  if ((a5 & 1) == 0)
  {
    v33 = a1[17];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100790AF0;
    v48[3] = &unk_10246FD68;
    v48[4] = v43;
    v48[5] = a1;
    [v33 iterateAllAnchorKeyPathsWithBlock:v48];
  }

  return sub_100778254(a1);
}

void sub_10078E954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10078E990(uint64_t a1)
{
  if (*(a1 + 1128) == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v1 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "Skipping Reset, already in progress.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931860();
    }
  }

  else
  {
    sub_1007A2FA8();
    if ([*(a1 + 120) locationRestricted])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v3 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#warning location services settings are frozen by restrictions - resetting", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019313EC();
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "resetting and disconnecting all clients from daemon", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019314D0();
    }

    sub_10077387C(a1);
    sub_10001AF44(a1 + 752, *(a1 + 760));
    *(a1 + 752) = a1 + 760;
    *(a1 + 760) = 0u;
    sub_10001AF44(a1 + 776, *(a1 + 784));
    *(a1 + 776) = a1 + 784;
    *(a1 + 784) = 0u;
    sub_1007781D4(a1);
    [*(a1 + 136) performFullSystemServiceSetup];
    sub_100778254(a1);
    [*(a1 + 1112) removeAllObjects];
    [*(a1 + 1112) addObjectsFromArray:sub_1007A305C(a1)];
    [*(a1 + 128) setArray:*(a1 + 1112) forKey:@"ResetIdentifiers"];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "reset identifiers saved to settings", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019315B4();
    }

    *buf = 0;
    (*(*a1 + 144))(a1, buf, 0, 0xFFFFFFFFLL);
    *(a1 + 1128) = 1;
    [*(a1 + 256) setNextFireDelay:65.0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, CLAppResetChangedNotification, 0, 0, 0);
    sub_1001D2F14(a1);
    sub_100044F7C(a1);
    v23[0] = &__kCFBooleanTrue;
    v22[0] = @"IsResetEvent";
    v22[1] = @"EventSource";
    v7 = (a1 + 976);
    if (*(a1 + 999) < 0)
    {
      v7 = *v7;
    }

    v8 = [NSString stringWithUTF8String:v7];
    v22[2] = @"Enabled";
    v23[1] = v8;
    v23[2] = &__kCFBooleanFalse;
    v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    if (qword_1025D4890 != -1)
    {
      sub_10192E4F8();
    }

    v10 = qword_1025D4898;
    if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#resetClients #CoreAnalytics, Bigswitch Analytics:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    AnalyticsSendEvent();
    sub_10079373C(a1, v11);
    [*(a1 + 504) eraseAllData];
    sub_1007AEA8C(a1 + 464);
    sub_100565518(0, &v20, v12);
    v13 = std::string::append(&v20, "locScoreInfoReport", 0x12uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v13->__r_.__value_.__l + 2);
    *buf = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (buf[23] >= 0)
    {
      v15 = buf;
    }

    else
    {
      v15 = *buf;
    }

    v16 = [NSString stringWithUTF8String:v15];
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    v20.__r_.__value_.__r.__words[0] = 0;
    if (![+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2114;
        *&buf[20] = v20.__r_.__value_.__r.__words[0];
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Got error removing checkpoint file, Error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    sub_1007A084C(a1);
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v18 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Removed locscoreInfo, locScoreInfoReport and cleared consumption map.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931698();
    }

    if (_os_feature_enabled_impl())
    {
      [*(a1 + 568) eraseAllData];
      sub_1007AEA8C(a1 + 528);
      if (qword_1025D4790 != -1)
      {
        sub_10192DAA4();
      }

      v19 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Removed locationAttributionInterval and cleared consumption map for attribution.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193177C();
      }

      sub_100788CC8(a1);
    }
  }
}

void sub_10078F014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

id sub_10078F050(uint64_t a1, uint64_t a2, int a3)
{
  v4 = [objc_msgSend(*(a1 + 136) arrayForKey:@"VectorClocks" atKeyPath:a2 defaultValue:{&off_102554408), "mutableCopy"}];
  v5 = a3 - [v4 count];
  if (v5 >= 1)
  {
    v6 = v5 + 1;
    do
    {
      [v4 addObject:&off_10254EF18];
      --v6;
    }

    while (v6 > 1);
  }

  return v4;
}

void sub_10078F0DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, char a8, unint64_t a9, int a10, void *a11, unsigned __int8 a12, unsigned __int8 a13, int a14)
{
  if ((a10 - 1) < 2)
  {
    v19 = a2;
    v20 = sub_10001A3E8(a1, a2);
    v21 = (**v20)(v20);
    if (a10 == 2 && v21 != 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v41 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#authsync applyAuthorizationSyncMessage on Companion received an update message}", buf, 0x12u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v42 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v37 = "#authsync applyAuthorizationSyncMessage on Companion received an update message";
        v38 = "{msg%{public}.0s:#authsync applyAuthorizationSyncMessage on Companion received an update message}";
        v39 = v42;
        v40 = 18;
        goto LABEL_50;
      }

      return;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v23 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      if (*(v19 + 23) >= 0)
      {
        v24 = v19;
      }

      else
      {
        v24 = *v19;
      }

      *buf = 68289538;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v24;
      *&buf[28] = 1026;
      *&buf[30] = a10;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#authsync applyAuthorizationSyncMessage un-translated key, clientKey:%{public, location:escape_only}s, OperationType:%{public}d}", buf, 0x22u);
    }

    if (!std::string::compare(v19, ""))
    {
      sub_100791270(a1, a4);
    }

    if (*(v19 + 23) >= 0)
    {
      v25 = v19;
    }

    else
    {
      v25 = *v19;
    }

    v26 = sub_10078D91C([NSString stringWithUTF8String:v25]);
    sub_10000EC00(v112, [v26 UTF8String]);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v27 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v112;
      if (v113 < 0)
      {
        v28 = v112[0];
      }

      if ((a5 & 0x100000000) != 0)
      {
        v29 = a5;
      }

      else
      {
        v29 = -1;
      }

      *buf = 68290562;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      v30 = a9 & 1;
      if (((a9 >> 8) & 1) == 0)
      {
        v30 = 1;
      }

      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v28;
      *&buf[28] = 1026;
      *&buf[30] = a4;
      *&buf[34] = 1026;
      *&buf[36] = v29;
      *&buf[40] = 1026;
      *&buf[42] = a10;
      *v115 = 1026;
      *&v115[2] = v30;
      *v116 = 1026;
      *&v116[2] = a14;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync applyAuthorizationSyncMessage, clientKey:%{public, location:escape_only}s, remoteAuth:%{public}d, corrective:%{public}d, OperationType:%{public}d, suppressShowingInSettings:%{public}d, maxNumberOfPeerClocks:%{public}u}", buf, 0x3Au);
    }

    v31 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:v26];
    if (a8)
    {
      v32 = a1;
      v33 = [*(a1 + 136) registeredKeyPathForClientIdentifier:v31];
      if (a10 == 2)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
          v32 = a1;
        }

        v34 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v31;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync removing client; CLCompanionSyncAuthObject_CLSYChangeType_UPDATE, client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
          v32 = a1;
        }

        v50 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v31;
          _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync removing client as it is received with clear field set, client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v51 = [v33 isValidCKP] ^ 1;
        if (!a3)
        {
          LOBYTE(v51) = 1;
        }

        if ((v51 & 1) == 0)
        {
          v33 = [v33 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", a3), 122}];
        }
      }

      sub_10000EC00(__p, "ClientRemoved");
      sub_100777AC4(v32, v33, 0, __p);
      if (v111 < 0)
      {
        operator delete(__p[0]);
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v52 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v53 = v112;
        if (v113 < 0)
        {
          v53 = v112[0];
        }

        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v53;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#authsync received with clear to delete the auth on companion, clientKey:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v54 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v55 = v112;
        if (v113 < 0)
        {
          v55 = v112[0];
        }

        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v55;
        _os_signpost_emit_with_name_impl(dword_100000000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#authsync received with clear to delete the auth on companion", "{msg%{public}.0s:#authsync received with clear to delete the auth on companion, clientKey:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      goto LABEL_207;
    }

    if (!a4 && ((a9 >> 8) & a9 & 1) != 0)
    {
LABEL_207:
      if (v113 < 0)
      {
        operator delete(v112[0]);
      }

      return;
    }

    v43 = [*(a1 + 136) registeredKeyPathForClientIdentifier:v31];
    if (([v43 isValidCKP] & 1) == 0)
    {
      v43 = [*(a1 + 136) registerClient:v31 fromAuthSync:1];
    }

    sub_1000F7D18(a1, v43, 0);
    v90 = [a11 count];
    v93 = [*(a1 + 136) intForKey:@"Authorization" atKeyPath:v43 defaultValue:0];
    v44 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v43 defaultValue:0];
    v45 = [*(a1 + 136) BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v43 defaultValue:1];
    v46 = v45;
    if ((a5 & 0x100000000) != 0)
    {
      v47 = a5;
    }

    else
    {
      v47 = 0;
    }

    if ((a6 & dword_100000000) != 0)
    {
      v48 = a6;
    }

    else
    {
      v48 = v44;
    }

    v91 = v48;
    v92 = v47;
    if ((a7 & 0x100) != 0)
    {
      v49 = a7;
    }

    else
    {
      v49 = v45;
    }

    v94 = v49;
    if ([a11 count])
    {
      v96 = [objc_msgSend(a11 objectAtIndexedSubscript:{0), "value"}];
    }

    else
    {
      v96 = 0;
    }

    if ([a11 count] && objc_msgSend(a11, "count") > a13)
    {
      v95 = [objc_msgSend(a11 objectAtIndexedSubscript:{a13), "value"}];
    }

    else
    {
      v95 = 0;
    }

    v56 = sub_10078F050(a1, v43, a14 + 1);
    v57 = [objc_msgSend(v56 objectAtIndexedSubscript:{a12), "unsignedIntValue"}];
    v97 = [objc_msgSend(v56 objectAtIndexedSubscript:{0), "unsignedIntValue"}];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v58 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68292098;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v56;
      *&buf[28] = 2114;
      *&buf[30] = a11;
      *&buf[38] = 1026;
      *&buf[40] = a12;
      *&buf[44] = 1026;
      *v115 = a13;
      *&v115[4] = 1026;
      *v116 = v97;
      *&v116[4] = 1026;
      v117 = v95;
      v118 = 1026;
      v119 = v57;
      v120 = 1026;
      v121 = v96;
      v122 = 2050;
      v123 = v93;
      v124 = 2050;
      v125 = a4;
      v126 = 1026;
      v127 = v46;
      v128 = 1026;
      v129 = v94 & 1;
      _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync local vs peer, localVC:%{public, location:escape_only}@, remoteVC:%{public, location:escape_only}@, fromPeerIdx:%{public}u, toPeerIdx:%{public}u, localClockForSelf:%{public}u, remoteClockForSelf:%{public}u, localClockForPeer:%{public}u, remoteClockForPeer:%{public}u, localAuth:%{public, location:CLLocationDictionaryUtilitiesAuthorizationMask}lld, remoteAuth:%{public, location:CLLocationDictionaryUtilitiesAuthorizationMask}lld, localIsAuthorizationUpgradeAvailable:%{public}hhd, remoteIsAuthorizationUpgradeAvailable:%{public}hhd}", buf, 0x6Au);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v59 = off_1025D47A8;
    v60 = os_signpost_enabled(off_1025D47A8);
    if (v60)
    {
      *buf = 68292098;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v56;
      *&buf[28] = 2114;
      *&buf[30] = a11;
      *&buf[38] = 1026;
      *&buf[40] = a12;
      *&buf[44] = 1026;
      *v115 = a13;
      *&v115[4] = 1026;
      *v116 = v97;
      *&v116[4] = 1026;
      v117 = v95;
      v118 = 1026;
      v119 = v57;
      v120 = 1026;
      v121 = v96;
      v122 = 2050;
      v123 = v93;
      v124 = 2050;
      v125 = a4;
      v126 = 1026;
      v127 = v46;
      v128 = 1026;
      v129 = v94 & 1;
      _os_signpost_emit_with_name_impl(dword_100000000, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#authsync local vs peer", "{msg%{public}.0s:#authsync local vs peer, localVC:%{public, location:escape_only}@, remoteVC:%{public, location:escape_only}@, fromPeerIdx:%{public}u, toPeerIdx:%{public}u, localClockForSelf:%{public}u, remoteClockForSelf:%{public}u, localClockForPeer:%{public}u, remoteClockForPeer:%{public}u, localAuth:%{public, location:CLLocationDictionaryUtilitiesAuthorizationMask}lld, remoteAuth:%{public, location:CLLocationDictionaryUtilitiesAuthorizationMask}lld, localIsAuthorizationUpgradeAvailable:%{public}hhd, remoteIsAuthorizationUpgradeAvailable:%{public}hhd}", buf, 0x6Au);
    }

    if (v96 <= v57)
    {
      if (v96 < v57)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v63 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#authsync peer clock has gone backwards}", buf, 0x12u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v64 = off_1025D47A8;
        v60 = os_signpost_enabled(off_1025D47A8);
        if (v60)
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_signpost_emit_with_name_impl(dword_100000000, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#authsync peer clock has gone backwards", "{msg%{public}.0s:#authsync peer clock has gone backwards}", buf, 0x12u);
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v62 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#authsync peer clock has advanced}", buf, 0x12u);
      }

      [v56 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber atIndexedSubscript:{"numberWithUnsignedInt:", v96), a12}];
      [*(a1 + 136) setArray:v56 forKey:@"VectorClocks" atKeyPath:v43];
      v60 = [*(a1 + 136) persist];
    }

    v65 = a1;
    if (v97 != v95)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
        v65 = a1;
      }

      v66 = off_1025D47A8;
      v60 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG);
      if (v60)
      {
        *buf = 68289026;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#authsync local clock has changed with respect to peer}", buf, 0x12u);
      }
    }

    if (v90)
    {
LABEL_119:
      sub_1007AB040(v105, [*(v65 + 136) readonlyStoreAtKeyPath:v43]);
      sub_1007AB17C(v104, a4, v91, v94 & 1, v92, 0, 0);
      if (*v105 == *v104 && *&v105[4] == *&v104[4] && *&v105[20] == *&v104[20] && *&v105[28] == *&v104[28])
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v68 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync peer's auth capabilities haven't changed w.r.t to this device, so skipping this peer's capabilities.}", buf, 0x12u);
        }

        goto LABEL_207;
      }

      v69 = v97 == v95 || v57 == v96;
      v70 = !v69;
      v102 = *v104;
      v103 = *&v104[16];
      if (!v69)
      {
        *buf = *v105;
        *&buf[16] = *&v105[16];
        sub_1007AB22C(buf, v104);
        v102 = *buf;
        v103 = *&buf[16];
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
          v65 = a1;
        }

        v71 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v19 + 23) < 0)
          {
            v19 = *v19;
          }

          v72 = [(CLKeyValueStore *)sub_10079140C(&v102) dictionary];
          *buf = 68289794;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1026;
          *&buf[20] = a10;
          *&buf[24] = 2082;
          *&buf[26] = v19;
          *&buf[34] = 2114;
          *&buf[36] = v72;
          _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync auth capabilities have changed. Merging now., OperationType:%{public}d, clientKey:%{public, location:escape_only}s, result:%{public, location:escape_only}@}", buf, 0x2Cu);
        }
      }

      if (DWORD2(v102) == 1)
      {
        v73 = 3;
      }

      else if (v102 == -1)
      {
        v73 = 2;
      }

      else
      {
        v73 = 4 * (v102 == 1);
      }

      if (HIDWORD(v102) == 1)
      {
        v74 = 1;
      }

      else
      {
        v74 = 2;
      }

      if (v92)
      {
        v75 = v74;
      }

      else
      {
        v75 = 0;
      }

      sub_100791600(v65, v43, v73, v75, v67, 1, 0);
      if (v91)
      {
        v76 = 1;
        if (DWORD2(v102) != 1 && v102 == 1)
        {
          if (DWORD1(v102) == 1)
          {
            v77 = 3;
          }

          else
          {
            v77 = 1;
          }

          if (DWORD1(v102) == -1)
          {
            v76 = 2;
          }

          else
          {
            v76 = v77;
          }
        }

        sub_10077A3D0(v65, v76, v43, 0);
      }

      if (DWORD2(v102) == 1)
      {
        goto LABEL_164;
      }

      if (v102 == -1)
      {
        v78 = 0;
      }

      else
      {
        if (v102 == 1)
        {
LABEL_164:
          v78 = DWORD2(v102) == 0;
          goto LABEL_165;
        }

        v78 = 1;
      }

LABEL_165:
      sub_100791ACC(v65, v43, v78, 0);
      if (DWORD2(v102) == 1 || v102 == -1 || v102 == 1 && DWORD2(v102))
      {
        sub_100791C88(v65, v43, 1, 0, 0);
      }

      if (!v70)
      {
        goto LABEL_207;
      }

      sub_10000EC00(v100, "CapabilitiesConflictResolution");
      sub_10077A934(v65, v43, v100);
      if ((v101 & 0x80000000) == 0)
      {
        goto LABEL_207;
      }

      v79 = v100[0];
      goto LABEL_206;
    }

    sub_10001A3E8(v60, v61);
    v80 = sub_10001CF3C();
    if (v80 && ((v80 = [*(v65 + 136) BOOLForKey:@"SyncedAuthorizationDecisionOnGizmo" atKeyPath:v43 defaultValue:1], v93) ? (v82 = v93 == a4) : (v82 = 1), v82 ? (v83 = 1) : (v83 = v80), (v83 & 1) == 0))
    {
      v87 = sub_1007805C8(v65, v43);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
        v65 = a1;
      }

      v88 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v19 + 23) >= 0)
        {
          v89 = v19;
        }

        else
        {
          v89 = *v19;
        }

        *buf = 68290306;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = a10;
        *&buf[24] = 2082;
        *&buf[26] = v89;
        *&buf[34] = 1026;
        *&buf[36] = v93;
        *&buf[40] = 1026;
        *&buf[42] = a4;
        *v115 = 1026;
        *&v115[2] = v87;
        _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync pre-luckier #conflict applyAuthorizationSyncMessage change denied due to SyncedAuthorizationDecisionOnGizmo=false, OperationType:%{public}d, clientKey:%{public, location:escape_only}s, localAuth:%{public}d, remoteAuth:%{public}d, correctiveComp:%{public}d}", buf, 0x34u);
      }

      sub_10000EC00(v108, "AuthorizationConflictResolutionDuringAdd");
      sub_10077A934(v65, v43, v108);
      if ((v109 & 0x80000000) == 0)
      {
        goto LABEL_207;
      }

      v79 = v108[0];
    }

    else
    {
      v84 = sub_10001A3E8(v80, v81);
      if (!(**v84)(v84) || !v93 || v93 == a4)
      {
        goto LABEL_119;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
        v65 = a1;
      }

      v85 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v19 + 23) >= 0)
        {
          v86 = v19;
        }

        else
        {
          v86 = *v19;
        }

        *buf = 68290050;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = a10;
        *&buf[24] = 2082;
        *&buf[26] = v86;
        *&buf[34] = 1026;
        *&buf[36] = v93;
        *&buf[40] = 1026;
        *&buf[42] = a4;
        _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync pre-luckier #conflict applyAuthorizationSyncMessage denied due to an auth conflict, OperationType:%{public}d, clientKey:%{public, location:escape_only}s, localAuth:%{public}d, remoteAuth:%{public}d}", buf, 0x2Eu);
      }

      sub_10000EC00(v106, "ClientRemoved-AuthConflictResolution");
      sub_100777AC4(v65, v43, 1, v106);
      if (v107 < 0)
      {
        operator delete(v106[0]);
      }

      sub_10000EC00(buf, "");
      sub_100018918(v65, v43, buf);
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_207;
      }

      v79 = *buf;
    }

LABEL_206:
    operator delete(v79);
    goto LABEL_207;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v35 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = a10;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:NotSuported #authSync applyAuthorizationSyncMessage applies syncMessage of operationTye Add or Update, Received OperationType:%{public}d}", buf, 0x18u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v36 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *&buf[20] = a10;
    v37 = "NotSuported #authSync applyAuthorizationSyncMessage applies syncMessage of operationTye Add or Update";
    v38 = "{msg%{public}.0s:NotSuported #authSync applyAuthorizationSyncMessage applies syncMessage of operationTye Add or Update, Received OperationType:%{public}d}";
    v39 = v36;
    v40 = 24;
LABEL_50:
    _os_signpost_emit_with_name_impl(dword_100000000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v37, v38, buf, v40);
  }
}

void sub_100790538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (*(v53 - 225) < 0)
  {
    operator delete(*(v53 - 248));
  }

  _Unwind_Resume(exception_object);
}

id sub_100790614(id result, uint64_t a2, void *a3, unsigned __int8 a4, unsigned __int8 a5, int a6)
{
  *v33 = result;
  if (a3)
  {
    v25 = sub_100791E4C(a2);
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(a3);
    v31 = result;
    if (result)
    {
      v32 = 0;
      v30 = MEMORY[0];
      do
      {
        v9 = 0;
        do
        {
          if (MEMORY[0] != v30)
          {
            objc_enumerationMutation(a3);
          }

          v10 = *(8 * v9);
          if ([v10 provenance] == 1)
          {
            v41[0] = @"Type";
            v42[0] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 zoneType]);
            v41[1] = @"Latitude";
            [v10 latitude];
            v42[1] = [NSNumber numberWithDouble:?];
            v41[2] = @"Longitude";
            [v10 longitude];
            v42[2] = [NSNumber numberWithDouble:?];
            v41[3] = @"Radius";
            [v10 radius];
            v42[3] = [NSNumber numberWithDouble:?];
            v41[4] = @"ServiceMaskOperator";
            v42[4] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 serviceMaskOperator]);
            v41[5] = @"Provenance";
            v42[5] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 provenance]);
            v11 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:6];
            sub_10000EC00(&__p, [objc_msgSend(v10 "zoneIdentifier")]);
            sub_100791FC0(*v33, a2, &__p, v11, 2, v25);
            v13 = v12;
            if (SBYTE3(v38) < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            v13 = 0;
          }

          if (([v10 hasAuthMask] & 1) != 0 || objc_msgSend(v10, "hasCorrectiveCompensationMask"))
          {
            if ([v10 hasCorrectiveCompensationMask])
            {
              v14 = [v10 correctiveCompensationMask];
              v32 = v14 >> 8;
              v15 = v14;
              v16 = dword_100000000;
            }

            else
            {
              v16 = 0;
              v15 = 0;
            }

            v17 = [v10 zoneIdentifier];
            v19 = v17;
            if ((v13 & 1) == 0)
            {
              v20 = sub_10001A3E8(v17, v18);
              if ((**v20)(v20))
              {
                v21 = @"clpla_companion_";
              }

              else
              {
                v21 = @"clpla_gizmo_";
              }

              v19 = [(__CFString *)v21 stringByAppendingString:v19];
            }

            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v22 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a2 + 23) >= 0)
              {
                v23 = a2;
              }

              else
              {
                v23 = *a2;
              }

              v24 = [v19 UTF8String];
              __p = 68289538;
              v35 = 2082;
              v36 = "";
              v37 = 2082;
              v38 = v23;
              v39 = 2082;
              v40 = v24;
              _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Applying auth for SyncedZone., Client:%{public, location:escape_only}s, ZoneId:%{public, location:escape_only}s}", &__p, 0x26u);
            }

            v7 &= 0xFFFFFFFFFFFF0000;
            v6 &= 0xFFFFFFFFFFFF0000;
            sub_10078F0DC(*v33, a2, [v19 UTF8String], objc_msgSend(v10, "authMask"), v16 | v15 | (v32 << 8), 0, v7, objc_msgSend(v10, "clearClient"), v6, 1, +[NSMutableArray array](NSMutableArray, "array"), a4, a5, a6);
          }

          v9 = v9 + 1;
        }

        while (v31 != v9);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(a3);
        v31 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_100790ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100790AF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    if ([a2 isAuthLimited])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        __p = 68289282;
        v11 = 2082;
        v12 = "";
        v13 = 2114;
        v14 = a2;
        v5 = "{msg%{public}.0s:#authsync applying fullSyncMessages; skip deletion of auth limited client, client:%{public, location:escape_only}@}";
        v6 = v4;
        v7 = OS_LOG_TYPE_INFO;
LABEL_12:
        _os_log_impl(dword_100000000, v6, v7, v5, &__p, 0x1Cu);
      }
    }

    else if ([*(v3 + 136) isKeyPathRegisteredSystemService:a2])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289282;
        v11 = 2082;
        v12 = "";
        v13 = 2114;
        v14 = a2;
        v5 = "{msg%{public}.0s:#authsync applying fullSyncMessages; skip deletion of system service client, client:%{public, location:escape_only}@}";
        v6 = v8;
        v7 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_12;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        __p = 68289282;
        v11 = 2082;
        v12 = "";
        v13 = 2114;
        v14 = a2;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#authsync applying fullSyncMessages; deleting client, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
      }

      sub_10000EC00(&__p, [objc_msgSend(a2 "legacyClientKey")]);
      sub_100790D50(v3, &__p);
      if (SBYTE3(v14) < 0)
      {
        operator delete(__p);
      }
    }
  }
}

void sub_100790D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100790D50(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [sub_10078D91C(+[NSString stringWithUTF8String:](NSString stringWithUTF8String:{v4)), "UTF8String"}];
  sub_10000EC00(v12, v5);
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v12;
    if (v13 < 0)
    {
      v7 = v12[0];
    }

    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync applyAuthorizationSyncMessageTypeDelete, clientKey:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v8))}];
  sub_10000EC00(__p, "ClientRemoved");
  sub_100777AC4(a1, v9, 0, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001D2F14(a1);
  sub_100044F7C(a1);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_100790F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100790F40(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [objc_msgSend(*(v2 + 1592) objectForKey:{*(a1 + 32)), "copy"}];
  if (v3)
  {
    v4 = v3;
    [*(v2 + 1592) removeObjectForKey:*(a1 + 32)];
    v5 = [objc_msgSend(*(a1 + 32) "legacyClientKey")];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = "";
    }

    sub_10000EC00(v10, v6);
    v7 = [objc_msgSend(*(a1 + 32) "zoneId")];
    sub_10000EC00(__p, [v4 UTF8String]);
    sub_10079104C(v2, v10, v7, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_100791014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

CLCompanionSyncAuthObject *sub_10079104C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  result = +[CLAuthSyncManager isSupported]_0(a1, a2);
  if (result)
  {
    result = sub_10078DA00(a1, a2, 0, 1);
    if (result)
    {
      v9 = result;
      if (a3)
      {
        v10 = [(CLCompanionSyncAuthObject *)result interestZones];
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10);
        if (v11)
        {
          v12 = v11;
          v13 = MEMORY[0];
LABEL_6:
          v14 = 0;
          while (1)
          {
            if (MEMORY[0] != v13)
            {
              objc_enumerationMutation(v10);
            }

            if ([objc_msgSend(*(8 * v14) "zoneIdentifier")])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10);
              if (v12)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a4 + 23) >= 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = *a4;
        }

        v17 = [(CLCompanionSyncAuthObject *)v9 description];
        *buf = 68289538;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2082;
        v25 = v16;
        v26 = 2114;
        v27 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync addObject, syncReason:%{public, location:escape_only}s, syncObject:%{public, location:escape_only}@}", buf, 0x26u);
      }

      v18 = *(a1 + 1560);
      if (*(a4 + 23) >= 0)
      {
        v19 = a4;
      }

      else
      {
        v19 = *a4;
      }

      return [v18 addObject:v9 withSyncSessionReason:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v19)}];
    }
  }

  return result;
}

void sub_100791270(uint64_t a1, int a2)
{
  sub_10001CAF4(&__p);
  v5 = a2 == 1;
  sub_1000434C8(__p, @"LocationServicesEnabledIn8.0", &v5);
  if (*v7)
  {
    sub_100008080(*v7);
  }

  sub_10001CAF4(&__p);
  sub_10054B380(__p);
  if (*v7)
  {
    sub_100008080(*v7);
  }

  sub_10000EC00(&__p, "com.apple.locationd.authsync");
  sub_100773AF4(a1, &__p, 0);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289282;
    *v7 = 2082;
    *&v7[2] = "";
    v8 = 1026;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:authsync: Updating location services, newState:%{public}d}", &__p, 0x18u);
  }
}

void sub_1007913D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CLKeyValueStore *sub_10079140C(_DWORD *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  if (a1[2] == 1)
  {
    v3 = 4;
  }

  else if (*a1 == -1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (*a1 == 1);
  }

  [v2 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", v3), @"Authorization"}];
  if (a1[2] == 1 || *a1 != 1)
  {
    v6 = 1;
  }

  else
  {
    v4 = a1[1];
    if (v4 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (v4 == -1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v6), @"IncidentalUseMode"}];
  v7 = a1[2];
  if (v7 == 1)
  {
    goto LABEL_18;
  }

  if (*a1 == -1)
  {
    v8 = 0;
  }

  else
  {
    if (*a1 == 1)
    {
LABEL_18:
      v8 = v7 == 0;
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_19:
  [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", v8), @"AuthorizationUpgradeAvailable"}];
  if (a1[3] == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v9), @"CorrectiveCompensationEnabled"}];
  [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", 0), @"VisitHistoryAccess"}];
  [v2 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", 0), @"LearnedRoutesAccess"}];
  [v2 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", 0), @"SupportedAuthorizationMask"}];

  return [CLKeyValueStore storeWithDictionary:v2];
}

void sub_100791600(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12 = sub_100033370(a1, a2);
  [*(a1 + 224) setNextFireDelay:0.3];
  if ([*(a1 + 120) locationRestricted])
  {
    v13 = a7 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "location services settings are frozen by restrictions - denying %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931944();
    }

    return;
  }

  v14 = "Never(because_invalid)";
  v15 = 1;
  if (a3 <= 2)
  {
    v16 = "Never";
    if (a3 != 2)
    {
      v16 = "Never(because_invalid)";
    }

    if (a3)
    {
      v14 = v16;
    }

    else
    {
      v14 = "Invalid(Unset)";
    }

    v15 = a3 != 0;
    goto LABEL_29;
  }

  if (a3 == 3)
  {
LABEL_27:
    v14 = "Always";
    a3 = 3;
    v15 = 4;
    goto LABEL_29;
  }

  if (a3 == 4)
  {
    if (!sub_10001CF3C() || ![*(a1 + 136) isKeyPathRegisteredSystemService:v12])
    {
      v14 = "WhenInUse";
      a3 = 4;
      v15 = 2;
      goto LABEL_29;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v32 = 2114;
      v33 = v12;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Adjusting authorization for systemService, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    goto LABEL_27;
  }

LABEL_29:
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v19 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a3;
    v32 = 2082;
    v33 = v14;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Setting client: %{public}@ authorization to %{public}d (%{public}s)", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    *__p = 138543874;
    *&__p[4] = v12;
    v27 = 1026;
    v28 = a3;
    v29 = 2082;
    v30 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "Setting client: %{public}@ authorization to %{public}d (%{public}s)", __p, 28);
    v25 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::setClientAuthorization(CLClientKeyPath *, CLClientAuthorizationStatus, CLClientCorrectiveCompensation, const char *, BOOL, BOOL)", "%s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  if (*(a1 + 233) == 1)
  {
    v20 = [objc_msgSend(v12 "legacyClientKey")];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = "";
    }

    sub_10000EC00(buf, v21);
    v22 = [objc_msgSend(v12 "zoneId")];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = "";
    }

    sub_10000EC00(__p, v23);
    sub_100796A40(a1, buf, __p, 1, 0, 0, 3u, 1, *(a1 + 320), *(a1 + 328), 50.0, 1u, 0);
    if (SBYTE3(v30) < 0)
    {
      operator delete(*__p);
    }

    if (SBYTE3(v33) < 0)
    {
      operator delete(*buf);
    }

    *(a1 + 233) = 0;
    *(a1 + 320) = kCLLocationCoordinate2DInvalid;
  }

  sub_10078B250(a1, v12, v15, a4, 1, a6, a7);
  sub_1007A4B1C(a1, v12);
  sub_100044F7C(a1);
}

void sub_100791A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_100791ACC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = sub_1000184F4(a1, a2);
  v8 = [*(a1 + 136) BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v7 defaultValue:1];
  if (v8 == a3)
  {
    v10 = v8;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v10;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:ignoring updateAuthorizationUpgradeAvailableKey since newValue==currentValue, isAuthorizationUpgradeAvailable:%{public}hhd}", buf, 0x18u);
    }
  }

  else
  {
    v9 = *(a1 + 136);
    if (a3)
    {
      [v9 removeValueForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v7];
    }

    else
    {
      [v9 setBool:0 forKey:@"AuthorizationUpgradeAvailable" atKeyPath:v7];
    }

    [*(a1 + 136) persist];
    if (a4)
    {
      sub_10077A7A0(a1, v7);
      sub_10000EC00(__p, "AuthorizationUpgradeAvailableChange");
      sub_10077A934(a1, v7, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100791C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100791C88(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = sub_1000184F4(a1, a2);
  if ([v9 isAuthSharingSubIdentity])
  {
    v9 = [v9 anchorKeyPath];
  }

  v10 = *(a1 + 136);
  if (!a3)
  {
    [v10 setBool:1 forKey:@"ProvisionalMonitoring" atKeyPath:v9];
    [*(a1 + 136) setDouble:@"ProvisionalMonitoringBegin" forKey:v9 atKeyPath:CFAbsoluteTimeGetCurrent()];
    return [*(a1 + 136) persist];
  }

  [v10 removeValueForKey:@"ProvisionalMonitoring" atKeyPath:v9];
  [*(a1 + 136) removeValueForKey:@"ProvisionalMonitoringBegin" atKeyPath:v9];
  sub_100791ACC(a1, v9, 0, a5);
  v11 = *(a1 + 264);
  if (v11)
  {
    if (v9)
    {
      objc_msgSend_cppClientKey(v9);
      LODWORD(v9) = HIBYTE(v23);
      v12 = v22;
    }

    else
    {
      v12 = 0;
      __p = 0;
      v22 = 0;
      v23 = 0;
    }

    v13 = *(v11 + 23);
    if (v13 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = v11[1];
    }

    if ((v9 & 0x80u) == 0)
    {
      v12 = v9;
    }

    if (v14 == v12)
    {
      if (v13 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = *v11;
      }

      if ((v9 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v17 = memcmp(v15, p_p, v14) == 0;
      if ((v9 & 0x80) == 0)
      {
LABEL_25:
        if (v17)
        {
          if (a4)
          {
            v18 = *(a1 + 288);
            if (v18)
            {
              (*(v18 + 16))(v18, 0);

              *(a1 + 288) = 0;
            }
          }

          v19 = *(a1 + 264);
          *(a1 + 264) = 0;
          if (v19)
          {
            sub_10068024C(a1 + 264, v19);
          }

          *(a1 + 280) = 0;
        }

        return [*(a1 + 136) persist];
      }
    }

    else
    {
      v17 = 0;
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(__p);
    goto LABEL_25;
  }

  return [*(a1 + 136) persist];
}

CFTypeRef sub_100791E4C(std::string *a1)
{
  sub_1000EBF44(a1, v10);
  sub_10003B25C(v10);
  if (v19 >= 0)
  {
    v1 = &v18;
  }

  else
  {
    v1 = v18;
  }

  sub_10000EC00(__p, v1);
  if (v9 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = sub_100055734([NSString stringWithUTF8String:v2]);
  v4 = v3;
  if (v3)
  {
    v3 = CFBundleCreate(kCFAllocatorDefault, v3);
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  sub_10001A3E8(v3, v4);
  sub_10001CF3C();
  if (v5)
  {
    v6 = sub_1000565F4(v5);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  return v6;
}

void sub_100791FC0(uint64_t a1, uint64_t *a2, std::string *__str, void *a4, uint64_t a5, void *a6)
{
  if ((a5 - 3) <= 0xFFFFFFFD)
  {
    sub_101931CE4(a1, a2, __str);
  }

  v6 = a5;
  v8 = __str;
  memset(&v74, 0, sizeof(v74));
  memset(&v73, 0, sizeof(v73));
  if (a5 == 2)
  {
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      __str = __str->__r_.__value_.__r.__words[0];
    }

    v11 = [NSString stringWithUTF8String:__str];
    v13 = sub_10001A3E8(v11, v12);
    if ((**v13)(v13))
    {
      v14 = @"clpla_companion_";
    }

    else
    {
      v14 = @"clpla_gizmo_";
    }

    sub_100006044(&v74, [-[__CFString stringByAppendingString:](v14 stringByAppendingString:{v11), "UTF8String"}]);
    std::string::operator=(&v73, v8);
  }

  else
  {
    std::string::operator=(&v74, __str);
    if ((v8->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8->__r_.__value_.__r.__words[0];
    }

    v16 = [NSString stringWithUTF8String:v15];
    v18 = sub_10001A3E8(v16, v17);
    if ((**v18)(v18))
    {
      v19 = @"clpla_companion_";
    }

    else
    {
      v19 = @"clpla_gizmo_";
    }

    sub_100006044(&v73, [-[__CFString stringByAppendingString:](v19 stringByAppendingString:{v16), "UTF8String"}]);
  }

  if (*(a2 + 23) >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  v21 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v20))}];
  v22 = [v21 isValidCKP];
  if ((v22 & 1) == 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    v21 = [*(a1 + 136) registerClient:+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath fromAuthSync:{"clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v23)), 0}];
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v74;
  }

  else
  {
    v24 = v74.__r_.__value_.__r.__words[0];
  }

  v25 = [v21 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", v24), 122}];
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v73;
  }

  else
  {
    v26 = v73.__r_.__value_.__r.__words[0];
  }

  v27 = [v21 clientKeyPathWithReplacementSubIdentityId:+[NSString stringWithUTF8String:](NSString subIdentityType:{"stringWithUTF8String:", v26), 122}];
  sub_10000EC00(__p, "ClientRemoved");
  sub_100777AC4(a1, v25, 1, __p);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  v28 = [objc_msgSend(a4 objectForKeyedSubscript:{@"ServiceMaskOperator", "intValue"}];
  v29 = [objc_msgSend(a4 objectForKeyedSubscript:{@"Type", "intValue"}];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"Latitude", "doubleValue"}];
  v31 = v30;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"Longitude", "doubleValue"}];
  v33 = v32;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"Radius", "doubleValue"}];
  sub_100796A40(a1, a2, &v74, v29, 0, v28, v6, 0, v31, v33, v34, 0, 0);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v73;
  }

  else
  {
    v35 = v73.__r_.__value_.__r.__words[0];
  }

  v36 = [a6 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v35)}];
  if (!v36 || (sub_1007A7EA8(v36, a4) & 1) == 0)
  {
    if (v6 != 2)
    {
      sub_10000EC00(v69, "InfoPlistZoneRegistration");
      sub_10079369C(a1, a2, v69);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }
    }

    goto LABEL_54;
  }

  v64 = _NSConcreteStackBlock;
  v65 = 3221225472;
  v66 = sub_1007A8160;
  v67 = &unk_102470640;
  v68 = a1;
  if ((v22 & 1) == 0)
  {
    v37 = [*(a1 + 136) dictionaryExistsAtKeyPath:v27];
    if ((v37 & 1) == 0)
    {
      if (v6 == 2)
      {
        v66(&v64, v25, v27);
        goto LABEL_54;
      }

      sub_101931A34(v37, v38, v39, v40, v41, v42, v43, v44, v54, v55, v56, a6, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0]);
      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager.mm", 7420, "registerAndReconcileInfoPlistZone");
LABEL_62:
      __break(1u);
      return;
    }
  }

  v45 = sub_1007A7EA8([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v27), "dictionary"}], a4);
  if (v45)
  {
    sub_10000EC00(&v58, "ClientRemoved");
    sub_100777AC4(a1, v25, 1, &v58);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v58);
    }

    v53 = v27;
    if (v6 == 2)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v6 != 2)
  {
    sub_101931B8C(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, a6, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0]);
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager.mm", 7431, "registerAndReconcileInfoPlistZone");
    goto LABEL_62;
  }

  sub_10000EC00(&v61, "ClientRemoved");
  sub_100777AC4(a1, v27, 1, &v61);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v61);
  }

  v53 = v25;
  v25 = v27;
LABEL_51:
  v66(&v64, v53, v25);
LABEL_54:
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }
}

void sub_100792564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 129) < 0)
  {
    operator delete(*(v41 - 152));
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  _Unwind_Resume(exception_object);
}

id sub_100792608(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v4 = *sub_10001A3E8(v2, v3);
  if ((*v4)())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#authsync getAllAuthSync start", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931E50();
    }

    sub_10000EC00(buf, "");
    v6 = sub_10078DA00(a1, buf, 0, 2);
    if (v16 < 0)
    {
      operator delete(*buf);
    }

    [(CLCompanionSyncAuthObject *)v6 setAuthMask:sub_1000193E0() == 1];
    [v2 addObject:v6];
    v7 = *(a1 + 136);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1007928A0;
    v12[3] = &unk_10246FD68;
    v12[4] = v2;
    v12[5] = a1;
    [v7 iterateAllAnchorKeyPathsWithBlock:v12];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v9 = [v2 count];
      v10 = [objc_msgSend(v2 "description")];
      *buf = 134349314;
      *&buf[4] = v9;
      v14 = 2082;
      v15 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#authsync getAllAuthSync finish %{public}lu: %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101931F34(v2);
    }
  }

  return v2;
}

void sub_10079287C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007928A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [objc_msgSend(a2 "legacyClientKey")];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  sub_10000EC00(__p, v5);
  v6 = sub_10078DA00(v3, __p, 0, 2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_100792928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100792944(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v27 = 0;
    v5 = sub_1000206B4(v3, v4);
    if (sub_1003045C8(v5, @"CLClientManager.AssertionDueToWatchApp", &v27))
    {
      v6 = v27;
      Current = CFAbsoluteTimeGetCurrent();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [v6 allKeys];
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      if (v19)
      {
        v18 = *v24;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v23 + 1) + 8 * i);
            v10 = +[NSMutableDictionary dictionary];
            v12 = qword_102659E90;
            v11 = qword_102659E98;
            while (v12 != v11)
            {
              v13 = *v12++;
              v21 = 0;
              v22 = 0;
              sub_10004F9C8(v13, &v22, &v21);
              v14 = v21;
              [v10 setObject:objc_msgSend(v6 forKey:{"objectForKeyedSubscript:", v9), v22}];
              [v10 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", Current), v14}];
            }

            [v2 setObject:v10 forKey:v9];
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
        }

        while (v19);
      }
    }
  }

  else
  {
    v15 = *(a1 + 136);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100792B8C;
    v20[3] = &unk_10246FD68;
    v20[4] = v2;
    v20[5] = a1;
    [v15 iterateAllAnchorKeyPathsWithBlock:v20];
  }

  return v2;
}

void sub_100792B8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 legacyClientKey];
  sub_10000EC00(__p, [v4 UTF8String]);
  v5 = sub_1000F610C(v3, __p);
  v6 = v5;
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  sub_10000EC00(__p, [v4 UTF8String]);
  v7 = sub_100792C78(v3, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if ([v7 count])
  {
    [*(a1 + 32) setObject:v7 forKey:v4];
  }
}

void sub_100792C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100792C78(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v4))}];
  if ([v5 isValidCKP])
  {
    v6 = +[NSMutableDictionary dictionary];
    for (i = 0; i != 11; ++i)
    {
      v8 = qword_101C8D460[i];
      if (_os_feature_enabled_impl())
      {
        if (v8 > 0xA || ((1 << v8) & 0x430) == 0)
        {
          continue;
        }
      }

      v17 = 0;
      *buf = 0;
      sub_10004F9C8(v8, buf, &v17);
      v10 = *buf;
      [*(a1 + 136) doubleForKey:*buf atKeyPath:v5 defaultValue:-1.0];
      if (v11 != -1.0)
      {
        [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), v10}];
      }

      v12 = v17;
      [*(a1 + 136) doubleForKey:v17 atKeyPath:v5 defaultValue:-1.0];
      if (v13 != -1.0)
      {
        [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), v12}];
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
      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Couldn't get nvp, client:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_100792ED0(uint64_t a1, uint64_t *a2, void *a3)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D47A0 != -1)
  {
LABEL_57:
    sub_10028840C();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68289282;
    v45 = 0;
    v46 = 2082;
    v47 = "";
    v48 = 2082;
    v49 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Merging remote location usage, client:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v41 = [NSString stringWithUTF8String:v9];
  Current = CFAbsoluteTimeGetCurrent();
  for (i = 0; i != 11; ++i)
  {
    v12 = qword_101C8D460[i];
    result = _os_feature_enabled_impl();
    if (result)
    {
      if (v12 > 0xA || ((1 << v12) & 0x430) == 0)
      {
        continue;
      }
    }

    v42 = 0;
    v43 = 0;
    sub_10004F9C8(v12, &v43, &v42);
    v15 = [a3 objectForKeyedSubscript:v43];
    v16 = [a3 objectForKeyedSubscript:v42];
    v17 = v16;
    if (v15)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      if (p_info[244] != -1)
      {
        sub_10192D4D0();
      }

      v19 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        [v15 doubleValue];
        v21 = v20;
        [v17 doubleValue];
        *buf = 68289794;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2050;
        v49 = v21;
        v50 = 2050;
        v51 = v22;
        v52 = 2050;
        v53 = v12;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #warning Didn't expect a start time and a stop time, start time_s:%{public}.09f, stop time_s:%{public}.09f, service:%{public}lu}", buf, 0x30u);
      }

      [v17 doubleValue];
      v24 = v23;
      [v15 doubleValue];
      if (v24 > v25)
      {
        v15 = 0;
      }

      else
      {
        v17 = 0;
      }
    }

    if (*(a2 + 23) >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    v27 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:[NSString stringWithUTF8String:v26]];
    if (v15 | v17)
    {
      v28 = p_info[244];
      if (v15)
      {
        if (v28 != -1)
        {
          sub_10192D4D0();
        }

        v29 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v30 = a2;
          }

          else
          {
            v30 = *a2;
          }

          [v15 doubleValue];
          *buf = 68289794;
          v45 = 0;
          v46 = 2082;
          v47 = "";
          v48 = 2082;
          v49 = v30;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v50 = 2050;
          v51 = v31;
          v52 = 2050;
          v53 = v12;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Starting remote location service, client:%{public, location:escape_only}s, start time_s:%{public}.09f, service:%{public}lu}", buf, 0x30u);
        }

        if (v12 == 10)
        {
          sub_1000F6978(a1, [CLClientKeyPath clientKeyPathWithLegacyClientKey:v41], -1, 0, 0.0);
        }

        [v15 doubleValue];
        v33 = a1;
        v34 = v27;
        v35 = v12;
        v36 = 1;
      }

      else
      {
        if (!v17)
        {
          sub_101932054(v28 == -1);
          goto LABEL_57;
        }

        if (v28 != -1)
        {
          sub_10192D4D0();
        }

        v38 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v39 = a2;
          }

          else
          {
            v39 = *a2;
          }

          [v17 doubleValue];
          *buf = 68289794;
          v45 = 0;
          v46 = 2082;
          v47 = "";
          v48 = 2082;
          v49 = v39;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v50 = 2050;
          v51 = v40;
          v52 = 2050;
          v53 = v12;
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Stopping remote location service, client:%{public, location:escape_only}s, stop time_s:%{public}.09f, service:%{public}lu}", buf, 0x30u);
        }

        [v17 doubleValue];
        v33 = a1;
        v34 = v27;
        v35 = v12;
        v36 = 0;
      }

      v37 = 1;
    }

    else
    {
      v33 = a1;
      v34 = v27;
      v35 = v12;
      v36 = 0;
      v37 = 0;
      v32 = Current;
    }

    result = sub_10002FE04(v33, v32, v34, v35, v36, v37, 1);
  }

  return result;
}

id sub_100793384(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007933F8;
  v4[3] = &unk_10246FD68;
  v4[4] = a2;
  v4[5] = a1;
  return [v2 iterateAllAnchorKeyPathsWithBlock:v4];
}

void sub_1007933F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(a2, "legacyClientKey")}];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = [objc_msgSend(a2 "legacyClientKey")];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  sub_10000EC00(__p, v7);
  sub_100792ED0(v3, __p, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100793494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007934B0(uint64_t a1, void *a2)
{
  v3 = 0;
  while (1)
  {
    v4 = qword_101C8D460[v3];
    if (_os_feature_enabled_impl())
    {
      if (v4 > 0xA || ((1 << v4) & 0x430) == 0)
      {
        goto LABEL_13;
      }
    }

    v18 = 0;
    v19 = 0;
    sub_10004F9C8(v4, &v19, &v18);
    v6 = [a2 objectForKeyedSubscript:v19];
    v7 = [a2 objectForKeyedSubscript:v18];
    if (v6 && v7 != 0)
    {
      break;
    }

    if (v6)
    {
      return 1;
    }

LABEL_13:
    if (++v3 == 11)
    {
      return 0;
    }
  }

  v10 = v7;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    [v6 doubleValue];
    v13 = v12;
    [v10 doubleValue];
    *buf = 68289794;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2050;
    v25 = v13;
    v26 = 2050;
    v27 = v14;
    v28 = 2050;
    v29 = v4;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #warning Didn't expect a start time and a stop time, start time_s:%{public}.09f, stop time_s:%{public}.09f, service:%{public}lu}", buf, 0x30u);
  }

  [v10 doubleValue];
  v16 = v15;
  [v6 doubleValue];
  return v16 <= v17;
}

CLCompanionSyncAuthObject *sub_10079369C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = +[CLAuthSyncManager isSupported]_0(a1, a2);
  if (result)
  {
    result = sub_10078DA00(a1, a2, 0, 1);
    if (result)
    {
      v7 = result;
      v8 = *(a1 + 1560);
      if (*(a3 + 23) >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      v10 = [NSString stringWithUTF8String:v9];

      return [v8 addObject:v7 withSyncSessionReason:v10];
    }
  }

  return result;
}

void sub_10079373C(uint64_t a1, uint64_t a2)
{
  v3 = +[CLAuthSyncManager isSupported]_0(a1, a2);
  if (v3)
  {
    v5 = sub_10001A3E8(v3, v4);
    if ((**v5)(v5))
    {
      [*(a1 + 1560) sendNotification:0];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v6 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#authsync sending kNotificationReset to the watch", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019323B8();
      }
    }
  }
}

void sub_100793814(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  if (sub_10001CF3C())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#authsync received kNotificationReset from the companion", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101932494();
    }

    sub_10078E990(a1);
  }
}

void sub_100793C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100793D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100793EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100793FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_1007940D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_1007941E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100794594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10014588C(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100794764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100794890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007948F8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v4 isValidCKP])
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

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v16 = 2082;
    *&v16[2] = "";
    *&v16[10] = 2114;
    *&v16[12] = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:appLaunchedByAppLifecycleManager called for unregistered app. Skipping., Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    goto LABEL_6;
  }

LABEL_8:
  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *v16 = 2082;
    *&v16[2] = "";
    *&v16[10] = 2113;
    *&v16[12] = v4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:app launched by CLALM, Client:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if (v4)
  {
    objc_msgSend_cppClientKey(v4);
  }

  else
  {
    *buf = 0;
    *v16 = 0;
    *&v16[8] = 0;
  }

  v14 = buf;
  v7 = sub_100046778((a1 + 464), buf, &unk_101C66300, &v14);
  *(v7 + 12) += 500;
  if ((v16[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
  [v9 setClientKey:{objc_msgSend(v4, "clientKey")}];
  [v9 setStartTime:Current];
  [v9 setStopTime:Current];
  [*(a1 + 504) writeSecondaryObject:v9 toField:1];
  if (v4)
  {
    objc_msgSend_cppClientKey(v4);
  }

  else
  {
    *buf = 0;
    *v16 = 0;
    *&v16[8] = 0;
  }

  v10 = sub_10045EF04(a1 + 800, buf);
  v11 = a1 + 808;
  if ((v16[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v11 != v10)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      *&v16[10] = 2114;
      *&v16[12] = v4;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Faulting for logs explaining usage score increment, ClientKey:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v13 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      *&v16[10] = 2114;
      *&v16[12] = v4;
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Faulting for logs explaining usage score increment", "{msg%{public}.0s:Faulting for logs explaining usage score increment, ClientKey:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }
}

void sub_100794C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100794D08(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v3 = sub_1000206B4(a1, a2);
  v4 = sub_10005BBE4(v3, "SystemServiceGeneration", &v24) ^ 1;
  if (v24 < 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 136);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1007A6C10;
  v22[3] = &unk_1024704E8;
  v22[4] = a1;
  v23 = v5;
  v7 = [v6 iterateAllAnchorKeyPathsWithBlock:v22];
  if (v5 == 1)
  {
    v9 = sub_1000206B4(v7, v8);
    *v21 = 2;
    v10 = sub_10004345C(v9, "SystemServiceGeneration", v21);
    v12 = *sub_1000206B4(v10, v11);
    (*(v12 + 944))();
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "AuthMigrate: successfully resetted all SystemService authorization mask", v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101932710();
    }

    [*(a1 + 136) persist];
  }

  sub_1001D2F14(a1);
  sub_100044F7C(a1);
  v14 = [*(a1 + 1560) considerPerformingAForcedFullSync];
  v16 = sub_1000206B4(v14, v15);
  v17 = sub_1004FA94C(v16);
  v19 = *sub_1000206B4(v17, v18);
  (*(v19 + 944))();
  return sub_10076DAA0(*(a1 + 1040));
}

void sub_100794F34(uint64_t a1, void *a2)
{
  if (*(a1 + 1128))
  {
    if ([*(a1 + 1112) containsObject:a2])
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v5 = [a2 UTF8String];
        v6 = *(a1 + 1112);
        v10 = 68289794;
        *v11 = 0;
        *&v11[4] = 2082;
        *&v11[6] = "";
        v12 = 2082;
        v13 = v5;
        v14 = 2114;
        v15 = v6;
        v16 = 2050;
        v17 = [v6 count];
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:reset completion reporting, Current Identifier:%{public, location:escape_only}s, ResetIdentifiers Snapshot:%{public, location:escape_only}@, Count:%{public}ld}", &v10, 0x30u);
      }

      [*(a1 + 1112) removeObject:a2];
      [*(a1 + 128) setArray:*(a1 + 1112) forKey:@"ResetIdentifiers"];
      if (![*(a1 + 1112) count])
      {
        if (qword_1025D4790 != -1)
        {
          sub_10192DAA4();
        }

        v7 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Completion reported back for all Reset registered clients", &v10, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019328DC();
        }

        *(a1 + 1128) = 0;
        [*(a1 + 256) setNextFireDelay:0.0];
      }
    }

    else
    {
      [*(a1 + 128) setArray:0 forKey:@"ResetIdentifiers"];
      [*(a1 + 128) setInt:0 forKey:@"ResetRetrialCount"];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v10 = 138412290;
        *v11 = a2;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Reset registration and completion reporting is un-balanced. Completion of Reset reported for unregistered identifier: %@", &v10, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019327EC();
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 68289282;
      *v11 = 0;
      *&v11[4] = 2082;
      *&v11[6] = "";
      v12 = 2082;
      v13 = [a2 UTF8String];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Skip completion reporting. No Reset in progress, Identifier:%{public, location:escape_only}s}", &v10, 0x1Cu);
    }
  }
}

void sub_100795344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100795358(uint64_t a1, void *a2, void *a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 1026;
    v11 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Setting client:%@ background indicator to %{public}d", &v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019329B8(a2, a3);
  }

  return sub_1007A493C(a1, a2, a3, 1);
}

void sub_1007955BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100795630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100795848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100795940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

id sub_100795954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100033370(a1, a2);
  v6 = *(a1 + 136);
  if (a3)
  {

    return [v6 setString:a3 forKey:@"Purpose" atKeyPath:v5];
  }

  else
  {

    return [v6 removeValueForKey:@"Purpose" atKeyPath:v5];
  }
}

void sub_100795A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100795ABC(id *a1, void *a2)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, a2, &v8, v12, 16);
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a2);
        }

        sub_1007778FC(a1, [CLClientKeyPath clientKeyPathWithLegacyClientKey:*(*(&v8 + 1) + 8 * v7)]);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

NSMutableDictionary *sub_100795C50(uint64_t a1, uint64_t a2, int a3)
{
  v4 = [*(a1 + 136) dictionary];
  if (v4)
  {
    v5 = v4;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v6 = objc_opt_new();
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5);
      if (!v7)
      {
        return v6;
      }

      v9 = v7;
      v27 = v6;
      v10 = MEMORY[0];
      *&v8 = 138477827;
      v26 = v8;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(8 * v11);
        [v5 objectForKeyedSubscript:{v12, v26}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 isEqualToString:@"e:"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"p:") & 1) != 0 || objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"AnchorKeyPath") || objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"PrimaryKeyPath") || objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"AuthLimitingKeyPath") || !objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"Authorization") && objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", v12), "objectForKeyedSubscript:", @"SuppressShowingInSettings"))
        {
          goto LABEL_15;
        }

        v13 = [CLClientKeyPath clientKeyPathWithClientKey:v12];
        v14 = [v5 objectForKeyedSubscript:v12];
        v30 = v13;
        if ([*(a1 + 136) isKeyPathRegisteredSystemService:v13])
        {
          v15 = v14;
          if (sub_1000337DC(v14) != 8)
          {
            v16 = [(CLClientKeyPath *)v30 bundlePath];
            if (sub_1000E64F4(v16, v17))
            {
              if (!a3 || sub_100D96660(v14))
              {
                goto LABEL_29;
              }
            }
          }
        }

        else
        {
          v15 = v14;
          if (([v14 objectForKeyedSubscript:@"Authorization"] || objc_msgSend(v14, "objectForKeyedSubscript:", @"SupportedAuthorizationMask") || objc_msgSend(v14, "objectForKeyedSubscript:", @"SubIdentities")) && (!a3 || sub_100D96660(v14)))
          {
LABEL_29:
            v18 = [v15 cl_deepMutableCopy];
            v28 = v18;
            v29 = [(NSString *)[(CLClientKeyPath *)v30 clientAnchor] copy];
            if (v29 && v18)
            {
              sub_10078A488(a1, v30, v18);
              if ([v18 objectForKeyedSubscript:@"PlatformSpecificBundleId"] && objc_msgSend(v18, "objectForKeyedSubscript:", @"BundleId"))
              {
                [v18 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", @"PlatformSpecificBundleId", @"BundleId"}];
              }

              if ([*(a1 + 136) BOOLForKey:@"Hidden" atKeyPath:v30 defaultValue:0])
              {
                [v18 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", sub_10023D76C(a1, v30)), @"SupportedAuthorizationMask"}];
              }

              sub_100D96874(v18, v19);
              [v27 setObject:v18 forKeyedSubscript:v29];
            }

            else if (v18)
            {
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v20 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
              {
                *buf = 68289283;
                *v33 = 0;
                *&v33[4] = 2082;
                *&v33[6] = "";
                v34 = 2113;
                v35 = v12;
                _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client CKP key is nil in CLClientManager::copyClients, key:%{private, location:escape_only}@}", buf, 0x1Cu);
                if (qword_1025D47A0 != -1)
                {
                  sub_10192D4D0();
                }
              }

              v21 = off_1025D47A8;
              if (os_signpost_enabled(off_1025D47A8))
              {
                *buf = 68289283;
                *v33 = 0;
                *&v33[4] = 2082;
                *&v33[6] = "";
                v34 = 2113;
                v35 = v12;
                _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Client CKP key is nil in CLClientManager::copyClients", "{msg%{public}.0s:Client CKP key is nil in CLClientManager::copyClients, key:%{private, location:escape_only}@}", buf, 0x1Cu);
              }
            }

            else
            {
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v22 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
              {
                v23 = [(CLClientKeyPath *)v30 clientAnchor];
                *buf = v26;
                *v33 = v23;
                _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "Client record is nil in CLClientManager::copyClients for clientKey %{private}@", buf, 0xCu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101932BB4(v36, v30, &v37);
              }
            }
          }
        }

LABEL_15:
        if (v9 == ++v11)
        {
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5);
          v9 = v24;
          if (!v24)
          {
            return v27;
          }

          goto LABEL_6;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1007962C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    v6 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v5), "dictionary"}];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 16);

  return v7(a3, v6);
}

id sub_100796390(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = [*(a1 + 136) intForKey:@"SupportedAuthorizationMask" atKeyPath:v3 defaultValue:0];
  if (([*(a1 + 136) BOOLForKey:@"Hidden" atKeyPath:v3 defaultValue:0] & 1) != 0 || (v4 & 4) == 0 || objc_msgSend(*(a1 + 136), "intForKey:atKeyPath:defaultValue:", @"Authorization", v3, 0) != 2)
  {
    return 0;
  }

  v5 = *(a1 + 136);

  return [v5 BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v3 defaultValue:1];
}

void sub_1007965AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100796694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_1007967B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

void sub_100796A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_100796A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, int a8, double a9, double a10, double a11, unsigned __int8 a12, uint64_t a13)
{
  if (qword_1025D4790 != -1)
  {
    sub_10192F910();
  }

  v18 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    *buf = 68291586;
    *&buf[4] = 0;
    v67 = 2082;
    v68 = "";
    v69 = 2082;
    v70 = v19;
    v71 = 2050;
    v72 = a4;
    v73 = 2082;
    v74 = v20;
    v75 = 1040;
    v76 = LocationLogEncryptionDataSize();
    v77 = 2098;
    v78 = LocationLogEncryptionEncryptData();
    v79 = 1040;
    v80 = LocationLogEncryptionDataSize();
    v81 = 2098;
    v82 = LocationLogEncryptionEncryptData();
    v83 = 2050;
    v84 = a5;
    v85 = 2050;
    v86 = a6;
    v87 = 2050;
    v88 = a7;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Registration for InterestZone #pla, clientKey:%{public, location:escape_only}s, type:%{public, location:CLClientInterestZoneType}lld, zoneIdentifier:%{public, location:escape_only}s, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, PhenolicLocation:%{public, location:CLClientPhenolicLocation}lld, ServiceMaskOperator:%{public, location:CLClientInterestZoneServiceMaskOperator}lld, ProvenanceType:%{public, location:CLClientInterestZoneProvenanceType}lld}", buf, 0x6Eu);
  }

  if (*(a2 + 23) >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  v22 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v21))}];
  if (([v22 isValidCKP] | a12))
  {
    if (([v22 isValidCKP] & 1) == 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v23 = a2;
      }

      else
      {
        v23 = *a2;
      }

      v24 = [*(a1 + 136) registerClient:+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath fromAuthSync:{"clientKeyPathWithLegacyClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v23)), 0}];
      if (*(a3 + 23) >= 0)
      {
        v25 = a3;
      }

      else
      {
        v25 = *a3;
      }

      v22 = [*(a1 + 136) registerSubIdentity:+[NSString stringWithUTF8String:](NSString withType:"stringWithUTF8String:" forAnchorKeyPath:{v25), 122, v24}];
    }

    if (a4 == 2)
    {
      [*(a1 + 136) setInt:a5 forKey:@"PhenolicLocation" atKeyPath:v22];
    }

    else
    {
      if (a4 != 1)
      {
        v60 = NSLocalizedDescriptionKey;
        v61 = @"AuthZone registration failed. Invalid ZoneType.";
        v38 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        (*(a13 + 16))(a13, [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v38]);
        return;
      }

      if (a11 >= 50.0)
      {
        if (a11 > 1000.0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v39 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v40 = a2;
            }

            else
            {
              v40 = *a2;
            }

            if (*(a3 + 23) >= 0)
            {
              v41 = a3;
            }

            else
            {
              v41 = *a3;
            }

            *buf = 68289794;
            *&buf[4] = 0;
            v67 = 2082;
            v68 = "";
            v69 = 2082;
            v70 = v40;
            v71 = 2082;
            v72 = v41;
            v73 = 2050;
            v74 = 0x408F400000000000;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Zone radius too large. Updated to max threshold, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s, MaxRadiusThreshold:%{public}.3f}", buf, 0x30u);
          }

          a11 = 1000.0;
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v26 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v27 = a2;
          }

          else
          {
            v27 = *a2;
          }

          if (*(a3 + 23) >= 0)
          {
            v28 = a3;
          }

          else
          {
            v28 = *a3;
          }

          *buf = 68289794;
          *&buf[4] = 0;
          v67 = 2082;
          v68 = "";
          v69 = 2082;
          v70 = v27;
          v71 = 2082;
          v72 = v28;
          v73 = 2050;
          v74 = 0x4049000000000000;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Zone radius too small. Updated to min threshold, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s, MinRadiusThreshold:%{public}.3f}", buf, 0x30u);
        }

        a11 = 50.0;
      }

      if (!sub_100020608(a9, a10))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v45 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v46 = [@"Registration : Invalid lat/lon." UTF8String];
          v47 = *(a2 + 23) >= 0 ? a2 : *a2;
          v48 = *(a3 + 23) >= 0 ? a3 : *a3;
          *buf = 68289794;
          *&buf[4] = 0;
          v67 = 2082;
          v68 = "";
          v69 = 2082;
          v70 = v46;
          v71 = 2082;
          v72 = v47;
          v73 = 2082;
          v74 = v48;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v49 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v50 = [@"Registration : Invalid lat/lon." UTF8String];
          if (*(a2 + 23) >= 0)
          {
            v51 = a2;
          }

          else
          {
            v51 = *a2;
          }

          if (*(a3 + 23) >= 0)
          {
            v52 = a3;
          }

          else
          {
            v52 = *a3;
          }

          *buf = 68289794;
          *&buf[4] = 0;
          v67 = 2082;
          v68 = "";
          v69 = 2082;
          v70 = v50;
          v71 = 2082;
          v72 = v51;
          v73 = 2082;
          v74 = v52;
          _os_signpost_emit_with_name_impl(dword_100000000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AuthZone operation failed.", "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
        }

        if (a13)
        {
          v62 = NSLocalizedDescriptionKey;
          v63 = @"Registration : Invalid lat/lon.";
          v53 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          (*(a13 + 16))(a13, [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v53]);
        }

        return;
      }

      [*(a1 + 136) setDouble:@"Latitude" forKey:v22 atKeyPath:a9];
      [*(a1 + 136) setDouble:@"Longitude" forKey:v22 atKeyPath:a10];
      [*(a1 + 136) setDouble:@"Radius" forKey:v22 atKeyPath:a11];
    }

    [*(a1 + 136) setInt:a4 forKey:@"Type" atKeyPath:v22];
    [*(a1 + 136) setInt:a6 forKey:@"ServiceMaskOperator" atKeyPath:v22];
    [*(a1 + 136) setInt:a7 forKey:@"Provenance" atKeyPath:v22];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v42 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v43 = a2;
      }

      else
      {
        v43 = *a2;
      }

      if (*(a3 + 23) >= 0)
      {
        v44 = a3;
      }

      else
      {
        v44 = *a3;
      }

      *buf = 68289538;
      *&buf[4] = 0;
      v67 = 2082;
      v68 = "";
      v69 = 2082;
      v70 = v43;
      v71 = 2082;
      v72 = v44;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:InterestZone registered, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x26u);
    }

    if (a8 && (sub_10000EC00(buf, "ZoneRegistration"), sub_10079369C(a1, a2, buf), SBYTE3(v70) < 0))
    {
      operator delete(*buf);
      if (!a13)
      {
        return;
      }
    }

    else if (!a13)
    {
      return;
    }

    (*(a13 + 16))(a13, 0);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v29 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v30 = [@"Registration : Zone already exists and overriding is not allowed." UTF8String];
      v31 = *(a2 + 23) >= 0 ? a2 : *a2;
      v32 = *(a3 + 23) >= 0 ? a3 : *a3;
      *buf = 68289794;
      *&buf[4] = 0;
      v67 = 2082;
      v68 = "";
      v69 = 2082;
      v70 = v30;
      v71 = 2082;
      v72 = v31;
      v73 = 2082;
      v74 = v32;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v33 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v34 = [@"Registration : Zone already exists and overriding is not allowed." UTF8String];
      if (*(a2 + 23) >= 0)
      {
        v35 = a2;
      }

      else
      {
        v35 = *a2;
      }

      if (*(a3 + 23) >= 0)
      {
        v36 = a3;
      }

      else
      {
        v36 = *a3;
      }

      *buf = 68289794;
      *&buf[4] = 0;
      v67 = 2082;
      v68 = "";
      v69 = 2082;
      v70 = v34;
      v71 = 2082;
      v72 = v35;
      v73 = 2082;
      v74 = v36;
      _os_signpost_emit_with_name_impl(dword_100000000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AuthZone operation failed.", "{msg%{public}.0s:AuthZone operation failed., Error:%{public, location:escape_only}s, ClientKey:%{public, location:escape_only}s, ZoneIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
    }

    if (a13)
    {
      v64 = NSLocalizedDescriptionKey;
      v65 = @"Registration : Zone already exists and overriding is not allowed.";
      v37 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      (*(a13 + 16))(a13, [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:v37]);
    }
  }
}