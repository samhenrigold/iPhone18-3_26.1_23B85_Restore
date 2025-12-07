id sub_100000D90(void *a1)
{
  v1 = a1;
  if (qword_1000105D8 != -1)
  {
    sub_1000067A4();
  }

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"DEFAULT";
  }

  v3 = [qword_1000105D0 objectForKey:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [qword_1000105D0 objectForKey:@"DEFAULT"];
  }

  v6 = v5;

  return v6;
}

void sub_100000E24(id a1)
{
  v1 = +[SUCore sharedCore];
  [v1 useDomain:@"com.apple.MobileAsset"];

  v15[0] = @"DEFAULT";
  v14 = os_log_create("com.apple.MobileAsset", [@"DEFAULT" UTF8String]);
  v16[0] = v14;
  v15[1] = @"V2";
  v2 = os_log_create("com.apple.MobileAsset", [@"V2" UTF8String]);
  v16[1] = v2;
  v15[2] = @"Brain";
  v3 = os_log_create("com.apple.MobileAsset", [@"Brain" UTF8String]);
  v16[2] = v3;
  v15[3] = @"SSO";
  v4 = os_log_create("com.apple.MobileAsset", [@"SSO" UTF8String]);
  v16[3] = v4;
  v15[4] = @"PushNotification";
  v5 = os_log_create("com.apple.MobileAsset", [@"PushNotification" UTF8String]);
  v16[4] = v5;
  v15[5] = @"SecureMA";
  v6 = os_log_create("com.apple.MobileAsset", [@"SecureMA" UTF8String]);
  v16[5] = v6;
  v15[6] = @"Manifest";
  v7 = os_log_create("com.apple.MobileAsset", [@"Manifest" UTF8String]);
  v16[6] = v7;
  v15[7] = @"KeyManager";
  v8 = os_log_create("com.apple.MobileAsset", [@"KeyManager" UTF8String]);
  v16[7] = v8;
  v15[8] = @"Auto";
  v9 = os_log_create("com.apple.MobileAsset", [@"Auto" UTF8String]);
  v16[8] = v9;
  v15[9] = @"AutoSet";
  v10 = os_log_create("com.apple.MobileAsset", [@"AutoSet" UTF8String]);
  v16[9] = v10;
  v15[10] = @"AutoStager";
  v11 = os_log_create("com.apple.MobileAsset", [@"AutoStager" UTF8String]);
  v16[10] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:11];
  v13 = qword_1000105D0;
  qword_1000105D0 = v12;
}

