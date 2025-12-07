uint64_t start()
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3010000000;
  v44 = 0;
  v45 = 0;
  v43 = "";
  v1 = _set_user_dir_suffix();
  if ((v1 & 1) == 0)
  {
    v21 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *__error();
      v23 = __error();
      v24 = strerror(*v23);
      *buf = 67109378;
      *v49 = v22;
      *&v49[4] = 2080;
      *&v49[6] = v24;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to set temporary directory subpath: %d (%s)", buf, 0x12u);
    }

    v25 = *__error();
    v26 = __error();
    strerror(*v26);
    sub_100011E6C("main", 1394, -2, 0, @"Failed to set temporary directory subpath: %d (%s)", v27, v28, v29, v25);
    v30 = [objc_claimAutoreleasedReturnValue() description];
    v31 = v30;
    [v30 UTF8String];
    _os_crash();

    __break(1u);
    goto LABEL_14;
  }

  v5 = sub_100015DA0(v1);
  if (!v5)
  {
LABEL_14:
    sub_100011E6C("main", 1402, -2, 0, @"Failed to query working directory.", v2, v3, v4, v36);
    v5 = [objc_claimAutoreleasedReturnValue() description];
    v32 = v5;
    [v5 UTF8String];
    _os_crash();

    __break(1u);
    goto LABEL_15;
  }

  v6 = +[NSFileManager defaultManager];
  v46 = NSFilePosixPermissions;
  v47 = &off_100034A20;
  v7 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v39 = 0;
  v8 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v7 error:&v39];
  v0 = v39;

  if ((v8 & 1) == 0)
  {
LABEL_15:
    v33 = sub_100011E6C("main", 1407, -2, v0, @"Failed to create %@.", v9, v10, v11, v5);

    v34 = [v33 description];
    v35 = v34;
    [v34 UTF8String];
    _os_crash();

    __break(1u);
    goto LABEL_16;
  }

  v12 = v41;
  v14 = (v41 + 4);
  v13 = v41[4];
  if (v13)
  {
    IONotificationPortDestroy(v13);
    *v14 = 0;
  }

  v15 = *(v12 + 10);
  if (v15)
  {
    IOObjectRelease(v15);
  }

  *v14 = 0;
  v14[1] = 0;
  *v14 = IONotificationPortCreate(kIOMasterPortDefault);
  Main = CFRunLoopGetMain();
  RunLoopSource = IONotificationPortGetRunLoopSource(*v14);
  CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
  if (!*v14)
  {
LABEL_16:
    sub_10001B568();
    _os_crash();
    sub_10001B5C4();
  }

  v18 = &_dispatch_main_q;
  mach_service = xpc_connection_create_mach_service("com.apple.mobile.storage_mounter.xpc", &_dispatch_main_q, 1uLL);

  if (!mach_service)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v49 = "com.apple.mobile.storage_mounter.xpc";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create xpc listener for %s.", buf, 0xCu);
    }

    exit(1);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001524;
  handler[3] = &unk_100030910;
  handler[4] = &v40;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(mach_service);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000022C4;
  v37[3] = &unk_100030910;
  v37[4] = &v40;
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, v37);

  CFRunLoopRun();
  _Block_object_dispose(&v40, 8);
  return 0;
}

void sub_100001500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001524(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B5E4(v3);
    }

    xpc_connection_set_target_queue(v3, &_dispatch_main_q);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000162C;
    v7[3] = &unk_1000308E8;
    v9 = *(a1 + 32);
    v6 = v3;
    v8 = v6;
    xpc_connection_set_event_handler(v6, v7);
    xpc_connection_resume(v6);
  }

  else if (v3 == &_xpc_error_connection_invalid && type == &_xpc_type_error)
  {
    sub_10001B5C8();
  }
}

void sub_10000162C(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type != &_xpc_type_dictionary)
  {
    v5 = v3 == &_xpc_error_connection_invalid && type == &_xpc_type_error;
    if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B674(a1);
    }

    goto LABEL_42;
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(a1 + 32);
  v8 = v3;
  length = 0;
  reply = xpc_dictionary_create_reply(v8);
  if (!reply)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "Failed to create xpc reply dictionary.";
LABEL_29:
      v23 = 2;
      goto LABEL_30;
    }

LABEL_40:

LABEL_41:
    xpc_connection_cancel(*(a1 + 32));
    goto LABEL_42;
  }

  data = xpc_dictionary_get_data(v8, "EncodedDictionary", &length);
  if (!data)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "EncodedDictionary";
      v22 = "Invalid or missing value for %s.";
      v23 = 12;
LABEL_30:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v22, buf, v23);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v11 = data;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v22 = "Failed to create response dictionary.";
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  v13 = Mutable;
  CFDictionarySetValue(Mutable, @"Status", @"Failure");
  v14 = CFDataCreate(0, v11, length);
  if (!v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to encode buffer.", buf, 2u);
    }

    v26 = v13;
LABEL_39:
    CFRelease(v26);
    goto LABEL_40;
  }

  v15 = v14;
  v16 = CFPropertyListCreateWithData(0, v14, 0, 0, 0);
  v17 = v16;
  if (!v16 || (v34 = v15, v18 = CFGetTypeID(v16), v5 = v18 == CFDictionaryGetTypeID(), v15 = v34, !v5))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary with data.", buf, 2u);
    }

    CFRelease(v13);
    if (v17)
    {
      cfa = v17;
      v24 = 0;
      v25 = 0;
      CFRelease(cfa);
      goto LABEL_48;
    }

    v26 = v15;
    goto LABEL_39;
  }

  Value = CFDictionaryGetValue(v17, @"RequestType");
  v20 = Value;
  cf = v17;
  if (!Value || (v21 = CFGetTypeID(Value), v21 != CFStringGetTypeID()))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *buf = 138412546;
    v39 = @"RequestType";
    v40 = 2112;
    v41 = v20;
    v27 = "Invalid value for %@: %@";
    v28 = 22;
    goto LABEL_45;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B708(v7);
  }

  if (CFEqual(v20, @"CopyDevices"))
  {
    if (sub_100007D0C(v7, @"CopyDevices"))
    {
      sub_100002640(v6 + 32, cf, v13);
      goto LABEL_102;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v29 = sub_100007B7C(v7);
    *buf = 138412546;
    v39 = v29;
    v40 = 2112;
    v41 = @"CopyDevices";
    goto LABEL_72;
  }

  if (CFEqual(v20, @"Mount"))
  {
    if (sub_100007D0C(v7, @"MountDevice"))
    {
      sub_1000027FC(v6 + 32, cf, v13);
      goto LABEL_102;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v29 = sub_100007B7C(v7);
      *buf = 138412546;
      v39 = v29;
      v40 = 2112;
      v41 = @"MountDevice";
LABEL_72:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ missing required entitlement: %@", buf, 0x16u);

      goto LABEL_73;
    }

    goto LABEL_73;
  }

  if (CFEqual(v20, @"Unmount"))
  {
    if ((sub_100007D0C(v7, @"UnmountDevice") & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v29 = sub_100007B7C(v7);
        *buf = 138412546;
        v39 = v29;
        v40 = 2112;
        v41 = @"UnmountDevice";
        goto LABEL_72;
      }

LABEL_73:
      v25 = 0;
      v24 = 0;
      v15 = v34;
      goto LABEL_47;
    }

    sub_100004144(v6 + 32, cf, v13);
LABEL_102:
    v15 = v34;
    v30 = CFPropertyListCreateData(0, v13, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (v30)
    {
      v24 = v30;
      BytePtr = CFDataGetBytePtr(v30);
      v32 = CFDataGetLength(v24);
      xpc_dictionary_set_data(reply, "EncodedDictionary", BytePtr, v32);
      xpc_connection_send_message(v7, reply);
      v25 = 1;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary with data.", buf, 2u);
      }

      v25 = 0;
      v24 = 0;
    }

    goto LABEL_47;
  }

  if (CFEqual(v20, @"Sync"))
  {
    if ((sub_100007D0C(v7, @"SyncDevice") & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v29 = sub_100007B7C(v7);
        *buf = 138412546;
        v39 = v29;
        v40 = 2112;
        v41 = @"SyncDevice";
        goto LABEL_72;
      }

      goto LABEL_73;
    }

    sub_100004C74(v6 + 32, cf, v13);
    goto LABEL_102;
  }

  if (!CFEqual(v20, @"CopyPersonalizationManifest"))
  {
    if (CFEqual(v20, @"CopyPersonalizationNonce"))
    {
      if (sub_100007D0C(v7, @"QueryNonce"))
      {
        sub_1000056C0(v6 + 32, cf, v13);
        goto LABEL_102;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_112;
      }

      goto LABEL_46;
    }

    if (CFEqual(v20, @"CopyPersonalizationIdentifiers"))
    {
      if (sub_100007D0C(v7, @"QueryNonce"))
      {
        sub_100005A00(v6 + 32, cf, v13);
        goto LABEL_102;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_112;
      }

      goto LABEL_46;
    }

    if (CFEqual(v20, @"CopyCryptexNonce"))
    {
      if (sub_100007D0C(v7, @"QueryNonce"))
      {
        sub_100005F90(v6 + 32, cf, v13);
        goto LABEL_102;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_112;
      }

      goto LABEL_46;
    }

    if (CFEqual(v20, @"RollPersonalizationNonce"))
    {
      if (sub_100007D0C(v7, @"QueryNonce"))
      {
        sub_1000061F0(v6 + 32, cf, v13);
        goto LABEL_102;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_112;
      }

      goto LABEL_46;
    }

    if (CFEqual(v20, @"RollCryptexNonce"))
    {
      if (sub_100007D0C(v7, @"QueryNonce"))
      {
        sub_10000650C(v6 + 32, cf, v13);
        goto LABEL_102;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_112;
      }

      goto LABEL_46;
    }

    if (CFEqual(v20, @"CopyDeveloperModeStatus"))
    {
      if (sub_100007D0C(v7, @"QueryNonce"))
      {
        sub_10000674C(v6 + 32, cf, v13);
        goto LABEL_102;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_112;
      }

      goto LABEL_46;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *buf = 138412290;
    v39 = v20;
    v27 = "Invalid request type: %@";
    v28 = 12;
LABEL_45:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
    goto LABEL_46;
  }

  if (sub_100007D0C(v7, @"QueryNonce"))
  {
    sub_100005028(v6 + 32, cf, v13);
    goto LABEL_102;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
LABEL_112:
    v33 = sub_100007B7C(v7);
    *buf = 138412546;
    v39 = v33;
    v40 = 2112;
    v41 = @"QueryNonce";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ missing required entitlement: %@", buf, 0x16u);
  }

LABEL_46:
  v25 = 0;
  v24 = 0;
  v15 = v34;
LABEL_47:
  CFRelease(v13);
  CFRelease(cf);
LABEL_48:
  CFRelease(v15);
  if (v24)
  {
    CFRelease(v24);
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
}

void sub_1000022C4(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string)
  {
    v5 = [[NSString alloc] initWithUTF8String:string];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B7A8();
    }

    if (![v5 isEqualToString:@"com.apple.mobile.ptp_camera"])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10001B820();
      }

      goto LABEL_18;
    }

    v6 = *(*(a1 + 32) + 8);
    notification = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1000068A0;
    v25 = sub_1000068B0;
    v26 = 0;
    v7 = IOServiceMatching("IOUSBInterface");
    v8 = v7;
    if (v7)
    {
      [(__CFDictionary *)v7 setObject:&off_100034A38 forKeyedSubscript:@"bInterfaceClass"];
      [(__CFDictionary *)v8 setObject:&off_100034A50 forKeyedSubscript:@"bInterfaceSubClass"];
      [(__CFDictionary *)v8 setObject:&off_100034A50 forKeyedSubscript:@"bInterfaceProtocol"];
      v9 = os_transaction_create();
      v10 = v22[5];
      v22[5] = v9;

      v11 = dispatch_time(0, 15000000000);
      v12 = dispatch_get_global_queue(0, 0);
      *&block = _NSConcreteStackBlock;
      *(&block + 1) = 3221225472;
      v30 = sub_1000068B8;
      v31 = &unk_100030938;
      v32 = &v21;
      dispatch_after(v11, v12, &block);

      v13 = *(v6 + 32);
      v14 = v8;
      v15 = IOServiceAddMatchingNotification(v13, "IOServiceFirstMatch", v14, sub_1000068CC, (v6 + 32), &notification);

      if (!v15)
      {
        v19 = *(v6 + 40);
        if (v19)
        {
          v19 = IOObjectRelease(v19);
          *(v6 + 40) = 0;
        }

        v20 = notification;
        *(v6 + 40) = notification;
        sub_1000068CC(v19, v20);
        goto LABEL_17;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v28[0] = 67109120;
        v28[1] = v15 & 0x3FFF;
        v16 = "IOServiceAddMatchingNotification failed: %04x";
        p_block = v28;
        v18 = 8;
LABEL_13:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v16, p_block, v18);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(block) = 136315138;
      *(&block + 4) = "IOUSBInterface";
      v16 = "IOServiceMatching failed for %s.";
      p_block = &block;
      v18 = 12;
      goto LABEL_13;
    }

LABEL_17:
    _Block_object_dispose(&v21, 8);

LABEL_18:
  }
}

void sub_100002620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002640(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  if (a1 && a2)
  {
    v4 = sub_100014B34(1);
    if (v4)
    {
      v5 = v4;
      v6 = [v4 allValues];
      CFDictionarySetValue(a3, @"EntryList", v6);
      CFDictionarySetValue(a3, @"Status", @"Success");

      goto LABEL_15;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve attached device list.", v13, 2u);
    }

    v10 = @"Failed to retrieve attached device list.";
    v11 = 152;
    v12 = -2;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v10 = @"Invalid input(s)";
    v11 = 145;
    v12 = -3;
  }

  v5 = sub_100011E6C("handle_copy_devices", v11, v12, 0, v10, v7, v8, v9, *v13);
  if (!v5)
  {
    return;
  }

  if (!CFDictionaryGetValue(a3, @"Error"))
  {
    CFDictionarySetValue(a3, @"Error", @"InternalError");
  }

  CFDictionarySetValue(a3, @"DetailedError", [v5 description]);
LABEL_15:
}

void sub_1000027FC(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  if (!a1 || !theDict)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v23 = sub_100011E6C("handle_mount_disk_image", 226, -3, 0, @"Invalid input(s)", v20, v21, v22, v135);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v142 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v144 = 0;
    v5 = 0;
    goto LABEL_24;
  }

  v5 = CFDictionaryGetValue(theDict, @"DiskImageType");
  v6 = sub_100011650(v5);

  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v163 = @"DiskImageType";
      v164 = 2112;
      v165 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
    }

    v23 = sub_100011E6C("handle_mount_disk_image", 233, -3, 0, @"Invalid value for %@: %@", v31, v32, v33, @"DiskImageType");
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v142 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v144 = 0;
    goto LABEL_24;
  }

  v7 = CFDictionaryGetValue(theDict, @"ImageSignature");
  v8 = sub_1000116BC(v7);

  v144 = v7;
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v163 = @"ImageSignature";
      v164 = 2112;
      v165 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
    }

    v23 = sub_100011E6C("handle_mount_disk_image", 240, -3, 0, @"Invalid value for %@: %@", v34, v35, v36, @"ImageSignature");
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v142 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
LABEL_24:
    v143 = 0;
LABEL_25:
    v145 = 0;
    v146 = 0;
    goto LABEL_26;
  }

  v9 = CFDictionaryGetValue(theDict, @"DiskImagePath");
  v10 = sub_100011650(v9);

  v143 = v9;
  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v163 = @"DiskImagePath";
      v164 = 2112;
      v165 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
    }

    v23 = sub_100011E6C("handle_mount_disk_image", 247, -3, 0, @"Invalid value for %@: %@", v37, v38, v39, @"DiskImagePath");
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v142 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_25;
  }

  v11 = CFDictionaryGetValue(theDict, @"ImageTrustCache");
  v12 = v11;
  v146 = v11;
  if (v11)
  {
    v13 = sub_1000116BC(v11);

    if (!v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v163 = @"ImageTrustCache";
        v164 = 2112;
        v165 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for option %@: %@", buf, 0x16u);
      }

      sub_100011E6C("handle_mount_disk_image", 253, -3, 0, @"Invalid value for option %@: %@", v48, v49, v50, @"ImageTrustCache");
      goto LABEL_62;
    }
  }

  if (![(__CFString *)v5 isEqualToString:@"Cryptex"])
  {
    v145 = 0;
    goto LABEL_43;
  }

  v14 = sub_1000116BC(v12);

  if (!v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v163 = @"ImageTrustCache";
      v164 = 2112;
      v165 = v146;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for required option %@: %@", buf, 0x16u);
    }

    sub_100011E6C("handle_mount_disk_image", 259, -3, 0, @"Invalid value for required option %@: %@", v51, v52, v53, @"ImageTrustCache");
    v23 = LABEL_62:;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v142 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v145 = 0;
    goto LABEL_26;
  }

  v15 = CFDictionaryGetValue(theDict, @"ImageInfoPlist");
  if (v15)
  {
    v145 = v15;
    v16 = sub_1000116BC(v15);

    v12 = v146;
    if (!v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v163 = @"ImageInfoPlist";
        v164 = 2112;
        v165 = v145;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for option %@: %@", buf, 0x16u);
      }

      sub_100011E6C("handle_mount_disk_image", 265, -3, 0, @"Invalid value for option %@: %@", v17, v18, v19, @"ImageInfoPlist");
      v23 = LABEL_66:;
      v24 = 0;
      v25 = 0;
      v26 = 0;
LABEL_73:
      v27 = 0;
      v142 = 0;
      v28 = 0;
LABEL_74:
      v29 = 0;
      v30 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v145 = 0;
    v12 = v146;
  }

LABEL_43:
  if ([(__CFString *)v5 isEqualToString:@"Personalized"])
  {
    bzero(buf, 0x400uLL);
    *v154 = 0;
    v153[0] = 0;
    inited = Img4DecodeInitManifest([(__CFString *)v7 bytes], [(__CFString *)v7 length], v166);
    if (inited)
    {
      v41 = inited;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v159 = 67109120;
        *&v159[4] = v41;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to decode img4 manifest: %d", v159, 8u);
      }

      sub_100011E6C("handle_mount_disk_image", 282, -2, 0, @"Failed to decode img4 manifest: %d", v42, v43, v44, v41);
      v23 = LABEL_71:;
      v26 = 0;
LABEL_72:
      v24 = 0;
      v25 = 0;
      goto LABEL_73;
    }

    Img4DecodeGetObjectPropertyData(v166, 1885629799, 1885630061, v154, v153);
    if (v57)
    {
      v58 = v57;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v159 = 67109120;
        *&v159[4] = v58;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve data from manifest: %d", v159, 8u);
      }

      sub_100011E6C("handle_mount_disk_image", 288, -2, 0, @"Failed to retrieve data from manifest: %d", v59, v60, v61, v58);
      goto LABEL_71;
    }

    v63 = [NSString alloc];
    v64 = [v63 initWithBytes:*v154 length:v153[0] encoding:4];
    if (!v64)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v88 = __error();
        v89 = strerror(*v88);
        *v159 = 136315138;
        *&v159[4] = v89;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string: %s", v159, 0xCu);
      }

      v90 = __error();
      v91 = strerror(*v90);
      sub_100011E6C("handle_mount_disk_image", 294, -2, 0, @"Failed to create string: %s", v92, v93, v94, v91);
      goto LABEL_71;
    }

    v26 = v64;
    if ([v64 isEqualToString:@"DebugDiskImage"])
    {
      v65 = "/private/var/personalized_debug";
    }

    else if ([v26 isEqualToString:@"DemoDiskImage"])
    {
      v65 = "/private/var/personalized_demo";
    }

    else if ([v26 isEqualToString:@"DeveloperDiskImage"])
    {
      v65 = "/System/Developer";
    }

    else if ([v26 isEqualToString:@"FactoryDiskImage"])
    {
      v65 = "/private/var/personalized_factory";
    }

    else if ([v26 isEqualToString:@"AutomationDiskImage"] & 1) != 0 || (objc_msgSend(v26, "isEqualToString:", @"ProdAutomationDiskImage"))
    {
      v65 = "/private/var/personalized_automation";
    }

    else if ([v26 isEqualToString:@"FieldServiceDiskImage"])
    {
      v65 = "/System/Volumes/FieldService";
    }

    else if ([v26 isEqualToString:@"FieldServiceDiagnosticDiskImage"])
    {
      v65 = "/System/Volumes/FieldServiceDiagnostic";
    }

    else if ([v26 isEqualToString:@"FieldServiceRepairDiskImage"])
    {
      v65 = "/System/Volumes/FieldServiceRepair";
    }

    else if ([v26 isEqualToString:@"QualityDiskImage"])
    {
      v65 = "/private/var/personalized_quality";
    }

    else
    {
      if (([v26 isEqualToString:@"RepairDiskImage"] & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v159 = 138412290;
          *&v159[4] = v26;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid personalized disk image type: %@", v159, 0xCu);
        }

        sub_100011E6C("handle_mount_disk_image", 321, -3, 0, @"Invalid personalized disk image type: %@", v132, v133, v134, v26);
        goto LABEL_157;
      }

      v65 = "/private/var/personalized_repair";
    }

    if (mkdir(v65, 0x1EDu) && *__error() != 17)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v112 = __error();
        v113 = strerror(*v112);
        *v159 = 136315394;
        *&v159[4] = v65;
        *&v159[12] = 2080;
        *&v159[14] = v113;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create mount path %s: %s", v159, 0x16u);
      }

      v114 = __error();
      strerror(*v114);
      v110 = @"Failed to create mount path %s: %s";
      v136 = v65;
      v111 = 327;
      goto LABEL_156;
    }

    if ([v26 isEqualToString:@"FactoryDiskImage"])
    {
      if (snprintf(buf, 0x400uLL, "%s/%s", v65, "XXXXXXX") >= 0x400)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v159 = 134217984;
          *&v159[4] = 1024;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create path: > %ld", v159, 0xCu);
        }

        v110 = @"Failed to create path: > %ld";
        v136 = 1024;
        v111 = 336;
