void start()
{
  v0 = dispatch_queue_create("restoreservice_queue", 0);
  v1 = qword_10002E5C8;
  qword_10002E5C8 = v0;

  v2 = qword_10002E5C8;
  if (v2)
  {

    v3 = xpc_remote_connection_create_remote_service_listener();
    if (v3)
    {

      xpc_remote_connection_set_event_handler();
      xpc_remote_connection_activate();
      dispatch_main();
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10000103C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_error)
  {
    v4 = sub_100001160(type);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100012D74();
    }

    v5 = xpc_copy_clean_description();
    if (v5)
    {
      v6 = v5;
      v7 = sub_100001160(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100012DB0();
      }

      free(v6);
    }
  }

  else
  {
    v8 = v2;
    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
  }
}

id sub_100001160(uint64_t a1)
{
  if (qword_10002E5D0 != -1)
  {
    sub_100012E24();
  }

  v2 = qword_10002E5D8;

  return v2;
}

void sub_1000011A4(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type != &_xpc_type_error)
  {
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = objc_autoreleasePoolPush();
    v8 = xpc_dictionary_expects_reply();
    if ((v8 & 1) == 0)
    {
      v17 = sub_100001160(v8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100012E38();
      }

      xpc_connection_cancel(v5);
      goto LABEL_68;
    }

    string = xpc_dictionary_get_string(v6, "command");
    v10 = sub_100001160(string);
    v11 = v10;
    if (!string)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000130E8();
      }

LABEL_26:

      v18 = sub_100001D58(v6, "error");
LABEL_33:
      reply = v18;
LABEL_66:
      v41 = reply;
      if (!v41)
      {
        sub_10001304C();
      }

      v42 = v41;

      xpc_dictionary_send_reply();
LABEL_68:
      objc_autoreleasePoolPop(v7);

      goto LABEL_69;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 136446210;
      *&cf[4] = string;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got command %{public}s", cf, 0xCu);
    }

    if (!strcmp(string, "recovery"))
    {
      v19 = v6;
      v20 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
      if (v20)
      {
        v21 = v20;
        v22 = CFDataCreate(0, "false", 5);
        if (!v22)
        {
          sub_10001304C();
        }

        v23 = v22;
        v24 = IORegistryEntrySetCFProperty(v21, @"auto-boot-once", v22);
        v25 = v24;
        v26 = sub_100001160(v24);
        v27 = v26;
        if (v25)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_100012FD8();
          }
        }

        else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "auto-boot successfully disabled (via auto-boot-once)", cf, 2u);
        }

        CFRelease(v23);
        IOObjectRelease(v21);
        if (!v25)
        {
          v38 = sub_100001844(v19);
LABEL_50:
          reply = v38;
          goto LABEL_65;
        }

LABEL_49:
        v38 = sub_100001D58(v19, "error");
        goto LABEL_50;
      }

      v36 = sub_100001160(v20);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100013068();
      }
    }

    else
    {
      if (!strcmp(string, "reboot"))
      {
        v18 = sub_100001844(v6);
        goto LABEL_33;
      }

      if (strcmp(string, "getnonces"))
      {
        if (strcmp(string, "getpreflightinfo"))
        {
          if (!strcmp(string, "getapparameters"))
          {
            v18 = sub_100001908(v6);
            goto LABEL_33;
          }

          if (!strcmp(string, "delayrecoveryimage"))
          {
            v18 = sub_100001A2C(v6);
            goto LABEL_33;
          }

          v12 = strcmp(string, "restorelang");
          if (!v12)
          {
            v43 = xpc_dictionary_get_string(v6, "argument");
            v18 = sub_100001BC4(v6, v43);
            goto LABEL_33;
          }

          v11 = sub_100001160(v12);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_100012E74();
          }

          goto LABEL_26;
        }

        v19 = v6;
        *cf = 0;
        updated = ramrod_update_copy_deviceinfo(0, cf);
        if (updated)
        {
          reply = xpc_dictionary_create_reply(v19);
          v37 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "preflightinfo", v37);

          xpc_dictionary_set_string(reply, "result", "preflightinfo");
        }

        else
        {
          if (*cf)
          {
            v40 = sub_100001160(0);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_100012EE8();
            }

            CFRelease(*cf);
          }

          reply = sub_100001D58(v19, "error");
        }

        if (*cf)
        {
          CFRelease(*cf);
        }

        if (updated)
        {
          goto LABEL_63;
        }

LABEL_65:

        goto LABEL_66;
      }

      v19 = v6;
      v29 = MGCopyAnswer();
      if (v29)
      {
        updated = v29;
        v31 = MGCopyAnswer();
        if (v31)
        {
          v32 = v31;
          reply = xpc_dictionary_create_reply(v19);
          v33 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "apNonce", v33);

          v34 = _CFXPCCreateXPCObjectFromCFObject();
          xpc_dictionary_set_value(reply, "sepNonce", v34);

          xpc_dictionary_set_string(reply, "result", "nonces");
          CFRelease(updated);
          v35 = v32;
LABEL_64:
          CFRelease(v35);
          goto LABEL_65;
        }

        v39 = sub_100001160(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_100012F60();
        }

        reply = sub_100001D58(v19, "error");
LABEL_63:
        v35 = updated;
        goto LABEL_64;
      }

      v36 = sub_100001160(0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100012F9C();
      }
    }

    goto LABEL_49;
  }

  v13 = sub_100001160(type);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100013124();
  }

  v14 = xpc_copy_clean_description();
  if (v14)
  {
    v15 = v14;
    v16 = sub_100001160(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100013160();
    }

    free(v15);
  }

LABEL_69:
}

void sub_100001800(id a1)
{
  qword_10002E5D8 = os_log_create("com.apple.RestoreRemoteServices.restoreservice", "restoreservice");

  _objc_release_x1();
}

id sub_100001844(void *a1)
{
  v1 = a1;
  v2 = dispatch_time(0, 3000000000);
  dispatch_after(v2, qword_10002E5C8, &stru_100024948);
  v4 = sub_100001160(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling reboot3 imminently", v7, 2u);
  }

  v5 = sub_100001D58(v1, "success");

  return v5;
}

id sub_100001908(void *a1)
{
  v1 = a1;
  updated = ramrod_update_copy_ap_parameters_generating_nonces(0);
  if (updated)
  {
    reply = xpc_dictionary_create_reply(v1);
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, "apparameters", v4);

    xpc_dictionary_set_string(reply, "result", "apparameters");
  }

  else
  {
    reply = sub_100001D58(v1, "error");
  }

  if (updated)
  {
    CFRelease(updated);
  }

  return reply;
}

id sub_100001A2C(void *a1)
{
  v1 = a1;
  if (MGGetProductType() != 376943508)
  {
LABEL_11:
    v11 = "error";
    goto LABEL_12;
  }

  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v2)
  {
    v10 = sub_100001160(v2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100013068();
    }

    goto LABEL_11;
  }

  v3 = v2;
  v4 = CFDataCreate(0, "true", 4);
  if (!v4)
  {
    sub_10001304C();
  }

  v5 = v4;
  v6 = IORegistryEntrySetCFProperty(v3, @"delay-recovery-image", v4);
  v7 = v6;
  v8 = sub_100001160(v6);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100012FD8();
    }

    CFRelease(v5);
    IOObjectRelease(v3);
    goto LABEL_11;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "delay-recovery-image successfully enabled", v14, 2u);
  }

  CFRelease(v5);
  IOObjectRelease(v3);
  v11 = "success";
LABEL_12:
  v12 = sub_100001D58(v1, v11);

  return v12;
}

id sub_100001BC4(void *a1, const char *a2)
{
  v3 = a1;
  if (MGGetProductType() != 376943508)
  {
LABEL_15:
    v13 = "error";
    goto LABEL_16;
  }

  if (!a2)
  {
    v11 = sub_100001160(376943508);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000131D4();
    }

    goto LABEL_15;
  }

  v4 = strlen(a2);
  v5 = CFDataCreate(0, a2, v4);
  if (!v5)
  {
    sub_10001304C();
  }

  v6 = v5;
  v7 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v7)
  {
    v12 = sub_100001160(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100013068();
    }

    CFRelease(v6);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = IORegistryEntrySetCFProperty(v7, @"restore-lang", v6);
  if (v9)
  {
    v10 = sub_100001160(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100012FD8();
    }

    CFRelease(v6);
    IOObjectRelease(v8);
    goto LABEL_15;
  }

  CFRelease(v6);
  IOObjectRelease(v8);
  v13 = "success";
LABEL_16:
  v14 = sub_100001D58(v3, v13);

  return v14;
}

void sub_100001D58(void *a1, const char *a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(v3);
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_string(reply, "result", a2);

    v6 = v5;
  }

  else
  {
    v7 = sub_100001160(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100013210();
    }

    __break(1u);
  }
}

void sub_100001DE4(id a1)
{
  v1 = sub_100001160(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Calling reboot3 now", v4, 2u);
  }

  v2 = reboot3();
  if (v2)
  {
    v3 = sub_100001160(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100013290(v3);
    }
  }
}

uint64_t AMRestorePartitionFWCopyTagData(const __CFURL *a1, const __CFString *a2, CFTypeRef *a3, off_t *a4, CFTypeRef *a5, off_t *a6)
{
  if (a1)
  {
    v7 = sub_100002360(a1, 0);
    if (v7)
    {
      v8 = v7;
      v9 = malloc(0x8000uLL);
      if (v9)
      {
        if (read(v8, v9, 0x8000uLL))
        {
          v10 = Img4DecodeParseLengthFromBuffer();
          AMSupportLogInternal(6, "AMRestorePartitionFWCopyTagData", "No more segments. (derstat=%d)", v10);
        }

        AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "No DER segments found.");
      }

      else
      {
        sub_1000134C8(0);
      }

      if (v8 >= 1)
      {
        close(v8);
      }
    }

    else
    {
      AMSupportLogInternal(3, "AMRestorePartitionFWCopyTagData", "Unable to open inURL %@", a1);
    }
  }

  else
  {
    sub_1000134DC(0);
  }

  AMSupportSafeFree();
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 99;
}

uint64_t sub_100002360(const __CFURL *a1, int a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    AMSupportLogInternal(3, "_AMRestorePartitionOpenFileWithURL", "failed to convert url to file system representation");
    AMSupportLogInternal(8, "_AMRestorePartitionOpenFileWithURL", "%@", a1);
    return 0xFFFFFFFFLL;
  }

  v4 = open(buffer, a2);
  v5 = v4;
  if (v4 <= 0)
  {
    sub_10001351C(v4);
    return v5;
  }

  if (fcntl(v4, 48, 1))
  {
    sub_1000134F0();
    return 0xFFFFFFFFLL;
  }

  return v5;
}

uint64_t sub_100002B48(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_10001361C(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_100002CD0(char *a1, const __CFString *a2)
{
  v4 = sub_1000035EC(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 != CFDataGetTypeID() || (BytePtr = CFDataGetBytePtr(v5), (Length = CFDataGetLength(v5)) != 0) && (Length > 4 || !memcmp(BytePtr, &unk_100017B68, Length)))
    {
      v9 = 0;
      v10 = "NO";
    }

    else
    {
      v9 = 1;
      v10 = "YES";
    }

    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, v10, v5);
    CFRelease(v5);
  }

  else
  {
    ramrod_log_msg_cf(@"Boot Firmware Updater: property_is_nonzero(%s, %@) = %s (%@)\n", a1, a2, "NO", 0);
    return 0;
  }

  return v9;
}

BOOL sub_100002E20(const __CFString *a1)
{
  v2 = sub_1000035EC("IODeviceTree:/defaults", a1);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  ramrod_log_msg_cf(@"Boot Firmware Updater: property_exists(%s, %@) = %s\n", "IODeviceTree:/defaults", a1, v4);
  return v3 != 0;
}

void sub_100003400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003434(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

CFTypeRef sub_1000035EC(char *path, const __CFString *a2)
{
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, path);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, a2, kCFAllocatorDefault, 0);
  IOObjectRelease(v4);
  return CFProperty;
}

uint64_t MSUBootFirmwareFindNamespace(io_registry_entry_t a1, uint64_t a2)
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(a1, &entryID);
  IOServiceWaitQuiet(a1, 0);
  v11[0] = @"IOParentMatch";
  v4 = IORegistryEntryIDMatching(entryID);
  v11[1] = @"IOPropertyMatch";
  v12[0] = v4;
  v9 = a2;
  v10 = [NSNumber numberWithBool:1];
  v12[1] = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  return IOServiceGetMatchingService(kIOMasterPortDefault, v6);
}

void sub_100005190(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a3, a4, a5, a6, a7);
}

uint64_t sub_1000051AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return __os_log_send_and_compose_impl(a1, v6, v5, 80, a5, v7, 16);
}

void sub_1000051D0(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 2, 0, a3, a4, a5, a6, a7);
}

uint64_t sub_100005338(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_100013950(&v2, v3);
    }
  }

  return result;
}

uint64_t sub_1000057D0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOServiceClose(result);
    if (result)
    {
      sub_100013A64(&v2, v3);
    }
  }

  return result;
}

double sub_10000588C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL sub_1000058A4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void iBU_LOG_real(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [[NSString alloc] initWithFormat:a1 arguments:&a9];
  v11 = v10;
  if (off_10002E5E0)
  {
    v12 = [v10 UTF8String];
    off_10002E5E0("%s: %s\n", a2, v12);
  }

  else
  {
    NSLog(@"%s: %@", a2, v10);
  }
}

NSError *MSUBootFirmwareError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  if (a2)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = NSUnderlyingErrorKey;
    v20 = v11;
    v21 = a2;
    v12 = &v20;
    v13 = &v18;
    v14 = 2;
  }

  else
  {
    v16 = NSLocalizedDescriptionKey;
    v17 = v11;
    v12 = &v17;
    v13 = &v16;
    v14 = 1;
  }

  return [NSError errorWithDomain:@"MSUFirmwareUpdaterErrorDomain" code:a1 userInfo:[NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14, &a9, v16, v17, v18, v19, v20, v21]];
}

BOOL sub_100005BBC(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"low-level-fw-device-info", 0, 0);
  v2 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  return v2 != 0;
}

uint64_t sub_1000091E0(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    result = IOObjectRelease(result);
    if (result)
    {
      sub_100013B88(&v2, v3);
    }
  }

  return result;
}

void sub_100009974(uint64_t a1)
{
  step_desc = checkpoint_closure_context_get_step_desc([*(a1 + 32) checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][Start] Checkpoint %s start running.\n", *(step_desc + 8));
  v3 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v3, kCheckpointAsyncStepContextKey, [*(a1 + 32) checkpoint_closure_context], 0);
  v4 = 0;
  v5 = 1;
  do
  {
    while (1)
    {
      v13 = 0;
      v12 = 0;
      if (v4)
      {
        v5 = checkpoint_closure_context_handle_simulator_actions([*(a1 + 32) checkpoint_closure_context], 1, &v13, &v12) != 0;
      }

      v6 = *(a1 + 32);
      objc_sync_enter(v6);
      v5 &= [*(a1 + 32) isCanceled] ^ 1;
      objc_sync_exit(v6);
      if (v5)
      {
        checkpoint_closure_context_set_start_time([*(a1 + 32) checkpoint_closure_context]);
        (*(*(a1 + 40) + 16))();
        checkpoint_closure_context_set_end_time([*(a1 + 32) checkpoint_closure_context]);
        v13 = [*(a1 + 32) result];
        v12 = [*(a1 + 32) error];
      }

      if (checkpoint_closure_context_handle_simulator_actions([*(a1 + 32) checkpoint_closure_context], 0, &v13, &v12))
      {
        v7 = checkpoint_closure_context_handle_simulator_match_name([*(a1 + 32) checkpoint_closure_context]) != 0;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1 + 32);
      objc_sync_enter(v8);
      if (([*(a1 + 32) isCanceled] & 1) == 0)
      {
        [*(a1 + 32) setResult:v13];
        [*(a1 + 32) setError:v12];
      }

      if (!v13)
      {
        goto LABEL_14;
      }

      v9 = [*(a1 + 32) isCanceled];
      if (((v9 | v7) & 1) == 0)
      {
        break;
      }

      LOBYTE(v7) = v9 ^ 1;
LABEL_14:
      objc_sync_exit(v8);
      v4 = 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    should_retry = checkpoint_closure_context_should_retry([*(a1 + 32) checkpoint_closure_context]);
    objc_sync_exit(v8);
    v4 = 1;
  }

  while (should_retry);
LABEL_17:
  v11 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v11, kCheckpointAsyncStepContextKey, 0, 0);
  ramrod_log_msg("[AsyncCP][End] Checkpoint %s finished with result: %d.\n", *(step_desc + 8), [*(a1 + 32) result]);
  if ([*(a1 + 32) result])
  {
    if ([*(a1 + 32) error])
    {
      checkpoint_closure_context_set_encountered_async_error([*(a1 + 32) checkpoint_closure_context], objc_msgSend(*(a1 + 32), "result"), objc_msgSend(*(a1 + 32), "error"));
    }
  }
}

void sub_100009BEC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 7);
}

void sub_100009C3C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 7);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t wait_for_io_service_matching_dict(CFTypeRef cf, unsigned int a2)
{
  v4 = 0;
  do
  {
    CFRetain(cf);
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, cf);
    if (MatchingService)
    {
      break;
    }

    v6 = a2 - v4 >= 3 ? 3 : a2 - v4;
    v7 = CFCopyDescription(cf);
    CStringPtr = CFStringGetCStringPtr(v7, 0);
    ramrod_log_msg("waiting for matching IOKit service: %s\n", CStringPtr);
    sleep(v6);
    v4 += v6;
    CFRelease(v7);
  }

  while (v4 < a2);
  CFRelease(cf);
  return MatchingService;
}

uint64_t wait_for_io_service_matching_resource_with_timeout(const char *a1, unsigned int a2)
{
  v4 = IOServiceMatching("IOResources");
  if (!v4)
  {
    ramrod_log_msg("unable to create matching dictionary for resource '%s'\n");
    return 0;
  }

  v5 = v4;
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
  if (!v6)
  {
    ramrod_log_msg("unable to convert resource name to CFString\n");
    return 0;
  }

  v7 = v6;
  CFDictionarySetValue(v5, @"IOResourceMatch", v6);
  CFRelease(v7);

  return wait_for_io_service_matching_dict(v5, a2);
}

