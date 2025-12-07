void sub_100015C78(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v31 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 40);
      *v30 = 67109378;
      *&v30[4] = v6;
      *&v30[8] = 2112;
      *&v30[10] = v7;
      LODWORD(v29) = 18;
      v8 = _os_log_send_and_compose_impl(v5, &v31, 0, 0, &_mh_execute_header, v3, 2, "In RDServer: provisionDevice from pid:%d; with: %@", v30, v29);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if ([v2 hasEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    HIDWORD(v29) = 0;
    v10 = sub_100048D4C(*(a1 + 40), &v29 + 1);
    if (HIDWORD(v29))
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        v12 = sub_1000011A8(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          LODWORD(v31) = 67109120;
          HIDWORD(v31) = HIDWORD(v29);
          v14 = _os_log_send_and_compose_impl(v13, v30, 0, 0, &_mh_execute_header, v11, 0, "Failed to Provision Device with error:%d", &v31);
          v15 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:SHIDWORD(v29) userInfo:0];
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v22 = qword_1000EB268;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 0;
        v23 = sub_1000011A8(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          *v30 = 138412290;
          *&v30[4] = v10;
          LODWORD(v29) = 12;
          v25 = _os_log_send_and_compose_impl(v24, &v31, 0, 0, &_mh_execute_header, v22, 0, "Successful Provisioning with return dict:%@", v30, v29);
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }

      v27 = 0;
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v16 = qword_1000EB268;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      v17 = sub_1000011A8(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = *(a1 + 56);
        LODWORD(v31) = 67109120;
        HIDWORD(v31) = v19;
        v20 = _os_log_send_and_compose_impl(v18, v30, 0, 0, &_mh_execute_header, v16, 0, "Entitlement Failure for pid:%d", &v31);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = 0;
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))(v28, v10, v27);
  }
}

void sub_100016478(id a1)
{
  qword_1000EB268 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_1000164C0(id a1)
{
  qword_1000EB278 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

void sub_100016508(id a1)
{
  qword_1000EB288 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

BOOL sub_1000165C4(id a1, unsigned int *a2)
{
  if (!a2)
  {
    _os_assumes_log();
  }

  *a2 = 0;
  v3 = mach_host_self();
  multiuser_config_flags = host_get_multiuser_config_flags(v3, a2);
  if (multiuser_config_flags)
  {
    if (qword_1000EB2A0 != -1)
    {
      sub_100088DC8();
    }

    v5 = qword_1000EB298;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v12[0] = 67109120;
        v12[1] = multiuser_config_flags;
        v8 = _os_log_send_and_compose_impl(v7, &v11, 0, 0, &_mh_execute_header, v5, 16, "host_get_multiuser_config_flags() failed: %{mach.errno}d", v12, 8);
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  return multiuser_config_flags == 0;
}

BOOL sub_10001671C(id a1, unsigned int a2)
{
  v3 = mach_host_self();
  v4 = host_set_multiuser_config_flags(v3, a2);
  if (v4)
  {
    if (qword_1000EB2A0 != -1)
    {
      sub_100088DC8();
    }

    v5 = qword_1000EB298;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        LODWORD(v13) = 67109376;
        HIDWORD(v13) = a2;
        LOWORD(v14) = 1024;
        *(&v14 + 2) = v4;
        v8 = _os_log_send_and_compose_impl(v7, &v15, 0, 0, &_mh_execute_header, v5, 16, "host_set_multiuser_config_flags(%u) failed: %{mach.errno}d", &v13, 14, v13, v14, v15);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB2A0 != -1)
    {
      sub_100088DC8();
    }

    v5 = qword_1000EB298;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = 0;
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v8 = _os_log_send_and_compose_impl(v10, &v13, 0, 0, &_mh_execute_header, v5, 2, "host_set_multiuser_config_flags(%u)", &v15);
LABEL_18:
        v11 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }

        goto LABEL_21;
      }

LABEL_20:
      v11 = 0;
LABEL_21:
      free(v11);
    }
  }

  return v4 == 0;
}

void sub_10001690C(id a1)
{
  qword_1000EB298 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

id sub_100016954(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [[NSUUID alloc] initWithUUIDString:v2];

  return v3;
}

id sub_1000169B4(uint64_t a1, const __CFUUID *a2)
{
  objc_opt_self();
  if (a2)
  {
    v3 = CFUUIDCreateString(kCFAllocatorDefault, a2);
    if (!v3)
    {
      sub_100088DDC();
    }

    v4 = v3;
    v5 = sub_100016954(NSUUID, v3);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFUUIDRef sub_100016A38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 UUIDString];
  v2 = CFUUIDCreateFromString(kCFAllocatorDefault, v1);

  if (!v2)
  {
    sub_100088DDC();
  }

  return v2;
}

void sub_1000177C8(id a1)
{
  qword_1000EB2A8 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

id sub_100017D70(uint64_t a1)
{

  return [v2 setObject:v1 forKeyedSubscript:a1];
}

void sub_100017DD4(id a1)
{
  qword_1000EB2B8 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

void sub_100017E78(id a1)
{
  qword_1000EB2C8 = objc_alloc_init(UMDProviderSideEffects);

  _objc_release_x1();
}

uint64_t sub_100018028(char *a1, ...)
{
  va_start(va, a1);
  message[0] = 0;
  va_copy(&message[1], va);
  vasprintf(message, a1, va);
  if (!message[0])
  {
    message[0] = a1;
  }

  reboot_np(3072, message[0]);
  v2 = abort_with_reason();
  return sub_100018084(v2);
}

CFTypeRef sub_1000180D4(const __CFString *a1)
{
  result = qword_1000EB5A0;
  if (qword_1000EB5A0)
  {
    if (CFArrayGetCount(qword_1000EB5A0) >= 1)
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v3);
        if (!ValueAtIndex)
        {
          break;
        }

        v5 = ValueAtIndex;
        v6 = CFGetTypeID(ValueAtIndex);
        if (v6 != CFDictionaryGetTypeID())
        {
          break;
        }

        Value = CFDictionaryGetValue(v5, kUMUserSessionVolumeUUIDKey);
        if (!Value || (v8 = Value, v9 = CFGetTypeID(Value), v9 != CFStringGetTypeID()))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v10 = qword_1000EB308;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 0;
            v14 = sub_1000011A8(1);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v14;
            }

            else
            {
              v15 = v14 & 0xFFFFFFFE;
            }

            if (v15)
            {
              v18[0] = 67109120;
              v18[1] = v3;
              v13 = _os_log_send_and_compose_impl(v15, &v17, 0, 0, &_mh_execute_header, v10, 0, "Found problem with conversion at index:%d", v18);
              goto LABEL_26;
            }

LABEL_28:
            v16 = 0;
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        if (CFStringCompare(v8, a1, 0) == kCFCompareEqualTo)
        {
          return CFRetain(v5);
        }

LABEL_31:
        if (CFArrayGetCount(qword_1000EB5A0) <= ++v3)
        {
          return 0;
        }
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v10 = qword_1000EB308;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 0;
        v11 = sub_1000011A8(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (!v12)
        {
          goto LABEL_28;
        }

        LOWORD(v18[0]) = 0;
        v13 = _os_log_send_and_compose_impl(v12, &v17, 0, 0, &_mh_execute_header, v10, 0, "got NULL dictionary");
LABEL_26:
        v16 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }

LABEL_29:
        free(v16);
      }

LABEL_30:

      goto LABEL_31;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100018360()
{
  if (!qword_1000EB5A0)
  {
    return 0;
  }

  v0 = sub_10008A58C(qword_1000EB2E0);
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v1 = qword_1000EB308;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v8[0] = 67109120;
      v8[1] = v0;
      v4 = _os_log_send_and_compose_impl(v3, &v7, 0, 0, &_mh_execute_header, v1, 0, "Finding ForeGround session :%d", v8);
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }

  sub_10008A2F4(qword_1000EB2E0, v0);
  return objc_claimAutoreleasedReturnValue();
}

CFTypeRef sub_1000184B8()
{
  if (!qword_1000EB5A0)
  {
    return 0;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v0 = qword_1000EB308;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 0;
    v1 = sub_1000011A8(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v1;
    }

    else
    {
      v2 = v1 & 0xFFFFFFFE;
    }

    if (v2)
    {
      LOWORD(v23[0]) = 0;
      v3 = _os_log_send_and_compose_impl(v2, &v22, 0, 0, &_mh_execute_header, v0, 0, "Finding Primary session", v23, 2);
      v4 = v3;
      if (v3)
      {
        sub_100002A8C(v3);
      }
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }

  if (CFArrayGetCount(qword_1000EB5A0) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v5);
    if (!ValueAtIndex || (v7 = ValueAtIndex, v8 = CFGetTypeID(ValueAtIndex), v8 != CFDictionaryGetTypeID()))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v9 = qword_1000EB308;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 0;
        v10 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          v23[0] = 67109120;
          v23[1] = v5;
          v12 = _os_log_send_and_compose_impl(v11, &v22, 0, 0, &_mh_execute_header, v9, 0, "Found problem with conversion with index %d", v23);
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      goto LABEL_31;
    }

    if (sub_100002454(v7, kUMUserSessionisPrimaryKey))
    {
      break;
    }

LABEL_31:
    if (CFArrayGetCount(qword_1000EB5A0) <= ++v5)
    {
      return 0;
    }
  }

  v14 = CFRetain(v7);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v16 = qword_1000EB308;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 0;
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      LOWORD(v23[0]) = 0;
      LODWORD(v21) = 2;
      v19 = _os_log_send_and_compose_impl(v18, &v22, 0, 0, &_mh_execute_header, v16, 0, "FOUND Primary session", v23, v21);
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

  return v14;
}

CFTypeRef sub_100018808(const __CFString *a1)
{
  if (!qword_1000EB5A0 || CFArrayGetCount(qword_1000EB5A0) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v2);
    if (ValueAtIndex)
    {
      v4 = ValueAtIndex;
      v5 = CFGetTypeID(ValueAtIndex);
      if (v5 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v4, kUMUserSessionNameKey);
        if (Value)
        {
          v7 = Value;
          v8 = CFGetTypeID(Value);
          if (v8 == CFStringGetTypeID() && CFStringCompare(v7, a1, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }
    }

    if (CFArrayGetCount(qword_1000EB5A0) <= ++v2)
    {
      return 0;
    }
  }

  return CFRetain(v4);
}

uint64_t sub_10001890C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v3[3] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000189D8;
  v2[3] = &unk_1000DD458;
  v2[4] = v3;
  v2[5] = &v4;
  dispatch_sync(qword_1000EB610, v2);
  v0 = v5[3];
  _Block_object_dispose(v3, 8);
  _Block_object_dispose(&v4, 8);
  return v0;
}

void sub_1000189D8(uint64_t a1)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  valuePtr = 0;
  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v20[0] = 0;
      v5 = _os_log_send_and_compose_impl(v4, &v21, 0, 0, &_mh_execute_header, v2, 0, "In findAllUserSessionIDs", v20, 2);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (qword_1000EB5A0 && (Count = CFArrayGetCount(qword_1000EB5A0), Count >= 1))
  {
    v8 = sub_1000799A8();
    v9 = 0;
    v10 = Count & 0x7FFFFFFF;
    do
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayGetValueAtIndex(qword_1000EB5A0, v9);
      valuePtr = -1;
      v11 = *(*(*(a1 + 32) + 8) + 24);
      if (v11)
      {
        v12 = CFGetTypeID(v11);
        if (v12 == CFDictionaryGetTypeID())
        {
          valuePtr = sub_1000023E8(*(*(*(a1 + 32) + 8) + 24), kUMUserSessionIDKey);
        }
      }

      v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(v8, v13);
      if (v13)
      {
        CFRelease(v13);
      }

      ++v9;
    }

    while (v10 != v9);
    *(*(*(a1 + 40) + 8) + 24) = v8;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v20[0] = 0;
        LODWORD(v19) = 2;
        v17 = _os_log_send_and_compose_impl(v16, &v21, 0, 0, &_mh_execute_header, v14, 0, "Did not find any session in handle_UserSessionListIDs", v20, v19);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }
}

uint64_t sub_100018C80()
{
  result = qword_1000EB5A0;
  if (qword_1000EB5A0)
  {
    Count = 0;
    valuePtr = CFArrayGetCount(qword_1000EB5A0);
    if (valuePtr)
    {
      v1 = sub_10007990C();
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v2 = qword_1000EB308;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v83 = 0;
        v3 = sub_1000011A8(1);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          v4 = v3;
        }

        else
        {
          v4 = v3 & 0xFFFFFFFE;
        }

        if (v4)
        {
          LOWORD(v86) = 0;
          v5 = _os_log_send_and_compose_impl(v4, &v83, 0, 0, &_mh_execute_header, v2, 0, "SAVING SESSION TODISK", &v86, 2);
          v6 = v5;
          if (v5)
          {
            sub_100002A8C(v5);
          }
        }

        else
        {
          v6 = 0;
        }

        free(v6);
      }

      v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v1, @"NUMENT", v12);
      CFRelease(v12);
      v13 = sub_100079684(qword_1000EB5A0);
      if (v13)
      {
        v14 = v13;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v15 = qword_1000EB308;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v83 = 0;
          v16 = sub_1000011A8(1);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 0xFFFFFFFE;
          }

          if (v17)
          {
            LOWORD(v86) = 0;
            LODWORD(v82) = 2;
            v18 = _os_log_send_and_compose_impl(v17, &v83, 0, 0, &_mh_execute_header, v15, 0, "SESSION TABLE TO BLOB", &v86, v82);
            v19 = v18;
            if (v18)
            {
              sub_100002A8C(v18);
            }
          }

          else
          {
            v19 = 0;
          }

          free(v19);
        }

        CFDictionaryAddValue(v1, @"BLOB", v14);
        CFRelease(v14);
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v20 = qword_1000EB308;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v83 = 0;
          v21 = sub_1000011A8(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
          }

          else
          {
            v22 = v21 & 0xFFFFFFFE;
          }

          if (v22)
          {
            LOWORD(v86) = 0;
            LODWORD(v82) = 2;
            v23 = _os_log_send_and_compose_impl(v22, &v83, 0, 0, &_mh_execute_header, v20, 0, "SESSION TABLE TO BLOB FAILED", &v86, v82);
            v24 = v23;
            if (v23)
            {
              sub_100002A8C(v23);
            }
          }

          else
          {
            v24 = 0;
          }

          free(v24);
        }

        CFDictionaryAddValue(v1, @"BLOB", 0);
      }

      v30 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EB5B0);
      CFDictionaryAddValue(v1, @"DEVICECONFIG", v30);
      CFRelease(v30);
      v31 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EA3D0);
      CFDictionaryAddValue(v1, @"BOOTEDUSER", v31);
      CFRelease(v31);
      if (dword_1000EA3D4 != -1 || qword_1000EB5D8)
      {
        v32 = CFNumberCreate(0, kCFNumberLongLongType, &qword_1000EA3E0);
        CFDictionaryAddValue(v1, @"APNSID", v32);
        CFRelease(v32);
        if (qword_1000EB2F8)
        {
          CFDictionaryAddValue(v1, @"VOLUMETYPE", qword_1000EB2F8);
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v83 = 0;
            v34 = sub_1000011A8(1);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v34;
            }

            else
            {
              v35 = v34 & 0xFFFFFFFE;
            }

            if (v35)
            {
              LOWORD(v86) = 0;
              LODWORD(v82) = 2;
              v36 = _os_log_send_and_compose_impl(v35, &v83, 0, 0, &_mh_execute_header, v33, 0, "SAVED VOLTYPE to DISk", &v86, v82);
              v37 = v36;
              if (v36)
              {
                sub_100002A8C(v36);
              }
            }

            else
            {
              v37 = 0;
            }

            free(v37);
          }
        }

        v38 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EA3D4);
        CFDictionaryAddValue(v1, @"MAXUSER", v38);
        CFRelease(v38);
        v39 = CFNumberCreate(0, kCFNumberLongLongType, &qword_1000EB5D8);
        CFDictionaryAddValue(v1, @"MAXUSERSIZE", v39);
        CFRelease(v39);
      }

      if (dword_1000EB5B0 != 1)
      {
LABEL_104:
        if (qword_1000EB5C8 && (HIDWORD(valuePtr) = CFArrayGetCount(qword_1000EB5C8), SHIDWORD(valuePtr) >= 1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v52 = qword_1000EB308;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v83 = 0;
            v53 = sub_1000011A8(1);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v54 = v53;
            }

            else
            {
              v54 = v53 & 0xFFFFFFFE;
            }

            if (v54)
            {
              v86 = 67109120;
              v87 = HIDWORD(valuePtr);
              v55 = _os_log_send_and_compose_impl(v54, &v83, 0, 0, &_mh_execute_header, v52, 0, "Setting LRU list array length:%d", &v86);
              v56 = v55;
              if (v55)
              {
                sub_100002A8C(v55);
              }
            }

            else
            {
              v56 = 0;
            }

            free(v56);
          }

          v61 = CFNumberCreate(0, kCFNumberIntType, &valuePtr + 4);
          CFDictionaryAddValue(v1, @"LRUENT", v61);
          CFRelease(v61);
          v62 = sub_100079684(qword_1000EB5C8);
          CFDictionaryAddValue(v1, @"LRUBLOB", v62);
          CFRelease(v62);
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v57 = qword_1000EB308;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v83 = 0;
            v63 = sub_1000011A8(1);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v64 = v63;
            }

            else
            {
              v64 = v63 & 0xFFFFFFFE;
            }

            if (v64)
            {
              v86 = 67109120;
              v87 = HIDWORD(valuePtr);
              v60 = _os_log_send_and_compose_impl(v64, &v83, 0, 0, &_mh_execute_header, v57, 0, "SAVED LRU entries %d", &v86);
LABEL_133:
              v65 = v60;
              if (v60)
              {
                sub_100002A8C(v60);
              }

              goto LABEL_136;
            }

            goto LABEL_135;
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v57 = qword_1000EB308;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v83 = 0;
            v58 = sub_1000011A8(1);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v59 = v58;
            }

            else
            {
              v59 = v58 & 0xFFFFFFFE;
            }

            if (v59)
            {
              LOWORD(v86) = 0;
              v60 = _os_log_send_and_compose_impl(v59, &v83, 0, 0, &_mh_execute_header, v57, 0, "NOTHING TO SAVE IN LRU UID LIST");
              goto LABEL_133;
            }

