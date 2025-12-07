void sub_100001C38(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (sub_100002394(a1) <= 1)
    {
      sub_100001CC4(a2);
    }

    if (sub_100002838(a1, a2, v11, v12, v13, v14, v15, v16))
    {
      sub_1000022D8(a1);
    }

    CFRelease(a2);
  }

  else
  {

    sub_10001A104(0, "send_response", @"No response to send", a4, a5, a6, a7, a8);
  }
}

void sub_100001CC4(const __CFDictionary *a1)
{
  if (sub_10000F300(a1))
  {
    Value = CFDictionaryGetValue(a1, @"Error");
    v3 = sub_10000F378(Value);
    if (v3)
    {
      v4 = v3;
      v5 = off_100109E00[0];
      if (!off_100109E00[0])
      {
        goto LABEL_9;
      }

      v6 = off_100109E08;
      while (!CFEqual(v4, *v5))
      {
        v7 = *v6++;
        v5 = v7;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      if (!*(v6 - 1))
      {
LABEL_9:
        v8 = CFEqual(v4, @"ServiceProhibited");
        v9 = off_1000F2ED0;
        if (v8)
        {
          v9 = off_1000F2F78;
        }

        v10 = *v9;
        if (*v9)
        {

          CFDictionarySetValue(a1, @"Error", v10);
        }
      }
    }
  }
}

__CFDictionary *sub_100001DA8(const void *a1)
{
  v2 = sub_100026340();
  v8 = v2;
  if (v2)
  {
    CFDictionarySetValue(v2, @"Request", a1);
  }

  else
  {
    sub_10001A104(0, "create_response", @"Could not create response dict", v3, v4, v5, v6, v7);
  }

  return v8;
}

void sub_100001E04(int a1, const char *a2, CFMutableDictionaryRef theDict, const __CFString *value)
{
  if (a1)
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = " ";
    }

    v7 = sub_10000F378(value);
    v13 = @"NULL";
    if (v7)
    {
      v13 = value;
    }

    sub_10001A104(0, "set_response_error", @"%s %@", v8, v9, v10, v11, v12, v6, v13);
  }

  CFDictionarySetValue(theDict, @"Error", value);
}

CFTypeRef sub_100001EA0(const void *a1)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    if (CFPropertyListWrite(a1, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0) < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = CFWriteStreamCopyProperty(v3, kCFStreamPropertyDataWritten);
    }

    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

id sub_100002010()
{
  v0 = +[UMUserManager sharedManager];
  v1 = [v0 isMultiUser];

  return v1;
}

id sub_100002050()
{
  result = sub_100002010();
  if (result)
  {
    v1 = +[UMUserManager sharedManager];
    v2 = [v1 isLoginSession];

    return v2;
  }

  return result;
}