BOOL ramrod_check_NVRAM_access()
{
  v0 = wait_for_io_service_matching_resource_with_timeout("IONVRAM", 0);
  v1 = v0;
  if (v0)
  {
    IOObjectRelease(v0);
  }

  return v1 != 0;
}

CFTypeRef ramrod_copy_NVRAM_variable_from_devicetree(CFStringRef theString)
{
  Copy = CFStringCreateCopy(0, theString);
  v2 = atomic_load(dword_10002E5E8);
  if (!v2)
  {
    v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
    if (v2)
    {
      v5 = 0;
      atomic_compare_exchange_strong(dword_10002E5E8, &v5, v2);
      if (v5)
      {
        IOObjectRelease(v2);
        v2 = v5;
      }
    }
  }

  CFProperty = IORegistryEntryCreateCFProperty(v2, Copy, 0, 0);
  CFRelease(Copy);
  return CFProperty;
}

uint64_t get_BOOLean_option(const __CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (!a1)
  {
    return v3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return v3;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFBooleanGetTypeID())
  {
    v9 = CFGetTypeID(v6);
    if (v9 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      *buffer = 0u;
      v12 = 0u;
      CFStringGetCString(a2, buffer, 255, 0x8000100u);
      ramrod_log_msg("%s: option '%s' has non-BOOLean value, using default\n", "get_BOOLean_option", buffer);
    }

    return v3;
  }

  return CFBooleanGetValue(v6);
}

uint64_t ramrod_log_msg_to_fd(uint64_t a1, uint64_t a2, int __fd)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    while (1)
    {
      v8 = write(__fd, (a1 + v7), a2 - v7);
      if (v8 == -1)
      {
        break;
      }

      v7 += v8;
      if (v7 == a2)
      {
        return 0;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t sub_10000A528(int a1)
{
  valuePtr = a1;
  memset(&v16, 0, sizeof(v16));
  v1 = fstat(a1, &v16);
  v2 = v16.st_mode <= -1 && v1 == 0;
  v3 = &xmmword_10002E608 + 1;
  if (v2)
  {
    v3 = &xmmword_10002E608;
  }

  v4 = *v3;
  if (!*v3)
  {
    v12 = __stderrp;
    v13 = "can't remove logging fd since none were added";
    v14 = 45;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0xFFFFFFFFLL;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    v12 = __stderrp;
    v13 = "failed to convert fd to number";
    v14 = 30;
    goto LABEL_13;
  }

  v6 = v5;
  CFSetRemoveValue(v4, v5);
  if (close(valuePtr))
  {
    v7 = __error();
    v8 = *v7;
    v9 = __stderrp;
    v10 = valuePtr;
    v11 = strerror(*v7);
    fprintf(v9, "failed to close file descriptor '%d', error:%s", v10, v11);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t ramrod_log_msg_to_all_fds(uint64_t a1, uint64_t a2)
{
  context = 0u;
  *theArray = 0u;
  valuePtr = -1;
  pthread_mutex_lock(&stru_10002DFF0);
  if (a1 && xmmword_10002E608 != 0)
  {
    *&context = a1;
    *(&context + 1) = a2;
    theArray[0] = 0;
    LOBYTE(theArray[1]) = 0;
    if (*(&xmmword_10002E608 + 1))
    {
      CFSetApplyFunction(*(&xmmword_10002E608 + 1), sub_10000A7C8, &context);
    }

    qword_10002E618 += a2;
    if (qword_10002E618)
    {
      LOBYTE(theArray[1]) = 1;
      qword_10002E618 = 0;
    }

    if (xmmword_10002E608)
    {
      CFSetApplyFunction(xmmword_10002E608, sub_10000A7C8, &context);
    }

    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            sub_10000A528(valuePtr);
          }

          else
          {
            fwrite("Failed to convert CFNumberRef into int value\n", 0x2DuLL, 1uLL, __stderrp);
          }
        }
      }

      CFRelease(theArray[0]);
    }
  }

  pthread_mutex_unlock(&stru_10002DFF0);
  return 0;
}

void sub_10000A7C8(const void *a1, uint64_t a2)
{
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
        {
          if (ramrod_log_msg_to_fd(*a2, *(a2 + 8), valuePtr))
          {
            fprintf(__stderrp, "Removing file descriptor %d since it failed to be written to.\n", valuePtr);
            Mutable = *(a2 + 16);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
              *(a2 + 16) = Mutable;
            }

            CFArrayAppendValue(Mutable, a1);
          }

          else if (*(a2 + 24) == 1)
          {
            fsync(valuePtr);
          }
        }

        else
        {
          fwrite("Failed to convert num to int\n", 0x1DuLL, 1uLL, __stderrp);
        }
      }

      return;
    }

    v5 = __stderrp;
    v6 = "Missing logging context.\n";
    v7 = 25;
  }

  else
  {
    v5 = __stderrp;
    v6 = "NULL fd num in fd set, weird.\n";
    v7 = 30;
  }

  fwrite(v6, v7, 1uLL, v5);
}

void ramrod_log_msg_cf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (v1)
  {
    v2 = v1;
    if (CFStringGetCStringPtr(v1, 0x8000100u))
    {
      ramrod_log_msg("%s");
    }

    else
    {
      Length = CFStringGetLength(v2);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v5 = malloc(MaximumSizeForEncoding + 1);
      if (v5)
      {
        v6 = v5;
        if (CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u))
        {
          ramrod_log_msg("%s");
        }

        else
        {
          ramrod_log_msg("(Failed to alloc and convert log message)\n");
        }

        free(v6);
      }

      else
      {
        ramrod_log_msg("(Failed to alloc and convert log message)\n");
      }
    }

    CFRelease(v2);
  }

  else
  {
    ramrod_log_msg("(Failed to format log message)\n");
  }
}

void sub_10000AA4C(int a1, const char *a2, va_list a3)
{
  __s = 0;
  if (vasprintf(&__s, a2, a3) != -1)
  {
    pthread_mutex_lock(&stru_10002DFB0);
    if (a1 == 1)
    {
      fputs(__s, __stdoutp);
      if (off_10002E620)
      {
        off_10002E620(__s);
      }
    }

    v4 = strlen(__s);
    ramrod_log_msg_to_all_fds(__s, v4);
    if ((byte_10002E030 & 1) == 0)
    {
      goto LABEL_23;
    }

    v5 = qword_10002E600;
    if (!qword_10002E600)
    {
      v5 = malloc(0x100000uLL);
      qword_10002E600 = v5;
      if (!v5)
      {
        fprintf(__stderrp, "unable to allocate %lu bytes for log buffer\n", 0x100000);
LABEL_23:
        pthread_mutex_unlock(&stru_10002DFB0);
        goto LABEL_24;
      }

      qword_10002E5F0 = v5;
      qword_10002E5F8 = v5;
    }

    v6 = *__s;
    if (*__s)
    {
      v7 = v5 + 0x100000;
      v8 = qword_10002E5F8;
      v9 = qword_10002E5F0;
      v10 = __s + 1;
      do
      {
        *v8 = v6;
        if (v8 + 1 == v7)
        {
          v8 = v5;
        }

        else
        {
          ++v8;
        }

        qword_10002E5F8 = v8;
        if (v9 == v8)
        {
          if ((v9 + 1) == v7)
          {
            v9 = v5;
          }

          else
          {
            ++v9;
          }

          qword_10002E5F0 = v9;
        }

        v11 = *v10++;
        v6 = v11;
      }

      while (v11);
    }

    goto LABEL_23;
  }

  fwrite("unable to allocate storage for log message\n", 0x2BuLL, 1uLL, __stderrp);
LABEL_24:
  free(__s);
}

CFStringRef sub_10000ABDC(uint64_t a1, const char **a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = strlen(*a2);
  if (v3 > 0x100)
  {
    return CFStringCreateWithFormat(0, 0, @"~%s", &v2[v3 - 255]);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"%s", v2);
  }
}

CFStringRef sub_10000AC54(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = strlen(*(a2 + 1));
  if (v4 > 0xF2)
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:~%s}", *a2, v3 + v4 - 241);
  }

  else
  {
    return CFStringCreateWithFormat(0, 0, @"{0x%08X:%s}", *a2, v3);
  }
}