LABEL_135:
            v65 = 0;
LABEL_136:
            free(v65);
          }
        }

        v66 = sub_100079684(v1);
        if (!v66)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v74 = qword_1000EB308;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v83 = 0;
            v75 = sub_1000011A8(1);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v76 = v75;
            }

            else
            {
              v76 = v75 & 0xFFFFFFFE;
            }

            if (v76)
            {
              LOWORD(v86) = 0;
              LODWORD(v82) = 2;
              v77 = _os_log_send_and_compose_impl(v76, &v83, 0, 0, &_mh_execute_header, v74, 0, "Can't serialize dictionary", &v86, v82);
              v78 = v77;
              if (v77)
              {
                sub_100002A8C(v77);
              }
            }

            else
            {
              v78 = 0;
            }

            free(v78);
          }

          goto LABEL_172;
        }

        v67 = v66;
        v68 = sub_1000013A0(qword_1000EB608);
        v69 = [v68 atomicallyWriteData:v67 toPath:@"/private/var//keybags/usersession.kb" error:0];

        if (v69)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v70 = qword_1000EB308;
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_168;
          }

          v83 = 0;
          v71 = sub_1000011A8(1);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v72 = v71;
          }

          else
          {
            v72 = v71 & 0xFFFFFFFE;
          }

          if (v72)
          {
            LOWORD(v86) = 0;
            LODWORD(v82) = 2;
            v73 = _os_log_send_and_compose_impl(v72, &v83, 0, 0, &_mh_execute_header, v70, 0, "diskSaveUserSessions Success", &v86, v82);
            goto LABEL_164;
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v70 = qword_1000EB308;
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_168;
          }

          v83 = 0;
          v79 = sub_1000011A8(1);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v80 = v79;
          }

          else
          {
            v80 = v79 & 0xFFFFFFFE;
          }

          if (v80)
          {
            LOWORD(v86) = 0;
            LODWORD(v82) = 2;
            v73 = _os_log_send_and_compose_impl(v80, &v83, 0, 0, &_mh_execute_header, v70, 0, "failed to write diskSaveUserSessions dict", &v86, v82);
LABEL_164:
            v81 = v73;
            if (v73)
            {
              sub_100002A8C(v73);
            }

            goto LABEL_167;
          }
        }

        v81 = 0;
LABEL_167:
        free(v81);
LABEL_168:

        CFRelease(v67);
LABEL_172:
        CFRelease(v1);
        return 1;
      }

      v40 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EB5B8);
      CFDictionaryAddValue(v1, @"USESSTYPE", v40);
      CFRelease(v40);
      v41 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EB5BC);
      CFDictionaryAddValue(v1, @"LOGINCHECKIN", v41);
      CFRelease(v41);
      if (dword_1000EB5E0 >= 1)
      {
        v42 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EB5E0);
        CFDictionaryAddValue(v1, @"DEVICENETWORKBG", v42);
        CFRelease(v42);
      }

      if (qword_1000EB5C0 && (Count = CFArrayGetCount(qword_1000EB5C0), Count >= 1))
      {
        v43 = CFNumberCreate(0, kCFNumberIntType, &Count);
        CFDictionaryAddValue(v1, @"SYNCENT", v43);
        CFRelease(v43);
        v44 = sub_100079684(qword_1000EB5C0);
        CFDictionaryAddValue(v1, @"SYNCBLOB", v44);
        CFRelease(v44);
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v45 = qword_1000EB308;
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_103;
        }

        v83 = 0;
        v46 = sub_1000011A8(1);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v47 = v46;
        }

        else
        {
          v47 = v46 & 0xFFFFFFFE;
        }

        if (v47)
        {
          v86 = 67109120;
          v87 = Count;
          v48 = _os_log_send_and_compose_impl(v47, &v83, 0, 0, &_mh_execute_header, v45, 0, "SAVED bubble UID with entries %d", &v86);
          goto LABEL_99;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v45 = qword_1000EB308;
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_103;
        }

        v83 = 0;
        v49 = sub_1000011A8(1);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v50 = v49;
        }

        else
        {
          v50 = v49 & 0xFFFFFFFE;
        }

        if (v50)
        {
          LOWORD(v86) = 0;
          v48 = _os_log_send_and_compose_impl(v50, &v83, 0, 0, &_mh_execute_header, v45, 0, "NOTHING TO SAVE FOR SYNC BUBBLE UID LIST");
LABEL_99:
          v51 = v48;
          if (v48)
          {
            sub_100002A8C(v48);
          }

          goto LABEL_102;
        }
      }

      v51 = 0;
LABEL_102:
      free(v51);
LABEL_103:

      goto LABEL_104;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v7 = qword_1000EB308;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v83 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LOWORD(v86) = 0;
        v10 = _os_log_send_and_compose_impl(v9, &v83, 0, 0, &_mh_execute_header, v7, 0, "No UserSessions", &v86, 2);
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v25 = qword_1000EB308;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v83 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v86) = 0;
        LODWORD(v82) = 2;
        v28 = _os_log_send_and_compose_impl(v27, &v83, 0, 0, &_mh_execute_header, v25, 0, "SaveAllUserSessions failed", &v86, v82);
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    return 0;
  }

  return result;
}

void sub_100019A54()
{
  v0 = sub_1000561D0(UMDAPFSSupportVolumeHelper, qword_1000EB608, byte_1000EB602);
  v1 = qword_1000EB2D8;
  qword_1000EB2D8 = v0;

  v2 = sub_100053060(UMDUserManager, qword_1000EB2D8);
  v3 = qword_1000EB2E0;
  qword_1000EB2E0 = v2;

  if (MGGetBoolAnswer())
  {
    BYTE4(v49) = 1;
    LODWORD(v52) = 0;
    if (sub_1000725AC(&v52, &v49 + 4))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v4 = qword_1000EB308;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 0;
        v5 = sub_1000011A8(1);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v5;
        }

        else
        {
          v6 = v5 & 0xFFFFFFFE;
        }

        if (v6)
        {
          LOWORD(v50[0]) = 0;
          LODWORD(v49) = 2;
          v7 = _os_log_send_and_compose_impl(v6, v51, 0, 0, &_mh_execute_header, v4, 0, "SDV needs Migration", v50, v49);
          v8 = v7;
          if (v7)
          {
            sub_100002A8C(v7);
          }
        }

        else
        {
          v8 = 0;
        }

        free(v8);
      }
    }

    if (!BYTE4(v49))
    {
      byte_1000EB603 = 1;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v9 = qword_1000EB308;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 0;
        v10 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          LOWORD(v50[0]) = 0;
          LODWORD(v49) = 2;
          v12 = _os_log_send_and_compose_impl(v11, v51, 0, 0, &_mh_execute_header, v9, 0, "SDV UnEncrypted", v50, v49);
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      v14 = sub_100089A80(qword_1000EB608);
      [v14 setIgnoreIdentityMethods:byte_1000EB603];
    }
  }

  Count = sub_10003E524(1);
  if (!Count)
  {
    goto LABEL_49;
  }

  sub_1000897B8(qword_1000EB2E0, qword_1000EB5A0);
  Count = qword_1000EB5A0;
  if (qword_1000EB5A0)
  {
    Count = CFArrayGetCount(qword_1000EB5A0);
    if (Count >= 1)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v17 = qword_1000EB308;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v52 = 0;
        LODWORD(v18) = sub_1000011A8(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v18;
        }

        else
        {
          v18 = v18 & 0xFFFFFFFE;
        }

        if (v18)
        {
          v19 = qword_1000EB5A0;
          v20 = v17;
          v21 = CFArrayGetCount(v19);
          *v51 = 134217984;
          *&v51[4] = v21;
          v22 = _os_log_send_and_compose_impl(v18, &v52, 0, 0, &_mh_execute_header, v20, 0, "Loaded %zu user sessions", v51);

          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }
    }
  }

  v23 = dword_1000EB5B0;
  if (dword_1000EB5B0 == 1 && !dword_1000EB5B8)
  {
    Count = sub_10008A58C(qword_1000EB2E0);
    if (Count == 502)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    dword_1000EB5B8 = v24;
LABEL_49:
    v23 = dword_1000EB5B0;
  }

  if (v23 != 1)
  {
    if (qword_1000EB2E8)
    {
      sub_100089D28(Count, v16);
      goto LABEL_92;
    }

    v25 = sub_100056424(UMDPersonaManager, qword_1000EB2E0);
    v26 = qword_1000EB2E8;
    qword_1000EB2E8 = v25;

    v50[0] = 0;
    if (!sub_10003E884(v50))
    {
      if (qword_1000EB330 != -1)
      {
        goto LABEL_104;
      }

      while (1)
      {
        v44 = qword_1000EB328;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v51 = 0;
          v45 = sub_1000011A8(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v46 = v45;
          }

          else
          {
            v46 = v45 & 0xFFFFFFFE;
          }

          if (v46)
          {
            LODWORD(v52) = 67109120;
            HIDWORD(v52) = v50[0];
            LODWORD(v49) = 8;
            v48 = _os_log_send_and_compose_impl(v46, v51, 0, 0, &_mh_execute_header, v44, 16, "Failed to load persona manifest: %{darwin.errno}d", &v52, v49);
            v47 = v48;
            if (v48)
            {
              sub_100002A8C(v48);
            }
          }

          else
          {
            v47 = 0;
          }

          free(v47);
        }

        abort_with_reason();
LABEL_104:
        sub_100089D40();
      }
    }

    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v27 = qword_1000EB328;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      v28 = sub_1000011A8(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        LOWORD(v52) = 0;
        LODWORD(v49) = 2;
        v30 = _os_log_send_and_compose_impl(v29, v51, 0, 0, &_mh_execute_header, v27, 0, "Loaded persona manifest", &v52, v49);
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v32 = qword_1000EB328;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v52 = 0;
      LODWORD(v33) = sub_1000011A8(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = v33;
      }

      else
      {
        v33 = v33 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v34 = qword_1000EB2E8;
        v35 = v32;
        v36 = sub_1000013A0(v34);
        *v51 = 138412290;
        *&v51[4] = v36;
        LODWORD(v49) = 12;
        v37 = _os_log_send_and_compose_impl(v33, &v52, 0, 0, &_mh_execute_header, v35, 2, "Persona state: %@", v51, v49);

        if (v37)
        {
          sub_100002A8C(v37);
        }
      }

      else
      {
        v37 = 0;
      }

      free(v37);
    }

    v38 = sub_100089790(qword_1000EB2E8);
    sub_10008BA00(v38);
  }

  HIDWORD(v49) = -1;
  v50[0] = -1;
  if (sub_10008AE10(qword_1000EB2E0, v50, &v49 + 1))
  {
    if (qword_1000EB320 == -1)
    {
LABEL_78:
      v39 = qword_1000EB318;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v52 = 0;
        v40 = sub_1000011A8(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v40;
        }

        else
        {
          v41 = v40 & 0xFFFFFFFE;
        }

        if (v41)
        {
          *v51 = 67109376;
          *&v51[4] = v50[0];
          *&v51[8] = 1024;
          *&v51[10] = HIDWORD(v49);
          v42 = _os_log_send_and_compose_impl(v41, &v52, 0, 0, &_mh_execute_header, v39, 0, "Found nextsession bag with previous uid %d, next uid %d. Restarting user switch...", v51, 14);
          v43 = v42;
          if (v42)
          {
            sub_100002A8C(v42);
          }
        }

        else
        {
          v43 = 0;
        }

        free(v43);
      }

      sub_10001A244(v50[0], SHIDWORD(v49));
      return;
    }

LABEL_92:
    sub_100089D68();
    goto LABEL_78;
  }

  if (dword_1000EB5B0 == 1)
  {
    sub_10001A30C();
  }
}

void sub_10001A244(int a1, int a2)
{
  if (!xpc_user_sessions_enabled() || xpc_user_sessions_get_session_uid())
  {
    sub_100018028("UserManagement user switch failed: usermanagerd is not running in the system session");
  }

  else if (byte_1000EB2F0 != 1)
  {
    byte_1000EB2F0 = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B7C8;
    block[3] = &unk_1000DCE88;
    v5 = a1;
    v6 = a2;
    dispatch_async(qword_1000EB620, block);
    return;
  }

  sub_100018028("UserManagement user switch failed: attempt to perform a user switch while already performing a user switch");
  sub_10001A30C();
}

void sub_10001A30C()
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v0 = qword_1000EB308;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *&v36 = 0;
    v1 = sub_1000011A8(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v1;
    }

    else
    {
      v2 = v1 & 0xFFFFFFFE;
    }

    if (v2)
    {
      LOWORD(v37) = 0;
      v3 = _os_log_send_and_compose_impl(v2, &v36, 0, 0, &_mh_execute_header, v0, 0, "IN startAutoLoadSyncBubbleSessions", &v37, 2);
      v4 = v3;
      if (v3)
      {
        sub_100002A8C(v3);
      }
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }

  if (sub_10001B624())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *&v36 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v37) = 0;
      LODWORD(v35) = 2;
      v34 = &v37;
      v8 = " XXXXXXXXXXXXXX BOOTARGS SET TO STOP AUTO BUBBLE LOADS XXXXXXXXXXXXXX";
LABEL_21:
      v9 = &v36;
      goto LABEL_42;
    }

    goto LABEL_63;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v10 = qword_1000EB308;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *&v36 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      LOWORD(v37) = 0;
      LODWORD(v35) = 2;
      v13 = _os_log_send_and_compose_impl(v12, &v36, 0, 0, &_mh_execute_header, v10, 0, "XXXXXXXXXXXXXX SYNC BUBBLE AUTOLOAD ENABLED BY BOOTARGS XXXXXXXXXXXXXX", &v37, v35);
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  if (qword_1000EB5F8)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v5 = qword_1000EB318;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v37 = 0;
    v15 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v15;
    }

    else
    {
      v7 = v15 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LODWORD(v36) = 134217984;
      *(&v36 + 4) = qword_1000EB5F8;
      LODWORD(v35) = 12;
      v34 = &v36;
      v8 = "Sync bubble timer (%p) already running, not starting another";
      v9 = &v37;
LABEL_42:
      v16 = _os_log_send_and_compose_impl(v7, v9, 0, 0, &_mh_execute_header, v5, 0, v8, v34, v35, v36, v37);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }

      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (!qword_1000EB5C0)
  {
    return;
  }

  if (CFArrayGetCount(qword_1000EB5C0) < 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    *&v36 = 0;
    v24 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v24;
    }

    else
    {
      v7 = v24 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v37) = 0;
      LODWORD(v35) = 2;
      v34 = &v37;
      v8 = "No uids in the bubble to kickstart, returning";
      goto LABEL_21;
    }

LABEL_63:
    v17 = 0;
LABEL_64:
    free(v17);
LABEL_65:

    return;
  }

  v18 = sub_10001B6CC();
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v19 = qword_1000EB308;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *&v36 = 0;
    v20 = sub_1000011A8(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      LODWORD(v37) = 67109120;
      HIDWORD(v37) = v18;
      v22 = _os_log_send_and_compose_impl(v21, &v36, 0, 0, &_mh_execute_header, v19, 0, "XXXXXXXXXXXXXX Kickstart after %d seconds XXXXXXXXXXXXXX", &v37);
      v23 = v22;
      if (v22)
      {
        sub_100002A8C(v22);
      }
    }

    else
    {
      v23 = 0;
    }

    free(v23);
  }

  v25 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000EB610);
  v26 = qword_1000EB5F8;
  qword_1000EB5F8 = v25;

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v27 = qword_1000EB318;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 0;
    v28 = sub_1000011A8(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      LODWORD(v36) = 134217984;
      *(&v36 + 4) = qword_1000EB5F8;
      v30 = _os_log_send_and_compose_impl(v29, &v37, 0, 0, &_mh_execute_header, v27, 0, "Starting sync bubble timer (%p)", &v36);
      v31 = v30;
      if (v30)
      {
        sub_100002A8C(v30);
      }
    }

    else
    {
      v31 = 0;
    }

    free(v31);
  }

  v32 = qword_1000EB5F8;
  v33 = dispatch_time(0, 1000000000 * v18);
  dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(qword_1000EB5F8, &stru_1000DD570);
  dispatch_activate(qword_1000EB5F8);
}

