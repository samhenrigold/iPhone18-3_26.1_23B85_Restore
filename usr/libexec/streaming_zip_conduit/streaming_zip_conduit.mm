uint64_t start()
{
  v0 = os_log_create("com.apple.streamingzip", "conduit");
  v1 = qword_10000C108;
  qword_10000C108 = v0;

  lockdown_checkin_xpc();
  CFRunLoopRun();
  return 0;
}

void sub_100000D14(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  context = objc_autoreleasePoolPush();
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_100001B1C;
  v77 = sub_100001B2C;
  v78 = 0;
  v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040262EED4CuLL);
  *v5 = a2;
  v6 = CFRetain(a3);
  v5[2] = 0;
  v5[1] = v6;
  *(v5 + 48) = 0;
  v5[5] = 0;
  v5[3] = 0;
  v66 = mach_absolute_time();
  *cf = 0;
  v7 = lockdown_receive_message();
  v8 = v7;
  v9 = *cf;
  if (v7 || !*cf)
  {
    if (v7)
    {
      v16 = qword_10000C108;
      if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v84) = v8;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "lockdown_receive_message returned error %x", buf, 8u);
        v9 = *cf;
        if (!*cf)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

LABEL_21:
    if (!v9)
    {
      goto LABEL_23;
    }

LABEL_22:
    CFRelease(v9);
    goto LABEL_23;
  }

  v10 = CFGetTypeID(*cf);
  TypeID = CFDictionaryGetTypeID();
  v9 = *cf;
  if (v10 != TypeID)
  {
    goto LABEL_21;
  }

  if (!*cf)
  {
LABEL_23:
    v17 = qword_10000C108;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      Value = CFDictionaryGetValue(a3, kLockdownCheckinClientNameKey);
      *cf = 138412290;
      *&cf[4] = Value;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to receive initial message from client %@", cf, 0xCu);
    }

    sub_100001B34(v5, @"NoInitialMessage");
    v9 = 0;
    goto LABEL_26;
  }

  v72 = [*cf objectForKeyedSubscript:@"MediaSubdir"];
  if (!v72)
  {
    v22 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to get destination directory from client message", cf, 2u);
    }

    sub_100001B34(v5, @"MalformedSetupMessage");
LABEL_26:
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v20 = 0;
    v13 = 0;
    v68 = 0;
    v69 = 0;
    v21 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_27;
  }

  v12 = NSHomeDirectory();
  v70 = [v12 stringByAppendingPathComponent:@"Media"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Destination directory in client message was not a string", cf, 2u);
    }

    sub_100001B34(v5, @"MalformedSetupMessage");
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v20 = 0;
    v13 = 0;
    v68 = 0;
    v69 = 0;
    v21 = 0;
    v71 = 0;
    goto LABEL_27;
  }

  v69 = [v70 stringByAppendingPathComponent:v72];
  v71 = [v69 stringByResolvingSymlinksInPath];
  if (([v71 hasPrefix:v70] & 1) == 0)
  {
    v25 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      *cf = 138412290;
      *&cf[4] = v71;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Dest path specified resolved to unpermitted path: %@", cf, 0xCu);
    }

    sub_100001B34(v5, @"InvalidPath");
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v20 = 0;
    v13 = 0;
    v68 = 0;
    goto LABEL_102;
  }

  v68 = [v9 objectForKeyedSubscript:@"InstallTransferredDirectory"];
  if (v68)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v68 BOOLValue])
      {
        v5[2] = v71;
      }
    }
  }

  v13 = [v9 objectForKeyedSubscript:@"UserInitiatedTransfer"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 BOOLValue])
      {
        *(v5 + 49) = 1;
      }
    }
  }

  v14 = [v9 objectForKeyedSubscript:@"SpringBoardIconLayoutData"];
  if (!v14)
  {
    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "SpringBoard icon layout value was not data; ignoring", cf, 2u);
    }

LABEL_43:
    v15 = 0;
    goto LABEL_44;
  }

  v15 = v14;
  v5[3] = v15;