CFStringRef sub_10000ACD4(uint64_t a1, void *a2)
{
  if (a2)
  {
    return CFStringCreateWithFormat(0, 0, @"%ld", *a2);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_10000AD18(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v10 = 0;
    asprintf(&v10, "{");
    v3 = v10;
    if (v10)
    {
      v4 = 0;
      v9 = 0;
      v5 = 1;
      do
      {
        v6 = v5;
        v7 = *(&v2->isa + v4);
        if (v7)
        {
          v3 = sub_10000DBDC(v3, off_1000249C8[v4], v7, &v9);
          v10 = v3;
        }

        v5 = 0;
        v4 = 1;
      }

      while ((v6 & 1) != 0);
      v10 = sub_10000DCCC(v3, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v10);
      if (v10)
      {
        free(v10);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_10000ADE8(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v8 = 0;
    asprintf(&v8, "{");
    v3 = v8;
    if (v8)
    {
      v7 = 0;
      p_info = &v2->info;
      v5 = 8;
      do
      {
        if (*p_info)
        {
          v3 = sub_10000DD6C(v3, *(p_info - 2), *p_info, &v7);
          v8 = v3;
        }

        p_info += 2;
        --v5;
      }

      while (v5);
      v8 = sub_10000DCCC(v3, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v8);
      if (v8)
      {
        free(v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_10000AEA4(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v7 = 0;
    asprintf(&v7, "{");
    if (v7)
    {
      v6 = 0;
      v3 = 8;
      do
      {
        if (LODWORD(v2->isa))
        {
          v5 = 0;
          asprintf(&v5, "%d", HIDWORD(v2->isa));
          if (v5)
          {
            v7 = sub_10000DD6C(v7, v2->isa, v5, &v6);
            if (v5)
            {
              free(v5);
            }
          }
        }

        v2 = (v2 + 8);
        --v3;
      }

      while (v3);
      v7 = sub_10000DCCC(v7, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v7);
      if (v7)
      {
        free(v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_10000AFA0(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v12 = 0;
    asprintf(&v12, "{");
    if (v12)
    {
      v3 = 0;
      v11 = 0;
      p_info = &v2->info;
      do
      {
        v5 = v2 + 18 * v3;
        if (*v5)
        {
          v15 = 0;
          asprintf(&v15, "{");
          if (v15)
          {
            v6 = 0;
            v14 = 0;
            do
            {
              v7 = p_info[v6];
              if (v7)
              {
                v13 = 0;
                asprintf(&v13, "%s", v7);
                if (v13)
                {
                  v15 = sub_10000DDE4(v15, v6, v13, &v14);
                  if (v13)
                  {
                    free(v13);
                  }
                }
              }

              ++v6;
            }

            while (v6 != 8);
            v8 = sub_10000DCCC(v15, "}");
            if (v8)
            {
              v9 = v8;
              v12 = sub_10000DD6C(v12, *v5, v8, &v11);
              free(v9);
            }
          }
        }

        ++v3;
        p_info += 9;
      }

      while (v3 != 8);
      v12 = sub_10000DCCC(v12, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v12);
      if (v12)
      {
        free(v12);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef sub_10000B138(uint64_t a1, const __CFString *a2)
{
  v2 = a2;
  if (a2)
  {
    v11 = 0;
    asprintf(&v11, "{");
    if (v11)
    {
      v3 = 0;
      v10 = 0;
      v4 = v2;
      do
      {
        v5 = v2 + 11 * v3;
        if (*v5)
        {
          v14 = 0;
          asprintf(&v14, "{");
          if (v14)
          {
            v6 = 0;
            v13 = 0;
            do
            {
              if (*(&v4[1].isa + v6 + 4))
              {
                v12 = 0;
                asprintf(&v12, "%d", *(&v4->isa + v6 + 1));
                if (v12)
                {
                  v14 = sub_10000DDE4(v14, v6, v12, &v13);
                  if (v12)
                  {
                    free(v12);
                  }
                }
              }

              ++v6;
            }

            while (v6 != 8);
            v7 = sub_10000DCCC(v14, "}");
            if (v7)
            {
              v8 = v7;
              v11 = sub_10000DD6C(v11, *v5, v7, &v10);
              free(v8);
            }
          }
        }

        ++v3;
        v4 = (v4 + 44);
      }

      while (v3 != 8);
      v11 = sub_10000DCCC(v11, "}");
      v2 = CFStringCreateWithFormat(0, 0, @"%s", v11);
      if (v11)
      {
        free(v11);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_10000B2DC(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 688);
  if (!v5)
  {
    goto LABEL_155;
  }

  if (v5 == 1)
  {
    v6 = 1;
    goto LABEL_20;
  }

  v6 = 0;
  if (a2)
  {
    if (v5 == 2)
    {
LABEL_155:
      if (ramrod_check_NVRAM_access())
      {
        if (*(a1 + 2296))
        {
          if (!*(a1 + 2297))
          {
LABEL_24:
            v11 = *(a1 + 688);
            if (*(a1 + 693))
            {
LABEL_148:
              v6 = 1;
              *(a1 + 688) = 1;
              if (!a3)
              {
                if (v11)
                {
                  sub_10000BBC8(a1, 2, 1, 0, 256, "NVRAM access has become available", 0, 0, 0);
                }

                else
                {
                  sub_10000BBC8(a1, 2, 1, 0, 256, "NVRAM access available on initial check", 0, 0, 0);
                }
              }

              goto LABEL_20;
            }

            v12 = *a1 == 1 && v11 == 2;
            v13 = 696;
            if (v12)
            {
              v13 = 1088;
            }

            v14 = a1 + v13;
            if (*(a1 + v13 + 4))
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", "checkpoint_nvram_handle_first_available");
            }

            else
            {
              sub_10000C6C4(a1, v14);
            }

            if (*a1 == 1)
            {
              v15 = *(a1 + 88);
              if (*(a1 + 96))
              {
                if (v15 == 2)
                {
                  v19 = &unk_100017E24;
                }

                else
                {
                  v19 = &unk_100017F6C;
                }
              }

              else
              {
                if (v15 == 2)
                {
                  v17 = sub_10000E274(a1, v14, dword_100017B94);
                  sub_10000E50C(a1, v14);
                  goto LABEL_53;
                }

                v19 = &unk_100017D14;
              }

              v17 = sub_10000E274(a1, v14, v19);
LABEL_53:
              if (!*(v14 + 48))
              {
                goto LABEL_111;
              }

              v24 = sub_10000C810(a1, v14);
              if (v24 < 0x22)
              {
                v25 = &dword_100018514[3 * v24];
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", "checkpoint_get_outcome_attributes", v24);
                v25 = dword_100018514;
              }

              v26 = *(v14 + 48);
              bzero(v49, 0x400uLL);
              if (*v25 == 2)
              {
                v27 = *(v25 + 8);
                if (*(v25 + 8))
                {
                  *(a1 + 106) = 1;
                }

                if (*(v25 + 7))
                {
                  v17 = 0;
                  *(a1 + 102) = 1;
                }

                if (!*(v25 + 5))
                {
                  if (!*(v25 + 4) || !*(v25 + 6))
                  {
                    goto LABEL_111;
                  }

                  if (v27)
                  {
                    *(a1 + 101) = 1;
                    goto LABEL_111;
                  }

                  if (!*(v14 + 64))
                  {
                    goto LABEL_111;
                  }

LABEL_97:
                  v35 = *(v14 + 56);
                  *(a1 + 101) = 1;
                  if (!v35 || CFStringCompare(v35, @"true", 0))
                  {
                    goto LABEL_99;
                  }

                  *(a1 + 100) = 1;
                  if (*(v25 + 5))
                  {
                    *(a1 + 104) = 257;
                  }

                  else
                  {
                    *(a1 + 103) = 1;
                  }

LABEL_111:
                  if (v17 && !*(a1 + 106) && !*(a1 + 100) && !*(a1 + 104))
                  {
                    sub_10000C88C(a1, v18, "[monitor_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                  }

                  goto LABEL_116;
                }

                if (v27)
                {
                  *(a1 + 101) = 1;
                  *(a1 + 104) = 257;
                  goto LABEL_111;
                }

                if (*(v14 + 64))
                {
                  goto LABEL_97;
                }
              }

              else
              {
                if (!*(v25 + 5))
                {
                  goto LABEL_111;
                }

                if (!*(v14 + 64))
                {
                  sub_10000CAC0(v26, v49);
                  sub_10000C88C(a1, v37, "[monitor_aware]outcome=%s(reboot_retry_not_in_zone)");
                  goto LABEL_116;
                }

                v28 = *(v14 + 56);
                if (!v28 || CFStringCompare(v28, @"true", 0))
                {
LABEL_99:
                  sub_10000CAC0(v26, v49);
                  sub_10000C88C(a1, v36, "[monitor_aware]outcome=%s(reboot_retry_disabled)");
LABEL_116:
                  if (*(a1 + 104))
                  {
                    if (v11 == 2)
                    {
                      v39 = 0;
                      v40 = (a1 + 1520);
                      v41 = &dword_1000249E8;
                      do
                      {
                        v43 = *v41;
                        v41 += 8;
                        v42 = v43;
                        if (v39 != v43)
                        {
                          v44 = a1 + 1512 + 16 * v42;
                          *(v44 + 4) = *(v40 - 4);
                          *(v40 - 4) = 0;
                          v45 = *v40;
                          *v40 = *(v44 + 8);
                          *(v44 + 8) = v45;
                        }

                        ++v39;
                        v40 += 2;
                      }

                      while (v39 != 48);
                    }
                  }

                  else if (*a1 != 1 && *(a1 + 88) == 2)
                  {
                    ramrod_log_msg("%s\n", "void clear_stale_ota_nvram(void)");
                    sub_10000E65C(@"boot-breadcrumbs");
                    sub_10000E65C(@"OTA-pre-conversion");
                    sub_10000E65C(@"OTA-post-conversion");
                    sub_10000E65C(@"ota-conv-panic-indicator");
                    sub_10000E65C(@"OTA-fsck-metrics");
                    sub_10000E65C(@"OTA-sealvolume-metrics");
                    sub_10000E65C(@"OTA-migrator-metrics");
                    for (i = 0; i != 28; ++i)
                    {
                      v47 = &off_1000249D8[4 * dword_1000184A4[i]];
                      sub_10000E65C(v47[1]);
                      sub_10000E65C(*v47);
                    }
                  }

                  if (*(a1 + 96))
                  {
                    if (*(a1 + 101))
                    {
                      if (*(a1 + 104))
                      {
                        if (*(a1 + 106))
                        {
                          v48 = 9;
                        }

                        else if (*(a1 + 105))
                        {
                          v48 = 12;
                        }

                        else if (*(a1 + 100))
                        {
                          v48 = 10;
                        }

                        else
                        {
                          v48 = 11;
                        }
                      }

                      else if (*(a1 + 103))
                      {
                        v48 = 10;
                      }

                      else
                      {
                        v48 = 3;
                      }
                    }

                    else if (*(a1 + 102))
                    {
                      if (*(a1 + 104))
                      {
                        v48 = 7;
                      }

                      else
                      {
                        v48 = 6;
                      }
                    }

                    else
                    {
                      v48 = 2;
                    }

                    sub_10000C92C(a1, v48);
                  }

                  else
                  {
                    sub_10000DE5C(a1, 1);
                  }

                  *(a1 + 693) = 1;
                  goto LABEL_148;
                }
              }

              *(a1 + 104) = 1;
              goto LABEL_111;
            }

            v16 = *(v14 + 56);
            if (v16 && CFStringCompare(v16, @"true", 0) == kCFCompareEqualTo)
            {
              *(a1 + 100) = 1;
            }

            else
            {
              ramrod_log_msg("AP nonce will not be touched\n");
            }

            v20 = *(a1 + 88);
            if (*(a1 + 96))
            {
              if (v20 == 2)
              {
                v21 = sub_10000E274(a1, v14, dword_10001820C);
                sub_10000E50C(a1, v14);
                goto LABEL_71;
              }

              v23 = &unk_100018394;
            }

            else if (v20 == 2)
            {
              v23 = &unk_10001804C;
            }

            else
            {
              v23 = &unk_100018164;
            }

            v21 = sub_10000E274(a1, v14, v23);
LABEL_71:
            if (!*(v14 + 48))
            {
              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              if (*(a1 + 88) == 2)
              {
                if (*(v14 + 64))
                {
                  sub_10000C9BC(a1, 7u, 0, 0);
                }

                v31 = *(v14 + 24);
                if (v31 && CFStringCompare(v31, @"recover", 0))
                {
                  sub_10000C9BC(a1, 2u, 1, 0);
                }

                if (*(v14 + 32))
                {
                  sub_10000C9BC(a1, 3u, 1, 0);
                }
              }

              goto LABEL_103;
            }

            v29 = sub_10000C810(a1, v14);
            if (v29 < 0x22)
            {
              v30 = &dword_100018514[3 * v29];
            }

            else
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid outcome=%d\n", "checkpoint_get_outcome_attributes", v29);
              v30 = dword_100018514;
            }

            v32 = *(v14 + 48);
            bzero(v49, 0x400uLL);
            if (*v30 != 1)
            {
              if (*(v30 + 6))
              {
                if (*(v14 + 64))
                {
                  sub_10000E574(a1, v32);
                }

                else
                {
                  sub_10000CAC0(v32, v49);
                  sub_10000C88C(a1, v38, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v49);
                }
              }

              *(a1 + 1480) = 1;
              *(a1 + 1488) = "access now enabled";
              goto LABEL_103;
            }

            v33 = *(v14 + 64);
            if (*(v30 + 5))
            {
              if (!v33)
              {
                sub_10000CAC0(v32, v49);
                sub_10000C88C(a1, v34, "[chassis_aware]outcome=%s(pre_existing_reboot_retry_not_in_zone)", v49);
LABEL_103:
                if (v21 && !*(a1 + 104))
                {
                  sub_10000C88C(a1, v22, "[chassis_aware]pre-existing NVRAM implied reboot-retry but values were inconsistent");
                }

                goto LABEL_116;
              }
            }

            else if (!v33)
            {
              goto LABEL_103;
            }

            sub_10000E574(a1, v32);
            goto LABEL_103;
          }
        }

        else
        {
          sub_10000DF24(a1, 1u, 0x2Fu, (a1 + 1080));
          if (!*(a1 + 1080))
          {
            *(a1 + 2296) = 1;
            goto LABEL_24;
          }

          if (*a1 == 2)
          {
            sub_10000C9BC(a1, 0x2Fu, 0, 0);
          }

          *(a1 + 2297) = 1;
          *(a1 + 692) = 0;
          v7 = (a1 + 1016);
          v8 = -4;
          do
          {
            sub_10000DF24(a1, 1u, v8 + 43, v7++);
          }

          while (!__CFADD__(v8++, 1));
          *(a1 + 2296) = 1;
        }
      }

      *(a1 + 688) = 2;
      if (!a3)
      {
        sub_10000BBC8(a1, 2, 1, 0, 256, "NVRAM access is not currently available", 0, 0, 0);
      }

      v6 = 0;
    }
  }

LABEL_20:
  if (!*(a1 + 96))
  {
    sub_10000DE5C(a1, v6);
  }

  return v6;
}

void *sub_10000BBC8(int *a1, int a2, int a3, int a4, int a5, const char *a6, int a7, int a8, const void *a9)
{
  v17 = calloc(1uLL, 0x78uLL);
  if (!v17)
  {
    return v17;
  }

  v94 = 0;
  asprintf(&v94, "%s", a6);
  if (!v94)
  {
    free(v17);
    return 0;
  }

  *(v17 + 2) = a2;
  v17[2] = time(0);
  gettimeofday((v17 + 3), 0);
  *(v17 + 10) = getpid();
  *(v17 + 11) = getppid();
  *(v17 + 12) = a3;
  *(v17 + 13) = a4;
  *(v17 + 14) = a5;
  v17[8] = v94;
  *(v17 + 18) = a7;
  *(v17 + 19) = a8;
  if (a9)
  {
    v17[10] = a9;
    CFRetain(a9);
    a5 = *(v17 + 14);
  }

  *(v17 + 22) = a5 | (*(v17 + 2) << 16) | 0x11000000;
  *v98 = 0x1500000001;
  v95[0] = 0;
  v95[1] = 0;
  v96 = 16;
  if (sysctl(v98, 2u, v95, &v96, 0, 0))
  {
    v18 = -1;
  }

  else
  {
    v18 = v17[2] - v95[0];
  }

  v19 = *(v17 + 2);
  if (v19 <= 0x21)
  {
    if (((1 << v19) & 0x100000090) != 0)
    {
      sub_10000EA88(a1, 0xDu, *(v17 + 14) | 0x11070000, *(v17 + 18), *(v17 + 19));
      v22 = v17[10];
      if (v22)
      {
        Code = CFErrorGetCode(v22);
        Domain = CFErrorGetDomain(v17[10]);
        v25 = sub_10000D1B0(v17[10]);
        sub_10000EA88(a1, 0xFu, *(v17 + 22), *(v17 + 18), Code);
        if (Domain)
        {
          bzero(buffer, 0x400uLL);
          CFStringGetCString(Domain, buffer, 1024, 0x8000100u);
          sub_10000EBE4(a1, 0x10u, *(v17 + 22), *(v17 + 18), buffer);
        }

        if (v25)
        {
          sub_10000E858(a1, 0x11u, *(v17 + 22), v25);
          free(v25);
        }
      }

      goto LABEL_76;
    }

    if (((1 << v19) & 0x200000020) != 0)
    {
      v20 = *(v17 + 18);
      v21 = *(v17 + 14);
      if (v20)
      {
        sub_10000EA88(a1, 0xDu, v21 | 0x11070000, v20, 0);
        goto LABEL_76;
      }

      v35 = a1 + 378;
      v36 = 92;
      if (!*(a1 + 104))
      {
        v36 = 44;
      }

      v37 = &v35[v36];
      v38 = *(v37 + 1);
      if (v38)
      {
        v39 = v21 | 0x11030000;
        if (*v38 == v39)
        {
          v40 = 0;
          *v38 = 0;
LABEL_41:
          v41 = &v38[v40 + 1];
          v42 = v40 - 7;
          do
          {
            *(v41 - 1) = *v41;
            ++v41;
            v43 = __CFADD__(v42++, 1);
          }

          while (!v43);
LABEL_44:
          v38[7] = 0;
          *(v37 + 4) = 1;
          goto LABEL_53;
        }

        v44 = v38 + 1;
        v45 = -1;
        while (v45 != 6)
        {
          v46 = *v44;
          v44 += 2;
          ++v45;
          if (v46 == v39)
          {
            *(v44 - 1) = 0;
            if (v45 > 5)
            {
              goto LABEL_44;
            }

            v40 = v45 + 1;
            goto LABEL_41;
          }
        }
      }

      v47 = a1[376];
      if (!v47)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", "checkpoint_nvram_remove_lost", "checkpoint_nvram_remove_by_id_int", "not removed");
        v47 = a1[376];
      }

      a1[376] = v47 + 1;
LABEL_53:
      v48 = 24;
      if (!*(a1 + 104))
      {
        v48 = 12;
      }

      if ((0x1001100uLL >> v48))
      {
        v49 = &v35[4 * v48];
        v50 = *(v49 + 1);
        if (v50)
        {
          v51 = *(v17 + 14) | 0x11030000;
          v52 = v50 + 28;
          if (*v50 == v51)
          {
            v53 = 0;
LABEL_66:
            v57 = &v50[4 * v53];
            v58 = v57[1];
            if (v58)
            {
              free(v58);
            }

            *v57 = 0;
            v57[1] = 0;
            if (v53 <= 6)
            {
              v59 = v57 + 2;
              v60 = v53 - 7;
              do
              {
                *(v59 - 1) = *v59;
                ++v59;
                v43 = __CFADD__(v60++, 1);
              }

              while (!v43);
            }

            *v52 = 0;
            v52[1] = 0;
            *(v49 + 4) = 1;
            goto LABEL_76;
          }

          v53 = 0;
          v55 = v50 + 4;
          while (v53 != 7)
          {
            ++v53;
            v56 = *v55;
            v55 += 4;
            if (v56 == v51)
            {
              goto LABEL_66;
            }
          }
        }
      }

      v61 = a1[376];
      if (!v61)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on remove [%s]\n", "checkpoint_nvram_remove_lost", "checkpoint_nvram_remove_by_id", "not removed");
        v61 = a1[376];
      }

      a1[376] = v61 + 1;
LABEL_76:
      sub_10000E998(a1, 0x12u, v18);
      sub_10000E998(a1, 0x15u, *(v17 + 14));
      goto LABEL_77;
    }

    if (v19 == 6)
    {
      sub_10000EBE4(a1, 0xEu, *(v17 + 22), *(v17 + 18), v17[8]);
      goto LABEL_77;
    }
  }

  if (v19 == 3)
  {
    if (!*(v17 + 18))
    {
      v26 = a1[374] + 1;
      a1[374] = v26;
      v27 = *(v17 + 22);
      v28 = 92;
      if (!*(a1 + 104))
      {
        v28 = 44;
      }

      v29 = &a1[v28];
      v30 = *(v29 + 190);
      if (!v30)
      {
        goto LABEL_59;
      }

      v31 = 0;
      v32 = *(v29 + 190);
      do
      {
        v33 = *v32;
        v32 += 2;
        if (v33)
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

        if (v31 > 6)
        {
          break;
        }

        ++v31;
        v30 = v32;
      }

      while (!v34);
      if (v34)
      {
        *v34 = v27;
        v34[1] = v26;
        *(v29 + 1516) = 1;
      }

      else
      {
LABEL_59:
        v54 = a1[375];
        if (!v54)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_int", "dest_store == NULL");
          v54 = a1[375];
          v27 = *(v17 + 22);
        }

        a1[375] = v54 + 1;
      }

      sub_10000E858(a1, 0xCu, v27, v17[8]);
    }

    goto LABEL_76;
  }

  if (v19 == 1)
  {
    sub_10000E858(a1, 0xAu, *(v17 + 22), v17[8]);
  }

LABEL_77:
  *v17 = 0;
  **(a1 + 27) = v17;
  *(a1 + 27) = v17;
  v62 = a1[56] + 1;
  a1[56] = v62;
  if (v62 >= 0x201)
  {
    v63 = a1 + 52;
    do
    {
      v64 = *v63;
      v65 = **v63;
      *v63 = v65;
      if (!v65)
      {
        *(a1 + 27) = v63;
      }

      a1[56] = v62 - 1;
      v66 = v64[8];
      if (v66)
      {
        free(v66);
        v64[8] = 0;
      }

      v67 = v64[10];
      if (v67)
      {
        CFRelease(v67);
      }

      free(v64);
      v62 = a1[56];
    }

    while (v62 > 0x200);
  }

  memset(buffer, 0, 56);
  v95[0] = 0;
  gmtime_r(v17 + 2, buffer);
  v68 = *(v17 + 2);
  if (v68 > 0x21)
  {
    v69 = "GENERAL";
  }

  else
  {
    v69 = off_100025060[v68];
  }

  asprintf(v95, "[%02u:%02u:%02u.%04u-GMT]{%u>%u} CHECKPOINT %s", buffer[0].tm_hour, buffer[0].tm_min, buffer[0].tm_sec, *(v17 + 8) / 1000, *(v17 + 11), *(v17 + 10), v69);
  v70 = v95[0];
  *&buffer[0].tm_sec = 0;
  if (*(v17 + 19))
  {
    asprintf(buffer, "(FAILURE:%d) ");
  }

  else
  {
    v71 = *(v17 + 2);
    if (v71 <= 0x1C && ((1 << v71) & 0x18000080) != 0)
    {
      asprintf(buffer, "(SUCCESS) ", v92);
    }

    else
    {
      asprintf(buffer, " ", v92);
    }
  }

  v72 = *&buffer[0].tm_sec;
  if (!v70 || !*&buffer[0].tm_sec)
  {
    goto LABEL_158;
  }

  *&buffer[0].tm_sec = 0;
  if (*(v17 + 14))
  {
    v73 = *(v17 + 2);
    if (v73 == 28 || v73 == 1)
    {
      asprintf(buffer, "[0x%04X] %s");
    }

    else if (*(v17 + 12) == 1)
    {
      asprintf(buffer, "%s");
    }

    else
    {
      asprintf(buffer, "%s:[0x%04X] %s");
    }

    v74 = *&buffer[0].tm_sec;
  }

  else
  {
    v74 = 0;
  }

  v95[0] = 0;
  v75 = *(v17 + 2);
  if (v75 == 28)
  {
    *&buffer[0].tm_sec = 0;
    if (!*(v17 + 19))
    {
      asprintf(buffer, "... %s");
      goto LABEL_131;
    }

    v78 = sub_10000EDF4(a1, 9);
    v79 = sub_10000EEA4(a1, (a1 + 272), 0xCu);
    v80 = v79;
    v81 = a1[27];
    if (v81 > 6)
    {
      v82 = "GENERAL";
    }

    else
    {
      v82 = off_100025258[v81];
    }

    if (v78)
    {
      if (!v79)
      {
        asprintf(buffer, "[%s] %s", v82, v78);
        v84 = v78;
        goto LABEL_130;
      }

      asprintf(buffer, "[%s] %s %s", v82, v79, v78);
      free(v78);
    }

    else
    {
      if (!v79)
      {
        asprintf(buffer, "[%s]");
LABEL_131:
        v77 = *&buffer[0].tm_sec;
        if (v74)
        {
          goto LABEL_115;
        }

LABEL_132:
        if (v77)
        {
          asprintf(v95, "%s:%s %s", v70, v72, v77);
LABEL_135:
          v83 = 1;
          goto LABEL_136;
        }

LABEL_134:
        asprintf(v95, "%s:%s", v70, v72);
        v77 = 0;
        goto LABEL_135;
      }

      asprintf(buffer, "[%s] %s", v82, v79);
    }

    v84 = v80;
LABEL_130:
    free(v84);
    goto LABEL_131;
  }

  if (v75 == 27)
  {
    v76 = sub_10000EDF4(a1, 13);
    v77 = v76;
    if (*v76 == 123 && v76[1] == 125 && !v76[2])
    {
      free(v76);
      if (!v74)
      {
        goto LABEL_134;
      }

      goto LABEL_117;
    }
  }

  else
  {
    v77 = sub_10000D1B0(v17[10]);
  }

  if (!v74)
  {
    goto LABEL_132;
  }

LABEL_115:
  if (!v77)
  {
LABEL_117:
    asprintf(v95, "%s:%s%s", v70, v72, v74);
    v83 = 0;
    v77 = 0;
    goto LABEL_136;
  }

  asprintf(v95, "%s:%s%s %s", v70, v72, v74, v77);
  v83 = 0;
LABEL_136:
  v85 = v95[0];
  if (v95[0])
  {
    v93 = v83;
    if (*(v17 + 2) == 28)
    {
      if (a1[22] == 2)
      {
        v86 = 1;
      }

      else
      {
        v86 = 3;
      }
    }

    else
    {
      v86 = 1;
    }

    while (1)
    {
      ramrod_log_msg("%s\n", v85);
      if (*(v17 + 2) == 28)
      {
        ramrod_log_msg("\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n");
      }

      if (v86 < 2)
      {
        break;
      }

      --v86;
      sleep(1u);
    }

    v87 = v95[0];
    v88 = calloc(1uLL, 0x10uLL);
    if (v88)
    {
      v89 = v88;
      v88[1] = v87;
      if (*a1 == 1)
      {
        *v88 = 0;
        **(a1 + 63) = v88;
        *(a1 + 63) = v88;
      }

      else
      {
        pthread_mutex_lock(a1 + 4);
        v90 = *a1;
        *v89 = 0;
        **(a1 + 63) = v89;
        *(a1 + 63) = v89;
        if (v90 != 1)
        {
          pthread_mutex_unlock(a1 + 4);
        }
      }

      *(a1 + 232) = 1;
      v83 = v93;
    }

    else if (v87)
    {
      free(v87);
    }
  }

  if ((v83 & 1) == 0)
  {
    free(v74);
  }

  if (v77)
  {
    free(v77);
  }

LABEL_158:
  if (v70)
  {
    free(v70);
  }

  if (v72)
  {
    free(v72);
  }

  return v17;
}

void sub_10000C6C4(int *a1, unsigned int *a2)
{
  if (*(a2 + 4))
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): first available indication when already collected\n", "checkpoint_nvram_collect");
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = a2 + 2;
  do
  {
    sub_10000DF24(a1, *a2, v5, &v6[v4]);
    v7 = *a1;
    if ((v5 - 39) <= 3 && v7 == 2)
    {
      if (*&v6[2 * v5])
      {
        goto LABEL_13;
      }
    }

    else if (v5 >= 0x2B && v5 != 47 && v7 == 2)
    {
      v8 = *&v6[2 * v5];
      if (v8)
      {
        bzero(v9, 0x400uLL);
        sub_10000CAC0(v8, v9);
        sub_10000CB0C(a1, v5 - 4, v9);
LABEL_13:
        sub_10000C9BC(a1, v5, 0, 0);
      }
    }

    ++v5;
    v4 += 2;
  }

  while (v5 != 48);
  *(a2 + 4) = 1;
}

uint64_t sub_10000C810(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000EEA4(a1, a2, 5u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    if (!strcmp(v3, off_100025290[v4]))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      break;
    }
  }

  while (v4++ < 0x21);
  free(v3);
  return v5;
}

void sub_10000C88C(int *a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v4[0] = 0;
  va_copy(&v4[1], va);
  vasprintf(v4, a3, va);
  if (v4[0])
  {
    sub_10000BBC8(a1, 30, 1, 0, 260, v4[0], 0, 0, 0);
    sub_10000E858(a1, 8u, a1[30], v4[0]);
    if (v4[0])
    {
      free(v4[0]);
      v4[0] = 0;
    }
  }

  ++a1[30];
}

void sub_10000C92C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96);
  v3 = *(&off_1000253A0 + v2);
  if (*(v3 + 4 * a2))
  {
    v4 = a2;
    *(result + 92) = v2;
    v6 = *(v3 + 4 * a2);
    *(result + 96) = v6;
    if (v6 > 0x21)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = off_100025290[v6];
    }

    sub_10000CB0C(result, 5u, v7);

    sub_10000E720(result, v4);
  }
}

void sub_10000C9BC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a2 < 0x30)
  {
    v5 = &off_1000249D8[4 * a2];
    if (a3 || (*(v5 + 6) - 5) < 0xFFFFFFFD)
    {
      bzero(buffer, 0x400uLL);
      if (*(a1 + 88) == 1)
      {
        v6 = v5;
      }

      else
      {
        v6 = (v5 + 1);
      }

      v7 = *v6;
      CFStringGetCString(*v6, buffer, 1024, 0x8000100u);
      sub_10000E65C(v7);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of BOOT-CONTROL NVRAM ID %u\n");
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid delete of NVRAM ID %u\n");
  }
}

char *sub_10000CAC0(const __CFString *a1, char *a2)
{
  if (a1)
  {
    CFStringGetCString(a1, a2, 1024, 0x8000100u);
  }

  else
  {
    bzero(a2, 0x400uLL);
  }

  return a2;
}

void sub_10000CB0C(uint64_t result, unsigned int a2, const char *a3)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v5 = 0;
      v6 = result + 1512;
      goto LABEL_7;
    }

    a2 = off_1000249D8[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_12;
  }

  v5 = a2;
  v6 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0xFFFC000000FEuLL >> v5))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      if (*v7)
      {
        free(*v7);
        *v7 = 0;
      }

      sub_10000ED4C(result + 1480, v7, a3);
      *(v6 + 4) = 1;
      return;
    }
  }

LABEL_12:
  v8 = *(result + 1500);
  if (!v8)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_string", "wrong type or internalStore.string == NULL");
    v8 = *(result + 1500);
  }

  *(result + 1500) = v8 + 1;
}

void sub_10000CC20(_DWORD *result)
{
  if (result)
  {
    if (*result != 1)
    {
      v2 = (result + 2);

      pthread_mutex_lock(v2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", "checkpoint_access_obtain");
  }
}

void sub_10000CC7C(_DWORD *result)
{
  if (result)
  {
    if (*result != 1)
    {
      v2 = (result + 2);

      pthread_mutex_unlock(v2);
    }
  }

  else
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): checkpoint context not initialized\n", "checkpoint_access_yield");
  }
}

timeval *sub_10000CCD8()
{
  v0 = calloc(1uLL, 0x18uLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v0[1].tv_sec = mach_absolute_time();
  gettimeofday(v1, 0);
  return v1;
}

timeval *checkpoint_closure_context_set_start_time(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 72) = 1;
    free(v2);
  }

  result = sub_10000CCD8();
  *(a1 + 56) = result;
  return result;
}

timeval *checkpoint_closure_context_set_end_time(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  result = sub_10000CCD8();
  *(a1 + 64) = result;
  return result;
}

void checkpoint_closure_context_set_encountered_async_error(_DWORD *result, uint64_t a2, __CFError *a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = qword_10002E628;
    if (!sub_10000CEC0(a3))
    {
      v7 = *(result + 1);
      if (!v7 || (*(v7 + 36) & 3) == 0 || !sub_10000CF18(v6, v7))
      {
        sub_10000CC20(v6);
        v8 = (v6 + 48);
        v9 = (v6 + 48);
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if (*(v9 + 32) == result[19])
          {
            goto LABEL_12;
          }
        }

        v9 = *v8;
        if (!*v8)
        {
          sub_10000D108(v6, v4, a3, *(result + 1));
          goto LABEL_19;
        }

LABEL_12:
        if (!*(v9 + 144) && !*(v9 + 137))
        {
          sub_10000CFFC(v9, v4, a3, *(result + 1));
          for (i = *v8; i != v9; i = *i)
          {
            sub_10000D0A4(i);
          }

          sub_10000D0A4(v9);
        }

LABEL_19:

        sub_10000CC7C(v6);
      }
    }
  }
}

