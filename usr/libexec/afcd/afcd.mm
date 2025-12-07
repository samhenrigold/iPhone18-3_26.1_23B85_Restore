uint64_t start(int a1, char *const *a2)
{
  bzero(v30, 0x400uLL);
  memset(&v28, 0, sizeof(v28));
  AFCPlatformInitialize();
  AFCLog(4, "afcd starting");
  signal(13, 1);
  while (1)
  {
    v4 = getopt_long(a1, a2, "r", &off_100008000, 0);
    if (v4 != 114)
    {
      break;
    }

    qword_100008040 = "com.apple.crashreportcopymobile";
  }

  if (v4 != -1)
  {
    fwrite("usage: afcd [-r]\n", 0x11uLL, 1uLL, __stderrp);
    fwrite("  -r | --crash-reporter      : run afcd for crash reporter\n", 0x3BuLL, 1uLL, __stderrp);
    goto LABEL_43;
  }

  v5 = qword_100008040;
  if (!qword_100008040)
  {
    v5 = "com.apple.afcd";
    qword_100008040 = "com.apple.afcd";
  }

  if (strcmp(v5, "com.apple.crashreportcopymobile"))
  {
    v6 = "/private/var/mobile/Media";
    goto LABEL_17;
  }

  v7 = MKBUserTypeDeviceMode();
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  Value = CFDictionaryGetValue(v7, kMKBDeviceModeKey);
  if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFStringGetTypeID()))
  {
    CFRelease(v8);
    goto LABEL_16;
  }

  v12 = CFStringCompare(v10, kMKBDeviceModeMultiUser, 0);
  CFRelease(v8);
  if (v12)
  {
LABEL_16:
    v6 = "/private/var/mobile/Library/Logs/CrashReporter";
    goto LABEL_17;
  }

  v13 = container_system_group_path_for_identifier();
  if (!v13)
  {
    AFCLog(1, "Failed to retrieve group container systemgroup.com.apple.osanalytics", v26, v27, *&v28.st_dev, v28.st_ino, *&v28.st_uid, *&v28.st_rdev, v28.st_atimespec.tv_sec, v28.st_atimespec.tv_nsec, v28.st_mtimespec.tv_sec, v28.st_mtimespec.tv_nsec, v28.st_ctimespec.tv_sec, v28.st_ctimespec.tv_nsec, v28.st_birthtimespec.tv_sec, v28.st_birthtimespec.tv_nsec, v28.st_size, v28.st_blocks, *&v28.st_blksize, *&v28.st_gen, v28.st_qspare[0], v28.st_qspare[1]);
    goto LABEL_43;
  }

  v14 = v13;
  v6 = v30;
  __strcpy_chk();
  __strcat_chk();
  free(v14);
LABEL_17:
  if (kqueue() == -1)
  {
    AFCLog(1, "kqueue(): %m", v26, v27, *&v28.st_dev, v28.st_ino, *&v28.st_uid, *&v28.st_rdev, v28.st_atimespec.tv_sec, v28.st_atimespec.tv_nsec, v28.st_mtimespec.tv_sec, v28.st_mtimespec.tv_nsec, v28.st_ctimespec.tv_sec, v28.st_ctimespec.tv_nsec, v28.st_birthtimespec.tv_sec, v28.st_birthtimespec.tv_nsec, v28.st_size, v28.st_blocks, *&v28.st_blksize, *&v28.st_gen, v28.st_qspare[0], v28.st_qspare[1]);
    goto LABEL_43;
  }

  if (lstat(v6, &v28) < 0)
  {
    if (*__error() != 2)
    {
LABEL_34:
      __error();
      AFCLog(1, "could not stat directory %s: %d");
      return 1;
    }
  }

  else if ((v28.st_mode & 0xF000) == 0xA000)
  {
    AFCLog(1, "Path %s is a symlink.");
    return 1;
  }

  v15 = realpath_DARWIN_EXTSN(v6, 0);
  qword_100008048 = v15;
  if (!v15)
  {
    if (*__error() == 2)
    {
      if (mkdir(v6, 0x1EDu) < 0)
      {
        __error();
        AFCLog(1, "could not create directory %s (%d)");
        return 1;
      }

      v15 = strdup(v6);
      qword_100008048 = v15;
      goto LABEL_26;
    }

    v23 = __error();
    strerror(*v23);
    AFCLog(1, "realpath(%s) failure: %s");
LABEL_43:
    exit(1);
  }