uint64_t sub_10001A918(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  if (a1)
  {
    v2 = a2;
    if (([qword_1000EB2D8 mountVolumeWithSession:a1 mountPath:@"/private/var/mobile" error:&v20 forPersona:0] & 1) == 0)
    {
      if (qword_1000EB310 != -1)
      {
        goto LABEL_38;
      }

      while (1)
      {
        v14 = qword_1000EB308;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 0;
          v15 = sub_1000011A8(1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
          }

          else
          {
            v16 = v15 & 0xFFFFFFFE;
          }

          if (v16)
          {
            v21[0] = 67109120;
            v21[1] = v20;
            v18 = _os_log_send_and_compose_impl(v16, &v19, 0, 0, &_mh_execute_header, v14, 0, "FAIL TO MOUNT DEFAULT SESSION with ERROR: %d", v21);
            v17 = v18;
            if (v18)
            {
              sub_100002A8C(v18);
            }
          }

          else
          {
            v17 = 0;
          }

          free(v17);
        }

        sub_100018028("FAILED TO MOUNT USER DATA VOLUME with ERROR: %d", v20);
LABEL_38:
        sub_100089CEC();
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v4 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
        LOWORD(v21[0]) = 0;
        v6 = _os_log_send_and_compose_impl(v5, &v19, 0, 0, &_mh_execute_header, v3, 0, "MOUNTED DEFAULT SESSION, ensure tmpdir exists...", v21, 2);
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    sub_10001AC18("/private/var/mobile", v2, v2);
    return 1;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        LOWORD(v21[0]) = 0;
        v11 = _os_log_send_and_compose_impl(v10, &v19, 0, 0, &_mh_execute_header, v8, 0, "NULL Session sent, mountDefaultSession FAILED", v21, 2);
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    return 0;
  }
}

uint64_t sub_10001AC18(uint64_t a1, uid_t a2, gid_t a3)
{
  memset(&v53, 0, sizeof(v53));
  bzero(path, 0x400uLL);
  __strlcpy_chk();
  __strlcat_chk();
  if (!stat(path, &v53))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v55 = 136315138;
        *v56 = path;
        v13 = _os_log_send_and_compose_impl(v12, &v54, 0, 0, &_mh_execute_header, v10, 0, "Path: %s already exits, skipping", &v55);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v15 = 0;
    goto LABEL_114;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v54 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v55 = 136315138;
      *v56 = path;
      v8 = _os_log_send_and_compose_impl(v7, &v54, 0, 0, &_mh_execute_header, v5, 0, "Creating path: %s", &v55);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (mkpath_np(path, 0x3FFu))
  {
    v15 = *__error();
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_114;
    }

    v54 = 0;
    LODWORD(v16) = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 = v16 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v17 = v10;
      v18 = strerror(v15);
      v55 = 136315394;
      *v56 = path;
      *&v56[8] = 2080;
      *v57 = v18;
      v19 = _os_log_send_and_compose_impl(v16, &v54, 0, 0, &_mh_execute_header, v17, 0, "failed to create: %s (%s)\n", &v55, 22);

      if (!v19)
      {
        goto LABEL_113;
      }

      goto LABEL_111;
    }

    goto LABEL_112;
  }

  if (chmod(path, 0x3FFu))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v20 = qword_1000EB308;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 0;
      LODWORD(v21) = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v21;
      }

      else
      {
        v21 = v21 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v22 = v20;
        v23 = __error();
        v24 = strerror(*v23);
        v55 = 136315394;
        *v56 = path;
        *&v56[8] = 2080;
        *v57 = v24;
        v25 = _os_log_send_and_compose_impl(v21, &v54, 0, 0, &_mh_execute_header, v22, 0, "failed to change permissions on: %s (%s)\n", &v55, 22);

        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v26 = qword_1000EB308;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v54 = 0;
    v27 = sub_1000011A8(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v55 = 67109376;
      *v56 = a2;
      *&v56[4] = 1024;
      *&v56[6] = a3;
      v29 = _os_log_send_and_compose_impl(v28, &v54, 0, 0, &_mh_execute_header, v26, 0, "setting uid:%d, gid:%d", &v55, 14);
      v30 = v29;
      if (v29)
      {
        sub_100002A8C(v29);
      }
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }

  if (chown(path, a2, a3))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v31 = qword_1000EB308;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 0;
      LODWORD(v32) = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v32;
      }

      else
      {
        v32 = v32 & 0xFFFFFFFE;
      }

      if (v32)
      {
        v33 = v31;
        v34 = __error();
        v35 = strerror(*v34);
        v55 = 136315394;
        *v56 = path;
        *&v56[8] = 2080;
        *v57 = v35;
        LODWORD(v52) = 22;
        v36 = _os_log_send_and_compose_impl(v32, &v54, 0, 0, &_mh_execute_header, v33, 0, "failed to change ownership on: %s (%s)\n", &v55, v52);

        if (v36)
        {
          sub_100002A8C(v36);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }
  }

  v37 = open_dprotected_np(path, 0, 0, 1);
  if (v37 != -1)
  {
    v38 = v37;
    if (fcntl(v37, 64, 4))
    {
      v15 = *__error();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v39 = qword_1000EB308;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v54 = 0;
        LODWORD(v40) = sub_1000011A8(1);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v40;
        }

        else
        {
          v40 = v40 & 0xFFFFFFFE;
        }

        if (v40)
        {
          v41 = v39;
          v42 = strerror(v15);
          v55 = 136315394;
          *v56 = v42;
          *&v56[8] = 2080;
          *v57 = path;
          LODWORD(v52) = 22;
          v43 = _os_log_send_and_compose_impl(v40, &v54, 0, 0, &_mh_execute_header, v41, 0, "failed (%s) to update class for %s\n", &v55, v52);

          if (v43)
          {
            sub_100002A8C(v43);
          }
        }

        else
        {
          v43 = 0;
        }

        free(v43);
      }

      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v15 = 0;
      if ((v38 & 0x80000000) == 0)
      {
LABEL_97:
        close(v38);
      }
    }

    if (!v15)
    {
      return v15;
    }

LABEL_103:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_114;
    }

    v54 = 0;
    v49 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
    }

    else
    {
      v50 = v49 & 0xFFFFFFFE;
    }

    if (v50)
    {
      v55 = 136315650;
      *v56 = path;
      *&v56[8] = 1024;
      *v57 = 4;
      *&v57[4] = 1024;
      *&v57[6] = v15;
      v19 = _os_log_send_and_compose_impl(v50, &v54, 0, 0, &_mh_execute_header, v10, 0, "Setting PATH:%s to class:%d returned with err:%d", &v55, 24, v53.st_dev);
      if (!v19)
      {
LABEL_113:
        free(v19);
LABEL_114:

        return v15;
      }

LABEL_111:
      sub_100002A8C(v19);
      goto LABEL_113;
    }

LABEL_112:
    v19 = 0;
    goto LABEL_113;
  }

  v15 = *__error();
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v44 = qword_1000EB308;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v54 = 0;
    LODWORD(v45) = sub_1000011A8(1);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v45;
    }

    else
    {
      v45 = v45 & 0xFFFFFFFE;
    }

    if (v45)
    {
      v46 = v44;
      v47 = strerror(v15);
      v55 = 136315394;
      *v56 = v47;
      *&v56[8] = 2080;
      *v57 = path;
      LODWORD(v52) = 22;
      v48 = _os_log_send_and_compose_impl(v45, &v54, 0, 0, &_mh_execute_header, v46, 0, "failed (%s) to open path %s\n", &v55, v52);

      if (v48)
      {
        sub_100002A8C(v48);
      }
    }

    else
    {
      v48 = 0;
    }

    free(v48);
  }

  if (v15)
  {
    goto LABEL_103;
  }

  return v15;
}

BOOL sub_10001B57C()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  return !sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "usersession_enable", __len) != 0;
}

BOOL sub_10001B624()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  return !sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "stop_auto_bubblelaunch", __len) != 0;
}

uint64_t sub_10001B6CC()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (sysctlbyname("kern.bootargs", __big, &__len, 0, 0))
  {
    return 120;
  }

  v3 = 0;
  __big[1023] = 0;
  v1 = strnstr(__big, "bubblelaunch_delay=", __len);
  v0 = 120;
  if (v1)
  {
    if (sscanf(v1, "bubblelaunch_delay=%d", &v3) == 1)
    {
      return v3;
    }

    else
    {
      return 120;
    }
  }

  return v0;
}

char *sub_10001B7A0()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (sysctlbyname("kern.bootargs", __big, &__len, 0, 0))
  {
    return 0;
  }

  result = strnstr(__big, "eds_debug", __len);
  if (result)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v1 = qword_1000EB308;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v2 = sub_1000011A8(1);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v2;
      }

      else
      {
        v3 = v2 & 0xFFFFFFFE;
      }

      if (v3)
      {
        v6 = 0;
        v4 = _os_log_send_and_compose_impl(v3, &v7, 0, 0, &_mh_execute_header, v1, 0, "EDS DEBUG Mode is Requested", &v6, 2);
        v5 = v4;
        if (v4)
        {
          sub_100002A8C(v4);
        }
      }

      else
      {
        v5 = 0;
      }

      free(v5);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10001B910()
{
  v13 = 0;
  v12 = 4;
  v11 = 544;
  if (sysctlbyname("security.mac.sandbox.debug_mode", &v13, &v12, &v11, 4uLL))
  {
    v0 = *__error();
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v1 = qword_1000EB308;
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v10 = 0;
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v14 = 67109120;
      v15 = v0;
      v4 = _os_log_send_and_compose_impl(v3, &v10, 0, 0, &_mh_execute_header, v1, 0, "Failed to get security.mac.sandbox.debug_mode; error:%d", &v14);
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v11 = v13 | 0x220;
  if (sysctlbyname("security.mac.sandbox.debug_mode", 0, 0, &v11, 4uLL))
  {
    v5 = *__error();
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v1 = qword_1000EB308;
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v10 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v14 = 67109120;
      v15 = v5;
      v4 = _os_log_send_and_compose_impl(v7, &v10, 0, 0, &_mh_execute_header, v1, 0, "Failed to add EDS bits to security.mac.sandbox.debug_mode; error:%d", &v14);
LABEL_19:
      v8 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }

      goto LABEL_22;
    }

LABEL_21:
    v8 = 0;
LABEL_22:
    free(v8);
LABEL_23:

    return 0;
  }

  return 1;
}

void sub_10001BB44()
{
  if (!sub_10001B7A0())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v0 = qword_1000EB308;
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    v10 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (!v5)
    {
      goto LABEL_29;
    }

    LOWORD(v9) = 0;
    v3 = _os_log_send_and_compose_impl(v5, &v10, 0, 0, &_mh_execute_header, v0, 2, "No EDS Debug Set", &v9, 2, v9, v10);
LABEL_27:
    v8 = v3;
    if (v3)
    {
      sub_100002A8C(v3);
    }

    goto LABEL_30;
  }

  if (!sub_10001B910())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v0 = qword_1000EB308;
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v10 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (!v7)
    {
      goto LABEL_29;
    }

    LOWORD(v9) = 0;
    v3 = _os_log_send_and_compose_impl(v7, &v10, 0, 0, &_mh_execute_header, v0, 0, "Failed to set EDS Debug session", &v9, 2, v9, v10);
    goto LABEL_27;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v0 = qword_1000EB308;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v1 = sub_1000011A8(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v1;
    }

    else
    {
      v2 = v1 & 0xFFFFFFFE;
    }

    if (v2)
    {
      LOWORD(v9) = 0;
      v3 = _os_log_send_and_compose_impl(v2, &v10, 0, 0, &_mh_execute_header, v0, 0, "Successful setting of EDS Debug session", &v9, 2, v9, v10);
      goto LABEL_27;
    }

LABEL_29:
    v8 = 0;
LABEL_30:
    free(v8);
  }

LABEL_31:
}

CFNumberRef sub_10001BD58(uint64_t a1)
{
  v1 = a1;
  valuePtr = a1;
  if (qword_1000EB5C0)
  {
    sub_10001BEFC(a1);
  }

  else
  {
    qword_1000EB5C0 = sub_1000799A8();
  }

  result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (result)
  {
    v3 = result;
    CFArrayAppendValue(qword_1000EB5C0, result);
    qword_1000EB5E8 = CFArrayGetCount(qword_1000EB5C0);
    CFRelease(v3);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v11[0] = 67109378;
        v11[1] = v1;
        v12 = 2112;
        v13 = qword_1000EB5C0;
        v7 = _os_log_send_and_compose_impl(v6, &v9, 0, 0, &_mh_execute_header, v4, 0, "ADDING UID:%d to BUBBLE TABLE: table %@", v11, 18);
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10001BEFC(int a1)
{
  result = qword_1000EB5C0;
  if (qword_1000EB5C0)
  {
    valuePtr = 0;
    if (CFArrayGetCount(qword_1000EB5C0) < 1)
    {
      return 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C0, v3);
        if (ValueAtIndex)
        {
          v5 = ValueAtIndex;
          v6 = CFGetTypeID(ValueAtIndex);
          if (v6 == CFNumberGetTypeID() && CFNumberGetValue(v5, kCFNumberIntType, &valuePtr) && valuePtr == a1)
          {
            break;
          }
        }

        if (CFArrayGetCount(qword_1000EB5C0) <= ++v3)
        {
          return 0;
        }
      }

      CFArrayRemoveValueAtIndex(qword_1000EB5C0, v3);
      qword_1000EB5E8 = CFArrayGetCount(qword_1000EB5C0);
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v8 = qword_1000EB308;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          v15[0] = 67109120;
          v15[1] = a1;
          v11 = _os_log_send_and_compose_impl(v10, &v13, 0, 0, &_mh_execute_header, v8, 0, "REMOVING UID:%d to BUBBLE TABLE", v15);
          v12 = v11;
          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v12 = 0;
        }

        free(v12);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_10001C0D0(CFDictionaryRef theDict, uint64_t a2)
{
  v3 = theDict;
  if (theDict || (sub_10008A2F4(qword_1000EB2E0, a2), result = objc_claimAutoreleasedReturnValue(), (v3 = result) != 0))
  {
    if (CFDictionaryContainsKey(v3, kUMUserSessionSyncMachServicesKey))
    {
      CFDictionaryRemoveValue(v3, kUMUserSessionSyncMachServicesKey);
    }

    if (CFDictionaryContainsKey(v3, kUMUserSessionSyncTasksKey))
    {
      CFDictionaryRemoveValue(v3, kUMUserSessionSyncTasksKey);
    }

    if (CFDictionaryContainsKey(v3, kUMUserSessionDirtyKey))
    {
      CFDictionarySetValue(v3, kUMUserSessionDirtyKey, kCFBooleanFalse);
    }

    v5 = sub_1000023E8(v3, kUMUserSessionIDKey);
    sub_10001BEFC(v5);
    if (!theDict)
    {
      CFRelease(v3);
    }

    return 1;
  }

  return result;
}

CFNumberRef sub_10001C1B8(int a1)
{
  valuePtr = a1;
  if (qword_1000EB5C8)
  {
    sub_10001C244(a1);
  }

  else
  {
    qword_1000EB5C8 = sub_1000799A8();
  }

  result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (result)
  {
    v2 = result;
    CFArrayAppendValue(qword_1000EB5C8, result);
    qword_1000EB5F0 = CFArrayGetCount(qword_1000EB5C8);
    CFRelease(v2);
    return 1;
  }

  return result;
}

uint64_t sub_10001C244(int a1)
{
  result = qword_1000EB5C8;
  if (qword_1000EB5C8)
  {
    valuePtr = 0;
    if (CFArrayGetCount(qword_1000EB5C8) < 1)
    {
      return 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C8, v3);
        if (ValueAtIndex)
        {
          v5 = ValueAtIndex;
          v6 = CFGetTypeID(ValueAtIndex);
          if (v6 == CFNumberGetTypeID() && CFNumberGetValue(v5, kCFNumberIntType, &valuePtr) && valuePtr == a1)
          {
            break;
          }
        }

        if (CFArrayGetCount(qword_1000EB5C8) <= ++v3)
        {
          return 0;
        }
      }

      CFArrayRemoveValueAtIndex(qword_1000EB5C8, v3);
      qword_1000EB5F0 = CFArrayGetCount(qword_1000EB5C8);
      return 1;
    }
  }

  return result;
}

uint64_t sub_10001C320()
{
  if (!qword_1000EB5C8)
  {
    return 0xFFFFFFFFLL;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C8, 0);
  if (!ValueAtIndex)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = ValueAtIndex;
  v2 = CFGetTypeID(ValueAtIndex);
  if (v2 != CFNumberGetTypeID())
  {
    return 0xFFFFFFFFLL;
  }

  valuePtr = 0;
  if (CFNumberGetValue(v1, kCFNumberIntType, &valuePtr))
  {
    return valuePtr;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10001C3A8(uint64_t a1, uint64_t a2, gid_t a3)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v37) = 0;
      v8 = _os_log_send_and_compose_impl(v7, v34, 0, 0, &_mh_execute_header, v5, 0, "LocalUserEnrollment file Layout Set", &v37, 2);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v10 = +[UMLManager sharedManager];
  v11 = [NSString stringWithCString:a1 encoding:4];
  v12 = [v11 stringByAppendingString:@"/"];
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      *v34 = 138412546;
      *&v34[4] = @"/";
      v35 = 2112;
      v36 = v12;
      LODWORD(v31) = 22;
      v16 = _os_log_send_and_compose_impl(v15, &v37, 0, 0, &_mh_execute_header, v13, 0, "Updating the User template:%@  to homePathString:%@", v34, v31);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  v33 = 0;
  v18 = [v10 createUserLayoutForUserwithUserID:a2 withAKSSetup:1 onUserVolumePath:v12 fromSystemVolumePath:@"/" withError:&v33];
  v19 = v33;
  v20 = v19;
  if (v18)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v21 = qword_1000EB308;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LOWORD(v37) = 0;
        v24 = _os_log_send_and_compose_impl(v23, v34, 0, 0, &_mh_execute_header, v21, 0, "UMLLayout successful");
        goto LABEL_40;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v25 = [v19 code];
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v21 = qword_1000EB308;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LODWORD(v37) = 67109120;
        HIDWORD(v37) = v25;
        v24 = _os_log_send_and_compose_impl(v27, v34, 0, 0, &_mh_execute_header, v21, 0, "UMLLayout failed with error:%d", &v37);
LABEL_40:
        v28 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }

        goto LABEL_43;
      }

LABEL_42:
      v28 = 0;
LABEL_43:
      free(v28);
    }
  }

  v29 = sub_10001AC18(a1, a2, a3);
  return v29;
}

uint64_t sub_10001C7AC(char *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_10001C94C;
  v17 = &unk_1000DD508;
  v18 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_10001C978;
  v13 = &unk_1000DD528;
  v14 = a2;
  v3 = v15;
  v4 = v11;
  v19[0] = a1;
  v19[1] = 0;
  v5 = fts_open(v19, 84, 0);
  if (v5)
  {
    v6 = v5;
    v7 = fts_read(v5);
    if (v7)
    {
      v8 = v7;
      do
      {
        fts_info = v8->fts_info;
        if (fts_info == 8)
        {
          v12(v4, v8);
        }

        else if (fts_info == 1 && (v16(v3, v8) & 1) == 0)
        {
          fts_set(v6, v8, 4);
        }

        v8 = fts_read(v6);
      }

      while (v8);
    }

    fts_close(v6);
  }

  return 0;
}