CFBooleanRef sub_100002098(const __CFString *a1)
{
  if (sub_10000F378(a1))
  {
    if (CFEqual(@"ShouldSubmit", a1))
    {
      v13 = DiagnosticLogSubmissionEnabled();
      v14 = &kCFBooleanTrue;
      if (!v13)
      {
        v14 = &kCFBooleanFalse;
      }

      return *v14;
    }

    else
    {

      return sub_10001A794(a1, @"com.apple.MobileDeviceCrashCopy", v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    sub_10001A104(0, "copy_crashcopier_value", @"Invalid key for domain %@.", v2, v3, v4, v5, v6, @"com.apple.MobileDeviceCrashCopy");
    return 0;
  }
}

uint64_t sub_10000215C(const __CFString *a1, void *a2)
{
  if (sub_10000F378(a1) && sub_10000F3F0(a2))
  {
    if (CFEqual(a1, @"ShouldSubmit"))
    {
      v14 = +[MCProfileConnection sharedConnection];
      v15 = [a2 BOOLValue];
      [v14 setBoolValue:v15 forSetting:MCFeatureDiagnosticsSubmissionAllowed];

      return 1;
    }

    if (!sub_10001A684(a1, a2, @"com.apple.MobileDeviceCrashCopy", v9, v10, v11, v12, v13))
    {
      return 1;
    }
  }

  else
  {
    sub_10001A104(0, "set_crashcopier_value", @"Invalid key '%@' or value '%@'.", v4, v5, v6, v7, v8, a1, a2);
  }

  return 0;
}

void sub_100002250(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

double sub_10000225C(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = a3;
    *(a1 + 32) = 0;
  }

  return result;
}

void sub_100002284(uint64_t a1, dispatch_object_t object)
{
  if (a1)
  {
    if (object)
    {
      dispatch_retain(object);
    }

    v4 = *(a1 + 48);
    *(a1 + 48) = object;
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void sub_1000022D8(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *a1;
    if (v3)
    {
      dispatch_source_cancel(*(a1 + 40));
      dispatch_activate(v3);
      dispatch_release(v3);
      *(a1 + 40) = 0;
    }

    if (v2)
    {
      dispatch_source_cancel(v2);
      dispatch_activate(v2);
      dispatch_release(v2);
      *(a1 + 48) = 0;
    }

    else if (v4 != -1)
    {
      close(v4);
    }

    *a1 = -1;
  }
}

uint64_t sub_10000236C(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100002380(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 4;
  }
}

uint64_t sub_100002394(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 32);
  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000023B0(unsigned int *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, int a5)
{
  v6 = sub_100099ABC(*a1, a2, a3, a4, a5);
  *(a1 + 3) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 20) = 1;
  return result;
}

uint64_t sub_1000023F4(uint64_t a1)
{
  if (*(a1 + 20) == 1)
  {
    v2 = SSLClose(*(a1 + 24));
    if (v2)
    {
      sub_10001A104(0, "lockconn_disable_ssl", @"Could not shutdown SSL connection: %d\n", v3, v4, v5, v6, v7, v2);
    }

    *(a1 + 20) = 0;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    _SSLDisposeContext(v8);
    *(a1 + 24) = 0;
  }

  return 0;
}

uint64_t sub_100002468(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

ssize_t sub_100002474(uint64_t a1, const void *a2, size_t a3)
{
  processed = -1;
  if (*(a1 + 20) != 1)
  {
    return send(*a1, a2, a3, 0);
  }

  v3 = SSLWrite(*(a1 + 24), a2, a3, &processed);
  if (v3)
  {
    v4 = v3;
    *__error() = 5;
    if (!processed)
    {
      processed = -1;
    }

    if (v4 == -9806)
    {
      v5 = __error();
      v6 = 32;
      goto LABEL_10;
    }

    if (v4 == -9803)
    {
      v5 = __error();
      v6 = 35;
LABEL_10:
      *v5 = v6;
    }
  }

  return processed;
}

ssize_t sub_100002524(unsigned int *a1, void *data, size_t dataLength, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  processed = -1;
  if (*(a1 + 20) != 1)
  {
    if (!sub_100002640(*a1, data, dataLength, a4, a5, a6, a7, a8))
    {
      return recv(*a1, data, dataLength, 0);
    }

    *__error() = 54;
    sub_10001A104(0, "lockconn_recv", @"walk away", v13, v14, v15, v16, v17);
    return processed;
  }

  v11 = SSLRead(*(a1 + 3), data, dataLength, &processed);
  if (!v11)
  {
    return processed;
  }

  v12 = v11;
  *__error() = 5;
  if (!processed)
  {
    processed = -1;
  }

  switch(v12)
  {
    case -9806:
      v18 = __error();
      v19 = 54;
      goto LABEL_14;
    case -9803:
      v18 = __error();
      v19 = 2;
LABEL_14:
      *v18 = v19;
      return processed;
    case -9805:
      return 0;
  }

  return processed;
}

uint64_t sub_100002640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  *&v23.tv_usec = 0;
  memset(&v24, 0, sizeof(v24));
  if (a1 >= 1024)
  {
    sub_10001A104(0, "_select_socket", @"Invalid socket (received %d, max is %d).", a4, a5, a6, a7, a8, a1, 1024);
    return 0xFFFFFFFFLL;
  }

  if (a1 == -1)
  {
    v18 = @"Invalid socket";
LABEL_21:
    sub_10001A104(0, "_select_socket", v18, a4, a5, a6, a7, a8, v21);
    return 0xFFFFFFFFLL;
  }

  if (__darwin_check_fd_set_overflow(a1, &v24, 0))
  {
    *(v24.fds_bits + ((v8 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v8;
  }

  v23.tv_usec = 0;
  v23.tv_sec = 60;
  v9 = fcntl(v8, 3, 4);
  result = 0;
  if ((v9 & 4) == 0)
  {
    v11 = 0;
    while (1)
    {
      v12 = select(v8 + 1, &v24, 0, 0, &v23);
      memset(&v24, 0, sizeof(v24));
      if (__darwin_check_fd_set_overflow(v8, &v24, 0))
      {
        v24.fds_bits[v8 >> 5] |= 1 << v8;
      }

      if (v12 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v20 = __error();
        v22 = strerror(*v20);
        v19 = @"select error receiving message: %s";
        goto LABEL_19;
      }

      v11 = (v11 + 1);
      if (v11 == 20)
      {
        v11 = 20;
        goto LABEL_20;
      }
    }

    if (v12)
    {
      return 0;
    }

    v19 = @"receive secure message timeout!";
LABEL_19:
    sub_10001A104(0, "_select_socket", v19, v13, v14, v15, v16, v17, v22);
LABEL_20:
    v21 = v11;
    v18 = @"Failed to select socket after %d attempts.";
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100002840(uint64_t a1, const void *a2, CFPropertyListFormat a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = @"no connection";
LABEL_21:
    sub_10001A104(0, "_send_message", v10, a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  if (*a1 == -1)
  {
    v10 = @"no socket";
    goto LABEL_21;
  }

  if (*(a1 + 20) != 1)
  {
    if (!a2)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_10;
  }

  result = 0xFFFFFFFFLL;
  if (a2 && *(a1 + 24))
  {
LABEL_10:
    Data = CFPropertyListCreateData(kCFAllocatorDefault, a2, a3, 0, 0);
    if (Data)
    {
      v12 = Data;
      Length = CFDataGetLength(Data);
      if (Length < 0)
      {
        sub_10001A104(0, "_send_message", @"message length too small", v14, v15, v16, v17, v18);
        CFRelease(v12);
        return 0xFFFFFFFFLL;
      }

      v19 = Length;
      BytePtr = CFDataGetBytePtr(v12);
      v21 = 0;
      v32 = bswap32(v19);
      do
      {
        v22 = sub_100002474(a1, &v32 + v21, 4 - v21);
        if (v22 == -1)
        {
          CFRelease(v12);
          v25 = __error();
          v31 = strerror(*v25);
          sub_10001A104(0, "_send_message", @"Could not send message size %ld: %s\n", v26, v27, v28, v29, v30, v19, v31);
          return 0xFFFFFFFFLL;
        }

        v21 += v22;
      }

      while (v21 != 4);
      if (!v19)
      {
LABEL_19:
        CFRelease(v12);
        return 0;
      }

      v23 = 0;
      while (1)
      {
        v24 = sub_100002474(a1, BytePtr, v19 - v23);
        if (v24 == -1)
        {
          break;
        }

        v23 += v24;
        BytePtr += v24;
        if (v23 >= v19)
        {
          goto LABEL_19;
        }
      }

      CFRelease(v12);
      v10 = @"Could not send secure message.\n";
    }

    else
    {
      v10 = @"Could not encode message as XML";
    }

    goto LABEL_21;
  }

  return result;
}

const __CFDictionary *sub_100002A14(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || sub_100002640(*a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v18 = sub_100002AFC(a1, v9, v10, v11, v12, v13, v14, v15);
  v16 = v18;
  if (!v18)
  {
LABEL_8:
    sub_100002DA8(v16);
    return v16;
  }

  v19 = CFGetTypeID(v18);
  if (v19 == CFDictionaryGetTypeID())
  {
    if (!a1[8])
    {
      Value = CFDictionaryGetValue(v16, @"ProtocolVersion");
      if (Value)
      {
        v26 = Value;
        v27 = CFGetTypeID(Value);
        if (v27 == CFStringGetTypeID())
        {
          IntValue = CFStringGetIntValue(v26);
          if (IntValue >= 1)
          {
            a1[8] = IntValue;
          }
        }
      }
    }

    goto LABEL_8;
  }

  sub_10001A104(0, "lockconn_receive_message", @"Ignoring message that is not the right type.\n", v20, v21, v22, v23, v24);
  CFRelease(v16);
  return 0;
}

CFPropertyListRef sub_100002AFC(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  data = 0;
  error = 0;
  v9 = *a1;
  if (v9 == -1)
  {
    return 0;
  }

  processed = 0;
  if (*(a1 + 20) != 1)
  {
    if (sub_100002640(v9, a2, a3, a4, a5, a6, a7, a8))
    {
      v23 = @"walk away - non-SSL 2";
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v10 = *(a1 + 3);
  if (!v10)
  {
    return 0;
  }

  if (SSLRead(v10, &data, 4uLL, &processed) == -9805)
  {
    *(a1 + 20) = 0;
    sub_1000023F4(a1);
    if (sub_100002640(*a1, v16, v17, v18, v19, v20, v21, v22))
    {
      v23 = @"walk away - non-SSL 1";
LABEL_16:
      sub_10001A104(0, "_receive_message", v23, v11, v12, v13, v14, v15, v53, v54, v55, v56);
      return 0;
    }

LABEL_9:
    v24 = recv(*a1, &data, 4uLL, 0);
    processed = v24;
    if (!v24)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v24 = processed;
  if (!processed)
  {
    return 0;
  }

LABEL_12:
  if (v24 != 4)
  {
    v26 = *__error();
    v27 = __error();
    v55 = v26;
    v56 = strerror(*v27);
    v53 = 4;
    v54 = v24;
    v23 = @"Could not receive size of message, expected %d bytes, got %ld bytes: (%d, %s)";
    goto LABEL_16;
  }

  v25 = bswap32(data);
  if (v25 > 0x300000)
  {
    v54 = v25;
    v55 = 3145728;
    v53 = data;
    v23 = @"swapped %d message size %d exceeds %d limit";
    goto LABEL_16;
  }

  if (!data)
  {
    v23 = @"msize is zero";
    goto LABEL_16;
  }

  v30 = malloc_type_malloc(v25, 0x100004077774924uLL);
  if (!v30)
  {
    sub_10001A104(0, "_receive_message", @"can't alloc message size %d", v31, v32, v33, v34, v35, v25);
    return 0;
  }

  v36 = v30;
  v37 = 0;
  v38 = v30;
  do
  {
    v39 = sub_100002524(a1, v38, v25 - v37, v31, v32, v33, v34, v35);
    processed = v39;
    if (v39 <= 0)
    {
      sub_10001A104(0, "_receive_message", @"Could not receive message: %ld.\n", v31, v32, v33, v34, v35, v39);
LABEL_36:
      free(v36);
      return 0;
    }

    v37 += v39;
    v38 += v39;
  }

  while (v37 < v25);
  v40 = CFDataCreateWithBytesNoCopy(0, v36, v25, kCFAllocatorMalloc);
  if (!v40)
  {
    sub_10001A104(0, "_receive_message", @"Could not create CFData for message.\n", v41, v42, v43, v44, v45);
    goto LABEL_36;
  }

  v46 = v40;
  v28 = CFPropertyListCreateWithData(0, v40, 0, 0, &error);
  if (v28)
  {
    v52 = error == 0;
  }

  else
  {
    v52 = 0;
  }

  if (!v52)
  {
    sub_10001A104(0, "_receive_message", @"there was an err.", v47, v48, v49, v50, v51);
    if (error)
    {
      CFRelease(error);
    }
  }

  CFRelease(v46);
  return v28;
}

void sub_100002DA8(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"Warning");
    if (Value)
    {
      v2 = Value;
      memcpy(__dst, "Error creating CFString", sizeof(__dst));
      LODWORD(v2) = CFStringGetCString(v2, __dst, 1024, 0x8000100u);
      v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (!v2)
      {
        if (!v3)
        {
          return;
        }

        LOWORD(v5) = 0;
        v4 = "CFStringGetCString failure in lockdown_warning_break";
        goto LABEL_10;
      }

      if (v3)
      {
        v5 = 136315138;
        v6 = __dst;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v5) = 0;
        v4 = "*** this is a CLIENT bug, NOT a lockdown bug; set a breakpoint in lockdown_warning_break to debug";
LABEL_10:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, &v5, 2u);
      }
    }
  }
}

void sub_100002EF8()
{
  valuePtr = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v0 = sub_10000308C();
  if (sub_10000F300(v0))
  {
    if (CFDictionaryGetCount(v0))
    {
      goto LABEL_10;
    }

    v6 = sub_100006870();
    v24[3] = v6;
    if (v6)
    {
      if (CFNumberGetValue(v6, kCFNumberDoubleType, &valuePtr))
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100003134;
        v22[3] = &unk_1000F12C8;
        v22[4] = v27;
        v22[5] = &v23;
        sub_1000137E8(v22);
        goto LABEL_10;
      }

      v19 = @"Failed to query number.";
    }

    else
    {
      v19 = @"Failed to query time.";
    }

    sub_10001A104(0, "initialize_pairing_expirations", v19, v7, v8, v9, v10, v11);
  }

  else
  {
    sub_10001A104(0, "initialize_pairing_expirations", @"hinky input from the dictionary", v1, v2, v3, v4, v5);
    sub_10001A900(@"com.apple.mobile.ldpair", v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_10:
  v20 = v24;
  v21 = v24[3];
  if (v21)
  {
    CFRelease(v21);
    v20 = v24;
  }

  v20[3] = 0;
  if (v0)
  {
    CFRelease(v0);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v27, 8);
}

void sub_100003068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 56), 8);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_10000308C()
{
  v0 = sub_10001AA70(@"com.apple.mobile.ldpair");
  if (sub_10000F300(v0))
  {
    CFDictionaryApplyFunction(v0, sub_1000036FC, 0);
    if (v0)
    {
      CFRelease(v0);
    }

    return sub_10001AA70(@"com.apple.mobile.ldpair");
  }

  else
  {
    sub_10001A104(0, "copy_paired_hosts_and_dates", @"Invalid paired hosts records.", v1, v2, v3, v4, v5);
    if (v0)
    {
      CFRelease(v0);
    }

    return 0;
  }
}

uint64_t sub_100003134(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v10 = [v3 objectForKey:@"HostID"];
    v11 = sub_10001AC1C(v10);

    if (v11)
    {
      *(*(*(a1 + 32) + 8) + 24) = sub_100003224(v10, *(*(*(a1 + 40) + 8) + 24), v12, v13, v14, v15, v16, v17);
      if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
      {
        sub_10001A104(0, "initialize_pairing_expirations_block_invoke", @"Failed to set last paired date for %@.", v18, v19, v20, v21, v22, v10);
      }
    }

    else
    {
      sub_10001A104(0, "initialize_pairing_expirations_block_invoke", @"Pair record doesn't contain host id.", v13, v14, v15, v16, v17);
    }
  }

  else
  {
    sub_10001A104(0, "initialize_pairing_expirations_block_invoke", @"Invalid pair record.", v4, v5, v6, v7, v8);
    v10 = 0;
  }

  return 1;
}

uint64_t sub_100003224(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = sub_10001AA70(@"com.apple.mobile.ldpair");
    if (sub_10000F300(v10))
    {
      v11 = v10;
      if ([(__CFDictionary *)v11 count]< 0x201)
      {
        v17 = 0;
      }

      else
      {
        sub_10001A104(0, "set_last_paired_date", @"Detected greater than %d hosts in domain '%@', trimming list.", v12, v13, v14, v15, v16, 512, @"com.apple.mobile.ldpair");
        v17 = [(__CFDictionary *)v11 keysSortedByValueUsingComparator:&stru_1000F1308];
        v18 = [v17 count];
        v19 = v18 - 256;
        if (v18 != 256)
        {
          for (i = 0; v19 != i; ++i)
          {
            v21 = [v17 objectAtIndexedSubscript:i];
            v22 = sub_10001AC1C(v21);

            if (v22)
            {
              v23 = [v17 objectAtIndexedSubscript:i];
              sub_100003650(v23, v24, v25, v26, v27, v28, v29, v30);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
              {
                v44 = [v17 objectAtIndexedSubscript:i];
                v45 = objc_opt_class();
                *buf = 138412546;
                v61 = @"com.apple.mobile.ldpair";
                v62 = 2112;
                v63 = v45;
                v46 = v45;
                _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Unexpected format in preferences for domain %@: %@", buf, 0x16u);
              }

              v31 = [v17 objectAtIndexedSubscript:i];
              v38 = sub_10001A840(v31, @"com.apple.mobile.ldpair", v32, v33, v34, v35, v36, v37);

              if (!v38)
              {
                continue;
              }

              v23 = [v17 objectAtIndexedSubscript:i];
              sub_10001A104(0, "set_last_paired_date", @"Failed to remove pairing pairing info for %@.", v39, v40, v41, v42, v43, v23);
            }
          }
        }
      }

      v48 = sub_10000F378(a1);
      if (!sub_10001A684(v48, a2, @"com.apple.mobile.ldpair", v49, v50, v51, v52, v53))
      {
        v47 = 1;
        if (!v10)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      sub_10001A104(0, "set_last_paired_date", @"Failed to set pairing date.", v54, v55, v56, v57, v58);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000992C8(@"com.apple.mobile.ldpair");
      }

      v17 = 0;
      v11 = 0;
    }

    v47 = 0;
    if (v10)
    {
LABEL_23:
      CFRelease(v10);
    }
  }

  else
  {
    sub_10001A104(0, "set_last_paired_date", @"Invalid input", a4, a5, a6, a7, a8);
    v47 = 0;
    v11 = 0;
    v17 = 0;
  }

LABEL_24:

  return v47;
}

uint64_t sub_100003508(const __CFString *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    v9 = sub_10001A794(a1, @"com.apple.mobile.ldpair", a3, a4, a5, a6, a7, a8);
    if (sub_10000F2C4(v9))
    {
      if (CFNumberGetValue(v9, kCFNumberDoubleType, a2))
      {
        v15 = 1;
        if (!v9)
        {
          return v15;
        }

        goto LABEL_11;
      }

      v16 = @"Failed to retrieve number.";
    }

    else
    {
      v16 = @"No last paired date for this host.";
    }

    sub_10001A104(0, "get_last_paired_date", v16, v10, v11, v12, v13, v14);
    v15 = 0;
    if (v9)
    {
LABEL_11:
      CFRelease(v9);
    }
  }

  else
  {
    sub_10001A104(0, "get_last_paired_date", @"Invalid input", a4, a5, a6, a7, a8);
    return 0;
  }

  return v15;
}

int64_t sub_1000035C4(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 <= v8)
  {
    [v4 doubleValue];
    v11 = v10;
    [v5 doubleValue];
    if (v11 >= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_100003650(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100014CEC(a1, 0);
    sub_100029030(a1);
    sub_1000140A8(a1, 0, v9, v10, v11, v12, v13, v14);
    if (sub_10001A840(a1, @"com.apple.mobile.ldpair", v15, v16, v17, v18, v19, v20))
    {
      sub_10001A104(0, "remove_pairing_info_for_host", @"Failed to remove pairing pairing info for %@.", v21, v22, v23, v24, v25, a1);
    }
  }

  else
  {

    sub_10001A104(0, "remove_pairing_info_for_host", @"Invalid input.", a4, a5, a6, a7, a8);
  }
}

void sub_1000036FC(const __CFString *a1, const __CFNumber *a2)
{
  v24 = 0.0;
  valuePtr = 0.0;
  if (!sub_10000F378(a1) || !sub_10000F2C4(a2))
  {
    sub_10001A104(0, "expire_old_hosts", @"Invalid input.", v4, v5, v6, v7, v8, *&v24, *&valuePtr);
    v15 = 0;
    goto LABEL_13;
  }

  Value = sub_100006870();
  v15 = Value;
  if (!Value)
  {
    v16 = @"Failed to query time.";
LABEL_12:
    sub_10001A104(Value, "expire_old_hosts", v16, v10, v11, v12, v13, v14, *&v24, *&valuePtr);
    goto LABEL_13;
  }

  Value = CFNumberGetValue(Value, kCFNumberDoubleType, &v24);
  if (!Value)
  {
    v16 = @"Failed to query number.";
    goto LABEL_12;
  }

  Value = CFNumberGetValue(a2, kCFNumberDoubleType, &valuePtr);
  if (!Value)
  {
    v16 = @"Failed to get double value.";
    goto LABEL_12;
  }

  if (v24 <= valuePtr + 2592000.0)
  {
    sub_10000F378(a1);
LABEL_16:
    CFRelease(v15);
    return;
  }

LABEL_13:
  if (sub_10000F378(a1))
  {
    sub_100003650(a1, v17, v18, v19, v20, v21, v22, v23);
  }

  if (v15)
  {
    goto LABEL_16;
  }
}

uint64_t sub_10000382C(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = 0;
  v35 = 1;
  *&v36.sa_len = 0;
  *&v36.sa_data[6] = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  if (!a1)
  {
    v13 = @"Invalid input.";
LABEL_7:
    sub_10001A104(0, "create_inet_sock", v13, a4, a5, a6, a7, a8, v28, v29);
    return 0xFFFFFFFFLL;
  }

  v10 = socket(a2, 1, 0);
  if (v10 == -1)
  {
    v14 = *__error();
    v15 = __error();
    v28 = v14;
    v29 = strerror(*v15);
    v13 = @"Failed to create socket: %d (%s)";
    goto LABEL_7;
  }

  v11 = v10;
  if (setsockopt(v10, 0xFFFF, 4354, &v35, 4u))
  {
    v12 = @"Failed to set socket option (SO_OPPORTUNISTIC): %d (%s)";
LABEL_10:
    v16 = *__error();
    v17 = __error();
    v18 = strerror(*v17);
    sub_10001A104(0, "create_inet_sock", v12, v19, v20, v21, v22, v23, v16, v18);
    close(v11);
    return 0xFFFFFFFFLL;
  }

  v30 = 4;
  if (setsockopt(v11, 0xFFFF, 4225, &v30, 4u))
  {
    v12 = @"Failed to set socket option (SO_RESTRICTIONS): %d (%s)";
    goto LABEL_10;
  }

  if (*a1)
  {
    if (setsockopt(v11, 0xFFFF, 4, &v35, 4u))
    {
      v12 = @"Failed to set socket option (SO_REUSEADDR): %d (%s)";
      goto LABEL_10;
    }

    if (setsockopt(v11, 0xFFFF, 512, &v35, 4u))
    {
      v12 = @"Failed to set socket option (SO_REUSEPORT): %d (%s)";
      goto LABEL_10;
    }
  }

  if (a2 == 30)
  {
    LOWORD(v32) = 7708;
    v33 = in6addr_any;
    WORD1(v32) = bswap32(*a1) >> 16;
    v25 = 28;
    v31 = 28;
    if (setsockopt(v11, 41, 27, &v35, 4u))
    {
      v12 = @"Failed to set socket option (IPV6_V6ONLY): %d (%s)";
      goto LABEL_10;
    }

    v26 = &v32;
  }

  else
  {
    *&v36.sa_len = 528;
    *&v36.sa_data[2] = 0;
    *v36.sa_data = bswap32(*a1) >> 16;
    v25 = 16;
    v31 = 16;
    v26 = &v36;
  }

  if (bind(v11, v26, v25) == -1)
  {
    v12 = @"Failed to bind socket: %d (%s)";
    goto LABEL_10;
  }

  if (getsockname(v11, v26, &v31) == -1)
  {
    v12 = @"Failed to get socket name: %d (%s)";
    goto LABEL_10;
  }

  if (listen(v11, 128) == -1)
  {
    v12 = @"Failed to listen on socket: %d (%s)";
    goto LABEL_10;
  }

  v27 = &v36;
  if (a2 == 30)
  {
    v27 = &v32;
  }

  *a1 = bswap32(*v27->sa_data) >> 16;
  return v11;
}

uint64_t sub_100003B14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (a1 && *a1 && (v12 = a1[2]) != 0)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100003C54;
    v19[3] = &unk_1000F1330;
    v20 = a4;
    v21 = a3;
    v19[5] = a1;
    v19[6] = a2;
    v22 = a5;
    v19[4] = &v23;
    dispatch_sync(v12, v19);
  }

  else
  {
    sub_10001A104(0, "dns_register", @"Invalid input.", a4, a5, a6, a7, a8);
  }

  if (v24[3])
  {
    v17 = 1;
  }

  else
  {
    sub_1000049E4(a1, v10, v9, a5, v13, v14, v15, v16);
    v17 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  return v17 & 1;
}

void sub_100003C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = 0u;
  v59 = 0u;
  *buffer = 0u;
  v57 = 0u;
  if ((*(a1 + 56) & 1) == 0 && (*(a1 + 57) & 1) == 0)
  {
    sub_10001A104(0, "dns_register_block_invoke", @"Invalid input. No DNS registration requested.", a4, a5, a6, a7, a8);
    v34 = 0;
    v24 = 0;
    goto LABEL_41;
  }

  v9 = sub_10000D3AC(**(a1 + 40), @"com.apple.mobile.wireless_lockdown", @"InstanceName");
  CString = sub_10000F378(v9);
  if (!CString)
  {
    v33 = @"Invalid wireless instance name.";
LABEL_22:
    sub_10001A104(CString, "dns_register_block_invoke", v33, v11, v12, v13, v14, v15);
    v24 = 0;
    goto LABEL_23;
  }

  CString = CFStringGetCString(v9, buffer, 64, 0x8000100u);
  if (!CString)
  {
    v33 = @"Failed to create string.";
    goto LABEL_22;
  }

  if (*(a1 + 57) != 1)
  {
LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v16 = *(a1 + 48);
  if (!v16)
  {
    v33 = @"Invalid service string name.";
    CString = 0;
    goto LABEL_22;
  }

  v17 = *(a1 + 40);
  if (*(v17 + 32) == 1)
  {
    v18 = *(v17 + 24);
    if (!v18 || !strcmp(v18, v16))
    {
      goto LABEL_17;
    }
  }

  xpc_set_event();
  v24 = strdup(*(a1 + 48));
  if (!v24)
  {
    sub_10001A104(0, "dns_register_block_invoke", @"Failed to copy service string.", v19, v20, v21, v22, v23);
LABEL_23:
    v34 = 0;
    if (!v9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v25 = *(a1 + 40);
  v26 = *(v25 + 24);
  if (v26)
  {
    free(v26);
    v25 = *(a1 + 40);
  }

  *(v25 + 24) = 0;
  *(*(a1 + 40) + 24) = v24;
  v24 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v24, "Flags", 0);
  xpc_dictionary_set_string(v24, "Name", buffer);
  xpc_dictionary_set_string(v24, "RegistrationType", *(*(a1 + 40) + 24));
  xpc_dictionary_set_int64(v24, "InterfaceIndex", 0);
  xpc_dictionary_set_int64(v24, "Port", 32498);
  xpc_set_event();
  v27 = *(a1 + 40);
  *(v27 + 32) = 1;
  sub_10001A104(0, "dns_register_block_invoke", @"Registered DNS (syncing): %s", v28, v29, v30, v31, v32, *(v27 + 24));
LABEL_18:
  if (*(a1 + 56) == 1 && (*(*(a1 + 40) + 33) & 1) == 0)
  {
    xpc_set_event();
    v34 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v34, "Flags", 0);
    xpc_dictionary_set_string(v34, "Name", buffer);
    xpc_dictionary_set_string(v34, "RegistrationType", "_apple-pairable._tcp");
    xpc_dictionary_set_int64(v34, "InterfaceIndex", 0);
    xpc_dictionary_set_int64(v34, "Port", 32498);
    xpc_set_event();
    *(*(a1 + 40) + 33) = 1;
    sub_10001A104(0, "dns_register_block_invoke", @"Registered DNS (pairing): %s ", v35, v36, v37, v38, v39, "_apple-pairable._tcp");
  }

  else
  {
    v34 = 0;
  }

  if (*(a1 + 58) == 1)
  {
    v40 = *(a1 + 40);
    if (!*(v40 + 40))
    {
      goto LABEL_31;
    }

    if (!*(v40 + 52) || !*(v40 + 56))
    {
      IONotificationPortDestroy(*(v40 + 40));
      *(*(a1 + 40) + 40) = 0;
      v40 = *(a1 + 40);
LABEL_31:
      if (*(v40 + 52))
      {
        IOServiceClose(*(v40 + 52));
        v40 = *(a1 + 40);
        *(v40 + 52) = 0;
      }

      if (*(v40 + 56))
      {
        CFRelease(*(v40 + 56));
        *(*(a1 + 40) + 56) = 0;
        v40 = *(a1 + 40);
      }

      RunLoopSource = IORegisterForSystemPower(v40, (v40 + 40), sub_100004158, (v40 + 48));
      v47 = *(a1 + 40);
      *(v47 + 52) = RunLoopSource;
      if (RunLoopSource)
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(*(v47 + 40));
        if (RunLoopSource)
        {
          v48 = RunLoopSource;
          Current = CFRunLoopGetCurrent();
          CFRunLoopAddSource(Current, v48, kCFRunLoopDefaultMode);
          *(*(a1 + 40) + 56) = WiFiManagerClientCreate();
          RunLoopSource = *(*(a1 + 40) + 56);
          if (RunLoopSource)
          {
            WiFiManagerClientSetWoWState();
            sub_10001A104(0, "dns_register_block_invoke", @"Registered WOL.", v50, v51, v52, v53, v54);
            goto LABEL_39;
          }

          v55 = @"WiFiManagerClientCreate failed.";
        }

        else
        {
          v55 = @"IONotificationPortGetRunLoopSource failed for power notifications.";
        }
      }

      else
      {
        v55 = @"IORegisterForSystemPower failed.";
      }

      sub_10001A104(RunLoopSource, "dns_register_block_invoke", v55, v42, v43, v44, v45, v46);
      if (!v9)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

LABEL_39:
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (v9)
  {
LABEL_40:
    CFRelease(v9);
  }

LABEL_41:
}

void sub_100004158(void *a1, uint64_t a2, uint64_t a3, intptr_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v113, 0, sizeof(v113));
  v102 = 128;
  HIDWORD(v10) = a3 + 536870288;
  LODWORD(v10) = a3 + 536870288;
  v9 = v10 >> 4;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      if (dword_100109DF0)
      {

        sub_10001A104(0, "_sleep_wake_notification_callback", @"Power notification: kIOMessageCanSystemSleep", a4, a5, a6, a7, a8);
      }

      return;
    }

    if (v9 != 9)
    {
      if (v9 != 11)
      {
        goto LABEL_28;
      }

      return;
    }

    sysctlbyname("kern.wakereason", v113, &v102, 0, 0);
    if (dword_100109DF0)
    {
      sub_10001A104(0, "_sleep_wake_notification_callback", @"Power notification: kIOMessageSystemHasPoweredOn (Wake Reason - %s)", v12, v13, v14, v15, v16, v113);
    }

    v22 = (sub_10000DAD8(*a1, @"com.apple.mobile.wireless_lockdown", @"EnableWifiDebugging", v12, v13, v14, v15, v16) || sub_10000DAD8(*a1, @"com.apple.mobile.wireless_lockdown", @"EnableWifiConnections", v17, v18, v19, v20, v21)) && a1[3] != 0;
    v23 = sub_10000DAD8(*a1, @"com.apple.mobile.wireless_lockdown", @"EnableWifiPairing", v17, v18, v19, v20, v21);
    if (((v23 == 0) & ~v22) == 0)
    {
      sub_100003B14(a1, a1[3], v22, v23 != 0, 0);
    }

    clock_serv = 0;
    cur_time = 0;
    valuePtr = 0;
    v24 = mach_host_self();
    if (host_get_clock_service(v24, 0, &clock_serv))
    {
      v30 = @"Failed to query clock service.";
LABEL_31:
      sub_10001A104(0, "_did_wake_for_wifi_wake_packet", v30, v25, v26, v27, v28, v29);
      return;
    }

    if (clock_get_time(clock_serv, &cur_time))
    {
      v30 = @"Failed to get clock time.";
      goto LABEL_31;
    }

    v37 = 1000 * cur_time.tv_sec;
    if (dword_100109DF0)
    {
      sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Current time since boot: %lld.", v25, v26, v27, v28, v29, 1000 * cur_time.tv_sec);
    }

    v38 = IOServiceMatching("AppleBCMWLANCore");
    if (!v38)
    {
      v30 = @"Failed to query AppleBCMWLANCore service.";
      goto LABEL_31;
    }

    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v38);
    v40 = MatchingService;
    if (!MatchingService)
    {
      v30 = @"Failed to get matching service.";
      goto LABEL_31;
    }

    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IO80211InterfaceWoWWakeUpParams", kCFAllocatorDefault, 0);
    v47 = CFProperty;
    if (!CFProperty)
    {
      sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"IORegistryEntryCreateCFProperty failed for %s.", v42, v43, v44, v45, v46, "IO80211InterfaceWoWWakeUpParams");
      IOObjectRelease(v40);
      return;
    }

    if (dword_100109DF0)
    {
      sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"APPLE80211_REGKEY_WOW_WAKEUP_PARAMS: %@", v42, v43, v44, v45, v46, CFProperty);
    }

    Value = CFDictionaryGetValue(v47, @"IO80211InterfaceWoWWakeUpData");
    v54 = Value;
    if (Value)
    {
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v54);
      if (Length > 115)
      {
        v62 = __rev16(*(BytePtr + 6));
        switch(v62)
        {
          case 0x86DD:
            if (BytePtr[20] != 17)
            {
              sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Unrecognized IPv6 protocol 0x%02X", v57, v58, v59, v60, v61, BytePtr[20]);
              goto LABEL_48;
            }

            v63 = BytePtr + 68;
            break;
          case 0x842:
            v63 = BytePtr + 20;
            break;
          case 0x800:
            if (BytePtr[23] != 17)
            {
              sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Unrecognized IPv4 protocol 0x%02X", v57, v58, v59, v60, v61, BytePtr[23]);
              goto LABEL_48;
            }

            v63 = &BytePtr[4 * (BytePtr[14] & 0xF) + 28];
            break;
          default:
            sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Unrecognized etherType 0x%04X", v57, v58, v59, v60, v61, v62);
            goto LABEL_48;
        }

        if (v63 + 96 <= &BytePtr[Length])
        {
          if (qword_10010A620 != -1)
          {
            sub_100099348();
          }

          if (!memcmp(v63, qword_10010A618, 0x60uLL))
          {
            v69 = CFDictionaryGetValue(v47, @"IO80211InterfaceWoWWakeUpTimeStamp");
            if (!sub_10000F2C4(v69))
            {
              sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Failed to query %s.", v70, v71, v72, v73, v74, "IO80211InterfaceWoWWakeUpTimeStamp");
              goto LABEL_48;
            }

            v75 = CFNumberGetValue(v69, kCFNumberLongLongType, &valuePtr);
            if (!v75)
            {
              sub_10001A104(v75, "_did_wake_for_wifi_wake_packet", @"Failed to convert to integer.", v76, v77, v78, v79, v80);
              goto LABEL_48;
            }

            if (qword_10010A610)
            {
              if (valuePtr == qword_10010A610)
              {
                sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Wake time did not change: %lld", v76, v77, v78, v79, v80, qword_10010A610);
                goto LABEL_48;
              }

              v81 = @"New Wake time: %lld";
            }

            else
            {
              v81 = @"note the time for future reference: %lld";
            }

            sub_10001A104(0, "_did_wake_for_wifi_wake_packet", v81, v76, v77, v78, v79, v80, valuePtr);
            v87 = valuePtr;
            qword_10010A610 = valuePtr;
            if (dword_100109DF0)
            {
              sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Wake time since boot: %lld.", v82, v83, v84, v85, v86, valuePtr);
              v87 = valuePtr;
            }

            v88 = v87 - v37;
            if (v88 >= 0)
            {
              v89 = v88;
            }

            else
            {
              v89 = -v88;
            }

            sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Wake time difference: %lld.", v82, v83, v84, v85, v86, v89);
            if (v89 <= 0x7CF)
            {
              sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"waker was: %02x:%02x:%02x:%02x:%02x:%02x", v90, v91, v92, v93, v94, BytePtr[6], BytePtr[7], BytePtr[8], BytePtr[9], BytePtr[10], BytePtr[11]);
              CFRelease(v47);
              IOObjectRelease(v40);
              valuePtr = 0;
              p_valuePtr = &valuePtr;
              v111 = 0x2020000000;
              v112 = 0;
              if (qword_10010A630 != -1)
              {
                sub_100099370();
              }

              v95 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"com.apple.mobile.lockdownd.wake-on-wlan", @"The 411 on sync.", 0, 0, 0.0, 0, p_valuePtr + 6);
              if (v95)
              {
                sub_10001A104(0, "_takePowerAssertionForInterval", @"IOPMAssertionCreateWithDescription failed with %d", v96, v97, v98, v99, v100, v95);
              }

              else
              {
                if (dword_100109DF0)
                {
                  sub_10001A104(0, "_takePowerAssertionForInterval", @"Aquired %ld second power assertion.", v96, v97, v98, v99, v100, 30);
                }

                v101 = dispatch_time(0, 30000000000);
                cur_time = _NSConcreteStackBlock;
                v105 = 3221225472;
                v106 = sub_10000C318;
                v107 = &unk_1000F1718;
                v108 = &valuePtr;
                dispatch_after(v101, qword_10010A628, &cur_time);
              }

              _Block_object_dispose(&valuePtr, 8);
              return;
            }
          }

          else
          {
            sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Not a WOL packet.", v64, v65, v66, v67, v68);
          }
        }

        else
        {
          sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Payload underrun.", v57, v58, v59, v60, v61);
        }
      }

      else
      {
        sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Packet is too short.", v57, v58, v59, v60, v61);
      }
    }

    else
    {
      sub_10001A104(0, "_did_wake_for_wifi_wake_packet", @"Failed to query %s.", v49, v50, v51, v52, v53, "IO80211InterfaceWoWWakeUpData");
    }

