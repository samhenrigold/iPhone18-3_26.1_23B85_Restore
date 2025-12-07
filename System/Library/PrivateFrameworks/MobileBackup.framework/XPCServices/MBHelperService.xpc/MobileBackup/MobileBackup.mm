id sub_1000035C0(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

id sub_10000371C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 creationDate];
  v5 = v4;
  if (v4 && [v4 compare:*(a1 + 32)] == -1)
  {
    v7 = [v3 name];
    v6 = [v7 hasPrefix:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t MBSQLiteJournalSuffixes(uint64_t a1, uint64_t a2)
{
  if (qword_10002A100 != -1)
  {
    sub_1000144D8();
  }

  return qword_10002A0F8;
}

void sub_100005584(id a1)
{
  v1 = dlopen("/System/Library/Frameworks/IOKit.framework/IOKit", 5);
  v2 = dlopen("/System/Library/PrivateFrameworks/AppSupport.framework/AppSupport", 5);
  off_10002A108 = dlsym(v2, "CPGetDeviceRegionCode");
  off_10002A110 = dlsym(v1, "IOServiceGetMatchingService");
  off_10002A118 = dlsym(v1, "IOServiceMatching");
  qword_10002A120 = dlsym(v1, "kIOMainPortDefault");
  v3 = off_10002A110;
  v4 = *qword_10002A120;
  v5 = off_10002A118("AppleBaseband");
  v6 = v3(v4, v5);
  v7 = v6 - 1;
  if ((v6 - 1) <= 0xFFFFFFFD)
  {
    v6 = mach_port_deallocate(mach_task_self_, v6);
  }

  byte_10002A128 = (v7 < 0xFFFFFFFE) & [off_10002A108(v6) isEqualToString:@"CH"];
}

uint64_t MBMobileUID()
{
  result = qword_100029EC8;
  if (qword_100029EC8 < 0)
  {
    v1 = getpwnam([@"mobile" UTF8String]);
    if (!v1)
    {
      v2 = [MBException alloc];
      v3 = __error();
      v4 = strerror(*v3);
      v5 = [(MBException *)v2 initWithCode:1 format:@"getpwnam(%@) failed: %s (%d)", @"mobile", v4, *__error()];
      objc_exception_throw(v5);
    }

    result = v1->pw_uid;
    qword_100029EC8 = result;
  }

  return result;
}

uint64_t sub_1000058AC(uint64_t a1)
{
  qword_10002A138 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100005A40(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 40) count];
  if (result == 1)
  {
    v3 = objc_opt_class();
    class_getName(v3);
    *(*(a1 + 32) + 32) = os_transaction_create();

    return _objc_release_x1();
  }

  return result;
}

void sub_100005B50(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 40) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;

    v4 = *(*(a1 + 32) + 16);
    if (v4)
    {

      dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

void sub_100005DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005DE4(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MBHelperServiceProtocol];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v2, v3, objc_opt_class(), 0];
  [v1 setClasses:v4 forSelector:"runEncodingTask:reply:" argumentIndex:0 ofReply:0];

  v5 = qword_10002A148;
  qword_10002A148 = v1;
}

uint64_t sub_100005EB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) _removeConnection:WeakRetained];
  }

  return _objc_release_x1();
}

void sub_100005F98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (!v2)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      dispatch_suspend(v4);
      v1 = *(a1 + 32);
      v2 = *(v1 + 24);
    }

    else
    {
      v2 = 0;
    }
  }

  *(v1 + 24) = v2 + 1;
}

void sub_10000606C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (v2)
  {
    *(v1 + 24) = v2 - 1;
    v4 = *(a1 + 32);
    if (*(v4 + 24) <= 0)
    {
      v5 = *(v4 + 16);
      if (!v5)
      {
        v6 = MBGetDefaultLog(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initializing idle timer", buf, 2u);
          _MBLog(@"I ", "Initializing idle timer");
        }

        v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 8));
        v8 = *(a1 + 32);
        v9 = *(v8 + 16);
        *(v8 + 16) = v7;

        v4 = *(a1 + 32);
        v5 = *(v4 + 16);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100006230;
      handler[3] = &unk_1000248C0;
      handler[4] = v4;
      dispatch_source_set_event_handler(v5, handler);
      v10 = dispatch_time(0, 300000000000);
      dispatch_source_set_timer(*(*(a1 + 32) + 16), v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(*(*(a1 + 32) + 16));
    }
  }

  else
  {
    v11 = MBGetDefaultLog(a1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Over-released idle timer", buf, 2u);
      _MBLog(@"F ", "Over-released idle timer");
    }
  }
}

void sub_100006230(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

id MBTemporaryPath(uint64_t a1)
{
  if (qword_10002A158 != -1)
  {
    sub_100014528();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000066F8;
  v9 = sub_100006708;
  v10 = 0;
  v1 = sub_100006710(a1);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006754;
  block[3] = &unk_100024908;
  block[4] = &v5;
  dispatch_sync(v1, block);

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_100006638(id a1)
{
  strcpy(v4, "/var/tmp/backupd-XXXXXXXXXXXXXXX");
  v1 = mkdtemp(v4);
  qword_10002A160 = v1;
  if (!v1)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (mkdtemp)";
    goto LABEL_6;
  }

  qword_10002A160 = strdup(v1);
  if (!qword_10002A160)
  {
    v2 = [MBException alloc];
    v3 = @"Unable to create /var/tmp/backupd-XXXXXXXXXX directory (strdup)";
LABEL_6:
    objc_exception_throw([(MBException *)v2 initWithCode:1 format:v3]);
  }
}

uint64_t sub_1000066F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100006710(uint64_t a1)
{
  if (qword_10002A170 != -1)
  {
    sub_10001453C();
  }

  v2 = qword_10002A168;

  return v2;
}

void sub_100006754(uint64_t a1)
{
  if (!qword_10002A160)
  {
    objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Unable to create /var/tmp/backupd-XXXXXXXXXX directory"]);
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", qword_10002A160);
  if (mktemp(__str))
  {
    v2 = [[NSString alloc] initWithUTF8String:__str];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v4 = MBGetDefaultLog(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *__error();
      *buf = 67109120;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "mktemp failed: %{errno}d", buf, 8u);
      v6 = __error();
      _MBLog(@"E ", "mktemp failed: %{errno}d", *v6);
    }
  }
}

void sub_10000689C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("MBTemporaryPath", v3);
  v2 = qword_10002A168;
  qword_10002A168 = v1;
}

NSMutableString *MBStringWithArray(void *a1)
{
  v2 = [NSMutableString stringWithString:@"["];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([(NSMutableString *)v2 length]!= 1)
      {
        [(NSMutableString *)v2 appendString:@", "];
      }

      [(NSMutableString *)v2 appendString:MBStringWithObject(v5, v6)];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [(NSMutableString *)v2 appendString:@"]"];
  return v2;
}

NSMutableString *MBStringWithObject(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return MBStringWithArray(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [a1 bytes];
      v5 = 2 * [a1 length];

      return MBStringWithNibbles(v4, v5);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return MBStringWithDictionary(a1);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return MBStringWithSet(a1);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            return [NSString stringWithFormat:@"%@", a1];
          }

          else
          {

            return [a1 description];
          }
        }
      }
    }
  }
}

id MBStringWithNibbles(unsigned __int8 *a1, unint64_t a2)
{
  v4 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
  if (a2)
  {
    v5 = v4 + 2;
    v6 = 1;
    do
    {
      v8 = *a1++;
      v7 = v8;
      *(v5 - 1) = a0123456789abcd[v8 >> 4];
      if (v6 < a2)
      {
        *v5 = a0123456789abcd[v7 & 0xF];
      }

      v9 = v6 + 1;
      v6 += 2;
      v5 += 2;
    }

    while (v9 < a2);
  }

  v10 = [[NSString alloc] initWithCharactersNoCopy:v4 length:a2 freeWhenDone:1];

  return v10;
}

id MBStringWithDate(id result)
{
  if (result)
  {
    return [NSDateFormatter localizedStringFromDate:result dateStyle:1 timeStyle:2];
  }

  return result;
}