BOOL sub_10001C98C(int a1)
{
  v17 = a1;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v18 = 67109120;
      v19 = a1;
      v5 = _os_log_send_and_compose_impl(v4, &v16, 0, 0, &_mh_execute_header, v2, 0, "Trying to set net.inet.tcp.recvbg with value:%d", &v18);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = sysctlbyname("net.inet.tcp.recvbg", 0, 0, &v17, 4uLL);
  if (v7)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v18 = 67109120;
        v19 = v7;
        v11 = _os_log_send_and_compose_impl(v10, &v16, 0, 0, &_mh_execute_header, v8, 0, "FAILED to set net.inet.tcp.recvbg with error:%d", &v18);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v18 = 67109120;
        v19 = v17;
        v11 = _os_log_send_and_compose_impl(v13, &v16, 0, 0, &_mh_execute_header, v8, 0, "SUCCESS: set net.inet.tcp.recvbg with value: %d", &v18);
LABEL_29:
        v14 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }

        goto LABEL_32;
      }

LABEL_31:
      v14 = 0;
LABEL_32:
      free(v14);
    }
  }

  return v7 == 0;
}

const __CFDictionary *sub_10001CC3C()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = sub_100079524(v0, kMGQDiskUsageTotalDiskCapacity);
    v3 = sub_100079524(v1, kMGQDiskUsageTotalSystemCapacity);
    v1 = sub_100079524(v1, kMGQDiskUsageTotalDataCapacity);
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v12 = 134218496;
        v13 = v2;
        v14 = 2048;
        v15 = v3;
        v16 = 2048;
        v17 = v1;
        v7 = _os_log_send_and_compose_impl(v6, &v11, 0, 0, &_mh_execute_header, v4, 0, "TOTAL:%lld Bytes, SYSTEM:%lld Bytes, DATA:%lld Bytes", &v12, 32, v10);
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }
  }

  return v1;
}

uint64_t sub_10001CDE0()
{
  memset(&v2, 0, 512);
  strcpy(v1, "/private/var");
  if (statfs(v1, &v2))
  {
    return 0;
  }

  else
  {
    return v2.f_bfree * v2.f_bsize;
  }
}

uint64_t sub_10001CEAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001CC3C() / 0x100000;
  if (v6 >= 0x4000)
  {
    v7 = -16384;
    if (v6 < 0x8000)
    {
      v7 = -8192;
    }

    v9 = 10;
    if (v6 < 0x8000)
    {
      v8 = 1024;
    }

    else
    {
      v9 = 11;
      v8 = 2048;
    }

    v10 = 0x4000;
    if (v6 < 0x8000)
    {
      v10 = 0x2000;
    }

    v47 = v10;
  }

  else
  {
    v7 = -4096;
    v47 = 4096;
    v8 = 1024;
    v9 = 10;
  }

  v11 = v6 + v7;
  v12 = (v6 + v7) >> v9;
  if (v12 >= 16)
  {
    if (v11 / 0xF >= v8)
    {
      v12 = 15;
      v8 = v11 / 0xF;
    }

    else
    {
      v12 = v11 / v8;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      *v50 = 67109376;
      *&v50[4] = a1;
      *&v50[8] = 1024;
      *&v50[10] = v12;
      v16 = _os_log_send_and_compose_impl(v15, &v53, 0, 0, &_mh_execute_header, v13, 0, "Requested Number of Users:%d, Maximum configurable:%d", v50, 14);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v18 = qword_1000EB308;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 0;
    v19 = sub_1000011A8(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      *v50 = 134218496;
      *&v50[4] = v6;
      *&v50[12] = 2048;
      *&v50[14] = v47;
      v51 = 2048;
      v52 = v11;
      LODWORD(v45) = 32;
      v21 = _os_log_send_and_compose_impl(v20, &v53, 0, 0, &_mh_execute_header, v18, 0, "TOTAL DISK SPACE:%lld MBytes, System Space OFFSET:%lld MBytes, Space for Users:%lld MBytes", v50, v45, v46);
      v22 = v21;
      if (v21)
      {
        sub_100002A8C(v21);
      }
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  if (a1 == -1)
  {
    v28 = v11 / 0x3E8;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = 100 * v28;
    v29 = qword_1000EB308;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v53 = 0xA04000100;
        v32 = _os_log_send_and_compose_impl(v31, v50, 0, 0, &_mh_execute_header, v29, 0, "Allocating default number of users(%d) as none specified", &v53);
        v33 = v32;
        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v12 = 10;
  }

  else if (v12 <= a1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v34 = qword_1000EB308;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      v35 = sub_1000011A8(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        LOWORD(v53) = 0;
        LODWORD(v45) = 2;
        v37 = _os_log_send_and_compose_impl(v36, v50, 0, 0, &_mh_execute_header, v34, 0, "Allocating Default User Size as specified users exceed the device limits", &v53, v45);
        v38 = v37;
        if (v37)
        {
          sub_100002A8C(v37);
        }
      }

      else
      {
        v38 = 0;
      }

      free(v38);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v53) = 0;
        LODWORD(v45) = 2;
        v26 = _os_log_send_and_compose_impl(v25, v50, 0, 0, &_mh_execute_header, v23, 0, "Allocating Custom User Size", &v53, v45);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v12 = a1;
    v8 = v11 / a1;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v39 = qword_1000EB308;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 0;
    v40 = sub_1000011A8(1);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 & 0xFFFFFFFE;
    }

    if (v41)
    {
      *v50 = 67109376;
      *&v50[4] = v12;
      *&v50[8] = 2048;
      *&v50[10] = v8;
      LODWORD(v45) = 18;
      v42 = _os_log_send_and_compose_impl(v41, &v53, 0, 0, &_mh_execute_header, v39, 0, "Configured for %d Users, Each with size :%lld MBytes", v50, v45);
      v43 = v42;
      if (v42)
      {
        sub_100002A8C(v42);
      }
    }

    else
    {
      v43 = 0;
    }

    free(v43);
  }

  if (a2)
  {
    *a2 = v8;
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a4)
  {
    *a4 = v47;
  }

  return v12;
}

__CFDictionary *sub_10001D4F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = 502;
  v188 = a1;
  v186 = 502;
  v184 = 0;
  v185 = 0;
  v183 = 0;
  v182 = a1;
  if (!a2)
  {
    v3 = MKBGetDeviceLockState();
    if (v3 != 3)
    {
      v9 = v3;
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v10 = qword_1000EB308;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v194 = 0;
        v11 = sub_1000011A8(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          *__str = 67109120;
          v192 = v9;
          v13 = _os_log_send_and_compose_impl(v12, v194, 0, 0, &_mh_execute_header, v10, 0, "MKB: CANNOT CONFIGURE LOGINWINDOW;  DEVICE SEEMS TO HAVE PASSCODE SET(lockstate:0x%x)", __str);
          v14 = v13;
          if (v13)
          {
            sub_100002A8C(v13);
          }
        }

        else
        {
          v14 = 0;
        }

        free(v14);
      }

      goto LABEL_283;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v194 = 0;
      v5 = sub_1000011A8(1);
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 & 0xFFFFFFFE;
      }

      if (v7)
      {
        *__str = 67109120;
        v192 = 3;
        v8 = _os_log_send_and_compose_impl(v7, v194, 0, 0, &_mh_execute_header, v6, 0, "MKB: DEVICE HAS NO PASSCODE SET(lockstate:0x%x)", __str);

        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {

        v8 = 0;
      }

      free(v8);
    }
  }

  byte_1000EA3D8 = 1;
  qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v15 = qword_1000EB308;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v194 = 0;
    v16 = sub_1000011A8(1);
    v17 = v15;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      *__str = 0;
      v19 = _os_log_send_and_compose_impl(v18, v194, 0, 0, &_mh_execute_header, v17, 0, "DEVICE CONFIGURED FOR NATIVE APFS DEVICE", __str, 2);

      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {

      v19 = 0;
    }

    free(v19);
  }

  v20 = sub_10007990C();
  if (v20)
  {
    v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v20, kUMUserSessionIDKey, v21);
    if (v21)
    {
      CFRelease(v21);
    }

    v22 = CFNumberCreate(0, kCFNumberIntType, &v186);
    CFDictionarySetValue(v20, kUMUserSessionGroupIDKey, v22);
    if (v22)
    {
      CFRelease(v22);
    }

    CFDictionarySetValue(v20, kUMUserSessionNeedsMountKey, kCFBooleanFalse);
    CFDictionarySetValue(v20, kUMUserSessionTypeKey, kUMUserSessionManagedDevice);
    CFDictionarySetValue(v20, kUMUserSessionForegroundKey, kCFBooleanFalse);
    CFDictionarySetValue(v20, kUMUserSessionDirtyKey, kCFBooleanFalse);
    CFDictionarySetValue(v20, kUMUserSessionDisabledKey, kCFBooleanFalse);
    CFDictionarySetValue(v20, kUMUserSessionLoginUserKey, kCFBooleanTrue);
    CFDictionarySetValue(v20, kUMUserSessionUserVolumeTypeKey, qword_1000EB2F8);
    CFDictionarySetValue(v20, kUMUserSessionisPrimaryKey, kCFBooleanTrue);
    CFDictionarySetValue(v20, kUMUserSessionisAdminKey, kCFBooleanTrue);
    bzero(__str, 0x400uLL);
    if (valuePtr <= 501)
    {
      v23 = valuePtr;
    }

    else
    {
      v23 = valuePtr - 501;
    }

    snprintf(__str, 0x400uLL, "euser%d", v23);
    v24 = CFStringCreateWithCString(0, __str, 0x8000100u);
    CFDictionarySetValue(v20, kUMUserSessionShortNameKey, v24);
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = CFStringCreateWithCString(0, "Loginwindow", 0x8000100u);
    CFDictionarySetValue(v20, kUMUserSessionNameKey, v25);
    CFDictionarySetValue(v20, kUMUserSessionFirstNameKey, v25);
    CFDictionarySetValue(v20, kUMUserSessionLastNameKey, v25);
    CFDictionarySetValue(v20, kUMUserSessionDisplayNameKey, v25);
    if (v25)
    {
      CFRelease(v25);
    }

    [qword_1000EB2D8 splitUserVolumeEnabled];
    v26 = CFUUIDCreate(0);
    v10 = sub_1000169B4(NSUUID, v26);
    v27 = CFUUIDCreateString(0, v26);
    CFDictionarySetValue(v20, kUMUserSessionUUIDKey, v27);
    if (v26)
    {
      CFRelease(v26);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    v28 = CFUUIDCreate(0);
    v29 = CFUUIDCreateString(0, v28);
    CFDictionarySetValue(v20, kUMUserSessionAlternateDSIDKey, v29);
    if (v28)
    {
      CFRelease(v28);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v31 = CFDateCreate(kCFAllocatorDefault, Current);
    CFDictionarySetValue(v20, kUMUserSessionCreateTimeStampKey, v31);
    CFDictionarySetValue(v20, kUMUserSessionLoginTimeStampKey, v31);
    if (v31)
    {
      CFRelease(v31);
    }

    qword_1000EA3E0 = 1001;
    v32 = CFNumberCreate(0, kCFNumberLongLongType, &qword_1000EA3E0);
    CFDictionarySetValue(v20, kUMUserSessionAPNSIDKey, v32);
    CFRelease(v32);
    v33 = CFUUIDCreate(0);
    v34 = CFUUIDCreateString(0, v33);
    if (v33)
    {
      CFRelease(v33);
    }

    bzero(buffer, 0x400uLL);
    CFStringGetCString(v34, buffer, 1024, 0x8000100u);
    if (v34)
    {
      CFRelease(v34);
    }

    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "/var/%s", buffer);
    v35 = CFStringCreateWithCString(0, __str, 0x8000100u);
    CFDictionarySetValue(v20, kUMUserSessionLibinfoHomeDirKey, v35);
    if (v35)
    {
      CFRelease(v35);
    }

    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "/private/var/%s", buffer);
    v36 = CFStringCreateWithCString(0, __str, 0x8000100u);
    CFDictionarySetValue(v20, kUMUserSessionHomeDirKey, v36);
    if (v36)
    {
      CFRelease(v36);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v37 = qword_1000EB308;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v194 = 0;
      v38 = sub_1000011A8(1);
      v39 = v37;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v38;
      }

      else
      {
        v40 = v38 & 0xFFFFFFFE;
      }

      if (v40)
      {
        LOWORD(v193[0]) = 0;
        LODWORD(v175) = 2;
        v41 = _os_log_send_and_compose_impl(v40, v194, 0, 0, &_mh_execute_header, v39, 0, "Create Users mount dir if not already set", v193, v175);

        if (v41)
        {
          sub_100002A8C(v41);
        }
      }

      else
      {

        v41 = 0;
      }

      free(v41);
    }

    [qword_1000EB2D8 createVolumeMountsDir:@"/var/Users"];
    if (sub_10001F508(__str, valuePtr, v186))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v42 = qword_1000EB308;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v194 = 0;
        v43 = sub_1000011A8(1);
        v42 = v42;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (v44)
        {
          LOWORD(v193[0]) = 0;
          LODWORD(v175) = 2;
          v45 = _os_log_send_and_compose_impl(v44, v194, 0, 0, &_mh_execute_header, v42, 0, "Created Loginwindow layout", v193, v175);
          goto LABEL_93;
        }

        goto LABEL_95;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v42 = qword_1000EB308;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v194 = 0;
        v46 = sub_1000011A8(1);
        v42 = v42;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v47 = v46;
        }

        else
        {
          v47 = v46 & 0xFFFFFFFE;
        }

        if (v47)
        {
          LOWORD(v193[0]) = 0;
          LODWORD(v175) = 2;
          v45 = _os_log_send_and_compose_impl(v47, v194, 0, 0, &_mh_execute_header, v42, 0, "Failed to create Loginwindow layout", v193, v175);
LABEL_93:
          v48 = v45;

          if (v48)
          {
            sub_100002A8C(v48);
          }

          goto LABEL_96;
        }

LABEL_95:

        v48 = 0;
LABEL_96:
        free(v48);
      }
    }

    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "/private/var/%s/Library/Preferences", buffer);
    v177 = v186;
    v178 = valuePtr;
    v49 = objc_autoreleasePoolPush();
    strcpy(v193, "/private/var/mobile/Library/Preferences/.GlobalPreferences.plist");
    bzero(v194, 0x400uLL);
    snprintf(v194, 0x400uLL, "%s/.GlobalPreferences.plist", __str);
    v50 = open(v193, 0);
    if (v50 == -1)
    {
      v62 = *__error();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v63 = qword_1000EB308;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v189[0] = 0;
        LODWORD(v64) = sub_1000011A8(1);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = v64;
        }

        else
        {
          v64 = v64 & 0xFFFFFFFE;
        }

        if (v64)
        {
          v65 = v49;
          v66 = v63;
          v67 = strerror(v62);
          *v195 = 136315394;
          *&v195[4] = v193;
          *&v195[12] = 2080;
          v196 = v67;
          LODWORD(v175) = 22;
          v68 = _os_log_send_and_compose_impl(v64, v189, 0, 0, &_mh_execute_header, v66, 0, "Failed to open Source Language  Pref file %s with error %s", v195, v175);

          if (v68)
          {
            sub_100002A8C(v68);
          }

          v49 = v65;
        }

        else
        {
          v68 = 0;
        }

        free(v68);
      }
    }

    else
    {
      v51 = v50;
      v179 = v2;
      bzero(v194, 0x400uLL);
      snprintf(v194, 0x400uLL, "%s/.GlobalPreferences.plist", __str);
      v52 = open(v194, 514, 384);
      if (v52 != -1)
      {
        v53 = v52;
        v176 = v49;
        v54 = v10;
        v55 = vm_page_size;
        v56 = malloc_type_malloc(vm_page_size, 0x26C187CBuLL);
        if (!v56)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v57 = qword_1000EB308;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *v195 = 0;
            v58 = sub_1000011A8(1);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v59 = v58;
            }

            else
            {
              v59 = v58 & 0xFFFFFFFE;
            }

            if (v59)
            {
              LOWORD(v189[0]) = 0;
              LODWORD(v175) = 2;
              v60 = _os_log_send_and_compose_impl(v59, v195, 0, 0, &_mh_execute_header, v57, 0, "Failed to get Buffer", v189, v175);
              v61 = v60;
              if (v60)
              {
                sub_100002A8C(v60);
              }
            }

            else
            {
              v61 = 0;
            }

            free(v61);
          }
        }

        for (i = 0; ; i += v78)
        {
          v77 = pread(v51, v56, v55, i);
          if (!v77)
          {
            break;
          }

          v78 = v77;
          if (v77 == -1)
          {
            __error();
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v10 = v54;
            v49 = v176;
            v81 = qword_1000EB308;
            if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_200;
            }

            v189[0] = 0;
            LODWORD(v82) = sub_1000011A8(1);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = v82;
            }

            else
            {
              v82 = v82 & 0xFFFFFFFE;
            }

            if (v82)
            {
              v83 = v81;
              v84 = __error();
              v85 = strerror(*v84);
              *v195 = 136315138;
              *&v195[4] = v85;
              v86 = _os_log_send_and_compose_impl(v82, v189, 0, 0, &_mh_execute_header, v83, 0, "failed to read from source file with error %s", v195);
LABEL_171:
              v95 = v86;

              if (v95)
              {
                sub_100002A8C(v95);
              }

LABEL_199:
              free(v95);
              goto LABEL_200;
            }