LABEL_48:
    CFRelease(v47);
    IOObjectRelease(v40);
    return;
  }

  if (v9)
  {
    if (v9 != 1)
    {
LABEL_28:
      sub_10001A104(0, "_sleep_wake_notification_callback", @"Unknown power notification: %d", a4, a5, a6, a7, a8, a3);
      return;
    }

    if (dword_100109DF0)
    {
      sub_10001A104(0, "_sleep_wake_notification_callback", @"Power notification: kIOMessageSystemWillSleep", a4, a5, a6, a7, a8);
    }

    sub_1000049E4(a1, 1, 1, 0, a5, a6, a7, a8);
  }

  else if (dword_100109DF0)
  {
    sub_10001A104(0, "_sleep_wake_notification_callback", @"Power notification: kIOMessageCanSystemSleep", a4, a5, a6, a7, a8);
  }

  v31 = IOAllowPowerChange(*(a1 + 13), a4);
  if (v31)
  {
    sub_10001A104(0, "_sleep_wake_notification_callback", @"IOAllowPowerChange failed: 0x%08x", v32, v33, v34, v35, v36, v31);
  }
}

void sub_1000049C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1000049E4(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *a1 && (v9 = a1[2]) != 0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004A98;
    v11[3] = &unk_1000F1350;
    v12 = a2;
    v13 = a3;
    v11[4] = a1;
    v14 = a4;
    dispatch_sync(v9, v11);
  }

  else
  {

    sub_10001A104(0, "dns_unregister", @"Invalid input.", a4, a5, a6, a7, a8);
  }

  return result;
}