__CFError *sub_10000CEC0(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 1)
    {
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(Domain, @"CheckpointEngineErrorDomain") != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000CF18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 984);
  if (v4)
  {
    v5 = CFStringCompare(v4, @"true", 0) == kCFCompareEqualTo;
  }

  else
  {
    v5 = 0;
  }

  should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
  v7 = *(a1 + 88);
  v8 = (v7 == 1) & (should_do_legacy_restored_internal_behaviors ^ 1 | v5);
  v9 = v7 != 2 || v5;
  if (v9 != 1 || v8 != 0)
  {
    v11 = *(a2 + 36);
    if ((v11 & 3) != 0)
    {
      if ((v11 & 2) == 0)
      {
        return 1;
      }

      v13 = 0;
      v14 = a2 + 40;
      do
      {
        v15 = *(v14 + v13);
        if (!v15)
        {
          break;
        }

        v16 = sub_10000EF9C(*(a1 + 2280), v15);
        if (v16 && (!*(a1 + 104) || *(v16 + 48) == 1 && *(v16 + 14)))
        {
          return 1;
        }

        v13 += 4;
      }

      while (v13 != 40);
    }
  }

  return 0;
}

__n128 sub_10000CFFC(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (sub_10000CEC0(a3))
  {
    abort();
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 144) = 0;
  free(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  if (a3)
  {
    if (!a4)
    {
      sub_100013CBC();
    }

    *(a1 + 152) = a2;
    *(a1 + 144) = CFRetain(a3);
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 160) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

void *sub_10000D0A4(void *result)
{
  if (!*(result + 137))
  {
    v1 = result;
    v2 = result[2];
    if (*v2)
    {
      v3 = v2 + 24;
      do
      {
        result = *(v3 - 2);
        if (result)
        {
          if (!*(v3 - 8))
          {
            result = [result cancel];
          }
        }

        v4 = *v3;
        v3 += 24;
      }

      while (v4);
    }

    *(v1 + 137) = 1;
  }

  return result;
}

__n128 sub_10000D108(uint64_t a1, int a2, __CFError *a3, uint64_t a4)
{
  if (sub_10000CEC0(a3))
  {
    abort();
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 168) = 0;
  free(*(a1 + 184));
  *(a1 + 184) = 0;
  *(a1 + 176) = 0;
  if (a3)
  {
    if (!a4)
    {
      sub_100013CE8();
    }

    CFRetain(a3);
    *(a1 + 176) = a2;
    *(a1 + 168) = a3;
    v10 = calloc(1uLL, 0x60uLL);
    *(a1 + 184) = v10;
    v11 = *(a4 + 16);
    *v10 = *a4;
    v10[1] = v11;
    result = *(a4 + 64);
    v12 = *(a4 + 80);
    v14 = *(a4 + 32);
    v13 = *(a4 + 48);
    v10[4] = result;
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
  }

  return result;
}

char *sub_10000D1B0(CFErrorRef err)
{
  if (!err)
  {
    return 0;
  }

  v1 = err;
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = CFErrorCopyUserInfo(v1);
    v2 = sub_10000DCCC(v2, "[%d]", v3);
    if (!v4)
    {
      break;
    }

    v16 = 0;
    Value = CFDictionaryGetValue(v4, kCFErrorLocalizedRecoverySuggestionKey);
    v6 = sub_10000F034(v2, "RS", Value, &v16);
    v7 = CFDictionaryGetValue(v4, kCFErrorLocalizedDescriptionKey);
    v8 = sub_10000F034(v6, "LD", v7, &v16);
    v9 = CFDictionaryGetValue(v4, kCFErrorDescriptionKey);
    v10 = sub_10000F034(v8, "D", v9, &v16);
    v11 = CFDictionaryGetValue(v4, kCFErrorLocalizedFailureReasonKey);
    v2 = sub_10000F034(v10, "FR", v11, &v16);
    v1 = CFDictionaryGetValue(v4, kCFErrorUnderlyingErrorKey);
    CFRelease(v4);
    if (!v1)
    {
      break;
    }
  }

  while (v3++ < 0xF);
  v13 = strlen(v2);
  if (v13 >= 0xF3)
  {
    v15 = 0;
    asprintf(&v15, "%s", &v2[v13 - 242]);
    if (v2)
    {
      free(v2);
    }

    return v15;
  }

  return v2;
}

uint64_t checkpoint_closure_context_get_step_desc(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t checkpoint_closure_context_should_retry(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 48);
    *(result + 48) = v1 + 1;
    return !*(result + 19) && v1 < *(*result + 28);
  }

  return result;
}

uint64_t checkpoint_closure_context_handle_simulator_actions(uint64_t *a1, uint64_t a2, int *a3, __CFError **a4)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n", a2);
    return a2;
  }

  if (!qword_10002E628)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n", a2, a3);
    return a2;
  }

  v5 = *a1;
  v6 = qword_10002E628;

  return sub_10000D470(v6, v5, a2, a3, a4);
}

uint64_t sub_10000D470(uint64_t a1, uint64_t a2, unsigned int a3, int *a4, __CFError **a5)
{
  if (a5 && sub_10000CEC0(*a5))
  {
    return 0;
  }

  v11 = a3;
  sub_10000CC20(a1);
  sub_10000F108(a1);
  if (!*(a1 + 2300) || !*(a1 + 2312))
  {
    goto LABEL_17;
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
  Count = CFArrayGetCount(*(a1 + 2312));
  if (Count < 1)
  {
    v20 = 0;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), 0);
  if (CFStringCompare(v12, ValueAtIndex, 0) == kCFCompareEqualTo)
  {
    v20 = 1;
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFRelease(v12);
    goto LABEL_13;
  }

  v16 = 1;
  do
  {
    v17 = v16;
    if (v14 == v16)
    {
      break;
    }

    v18 = CFArrayGetValueAtIndex(*(a1 + 2312), v16);
    v19 = CFStringCompare(v12, v18, 0);
    v16 = v17 + 1;
  }

  while (v19);
  v20 = v17 < v14;
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v20)
  {
    v21 = *(a1 + 2308);
    if (!v21)
    {
      if (a3)
      {
        sub_10000BBC8(a1, *(a1 + 2300), 1, 0, *a2, *(a2 + 8), *(a1 + 2304), *a4, *a5);
      }

      sub_10000CC7C(a1);
      v26 = 0;
      v22 = 0;
      switch(*(a1 + 2300))
      {
        case 9:
          goto LABEL_77;
        case 0xA:
          if (*(a1 + 2299) == a3)
          {
            *a4 = 181;
            ramrod_create_error_cf(a5, @"CheckpointErrorDomain", 181, 0, @"checkpoint simulator error", v23, v24, v25, v35);
          }

          goto LABEL_73;
        case 0xB:
          if (*(a1 + 2299) == a3)
          {
            abort();
          }

          goto LABEL_73;
        case 0xC:
          if (*(a1 + 2299) == a3)
          {
            exit(182);
          }

          goto LABEL_73;
        case 0xD:
          if (*(a1 + 2299) == a3)
          {
            _exit(183);
          }

          goto LABEL_73;
        case 0xE:
          if (*(a1 + 2299) == a3)
          {
            for (i = 0; ; ++i)
            {
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator signal executing after dereference of %p [%d]\n", "checkpoint_simulator_action", i, *i);
            }
          }

          goto LABEL_73;
        case 0xF:
          if (*(a1 + 2299) == a3)
          {
              ;
            }
          }

          goto LABEL_73;
        case 0x10:
          if (*(a1 + 2299) == a3)
          {
            memset(&v37, 0, sizeof(v37));
            v36.__sig = 0;
            *v36.__opaque = 0;
            pthread_mutexattr_init(&v36);
            pthread_mutex_init(&v37, &v36);
            pthread_mutex_lock(&v37);
            pthread_mutex_lock(&v37);
          }

          goto LABEL_73;
        case 0x11:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          v30 = mach_host_self();
          v31 = 0;
          goto LABEL_72;
        case 0x12:
          goto LABEL_51;
        case 0x13:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator PAUSE not supported\n");
          goto LABEL_73;
        case 0x14:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator RESUME not supported\n");
          goto LABEL_73;
        case 0x15:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          __break(1u);
LABEL_51:
          if (*(a1 + 2299) != a3)
          {
            goto LABEL_73;
          }

          v30 = mach_host_self();
          v31 = 4096;
LABEL_72:
          host_reboot(v30, v31);
LABEL_73:
          v22 = 0;
LABEL_74:
          v26 = a3;
LABEL_75:
          if (!a3)
          {
            goto LABEL_77;
          }

          v11 = v26;
          if (!v26)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        case 0x16:
          v22 = a3 == 0;
          goto LABEL_74;
        case 0x17:
          v22 = 0;
          if (*(a1 + 2299) == a3)
          {
            v26 = 0;
          }

          else
          {
            v26 = a3;
          }

          if (a3 || *(a1 + 2299))
          {
            goto LABEL_75;
          }

          if (*a4)
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s result: %d\n", "checkpoint_simulator_action", *(a2 + 8), *a4);
            *a4 = 0;
            if (*a5)
            {
              v28 = sub_10000D1B0(*a5);
              if (v28)
              {
                v29 = v28;
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator ignoring error on step %s error: %s\n", "checkpoint_simulator_action", *(a2 + 8), v28);
                free(v29);
              }

              CFRelease(*a5);
              v26 = 0;
              v22 = 0;
              *a5 = 0;
LABEL_77:
              v33 = *(a1 + 2304);
              if (v33)
              {
                v34 = v33 - 1;
                *(a1 + 2304) = v34;
                if (!v34)
                {
                  *(a1 + 2300) = 0;
                }
              }

              v11 = v26;
              goto LABEL_18;
            }
          }

          else
          {
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): checkpoint simulator to ignore error on step %s, but step was successful\n", "checkpoint_simulator_action", *(a2 + 8));
          }

          v26 = 0;
          v22 = 0;
          goto LABEL_77;
        case 0x18:
          if (*(a1 + 2299) == a3)
          {
            sub_10000F33C();
            ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): returned from checkpoint jetsam attempt; continuing engine\n");
          }

          goto LABEL_73;
        case 0x19:
          if (*(a1 + 2299) == a3)
          {
            v27 = fork();
            if (v27 < 1)
            {
              if (!v27)
              {
                sub_10000F33C();
                exit(0);
              }

              __error();
              ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d attempting to fork jetsam child\n");
            }

            else
            {
              LODWORD(v37.__sig) = 0;
              if (waitpid(v27, &v37, 0) < 0)
              {
                __error();
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): error %d waiting for jetsam child\n");
              }

              else if ((v37.__sig & 0x7F) == 0x7F)
              {
                ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unexpected status of jetsam child: %d\n");
              }

              else if ((v37.__sig & 0x7F) != 0)
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child signalled: %d\n");
              }

              else
              {
                ramrod_log_msg("CHECKPOINT_SIMULATOR_NOTICE(%s): jetsam child exited: %d\n");
              }
            }
          }

          goto LABEL_73;
        default:
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unknown simulator command ignored\n", "checkpoint_simulator_action");
          v22 = 0;
          v26 = 1;
          goto LABEL_75;
      }
    }

    if (!a3)
    {
      *(a1 + 2308) = v21 - 1;
    }
  }

LABEL_17:
  sub_10000CC7C(a1);
  v22 = 0;
LABEL_18:
  if (a3)
  {
    return v11;
  }

  else
  {
    return v22;
  }
}

uint64_t checkpoint_closure_context_handle_simulator_match_name(uint64_t *a1)
{
  if (!a1)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): closure context is NULL\n");
    return 0;
  }

  if (!qword_10002E628)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): %s called too early, checkpoint_chassis_context == NULL\n");
    return 0;
  }

  v1 = *a1;
  v2 = qword_10002E628;

  return sub_10000DAE4(v2, v1);
}

uint64_t sub_10000DAE4(uint64_t a1, uint64_t a2)
{
  sub_10000CC20(a1);
  sub_10000F108(a1);
  if (*(a1 + 2300))
  {
    Count = CFArrayGetCount(*(a1 + 2312));
    v5 = CFStringCreateWithCString(kCFAllocatorDefault, *(a2 + 8), 0x8000100u);
    if (Count < 1)
    {
LABEL_6:
      v8 = 0;
    }

    else
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2312), v6);
        if (CFStringCompare(v5, ValueAtIndex, 0) == kCFCompareEqualTo)
        {
          break;
        }

        if (Count == ++v6)
        {
          goto LABEL_6;
        }
      }

      v8 = 1;
    }

    sub_10000CC7C(a1);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    sub_10000CC7C(a1);
    return 0;
  }

  return v8;
}