LABEL_183:
            v95 = 0;
            goto LABEL_199;
          }

          v79 = pwrite(v53, v56, v77, i);
          if (v79 == -1)
          {
            __error();
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v10 = v54;
            v49 = v176;
            v81 = qword_1000EB308;
            if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_200;
            }

            v189[0] = 0;
            LODWORD(v92) = sub_1000011A8(1);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v92 = v92;
            }

            else
            {
              v92 = v92 & 0xFFFFFFFE;
            }

            if (v92)
            {
              v83 = v81;
              v93 = __error();
              v94 = strerror(*v93);
              *v195 = 136315138;
              *&v195[4] = v94;
              v86 = _os_log_send_and_compose_impl(v92, v189, 0, 0, &_mh_execute_header, v83, 0, "failed to write to dest file with error %s", v195);
              goto LABEL_171;
            }

            goto LABEL_183;
          }

          v80 = v79;
          if (v78 != v79)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v10 = v54;
            v81 = qword_1000EB308;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v189[0] = 0;
              v96 = sub_1000011A8(1);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v97 = v96;
              }

              else
              {
                v97 = v96 & 0xFFFFFFFE;
              }

              if (v97)
              {
                *v195 = 134218240;
                *&v195[4] = v78;
                *&v195[12] = 2048;
                v196 = v80;
                LODWORD(v175) = 22;
                v98 = _os_log_send_and_compose_impl(v97, v189, 0, 0, &_mh_execute_header, v81, 0, "failed to write %zu bytes to dest file,instead wrote only %zu bytes", v195, v175);
                v95 = v98;
                if (v98)
                {
                  sub_100002A8C(v98);
                }
              }

              else
              {
                v95 = 0;
              }

              v49 = v176;
              goto LABEL_199;
            }

            v49 = v176;
LABEL_200:

            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v105 = qword_1000EB308;
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              v189[0] = 0;
              v106 = sub_1000011A8(1);
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                v107 = v106;
              }

              else
              {
                v107 = v106 & 0xFFFFFFFE;
              }

              if (v107)
              {
                *v195 = 136315394;
                *&v195[4] = v193;
                *&v195[12] = 2080;
                v196 = v194;
                LODWORD(v175) = 22;
                v108 = _os_log_send_and_compose_impl(v107, v189, 0, 0, &_mh_execute_header, v105, 0, "Failed to write complete file %s to %s", v195, v175);
                v109 = v108;
                if (v108)
                {
                  sub_100002A8C(v108);
                }
              }

              else
              {
                v109 = 0;
              }

              free(v109);
            }

            close(v51);
            close(v53);
            v2 = v179;
            goto LABEL_212;
          }
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v10 = v54;
        v87 = qword_1000EB308;
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v189[0] = 0;
          v88 = sub_1000011A8(1);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v89 = v88;
          }

          else
          {
            v89 = v88 & 0xFFFFFFFE;
          }

          if (v89)
          {
            *v195 = 67109376;
            *&v195[4] = v178;
            *&v195[8] = 1024;
            *&v195[10] = v177;
            v90 = _os_log_send_and_compose_impl(v89, v189, 0, 0, &_mh_execute_header, v87, 0, "setting uid:%d, gid:%d", v195, 14);
            v91 = v90;
            if (v90)
            {
              sub_100002A8C(v90);
            }
          }

          else
          {
            v91 = 0;
          }

          free(v91);
        }

        if (chown(v194, v178, v177))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v99 = qword_1000EB308;
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            v189[0] = 0;
            LODWORD(v100) = sub_1000011A8(1);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
            {
              v100 = v100;
            }

            else
            {
              v100 = v100 & 0xFFFFFFFE;
            }

            if (v100)
            {
              v101 = v99;
              v102 = __error();
              v103 = strerror(*v102);
              *v195 = 136315394;
              *&v195[4] = v194;
              *&v195[12] = 2080;
              v196 = v103;
              LODWORD(v175) = 22;
              v104 = _os_log_send_and_compose_impl(v100, v189, 0, 0, &_mh_execute_header, v101, 0, "failed to change ownership/group on: %s (%s)\n", v195, v175);

              if (v104)
              {
                sub_100002A8C(v104);
              }
            }

            else
            {
              v104 = 0;
            }

            free(v104);
          }
        }

        close(v51);
        close(v53);
        objc_autoreleasePoolPop(v176);
        v2 = v179;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v110 = qword_1000EB308;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          *v194 = 0;
          v115 = sub_1000011A8(1);
          v110 = v110;
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            v116 = v115;
          }

          else
          {
            v116 = v115 & 0xFFFFFFFE;
          }

          if (v116)
          {
            LOWORD(v193[0]) = 0;
            LODWORD(v175) = 2;
            v113 = _os_log_send_and_compose_impl(v116, v194, 0, 0, &_mh_execute_header, v110, 0, "Successfully Copied Language Preferences to LoginUI", v193, v175);
            goto LABEL_220;
          }

          goto LABEL_233;
        }

        goto LABEL_235;
      }

      v69 = *__error();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v70 = qword_1000EB308;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v189[0] = 0;
        LODWORD(v71) = sub_1000011A8(1);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v71;
        }

        else
        {
          v71 = v71 & 0xFFFFFFFE;
        }

        if (v71)
        {
          v180 = v10;
          v72 = v49;
          v73 = v70;
          v74 = strerror(v69);
          *v195 = 136315394;
          *&v195[4] = v194;
          *&v195[12] = 2080;
          v196 = v74;
          LODWORD(v175) = 22;
          v75 = _os_log_send_and_compose_impl(v71, v189, 0, 0, &_mh_execute_header, v73, 0, "Failed to create Destination Language Pref file %s with error %s", v195, v175);

          if (v75)
          {
            sub_100002A8C(v75);
          }

          v49 = v72;
          v10 = v180;
        }

        else
        {
          v75 = 0;
        }

        free(v75);
      }

      close(v51);
    }

LABEL_212:
    objc_autoreleasePoolPop(v49);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v110 = qword_1000EB308;
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      *v194 = 0;
      v111 = sub_1000011A8(1);
      v110 = v110;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v111;
      }

      else
      {
        v112 = v111 & 0xFFFFFFFE;
      }

      if (v112)
      {
        LOWORD(v193[0]) = 0;
        LODWORD(v175) = 2;
        v113 = _os_log_send_and_compose_impl(v112, v194, 0, 0, &_mh_execute_header, v110, 0, "Failed to copy Language Preferences to LoginUI", v193, v175);
LABEL_220:
        v114 = v113;

        if (v114)
        {
          sub_100002A8C(v114);
        }

        goto LABEL_234;
      }

LABEL_233:

      v114 = 0;
LABEL_234:
      free(v114);
    }

LABEL_235:

    if ([qword_1000EB2D8 splitUserVolumeEnabled])
    {
      v117 = sub_100089A80(qword_1000EB608);
      v181 = 0;
      v118 = [v117 createIdentityWithUUID:v10 passcode:0 existingSession:501 existingSessionPasscode:0 isACMCredential:0 error:&v181];
      v119 = v181;

      if (v118)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v120 = kCFBooleanTrue;
        v121 = qword_1000EB308;
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          *v194 = 0;
          v122 = sub_1000011A8(1);
          v123 = v121;
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
          {
            v124 = v122;
          }

          else
          {
            v124 = v122 & 0xFFFFFFFE;
          }

          if (v124)
          {
            LOWORD(v193[0]) = 0;
            LODWORD(v175) = 2;
            v125 = _os_log_send_and_compose_impl(v124, v194, 0, 0, &_mh_execute_header, v123, 0, "Created AKSIdentity for login window", v193, v175);

            if (v125)
            {
              sub_100002A8C(v125);
            }
          }

          else
          {

            v125 = 0;
          }

          v120 = kCFBooleanTrue;
          free(v125);
        }

        CFDictionarySetValue(v20, kUMUserSessionNeedsCryptoSetupKey, v120);
        goto LABEL_286;
      }

      CFRelease(v20);
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v133 = qword_1000EB308;
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v193[0] = 0;
        LODWORD(v134) = sub_1000011A8(1);
        v135 = v133;
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          v134 = v134;
        }

        else
        {
          v134 = v134 & 0xFFFFFFFE;
        }

        if (v134)
        {
          v136 = [v119 code];
          *v194 = 134217984;
          *&v194[4] = v136;
          v137 = _os_log_send_and_compose_impl(v134, v193, 0, 0, &_mh_execute_header, v135, 0, "AKS Identity create failed:%ld", v194);

          if (v137)
          {
            sub_100002A8C(v137);
          }
        }

        else
        {

          v137 = 0;
        }

        free(v137);
      }
    }

    else
    {
      KeybagForUser = MKBUserSessionCreateKeybagForUser();
      if (!KeybagForUser)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v120 = kCFBooleanTrue;
        v119 = qword_1000EB308;
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
        {
          *v194 = 0;
          v138 = sub_1000011A8(1);
          v119 = v119;
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v139 = v138;
          }

          else
          {
            v139 = v138 & 0xFFFFFFFE;
          }

          if (v139)
          {
            LOWORD(v193[0]) = 0;
            LODWORD(v175) = 2;
            v140 = _os_log_send_and_compose_impl(v139, v194, 0, 0, &_mh_execute_header, v119, 0, "Created keybag for login window", v193, v175);

            if (v140)
            {
              sub_100002A8C(v140);
            }
          }

          else
          {

            v140 = 0;
          }

          free(v140);
        }

LABEL_286:

        CFDictionarySetValue(v20, @"MKBUserSessionFileSystemSet", v120);
        if (v2)
        {
          dword_1000EA3D4 = -1;
          qword_1000EB5D8 = v2;
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v141 = qword_1000EB308;
          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            v193[0] = 0;
            v142 = sub_1000011A8(1);
            v143 = v141;
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
            {
              v144 = v142;
            }

            else
            {
              v144 = v142 & 0xFFFFFFFE;
            }

            if (v144)
            {
              *v194 = 67109376;
              *&v194[4] = v182;
              *&v194[8] = 2048;
              *&v194[10] = v2;
              LODWORD(v175) = 18;
              v145 = _os_log_send_and_compose_impl(v144, v193, 0, 0, &_mh_execute_header, v143, 0, "Configured Number of Users:%d each with Size:%lld", v194, v175);

              if (v145)
              {
                sub_100002A8C(v145);
              }
            }

            else
            {

              v145 = 0;
            }

            free(v145);
          }

          *v194 = v2 << 20;
          v151 = CFNumberCreate(0, kCFNumberLongLongType, v194);
          CFDictionarySetValue(v20, kUMUserSessionQuotaLimitKey, v151);
          if (v151)
          {
            CFRelease(v151);
          }

          v152 = CFNumberCreate(0, kCFNumberLongLongType, v194);
          CFDictionarySetValue(v20, kUMUserSessionEachUserSize, v152);
          if (v152)
          {
            CFRelease(v152);
          }

          v153 = CFNumberCreate(0, kCFNumberIntType, &v182);
          v154 = &kUMUserSessionTotalUsers;
        }

        else
        {
          v182 = sub_10001CEAC(v188, &v185, &v184, &v183);
          dword_1000EA3D4 = v182;
          qword_1000EB5D8 = v185;
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v146 = qword_1000EB308;
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            v193[0] = 0;
            v147 = sub_1000011A8(1);
            v148 = v146;
            if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              v149 = v147;
            }

            else
            {
              v149 = v147 & 0xFFFFFFFE;
            }

            if (v149)
            {
              *v194 = 67109376;
              *&v194[4] = v182;
              *&v194[8] = 2048;
              *&v194[10] = v185;
              LODWORD(v175) = 18;
              v150 = _os_log_send_and_compose_impl(v149, v193, 0, 0, &_mh_execute_header, v148, 0, "Configured Number of Users:%d each with Size:%lld", v194, v175);

              if (v150)
              {
                sub_100002A8C(v150);
              }
            }

            else
            {

              v150 = 0;
            }

            free(v150);
          }

          *v194 = 0;
          v155 = CFNumberCreate(0, kCFNumberLongLongType, v194);
          CFDictionarySetValue(v20, kUMUserSessionQuotaLimitKey, v155);
          if (v155)
          {
            CFRelease(v155);
          }

          *v194 = 0;
          v156 = CFNumberCreate(0, kCFNumberLongLongType, v194);
          CFDictionarySetValue(v20, kUMUserSessionQuotaSoftLimitKey, v156);
          if (v156)
          {
            CFRelease(v156);
          }

          *v194 = 0;
          v157 = CFNumberCreate(0, kCFNumberLongLongType, v194);
          CFDictionarySetValue(v20, kUMUserSessionQuotaUsedKey, v157);
          if (v157)
          {
            CFRelease(v157);
          }

          v158 = CFNumberCreate(0, kCFNumberIntType, &v188);
          CFDictionarySetValue(v20, kUMUserSessionReqTotalUsers, v158);
          if (v158)
          {
            CFRelease(v158);
          }

          v159 = CFNumberCreate(0, kCFNumberIntType, &v182);
          CFDictionarySetValue(v20, kUMUserSessionTotalUsers, v159);
          if (v159)
          {
            CFRelease(v159);
          }

          v160 = CFNumberCreate(0, kCFNumberLongLongType, &v185);
          CFDictionarySetValue(v20, kUMUserSessionEachUserSize, v160);
          if (v160)
          {
            CFRelease(v160);
          }

          v161 = CFNumberCreate(0, kCFNumberLongLongType, &v184);
          CFDictionarySetValue(v20, kUMUserSessionTotalDataSize, v161);
          if (v161)
          {
            CFRelease(v161);
          }

          v153 = CFNumberCreate(0, kCFNumberLongLongType, &v183);
          v154 = &kUMUserSessionSystemLoginSize;
        }

        CFDictionarySetValue(v20, *v154, v153);
        if (v153)
        {
          CFRelease(v153);
        }

        sub_10001FC24(v20, 1);
        sub_10001FCBC();
        sub_100018C80();
        if (qword_1000EB320 != -1)
        {
          sub_100089D68();
        }

        v162 = qword_1000EB318;
        if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
        {
          *v194 = 0;
          v163 = sub_1000011A8(1);
          v164 = v162;
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
          {
            v165 = v163;
          }

          else
          {
            v165 = v163 & 0xFFFFFFFE;
          }

          if (v165)
          {
            LODWORD(v193[0]) = 67109120;
            HIDWORD(v193[0]) = valuePtr;
            v166 = _os_log_send_and_compose_impl(v165, v194, 0, 0, &_mh_execute_header, v164, 0, "Created user %u", v193);

            if (v166)
            {
              sub_100002A8C(v166);
            }
          }

          else
          {

            v166 = 0;
          }

          free(v166);
        }

        if (_SecSystemKeychainTransfer())
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v167 = qword_1000EB308;
          if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_363;
          }

          *v194 = 0;
          v168 = sub_1000011A8(1);
          if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
          {
            v169 = v168;
          }

          else
          {
            v169 = v168 & 0xFFFFFFFE;
          }

          if (v169)
          {
            LOWORD(v193[0]) = 0;
            LODWORD(v175) = 2;
            v170 = _os_log_send_and_compose_impl(v169, v194, 0, 0, &_mh_execute_header, v167, 0, "_SecSystemKeychainTransfer succeeded", v193, v175);
            goto LABEL_359;
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v167 = qword_1000EB308;
          if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_363;
          }

          *v194 = 0;
          v171 = sub_1000011A8(1);
          if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
          {
            v172 = v171;
          }

          else
          {
            v172 = v171 & 0xFFFFFFFE;
          }

          if (v172)
          {
            LOWORD(v193[0]) = 0;
            LODWORD(v175) = 2;
            v170 = _os_log_send_and_compose_impl(v172, v194, 0, 0, &_mh_execute_header, v167, 0, "_SecSystemKeychainTransfer failed", v193, v175);
LABEL_359:
            v173 = v170;
            if (v170)
            {
              sub_100002A8C(v170);
            }

            goto LABEL_362;
          }
        }

        v173 = 0;
LABEL_362:
        free(v173);
LABEL_363:

        goto LABEL_364;
      }

      v127 = KeybagForUser;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v128 = qword_1000EB308;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        *v194 = 0;
        v129 = sub_1000011A8(1);
        v130 = v128;
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          v131 = v129;
        }

        else
        {
          v131 = v129 & 0xFFFFFFFE;
        }

        if (v131)
        {
          LODWORD(v193[0]) = 67109120;
          HIDWORD(v193[0]) = v127;
          v132 = _os_log_send_and_compose_impl(v131, v194, 0, 0, &_mh_execute_header, v130, 0, "failed to create keybag for login window: %d", v193);

          if (v132)
          {
            sub_100002A8C(v132);
          }
        }

        else
        {

          v132 = 0;
        }

        free(v132);
      }

      CFRelease(v20);
    }

LABEL_283:
    v20 = 0;
LABEL_364:
  }

  return v20;
}

uint64_t sub_10001F508(const char *a1, uint64_t a2, gid_t a3)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  memset(&v46, 0, sizeof(v46));
  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      *v47 = 136315138;
      *&v47[4] = a1;
      v9 = _os_log_send_and_compose_impl(v8, &v52, 0, 0, &_mh_execute_header, v6, 0, "CreateFileLayout: pathname:%s", v47);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if (!stat(a1, &v46))
  {
    goto LABEL_47;
  }

  v11 = *__error();
  if (v11 != 2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v17 = qword_1000EB308;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    v52 = 0;
    LODWORD(v18) = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 = v18 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = v17;
      v20 = strerror(v11);
      *v47 = 136315394;
      *&v47[4] = a1;
      v48 = 2080;
      *v49 = v20;
      v21 = _os_log_send_and_compose_impl(v18, &v52, 0, 0, &_mh_execute_header, v19, 0, "Failed to stat file path %s, with error %s ", v47, 22);
      goto LABEL_31;
    }

LABEL_75:
    v22 = 0;