LABEL_26:
  AFCLog(4, "Serving directory %s", v15);
  if (lstat(qword_100008048, &v28) < 0)
  {
    goto LABEL_34;
  }

  AFCLog(5, "directory %s mode is 0x%x", qword_100008048, v28.st_mode);
  if ((v28.st_mode & 0xF000) == 0x4000)
  {
    errorbuf = 0;
    v16 = sandbox_extension_issue_file();
    if (v16)
    {
      v17 = v16;
      if (sandbox_init("afcd", 2uLL, &errorbuf) < 0)
      {
        AFCLog(1, "Could not load afcd sandbox profile: %s", errorbuf);
        sandbox_free_error(errorbuf);
      }

      else
      {
        if ((sandbox_extension_consume() & 0x8000000000000000) == 0)
        {
          free(v17);
          qword_100008050 = dispatch_group_create();
          v24 = dispatch_queue_create("afcd xpc listener", 0);
          qword_100008058 = v24;
          global_queue = dispatch_get_global_queue(2, 0);
          dispatch_set_target_queue(v24, global_queue);
          AFCLog(4, "Ready to start");
          sub_100000D70(qword_100008040, qword_100008058);
          dispatch_main();
        }

        v18 = *__error();
        v19 = errorbuf;
        if (!errorbuf)
        {
          v20 = __error();
          v19 = strerror(*v20);
        }

        AFCLog(1, "sandbox_extension_consume failed (%d): %s", v18, v19);
      }

      free(v17);
    }

    else
    {
      v21 = __error();
      AFCLog(1, "sandbox_extension_issue_file failed: %d", *v21);
    }

    AFCLog(1, "failed to load sandbox");
  }

  else
  {
    AFCLog(1, "path %s is not a directory");
  }

  return 1;
}

void sub_100000D70(const char *a1, NSObject *a2)
{
  if (!qword_100008060)
  {
    AFCLog(4, "Creating XPC service %s", a1);
    mach_service = xpc_connection_create_mach_service(a1, a2, 1uLL);
    qword_100008060 = mach_service;
    if (!mach_service)
    {
      AFCLog(1, "Could not create XPC listener.");
      exit(1);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100000E4C;
    handler[3] = &unk_1000042C0;
    v6 = 0;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(qword_100008060);
  }
}

uint64_t sub_100000E4C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {
    v6 = *(a1 + 32);
    AFCLog(4, "Handle XPC connection");
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100000FC4;
    handler[3] = &unk_1000042E0;
    v9 = v6;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    AFCLog(5, "Resuming connection");
    xpc_connection_resume(object);
    return AFCLog(5, "handle connection done");
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      if (object == &_xpc_error_termination_imminent)
      {
        AFCLog(4, "XPC connection closing, time to go");
        exit(0);
      }

      string = xpc_dictionary_get_string(object, _xpc_error_key_description);
      AFCLog(1, "Got XPC error on listener connection: %s", string);
      xpc_connection_cancel(qword_100008060);
      exit(1);
    }

    return AFCLog(2, "Unknown XPC event");
  }
}