LABEL_156:
        sub_100011E6C("handle_mount_disk_image", v111, -2, 0, v110, v107, v108, v109, v136);
        v23 = LABEL_157:;
        goto LABEL_72;
      }

      if (!mkdtemp(buf))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v115 = __error();
          v116 = strerror(*v115);
          *v159 = 136315394;
          *&v159[4] = buf;
          *&v159[12] = 2080;
          *&v159[14] = v116;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %s: %s", v159, 0x16u);
        }

        v117 = __error();
        strerror(*v117);
        v110 = @"Failed to create %s: %s";
        v136 = buf;
        v111 = 340;
        goto LABEL_156;
      }

      v65 = buf;
      chmod(buf, 0x1EDu);
    }

    v28 = [[NSString alloc] initWithUTF8String:v65];
    v142 = @"com.apple.mobile.personalized_image_mounted";
    v12 = v146;
  }

  else
  {
    if (![(__CFString *)v5 isEqualToString:@"Cryptex"])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v163 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unsupported disk image type: %@", buf, 0xCu);
      }

      sub_100011E6C("handle_mount_disk_image", 357, -3, 0, @"Unsupported disk image type: %@", v54, v55, v56, v5);
      goto LABEL_66;
    }

    v142 = @"com.apple.mobile.cryptex_mounted";
    v26 = 0;
    v28 = 0;
  }

  v5 = v5;
  v26 = v26;
  if ([(__CFString *)v5 isEqual:@"Developer"])
  {

LABEL_52:
    if (!sub_100011C30())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Developer mode is not enabled.", buf, 2u);
      }

      v23 = sub_100011E6C("handle_mount_disk_image", 371, -4, 0, @"Developer mode is not enabled.", v45, v46, v47, v135);
      v24 = 0;
      v25 = 0;
      v27 = 0;
      goto LABEL_74;
    }

    goto LABEL_83;
  }

  if (([(__CFString *)v5 isEqual:@"Personalized"]& 1) == 0)
  {

    goto LABEL_83;
  }

  v62 = [v26 isEqual:@"DeveloperDiskImage"];

  if (v62)
  {
    goto LABEL_52;
  }

LABEL_83:
  if (![(__CFString *)v5 isEqualToString:@"Cryptex"])
  {
    v138 = a3;
    v139 = v5;
    v66 = sub_100015030(v5, 1);
    memset(v159, 0, sizeof(v159));
    v160 = 0u;
    v161 = 0u;
    v30 = v66;
    v67 = [v30 countByEnumeratingWithState:v159 objects:buf count:16];
    if (v67)
    {
      v68 = v67;
      v69 = **&v159[16];
      while (2)
      {
        for (i = 0; i != v68; i = i + 1)
        {
          if (**&v159[16] != v69)
          {
            objc_enumerationMutation(v30);
          }

          v71 = *(*&v159[8] + 8 * i);
          v72 = [v71 objectForKeyedSubscript:@"MountPath"];
          v73 = [v72 isEqualToString:v28];

          if (v73)
          {
            v5 = v139;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v78 = [v71 objectForKeyedSubscript:@"MountPath"];
              *v154 = 138412802;
              *&v154[4] = v139;
              v155 = 2112;
              v156 = v26;
              v157 = 2112;
              v158 = v78;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "A disk image of type %@/%@ is already mounted at %@.", v154, 0x20u);
            }

            v137 = [v71 objectForKeyedSubscript:@"MountPath"];
            v23 = sub_100011E6C("handle_mount_disk_image", 393, -3, 0, @"A disk image of type %@/%@ is already mounted at %@.", v79, v80, v81, v139);

            v24 = 0;
            v25 = 0;
            v27 = 0;
            v29 = 0;
            a3 = v138;
            goto LABEL_26;
          }

          v12 = v146;
        }

        v68 = [v30 countByEnumeratingWithState:v159 objects:buf count:16];
        if (v68)
        {
          continue;
        }

        break;
      }
    }

    if ([v26 isEqualToString:@"FieldServiceDiskImage"] & 1) != 0 || (objc_msgSend(v26, "isEqualToString:", @"FieldServiceDiagnosticDiskImage"))
    {
      a3 = v138;
      v5 = v139;
      if (v12)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v95 = [v26 isEqualToString:@"FieldServiceRepairDiskImage"];
      a3 = v138;
      v5 = v139;
      if (v12 || (v95 & 1) == 0)
      {
LABEL_103:
        v150 = 0;
        v151 = 0;
        v27 = sub_10000CCC8(v143, v5, v144, v12, v28, &v151, &v150);
        v29 = v151;
        v74 = v150;
        v23 = v74;
        if (!v27)
        {
          if (v29)
          {
            v29 = v29;

            v24 = 0;
            v25 = 0;
            v27 = 0;
            value = v29;
LABEL_91:
            v28 = value;
            CFDictionarySetValue(a3, @"MountPath", value);
            CFDictionarySetValue(a3, @"Status", @"Success");
            goto LABEL_26;
          }

          v24 = 0;
          v25 = 0;
          v27 = 0;
          goto LABEL_26;
        }

        v149 = v74;
        v75 = sub_100007FF4(v28, &v149);
        valuea = v149;

        if (v75)
        {
          if (sub_1000080C4(v28, v5))
          {
            v24 = sub_100010CE4();
            if (v24)
            {
              v148 = valuea;
              v76 = sub_100010D0C(v28, &v148);
              v77 = v148;

              if ((v76 & 1) == 0)
              {
                v121 = [[NSString alloc] initWithFormat:@"Failed to register apps."];
                if (v77)
                {
                  v135 = v121;
                  v122 = [NSString stringWithFormat:@" %@ (%@)"];

                  v121 = v122;
                }

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *v154 = 138412290;
                  *&v154[4] = v121;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", v154, 0xCu);
                }

                v23 = sub_100011E6C("handle_mount_disk_image", 439, -2, v77, @"Failed to register apps.", v123, v124, v125, v135);

                v24 = 0;
                v25 = 0;
LABEL_180:
                a3 = v138;
                v5 = v139;
                goto LABEL_26;
              }

              v23 = v77;
            }

            else
            {
              v23 = valuea;
            }

            if (![v26 isEqualToString:@"DeveloperDiskImage"] || (v147 = v23, v118 = sub_10000FFD0(v26, v144, &v147), v119 = v147, v120 = v23, v23 = v119, v120, (v118 & 1) != 0))
            {
              value = v28;
              a3 = v138;
              v5 = v139;
              goto LABEL_86;
            }

            v126 = [[NSString alloc] initWithFormat:@"Failed to store image manifest."];
            if (v23)
            {
              v135 = v126;
              v127 = [NSString stringWithFormat:@" %@ (%@)"];

              v126 = v127;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v154 = 138412290;
              *&v154[4] = v126;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", v154, 0xCu);
            }

            v131 = sub_100011E6C("handle_mount_disk_image", 450, -2, v23, @"Failed to store image manifest.", v128, v129, v130, v135);

            v25 = 0;
            v23 = v131;
            goto LABEL_180;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *v154 = 138412290;
            *&v154[4] = v28;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to load launchd jobs for %@.", v154, 0xCu);
          }

          v23 = sub_100011E6C("handle_mount_disk_image", 432, -2, 0, @"Failed to load launchd jobs for %@.", v104, v105, v106, v28);
        }

        else
        {
          v99 = [[NSString alloc] initWithFormat:@"Failed to load launchd jetsam properties for %@.", v28];
          if (valuea)
          {
            v100 = [NSString stringWithFormat:@" %@ (%@)", v99, valuea];

            v99 = v100;
          }

          v5 = v139;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *v154 = 138412290;
            *&v154[4] = v99;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", v154, 0xCu);
          }

          v23 = sub_100011E6C("handle_mount_disk_image", 427, -2, valuea, @"Failed to load launchd jetsam properties for %@.", v101, v102, v103, v28);
        }

        v24 = 0;
        v25 = 0;
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v154 = 138412290;
      *&v154[4] = v26;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Personalized trust cache required for disk image of type '%@'.", v154, 0xCu);
    }

    v23 = sub_100011E6C("handle_mount_disk_image", 402, -3, 0, @"Personalized trust cache required for disk image of type '%@'.", v96, v97, v98, v26);
    v24 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
    v146 = 0;
    goto LABEL_26;
  }

  *v159 = v28;
  v151 = 0;
  v27 = sub_10000BEB8(v143, v5, v144, v12, v145, v159, &v151);
  value = *v159;

  v23 = v151;
  if (v27)
  {
    v24 = 0;
    v29 = 0;
    v30 = 0;
LABEL_86:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v154 = 138412290;
      *&v154[4] = v142;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posting notification: %@", v154, 0xCu);
    }

    sub_100009E74(v142);
    v152[0] = @"DiskImageMountPath";
    v152[1] = @"DiskImageType";
    v153[0] = value;
    v153[1] = v5;
    v25 = [NSDictionary dictionaryWithObjects:v153 forKeys:v152 count:2];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v154 = 138412546;
      *&v154[4] = @"com.apple.mobile.disk_image_mounted";
      v155 = 2112;
      v156 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posting notification: %@ (%@)", v154, 0x16u);
    }

    sub_100009DD4(@"com.apple.mobile.disk_image_mounted", v25);
    goto LABEL_91;
  }

  v82 = [[NSString alloc] initWithFormat:@"Failed to mount %@.", v143];
  if (v23)
  {
    v83 = [NSString stringWithFormat:@" %@ (%@)", v82, v23];

    v82 = v83;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v163 = v82;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v87 = sub_100011E6C("handle_mount_disk_image", 381, -2, v23, @"Failed to mount %@.", v84, v85, v86, v143);

  v24 = 0;
  v25 = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  v23 = v87;
  v28 = value;
LABEL_26:
  if (v23)
  {
    if (v24)
    {
      sub_100010FF8(v28, 0);
    }

    if (v28 && v27 && ([(__CFString *)v5 isEqualToString:@"Cryptex"]& 1) == 0)
    {
      unmount([v28 fileSystemRepresentation], 0x80000);
      sub_10000B970([v27 fileSystemRepresentation]);
    }

    if ([v26 isEqualToString:@"DeveloperDiskImage"])
    {
      sub_1000107E4(v26, 0);
    }

    if (!CFDictionaryGetValue(a3, @"Error"))
    {
      CFDictionarySetValue(a3, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a3, @"DetailedError", [v23 description]);
  }
}

void sub_100004144(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  if (a1 && theDict)
  {
    v4 = CFDictionaryGetValue(theDict, @"MountPath");
    v5 = sub_100011650(v4);

    if (v5)
    {
      v6 = sub_100015054(v4, 1);
      if (v6)
      {
        v7 = v6;
        v8 = [v6 objectForKeyedSubscript:@"DiskImageType"];
        v9 = v8;
        if (v8)
        {
          v10 = sub_100011650(v8);

          if (!v10)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query disk image type.", buf, 2u);
            }

            v20 = sub_100011E6C("handle_unmount", 539, -2, 0, @"Failed to query disk image type.", v44, v45, v46, v72);
            goto LABEL_42;
          }
        }

        if ([v9 isEqualToString:@"Cryptex"])
        {
          v11 = [v7 objectForKeyedSubscript:@"CryptexName"];
          [v11 UTF8String];
          v12 = cryptex_uninstall_4MSM();

          if (v12)
          {
            v13 = [v7 objectForKeyedSubscript:@"CryptexName"];
            [v13 UTF8String];
            v14 = cryptex_uninstall_4MSM();

            if (v14)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v15 = [v7 objectForKeyedSubscript:@"CryptexName"];
                *buf = 138412802;
                v75 = v15;
                v76 = 1024;
                LODWORD(v77[0]) = v14;
                WORD2(v77[0]) = 2080;
                *(v77 + 6) = strerror(v14);
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to uninstall cryptex (%@): %d (%s)", buf, 0x1Cu);
              }

              v16 = [v7 objectForKeyedSubscript:@"CryptexName"];
              strerror(v14);
              v20 = sub_100011E6C("handle_unmount", 551, -2, 0, @"Failed to uninstall cryptex (%@): %d (%s)", v17, v18, v19, v16);

LABEL_42:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = 0;
              goto LABEL_23;
            }
          }

          v24 = 0;
          v25 = 0;
          v20 = 0;
          v26 = 0;
          v27 = 0;
          goto LABEL_44;
        }

        v27 = [v7 objectForKeyedSubscript:@"DeviceNode"];
        v34 = sub_100011650(v27);

        if (v34)
        {
          v25 = [v7 objectForKeyedSubscript:@"BackingImage"];
          v35 = sub_100011650(v25);

          if (v35)
          {
            v26 = [v7 objectForKeyedSubscript:@"FilesystemType"];
            v36 = sub_100011650(v26);

            if (v36)
            {
              if (sub_1000086F8(v4))
              {
                if (sub_100010CE4())
                {
                  v73 = 0;
                  v37 = sub_100010FF8(v4, &v73);
                  v20 = v73;
                  if ((v37 & 1) == 0)
                  {
                    v38 = [[NSString alloc] initWithFormat:@"Failed to unregister apps."];
                    if (v20)
                    {
                      v72 = v38;
                      v39 = [NSString stringWithFormat:@" %@ (%@)"];

                      v38 = v39;
                    }

                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v75 = v38;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
                    }

                    v43 = sub_100011E6C("handle_unmount", 584, -2, v20, @"Failed to unregister apps.", v40, v41, v42, v72);

LABEL_67:
                    v24 = 0;
                    v20 = v43;
                    goto LABEL_23;
                  }
                }

                else
                {
                  v20 = 0;
                }

                if (unmount([(__CFString *)v4 fileSystemRepresentation], 0x80000))
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v59 = *__error();
                    v60 = __error();
                    v61 = strerror(*v60);
                    *buf = 138412802;
                    v75 = v4;
                    v76 = 1024;
                    LODWORD(v77[0]) = v59;
                    WORD2(v77[0]) = 2080;
                    *(v77 + 6) = v61;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to force unmount %@: %d (%s)", buf, 0x1Cu);
                  }

                  __error();
                  v62 = __error();
                  strerror(*v62);
                  v43 = sub_100011E6C("handle_unmount", 591, -2, 0, @"Failed to force unmount %@: %d (%s)", v63, v64, v65, v4);
                  goto LABEL_67;
                }

                if (([(__CFString *)v4 hasPrefix:@"/System/Volumes/FieldService"]& 1) == 0 && ([(__CFString *)v4 hasPrefix:@"/System/Volumes/FieldServiceDiagnostic"]& 1) == 0 && ([(__CFString *)v4 hasPrefix:@"/System/Volumes/FieldServiceRepair"]& 1) == 0 && ([(__CFString *)v4 hasPrefix:@"/Developer"]& 1) == 0 && ([(__CFString *)v4 hasPrefix:@"/System/Developer"]& 1) == 0 && rmdir([(__CFString *)v4 fileSystemRepresentation]) == -1)
                {
                  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_61;
                  }

                  v69 = *__error();
                  v70 = __error();
                  v71 = strerror(*v70);
                  *buf = 138412802;
                  v75 = v4;
                  v76 = 1024;
                  LODWORD(v77[0]) = v69;
                  WORD2(v77[0]) = 2080;
                  *(v77 + 6) = v71;
                  v67 = "Failed to remove %@: %d (%s)";
                  v68 = 28;
                  goto LABEL_81;
                }

                if (![v26 isEqualToString:@"apfs"])
                {
                  v24 = 0;
                  goto LABEL_78;
                }

                v66 = sub_100011244(v27);
                if (v66)
                {
                  v24 = v66;

                  v27 = v24;
LABEL_78:
                  sub_10000B970([(__CFString *)v27 fileSystemRepresentation]);
                  unlink([v25 UTF8String]);
LABEL_44:
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    sub_10001B898();
                  }

                  sub_100009E74(@"com.apple.mobile.storage_unmounted");
                  CFDictionarySetValue(a3, @"Status", @"Success");
                  goto LABEL_23;
                }

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v75 = v27;
                  v67 = "Failed to copy APFS volume partition for %@.";
                  v68 = 12;
LABEL_81:
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v67, buf, v68);
                }

LABEL_61:
                v24 = 0;
                goto LABEL_23;
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to unload launchd jobs.", buf, 2u);
              }

              sub_100011E6C("handle_unmount", 578, -2, 0, @"Failed to unload launchd jobs.", v56, v57, v58, v72);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v75 = @"FilesystemType";
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not extract %@ from map entry", buf, 0xCu);
              }

              sub_100011E6C("handle_unmount", 572, -2, 0, @"Could not extract %@ from map entry", v53, v54, v55, @"FilesystemType");
            }
            v20 = ;
            goto LABEL_61;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query backing image path.", buf, 2u);
          }

          v20 = sub_100011E6C("handle_unmount", 566, -2, 0, @"Failed to query backing image path.", v50, v51, v52, v72);
          v24 = 0;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v75 = @"DeviceNode";
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not extract %@ from map entry", buf, 0xCu);
          }

          v20 = sub_100011E6C("handle_unmount", 560, -2, 0, @"Could not extract %@ from map entry", v47, v48, v49, @"DeviceNode");
          v24 = 0;
          v25 = 0;
        }

        v26 = 0;
        goto LABEL_23;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v75 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "There is no matching entry in the device map for %@.", buf, 0xCu);
      }

      sub_100011E6C("handle_unmount", 532, -2, 0, @"There is no matching entry in the device map for %@.", v31, v32, v33, v4);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v75 = @"MountPath";
        v76 = 2112;
        v77[0] = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
      }

      sub_100011E6C("handle_unmount", 525, -3, 0, @"Invalid value for %@: %@", v28, v29, v30, @"MountPath");
    }
    v20 = ;
    v24 = 0;
    v9 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v7 = 0;
    goto LABEL_23;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
  }

  v20 = sub_100011E6C("handle_unmount", 518, -3, 0, @"Invalid input(s)", v21, v22, v23, v72);
  v24 = 0;
  v9 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v7 = 0;
  v4 = 0;
LABEL_23:
  if (v20)
  {
    if (!CFDictionaryGetValue(a3, @"Error"))
    {
      CFDictionarySetValue(a3, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a3, @"DetailedError", [v20 description]);
  }
}

void sub_100004C74(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v26 = 2;
  if (!a1 || !theDict)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v15 = sub_100011E6C("handle_sync", 665, -3, 0, @"Invalid input(s)", v16, v17, v18, v25);
    v7 = 0;
    v4 = 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_23:
    if (!CFDictionaryGetValue(a3, @"Error"))
    {
      CFDictionarySetValue(a3, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a3, @"DetailedError", [v15 description]);

    goto LABEL_26;
  }

  v4 = CFDictionaryGetValue(theDict, @"MountPath");
  v5 = sub_100011650(v4);

  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = @"MountPath";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to extract %@ from request", buf, 0xCu);
    }

    sub_100011E6C("handle_sync", 672, -3, 0, @"Failed to extract %@ from request", v19, v20, v21, @"MountPath");
    v15 = LABEL_22:;
    v7 = 0;
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v6 = sub_100015054(v4, 1);
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "There is no matching entry for %@.", buf, 0xCu);
    }

    sub_100011E6C("handle_sync", 679, -2, 0, @"There is no matching entry for %@.", v22, v23, v24, v4);
    goto LABEL_22;
  }

  v7 = v6;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B8DC();
  }

  if (!fsctl([(__CFString *)v4 UTF8String], 0x80004101uLL, &v26, 4u))
  {
    CFDictionarySetValue(a3, @"Status", @"Success");
    goto LABEL_26;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *__error();
    v9 = __error();
    v10 = strerror(*v9);
    *buf = 138412802;
    v28 = v4;
    v29 = 1024;
    v30 = v8;
    v31 = 2080;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to force the sync %@: %d (%s)", buf, 0x1Cu);
  }

  __error();
  v11 = __error();
  strerror(*v11);
  v15 = sub_100011E6C("handle_sync", 687, -2, 0, @"Failed to force the sync %@: %d (%s)", v12, v13, v14, v4);
  if (v15)
  {
    goto LABEL_23;
  }

LABEL_26:
}

void sub_100005028(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v46 = 0;
  v47 = 0;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  if (!a1 || !theDict)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v10 = sub_100011E6C("handle_copy_personalization_manifest", 793, -3, 0, @"Invalid input(s)", v16, v17, v18, v44);
    v5 = 0;
LABEL_19:
    v9 = 0;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v5 = CFDictionaryGetValue(theDict, @"PersonalizedImageType");
  v6 = sub_100011650(v5);

  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v49 = @"PersonalizedImageType";
      v50 = 2112;
      v51 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
    }

    v10 = sub_100011E6C("handle_copy_personalization_manifest", 799, -3, 0, @"Invalid value for %@: %@", v19, v20, v21, @"PersonalizedImageType");
    goto LABEL_19;
  }

  v7 = CFDictionaryGetValue(theDict, @"ImageSignature");
  v8 = sub_1000116BC(v7);

  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v49 = @"ImageSignature";
      v50 = 2112;
      v51 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
    }

    v10 = sub_100011E6C("handle_copy_personalization_manifest", 805, -3, 0, @"Invalid value for %@: %@", v22, v23, v24, @"ImageSignature");

    goto LABEL_19;
  }

  v45 = 0;
  v9 = sub_10000F8FC(v5, &v45);
  v10 = v45;
  if (!v9)
  {
    v25 = [[NSString alloc] initWithFormat:@"Failed to find a cached manifest (im4m) for variant %@ (personalization required).", v5];
    if (v10)
    {
      v26 = [NSString stringWithFormat:@" %@ (%@)", v25, v10];

      v25 = v26;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v30 = sub_100011E6C("handle_copy_personalization_manifest", 811, -2, v10, @"Failed to find a cached manifest (im4m) for variant %@ (personalization required).", v27, v28, v29, v5);

    v9 = 0;
LABEL_36:
    v10 = v30;
    if (!v30)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  inited = Img4DecodeInitManifest([v9 bytes], objc_msgSend(v9, "length"), v52);
  if (inited)
  {
    v12 = inited;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v49) = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to init img4 manifest: %d", buf, 8u);
    }

    sub_100011E6C("handle_copy_personalization_manifest", 817, -2, 0, @"Failed to init img4 manifest: %d", v13, v14, v15, v12);
    goto LABEL_34;
  }

  Img4DecodeGetObjectPropertyData(v52, 1885629799, 1145525076, &v47, &v46);
  if (v31)
  {
    v32 = v31;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v49) = v32;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve data from manifest: %d", buf, 8u);
    }

    v36 = @"Failed to retrieve data from manifest: %d";
    v44 = v32;
    v37 = 825;
LABEL_33:
    sub_100011E6C("handle_copy_personalization_manifest", v37, -2, 0, v36, v33, v34, v35, v44);
    v30 = LABEL_34:;