char *sub_10000DBDC(char *a1, const char *a2, const char *a3, int *a4)
{
  v11 = 0;
  v12 = 0;
  asprintf(&v12, "%s:%s", a2, a3);
  v6 = v12;
  if (!v12)
  {
    return a1;
  }

  if (!a1)
  {
    return v12;
  }

  v7 = strlen(a1);
  v8 = strlen(v12);
  v9 = 1;
  if (*a4 > 0)
  {
    v9 = 2;
  }

  if (v8 + v7 + v9 >= 0x81)
  {
    v11 = a1;
LABEL_13:
    free(v6);
    return v11;
  }

  if (*a4 <= 0)
  {
    asprintf(&v11, "%s%s");
  }

  else
  {
    asprintf(&v11, "%s;%s");
  }

  ++*a4;
  free(a1);
  v6 = v12;
  if (v12)
  {
    goto LABEL_13;
  }

  return v11;
}

char *sub_10000DCCC(char *a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = 0;
  v5[0] = 0;
  va_copy(&v5[1], va);
  vasprintf(v5, a2, va);
  if (!v5[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v5[0];
  }

  asprintf(&v4, "%s%s", a1, v5[0]);
  if (v4)
  {
    free(a1);
  }

  else
  {
    v4 = a1;
  }

  if (v5[0])
  {
    free(v5[0]);
    v5[0] = 0;
  }

  return v4;
}

char *sub_10000DD6C(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "0x%08X", a2);
  if (v8)
  {
    a1 = sub_10000DBDC(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

char *sub_10000DDE4(char *a1, int a2, const char *a3, int *a4)
{
  v8 = 0;
  asprintf(&v8, "%d", a2);
  if (v8)
  {
    a1 = sub_10000DBDC(a1, v8, a3, a4);
    if (v8)
    {
      free(v8);
    }
  }

  return a1;
}

void sub_10000DE5C(uint64_t a1, int a2)
{
  if (*a1 == 1)
  {
    if (a2)
    {
      if (*(a1 + 104))
      {
        v3 = 17;
        goto LABEL_14;
      }

      v4 = *(a1 + 101) == 0;
      v3 = 5;
    }

    else
    {
      v4 = *(a1 + 88) == 2;
      v3 = 1;
    }
  }

  else if (a2)
  {
    if (*(a1 + 104))
    {
      v3 = 19;
      goto LABEL_14;
    }

    v4 = *(a1 + 101) == 0;
    v3 = 7;
  }

  else
  {
    v4 = *(a1 + 88) == 2;
    v3 = 3;
  }

  if (!v4)
  {
    ++v3;
  }

LABEL_14:
  *(a1 + 96) = v3;
  sub_10000CB0C(a1, 5u, off_100025290[v3]);

  sub_10000E720(a1, 1);
}

void sub_10000DF24(int *a1, unsigned int a2, unsigned int a3, const __CFString **a4)
{
  cf = 0;
  bzero(buffer, 0x400uLL);
  bzero(v18, 0x400uLL);
  if (a3 < 0x30)
  {
    if (a1[22] == 1)
    {
      v9 = &off_1000249D8[4 * a3];
    }

    else
    {
      v9 = &off_1000249D8[4 * a3 + 1];
    }

    CFStringGetCString(*v9, buffer, 1024, 0x8000100u);
    v10 = ramrod_copy_NVRAM_variable();
    if (!v10)
    {
      return;
    }

    v8 = v10;
    v11 = CFGetTypeID(v10);
    if (v11 == CFStringGetTypeID())
    {
      CFStringGetCString(v8, v18, 1024, 0x8000100u);
      *a4 = v8;
      v8 = 0;
      goto LABEL_22;
    }

    if (v11 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr) = 0;
      if (!CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
      {
        v13 = "CHECKPOINT_INTERNAL_ERROR(%s): number that is not an int %s\n";
        goto LABEL_29;
      }

      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", valuePtr);
      if (!v12)
      {
        v13 = "CHECKPOINT_INTERNAL_ERROR(%s): failed to get valid number for %s\n";
LABEL_29:
        ramrod_log_msg(v13, "checkpoint_nvram_collect_var", buffer);
        goto LABEL_3;
      }
    }

    else
    {
      if (v11 != CFDataGetTypeID())
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unsupported nvram variable type for %s\n");
        goto LABEL_3;
      }

      v12 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
      if (!v12)
      {
        ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): failed to get string from data %s\n");
        goto LABEL_3;
      }
    }

    v14 = v12;
    CFStringGetCString(v12, v18, 1024, 0x8000100u);
    *a4 = v14;
LABEL_22:
    valuePtr = 0;
    if (a2 > 2)
    {
      v15 = "Unknown";
    }

    else
    {
      v15 = off_100024FD8[a2];
    }

    asprintf(&valuePtr, "%s NVRAM variable: %s=%s", v15, buffer, v18);
    if (valuePtr)
    {
      sub_10000BBC8(a1, 2, 1, 0, 257, valuePtr, 0, 0, 0);
      free(valuePtr);
    }

    goto LABEL_3;
  }

  ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable id=%u\n");
  v8 = 0;
LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t sub_10000E20C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      return 0;
    }

    else
    {
      return LODWORD(off_1000249D8[4 * a2 + 2]);
    }
  }

  return a2;
}

uint64_t sub_10000E274(int *a1, uint64_t a2, unsigned int *a3)
{
  memset(v23, 0, sizeof(v23));
  v4 = *a3;
  v5 = 1;
  v6 = 0;
  if (*a3)
  {
    v7 = 0;
    v20 = a2;
    v8 = a2 + 8;
    v9 = a3 + 2;
    do
    {
      *(v23 + v4) = 1;
      if (*(v8 + 8 * v4))
      {
        if (*(v9 - 3))
        {
          v6 = 1;
        }

        if (*(v9 - 2))
        {
          v7 = 1;
        }

        if (*(v9 - 1))
        {
          v10 = v4 <= 0x2F && (LODWORD(off_1000249D8[4 * v4 + 3]) - 2) < 3;
          sub_10000C9BC(a1, v4, v10, 1);
        }
      }

      else if (*(v9 - 4))
      {
        bzero(buffer, 0x400uLL);
        if (v4 >= 0x30)
        {
          ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_get_nvram_name", v4);
          v4 = 0;
        }

        if (a1[22] == 1)
        {
          v11 = &off_1000249D8[4 * v4];
        }

        else
        {
          v11 = &off_1000249D8[4 * v4 + 1];
        }

        CFStringGetCString(*v11, buffer, 1024, 0x8000100u);
        sub_10000C88C(a1, v12, "[check_collection]%s(does_not_exist)", buffer);
      }

      v13 = *v9;
      v9 += 2;
      v4 = v13;
    }

    while (v13);
    v5 = v7 == 0;
    a2 = v20;
  }

  v14 = 0;
  v15 = a2 + 16;
  v16 = off_1000249F8;
  do
  {
    if (!*(v23 + v14 + 1) && *(v15 + 8 * v14))
    {
      bzero(buffer, 0x400uLL);
      bzero(v21, 0x400uLL);
      if (a1[22] == 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = (v16 + 1);
      }

      CFStringGetCString(*v17, buffer, 1024, 0x8000100u);
      sub_10000CAC0(*(v15 + 8 * v14), v21);
      sub_10000C88C(a1, v18, "[check_collection]%s=%s(exists_when_not_expected)", buffer, v21);
      sub_10000C9BC(a1, v14 + 1, 0, 1);
    }

    ++v14;
    v16 += 4;
  }

  while (v14 != 47);
  if (!v5)
  {
    sub_10000BBC8(a1, 2, 1, 0, 262, "Old restore failure indication(s)", 0, 0, 0);
  }

  return v6;
}

void sub_10000E50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 && CFStringCompare(v3, @"upgrade", 0) == kCFCompareEqualTo)
  {

    sub_10000C9BC(a1, 2u, 1, 0);
  }
}

void sub_10000E574(int *a1, const __CFString *a2)
{
  if (*(a1 + 100))
  {
    *(a1 + 104) = 1;
    *(a1 + 101) = 1;

    ramrod_log_msg("AP nonce will not be touched\n", a2);
  }

  else
  {
    bzero(v5, 0x400uLL);
    sub_10000CAC0(a2, v5);
    sub_10000C88C(a1, v4, "[reboot_retry_chassis]outcome=%s(pre_existing_reboot_retry_disabled)", v5);
  }
}

void sub_10000E65C(const __CFString *a1)
{
  bzero(buffer, 0x400uLL);
  CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  ramrod_delete_NVRAM_variable();
}

void sub_10000E720(uint64_t a1, int a2)
{
  v7 = 0;
  v3 = *(a1 + 92);
  if (v3 > 0x21)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_100025290[v3];
  }

  v5 = *(a1 + 96);
  if (v5 > 0x21)
  {
    v6 = "unknown";
  }

  else
  {
    v6 = off_100025290[v5];
  }

  asprintf(&v7, "%s (%s) -> (%s)", off_100024FF0[a2], v4, v6);
  if (v7)
  {
    sub_10000BBC8(a1, 29, 1, 0, 260, v7, 0, 0, 0);
    if (v7)
    {
      free(v7);
    }
  }
}

uint64_t sub_10000E7E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000E20C(a1, a2);
  if (v3 > 0x2F)
  {
    v4 = 0;
  }

  else
  {
    v4 = HIDWORD(off_1000249D8[4 * v3 + 2]);
  }

  v5 = checkpoint_nvram_encoder[v4];
  v6 = *(a1 + 16 * v3 + 1520);

  return (v5)(a1, v6);
}

void sub_10000E858(uint64_t result, unsigned int a2, int a3, const char *a4)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v7 = 0;
      v8 = result + 1512;
      goto LABEL_7;
    }

    a2 = off_1000249D8[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_18;
  }

  v7 = a2;
  v8 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0x20420400uLL >> v7))
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      goto LABEL_21;
    }
  }

  if ((0x1001100uLL >> v7))
  {
    v10 = *(v8 + 8);
    if (v10)
    {
      v11 = 0;
      v9 = v10 - 16;
      do
      {
        v13 = *(v9 + 16);
        v9 += 16;
        v12 = v13;
        if (v13)
        {
          v14 = v11 >= 7;
        }

        else
        {
          v14 = 1;
        }

        ++v11;
      }

      while (!v14);
      if (!v12)
      {
LABEL_21:
        *v9 = a3;
        sub_10000ED4C(result + 1480, (v9 + 8), a4);
        *(v8 + 4) = 1;
        return;
      }
    }
  }

LABEL_18:
  v15 = *(result + 1500);
  if (!v15)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id", "dest_store == NULL");
    v15 = *(result + 1500);
  }

  *(result + 1500) = v15 + 1;
}

void sub_10000E998(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v5 = 0;
      v6 = result + 1512;
      goto LABEL_7;
    }

    a2 = off_1000249D8[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_10;
  }

  v5 = a2;
  v6 = result + 16 * a2 + 1512;
LABEL_7:
  if ((0x3C03C0000uLL >> v5))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      *v7 = a3;
      *(v6 + 4) = 1;
      return;
    }
  }

LABEL_10:
  v8 = *(result + 1500);
  if (!v8)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_long", "wrong type or internalStore.longVal == NULL");
    v8 = *(result + 1500);
  }

  *(result + 1500) = v8 + 1;
}

void sub_10000EA88(uint64_t result, unsigned int a2, int a3, int a4, int a5)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v9 = 0;
      v10 = result + 1512;
      goto LABEL_7;
    }

    a2 = off_1000249D8[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v9 = a2;
  v10 = result + 16 * a2 + 1512;
LABEL_7:
  if (((0xA00A000uLL >> v9) & 1) != 0 && a4 <= 7)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v10 + 8);
      do
      {
        v17 = *v15;
        v15 += 11;
        v16 = v17;
        if (v17)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        v19 = v16 == a3;
        if (v16 == a3)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (!v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >= 7;
        }

        ++v13;
        v12 = v15;
      }

      while (!v21);
      if (v20)
      {
        v14 = v20;
      }

      if (v14)
      {
        *v14 = a3;
        v14[a4 + 1] = a5;
        *(v14 + a4 + 36) = 1;
        *(v10 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v11 = *(result + 1500);
  if (!v11)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_try_int", "dest_store == NULL");
    v11 = *(result + 1500);
  }

  *(result + 1500) = v11 + 1;
}

void sub_10000EBE4(uint64_t result, unsigned int a2, int a3, int a4, const char *a5)
{
  if (*(result + 104))
  {
    if (a2 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a2);
      v9 = 0;
      v10 = result + 1512;
      goto LABEL_7;
    }

    a2 = off_1000249D8[4 * a2 + 2];
  }

  if (a2 > 0x2F)
  {
    goto LABEL_8;
  }

  v9 = a2;
  v10 = result + 16 * a2 + 1512;
LABEL_7:
  if (((0x14014000uLL >> v9) & 1) != 0 && a4 <= 7)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v10 + 8);
      do
      {
        v17 = *v15;
        v15 += 18;
        v16 = v17;
        if (v17)
        {
          v18 = v14;
        }

        else
        {
          v18 = v12;
        }

        v19 = v16 == a3;
        if (v16 == a3)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (!v19)
        {
          v14 = v18;
        }

        if (v20)
        {
          v21 = 1;
        }

        else
        {
          v21 = v13 >= 7;
        }

        ++v13;
        v12 = v15;
      }

      while (!v21);
      if (v20)
      {
        v14 = v20;
      }

      if (v14)
      {
        *v14 = a3;
        sub_10000ED4C(result + 1480, &v14[2 * a4 + 2], a5);
        *(v10 + 4) = 1;
        return;
      }
    }
  }

LABEL_8:
  v11 = *(result + 1500);
  if (!v11)
  {
    ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_by_id_try", "dest_store == NULL");
    v11 = *(result + 1500);
  }

  *(result + 1500) = v11 + 1;
}

void sub_10000ED4C(uint64_t a1, char **a2, const char *a3)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    if (a3)
    {
      asprintf(a2, "%s", a3);
    }
  }

  else
  {
    v6 = *(a1 + 20);
    if (!v6)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): {%s} tracking information lost on store [%s]\n", "checkpoint_nvram_store_lost", "checkpoint_nvram_store_set_string", "dest == NULL");
      v6 = *(a1 + 20);
    }

    *(a1 + 20) = v6 + 1;
  }
}

char *sub_10000EDF4(uint64_t a1, uint64_t a2)
{
  result = sub_10000E7E8(a1, a2);
  v4 = 0;
  if (result)
  {
    v3 = result;
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v3, buffer, 1024, 0x8000100u);
    asprintf(&v4, "%s", buffer);
    CFRelease(v3);
    return v4;
  }

  return result;
}

char *sub_10000EEA4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 0;
  if (*(a1 + 104))
  {
    if (a3 > 0x2F)
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): invalid variable ID=%d\n", "checkpoint_nvram_adjust_id", a3);
      a3 = 0;
    }

    else
    {
      a3 = off_1000249D8[4 * a3 + 2];
    }
  }

  v4 = *(a2 + 8 * a3 + 8);
  if (!v4)
  {
    return 0;
  }

  bzero(buffer, 0x400uLL);
  CFStringGetCString(v4, buffer, 1024, 0x8000100u);
  asprintf(&v6, "%s", buffer);
  return v6;
}

const __CFDictionary *sub_10000EF9C(const __CFDictionary *a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(v2, v3);
      if (Value)
      {
        v2 = *(Value + 2);
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): unable to create step ID number for tolerated failure lookup\n", "checkpoint_tolerated_get_failed_entry");
      return 0;
    }
  }

  return v2;
}

char *sub_10000F034(char *a1, uint64_t a2, const __CFString *a3, _BYTE *a4)
{
  if (a3)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a3, buffer, 1024, 0x8000100u);
    if (*a4)
    {
      v7 = sub_10000DCCC(a1, "|%s(%s)");
    }

    else
    {
      v7 = sub_10000DCCC(a1, "%s(%s)");
    }

    a1 = v7;
    *a4 = 1;
  }

  return a1;
}

void sub_10000F108(uint64_t result)
{
  if (!*(result + 2298) && sub_10000B2DC(result, 0, 0))
  {
    if (!*(result + 1016))
    {
      goto LABEL_23;
    }

    bzero(__s, 0x400uLL);
    bzero(v14, 0x400uLL);
    *(result + 2300) = 0;
    *(result + 2312) = 0;
    __strlcpy_chk();
    v2 = strlen(__s);
    CFStringGetCString(*(result + 1016), &__s[v2], 1024 - v2, 0x8000100u);
    __strlcpy_chk();
    v3 = strlen(v14);
    CFStringGetCString(*(result + 1016), &v14[v3], 1024 - v3, 0x8000100u);
    v4 = 0;
    while (1)
    {
      v5 = off_100025060[v4];
      if (!strncasecmp(__s, v5, 0x400uLL))
      {
        *(result + 2300) = v4;
        goto LABEL_11;
      }

      if (!strncasecmp(v14, v5, 0x400uLL))
      {
        break;
      }

      if (++v4 == 34)
      {
        LODWORD(v4) = *(result + 2300);
        goto LABEL_11;
      }
    }

    *(result + 2300) = v4;
    *(result + 2299) = 1;
LABEL_11:
    if (!v4)
    {
      goto LABEL_23;
    }

    v6 = *(result + 1040);
    if (v6)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v6, @",");
      *(result + 2312) = ArrayBySeparatingStrings;
      if (ArrayBySeparatingStrings)
      {
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(result + 2312), i);
            CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
          }
        }

        v12 = *(result + 1024);
        if (v12)
        {
          *(result + 2304) = CFStringGetIntValue(v12);
        }

        v13 = *(result + 1032);
        if (v13)
        {
          *(result + 2308) = CFStringGetIntValue(v13);
        }

        goto LABEL_23;
      }
    }

    else
    {
      ramrod_log_msg("CHECKPOINT_INTERNAL_ERROR(%s): simulator command without stepName\n", "checkpoint_simulator_configure");
    }

    *(result + 2300) = 0;
LABEL_23:
    *(result + 2298) = 1;
  }
}