uint64_t sub_1000010A4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  if (!v4)
  {
    v15 = sub_100000D90(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "safeAtomicWriteToPath";
      v17 = "Invalid path passed to %{public}s";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    }

LABEL_20:
    v18 = 0;
    goto LABEL_24;
  }

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = sub_100000D90(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "safeAtomicWriteToPath";
      v17 = "Invalid data passed to %{public}s";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v6 = [v4 stringByDeletingLastPathComponent];
  v7 = +[NSUUID UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 stringByAppendingPathComponent:v8];

  if ([v3 writeToFile:v9 atomically:0] && (v10 = objc_msgSend(v9, "fileSystemRepresentation"), v11 = objc_msgSend(v4, "fileSystemRepresentation"), rename(v10, v11, v12), !v13))
  {
    v15 = 0;
    v18 = 1;
  }

  else
  {
    v14 = sub_100000D90(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "safeAtomicWriteToPath";
      v23 = 2114;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s: Failed to write item to path %{public}@", buf, 0x16u);
    }

    if ([v5 fileExistsAtPath:v9 isDirectory:0])
    {
      v20 = 0;
      [v5 removeItemAtPath:v9 error:&v20];
      v15 = v20;
      if (v15)
      {
        v16 = sub_100000D90(@"V2");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v22 = "safeAtomicWriteToPath";
          v23 = 2114;
          v24 = v9;
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s: Atomic write to path failed and failed to remove temp path(%{public}@): %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = 0;
  }

LABEL_24:
  return v18;
}

id sub_100001414(uint64_t a1, uint64_t a2)
{
  if (qword_1000105E0 != -1)
  {
    sub_1000067B8();
  }

  return qword_1000105E8;
}

void sub_100001444(id a1)
{
  size = 0;
  v1 = qword_1000105E8;
  qword_1000105E8 = 0;

  if (sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0))
  {
    v2 = sub_100000D90(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return;
    }

    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    *buf = 67109378;
    LODWORD(v18[0]) = v3;
    WORD2(v18[0]) = 2080;
    *(v18 + 6) = v5;
    v6 = "Could not look up boot session UUID: %d (%s)";
    v7 = v2;
    v8 = 18;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    goto LABEL_5;
  }

  if (!size)
  {
    v2 = sub_100000D90(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 134217984;
    v18[0] = size;
    v6 = "Boot session UUID has an invalid length (%zu)";
    v7 = v2;
    v8 = 12;
    goto LABEL_4;
  }

  v9 = malloc_type_malloc(size, 0x5CC07005uLL);
  if (!v9)
  {
    v2 = sub_100000D90(@"V2");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v6 = "Could not allocate buffer to copy boot session UUID";
    v7 = v2;
    v8 = 2;
    goto LABEL_4;
  }

  v10 = v9;
  if (sysctlbyname("kern.bootsessionuuid", v9, &size, 0, 0))
  {
    v11 = sub_100000D90(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 67109378;
      LODWORD(v18[0]) = v12;
      WORD2(v18[0]) = 2080;
      *(v18 + 6) = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not copy boot session UUID: %d (%s)", buf, 0x12u);
    }
  }

  else
  {
    v15 = [NSString stringWithCString:v10 encoding:4];
    v11 = qword_1000105E8;
    qword_1000105E8 = v15;
  }

  free(v10);
}

BOOL sub_1000016C8(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v5];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = 0;
    while (1)
    {
      v11 = v10;
      v10 = [v8 nextObject];

      if (!v10)
      {
        break;
      }

      if ((a2 & 1) == 0)
      {
        [v8 skipDescendants];
      }

      if ((v6[2](v6, v10) & 1) == 0)
      {
        v12 = sub_100000D90(@"Brain");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[MAB] Caller canceled enumeration", &v15, 2u);
        }

        break;
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[MAB] Could not create directory enumerator for %@", &v15, 0xCu);
    }
  }

  return v8 != 0;
}

uint64_t sub_100001884()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return sub_100001DD8(@"MABrainAllowUnpersonalized", 0) != 0;
  }

  return result;
}

BOOL sub_1000018BC()
{
  if (!os_variant_has_internal_content())
  {
    return 1;
  }

  v2 = 0;
  return sub_100001DD8(@"MABrainAllowDownloaded", &v2) || v2 == 0;
}

uint64_t sub_100001910()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return sub_100001DD8(@"MABrainAllowCrossBuildGroup", 0) != 0;
  }

  return result;
}

uint64_t sub_100001948()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return sub_100001DD8(@"MABrainDisableHealthCheck", 0) != 0;
  }

  return result;
}

id sub_100001980()
{
  v0 = _NSGetMachExecuteHeader();
  memset(dst, 0, sizeof(dst));
  ncmds = v0->ncmds;
  if (ncmds)
  {
    v2 = v0;
    v3 = 0;
    v4 = 32;
    while (1)
    {
      v5 = v0 + v4;
      if (*(&v0->magic + v4) == 27)
      {
        break;
      }

      v4 += *(v5 + 1);
      if (ncmds == ++v3)
      {
        goto LABEL_9;
      }
    }

    uuid_copy(dst, v5 + 8);
    v6 = v2->ncmds;
  }

  else
  {
    v6 = 0;
    v3 = 0;
  }

  if (v3 == v6)
  {
LABEL_9:
    uuid_clear(dst);
  }

  memset(v10, 0, sizeof(v10));
  uuid_unparse_lower(dst, v10);
  v7 = [NSString stringWithCString:v10 encoding:1];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:&stru_10000C6C0];

  return v8;
}

uint64_t sub_100001A94()
{
  v2[0] = kMKBUserSessionIDKey;
  v2[1] = @"ExtendedDeviceLockState";
  v3[0] = &off_10000CE20;
  v3[1] = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
  v0 = MKBGetDeviceLockState();
  return (v0 < 7) & (0x46u >> v0);
}