LABEL_35:
    goto LABEL_36;
  }

  v38 = [NSData alloc];
  v39 = [v38 initWithBytes:v47 length:v46];
  if (!v39)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", buf, 2u);
    }

    v36 = @"Failed to create data.";
    v37 = 831;
    goto LABEL_33;
  }

  v40 = v39;
  if (([v7 isEqualToData:v39] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Existing manifest's digest does not match.", buf, 2u);
    }

    v30 = sub_100011E6C("handle_copy_personalization_manifest", 836, -2, 0, @"Existing manifest's digest does not match.", v41, v42, v43, v44);

    goto LABEL_35;
  }

  CFDictionarySetValue(a3, @"ImageSignature", v9);
  CFDictionarySetValue(a3, @"Status", @"Success");

  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!CFDictionaryGetValue(a3, @"Error"))
  {
    CFDictionarySetValue(a3, @"Error", @"InternalError");
  }

  CFDictionarySetValue(a3, @"DetailedError", [v10 description]);
LABEL_23:
}

void sub_1000056C0(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  if (!a1 || !theDict)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v8 = sub_100011E6C("handle_copy_personalization_nonce", 865, -3, 0, @"Invalid input(s)", v9, v10, v11, v21);
    v5 = 0;
LABEL_11:
    v7 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v4 = CFDictionaryGetValue(theDict, @"PersonalizedImageType");
  v5 = v4;
  if (v4)
  {
    v6 = sub_100011650(v4);

    if (!v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = @"PersonalizedImageType";
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
      }

      v8 = sub_100011E6C("handle_copy_personalization_nonce", 871, -3, 0, @"Invalid value for %@: %@", v18, v19, v20, @"PersonalizedImageType");
      goto LABEL_11;
    }
  }

  v22 = 0;
  v7 = sub_10000E998(v5, &v22);
  v8 = v22;
  if (v7)
  {
    CFDictionarySetValue(a3, @"PersonalizationNonce", v7);
    CFDictionarySetValue(a3, @"Status", @"Success");
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v12 = [[NSString alloc] initWithFormat:@"Failed to copy personalization nonce."];
  if (v8)
  {
    v21 = v12;
    v13 = [NSString stringWithFormat:@" %@ (%@)"];

    v12 = v13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v17 = sub_100011E6C("handle_copy_personalization_nonce", 877, -2, v8, @"Failed to copy personalization nonce.", v14, v15, v16, v21);

  v7 = 0;
  v8 = v17;
  if (v17)
  {
LABEL_12:
    if (!CFDictionaryGetValue(a3, @"Error"))
    {
      CFDictionarySetValue(a3, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a3, @"DetailedError", [v8 description]);
  }

LABEL_15:
}

void sub_100005A00(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  if (a1 && theDict)
  {
    v4 = CFDictionaryGetValue(theDict, @"PersonalizedImageType");
    v5 = v4;
    if (v4)
    {
      v6 = sub_100011650(v4);

      if (!v6)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v41 = @"PersonalizedImageType";
          *&v41[8] = 2112;
          *&v41[10] = v5;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
        }

        v10 = sub_100011E6C("handle_copy_personalization_identifiers", 919, -3, 0, @"Invalid value for %@: %@", v7, v8, v9, @"PersonalizedImageType");
        v11 = 0;
        if (!v10)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No disk image variant specified, assuming not the DDI.", buf, 2u);
    }

    v15 = [@"IODeviceTree" stringByAppendingString:@":/chosen"];
    v11 = sub_100015FD0(v15, @"esdm-fuses", 0);

    if (img4_chip_select_personalized_ap())
    {
      v16 = img4_chip_instantiate();
      if (!v16)
      {
        v38[0] = @"UniqueChipID";
        v37 = [NSNumber numberWithUnsignedLongLong:*(&v44 + 1)];
        v39[0] = v37;
        v38[1] = @"ChipID";
        v36 = [NSNumber numberWithUnsignedInt:v44];
        v39[1] = v36;
        v38[2] = @"BoardId";
        v35 = [NSNumber numberWithUnsignedInt:HIDWORD(v43)];
        v39[2] = v35;
        v38[3] = @"SecurityDomain";
        v28 = [NSNumber numberWithUnsignedInt:DWORD1(v44)];
        v39[3] = v28;
        v38[4] = @"EffectiveSecurityModeAp";
        v29 = [NSNumber numberWithBool:BYTE3(v45)];
        v39[4] = v29;
        v38[5] = @"EffectiveProductionStatusAp";
        v30 = [NSNumber numberWithBool:BYTE2(v45)];
        v39[5] = v30;
        v38[6] = @"CertificateSecurityMode";
        v31 = [NSNumber numberWithBool:BYTE1(v45)];
        v39[6] = v31;
        v38[7] = @"CertificateProductionStatus";
        v32 = [NSNumber numberWithBool:v45];
        v39[7] = v32;
        v33 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:8];
        v10 = [v33 mutableCopy];

        if (v11)
        {
          [v10 setObject:v11 forKeyedSubscript:{@"Ap, SikaFuse"}];
        }

        CFDictionarySetValue(a3, @"PersonalizationIdentifiers", v10);
        v27 = @"Status";
        v25 = @"Success";
        v26 = a3;
        goto LABEL_27;
      }

      v17 = v16;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = strerror(v17);
        *buf = 67109378;
        *v41 = v17;
        *&v41[4] = 2080;
        *&v41[6] = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to instantiate chip: 0x%08x (%s)", buf, 0x12u);
      }

      strerror(v17);
      sub_100011E6C("handle_copy_personalization_identifiers", 944, -2, 0, @"Failed to instantiate chip: 0x%08x (%s)", v19, v20, v21, v17);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to select chip.", buf, 2u);
      }

      sub_100011E6C("handle_copy_personalization_identifiers", 938, -2, 0, @"Failed to select chip.", v22, v23, v24, v34);
    }
    v10 = ;
    if (!v10)
    {
      goto LABEL_28;
    }

LABEL_24:
    if (!CFDictionaryGetValue(a3, @"Error"))
    {
      CFDictionarySetValue(a3, @"Error", @"InternalError");
    }

    v25 = [v10 description];
    v26 = a3;
    v27 = @"DetailedError";
LABEL_27:
    CFDictionarySetValue(v26, v27, v25);

    goto LABEL_28;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
  }

  v10 = sub_100011E6C("handle_copy_personalization_identifiers", 912, -3, 0, @"Invalid input(s)", v12, v13, v14, v34);
  v11 = 0;
  v5 = 0;
  if (v10)
  {
    goto LABEL_24;
  }

LABEL_28:
}

void sub_100005F90(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  if (a1 && a2)
  {
    v16 = 0;
    v4 = sub_10000F210(&v16);
    v5 = v16;
    if (v4)
    {
      CFDictionarySetValue(a3, @"CryptexNonce", v4);
      CFDictionarySetValue(a3, @"Status", @"Success");

      if (!v5)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v9 = [[NSString alloc] initWithFormat:@"Failed to copy cryptex nonce."];
    if (v5)
    {
      v15 = v9;
      v10 = [NSString stringWithFormat:@" %@ (%@)"];

      v9 = v10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v14 = sub_100011E6C("handle_copy_cryptex_nonce", 995, -2, v5, @"Failed to copy cryptex nonce.", v11, v12, v13, v15);

    v5 = v14;
    if (v14)
    {
LABEL_15:
      if (!CFDictionaryGetValue(a3, @"Error"))
      {
        CFDictionarySetValue(a3, @"Error", @"InternalError");
      }

      CFDictionarySetValue(a3, @"DetailedError", [v5 description]);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v5 = sub_100011E6C("handle_copy_cryptex_nonce", 989, -3, 0, @"Invalid input(s)", v6, v7, v8, v15);
    if (v5)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
}

void sub_1000061F0(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  if (!a1 || !theDict)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v8 = sub_100011E6C("handle_roll_personalization_nonce", 715, -3, 0, @"Invalid input(s)", v9, v10, v11, v21);
    v5 = 0;
    if (!v8)
    {
      goto LABEL_24;
    }

LABEL_21:
    if (!CFDictionaryGetValue(a3, @"Error"))
    {
      CFDictionarySetValue(a3, @"Error", @"InternalError");
    }

    CFDictionarySetValue(a3, @"DetailedError", [v8 description]);
    goto LABEL_24;
  }

  v4 = CFDictionaryGetValue(theDict, @"PersonalizedImageType");
  v5 = v4;
  if (v4)
  {
    v6 = sub_100011650(v4);

    if (!v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = @"PersonalizedImageType";
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid value for %@: %@", buf, 0x16u);
      }

      v8 = sub_100011E6C("handle_roll_personalization_nonce", 721, -3, 0, @"Invalid value for %@: %@", v18, v19, v20, @"PersonalizedImageType");
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  v22 = 0;
  v7 = sub_10000EE70(v5, &v22);
  v8 = v22;
  if (v7)
  {
    CFDictionarySetValue(a3, @"Status", @"Success");
    if (!v8)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v12 = [[NSString alloc] initWithFormat:@"Failed to roll personalization nonce."];
  if (v8)
  {
    v21 = v12;
    v13 = [NSString stringWithFormat:@" %@ (%@)"];

    v12 = v13;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v17 = sub_100011E6C("handle_roll_personalization_nonce", 726, -2, v8, @"Failed to roll personalization nonce.", v14, v15, v16, v21);

  v8 = v17;
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_24:
}

void sub_10000650C(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  if (a1 && a2)
  {
    v16 = 0;
    v4 = sub_10000F5F4(&v16);
    v5 = v16;
    if (v4)
    {
      CFDictionarySetValue(a3, @"Status", @"Success");
      if (!v5)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v9 = [[NSString alloc] initWithFormat:@"Failed to roll cryptex nonce."];
    if (v5)
    {
      v15 = v9;
      v10 = [NSString stringWithFormat:@" %@ (%@)"];

      v9 = v10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v14 = sub_100011E6C("handle_roll_cryptex_nonce", 758, -2, v5, @"Failed to roll cryptex nonce.", v11, v12, v13, v15);

    v5 = v14;
    if (v14)
    {
LABEL_15:
      if (!CFDictionaryGetValue(a3, @"Error"))
      {
        CFDictionarySetValue(a3, @"Error", @"InternalError");
      }

      CFDictionarySetValue(a3, @"DetailedError", [v5 description]);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v5 = sub_100011E6C("handle_roll_cryptex_nonce", 753, -3, 0, @"Invalid input(s)", v6, v7, v8, v15);
    if (v5)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
}

void sub_10000674C(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  if (a1 && a2)
  {
    v4 = [NSNumber numberWithBool:sub_100011C30()];
    CFDictionarySetValue(a3, @"DeveloperModeStatus", v4);
    v5 = @"Status";
    v6 = @"Success";
    v7 = a3;
LABEL_10:
    CFDictionarySetValue(v7, v5, v6);

    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s)", v12, 2u);
  }

  v11 = sub_100011E6C("handle_copy_developer_mode_status", 1026, -3, 0, @"Invalid input(s)", v8, v9, v10, *v12);
  if (v11)
  {
    v4 = v11;
    if (!CFDictionaryGetValue(a3, @"Error"))
    {
      CFDictionarySetValue(a3, @"Error", @"InternalError");
    }

    v6 = [v4 description];
    v7 = a3;
    v5 = @"DetailedError";
    goto LABEL_10;
  }
}

uint64_t sub_1000068A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000068B8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1000068CC(uint64_t a1, io_iterator_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B954();
  }

  v13 = os_transaction_create();
  v3 = IOIteratorNext(a2);
  if (v3)
  {
    v4 = v3;
    do
    {
      properties = 0;
      v5 = sub_100011220();
      if (v5)
      {
        v6 = IORegistryEntryCreateCFProperties(v4, &properties, 0, 0);
        if (v6)
        {
          v7 = v6;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v16) = v7 & 0x3FFF;
            v8 = "IORegistryEntryCreateCFProperties failed: 0x%04x";
            v9 = 8;
LABEL_18:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
          }
        }

        else
        {
          Value = CFDictionaryGetValue(properties, @"locationID");
          if (Value)
          {
            v11 = Value;
            v12 = CFGetTypeID(Value);
            if (v12 == CFNumberGetTypeID())
            {
              CFDictionarySetValue(v5, @"LocationID", v11);
              CFDictionarySetValue(v5, @"DeviceType", @"PTPCamera");
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v16 = @"com.apple.mobile.camera_attached";
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Posting notification: %@", buf, 0xCu);
              }

              sub_100009DD4(@"com.apple.mobile.camera_attached", v5);
              goto LABEL_19;
            }
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v16 = "locationID";
            v8 = "Failed to retrieve %s.";
            v9 = 12;
            goto LABEL_18;
          }
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Failed to create dictionary.";
        v9 = 2;
        goto LABEL_18;
      }

LABEL_19:
      if (properties)
      {
        CFRelease(properties);
      }

      properties = 0;
      if (v5)
      {
        CFRelease(v5);
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(a2);
    }

    while (v4);
  }
}

id sub_100006BC0(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"/private/var"])
  {
    v2 = [v1 componentsSeparatedByString:@"/"];
    v3 = [v2 mutableCopy];

    v4 = [v3 objectAtIndex:0];
    v5 = [v4 isEqualToString:&stru_100033AC0];

    if (v5)
    {
      [v3 removeObjectAtIndex:0];
    }

    [v3 removeObjectAtIndex:0];
    v6 = [v3 componentsJoinedByString:@"/"];
    v7 = [NSString stringWithFormat:@"/%@", v6];

    v1 = v7;
  }

  return v1;
}

void sub_100006D10(id a1)
{
  qword_100038880 = objc_alloc_init(PlistProcessor);

  _objc_release_x1();
}

id sub_1000072AC(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"ProgramArguments"];
  if (!v2)
  {
    v2 = [v1 objectForKeyedSubscript:@"Program"];
  }

  v3 = sub_1000115E4(v2);
  if (v3)
  {
  }

  else
  {
    v4 = sub_100011650(v2);

    if (!v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unexpected object: %@", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_11;
    }
  }

  v5 = sub_1000115E4(v2);

  if (v5)
  {
    v6 = [v2 mutableCopy];
  }

  else
  {
    v7 = sub_100011650(v2);

    if (!v7)
    {
      goto LABEL_11;
    }

    v6 = [[NSMutableArray alloc] initWithObjects:{v2, 0}];
  }

  v7 = v6;
LABEL_11:

  return v7;
}

id sub_100007B7C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  bzero(buffer, 0x1000uLL);
  memset(v8, 0, sizeof(v8));
  if (v1)
  {
    pid = xpc_connection_get_pid(v1);
    proc_pidpath(pid, buffer, 0x1000u);
    v3 = strlen(buffer);
    if ((v3 & 0x80000000) == 0)
    {
      do
      {
        if (buffer[v3] == 47)
        {
          break;
        }
      }

      while (v3-- > 0);
    }

    __strcpy_chk();
    v5 = [NSString stringWithFormat:@"%s<%d>", v8, pid];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t sub_100007D0C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (v3 && v4)
  {
    [@"com.apple.private.mobile_storage.allowedSPI" UTF8String];
    v6 = xpc_connection_copy_entitlement_value();
    v7 = v6;
    if (v6 && xpc_get_type(v6) == &_xpc_type_array)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100007F60;
      v11[3] = &unk_100030EA8;
      v10 = v5;
      v12 = v10;
      v13 = &v14;
      xpc_array_apply(v7, v11);

      if ((v15[3] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v10;
        goto LABEL_7;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = @"com.apple.private.mobile_storage.allowedSPI";
LABEL_7:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid or missing entitlement: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid inputs.", buf, 2u);
    }

    v7 = 0;
  }

  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8 & 1;
}

void sub_100007F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100007F60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    if (!strcmp(string_ptr, [*(a1 + 32) fileSystemRepresentation]))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);

  return (v6 & 1) == 0;
}

uint64_t sub_100007FF4(void *a1, void *a2)
{
  v3 = a1;
  v7 = v3;
  if (v3)
  {
    [v3 UTF8String];
    mounted_jetsam_properties = launch_load_mounted_jetsam_properties();
    if (!mounted_jetsam_properties)
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_9;
    }

    v9 = mounted_jetsam_properties;
    strerror(mounted_jetsam_properties);
    sub_100011E6C("loadLaunchdJetsamPropertiesForMountPoint", 302, -2, 0, @"Failed to load mounted jetsam properties: %d (%s)", v10, v11, v12, v9);
  }

  else
  {
    sub_100011E6C("loadLaunchdJetsamPropertiesForMountPoint", 296, -3, 0, @"Invalid input.", v4, v5, v6, v16);
  }
  v13 = ;
  if (a2)
  {
    v13 = v13;
    v14 = 0;
    *a2 = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_9:

  return v14;
}

uint64_t sub_1000080C4(void *a1, void *a2)
{
  v3 = a1;
  v17 = a2;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  context = objc_autoreleasePoolPush();
  v4 = [NSString stringWithFormat:@"%@%@", v3, @"/Library/LaunchDaemons"];
  v5 = [NSString stringWithFormat:@"%@%@", v3, @"/System/Library/LaunchDaemons"];
  v6 = [NSString stringWithFormat:@"%@%@", v3, @"/AppleInternal/Library/LaunchDaemons"];
  v7 = [NSArray arrayWithObjects:v4, v5, v6, 0];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = *v23;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v22 + 1) + 8 * v11);
      v13 = +[PlistProcessor sharedPlistProcessor];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000839C;
      v18[3] = &unk_100030ED0;
      v19 = v3;
      v20 = v17;
      v21 = &v26;
      [v13 scanPlistsAtPath:v12 execBlock:v18];

      LOBYTE(v13) = *(v27 + 24);
      if ((v13 & 1) == 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v14 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return v14 & 1;
}

void sub_10000836C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000839C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  outError = 0;
  v7 = +[PlistProcessor sharedPlistProcessor];
  v8 = *(a1 + 32);
  v24 = 0;
  v9 = [v7 verifyPlist:v5 forMountPoint:v8 withError:&v24];
  v10 = v24;

  if (v9)
  {
    v11 = [v5 objectForKey:@"Label"];
    if ([*(a1 + 40) isEqualToString:@"Personalized"] && objc_msgSend(*(a1 + 32), "hasPrefix:", @"/private/var/personalized_factory"))
    {
      v12 = +[PlistProcessor sharedPlistProcessor];
      v13 = *(a1 + 32);
      v23 = v10;
      v14 = [v12 copyAndFixPlist:v5 forMountPoint:v13 withError:&v23];
      v15 = v23;

      if (!v14)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_10001BCE4();
        }

        goto LABEL_20;
      }

      v10 = v15;
    }

    else
    {
      v14 = v5;
    }

    v17 = +[PlistProcessor sharedPlistProcessor];
    v22 = v10;
    v16 = [v17 copyPlistWithMSMKeys:v14 withError:&v22];
    v15 = v22;

    if (v16)
    {
      v18 = SMJobSubmit(0, v16, 0, &outError);
      v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v19)
        {
          *buf = 138412290;
          v27 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registered launchd job: %@", buf, 0xCu);
        }

        goto LABEL_22;
      }

      if (v19)
      {
        *buf = 138412802;
        v27 = v11;
        v28 = 2112;
        v29 = v6;
        v30 = 2112;
        v31 = outError;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to register launchd job '%@' (%@): %@", buf, 0x20u);
      }

LABEL_21:
      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_22;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to add MobileStorageMounter keys to job %{public}@: %{public}@", buf, 0x16u);
    }

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10001BC74();
  }

  v11 = 0;
  v16 = 0;
  v15 = v10;
LABEL_22:
  if (outError)
  {
    CFRelease(outError);
  }

  outError = 0;
  v20 = *(*(*(a1 + 48) + 8) + 24);

  return v20;
}

uint64_t sub_1000086F8(void *a1)
{
  v1 = a1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v15 = sub_100006BC0(v1);
  if (v15)
  {
    context = objc_autoreleasePoolPush();
    v2 = [NSString stringWithFormat:@"%@%@", v1, @"/Library/LaunchDaemons"];
    v3 = [NSString stringWithFormat:@"%@%@", v1, @"/System/Library/LaunchDaemons"];
    v4 = [NSString stringWithFormat:@"%@%@", v1, @"/AppleInternal/Library/LaunchDaemons"];
    v5 = [NSArray arrayWithObjects:v2, v3, v4, 0];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v7)
    {
      v8 = *v21;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = +[PlistProcessor sharedPlistProcessor];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100008A2C;
        v16[3] = &unk_100030ED0;
        v17 = v1;
        v18 = v15;
        v19 = &v24;
        [v11 scanPlistsAtPath:v10 execBlock:v16];

        LOBYTE(v11) = *(v25 + 24);
        if ((v11 & 1) == 0)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    objc_autoreleasePoolPop(context);
    v12 = *(v25 + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to normalize mount point (%@)", buf, 0xCu);
    }

    v12 = 0;
    *(v25 + 24) = 0;
  }

  _Block_object_dispose(&v24, 8);
  return v12 & 1;
}

void sub_100008A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008A2C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  outError = 0;
  v7 = +[PlistProcessor sharedPlistProcessor];
  v8 = [v7 verifyPlist:v5 forMountPoint:a1[4] withError:0];

  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to verify %@. Skipping unload.", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = [v5 objectForKeyedSubscript:@"Label"];
  v10 = SMJobCopyDictionary(0, v9);
  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Job '%@' is not currently loaded. Skipping unload.", buf, 0xCu);
    }

LABEL_11:
    v12 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [(__CFDictionary *)v10 objectForKeyedSubscript:@"Program"];
  if (([v12 hasPrefix:a1[5]] & 1) == 0)
  {
    v13 = +[PlistProcessor sharedPlistProcessor];
    v14 = [v13 jobIsManagedByMSM:v11];

    if ((v14 & 1) == 0)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 138412290;
      v26 = v9;
      v15 = "Job '%@' was not loaded by MobileStorageMounter. Skipping unload.";
      goto LABEL_22;
    }
  }

  if (SMJobRemove(0, v9, 0, 1u, &outError))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v26 = v9;
    v15 = "Removed launchd job: %@";
LABEL_22:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    goto LABEL_12;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10001BD54(v9, &outError, v18, v19, v20, v21, v22, v23);
  }

  *(*(a1[6] + 8) + 24) = 0;