LABEL_44:
  v19 = [v9 objectForKeyedSubscript:@"InstallOptionsDictionary"];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v19;
      v5[4] = v27;
      v28 = [v27 objectForKeyedSubscript:@"IsUserInitiated"];
      if (v28)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v28 BOOLValue])
          {
            *(v5 + 49) = 1;
          }
        }
      }

      v29 = [v27 objectForKeyedSubscript:@"PackageType"];
      if ((MGGetBoolAnswer() & 1) == 0 && [v29 isEqualToString:@"System"])
      {
        v30 = qword_10000C108;
        if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
        {
          *cf = 0;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Installing system apps from the host is prohibited.", cf, 2u);
        }

        sub_100001B34(v5, @"InstallationProhibited");
        v65 = v28;

        v18 = 0;
        v20 = 0;
        goto LABEL_88;
      }
    }
  }

  v20 = [v9 objectForKeyedSubscript:@"PassThroughFileWithLength"];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5[5] = [v20 longLongValue];
    }
  }

  v31 = +[NSFileManager defaultManager];
  [v31 removeItemAtPath:v71 error:0];

  v32 = +[NSFileManager defaultManager];
  v33 = [v32 fileExistsAtPath:v71];

  if (v33)
  {
    v34 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      *cf = 138412290;
      *&cf[4] = v71;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Item exists at destination path %@", cf, 0xCu);
    }

    sub_100001B34(v5, @"DestinationExists");
    v18 = 0;
    goto LABEL_102;
  }

  if (!v20)
  {
    v41 = v71;
    v42 = mkpath_np([v71 fileSystemRepresentation], 0x1EDu);
    v43 = v42;
    if (v42 == 17)
    {
      goto LABEL_73;
    }

    if (v42)
    {
      v53 = qword_10000C108;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v62 = strerror(v43);
        *cf = 138412546;
        *&cf[4] = v71;
        *&cf[12] = 2080;
        *&cf[14] = v62;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to create dest path %@ : %s", cf, 0x16u);
      }

      if (v43 == 28)
      {
        v54 = @"NoSpace";
      }

      else
      {
        v54 = @"InvalidPath";
      }

      goto LABEL_101;
    }

    if (sub_100001C20(v71))
    {
LABEL_73:
      v44 = [SZExtractor alloc];
      v90 = SZExtractorOptionsDenyInvalidSymlinks;
      v91 = &__kCFBooleanTrue;
      v45 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v21 = [v44 initWithPath:v71 options:v45];

      if (v21)
      {
        v46 = dispatch_semaphore_create(0);
        *cf = _NSConcreteStackBlock;
        *&cf[8] = 3221225472;
        *&cf[16] = sub_100001DF8;
        v86 = &unk_1000083B8;
        v88 = &v73;
        v89 = &v79;
        v18 = v46;
        v87 = v18;
        [v21 prepareForExtraction:cf];
        dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
        if (v74[5])
        {
          v47 = v74[5];
          v48 = qword_10000C108;
          if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84 = v47;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "-prepareForExtraction returned error %@", buf, 0xCu);
          }

          v49 = @"SetupFailed";
        }

        else
        {
          if (!v80[3])
          {
            v64 = -1;

            goto LABEL_68;
          }

          v58 = qword_10000C108;
          if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84 = v71;
            _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Item exists at destination path %@", buf, 0xCu);
          }

          v49 = @"DestinationExists";
        }

        sub_100001B34(v5, v49);
        v20 = 0;

        goto LABEL_27;
      }

      v56 = qword_10000C108;
      if (!os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_100;
      }

      *cf = 0;
      v57 = "Failed to set up extractor";
    }

    else
    {
      v56 = qword_10000C108;
      if (!os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
LABEL_100:
        v54 = @"SetupFailed";
LABEL_101:
        sub_100001B34(v5, v54);
        v18 = 0;
        v20 = 0;
LABEL_102:
        v21 = 0;
        goto LABEL_27;
      }

      *cf = 0;
      v57 = "Failed to set protection class";
    }

    _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, v57, cf, 2u);
    goto LABEL_100;
  }

  v65 = [v71 stringByDeletingLastPathComponent];
  v35 = v65;
  v36 = mkpath_np([v65 fileSystemRepresentation], 0x1EDu);
  v37 = v36;
  if (v36 && v36 != 17)
  {
    v50 = qword_10000C108;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v59 = strerror(v37);
      *cf = 138412802;
      *&cf[4] = v71;
      *&cf[12] = 2112;
      *&cf[14] = v65;
      *&cf[22] = 2080;
      v86 = v59;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to make parent directory of %@ at %@: %s", cf, 0x20u);
    }

    if (v37 == 28)
    {
      v51 = @"NoSpace";
    }

    else
    {
      v51 = @"SetupFailed";
    }

    sub_100001B34(v5, v51);
    goto LABEL_87;
  }

  v38 = v71;
  v39 = open_dprotected_np([v71 fileSystemRepresentation], 2818, 4, 0, 420);
  if (v39 < 0)
  {
    v52 = qword_10000C108;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v60 = __error();
      v61 = strerror(*v60);
      *cf = 138412546;
      *&cf[4] = v71;
      *&cf[12] = 2080;
      *&cf[14] = v61;
      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to open pass through file at %@ : %s", cf, 0x16u);
    }

    sub_100001B34(v5, @"SetupFailed");