double sub_100004A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 40))
  {
    v9 = *(a1 + 32);
    if (*(v9 + 32) == 1)
    {
      *(v9 + 32) = 0;
      xpc_set_event();
      sub_10001A104(0, "dns_unregister_block_invoke", @"Unregistered DNS (syncing).", v10, v11, v12, v13, v14);
    }
  }

  else if ((*(a1 + 41) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*(a1 + 41) == 1)
  {
    v16 = *(a1 + 32);
    if (*(v16 + 33) == 1)
    {
      *(v16 + 33) = 0;
      xpc_set_event();
      sub_10001A104(0, "dns_unregister_block_invoke", @"Unregistered DNS (pairing).", v17, v18, v19, v20, v21);
    }
  }

LABEL_8:
  if (*(a1 + 42) == 1)
  {
    v22 = *(a1 + 32);
    if (*(v22 + 48))
    {
      v23 = IODeregisterForSystemPower((v22 + 48));
      if (v23)
      {
        sub_10001A104(0, "dns_unregister_block_invoke", @"IODeregisterForSystemPower failed: %d", a4, a5, a6, a7, a8, v23);
      }

      v22 = *(a1 + 32);
      *(v22 + 48) = 0;
    }

    v24 = *(v22 + 40);
    if (v24)
    {
      IONotificationPortDestroy(v24);
      *(*(a1 + 32) + 40) = 0;
      v22 = *(a1 + 32);
    }

    v25 = *(v22 + 52);
    if (v25)
    {
      IOServiceClose(v25);
      v22 = *(a1 + 32);
      *(v22 + 52) = 0;
    }

    v26 = *(v22 + 56);
    if (v26)
    {
      CFRelease(v26);
      v22 = *(a1 + 32);
    }

    *(v22 + 56) = 0;

    sub_10001A104(0, "dns_unregister_block_invoke", @"Unregistered WOL.", a4, a5, a6, a7, a8);
  }

  return result;
}

BOOL sub_100004C24()
{
  if (!MGGetBoolAnswer())
  {
    return 1;
  }

  v6 = sub_10001A794(@"LastSystemVersion", @"com.apple.migration", v0, v1, v2, v3, v4, v5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = MGCopyAnswer();
  if (!sub_10000F378(v8))
  {
    v9 = 0;
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = CFEqual(v7, v8) != 0;
  if (v8)
  {
LABEL_5:
    CFRelease(v8);
  }

LABEL_6:
  CFRelease(v7);
  return v9;
}

uint64_t sub_100004CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    v9 = @"Invalid input(s).";
LABEL_9:
    sub_10001A104(0, "notify_configd", v9, a4, a5, a6, a7, a8);
    return byte_10010A5C0;
  }

  if (qword_10010A5C8 != -1)
  {
    sub_100099398();
  }

  if (!qword_10010A5B8)
  {
    v9 = @"Failed to create queue.";
    goto LABEL_9;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004DFC;
  block[3] = &unk_1000F13B0;
  block[4] = a2;
  dispatch_sync(qword_10010A5B8, block);
  return byte_10010A5C0;
}

void sub_100004DBC(id a1)
{
  qword_10010A5B8 = dispatch_queue_create("com.apple.lockdownd.configd", 0);

  _objc_release_x1();
}

void sub_100004DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  out_token = -1;
  if (*(a1 + 32))
  {
    if ((byte_10010A5C0 & 1) == 0)
    {
      v8 = notify_register_check("com.apple.mobile.lockdown", &out_token);
      if (v8)
      {
        sub_10001A104(0, "notify_configd_block_invoke_2", @"Failed to register notification (%s): %d", v9, v10, v11, v12, v13, "com.apple.mobile.lockdown", v8);
      }

      else
      {
        notify_set_state(out_token, 1uLL);
        notify_post("com.apple.mobile.lockdown");
        cf = 0;
        IOUSBDeviceControllerCreate();
        if (cf)
        {
          v14 = IOUSBDeviceControllerForceOffBus();
          if (v14)
          {
            sub_10001A104(0, "allow_usb_on_bus", @"IOUSBDeviceControllerForceOffBus returned: %d", v15, v16, v17, v18, v19, v14);
          }

          CFRelease(cf);
        }

        else
        {
          NSLog(@"we failed to create an IOUSBDeviceController");
        }

        sub_10001A104(0, "notify_configd_block_invoke_2", @"Pinged configd, USB is now enabled.", v20, v21, v22, v23, v24);
        byte_10010A5C0 = 1;
      }
    }
  }

  else
  {

    sub_10001A104(0, "notify_configd_block_invoke_2", @"Invalid input.", a4, a5, a6, a7, a8);
  }
}

double sub_100004F38(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100004FAC(@"DiagnosticsAllowed", a1, @"com.apple.iqagent");

    sub_10000F89C(@"com.apple.iqagent.IQAllowedChangeNotification");
  }

  else
  {

    sub_10001A104(0, "set_iqagent", @"Invalid input.", a4, a5, a6, a7, a8);
  }

  return result;
}

double sub_100004FAC(const void *a1, const void *a2, const void *a3)
{
  v5 = sub_10000F378(a1);
  v6 = sub_10000F378(a3);
  v12 = @"bogus request";
  if (v5 && v6)
  {
    if (!sub_10001A684(v5, a2, v6, v7, v8, v9, v10, v11))
    {
      return result;
    }

    v12 = @"Could not set preference via lockbot";
  }

  sub_10001A104(0, "_set_mobile_preference", v12, v7, v8, v9, v10, v11);
  return result;
}

uint64_t sub_100005044()
{
  mainPort = 0;
  if (IOMasterPort(bootstrap_port, &mainPort))
  {
    v5 = @"Could not get master port";
    v6 = 0;
LABEL_3:
    sub_10001A104(v6, "disable_auto_boot", v5, v0, v1, v2, v3, v4);
    return 0xFFFFFFFFLL;
  }

  v6 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (!v6)
  {
    v5 = @"Could not get options entry from the device tree";
    goto LABEL_3;
  }

  v8 = v6;
  v9 = CFDataCreate(0, "false", 5);
  if (v9)
  {
    v15 = v9;
    if (IORegistryEntrySetCFProperty(v8, @"auto-boot", v9))
    {
      sub_10001A104(0, "disable_auto_boot", @"Could not set auto-boot setting", v16, v17, v18, v19, v20);
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v15);
  }

  else
  {
    sub_10001A104(0, "disable_auto_boot", @"Could not create CFData", v10, v11, v12, v13, v14);
    v7 = 0xFFFFFFFFLL;
  }

  IOObjectRelease(v8);
  return v7;
}