LABEL_12:
  if (outError)
  {
    CFRelease(outError);
  }

  outError = 0;
  v16 = *(*(a1[6] + 8) + 24);

  return v16;
}

uint64_t sub_100008D0C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      v30 = "Invalid input.";
LABEL_21:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v30, &v36, 2u);
    }

LABEL_22:
    v13 = 0;
    v6 = 0;
    v4 = 0;
LABEL_23:
    v8 = 0;
LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  v3 = [(__CFString *)v1 stringByAppendingPathComponent:@"/System/Library/CoreServices/SystemVersion.plist"];
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      v30 = "Failed to create string.";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v4 = v3;
  v5 = [[NSDictionary alloc] initWithContentsOfFile:v3];
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412290;
      v37 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to load %@.", &v36, 0xCu);
    }

    v13 = 0;
    v6 = 0;
    goto LABEL_23;
  }

  v6 = v5;
  v7 = [v5 objectForKeyedSubscript:@"ProductVersion"];
  v8 = [v7 componentsSeparatedByString:@"."];

  v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v9)
    {
      v36 = 138412290;
      v37 = @"/System/Library/CoreServices/SystemVersion.plist";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve disk image product version from %@.", &v36, 0xCu);
    }

    v13 = 0;
    goto LABEL_23;
  }

  if (v9)
  {
    v10 = [v8 objectAtIndexedSubscript:0];
    v11 = [v8 objectAtIndexedSubscript:1];
    v36 = 138412546;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disk Image Product Version: %@.%@", &v36, 0x16u);
  }

  v12 = [[NSDictionary alloc] initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  if (!v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 138412290;
      v37 = @"/System/Library/CoreServices/SystemVersion.plist";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to load %@.", &v36, 0xCu);
    }

    v13 = 0;
    goto LABEL_24;
  }

  v13 = v12;
  v14 = [v12 objectForKeyedSubscript:@"ProductVersion"];
  v15 = [v14 componentsSeparatedByString:@"."];

  v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (v16)
    {
      v36 = 138412290;
      v37 = @"/System/Library/CoreServices/SystemVersion.plist";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve system product version from %@.", &v36, 0xCu);
    }

    goto LABEL_24;
  }

  if (v16)
  {
    v17 = [v15 objectAtIndexedSubscript:0];
    v18 = [v15 objectAtIndexedSubscript:1];
    v36 = 138412546;
    v37 = v17;
    v38 = 2112;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "System Product Version: %@.%@", &v36, 0x16u);
  }

  v19 = [v8 objectAtIndex:0];
  v20 = [v15 objectAtIndex:0];
  v21 = [v19 isEqualToString:v20];

  if ((v21 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    goto LABEL_25;
  }

  v22 = 1;
  v23 = [v8 objectAtIndex:1];
  v24 = [v15 objectAtIndex:1];
  v25 = [v23 isEqualToString:v24];

  if (v25)
  {
    goto LABEL_26;
  }

  v26 = [v15 objectAtIndex:0];
  if (![v26 isEqualToString:@"16"])
  {
LABEL_41:

    goto LABEL_42;
  }

  v27 = [v15 objectAtIndex:1];
  if ([v27 compare:@"4" options:64] == -1)
  {

    goto LABEL_41;
  }

  v28 = [v8 objectAtIndex:1];
  v29 = [v28 isEqualToString:@"4"];

  v22 = 1;
  if ((v29 & 1) == 0)
  {
LABEL_42:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_43:
      v32 = [v15 objectAtIndexedSubscript:0];
      v33 = [v15 objectAtIndexedSubscript:1];
      v34 = [v8 objectAtIndexedSubscript:0];
      v35 = [v8 objectAtIndexedSubscript:1];
      v36 = 138413314;
      v37 = v2;
      v38 = 2112;
      v39 = v32;
      v40 = 2112;
      v41 = v33;
      v42 = 2112;
      v43 = v34;
      v44 = 2112;
      v45 = v35;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "System Version Mismatch for %@: (System: %@.%@ / Image: %@.%@)", &v36, 0x34u);
    }

LABEL_25:
    v22 = 0;
  }

LABEL_26:

  return v22;
}

uint64_t sub_1000093D4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v4 = 0;
LABEL_10:
      v10 = 0;
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

    *buf = 0;
    v8 = "Invalid input.";
    v9 = 2;
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
    goto LABEL_9;
  }

  v3 = [v1 stringByAppendingPathComponent:@"/System/Library/CoreServices/SystemVersion.plist"];
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v14 = [[NSDictionary alloc] initWithContentsOfFile:0];
  if (!v14)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v28 = 0;
    v8 = "Failed to load %@.";
    v9 = 12;
    goto LABEL_8;
  }

  v5 = v14;
  v15 = [v14 objectForKeyedSubscript:@"ProductVersion"];
  v10 = [v15 componentsSeparatedByString:@"."];

  if (!v10 || [v10 count] != 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = @"/System/Library/CoreServices/SystemVersion.plist";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve disk image product version from %@.", buf, 0xCu);
    }

    v6 = 0;
    v7 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v10 objectAtIndexedSubscript:0];
    v17 = [v10 objectAtIndexedSubscript:1];
    *buf = 138412546;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disk Image Product Version: %@.%@", buf, 0x16u);
  }

  v18 = [NSString stringWithUTF8String:off_1000384C0];
  v11 = [v18 componentsSeparatedByString:@"."];

  if (v11 && [v11 count] == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 objectAtIndexedSubscript:0];
      v20 = [v11 objectAtIndexedSubscript:1];
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Required Disk Image Product Version: %@.%@", buf, 0x16u);
    }

    v21 = [NSString alloc];
    v22 = [v11 objectAtIndexedSubscript:0];
    v12 = 1;
    v23 = [v11 objectAtIndexedSubscript:1];
    v7 = [v21 initWithFormat:@"%@.%@", v22, v23];

    v24 = [NSString alloc];
    v25 = [v10 objectAtIndexedSubscript:0];
    v26 = [v10 objectAtIndexedSubscript:1];
    v6 = [v24 initWithFormat:@"%@.%@", v25, v26];

    if ([v7 compare:v6 options:64] != 1)
    {
      v4 = 0;
      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Current DDI version (%@) is lower than OS version (%@).", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve required DDI version.", buf, 2u);
    }

    v6 = 0;
    v7 = 0;
  }

  v4 = 0;
LABEL_12:
  v12 = 0;
LABEL_13:

  return v12;
}

uint64_t sub_100009910(void *a1)
{
  v1 = a1;
  v2 = v1;
  memset(&v26, 0, sizeof(v26));
  if (v1)
  {
    v3 = [v1 UTF8String];
    if (lstat(v3, &v26))
    {
      if (*__error() != 2 || ([v2 hasPrefix:@"/System/Volumes/FieldService"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"/System/Volumes/FieldServiceDiagnostic") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"/System/Volumes/FieldServiceRepair") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"/Developer") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"/System/Developer") & 1) != 0)
      {
        goto LABEL_12;
      }

      if (mkdir(v3, 0x1EDu))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *__error();
          v5 = __error();
          v6 = strerror(*v5);
          *buf = 136315650;
          *v28 = v3;
          *&v28[8] = 1024;
          *&v28[10] = v4;
          *&v28[14] = 2080;
          *&v28[16] = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %s: %d (%s)", buf, 0x1Cu);
        }

LABEL_12:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *__error();
          v8 = __error();
          v9 = strerror(*v8);
          *buf = 136315650;
          *v28 = v3;
          *&v28[8] = 1024;
          *&v28[10] = v7;
          *&v28[14] = 2080;
          *&v28[16] = v9;
          v10 = "Failed to lstat %s: %d (%s)";
          v11 = 28;
LABEL_39:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, v11);
          goto LABEL_40;
        }

        goto LABEL_40;
      }

LABEL_42:
      v24 = 1;
      goto LABEL_41;
    }

    if ((v26.st_mode & 0xF000) == 0x4000)
    {
      v29[0] = v3;
      v29[1] = 0;
      v12 = fts_open(v29, 17, 0);
      if (v12)
      {
        v13 = v12;
        v14 = fts_read(v12);
        if (v14)
        {
          v15 = v14;
          v16 = 1;
          do
          {
            if (strcmp(v15->fts_path, v3))
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                fts_path = v15->fts_path;
                *buf = 136315394;
                *v28 = v3;
                *&v28[8] = 2080;
                *&v28[10] = fts_path;
                _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Mount path %s is not empty: %s", buf, 0x16u);
              }

              v16 = 0;
            }

            v15 = fts_read(v13);
          }

          while (v15);
          if (!fts_close(v13))
          {
            if (v16)
            {
              goto LABEL_42;
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_40;
            }

            *buf = 136315138;
            *v28 = v3;
            v10 = "%s is not empty.";
LABEL_28:
            v11 = 12;
            goto LABEL_39;
          }
        }

        else if (!fts_close(v13))
        {
          goto LABEL_42;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        v21 = *__error();
        v22 = __error();
        v23 = strerror(*v22);
        *buf = 67109378;
        *v28 = v21;
        *&v28[4] = 2080;
        *&v28[6] = v23;
        v10 = "Failed to close file traversal handle: %d (%s)";
      }

      else
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        v18 = *__error();
        v19 = __error();
        v20 = strerror(*v19);
        *buf = 67109378;
        *v28 = v18;
        *&v28[4] = 2080;
        *&v28[6] = v20;
        v10 = "Failed to open path for traversal: %d (%s)";
      }

      v11 = 18;
      goto LABEL_39;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 136315138;
    *v28 = v3;
    v10 = "%s is not a directory.";
    goto LABEL_28;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "Invalid input.";
    v11 = 2;
    goto LABEL_39;
  }

LABEL_40:
  v24 = 0;
LABEL_41:

  return v24;
}

void sub_100009DD4(void *a1, void *a2)
{
  object = a1;
  v3 = a2;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, object, object, 0, 1u);
  if (v3)
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:object object:@"MobileStorageMounter" userInfo:v3 deliverImmediately:1];
  }
}

id sub_100009E7C(void *a1)
{
  v1 = a1;
  memset(&v16, 0, sizeof(v16));
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Invalid input.";
      v13 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
    }

LABEL_13:
    v10 = 0;
    v3 = 0;
    goto LABEL_20;
  }

  v2 = [NSFileHandle fileHandleForReadingAtPath:v1, *&v16.h0, *&v16.h4, *&v16.data[1], *&v16.data[5], *&v16.data[9], *&v16.data[13]];
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v1;
      v12 = "Failed to create file handle for %@.";
      v13 = 12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v3 = v2;
  CC_SHA1_Init(&v16);
  v4 = malloc_type_malloc(0x14uLL, 0xE13528EBuLL);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [v3 readDataOfLength:1024];
      CC_SHA1_Update(&v16, [v7 bytes], objc_msgSend(v7, "length"));
      v8 = [v7 length];

      objc_autoreleasePoolPop(v6);
    }

    while (v8);
    CC_SHA1_Final(v5, &v16);
    v9 = [[NSData alloc] initWithBytes:v5 length:20];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", buf, 2u);
    }

    free(v5);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v18) = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate memory: %{errno}d", buf, 8u);
    }

    v10 = 0;
  }

LABEL_20:

  return v10;
}

id sub_10000A120(void *a1)
{
  v1 = a1;
  memset(&v16, 0, sizeof(v16));
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Invalid input.";
      v13 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
    }

LABEL_13:
    v10 = 0;
    v3 = 0;
    goto LABEL_20;
  }

  v2 = [NSFileHandle fileHandleForReadingAtPath:v1, *v16.count, *v16.hash, *&v16.hash[2], *&v16.hash[4], *&v16.hash[6], *v16.wbuf, *&v16.wbuf[2], *&v16.wbuf[4], *&v16.wbuf[6], *&v16.wbuf[8], *&v16.wbuf[10], *&v16.wbuf[12], *&v16.wbuf[14]];
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v1;
      v12 = "Failed to create file handle for %@.";
      v13 = 12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v3 = v2;
  CC_SHA384_Init(&v16);
  v4 = malloc_type_malloc(0x30uLL, 0xD23148B6uLL);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [v3 readDataOfLength:1024];
      CC_SHA384_Update(&v16, [v7 bytes], objc_msgSend(v7, "length"));
      v8 = [v7 length];

      objc_autoreleasePoolPop(v6);
    }

    while (v8);
    CC_SHA384_Final(v5, &v16);
    v9 = [[NSData alloc] initWithBytes:v5 length:48];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", buf, 2u);
    }

    free(v5);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v18) = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate memory: %{errno}d", buf, 8u);
    }

    v10 = 0;
  }

LABEL_20:

  return v10;
}

uint64_t sub_10000A3DC(void *a1, void *a2, size_t a3)
{
  v5 = a1;
  v6 = v5;
  if (!a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v8 = "Invalid input";
LABEL_15:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, &v15, 2u);
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (a3 == 48)
  {
    v7 = sub_10000A120(v5);
  }

  else
  {
    if (a3 != 20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = a3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unsupported digest size: %ld", &v15, 0xCu);
      }

LABEL_13:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        v8 = "Failed to digest data.";
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    v7 = sub_100009E7C(v5);
  }

  v9 = v7;
  if (!v7)
  {
    goto LABEL_13;
  }

  v10 = malloc_type_malloc(a3, 0xE2F2BD9CuLL);
  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *__error();
      v15 = 67109120;
      LODWORD(v16) = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate memory: %{errno}d", &v15, 8u);
    }

    goto LABEL_19;
  }

  v11 = v10;
  memcpy(v10, [v9 bytes], objc_msgSend(v9, "length"));
  *a2 = v11;

  v12 = 1;
LABEL_20:

  return v12;
}

uint64_t sub_10000A5FC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a5;
  v16 = v12;
  v43 = -1;
  if (!v10 || !v11 || !a4 || !v12)
  {
    v30 = @"Invalid input(s).";
    v31 = 921;
    v32 = -3;
LABEL_15:
    v34 = sub_100011E6C("verify_disk_image_img4_ticket", v31, v32, 0, v30, v13, v14, v15, v42);
    v20 = 0;
LABEL_16:
    v35 = 1;
    goto LABEL_17;
  }

  v43 = open([v10 UTF8String], 0);
  if (v43 == -1)
  {
    __error();
    v33 = __error();
    strerror(*v33);
    v30 = @"Failed to open %@: %d (%s)";
    v42 = v10;
    v31 = 929;
    v32 = -2;
    goto LABEL_15;
  }

  v20 = img4_firmware_new_from_fd_4MSM();
  if (!v20)
  {
    v34 = sub_100011E6C("verify_disk_image_img4_ticket", 935, -2, 0, @"Failed to create img4 firmware object.", v17, v18, v19, v42);
    goto LABEL_16;
  }

  [v16 bytes];
  [v16 length];
  img4_firmware_attach_manifest();
  v21 = img4_nonce_domain_copy_nonce();
  if (!v21)
  {
LABEL_31:
    img4_chip_select_personalized_ap();
    img4_firmware_execute();
    v35 = 0;
    v34 = 0;
    v20 = 1;
    goto LABEL_17;
  }

  v25 = v21;
  if (v21 != 45)
  {
    strerror(v21);
    sub_100011E6C("verify_disk_image_img4_ticket", 964, -2, 0, @"Failed to query img4 nonce: %d (%s)", v39, v40, v41, v25);
    goto LABEL_32;
  }

  if (!qword_1000388C0 || ![qword_1000388C0 length])
  {
    sub_100011E6C("verify_disk_image_img4_ticket", 951, -2, 0, @"Invalid personalization nonce.", v22, v23, v24, v42);
    goto LABEL_32;
  }

  if ([qword_1000388C0 length] < 0x31)
  {
    [qword_1000388C0 bytes];
    [qword_1000388C0 length];
    __memcpy_chk();
    [qword_1000388C0 length];
    goto LABEL_31;
  }

  v26 = [qword_1000388C0 length];
  sub_100011E6C("verify_disk_image_img4_ticket", 956, -2, 0, @"Invalid nonce size (%ld > %ld)", v27, v28, v29, v26);
  v34 = LABEL_32:;
  v35 = 0;
  v20 = 0;
LABEL_17:
  if (v43 != -1)
  {
    close(v43);
  }

  if ((v35 & 1) == 0)
  {
    img4_firmware_destroy();
  }

  if (a6)
  {
    v36 = v20;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    v37 = v34;
    *a6 = v34;
  }

  return v20;
}

void sub_10000A98C(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = a3;
  }
}

uint64_t sub_10000A998(void *a1)
{
  v1 = a1;
  v2 = v1;
  memset(&v30, 0, sizeof(v30));
  if (v1)
  {
    v3 = open([v1 UTF8String], 0);
    if (v3 != -1)
    {
      v4 = v3;
      if (fstat(v3, &v30) == -1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *__error();
          v17 = __error();
          v18 = strerror(*v17);
          *buf = 138412802;
          *v32 = v2;
          *&v32[8] = 1024;
          *&v32[10] = v16;
          v33 = 2080;
          v34 = v18;
          v19 = "Failed to fstat %@: %d (%s)";
          v20 = 28;
LABEL_21:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
        }
      }

      else
      {
        v5 = malloc_type_malloc(v30.st_size, 0xAEE7234CuLL);
        if (v5)
        {
          v6 = v5;
          v7 = read(v4, v5, v30.st_size);
          if (v7 == v30.st_size)
          {
            v8 = CFDataCreate(kCFAllocatorDefault, v6, v7);
            if (v8)
            {
              v9 = v8;
              v10 = SecCertificateCreateWithPEM();
              if (!v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create certificate with PEM data.", buf, 2u);
              }

              CFRelease(v9);
              goto LABEL_29;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v27 = "Failed to create data.";
              v28 = 2;
              goto LABEL_27;
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *__error();
            v25 = __error();
            v26 = strerror(*v25);
            *buf = 138412802;
            *v32 = v2;
            *&v32[8] = 1024;
            *&v32[10] = v24;
            v33 = 2080;
            v34 = v26;
            v27 = "Failed to read %@: %d (%s)";
            v28 = 28;
LABEL_27:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
          }

          v10 = 0;
LABEL_29:
          free(v6);
          goto LABEL_30;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *__error();
          v22 = __error();
          v23 = strerror(*v22);
          *buf = 67109378;
          *v32 = v21;
          *&v32[4] = 2080;
          *&v32[6] = v23;
          v19 = "Failed to allocate memory: %d (%s)";
          v20 = 18;
          goto LABEL_21;
        }
      }

      v10 = 0;
LABEL_30:
      close(v4);
      goto LABEL_31;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      *buf = 138412802;
      *v32 = v2;
      *&v32[8] = 1024;
      *&v32[10] = v13;
      v33 = 2080;
      v34 = v15;
      v11 = "Failed to open %@: %d (%s)";
      v12 = 28;
      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "Invalid input.";
    v12 = 2;
LABEL_15:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
  }

  v10 = 0;
LABEL_31:

  return v10;
}

SecKeyRef sub_10000AD88(const void *a1)
{
  cf = 0;
  trust = 0;
  v2 = sub_10000A998(@"/System/Library/Lockdown/iPhoneCA.pem");
  if (v2)
  {
    v3 = v2;
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5 = Mutable;
    if (Mutable)
    {
      CFArrayAppendValue(Mutable, a1);
      CFArrayAppendValue(v5, v3);
      BasicX509 = SecPolicyCreateBasicX509();
      if (BasicX509)
      {
        v7 = BasicX509;
        if (SecTrustCreateWithCertificates(v5, BasicX509, &trust))
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
LABEL_17:
            CFRelease(v3);
            v9 = 0;
            goto LABEL_18;
          }

          *buf = 0;
          v8 = "Failed to create trust with policy.";
LABEL_7:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
          goto LABEL_17;
        }

        v12 = CFDateCreate(0, 418863330.0);
        if (!v12)
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_17;
          }

          *buf = 0;
          v8 = "Failed to create verification date.";
          goto LABEL_7;
        }

        v13 = v12;
        if (SecTrustSetVerifyDate(trust, v12))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v14 = "Failed to set trust verify date.";
LABEL_31:
            v15 = 2;
LABEL_40:
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
          }
        }

        else if (SecTrustEvaluateWithError(trust, &cf))
        {
          v9 = SecTrustCopyKey(trust);
          if (v9)
          {
LABEL_42:
            CFRelease(v3);
            CFRelease(v13);
            goto LABEL_18;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v14 = "Failed to copy the public key from the trust.";
            goto LABEL_31;
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = cf;
          v14 = "Failed to evaluate trust: %@";
          v15 = 12;
          goto LABEL_40;
        }

        v9 = 0;
        goto LABEL_42;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "Failed to create basic X509 policy.";
        goto LABEL_15;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Failed to create array.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }

    v7 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = @"/System/Library/Lockdown/iPhoneCA.pem";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to load %@.", buf, 0xCu);
  }

  v9 = 0;
  v7 = 0;
  v5 = 0;
LABEL_18:
  if (trust)
  {
    CFRelease(trust);
  }

  trust = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

id sub_10000B110(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v6 = "Invalid input(s).";
      v7 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, &v13, v7);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (sub_1000154D0([v3 fileSystemRepresentation]))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      v6 = "Path is bad: %@";
LABEL_13:
      v7 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v8 = sub_10000B330(v3);
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      v6 = "Failed to attach %@.";
      goto LABEL_13;
    }

LABEL_15:
    v11 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v9 = v8;
  v10 = sub_10000B5CC(v8, v5);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to mount %@ on %@.", &v13, 0x16u);
    }

    sub_10000B970([v9 UTF8String]);
    v11 = 0;
  }

LABEL_16:

  return v11;
}

id sub_10000B330(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Invalid input.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }

LABEL_11:
    v9 = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
    v3 = 0;
    goto LABEL_19;
  }

  v2 = [NSURL fileURLWithPath:v1];
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Failed to create URL.";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v3 = v2;
  v14 = 0;
  v4 = [[DIAttachParams alloc] initWithURL:v2 error:&v14];
  v5 = v14;
  if (v4)
  {
    [v4 setAutoMount:0];
    [v4 setFileMode:2];
    v12 = v5;
    v13 = 0;
    v6 = [DiskImages2 attachWithParams:v4 handle:&v13 error:&v12];
    v7 = v13;
    v8 = v12;

    if (v6)
    {
      v9 = [v7 BSDName];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v1;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to attach %@: %@", buf, 0x16u);
      }

      v9 = 0;
    }

    v5 = v8;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create attach parameters: %@", buf, 0xCu);
    }

    v9 = 0;
    v4 = 0;
    v7 = 0;
  }