void *sub_10000F33C()
{
  v5 = 0;
  v0 = &v5;
  v1 = 0x100000;
  do
  {
    v2 = malloc(v1);
    *v0 = v2;
    if (v2)
    {
      bzero(v2, v1);
      v0 = *v0;
    }

    else
    {
      v1 >>= 1;
    }
  }

  while (v1 > 4095);
  result = v5;
  if (v5)
  {
    do
    {
      v4 = *result;
      free(result);
      result = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_10000F3BC(uint64_t a1)
{
  v1 = MGCopyAnswer();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v2);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v2);
  return Value;
}

uint64_t ramrod_device_has_baseband(uint64_t a1, uint64_t a2)
{
  if (qword_10002E668 != -1)
  {
    sub_100013D14();
  }

  return byte_10002E670;
}

void sub_10000F45C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID() && CFStringHasPrefix(v2, @"int"))
    {
      byte_10002E670 = 1;
    }

    CFRelease(v2);
  }
}

const __CFDictionary *ramrod_device_has_stockholm()
{
  result = IOServiceMatching("AppleStockholmControl");
  if (result)
  {
    result = IOServiceGetMatchingService(kIOMasterPortDefault, result);
    if (result)
    {
      IOObjectRelease(result);
      return 1;
    }
  }

  return result;
}

uint64_t _ramrod_device_has_sandcat(uint64_t a1, uint64_t a2)
{
  if (qword_10002E680 != -1)
  {
    sub_100013D28();
  }

  return byte_10002E678;
}

void sub_10000F560(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/Sandcat");
  if (v1)
  {
    byte_10002E678 = 1;

    IOObjectRelease(v1);
  }
}

uint64_t ramrod_connect_to_ioservice(const char *a1, io_service_t *a2, io_connect_t *a3)
{
  v5 = IOServiceMatching(a1);
  if (v5)
  {
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
    if (MatchingService)
    {
      v7 = MatchingService;
      connect = 0;
      if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
      {
        *a2 = v7;
        *a3 = connect;
        return 1;
      }

      ramrod_log_msg("IOServiceOpen failed for class '%s'\n");
    }

    else
    {
      ramrod_log_msg("IOServiceGetMatchingService failed\n");
    }
  }

  else
  {
    ramrod_log_msg("IOServiceMatching failed for %s\n");
  }

  return 0;
}

uint64_t ramrod_generate_apslot_copy_nonce(_DWORD *a1, CFDataRef *a2)
{
  v14 = 4;
  *connection = 0;
  v13 = 32;
  *bytes = 0u;
  v17 = 0u;
  if (!ramrod_connect_to_ioservice("AppleMobileApNonce", &connection[1], connection))
  {
    ramrod_log_msg("Failed to connect to AppleMobileApNonce to generate AP nonce slot.\n");
    goto LABEL_5;
  }

  v4 = connection[0];
  v5 = IOConnectCallMethod(connection[0], 0xC8u, 0, 0, 0, 0, 0, 0, bytes, &v13);
  if (v5)
  {
    mach_error_string(v5);
    ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n");
LABEL_5:
    outputStruct = 0;
    goto LABEL_6;
  }

  outputStruct = calloc(1uLL, 4uLL);
  v11 = IOConnectCallMethod(v4, 0xCBu, 0, 0, 0, 0, 0, 0, outputStruct, &v14);
  if (v11)
  {
    v12 = mach_error_string(v11);
    ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", "AppleMobileApNonce", 203, v12);
LABEL_6:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *outputStruct;
  v8 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
  v9 = 1;
  if (a1)
  {
LABEL_7:
    *a1 = v7;
  }

LABEL_8:
  if (a2)
  {
    *a2 = v8;
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  if (outputStruct)
  {
    free(outputStruct);
  }

  if (connection[1])
  {
    IOObjectRelease(connection[1]);
  }

  if (connection[0])
  {
    IOObjectRelease(connection[0]);
  }

  return v9;
}

uint64_t ramrod_generate_sepslot_copy_nonce(_DWORD *a1, CFDataRef *a2)
{
  *bytes = 0;
  v16 = 0;
  v17 = 0;
  length = 20;
  *connection = 0;
  output = 0;
  outputCnt = 1;
  if (ramrod_connect_to_ioservice("AppleSEPManager", &connection[1], connection))
  {
    v4 = connection[0];
    v5 = IOConnectCallMethod(connection[0], 0x53u, 0, 0, 0, 0, &output, &outputCnt, bytes, &length);
    if (v5)
    {
      v6 = mach_error_string(v5);
      ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", "AppleSEPManager", 83, v6);
      v7 = 0;
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = output;
      v9 = CFDataCreate(kCFAllocatorDefault, bytes, length);
      v7 = 1;
    }

    if (connection[1])
    {
      IOObjectRelease(connection[1]);
    }

    if (v4)
    {
      IOObjectRelease(v4);
    }

    if (a1)
    {
      *a1 = v8;
    }

    if (a2)
    {
      *a2 = v9;
    }

    else if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    ramrod_log_msg("Failed to connect to AppleSEPManager to generate sep nonce.\n");
    return 0;
  }

  return v7;
}

void sub_10000FA00(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

const __CFDictionary *ramrod_should_update_stockholm(int a1)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking stockholm for booted update\n");
    return 0;
  }

  else
  {

    return ramrod_device_has_stockholm();
  }
}

BOOL ramrod_should_update_baseband(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return ramrod_device_has_baseband(a1, a2) != 0;
  }

  ramrod_log_msg("Skipping checking baseband for booted OS update\n", a2);
  return 0;
}

uint64_t ramrod_copy_updater_functions(void *a1, const char *a2, __CFDictionary *(***a3)(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4), CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !a3)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "ramrod_copy_updater_functions");
    return 0;
  }

  v10 = a2;
  *a3 = 0;
  v12 = malloc(0x20uLL);
  if (!v12)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate tmp update_functions struct", v13, v14, v15, "ramrod_copy_updater_functions");
    return 0;
  }

  v16 = v12;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  if (!strcmp(v10, "Banyan"))
  {
    v10 = "BanyanUARP";
  }

  if (!strcmp(v10, "Canary"))
  {
    *v16 = sub_10000FE98;
    v16[1] = sub_10000FF7C;
    v32 = sub_10000FFB4;
    v33 = 2;
    goto LABEL_16;
  }

  v20 = sub_10000FD68(a1, v10, "UpdaterCreate", a4, 0, v17, v18, v19);
  *v16 = v20;
  if (!v20 || (v24 = sub_10000FD68(a1, v10, "UpdaterIsDone", a4, 0, v21, v22, v23), (v16[1] = v24) == 0) || (v28 = sub_10000FD68(a1, v10, "UpdaterExecCommand", a4, 0, v25, v26, v27), (v16[2] = v28) == 0))
  {
    free(v16);
    return 0;
  }

  v32 = sub_10000FD68(a1, v10, "UpdaterIsTwoStageSupported", a4, 1, v29, v30, v31);
  v33 = 3;
LABEL_16:
  v16[v33] = v32;
  *a3 = v16;
  return 1;
}

void *sub_10000FD68(void *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "load_function");
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__symbol = 0u;
  v16 = 0u;
  __strlcpy_chk();
  __strlcat_chk();
  result = dlsym(a1, __symbol);
  if (!a5 && !result)
  {
    dlerror();
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1012, 0, @"%s: unable to find %s: %s", v12, v13, v14, "load_function");
    return 0;
  }

  return result;
}

__CFDictionary *sub_10000FE98(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"Options");
      if (Value)
      {
        CFDictionarySetValue(Mutable, @"Options", Value);
      }
    }

    CFDictionarySetValue(Mutable, @"IsDone", kCFBooleanFalse);
    CFDictionarySetValue(Mutable, @"Loop0", kCFBooleanTrue);
    CFDictionarySetValue(Mutable, @"QueryLoop0", kCFBooleanTrue);
  }

  else
  {
    sub_1000144F8(a4, v6, v7, v8, v9, v10, v11, v12);
  }

  return Mutable;
}

const __CFDictionary *sub_10000FF7C(const __CFDictionary *result)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"IsDone");

    return CFBooleanGetValue(Value);
  }

  return result;
}

uint64_t sub_10000FFB4(const __CFDictionary *a1, CFStringRef theString1, uint64_t a3, CFMutableDictionaryRef *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_1000145E8(a5, theString1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!theString1)
  {
    sub_1000145AC(a5, 0, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!a4)
  {
    sub_100014570(a5, theString1, a3, 0, a5, a6, a7, a8);
    return 0;
  }

  if (CFStringCompare(theString1, @"queryInfo", 0))
  {
    if (CFStringCompare(theString1, @"performNextStage", 0))
    {
      ramrod_create_error_cf(a5, @"RamrodErrorDomain", 3, 0, @"%s: %@ invalid command", v12, v13, v14, "_CanaryUpdaterExecCmd");
      return 0;
    }

    Value = CFDictionaryGetValue(a1, @"Loop0");
    ramrod_log_msg_cf(@"PerformNextStage Running, Loop0=%@.", Value);
    if (CFDictionaryGetValue(a1, @"Loop0") == kCFBooleanFalse)
    {
      CFDictionarySetValue(a1, @"IsDone", kCFBooleanTrue);
    }

    v27 = @"Loop0";
    v28 = a1;
    v29 = kCFBooleanFalse;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *a4 = Mutable;
    if (!Mutable)
    {
      sub_100014534(a5, v17, v18, v19, v20, v21, v22, v23);
      return 0;
    }

    v24 = CFDictionaryGetValue(a1, @"QueryLoop0");
    ramrod_log_msg_cf(@"QueryInfo Running, Loop0=%@.", v24);
    CFDictionarySetValue(*a4, @"ECID", @"1234567890");
    v25 = *a4;
    v26 = CFDictionaryGetValue(a1, @"QueryLoop0");
    CFDictionarySetValue(v25, @"QueryLoop0", v26);
    CFDictionarySetValue(*a4, @"LocalSigningID", kCFBooleanTrue);
    if (CFDictionaryGetValue(a1, @"QueryLoop0") == kCFBooleanFalse)
    {
      CFDictionarySetValue(a1, @"IsDone", kCFBooleanTrue);
    }

    v27 = @"QueryLoop0";
    v28 = a1;
    v29 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v28, v27, v29);
  return 1;
}

uint64_t ramrod_update_nvram_overrides(const char *a1, __CFDictionary *a2)
{
  if (a2)
  {
    if (a1)
    {
      CStringPtr = CFStringGetCStringPtr(@"T200", 0x8000100u);
      if (!strcmp(a1, CStringPtr) && (v8 = ramrod_copy_NVRAM_variable_from_devicetree(@"VeridianForceUpdate")) != 0)
      {
        v9 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
        v5 = v9;
        if (v9)
        {
          v10 = CFGetTypeID(v9);
          if (v10 == CFStringGetTypeID() && CFStringCompare(v5, @"yes", 1uLL) == kCFCompareEqualTo)
          {
            ramrod_log_msg("Setting %s=false due to nvram variable %s=yes\n", "SkipSameVersion", "VeridianForceUpdate");
            CFDictionarySetValue(a2, @"SkipSameVersion", kCFBooleanFalse);
            CFDictionarySetValue(a2, @"RestoreInternal", kCFBooleanTrue);
          }
        }
      }

      else
      {
        v5 = 0;
      }

      v6 = CFStringGetCStringPtr(@"AppleTCON", 0x8000100u);
      if (!strcmp(a1, v6))
      {
        v11 = ramrod_copy_NVRAM_variable_from_devicetree(@"AppleTCONForceUpdate");
        if (v11)
        {
          v5 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v11, 0x8000100u);
        }

        if (v5)
        {
          v12 = CFGetTypeID(v5);
          if (v12 == CFStringGetTypeID() && CFStringCompare(v5, @"yes", 1uLL) == kCFCompareEqualTo)
          {
            ramrod_log_msg("Setting %s=false due to nvram variable %s=yes\n", "SkipSameVersion", "AppleTCONForceUpdate");
            CFDictionarySetValue(a2, @"SkipSameVersion", kCFBooleanFalse);
            CFDictionarySetValue(a2, @"RestoreInternal", kCFBooleanTrue);
          }
        }
      }
    }

    else
    {
      ramrod_log_msg("updaterName is NULL\n");
    }
  }

  else
  {
    ramrod_log_msg("options is NULL\n");
  }

  AMSupportSafeRelease();

  return AMSupportSafeRelease();
}

CFStringRef *sub_100010460(const __CFString *a1)
{
  sub_100012920();
  if (a1)
  {
    v2 = off_10002E328;
    v3 = 14;
    v4 = "Updater entry is NULL, defaulting to TRUE";
    while (*v2)
    {
      if (CFStringCompare(a1, *v2, 0) == kCFCompareEqualTo)
      {
        return v2;
      }

      v2 += 6;
      if (!--v3)
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = "updaterName is NULL";
  }

  sub_100014624(v4);
  return 0;
}

CFStringRef ramrod_update_get_dylib(const __CFString *a1)
{
  if (a1)
  {
    v2 = sub_100010460(a1);
    if (v2)
    {
      return v2[3];
    }

    AMSupportLogInternal(3, "ramrod_update_get_dylib", "updaterName %@ not found", a1);
  }

  else
  {
    sub_100014634(0);
  }

  return 0;
}

CFDictionaryRef ramrod_update_copy_ap_parameters_generating_nonces(CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v2 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"GenerateNonces", kCFBooleanTrue);
    updated = ramrod_update_copy_ap_parameters(v2);
    CFRelease(v2);
    return updated;
  }

  else
  {
    ramrod_log_msg("Failed to allocate ap options dictionary.\n");
    return 0;
  }
}

CFDictionaryRef ramrod_update_copy_ap_parameters(const __CFDictionary *a1)
{
  BOOLean_option = get_BOOLean_option(a1, @"GenerateNonces", 0);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = sub_10001080C(@"esdm-fuses");
    if (v3)
    {
      CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSiKA, v3);
    }

    v4 = sub_10001080C(@"chip-epoch");
    if (v4)
    {
      CFDictionarySetValue(Mutable, kAMAuthInstallApParameterCertificateEpoch, v4);
    }

    if (BOOLean_option && _ramrod_device_has_sandcat(v4, v5))
    {
      v14 = 2;
      valuePtr = 0;
      cf = 0;
      value = 0;
      if (ramrod_generate_apslot_copy_nonce(&valuePtr, &value))
      {
        v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (v6)
        {
          v7 = v6;
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterApNonceSlotID, v6);
          CFRelease(v7);
        }

        if (value)
        {
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterApNonce, value);
          CFRelease(value);
        }
      }

      else
      {
        ramrod_log_msg("unable to read the AP slot id will not set.\n");
      }

      if (ramrod_generate_sepslot_copy_nonce(&v14, &cf))
      {
        v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v14);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSepNonceSlotID, v8);
          CFRelease(v9);
        }

        if (cf)
        {
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSepNonce, cf);
          CFRelease(cf);
        }
      }

      else
      {
        ramrod_log_msg("unable to read the SEP slot id will not set.\n");
      }
    }

    Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, Mutable);
  }

  else
  {
    sub_100014648(0);
    Copy = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return Copy;
}

CFNumberRef sub_10001080C(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, a1, kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      ramrod_log_msg_cf(@"unable to lookup %@ property\n", a1);
      v8 = 0;
LABEL_11:
      IOObjectRelease(v3);
      return v8;
    }

    v5 = CFProperty;
    v6 = CFGetTypeID(CFProperty);
    if (v6 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v5);
      v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, BytePtr);
      if (v8)
      {
LABEL_10:
        CFRelease(v5);
        goto LABEL_11;
      }

      ramrod_log_msg_cf(@"could not create CFNumber for %@\n", a1);
    }

    else
    {
      ramrod_log_msg_cf(@"%@ property is not a CFData\n", a1);
    }

    v8 = 0;
    goto LABEL_10;
  }

  ramrod_log_msg("unable to find 'chosen' registry entry\n");
  return 0;
}

CFMutableDictionaryRef ramrod_update_copy_deviceinfo_with_options(const __CFDictionary *a1, CFErrorRef *a2)
{
  v109 = 0;
  v110[0] = 0;
  v108 = 0;
  sub_100012920();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10001465C(a2, v3, v4, v5, v6, v7, v8, v9);
LABEL_152:
    v92 = 1;
    goto LABEL_130;
  }

  v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v18)
  {
    sub_10001488C(a2, v11, v12, v13, v14, v15, v16, v17);
    goto LABEL_152;
  }

  v100 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v100)
  {
    sub_100014850(a2, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_152;
  }

  v103 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v103)
  {
    sub_100014814(a2, v26, v27, v28, v29, v30, v31, v32);
    v92 = 1;
    goto LABEL_130;
  }

  if (!a1)
  {
    sub_1000147CC(a2, v26, v27, v28, v29, v30, v31, v32);
LABEL_158:
    v92 = 1;
    goto LABEL_130;
  }

  theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!theDict)
  {
    sub_1000147B8(0);
    goto LABEL_158;
  }

  v33 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v33)
  {
    sub_1000147A4(0);
    goto LABEL_158;
  }

  v34 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v102 = v33;
  if (!v34)
  {
    sub_100014790(0);
    goto LABEL_158;
  }

  v35 = v34;
  CFDictionarySetValue(v34, @"CreateFilesystemPartitions", kCFBooleanFalse);
  CFDictionarySetValue(theDict, @"RestoreOptions", v35);
  if (CFDictionaryContainsKey(a1, @"PreflightRequired"))
  {
    Value = CFDictionaryGetValue(a1, @"PreflightRequired");
    CFDictionarySetValue(v33, @"PreflightRequired", Value);
  }

  if (CFDictionaryContainsKey(a1, @"BootedUpdate"))
  {
    v37 = CFDictionaryGetValue(a1, @"BootedUpdate");
    CFDictionarySetValue(v33, @"BootedUpdate", v37);
    v106 = v37 == kCFBooleanTrue;
  }

  else
  {
    v106 = 0;
  }

  v99 = Mutable;
  if (CFDictionaryContainsKey(a1, @"PreflightContext"))
  {
    v41 = CFDictionaryGetValue(a1, @"PreflightContext");
    CFDictionarySetValue(v33, @"PreflightContext", v41);
    v42 = CFStringCompare(v41, @"Limited", 0) != kCFCompareEqualTo;
  }

  else
  {
    v42 = 1;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  MutableCopy = 0;
  if (v106)
  {
    v42 = 1;
  }

  v107 = v42;
  while (1)
  {
    if (v44)
    {
      CFRelease(v44);
    }

    if (v109)
    {
      CFRelease(v109);
      v109 = 0;
    }

    if (v45)
    {
      CFRelease(v45);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v110[0])
    {
      CFRelease(v110[0]);
      v110[0] = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v108)
    {
      free(v108);
      v108 = 0;
    }

    v48 = &off_10002E328[6 * v43];
    if (!*v48)
    {
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v110[0], @"%s: Updater Name is NULL at index %d", v38, v39, v40, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_141;
    }

    ramrod_log_msg_cf(@"Preflight loop %d for updater %@..", ++v43, *v48);
    v49 = *v48;
    if (*v48)
    {
      v50 = CFDictionaryGetValue(a1, @"SkipUpdaters");
      if (v50)
      {
        v51 = v50;
        if (CFArrayGetCount(v50) >= 1)
        {
          v52 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v51, v52);
            if (ValueAtIndex)
            {
              v54 = ValueAtIndex;
              v55 = CFGetTypeID(ValueAtIndex);
              if (v55 == CFStringGetTypeID() && CFStringCompare(v49, v54, 0) == kCFCompareEqualTo)
              {
                break;
              }
            }

            if (++v52 >= CFArrayGetCount(v51))
            {
              goto LABEL_43;
            }
          }

          ramrod_log_msg_cf(@"Skipping updater %@", *v48, v95);
          goto LABEL_78;
        }
      }
    }