LABEL_87:
    v18 = 0;
LABEL_88:
    v21 = 0;

    goto LABEL_27;
  }

  v64 = v39;
  v18 = 0;
  v21 = 0;

LABEL_68:
  socket = lockdown_get_socket();
  if ((socket & 0x80000000) == 0)
  {
    sub_100001E78(socket, v66, v21, v64, v5);
    goto LABEL_28;
  }

  v55 = qword_10000C108;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v63 = CFDictionaryGetValue(a3, kLockdownCheckinClientNameKey);
    *buf = 138412290;
    v84 = v63;
    _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to get socket for connection from client %@", buf, 0xCu);
  }

  sub_100001B34(v5, @"NoSocket");
LABEL_27:
  sub_100002184(v5);
LABEL_28:

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);

  objc_autoreleasePoolPop(context);
}

void sub_100001ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001B1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001B34(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = a1;
    *(a1 + 48) = 1;
    v6 = @"Error";
    v7 = a2;
    v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    LOBYTE(v2) = sub_100003258(v2, v3);

    if ((v2 & 1) == 0)
    {
      v4 = qword_10000C108;
      if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not send error response to host", v5, 2u);
      }
    }
  }
}

BOOL sub_100001C20(void *a1)
{
  v1 = a1;
  v2 = open([v1 fileSystemRepresentation], 1048832);
  if (v2 < 0)
  {
    v7 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      v14 = v1;
      v15 = v7;
      v16 = [v1 fileSystemRepresentation];
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 136315394;
      v20 = v16;
      v21 = 2080;
      v22[0] = v18;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to open %s : %s", buf, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = fcntl(v2, 64, 4);
    v5 = v4 == 0;
    if (v4)
    {
      v6 = qword_10000C108;
      if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        v9 = v1;
        v10 = v6;
        v11 = [v1 fileSystemRepresentation];
        v12 = __error();
        v13 = strerror(*v12);
        *buf = 136315650;
        v20 = v11;
        v21 = 1024;
        LODWORD(v22[0]) = 4;
        WORD2(v22[0]) = 2080;
        *(v22 + 6) = v13;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to set protection class on %s to %d: %s", buf, 0x1Cu);
      }
    }

    close(v3);
  }

  return v5;
}

void sub_100001DF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100001E78(unsigned int a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v9 = a3;
  v10 = dispatch_semaphore_create(0);
  v11 = malloc_type_valloc(0x100000uLL, 0xEEE5A0D7uLL);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_100001B1C;
  v46[4] = sub_100001B2C;
  v47 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v12 = os_transaction_create();
  v22 = v11;
  if (*(a5 + 49) == 1)
  {
    v13 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Receiving transfer as QOS_CLASS_USER_INITIATED", buf, 2u);
    }

    v14 = 25;
  }

  else
  {
    v14 = 9;
  }

  v23 = dispatch_get_global_queue(v14, 0);
  v15 = dispatch_source_create(&_dispatch_source_type_read, a1, 0, v23);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100002260;
  handler[3] = &unk_1000084A0;
  v40 = a2;
  v38 = v45;
  v43 = a4;
  v16 = v9;
  v35 = v16;
  v39 = v46;
  v17 = v10;
  v41 = a5;
  v42 = v22;
  v36 = v17;
  v37 = v12;
  v18 = v12;
  dispatch_source_set_cancel_handler(v15, handler);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000028B0;
  v24[3] = &unk_1000084A0;
  v31 = v22;
  v32 = 0x100000;
  v33 = a4;
  v25 = v15;
  v26 = v16;
  v29 = v46;
  v30 = a5;
  v27 = v17;
  v28 = v45;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  dispatch_source_set_event_handler(v21, v24);
  dispatch_resume(v21);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);
}

void sub_100002160(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100002184(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002258;
    block[3] = &unk_1000084C0;
    block[4] = v2;
    dispatch_after(v3, &_dispatch_main_q, block);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
  }

  free(a1);
}