__CFDictionary *sub_100005160(uint64_t a1, const void *a2, const void *a3)
{
  v46 = 0;
  v47 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  if ((sub_100005780(a3, @"NANDInfo", &v47, &stru_1000F13F0) & 1) == 0)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100005940;
    v42[3] = &unk_1000F1410;
    v42[4] = a1;
    if ((sub_100005780(a3, @"CalculateDiskUsage", &v47, v42) & 1) == 0)
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100005B64;
      v41[3] = &unk_1000F1438;
      v41[4] = &v43;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100005BE8;
      v39[3] = &unk_1000F1460;
      v6 = objc_retainBlock(v41);
      v40 = v6;
      v7 = sub_100005780(a3, @"TotalSystemCapacity", &v47, v39);

      if ((v7 & 1) == 0)
      {
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100005C04;
        v37[3] = &unk_1000F1460;
        v8 = v6;
        v38 = v8;
        v9 = sub_100005780(a3, @"TotalSystemAvailable", &v47, v37);

        if ((v9 & 1) == 0)
        {
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100005C20;
          v35[3] = &unk_1000F1460;
          v10 = v8;
          v36 = v10;
          v11 = sub_100005780(a3, @"TotalDataCapacity", &v47, v35);

          if ((v11 & 1) == 0)
          {
            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_100005C3C;
            v33[3] = &unk_1000F1460;
            v12 = v10;
            v34 = v12;
            v13 = sub_100005780(a3, @"TotalDataAvailable", &v47, v33);

            if ((v13 & 1) == 0)
            {
              v31[0] = _NSConcreteStackBlock;
              v31[1] = 3221225472;
              v31[2] = sub_100005C58;
              v31[3] = &unk_1000F1460;
              v14 = v12;
              v32 = v14;
              v15 = sub_100005780(a3, @"TotalDiskCapacity", &v47, v31);

              if ((v15 & 1) == 0)
              {
                v29[0] = _NSConcreteStackBlock;
                v29[1] = 3221225472;
                v29[2] = sub_100005C74;
                v29[3] = &unk_1000F1460;
                v16 = v14;
                v30 = v16;
                v17 = sub_100005780(a3, @"AmountDataReserved", &v47, v29);

                if ((v17 & 1) == 0)
                {
                  v27[0] = _NSConcreteStackBlock;
                  v27[1] = 3221225472;
                  v27[2] = sub_100005C90;
                  v27[3] = &unk_1000F1460;
                  v18 = v16;
                  v28 = v18;
                  v19 = sub_100005780(a3, @"AmountDataAvailable", &v47, v27);

                  if ((v19 & 1) == 0)
                  {
                    v25[0] = _NSConcreteStackBlock;
                    v25[1] = 3221225472;
                    v25[2] = sub_100005CAC;
                    v25[3] = &unk_1000F1460;
                    v26 = v18;
                    v20 = sub_100005780(a3, @"AmountRestoreAvailable", &v47, v25);

                    if ((v20 & 1) == 0 && CFEqual(a2, @"com.apple.disk_usage.factory") && (sub_100005780(a3, @"PhotoUsage", &v47, &stru_1000F1480) & 1) == 0 && (sub_100005780(a3, @"CameraUsage", &v47, &stru_1000F14A0) & 1) == 0 && (sub_100005CE8(a3, @"CalendarUsage", &v47, "/var/mobile/Library/Calendar") & 1) == 0 && (sub_100005CE8(a3, @"VoicemailUsage", &v47, "/var/mobile/Library/Voicemail") & 1) == 0 && (sub_100005CE8(a3, @"NotesUsage", &v47, "/var/mobile/Library/Notes") & 1) == 0 && (sub_100005CE8(a3, @"MediaCacheUsage", &v47, "/var/mobile/tmp/com.apple.mediaplaybackd/MediaCache") & 1) == 0)
                    {
                      sub_100005CE8(a3, @"WebAppCacheUsage", &v47, "/var/mobile/Library/Caches/com.apple.WebAppCache");
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v21 = v44;
  v22 = v44[3];
  if (v22)
  {
    CFRelease(v22);
    v21 = v44;
  }

  v21[3] = 0;
  v23 = v47;
  _Block_object_dispose(&v43, 8);
  return v23;
}

uint64_t sub_100005780(const void *a1, const void *a2, __CFDictionary **a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (!a1)
  {
    v16 = v7[2](v7);
    if (v16)
    {
      v22 = v16;
      v23 = *a3;
      if (*a3 || (v23 = sub_100026340(), (*a3 = v23) != 0))
      {
        CFDictionarySetValue(v23, a2, v22);
      }

      CFRelease(v22);
    }

    else
    {
      sub_10001A104(0, "set_stat_if_wanted", @"Could not get value for %@", v17, v18, v19, v20, v21, a2);
    }

    goto LABEL_12;
  }

  if (!CFEqual(a1, a2))
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v14 = v8[2](v8);
  if (!v14)
  {
    sub_10001A104(0, "set_stat_if_wanted", @"Could not get value for %@", v9, v10, v11, v12, v13, a2);
  }

  *a3 = v14;
  v15 = 1;
LABEL_13:

  return v15;
}

void *__cdecl sub_100005878(id a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (qword_10010A5F8 != -1)
  {
    sub_1000993AC();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BD58;
  block[3] = &unk_1000F1718;
  block[4] = &v4;
  dispatch_sync(qword_10010A5F0, block);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

CFTypeRef sub_100005940(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v8 = v2;
  if (!v2)
  {
    v10 = @"Failed to create dictionary.";
LABEL_6:
    sub_10001A104(0, "copy_disk_usage_block_invoke_2", v10, v3, v4, v5, v6, v7);
    v9 = 0;
    goto LABEL_7;
  }

  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRES_CLASS_C, 0);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_DELAY, 0);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_GRACE_PERIOD, 10);
  if ((sub_100005A70(*(a1 + 32), v8, 0) & 1) == 0)
  {
    v10 = @"Failed to schedule application disk usage XPC activity.";
    goto LABEL_6;
  }

  v9 = CFRetain(@"OkilyDokily");
LABEL_7:

  return v9;
}

uint64_t sub_100005A70(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = sub_100005D9C(v5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005DEC;
  v10[3] = &unk_1000F1528;
  v12 = &v15;
  v13 = a1;
  v11 = v5;
  v14 = a3;
  v7 = v5;
  dispatch_sync(v6, v10);

  v8 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v8;
}

const void *sub_100005B64(uint64_t a1, void *key)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (!v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = MGCopyAnswer();
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (!v4)
    {
      return 0;
    }
  }

  Value = CFDictionaryGetValue(v4, key);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v6;
}

uint64_t sub_100005CE8(const void *a1, const void *a2, __CFDictionary **a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BD88;
  v5[3] = &unk_1000F1410;
  v5[4] = a4;
  return sub_100005780(a1, a2, a3, v5);
}

void sub_100005D54(uint64_t a1)
{
  v1 = sub_100005D9C(a1);
  dispatch_async(v1, &stru_1000F14C0);
}

id sub_100005D9C(uint64_t a1)
{
  if (qword_10010A608 != -1)
  {
    sub_1000993D4();
  }

  v2 = qword_10010A600;

  return v2;
}

void sub_100005DEC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (byte_10010A5D0 == 1)
  {
    v3 = sub_10000DBB8(v2, @"com.apple.disk_usage", @"MobileApplicationUsage");
    sub_100005E84(*(a1 + 48), v3);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = sub_1000231E0(v2, "com.apple.lockdownd.usage", *(a1 + 32), *(a1 + 56), &stru_1000F1500);
  }
}

void sub_100005E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D9C(a1);
  dispatch_assert_queue_V2(v4);

  sub_10000D084(a1, @"com.apple.disk_usage", @"MobileApplicationUsage", a2);
  sub_10000D084(a1, @"com.apple.disk_usage.factory", @"MobileApplicationUsage", a2);
  byte_10010A5D0 = 1;
}

void sub_100005F14(id a1, _data_ark *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10000ADE8;
  v12 = sub_10000ADF8;
  v13 = 0;
  v3 = os_transaction_create();
  v4 = v9[5];
  v9[5] = v3;

  v6 = sub_100005D9C(v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BF80;
  v7[3] = &unk_1000F1788;
  v7[4] = &v8;
  v7[5] = a2;
  dispatch_async(v6, v7);

  _Block_object_dispose(&v8, 8);
}

void sub_100006010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFString *sub_100006044(const __CFString *a1)
{
  if (sub_10000F378(a1) && CFStringGetLength(a1) <= 63 && CFStringGetLength(a1) >= 1)
  {
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, a1);
    if (MutableCopy)
    {
      v8 = MutableCopy;
      v31.length = CFStringGetLength(MutableCopy);
      v31.location = 0;
      CFStringFindAndReplace(v8, @" ", @"-", v31, 0);
      v32.length = CFStringGetLength(v8);
      v32.location = 0;
      CFStringFindAndReplace(v8, @"_", @"-", v32, 0);
      v33.length = CFStringGetLength(v8);
      v33.location = 0;
      CFStringFindAndReplace(v8, @"--", @"-", v33, 0);
      CFStringTrim(v8, @"-");
      Length = CFStringGetLength(v8);
      if (Length < 1)
      {
        goto LABEL_24;
      }

      v30.length = Length;
      v30.location = 0;
      v15 = CFStringTokenizerCreate(0, v8, v30, 0x10004uLL, 0);
      if (v15)
      {
        v16 = v15;
        Mutable = CFStringCreateMutable(0, 0);
        while (CFStringTokenizerAdvanceToNextToken(v16))
        {
          v18 = CFStringTokenizerCopyCurrentTokenAttribute(v16, 0x10000uLL);
          if (v18)
          {
            v19 = v18;
            CFStringAppend(Mutable, v18);
            CFRelease(v19);
          }
        }

        CFRelease(v16);
        if (!Mutable)
        {
          goto LABEL_24;
        }
      }

      else
      {
        Mutable = CFStringCreateMutableCopy(0, 0, v8);
        if (!Mutable)
        {
          goto LABEL_24;
        }
      }

      range.location = 0;
      range.length = CFStringGetLength(Mutable);
      CFStringTransform(Mutable, &range, @"Latin; NFD; [^-_a-zA-Z0-9] Remove", 0);
      v22 = CFStringGetLength(Mutable);
      if (v22 >= 255)
      {
        v23.length = 255;
      }

      else
      {
        v23.length = v22;
      }

      range.location = 0;
      range.length = v23.length;
      v23.location = 0;
      v20 = CFStringCreateWithSubstring(0, Mutable, v23);
      CFRelease(Mutable);
      if (v20)
      {
        if (CFStringGetLength(v20) && CFStringGetLength(v20) < 64)
        {
LABEL_26:
          CFRelease(v8);
          return v20;
        }

        CFRelease(v20);
      }

LABEL_24:
      sub_10001A104(0, "sanitize_device_name", @"Failed to create posix name, using default.", v10, v11, v12, v13, v14);
      v20 = MGCopyAnswer();
      if (!v20)
      {
        sub_10001A104(0, "sanitize_device_name", @"Failed to query %@.", v24, v25, v26, v27, v28, @"MarketingDeviceFamilyName");
      }

      goto LABEL_26;
    }

    sub_10001A104(0, "sanitize_device_name", @"Failed to copy string.", v3, v4, v5, v6, v7);
  }

  return 0;
}

CFStringRef sub_1000062DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10010A5E0 != -1)
  {
    sub_1000993E8();
  }

  if (qword_10010A5D8)
  {
    result = SCDynamicStoreCopyComputerName(qword_10010A5D8, 0);
    if (result)
    {
      return result;
    }

    v9 = SCError();
    v10 = SCErrorString(v9);
    sub_10001A104(0, "copy_device_name", @"SCDynamicStoreCopyComputerName failed: %s", v11, v12, v13, v14, v15, v10);
  }

  else
  {
    sub_10001A104(0, "copy_device_name", @"Failed to create dynamic store.", a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t sub_100006398(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = SCPreferencesCreate(0, @"com.apple.mobile.lockdown", 0);
    if (v9)
    {
      v10 = v9;
      if (SCPreferencesLock(v9, 1u))
      {
        if (!SCPreferencesSetComputerName(v10, a1, 0x8000100u))
        {
          v11 = SCError();
          v12 = SCErrorString(v11);
          sub_10001A104(0, "set_device_name", @"SCPreferencesSetComputerName failed (%@): %s", v13, v14, v15, v16, v17, a1, v12);
        }

        v18 = sub_100006044(a1);
        if (v18)
        {
          v24 = v18;
          if (!SCPreferencesSetHostName())
          {
            v25 = SCError();
            v26 = SCErrorString(v25);
            sub_10001A104(0, "set_device_name", @"SCPreferencesSetHostName failed (%@): %s", v27, v28, v29, v30, v31, v24, v26);
          }

          if (!SCPreferencesSetLocalHostName(v10, v24))
          {
            v32 = SCError();
            v33 = SCErrorString(v32);
            sub_10001A104(0, "set_device_name", @"SCPreferencesSetLocalHostName failed (%@): %s", v34, v35, v36, v37, v38, v24, v33);
          }

          if (SCPreferencesCommitChanges(v10))
          {
            if (SCPreferencesApplyChanges(v10))
            {
              v39 = 1;
LABEL_23:
              SCPreferencesUnlock(v10);
              CFRelease(v24);
              goto LABEL_24;
            }

            v49 = @"SCPreferencesApplyChanges failed: %s";
          }

          else
          {
            v49 = @"SCPreferencesCommitChanges failed: %s";
          }

          v50 = SCError();
          v51 = SCErrorString(v50);
          sub_10001A104(0, "set_device_name", v49, v52, v53, v54, v55, v56, v51);
          v39 = 0;
          goto LABEL_23;
        }

        sub_10001A104(0, "set_device_name", @"Failed to sanitize device name.", v19, v20, v21, v22, v23);
        SCPreferencesUnlock(v10);
      }

      else
      {
        v42 = SCError();
        v43 = SCErrorString(v42);
        sub_10001A104(0, "set_device_name", @"SCPreferencesLock failed: %s", v44, v45, v46, v47, v48, v43);
      }

      v39 = 0;
LABEL_24:
      CFRelease(v10);
      return v39;
    }

    v41 = SCError();
    v58 = SCErrorString(v41);
    v40 = @"SCPreferencesCreate failed: %s";
  }

  else
  {
    v40 = @"Invalid input.";
  }

  sub_10001A104(0, "set_device_name", v40, a4, a5, a6, a7, a8, v58);
  return 0;
}

CFDataRef sub_1000065A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 4096;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100006854;
  v22[3] = &unk_1000F1570;
  v22[4] = &v23;
  v22[5] = bytes;
  v9 = sub_100006710(v8, v22);
  if (v9)
  {
    sub_10001A104(0, "extract_cesm_certificate", @"Could not get certificate chain from vault: %ld", v10, v11, v12, v13, v14, v9);
    goto LABEL_4;
  }

  v20 = CFDataCreate(0, bytes, *(v24 + 6));
  if (!v20)
  {
    sub_10001A104(0, "extract_cesm_certificate", @"Could not create CFData from cert chain", v15, v16, v17, v18, v19);
LABEL_4:
    v20 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v20;
}

void sub_1000066F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006710(NSObject **a1, void *a2)
{
  v3 = a2;
  valuePtr = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = sub_10000D3AC(a1, @"com.apple.fairplay", @"FairPlayContextID");
    if (!sub_10000F2C4(v6))
    {
      v21 = @"Could not find context in ark";
      goto LABEL_11;
    }

    if (!CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
    {
      v21 = @"Could not convert context";
LABEL_11:
      sub_10001A104(0, "retryFairplay", v21, v7, v8, v9, v10, v11);
      if (v6)
      {
        CFRelease(v6);
      }

LABEL_6:
      v19 = 4294925264;
      goto LABEL_8;
    }

    CFRelease(v6);
    v12 = v3[2](v3, valuePtr);
    if (v12 != -42032)
    {
      break;
    }

    sub_10001A104(0, "retryFairplay", @"Context died", v13, v14, v15, v16, v17);
    sub_10001133C(a1, v18);
    v4 = 0;
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v19 = v12;
LABEL_8:

  return v19;
}

CFNumberRef sub_100006870()
{
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  if (gettimeofday(&v8, 0))
  {
    v5 = @"Could not get current time";
LABEL_3:
    sub_10001A104(0, "copy_time_since_bowie", v5, v0, v1, v2, v3, v4);
    return 0;
  }

  valuePtr = v8.tv_usec / 1000000.0 + v8.tv_sec;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!result)
  {
    v5 = @"Could not create CFNumber";
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10000690C(int a1, CFNumberRef number, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  if (number && CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr))
  {
    TMSetSourceTime();
    sub_10000F89C(@"SignificantTimeChangeNotification");
    return 0;
  }

  else
  {
    sub_10001A104(0, "set_time_since_bowie", @"Failed to get number.", a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }
}

CFStringRef sub_1000069A0()
{
  CFTimeZoneResetSystem();
  v0 = CFTimeZoneCopySystem();
  if (v0)
  {
    v6 = v0;
    Name = CFTimeZoneGetName(v0);
    v13 = Name;
    if (Name)
    {
      CFRetain(Name);
    }

    else
    {
      sub_10001A104(0, "copy_timezone", @"Could not get time zone name", v8, v9, v10, v11, v12);
    }

    CFRelease(v6);
  }

  else
  {
    sub_10001A104(0, "copy_timezone", @"Could not copy system time zone", v1, v2, v3, v4, v5);
    return 0;
  }

  return v13;
}

uint64_t sub_100006A20(int a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    v8 = @"Invalid input.";
    goto LABEL_5;
  }

  if (CFStringFind(theString, @".", 0).location != -1)
  {
    v8 = @"Timezone shenanigans.";
LABEL_5:
    sub_10001A104(0, "set_timezone", v8, a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  TMSetSourceTimeZone();
  return 0;
}

CFBooleanRef sub_100006AAC()
{
  v0 = sub_100006B00(@"AppleICUForce24HourTime", 0);
  if (!sub_10000F3F0(v0))
  {
    if (v0)
    {
      CFRelease(v0);
    }

    return kCFBooleanFalse;
  }

  return v0;
}

CFPropertyListRef sub_100006B00(const void *a1, const void *a2)
{
  v3 = sub_10000F378(a1);
  v4 = sub_10000F378(a2);
  if (v3)
  {

    return sub_10001A794(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    sub_10001A104(0, "_copy_mobile_preference", @"bogus request", v6, v7, v8, v9, v10);
    return 0;
  }
}

uint64_t sub_100006B74(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    sub_100004FAC(@"AppleICUForce24HourTime", a1, kCFPreferencesAnyApplication);
    sub_10000F89C(@"AppleTimePreferencesChangedNotification");
    sub_10000F89C(@"SignificantTimeChangeNotification");
    return 0;
  }

  else
  {
    sub_10001A104(0, "set_military_time", @"Invalid input.", a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }
}

CFBooleanRef sub_100006BF4()
{
  v0 = MKBGetDeviceLockState() + 1;
  if (v0 > 3)
  {
    v1 = &kCFBooleanFalse;
  }

  else
  {
    v1 = *(&off_1000F17E8 + v0);
  }

  return *v1;
}

void sub_100006C38(const __CFBoolean *a1)
{
  if (sub_10000F3F0(a1))
  {
    if (CFEqual(a1, kCFBooleanTrue))
    {
      v2 = a1;
    }

    else
    {
      v2 = kCFBooleanFalse;
    }

    sub_100004FAC(@"EnableTetheredDisplayPortMode", v2, kCFPreferencesAnyApplication);

    sub_10000F89C(@"com.apple.mobile.demo_mode_changed");
  }
}

CFNumberRef sub_100006CCC()
{
  valuePtr = 0.0;
  CFTimeZoneResetSystem();
  v0 = CFTimeZoneCopySystem();
  if (v0)
  {
    v1 = v0;
    Current = CFAbsoluteTimeGetCurrent();
    valuePtr = CFTimeZoneGetSecondsFromGMT(v1, Current);
    CFRelease(v1);
  }

  return CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
}

void sub_100006D34(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = sub_100006B00(@"AppleLanguages", 0);
    if (sub_10000F33C(v9))
    {
      sub_10001A104(0, "set_language", @"Pre-pending the language list with %@.", v10, v11, v12, v13, v14, a2);
      Mutable = sub_100006EF4(v9, a2);
      if (!Mutable)
      {
        v21 = @"Failed to create languages list.";
        goto LABEL_18;
      }
    }

    else
    {
      sub_10001A104(0, "set_language", @"Failed to copy language list, creating new one.", v10, v11, v12, v13, v14);
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (!Mutable)
      {
        v21 = @"Failed to create array.";
LABEL_18:
        sub_10001A104(0, "set_language", v21, v15, v16, v17, v18, v19);
        if (!v9)
        {
LABEL_12:
          if (Mutable)
          {

            CFRelease(Mutable);
          }

          return;
        }

LABEL_11:
        CFRelease(v9);
        goto LABEL_12;
      }

      sub_10001A104(0, "set_language", @"Creating a language with with %@", v15, v16, v17, v18, v19, a2);
      CFArrayAppendValue(Mutable, a2);
    }

    sub_100004FAC(@"LockdownSetLanguage", kCFBooleanTrue, @"com.apple.purplebuddy");
    sub_100004FAC(@"AppleLanguages", Mutable, kCFPreferencesAnyApplication);
    sub_10000F89C(@"com.apple.language.changed");
    sub_10000F89C(@"AppleLanguagePreferencesChangedNotification");
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_10001A104(0, "set_language", @"Invalid input.", a4, a5, a6, a7, a8);
}

const __CFArray *sub_100006EF4(const __CFArray *a1, const void *a2)
{
  if (sub_10000F33C(a1))
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, a1);
    v15 = MutableCopy;
    if (MutableCopy)
    {
      Count = CFArrayGetCount(MutableCopy);
      if (Count >= 1)
      {
        v17 = Count;
        v18 = 0;
        v19 = Count;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
          v21 = CFEqual(ValueAtIndex, a2);
          if (v21)
          {
            v22 = v17;
          }

          else
          {
            v22 = v18;
          }

          if (v21)
          {
            v19 = v18;
          }

          v18 = v22 + 1;
        }

        while (v22 + 1 < v17);
        if (v19 != v17)
        {
          CFArrayRemoveValueAtIndex(v15, v19);
        }
      }

      CFArrayInsertValueAtIndex(v15, 0, a2);
    }

    else
    {
      sub_10001A104(0, "_move_to_front", @"Could not copy array", v10, v11, v12, v13, v14);
    }
  }

  else
  {
    sub_10001A104(0, "_move_to_front", @"bad input", v4, v5, v6, v7, v8);
    return 0;
  }

  return v15;
}

double sub_100006FEC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  if (a1)
  {
    if (CFEqual(a1, @"th"))
    {
      v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v9)
      {
        v15 = v9;
        sub_100004FAC(@"contactsSortOrder", v9, @"com.apple.PeoplePicker");
        sub_10000F89C(@"com.apple.AddressBook.PreferenceChanged");
        CFRelease(v15);
      }

      else
      {
        sub_10001A104(0, "set_contact_sort_order", @"Failed to create number.", v10, v11, v12, v13, v14);
      }
    }
  }

  else
  {

    sub_10001A104(0, "set_contact_sort_order", @"Invalid input.", a4, a5, a6, a7, a8);
  }

  return result;
}

double sub_1000070BC(const void *a1)
{
  if (sub_10000F378(a1))
  {
    if (CFEqual(a1, @"ja") || CFEqual(a1, @"zh-Hans") || CFEqual(a1, @"zh-Hant") || CFEqual(a1, @"ko"))
    {
      sub_100004FAC(@"personNameOrdering", &__kCFBooleanTrue, @"com.apple.PeoplePicker");

      sub_10000F89C(@"com.apple.AddressBook.PreferenceChanged");
    }
  }

  else
  {

    sub_10001A104(0, "set_name_order", @"Invalid input.", v2, v3, v4, v5, v6);
  }

  return result;
}

CFTypeRef sub_1000071A0()
{
  v0 = sub_100006B00(@"AppleLanguages", 0);
  if (v0)
  {
    v6 = v0;
    ValueAtIndex = CFArrayGetValueAtIndex(v0, 0);
    if (sub_10000F378(ValueAtIndex))
    {
      v13 = CFRetain(ValueAtIndex);
    }

    else
    {
      sub_10001A104(0, "copy_language", @"Failed to retrieve first language in list.", v8, v9, v10, v11, v12);
      v13 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    sub_10001A104(0, "copy_language", @"Failed to lookup %@.", v1, v2, v3, v4, v5, @"AppleLanguages");
    return 0;
  }

  return v13;
}

const __CFString *sub_100007248(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (CFStringHasPrefix(a1, @"th_TH@"))
    {
      return @"th_TH";
    }

    else
    {
      return a1;
    }
  }

  else
  {
    sub_10001A104(0, "transform_locale", @"Invalid input", a4, a5, a6, a7, a8);
    return 0;
  }
}

double sub_1000072A4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    sub_100004FAC(@"AppleLocale", a2, kCFPreferencesAnyApplication);
    sub_100004FAC(@"LockdownSetLocale", kCFBooleanTrue, @"com.apple.purplebuddy");
    sub_10000F89C(@"com.apple.mobile.lockdown.phone_number_changed");
    sub_10000F89C(@"AppleDatePreferencesChangedNotification");

    sub_10000F89C(@"AppleTimePreferencesChangedNotification");
  }

  else
  {

    sub_10001A104(0, "set_locale", @"Invalid input.", a4, a5, a6, a7, a8);
  }

  return result;
}

CFTypeRef sub_100007350()
{
  v0 = sub_100006B00(@"AppleLocale", 0);
  v6 = v0;
  if (!v0)
  {
    sub_10001A104(0, "copy_locale", @"Failed to copy %@.", v1, v2, v3, v4, v5, @"AppleLocale");
    return v6;
  }

  if (sub_10000F378(v0))
  {
    return v6;
  }

  CFRelease(v6);

  return CFRetain(@"en_US");
}

const __CFString *sub_1000073E8(const __CFString *a1)
{
  v1 = a1;
  if (sub_10000F378(a1) && CFStringHasPrefix(v1, @"th_TH@"))
  {
    return @"th_TH";
  }

  return v1;
}

void sub_100007434(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v14 = sub_100006B00(@"AppleKeyboards", 0);
    if (v14)
    {
      sub_10001A104(0, "set_keyboard", @"Prepending the keyboard list with %@.", v9, v10, v11, v12, v13, a2);
      v15 = sub_100006EF4(v14, a2);
      if (!v15)
      {
        sub_10001A104(0, "set_keyboard", @"Failed to re-arrange keyboard list.", v16, v17, v18, v19, v20);
        v24 = v14;
        goto LABEL_16;
      }

      v21 = v15;
      if (CFEqual(v15, v14))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    sub_10001A104(0, "set_keyboard", @"Failed to copy %@.", v9, v10, v11, v12, v13, @"AppleKeyboards");
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v21 = Mutable;
      sub_10001A104(0, "set_keyboard", @"Creating the keyboard list with %@.", a4, a5, a6, a7, a8, a2);
      CFArrayAppendValue(v21, a2);
LABEL_12:
      sub_100004FAC(@"AppleKeyboards", v21, kCFPreferencesAnyApplication);
      sub_10000F89C(@"AppleKeyboardsPreferencesChangedNotification");
      if (!v14)
      {
LABEL_14:
        v24 = v21;
LABEL_16:

        CFRelease(v24);
        return;
      }

LABEL_13:
      CFRelease(v14);
      goto LABEL_14;
    }

    v22 = @"Failed to create array.";
  }

  else
  {
    v22 = @"Invalid input.";
  }

  sub_10001A104(0, "set_keyboard", v22, a4, a5, a6, a7, a8);
}

const void *sub_1000075C8()
{
  v0 = sub_100006B00(@"AppleKeyboards", 0);
  if (v0)
  {
    v6 = v0;
    ValueAtIndex = CFArrayGetValueAtIndex(v0, 0);
    v13 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    else
    {
      sub_10001A104(0, "copy_keyboard", @"Failed to get first keyboard in the list.", v8, v9, v10, v11, v12);
    }

    CFRelease(v6);
  }

  else
  {
    sub_10001A104(0, "copy_keyboard", @"Failed to copy %@.", v1, v2, v3, v4, v5, @"AppleKeyboards");
    return 0;
  }

  return v13;
}

uint64_t sub_100007664()
{
  v0 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/PrivateFrameworks/MusicLibrary.framework", kCFURLPOSIXPathStyle, 0);
  if (!v0)
  {
    sub_10001A104(0, "copy_sort_sections", @"Failed to create bundle URL for %s.", v1, v2, v3, v4, v5, "/System/Library/PrivateFrameworks/MusicLibrary.framework");
    return 0;
  }

  v6 = v0;
  v7 = CFBundleCreate(kCFAllocatorDefault, v0);
  if (!v7)
  {
    sub_10001A104(0, "copy_sort_sections", @"Failed to create bundle for %s.", v8, v9, v10, v11, v12, "/System/Library/PrivateFrameworks/MusicLibrary.framework");
    v41 = v6;
LABEL_26:
    CFRelease(v41);
    return 0;
  }

  v13 = v7;
  v14 = sub_100006B00(@"AppleLanguages", 0);
  if (!v14)
  {
    sub_10001A104(0, "_copy_localization_name", @"Could not load languages list or bundle was NULL", v15, v16, v17, v18, v19);
LABEL_21:
    sub_10001A104(0, "copy_sort_sections", @"Failed to get localization for %s.", v42, v43, v44, v45, v46, "/System/Library/PrivateFrameworks/MusicLibrary.framework");
    ValueAtIndex = 0;
    v53 = 0;
    goto LABEL_22;
  }

  v20 = v14;
  v21 = CFBundleCopyBundleLocalizations(v13);
  if (!v21)
  {
    sub_10001A104(0, "_copy_localization_name", @"Could not load localizations from bundle", v22, v23, v24, v25, v26);
    CFRelease(v20);
    goto LABEL_21;
  }

  v27 = v21;
  v28 = CFBundleCopyLocalizationsForPreferences(v21, v20);
  if (v28)
  {
    v34 = v28;
    if (CFArrayGetCount(v28) <= 0)
    {
      sub_10001A104(0, "_copy_localization_name", @"No preferred localizations found", v35, v36, v37, v38, v39);
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v34, 0);
      CFRetain(ValueAtIndex);
    }

    CFRelease(v34);
  }

  else
  {
    sub_10001A104(0, "_copy_localization_name", @"Could not load preferred localizations from bundle", v29, v30, v31, v32, v33);
    ValueAtIndex = 0;
  }

  CFRelease(v27);
  CFRelease(v20);
  if (!ValueAtIndex)
  {
    goto LABEL_21;
  }

  v47 = CFBundleCopyResourceURLForLocalization(v13, @"MLSections", @"plist", 0, ValueAtIndex);
  v53 = v47;
  if (!v47)
  {
    sub_10001A104(0, "copy_sort_sections", @"Failed to copy bundle resource URL (%s / %s).", v48, v49, v50, v51, v52, "MLSections", "plist");
    goto LABEL_22;
  }

  v54 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v47);
  if (!v54)
  {
    sub_10001A104(0, "copy_sort_sections", @"Failed to create read stream (%s / %s).", v55, v56, v57, v58, v59, "MLSections", "plist");
LABEL_22:
    CFRelease(v6);
    CFRelease(v13);
    if (!v53)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v60 = v54;
  CFReadStreamOpen(v54);
  v61 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v60, 0, 0, 0, 0);
  CFReadStreamClose(v60);
  if (v61)
  {
    v67 = CFGetTypeID(v61);
    if (v67 == CFDictionaryGetTypeID())
    {
      CFRelease(v6);
      v6 = v61;
    }

    else
    {
      sub_10001A104(0, "copy_sort_sections", @"Invalid property list (%s / %s).", v68, v69, v70, v71, v72, "MLSections", "plist");
      CFRelease(v61);
    }
  }

  else
  {
    sub_10001A104(0, "copy_sort_sections", @"Failed to load property list (%s / %s).", v62, v63, v64, v65, v66, "MLSections", "plist");
  }

  CFRelease(v6);
  CFRelease(v60);
  CFRelease(v13);
