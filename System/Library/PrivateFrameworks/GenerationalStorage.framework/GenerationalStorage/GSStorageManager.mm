@interface GSStorageManager
+ (BOOL)generationStorageIsDisabledForStatFSInfo:(statfs *)info fd:(int)fd;
+ (id)_libraryForDisk:(id *)disk createIfNone:(BOOL)none error:(id *)error;
+ (id)createLibraryForDevice:(int)device error:(id *)error;
+ (id)existingLibraryForDevice:(int)device;
+ (void)invalidateLibrary:(id)library;
+ (void)shutdownLibraries;
+ (void)startLibraries;
@end

@implementation GSStorageManager

+ (id)_libraryForDisk:(id *)disk createIfNone:(BOOL)none error:(id *)error
{
  noneCopy = none;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100003858;
  v40 = sub_100003868;
  v41 = 0;
  dispatch_assert_queue_V2(qword_10004C970);
  if (byte_10004C978 != 1)
  {
    var0 = disk->var0;
    pthread_rwlock_rdlock(&stru_10004C5D0);
    v11 = qword_10004C980;
    v12 = [NSNumber numberWithInt:var0];
    v13 = [v11 objectForKeyedSubscript:v12];

    pthread_rwlock_unlock(&stru_10004C5D0);
    v14 = v37[5];
    v37[5] = v13;

    v15 = v37[5];
    if (v15)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000039AC;
      v28[3] = &unk_100040BF8;
      v28[4] = &v36;
      v28[5] = disk;
      [v15 dispatchSync:v28];
    }

    else
    {
      v16 = [[GSManager alloc] initWithDisk:disk createIfNone:noneCopy error:error];
      v17 = v37[5];
      v37[5] = v16;

      if (v37[5])
      {
        pthread_rwlock_wrlock(&stru_10004C5D0);
        v18 = v37[5];
        v19 = qword_10004C980;
        v20 = [NSNumber numberWithInt:disk->var0];
        [v19 setObject:v18 forKeyedSubscript:v20];

        pthread_rwlock_unlock(&stru_10004C5D0);
        v30 = 0;
        v31 = &v30;
        v32 = 0x3032000000;
        v33 = sub_100003858;
        v34 = sub_100003868;
        v35 = 0;
        v21 = v37[5];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100003870;
        v29[3] = &unk_100040BD0;
        v29[4] = &v30;
        v29[5] = &v36;
        [v21 dispatchSync:v29];
        if (error)
        {
          *error = v31[5];
        }

        _Block_object_dispose(&v30, 8);
      }
    }

    v22 = v37[5];
    if (v22)
    {
      if (![v22 isEnabled])
      {
        v8 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:30 userInfo:0];
        v25 = [NSString stringWithFormat:@"The generation storage database on a read-only filesystem is corrupt"];
        v26 = sub_100003164(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          sub_10002567C();
        }

        if (error)
        {
          *error = sub_10000F0F8(107, v25, v8);
        }

        goto LABEL_22;
      }

      v23 = v37[5];
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    goto LABEL_23;
  }

  v8 = [NSString stringWithFormat:@"revisiond is shutting down"];
  v9 = sub_100003164(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000256F4();
  }

  if (error)
  {
    *error = sub_10000F0F8(102, v8, 0);
  }

LABEL_22:

  v24 = 0;
LABEL_23:
  _Block_object_dispose(&v36, 8);

  return v24;
}