LABEL_76:
    free(v22);
    goto LABEL_77;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v12 = qword_1000EB308;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 0;
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      *v47 = 136315138;
      *&v47[4] = a1;
      v15 = _os_log_send_and_compose_impl(v14, &v52, 0, 0, &_mh_execute_header, v12, 0, "pathname %s does not exist, creating", v47);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  if ((mkdir(a1, 0x1C0u) & 0x80000000) == 0 || (v23 = *__error(), v23 == 17))
  {
    if (chown(a1, a2, a3))
    {
      v24 = *__error();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v25 = qword_1000EB308;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v52 = 0;
        LODWORD(v26) = sub_1000011A8(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v26;
        }

        else
        {
          v26 = v26 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v27 = v25;
          v28 = strerror(v24);
          *v47 = 136315906;
          *&v47[4] = a1;
          v48 = 1024;
          *v49 = a2;
          *&v49[4] = 1024;
          *&v49[6] = a3;
          v50 = 2080;
          v51 = v28;
          v29 = _os_log_send_and_compose_impl(v26, &v52, 0, 0, &_mh_execute_header, v27, 0, "Failed to chown path %s for uid=%d, gid=%d with error %s ", v47, 34, v44, v45);

          if (v29)
          {
            sub_100002A8C(v29);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }

      rmdir(a1);
      return 0;
    }

LABEL_47:
    sub_10001C3A8(a1, a2, a3);
    if (![qword_1000EB2D8 splitUserVolumeEnabled])
    {
      return 1;
    }

    v30 = [NSString stringWithUTF8String:a1];
    v31 = sub_100089A80(qword_1000EB608);
    v45 = 0;
    v32 = [v31 bootstrapVolumeWithMountPoint:v30 user:a2 error:&v45];
    v33 = v45;

    if (v32)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v34 = qword_1000EB308;
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *v47 = 0;
      v35 = sub_1000011A8(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        LOWORD(v52) = 0;
        v37 = _os_log_send_and_compose_impl(v36, v47, 0, 0, &_mh_execute_header, v34, 0, "AKS Bootstrap fs succeeded", &v52, 2);
        if (!v37)
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v34 = qword_1000EB308;
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *v47 = 0;
      LODWORD(v38) = sub_1000011A8(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v38;
      }

      else
      {
        v38 = v38 & 0xFFFFFFFE;
      }

      if (v38)
      {
        v39 = v34;
        v40 = [v33 code];
        LODWORD(v52) = 67109120;
        HIDWORD(v52) = v40;
        v37 = _os_log_send_and_compose_impl(v38, v47, 0, 0, &_mh_execute_header, v39, 0, "AKS Bootstrap fs failed with error %d, ignoring error", &v52);

        if (!v37)
        {
LABEL_79:
          free(v37);
LABEL_80:

          return 1;
        }

LABEL_66:
        sub_100002A8C(v37);
        goto LABEL_79;
      }
    }

    v37 = 0;
    goto LABEL_79;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v17 = qword_1000EB308;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 0;
    LODWORD(v41) = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v41;
    }

    else
    {
      v41 = v41 & 0xFFFFFFFE;
    }

    if (v41)
    {
      v19 = v17;
      v42 = strerror(v23);
      *v47 = 136315394;
      *&v47[4] = a1;
      v48 = 2080;
      *v49 = v42;
      v21 = _os_log_send_and_compose_impl(v41, &v52, 0, 0, &_mh_execute_header, v19, 0, "Failed to created file path %s, with error %s ", v47, 22);
LABEL_31:
      v22 = v21;

      if (v22)
      {
        sub_100002A8C(v22);
      }

      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_77:

  return 0;
}

void sub_10001FC24(void *value, int a2)
{
  v4 = qword_1000EB5A0;
  if (!qword_1000EB5A0)
  {
    v4 = sub_1000799A8();
    qword_1000EB5A0 = v4;
  }

  CFArrayAppendValue(v4, value);
  qword_1000EB5A8 = CFArrayGetCount(qword_1000EB5A0);
  if (a2 == 1)
  {
    v5 = sub_1000354BC(value);
    if (v5)
    {
      v6 = v5;
      sub_10003590C(v5);

      CFRelease(v6);
    }
  }
}

void sub_10001FCBC()
{
  if (qword_1000EB5A0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v0 = qword_1000EB308;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v1 = sub_1000011A8(1);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v2 = v1;
      }

      else
      {
        v2 = v1 & 0xFFFFFFFE;
      }

      if (v2)
      {
        LOWORD(v15[0]) = 0;
        v3 = _os_log_send_and_compose_impl(v2, &v16, 0, 0, &_mh_execute_header, v0, 0, "PRINTING ALL USERSESSION", v15, 2);
        v4 = v3;
        if (v3)
        {
          sub_100002A8C(v3);
        }
      }

      else
      {
        v4 = 0;
      }

      free(v4);
    }

    if (CFArrayGetCount(qword_1000EB5A0) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v5);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFDictionaryGetTypeID())
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v9 = qword_1000EB308;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v15[0] = 0;
              v10 = sub_1000011A8(1);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                v11 = v10;
              }

              else
              {
                v11 = v10 & 0xFFFFFFFE;
              }

              if (v11)
              {
                LODWORD(v16) = 67109378;
                HIDWORD(v16) = v5;
                v17 = 2112;
                v18 = v7;
                LODWORD(v14) = 18;
                v12 = _os_log_send_and_compose_impl(v11, v15, 0, 0, &_mh_execute_header, v9, 0, "%d UserSession is %@", &v16, v14);
                v13 = v12;
                if (v12)
                {
                  sub_100002A8C(v12);
                }
              }

              else
              {
                v13 = 0;
              }

              free(v13);
            }
          }
        }

        ++v5;
      }

      while (CFArrayGetCount(qword_1000EB5A0) > v5);
    }
  }
}

NSObject *sub_10001FF2C(const __CFDictionary *a1)
{
  v1 = sub_100002700(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:kUMUserSessionShortNameKey];
    v4 = v3;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v10 = 0;
        v7 = _os_log_send_and_compose_impl(v6, &v11, 0, 0, &_mh_execute_header, v3, 0, "Could not find session dictionary for user", &v10, 2);
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sub_100020054(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = 45;
  }

  return 0;
}

uint64_t sub_100020068(const __CFString *a1, int *a2)
{
  v137 = 0;
  if (![qword_1000EB2D8 splitUserVolumeEnabled])
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LOWORD(v138) = 0;
        v12 = _os_log_send_and_compose_impl(v11, &v135, 0, 0, &_mh_execute_header, v9, 0, "Not in Restore mode, returning success", &v138, 2);
        goto LABEL_19;
      }

LABEL_149:
      v13 = 0;
LABEL_150:
      free(v13);
    }

LABEL_151:

    v137 = 0;
    if (!a2)
    {
      return 1;
    }

LABEL_152:
    *a2 = v137;
    return 1;
  }

  v136 = 1;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v4 = qword_1000EB308;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v5 = sub_1000011A8(1);
    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v138) = 0;
      v8 = _os_log_send_and_compose_impl(v7, &v135, 0, 0, &_mh_execute_header, v6, 0, "In Restore Mode, checking SDV or marker file for migration", &v138, 2);

      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {

      v8 = 0;
    }

    free(v8);
  }

  v14 = sub_1000725AC(&v137, &v136);
  if (v14)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = qword_1000EB308;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v16 = sub_1000011A8(1);
      v15 = v15;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v138) = 0;
        LODWORD(v132) = 2;
        v18 = _os_log_send_and_compose_impl(v17, &v135, 0, 0, &_mh_execute_header, v15, 0, "SDV needs Migration, Starting volume Migration steps", &v138, v132);
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    goto LABEL_45;
  }

  if (!sub_100021718())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v65 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v65;
      }

      else
      {
        v66 = v65 & 0xFFFFFFFE;
      }

      if (v66)
      {
        LOWORD(v138) = 0;
        LODWORD(v132) = 2;
        v12 = _os_log_send_and_compose_impl(v66, &v135, 0, 0, &_mh_execute_header, v9, 0, "System Data Volume does not need migration, returning success.", &v138, v132);
LABEL_19:
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

        goto LABEL_150;
      }

      goto LABEL_149;
    }

    goto LABEL_151;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v15 = qword_1000EB308;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v19 = sub_1000011A8(1);
    v15 = v15;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      LOWORD(v138) = 0;
      LODWORD(v132) = 2;
      v18 = _os_log_send_and_compose_impl(v20, &v135, 0, 0, &_mh_execute_header, v15, 0, "Marker File set for Migration progress, Starting volume Migration steps", &v138, v132);
LABEL_41:
      v21 = v18;

      if (v21)
      {
        sub_100002A8C(v21);
      }

      goto LABEL_44;
    }

LABEL_43:

    v21 = 0;
LABEL_44:
    free(v21);
  }

LABEL_45:

  v22 = sub_100079BA8();
  if ((v22 - 1) > 4)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v27 = sub_1000011A8(1);
      v23 = v23;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        LOWORD(v138) = 0;
        v26 = _os_log_send_and_compose_impl(v28, &v135, 0, 0, &_mh_execute_header, v23, 0, "Volume Migration Debug Not set");
LABEL_62:
        v29 = v26;

        if (v29)
        {
          sub_100002A8C(v29);
        }

        goto LABEL_65;
      }

LABEL_64:

      v29 = 0;
LABEL_65:
      free(v29);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v24 = sub_1000011A8(1);
      v23 = v23;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v138 = 67109120;
        v139 = v22;
        v26 = _os_log_send_and_compose_impl(v25, &v135, 0, 0, &_mh_execute_header, v23, 0, "Volume Migration Debug set and value=%d", &v138);
        goto LABEL_62;
      }

      goto LABEL_64;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v30 = qword_1000EB308;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v31 = sub_1000011A8(1);
    v32 = v30;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v31;
    }

    else
    {
      v33 = v31 & 0xFFFFFFFE;
    }

    if (v33)
    {
      LOWORD(v138) = 0;
      LODWORD(v132) = 2;
      v34 = _os_log_send_and_compose_impl(v33, &v135, 0, 0, &_mh_execute_header, v32, 0, "Starting SystemData & User Volume Migration", &v138, v132);

      if (v34)
      {
        sub_100002A8C(v34);
      }
    }

    else
    {

      v34 = 0;
    }

    free(v34);
  }

  if (v22 == 1)
  {
    sub_100018028("debug panic boot arg umd-migration-debug=1 (before calling transcribe)");
    goto LABEL_285;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v35 = qword_1000EB308;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v36 = sub_1000011A8(1);
    v37 = v35;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v36;
    }

    else
    {
      v38 = v36 & 0xFFFFFFFE;
    }

    if (v38)
    {
      LOWORD(v138) = 0;
      LODWORD(v132) = 2;
      v39 = _os_log_send_and_compose_impl(v38, &v135, 0, 0, &_mh_execute_header, v37, 0, " Step1: Calling transcribe SDV...", &v138, v132);

      if (v39)
      {
        sub_100002A8C(v39);
      }
    }

    else
    {

      v39 = 0;
    }

    free(v39);
  }

  if (v14)
  {
    v137 = 0;
    v40 = sub_10007262C(&v137);
    v41 = qword_1000EB310 == -1;
    if (!v40)
    {
      goto LABEL_288;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v42 = qword_1000EB308;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v43 = sub_1000011A8(1);
      v42 = v42;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 & 0xFFFFFFFE;
      }

      if (v44)
      {
        LOWORD(v138) = 0;
        LODWORD(v132) = 2;
        v45 = _os_log_send_and_compose_impl(v44, &v135, 0, 0, &_mh_execute_header, v42, 0, "Step1: TRANSCRIBE SDV Successful", &v138, v132);
        goto LABEL_107;
      }

      goto LABEL_109;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v42 = qword_1000EB308;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v46 = sub_1000011A8(1);
      v42 = v42;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
      }

      else
      {
        v47 = v46 & 0xFFFFFFFE;
      }

      if (v47)
      {
        LOWORD(v138) = 0;
        LODWORD(v132) = 2;
        v45 = _os_log_send_and_compose_impl(v47, &v135, 0, 0, &_mh_execute_header, v42, 0, "Step1: Skipping TRANSCRIBE SDV as its already transcribed", &v138, v132);
LABEL_107:
        v48 = v45;

        if (v48)
        {
          sub_100002A8C(v48);
        }

        goto LABEL_110;
      }

LABEL_109:

      v48 = 0;
LABEL_110:
      free(v48);
    }
  }

  if (v22 == 2)
  {
LABEL_285:
    sub_100018028("debug panic boot arg umd-migration-debug=2 (after calling transcribe)");
    goto LABEL_286;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v49 = qword_1000EB308;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v50 = sub_1000011A8(1);
    v51 = v49;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v50;
    }

    else
    {
      v52 = v50 & 0xFFFFFFFE;
    }

    if (v52)
    {
      LOWORD(v138) = 0;
      LODWORD(v132) = 2;
      v53 = _os_log_send_and_compose_impl(v52, &v135, 0, 0, &_mh_execute_header, v51, 0, "Step2: Binding Shared Data Volume", &v138, v132);

      if (v53)
      {
        sub_100002A8C(v53);
      }
    }

    else
    {

      v53 = 0;
    }

    free(v53);
  }

  if (sub_100071178())
  {
    bytes[0] = 0;
    v54 = CFDataCreate(kCFAllocatorDefault, bytes, 1);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v55 = qword_1000EB308;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v56 = sub_1000011A8(1);
      v57 = v55;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v56;
      }

      else
      {
        v58 = v56 & 0xFFFFFFFE;
      }

      if (v58)
      {
        LOWORD(v138) = 0;
        LODWORD(v132) = 2;
        v59 = _os_log_send_and_compose_impl(v58, &v135, 0, 0, &_mh_execute_header, v57, 0, "Binding SDV to primary User", &v138, v132);

        if (v59)
        {
          sub_100002A8C(v59);
        }
      }

      else
      {

        v59 = 0;
      }

      free(v59);
    }

    v137 = 0;
    v68 = sub_1000714B8(a1, v54, 1, &v137);
    if (v54)
    {
      CFRelease(v54);
    }

    if (!v68)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v116 = qword_1000EB308;
      if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_328;
      }

      v135 = 0;
      v120 = sub_1000011A8(1);
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v121 = v120;
      }

      else
      {
        v121 = v120 & 0xFFFFFFFE;
      }

      if (v121)
      {
        goto LABEL_325;
      }

      v22 = 0;
      goto LABEL_327;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v60 = qword_1000EB308;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v69 = sub_1000011A8(1);
      v62 = v60;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v69;
      }

      else
      {
        v70 = v69 & 0xFFFFFFFE;
      }

      if (v70)
      {
        LOWORD(v138) = 0;
        LODWORD(v132) = 2;
        v64 = _os_log_send_and_compose_impl(v70, &v135, 0, 0, &_mh_execute_header, v62, 0, "Step2: Binding SDV to primary User is Successful", &v138, v132);
LABEL_167:
        v71 = v64;

        if (v71)
        {
          sub_100002A8C(v71);
        }

        goto LABEL_170;
      }

      goto LABEL_169;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v60 = qword_1000EB308;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v61 = sub_1000011A8(1);
      v62 = v60;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v61;
      }

      else
      {
        v63 = v61 & 0xFFFFFFFE;
      }

      if (v63)
      {
        LOWORD(v138) = 0;
        LODWORD(v132) = 2;
        v64 = _os_log_send_and_compose_impl(v63, &v135, 0, 0, &_mh_execute_header, v62, 0, "Step2: Skipping Binding SDV as its already bound", &v138, v132);
        goto LABEL_167;
      }

LABEL_169:

      v71 = 0;
LABEL_170:
      free(v71);
    }
  }

  if (v22 == 3)
  {
LABEL_286:
    sub_100018028("debug panic boot arg umd-migration-debug=3 (after calling bind of SDV)");
    goto LABEL_287;
  }

  if (dword_1000EB5B0 != 1)
  {
    *bytes = 0;
    v133 = 1;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v77 = qword_1000EB308;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v135 = 0;
      v78 = sub_1000011A8(1);
      v79 = v77;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = v78;
      }

      else
      {
        v80 = v78 & 0xFFFFFFFE;
      }

      if (v80)
      {
        LOWORD(v138) = 0;
        LODWORD(v132) = 2;
        v81 = _os_log_send_and_compose_impl(v80, &v135, 0, 0, &_mh_execute_header, v79, 0, "Step3: Migrating Media Key of the User Volume", &v138, v132);

        if (v81)
        {
          sub_100002A8C(v81);
        }
      }

      else
      {

        v81 = 0;
      }

      free(v81);
    }

    if (sub_1000725EC(bytes, &v133))
    {
      v137 = 0;
      if (!sub_1000729D4(0, &v137))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v116 = qword_1000EB308;
        if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_336;
        }

        v135 = 0;
        v125 = sub_1000011A8(1);
        v22 = v116;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v126 = v125;
        }

        else
        {
          v126 = v125 & 0xFFFFFFFE;
        }

        if (v126)
        {
          goto LABEL_333;
        }

        v127 = 0;
        goto LABEL_335;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v89 = qword_1000EB308;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v135 = 0;
        v90 = sub_1000011A8(1);
        v89 = v89;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v91 = v90;
        }

        else
        {
          v91 = v90 & 0xFFFFFFFE;
        }

        if (v91)
        {
          LOWORD(v138) = 0;
          LODWORD(v132) = 2;
          v92 = _os_log_send_and_compose_impl(v91, &v135, 0, 0, &_mh_execute_header, v89, 0, "Step3: Migration of UserVolume Media Key Successful", &v138, v132);
          goto LABEL_230;
        }

        goto LABEL_232;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v89 = qword_1000EB308;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v135 = 0;
        v93 = sub_1000011A8(1);
        v89 = v89;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v94 = v93;
        }

        else
        {
          v94 = v93 & 0xFFFFFFFE;
        }

        if (v94)
        {
          LOWORD(v138) = 0;
          LODWORD(v132) = 2;
          v92 = _os_log_send_and_compose_impl(v94, &v135, 0, 0, &_mh_execute_header, v89, 0, "Step3: Skipping migrating UserVolume", &v138, v132);
LABEL_230:
          v95 = v92;

          if (v95)
          {
            sub_100002A8C(v95);
          }

          goto LABEL_233;
        }

LABEL_232:

        v95 = 0;