NSMutableString *MBStringWithDictionary(void *a1)
{
  v2 = [NSMutableString stringWithString:@"{"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if ([(NSMutableString *)v2 length]!= 1)
        {
          [(NSMutableString *)v2 appendString:@", "];
        }

        v8 = [a1 objectForKeyedSubscript:v7];
        [(NSMutableString *)v2 appendFormat:@"%@: %@", v7, MBStringWithObject(v8, v9)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [(NSMutableString *)v2 appendString:@"}"];
  return v2;
}

NSMutableString *MBStringWithSet(void *a1)
{
  v2 = [NSMutableString stringWithString:@"{"];
  v3 = [a1 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([(NSMutableString *)v2 length]!= 1)
      {
        [(NSMutableString *)v2 appendString:@", "];
      }

      [(NSMutableString *)v2 appendString:MBStringWithObject(v5, v6)];
      v5 = [v3 nextObject];
    }

    while (v5);
  }

  [(NSMutableString *)v2 appendString:@"}"];
  return v2;
}

uint64_t MBHTTPDateFormatter(uint64_t a1, uint64_t a2)
{
  if (qword_10002A178 != -1)
  {
    sub_100014550();
  }

  return qword_10002A180;
}

void sub_100006E7C(id a1)
{
  qword_10002A180 = objc_alloc_init(NSDateFormatter);
  v1 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [qword_10002A180 setLocale:v1];
  v2 = qword_10002A180;

  [v2 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss z"];
}

char *sub_100006F8C(const char *a1, void *a2, char *a3)
{
  v5 = a2;
  if (!a1)
  {
    sub_1000145D0();
  }

  v6 = v5;
  if (!v5)
  {
    sub_1000145A4();
  }

  snprintf(__str, 0x401uLL, "%s/%s_XXXXXXXXXXXXXXX", a1, [v5 fileSystemRepresentation]);
  v7 = mkdtemp(__str);
  if (v7)
  {
    a3 = strdup(v7);
  }

  else
  {
    v8 = MBGetDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 136315394;
      v14 = __str;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=tmpdir= Failed to create %s directory (mkdtemp error: %d)", buf, 0x12u);
      v10 = __error();
      _MBLog(@"E ", "=tmpdir= Failed to create %s directory (mkdtemp error: %d)", __str, *v10);
    }

    if (a3)
    {
      v11 = [NSString mb_stringWithFileSystemRepresentation:__str];
      *a3 = [MBError posixErrorWithPath:v11 format:@"TempDir: Failed to create directory (mkdtemp error: %d)", *__error()];

      a3 = 0;
    }
  }

  return a3;
}

uint64_t sub_100007370(const char *a1)
{
  if (!a1)
  {
    sub_1000146D4();
  }

  result = mkpath_np(a1, 0x1FFu);
  if (result != 17)
  {

    return MBMobileUID();
  }

  return result;
}

id sub_10000764C(const char *a1)
{
  if (!a1)
  {
    sub_1000147DC();
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", a1);
  mktemp(__str);
  v1 = [NSString mb_stringWithFileSystemRepresentation:__str];

  return v1;
}

uint64_t sub_100007B4C(_removefile_state *a1, uint64_t a2, void *a3)
{
  dst = 0;
  v5 = a3;
  removefile_state_get(a1, 5u, &dst);
  v6 = dst;
  v7 = [NSString stringWithUTF8String:a2];
  v8 = [MBError errorWithErrno:v6 path:v7 format:@"removefileat() error"];
  [v5 addObject:v8];

  return 0;
}

void sub_100007E64(id a1)
{
  v1 = strdup("/var/tmp/com.apple.backup.testing");
  qword_10002A188 = v1;

  sub_100007370(v1);
}

void sub_100007E9C(id a1)
{
  v1 = strdup("/var/mobile/tmp/com.apple.backup.testing");
  qword_10002A198 = v1;

  sub_100007370(v1);
}

void sub_100007ED4(id a1)
{
  v1 = strdup("/var/tmp/com.apple.backup");
  qword_10002A1A8 = v1;

  sub_100007370(v1);
}

uint64_t MBIsTransientErrorCode(unint64_t a1)
{
  result = 1;
  if (a1 > 299)
  {
    if (a1 - 300 > 0xA || ((1 << (a1 - 44)) & 0x535) == 0)
    {
      v3 = a1 - 556;
LABEL_10:
      if (v3 >= 2)
      {
        return 0;
      }
    }
  }

  else if ((a1 - 202 > 0x12 || ((1 << (a1 + 54)) & 0x78041) == 0) && (a1 > 0x14 || ((1 << a1) & 0x1A0000) == 0))
  {
    v3 = a1 - 105;
    goto LABEL_10;
  }

  return result;
}

void MBDiagnoseFile(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (atomic_fetch_add_explicit(dword_10002A1B8, 1u, memory_order_relaxed) <= 1)
  {
    sub_10000A6D4(v5);
    v9 = MBIsInternalInstall(v7, v8);
    if (v9)
    {
      v10 = MBGetDefaultLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446722;
        v12 = a3;
        v13 = 1024;
        v14 = a2;
        v15 = 2114;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "=diag= %{public}s failed with %d at %{public}@", buf, 0x1Cu);
        _MBLog(@"F ", "=diag= %{public}s failed with %d at %{public}@", a3, a2, v6);
      }
    }
  }
}

void sub_10000A6D4(void *a1)
{
  v1 = a1;
  v2 = geteuid();
  v3 = MBGetDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138543618;
      *&buf.f_iosize = v1;
      WORD2(buf.f_blocks) = 1024;
      *(&buf.f_blocks + 6) = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=diag= Dumping diagnostics for %{public}@ (%d)", &buf, 0x12u);
    }

    _MBLog(@"Df", "=diag= Dumping diagnostics for %{public}@ (%d)", v1, v2);
  }

  v5 = [v1 fileSystemRepresentation];
  v6 = [v1 lastPathComponent];
  v7 = [v6 fileSystemRepresentation];

  v8 = [v1 stringByDeletingLastPathComponent];
  v9 = [v8 fileSystemRepresentation];

  if (!v1)
  {
    goto LABEL_216;
  }

  if (!v5)
  {
    v20 = MBGetDefaultLog(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=diag= nil path FSR", &buf, 2u);
      _MBLog(@"Df", "=diag= nil path FSR", v247);
    }

    goto LABEL_215;
  }

  if (!v7)
  {
    v20 = MBGetDefaultLog(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=diag= nil name FSR", &buf, 2u);
      _MBLog(@"Df", "=diag= nil name FSR", v247);
    }

    goto LABEL_215;
  }

  if (!v9)
  {
    v20 = MBGetDefaultLog(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=diag= nil dir path FSR", &buf, 2u);
      _MBLog(@"Df", "=diag= nil dir path FSR", v247);
    }

    goto LABEL_215;
  }

  v11 = access(v5, 4);
  if (v11)
  {
    v12 = __error();
    v13 = *v12;
    v14 = MBGetDefaultLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 67109120;
        buf.f_iosize = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= access(R_OK) failed: %{errno}d", &buf, 8u);
      }

      _MBLog(@"Df", "=diag= access(R_OK) failed: %{errno}d", v13);
    }

    v16 = access(v5, 0);
    if (v16)
    {
      v17 = __error();
      v18 = *v17;
      v19 = MBGetDefaultLog(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109120;
          buf.f_iosize = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=diag= access(F_OK) failed: %{errno}d", &buf, 8u);
        }

        _MBLog(@"Df", "=diag= access(F_OK) failed: %{errno}d", v18);
      }
    }

    else
    {
      v19 = MBGetDefaultLog(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109120;
          buf.f_iosize = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=diag= access(F_OK): %d", &buf, 8u);
        }

        _MBLog(@"Df", "=diag= access(F_OK): %d");
      }
    }
  }

  else
  {
    v19 = MBGetDefaultLog(v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 67109120;
        buf.f_iosize = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=diag= access(R_OK): %d", &buf, 8u);
      }

      _MBLog(@"Df", "=diag= access(R_OK): %d");
    }
  }

  memset(&v284, 0, sizeof(v284));
  v21 = stat(v5, &v284);
  if (v21)
  {
    v22 = __error();
    v23 = *v22;
    v24 = MBGetDefaultLog(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 67109120;
        buf.f_iosize = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=diag= stat failed: %{errno}d", &buf, 8u);
      }

      _MBLog(@"Df", "=diag= stat failed: %{errno}d", v23);
    }

    st_ino = 0;
  }

  else
  {
    st_ino = v284.st_ino;
    v24 = MBGetDefaultLog(v21);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 67113472;
        buf.f_iosize = v284.st_dev;
        LOWORD(buf.f_blocks) = 2048;
        *(&buf.f_blocks + 2) = v284.st_ino;
        WORD1(buf.f_bfree) = 1024;
        HIDWORD(buf.f_bfree) = v284.st_mode;
        LOWORD(buf.f_bavail) = 1024;
        *(&buf.f_bavail + 2) = v284.st_nlink;
        HIWORD(buf.f_bavail) = 1024;
        LODWORD(buf.f_files) = v284.st_uid;
        WORD2(buf.f_files) = 1024;
        *(&buf.f_files + 6) = v284.st_gid;
        WORD1(buf.f_ffree) = 1024;
        HIDWORD(buf.f_ffree) = v284.st_rdev;
        LOWORD(buf.f_fsid.val[0]) = 2048;
        *(&buf.f_fsid + 2) = v284.st_atimespec.tv_sec;
        HIWORD(buf.f_owner) = 2048;
        *&buf.f_type = v284.st_atimespec.tv_nsec;
        LOWORD(buf.f_fssubtype) = 2048;
        *(&buf.f_fssubtype + 2) = v284.st_mtimespec.tv_sec;
        *&buf.f_fstypename[6] = 2048;
        *&buf.f_fstypename[8] = v284.st_mtimespec.tv_nsec;
        *buf.f_mntonname = 2048;
        *&buf.f_mntonname[2] = v284.st_ctimespec.tv_sec;
        *&buf.f_mntonname[10] = 2048;
        *&buf.f_mntonname[12] = v284.st_ctimespec.tv_nsec;
        *&buf.f_mntonname[20] = 2048;
        *&buf.f_mntonname[22] = v284.st_size;
        *&buf.f_mntonname[30] = 2048;
        *&buf.f_mntonname[32] = v284.st_blocks << 9;
        *&buf.f_mntonname[40] = 1024;
        *&buf.f_mntonname[42] = v284.st_blksize;
        *&buf.f_mntonname[46] = 1024;
        *&buf.f_mntonname[48] = v284.st_flags;
        *&buf.f_mntonname[52] = 1024;
        *&buf.f_mntonname[54] = v284.st_gen;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=diag= stat: dev %d, ino %llu, mode 0%o, nlink %u, uid %u, gid %u, rdev %d, atime %lu.%ld, mtime %lu.%ld, ctime %lu.%ld, lgsize %lld, physize %lld, blksize %d, flags %u, gen %u", &buf, 0x92u);
      }

      _MBLog(@"Df", "=diag= stat: dev %d, ino %llu, mode 0%o, nlink %u, uid %u, gid %u, rdev %d, atime %lu.%ld, mtime %lu.%ld, ctime %lu.%ld, lgsize %lld, physize %lld, blksize %d, flags %u, gen %u", v284.st_dev, v284.st_ino, v284.st_mode, v284.st_nlink, v284.st_uid, v284.st_gid, v284.st_rdev, v284.st_atimespec.tv_sec, v284.st_atimespec.tv_nsec, v284.st_mtimespec.tv_sec, v284.st_mtimespec.tv_nsec, v284.st_ctimespec.tv_sec, v284.st_ctimespec.tv_nsec, v284.st_size, v284.st_blocks << 9, v284.st_blksize, v284.st_flags, v284.st_gen);
    }
  }

  v282 = xmmword_100018EA0;
  v283 = 0x1800000403;
  memset(v281, 0, sizeof(v281));
  v279 = 0u;
  v280 = 0u;
  v278 = 0u;
  v277 = 0u;
  v26 = getattrlist(v5, &v282, &v277, 0x64uLL, 0x29u);
  v262 = v5;
  if (v26)
  {
    v27 = __error();
    v28 = *v27;
    v29 = MBGetDefaultLog(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 67109120;
        buf.f_iosize = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=diag= getattrlist failed: %{errno}d", &buf, 8u);
      }

      _MBLog(@"Df", "=diag= getattrlist failed: %{errno}d", v28);
    }
  }

  else
  {
    if (!st_ino)
    {
      if ((BYTE7(v277) & 2) != 0)
      {
        st_ino = *(&v280 + 4);
      }

      else
      {
        st_ino = 0;
      }
    }

    if (HIDWORD(v278) != 1)
    {
      v30 = MBGetDefaultLog(v26);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = st_ino;
        v32 = v30;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.f_bsize) = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=diag= warning: not a regular file, link info and sizes will be garbage", &buf, 2u);
        }

        _MBLog(@"Df", "=diag= warning: not a regular file, link info and sizes will be garbage");
        st_ino = v31;
      }
    }

    v29 = MBGetDefaultLog(v26);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_iosize = v277;
        *(&buf.f_blocks + 2) = (DWORD1(v277) >> 1) & 1;
        LODWORD(buf.f_bfree) = DWORD2(v278);
        *(&buf.f_bfree + 6) = (DWORD1(v277) >> 3) & 1;
        HIDWORD(buf.f_bavail) = HIDWORD(v278);
        *(&buf.f_files + 2) = (DWORD1(v277) >> 25) & 1;
        buf.f_ffree = *(&v280 + 4);
        *(buf.f_fsid.val + 2) = (DWORD1(v277) >> 15) & 1;
        buf.f_owner = v279;
        *(&buf.f_type + 2) = HIWORD(DWORD1(v277)) & 1;
        buf.f_fssubtype = DWORD1(v279);
        *&buf.f_fstypename[2] = (DWORD1(v277) >> 17) & 1;
        *&buf.f_fstypename[8] = DWORD2(v279);
        *&buf.f_fstypename[14] = (DWORD1(v277) >> 18) & 1;
        *&buf.f_mntonname[4] = HIDWORD(v279);
        *&buf.f_mntonname[10] = (DWORD1(v277) >> 19) & 1;
        *&buf.f_mntonname[16] = v280;
        *&buf.f_mntonname[22] = (DWORD1(v277) >> 30) & 1;
        *&buf.f_mntonname[28] = HIDWORD(v280);
        *&buf.f_mntonname[34] = v278 & 1;
        *&buf.f_mntonname[40] = v281[0];
        *&buf.f_mntonname[46] = (v278 >> 1) & 1;
        *&buf.f_mntonname[52] = *&v281[1];
        *&buf.f_mntonname[62] = (v278 >> 10) & 1;
        *&buf.f_mntonname[68] = *&v281[3];
        *&buf.f_mntonname[78] = (DWORD1(v278) >> 3) & 1;
        *&buf.f_mntonname[84] = *&v281[5];
        LOWORD(buf.f_blocks) = 1024;
        HIWORD(buf.f_blocks) = 1024;
        WORD2(buf.f_bfree) = 1024;
        WORD1(buf.f_bavail) = 1024;
        LOWORD(buf.f_files) = 1024;
        LOWORD(buf.f_fsid.val[0]) = 1024;
        HIWORD(buf.f_fsid.val[1]) = 1024;
        LOWORD(buf.f_type) = 1024;
        HIWORD(buf.f_flags) = 1024;
        *buf.f_fstypename = 1024;
        *&buf.f_fstypename[6] = 1024;
        *&buf.f_fstypename[12] = 1024;
        *&buf.f_mntonname[2] = 1024;
        *&buf.f_mntonname[8] = 1024;
        *&buf.f_mntonname[14] = 1024;
        *&buf.f_mntonname[20] = 1024;
        *&buf.f_mntonname[26] = 1024;
        *&buf.f_mntonname[32] = 1024;
        *&buf.f_mntonname[38] = 1024;
        *&buf.f_mntonname[44] = 1024;
        *&buf.f_mntonname[60] = 1024;
        *&buf.f_mntonname[76] = 1024;
        *&buf.f_mntonname[92] = 1024;
        *&buf.f_mntonname[94] = (DWORD1(v278) >> 4) & 1;
        HIWORD(buf.f_files) = 2048;
        *&buf.f_mntonname[50] = 2048;
        *&buf.f_mntonname[66] = 2048;
        *&buf.f_mntonname[82] = 2048;
        *&buf.f_mntonname[98] = 2048;
        *&buf.f_mntonname[100] = *&v281[7];
        buf.f_bsize = 67116288;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=diag= getattrlist: len %u, dev (%d)%d, type (%d)%u, fileId (%d)%llu, uid (%d)%u, gid (%d)%u, access (%d)0%o, flags (%d)0x%x, gencount (%d)%u, protclass (%d)%u, nlink (%d)%u, lgsize (%d)%lld, physize (%d)%lld, realsize (%d)%lld, linkid (%d)%llu", &buf, 0xC4u);
      }

      _MBLog(@"Df", "=diag= getattrlist: len %u, dev (%d)%d, type (%d)%u, fileId (%d)%llu, uid (%d)%u, gid (%d)%u, access (%d)0%o, flags (%d)0x%x, gencount (%d)%u, protclass (%d)%u, nlink (%d)%u, lgsize (%d)%lld, physize (%d)%lld, realsize (%d)%lld, linkid (%d)%llu", v277, (DWORD1(v277) >> 1) & 1, DWORD2(v278), (DWORD1(v277) >> 3) & 1, HIDWORD(v278), (DWORD1(v277) >> 25) & 1, *(&v280 + 4), (DWORD1(v277) >> 15) & 1, v279, HIWORD(DWORD1(v277)) & 1, DWORD1(v279), (DWORD1(v277) >> 17) & 1, DWORD2(v279), (DWORD1(v277) >> 18) & 1, HIDWORD(v279), (DWORD1(v277) >> 19) & 1, v280, (DWORD1(v277) >> 30) & 1, HIDWORD(v280), v278 & 1, v281[0], (v278 >> 1) & 1, *&v281[1], (v278 >> 10) & 1, *&v281[3], (DWORD1(v278) >> 3) & 1, *&v281[5], (DWORD1(v278) >> 4) & 1, *&v281[7]);
    }
  }

  f_fsid = 0;
  v33 = open(v9, 256);
  if (v33 == -1)
  {
    v39 = __error();
    v40 = *v39;
    v41 = MBGetDefaultLog(v39);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 136446466;
        *&buf.f_iosize = v9;
        WORD2(buf.f_blocks) = 1024;
        *(&buf.f_blocks + 6) = v40;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "=diag= open failed at %{public}s: %{errno}d", &buf, 0x12u);
      }

      _MBLog(@"Df", "=diag= open failed at %{public}s: %{errno}d", v9, v40);
    }

    if (!st_ino)
    {
      goto LABEL_125;
    }