LABEL_19:

  return v9;
}

void *sub_10000B5CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  v18.tv_sec = 0;
  *&v18.tv_usec = 0;
  if (!v3 || !v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Invalid inputs.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    }

LABEL_14:
    v9 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  v6 = [[NSString alloc] initWithFormat:@"/dev/%@", v3];
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Failed to create string.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_100011794(v3);
  v9 = 0;
  if ([v5 isEqualToString:@"/"])
  {
    v10 = 1048609;
  }

  else
  {
    v10 = 1048577;
  }

  if (v8 == 6)
  {
    *&v30 = [v9 UTF8String];
    v11 = &v30;
    *&v49[5] = 0;
    LOWORD(v31) = 1;
    DWORD2(v30) = v10;
    v12 = "apfs";
  }

  else
  {
    v19 = [v7 UTF8String];
    LOWORD(v20) = 511;
    DWORD1(v20) = sub_10000BD4C([v7 UTF8String]);
    LODWORD(v21) = 4;
    v11 = &v19;
    gettimeofday(&v18, &v20 + 8);
    v12 = "hfs";
  }

  if (mount(v12, [v5 UTF8String], v10, v11) == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *__error();
      *buf = 138413058;
      v23 = v7;
      v24 = 2112;
      v25 = v5;
      v26 = 2080;
      v27 = v12;
      v28 = 1024;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to mount %@ on %@ (type %s): %{errno}d", buf, 0x26u);
    }
  }

  else
  {
    if (![v5 hasPrefix:@"/Developer"] || (sub_100008D0C(v5) & 1) != 0)
    {
      v7 = v7;
      v14 = v7;
      goto LABEL_16;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "System version verification failed for %@.", buf, 0xCu);
    }

    unmount([v5 fileSystemRepresentation], 0x80000);
    sub_10000B970([v7 UTF8String]);
  }

LABEL_15:
  v14 = 0;
LABEL_16:
  v15 = v14;

  return v14;
}

void sub_10000B970(const char *a1)
{
  v2 = open(a1, 0);
  v3 = v2;
  if ((v2 & 0x80000000) == 0)
  {
    if (ioctl(v2, 0x20006415uLL) == -1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      v10 = 136315650;
      v11 = a1;
      v12 = 1024;
      v13 = v4;
      v14 = 2080;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to eject %s : %d (%s)", &v10, 0x1Cu);
    }

LABEL_8:
    close(v3);
    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *__error();
    v8 = __error();
    v9 = strerror(*v8);
    v10 = 136315650;
    v11 = a1;
    v12 = 1024;
    v13 = v7;
    v14 = 2080;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to open %s: %d (%s)", &v10, 0x1Cu);
  }

  if (v3 != -1)
  {
    goto LABEL_8;
  }
}

BOOL sub_10000BAF8(CFTypeRef *a1)
{
  notification = 0;
  if (!a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Invalid input.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }

LABEL_11:
    v3 = 0;
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v2 = IONotificationPortCreate(kIOMasterPortDefault);
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "IONotificationPortCreate failed.";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v3 = v2;
  v4 = IOServiceMatching("IOMedia");
  v5 = IOServiceAddMatchingNotification(v3, "IOServiceMatched", v4, 0, a1, &notification);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = v6 & 0x3FFF;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOServiceAddMatchingNotification failed: 0x%04x", buf, 8u);
    }

    goto LABEL_12;
  }

  v10 = IOIteratorNext(notification);
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = IORegistryEntrySearchCFProperty(v11, "IOService", @"hdik-unique-identifier", kCFAllocatorDefault, 3u);
      if (v12)
      {
        v13 = v12;
        if (CFEqual(v12, *a1))
        {
          a1[1] = IORegistryEntryCreateCFProperty(v11, @"BSD Name", kCFAllocatorDefault, 0);
        }

        CFRelease(v13);
      }

      IOObjectRelease(v11);
      v11 = IOIteratorNext(notification);
    }

    while (v11);
  }

  v8 = a1[1] != 0;
LABEL_13:
  if (notification)
  {
    IOObjectRelease(notification);
  }

  if (v3)
  {
    IONotificationPortDestroy(v3);
  }

  return v8;
}

uint64_t sub_10000BD4C(const char *a1)
{
  v31 = 0u;
  v32 = 0u;
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
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(__buf, 0, sizeof(__buf));
  v1 = open(a1, 4, 0);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  if (pread(v1, __buf, 0x200uLL, 1024) == 512 && LOWORD(__buf[0]) == 17474 && WORD6(v8) != 11080)
  {
    if ((HIDWORD(v7) & 0xFFFFFF) == 0x636E65)
    {
      v3 = HIBYTE(HIDWORD(v7));
    }

    else
    {
      v3 = sub_10000E7E4();
      if ((v3 + 1) <= 1)
      {
        v3 = sub_10000E89C();
      }
    }

    v5 = &dword_100000010;
    while (*&aArabic[v5] != v3)
    {
      v5 += 24;
      if (v5 == 928)
      {
        v3 = 0;
        break;
      }
    }
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  close(v2);
  return v3;
}

id sub_10000BEB8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v116 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v120 = 0;
  v129 = -1;
  v130 = -1;
  v128 = 0;
  memset(v127, 0, sizeof(v127));
  v118 = 0;
  v119 = 0;
  inited = Img4DecodeInitManifest([v12 bytes], objc_msgSend(v12, "length"), v127);
  v114 = v13;
  v115 = v14;
  if (inited)
  {
    v16 = inited;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v122) = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to decode img4 manifest: %d", buf, 8u);
    }

    v20 = @"Failed to decode img4 manifest: %d";
    v108 = v16;
    v21 = 1471;
LABEL_5:
    sub_100011E6C("perform_disk_image_mount_cryptex", v21, -2, 0, v20, v17, v18, v19, v108);
    v22 = LABEL_6:;
    v23 = 0;
    v24 = 0;
    v117 = 0;
LABEL_7:
    v25 = -1;
    v26 = -1;
    v27 = -1;
LABEL_8:
    v28 = -1;
    goto LABEL_9;
  }

  Img4DecodeGetObjectPropertyData(v127, 1668315236, 1668834414, &v119, &v118);
  if (v33)
  {
    Img4DecodeGetObjectPropertyData(v127, 1885629799, 1885630061, &v119, &v118);
    if (v34)
    {
      v35 = v34;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v122) = v35;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve data from manifest: %d", buf, 8u);
      }

      sub_100011E6C("perform_disk_image_mount_cryptex", 1487, -2, 0, @"Failed to retrieve data from manifest: %d", v36, v37, v38, v35);
      goto LABEL_6;
    }
  }

  v39 = NSTemporaryDirectory();
  v40 = +[NSUUID UUID];
  v108 = [v40 UUIDString];
  v41 = [v39 stringByAppendingFormat:@"%@"];

  v117 = v41;
  if (!v41)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
    }

    v20 = @"Failed to create string.";
    v21 = 1496;
    goto LABEL_5;
  }

  v42 = NSTemporaryDirectory();
  v43 = +[NSUUID UUID];
  v109 = [v43 UUIDString];
  v24 = [v42 stringByAppendingFormat:@"%@"];

  if (!v24)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
    }

    v22 = sub_100011E6C("perform_disk_image_mount_cryptex", 1502, -2, 0, @"Failed to create string.", v55, v56, v57, v109);
    v23 = 0;
    v24 = 0;
    goto LABEL_7;
  }

  v44 = NSTemporaryDirectory();
  v45 = +[NSUUID UUID];
  v110 = [v45 UUIDString];
  v23 = [v44 stringByAppendingFormat:@"%@"];

  if (!v23)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
    }

    v22 = sub_100011E6C("perform_disk_image_mount_cryptex", 1508, -2, 0, @"Failed to create string.", v58, v59, v60, v110);
    v23 = 0;
    goto LABEL_7;
  }

  if (([v13 writeToFile:v117 atomically:0] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v122 = v117;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to write to %@.", buf, 0xCu);
    }

    sub_100011E6C("perform_disk_image_mount_cryptex", 1515, -2, 0, @"Failed to write to %@.", v61, v62, v63, v117);
    goto LABEL_64;
  }

  if (([v12 writeToFile:v24 atomically:0] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v122 = v24;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to write to %@.", buf, 0xCu);
    }

    sub_100011E6C("perform_disk_image_mount_cryptex", 1520, -2, 0, @"Failed to write to %@.", v64, v65, v66, v24);
    goto LABEL_64;
  }

  if (v14 && ([v14 writeToFile:v23 atomically:0] & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v122 = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to write to %@.", buf, 0xCu);
    }

    sub_100011E6C("perform_disk_image_mount_cryptex", 1526, -2, 0, @"Failed to write to %@.", v67, v68, v69, v23);
    goto LABEL_64;
  }

  v46 = open([v117 UTF8String], 0, 420);
  if (v46 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v70 = *__error();
      v71 = __error();
      v72 = strerror(*v71);
      *buf = 138412802;
      v122 = v117;
      v123 = 1024;
      v124 = v70;
      v125 = 2080;
      v126 = v72;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %@: %d (%s)", buf, 0x1Cu);
    }

    __error();
    v73 = __error();
    strerror(*v73);
    sub_100011E6C("perform_disk_image_mount_cryptex", 1535, -2, 0, @"Failed to create %@: %d (%s)", v74, v75, v76, v117);
    v22 = LABEL_64:;
    goto LABEL_7;
  }

  v27 = v46;
  v47 = open([v24 UTF8String], 0, 420);
  if (v47 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v77 = *__error();
      v78 = __error();
      v79 = strerror(*v78);
      *buf = 138412802;
      v122 = v24;
      v123 = 1024;
      v124 = v77;
      v125 = 2080;
      v126 = v79;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %@: %d (%s)", buf, 0x1Cu);
    }

    __error();
    v80 = __error();
    strerror(*v80);
    v22 = sub_100011E6C("perform_disk_image_mount_cryptex", 1541, -2, 0, @"Failed to create %@: %d (%s)", v81, v82, v83, v24);
    v25 = -1;
    v26 = -1;
    goto LABEL_8;
  }

  v26 = v47;
  if (v115)
  {
    v25 = open([v23 UTF8String], 0, 420);
    if (v25 == -1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *__error();
        v49 = __error();
        v50 = strerror(*v49);
        *buf = 138412802;
        v122 = v23;
        v123 = 1024;
        v124 = v48;
        v125 = 2080;
        v126 = v50;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %@: %d (%s)", buf, 0x1Cu);
      }

      __error();
      v51 = __error();
      strerror(*v51);
      v22 = sub_100011E6C("perform_disk_image_mount_cryptex", 1548, -2, 0, @"Failed to create %@: %d (%s)", v52, v53, v54, v23);
      v25 = -1;
      goto LABEL_8;
    }
  }

  else
  {
    v25 = -1;
  }

  v111 = 420;
  v84 = open([v116 UTF8String], 0);
  if (v84 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v93 = *__error();
      v94 = __error();
      v95 = strerror(*v94);
      *buf = 138412802;
      v122 = v116;
      v123 = 1024;
      v124 = v93;
      v125 = 2080;
      v126 = v95;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create %@: %d (%s)", buf, 0x1Cu);
    }

    __error();
    v96 = __error();
    strerror(*v96);
    v22 = sub_100011E6C("perform_disk_image_mount_cryptex", 1555, -2, 0, @"Failed to create %@: %d (%s)", v97, v98, v99, v116);
    goto LABEL_8;
  }

  v28 = v84;
  v129 = __PAIR64__(v27, v84);
  HIDWORD(v130) = v26;
  if (v25 != -1)
  {
    LODWORD(v130) = v25;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001BDD8();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001BE50();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001BECC();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001BF48();
  }

  v85 = cryptex_install_4MSM();
  if (v85)
  {
    v86 = v85;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v87 = strerror(v86);
      *buf = 138412802;
      v122 = v116;
      v123 = 1024;
      v124 = v86;
      v125 = 2080;
      v126 = v87;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to install cryptex (%@): %d (%s)", buf, 0x1Cu);
    }

    strerror(v86);
    v91 = @"Failed to install cryptex (%@): %d (%s)";
    v111 = v116;
    v92 = 1575;
LABEL_84:
    v22 = sub_100011E6C("perform_disk_image_mount_cryptex", v92, -2, 0, v91, v88, v89, v90, v111);
    goto LABEL_9;
  }

  string = cryptex_msm_get_string();
  if (!string)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve cryptex name.", buf, 2u);
    }

    v91 = @"Failed to retrieve cryptex name.";
    v92 = 1581;
    goto LABEL_84;
  }

  v100 = cryptex_msm_get_string();
  if (v100)
  {
    v112 = v100;
    v101 = cryptex_msm_get_string();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v122 = v101;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "cryptex mount point = %s", buf, 0xCu);
    }

    if (a6)
    {
      *a6 = [NSString stringWithUTF8String:v101];
    }

    v102 = [NSString stringWithUTF8String:v112];
    v22 = 0;
    if (v102)
    {
      v30 = v102;
LABEL_12:
      close(v27);
      unlink([v117 UTF8String]);
      v31 = v30;
      goto LABEL_13;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve cryptex devpath.", buf, 2u);
    }

    v22 = sub_100011E6C("perform_disk_image_mount_cryptex", 1587, -2, 0, @"Failed to retrieve cryptex devpath.", v103, v104, v105, 420);
  }

  v106 = cryptex_uninstall_4MSM();
  if (v106)
  {
    v107 = v106;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10001BFC4(string, v107);
    }
  }

LABEL_9:
  if (a7)
  {
    v29 = v22;
    *a7 = v22;
  }

  v30 = 0;
  v31 = 0;
  if (v27 != -1)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v26 != -1)
  {
    close(v26);
    unlink([v24 UTF8String]);
  }

  if (v25 != -1)
  {
    close(v25);
    unlink([v23 UTF8String]);
  }

  if (v28 != -1)
  {
    close(v28);
  }

  if (v120)
  {
    cryptex_msm_destroy();
  }

  return v31;
}

id sub_10000CCC8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = v17;
  memset(&v131, 0, sizeof(v131));
  v136 = 0;
  memset(v135, 0, sizeof(v135));
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  v126 = 0;
  if (!v14 || !v15 || !a6 || !v17 || !v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    sub_100011E6C("perform_disk_image_mount", 1677, -3, 0, @"Invalid input(s).", v25, v26, v27, v106);
    v118 = v116 = 0;
    v119 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
LABEL_14:
    if (!v13)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (!v16 && [v14 isEqualToString:@"Cryptex"])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Missing trust cache.", buf, 2u);
    }

    v22 = @"Missing trust cache.";
    v23 = 1682;
    v24 = -3;
    goto LABEL_33;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v134 = v18;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Preparing to mount disk image at %@.", buf, 0xCu);
  }

  if (!lstat([v13 UTF8String], &v131))
  {
    if ((v131.st_mode & 0xF000) != 0x8000)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v134 = v13;
        *&v134[8] = 1024;
        *&v134[10] = v131.st_mode & 0xF000;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ is not a regular file (mode: 0x%04x).", buf, 0x12u);
      }

      v22 = @"%@ is not a regular file (mode: 0x%04x).";
      v106 = v13;
      v23 = 1695;
      goto LABEL_32;
    }

    if (([v14 isEqualToString:@"Personalized"] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"Cryptex") & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v134 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unsupported disk image type: %@", buf, 0xCu);
      }

      v22 = @"Unsupported disk image type: %@";
      v106 = v14;
      v23 = 1701;
      goto LABEL_32;
    }

    inited = Img4DecodeInitManifest([v15 bytes], objc_msgSend(v15, "length"), v135);
    if (inited)
    {
      v37 = inited;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v134 = v37;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to decode img4 manifest: %d", buf, 8u);
      }

      v22 = @"Failed to decode img4 manifest: %d";
      v106 = v37;
      v23 = 1713;
      goto LABEL_32;
    }

    Img4DecodeGetObjectPropertyData(v135, 1885629799, 1145525076, &v129, &v128);
    if (v48)
    {
      v49 = v48;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v134 = v49;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve data from manifest: %d", buf, 8u);
      }

      v22 = @"Failed to retrieve data from manifest: %d";
      v106 = v49;
      v23 = 1719;
      goto LABEL_32;
    }

    Img4DecodeGetObjectPropertyData(v135, 1885629799, 1885630061, &v127, &v126);
    if (v50)
    {
      v51 = v50;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v134 = v51;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve data from manifest: %d", buf, 8u);
      }

      v22 = @"Failed to retrieve data from manifest: %d";
      v106 = v51;
      v23 = 1725;
      goto LABEL_32;
    }

    v52 = malloc_type_calloc(1uLL, v126 + 1, 0x429DF27DuLL);
    if (!v52)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v63 = *__error();
        v64 = __error();
        v65 = strerror(*v64);
        *buf = 67109378;
        *v134 = v63;
        *&v134[4] = 2080;
        *&v134[6] = v65;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate memory: %d (%s)", buf, 0x12u);
      }

      v66 = *__error();
      v67 = __error();
      strerror(*v67);
      v22 = @"Failed to allocate memory: %d (%s)";
      v106 = v66;
      v23 = 1731;
      goto LABEL_32;
    }

    v31 = v52;
    strncpy(v52, v127, v126);
    v53 = [[NSString alloc] initWithUTF8String:v31];
    if (!v53)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
      }

      v118 = sub_100011E6C("perform_disk_image_mount", 1739, -2, 0, @"Failed to create string.", v68, v69, v70, v106);
      goto LABEL_34;
    }

    v30 = v53;
    v114 = v31;
    if ([v53 isEqual:@"DeveloperDiskImage"])
    {
      v54 = &_img4_nonce_domain_ddi;
    }

    else
    {
      v54 = &_img4_nonce_domain_pdi;
    }

    if (sub_10000A3DC(v13, &v130, v128))
    {
      v55 = [NSData alloc];
      v108 = [v55 initWithBytes:v130 length:v128];
      if (v108)
      {
        v125 = 0;
        v107 = v30;
        v56 = sub_10000A5FC(v13, v30, 1885629799, v54, v15, &v125);
        v57 = v125;
        v118 = v57;
        if ((v56 & 1) == 0)
        {
          v77 = v57;
          v78 = [[NSString alloc] initWithFormat:@"Failed to validate server ticket with this device/image."];
          if (v77)
          {
            v106 = v78;
            v79 = [NSString stringWithFormat:@" %@ (%@)"];

            v78 = v79;
          }

          v31 = v114;
          v29 = v108;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v134 = v78;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v115 = sub_100011E6C("perform_disk_image_mount", 1760, -2, v118, @"Failed to validate server ticket with this device/image.", v80, v81, v82, v106);

          v28 = 0;
          v116 = 0;
          v118 = v115;
          v119 = 0;
          v30 = v107;
          goto LABEL_35;
        }

        sub_100015030(v14, 1);
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        obj = v124 = 0u;
        v29 = v108;
        v111 = [obj countByEnumeratingWithState:&v121 objects:v132 count:16];
        if (v111)
        {
          v110 = *v122;
          while (2)
          {
            for (i = 0; i != v111; i = i + 1)
            {
              if (*v122 != v110)
              {
                objc_enumerationMutation(obj);
              }

              v59 = *(*(&v121 + 1) + 8 * i);
              v120 = [v59 objectForKeyedSubscript:@"ImageSignature"];
              v117 = [v120 isEqual:v108];

              if (v117)
              {
                *a6 = [v59 objectForKeyedSubscript:@"MountPath"];
                v28 = obj;

                v31 = v114;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *v134 = v14;
                  *&v134[8] = 2080;
                  *&v134[10] = v114;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Matching image of type %@/%s found.", buf, 0x16u);
                }

                v112 = sub_100011E6C("perform_disk_image_mount", 1776, -2, 0, @"Matching image of type %@/%s found.", v83, v84, v85, v14);

                v119 = 0;
                v116 = 0;
                v118 = v112;
                v30 = v107;
                goto LABEL_14;
              }
            }

            v111 = [obj countByEnumeratingWithState:&v121 objects:v132 count:16];
            if (v111)
            {
              continue;
            }

            break;
          }
        }

        if (sub_100009910(v18))
        {
          if (sub_1000154D0([v13 fileSystemRepresentation]))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v134 = v13;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Disk image path is bad: %@", buf, 0xCu);
            }

            sub_100011E6C("perform_disk_image_mount", 1787, -2, 0, @"Disk image path is bad: %@", v60, v61, v62, v13);
          }

          else if (v16 && (sub_10000DEE4(v16, v15, v18) & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to load trust cache.", buf, 2u);
            }

            sub_100011E6C("perform_disk_image_mount", 1796, -2, 0, @"Failed to load trust cache.", v89, v90, v91, v106);
          }

          else
          {
            v119 = sub_10000B110(v13, v18);
            if (v119)
            {
              if (v16 || (sub_10000DEE4(0, 0, v18) & 1) != 0)
              {
                v116 = v119;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v134 = v18;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully mounted disk image at %@.", buf, 0xCu);
                }

                v119 = v116;
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v134 = v18;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to load trust caches at %@.", buf, 0xCu);
                }

                v99 = sub_100011E6C("perform_disk_image_mount", 1815, -2, 0, @"Failed to load trust caches at %@.", v96, v97, v98, v18);

                if (unmount([v18 fileSystemRepresentation], 0x80000) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v100 = *__error();
                  v101 = __error();
                  v102 = strerror(*v101);
                  *buf = 138412802;
                  *v134 = v18;
                  *&v134[8] = 1024;
                  *&v134[10] = v100;
                  *&v134[14] = 2080;
                  *&v134[16] = v102;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to force unmount %@: %d (%s)", buf, 0x1Cu);
                }

                if (([v18 hasPrefix:@"/System/Volumes/FieldService"] & 1) == 0 && (objc_msgSend(v18, "hasPrefix:", @"/System/Volumes/FieldServiceDiagnostic") & 1) == 0 && (objc_msgSend(v18, "hasPrefix:", @"/System/Volumes/FieldServiceRepair") & 1) == 0 && (objc_msgSend(v18, "hasPrefix:", @"/Developer") & 1) == 0 && (objc_msgSend(v18, "hasPrefix:", @"/System/Developer") & 1) == 0 && rmdir(objc_msgSend(v18, "fileSystemRepresentation")) == -1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v103 = *__error();
                  v104 = __error();
                  v105 = strerror(*v104);
                  *buf = 138412802;
                  *v134 = v18;
                  *&v134[8] = 1024;
                  *&v134[10] = v103;
                  *&v134[14] = 2080;
                  *&v134[16] = v105;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to remove %@: %d (%s)", buf, 0x1Cu);
                }

                sub_10000B970([v119 fileSystemRepresentation]);
                v116 = 0;
                v118 = v99;
              }

              goto LABEL_114;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *v134 = v13;
              *&v134[8] = 2112;
              *&v134[10] = v18;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to mount %@ at %@.", buf, 0x16u);
            }

            sub_100011E6C("perform_disk_image_mount", 1806, -2, 0, @"Failed to mount %@ at %@.", v93, v94, v95, v13);
          }
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v134 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to verify the disk image mount path %@.", buf, 0xCu);
          }

          sub_100011E6C("perform_disk_image_mount", 1782, -2, 0, @"Failed to verify the disk image mount path %@.", v86, v87, v88, v18);
        }
        v92 = ;

        v116 = 0;
        v118 = v92;
        v119 = 0;