void sub_100002260(uint64_t a1)
{
  v2 = mach_absolute_time();
  info = 0;
  mach_timebase_info(&info);
  v3 = qword_10000C108;
  if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(*(*(a1 + 56) + 8) + 24);
    LODWORD(v4) = info.numer;
    LODWORD(v5) = info.denom;
    v38 = v4 / v5 * (v2 - *(a1 + 72)) / 1000000000.0;
    *buf = 134218496;
    v58 = v37;
    v59 = 2048;
    v60 = v38;
    v61 = 2048;
    v62 = (v37 >> 20) / v38;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Transferred %llu archived bytes in %.3f seconds (%.3f MB/sec)", buf, 0x20u);
  }

  v6 = *(a1 + 96);
  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100002DF8;
    v51[3] = &unk_1000083E0;
    v53 = *(a1 + 64);
    v52 = *(a1 + 40);
    [v7 finishStreamWithCompletionBlock:v51];
    dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  }

  v8 = *(*(*(a1 + 64) + 8) + 40);
  if (v8)
  {
    v9 = [v8 domain];
    if ([v9 isEqualToString:NSPOSIXErrorDomain])
    {
      v10 = [*(*(*(a1 + 64) + 8) + 40) code];

      if (v10 == 28)
      {
        v11 = @"NoSpace";
LABEL_16:
        v15 = *(a1 + 80);
        goto LABEL_17;
      }
    }

    else
    {
    }

    v11 = @"ExtractionFailed";
    goto LABEL_16;
  }

  v12 = *(a1 + 80);
  if (!*(v12 + 16))
  {
    sub_10000316C(v12);
    goto LABEL_18;
  }

  v13 = +[MCProfileConnection sharedConnection];
  v14 = [v13 effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed];

  v15 = *(a1 + 80);
  if (v14 == 2)
  {
    v11 = @"InstallationProhibited";
LABEL_17:
    sub_100001B34(v15, v11);
    v16 = +[NSFileManager defaultManager];
    [v16 removeItemAtPath:*(*(a1 + 80) + 16) error:0];

    goto LABEL_18;
  }

  v17 = *(v15 + 24);
  if (v17)
  {
    v18 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_DEBUG))
    {
      v39 = v18;
      Length = CFDataGetLength(v17);
      *buf = 134217984;
      v58 = Length;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Sending icon state with length %ld", buf, 0xCu);
    }

    SBSSpringBoardBlockableServerPort();
    CFDataGetBytePtr(*(*(a1 + 80) + 24));
    CFDataGetLength(*(*(a1 + 80) + 24));
    v19 = SBSetIconState();
    if (v19)
    {
      v20 = v19;
      v21 = qword_10000C108;
      if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v58) = v20;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "SBSetIconState returned 0x%x", buf, 8u);
      }
    }
  }

  v22 = [NSURL fileURLWithPath:*(*(a1 + 80) + 16)];
  v23 = *(*(a1 + 80) + 32);
  if (!v23)
  {
    v55 = LSPackageTypeKey;
    v56 = LSPackageTypeCustomer;
    v23 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  }

  v24 = [v23 mutableCopy];
  [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:@"AllowInstallLocalProvisioned"];
  v25 = +[UMUserManager sharedManager];
  v26 = [v25 isMultiUser];

  if (v26)
  {
    v27 = dispatch_semaphore_create(0);
    v28 = +[UMUserManager sharedManager];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100002ED4;
    v49[3] = &unk_100008408;
    v50 = v27;
    v29 = v27;
    [v28 terminateSyncWithCompletionHandler:v49];

    dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
  }

  v30 = dispatch_semaphore_create(0);
  v31 = [[MIInstallOptions alloc] initWithLegacyOptionsDictionary:v24];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100002EDC;
  v48[3] = &unk_100008428;
  v48[4] = *(a1 + 80);
  v32 = objc_retainBlock(v48);
  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_100002FD0;
  v44 = &unk_100008450;
  v33 = v22;
  v34 = *(a1 + 80);
  v45 = v33;
  v47 = v34;
  v35 = v30;
  v46 = v35;
  [IXAppInstallCoordinator installApplication:v33 consumeSource:1 options:v31 legacyProgressBlock:v32 completion:&v41];
  dispatch_semaphore_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
  if (v26)
  {
    v36 = [UMUserManager sharedManager:v41];
    [v36 resumeSync];
  }

LABEL_18:
  sub_100002184(*(a1 + 80));
  free(*(a1 + 88));
}