LABEL_104:
    if (f_fsid.val[0])
    {
      *&v285 = st_ino;
      v60 = openbyid_np();
      if (v60 == -1)
      {
        v67 = __error();
        v68 = *v67;
        v69 = MBGetDefaultLog(v67);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 = v69;
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109888;
            buf.f_iosize = f_fsid.val[0];
            LOWORD(buf.f_blocks) = 1024;
            *(&buf.f_blocks + 2) = f_fsid.val[1];
            HIWORD(buf.f_blocks) = 2048;
            buf.f_bfree = st_ino;
            LOWORD(buf.f_bavail) = 1024;
            *(&buf.f_bavail + 2) = v68;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "=diag= openbyid_np({%d, %d}, %llu) failed: %{errno}d", &buf, 0x1Eu);
          }

          _MBLog(@"Df", "=diag= openbyid_np({%d, %d}, %llu) failed: %{errno}d", f_fsid.val[0], f_fsid.val[1], st_ino, v68);
        }
      }

      else
      {
        v61 = v60;
        v62 = MBGetDefaultLog(v60);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v62;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            buf.f_bsize = 67109632;
            buf.f_iosize = f_fsid.val[0];
            LOWORD(buf.f_blocks) = 1024;
            *(&buf.f_blocks + 2) = f_fsid.val[1];
            HIWORD(buf.f_blocks) = 2048;
            buf.f_bfree = st_ino;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "=diag= openbyid_np({%d, %d}, %llu) succeeded", &buf, 0x18u);
          }

          _MBLog(@"Df", "=diag= openbyid_np({%d, %d}, %llu) succeeded", f_fsid.val[0], f_fsid.val[1], st_ino);
        }

        v64 = pread(v61, &buf, 0x10uLL, 0);
        if (v64 == -1)
        {
          v71 = __error();
          v72 = *v71;
          v66 = MBGetDefaultLog(v71);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v66 = v66;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v291.d_ino) = 67109120;
              HIDWORD(v291.d_ino) = v72;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "=diag= pread failed: %d", &v291, 8u);
            }

            _MBLog(@"Df", "=diag= pread failed: %d");
          }
        }

        else
        {
          v65 = v64;
          v66 = MBGetDefaultLog(v64);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v66 = v66;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v291.d_ino) = 134217984;
              *(&v291.d_ino + 4) = v65;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "=diag= pread returned %ld bytes", &v291, 0xCu);
            }

            _MBLog(@"Df", "=diag= pread returned %ld bytes");
          }
        }

        close(v61);
      }
    }

    goto LABEL_125;
  }

  v34 = v33;
  *v263 = st_ino;
  bzero(&buf, 0x878uLL);
  v35 = fstatfs(v34, &buf);
  if (v35)
  {
    v36 = __error();
    v37 = *v36;
    v38 = MBGetDefaultLog(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v38;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v291.d_ino) = 136446466;
        *(&v291.d_ino + 4) = v9;
        WORD2(v291.d_seekoff) = 1024;
        *(&v291.d_seekoff + 6) = v37;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=diag= fstatfs failed at %{public}s: %{errno}d", &v291, 0x12u);
      }

      _MBLog(@"Df", "=diag= fstatfs failed at %{public}s: %{errno}d", v9, v37, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260);
    }
  }

  else
  {
    f_fsid = buf.f_fsid;
    v38 = MBGetDefaultLog(v35);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v38;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v291.d_ino) = 67112448;
        HIDWORD(v291.d_ino) = buf.f_bsize;
        LOWORD(v291.d_seekoff) = 1024;
        *(&v291.d_seekoff + 2) = buf.f_iosize;
        HIWORD(v291.d_seekoff) = 2048;
        *&v291.d_reclen = buf.f_blocks;
        *&v291.d_name[3] = 2048;
        *&v291.d_name[5] = buf.f_bfree;
        *&v291.d_name[13] = 2048;
        *&v291.d_name[15] = buf.f_bavail;
        *&v291.d_name[23] = 2048;
        *&v291.d_name[25] = buf.f_files;
        *&v291.d_name[33] = 2048;
        *&v291.d_name[35] = buf.f_ffree;
        *&v291.d_name[43] = 1024;
        *&v291.d_name[45] = buf.f_fsid.val[0];
        *&v291.d_name[49] = 1024;
        *&v291.d_name[51] = buf.f_fsid.val[1];
        *&v291.d_name[55] = 1024;
        *&v291.d_name[57] = buf.f_owner;
        *&v291.d_name[61] = 1024;
        *&v291.d_name[63] = buf.f_type;
        *&v291.d_name[67] = 1024;
        *&v291.d_name[69] = buf.f_flags;
        *&v291.d_name[73] = 1024;
        *&v291.d_name[75] = buf.f_fssubtype;
        *&v291.d_name[79] = 1024;
        *&v291.d_name[81] = buf.f_flags_ext;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "=diag= fstatfs: bsize %u, iosize %d, blocks %llu, bfree %llu, bavail %llu, files %llu, ffree %llu, fsid {%d, %d}, owner %d, type %d, flags 0x%x, fssubtype %d, flags_ext 0x%x", &v291, 0x6Au);
      }

      _MBLog(@"Df", "=diag= fstatfs: bsize %u, iosize %d, blocks %llu, bfree %llu, bavail %llu, files %llu, ffree %llu, fsid {%d, %d}, owner %d, type %d, flags 0x%x, fssubtype %d, flags_ext 0x%x", buf.f_bsize, buf.f_iosize, buf.f_blocks, buf.f_bfree, buf.f_bavail);
    }
  }

  v43 = fdopendir(v34);
  if (!v43)
  {
    v48 = __error();
    v49 = *v48;
    v50 = MBGetDefaultLog(v48);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v50;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v291.d_ino) = 136446466;
        *(&v291.d_ino + 4) = v9;
        WORD2(v291.d_seekoff) = 1024;
        *(&v291.d_seekoff + 6) = v49;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "=diag= fdopendir failed at %{public}s: %{errno}d", &v291, 0x12u);
      }

      _MBLog(@"Df", "=diag= fdopendir failed at %{public}s: %{errno}d", v9, v49);
    }

    close(v34);
    st_ino = *v263;
    if (!*v263)
    {
      goto LABEL_125;
    }

    goto LABEL_104;
  }

  v44 = v43;
  v45 = 0;
  while (1)
  {
    bzero(&v291, 0x418uLL);
    v275 = 0;
    v46 = readdir_r(v44, &v291, &v275);
    if (v46)
    {
      v52 = v46;
      v53 = __error();
      v54 = *v53;
      v55 = MBGetDefaultLog(v53);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v55;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v285) = 67109376;
          DWORD1(v285) = v52;
          WORD4(v285) = 1024;
          *(&v285 + 10) = v54;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "=diag= readdir_r failed: %d (%{errno}d)", &v285, 0xEu);
        }

        _MBLog(@"Df", "=diag= readdir_r failed: %d (%{errno}d)", v52, v54);
      }