id sub_100001B3C(uint64_t a1, uint64_t a2)
{
  if (qword_1000105F8 != -1)
  {
    sub_1000067CC();
  }

  return qword_1000105F0;
}

void sub_100001B6C(id a1)
{
  v1 = dispatch_queue_create("com.apple.MobileAsset.preferencesDomain", 0);
  v2 = qword_1000105F0;
  qword_1000105F0 = v1;
}

id sub_100001B98(void *a1)
{
  v1 = a1;
  v3 = v1;
  if (v1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_100001D84;
    v20 = sub_100001D94;
    v21 = 0;
    v4 = sub_100001B3C(v1, v2);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100001D9C;
    v13[3] = &unk_10000C3C8;
    v5 = v3;
    v14 = v5;
    v15 = &v16;
    dispatch_sync(v4, v13);

    v6 = v17[5];
    if (v6)
    {
      v7 = v6;
      v8 = sub_100000D90(@"V2");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544130;
        v23 = @"defaults";
        v24 = 2114;
        v25 = v5;
        v26 = 2114;
        v27 = v7;
        v28 = 2114;
        v29 = v10;
      }
    }

    v11 = v6;

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_100001D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001D84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D9C(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(*(a1 + 32), @"com.apple.MobileAsset");
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100001DD8(void *a1, _BYTE *a2)
{
  v3 = sub_100001B98(a1);
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = isKindOfClass ^ 1;
    v6 = isKindOfClass & 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v5 = 1;
  if (a2)
  {
LABEL_3:
    *a2 = v6;
  }

LABEL_4:
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 BOOLValue];
  }

  return v7;
}

id start(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting mobileassetd built Oct 22 2025 21:21:33", v9, 2u);
  }

  v6 = +[MABrainLoader sharedInstance];
  v7 = [v6 run:a1 argv:a2];

  objc_autoreleasePoolPop(v4);
  return v7;
}

NSObject *sub_100001F20(uint64_t a1)
{
  v1 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:a1];
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (!v3)
  {
    v7 = 0;
    v4 = 0;
    goto LABEL_6;
  }

  v14 = 0;
  v4 = [NSString stringWithContentsOfFile:v1 encoding:4 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = v5;
    v7 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v1;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[MAB] Error loading contents of %@: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (![v4 length])
  {
    v7 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v1;
      v12 = "[MAB] Invalid target path at %@";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v12, buf, 0xCu);
    }

LABEL_18:
    v6 = 0;
LABEL_19:

    v7 = 0;
    goto LABEL_20;
  }

  v8 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:v4];
  if (!v8)
  {
    v7 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v4;
      v12 = "[MAB] Allocating targetPath failed for target %@";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v7 = v8;
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v7];

  if ((v10 & 1) == 0)
  {
    v11 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[MAB] %@ does not exist", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_6:
  v6 = 0;
LABEL_20:

  return v7;
}

uint64_t sub_100002684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:v3];
  v5 = [[__MABuiltinBrainBundle__ alloc] initWithPath:v4];
  if ([*(a1 + 32) containsObject:v3])
  {
    v6 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v3;
      v7 = "[MAB] Preserving item %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (![(__MABuiltinBrainBundle__ *)v5 isGrafted])
  {
    v8 = *(a1 + 40);
    v16 = 0;
    v9 = [v8 removeItemAtPath:v4 error:&v16];
    v6 = v16;
    v10 = sub_100000D90(@"Brain");
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        v18 = v3;
        v12 = "[MAB] Successfully removed item %@";
        v13 = v10;
        v14 = 12;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

    else if (v11)
    {
      *buf = 138412546;
      v18 = v3;
      v19 = 2112;
      v20 = v6;
      v12 = "[MAB] Error removing item %@: %@";
      v13 = v10;
      v14 = 22;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v6 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v3;
    v7 = "[MAB] Preserving item %@ (still grafted)";
    goto LABEL_7;
  }

LABEL_15:

  return 1;
}

void sub_100003AC4(id a1)
{
  v1 = objc_alloc_init(MABrainLoader);
  v2 = qword_100010600;
  qword_100010600 = v1;
}

void sub_1000056EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"bundleId"];
  [v2 recordLaunch:v3 history:*(a1 + 48)];
}