LABEL_23:
  CFRelease(v53);
LABEL_24:
  if (ValueAtIndex)
  {
    v41 = ValueAtIndex;
    goto LABEL_26;
  }

  return 0;
}

__CFDictionary *sub_1000079D4(NSObject **a1)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  memset(valuePtr, 0, sizeof(valuePtr));
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 20;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100007CDC;
  v36[3] = &unk_1000F1598;
  v36[4] = &v45;
  v36[5] = &v41;
  v36[6] = &v37;
  v36[7] = valuePtr;
  v1 = sub_100006710(a1, v36);
  if (v1)
  {
    sub_10001A104(0, "load_rental_bag_request", @"Could not generate rental bag request: %ld", v2, v3, v4, v5, v6, v1);
    goto LABEL_13;
  }

  v12 = sub_100026340();
  if (!v12)
  {
    sub_10001A104(0, "load_rental_bag_request", @"Failed to create dictionary.", v7, v8, v9, v10, v11);
LABEL_13:
    v12 = 0;
    goto LABEL_18;
  }

  v18 = CFDataCreate(0, v46[3], *(v42 + 6));
  if (v18)
  {
    CFDictionarySetValue(v12, @"Message", v18);
    v24 = sub_100026398();
    if (v24)
    {
      if (*(v38 + 6))
      {
        v25 = 0;
        v26 = valuePtr;
        do
        {
          v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v26);
          if (v32)
          {
            CFArrayAppendValue(v24, v32);
            CFRelease(v32);
          }

          else
          {
            sub_10001A104(0, "load_rental_bag_request", @"Failed to create number.", v27, v28, v29, v30, v31);
          }

          ++v25;
          v26 = (v26 + 4);
        }

        while (v25 < *(v38 + 6));
      }

      CFDictionarySetValue(v12, @"DiversityElements", v24);
    }

    else
    {
      sub_10001A104(0, "load_rental_bag_request", @"Failed to create array.", v19, v20, v21, v22, v23);
    }

    CFRelease(v18);
    if (v24)
    {
      CFRelease(v24);
    }
  }

  else
  {
    sub_10001A104(0, "load_rental_bag_request", @"Failed to create data.", v13, v14, v15, v16, v17);
  }