LABEL_99:
      v57 = closedir(v44);
      v58 = MBGetDefaultLog(v57);
      st_ino = *v263;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v58;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v291.d_ino) = 67109120;
          HIDWORD(v291.d_ino) = v45;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "=diag= Failed to find the file using readdir_r (%u)", &v291, 8u);
        }

        _MBLog(@"Df", "=diag= Failed to find the file using readdir_r (%u)", v45);
      }

      if (!*v263)
      {
        goto LABEL_125;
      }

      goto LABEL_104;
    }

    if (!v275)
    {
      goto LABEL_99;
    }

    if (*v291.d_name != 46)
    {
      if (*v291.d_name ^ 0x2E2E | v291.d_name[2])
      {
        v47 = strcmp(v291.d_name, v7);
        if (!v47)
        {
          break;
        }
      }
    }

    if (++v45 == 500000)
    {
      v45 = 500000;
      goto LABEL_99;
    }
  }

  d_ino = *v263;
  if (!*v263)
  {
    d_ino = v291.d_ino;
  }

  v245 = MBGetDefaultLog(v47);
  if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
  {
    v246 = v245;
    if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v285) = 67110144;
      DWORD1(v285) = v45;
      WORD4(v285) = 1024;
      *(&v285 + 10) = v291.d_type;
      HIWORD(v285) = 2048;
      v286 = v291.d_ino;
      v287 = 1024;
      d_namlen = v291.d_namlen;
      v289 = 1024;
      d_reclen = v291.d_reclen;
      _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "=diag= readdir_r found file entry (%u), type %d, ino %llu, namelen %d, reclen %d", &v285, 0x24u);
    }

    _MBLog(@"Df", "=diag= readdir_r found file entry (%u), type %d, ino %llu, namelen %d, reclen %d", v45, v291.d_type, v291.d_ino, v291.d_namlen, v291.d_reclen);
  }

  closedir(v44);
  st_ino = d_ino;
  if (d_ino)
  {
    goto LABEL_104;
  }

LABEL_125:
  v285 = 0uLL;
  v73 = fsctl(v5, 0x40104A0EuLL, &v285, 0);
  if (v73)
  {
    v74 = __error();
    v75 = *v74;
    v76 = MBGetDefaultLog(v74);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v76 = v76;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 67109120;
        buf.f_iosize = v75;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_CLONE_INFO) failed: %{errno}d", &buf, 8u);
      }

      _MBLog(@"Df", "=diag= fsctl(APFSIOC_GET_CLONE_INFO) failed: %{errno}d", v75, v248);
    }
  }

  else
  {
    v76 = MBGetDefaultLog(v73);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v76 = v76;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 134218240;
        *&buf.f_iosize = v285;
        WORD2(buf.f_blocks) = 2048;
        *(&buf.f_blocks + 6) = *(&v285 + 1);
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_CLONE_INFO): flags 0x%llx, private_id %llu", &buf, 0x16u);
      }

      _MBLog(@"Df", "=diag= fsctl(APFSIOC_GET_CLONE_INFO): flags 0x%llx, private_id %llu");
    }
  }

  v264 = open_dprotected_np(v5, 0, 0, 1, 0);
  if (v264 == -1)
  {
    v81 = __error();
    v82 = *v81;
    v83 = MBGetDefaultLog(v81);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 67109120;
      buf.f_iosize = v82;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "=diag= Failed to open the file raw encrypted: %{errno}d", &buf, 8u);
      _MBLog(@"Df", "=diag= Failed to open the file raw encrypted: %{errno}d", v82);
    }
  }

  else
  {
    v274 = 0;
    v77 = fsctl(v5, 0x40084A25uLL, &v274, 8u);
    if (v77)
    {
      v78 = __error();
      v79 = *v78;
      v80 = MBGetDefaultLog(v78);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v80 = v80;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109120;
          buf.f_iosize = v79;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS) failed: %{errno}d", &buf, 8u);
        }

        _MBLog(@"Df", "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS) failed: %{errno}d", v79);
      }
    }

    else
    {
      v80 = MBGetDefaultLog(v77);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v80 = v80;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134217984;
          *&buf.f_iosize = v274;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS): flags 0x%llx", &buf, 0xCu);
        }

        _MBLog(@"Df", "=diag= fsctl(APFSIOC_GET_INTERNAL_FLAGS): flags 0x%llx");
      }
    }

    v272 = 0u;
    v273 = 0u;
    v271 = 0u;
    v85 = fsctl(v5, 0x40304A6DuLL, &v271, 0);
    if (v85)
    {
      v86 = __error();
      v87 = *v86;
      v88 = MBGetDefaultLog(v86);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v88 = v88;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109120;
          buf.f_iosize = v87;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO) failed: %{errno}d", &buf, 8u);
        }

        _MBLog(@"Df", "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO) failed: %{errno}d", v87, v248, v249, v250, v251, v252);
      }
    }

    else
    {
      v88 = MBGetDefaultLog(v85);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        v88 = v88;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134219264;
          *&buf.f_iosize = v271;
          WORD2(buf.f_blocks) = 2048;
          *(&buf.f_blocks + 6) = *(&v271 + 1);
          HIWORD(buf.f_bfree) = 2048;
          buf.f_bavail = v272;
          LOWORD(buf.f_files) = 2048;
          *(&buf.f_files + 2) = *(&v272 + 1);
          WORD1(buf.f_ffree) = 2048;
          *(&buf.f_ffree + 4) = v273;
          LOWORD(buf.f_fsid.val[1]) = 2048;
          *(&buf.f_fsid + 6) = *(&v273 + 1);
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO): file flags: 0x%llx related flags: 0x%llx, file acctime: %llu\n gen count: %llu sync root id: %llu size: %llu", &buf, 0x3Eu);
        }

        _MBLog(@"Df", "=diag= fsctl(APFSIOC_PURGEABLE_GET_FILE_INFO): file flags: 0x%llx related flags: 0x%llx, file acctime: %llu\n gen count: %llu sync root id: %llu size: %llu");
      }
    }

    v90 = MBGetDefaultLog(v89);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = v90;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "=diag= Dumping extent information", &buf, 2u);
      }

      _MBLog(@"Df", "=diag= Dumping extent information");
    }

    v261 = v1;

    v92 = 0;
    v93 = 0;
    while (1)
    {
      LODWORD(v291.d_ino) = 0;
      *(&v291.d_ino + 4) = 0x7FFFFFFFFFFFFFFFLL;
      *(&v291.d_seekoff + 4) = v92;
      v94 = fcntl(v264, 65, &v291);
      if (v94)
      {
        break;
      }

      v95 = *(&v291.d_ino + 4);
      v96 = MBGetDefaultLog(v94);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = v96;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134218496;
          *&buf.f_iosize = v92;
          WORD2(buf.f_blocks) = 2048;
          *(&buf.f_blocks + 6) = v95;
          HIWORD(buf.f_bfree) = 2048;
          buf.f_bavail = *(&v291.d_seekoff + 4);
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "=diag= 0x%llx:+%lld @ 0x%llx", &buf, 0x20u);
        }

        _MBLog(@"Df", "=diag= 0x%llx:+%lld @ 0x%llx", v92, v95, *(&v291.d_seekoff + 4));
      }

      if (v95 < 1 || (v95 ^ 0x7FFFFFFFFFFFFFFFLL) < v92)
      {
        goto LABEL_176;
      }

      v92 += v95;
      if (++v93 == 10000)
      {
        v93 = 10000;
        goto LABEL_176;
      }
    }

    v98 = __error();
    v99 = *v98;
    if (v99 != 34)
    {
      v100 = MBGetDefaultLog(v98);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = v100;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 134218240;
          *&buf.f_iosize = v92;
          WORD2(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 6) = v99;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "=diag= log2phys failed at 0x%llx: %{errno}d", &buf, 0x12u);
        }

        _MBLog(@"Df", "=diag= log2phys failed at 0x%llx: %{errno}d", v92, v99);
      }
    }