LABEL_114:
        v31 = v114;
        v30 = v107;
        v29 = v108;
        v28 = obj;
        goto LABEL_14;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", buf, 2u);
      }

      sub_100011E6C("perform_disk_image_mount", 1754, -2, 0, @"Failed to create data.", v74, v75, v76, v106);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v134 = v13;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to digest %@.", buf, 0xCu);
      }

      sub_100011E6C("perform_disk_image_mount", 1748, -2, 0, @"Failed to digest %@.", v71, v72, v73, v13);
    }
    v118 = ;
    v119 = 0;
    v29 = 0;
    v28 = 0;
    v116 = 0;
    v31 = v114;
    goto LABEL_35;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *__error();
    v33 = __error();
    v34 = strerror(*v33);
    *buf = 138412802;
    *v134 = v13;
    *&v134[8] = 1024;
    *&v134[10] = v32;
    *&v134[14] = 2080;
    *&v134[16] = v34;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to lstat %@: %d (%s)", buf, 0x1Cu);
  }

  __error();
  v35 = __error();
  strerror(*v35);
  v22 = @"Failed to lstat %@: %d (%s)";
  v106 = v13;
  v23 = 1690;
LABEL_32:
  v24 = -2;
LABEL_33:
  v118 = sub_100011E6C("perform_disk_image_mount", v23, v24, 0, v22, v19, v20, v21, v106);
  v31 = 0;
LABEL_34:
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v119 = 0;
  v116 = 0;
LABEL_35:
  if (unlink([v13 UTF8String]) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v113 = v31;
    v38 = a7;
    v39 = v18;
    v40 = v14;
    v41 = v16;
    v42 = v15;
    v43 = *__error();
    v44 = __error();
    v45 = strerror(*v44);
    *buf = 138412802;
    *v134 = v13;
    *&v134[8] = 1024;
    *&v134[10] = v43;
    v15 = v42;
    v16 = v41;
    v14 = v40;
    v18 = v39;
    a7 = v38;
    *&v134[14] = 2080;
    *&v134[16] = v45;
    v31 = v113;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to unlink %@: %d (%s)", buf, 0x1Cu);
  }

LABEL_38:
  if (a7 && !v119)
  {
    *a7 = v118;
  }

  if (v31)
  {
    free(v31);
  }

  if (v130)
  {
    free(v130);
  }

  v46 = v116;

  return v116;
}

uint64_t sub_10000DEE4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  bzero(__str, 0x400uLL);
  memset(&v53, 0, sizeof(v53));
  connect = 0;
  v51 = 0;
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
    }

    v17 = 0;
    v12 = 0;
    v8 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_14;
  }

  if (v5)
  {
    v8 = 0;
    v9 = -1;
    goto LABEL_4;
  }

  snprintf(__str, 0x400uLL, "%s/.TrustCache", [v7 UTF8String]);
  v20 = open(__str, 0);
  if (v20 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *__error();
      v34 = __error();
      v35 = strerror(*v34);
      *buf = 136315650;
      *v55 = __str;
      *&v55[8] = 1024;
      *&v55[10] = v33;
      v56 = 2080;
      v57 = v35;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to open %s: %d (%s)", buf, 0x1Cu);
    }

    v17 = 0;
    v12 = 0;
    v8 = 0;
    v18 = 0;
    v19 = 0;
    v5 = 0;
LABEL_14:
    v9 = -1;
    goto LABEL_24;
  }

  v9 = v20;
  if (fstat(v20, &v53) == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *__error();
      v39 = __error();
      v40 = strerror(*v39);
      *buf = 136315650;
      *v55 = __str;
      *&v55[8] = 1024;
      *&v55[10] = v38;
      v56 = 2080;
      v57 = v40;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to fstat %s: %d (%s)", buf, 0x1Cu);
    }

    v17 = 0;
    v12 = 0;
    v8 = 0;
    goto LABEL_63;
  }

  v21 = mmap(0, v53.st_size, 1, 1026, v9, 0);
  if (v21 != -1)
  {
    v8 = v21;
    v22 = [NSData alloc];
    v23 = [v22 initWithBytesNoCopy:v8 length:v53.st_size freeWhenDone:0];
    if (v23)
    {
      v5 = v23;
LABEL_4:
      v10 = IOServiceMatching("AppleMobileFileIntegrity");
      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v10);
      if (!MatchingService)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOServiceGetMatchingService failed.", buf, 2u);
        }

        v17 = 0;
        v12 = 0;
        goto LABEL_23;
      }

      v12 = MatchingService;
      v13 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
      if (v13)
      {
        v14 = v13;
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_10:
          v17 = 0;
LABEL_23:
          v18 = 0;
          v19 = 0;
          goto LABEL_24;
        }

        *buf = 67109120;
        *v55 = v14 & 0x3FFF;
        v15 = "IOServiceOpen failed: 0x%04x";
        goto LABEL_8;
      }

      if (v6 && [v6 length])
      {
        v25 = [v6 length];
        v26 = [v5 length] + v25;
        v27 = malloc_type_malloc((v26 + 16), 0x58421BC1uLL);
        if (!v27)
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_10;
          }

          v44 = *__error();
          v45 = __error();
          v46 = strerror(*v45);
          *buf = 67109378;
          *v55 = v44;
          *&v55[4] = 2080;
          *&v55[6] = v46;
          v15 = "Failed to allocate memory: %d (%s)";
          v16 = 18;
          goto LABEL_9;
        }

        v17 = v27;
        v49 = v26;
        *v27 = [v6 length];
        memcpy(v17 + 2, [v6 bytes], objc_msgSend(v6, "length"));
        v17[1] = [v5 length];
        memcpy(v17 + *v17 + 16, [v5 bytes], objc_msgSend(v5, "length"));
        v50 = 0;
        v28 = sub_100011D1C(&v51, &v50);
        v19 = v50;
        if (!v28)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v55 = v19;
            v31 = "Failed to check support for Restricted Execution Mode: %{public}@";
            v32 = 12;
            goto LABEL_73;
          }

LABEL_74:
          v18 = 0;
          goto LABEL_24;
        }

        if (v51)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sealing trust cache will invalidate the system's attestation.", buf, 2u);
          }

          if ((sub_100011FF4() & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v31 = "Bailing in order to protect attestation integrity.";
              v32 = 2;
              goto LABEL_73;
            }

            goto LABEL_74;
          }

          [v6 bytes];
          [v6 length];
          v29 = aks_measure_and_seal_cryptex_manifest();
          if (v29)
          {
            v30 = v29;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v55 = v30;
              *&v55[4] = 1024;
              *&v55[6] = v30;
              v31 = "Failed to measure and seal im4m: %d (0x%08x)";
              v32 = 14;
LABEL_73:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
              goto LABEL_74;
            }

            goto LABEL_74;
          }
        }

        v47 = IOConnectCallMethod(connect, 7u, 0, 0, v17, (v49 + 16), 0, 0, 0, 0);
        if (v47)
        {
          v48 = v47;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v55 = v48;
            v31 = "IOConnectCallMethod failed: 0x%08x";
            v32 = 8;
            goto LABEL_73;
          }

          goto LABEL_74;
        }
      }

      else
      {
        v36 = IOConnectCallMethod(connect, 2u, 0, 0, [v5 bytes], objc_msgSend(v5, "length"), 0, 0, 0, 0);
        if (v36)
        {
          v37 = v36;
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_10;
          }

          *buf = 67109120;
          *v55 = v37;
          v15 = "IOConnectCallMethod failed: 0x%08x";
LABEL_8:
          v16 = 8;
LABEL_9:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
          goto LABEL_10;
        }

        v17 = 0;
        v19 = 0;
      }

      v18 = 1;
      goto LABEL_24;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", buf, 2u);
    }

    v17 = 0;
    v12 = 0;
LABEL_63:
    v18 = 0;
    v19 = 0;
    v5 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *__error();
    v42 = __error();
    v43 = strerror(*v42);
    *buf = 136315650;
    *v55 = __str;
    *&v55[8] = 1024;
    *&v55[10] = v41;
    v56 = 2080;
    v57 = v43;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to mmap %s: %d (%s)", buf, 0x1Cu);
  }

  v17 = 0;
  v12 = 0;
  v18 = 0;
  v19 = 0;
  v5 = 0;
  v8 = -1;
LABEL_24:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v12)
  {
    IOObjectRelease(v12);
  }

  if (v8)
  {
    munmap(v8, v53.st_size);
  }

  if (v9 != -1)
  {
    close(v9);
  }

  if (v17)
  {
    free(v17);
  }

  return v18;
}

uint64_t sub_10000E7E4()
{
  v2 = 4;
  memset(&v3, 0, sizeof(v3));
  v1 = 0;
  if (getvfsbyname("hfs", &v3) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4[0] = 3;
  v4[1] = v3.vfc_typenum;
  v4[2] = 1;
  if (sysctl(v4, 3u, &v1, &v2, 0, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v1;
  }
}

passwd *sub_10000E89C()
{
  bzero(__str, 0x400uLL);
  result = getpwuid(0);
  if (result)
  {
    __strcpy_chk();
    __strcat_chk();
    v1 = open(__str, 0, 0);
    v2 = v1;
    if (v1 < 0)
    {
      v4 = 0;
      result = 0;
      if (v2 == -1)
      {
        return result;
      }
    }

    else
    {
      v3 = read(v1, __str, 0x400uLL);
      __str[v3 & ~(v3 >> 63)] = 0;
      v4 = strtol(__str, 0, 0);
    }

    close(v2);
    return v4;
  }

  return result;
}

id sub_10000E998(void *a1, void *a2)
{
  v3 = a1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000EB30;
  v23 = sub_10000EB40;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000EB30;
  v17 = sub_10000EB40;
  v18 = 0;
  v4 = sub_10000EB48(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EB8C;
  block[3] = &unk_100030EF8;
  v5 = v3;
  v10 = v5;
  v11 = &v19;
  v12 = &v13;
  dispatch_sync(v4, block);

  v6 = v14[5];
  if (a2 && !v6)
  {
    *a2 = v20[5];
    v6 = v14[5];
  }

  v7 = v6;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

uint64_t sub_10000EB30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000EB48(uint64_t a1)
{
  if (qword_100038890 != -1)
  {
    sub_10001C074();
  }

  v2 = qword_100038898;

  return v2;
}

void sub_10000EB8C(uint64_t a1)
{
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v2 = sub_100011650(*(a1 + 32));
  v3 = "PDI";
  if (v2)
  {
    v4 = v2;
    v5 = [*(a1 + 32) isEqual:@"DeveloperDiskImage"];

    if (v5)
    {
      v3 = "DDI";
    }
  }

  v6 = img4_nonce_domain_copy_nonce();
  if (!v6)
  {
    v12 = [[NSData alloc] initWithBytes:v33 + 2 length:HIDWORD(v34)];
    if (v12)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", buf, 2u);
    }

    v22 = @"Failed to create data.";
    v23 = 2206;
    goto LABEL_19;
  }

  v7 = v6;
  if (v6 != 45)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v28 = v3;
      v29 = 1024;
      v30 = v7;
      v31 = 2080;
      v32 = strerror(v7);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query img4 %s nonce: %d (%s)", buf, 0x1Cu);
    }

    strerror(v7);
    sub_100011E6C("copy_personalization_nonce_for_image_type_block_invoke", 2198, -2, 0, @"Failed to query img4 %s nonce: %d (%s)", v16, v17, v18, v3);
    goto LABEL_20;
  }

  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];
  v10 = [v9 dataUsingEncoding:4];
  v11 = qword_1000388C0;
  qword_1000388C0 = v10;

  if (!qword_1000388C0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create nonce.", buf, 2u);
    }

    v22 = @"Failed to create nonce.";
    v23 = 2191;
LABEL_19:
    sub_100011E6C("copy_personalization_nonce_for_image_type_block_invoke", v23, -2, 0, v22, v19, v20, v21, v26);
    v24 = LABEL_20:;
    v25 = *(*(a1 + 40) + 8);
    v15 = *(v25 + 40);
    *(v25 + 40) = v24;
    goto LABEL_21;
  }

  v12 = qword_1000388C0;
LABEL_9:
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
  v15 = v12;

LABEL_21:
}

uint64_t sub_10000EE70(void *a1, void *a2)
{
  v3 = a1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000EB30;
  v16 = sub_10000EB40;
  v17 = 0;
  v4 = sub_10000EB48(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EFCC;
  block[3] = &unk_100030EF8;
  v5 = v3;
  v9 = v5;
  v10 = &v12;
  v11 = &v18;
  dispatch_sync(v4, block);

  v6 = *(v19 + 24);
  if (a2 && (v19[3] & 1) == 0)
  {
    *a2 = v13[5];
    v6 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v6 & 1;
}

void sub_10000EFCC(uint64_t a1)
{
  v2 = sub_100011650(*(a1 + 32));
  v3 = "PDI";
  if (v2)
  {
    v4 = v2;
    v5 = [*(a1 + 32) isEqual:@"DeveloperDiskImage"];

    if (v5)
    {
      v3 = "DDI";
    }
  }

  v6 = img4_nonce_domain_roll_nonce();
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  if (v6 == 45)
  {
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    v10 = [v9 dataUsingEncoding:4];
    v11 = qword_1000388C0;
    qword_1000388C0 = v10;

    if (qword_1000388C0)
    {
LABEL_7:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create nonce.", buf, 2u);
    }

    sub_100011E6C("roll_personalization_nonce_for_image_type_block_invoke", 2244, -2, 0, @"Failed to create nonce.", v15, v16, v17, v21);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = v3;
      v24 = 1024;
      v25 = v7;
      v26 = 2080;
      v27 = strerror(v7);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to roll img4 %s nonce: %d (%s)", buf, 0x1Cu);
    }

    strerror(v7);
    sub_100011E6C("roll_personalization_nonce_for_image_type_block_invoke", 2249, -2, 0, @"Failed to roll img4 %s nonce: %d (%s)", v12, v13, v14, v3);
  }
  v18 = ;
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

id sub_10000F210(void *a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000EB30;
  v17 = sub_10000EB40;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000EB30;
  v11 = sub_10000EB40;
  v12 = 0;
  v2 = sub_10000EB48(a1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F37C;
  v6[3] = &unk_100030F20;
  v6[4] = &v13;
  v6[5] = &v7;
  dispatch_sync(v2, v6);

  v3 = v8[5];
  if (a1 && !v3)
  {
    *a1 = v14[5];
    v3 = v8[5];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void sub_10000F37C(uint64_t a1)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v2 = img4_nonce_domain_copy_nonce();
  if (!v2)
  {
    v8 = [[NSData alloc] initWithBytes:v27 + 2 length:HIDWORD(v28)];
    if (v8)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create data.", buf, 2u);
    }

    v18 = @"Failed to create data.";
    v19 = 2298;
    goto LABEL_16;
  }

  v3 = v2;
  if (v2 != 45)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v24 = v3;
      v25 = 2080;
      v26 = strerror(v3);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query img4 nonce: %d (%s)", buf, 0x12u);
    }

    strerror(v3);
    sub_100011E6C("copy_cryptex_nonce_block_invoke", 2290, -2, 0, @"Failed to query img4 nonce: %d (%s)", v12, v13, v14, v3);
    goto LABEL_17;
  }

  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [v5 dataUsingEncoding:4];
  v7 = qword_1000388C0;
  qword_1000388C0 = v6;

  if (!qword_1000388C0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create nonce.", buf, 2u);
    }

    v18 = @"Failed to create nonce.";
    v19 = 2283;
LABEL_16:
    sub_100011E6C("copy_cryptex_nonce_block_invoke", v19, -2, 0, v18, v15, v16, v17, v22);
    v20 = LABEL_17:;
    v21 = *(*(a1 + 32) + 8);
    v11 = *(v21 + 40);
    *(v21 + 40) = v20;
    goto LABEL_18;
  }

  v8 = qword_1000388C0;
LABEL_6:
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

LABEL_18:
}

uint64_t sub_10000F5F4(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10000EB30;
  v10 = sub_10000EB40;
  v11 = 0;
  v2 = sub_10000EB48(a1);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F724;
  v5[3] = &unk_100030F20;
  v5[4] = &v6;
  v5[5] = &v12;
  dispatch_sync(v2, v5);

  v3 = *(v13 + 24);
  if (a1 && (v13[3] & 1) == 0)
  {
    *a1 = v7[5];
    v3 = *(v13 + 24);
  }

  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  return v3 & 1;
}

void sub_10000F724(uint64_t a1)
{
  v2 = img4_nonce_domain_roll_nonce();
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  if (v2 == 45)
  {
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];
    v6 = [v5 dataUsingEncoding:4];
    v7 = qword_1000388C0;
    qword_1000388C0 = v6;

    if (qword_1000388C0)
    {
LABEL_4:
      *(*(*(a1 + 40) + 8) + 24) = 1;
      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create nonce.", buf, 2u);
    }

    sub_100011E6C("roll_cryptex_nonce_block_invoke", 2328, -2, 0, @"Failed to create nonce.", v11, v12, v13, v17);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v19 = v3;
      v20 = 2080;
      v21 = strerror(v3);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to roll img4 cryptex nonce: %d (%s)", buf, 0x12u);
    }

    strerror(v3);
    sub_100011E6C("roll_cryptex_nonce_block_invoke", 2333, -2, 0, @"Failed to roll img4 cryptex nonce: %d (%s)", v8, v9, v10, v3);
  }
  v14 = ;
  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

id sub_10000F8FC(void *a1, void *a2)
{
  v3 = a1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10000EB30;
  v23 = sub_10000EB40;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000EB30;
  v17 = sub_10000EB40;
  v18 = 0;
  v4 = sub_10000FA94(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FAD8;
  block[3] = &unk_100030EF8;
  v5 = v3;
  v10 = v5;
  v11 = &v13;
  v12 = &v19;
  dispatch_sync(v4, block);

  v6 = v20[5];
  if (a2 && !v6)
  {
    *a2 = v14[5];
    v6 = v20[5];
  }

  v7 = v6;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

id sub_10000FA94(uint64_t a1)
{
  if (qword_1000388A0 != -1)
  {
    sub_10001C088();
  }

  v2 = qword_1000388A8;

  return v2;
}

void sub_10000FAD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v84 = 0;
  v85 = 0;
  if (a1[4])
  {
    v9 = sub_100015DA0(a1);
    if (v9)
    {
      v10 = v9;
      v11 = a1[4];
      v12 = *(a1[5] + 8);
      obj = *(v12 + 40);
      v13 = sub_10000E998(v11, &obj);
      objc_storeStrong((v12 + 40), obj);
      if (v13)
      {
        v17 = [[NSString alloc] initHexStringWithData:v13];
        if (v17)
        {
          v21 = v17;
          v81 = a1[4];
          v22 = [v10 stringByAppendingFormat:@"/%@/%@.im4m"];
          if (v22)
          {
            v26 = v22;
            v27 = +[NSFileManager defaultManager];
            v28 = [v27 fileExistsAtPath:v26];

            if (v28)
            {
              v32 = [NSData alloc];
              v33 = *(a1[5] + 8);
              v82 = *(v33 + 40);
              v34 = [v32 initWithContentsOfFile:v26 options:0 error:&v82];
              objc_storeStrong((v33 + 40), v82);
              if (v34)
              {
                inited = Img4DecodeInitManifest([v34 bytes], objc_msgSend(v34, "length"), v86);
                if (inited)
                {
                  sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2414, -2, 0, @"Failed to decode img4 manifest: %d", v39, v40, v41, inited);
                }

                else
                {
                  Img4DecodeGetObjectPropertyData(v86, 1885629799, 1885630061, &v85, &v84);
                  if (v56)
                  {
                    sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2420, -2, 0, @"Failed to retrieve data from manifest: %d", v57, v58, v59, v56);
                  }

                  else
                  {
                    v63 = [NSString alloc];
                    v64 = [v63 initWithBytes:v85 length:v84 encoding:4];
                    if (v64)
                    {
                      v65 = v64;
                      if ([v64 isEqualToString:a1[4]])
                      {
                        v69 = *(a1[6] + 8);
                        v70 = *(v69 + 40);
                        *(v69 + 40) = v34;
                        v71 = v34;
                      }

                      else
                      {
                        v77 = sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2431, -2, 0, @"Manifest type does not match.", v66, v67, v68, v81);
                        v78 = *(a1[5] + 8);
                        v79 = *(v78 + 40);
                        *(v78 + 40) = v77;
                      }

                      goto LABEL_26;
                    }

                    v72 = __error();
                    v73 = strerror(*v72);
                    sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2426, -2, 0, @"Failed to create string: %s", v74, v75, v76, v73);
                  }
                }
                v60 = ;
                v61 = *(a1[5] + 8);
                v62 = *(v61 + 40);
                *(v61 + 40) = v60;

LABEL_25:
LABEL_26:

                goto LABEL_27;
              }

              sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2408, -2, *(*(a1[5] + 8) + 40), @"Failed to load manifest at %@.", v35, v36, v37, v26);
            }

            else
            {
              sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2402, -2, 0, @"%@ does not exist.", v29, v30, v31, v26);
            }
            v53 = ;
            v54 = *(a1[5] + 8);
            v55 = *(v54 + 40);
            *(v54 + 40) = v53;

            goto LABEL_25;
          }

          v50 = sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2397, -2, 0, @"Failed to create manifest path.", v23, v24, v25, v81);
          v51 = *(a1[5] + 8);
          v52 = *(v51 + 40);
          *(v51 + 40) = v50;
        }

        else
        {
          v47 = sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2391, -2, 0, @"Failed to create hex string.", v18, v19, v20, v80);
          v48 = *(a1[5] + 8);
          v49 = *(v48 + 40);
          *(v48 + 40) = v47;
        }
      }

      else
      {
        v44 = sub_100011E6C("copy_personalized_image_manifest_block_invoke", 2385, -2, *(*(a1[5] + 8) + 40), @"Failed to copy personalization nonce.", v14, v15, v16, v80);
        v45 = *(a1[5] + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = v44;
      }

LABEL_27:

      return;
    }

    v42 = @"Failed to query working directory.";
    v43 = 2379;
  }

  else
  {
    v42 = @"Invalid input(s).";
    v43 = 2373;
  }

  *(*(a1[5] + 8) + 40) = sub_100011E6C("copy_personalized_image_manifest_block_invoke", v43, -2, 0, v42, a6, a7, a8, v80);

  _objc_release_x1();
}