LABEL_233:
        free(v95);
      }
    }

    if (v22 == 4)
    {
      sub_100018028("debug panic boot arg umd-migration-debug=4 (after calling UserVolume MigrateMediaKey)");
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v96 = qword_1000EB308;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v135 = 0;
        v97 = sub_1000011A8(1);
        v98 = v96;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          v99 = v97;
        }

        else
        {
          v99 = v97 & 0xFFFFFFFE;
        }

        if (v99)
        {
          LOWORD(v138) = 0;
          LODWORD(v132) = 2;
          v100 = _os_log_send_and_compose_impl(v99, &v135, 0, 0, &_mh_execute_header, v98, 0, "Step4: Setting Primary User as Last booted User..", &v138, v132);

          if (v100)
          {
            sub_100002A8C(v100);
          }
        }

        else
        {

          v100 = 0;
        }

        free(v100);
      }

      v137 = 0;
      v101 = sub_10007324C("/var/mobile", &v137);
      v102 = qword_1000EB310 == -1;
      if (v101)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v82 = qword_1000EB308;
        if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_259;
        }

        v135 = 0;
        v103 = sub_1000011A8(1);
        v84 = v82;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v104 = v103;
        }

        else
        {
          v104 = v103 & 0xFFFFFFFE;
        }

        if (!v104)
        {
          goto LABEL_257;
        }

        LOWORD(v138) = 0;
        v86 = _os_log_send_and_compose_impl(v104, &v135, 0, 0, &_mh_execute_header, v84, 0, "Step4: Setting the last user successful..");
LABEL_255:
        v105 = v86;

        if (v105)
        {
          sub_100002A8C(v105);
        }

        goto LABEL_258;
      }
    }

    if (!v102)
    {
      sub_100089CEC();
    }

    v116 = qword_1000EB308;
    if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_332;
    }

    v135 = 0;
    v122 = sub_1000011A8(1);
    v22 = v116;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v123 = v122;
    }

    else
    {
      v123 = v122 & 0xFFFFFFFE;
    }

    if (v123)
    {
      goto LABEL_329;
    }

    v124 = 0;
    goto LABEL_331;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v72 = qword_1000EB308;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v73 = sub_1000011A8(1);
    v74 = v72;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v73;
    }

    else
    {
      v75 = v73 & 0xFFFFFFFE;
    }

    if (v75)
    {
      LOWORD(v138) = 0;
      LODWORD(v132) = 2;
      v76 = _os_log_send_and_compose_impl(v75, &v135, 0, 0, &_mh_execute_header, v74, 0, "Shared ipad, need to skip step3-4 of migration", &v138, v132);

      if (v76)
      {
        sub_100002A8C(v76);
      }
    }

    else
    {

      v76 = 0;
    }

    free(v76);
  }

  if (!sub_1000738C4(1, &v137))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v82 = qword_1000EB308;
    if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_259;
    }

    v135 = 0;
    v87 = sub_1000011A8(1);
    v84 = v82;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v88 = v87;
    }

    else
    {
      v88 = v87 & 0xFFFFFFFE;
    }

    if (!v88)
    {
      goto LABEL_257;
    }

    v138 = 67109120;
    v139 = v137;
    v86 = _os_log_send_and_compose_impl(v88, &v135, 0, 0, &_mh_execute_header, v84, 0, "Failed to Delete Primary User volume from splitter on sharedIPad with error:%d, ignoring error", &v138);
    goto LABEL_255;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v82 = qword_1000EB308;
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v83 = sub_1000011A8(1);
    v84 = v82;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v83;
    }

    else
    {
      v85 = v83 & 0xFFFFFFFE;
    }

    if (v85)
    {
      LOWORD(v138) = 0;
      LODWORD(v132) = 2;
      v86 = _os_log_send_and_compose_impl(v85, &v135, 0, 0, &_mh_execute_header, v84, 0, "Deleted Primary User Volume after Shared Data Volume Transcribe", &v138, v132);
      goto LABEL_255;
    }

LABEL_257:

    v105 = 0;
LABEL_258:
    free(v105);
  }

LABEL_259:

  v137 = 0;
  if (v22 == 5)
  {
LABEL_287:
    sub_100018028("debug panic boot arg umd-migration-debug=5 (after calling setLastUserOnVolume)");
LABEL_288:
    if (v41)
    {
      goto LABEL_290;
    }

    while (1)
    {
      sub_100089CEC();
LABEL_290:
      v116 = qword_1000EB308;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v135 = 0;
        v117 = sub_1000011A8(1);
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          v118 = v117;
        }

        else
        {
          v118 = v117 & 0xFFFFFFFE;
        }

        if (v118)
        {
          v138 = 67109120;
          v139 = v137;
          v128 = _os_log_send_and_compose_impl(v118, &v135, 0, 0, &_mh_execute_header, v116, 0, "Step1: Transcribing SDV failed with error:%d, bailing", &v138);
          v119 = v128;
          if (v128)
          {
            sub_100002A8C(v128);
          }
        }

        else
        {
          v119 = 0;
        }

        free(v119);
      }

      v121 = sub_100018028("VolumeMigration-Step1: APFSVolumeTranscribePFK failed with error:%d, bailing", v137);
LABEL_325:
      v138 = 67109120;
      v139 = v137;
      v129 = _os_log_send_and_compose_impl(v121, &v135, 0, 0, &_mh_execute_header, v116, 0, "Step2: Binding SDV to primary User failed with %d, bailing", &v138);
      v22 = v129;
      if (v129)
      {
        sub_100002A8C(v129);
      }

LABEL_327:
      free(v22);
LABEL_328:

      v123 = sub_100018028("VolumeMigration-Step2: APFSVolumeEnableUserProtectionWithOptions failed with %d, bailing", v137);
LABEL_329:
      v138 = 67109120;
      v139 = v137;
      v130 = _os_log_send_and_compose_impl(v123, &v135, 0, 0, &_mh_execute_header, v22, 0, "Step4: Setting Last booted User as Primary User failed with error:%d", &v138);

      v124 = 0;
      if (v130)
      {
        sub_100002A8C(v130);
        v124 = v130;
      }

LABEL_331:
      free(v124);
LABEL_332:

      v126 = sub_100018028("VolumeMigration-Step4: Setting Last booted User as Primary User failed with error:%d", v137);
LABEL_333:
      v138 = 67109120;
      v139 = v137;
      v131 = _os_log_send_and_compose_impl(v126, &v135, 0, 0, &_mh_execute_header, v22, 0, "Step3: Migrating UserVolume Media Key failed with error:%d, bailing", &v138);

      v127 = 0;
      if (v131)
      {
        sub_100002A8C(v131);
        v127 = v131;
      }

LABEL_335:
      free(v127);
LABEL_336:

      sub_100018028("VolumeMigration-Step3: Migrating UserVolume Media Key failed with error:%d, bailing", v137);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v106 = qword_1000EB308;
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v107 = sub_1000011A8(1);
    v108 = v106;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = v107;
    }

    else
    {
      v109 = v107 & 0xFFFFFFFE;
    }

    if (v109)
    {
      LOWORD(v138) = 0;
      LODWORD(v132) = 2;
      v110 = _os_log_send_and_compose_impl(v109, &v135, 0, 0, &_mh_execute_header, v108, 0, "Removing Migration Progress Marker File", &v138, v132);

      if (v110)
      {
        sub_100002A8C(v110);
      }
    }

    else
    {

      v110 = 0;
    }

    free(v110);
  }

  sub_1000218B8();
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v111 = qword_1000EB308;
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    v135 = 0;
    v112 = sub_1000011A8(1);
    v113 = v111;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      v114 = v112;
    }

    else
    {
      v114 = v112 & 0xFFFFFFFE;
    }

    if (v114)
    {
      LOWORD(v138) = 0;
      LODWORD(v132) = 2;
      v115 = _os_log_send_and_compose_impl(v114, &v135, 0, 0, &_mh_execute_header, v113, 0, "All phases of migration completed, returning success", &v138, v132);

      if (v115)
      {
        sub_100002A8C(v115);
      }
    }

    else
    {

      v115 = 0;
    }

    free(v115);
  }

  if (a2)
  {
    goto LABEL_152;
  }

  return 1;
}

id sub_100021718()
{
  v0 = sub_1000013A0(qword_1000EB608);
  v1 = [v0 fileExistsAtPath:@"/private/var//keybags/umVolumeMigration-inprogress.kb" isDirectory:0];

  if (v1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        LOWORD(v10) = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v11, 0, 0, &_mh_execute_header, v2, 0, "USER_VOLUME_MIGRATION_MARKER_PATH exits", &v10, 2, v10);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        LOWORD(v10) = 0;
        v5 = _os_log_send_and_compose_impl(v7, &v11, 0, 0, &_mh_execute_header, v2, 0, "USER_VOLUME_MIGRATION_MARKER_PATH does not exist", &v10, 2, v10);
LABEL_18:
        v8 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }

        goto LABEL_21;
      }

LABEL_20:
      v8 = 0;
LABEL_21:
      free(v8);
    }
  }

  return v1;
}

id sub_1000218B8()
{
  v0 = sub_1000013A0(qword_1000EB608);
  v1 = [v0 removeFileAtPath:@"/private/var//keybags/umVolumeMigration-inprogress.kb" error:0];

  if (v1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        LOWORD(v10) = 0;
        v5 = _os_log_send_and_compose_impl(v4, &v11, 0, 0, &_mh_execute_header, v2, 0, "USER_VOLUME_MIGRATION_MARKER_PATH file removed", &v10, 2, v10);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        LOWORD(v10) = 0;
        v5 = _os_log_send_and_compose_impl(v7, &v11, 0, 0, &_mh_execute_header, v2, 0, "USER_VOLUME_MIGRATION_MARKER_PATH failed to remove", &v10, 2, v10);
LABEL_18:
        v8 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }

        goto LABEL_21;
      }

LABEL_20:
      v8 = 0;
LABEL_21:
      free(v8);
    }
  }

  return v1;
}

BOOL sub_100021A58(uint64_t a1)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v2 = qword_1000EB308;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v18 = 136315138;
      v19 = a1;
      v5 = _os_log_send_and_compose_impl(v4, &v16, 0, 0, &_mh_execute_header, v2, 0, "Volume: %s  Crypto Migration Start", &v18);
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v17 = 0;
  v7 = sub_100072384(a1, &v17);
  if (v7)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v18 = 136315138;
        v19 = a1;
        v11 = _os_log_send_and_compose_impl(v10, &v16, 0, 0, &_mh_execute_header, v8, 0, "Volume: %s  Crypto Migration SUCCESS", &v18);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v18 = 136315394;
        v19 = a1;
        v20 = 1024;
        v21 = v17;
        v11 = _os_log_send_and_compose_impl(v13, &v16, 0, 0, &_mh_execute_header, v8, 0, "Volume: %s  Crypto Migration FAILED with error: %d", &v18, 18);
LABEL_29:
        v14 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }

        goto LABEL_32;
      }

LABEL_31:
      v14 = 0;
LABEL_32:
      free(v14);
    }
  }

  return v7 != 0;
}

uint64_t sub_100021D04(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v10 = sub_100016954(NSUUID, v9);

  if (v7)
  {
    v11 = [v7 length];
  }

  else
  {
    v11 = 0;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v12 = qword_1000EB318;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v57 = 0;
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      LODWORD(v58) = 67109120;
      HIDWORD(v58) = v11;
      v15 = _os_log_send_and_compose_impl(v14, v57, 0, 0, &_mh_execute_header, v12, 0, "Creating bootstrap token with tokendata length:%d", &v58);
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v17 = sub_100089A80(qword_1000EB608);
  v56 = 0;
  v18 = [v17 createIdentityWithUUID:v10 passcode:v7 existingSession:501 existingSessionPasscode:v8 isACMCredential:a3 error:&v56];

  v19 = v56;
  if ((v18 & 1) == 0)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v25 = qword_1000EB318;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_79;
    }

    v58 = 0;
    v26 = sub_1000011A8(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      *v57 = 138543362;
      *&v57[4] = v19;
      v28 = _os_log_send_and_compose_impl(v27, &v58, 0, 0, &_mh_execute_header, v25, 0, "Failed to create bootstrap token with error %{public}@", v57, 12);
      if (!v28)
      {
LABEL_78:
        free(v28);
        goto LABEL_79;
      }

LABEL_33:
      sub_100002A8C(v28);
      goto LABEL_78;
    }

LABEL_77:
    v28 = 0;
    goto LABEL_78;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v20 = qword_1000EB318;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v57 = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      LOWORD(v58) = 0;
      v23 = _os_log_send_and_compose_impl(v22, v57, 0, 0, &_mh_execute_header, v20, 0, "Succesful creation of bootstrap token, loading the bootstrap user", &v58, 2);
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  v55 = v19;
  v29 = sub_100022428(v10, 999, &v55);
  v30 = v55;

  if (v29)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v31 = qword_1000EB318;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 0;
      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        LOWORD(v58) = 0;
        LODWORD(v53) = 2;
        v34 = _os_log_send_and_compose_impl(v33, v57, 0, 0, &_mh_execute_header, v31, 0, "Successful load of Bootstrap user, transferring the primary to bootstrap user", &v58, v53);
        v35 = v34;
        if (v34)
        {
          sub_100002A8C(v34);
        }
      }

      else
      {
        v35 = 0;
      }

      free(v35);
    }

    v41 = sub_100089A80(qword_1000EB608);
    v54 = v30;
    v42 = [v41 unloadIdentityFromSession:999 error:&v54];
    v19 = v54;

    if (v42)
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v43 = qword_1000EB318;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 0;
        v44 = sub_1000011A8(1);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v44;
        }

        else
        {
          v45 = v44 & 0xFFFFFFFE;
        }

        if (v45)
        {
          LOWORD(v58) = 0;
          LODWORD(v53) = 2;
          v46 = _os_log_send_and_compose_impl(v45, v57, 0, 0, &_mh_execute_header, v43, 0, "Unloading of the Identity of BOOTSTRAP User SUCCESS", &v58, v53);
          v47 = v46;
          if (v46)
          {
            sub_100002A8C(v46);
          }
        }

        else
        {
          v47 = 0;
        }

        free(v47);
      }

      v51 = 1;
LABEL_89:
      v30 = v19;
      goto LABEL_90;
    }

    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v25 = qword_1000EB318;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
LABEL_79:

      v51 = 0;
      if (a4)
      {
        *a4 = [v19 code];
      }

      goto LABEL_89;
    }

    v58 = 0;
    LODWORD(v48) = sub_1000011A8(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v48;
    }

    else
    {
      v48 = v48 & 0xFFFFFFFE;
    }

    if (v48)
    {
      v49 = v25;
      v50 = [v19 code];
      *v57 = 134217984;
      *&v57[4] = v50;
      v28 = _os_log_send_and_compose_impl(v48, &v58, 0, 0, &_mh_execute_header, v49, 0, "Unloading the BOOTSTRAP User FAILED with error:%ld", v57);

      if (!v28)
      {
        goto LABEL_78;
      }

      goto LABEL_33;
    }

    goto LABEL_77;
  }

  if (a4)
  {
    *a4 = [v30 code];
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v36 = qword_1000EB318;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v58 = 0;
      v37 = sub_1000011A8(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        *v57 = 138543362;
        *&v57[4] = v30;
        LODWORD(v53) = 12;
        v39 = _os_log_send_and_compose_impl(v38, &v58, 0, 0, &_mh_execute_header, v36, 0, "Failed to load bootstrap user with error %{public}@", v57, v53);
        v40 = v39;
        if (v39)
        {
          sub_100002A8C(v39);
        }
      }

      else
      {
        v40 = 0;
      }

      free(v40);
    }
  }

  v51 = 0;
LABEL_90:

  return v51;
}

uint64_t sub_100022428(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = sub_100089A80(qword_1000EB608);
  v7 = [v6 isIdentityLoadedIntoSession:a2];

  if (v7)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        LODWORD(v36) = 67109120;
        HIDWORD(v36) = a2;
        v11 = _os_log_send_and_compose_impl(v10, v35, 0, 0, &_mh_execute_header, v8, 0, "AKSIdentity for user:%d already loaded, skipping load", &v36);
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    v18 = 0;
LABEL_47:
    v31 = 1;
    goto LABEL_48;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      LODWORD(v36) = 67109120;
      HIDWORD(v36) = a2;
      v16 = _os_log_send_and_compose_impl(v15, v35, 0, 0, &_mh_execute_header, v13, 0, "AKSIdentity for user:%d not loaded, loading..", &v36);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  v19 = sub_100089A80(qword_1000EB608);
  v34 = 0;
  v20 = [v19 loadIdentity:v5 intoSession:a2 error:&v34];
  v18 = v34;

  if (v20)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v21 = qword_1000EB308;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LOWORD(v36) = 0;
        v24 = _os_log_send_and_compose_impl(v23, v35, 0, 0, &_mh_execute_header, v21, 0, "AKSLoadIdentity Succeeded", &v36, 2);
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    goto LABEL_47;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v26 = qword_1000EB308;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 0;
    LODWORD(v27) = sub_1000011A8(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v27;
    }

    else
    {
      v27 = v27 & 0xFFFFFFFE;
    }

    if (v27)
    {
      v28 = v26;
      v29 = [v18 code];
      *v35 = 134217984;
      *&v35[4] = v29;
      v30 = _os_log_send_and_compose_impl(v27, &v36, 0, 0, &_mh_execute_header, v28, 0, "AKSLoadIdentity failed with Error:%ld", v35);

      if (v30)
      {
        sub_100002A8C(v30);
      }
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }

  if (a3)
  {
    v33 = v18;
    v31 = 0;
    *a3 = v18;
  }

  else
  {
    v31 = 0;
  }

LABEL_48:

  return v31;
}