+ (id)existingLibraryForDevice:(int)device
{
  v3 = *&device;
  pthread_rwlock_rdlock(&stru_10004C5D0);
  v4 = qword_10004C980;
  v5 = [NSNumber numberWithInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  pthread_rwlock_unlock(&stru_10004C5D0);
  if ([v6 isEnabled])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

+ (void)invalidateLibrary:(id)library
{
  libraryCopy = library;
  v4 = qword_10004C970;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B98;
  block[3] = &unk_100040B00;
  v7 = libraryCopy;
  v5 = libraryCopy;
  dispatch_async(v4, block);
}

+ (id)createLibraryForDevice:(int)device error:(id *)error
{
  v5 = *&device;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100003858;
  v37 = sub_100003868;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100003858;
  v31 = sub_100003868;
  v32 = 0;
  pthread_rwlock_rdlock(&stru_10004C5D0);
  v7 = qword_10004C980;
  v8 = [NSNumber numberWithInt:v5];
  v9 = [v7 objectForKeyedSubscript:v8];

  pthread_rwlock_unlock(&stru_10004C5D0);
  v10 = v34[5];
  v34[5] = v9;

  v11 = v34[5];
  if (!v11)
  {
LABEL_4:
    v12 = sub_100009B34(v5, 2);
    v13 = v12;
    memset(&v43, 0, 512);
    if ((v12 & 0x80000000) != 0 || fstatfs(v12, &v43) < 0)
    {
      v21 = [NSString stringWithFormat:@"fstatfs(%d) failed", v5];
      v22 = __error();
      v23 = *v22;
      v24 = sub_100003164(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v26 = strerror(v23);
        *buf = 138412802;
        *&buf[4] = v21;
        *&buf[12] = 1024;
        *&buf[14] = v23;
        *&buf[18] = 2080;
        *&buf[20] = v26;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] %@; error %d (%s)", buf, 0x1Cu);
      }

      if (error)
      {
        *error = sub_10000F37C(v23, v21);
      }

      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_26;
      }
    }

    else if ([self _isPermanentStorageSupportedForStatFSInfo:&v43 error:error])
    {
      if ([self generationStorageIsDisabledForStatFSInfo:&v43 fd:v13])
      {
        v14 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:89 userInfo:0];
        v15 = [NSString stringWithFormat:@"storage supported, but explicitely disabled on %s", v43.f_mntonname];
        v16 = sub_100003164(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_10002567C();
        }

        if (error)
        {
          *error = sub_10000F0F8(107, v15, v14);
        }
      }

      else
      {
        *buf = v5;
        buf[4] = (v43.f_flags & 0x4000) != 0;
        buf[5] = v43.f_flags & 1;
        buf[6] = (v43.f_flags & 0x200000) != 0;
        memset(&buf[7], 0, 17);
        sub_100008F80(v43.f_mntonname, &buf[7]);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000041CC;
        block[3] = &unk_100040C20;
        v40 = *buf;
        v41 = *&buf[16];
        block[4] = &v33;
        block[5] = &v27;
        block[6] = self;
        dispatch_sync(qword_10004C970, block);
      }
    }

    close(v13);
LABEL_26:
    if (error)
    {
      *error = v28[5];
    }

    v20 = v34[5];
    goto LABEL_29;
  }

  if ([v11 isEnabled])
  {
    if (v34[5])
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:30 userInfo:0];
  v18 = [NSString stringWithFormat:@"The generation storage database on a read-only filesystem is corrupt"];
  v19 = sub_100003164(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_10002567C();
  }

  if (error)
  {
    *error = sub_10000F0F8(107, v18, v17);
  }

  v20 = 0;
LABEL_29:
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v20;
}