void sub_10000576C(id a1)
{
  v1 = [NSString stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"];
  if ([v1 isEqualToString:&stru_10000C6C0])
  {
  }

  else
  {
    v2 = [NSString stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"];
    v3 = [v2 isEqualToString:@"$SIDEBUILD_PARENT_TRAIN"];

    if ((v3 & 1) == 0)
    {
      qword_100010620 = "$SIDEBUILD_PARENT_TRAIN";
      return;
    }
  }

  v6 = [NSString stringWithFormat:@"%s", "LuckB"];
  if ([v6 isEqualToString:&stru_10000C6C0])
  {
  }

  else
  {
    v4 = [NSString stringWithFormat:@"%s", "LuckB"];
    v5 = [v4 isEqualToString:@"$RC_RELEASE"];

    if ((v5 & 1) == 0)
    {
      qword_100010620 = "LuckB";
    }
  }
}

void sub_100006214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose((v34 - 160), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000062A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000062B8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  if (!v8)
  {
    v10 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MAB] %@ MobileAssetBrain not found", buf, 0xCu);
    }

    goto LABEL_33;
  }

  v10 = [v8 lastPathComponent];
  v11 = sub_100000D90(@"Brain");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v7;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MAB] %@ MobileAssetBrain found in bundle %@", buf, 0x16u);
  }

  v12 = [[__MABuiltinBrainBundle__ alloc] initWithPath:v9];
  v13 = v12;
  if (!v12)
  {
    v17 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[MAB] Allocating bundle failed for %@", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v14 = [(__MABuiltinBrainBundle__ *)v12 brainInfo];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(NSDictionary);
  }

  v17 = v16;

  v18 = [v17 objectForKeyedSubscript:@"boot-session-uuid"];
  v19 = *(a1 + 32);
  if (v19 && v18 && [v19 isEqualToString:v18])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1 && ![(__MABuiltinBrainBundle__ *)v13 hasValidCurrentBootOnlyTicket])
  {
LABEL_31:

LABEL_32:
LABEL_33:
    v27 = 0;
    goto LABEL_34;
  }

  if (![*(a1 + 40) loadCryptex:*(a1 + 88) bundle:v13 bundleName:v10])
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      goto LABEL_31;
    }

    v28 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v10;
      v29 = "[MAB] MobileAssetBrain bundle/cryptex %@ could not be loaded";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v29, buf, 0xCu);
    }

LABEL_30:

    goto LABEL_31;
  }

  if (![*(a1 + 40) verify:v13 history:*(a1 + 48)])
  {
    v28 = sub_100000D90(@"Brain");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v10;
      v29 = "[MAB] MobileAssetBrain bundle %@ could not be verified";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (![*(a1 + 40) loadTrustCache:*(a1 + 88) bundle:v13 bundleName:v10 needsUnlock:a4])
  {
    goto LABEL_31;
  }

  v20 = [(__MABuiltinBrainBundle__ *)v13 brainPath];
  *(*(*(a1 + 72) + 8) + 24) = [v20 fileSystemRepresentation];

  v21 = [v17 mutableCopy];
  [v21 setObject:v10 forKeyedSubscript:@"bundleId"];
  [v21 setObject:v9 forKeyedSubscript:@"bundlePath"];
  [v21 setObject:&off_10000CE68 forKeyedSubscript:@"_CompatibilityVersion"];
  [v21 setObject:*(a1 + 56) forKeyedSubscript:@"mobileassetd-uuid"];
  v22 = [*(a1 + 40) getTrainName];
  if (v22)
  {
    v23 = [NSString stringWithFormat:@"%s", v22];
    [v21 setObject:v23 forKeyedSubscript:@"mobileassetd-trainname"];
  }

  [v21 removeObjectForKey:@"boot-session-uuid"];
  v24 = [NSDictionary dictionaryWithDictionary:v21];
  v25 = *(*(a1 + 80) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  v27 = 1;
LABEL_34:

  return v27;
}