id sub_100022858(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v10 = sub_100016954(NSUUID, v9);

  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v11 = qword_1000EB318;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      LOWORD(v54) = 0;
      v14 = _os_log_send_and_compose_impl(v13, v56, 0, 0, &_mh_execute_header, v11, 0, "Loading the Bootstrap User to change tokenData", &v54, 2);
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  v55 = 0;
  v16 = sub_100022428(v10, 999, &v55);
  v17 = v55;
  if (v16)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v18 = qword_1000EB318;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LOWORD(v54) = 0;
        LODWORD(v51) = 2;
        v21 = _os_log_send_and_compose_impl(v20, v56, 0, 0, &_mh_execute_header, v18, 0, "Loaded the Bootstrap User, changing tokenData", &v54, v51);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v28 = sub_100089A80(qword_1000EB608);
    v53 = v17;
    v29 = [v28 changeSecretrForIdentityWithUUID:v10 oldPasscode:v7 newPasscode:v8 existingSession:999 isACMCredential:a3 error:&v53];
    v30 = v53;

    if (v29)
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v31 = qword_1000EB318;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 0;
        v32 = sub_1000011A8(1);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 & 0xFFFFFFFE;
        }

        if (v33)
        {
          LOWORD(v54) = 0;
          LODWORD(v51) = 2;
          v34 = _os_log_send_and_compose_impl(v33, v56, 0, 0, &_mh_execute_header, v31, 0, "Succesful change of tokenData for bootstrap token", &v54, v51);
          v35 = v34;
          if (v34)
          {
            sub_100002A8C(v34);
          }
        }

        else
        {
          v35 = 0;
        }

        free(v35);
      }
    }

    else
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v36 = qword_1000EB318;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v54 = 0;
        v37 = sub_1000011A8(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFE;
        }

        if (v38)
        {
          *v56 = 138543362;
          *&v56[4] = v30;
          LODWORD(v51) = 12;
          v39 = _os_log_send_and_compose_impl(v38, &v54, 0, 0, &_mh_execute_header, v36, 0, "Failed to change bootstrap token secret with error %{public}@", v56, v51);
          v40 = v39;
          if (v39)
          {
            sub_100002A8C(v39);
          }
        }

        else
        {
          v40 = 0;
        }

        free(v40);
      }

      if (a4)
      {
        *a4 = [v30 code];
      }
    }

    v41 = sub_100089A80(qword_1000EB608);
    v52 = v30;
    v42 = [v41 unloadIdentityFromSession:999 error:&v52];
    v17 = v52;

    if (v42)
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v43 = qword_1000EB318;
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_85;
      }

      *v56 = 0;
      v44 = sub_1000011A8(1);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (v45)
      {
        LOWORD(v54) = 0;
        LODWORD(v51) = 2;
        v46 = _os_log_send_and_compose_impl(v45, v56, 0, 0, &_mh_execute_header, v43, 0, "Unloading of the Identity of BOOTSTRAP User SUCCESS", &v54, v51);
        if (!v46)
        {
          goto LABEL_84;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v43 = qword_1000EB318;
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_85;
      }

      v54 = 0;
      LODWORD(v47) = sub_1000011A8(1);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v47;
      }

      else
      {
        v47 = v47 & 0xFFFFFFFE;
      }

      if (v47)
      {
        v48 = v43;
        v49 = [v17 code];
        *v56 = 134217984;
        *&v56[4] = v49;
        v46 = _os_log_send_and_compose_impl(v47, &v54, 0, 0, &_mh_execute_header, v48, 0, "Unloading the BOOTSTRAP User FAILED with error:%ld", v56);

        if (!v46)
        {
LABEL_84:
          free(v46);
LABEL_85:

          goto LABEL_86;
        }

LABEL_82:
        sub_100002A8C(v46);
        goto LABEL_84;
      }
    }

    v46 = 0;
    goto LABEL_84;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v23 = qword_1000EB318;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v54 = 0;
    v24 = sub_1000011A8(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      *v56 = 138543362;
      *&v56[4] = v17;
      LODWORD(v51) = 12;
      v26 = _os_log_send_and_compose_impl(v25, &v54, 0, 0, &_mh_execute_header, v23, 0, "Failed to load bootstrap user with error %{public}@", v56, v51);
      v27 = v26;
      if (v26)
      {
        sub_100002A8C(v26);
      }
    }

    else
    {
      v27 = 0;
    }

    free(v27);
  }

  v29 = 0;
  if (a4)
  {
    *a4 = [v17 code];
  }

LABEL_86:

  return v29;
}

uint64_t sub_100022F48(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v6 = sub_100016954(NSUUID, v5);

  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v7 = qword_1000EB318;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v55 = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LOWORD(v53) = 0;
      v10 = _os_log_send_and_compose_impl(v9, v55, 0, 0, &_mh_execute_header, v7, 0, "loading the bootstrap user", &v53, 2);
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v54 = 0;
  v12 = sub_100022428(v6, 999, &v54);
  v13 = v54;
  if ((v12 & 1) == 0)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v19 = qword_1000EB318;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    v53 = 0;
    v20 = sub_1000011A8(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      *v55 = 138412290;
      *&v55[4] = v13;
      LODWORD(v50) = 12;
      v22 = _os_log_send_and_compose_impl(v21, &v53, 0, 0, &_mh_execute_header, v19, 16, "Failed to load bootstrap user with error %@", v55, v50);
      goto LABEL_82;
    }

LABEL_84:
    v47 = 0;
LABEL_85:
    free(v47);
    goto LABEL_86;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v14 = qword_1000EB318;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v55 = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      LOWORD(v53) = 0;
      LODWORD(v50) = 2;
      v17 = _os_log_send_and_compose_impl(v16, v55, 0, 0, &_mh_execute_header, v14, 0, "Successful load of Bootstrap user, unload Bootstrap user...", &v53, v50);
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  v23 = sub_100089A80(qword_1000EB608);
  v52 = v13;
  v24 = [v23 unloadIdentityFromSession:999 error:&v52];
  v25 = v52;

  if (v24)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v26 = qword_1000EB318;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v55 = 0;
      v27 = sub_1000011A8(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 & 0xFFFFFFFE;
      }

      if (v28)
      {
        LOWORD(v53) = 0;
        LODWORD(v50) = 2;
        v29 = _os_log_send_and_compose_impl(v28, v55, 0, 0, &_mh_execute_header, v26, 0, "Unloading of the Identity of BOOTSTRAP User SUCCESS", &v53, v50);
        if (!v29)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      goto LABEL_51;
    }
  }

  else
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v26 = qword_1000EB318;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 0;
      LODWORD(v30) = sub_1000011A8(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v30;
      }

      else
      {
        v30 = v30 & 0xFFFFFFFE;
      }

      if (v30)
      {
        v31 = v26;
        v32 = [v25 code];
        *v55 = 134217984;
        *&v55[4] = v32;
        v29 = _os_log_send_and_compose_impl(v30, &v53, 0, 0, &_mh_execute_header, v31, 0, "Unloading the BOOTSTRAP User FAILED with error:%ld", v55);

        if (!v29)
        {
LABEL_52:
          free(v29);
          goto LABEL_53;
        }

LABEL_50:
        sub_100002A8C(v29);
        goto LABEL_52;
      }

LABEL_51:
      v29 = 0;
      goto LABEL_52;
    }
  }

LABEL_53:

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v33 = qword_1000EB318;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *v55 = 0;
    v34 = sub_1000011A8(1);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 & 0xFFFFFFFE;
    }

    if (v35)
    {
      LOWORD(v53) = 0;
      LODWORD(v50) = 2;
      v36 = _os_log_send_and_compose_impl(v35, v55, 0, 0, &_mh_execute_header, v33, 0, "Unloaded the bootstrap User, deleting bootstrap user", &v53, v50);
      v37 = v36;
      if (v36)
      {
        sub_100002A8C(v36);
      }
    }

    else
    {
      v37 = 0;
    }

    free(v37);
  }

  v38 = sub_100089A80(qword_1000EB608);
  v51 = v25;
  v39 = [v38 deleteIdentity:v6 error:&v51];
  v13 = v51;

  if (v39)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v40 = qword_1000EB318;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *v55 = 0;
      v41 = sub_1000011A8(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        LOWORD(v53) = 0;
        LODWORD(v50) = 2;
        v43 = _os_log_send_and_compose_impl(v42, v55, 0, 0, &_mh_execute_header, v40, 0, "Succesful deletion of bootstrap token", &v53, v50);
        v44 = v43;
        if (v43)
        {
          sub_100002A8C(v43);
        }
      }

      else
      {
        v44 = 0;
      }

      free(v44);
    }

    v48 = 1;
    goto LABEL_92;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v19 = qword_1000EB318;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 0;
    v45 = sub_1000011A8(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v46 = v45;
    }

    else
    {
      v46 = v45 & 0xFFFFFFFE;
    }

    if (v46)
    {
      *v55 = 138543362;
      *&v55[4] = v13;
      LODWORD(v50) = 12;
      v22 = _os_log_send_and_compose_impl(v46, &v53, 0, 0, &_mh_execute_header, v19, 0, "Failed to delete bootstrap token with error %{public}@", v55, v50);
LABEL_82:
      v47 = v22;
      if (v22)
      {
        sub_100002A8C(v22);
      }

      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_86:

  v48 = 0;
  if (a4)
  {
    *a4 = [v13 code];
  }

LABEL_92:

  return v48;
}

uint64_t sub_100023684(int *a1)
{
  v2 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v3 = sub_100016954(NSUUID, v2);

  v4 = sub_100089A80(qword_1000EB608);
  v5 = [v4 isIdentityLoadedIntoSession:999];

  if (!v5)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v50 = 0x3E704000100;
        v14 = _os_log_send_and_compose_impl(v13, v49, 0, 0, &_mh_execute_header, v11, 0, "AKSIdentity for user:%d not loaded, loading to verify existance", &v50);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v18 = sub_100089A80(qword_1000EB608);
    v48 = 0;
    v17 = [v18 loadIdentity:v3 intoSession:999 error:&v48];
    v19 = v48;

    if (v17)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        v21 = sub_1000011A8(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          LOWORD(v50) = 0;
          v23 = _os_log_send_and_compose_impl(v22, v49, 0, 0, &_mh_execute_header, v20, 0, "AKSLoadIdentity Succeeded, it exists, unloading now...", &v50, 2);
          v24 = v23;
          if (v23)
          {
            sub_100002A8C(v23);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }

      v30 = sub_100089A80(qword_1000EB608);
      v47 = v19;
      v31 = [v30 unloadIdentityFromSession:999 error:&v47];
      v16 = v47;

      if (v31)
      {
        v32 = 0;
        if (!a1)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v33 = qword_1000EB308;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 0;
        LODWORD(v34) = sub_1000011A8(1);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v34;
        }

        else
        {
          v34 = v34 & 0xFFFFFFFE;
        }

        if (v34)
        {
          v35 = v33;
          v36 = [v16 code];
          *v49 = 134217984;
          *&v49[4] = v36;
          v37 = _os_log_send_and_compose_impl(v34, &v50, 0, 0, &_mh_execute_header, v35, 0, "AKSUnLoadIdentity after load failed with Error:%ld", v49);

          if (v37)
          {
            sub_100002A8C(v37);
          }
        }

        else
        {
          v37 = 0;
        }

        free(v37);
      }

      v32 = 0;
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v25 = qword_1000EB308;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 0;
        LODWORD(v26) = sub_1000011A8(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v26;
        }

        else
        {
          v26 = v26 & 0xFFFFFFFE;
        }

        if (v26)
        {
          v27 = v25;
          v28 = [v19 code];
          *v49 = 134217984;
          *&v49[4] = v28;
          v29 = _os_log_send_and_compose_impl(v26, &v50, 0, 0, &_mh_execute_header, v27, 0, "AKSLoadIdentity failed with Error:%ld, might not exist..", v49);

          if (v29)
          {
            sub_100002A8C(v29);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }

      if ([v19 code] == -536362989 || objc_msgSend(v19, "code") == -536870160)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v50 = 0;
          LODWORD(v38) = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v38;
          }

          else
          {
            v38 = v38 & 0xFFFFFFFE;
          }

          if (v38)
          {
            v39 = v33;
            v40 = [v19 code];
            *v49 = 134217984;
            *&v49[4] = v40;
            v41 = _os_log_send_and_compose_impl(v38, &v50, 0, 0, &_mh_execute_header, v39, 0, "AKSLoadIdentity failed with Error:%ld  is kAKSReturnDecodeError, so BST does not exist, ENOENT error returned", v49);

            if (v41)
            {
              sub_100002A8C(v41);
            }
          }

          else
          {
            v41 = 0;
          }

          free(v41);
        }

        v32 = 2;
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v50 = 0;
          LODWORD(v42) = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v42 = v42;
          }

          else
          {
            v42 = v42 & 0xFFFFFFFE;
          }

          if (v42)
          {
            v43 = v33;
            v44 = [v19 code];
            *v49 = 134217984;
            *&v49[4] = v44;
            v45 = _os_log_send_and_compose_impl(v42, &v50, 0, 0, &_mh_execute_header, v43, 0, "AKSLoadIdentity failed with unexpected Error:%ld , EIO error returned", v49);

            if (v45)
            {
              sub_100002A8C(v45);
            }
          }

          else
          {
            v45 = 0;
          }

          free(v45);
        }

        v32 = 5;
      }

      v16 = v19;
    }

    if (!a1)
    {
      goto LABEL_92;
    }

LABEL_91:
    *a1 = v32;
    goto LABEL_92;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v50 = 0x3E704000100;
      v9 = _os_log_send_and_compose_impl(v8, v49, 0, 0, &_mh_execute_header, v6, 0, "AKSIdentity for user:%d already loaded, identity exists", &v50);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  v16 = 0;
  v17 = 1;
LABEL_92:

  return v17;
}

uint64_t sub_100023DF8(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v7 = sub_100016954(NSUUID, v6);

  v8 = sub_100089A80(qword_1000EB608);
  v9 = [v8 isIdentityLoadedIntoSession:999];

  v10 = &off_1000EB000;
  if (v9)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v59 = 0x3E704000100;
        v14 = _os_log_send_and_compose_impl(v13, v58, 0, 0, &_mh_execute_header, v11, 0, "AKSIdentity for user:%d already loaded, identity exists", &v59);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v21 = 0;
    goto LABEL_23;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v16 = qword_1000EB308;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v58 = 0;
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      LOWORD(v59) = 0;
      v19 = _os_log_send_and_compose_impl(v18, v58, 0, 0, &_mh_execute_header, v16, 0, "Bootstrap AKSIdentity not loaded, loading to verify existance", &v59, 2);
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

  v35 = sub_100089A80(qword_1000EB608);
  v57 = 0;
  v36 = [v35 loadIdentity:v7 intoSession:999 error:&v57];
  v21 = v57;

  if (v36)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 0;
      v37 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        LOWORD(v59) = 0;
        LODWORD(v54) = 2;
        v39 = _os_log_send_and_compose_impl(v38, v58, 0, 0, &_mh_execute_header, v11, 0, "AKSLoadIdentity Succeeded", &v59, v54);
        v40 = v39;
        if (v39)
        {
          sub_100002A8C(v39);
        }
      }

      else
      {
        v40 = 0;
      }

      free(v40);
    }

LABEL_23:

    v22 = sub_100089A80(qword_1000EB608);
    v56 = v21;
    v23 = [v22 verifyIdentityPasswordInSession:999 passcode:v5 isACMCredential:a2 error:&v56];
    v24 = v56;

    if (v23)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v25 = qword_1000EB308;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 0;
        v26 = sub_1000011A8(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 & 0xFFFFFFFE;
        }

        if (v27)
        {
          LOWORD(v59) = 0;
          LODWORD(v54) = 2;
          v28 = _os_log_send_and_compose_impl(v27, v58, 0, 0, &_mh_execute_header, v25, 0, "Token Validated as VerifyPassword  is successful,", &v59, v54);
          v29 = v28;
          if (v28)
          {
            sub_100002A8C(v28);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }

      if (v9)
      {
        v23 = 1;
LABEL_73:
        v21 = v24;
        goto LABEL_94;
      }

      goto LABEL_75;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v59 = 0;
      LODWORD(v31) = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v31;
      }

      else
      {
        v31 = v31 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v32 = v30;
        v33 = [v24 code];
        *v58 = 134217984;
        *&v58[4] = v33;
        v34 = _os_log_send_and_compose_impl(v31, &v59, 0, 0, &_mh_execute_header, v32, 0, "Unable to verify the token with Error:%ld", v58);

        if (v34)
        {
          sub_100002A8C(v34);
        }

        v10 = &off_1000EB000;
      }

      else
      {
        v34 = 0;
      }

      free(v34);
    }

    if (a3)
    {
      *a3 = 22;
      if (v9)
      {
LABEL_72:
        v23 = 0;
        goto LABEL_73;
      }
    }

    else if (v9)
    {
      goto LABEL_72;
    }

LABEL_75:
    v46 = sub_100089A80(qword_1000EB608);
    v55 = v24;
    v47 = [v46 unloadIdentityFromSession:999 error:&v55];
    v21 = v55;

    if ((v47 & 1) == 0)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v48 = v10[97];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v59 = 0;
        LODWORD(v49) = sub_1000011A8(1);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v49;
        }

        else
        {
          v49 = v49 & 0xFFFFFFFE;
        }

        if (v49)
        {
          v50 = v48;
          v51 = [v21 code];
          *v58 = 134217984;
          *&v58[4] = v51;
          v52 = _os_log_send_and_compose_impl(v49, &v59, 0, 0, &_mh_execute_header, v50, 0, "AKSLoadIdentity after check failed with Error:%ld", v58);

          if (v52)
          {
            sub_100002A8C(v52);
          }
        }

        else
        {
          v52 = 0;
        }

        free(v52);
      }
    }

    goto LABEL_94;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v41 = qword_1000EB308;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v59 = 0;
    LODWORD(v42) = sub_1000011A8(1);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v42;
    }

    else
    {
      v42 = v42 & 0xFFFFFFFE;
    }

    if (v42)
    {
      v43 = v41;
      v44 = [v21 code];
      *v58 = 134217984;
      *&v58[4] = v44;
      v45 = _os_log_send_and_compose_impl(v42, &v59, 0, 0, &_mh_execute_header, v43, 0, "AKSLoadIdentity cannot be loaded, failure to validate token, error:%ld", v58);

      if (v45)
      {
        sub_100002A8C(v45);
      }
    }

    else
    {
      v45 = 0;
    }

    free(v45);
  }

  v23 = 0;
  if (a3)
  {
    *a3 = 2;
  }

LABEL_94:

  return v23;
}