LABEL_176:
    v102 = MBGetDefaultLog(v98);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      v103 = v102;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 67109120;
        buf.f_iosize = v93;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "=diag= Found %u extents", &buf, 8u);
      }

      _MBLog(@"Df", "=diag= Found %u extents", v93);
    }

    v104 = malloc_type_malloc(0x4000uLL, 0x3F4D6170uLL);
    if (!v104)
    {
      sub_100014808();
    }

    v105 = v104;
    v106 = MBGetDefaultLog(v104);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v107 = v106;
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "=diag= Dumping crypto file info", &buf, 2u);
      }

      _MBLog(@"Df", "=diag= Dumping crypto file info");
    }

    v265 = 1;
    v267 = 0;
    v266 = 0;
    v268 = 0;
    v269 = 0x4000;
    v270 = v105;
    v108 = ffsctl(v264, 0x80284A7FuLL, &v265, 0);
    if (v108)
    {
      v109 = __error();
      v110 = *v109;
      v111 = MBGetDefaultLog(v109);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v111 = v111;
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 67109120;
          buf.f_iosize = v110;
          _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "=diag= Failed to get the crypto file infos: %{errno}d", &buf, 8u);
        }

        _MBLog(@"Df", "=diag= Failed to get the crypto file infos: %{errno}d", v110);
      }

      goto LABEL_203;
    }

    v112 = MBGetDefaultLog(v108);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v113 = v112;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        v114 = *v105;
        buf.f_bsize = 134217984;
        *&buf.f_iosize = v114;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "=diag= private_id: %llu", &buf, 0xCu);
      }

      _MBLog(@"Df", "=diag= private_id: %llu", *v105);
    }

    v116 = MBGetDefaultLog(v115);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = v116;
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
      {
        v118 = v105[1];
        v119 = v105[2] & 1;
        buf.f_bsize = 134218240;
        *&buf.f_iosize = v118;
        WORD2(buf.f_blocks) = 1024;
        *(&buf.f_blocks + 6) = v119;
        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "=diag= prot_class: %llu (explicit? %d)", &buf, 0x12u);
      }

      _MBLog(@"Df", "=diag= prot_class: %llu (explicit? %d)", v105[1], v105[2] & 1);
    }

    if ((v105[2] & 0x8000000000000000) != 0)
    {
      v126 = MBGetDefaultLog(v120);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        v127 = v126;
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          v128 = *(v105 + 85);
          v129 = v105[3];
          buf.f_bsize = 67109376;
          buf.f_iosize = v128;
          LOWORD(buf.f_blocks) = 2048;
          *(&buf.f_blocks + 2) = v129;
          _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "=diag= Found %u crypto ids for filesize %lld", &buf, 0x12u);
        }

        _MBLog(@"Df", "=diag= Found %u crypto ids for filesize %lld", *(v105 + 85), v105[3]);
      }

      v131 = MBGetDefaultLog(v130);
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
      {
        v132 = v131;
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          v133 = v105[3];
          buf.f_bsize = 134217984;
          *&buf.f_iosize = v133;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "=diag=   size:         %llu", &buf, 0xCu);
        }

        _MBLog(@"Df", "=diag=   size:         %llu", v105[3]);
      }

      v135 = MBGetDefaultLog(v134);
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        v136 = v135;
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
        {
          v137 = v105[4];
          buf.f_bsize = 134217984;
          *&buf.f_iosize = v137;
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "=diag=   alloced_size: %llu", &buf, 0xCu);
        }

        _MBLog(@"Df", "=diag=   alloced_size: %llu", v105[4]);
      }

      v139 = MBGetDefaultLog(v138);
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
        v140 = v139;
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          v141 = v105[5];
          buf.f_bsize = 134217984;
          *&buf.f_iosize = v141;
          _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "=diag=   default_crid: %llu", &buf, 0xCu);
        }

        _MBLog(@"Df", "=diag=   default_crid: %llu", v105[5]);
      }

      v143 = MBGetDefaultLog(v142);
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        v144 = v143;
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          v145 = (*(v105 + 24) >> 14) & 1;
          buf.f_bsize = 67109120;
          buf.f_iosize = v145;
          _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "=diag=     exists?  %u", &buf, 8u);
        }

        _MBLog(@"Df", "=diag=     exists?  %u", (*(v105 + 24) >> 14) & 1);
      }

      v147 = MBGetDefaultLog(v146);
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        v148 = v147;
        if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
        {
          v149 = *(v105 + 25);
          v150 = *(v105 + 24) >> 15;
          buf.f_bsize = 67109376;
          buf.f_iosize = v149;
          LOWORD(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 2) = v150;
          _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "=diag=     payload: %u (trunc? %d)", &buf, 0xEu);
        }

        _MBLog(@"Df", "=diag=     payload: %u (trunc? %d)", *(v105 + 25), *(v105 + 24) >> 15);
      }

      v152 = MBGetDefaultLog(v151);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = v152;
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
        {
          v154 = *(v105 + 13);
          buf.f_bsize = 67109120;
          buf.f_iosize = v154;
          _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "=diag=     refcnt:  %u", &buf, 8u);
        }

        _MBLog(@"Df", "=diag=     refcnt:  %u", *(v105 + 13));
      }

      v156 = MBGetDefaultLog(v155);
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
      {
        v157 = v156;
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          v158 = *(v105 + 28);
          v159 = *(v105 + 29);
          buf.f_bsize = 67109376;
          buf.f_iosize = v158;
          LOWORD(buf.f_blocks) = 1024;
          *(&buf.f_blocks + 2) = v159;
          _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "=diag=     version: %u.%u", &buf, 0xEu);
        }

        _MBLog(@"Df", "=diag=     version: %u.%u", *(v105 + 28), *(v105 + 29));
      }

      v161 = MBGetDefaultLog(v160);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        v162 = v161;
        if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
        {
          v163 = *(v105 + 15);
          buf.f_bsize = 67109120;
          buf.f_iosize = v163;
          _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEFAULT, "=diag=     flags:   %#x", &buf, 8u);
        }

        _MBLog(@"Df", "=diag=     flags:   %#x", *(v105 + 15));
      }

      v165 = MBGetDefaultLog(v164);
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
      {
        v166 = v165;
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
        {
          v167 = *(v105 + 16);
          buf.f_bsize = 67109120;
          buf.f_iosize = v167;
          _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "=diag=     class:   %#x", &buf, 8u);
        }

        _MBLog(@"Df", "=diag=     class:   %#x", *(v105 + 16));
      }

      v169 = MBGetDefaultLog(v168);
      if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
      {
        v170 = v169;
        if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
        {
          v171 = sub_10000D644(*(v105 + 17));
          buf.f_bsize = 138412290;
          *&buf.f_iosize = v171;
          _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "=diag=     os:      %@", &buf, 0xCu);
        }

        v172 = sub_10000D644(*(v105 + 17));
        _MBLog(@"Df", "=diag=     os:      %@", v172);
      }

      v174 = MBGetDefaultLog(v173);
      if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
      {
        v175 = v174;
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
        {
          v176 = *(v105 + 36);
          buf.f_bsize = 67109120;
          buf.f_iosize = v176;
          _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "=diag=     rev:     %u", &buf, 8u);
        }

        _MBLog(@"Df", "=diag=     rev:     %u", *(v105 + 36));
      }

      v178 = MBGetDefaultLog(v177);
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        v179 = v178;
        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
        {
          v180 = *(v105 + 37);
          buf.f_bsize = 67109120;
          buf.f_iosize = v180;
          _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "=diag=     len:     %u", &buf, 8u);
        }

        _MBLog(@"Df", "=diag=     len:     %u", *(v105 + 37));
      }

      v182 = MBGetDefaultLog(v181);
      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
      {
        v183 = v182;
        if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
        {
          v184 = *(v105 + 83);
          buf.f_bsize = 67109120;
          buf.f_iosize = v184;
          _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "=diag=   refcnt:       %u", &buf, 8u);
        }

        _MBLog(@"Df", "=diag=   refcnt:       %u", *(v105 + 83));
      }

      v186 = MBGetDefaultLog(v185);
      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
      {
        v187 = v186;
        if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
        {
          v188 = *(v105 + 85);
          buf.f_bsize = 67109120;
          buf.f_iosize = v188;
          _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEFAULT, "=diag=   num extents:  %u", &buf, 8u);
        }

        _MBLog(@"Df", "=diag=   num extents:  %u", *(v105 + 85));
      }

      if (*(v105 + 85))
      {
        v190 = 0;
        v191 = v105 + 197;
        do
        {
          v192 = MBGetDefaultLog(v189);
          if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
          {
            v193 = v192;
            if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
            {
              v194 = *(v191 - 25);
              v195 = *(v191 - 21);
              v196 = *(v191 - 17);
              buf.f_bsize = 134218496;
              *&buf.f_iosize = v194;
              WORD2(buf.f_blocks) = 2048;
              *(&buf.f_blocks + 6) = v195;
              HIWORD(buf.f_bfree) = 2048;
              buf.f_bavail = v196;
              _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_DEFAULT, "=diag=       0x%llx:+%lld (crid %llu)", &buf, 0x20u);
            }

            _MBLog(@"Df", "=diag=       0x%llx:+%lld (crid %llu)", *(v191 - 25), *(v191 - 21), *(v191 - 17));
          }

          v198 = MBGetDefaultLog(v197);
          if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
          {
            v199 = v198;
            if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
            {
              v200 = (*(v191 - 13) >> 14) & 1;
              buf.f_bsize = 67109120;
              buf.f_iosize = v200;
              _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "=diag=       exists?  %u", &buf, 8u);
            }

            _MBLog(@"Df", "=diag=       exists?  %u", (*(v191 - 13) >> 14) & 1);
          }

          v202 = MBGetDefaultLog(v201);
          if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
          {
            v203 = v202;
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
            {
              v204 = *(v191 - 12);
              v205 = *(v191 - 13) >> 15;
              buf.f_bsize = 67109376;
              buf.f_iosize = v204;
              LOWORD(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 2) = v205;
              _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "=diag=       payload: %u (trunc? %d)", &buf, 0xEu);
            }

            _MBLog(@"Df", "=diag=       payload: %u (trunc? %d)", *(v191 - 12), *(v191 - 13) >> 15);
          }

          v207 = MBGetDefaultLog(v206);
          if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
          {
            v208 = v207;
            if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
            {
              v209 = *(v191 - 11);
              buf.f_bsize = 67109120;
              buf.f_iosize = v209;
              _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "=diag=       refcnt:  %u", &buf, 8u);
            }

            _MBLog(@"Df", "=diag=       refcnt:  %u", *(v191 - 11));
          }

          v211 = MBGetDefaultLog(v210);
          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            v212 = v211;
            if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
            {
              v213 = *(v191 - 9);
              v214 = *(v191 - 8);
              buf.f_bsize = 67109376;
              buf.f_iosize = v213;
              LOWORD(buf.f_blocks) = 1024;
              *(&buf.f_blocks + 2) = v214;
              _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "=diag=       version: %u.%u", &buf, 0xEu);
            }

            _MBLog(@"Df", "=diag=       version: %u.%u", *(v191 - 9), *(v191 - 8));
          }

          v216 = MBGetDefaultLog(v215);
          if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
          {
            v217 = v216;
            if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
            {
              v218 = *(v191 - 7);
              buf.f_bsize = 67109120;
              buf.f_iosize = v218;
              _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "=diag=       flags:   %#x", &buf, 8u);
            }

            _MBLog(@"Df", "=diag=       flags:   %#x", *(v191 - 7));
          }

          v220 = MBGetDefaultLog(v219);
          if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
          {
            v221 = v220;
            if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
            {
              v222 = *(v191 - 5);
              buf.f_bsize = 67109120;
              buf.f_iosize = v222;
              _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "=diag=       class:   %#x", &buf, 8u);
            }

            _MBLog(@"Df", "=diag=       class:   %#x", *(v191 - 5));
          }

          v224 = MBGetDefaultLog(v223);
          if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
          {
            v225 = v224;
            if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
            {
              v226 = *(v191 - 3);
              v227 = (v226 << 8) >> 24;
              if (v227 > 0x7F)
              {
                v228 = __maskrune((v226 << 8) >> 24, 0x100uLL);
              }

              else
              {
                v228 = _DefaultRuneLocale.__runetype[v227] & 0x100;
              }

              if (v228)
              {
                v229 = @"%u%c%u";
              }

              else
              {
                v229 = @"%u-%c-%u";
              }

              v230 = [NSString stringWithFormat:v229, HIBYTE(v226), ((v226 << 8) >> 24), v226];
              buf.f_bsize = 138412290;
              *&buf.f_iosize = v230;
              _os_log_impl(&_mh_execute_header, v225, OS_LOG_TYPE_DEFAULT, "=diag=       os:      %@", &buf, 0xCu);
            }

            v231 = *(v191 - 3);
            v232 = (v231 << 8) >> 24;
            if (v232 > 0x7F)
            {
              v233 = __maskrune((v231 << 8) >> 24, 0x100uLL);
            }

            else
            {
              v233 = _DefaultRuneLocale.__runetype[v232] & 0x100;
            }

            if (v233)
            {
              v234 = @"%u%c%u";
            }

            else
            {
              v234 = @"%u-%c-%u";
            }

            v235 = [NSString stringWithFormat:v234, HIBYTE(v231), ((v231 << 8) >> 24), v231];
            _MBLog(@"Df", "=diag=       os:      %@", v235);
          }

          v237 = MBGetDefaultLog(v236);
          if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
          {
            v238 = v237;
            if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
            {
              v239 = *(v191 - 1);
              buf.f_bsize = 67109120;
              buf.f_iosize = v239;
              _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "=diag=       rev:     %u", &buf, 8u);
            }

            _MBLog(@"Df", "=diag=       rev:     %u", *(v191 - 1));
          }

          v241 = MBGetDefaultLog(v240);
          if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
          {
            v242 = v241;
            if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
            {
              v243 = *v191;
              buf.f_bsize = 67109120;
              buf.f_iosize = v243;
              _os_log_impl(&_mh_execute_header, v242, OS_LOG_TYPE_DEFAULT, "=diag=       len:     %u", &buf, 8u);
            }

            _MBLog(@"Df", "=diag=       len:     %u", *v191);
          }

          ++v190;
          v191 += 156;
        }

        while (v190 < *(v105 + 85));
      }
    }

    else
    {
      v111 = MBGetDefaultLog(v120);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v111 = v111;
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 136315138;
          *&buf.f_iosize = v262;
          _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "=diag= %s does not have associated crypto dstreams", &buf, 0xCu);
        }

        _MBLog(@"Df", "=diag= %s does not have associated crypto dstreams");
      }