LABEL_43:
    v56 = v48[2];
    if (!v56)
    {
      goto LABEL_55;
    }

    if (!v107)
    {
      if ((v56)(1))
      {
        v57 = 0;
        goto LABEL_50;
      }

      v56 = v48[2];
    }

    if (!(v56)(v106))
    {
LABEL_55:
      ramrod_log_msg_cf(@"Updater %@ not supported on this device..", *v48, v95);
LABEL_78:
      MutableCopy = 0;
      v46 = 0;
      v45 = 0;
      goto LABEL_79;
    }

    v57 = 1;
LABEL_50:
    if (CFDictionaryGetValue(a1, *v48) == kCFBooleanFalse)
    {
      ramrod_log_msg_cf(@"Updater %@ should be skipped for %s..", *v48, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_78;
    }

    CStringPtr = CFStringGetCStringPtr(*v48, 0x8000100u);
    if (!CStringPtr)
    {
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v110[0], @"%s: failed convert updaterName %@", v59, v60, v61, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_141;
    }

    v62 = CStringPtr;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v33);
    if (!MutableCopy)
    {
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v110[0], @"%s: Failed to copy subOptions for %s", v63, v64, v65, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_141;
    }

    CFDictionarySetValue(theDict, @"Options", MutableCopy);
    ramrod_update_nvram_overrides(v62, MutableCopy);
    if (ramrod_update_twostage_enabled(*v48))
    {
      ramrod_log_msg("%s Updater configured for two-stage update. DeferredCommit: YES.\n", v62);
      CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanTrue);
    }

    else
    {
      ramrod_log_msg("%s Updater: Legacy / single-stage updater.\n", v62);
    }

    if (os_parse_boot_arg_int())
    {
      CFDictionarySetValue(MutableCopy, @"SkipSameVersion", kCFBooleanFalse);
      CFDictionarySetValue(MutableCopy, @"RestoreInternal", kCFBooleanTrue);
    }

    if (*(v48 + 36))
    {
      v45 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (!v45)
      {
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v110[0], @"%s: Failed to create queryResults array for %s", v66, v67, v68, "ramrod_update_copy_deviceinfo_with_options");
        goto LABEL_141;
      }

      if ((v57 & 1) == 0)
      {
LABEL_63:
        ramrod_log_msg_cf(@"overriding updater context to BootedOS for %sUpdater", v62);
        CFDictionarySetValue(MutableCopy, @"PreflightContext", @"BootedOS");
      }
    }

    else
    {
      v45 = 0;
      if ((v57 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v69 = dlopen(v48[3], 261);
    if (!v69)
    {
      v96 = dlerror();
      ramrod_log_msg_cf(@"Failed to open updater library on device that should have %s: %s", v62, v96);
LABEL_72:
      v46 = 0;
LABEL_79:
      v44 = 0;
      goto LABEL_80;
    }

    if (!ramrod_copy_updater_functions(v69, v62, &v108, a2, v70, v71, v72, v73))
    {
      AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "ramrod_copy_updater_functions failed on %s");
      goto LABEL_141;
    }

    v74 = (v108[1])(0, v110);
    if (v110[0])
    {
LABEL_147:
      AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "%sUpdater fp_isDone returned error: %@", v62, v110[0]);
      goto LABEL_141;
    }

    if (v74)
    {
      ramrod_log_msg_cf(@"Updater %s returned isDone(NULL)=true (ie: module should skip), continuing.", v62, v95);
      goto LABEL_72;
    }

    ramrod_log_msg_cf(@"creating %sUpdater obj", v62);
    v75 = (*v108)(theDict, sub_10001163C, v62, v110);
    v44 = v75;
    if (!v75)
    {
      sub_100014698();
      goto LABEL_141;
    }

    v76 = (v108[1])(v75, v110);
    if (v110[0])
    {
      goto LABEL_147;
    }

    if (!v76)
    {
      break;
    }

    ramrod_log_msg_cf(@"Updater %s returned isDone(obj)=true (ie: module should skip), continuing.", v62);
    v46 = 0;
LABEL_80:
    if (v43 == 14)
    {
      updated = ramrod_update_copy_ap_parameters(a1);
      Mutable = v99;
      CFDictionaryAddValue(v99, @"DeviceInfo", v18);
      CFDictionaryAddValue(v99, @"DeviceInfoDisabled", v100);
      CFDictionaryAddValue(v99, @"DeviceInfoFailures", v103);
      CFDictionaryAddValue(v99, @"ApParameters", updated);
      v92 = 0;
      goto LABEL_130;
    }
  }

  v77 = 0;
  v101 = 0;
  v98 = v18;
LABEL_83:
  if (v77 <= 1024)
  {
    v78 = 1024;
  }

  else
  {
    v78 = v77;
  }

  v79 = v78 - v77++ + 1;
  while (1)
  {
    if (v109)
    {
      CFRelease(v109);
      v109 = 0;
    }

    if (!--v79)
    {
      break;
    }

    if (v45)
    {
      ramrod_log_msg_cf(@"Calling %sUpdater fp_isDone", v62);
      v80 = (v108[1])(v44, v110);
      if (v110[0])
      {
        goto LABEL_147;
      }

      if (v80)
      {
LABEL_128:
        v18 = v98;
LABEL_129:
        v46 = v101;
        v33 = v102;
        goto LABEL_80;
      }
    }

    ramrod_log_msg_cf(@"Calling %sUpdater fp_ExecCmd", v62, v95);
    if ((v108[2])(v44, @"queryInfo", 0, &v109, v110))
    {
      if (v109)
      {
        TypeID = CFDictionaryGetTypeID();
        v85 = TypeID == CFGetTypeID(v109);
        v18 = v98;
        if (v85 && CFDictionaryGetValue(a1, @"PreflightRequired") == kCFBooleanFalse)
        {
          v101 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v109);
          if (!v101)
          {
            goto LABEL_141;
          }

          v86 = v48[5];
          if (v86)
          {
            key = v48[5];
            if (CFDictionaryContainsKey(v101, v86))
            {
              AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "Removing updater reference from DeviceInfo to avoid serialization failures.");
              CFDictionaryRemoveValue(v101, key);
              CFRelease(v109);
              v109 = v101;
              v101 = 0;
            }
          }
        }
      }

      else
      {
        v18 = v98;
      }

      v87 = v109;
      if (v45)
      {
        CFArrayAppendValue(v45, v109);
        v87 = v109;
      }

      if (!v87 || v110[0])
      {
        if (v87 | v110[0])
        {
          v90 = "NULL";
          if (v87)
          {
            v90 = "NOT-NULL";
          }

          ramrod_log_msg_cf(@"Updater %s QueryInfo succeeded, but bad results. Results=%s, Error=%@", v62, v90, v110[0]);
          if (*(v48 + 34))
          {
            ramrod_create_error_cf(a2, @"RamrodErrorDomain", 1016, v110[0], @"%s: Preflight QueryInfo succeeded, but improper results on %s", v38, v39, v40, "ramrod_update_copy_deviceinfo_with_options");
            goto LABEL_141;
          }
        }

        else
        {
          ramrod_log_msg_cf(@"Updater %s returned no personalization info (ie: module should skip), continuing.", v62);
        }

        if (!v45)
        {
          goto LABEL_129;
        }
      }

      else
      {
        ramrod_log_msg_cf(@"Populated deviceinfo for %s, continuing.", v62);
        if (v45)
        {
          v88 = v45;
        }

        else
        {
          v88 = v109;
        }

        if (*(v48 + 34))
        {
          v89 = v18;
        }

        else
        {
          v89 = v100;
        }

        CFDictionarySetValue(v89, *v48, v88);
        if (!v45)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_83;
    }

    AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "fp_ExecCmd failed on %s, continuing to next updater.", v62);
    if (*(v48 + 33) == 1)
    {
      ramrod_log_msg("%s updater failed but not reporting error since it is best effort\n", v62);
    }

    else
    {
      CFDictionarySetValue(v103, *v48, v48[1]);
      v95 = v62;
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 1016, v110[0], @"%s: Preflight QueryInfo failed on %s", v81, v82, v83, "ramrod_update_copy_deviceinfo_with_options");
    }

    ++v77;
    if (!v45)
    {
      goto LABEL_128;
    }
  }

  sub_100014714();
LABEL_141:
  v92 = 1;
  Mutable = v99;
LABEL_130:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v108)
  {
    free(v108);
    v108 = 0;
  }

  v93 = v92 ^ 1;
  if (!Mutable)
  {
    v93 = 1;
  }

  if ((v93 & 1) == 0)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void sub_10001163C(uint64_t a1, const char *a2)
{
  if (a2)
  {
    ramrod_log_msg("updater_log: %s", a2);
  }
}

CFMutableDictionaryRef ramrod_update_copy_deviceinfo(int a1, CFErrorRef *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (Mutable)
  {
    v6 = &kCFBooleanTrue;
    if (!a1)
    {
      v6 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"PreflightRequired", *v6);
    CFDictionarySetValue(v5, @"PreflightContext", @"BootedOS");
    updated = ramrod_update_copy_deviceinfo_with_options(v5, a2);
  }

  else
  {
    sub_1000148C8(0);
    updated = 0;
  }

  AMSupportSafeRelease();
  return updated;
}

BOOL ramrod_should_update_rose(int a1)
{
  if (a1)
  {
    v1 = 0;
    ramrod_log_msg("Skipping checking Rose for booted update\n");
  }

  else
  {
    has_rose = ramrod_device_has_rose();
    v1 = has_rose != 0;
    if (has_rose)
    {
      ramrod_log_msg("Rose is present. Will update\n");
    }

    else
    {
      ramrod_log_msg("Rose not present\n");
    }
  }

  return v1;
}

uint64_t ramrod_device_has_rose()
{
  v0 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (!MatchingService)
  {
    ramrod_log_msg("Service does not exist\n");
    v12 = 0;
    goto LABEL_17;
  }

  if (!ramrod_should_do_legacy_restored_internal_behaviors())
  {
    goto LABEL_16;
  }

  valuePtr = 0;
  v2 = MGCopyAnswer();
  v3 = v2;
  if (!v2)
  {
    ramrod_log_msg("Failed to get HW model\n");
    goto LABEL_16;
  }

  v4 = CFGetTypeID(v2);
  if (v4 != CFStringGetTypeID())
  {
    ramrod_log_msg("HW model is not a string\n");
    goto LABEL_16;
  }

  if (!CFStringHasSuffix(v3, @"DEV"))
  {
    ramrod_log_msg("Not a DEV board\n");
    goto LABEL_16;
  }

  ramrod_log_msg("DEV board\n");
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
  if (!v5)
  {
    ramrod_log_msg("Failed to create zero\n");
    goto LABEL_16;
  }

  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"ECID", kCFAllocatorDefault, 1u);
  v7 = v6;
  if (!v6)
  {
    ramrod_log_msg("ECID property does not exist\n");
LABEL_27:
    v12 = 0;
    goto LABEL_17;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFNumberGetTypeID())
  {
    ramrod_log_msg("ECID property is not a number\n");
    goto LABEL_27;
  }

  if (CFNumberCompare(v5, v7, 0) == kCFCompareEqualTo)
  {
    ramrod_log_msg("ECID property is zero\n");
    goto LABEL_27;
  }

  v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"ChipID", kCFAllocatorDefault, 1u);
  v10 = v9;
  if (!v9)
  {
    ramrod_log_msg("ChipID property does not exist\n");
    goto LABEL_30;
  }

  v11 = CFGetTypeID(v9);
  if (v11 != CFNumberGetTypeID())
  {
    ramrod_log_msg("ChipID property is not a number\n");
    goto LABEL_30;
  }

  if (CFNumberCompare(v5, v10, 0))
  {
LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

  ramrod_log_msg("ChipID property is zero\n");
LABEL_30:
  v12 = 0;
LABEL_17:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  ramrod_log_msg("result: %u\n", v12);
  return v12;
}

BOOL ramrod_should_update_centauri(int a1)
{
  v2 = os_variant_uses_ephemeral_storage();
  if (v2)
  {
    ramrod_log_msg("ramrod_update running in limited environment\n");
  }

  else
  {
    ramrod_log_msg("ramrod_update running in normal env\n");
  }

  if (a1 && v2)
  {
    ramrod_log_msg("Skipping checking Centauri in NeRD for bootedUpdate=true\n");
    return 0;
  }

  else
  {

    return ramrod_device_has_centauri();
  }
}

BOOL ramrod_device_has_centauri()
{
  v0 = IOServiceNameMatching("centauri");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  ramrod_log_msg("%s: %s\n", "ramrod_device_has_centauri", v3);
  return v2 != 0;
}

BOOL ramrod_device_has_savage()
{
  v11 = 0;
  ramrod_log_msg("opening %s\n", "/usr/lib/updaters/libSavageUpdater_iOS.dylib");
  v0 = dlopen("/usr/lib/updaters/libSavageUpdater_iOS.dylib", 261);
  if (!v0)
  {
    v9 = dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", "/usr/lib/updaters/libSavageUpdater_iOS.dylib", v9);
    return 0;
  }

  v5 = ramrod_copy_updater_functions(v0, "Savage", &v11, 0, v1, v2, v3, v4);
  v6 = v11;
  if (!v5)
  {
    v8 = 0;
    if (!v11)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v7 = *(v11 + 1);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7(0, 0) == 0;
  v6 = v11;
  if (v11)
  {
LABEL_5:
    free(v6);
  }

  return v8;
}

BOOL ramrod_should_update_savage(int a1)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking Savage for booted update\n");
    return 0;
  }

  else
  {

    return ramrod_device_has_savage();
  }
}

uint64_t ramrod_device_has_veridian()
{
  v0 = IOServiceMatching("AppleGasGaugeUpdate");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    if (!ramrod_should_do_legacy_restored_internal_behaviors())
    {
      goto LABEL_14;
    }

    v3 = MGCopyAnswer();
    v4 = v3;
    if (!v3)
    {
      ramrod_log_msg("Failed to get HW model\n");
      goto LABEL_14;
    }

    v5 = CFGetTypeID(v3);
    if (v5 != CFStringGetTypeID())
    {
      ramrod_log_msg("HW model is not a string\n");
      goto LABEL_14;
    }

    if (!CFStringHasSuffix(v4, @"DEV"))
    {
LABEL_14:
      v12 = 1;
      goto LABEL_15;
    }

    keys = @"built-in";
    v6 = IOServiceMatching("IOPMPowerSource");
    v7 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v6)
    {
      if (v7)
      {
        CFDictionarySetValue(v6, @"IOPropertyMatch", v7);
        v8 = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
        if (v8)
        {
          v9 = v8;
          CFProperty = IORegistryEntryCreateCFProperty(v8, @"Serial", kCFAllocatorDefault, 0);
          IOObjectRelease(v9);
          AMSupportSafeRelease();
          if (CFProperty)
          {
            v11 = CFGetTypeID(CFProperty);
            if (v11 == CFStringGetTypeID())
            {
              if (!CFStringGetLength(CFProperty))
              {
                ramrod_log_msg("Dev board with no Veridian attached - pretending we don't support Veridian.\n");
                v12 = 0;
LABEL_15:
                IOObjectRelease(v2);
                goto LABEL_16;
              }
            }

            else
            {
              ramrod_log_msg("Veridian Serial not a string - not expected\n");
            }

            goto LABEL_14;
          }

LABEL_23:
          ramrod_log_msg("Veridian Serial is NULL - not expected\n");
          goto LABEL_14;
        }

        ramrod_log_msg("unable to find IOPMPowerSource service\n");
      }

      else
      {
        ramrod_log_msg("Failed to allocate properties\n");
      }
    }

    else
    {
      ramrod_log_msg("Failed to allocate matching\n");
    }

    AMSupportSafeRelease();
    goto LABEL_23;
  }

  ramrod_log_msg("Not a Veridian device.\n");
  v12 = 0;
LABEL_16:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v12;
}

BOOL ramrod_device_ota_veridian(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_veridian() != 0;
  }

  ramrod_log_msg("Skipping checking Veridian for booted update\n");
  return 0;
}