+ (void)startLibraries
{
  v25 = xmmword_100031250;
  v2 = getrlimit(8, &v25);
  if (v2 == -1)
  {
    v3 = sub_100003164(v2);
    if (os_log_type_enabled(v3, 0x90u))
    {
      sub_100025864();
    }
  }

  v25.rlim_cur = 1000;
  v4 = setrlimit(8, &v25);
  if (v4 == -1)
  {
    v5 = sub_100003164(v4);
    if (os_log_type_enabled(v5, 0x90u))
    {
      sub_1000258EC();
    }
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
  v8 = dispatch_queue_create("com.apple.revisiond.volumeManager", v7);
  v9 = qword_10004C970;
  qword_10004C970 = v8;

  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = qword_10004C980;
  qword_10004C980 = v10;

  memset(&v26, 0, 512);
  v12 = statfs("/private/var/mobile", &v26);
  if (v12)
  {
    v24 = sub_100003164(v12);
    if (os_log_type_enabled(v24, 0x90u))
    {
      sub_100025974();
    }

    exit(1);
  }

  dword_10004C698 = v26.f_fsid.val[0];
  v13 = [GSStorageManager createLibraryForDevice:"createLibraryForDevice:error:" error:?];
  v14 = +[UMUserManager sharedManager];
  isMultiUser = [v14 isMultiUser];

  if (isMultiUser)
  {
    v27[0] = 0;
    v27[1] = 0x10000000000;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("unmount-queue", v16);
    v18 = qword_10004C9A0;
    qword_10004C9A0 = v17;

    v19 = sub_100004890(1, v27, 16, 32);
    if ((v19 & 0x80000000) != 0)
    {
      v22 = sub_100003164(v19);
      if (os_log_type_enabled(v22, 0x90u))
      {
        sub_100025A44();
      }
    }

    else
    {
      v20 = ioctl(dword_10004C69C, 0x20007365uLL, 0);
      if ((v20 & 0x80000000) != 0)
      {
        v21 = sub_100003164(v20);
        if (os_log_type_enabled(v21, 0x90u))
        {
          sub_1000259B4();
        }
      }

      pthread_create(&qword_10004C998, 0, sub_100004B08, 0);
    }

    pthread_create(&qword_10004C990, 0, sub_100005068, 0);
  }

  v23 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v23, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_4_HOURS);
  xpc_dictionary_set_uint64(v23, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
  xpc_dictionary_set_string(v23, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v23, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  xpc_dictionary_set_BOOL(v23, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v23, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
  xpc_activity_unregister("com.apple.revisiond.CacheDelete.purgeable-xpc");
  xpc_activity_register("com.apple.revisiond.CacheDelete.purgeable-xpc", v23, &stru_100040D38);
}

+ (void)shutdownLibraries
{
  v2 = dispatch_group_create();
  pthread_rwlock_wrlock(&stru_10004C5D0);
  byte_10004C978 = 1;
  allValues = [qword_10004C980 allValues];
  [qword_10004C980 removeAllObjects];
  pthread_rwlock_unlock(&stru_10004C5D0);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100004884;
        block[3] = &unk_100040B00;
        block[4] = v9;
        dispatch_group_async(v2, v10, block);
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v11 = dword_10004C69C;
  if ((dword_10004C69C & 0x80000000) == 0)
  {
    dword_10004C69C = -1;
    close(v11);
  }

  if (qword_10004C988)
  {
    CFFileDescriptorInvalidate(qword_10004C988);
  }

  if (qword_10004CA38)
  {
    CFRunLoopStop(qword_10004CA38);
  }

  if (qword_10004C990)
  {
    pthread_join(qword_10004C990, 0);
  }

  if (qword_10004C998)
  {
    pthread_join(qword_10004C998, 0);
  }
}

+ (BOOL)generationStorageIsDisabledForStatFSInfo:(statfs *)info fd:(int)fd
{
  if (info->f_fsid.val[0] != dword_10004C698)
  {
    v6 = 0;
    while (1)
    {
      v7 = strlen(off_100040C40[v6]);
      if (!strncmp(info->f_mntonname, off_100040C40[v6], v7))
      {
        break;
      }

      if (++v6 == 2)
      {
        return 1;
      }
    }
  }

  memset(&v11, 0, sizeof(v11));
  APFSVolumeRole();
  if (fstatat(fd, ".DocumentRevisionsDisabled", &v11, 32))
  {
    v8 = __error();
    if (*v8 == 2)
    {
      return 0;
    }

    v10 = sub_100003164(v8);
    if (os_log_type_enabled(v10, 0x90u))
    {
      sub_100025B64();
    }
  }

  else if ((info->f_flags & 0x4000) != 0)
  {
    return *&v11.st_uid == 0;
  }

  return 1;
}

@end