LABEL_203:
    }

    free(v105);
    sub_10000D6E8(v262);
    v121 = getxattr(v262, "com.apple.ResourceFork", 0, 0, 0, 0);
    v1 = v261;
    if (v121 != -1)
    {
      v122 = MBGetDefaultLog(v121);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        v123 = v122;
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          buf.f_bsize = 136315138;
          *&buf.f_iosize = v262;
          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "=diag= %s is a compressed file", &buf, 0xCu);
        }

        _MBLog(@"Df", "=diag= %s is a compressed file", v262);
      }

      v124 = [v261 stringByAppendingPathComponent:@"/..namedfork/rsrc"];
      sub_10000D6E8([v124 fileSystemRepresentation]);
    }

    v84 = close(v264);
  }

  v20 = MBGetDefaultLog(v84);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v125 = v20;
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138543362;
      *&buf.f_iosize = v1;
      _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "=diag= Finished dumping diagnostics for %{public}@", &buf, 0xCu);
    }

    _MBLog(@"Df", "=diag= Finished dumping diagnostics for %{public}@", v1);
  }

LABEL_215:

LABEL_216:
}

id sub_10000D644(unsigned int a1)
{
  v2 = ((a1 << 8) >> 24);
  if (v2 > 0x7F)
  {
    v3 = __maskrune((a1 << 8) >> 24, 0x100uLL);
  }

  else
  {
    v3 = _DefaultRuneLocale.__runetype[v2] & 0x100;
  }

  if (v3)
  {
    v4 = @"%u%c%u";
  }

  else
  {
    v4 = @"%u-%c-%u";
  }

  v5 = [NSString stringWithFormat:v4, HIBYTE(a1), v2, a1];

  return v5;
}

void sub_10000D6E8(const char *a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0xD59A0561uLL);
  if (!v2)
  {
    sub_100014834();
  }

  v3 = v2;
  *v2 = 0;
  v2[1] = 0;
  v30 = 0u;
  v29 = 0u;
  v23 = xmmword_100018E80;
  v24 = 0;
  v25 = v2;
  v27 = 0;
  v28 = 0;
  v26 = 16;
  if (fsctl(a1, 0xC0584A1EuLL, &v23, 0))
  {
    free(v3);
    v5 = MBGetDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *__error();
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d", buf, 8u);
      v21 = *__error();
      _MBLog(@"Df", "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d", v21);
    }

LABEL_5:

    return;
  }

  if (!v28)
  {
    free(v3);
    v5 = MBGetDefaultLog(v18);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) returned zero buffer entries", buf, 2u);
      _MBLog(@"Df", "=diag= fsctl(APFSIOC_DEBUG_STATS) returned zero buffer entries");
    }

    goto LABEL_5;
  }

  v7 = malloc_type_malloc(0x4E200uLL, 0x100004071F2C783uLL);
  if (v7)
  {
    v8 = v7;
    v9 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v3;
      v11 = v3[1];
      *buf = 134218240;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=diag= Dstream id %llu, dstream size %llu bytes", buf, 0x16u);
      _MBLog(@"Df", "=diag= Dstream id %llu, dstream size %llu bytes", *v3, v3[1]);
    }

    for (i = 0; ; i = *(v14 - 7) + *(v14 - 8))
    {
      bzero(v8, 0x4E200uLL);
      v39 = 0;
      v40 = 0;
      v41 = 0;
      *buf = xmmword_100018E90;
      *&buf[16] = 10;
      v34 = v8;
      v35 = 320000;
      v36 = i;
      v37 = *v3;
      v38 = 0;
      v13 = fsctl(a1, 0xC0584A1EuLL, buf, 0);
      if (v13)
      {
        break;
      }

      if (!v38)
      {
        v19 = MBGetDefaultLog(v13);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 134217984;
          *v32 = i;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) for FUSION_DEBUG_STATS_PURE_FEXTS_ONLY returned zero buffer entries at offset %lld", v31, 0xCu);
          _MBLog(@"Df", "=diag= fsctl(APFSIOC_DEBUG_STATS) for FUSION_DEBUG_STATS_PURE_FEXTS_ONLY returned zero buffer entries at offset %lld");
        }

        goto LABEL_22;
      }

      v14 = &v8[64 * v38];
      v15 = MBGetDefaultLog(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v14 - 8);
        v17 = *(v14 - 7);
        *v31 = 134218240;
        *v32 = v16;
        *&v32[8] = 2048;
        *&v32[10] = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=diag= Extent offset %lld and length %lld", v31, 0x16u);
        _MBLog(@"Df", "=diag= Extent offset %lld and length %lld", *(v14 - 8), *(v14 - 7));
      }
    }

    v19 = MBGetDefaultLog(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *__error();
      *v31 = 67109376;
      *v32 = v20;
      *&v32[4] = 2048;
      *&v32[6] = i;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d, cannot get extents at offset %lld", v31, 0x12u);
      v22 = *__error();
      _MBLog(@"Df", "=diag= fsctl(APFSIOC_DEBUG_STATS) failed: %{errno}d, cannot get extents at offset %lld", v22, i);
    }

LABEL_22:

    free(v8);
  }

  free(v3);
}

uint64_t MBSimpleChecksumForString(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = &v1[v2];
  do
  {
    v5 = v4 - v1;
    if ((v4 - v1) < 4)
    {
      switch(v5)
      {
        case 1:
          v6 = *v1 << 24;
          v7 = 1;
          break;
        case 2:
          v6 = (v1[1] << 16) | (*v1 << 24);
          v7 = 2;
          break;
        case 3:
          v6 = (v1[1] << 16) | (*v1 << 24) | (v1[2] << 8);
          v7 = 3;
          break;
        default:
          sub_100014860();
      }
    }

    else
    {
      v6 = (v1[1] << 16) | (*v1 << 24) | (v1[2] << 8) | v1[3];
      v7 = 4;
    }

    v1 += v7;
    v3 += v6;
  }

  while (v1 < v4);
  return v3;
}

id MBGetDefaultLog(uint64_t a1)
{
  if (qword_10002A1C8 != -1)
  {
    sub_1000148E4();
  }

  v2 = qword_10002A1C0;

  return v2;
}