uint64_t ramrod_device_has_appletcon(uint64_t a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/product");
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"tcon-path", kCFAllocatorDefault, 0);
  IOObjectRelease(v3);
  if (!CFProperty)
  {
    ramrod_log_msg("tcon-path pointer not found.\n");
    goto LABEL_20;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(CFProperty))
  {
    ramrod_log_msg("IORegistryEntryCreateCFProperty returned non CFDataRef\n");
    goto LABEL_20;
  }

  Length = CFDataGetLength(CFProperty);
  if (!Length)
  {
    ramrod_log_msg("tcon-path contains invalid string\n");
    goto LABEL_20;
  }

  v7 = Length;
  v8 = malloc(Length + 15);
  v9 = v8;
  if (!v8)
  {
    ramrod_log_msg("malloc returned NULL\n");
    goto LABEL_20;
  }

  if (snprintf(v8, v7 + 15, "%s", "IODeviceTree:/") != 14)
  {
    ramrod_log_msg("overflow");
    goto LABEL_20;
  }

  v19.length = CFDataGetLength(CFProperty);
  v19.location = 0;
  CFDataGetBytes(CFProperty, v19, v9 + 14);
  v9[v7 + 14] = 0;
  ramrod_log_msg("Looking for entry under %s\n", v9);
  v10 = IORegistryEntryFromPath(kIOMasterPortDefault, v9);
  if (!v10)
  {
    ramrod_log_msg("tcon-path points to non-existent node\n");
    goto LABEL_20;
  }

  v11 = v10;
  v12 = IORegistryEntryCreateCFProperty(v10, @"firmware", kCFAllocatorDefault, 0);
  IOObjectRelease(v11);
  if (!v12)
  {
    ramrod_log_msg("No 'firmware' property found.\n", v18);
LABEL_20:
    updated = 0;
    goto LABEL_21;
  }

  v13 = CFDataGetTypeID();
  if (v13 != CFGetTypeID(v12))
  {
    ramrod_log_msg("IORegistryEntryCreateCFProperty returned non CFDataRef\n", v18);
    goto LABEL_20;
  }

  if (CFDataGetLength(v12) != 4)
  {
    CFDataGetLength(v12);
    ramrod_log_msg("version_data wrong length (%lu bytes)\n");
    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(v12);
  if (!BytePtr)
  {
    ramrod_log_msg("CFDataGetBytePtr returned NULL\n", v18);
    goto LABEL_20;
  }

  v15 = *BytePtr;
  ramrod_log_msg("AppleTCON flashable node found. (firmware=%d)\n", *BytePtr);
  CFRelease(v12);
  if (!v15)
  {
    goto LABEL_20;
  }

  if (a1 && AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
  {
    updated = 1;
  }

  else
  {
    updated = ramrod_update_supported(@"AppleTCON", @"AppleTCONUpdaterErrorDomain: AppleTCONUpdaterExecCommand - execCommand error");
  }

LABEL_21:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  return updated;
}

BOOL ramrod_device_ota_appletcon(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_appletcon(0) != 0;
  }

  ramrod_log_msg("Skipping checking TCON for booted update\n");
  return 0;
}

BOOL ramrod_device_has_appletconuarp()
{
  v11 = 0;
  ramrod_log_msg("opening %s\n", "/usr/lib/updaters/libTconUpdaterUARP.dylib");
  v0 = dlopen("/usr/lib/updaters/libTconUpdaterUARP.dylib", 261);
  if (!v0)
  {
    v9 = dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", "/usr/lib/updaters/libTconUpdaterUARP.dylib", v9);
    return 0;
  }

  v5 = ramrod_copy_updater_functions(v0, "AppleTconUARP", &v11, 0, v1, v2, v3, v4);
  v6 = v11;
  if (!v5)
  {
    v8 = 0;
    if (!v11)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v7 = *(v11 + 1);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7(0, 0) == 0;
  v6 = v11;
  if (v11)
  {
LABEL_5:
    free(v6);
  }

  return v8;
}

BOOL ramrod_should_update_appletconuarp(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_appletconuarp();
  }

  ramrod_log_msg("Skipping checking AppleTconUARP for booted update\n");
  return 0;
}

BOOL _ramrod_device_has_usbcretimer(const __CFString *a1)
{
  existing = 0;
  ramrod_log_msg_cf(@"%s(%@) entered\n", "_ramrod_device_has_usbcretimer", a1);
  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    entryID = 0;
    os_parse_boot_arg_int();
  }

  v2 = IOServiceNameMatching("atcrt");
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v2, &existing) || (v5 = IOIteratorNext(existing)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v6 = v5;
    v3 = 0;
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v6, @"name", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v8 = CFProperty;
        entryID = 0;
        IORegistryEntryGetRegistryEntryID(v6, &entryID);
        TypeID = CFDataGetTypeID();
        if (TypeID == CFGetTypeID(v8))
        {
          v10 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
          if (v10)
          {
            v11 = v10;
            if (CFStringHasPrefix(v10, a1))
            {
              ++v3;
            }

            CFRelease(v11);
          }

          else
          {
            ramrod_log_msg("nameString NULL\n");
          }
        }

        else
        {
          ramrod_log_msg("nameData not CFDataRef\n");
        }

        CFRelease(v8);
      }

      IOObjectRelease(v6);
      v6 = IOIteratorNext(existing);
    }

    while (v6);
  }

  ramrod_log_msg_cf(@"%s(%@) found %lu nodes\n", "_ramrod_device_has_usbcretimer", a1, v3);
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v3 != 0;
}

BOOL ramrod_should_update_usbcretimer(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_usbcretimer();
  }

  ramrod_log_msg("Skipping checking retimer for booted update\n");
  return 0;
}

BOOL ramrod_should_update_usbcretimer_uarp(int a1)
{
  if (!a1)
  {
    return _ramrod_device_has_usbcretimer(@"uatcrt");
  }

  ramrod_log_msg("Skipping checking retimer for booted update\n");
  return 0;
}

BOOL ramrod_device_has_ace3()
{
  v11 = 0;
  ramrod_log_msg("opening %s\n", "/usr/lib/updaters/libAce3Updater.dylib");
  v0 = dlopen("/usr/lib/updaters/libAce3Updater.dylib", 261);
  if (!v0)
  {
    v9 = dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", "/usr/lib/updaters/libAce3Updater.dylib", v9);
    return 0;
  }

  v5 = ramrod_copy_updater_functions(v0, "Ace3", &v11, 0, v1, v2, v3, v4);
  v6 = v11;
  if (!v5)
  {
    v8 = 0;
    if (!v11)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v7 = *(v11 + 1);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7(0, 0) == 0;
  v6 = v11;
  if (v11)
  {
LABEL_5:
    free(v6);
  }

  return v8;
}

BOOL ramrod_should_update_ace3(int a1)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking Ace3 for booted update\n");
    return 0;
  }

  else
  {

    return ramrod_device_has_ace3();
  }
}

uint64_t ramrod_device_has_manta_mcu()
{
  ramrod_log_msg("entering %s\n", "ramrod_device_has_manta_mcu");
  v0 = IOServiceNameMatching("manta-b");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"supports-mcu-restore", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v4 = CFProperty;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v4))
      {
        if (CFDataGetLength(v4) <= 0)
        {
          CFDataGetLength(v4);
          ramrod_log_msg("supports-mcu-restore wrong length (%lu bytes)\n");
        }

        else
        {
          if (*CFDataGetBytePtr(v4) == 1)
          {
            v6 = 1;
LABEL_12:
            IOObjectRelease(v2);
            CFRelease(v4);
            return v6;
          }

          CFDataGetBytePtr(v4);
          ramrod_log_msg("supports-mcu-restore is %u, the device does not support manta mcu restore time firmware update.\n");
        }
      }

      else
      {
        ramrod_log_msg("IORegistryEntryCreateCFProperty returned non CFDataRef for supports-mcu-restore property.\n", v8);
      }

      v6 = 0;
      goto LABEL_12;
    }

    ramrod_log_msg("manta-b ioregistry entry does not have supports-mcu-restore property, the device does not support manta mcu restore time firmware update.\n");
    IOObjectRelease(v2);
  }

  else
  {
    ramrod_log_msg("Could not find manta-b ioregistry entry, the device does not support manta mcu.\n");
  }

  return 0;
}

BOOL ramrod_should_update_manta_mcu(int a1)
{
  if (!a1)
  {
    return ramrod_device_has_manta_mcu() != 0;
  }

  ramrod_log_msg("Skipping checking manta mcu for booted update.\n");
  return 0;
}

BOOL ramrod_device_has_vinyl()
{
  v15 = 0;
  v16 = 0;
  ramrod_log_msg("opening %s\n", "/usr/lib/updaters/libVinylUpdater.dylib");
  v0 = dlopen("/usr/lib/updaters/libVinylUpdater.dylib", 261);
  v4 = v0;
  if (!v0)
  {
    v13 = dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", "/usr/lib/updaters/libVinylUpdater.dylib", v13);
    return v4;
  }

  v5 = sub_10000FD68(v0, "Vinyl", "UpdaterSupported", 0, 0, v1, v2, v3);
  if (!v5 || !v5(&v15))
  {
    ramrod_log_msg("Vinyl updaterSupported missing or returned not supported\n");
    return 0;
  }

  v10 = ramrod_copy_updater_functions(v4, "Vinyl", &v16, 0, v6, v7, v8, v9);
  v11 = v16;
  if (!v10)
  {
    v4 = 0;
    if (!v16)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v12 = *(v16 + 1);
  if (!v12)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = v12(0, &v15) == 0;
  v11 = v16;
  if (v16)
  {
LABEL_7:
    free(v11);
  }

  return v4;
}

void sub_100012920()
{
  if ((ramrod_should_do_legacy_restored_behaviors() & 1) == 0 && qword_10002E688 != -1)
  {
    sub_1000148DC();
  }
}

void sub_100012954(id a1)
{
  v1 = &byte_10002E349;
  v2 = 14;
  do
  {
    if (CFEqual(*(v1 - 25), @"update_rose"))
    {
      v3 = os_variant_uses_ephemeral_storage();
      if (v3)
      {
        ramrod_log_msg("ramrod_update running in limited environment\n");
      }

      else
      {
        ramrod_log_msg("ramrod_update running in normal env\n");
      }

      if (v3)
      {
        *v1 = 1;
      }
    }

    v1 += 48;
    --v2;
  }

  while (v2);
}

void sub_100012A14(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 3, 0, a3, a4, a5, a6, a7);
}

void sub_100012D74()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100012E38()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100012F60()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100012F9C()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001304C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_1000130E8()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100013124()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000131D4()
{
  sub_100001E8C();
  sub_100001E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100013290(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "Failed to reboot the device: %{errno}d", v3, 8u);
}

uint64_t sub_10001351C(int a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  return AMSupportLogInternal(3, "_AMRestorePartitionOpenFileWithURL", "open() returned %d, %s", a1, v3);
}

void sub_10001356C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  sub_1000051AC(v5, v2, v3, v4, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void sub_10001361C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  sub_1000051AC(v5, v2, v3, v4, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void sub_1000138BC(void *a1, _OWORD *a2)
{
  sub_10000588C(a1, a2);
  sub_1000058A4();
  sub_100005870();
  sub_1000051AC(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void sub_100013950(void *a1, _OWORD *a2)
{
  sub_10000588C(a1, a2);
  sub_1000058A4();
  sub_100005870();
  sub_1000051AC(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void sub_1000139D0(void *a1, _OWORD *a2)
{
  sub_10000588C(a1, a2);
  sub_1000058A4();
  sub_100005870();
  sub_1000051AC(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void sub_100013A64(void *a1, _OWORD *a2)
{
  sub_10000588C(a1, a2);
  sub_1000058A4();
  sub_100005870();
  sub_1000051AC(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void sub_100013AE4(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_100005870();
  sub_1000051AC(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void sub_100013B88(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_100005870();
  sub_1000051AC(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

void sub_100013C18(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  sub_100005870();
  sub_1000051AC(v2, v3, v4, v5, &_mh_execute_header);
  _os_crash_msg();
  __break(1u);
}

uint64_t ramrod_update_twostage_enabled(__CFString *a1)
{
  v23 = 0;
  v24 = 0;
  cf = 0;
  if (!a1)
  {
    AMSupportLogInternal(3, "ramrod_update_twostage_enabled", "ERROR updater NULL.");
LABEL_33:
    v3 = 0;
    goto LABEL_35;
  }

  CStringPtr = AMAuthInstallUpdaterTwoStageEnabled();
  if (CFStringCompare(a1, @"T200", 0))
  {
LABEL_3:
    sub_100012A44();
    v3 = 0;
    goto LABEL_25;
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    AMSupportLogInternal(3, "ramrod_update_twostage_enabled", "Failed to convert %@ name to C String.. skipping update.", a1);
    goto LABEL_3;
  }

  dylib = ramrod_update_get_dylib(a1);
  v5 = dylib;
  if (!dylib)
  {
    AMSupportLogInternal(3, "ramrod_update_twostage_enabled", "ramrod_update_get_dylib returned NULL for %@, skipping update.", a1);
    goto LABEL_33;
  }

  v6 = dlopen(dylib, 261);
  v3 = v6;
  if (!v6)
  {
    v20 = dlerror();
    AMSupportLogInternal(3, "ramrod_update_twostage_enabled", "%@ dylib missing, skipping update: %s: %s", a1, v5, v20);
    goto LABEL_35;
  }

  if (!ramrod_copy_updater_functions(v6, CStringPtr, &v24, 0, v7, v8, v9, v10) || !*(v24 + 2) || !*v24)
  {
    goto LABEL_35;
  }

  v11 = *(v24 + 3);
  if (!v11)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v14 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v14)
      {
        CFDictionarySetValue(Mutable, @"Options", v14);
        sub_1000129FC();
        v16 = v15(Mutable);
        if (v16)
        {
          v21 = 0;
          if ((*(v24 + 2))(v16, @"queryInfo", 0, &cf, &v21) == 1 && !v21 && cf && (v17 = CFGetTypeID(cf), v17 == CFDictionaryGetTypeID()) && CFDictionaryGetValue(cf, @"IsTwoStageSupported") == kCFBooleanTrue)
          {
            v18 = "Enable";
            CStringPtr = 1;
          }

          else
          {
            CStringPtr = 0;
            v18 = "Disable";
          }

          ramrod_log_msg_cf(@"Runtime check for two-stage support: %s\n", v18);
          goto LABEL_25;
        }

        AMSupportLogInternal(3, "ramrod_update_twostage_enabled", "Failed to create %s obj, error=%@", CStringPtr, v23);
      }

      else
      {
        AMSupportLogInternal(4, "ramrod_update_twostage_enabled", "subOptions failed to allocate");
      }
    }

    else
    {
      AMSupportLogInternal(4, "ramrod_update_twostage_enabled", "updaterOptions failed to allocate");
    }

LABEL_35:
    CStringPtr = 0;
    goto LABEL_25;
  }

  CStringPtr = v11(&v23);
  v12 = "Enable";
  if (!CStringPtr)
  {
    v12 = "Disable";
  }

  ramrod_log_msg_cf(@"Runtime (via IsTwoStageSupported) check for two-stage support: %s\n", v12);
  sub_100012A44();
LABEL_25:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v24)
  {
    free(v24);
    v24 = 0;
  }

  if (v3)
  {
    dlclose(v3);
  }

  return CStringPtr;
}

const __CFString *ramrod_update_supported(CFStringRef theString, const __CFString *a2)
{
  v2 = theString;
  v27 = 0;
  cf = 0;
  v26 = 0;
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (!CStringPtr)
    {
      AMSupportLogInternal(3, "_ramrod_update_supported", "Failed to convert %@ name to C String.. skipping update.", v2);
      goto LABEL_15;
    }

    dylib = ramrod_update_get_dylib(v2);
    v6 = dylib;
    if (!dylib)
    {
      AMSupportLogInternal(3, "_ramrod_update_supported", "ramrod_update_get_dylib returned NULL for %@, skipping update.", v2);
      goto LABEL_15;
    }

    v7 = dlopen(dylib, 261);
    if (!v7)
    {
      v23 = dlerror();
      AMSupportLogInternal(3, "_ramrod_update_supported", "%@ dylib missing, skipping update: %s: %s", v2, v6, v23);
      goto LABEL_15;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      AMSupportLogInternal(4, "_ramrod_update_supported", "updaterOptions failed to allocate");
      goto LABEL_15;
    }

    v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v9)
    {
      AMSupportLogInternal(4, "_ramrod_update_supported", "subOptions failed to allocate");
      goto LABEL_15;
    }

    CFDictionarySetValue(Mutable, @"Options", v9);
    CFDictionarySetValue(v9, @"PreflightRequired", kCFBooleanTrue);
    if (!ramrod_copy_updater_functions(v7, CStringPtr, &v26, 0, v10, v11, v12, v13) || !*(v26 + 2) || !*(v26 + 1) || !*v26)
    {
      goto LABEL_15;
    }

    sub_1000129FC();
    v15 = v14(Mutable);
    v16 = v15;
    if (!v15)
    {
      AMSupportLogInternal(3, "_ramrod_update_supported", "Failed to create %s obj, error=%@", CStringPtr, v27);
      goto LABEL_15;
    }

    err = 0;
    if ((*(v26 + 1))(v15, 0))
    {
      v24 = v2;
      v17 = "%@ instructed us not to attempt OTA (via isDone)";
LABEL_14:
      AMSupportLogInternal(4, "_ramrod_update_supported", v17, v24);
LABEL_15:
      v2 = 0;
      goto LABEL_27;
    }

    v18 = (*(v26 + 2))(v16, @"queryInfo", 0, &cf, &err);
    if (v18 == 1 && !err)
    {
      if (!cf || (v19 = CFGetTypeID(cf), v19 == CFDictionaryGetTypeID()) && !CFDictionaryGetCount(cf))
      {
        v24 = v2;
        v17 = "%@ instructed us not to attempt OTA (via QueryInfo)";
        goto LABEL_14;
      }
    }

    v20 = err;
    if (a2 && err)
    {
      v21 = CFErrorCopyDescription(err);
      if (v21 && CFStringCompare(v21, a2, 0) == kCFCompareEqualTo)
      {
        AMSupportLogInternal(4, "_ramrod_update_supported", "%@ instructed us not to attempt update (via QueryInfo Error string match)", v2);
        goto LABEL_15;
      }

      AMSupportLogInternal(4, "_ramrod_update_supported", "%@ returned error, but no indication to skip update: %@", v2, err);
      v20 = err;
    }

    ramrod_log_msg_cf(@"%@ tells us to attempt Update.  success=%d, error=%d, result=%d.", v2, v18, v20 != 0, cf != 0);
    v2 = 1;
  }

  else
  {
    AMSupportLogInternal(3, "_ramrod_update_supported", "ERROR updater NULL.");
  }

LABEL_27:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v26)
  {
    free(v26);
  }

  return v2;
}

void sub_100014698()
{
  sub_100012A30();
  AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "fp_create failed on %s. error=%@", v4, *v3);
  ramrod_create_error_cf(v1, v0, 1013, *v2, @"%s: Preflight Create failed on %s", v5, v6, v7, "ramrod_update_copy_deviceinfo_with_options");
}

void sub_100014714()
{
  sub_100012A30();
  AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "Exceeded maximum loops (%d) for %s. error=%@", 1024, v3);
  ramrod_create_error_cf(v1, v0, 1016, *v2, @"%s: Exceeded maximum loops for %s", v4, v5, v6, "ramrod_update_copy_deviceinfo_with_options");
}