uint64_t sub_10000FFD0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10000EB30;
  v25 = sub_10000EB40;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = sub_10000FA94(v6);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100010150;
  v12[3] = &unk_100030F48;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = &v21;
  v16 = &v17;
  dispatch_sync(v7, v12);

  v10 = *(v18 + 24);
  if (a3 && (v18[3] & 1) == 0)
  {
    *a3 = v22[5];
    v10 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v10 & 1;
}

void sub_100010150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  v100 = 0;
  v101 = 0;
  if (*(a1 + 32))
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      inited = Img4DecodeInitManifest([v9 bytes], objc_msgSend(*(a1 + 40), "length"), v108);
      if (inited)
      {
        sub_100011E6C("store_personalized_image_manifest_block_invoke", 2475, -2, 0, @"Failed to decode img4 manifest: %d", v11, v12, v13, inited);
        v18 = LABEL_10:;
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        return;
      }

      Img4DecodeGetObjectPropertyData(v108, 1885629799, 1885630061, &v101, &v100);
      if (v14)
      {
        sub_100011E6C("store_personalized_image_manifest_block_invoke", 2481, -2, 0, @"Failed to retrieve data from manifest: %d", v15, v16, v17, v14);
        goto LABEL_10;
      }

      v21 = [NSString alloc];
      v22 = [v21 initWithBytes:v101 length:v100 encoding:4];
      if (!v22)
      {
        v69 = __error();
        v70 = strerror(*v69);
        sub_100011E6C("store_personalized_image_manifest_block_invoke", 2487, -2, 0, @"Failed to create string: %s", v71, v72, v73, v70);
        goto LABEL_10;
      }

      v23 = v22;
      v24 = [v22 isEqualToString:*(a1 + 32)];
      if (v24)
      {
        v28 = sub_100015DA0(v24);
        if (v28)
        {
          v29 = v28;
          v30 = *(a1 + 32);
          v31 = *(*(a1 + 48) + 8);
          obj = *(v31 + 40);
          v32 = sub_10000E998(v30, &obj);
          objc_storeStrong((v31 + 40), obj);
          if (!v32)
          {
            v79 = sub_100011E6C("store_personalized_image_manifest_block_invoke", 2504, -2, *(*(*(a1 + 48) + 8) + 40), @"Failed to copy personalization nonce.", v33, v34, v35, v95);
            v80 = *(*(a1 + 48) + 8);
            v81 = *(v80 + 40);
            *(v80 + 40) = v79;

            return;
          }

          v36 = [[NSString alloc] initHexStringWithData:v32];
          if (!v36)
          {
            v82 = sub_100011E6C("store_personalized_image_manifest_block_invoke", 2510, -2, 0, @"Failed to create hex string.", v37, v38, v39, v95);
            v83 = *(*(a1 + 48) + 8);
            v84 = *(v83 + 40);
            *(v83 + 40) = v82;

LABEL_41:
            return;
          }

          v40 = v36;
          v41 = [v29 stringByAppendingPathComponent:*(a1 + 32)];
          if (v41)
          {
            v45 = v41;
            v46 = +[NSFileManager defaultManager];
            v47 = [v46 fileExistsAtPath:v45];

            if (v47 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v48 = objc_claimAutoreleasedReturnValue(), v49 = *(*(a1 + 48) + 8), v98 = *(v49 + 40), v50 = [v48 removeItemAtPath:v45 error:&v98], objc_storeStrong((v49 + 40), v98), v48, (v50 & 1) == 0))
            {
              sub_100011E6C("store_personalized_image_manifest_block_invoke", 2522, -2, *(*(*(a1 + 48) + 8) + 40), @"Failed to delete manifest folder at %@.", v51, v52, v53, v45);
            }

            else
            {
              v54 = +[NSFileManager defaultManager];
              v106 = NSFilePosixPermissions;
              v107 = &off_100034A68;
              v55 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
              v56 = *(*(a1 + 48) + 8);
              v97 = *(v56 + 40);
              v57 = [v54 createDirectoryAtPath:v45 withIntermediateDirectories:1 attributes:v55 error:&v97];
              objc_storeStrong((v56 + 40), v97);

              if (v57)
              {
                v95 = v40;
                v61 = [v45 stringByAppendingFormat:@"/%@.im4m"];

                if (v61)
                {
                  v62 = *(a1 + 40);
                  v63 = *(*(a1 + 48) + 8);
                  v96 = *(v63 + 40);
                  v64 = [v62 writeToFile:v61 options:0 error:&v96];
                  objc_storeStrong((v63 + 40), v96);
                  if (v64)
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      v68 = *(a1 + 32);
                      *buf = 138412546;
                      v103 = v68;
                      v104 = 2112;
                      v105 = v61;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully stored %@ manifest at %@.", buf, 0x16u);
                    }

                    *(*(*(a1 + 56) + 8) + 24) = 1;
                  }

                  else
                  {
                    v92 = sub_100011E6C("store_personalized_image_manifest_block_invoke", 2539, -2, *(*(*(a1 + 48) + 8) + 40), @"Failed to write manifest to %@.", v65, v66, v67, v61);
                    v93 = *(*(a1 + 48) + 8);
                    v94 = *(v93 + 40);
                    *(v93 + 40) = v92;
                  }

                  goto LABEL_40;
                }

                v85 = 2534;
                goto LABEL_33;
              }

              sub_100011E6C("store_personalized_image_manifest_block_invoke", 2528, -2, *(*(*(a1 + 48) + 8) + 40), @"Failed to create %@.", v58, v59, v60, v45);
            }
            v89 = ;
            v90 = *(*(a1 + 48) + 8);
            v91 = *(v90 + 40);
            *(v90 + 40) = v89;

            goto LABEL_40;
          }

          v85 = 2516;
LABEL_33:
          v86 = sub_100011E6C("store_personalized_image_manifest_block_invoke", v85, -2, 0, @"Failed to create manifest path.", v42, v43, v44, v95);
          v87 = *(*(a1 + 48) + 8);
          v88 = *(v87 + 40);
          *(v87 + 40) = v86;

LABEL_40:
          goto LABEL_41;
        }

        v74 = @"Failed to query working directory.";
        v75 = 2498;
      }

      else
      {
        v74 = @"Manifest type does not match.";
        v75 = 2492;
      }

      v76 = sub_100011E6C("store_personalized_image_manifest_block_invoke", v75, -2, 0, v74, v25, v26, v27, v95);
      v77 = *(*(a1 + 48) + 8);
      v78 = *(v77 + 40);
      *(v77 + 40) = v76;

      return;
    }
  }

  *(*(*(a1 + 48) + 8) + 40) = sub_100011E6C("store_personalized_image_manifest_block_invoke", 2469, -2, 0, @"Invalid input(s).", a6, a7, a8, v95);

  _objc_release_x1();
}

uint64_t sub_1000107E4(void *a1, void *a2)
{
  v3 = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000EB30;
  v20 = sub_10000EB40;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = sub_10000FA94(v3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010940;
  block[3] = &unk_100030EF8;
  v5 = v3;
  v9 = v5;
  v10 = &v16;
  v11 = &v12;
  dispatch_sync(v4, block);

  v6 = *(v13 + 24);
  if (a2 && (v13[3] & 1) == 0)
  {
    *a2 = v17[5];
    v6 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v6 & 1;
}

void sub_100010940(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1[4])
  {
    v24 = @"Invalid input(s).";
    v25 = 2570;
LABEL_11:
    *(*(a1[5] + 8) + 40) = sub_100011E6C("delete_personalized_image_manifest_block_invoke", v25, -2, 0, v24, a6, a7, a8, v32);

    _objc_release_x1();
    return;
  }

  v9 = sub_100015DA0(a1);
  if (!v9)
  {
    v24 = @"Failed to query working directory.";
    v25 = 2576;
    goto LABEL_11;
  }

  v33 = v9;
  v10 = [v9 stringByAppendingPathComponent:a1[4]];
  if (v10)
  {
    v14 = v10;
    v15 = +[NSFileManager defaultManager];
    v16 = [v15 fileExistsAtPath:v14];

    if (v16)
    {
      v17 = +[NSFileManager defaultManager];
      v18 = *(a1[5] + 8);
      obj = *(v18 + 40);
      v19 = [v17 removeItemAtPath:v14 error:&obj];
      objc_storeStrong((v18 + 40), obj);

      if ((v19 & 1) == 0)
      {
        v29 = sub_100011E6C("delete_personalized_image_manifest_block_invoke", 2588, -2, *(*(a1[5] + 8) + 40), @"Failed to remove manifest at %@.", v20, v21, v22, v14);
        v30 = *(a1[5] + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = v29;

        goto LABEL_18;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v23 = a1[4];
        *buf = 138412546;
        v36 = v23;
        v37 = 2112;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Successfully deleted %@ manifest at %@.", buf, 0x16u);
      }
    }

    *(*(a1[6] + 8) + 24) = 1;
LABEL_18:

    return;
  }

  v26 = sub_100011E6C("delete_personalized_image_manifest_block_invoke", 2582, -2, 0, @"Failed to create manifest path.", v11, v12, v13, v32);
  v27 = *(a1[5] + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;
}

void sub_100010C04(id a1)
{
  qword_100038898 = dispatch_queue_create("com.apple.storage_mounter.nonce", 0);

  _objc_release_x1();
}

void sub_100010C44(id a1)
{
  qword_1000388A8 = dispatch_queue_create("com.apple.storage_mounter.manifest", 0);

  _objc_release_x1();
}

void sub_100010C94(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_100010CC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t sub_100010D0C(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid argument.", buf, 2u);
    }

    v12 = @"Invalid argument.";
    v13 = 33;
    v14 = -3;
LABEL_16:
    v7 = sub_100011E6C("registerAppsForMountPoint", v13, v14, 0, v12, v9, v10, v11, v23);
    v5 = 0;
    if (!a2)
    {
LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }

LABEL_17:
    v15 = v7;
    v8 = 0;
    *a2 = v7;
    goto LABEL_24;
  }

  if (!objc_opt_class())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "InstallCoordination is not supported.", buf, 2u);
    }

    v12 = @"InstallCoordination is not supported.";
    v13 = 38;
    goto LABEL_15;
  }

  v4 = [NSURL fileURLWithPath:v3];
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create URL.", buf, 2u);
    }

    v12 = @"Failed to create URL.";
    v13 = 44;
LABEL_15:
    v14 = -2;
    goto LABEL_16;
  }

  v5 = v4;
  v24 = 0;
  v6 = [IXAppInstallCoordinator registerContentsForDiskImageAtURL:v4 options:0 withError:&v24];
  v7 = v24;
  if ((v6 & 1) == 0)
  {
    v16 = [[NSString alloc] initWithFormat:@"Failed to register apps for %@.", v3];
    if (v7)
    {
      v17 = [NSString stringWithFormat:@" %@ (%@)", v16, v7];

      v16 = v17;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v21 = sub_100011E6C("registerAppsForMountPoint", 49, -2, v7, @"Failed to register apps for %@.", v18, v19, v20, v3);

    v7 = v21;
    if (!a2)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v8 = 1;
LABEL_24:

  return v8;
}

uint64_t sub_100010FF8(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid argument.", buf, 2u);
    }

    v15 = @"Invalid argument.";
    v16 = 73;
    v17 = -3;
LABEL_16:
    v10 = sub_100011E6C("unregisterAppsForMountPoint", v16, v17, 0, v15, v12, v13, v14, v21);
    v5 = 0;
    if (!a2)
    {
LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

LABEL_17:
    v18 = v10;
    v11 = 0;
    *a2 = v10;
    goto LABEL_20;
  }

  if (!objc_opt_class())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "InstallCoordination is not supported.", v24, 2u);
    }

    v15 = @"InstallCoordination is not supported.";
    v16 = 78;
    goto LABEL_15;
  }

  v4 = [NSURL fileURLWithPath:v3];
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create URL.", v23, 2u);
    }

    v15 = @"Failed to create URL.";
    v16 = 84;
LABEL_15:
    v17 = -2;
    goto LABEL_16;
  }

  v5 = v4;
  v22 = 0;
  v6 = [IXAppInstallCoordinator unregisterContentsForDiskImageAtURL:v4 options:0 withError:&v22];
  v10 = v22;
  if ((v6 & 1) == 0)
  {
    v19 = sub_100011E6C("unregisterAppsForMountPoint", 89, -2, v10, @"Failed to unregister apps for %@.", v7, v8, v9, v3);

    v10 = v19;
    if (!a2)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v11 = 1;
LABEL_20:

  return v11;
}

id sub_100011244(void *a1)
{
  entry = 0;
  v1 = sub_1000113C8(a1);
  v2 = v1;
  if (!v1 || (v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v1 UTF8String]), MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3), (entry = MatchingService) == 0))
  {
    v8 = 0;
    CFProperty = 0;
    goto LABEL_18;
  }

  v5 = MatchingService;
  if (!IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
  {
    v8 = 0;
    CFProperty = 0;
    goto LABEL_17;
  }

  if (sub_10001147C(&entry, "AppleAPFSContainer") && sub_10001147C(&entry, "AppleAPFSMedia") && sub_10001147C(&entry, "AppleAPFSContainerScheme") && sub_10001147C(&entry, "IOMedia"))
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"BSD Name", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v7 = [[NSString alloc] initWithFormat:@"/dev/%@", CFProperty];
      if (v7)
      {
        v8 = v7;
        goto LABEL_14;
      }
    }
  }

  else
  {
    CFProperty = 0;
  }

  v8 = 0;
LABEL_14:
  v5 = entry;
  if (entry)
  {
LABEL_17:
    IOObjectRelease(v5);
  }

LABEL_18:

  return v8;
}

id sub_1000113C8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = @"/dev/r";
    if (([v3 hasPrefix:@"/dev/r"] & 1) != 0 || (v4 = @"/dev/", objc_msgSend(v3, "hasPrefix:", @"/dev/")))
    {
      v5 = [v3 substringFromIndex:{-[__CFString length](v4, "length")}];

      v3 = v5;
    }

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_10001147C(io_object_t *a1, const char *a2)
{
  result = 0;
  parent = 0;
  if (a1 && a2)
  {
    if (IORegistryEntryGetParentEntry(*a1, "IOService", &parent) || !IOObjectConformsTo(parent, a2))
    {
      result = parent;
      if (parent)
      {
        IOObjectRelease(parent);
        return 0;
      }
    }

    else
    {
      IOObjectRelease(*a1);
      *a1 = parent;
      return 1;
    }
  }

  return result;
}

id sub_10001150C(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100011578(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000115E4(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100011650(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1000116BC(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100011728(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100011794(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  bzero(v27, 0x1000uLL);
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *entry = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Invalid input(s).", entry, 2u);
    }

    v4 = 0;
    goto LABEL_34;
  }

  v5 = sub_1000113C8(v4);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_20;
  }

  v7 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v5 UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
  *entry = MatchingService;
  if (!MatchingService)
  {
    goto LABEL_20;
  }

  v9 = MatchingService;
  if (!IOObjectConformsTo(MatchingService, "IOMedia"))
  {
    IOObjectRelease(v9);
LABEL_20:

    goto LABEL_21;
  }

  if (!sub_1000160B8(entry, "AppleAPFSContainerScheme") || !sub_1000160B8(entry, "AppleAPFSMedia"))
  {
    v15 = 0;
    v10 = 0;
LABEL_45:
    CFProperty = 0;
    goto LABEL_46;
  }

  v10 = IORegistryEntrySearchCFProperty(*entry, "IOService", @"Content Hint", kCFAllocatorDefault, 0);
  if (!v10 || ![@"EF57347C-0000-11AA-AA11-00306543ECAC" isEqualToString:v10])
  {
    goto LABEL_44;
  }

  if (!v3)
  {
    CFProperty = 0;
    v15 = 1;
    goto LABEL_46;
  }

  if (!sub_1000160B8(entry, "AppleAPFSContainer") || !sub_1000160B8(entry, "AppleAPFSVolume"))
  {
LABEL_44:
    v15 = 0;
    goto LABEL_45;
  }

  CFProperty = IORegistryEntryCreateCFProperty(*entry, @"BSD Name", kCFAllocatorDefault, 0);
  v12 = sub_100011650(CFProperty);

  if (v12)
  {
    v13 = [@"/dev/" stringByAppendingString:CFProperty];

    if (v13)
    {
      v14 = v13;
      *v3 = v13;
      v15 = 1;
      CFProperty = v13;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v15 = 0;
LABEL_46:
  if (*entry)
  {
    IOObjectRelease(*entry);
  }

  if (v15)
  {
    v19 = 6;
    goto LABEL_53;
  }

LABEL_21:
  if (([v4 hasPrefix:{@"/dev/", *entry}] & 1) == 0)
  {
    v16 = [@"/dev/" stringByAppendingString:v4];

    v4 = v16;
  }

  v17 = open([v4 UTF8String], 0);
  if (v17 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *__error();
      *entry = 138412546;
      *&entry[4] = v4;
      v25 = 1024;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to open %@: %{errno}d", entry, 0x12u);
    }

LABEL_34:
    v19 = 0;
    goto LABEL_53;
  }

  v18 = v17;
  if (read(v17, v27, 0x1000uLL) == 4096)
  {
    if (v27[0] == 233 || v27[0] == 235 && v27[2] == 144)
    {
      if (v28 == 0x202020205346544ELL)
      {
        v19 = 5;
      }

      else if (v28 == 0x2020205441465845)
      {
        v19 = 4;
      }

      else
      {
        v19 = 1;
      }
    }

    else if (v29 == 11080)
    {
      v19 = 2 * (v30 == 4);
    }

    else if (v30 == 5 && v29 == 22600)
    {
      v19 = 3;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *__error();
      *entry = 138412546;
      *&entry[4] = v4;
      v25 = 1024;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to read %@ volume header: %{errno}d", entry, 0x12u);
      v19 = 0;
    }
  }

  close(v18);
LABEL_53:

  return v19;
}

BOOL sub_100011C30()
{
  v4 = 8;
  v5 = 0;
  if (!sysctlbyname("security.mac.amfi.developer_mode_status", &v5, &v4, 0, 0))
  {
    return v5 == 1;
  }

  v0 = __error();
  v1 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v1)
  {
    v3 = *v0;
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to read developer mode status: %{darwin.errno}d", buf, 8u);
    return 0;
  }

  return result;
}

BOOL sub_100011D1C(BOOL *a1, void *a2)
{
  v12 = 0;
  v11 = 4;
  if (sysctlbyname("security.codesigning.config", &v12, &v11, 0, 0))
  {
    v4 = *__error();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "security.codesigning.config";
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to read sysctl (%s): %{darwin.errno}d", buf, 0x12u);
    }

    v8 = sub_100011E6C("systemSupportsRestrictedExecutionMode", 773, -2, 0, @"Failed to read sysctl (%s): %{darwin.errno}d", v5, v6, v7, "security.codesigning.config");
    if (a2 && v8)
    {
      v8 = v8;
      *a2 = v8;
    }
  }

  else
  {
    v8 = 0;
    if (a1)
    {
      *a1 = (v12 & 0x2000000) != 0;
    }
  }

  v9 = v8 == 0;

  return v9;
}

id sub_100011E6C(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v14 = a5;
  v15 = [[NSMutableString alloc] initWithFormat:v14 arguments:&a9];

  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = v16;
  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:NSLocalizedDescriptionKey];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v18 = [NSString stringWithUTF8String:a1];
      [v17 setObject:v18 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v19 = [NSNumber numberWithInt:a2];
      [v17 setObject:v19 forKeyedSubscript:@"SourceLine"];
    }
  }

  v20 = [NSError errorWithDomain:@"com.apple.MobileStorage.ErrorDomain" code:a3 userInfo:v17];

  return v20;
}

uint64_t sub_100011FF4()
{
  if (os_parse_boot_arg_int())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v4 = " not";
      v5 = 2080;
      v6 = "allow_msm_to_invalidate_attestations";
      v7 = 2048;
      v8 = 0;
      v0 = "Invalidating system attestation is%s allowed per boot-arg %s=%lld";
      v1 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v0, buf, v1);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v4 = "allow_msm_to_invalidate_attestations";
    v0 = "You can set the boot-arg %s=1 to allow invalidating the system's attestation.";
    v1 = 12;
    goto LABEL_6;
  }

  return 0;
}

const __CFString *sub_10001213C(io_registry_entry_t a1)
{
  v1 = IORegistryEntrySearchCFProperty(a1, "IOService", @"Protocol Characteristics", kCFAllocatorDefault, 3u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, @"Physical Interconnect");
  v4 = Value;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      v4 = (CFStringCompare(v4, @"Virtual Interface", 0) == kCFCompareEqualTo);
    }

    else
    {
      v4 = 0;
    }
  }

  CFRelease(v2);
  return v4;
}