void sub_10000E638(id a1)
{
  qword_10002A1C0 = os_log_create("com.apple.mobilebackup", "Default");

  _objc_release_x1();
}

id MBGetLogDateFormatter(uint64_t a1)
{
  if (qword_10002A1D8 != -1)
  {
    sub_1000148F8();
  }

  v2 = qword_10002A1D0;

  return v2;
}

void sub_10000E6C0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10002A1D0;
  qword_10002A1D0 = v1;

  [qword_10002A1D0 setFormatterBehavior:1040];
  v3 = qword_10002A1D0;

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

const __CFString *MBGetLogDir(uint64_t a1, uint64_t a2)
{
  if (MBIsInternalInstall(a1, a2))
  {
    return @"/var/mobile/Library/Logs/MobileBackup";
  }

  else
  {
    return @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/MobileBackup";
  }
}

id sub_10000E750(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [NSMutableString stringWithCapacity:v2];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [v1 characterAtIndex:v5];
      if (v4 > 1)
      {
        break;
      }

      if (v4)
      {
        v9 = v8 - 64;
        if (v9 <= 0x3B)
        {
          if (((1 << (v8 - 64)) & 0x129C2FA010000E3) == 0)
          {
            if (v9 != 16)
            {
              if (v9 == 59)
              {
                if (v7 < v5)
                {
                  v10 = v3;
                  v11 = [v1 substringWithRange:{v7, v5 - v7}];
                  [v10 appendString:v11];
                }

                v4 = 2;
                v7 = v5;
                goto LABEL_20;
              }

              goto LABEL_26;
            }

LABEL_23:
            if (v6 < v5)
            {
              v13 = v3;
              v14 = [v1 substringWithRange:{v6, v5 - v6}];
              [v13 appendString:v14];
            }

            [v3 appendString:@"p"];
            v6 = v5 + 1;
          }

LABEL_19:
          v4 = 0;
          v7 = v6;
          goto LABEL_20;
        }

LABEL_26:
        if (v8 != 37)
        {
          v4 = 3;
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v4 = v8 == 37;
LABEL_20:
      if (v2 == ++v5)
      {
        goto LABEL_29;
      }
    }

    if (v4 == 2)
    {
      if (v8 == 125)
      {
        v6 = v5 + 1;
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_20;
    }

    v12 = v8 - 64;
    if (v12 > 0x38)
    {
      goto LABEL_26;
    }

    if (((1 << (v8 - 64)) & 0x129C2FA010000E3) != 0)
    {
      goto LABEL_19;
    }

    if (v12 == 16)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v7 = 0;
LABEL_29:
  v15 = v2 > v7;
  v16 = &v2[-v7];
  if (v15)
  {
    v17 = v3;
    v18 = [v1 substringWithRange:{v7, v16}];
    [v17 appendString:v18];
  }

  return v3;
}

void _MBLog(void *a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = a1;
  if (sFileLoggingEnabled == 1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [NSString stringWithCString:a2 encoding:4];
    v6 = [NSString alloc];
    v7 = sub_10000E750(v5);
    v8 = [v6 initWithFormat:v7 arguments:va];

    sub_10000EA64(v3, v8);
    objc_autoreleasePoolPop(v4);
  }
}

void sub_10000EA64(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (qword_10002A1F8 != -1)
  {
    sub_10001490C();
  }

  v6 = MBGetLogDateFormatter(v4);
  v7 = +[NSDate date];
  v8 = [v6 stringFromDate:v7];

  v77 = 0;
  if (pthread_threadid_np(0, &v77))
  {
    v9 = 0;
    v77 = 0;
  }

  else
  {
    v9 = v77;
  }

  v10 = [NSString stringWithFormat:@"%@ %d.%llx %@: %@\n", v8, dword_10002A1F0, v9, v3, v5];
  v11 = [v10 UTF8String];
  v12 = strlen(v11);
  v13 = pthread_mutex_lock(&stru_100029FF0);
  if (qword_10002A1E8)
  {
    if (qword_10002A210 != -1)
    {
      sub_100014920();
    }

    if (qword_10002A208 > qword_10002A200)
    {
      goto LABEL_79;
    }

    v13 = qword_10002A1E8;
    if (qword_10002A1E8)
    {
      v13 = fclose(qword_10002A1E8);
    }
  }

  if (qword_10002A220 != -1)
  {
    sub_100014948();
  }

  if (byte_10002A218 == 1)
  {
    v15 = MBGetLogDir(v13, v14);
    v16 = [v15 fileSystemRepresentation];
    if (mkdir(v16, 0x1C0u) && *__error() != 17)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100014970();
      }
    }

    else if (!geteuid())
    {
      memset(&v85, 0, sizeof(v85));
      if (lstat(v16, &v85))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000149F4();
        }
      }

      else
      {
        v58 = MBMobileUID();
        if (v85.st_uid == v58 && v85.st_gid == v58 || !lchown(v16, v58, v58))
        {
          if ((~v85.st_mode & 0x1C0) != 0 && lchmod(v16, 0x1C0u) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100014AFC();
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100014A78();
        }
      }
    }
  }

  if (qword_10002A238 != -1)
  {
    sub_100014B80();
  }

  if ((byte_10002A230 & 1) == 0)
  {
    qword_10002A1E8 = 0;
    goto LABEL_81;
  }

  v17 = MBGetLogDir(v13, v14);
  v69 = sub_10000F390();
  v18 = [v17 stringByAppendingPathComponent:?];
  qword_10002A200 = 0;
  memset(&v85, 0, sizeof(v85));
  v70 = v17;
  if (!lstat([v18 fileSystemRepresentation], &v85))
  {
    if (qword_10002A210 != -1)
    {
      sub_100014920();
    }

    v71 = qword_10002A208;
    if (qword_10002A258 != -1)
    {
      sub_100014BA8();
    }

    v75 = qword_10002A250;
    v72 = time(0);
    st_size = v85.st_size;
    if (v71 < v85.st_size || (qword_10002A200 = v85.st_size, v72 > v85.st_birthtimespec.tv_sec) && v72 - v85.st_birthtimespec.tv_sec >= 86401)
    {
      v19 = +[NSFileManager defaultManager];
      if (qword_10002A248 != -1)
      {
        sub_100014BD0();
      }

      if (byte_10002A240)
      {
        v62 = v18;
        v63 = v12;
        v64 = v11;
        v65 = v10;
        v66 = v8;
        v67 = v5;
        v68 = v3;
        v73 = v19;
        v20 = [v19 contentsOfDirectoryAtPath:v17 error:0];
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_10000F648;
        v83[3] = &unk_100024A10;
        v21 = v69;
        v84 = v21;
        v60 = [NSPredicate predicateWithBlock:v83];
        v61 = v20;
        v59 = [v20 filteredArrayUsingPredicate:?];
        v22 = [v59 sortedArrayUsingComparator:&stru_100024AB0];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v23 = v22;
        v24 = [v22 countByEnumeratingWithState:&v79 objects:v86 count:16];
        v25 = v71;
        if (!v24)
        {
          goto LABEL_65;
        }

        v26 = v24;
        v27 = *v80;
        while (1)
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v80 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v79 + 1) + 8 * i);
            v30 = [v29 stringByDeletingPathExtension];
            v31 = [v30 isEqualToString:v21];

            if ((v31 & 1) == 0)
            {
              if (([v29 isEqualToString:v21] & 1) == 0)
              {
                continue;
              }

              v33 = 0;
LABEL_48:
              v34 = [v17 stringByAppendingPathComponent:v29];
              v35 = v34;
              if (v75 <= v33)
              {
                if (!lstat([v34 fileSystemRepresentation], &v85) && v72 > v85.st_mtimespec.tv_sec && v72 - v85.st_mtimespec.tv_sec >= 864001)
                {
                  goto LABEL_59;
                }
              }

              else if (v25 < st_size)
              {
                if (v75 > (v33 + 1))
                {
                  v36 = [NSNumber numberWithInt:?];
                  [v36 description];
                  v38 = v37 = v17;
                  v39 = [v21 stringByAppendingPathExtension:v38];
                  v40 = [v37 stringByAppendingPathComponent:v39];

                  v25 = v71;
                  v78 = 0;
                  LOBYTE(v36) = [v73 moveItemAtPath:v35 toPath:v40 error:&v78];
                  v41 = v78;
                  v42 = v41;
                  if ((v36 & 1) == 0)
                  {
                    v43 = [v41 domain];
                    if ([v43 isEqualToString:NSCocoaErrorDomain])
                    {
                      v44 = [v42 code];

                      v45 = v44 == 513;
                      v25 = v71;
                      if (v45)
                      {
                        [v73 removeItemAtPath:v35 error:0];
                      }
                    }

                    else
                    {
                    }
                  }

                  v17 = v70;
                  goto LABEL_62;
                }

LABEL_59:
                [v73 removeItemAtPath:v35 error:0];
              }

LABEL_62:

              continue;
            }

            v32 = [v29 pathExtension];
            v33 = [v32 intValue];

            if ((v33 & 0x80000000) == 0)
            {
              goto LABEL_48;
            }
          }

          v26 = [v23 countByEnumeratingWithState:&v79 objects:v86 count:16];
          if (!v26)
          {
LABEL_65:

            v5 = v67;
            v3 = v68;
            v10 = v65;
            v8 = v66;
            v12 = v63;
            v11 = v64;
            v18 = v62;
            v19 = v73;
            goto LABEL_68;
          }
        }
      }

      [v19 removeItemAtPath:v18 error:0];