LABEL_18:
  v33 = v46;
  v34 = v46[3];
  if (v34)
  {
    free(v34);
    v33 = v46;
  }

  v33[3] = 0;
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  return v12;
}

void sub_100007CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007D10(NSObject **a1)
{
  v1 = sub_100007D44(a1);
  if (v1)
  {

    CFRelease(v1);
  }
}

CFNumberRef sub_100007D44(NSObject **a1)
{
  v1 = sub_100006710(a1, &stru_1000F1600);
  valuePtr = v1;
  if (v1)
  {
    sub_1000993FC(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v9 = "/var/mobile/Media/iTunes_Control/iTunes/IC-Info.sidr";
    v10 = sub_100026A84("/var/mobile/Media/iTunes_Control/iTunes/IC-Info.sidr", 256, 0x8000, v4, v5, v6, v7, v8);
    if (v10 == -1)
    {
      sub_100099484();
    }

    else
    {
      v11 = v10;
      v12 = getpwnam("mobile");
      if (v12)
      {
        pw_uid = v12->pw_uid;
        pw_gid = v12->pw_gid;
      }

      else
      {
        pw_gid = 501;
        pw_uid = 501;
      }

      if (fchown(v11, pw_uid, pw_gid) == -1)
      {
        goto LABEL_9;
      }

      close(v11);
      v9 = "/var/mobile/Library/FairPlay/vdpf";
      v20 = sub_100026A84("/var/mobile/Library/FairPlay/vdpf", 256, 0x8000, v15, v16, v17, v18, v19);
      if (v20 == -1)
      {
        sub_100099438();
        return CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      }

      v11 = v20;
      if (fchown(v20, pw_uid, pw_gid) == -1)
      {
LABEL_9:
        v21 = __error();
        v22 = strerror(*v21);
        sub_10001A104(0, "copy_rental_bag_verification", @"Could not chown %s: %s", v23, v24, v25, v26, v27, v9, v22);
      }

      close(v11);
    }
  }

  return CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
}

CFNumberRef sub_100007E80()
{
  valuePtr = 3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    sub_10001A104(0, "copy_rental_request_version", @"Could not create number", v0, v1, v2, v3, v4);
  }

  return v5;
}

void sub_100007EE4(NSObject **a1, const __CFData *a2)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (!sub_10000F3B4(a2))
  {
    v30 = @"value is not CFData";
LABEL_14:
    sub_10001A104(0, "trigger_rental_checkin_request", v30, v4, v5, v6, v7, v8);
    goto LABEL_10;
  }

  Length = CFDataGetLength(a2);
  v10 = malloc_type_malloc(Length, 0x100004077774924uLL);
  if (!v10)
  {
    v30 = @"Could not allocate a buffer for the a copy of the original message";
    goto LABEL_14;
  }

  BytePtr = CFDataGetBytePtr(a2);
  memcpy(v10, BytePtr, Length);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100008140;
  v31[3] = &unk_1000F15C0;
  v31[6] = v10;
  v31[7] = Length;
  v31[4] = &v36;
  v31[5] = &v32;
  v12 = sub_100006710(a1, v31);
  if (v12)
  {
    sub_10001A104(0, "trigger_rental_checkin_request", @"Could not get response ack: %ld", v13, v14, v15, v16, v17, v12);
  }

  else
  {
    v18 = v37[3];
    if (v18 && (v19 = *(v33 + 6), v19))
    {
      v25 = CFDataCreate(kCFAllocatorDefault, v18, v19);
      if (v25)
      {
        sub_10000D774(a1, @"com.apple.fairplay", @"RentalCheckinAckResponse", 1, v21, v22, v23, v24);
        sub_10000CA1C(a1, @"com.apple.fairplay", @"RentalCheckinAckResponse", v25, v26, v27, v28, v29);
        CFRelease(v25);
      }

      else
      {
        sub_10001A104(0, "trigger_rental_checkin_request", @"Could not create data from ack.", v20, v21, v22, v23, v24);
      }
    }

    else
    {
      sub_10001A104(0, "trigger_rental_checkin_request", @"Invalid ack! Ack. Ack. Ack.", v13, v14, v15, v16, v17);
    }
  }

  free(v10);
LABEL_10:
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
}

void sub_100008114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

CFNumberRef sub_100008170()
{
  valuePtr = 0;
  sub_10003A49C(&valuePtr);
  if (v0)
  {
    v8 = v0;
    v6 = @"Could not get necessary rental clock bias: %ld";
LABEL_3:
    sub_10001A104(0, "copy_rental_clock_bias", v6, v1, v2, v3, v4, v5, v8);
    return 0;
  }

  result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!result)
  {
    v6 = @"Could not create bias number";
    goto LABEL_3;
  }

  return result;
}

id sub_1000081F4()
{
  v5 = objc_alloc_init(NSMutableArray);
  if (v5)
  {
    v6 = MobileStorageCopyDevicesWithError();
    v7 = v6;
    if (v6 && [v6 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v7;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        v11 = kMobileStorageDeviceTypeKey;
        v12 = kMobileStorageDeviceTypeDiskImage;
        v13 = kMobileStorageMountPathKey;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v16 = [v15 objectForKeyedSubscript:{v11, v20}];
            if ([v16 isEqualToString:v12])
            {
              v17 = [v15 objectForKeyedSubscript:v13];
              if (v17)
              {
                v18 = v17;
                [v5 addObject:v17];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }
    }
  }

  else
  {
    sub_10001A104(0, "copy_disk_image_mount_points", @"Failed to allocate array.", v0, v1, v2, v3, v4);
    v7 = 0;
  }

  return v5;
}

void sub_1000083B0(uint64_t a1, NSObject **a2, void *a3, _BYTE *a4)
{
  memset(&v63, 0, sizeof(v63));
  v66 = 0;
  v65 = 0;
  v7 = a3;
  bzero(__str, 0x400uLL);
  v62 = 0;
  sub_10001A104(0, "load_agents_for_mount", @"Loading images for mount %@.", v8, v9, v10, v11, v12, v7);
  if (a4)
  {
    *a4 = 0;
  }

  if (snprintf(__str, 0x400uLL, "%s%s", [v7 UTF8String], "/Library/Lockdown/ServiceAgents") >= 0x400)
  {
    v13 = [v7 UTF8String];
    sub_10001A104(0, "load_agents_for_mount", @"Path too long: %s%s", v14, v15, v16, v17, v18, v13, "/Library/Lockdown/ServiceAgents");
LABEL_30:
    v28 = 0;
    v27 = 0;
    v26 = 0;
    goto LABEL_31;
  }

  if (lstat(__str, &v63) == -1)
  {
    if (*__error() != 2)
    {
      v45 = *__error();
      v46 = __error();
      v61 = strerror(*v46);
      sub_10001A104(0, "load_agents_for_mount", @"Failed to stat %s: %d (%s)", v47, v48, v49, v50, v51, __str, v45, v61);
    }

    goto LABEL_30;
  }

  if ((v63.st_mode & 0xF000) != 0x4000)
  {
    sub_10001A104(0, "load_agents_for_mount", @"%s is not a directory, ignoring", v19, v20, v21, v22, v23, __str, v60);
    goto LABEL_30;
  }

  v65 = __str;
  v66 = 0;
  v24 = fts_open(&v65, 21, 0);
  if (!v24)
  {
    v52 = *__error();
    v53 = __error();
    v54 = strerror(*v53);
    sub_10001A104(0, "load_agents_for_mount", @"fts_open failed: %d (%s)", v55, v56, v57, v58, v59, v52, v54);
    goto LABEL_30;
  }

  v25 = v24;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = fts_read(v25);
    if (!v29)
    {
      break;
    }

    v30 = v29;
    if (v29->fts_info == 8 && !strncmp(&v29->fts_name[v29->fts_namelen - 6], ".plist", 6uLL))
    {
      v31 = sub_1000260D8(v30->fts_path);

      if (v31)
      {
        v37 = [v31 objectForKeyedSubscript:@"Label"];

        v28 = v37;
        if (v37)
        {
          v26 = MobileStorageCopyAndFixPlist();

          if (!v26)
          {
            v31 = 0;
            v43 = @"Failed to copy/fix %s.";
            goto LABEL_18;
          }

          v44 = [v26 mutableCopy];

          if (([v7 isEqualToString:@"/Developer"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"/System/Developer"))
          {
            [v44 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DeveloperModeRequired"];
          }

          sub_100019DA8(a2, a1, v28, v44, &v62);
          v27 = v44;
          if (a4)
          {
            v27 = v44;
            if (v62)
            {
              *a4 = 1;
              v27 = v44;
            }
          }
        }

        else
        {
          v43 = @"%s did not contain a label.";
LABEL_18:
          sub_10001A104(0, "load_agents_for_mount", v43, v38, v39, v40, v41, v42, v30->fts_path);
          v26 = v31;
        }
      }

      else
      {
        sub_10001A104(0, "load_agents_for_mount", @"Failed to load %s.", v32, v33, v34, v35, v36, v30->fts_path);
        v26 = 0;
      }
    }
  }

  fts_close(v25);
LABEL_31:
}

const __CFString *sub_100008778(const __CFString *a1)
{
  v31 = 0;
  *cStr = 0u;
  memset(v40, 0, sizeof(v40));
  CString = CFStringGetCString(a1, buffer, 20, 0x8000100u);
  if (!CString)
  {
    sub_10001A104(CString, "createV6Address", @"Failed to query C string for %@.", v3, v4, v5, v6, v7, a1);
    return @"0.0.0.0";
  }

  v8 = ether_aton(buffer);
  if (!v8)
  {
    sub_10001A104(0, "createV6Address", @"ether_aton failed for %@.", v9, v10, v11, v12, v13, a1);
    return @"0.0.0.0";
  }

  LOWORD(v31) = -32514;
  v32 = v8->octet[0] ^ 2;
  v33 = v8->octet[1];
  v34 = v8->octet[2];
  v35 = -257;
  v36 = v8->octet[3];
  v37 = v8->octet[4];
  v38 = v8->octet[5];
  if (!inet_ntop(30, &v31, cStr, 0x2Eu))
  {
    v22 = *__error();
    v23 = __error();
    v30 = strerror(*v23);
    sub_10001A104(0, "createV6Address", @"inet_ntop failed for %@: %d (%s)", v24, v25, v26, v27, v28, a1, v22, v30);
    return @"0.0.0.0";
  }

  v14 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v14)
  {
    sub_10001A104(0, "createV6Address", @"Failed to create string for %s.", v15, v16, v17, v18, v19, cStr);
    return @"0.0.0.0";
  }

  v20 = v14;
  v21 = CFRetain(v14);
  CFRelease(v20);
  return v21;
}

void sub_100008918(NSObject **a1)
{
  strcpy(regtype, "_apple-mobdev2._tcp");
  *domain = *"local";
  LODWORD(v72) = 0;
  v2 = sub_10000D3AC(a1, @"com.apple.mobile.wireless_lockdown", @"SupportsWifi");
  sub_10000D774(a1, @"com.apple.mobile.wireless_lockdown", @"SupportsWifiSyncing", 1, v3, v4, v5, v6);
  if (!sub_10000F3F0(v2) || !CFEqual(v2, kCFBooleanTrue))
  {
    sub_10000CA1C(a1, @"com.apple.mobile.wireless_lockdown", @"SupportsWifiSyncing", kCFBooleanFalse, v7, v8, v9, v10);
    v11 = 0;
LABEL_11:
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_12;
  }

  sub_10000CA1C(a1, @"com.apple.mobile.wireless_lockdown", @"SupportsWifiSyncing", kCFBooleanTrue, v7, v8, v9, v10);
  v11 = sub_10000D3AC(a1, 0, @"WiFiAddress");
  if (!sub_10000F378(v11))
  {
    v26 = @"Missing Wifi MAC Address.";
LABEL_10:
    sub_10001A104(0, "intialize_wifi_syncing", v26, v12, v13, v14, v15, v16);
    goto LABEL_11;
  }

  CurrentWireProtocolVersion = RemotePairingGetCurrentWireProtocolVersion();
  if (CurrentWireProtocolVersion < 0)
  {
    v26 = @"Failed to read RemotePairing protocol version.";
    goto LABEL_10;
  }

  v18 = CurrentWireProtocolVersion;
  v19 = sub_100008778(v11);
  if (remotePairingIsEnabled())
  {
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@@%@-%@-%ld", v11, v19, @"supportsRP", v18, *domain, *&domain[8], v72);
  }

  else
  {
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@@%@", v11, v19, v69, v70, *domain, *&domain[8], v72);
  }

  v29 = v20;
  if (!v20)
  {
    v39 = @"Failed to create v6 address string.";
    goto LABEL_29;
  }

  CString = CFStringGetCString(v20, buffer, 64, 0x8000100u);
  if (!CString)
  {
    v39 = @"Failed to create v6 address C string.";
    goto LABEL_31;
  }

  sub_10000D774(a1, @"com.apple.mobile.wireless_lockdown", @"InstanceName", 1, v22, v23, v24, v25);
  sub_10000D774(a1, @"com.apple.mobile.wireless_lockdown", @"InstanceName", 2, v31, v32, v33, v34);
  sub_10000CA1C(a1, @"com.apple.mobile.wireless_lockdown", @"InstanceName", v29, v35, v36, v37, v38);
  if (DNSServiceConstructFullName(fullName, buffer, regtype, domain))
  {
    v39 = @"Failed to construct DNS full service name.";
LABEL_29:
    CString = 0;
LABEL_31:
    sub_10001A104(CString, "intialize_wifi_syncing", v39, v21, v22, v23, v24, v25);
    v28 = 0;
    goto LABEL_32;
  }

  v28 = CFStringCreateWithCString(kCFAllocatorDefault, fullName, 0x8000100u);
  if (v28)
  {
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v28);
    v27 = MutableCopy;
    if (MutableCopy)
    {
      v76.length = CFStringGetLength(MutableCopy);
      v76.location = 0;
      CFStringFindAndReplace(v27, @"\"", &stru_1000FAA88, v76, 0);
      sub_10000D774(a1, @"com.apple.mobile.wireless_lockdown", @"BonjourFullServiceName", 1, v51, v52, v53, v54);
      sub_10000D774(a1, @"com.apple.mobile.wireless_lockdown", @"BonjourFullServiceName", 0, v55, v56, v57, v58);
      sub_10000CA1C(a1, @"com.apple.mobile.wireless_lockdown", @"BonjourFullServiceName", v27, v59, v60, v61, v62);
      if (dword_100109DF0)
      {
        sub_10001A104(0, "intialize_wifi_syncing", @"Full service name is '%@'.", v63, v64, v65, v66, v67, v27);
      }
    }

    else
    {
      sub_10001A104(0, "intialize_wifi_syncing", @"Failed to copy DNS full service name string.", v46, v47, v48, v49, v50, v68);
    }

    goto LABEL_33;
  }

  sub_10001A104(0, "intialize_wifi_syncing", @"Failed to create DNS full service name string.", v40, v41, v42, v43, v44);
LABEL_32:
  v27 = 0;
LABEL_33:
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_12:
  if (v2)
  {
    CFRelease(v2);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

CFBooleanRef sub_100008D38()
{
  v0 = kCFBooleanFalse;
  v1 = SCPreferencesCreate(0, @"racoon", @"com.apple.ipsec.plist");
  if (v1)
  {
    v7 = v1;
    valuePtr = 0;
    Value = SCPreferencesGetValue(v1, @"Global");
    if (sub_10000F300(Value))
    {
      v9 = CFDictionaryGetValue(Value, @"DebugLevel");
      if (sub_10000F2C4(v9))
      {
        CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
        if (valuePtr)
        {
          v0 = kCFBooleanTrue;
        }
      }
    }

    CFRelease(v7);
  }

  else
  {
    sub_10001A104(0, "copy_vpn_logging", @"Could not create configd prefs", v2, v3, v4, v5, v6);
  }

  return v0;
}

void sub_100008E14(const void *a1)
{
  valuePtr = 0;
  if (sub_10000F3F0(a1))
  {
    v7 = SCPreferencesCreate(0, @"racoon", @"com.apple.ipsec.plist");
    if (v7)
    {
      v8 = v7;
      Value = SCPreferencesGetValue(v7, @"Global");
      v10 = sub_10000F300(Value);
      if (!v10 || (MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v10)) == 0)
      {
        MutableCopy = sub_100026340();
        if (!MutableCopy)
        {
          sub_10001A104(0, "enable_vpn_logging", @"Failed to create dictionary.", v12, v13, v14, v15, v16);
LABEL_21:
          CFRelease(v8);
          return;
        }
      }

      v17 = MutableCopy;
      valuePtr = 2 * (CFEqual(a1, kCFBooleanTrue) != 0);
      v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (!v18)
      {
        sub_10001A104(0, "enable_vpn_logging", @"Could not create debug level number", v19, v20, v21, v22, v23);
LABEL_20:
        CFRelease(v17);
        goto LABEL_21;
      }

      v24 = v18;
      CFDictionarySetValue(v17, @"DebugLevel", v18);
      CFDictionarySetValue(v17, @"DebugLogfile", @"/var/log/racoon.log");
      SCPreferencesSetValue(v8, @"Global", v17);
      if (SCPreferencesCommitChanges(v8))
      {
        if (SCPreferencesApplyChanges(v8))
        {
LABEL_19:
          CFRelease(v24);
          goto LABEL_20;
        }

        v25 = @"SCPreferencesApplyChanges: %s";
      }

      else
      {
        v25 = @"SCPreferencesCommitChanges: %s";
      }

      v27 = SCError();
      v28 = SCErrorString(v27);
      sub_10001A104(0, "enable_vpn_logging", v25, v29, v30, v31, v32, v33, v28);
      goto LABEL_19;
    }

    v26 = @"SCPreferencesCreate failed.";
  }

  else
  {
    v26 = @"Invalid input";
  }

  sub_10001A104(0, "enable_vpn_logging", v26, v2, v3, v4, v5, v6);
}

double sub_100009004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100109DF0)
  {
    sub_10001A104(0, "remove_vpn_logs", @"Removing %s", a4, a5, a6, a7, a8, "/var/log/racoon.log");
  }

  if (unlink("/var/log/racoon.log") == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    sub_10001A104(0, "remove_vpn_logs", @"Could not unlink %s: %s", v11, v12, v13, v14, v15, "/var/log/racoon.log", v10);
  }

  return result;
}