id sub_1000121F0(int a1)
{
  v45 = 0;
  v46 = 0;
  v38 = objc_alloc_init(NSMutableDictionary);
  if (v38)
  {
    v1 = getfsstat(0, 0, 2);
    if (v1 < 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *__error();
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
      }

      v8 = 0;
    }

    else
    {
      v2 = v1;
      v3 = 0;
      v4 = 0;
      while (1)
      {
        v5 = 2168 * v2;
        if (v3 > v5)
        {
          goto LABEL_11;
        }

        if (v4)
        {
          free(v4);
        }

        v3 = v5 + 2168;
        v6 = malloc_type_malloc(v5 + 2168, 0x100004087E0324AuLL);
        if (!v6)
        {
          break;
        }

        v4 = v6;
        v2 = getfsstat(v6, v5 + 2168, 2);
        if (v2 < 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *__error();
            *buf = 67109120;
            *&buf[4] = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
          }

LABEL_11:
          v8 = v4;
          goto LABEL_21;
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *__error();
        *buf = 67109120;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to allocate memory: %{errno}d", buf, 8u);
      }

      v8 = 0;
LABEL_21:
      if (v2 > 0)
      {
        v37 = v8;
        v12 = MGCopyAnswer();
        v13 = [v12 BOOLValue];

        if (((v13 | os_variant_is_recovery()) & 1) == 0)
        {
          v15 = cryptex_copy_list_4MSM();
          if ((v15 & 0xFFFFFFFD) != 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v16 = strerror(v15);
              *buf = 67109378;
              *&buf[4] = v15;
              LOWORD(v51) = 2080;
              *(&v51 + 2) = v16;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to copy cryptex list (%d (%s)), non-fatal.", buf, 0x12u);
            }

            v45 = 0;
          }
        }

        v17 = 0;
        v18 = v2;
        v19 = v37;
        f_mntonname = v37->f_mntonname;
        *&v14 = 136315138;
        v36 = v14;
        while (1)
        {
          *buf = 0;
          *&v51 = buf;
          *(&v51 + 1) = 0x2020000000;
          v52 = 0;
          v21 = sub_100012BB4(v19, v46, v45);
          v22 = v21;
          if (!v21)
          {
            break;
          }

          v23 = [v21 objectForKeyedSubscript:@"MountPath"];
          if (!v23)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 138412290;
              v49 = @"MountPath";
              v26 = "Map entry missing value for key %@.";
              v27 = 12;
LABEL_36:
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v26, v48, v27);
            }

            goto LABEL_37;
          }

          v40 = v23;
          v24 = [v22 objectForKeyedSubscript:@"DiskImageType"];
          v25 = [v24 isEqualToString:@"Cryptex"];

          if (v25)
          {
            *(v51 + 24) = 1;
          }

          else
          {
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_100013940;
            v41[3] = &unk_100030FC8;
            v30 = v40;
            v42 = v30;
            v43 = v22;
            v44 = buf;
            [&off_100034AF8 enumerateObjectsUsingBlock:v41];

            if ((*(v51 + 24) & 1) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_10001C09C(v47, v30, &v47[4]);
              }

              v28 = 0;
              v29 = 0;
              v33 = 0;
              v31 = 0;
              v39 = v17;
              v40 = v30;
              goto LABEL_55;
            }
          }

          v39 = [v22 objectForKeyedSubscript:{@"DeviceNode", v36}];

          if (v39)
          {
            v31 = [v22 objectForKeyedSubscript:@"DeviceType"];
            if (v31)
            {
              if ([@"DiskImage" isEqualToString:v31])
              {
                v32 = sub_1000139C8(v19 + 1112);
                if (v32)
                {
                  [v22 setObject:v32 forKeyedSubscript:@"BackingImage"];
                  v28 = [v22 objectForKeyedSubscript:@"ImageSignature"];
                  if (v28)
                  {
                    v33 = 0;
                    v29 = v32;
LABEL_61:
                    [v38 setObject:v22 forKeyedSubscript:v39];
                    goto LABEL_55;
                  }

                  v29 = sub_1000139C8(v19 + 1112);

                  if (v29)
                  {
                    v33 = sub_100013B80(v29);
                    if (v33)
                    {
                      v28 = [[NSMutableData alloc] initDataWithHexString:v33];
                      if (v28)
                      {
                        [v22 setObject:v28 forKeyedSubscript:@"ImageSignature"];
                        goto LABEL_61;
                      }

                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                      {
                        *v48 = 138412290;
                        v49 = v29;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to convert signature from %@", v48, 0xCu);
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                      {
                        *v48 = 138412290;
                        v49 = v29;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to recover signature from %@", v48, 0xCu);
                      }

                      v33 = 0;
                    }

                    goto LABEL_60;
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_58:
                    *v48 = v36;
                    v49 = f_mntonname;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get backing image path for %s", v48, 0xCu);
                  }
                }

                else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_58;
                }
              }

              v33 = 0;
              v29 = 0;
LABEL_60:
              v28 = 0;
              goto LABEL_61;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 138412290;
              v49 = @"DeviceType";
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map entry missing %@.", v48, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v48 = 138412290;
              v49 = @"DeviceNode";
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Map entry missing %@.", v48, 0xCu);
            }

            v39 = 0;
          }

          v28 = 0;
          v29 = 0;
LABEL_54:
          v33 = 0;
          v31 = 0;
LABEL_55:
          _Block_object_dispose(buf, 8);

          v19 += 2168;
          f_mntonname = (f_mntonname + 2168);
          v9 = v39;
          v17 = v39;
          if (!--v18)
          {
            v8 = v37;
            if (!v37)
            {
              goto LABEL_77;
            }

LABEL_76:
            free(v8);
            goto LABEL_77;
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 0;
          v26 = "Failed to create map entry.";
          v27 = 2;
          goto LABEL_36;
        }

LABEL_37:
        v28 = 0;
        v29 = 0;
        v39 = v17;
        v40 = 0;
        goto LABEL_54;
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *__error();
      *buf = 67109120;
      *&buf[4] = v34;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
    }

    v9 = 0;
    if (v8)
    {
      goto LABEL_76;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    v9 = 0;
  }

LABEL_77:
  if (v46)
  {
    cryptex_msm_array_destroy();
  }

  return v38;
}

id sub_100012BB4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1 || (v3 = a3, (v4 = a2) == 0) && a3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      v7 = 0;
      v8 = 0;
      v4 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
LABEL_8:
      v15 = 0;
      goto LABEL_9;
    }

    *buf = 0;
    v6 = "Invalid intput.";
LABEL_6:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    goto LABEL_7;
  }

  v17 = [[NSString alloc] initWithCString:a1 + 1112 encoding:4];
  if (!v17)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "Failed to create string.";
    goto LABEL_6;
  }

  v14 = v17;
  v18 = [[NSString alloc] initWithCString:a1 + 88 encoding:4];
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
    }

    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v13 = v18;
  v19 = [v13 UTF8String];
  if (!v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v36 = "Failed to get C string.";
LABEL_53:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
    }

LABEL_54:
    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v20 = v19;
  v21 = [[NSString alloc] initWithCString:a1 + 72 encoding:4];
  if (!v21)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v36 = "Failed to create string.";
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v12 = v21;
  v22 = objc_alloc_init(NSMutableDictionary);
  if (!v22)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  v15 = v22;
  [v22 setObject:@"MassStorage" forKeyedSubscript:?];
  [v15 setObject:v14 forKeyedSubscript:@"DeviceNode"];
  [v15 setObject:v13 forKeyedSubscript:@"MountPath"];
  [v15 setObject:v12 forKeyedSubscript:@"FilesystemType"];
  [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IsMounted"];
  v23 = [[NSURL alloc] initWithString:v14];
  if (!v23)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = v14;
      v59 = 2080;
      v60 = (a1 + 88);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create URL (%@ / %s).", buf, 0x16u);
    }

    v7 = 0;
    v8 = 0;
    v4 = 0;
    v9 = 0;
    goto LABEL_64;
  }

  v9 = v23;
  __s2 = v20;
  v24 = [v23 lastPathComponent];
  v25 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v24 UTF8String]);

  if (!v25)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v9 lastPathComponent];
      *buf = 138412290;
      v58 = v37;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create a BSD matching dictionary for %@.", buf, 0xCu);
    }

    v7 = 0;
    v8 = 0;
    v4 = 0;
LABEL_64:
    v10 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v25);
  mainPort = MatchingService;
  if (!MatchingService)
  {
    if (([(__CFString *)v14 isEqualToString:@"devfs"]& 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve the IO service matching the device node for %@.", buf, 0xCu);
    }

    goto LABEL_104;
  }

  if (!sub_10001213C(MatchingService))
  {
LABEL_104:
    cf = 0;
    v8 = 0;
    v4 = 0;
LABEL_105:
    v10 = 0;
    v11 = 0;
    goto LABEL_106;
  }

  [v15 setObject:@"DiskImage" forKeyedSubscript:@"DeviceType"];
  if (!strcmp("/Developer", __s2))
  {
    v38 = @"Developer";
    v39 = &off_100030CA0;
LABEL_103:
    [v15 setObject:v38 forKeyedSubscript:*v39];
    goto LABEL_104;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_automation", 0x24uLL))
  {
    [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v40 = &off_100030CE8;
LABEL_102:
    v38 = *v40;
    v39 = &off_100030CC0;
    goto LABEL_103;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_demo", 0x1EuLL))
  {
    [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v40 = &off_100030CD8;
    goto LABEL_102;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_debug", 0x1FuLL))
  {
    [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v40 = &off_100030CC8;
    goto LABEL_102;
  }

  if (__s2 != strnstr(__s2, "/System/Developer", 0x11uLL))
  {
    if (__s2 == strnstr(__s2, "/private/var/personalized_factory", 0x21uLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v40 = &off_100030CE0;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldService", 0x1CuLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v40 = &off_100030CF8;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldServiceDiagnostic", 0x26uLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v40 = &off_100030D00;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldServiceRepair", 0x22uLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v40 = &off_100030D08;
    }

    else if (__s2 == strnstr(__s2, "/private/var/personalized_quality", 0x21uLL))
    {
      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v40 = &off_100030D10;
    }

    else
    {
      if (__s2 != strnstr(__s2, "/private/var/personalized_repair", 0x20uLL))
      {
        if (!v4)
        {
          cf = 0;
          v8 = 0;
          goto LABEL_105;
        }

        [v15 setObject:@"Cryptex" forKeyedSubscript:@"DiskImageType"];
        if (v3)
        {
          while (1)
          {
            string = cryptex_msm_get_string();
            if (string)
            {
              v28 = string;
              v29 = strlen((a1 + 1112));
              if (strnstr(v28, (a1 + 1112), v29))
              {
                v30 = cryptex_msm_get_string();
                if (v30)
                {
                  v31 = v30;
                  v32 = cryptex_msm_get_string();
                  if (v32)
                  {
                    break;
                  }
                }
              }
            }

            ++v4;
            if (!--v3)
            {
              goto LABEL_39;
            }
          }

          v51 = [NSString stringWithUTF8String:v32];
          [v15 setObject:v51 forKeyedSubscript:@"CryptexName"];

          v52 = [NSString stringWithUTF8String:v31];
          [v15 setObject:v52 forKeyedSubscript:@"CryptexVersion"];
        }

LABEL_39:
        v33 = [v15 objectForKeyedSubscript:@"CryptexName"];
        if (!v33 || (v34 = v33, [v15 objectForKeyedSubscript:@"CryptexVersion"], v35 = objc_claimAutoreleasedReturnValue(), v35, v34, !v35))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v58 = v14;
            v59 = 2112;
            v60 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Mount (%@ / %@) is not a cryptex or personalized image (not fatal).", buf, 0x16u);
          }

          v7 = 0;
          cf = 0;
          v8 = 0;
          v4 = 0;
          v10 = 0;
          v11 = 0;
LABEL_113:
          v48 = mainPort;
          if (!mainPort)
          {
            goto LABEL_115;
          }

          goto LABEL_114;
        }

        goto LABEL_104;
      }

      [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v40 = &off_100030D18;
    }

    goto LABEL_102;
  }

  v41 = [v13 stringByAppendingPathComponent:@"Library/Frameworks/DTRemoteServices.framework"];
  if (v41)
  {
    v10 = v41;
    [NSURL fileURLWithPath:v41 isDirectory:0];
    Unique = _CFBundleCreateUnique();
    if (Unique)
    {
      cf = Unique;
      v11 = CFBundleGetValueForInfoDictionaryKey(Unique, kCFBundleVersionKey);
      v43 = sub_100011650(v11);

      if (v43)
      {
        v44 = [v13 stringByAppendingPathComponent:@"version.plist"];
        if (v44)
        {
          v8 = v44;
          v45 = +[NSFileManager defaultManager];
          __s2a = [v45 fileExistsAtPath:v8];

          if (__s2a)
          {
            v4 = [[NSDictionary alloc] initWithContentsOfFile:v8];
            if (v4)
            {
LABEL_81:
              [v15 setObject:v11 forKeyedSubscript:@"PersonalizedImageVersion"];
              [v15 setObject:v4 forKeyedSubscript:@"PersonalizedImageVersionInfo"];
              [v15 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
              [v15 setObject:@"DeveloperDiskImage" forKeyedSubscript:@"PersonalizedImageType"];
LABEL_106:
              if (*(a1 + 64))
              {
                v49 = &__kCFBooleanTrue;
              }

              else
              {
                v49 = &__kCFBooleanFalse;
              }

              [v15 setObject:v49 forKeyedSubscript:@"IsReadOnly"];
              if ((*(a1 + 64) & 0x80) != 0)
              {
                v50 = &__kCFBooleanTrue;
              }

              else
              {
                v50 = &__kCFBooleanFalse;
              }

              [v15 setObject:v50 forKeyedSubscript:@"SupportsContentProtection"];
              v7 = v15;
              goto LABEL_113;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              sub_10001C0E8(v8, v11);
            }
          }

          v4 = 0;
          goto LABEL_81;
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_99;
        }

        *buf = 0;
        v46 = "Failed to create path.";
        v47 = 2;
      }

      else
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_99:
          v4 = 0;
          v8 = 0;
          goto LABEL_100;
        }

        *buf = 138412290;
        v58 = kCFBundleVersionKey;
        v46 = "Failed to query bundle key %@.";
        v47 = 12;
      }

      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v46, buf, v47);
      goto LABEL_99;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to query bundle for DTRemoteServices.framework.", buf, 2u);
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create path.", buf, 2u);
    }

    v11 = 0;
    v10 = 0;
  }

  v4 = 0;
  v8 = 0;
  cf = 0;
LABEL_100:
  v7 = 0;
  v48 = mainPort;
LABEL_114:
  IOObjectRelease(v48);
LABEL_115:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_9:

  return v7;
}

void sub_100013940(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (([*(a1 + 32) hasPrefix:a2] & 1) != 0 || (objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"DiskImageType"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Cryptex"), v6, v7))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id sub_1000139C8(uint64_t a1)
{
  if (!a1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Invalid input.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }

LABEL_10:
    v5 = 0;
    v2 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v1 = [[NSString alloc] initWithUTF8String:a1];
  if (!v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Failed to create string.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v2 = v1;
  v8 = 0;
  v3 = [DiskImages2 imageURLFromDevice:v1 error:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 path];
    goto LABEL_12;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve image URL: %@", buf, 0xCu);
  }

  v5 = 0;
LABEL_11:
  v3 = 0;
LABEL_12:

  return v5;
}

id sub_100013B80(void *a1)
{
  v1 = [a1 pathComponents];
  if ([v1 count] >= 4)
  {
    v3 = [NSString alloc];
    v4 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 3}];
    v5 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 2}];
    v2 = [v3 initWithFormat:@"%@%@", v4, v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100013C4C()
{
  properties = 0;
  existing = 0;
  v0 = objc_alloc_init(NSMutableDictionary);
  if (v0)
  {
    v1 = IOServiceMatching("IOUSBInterface");
    if (v1 && (v2 = v1, [(__CFDictionary *)v1 setObject:&off_100034A80 forKeyedSubscript:@"bInterfaceClass"], [(__CFDictionary *)v2 setObject:&off_100034A98 forKeyedSubscript:@"bInterfaceSubClass"], [(__CFDictionary *)v2 setObject:&off_100034A98 forKeyedSubscript:@"bInterfaceProtocol"], !IOServiceGetMatchingServices(kIOMasterPortDefault, v2, &existing)) && (v6 = IOIteratorNext(existing)) != 0)
    {
      v7 = v6;
      v4 = 0;
      v3 = 0;
      do
      {
        v8 = IORegistryEntryCreateCFProperties(v7, &properties, 0, 0);
        if (v8)
        {
          v9 = v8;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v16) = v9 & 0x3FFF;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperties failed: 0x%04x", buf, 8u);
          }
        }

        else
        {
          Value = CFDictionaryGetValue(properties, @"locationID");

          v11 = sub_10001150C(Value);

          if (v11)
          {
            v12 = objc_alloc_init(NSMutableDictionary);

            if (v12)
            {
              [v12 setObject:Value forKeyedSubscript:@"LocationID"];
              [v12 setObject:@"PTPCamera" forKeyedSubscript:@"DeviceType"];
              [v0 setObject:v12 forKeyedSubscript:@"PTPNode"];
              v3 = v12;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
              }

              v3 = 0;
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v16 = "locationID";
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve %s.", buf, 0xCu);
          }

          v4 = Value;
        }

        if (properties)
        {
          CFRelease(properties);
        }

        properties = 0;
        IOObjectRelease(v7);
        v7 = IOIteratorNext(existing);
      }

      while (v7);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    if (existing)
    {
      IOObjectRelease(existing);
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v0;
}

id sub_100013F98()
{
  properties = 0;
  existing = 0;
  bzero(v53, 0x878uLL);
  v0 = IOServiceMatching("IOMedia");
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v0, &existing))
  {
LABEL_2:
    v1 = 0;
LABEL_3:
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_4;
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    goto LABEL_2;
  }

  v1 = v10;
  v11 = IOIteratorNext(existing);
  if (!v11)
  {
    goto LABEL_3;
  }

  v12 = v11;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v40 = 0;
  v39 = 1;
  do
  {
    if (sub_10001213C(v12))
    {
      goto LABEL_40;
    }

    v13 = IORegistryEntryCreateCFProperties(v12, &properties, 0, 0);
    if (v13)
    {
      v14 = v13;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 67109120;
      LODWORD(v50) = v14 & 0x3FFF;
      v15 = "IORegistryEntryCreateCFProperties failed: 0x%04x";
      v16 = 8;
      goto LABEL_16;
    }

    if (properties)
    {
      v17 = CFDictionaryGetValue(properties, @"BSD Name");

      v18 = sub_100011650(v17);

      if (!v18)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v50 = "BSD Name";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to retrieve %s.", buf, 0xCu);
        }

        goto LABEL_39;
      }

      v19 = [[NSString alloc] initWithFormat:@"/dev/%@", v17];

      if (!v19)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
        }

        v3 = 0;
        goto LABEL_39;
      }

      v20 = CFDictionaryGetValue(properties, @"Content");

      v21 = sub_100011650(v20);

      if (v21)
      {
        if ([@"C12A7328-F81F-11D2-BA4B-00A0C93EC93B" isEqualToString:v20])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10001C248(&v43, v44, v22);
          }

          goto LABEL_38;
        }

        if ([@"Apple_partition_map" isEqualToString:v20])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_10001C20C(&v41, v42, v25);
          }

          goto LABEL_38;
        }

        v26 = CFDictionaryGetValue(properties, @"Removable");

        v8 = v26;
        v27 = sub_10001150C(v26);

        if (v27)
        {
          if (([v26 BOOLValue] & 1) == 0 && (sub_10001493C(v12) & 1) == 0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_10001C174(v48, v17, &v48[4]);
            }

            goto LABEL_38;
          }

          v28 = CFDictionaryGetValue(properties, @"Leaf");

          v7 = v28;
          v29 = sub_10001150C(v28);

          if (v29)
          {
            if (([v28 BOOLValue] & 1) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_10001C1C0(v47, v17, &v47[4]);
              }

              goto LABEL_38;
            }

            v30 = CFDictionaryGetValue(properties, @"Writable");

            v4 = v30;
            v31 = sub_10001150C(v30);
            if (v31)
            {
              v32 = v31;
              v33 = [v30 BOOLValue];

              v39 &= v33 ^ 1;
            }

            v34 = sub_100011794(v19);
            if (v34 != 4 && (v34 & 3) != 1)
            {
              v35 = objc_alloc_init(NSMutableDictionary);

              if (v35)
              {
                [v35 setObject:@"MassStorage" forKeyedSubscript:@"DeviceType"];
                [v35 setObject:v19 forKeyedSubscript:@"DeviceNode"];
                [v35 setObject:&__kCFBooleanFalse forKeyedSubscript:@"IsMounted"];
                v36 = [NSNumber numberWithBool:v39 & 1];
                [v35 setObject:v36 forKeyedSubscript:@"IsReadOnly"];

LABEL_55:
                [v1 setObject:v35 forKeyedSubscript:v19];
                v40 = v35;
                goto LABEL_38;
              }

              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v37 = "Failed to create dictionary.";
                v38 = 2;
LABEL_72:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
                goto LABEL_73;
              }

              goto LABEL_73;
            }

            [v19 UTF8String];
            if (__strlcpy_chk() < 0x400)
            {
              [v19 UTF8String];
              if (__strlcpy_chk() < 0x400)
              {
                if (__strlcpy_chk() < 0x10)
                {
                  v35 = sub_100012BB4(v53, 0, 0);

                  if (v35)
                  {
                    goto LABEL_55;
                  }

                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v50 = v19;
                    v37 = "Failed to create map entry for %@.";
                    v38 = 12;
                    goto LABEL_72;
                  }

LABEL_73:
                  v40 = 0;
                  goto LABEL_38;
                }

                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_38;
                }
              }

              else if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_38;
              }
            }

            else if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_38;
            }

            *buf = 0;
            v23 = "Invalid string size.";
            v24 = 2;
            goto LABEL_34;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          *buf = 138412546;
          v50 = v17;
          v51 = 2080;
          v52 = "Leaf";
          v23 = "The attached media object %@ does not have a '%s' flag.";
        }

        else
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          *buf = 138412546;
          v50 = v17;
          v51 = 2080;
          v52 = "Removable";
          v23 = "The attached media object %@ does not have a '%s' flag.";
        }
      }

      else
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
LABEL_38:
          v3 = v19;
          v5 = v20;
LABEL_39:
          v6 = v17;
          goto LABEL_40;
        }

        *buf = 138412546;
        v50 = v17;
        v51 = 2080;
        v52 = "Content";
        v23 = "The attached media object %@ does not have a '%s' flag.";
      }

      v24 = 22;
LABEL_34:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
      goto LABEL_38;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Failed to retrieve any properties for the matched service.";
      v16 = 2;
LABEL_16:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
    }

LABEL_40:
    IOObjectRelease(v12);
    if (properties)
    {
      CFRelease(properties);
    }

    properties = 0;
    v12 = IOIteratorNext(existing);
  }

  while (v12);
  v2 = v40;
LABEL_4:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v1;
}