LABEL_68:
    }
  }

  v46 = v10;
  v47 = v8;
  v48 = v5;
  v49 = v3;
  v50 = v12;
  v51 = v11;
  v52 = v18;
  v53 = fopen([v18 fileSystemRepresentation], "a");
  if (v53)
  {
    v76 = MBMobileUID();
    v54 = fileno(v53);
    if (!fstat(v54, &v85))
    {
      st_uid = v85.st_uid;
      if (v85.st_uid != v76 && st_uid == geteuid())
      {
        fchown(v54, v76, 0xFFFFFFFF);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100014BF8();
  }

  qword_10002A1E8 = v53;
  v3 = v49;
  v5 = v48;
  v8 = v47;
  v10 = v46;
  if (v53)
  {
    v11 = v51;
    v12 = v50;
    if (ftello(v53))
    {
      fputs("\n", qword_10002A1E8);
      ++qword_10002A200;
    }

LABEL_79:
    if (qword_10002A1E8)
    {
      qword_10002A200 += v12;
      fputs(v11, qword_10002A1E8);
      v56 = qword_10002A1E0;
      v57 = dispatch_time(0, 3000000000);
      dispatch_source_set_timer(v56, v57, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

LABEL_81:
  pthread_mutex_unlock(&stru_100029FF0);
}

id sub_10000F390()
{
  v0 = +[NSProcessInfo processInfo];
  v1 = [v0 processName];

  if (!v1 || !strcmp([v1 UTF8String], "backupd"))
  {
    [NSString stringWithFormat:@"%@.%@", @"MobileBackup", @"log", v4];
  }

  else
  {
    [NSString stringWithFormat:@"%@-%@.%@", @"MobileBackup", v1, @"log"];
  }
  v2 = ;

  return v2;
}

void sub_10000F46C(id a1)
{
  dword_10002A1F0 = getpid();
  v1 = dispatch_get_global_queue(17, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v1);
  v3 = qword_10002A1E0;
  qword_10002A1E0 = v2;

  dispatch_source_set_timer(qword_10002A1E0, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(qword_10002A1E0, &stru_100024A70);
  v4 = qword_10002A1E0;

  dispatch_resume(v4);
}

void sub_10000F50C(id a1)
{
  pthread_mutex_lock(&stru_100029FF0);
  dispatch_source_set_timer(qword_10002A1E0, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  if (qword_10002A1E8)
  {
    fflush(qword_10002A1E8);
  }

  pthread_mutex_unlock(&stru_100029FF0);
}

void sub_10000F56C(id a1)
{
  v1 = getenv("MBMaxLogSize");
  if (v1)
  {
    v2 = strtol(v1, 0, 10);
    if ((v2 - 1) >= 0x7FFFFFFFFFFFFFFELL)
    {
      v3 = 10485760;
    }

    else
    {
      v3 = v2;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MBMaxLogSize=%ld", &v4, 0xCu);
    }
  }

  else
  {
    v3 = 10485760;
  }

  qword_10002A208 = v3;
}

void sub_10000F660(id a1)
{
  v2 = MBGetLogDir(a1, v1);
  v6 = [v2 stringByDeletingLastPathComponent];

  getpid();
  v3 = v6;
  [v6 fileSystemRepresentation];
  byte_10002A218 = sandbox_check() == 0;
  v4 = os_log_set_hook();
  v5 = qword_10002A228;
  qword_10002A228 = v4;
}

void sub_10000F724(id a1, unsigned __int8 a2, os_log_message_s *a3)
{
  v4 = a2;
  if (qword_10002A228)
  {
    (*(qword_10002A228 + 16))();
  }

  var16 = a3->var16;
  if (var16)
  {
    if (!strcmp(var16, "MBSwift"))
    {
      v6 = os_log_copy_message_string();
      if (v6)
      {
        v7 = v6;
        if (v4 <= 1)
        {
          if (!v4)
          {
            v8 = @"Df";
            goto LABEL_19;
          }

          if (v4 == 1)
          {
            v8 = @"I ";
            goto LABEL_19;
          }
        }

        else
        {
          switch(v4)
          {
            case 2:
              v8 = @"Db";
              goto LABEL_19;
            case 16:
              v8 = @"E ";
              goto LABEL_19;
            case 17:
              v8 = @"F ";
LABEL_19:
              v9 = [NSString stringWithUTF8String:v6];
              sub_10000EA64(v8, v9);

              free(v7);
              return;
          }
        }

        v8 = @"???";
        goto LABEL_19;
      }
    }
  }
}

void sub_10000F854(id a1)
{
  v3 = MBGetLogDir(a1, v1);
  getpid();
  v2 = v3;
  [v3 fileSystemRepresentation];
  byte_10002A230 = sandbox_check() == 0;
}

void sub_10000F8E4(id a1)
{
  v2 = MBGetLogDir(a1, v1);
  if (v2)
  {
    v8 = v2;
    getpid();
    v3 = v8;
    v7 = [v8 fileSystemRepresentation];
    if (sandbox_check())
    {
      v4 = 0;
    }

    else
    {
      v5 = +[NSProcessInfo processInfo];
      v6 = [v5 processName];

      v4 = ([v6 isEqualToString:@"healthd"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"imagent");
    }

    byte_10002A240 = v4;
    v2 = v8;
  }
}

void sub_10000F9D8(id a1)
{
  v1 = getenv("MBMaxLogCount");
  v2 = 10;
  if (v1)
  {
    v3 = strtol(v1, 0, 10);
    if ((v3 - 1) < 0x7FFFFFFFFFFFFFFELL)
    {
      v2 = v3;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MBMaxLogCount=%ld", &v4, 0xCu);
    }
  }

  qword_10002A250 = v2;
}

void sub_10000FAC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t MBIsInternalInstall(uint64_t a1, uint64_t a2)
{
  if (qword_10002A268 != -1)
  {
    sub_100014C7C();
  }

  return byte_10002A260;
}

void sub_10000FB18(id a1)
{
  v1 = MGCopyAnswer();
  byte_10002A260 = [v1 BOOLValue];
  if (v1)
  {

    CFRelease(v1);
  }
}

void sub_10001086C(uint64_t a1)
{
  v2 = [*(a1 + 32) encodingMethod];
  if ((v2 - 2) < 2)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v5 _archive];
    }

    else
    {
      [v5 _unarchive];
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
LABEL_5:
    v3 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v3 _compress];
    }

    else
    {
      [v3 _decompress];
    }

    v4 = LABEL_7:;
    goto LABEL_13;
  }

  if (v2 == 255)
  {
    [*(a1 + 32) setEncodingMethod:1];
    goto LABEL_5;
  }

  v4 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 1, @"Unknown encoding method %ld", [*(a1 + 32) encodingMethod]);
LABEL_13:
  v6 = v4;
  [*(a1 + 32) _finishWithError:v4];
  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_100010F08(int a1, int *a2, void *a3)
{
  if (!a2)
  {
    sub_100014F48();
  }

  *a2 = 0;
  if (a1 <= 1)
  {
    if (a1 != -1)
    {
      if (a1 == 1)
      {
        v4 = 0;
        v5 = 517;
LABEL_10:
        *a2 = v5;
        v6 = 1;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_9:
    v4 = 0;
    v5 = 2049;
    goto LABEL_10;
  }

  if (a1 == 2)
  {
    goto LABEL_9;
  }

  if (a1 == 3)
  {
    v4 = 0;
    v5 = 774;
    goto LABEL_10;
  }

LABEL_12:
  v4 = [MBError errorWithCode:1 format:@"Invalid file compression method %ld", a1];
  v6 = v4 == 0;
  if (a3 && v4)
  {
    v4 = v4;
    v6 = 0;
    *a3 = v4;
  }

LABEL_11:

  return v6;
}

uint64_t sub_100010FDC(unsigned int a1, char *a2, void *a3)
{
  if (!a2)
  {
    sub_100014FA0();
  }

  *a2 = 0;
  switch(a1)
  {
    case 0x205u:
      v4 = 0;
      v6 = 1;
      *a2 = 1;
      goto LABEL_17;
    case 0x306u:
      v4 = 0;
      v5 = 3;
      goto LABEL_7;
    case 0x801u:
      v4 = 0;
      v5 = 2;
LABEL_7:
      *a2 = v5;
LABEL_8:
      v6 = 1;
      goto LABEL_17;
  }

  v4 = [MBError errorWithCode:1 format:@"Invalid compression algorithm %ld", a1];
  if (!v4)
  {
    if (*a2 == 255 || !*a2)
    {
      sub_100014F74();
    }

    v4 = 0;
    goto LABEL_8;
  }

  if (a3)
  {
    v4 = v4;
    v6 = 0;
    *a3 = v4;
  }

  else
  {
    v6 = 0;
  }

LABEL_17:

  return v6;
}

void sub_100012B40(id a1)
{
  v3 = NSTemporaryDirectory();
  v1 = [v3 stringByAppendingPathComponent:@"tmpbackupXXXXXXXX"];
  v2 = qword_10002A270;
  qword_10002A270 = v1;
}

void sub_100013590(id a1)
{
  qword_10002A280 = dispatch_semaphore_create(2);

  _objc_release_x1();
}

void sub_1000135C8(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.encoding", attr);
  v3 = qword_10002A290;
  qword_10002A290 = v2;
}

void sub_100013650(id a1)
{
  qword_10002A2A0 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

void sub_100013688(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.decoding", attr);
  v3 = qword_10002A2B0;
  qword_10002A2B0 = v2;
}

int main(int argc, const char **argv, const char **envp)
{
  signal(13, 1);
  v3 = +[NSXPCListener serviceListener];
  v4 = +[MBHelperServiceDelegate sharedInstance];
  [v3 setDelegate:v4];

  [v3 resume];
  return 0;
}

void sub_100013BAC(id a1)
{
  v3 = NSTemporaryDirectory();
  v1 = [v3 stringByAppendingPathComponent:@"tmpbackupencodeXXXXXXXX"];
  v2 = qword_10002A2C0;
  qword_10002A2C0 = v1;
}

void sub_100013C08(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  unlink([*(a1 + 32) fileSystemRepresentation]);
  close(*(a1 + 64));
  v3 = *(a1 + 56);
  v4 = [*(a1 + 40) error];
  (*(v3 + 16))(v3, v4);

  v6 = MBGetDefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = [v7 error];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Finished task:%@, error:%@", buf, 0x16u);

    v9 = *(a1 + 40);
    v10 = [v9 error];
    _MBLog(@"I ", "Finished task:%@, error:%@", v9, v10);
  }

  [*(a1 + 48) idle];
  objc_autoreleasePoolPop(v2);
}

void sub_100014970()
{
  __error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v0, "mkdir failed at %s: %{errno}d", v1, v2, v3, v4);
}

void sub_1000149F4()
{
  __error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v0, "lstat failed at %s: %{errno}d", v1, v2, v3, v4);
}

void sub_100014A78()
{
  __error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v0, "lchown failed at %s: %{errno}d", v1, v2, v3, v4);
}

void sub_100014AFC()
{
  __error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v0, "lchmod failed at %s: %{errno}d", v1, v2, v3, v4);
}

void sub_100014BF8()
{
  __error();
  sub_10000FAAC();
  sub_10000FAC4(&_mh_execute_header, &_os_log_default, v0, "Failed to open MobileBackup log file at %@: %{errno}d", v1, v2, v3, v4);
}