CFBooleanRef sub_10000909C()
{
  v0 = kCFBooleanFalse;
  v1 = SCPreferencesCreate(0, @"eapolclient", @"com.apple.eapolclient.plist");
  if (v1)
  {
    v7 = v1;
    Value = SCPreferencesGetValue(v1, @"LogFlags");
    if (sub_10000F2C4(Value))
    {
      v0 = kCFBooleanTrue;
    }

    CFRelease(v7);
  }

  else
  {
    sub_10001A104(0, "copy_8021X_logging", @"Could not create configd prefs", v2, v3, v4, v5, v6);
  }

  return v0;
}

void sub_10000912C(const void *a1)
{
  if (sub_10000F3F0(a1))
  {
    v7 = SCPreferencesCreate(0, @"eapolclient", @"com.apple.eapolclient.plist");
    if (v7)
    {
      v8 = v7;
      valuePtr = 0;
      if (CFEqual(a1, kCFBooleanTrue))
      {
        valuePtr = -1;
        v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        if (v9)
        {
          v15 = v9;
          SCPreferencesSetValue(v8, @"LogFlags", v9);
          CFRelease(v15);
        }

        else
        {
          sub_10001A104(0, "enable_8021X_logging", @"Could not create dflags number", v10, v11, v12, v13, v14);
        }
      }

      else
      {
        SCPreferencesRemoveValue(v8, @"LogFlags");
      }

      if (!SCPreferencesCommitChanges(v8))
      {
        v17 = SCError();
        v18 = SCErrorString(v17);
        sub_10001A104(0, "enable_8021X_logging", @"SCPreferencesCommitChanges: %s", v19, v20, v21, v22, v23, v18);
      }

      if (!SCPreferencesApplyChanges(v8))
      {
        v24 = SCError();
        v25 = SCErrorString(v24);
        sub_10001A104(0, "enable_8021X_logging", @"SCPreferencesApplyChanges: %s", v26, v27, v28, v29, v30, v25);
      }

      CFRelease(v8);
      return;
    }

    v16 = @"Could not create configd prefs";
  }

  else
  {
    v16 = @"tried to enable logging without a BOOLean";
  }

  sub_10001A104(0, "enable_8021X_logging", v16, v2, v3, v4, v5, v6);
}

double sub_1000092B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100109DF0)
  {
    sub_10001A104(0, "remove_8021X_logs", @"Removing %s", a4, a5, a6, a7, a8, "/var/log/eapolclient.en0.log");
  }

  if (unlink("/var/log/eapolclient.en0.log") == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    sub_10001A104(0, "remove_8021X_logs", @"Could not unlink %s: %s", v11, v12, v13, v14, v15, "/var/log/eapolclient.en0.log", v10);
  }

  return result;
}

CFTypeRef sub_10000934C()
{
  v0 = kCFBooleanFalse;
  v1 = SCPreferencesCreate(0, @"OSThermalStatus", @"OSThermalStatus.plist");
  if (v1)
  {
    v7 = v1;
    Value = SCPreferencesGetValue(v1, @"OSThermalNotificationLoggingEnabled");
    if (Value)
    {
      v0 = Value;
    }

    CFRelease(v7);
  }

  else
  {
    sub_10001A104(0, "copy_CLTM_logging", @"Could not create configd prefs", v2, v3, v4, v5, v6);
  }

  return CFRetain(v0);
}

double sub_1000093DC(const void *a1)
{
  if (sub_10000F3F0(a1))
  {
    v7 = SCPreferencesCreate(0, @"OSThermalStatus", @"OSThermalStatus.plist");
    if (v7)
    {
      v8 = v7;
      SCPreferencesSetValue(v7, @"logFile", @"/var/logs/cltm.log");
      SCPreferencesSetValue(v8, @"OSThermalNotificationLoggingEnabled", a1);
      if (!SCPreferencesCommitChanges(v8))
      {
        v9 = SCError();
        v10 = SCErrorString(v9);
        sub_10001A104(0, "enable_CLTM_logging", @"SCPreferencesCommitChanges: %s", v11, v12, v13, v14, v15, v10);
      }

      if (!SCPreferencesApplyChanges(v8))
      {
        v16 = SCError();
        v17 = SCErrorString(v16);
        sub_10001A104(0, "enable_CLTM_logging", @"SCPreferencesApplyChanges: %s", v18, v19, v20, v21, v22, v17);
      }

      CFRelease(v8);
      return result;
    }

    v24 = @"Could not create configd prefs";
  }

  else
  {
    v24 = @"Bad value";
  }

  sub_10001A104(0, "enable_CLTM_logging", v24, v2, v3, v4, v5, v6);
  return result;
}

double sub_10000950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100109DF0)
  {
    sub_10001A104(0, "remove_CLTM_logs", @"Removing %s", a4, a5, a6, a7, a8, "/var/logs/cltm.log");
  }

  if (unlink("/var/logs/cltm.log") == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    sub_10001A104(0, "remove_CLTM_logs", @"Could not unlink %s: %s", v11, v12, v13, v14, v15, "/var/logs/cltm.log", v10);
  }

  return result;
}

double sub_1000095A4(const void *a1)
{
  if (sub_10000F3F0(a1))
  {
    v7 = SCPreferencesCreate(0, @"OSThermalStatus", @"OSThermalStatus.plist");
    if (v7)
    {
      v8 = v7;
      SCPreferencesSetValue(v7, @"tGraphLogFile", @"/var/logs/tGraph.csv");
      SCPreferencesSetValue(v8, @"OSThermalNotificationLoggingEnabled", a1);
      if (!SCPreferencesCommitChanges(v8))
      {
        v9 = SCError();
        v10 = SCErrorString(v9);
        sub_10001A104(0, "enable_CLTM_TGraph_logging", @"SCPreferencesCommitChanges: %s", v11, v12, v13, v14, v15, v10);
      }

      if (!SCPreferencesApplyChanges(v8))
      {
        v16 = SCError();
        v17 = SCErrorString(v16);
        sub_10001A104(0, "enable_CLTM_TGraph_logging", @"SCPreferencesApplyChanges: %s", v18, v19, v20, v21, v22, v17);
      }

      CFRelease(v8);
      return result;
    }

    v24 = @"Could not create configd prefs";
  }

  else
  {
    v24 = @"Bad value";
  }

  sub_10001A104(0, "enable_CLTM_TGraph_logging", v24, v2, v3, v4, v5, v6);
  return result;
}

double sub_1000096D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100109DF0)
  {
    sub_10001A104(0, "remove_CLTM_TGraph_logs", @"Removing %s", a4, a5, a6, a7, a8, "/var/logs/tGraph.csv");
  }

  if (unlink("/var/logs/tGraph.csv") == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    sub_10001A104(0, "remove_CLTM_TGraph_logs", @"Could not unlink %s: %s", v11, v12, v13, v14, v15, "/var/logs/tGraph.csv", v10);
  }

  return result;
}

double sub_10000976C(const void *a1)
{
  if (sub_10000F3F0(a1))
  {
    v7 = SCPreferencesCreate(0, @"OSThermalStatus", @"OSThermalStatus.plist");
    if (v7)
    {
      v8 = v7;
      SCPreferencesSetValue(v7, @"ThermStatsEnabled", a1);
      if (!SCPreferencesCommitChanges(v8))
      {
        v9 = SCError();
        v10 = SCErrorString(v9);
        sub_10001A104(0, "enable_CLTM_Thermstat_logging", @"SCPreferencesCommitChanges: %s", v11, v12, v13, v14, v15, v10);
      }

      if (!SCPreferencesApplyChanges(v8))
      {
        v16 = SCError();
        v17 = SCErrorString(v16);
        sub_10001A104(0, "enable_CLTM_Thermstat_logging", @"SCPreferencesApplyChanges: %s", v18, v19, v20, v21, v22, v17);
      }

      CFRelease(v8);
      return result;
    }

    v24 = @"Could not create configd prefs";
  }

  else
  {
    v24 = @"Bad value";
  }

  sub_10001A104(0, "enable_CLTM_Thermstat_logging", v24, v2, v3, v4, v5, v6);
  return result;
}