void sub_100000FC4(uint64_t a1, void *a2)
{
  AFCLog(4, "event handler");
  type = xpc_get_type(a2);
  if (type == &_xpc_type_dictionary)
  {
    AFCLog(4, "Processing checkin");
    if (lockdown_copy_checkin_info())
    {
      v5 = "Should not get XPC message after checkin.";
      goto LABEL_9;
    }

    v7 = *(a1 + 40);
    bzero(buffer, 0x400uLL);
    AFCLog(5, "Handle lockdown message");
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kLockdownCheckinConnectionInfoKey, 0);
    v9 = secure_lockdown_checkin();
    CFRelease(Mutable);
    if (v9)
    {
      AFCLog(1, "Could not check in with lockdown at '%s': %d");
    }

    else
    {
      socket = lockdown_get_socket();
      securecontext = lockdown_get_securecontext();
      v12 = &unk_100001F1A;
      if (!securecontext)
      {
        v12 = "out";
      }

      AFCLog(5, "Checked in with lockdown on path '%s' socket %d with%s SSL", buffer, socket, v12);
      v13 = lockdown_get_socket();
      lockdown_get_securecontext();
      v14 = qword_100008048;
      AFCLog(5, "run_connection for root %s", qword_100008048);
      xpc_transaction_begin();
      v25 = 1;
      if (setsockopt(v13, 0xFFFF, 4130, &v25, 4u) < 0)
      {
        v15 = __error();
        v16 = strerror(*v15);
        AFCLog(5, "Could not set SO_NOSIGPIPE: %s", v16);
      }

      if (AFCCreateServerContext())
      {
        v17 = CFStringCreateWithCString(kCFAllocatorDefault, v14, 0x8000100u);
        AFCServerContextSetRootPath();
        CFRelease(v17);
        AFCServerContextSetLockdownConnection();
        v18 = AFCConnectionCreate();
        if (v18)
        {
          v19 = v18;
          AFCConnectionSetSecureContext();
          AFCConnectionSetDisposeSecureContextOnInvalidate();
          AFCInitServerConnection();
          if (v7)
          {
            AFCServerConnectionSetFileCoordinationEnabled();
          }

          AFCLog(5, "Using async dispatch queue");
          global_queue = dispatch_get_global_queue(21, 0);
          dispatch_group_async_f(qword_100008050, global_queue, v19, sub_10000143C);
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = sub_1000014E8;
          block[3] = &unk_100004300;
          v24 = 1;
          dispatch_group_notify(qword_100008050, qword_100008058, block);
          AFCLog(5, "Lockdown message handled");
          CFRelease(0);
          v5 = "Checkin handled";
          goto LABEL_22;
        }

        AFCLog(1, "could not open connection: %m", string, v22);
      }

      else
      {
        AFCLog(1, "no memory: %m", string, v22);
      }
    }

    exit(1);
  }

  if (type == &_xpc_type_error)
  {
    if (a2 == &_xpc_error_termination_imminent)
    {
      v5 = "XPC connection should close now";
    }

    else
    {
      if (a2 != &_xpc_error_connection_invalid)
      {
        string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
        v5 = "Got XPC error on xpc connection: %s";
        goto LABEL_9;
      }

      v5 = "The connection is now invalid.";
    }

LABEL_22:
    v6 = 4;
    goto LABEL_23;
  }

  v5 = "Unexpected XPC event; this connection is toast.";
LABEL_9:
  v6 = 1;
LABEL_23:
  AFCLog(v6, v5, string);
  xpc_connection_cancel(*(a1 + 32));
}

uint64_t sub_10000143C(const void *a1)
{
  AFCLog(4, "Running server thread");
  AFCConnectionSetIOTimeout();
  AFCConnectionGetContext();
  AFCServerContextGetRootPath();
  AFCServeWithRoot();
  if (AFCServerContextGetLockdownConnection())
  {
    AFCServerContextGetLockdownConnection();
    lockdown_disconnect();
  }

  AFCFreeServerContext();
  AFCConnectionSetContext();
  AFCConnectionInvalidate();
  CFRelease(a1);
  AFCLog(4, "Server thread finished");
  xpc_transaction_end();
  return 0;
}

uint64_t sub_1000014E8(uint64_t a1)
{
  result = AFCLog(5, "Dispatch group is now idle.");
  if ((*(a1 + 32) & 1) == 0)
  {
    AFCLog(4, "Exiting because server thread is done and we are not lingering.");
    exit(0);
  }

  return result;
}