void sub_1000028B0(uint64_t a1)
{
  v2 = lockdown_recv();
  v3 = v2;
  if (v2 < 0)
  {
    v9 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 134218242;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "lockdown_recv returned %zd and error %s", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (!v2)
  {
    v13 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "lockdown_recv returned 0; canceling", buf, 2u);
    }

    goto LABEL_14;
  }

  *(*(*(a1 + 56) + 8) + 24) += v2;
  v4 = qword_10000C108;
  if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "lockdown_recv returned %zd", buf, 0xCu);
  }

  v5 = *(a1 + 96);
  if (v5 < 0 || *(a1 + 40))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v36) = 0;
    v6 = [NSData dataWithBytesNoCopy:*(a1 + 80) length:v3 freeWhenDone:0];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100002D00;
    v31[3] = &unk_100008478;
    v7 = *(a1 + 64);
    v33 = buf;
    v34 = v7;
    v8 = *(a1 + 40);
    v32 = *(a1 + 48);
    [v8 supplyBytes:v6 withCompletionBlock:v31];
    dispatch_semaphore_wait(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL);
    if (*(*&buf[8] + 24) == 1)
    {
      dispatch_source_cancel(*(a1 + 32));
    }

    _Block_object_dispose(buf, 8);
    return;
  }

  v14 = *(a1 + 72);
  v15 = *(v14 + 40);
  v16 = v15 - v3;
  if (v15 < v3)
  {
    v17 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Received %ld bytes but only %lld bytes remain!", buf, 0x16u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

LABEL_14:
    dispatch_source_cancel(*(a1 + 32));
    return;
  }

  v21 = 0;
  *(v14 + 40) = v16;
  v22 = *(a1 + 80);
  while (v3 != v21)
  {
    v23 = write(v5, (v22 + v21), v3 - v21);
    v21 += v23;
    if (v23 < 0)
    {
      v24 = *__error();
      v25 = qword_10000C108;
      if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        v29 = v25;
        v30 = strerror(v24);
        *buf = 134218498;
        *&buf[4] = v3;
        *&buf[12] = 2048;
        *&buf[14] = -1;
        *&buf[22] = 2080;
        v36 = v30;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to write %ld bytes to passthrough file: write returned %ld : %s", buf, 0x20u);
      }

      v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:0];
      v27 = *(*(a1 + 64) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      dispatch_source_cancel(*(a1 + 32));
      break;
    }
  }

  if (*(*(a1 + 72) + 40) <= 0)
  {
    goto LABEL_14;
  }
}

void sub_100002CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002D00(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v7 = v6;
  if (v6 || a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (v6)
    {
      v8 = qword_10000C108;
      if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Stream extractor got error: %@", &v9, 0xCu);
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002DF8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to finish extraction: %@", &v6, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = @"InstallProgressDict";
  v9 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  LOBYTE(v4) = sub_100003258(v4, v5);

  if ((v4 & 1) == 0)
  {
    v6 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to send install progress", v7, 2u);
    }
  }
}

void sub_100002FD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_10000C108;
    if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = v7;
      v14 = [v12 path];
      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to install application at %@ : %@", &v15, 0x16u);
    }

    v8 = [v6 domain];
    if ([v8 isEqualToString:IXUserPresentableErrorDomain])
    {
      v9 = [v6 code];

      if (v9 == 11)
      {
        v10 = @"NoSpace";
LABEL_10:
        sub_100001B34(*(a1 + 48), v10);
        v11 = +[NSFileManager defaultManager];
        [v11 removeItemAtPath:*(*(a1 + 48) + 16) error:0];

        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = @"InstallationFailed";
    goto LABEL_10;
  }

  sub_10000316C(*(a1 + 48));
LABEL_11:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000316C(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v1 = a1;
    v5 = @"Status";
    v6 = @"DataComplete";
    v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    LOBYTE(v1) = sub_100003258(v1, v2);

    if ((v1 & 1) == 0)
    {
      v3 = qword_10000C108;
      if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not send error response to host", v4, 2u);
      }
    }
  }
}

uint64_t sub_100003258(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = lockdown_send_message();
    if (v4)
    {
      v5 = v4;
      v6 = qword_10000C108;
      if (os_log_type_enabled(qword_10000C108, OS_LOG_TYPE_ERROR))
      {
        v8[0] = 67109120;
        v8[1] = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Got error %x from lockdown_send_message", v8, 8u);
      }

      a1 = 0;
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}