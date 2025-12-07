void sub_10006B590(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = [v5 applicationType];
    v7 = [v6 isEqualToString:LSSystemApplicationType];

    if (v7)
    {
      goto LABEL_29;
    }

    v8 = [v5 installType];
    if ((v8 - 7) > 1)
    {
      goto LABEL_29;
    }

    v9 = v8;
    v10 = [v5 bundleIdentifier];
    v11 = [v5 managedPersonas];
    if ([v11 count])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v10;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found app %@ with managed personae: %{public}@", buf, 0x16u);
        _MBLog(@"Df", "Found app %@ with managed personae: %{public}@", v10, v11);
      }
    }

    if (*(a1 + 64) == 1)
    {
      v13 = [v5 purchaserDSID];
      if (![v11 count] || *(a1 + 32) && (objc_msgSend(v11, "containsObject:") & 1) != 0)
      {
        if ([v11 count] || (objc_msgSend(*(a1 + 40), "addAccountWithDSID:", v13) & 1) != 0)
        {

LABEL_16:
          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v20 = v10;
            v21 = 2048;
            v22 = v9;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found demoted bundle: %@/%lu", buf, 0x16u);
            _MBLog(@"Df", "Found demoted bundle: %@/%lu", v10, v9);
          }

          if (v9 == 7)
          {
            v15 = *(a1 + 48);
          }

          else
          {
            v15 = *(a1 + 56);
          }

          [v15 addObject:v10];
          goto LABEL_28;
        }

        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v20 = v10;
          v21 = 2048;
          v22 = v9;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle:%@/%lu for DSID %@", buf, 0x20u);
          _MBLog(@"Df", "Skipping demoted bundle:%@/%lu for DSID %@", v10, v9, v13);
        }
      }

      else
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          *buf = 138412802;
          v20 = v10;
          v21 = 2048;
          v22 = v9;
          v23 = 2114;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle:%@/%lu for personal persona %{public}@", buf, 0x20u);
          _MBLog(@"Df", "Skipping demoted bundle:%@/%lu for personal persona %{public}@", v10, v9, *(a1 + 32));
        }
      }
    }

    else
    {
      if ([v11 containsObject:*(a1 + 32)])
      {
        goto LABEL_16;
      }

      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 138412802;
        v20 = v10;
        v21 = 2048;
        v22 = v9;
        v23 = 2114;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle: %@/%lu for managed persona %{public}@", buf, 0x20u);
        _MBLog(@"Df", "Skipping demoted bundle: %@/%lu for managed persona %{public}@", v10, v9, *(a1 + 32));
      }
    }

LABEL_28:
LABEL_29:
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10006CB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10006CC00(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Passcode policy evaluation succeeded: %@", buf, 0xCu);
      _MBLog(@"Df", "Passcode policy evaluation succeeded: %@", a2);
    }
  }

  else if ([objc_msgSend(a3 "domain")] && objc_msgSend(a3, "code") == -5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Skipping passcode policy evaluation: %@", buf, 0xCu);
      _MBLog(@"E ", "Skipping passcode policy evaluation: %@", a3);
    }
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Passcode policy evaluation failed: %@", buf, 0xCu);
      _MBLog(@"E ", "Passcode policy evaluation failed: %@", a3);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10006DC24(id a1)
{
  qword_10011E488 = [[MBKeyBag alloc] initWithHandle:MKBOTABackupKeyBag() OTA:1];

  _objc_release_x1();
}

uint64_t sub_1000707C8(uint64_t result, char a2, void *a3)
{
  v3 = (result - 1) < 4 || result == 7;
  if (!v3 && (result || (a2 & 1) != 0))
  {
    if (a3)
    {
      *a3 = [MBError errorWithCode:241 format:@"unsupported protection class (%d)", result];
    }

    LOBYTE(result) = -1;
  }

  return result;
}

void sub_100071A08(id a1)
{
  v1 = qword_10011E498;
  qword_10011E498 = &__NSDictionary0__struct;
}

id sub_10007637C(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

id sub_1000764D8(uint64_t a1, void *a2)
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

id sub_100077FF4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && !v7)
  {
    sub_10009FD34();
  }

  if (![v6 length])
  {
    v5 = v5;
    v11 = v5;
    goto LABEL_34;
  }

  if (![v5 length])
  {
    v9 = v8;

    v5 = v9;
  }

  v10 = @"/private/var";
  if ([v8 isEqualToString:@"/private/var"])
  {
    if ([v5 hasPrefix:@"/var/"])
    {
      v10 = @"/var";
    }

    else if (![v5 hasPrefix:@"/private/var/"])
    {
      v10 = 0;
    }
  }

  else
  {
    if ([v5 hasPrefix:@"/private/var/"])
    {
      v12 = [v5 substringFromIndex:{objc_msgSend(@"/private", "length")}];

      v5 = v12;
    }

    if ([v5 hasPrefix:@"/var/"])
    {
      if ([v8 hasPrefix:@"/private/var/"])
      {
        v13 = [v8 substringFromIndex:{objc_msgSend(@"/private", "length")}];
      }

      else
      {
        v13 = v8;
      }

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }
  }

  v14 = [v5 length];
  v15 = [(__CFString *)v10 length];
  v16 = v15;
  if (!v10 || v14 != v15)
  {
    if (!v10)
    {
LABEL_32:
      v17 = v5;
      goto LABEL_33;
    }

LABEL_26:
    if ([v5 hasPrefix:v10] && v14 != v16 && objc_msgSend(v5, "characterAtIndex:", v16) == 47)
    {
      if ([v5 rangeOfString:v10] || !v18)
      {
        sub_10009FD08();
      }

      v17 = [v5 stringByReplacingCharactersInRange:0 withString:{v18, v6}];
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (![v5 hasPrefix:v10])
  {
    goto LABEL_26;
  }

  v17 = v6;
LABEL_33:
  v11 = v17;

LABEL_34:

  return v11;
}

id sub_100078250(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (![v8 hasPrefix:v9])
  {
    goto LABEL_4;
  }

  v11 = [v9 length];
  if (v11 > [v8 length])
  {
    goto LABEL_4;
  }

  if ([v8 rangeOfString:v9])
  {
    sub_10009FD60();
  }

  v16 = v15;
  if (v15 == [v8 length])
  {
    v12 = v10;
  }

  else
  {
    if ([v8 characterAtIndex:v16] != 47)
    {
LABEL_4:
      v12 = v8;
      goto LABEL_5;
    }

    v12 = [v8 stringByReplacingCharactersInRange:0 withString:{v16, v10}];
  }

LABEL_5:
  v13 = v12;

  return v13;
}

void sub_1000795A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000795DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000795F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) upgradeBlock];
  v14 = 0;
  v6 = (v5)[2](v5, v3, &v14);
  v7 = v14;
  v8 = v14;

  if (v6)
  {
    v9 = [v3 setUserVersion:*(a1 + 52)];
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 52);
      *buf = 67109634;
      v16 = v11;
      v17 = 1024;
      v18 = v12;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=pqldb= Can't migrate from version %d to %d: %@", buf, 0x18u);
      _MBLog(@"E ", "=pqldb= Can't migrate from version %d to %d: %@", *(a1 + 48), *(a1 + 52), v8);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100079888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000798A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = (*(v5 + 16))();
  objc_storeStrong((v6 + 40), obj);
  objc_autoreleasePoolPop(v4);

  return v7;
}

uint64_t sub_100079D10(int a1)
{
  memset(&v5, 0, sizeof(v5));
  if (!fstat(a1, &v5))
  {
    return (HIBYTE(v5.st_flags) >> 6) & 1;
  }

  v1 = MBGetDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = *__error();
    *buf = 67109120;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "fstat failed: %{errno}d", buf, 8u);
    v3 = __error();
    _MBLog(@"E ", "fstat failed: %{errno}d", *v3);
  }

  return 0;
}

uint64_t sub_100079E0C(void *a1)
{
  v1 = a1;
  memset(&v7, 0, sizeof(v7));
  if (lstat([v1 fileSystemRepresentation], &v7))
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      *buf = 138412546;
      v9 = v1;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "stat failed at %@: %{errno}d", buf, 0x12u);
      v4 = __error();
      _MBLog(@"E ", "stat failed at %@: %{errno}d", v1, *v4, *&v7.st_dev, v7.st_ino, *&v7.st_uid, *&v7.st_rdev, v7.st_atimespec.tv_sec, v7.st_atimespec.tv_nsec, v7.st_mtimespec.tv_sec, v7.st_mtimespec.tv_nsec, v7.st_ctimespec.tv_sec, v7.st_ctimespec.tv_nsec, v7.st_birthtimespec.tv_sec, v7.st_birthtimespec.tv_nsec, v7.st_size, v7.st_blocks, *&v7.st_blksize, *&v7.st_gen, v7.st_qspare[0], v7.st_qspare[1]);
    }

    v5 = 0;
  }

  else
  {
    v5 = (HIBYTE(v7.st_flags) >> 6) & 1;
  }

  return v5;
}

uint64_t sub_10007AFEC(uint64_t a1)
{
  if (sub_10008E608(a1))
  {
    v2 = 0;
  }

  else if (sub_10008E5D4(a1))
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  if (sub_10008E5B0(a1))
  {
    v2 |= 0x40u;
  }

  if (sub_10008E5A4(a1))
  {
    return v2 | 0x8000;
  }

  else
  {
    return v2;
  }
}

BOOL sub_10007B058(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=restorable= Using APFSIOC_MAKE_OBJECT_DATALESS to restore the com.apple.decmpfs xattr on %@: %@", buf, 0x16u);
    _MBLog(@"Df", "=restorable= Using APFSIOC_MAKE_OBJECT_DATALESS to restore the com.apple.decmpfs xattr on %@: %@", v5, v6);
  }

  if (v6)
  {
    v15[0] = [v6 bytes];
    v15[1] = [v6 length];
    v8 = fsctl([v5 fileSystemRepresentation], 0x80104A39uLL, v15, 0);
    v9 = v8 == 0;
    if (v8)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        *buf = 138412546;
        v17 = v5;
        v18 = 1024;
        LODWORD(v19) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=restorable= fsctl(APFSIOC_MAKE_OBJECT_DATALESS) failed at %@: %{errno}d", buf, 0x12u);
        v12 = __error();
        _MBLog(@"E ", "=restorable= fsctl(APFSIOC_MAKE_OBJECT_DATALESS) failed at %@: %{errno}d", v5, *v12);
      }

      if (a3)
      {
        *a3 = [MBError errorWithCode:102 path:v5 format:@"set_dataless_attribute error"];
      }
    }
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "=restorable= Unexpected nil extended attribute com.apple.decmpfs for dataless file: %@", buf, 0xCu);
      _MBLog(@"F ", "=restorable= Unexpected nil extended attribute com.apple.decmpfs for dataless file: %@", v5);
    }

    v9 = 1;
  }

  return v9;
}

id sub_10007B2BC(uint64_t a1, int a2, const char *a3)
{
  v19[1] = 0;
  v19[2] = 0;
  v19[0] = 0x39E0000000005;
  v18 = 0;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v17[0] = v6;
  v17[1] = 0;
  v17[2] = v7;
  v17[3] = 0;
  v8 = *(a1 + 72);
  v17[4] = v8;
  v17[5] = 0;
  v9 = time(0);
  v17[6] = v9;
  v17[7] = 0;
  v17[8] = *(a1 + 44);
  LOWORD(v18) = *(a1 + 112);
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 44);
    v12 = *(a1 + 48);
    v13 = *(a1 + 112);
    v14 = *(a1 + 32);
    *buf = 67110914;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    v24 = 2048;
    v25 = v6;
    v26 = 2048;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    v30 = 2048;
    v31 = v9;
    v32 = 1024;
    v33 = v13;
    v34 = 2112;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=restorable= Restoring attributes u/gid %d/%d, b/m/c/atime %ld/%ld/%ld/%ld, permissions 0%o to %@", buf, 0x46u);
    _MBLog(@"I ", "=restorable= Restoring attributes u/gid %d/%d, b/m/c/atime %ld/%ld/%ld/%ld, permissions 0%o to %@", *(a1 + 44), *(a1 + 48), v6, v7, v8, v9, *(a1 + 112), *(a1 + 32));
  }

  if (setattrlistat(a2, a3, v19, v17, 0x50uLL, 3u) < 0)
  {
    v15 = [MBError posixErrorWithPath:*(a1 + 32) format:@"fsetattrlist() failed"];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_10007CAA8(uint64_t a1, int a2, char *a3)
{
  memset(&v20, 0, sizeof(v20));
  if (fstatat(a2, a3, &v20, 32))
  {
    v6 = *__error();
    if (v6 != 2)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 32) length];
        *buf = 136315650;
        v22 = a3;
        v23 = 2048;
        v24 = v8;
        v25 = 1024;
        v26 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=restorable= fstatat failed at %s (%ld): %{errno}d", buf, 0x1Cu);
        _MBLog(@"E ", "=restorable= fstatat failed at %s (%ld): %{errno}d", a3, [*(a1 + 32) length], v6);
      }

      v9 = *(a1 + 32);
      v10 = @"fstatat error";
      v11 = v6;
      goto LABEL_19;
    }
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = sub_10008E6B8(v20.st_mode);
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Removing existing %@", buf, 0xCu);

      v14 = sub_10008E6B8(v20.st_mode);
      _MBLog(@"I ", "=restorable= Removing existing %@", v14);
    }

    if (unlinkat(a2, a3, 0) && *__error() != 2)
    {
      v11 = *__error();
      v9 = *(a1 + 32);
      v10 = @"Error removing existing item while restoring symbolic link";
      goto LABEL_19;
    }
  }

  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 40);
    *buf = 138412290;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restorable= Creating symbolic link: %@", buf, 0xCu);
    _MBLog(@"I ", "=restorable= Creating symbolic link: %@", *(a1 + 40));
  }

  if ([*(a1 + 40) length])
  {
    v17 = [*(a1 + 40) fileSystemRepresentation];
  }

  else
  {
    v17 = "";
  }

  if (!symlinkat(v17, a2, a3))
  {
    v18 = 0;
    goto LABEL_20;
  }

  v11 = *__error();
  v9 = *(a1 + 32);
  v10 = @"symlinkat error";
LABEL_19:
  v18 = [MBError errorWithErrno:v11 path:v9 format:v10];
LABEL_20:

  return v18;
}

id sub_10007CDC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == 1)
  {
    v4 = *(a1 + 60);
    v5 = *(a1 + 64);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v4;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link ownership: %d:%d", buf, 0xEu);
      _MBLog(@"I ", "=restorable= Restoring symbolic link ownership: %d:%d", v4, v5);
    }

    if (fchown(a2, v4, v5))
    {
      v7 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchown error"];
LABEL_6:
      v8 = v7;
      goto LABEL_32;
    }

    v9 = sub_10007AFEC(a1 + 56);
    if (v9)
    {
      v10 = v9;
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=restorable= Restoring symlink BSD flags: 0x%x", buf, 8u);
        _MBLog(@"I ", "=restorable= Restoring symlink BSD flags: 0x%x", v10);
      }

      if (fchflags(a2, v10))
      {
        v12 = *__error();
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 32);
          *buf = 67109634;
          *&buf[4] = v10;
          *&buf[8] = 2112;
          *&buf[10] = v14;
          *&buf[18] = 1024;
          *&buf[20] = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore symlink BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
          _MBLog(@"E ", "=restorable= Failed to restore symlink BSD flags (0x%x) at %@: %{errno}d", v10, *(a1 + 32), v12);
        }

        v7 = [MBError errorWithCode:102 path:*(a1 + 32) format:@"fchflags error"];
        goto LABEL_6;
      }
    }
  }

  v15 = [*(a1 + 40) extendedAttributes];
  if (v15)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link extended attributes", buf, 2u);
      _MBLog(@"I ", "=restorable= Restoring symbolic link extended attributes");
    }

    v28 = 0;
    v17 = [MBExtendedAttributes setAttributes:v15 forFD:a2 error:&v28];
    v18 = v28;
    v19 = v18;
    if (!v17)
    {
      v26 = [MBError errorWithCode:102 error:*(a1 + 48) format:@"setxattr error"];
LABEL_29:
      v8 = v26;

      goto LABEL_31;
    }
  }

  if (*(a1 + 128) != 1)
  {
    goto LABEL_24;
  }

  v20 = sub_10008E61C(a1 + 56);
  v21 = MBGetDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link permissions: 0%3o", buf, 8u);
    _MBLog(@"I ", "=restorable= Restoring symbolic link permissions: 0%3o", v20);
  }

  if (!fchmod(a2, v20))
  {
LABEL_24:
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [NSDate dateWithTimeIntervalSince1970:*(a1 + 80)];
      v24 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=restorable= Restoring last modified time (%@) for %@", buf, 0x16u);

      v25 = [NSDate dateWithTimeIntervalSince1970:*(a1 + 80)];
      _MBLog(@"I ", "=restorable= Restoring last modified time (%@) for %@", v25, *(a1 + 40));
    }

    *buf = time(0);
    *&buf[8] = 0;
    *&buf[16] = *(a1 + 80);
    v30 = 0;
    if (!futimes(a2, buf))
    {
      v8 = 0;
      goto LABEL_31;
    }

    v19 = [*(a1 + 40) description];
    v26 = [MBError posixErrorWithCode:102 path:v19 format:@"futimes error"];
    goto LABEL_29;
  }

  v8 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchmod error"];
LABEL_31:

LABEL_32:

  return v8;
}

id sub_10007D5D8(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = a2;
  v6 = sub_10008E61C(a1 + 40);
  memset(&v24, 0, sizeof(v24));
  if (fstatat(v4, a3, &v24, 32))
  {
    if (*__error() != 2)
    {
      v15 = *__error();
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 32) length];
        *buf = 136315650;
        v26 = a3;
        v27 = 2048;
        v28 = v17;
        v29 = 1024;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=restorable= fstatat failed at %s (%ld): %{errno}d", buf, 0x1Cu);
        _MBLog(@"E ", "=restorable= fstatat failed at %s (%ld): %{errno}d", a3, [*(a1 + 32) length], v15);
      }

      v9 = *(a1 + 32);
      v10 = @"fstatat error";
      v18 = 101;
      goto LABEL_24;
    }

    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v26 = v8;
      v27 = 1024;
      LODWORD(v28) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restorable= Making directory at %@ (0%3o)", buf, 0x12u);
      _MBLog(@"I ", "=restorable= Making directory at %@ (0%3o)", *(a1 + 32), v6);
    }

    if (mkpathat_np(v4, a3, v6))
    {
      v9 = *(a1 + 32);
      v10 = @"mkpathat_np error";
LABEL_23:
      v18 = 102;
LABEL_24:
      v22 = [MBError posixErrorWithCode:v18 path:v9 format:v10];
      goto LABEL_26;
    }
  }

  else
  {
    v11 = v24.st_mode & 0xF000;
    v12 = MBGetDefaultLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11 == 0x4000)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Directory already exists", buf, 2u);
        _MBLog(@"I ", "=restorable= Directory already exists");
      }

      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v26) = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=restorable= Restoring directory permissions: 0%3o", buf, 8u);
        _MBLog(@"I ", "=restorable= Restoring directory permissions: 0%3o", v6);
      }

      if (fchmodat(v4, a3, v6, 32))
      {
        v9 = *(a1 + 32);
        v10 = @"fchmodat error";
        goto LABEL_23;
      }
    }

    else
    {
      if (v13)
      {
        v19 = sub_10008E6B8(v24.st_mode);
        *buf = 138412290;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Removing existing object %@", buf, 0xCu);

        v20 = sub_10008E6B8(v24.st_mode);
        _MBLog(@"I ", "=restorable= Removing existing object %@", v20);
      }

      unlinkat(v4, a3, 0);
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v26) = v6;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restorable= Making directory: 0%3o", buf, 8u);
        _MBLog(@"I ", "=restorable= Making directory: 0%3o", v6);
      }

      if (mkdirat(v4, a3, v6))
      {
        v9 = *(a1 + 32);
        v10 = @"mkdirat error";
        goto LABEL_23;
      }
    }
  }

  v22 = 0;
LABEL_26:

  return v22;
}

id sub_10007DA44(uint64_t a1, int a2)
{
  if (*(a1 + 128) == 1)
  {
    v4 = *(a1 + 60);
    v5 = *(a1 + 64);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 67109634;
      *v34 = v4;
      *&v34[4] = 1024;
      *&v34[6] = v5;
      *&v34[10] = 2112;
      *&v34[12] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=restorable= Restoring directory ownership: %d:%d at path %@", buf, 0x18u);
      _MBLog(@"I ", "=restorable= Restoring directory ownership: %d:%d at path %@", v4, v5, *(a1 + 32));
    }

    if (fchown(a2, v4, v5))
    {
      v8 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchown error"];
      goto LABEL_35;
    }
  }

  v9 = [*(a1 + 32) fileSystemRepresentation];
  v10 = [*(a1 + 40) extendedAttributes];
  if (v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v10 count];
      v13 = *(a1 + 32);
      *buf = 134218242;
      *v34 = v12;
      *&v34[8] = 2112;
      *&v34[10] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=restorable= Restoring directory extended attributes (%ld) at path %@", buf, 0x16u);
      _MBLog(@"I ", "=restorable= Restoring directory extended attributes (%ld) at path %@", [v10 count], *(a1 + 32));
    }

    if (sub_10008E598(a1 + 56))
    {
      v14 = [v10 objectForKeyedSubscript:@"com.apple.decmpfs"];
      if (v14)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restorable= Not re-applying the com.apple.decmpfs xattr yet.", buf, 2u);
          _MBLog(@"I ", "=restorable= Not re-applying the com.apple.decmpfs xattr yet.");
        }

        v16 = [v10 mutableCopy];
        [v16 removeObjectForKey:@"com.apple.decmpfs"];

        v10 = v16;
      }
    }

    else
    {
      v14 = 0;
    }

    v32 = 0;
    v17 = [MBExtendedAttributes setAttributes:v10 forPathFSR:v9 error:&v32];
    v18 = v32;
    v19 = v18;
    if (!v17)
    {
      v8 = [MBError errorWithCode:102 error:v18 format:@"setxattr error"];

      goto LABEL_34;
    }
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 128) != 1)
  {
    goto LABEL_30;
  }

  v20 = sub_10007AFEC(a1 + 56);
  if (v20)
  {
    v21 = v20;
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v34 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=restorable= Restoring directory BSD flags: 0x%x", buf, 8u);
      _MBLog(@"I ", "=restorable= Restoring directory BSD flags: 0x%x", v21);
    }

    if (fchflags(a2, v21))
    {
      v23 = *__error();
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        *buf = 67109634;
        *v34 = v21;
        *&v34[4] = 2112;
        *&v34[6] = v25;
        *&v34[14] = 1024;
        *&v34[16] = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore directory BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
        _MBLog(@"E ", "=restorable= Failed to restore directory BSD flags (0x%x) at %@: %{errno}d", v21, *(a1 + 32), v23);
      }

      v26 = [MBError errorWithCode:102 path:*(a1 + 32) format:@"fchflags error"];
LABEL_32:
      v8 = v26;
      goto LABEL_34;
    }
  }

  if (!sub_10008E598(a1 + 56))
  {
LABEL_30:
    if (*(a1 + 129) != 1)
    {
      v8 = 0;
      goto LABEL_34;
    }

    v26 = [*(a1 + 48) _setProtectionClass:*(a1 + 126) withPath:*(a1 + 32)];
    goto LABEL_32;
  }

  v27 = *(a1 + 32);
  v31 = 0;
  v28 = sub_10007B058(v27, v14, &v31);
  v29 = v31;
  v8 = v29;
  if (v28)
  {

    goto LABEL_30;
  }

LABEL_34:

LABEL_35:

  return v8;
}

id sub_10007E860(void *a1)
{
  v77 = a1;
  v93 = objc_alloc_init(MBIgnoredAccountsTracker);
  v90 = objc_opt_new();
  [LSApplicationRecord enumeratorWithOptions:192];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v1 = v102 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v99 objects:v107 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v100;
    v5 = LSUserApplicationType;
    v89 = _kCFBundleDisplayNameKey;
    v88 = _kCFBundleShortVersionStringKey;
    v94 = v1;
    v95 = LSUserApplicationType;
    v96 = *v100;
    do
    {
      v6 = 0;
      v97 = v3;
      do
      {
        if (*v100 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v99 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 typeForInstallMachinery];
        if ([v9 isEqualToString:v5])
        {
          v10 = objc_opt_new();
          v11 = [v7 bundleIdentifier];
          v12 = [v7 installType];
          if (!v11)
          {
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v112 = v7;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "nil bundleID for app record: %@", buf, 0xCu);
              _MBLog(@"E ", "nil bundleID for app record: %@", v7, v76);
            }

            goto LABEL_24;
          }

          v13 = v12;
          if ([v7 isBeta])
          {
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v112 = v11;
              v113 = 2048;
              v114 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (beta)", buf, 0x16u);
              _MBLog(@"Df", "Skipping %@/%lu (beta)", v11, v13);
            }

            goto LABEL_24;
          }

          v15 = [v7 applicationDSID];
          v16 = [NSNumber numberWithUnsignedLongLong:v15];
          v17 = [(MBIgnoredAccountsTracker *)v93 addAccountWithDSID:v16];

          if (v17)
          {
            v18 = sub_100049398(v7);
            if (v18 != 2)
            {
              if (v18 == 1)
              {
                v14 = MBGetDefaultLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v112 = v11;
                  v113 = 2048;
                  v114 = v13;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (app clip)", buf, 0x16u);
                  _MBLog(@"Df", "Skipping %@/%lu (app clip)", v11, v13);
                }

                goto LABEL_23;
              }

              v19 = [v7 applicationState];
              v20 = [v19 isDowngraded];

              v21 = [v7 compatibilityObject];
              v14 = [v21 bundleExecutable];

              [v10 setObject:v9 forKeyedSubscript:@"ApplicationType"];
              v22 = [v7 localizedName];
              [v10 setObject:v22 forKeyedSubscript:v89];

              [v10 setObject:v14 forKeyedSubscript:kCFBundleExecutableKey];
              [v10 setObject:v11 forKeyedSubscript:kCFBundleIdentifierKey];
              v23 = [v7 localizedName];
              [v10 setObject:v23 forKeyedSubscript:kCFBundleNameKey];

              v24 = [v7 bundleVersion];
              [v10 setObject:v24 forKeyedSubscript:kCFBundleVersionKey];

              v25 = [v7 shortVersionString];
              [v10 setObject:v25 forKeyedSubscript:v88];

              v26 = [NSNumber numberWithUnsignedLongLong:v15];
              [v10 setObject:v26 forKeyedSubscript:@"ApplicationDSID"];

              v27 = [NSNumber numberWithBool:v20];
              [v10 setObject:v27 forKeyedSubscript:@"IsDemotedApp"];

              if ([v7 isLaunchProhibited])
              {
                [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"LSApplicationLaunchProhibited"];
                v1 = v94;
              }

              else
              {
                v28 = SBSCopyIconImagePNGDataForDisplayIdentifier();
                v1 = v94;
                if (!v28)
                {
                  v29 = MBGetDefaultLog();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v112 = v11;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Failed to fetch the icon for %@", buf, 0xCu);
                    _MBLog(@"Df", "Failed to fetch the icon for %@", v11);
                  }

                  v28 = +[NSData data];
                }

                [v10 setObject:v28 forKeyedSubscript:@"PlaceholderIcon"];
              }

              v30 = [v7 bundleContainerURL];
              v91 = v30;
              if (!v30)
              {
                v43 = MBGetDefaultLog();
                v92 = v43;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v112 = v11;
                  v113 = 2112;
                  v114 = v7;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "nil bundleContainerURL for %@: %@", buf, 0x16u);
                  _MBLog(@"E ", "nil bundleContainerURL for %@: %@", v11, v7);
                }

                goto LABEL_72;
              }

              v31 = [v30 URLByAppendingPathComponent:@"iTunesMetadata.plist"];
              v32 = [LSApplicationProxy applicationProxyForIdentifier:v11];
              v92 = v32;
              if (!v32 || (v33 = v32, ![v32 isContainerized]))
              {
                v42 = sub_10007F7C8(v31, @"iTunesMetadata", v10);
                goto LABEL_67;
              }

              v34 = v33;
              v83 = v31;
              v35 = v31;
              v85 = v10;
              [v34 bundleIdentifier];
              v87 = v86 = v35;
              v106 = 0;
              v36 = [NSData dataWithContentsOfURL:v35 options:3 error:&v106];
              v37 = v106;
              v84 = v34;
              if (v36)
              {
                v104 = 0;
                v105 = 100;
                v38 = v37;
                v82 = v36;
                v39 = [NSPropertyListSerialization propertyListWithData:v36 options:1 format:&v105 error:&v104];
                v81 = v104;

                if (v39)
                {
                  objc_opt_class();
                  v80 = v39;
                  if (objc_opt_isKindOfClass())
                  {
                    v40 = [v39 objectForKeyedSubscript:@"title"];

                    if (v40)
                    {
                      v41 = v81;
                      goto LABEL_63;
                    }

                    v58 = [v84 localizedShortName];
                    if (!v58)
                    {
                      v58 = [v84 localizedName];
                    }

                    v79 = v58;
                    [v80 setObject:v58 forKeyedSubscript:@"title"];
                    v103 = 0;
                    v59 = [NSPropertyListSerialization dataWithPropertyList:v80 format:v105 options:0 error:&v103];
                    v60 = v103;

                    if (v59)
                    {

                      v82 = v59;
                      v41 = v60;
LABEL_63:
                      [v85 setObject:v82 forKey:@"iTunesMetadata"];
                    }

                    else
                    {
                      v65 = MBGetDefaultLog();
                      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v112 = v87;
                        v113 = 2112;
                        v114 = v60;
                        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to serialize iTunesMetadata.plist for %@: %@", buf, 0x16u);
                        _MBLog(@"E ", "Failed to serialize iTunesMetadata.plist for %@: %@", v87, v60);
                      }

                      v82 = v79;
                      v41 = v60;
                    }

                    v39 = v80;
                  }

                  else
                  {
                    v48 = MBGetDefaultLog();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      v49 = [v86 path];
                      v50 = objc_opt_class();
                      v51 = NSStringFromClass(v50);
                      *buf = 138412802;
                      v112 = v49;
                      v113 = 2112;
                      v114 = v87;
                      v115 = 2112;
                      v116 = v51;
                      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Got unexpected object type for %@ for %@: %@", buf, 0x20u);

                      v52 = [v86 path];
                      v53 = objc_opt_class();
                      v54 = NSStringFromClass(v53);
                      _MBLog(@"E ", "Got unexpected object type for %@ for %@: %@", v52, v87, v54);
                    }

                    v39 = v80;
                    v41 = v81;
                  }
                }

                else
                {
                  v47 = MBGetDefaultLog();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v112 = v87;
                    v113 = 2112;
                    v114 = v81;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to deserialize iTunesMetadata.plist for %@: %@", buf, 0x16u);
                    _MBLog(@"E ", "Failed to deserialize iTunesMetadata.plist for %@: %@", v87, v81);
                  }

                  v41 = v81;
                }

                v57 = v41;
                v56 = v84;
LABEL_66:

                v31 = v83;
LABEL_67:

                v61 = [v7 URL];
                if (v61)
                {
                  v62 = [NSString stringWithFormat:@"SC_Info/%@.sinf", v14];
                  v63 = [v61 URLByAppendingPathComponent:v62];
                  v64 = sub_10007F7C8(v63, @"ApplicationSINF", v10);
                }

                else
                {
                  v63 = MBGetDefaultLog();
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v112 = v11;
                    v113 = 2112;
                    v114 = v7;
                    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "nil bundleURL for %@: %@", buf, 0x16u);
                    _MBLog(@"E ", "nil bundleURL for %@: %@", v11, v7);
                  }
                }

                v1 = v94;
LABEL_72:

                [v90 setObject:v10 forKeyedSubscript:v11];
LABEL_24:

                v4 = v96;
                v3 = v97;
                v5 = v95;
                goto LABEL_25;
              }

              v44 = v37;
              v45 = [v37 domain];
              v78 = v44;
              if ([v45 isEqualToString:NSCocoaErrorDomain])
              {
                v46 = [v44 code];

                if (v46 == 260)
                {
LABEL_58:
                  v56 = v84;
                  v57 = v78;
                  goto LABEL_66;
                }
              }

              else
              {
              }

              v55 = MBGetDefaultLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v112 = v87;
                v113 = 2112;
                v114 = v86;
                v115 = 2112;
                v116 = v44;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to read metadata for %@ from %@: %@", buf, 0x20u);
                _MBLog(@"E ", "Failed to read metadata for %@ from %@: %@", v87, v86, v44);
              }

              goto LABEL_58;
            }

            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v112 = v11;
              v113 = 2048;
              v114 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu (Swift Playgrounds app)", buf, 0x16u);
              _MBLog(@"Df", "Skipping %@/%lu (Swift Playgrounds app)", v11, v13);
            }
          }

          else
          {
            v14 = MBGetDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v112 = v11;
              v113 = 2048;
              v114 = v13;
              v115 = 2048;
              v116 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping %@/%lu for account %llu", buf, 0x20u);
              _MBLog(@"Df", "Skipping %@/%lu for account %llu", v11, v13, v15);
            }
          }

LABEL_23:
          v1 = v94;
          goto LABEL_24;
        }

LABEL_25:

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v3 != v6);
      v66 = [v1 countByEnumeratingWithState:&v99 objects:v107 count:16];
      v3 = v66;
    }

    while (v66);
  }

  v67 = [v90 copy];
  v98 = 0;
  v68 = [v67 writeToURL:v77 error:&v98];
  v69 = v98;
  v70 = MBGetDefaultLog();
  v71 = v70;
  if (v68)
  {
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      goto LABEL_83;
    }

    v72 = [v77 path];
    *v107 = 138412290;
    v108 = v72;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Wrote restore apps plist to %@", v107, 0xCu);

    v73 = [v77 path];
    _MBLog(@"I ", "Wrote restore apps plist to %@", v73, v76);
  }

  else
  {
    if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    v74 = [v77 path];
    *v107 = 138412546;
    v108 = v74;
    v109 = 2112;
    v110 = v69;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Failed to write the plist to %@: %@", v107, 0x16u);

    v73 = [v77 path];
    _MBLog(@"E ", "Failed to write the plist to %@: %@", v73, v69);
  }

LABEL_83:

  return v69;
}

id sub_10007F7C8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0;
  v8 = [NSData dataWithContentsOfURL:v5 options:2 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:v6];
LABEL_3:
    v11 = 0;
    goto LABEL_12;
  }

  v12 = [v9 domain];
  if ([v12 isEqualToString:NSCocoaErrorDomain])
  {
    v13 = [v10 code];

    if (v13 == 260)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get data from %@: %@", buf, 0x16u);
    _MBLog(@"E ", "Failed to get data from %@: %@", v5, v10);
  }

  if (!v10)
  {
    sub_1000A0404();
  }

  v11 = v10;
LABEL_12:

  return v11;
}

void sub_100083B54(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "=iCloudDrive= BRCDatabaseRestoreManager failed: %@", buf, 0xCu);
      _MBLog(@"E ", "=iCloudDrive= BRCDatabaseRestoreManager failed: %@", v5);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10008407C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000840B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000840C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100084438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100084470(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10008B2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008B33C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_10008B354(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v36 = v10;
      v37 = 2112;
      *v38 = v11;
      *&v38[8] = 2112;
      *&v38[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      _MBLog(@"Df", "=scanning= Error enumerating file attrs %@ %@: %@", *(a1 + 32), *(a1 + 40), v8);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if (v12)
  {
    v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  ++*(*(*(a1 + 88) + 8) + 24);
  if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 88) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 88) + 8) + 24);
      v20 = *(a1 + 104);
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) name];
      *buf = 134218754;
      v36 = v19;
      v37 = 1024;
      *v38 = v20;
      *&v38[4] = 2114;
      *&v38[6] = v21;
      *&v38[14] = 2114;
      *&v38[16] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), single pass", buf, 0x26u);

      v23 = *(*(*(a1 + 88) + 8) + 24);
      v24 = *(a1 + 40);
      v25 = *(a1 + 104);
      v26 = [*(a1 + 32) name];
      _MBLog(@"Df", "=scanning= Found %llu/%u items under %{public}@ (%{public}@), single pass", v23, v25, v24, v26);
    }
  }

  v27 = *(a1 + 56);
  v28 = *(a1 + 32);
  v29 = [*(a1 + 40) stringByAppendingPathComponent:v7];
  v30 = [MBFile fileWithDomain:v28 snapshotPath:v27 relativePath:v29];

  [v30 setNode:a3];
  if ([*(a1 + 48) _shouldNotBackupFile:v30 domain:*(a1 + 32)])
  {
    v16 = 1;
  }

  else
  {
    if (sub_10008E5E0(a3) || ![v7 mb_pathHasSQLiteJournalSuffix])
    {
      [*(a1 + 64) addObject:v7];
      v34 = *(a1 + 72);
      v33 = [NSData dataWithBytes:a3 length:72];
      [v34 addObject:v33];
    }

    else
    {
      v31 = [*(a1 + 48) _foundFile:v30 snapshotPath:*(a1 + 56) stats:*(a1 + 96)];
      v32 = *(*(a1 + 80) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;
    }

    v16 = *(*(*(a1 + 80) + 8) + 40) == 0;
  }

LABEL_8:
  return v16;
}

void sub_10008BC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 240), 8);
  _Block_object_dispose((v32 - 192), 8);
  _Unwind_Resume(a1);
}

BOOL sub_10008BCC0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v35 = v10;
      v36 = 2112;
      *v37 = v11;
      *&v37[8] = 2112;
      *&v37[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      _MBLog(@"Df", "=scanning= Error enumerating file attrs %@ %@: %@", *(a1 + 32), *(a1 + 40), v8);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if (v12)
  {
    v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  ++*(*(*(a1 + 72) + 8) + 24);
  if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 72) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 72) + 8) + 24);
      v20 = *(a1 + 88);
      v21 = *(a1 + 40);
      v22 = [*(a1 + 32) name];
      *buf = 134218754;
      v35 = v19;
      v36 = 1024;
      *v37 = v20;
      *&v37[4] = 2114;
      *&v37[6] = v21;
      *&v37[14] = 2114;
      *&v37[16] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), first pass", buf, 0x26u);

      v23 = *(*(*(a1 + 72) + 8) + 24);
      v24 = *(a1 + 40);
      v25 = *(a1 + 88);
      v26 = [*(a1 + 32) name];
      _MBLog(@"Df", "=scanning= Found %llu/%u items under %{public}@ (%{public}@), first pass", v23, v25, v24, v26);
    }
  }

  if (sub_10008E5E0(a3) || ![v7 mb_pathHasSQLiteJournalSuffix])
  {
    v16 = 1;
  }

  else
  {
    v27 = *(a1 + 56);
    v28 = *(a1 + 32);
    v29 = [*(a1 + 40) stringByAppendingPathComponent:v7];
    v30 = [MBFile fileWithDomain:v28 snapshotPath:v27 relativePath:v29];

    [v30 setNode:a3];
    if ([*(a1 + 48) _shouldNotBackupFile:v30 domain:*(a1 + 32)])
    {
      v16 = 1;
    }

    else
    {
      v31 = [*(a1 + 48) _foundFile:v30 snapshotPath:*(a1 + 56) stats:*(a1 + 80)];
      v32 = *(*(a1 + 64) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      v16 = *(*(*(a1 + 64) + 8) + 40) == 0;
    }
  }

LABEL_8:

  return v16;
}

uint64_t sub_10008C030(uint64_t a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138412802;
      v39 = v10;
      v40 = 2112;
      *v41 = v11;
      *&v41[8] = 2112;
      *&v41[10] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scanning= Error enumerating file attrs %@ %@: %@", buf, 0x20u);
      _MBLog(@"Df", "=scanning= Error enumerating file attrs %@ %@: %@", *(a1 + 32), *(a1 + 40), v8);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
    goto LABEL_7;
  }

  v12 = atomic_load((*(a1 + 48) + 49));
  if ((v12 & 1) == 0)
  {
    ++*(*(*(a1 + 88) + 8) + 24);
    if (__ROR8__(0xD288CE703AFB7E91 * *(*(*(a1 + 88) + 8) + 24), 4) <= 0x68DB8BAC710CBuLL)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(*(a1 + 88) + 8) + 24);
        v20 = *(a1 + 104);
        v21 = *(a1 + 40);
        v22 = [*(a1 + 32) name];
        *buf = 134218754;
        v39 = v19;
        v40 = 1024;
        *v41 = v20;
        *&v41[4] = 2114;
        *&v41[6] = v21;
        *&v41[14] = 2114;
        *&v41[16] = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scanning= Found %llu/%u items under %{public}@ (%{public}@), second pass", buf, 0x26u);

        v23 = *(*(*(a1 + 88) + 8) + 24);
        v24 = *(a1 + 40);
        v25 = *(a1 + 104);
        v26 = [*(a1 + 32) name];
        _MBLog(@"Df", "=scanning= Found %llu/%u items under %{public}@ (%{public}@), second pass", v23, v25, v24, v26);
      }
    }

    if (!sub_10008E5E0(a3) && ([v7 mb_pathHasSQLiteJournalSuffix] & 1) != 0)
    {
      v16 = 1;
      goto LABEL_8;
    }

    v27 = *(a1 + 56);
    v28 = *(a1 + 32);
    v29 = [*(a1 + 40) stringByAppendingPathComponent:v7];
    v30 = [MBFile fileWithDomain:v28 snapshotPath:v27 relativePath:v29];

    [v30 setNode:a3];
    if (([*(a1 + 48) _shouldNotBackupFile:v30 domain:*(a1 + 32)] & 1) == 0)
    {
      v31 = [*(a1 + 48) _foundFile:v30 snapshotPath:*(a1 + 56) stats:*(a1 + 96)];
      v32 = *(*(a1 + 80) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      if (*(*(*(a1 + 80) + 8) + 40))
      {
        v16 = 0;
        goto LABEL_20;
      }

      if ([v30 isDirectory])
      {
        v34 = *(a1 + 64);
        v35 = [v30 relativePath];
        [v34 addObject:v35];

        v36 = *(a1 + 72);
        v37 = [NSNumber numberWithUnsignedInt:*a3];
        [v36 addObject:v37];
      }
    }

    v16 = 1;
LABEL_20:

    goto LABEL_8;
  }

  v13 = [MBError errorWithCode:202 format:@"File scan cancelled"];
  v14 = *(*(a1 + 80) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

LABEL_7:
  v16 = 0;
LABEL_8:

  return v16;
}

uint64_t sub_10008DCA8(int a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v39[0] = word_10011E1F8;
  v39[1] = 0;
  v40 = dword_10011E1FC | 0x20000001;
  v41 = 0;
  v42 = unk_10011E204;
  v43 = dword_10011E20C;
  v6 = [v4 mutableBytes];
  v31 = v4;
  v7 = [v4 length];
  v35 = +[NSFileManager defaultManager];
  v36 = v6;
  v33 = v5;
  v34 = &v7[v6];
LABEL_2:
  v8 = getattrlistbulk(a1, v39, v36, v7, 0x29uLL);
  v9 = v8;
  if (v8 >= 1)
  {
    v10 = 0;
    while (1)
    {
      if (v10 >= v7)
      {
        sub_1000A07F0();
      }

      v11 = &v36[v10];
      if (*&v36[v10 + 24])
      {
        v24 = v31;
        v25 = v33;
        v26 = @"getattrlistbulk() enumeration error";
        goto LABEL_27;
      }

      v12 = *v11;
      v13 = objc_autoreleasePoolPush();
      v14 = v35;
      v15 = &v11[*(v11 + 7) + 28];
      v16 = *(v11 + 8);
      if (v15 + v16 > v34)
      {
        sub_1000A0848();
      }

      v17 = (v16 - 1);
      if (*(v15 + v17))
      {
        sub_1000A081C();
      }

      v18 = v14;
      v19 = [v14 stringWithFileSystemRepresentation:&v11[*(v11 + 7) + 28] length:v17];
      if (!v19)
      {
        break;
      }

      v38 = 0;
      memset(v37, 0, sizeof(v37));
      v47 = *(v11 + 84);
      v48 = *(v11 + 100);
      v49 = *(v11 + 116);
      v50 = *(v11 + 132);
      *buf = *(v11 + 36);
      v45 = *(v11 + 52);
      v46 = *(v11 + 68);
      if ((sub_10008E118(buf, v37, v19, 0) & 1) == 0)
      {
        goto LABEL_21;
      }

      v20 = (*(v33 + 2))(v33, v19, v37, 0);

      objc_autoreleasePoolPop(v13);
      if ((v20 & 1) == 0)
      {
        v28 = 0;
        goto LABEL_28;
      }

LABEL_22:
      v10 += v12;
      if (!--v9)
      {
        goto LABEL_2;
      }
    }

    v21 = [NSData dataWithBytes:v15 length:v17];
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unexpected mbNode name: %@", buf, 0xCu);
      _MBLog(@"E ", "Unexpected mbNode name: %@", v21);
    }

    if (MBIsInternalInstall())
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Unexpected mbNode name: %@", buf, 0xCu);
        _MBLog(@"F ", "Unexpected mbNode name: %@", v21);
      }
    }

    else
    {
      if (dword_10011E4B4 || atomic_fetch_add_explicit(&dword_10011E4B4, 1u, memory_order_relaxed))
      {
        goto LABEL_20;
      }

      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Unexpected mbNode name", buf, 2u);
        _MBLog(@"F ", "Unexpected mbNode name", v30);
      }
    }

LABEL_20:
LABEL_21:

    objc_autoreleasePoolPop(v13);
    goto LABEL_22;
  }

  if (v8 < 0)
  {
    v26 = @"getattrlistbulk() error";
    v24 = v31;
    v25 = v33;
LABEL_27:
    v27 = [MBError errorWithErrno:*__error() format:v26];
    (v25)[2](v25, 0, 0, v27);

    v28 = 0;
  }

  else
  {
    v28 = 1;
LABEL_28:
    v24 = v31;
    v25 = v33;
  }

  return v28;
}

uint64_t sub_10008E118(unsigned int *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if (!a2)
  {
    sub_1000A0874();
  }

  v8 = v7;
  v9 = *a1;
  v10 = a1[15];
  if (*a1 == 1)
  {
    v11 = 0x8000;
  }

  else if (v9 == 2)
  {
    v11 = 0x4000;
  }

  else
  {
    if (v9 != 5)
    {
      if (a4)
      {
        if (v7)
        {
          [MBError errorWithCode:242 path:v7 format:@"Not a directory, symlink, or regular file (%d)", *a1];
        }

        else
        {
          [MBError errorWithCode:242 format:@"Not a directory, symlink, or regular file (%d)", *a1];
        }

        *a4 = v19 = 0;
        goto LABEL_27;
      }

LABEL_14:
      v19 = 0;
      goto LABEL_27;
    }

    v11 = -24576;
  }

  v12 = sub_1000707C8(a1[20], v9 == 1, a4);
  if (v12 == 255)
  {
    goto LABEL_14;
  }

  v13 = a1[21];
  if (v9 == 2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 24;
  }

  else
  {
    v15 = v13 > 1;
    v16 = *(a1 + 12);
    if (v9 == 1)
    {
      v14 = *(a1 + 11);
      v17 = a1[17];
    }

    else
    {
      v14 = 0;
      v17 = 0;
    }

    v13 = 1;
    v18 = 26;
  }

  v20 = *&a1[v18];
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v21 = *(a1 + 1);
  v22 = *(a1 + 5);
  v23 = *(a1 + 9);
  v24 = *(a1 + 9);
  if (v9 == 1 && (v20 & 0x40) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 13);
  *a2 = v13;
  *(a2 + 4) = v26;
  *(a2 + 12) = 0;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v14;
  *(a2 + 48) = v24;
  *(a2 + 56) = v17;
  *(a2 + 60) = v16;
  *(a2 + 68) = v10 & 0xFFF | v11;
  *(a2 + 70) = v12;
  *(a2 + 71) = (v15 & 0xFB | (4 * ((v20 & 2) != 0)) | v25) ^ 4;
  v27 = a1[16];
  *(a2 + 12) = v27;
  if ((v27 & 0x40000000) != 0)
  {
    *(a2 + 40) = 0;
  }

  v19 = 1;
LABEL_27:

  return v19;
}

uint64_t sub_10008E314(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (!v5)
  {
    sub_1000A08CC();
  }

  if (!a2)
  {
    sub_1000A08A0();
  }

  v6 = v5;
  memset(v10, 0, 136);
  if (getattrlist([v5 fileSystemRepresentation], &word_10011E1F8, v10, 0x88uLL, 0x29u))
  {
    if (a3)
    {
      [MBError errorWithErrno:*__error() path:v6 format:@"getattrlist() error"];
      *a3 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v9[4] = *(&v10[5] + 8);
    v9[5] = *(&v10[6] + 8);
    v9[6] = *(&v10[7] + 8);
    v9[0] = *(&v10[1] + 8);
    v9[1] = *(&v10[2] + 8);
    v9[2] = *(&v10[3] + 8);
    v9[3] = *(&v10[4] + 8);
    v7 = sub_10008E118(v9, a2, v6, a3);
  }

  return v7;
}

uint64_t sub_10008E430(int a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  if (a1 < 0)
  {
    sub_1000A0950();
  }

  v8 = v7;
  if (!v7)
  {
    sub_1000A0924();
  }

  if (!a3)
  {
    sub_1000A08F8();
  }

  if ([(__CFString *)v7 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = @".";
  }

  memset(v13, 0, 136);
  if (getattrlistat(a1, [(__CFString *)v9 fileSystemRepresentation], &word_10011E1F8, v13, 0x88uLL, 0x29uLL))
  {
    if (a4)
    {
      [MBError errorWithErrno:*__error() path:v8 format:@"getattrlistat() error"];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v12[4] = *(&v13[5] + 8);
    v12[5] = *(&v13[6] + 8);
    v12[6] = *(&v13[7] + 8);
    v12[0] = *(&v13[1] + 8);
    v12[1] = *(&v13[2] + 8);
    v12[2] = *(&v13[3] + 8);
    v12[3] = *(&v13[4] + 8);
    v10 = sub_10008E118(v12, a3, v8, a4);
  }

  return v10;
}

uint64_t sub_10008E588(uint64_t result, int a2)
{
  *(result + 12) = a2;
  if ((a2 & 0x40000000) != 0)
  {
    *(result + 40) = 0;
  }

  return result;
}

const __CFString *sub_10008E6B8(__int16 a1)
{
  v1 = @"regular file";
  v2 = a1 & 0xF000;
  v3 = @"(unknown)";
  if (v2 == 0x4000)
  {
    v3 = @"directory";
  }

  if (v2 != 0x8000)
  {
    v1 = v3;
  }

  if (v2 == 40960)
  {
    return @"symbolic link";
  }

  else
  {
    return v1;
  }
}

BOOL sub_10008E6F8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  v4 = v3 & 0xF000;
  if (v4 == 0x4000 || v4 == 0x8000 || v4 == 40960)
  {
    if (v4 == 0x8000)
    {
      v5 = *(a1 + 96);
      if (*(a1 + 6) <= 1u)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      if (v4 == 0x4000)
      {
        v5 = 0;
        v7 = *(a1 + 6);
        v6 = 4;
        goto LABEL_14;
      }

      v5 = 0;
      v6 = 4;
    }

    v7 = 1;
LABEL_14:
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v9 = *(a1 + 80);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    *a2 = v7;
    *(a2 + 4) = v13;
    *(a2 + 12) = 0;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v5;
    *(a2 + 48) = v12;
    *(a2 + 56) = 0;
    *(a2 + 60) = 0;
    *(a2 + 68) = v3;
    *(a2 + 70) = 0;
    *(a2 + 71) = v6;
    v14 = *(a1 + 116);
    *(a2 + 12) = v14;
    if ((v14 & 0x40000000) != 0)
    {
      *(a2 + 40) = 0;
    }

    return v4 == 0x8000 || v4 == 40960 || v4 == 0x4000;
  }

  if (a3)
  {
    *a3 = [MBError posixErrorWithFormat:@"Not a directory, symlink, or regular file (%d)", v3];
  }

  return v4 == 0x8000 || v4 == 40960 || v4 == 0x4000;
}

void sub_10008EEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008EEE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008EF00(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10008F1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008F424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008F64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSObject *sub_10008FD70(uint64_t a1)
{
  if (qword_10011E4C0 != -1)
  {
    sub_1000A097C();
  }

  if (a1 == 4)
  {
    v6 = [qword_10011E4B8 objectForKeyedSubscript:@"D2D"];
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_11:
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v16 = a1;
      *&v16[4] = 2114;
      *&v16[6] = qword_10011E4B8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Missing required product versions for engine type %d: %{public}@", buf, 0x12u);
      _MBLog(@"Df", "Missing required product versions for engine type %d: %{public}@", a1, qword_10011E4B8);
    }

    goto LABEL_27;
  }

  if (a1 == 3)
  {
    v2 = [qword_10011E4B8 objectForKeyedSubscript:@"Cloud"];
    if (!v2)
    {
      v3 = qword_10011E4B8;
      v4 = @"iCloud";
      goto LABEL_14;
    }

LABEL_9:
    v5 = v2;
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    goto LABEL_11;
  }

  v2 = [qword_10011E4B8 objectForKeyedSubscript:@"Local"];
  if (v2)
  {
    goto LABEL_9;
  }

  v3 = qword_10011E4B8;
  v4 = @"Drive";
LABEL_14:
  v5 = [v3 objectForKeyedSubscript:v4];
LABEL_15:
  v6 = v5;

  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_16:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v16 = a1;
      *&v16[4] = 2114;
      *&v16[6] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid required product versions for engine type %d: %{public}@", buf, 0x12u);
      _MBLog(@"E ", "Invalid required product versions for engine type %d: %{public}@", a1, v6);
    }

LABEL_27:
    v11 = 0;
    goto LABEL_34;
  }

  v7 = MBProductVersion();
  if (!v7)
  {
    sub_1000A0990();
  }

  v8 = v7;
  v9 = [v6 objectForKeyedSubscript:v7];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 compare:v9 options:64] != -1)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *v16 = v8;
        *&v16[8] = 1024;
        *&v16[10] = a1;
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "productVersion:%{public}@, engineType:%d, requiredProductVersion:%{public}@", buf, 0x1Cu);
        _MBLog(@"Df", "productVersion:%{public}@, engineType:%d, requiredProductVersion:%{public}@", v8, a1, v9);
      }

      v11 = v9;
      goto LABEL_33;
    }

    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *v16 = v8;
      *&v16[8] = 1024;
      *&v16[10] = a1;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid required product version for %{public}@ and engine type %d: %{public}@", buf, 0x1Cu);
      _MBLog(@"E ", "Invalid required product version for %{public}@ and engine type %d: %{public}@", v8, a1, v6);
    }
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *v16 = v8;
      *&v16[8] = 1024;
      *&v16[10] = a1;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Missing required product version for %{public}@ and engine type %d: %{public}@", buf, 0x1Cu);
      _MBLog(@"Df", "Missing required product version for %{public}@ and engine type %d: %{public}@", v8, a1, v6);
    }
  }

  v11 = 0;
LABEL_33:

LABEL_34:

  return v11;
}

void sub_1000901CC(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"CompatibilityVersions" ofType:@"plist"];

  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];
  v4 = qword_10011E4B8;
  qword_10011E4B8 = v3;

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = v2;
    v8 = 2114;
    v9 = qword_10011E4B8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loaded %{public}@: %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Loaded %{public}@: %{public}@", v2, qword_10011E4B8);
  }
}

id sub_100091778(uint64_t a1)
{
  if (qword_10011E4D8 != -1)
  {
    sub_1000A0A88();
  }

  v2 = qword_10011E4E0;

  return v2;
}

void sub_100091800(id a1)
{
  qword_10011E4D0 = [[MBSystemDomainsVersions alloc] initWithDefaultSystemDomainsPlist];

  _objc_release_x1();
}

void sub_100093E6C(id a1)
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v3 pathForResource:@"Domains" ofType:@"plist"];
  v2 = qword_10011E4E0;
  qword_10011E4E0 = v1;
}

void sub_10009436C(void *a1)
{
  v1 = a1;
  v2 = +[NSCharacterSet whitespaceCharacterSet];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];

  if ([v3 containsString:@"/"])
  {
    sub_1000A0C9C();
  }

  if ([v3 isEqualToString:@".."])
  {
    sub_1000A0D28();
  }

  if ([v3 isEqualToString:&stru_1000FF270])
  {
    sub_1000A0DB4();
  }

  if ([v3 isEqualToString:@"."])
  {
    sub_1000A0E40();
  }
}

void sub_100094BF4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10011E4E8;
  qword_10011E4E8 = v1;

  dword_10011E4F8 = 0;
}

uint64_t sub_1000951B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = +[NSFileManager defaultManager];
  if (![v6 fileExistsAtPath:v5])
  {
    goto LABEL_21;
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing old restore directory", v25, 2u);
    _MBLog(@"Df", "Removing old restore directory");
  }

  if ([v6 mb_moveToTmpDirThenRemoveItemAtPath:v5 error:a3])
  {
LABEL_21:
    v8 = [v5 stringByAppendingPathComponent:@"var"];
    v9 = [v6 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:a3];

    if (v9)
    {
      v28[0] = NSFileOwnerAccountName;
      v28[1] = NSFileGroupOwnerAccountName;
      v29[0] = @"mobile";
      v29[1] = @"mobile";
      v10 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
      v26[0] = NSFileOwnerAccountName;
      v26[1] = NSFileGroupOwnerAccountName;
      v27[0] = @"_securityd";
      v27[1] = @"wheel";
      v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      if (a2 == 2)
      {
        v12 = [v5 stringByAppendingPathComponent:@"var/mobile"];
        v13 = [v6 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:v10 error:a3];

        if (v13)
        {
LABEL_8:
          v14 = 1;
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v15 = [v5 stringByAppendingPathComponent:@"var/Keychains"];
        v16 = [v6 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:v11 error:a3];

        if (v16)
        {
          v17 = [v5 stringByAppendingPathComponent:@"var/Managed Preferences"];
          v18 = [v6 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:a3];

          if (v18)
          {
            v19 = [v5 stringByAppendingPathComponent:@"var/Managed Preferences/mobile"];
            v20 = [v6 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:v10 error:a3];

            if (v20)
            {
              v21 = [v5 stringByAppendingPathComponent:@"var/MobileDevice"];
              v22 = [v6 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:a3];

              if (v22)
              {
                v23 = [v5 stringByAppendingPathComponent:@"var/MobileDevice/ProvisioningProfiles"];
                v14 = [v6 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:v10 error:a3];

                if (!v14)
                {
                  goto LABEL_17;
                }

                goto LABEL_8;
              }
            }
          }
        }
      }

      v14 = 0;
      goto LABEL_17;
    }
  }

  v14 = 0;
LABEL_18:

  return v14;
}

uint64_t sub_100097450(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100097468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "=restore-placeholder= Failed to enumerate placeholder ipas at %@: %@", buf, 0x16u);
    _MBLog(@"F ", "=restore-placeholder= Failed to enumerate placeholder ipas at %@: %@", v5, v6);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  return 0;
}

void sub_1000978FC(id a1)
{
  qword_10011E500 = objc_alloc_init(MBNotificationCenter);

  _objc_release_x1();
}

void sub_100097C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100097C78(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v2 intValue];
  }

  else
  {
    v4 = 1;
    while (1)
    {
      v5 = v4;
      *(*(*(a1 + 56) + 8) + 24) = notify_register_check([*(a1 + 40) UTF8String], (*(*(a1 + 48) + 8) + 24));
      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        break;
      }

      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        v8 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 138412546;
        v11 = v7;
        v12 = 2048;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "notify_register_check(%@) failed: %lu", buf, 0x16u);
        _MBLog(@"E ", "notify_register_check(%@) failed: %lu", *(a1 + 40), *(*(*(a1 + 56) + 8) + 24));
      }

      v4 = 0;
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v9 = [NSNumber numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
    [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:*(a1 + 40)];
  }

LABEL_10:
}

id sub_100098474()
{
  v0 = +[NSMutableArray array];
  v1 = objc_alloc_init(MBAppleCarePlugin);
  [v0 addObject:v1];

  v2 = objc_alloc_init(MBApplePushServicePlugin);
  [v0 addObject:v2];

  v3 = objc_alloc_init(MBDataMigratorPlugin);
  [v0 addObject:v3];

  v4 = objc_alloc_init(MBDaemonPlugin);
  [v0 addObject:v4];

  v5 = objc_alloc_init(MBiTunesStorePlugin);
  [v0 addObject:v5];

  v6 = objc_alloc_init(MBKeychainPlugin);
  [v0 addObject:v6];

  v7 = objc_alloc_init(MBLockdownPlugin);
  [v0 addObject:v7];

  v8 = objc_alloc_init(MBManagerPlugin);
  [v0 addObject:v8];

  v9 = objc_alloc_init(MBRestoreAppsPlugin);
  [v0 addObject:v9];

  v10 = objc_alloc_init(MBATCBundlesPlugin);
  [v0 addObject:v10];

  v11 = objc_alloc_init(MBManateePlugin);
  [v0 addObject:v11];

  v12 = objc_alloc_init(MBWiFiPlugin);
  [v0 addObject:v12];

  v13 = objc_alloc_init(MBiCloudDrivePlugin);
  [v0 addObject:v13];

  v14 = objc_alloc_init(MBScreenTimePlugin);
  [v0 addObject:v14];

  v15 = objc_alloc_init(MBSiriPlugin);
  [v0 addObject:v15];

  v16 = objc_alloc_init(MBKeyboardPlugin);
  [v0 addObject:v16];

  v17 = objc_alloc_init(MBFileProviderPlugin);
  [v0 addObject:v17];

  return v0;
}

void sub_10009AED4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009AF40()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009AFAC()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009B018()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009B084()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009B174(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBProperties.m" lineNumber:360 description:{@"%@ value not an NSDictionary", @"AppleIDs"}];
}

void sub_10009B1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBProperties.m" lineNumber:377 description:{@"Account item %@ not a string", a3}];
}

void sub_10009B264(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBProperties.m" lineNumber:501 description:@"Containers value not an NSDictionary"];
}

id sub_10009B53C()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B590()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B5E4()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B638()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B68C()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B6E0()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B734()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B788()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B7DC()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B830()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B884()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B8D8()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009B92C()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100009870();
  sub_100009864();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BAC0()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BB14()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BB68()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BBBC()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BC10()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BC64()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BD20()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BD74()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009BDC8()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009BE1C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"MBDecoder.m" lineNumber:127 description:@"Mark not set"];

  *a4 = *a3;
}

void sub_10009BE98(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBDrive.m" lineNumber:45 description:@"Unexpected result count"];
}

void sub_10009BF38()
{
  sub_100018EBC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void sub_10009BFB0()
{
  sub_100018EBC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void sub_10009C028()
{
  sub_100018EBC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

void sub_10009C0A0()
{
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C100(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBProgress.m" lineNumber:29 description:@"Negative duration"];
}

void sub_10009C174(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a3 object:a4 file:@"MBProgress.m" lineNumber:35 description:{@"Progress overflow (%0.4f > %0.4f)", *a1, *a2}];
}

void sub_10009C25C()
{
  sub_100002684();
  v5 = +[NSAssertionHandler currentHandler];
  v2 = [v1 settingsContext];
  v3 = [v2 targetIdentifier];
  v4 = MBDeviceUDID_Legacy();
  [v5 handleFailureInMethod:v0 object:v1 file:@"MBDriveBackupEngine.m" lineNumber:502 description:{@"Backup target device ID %@ doesn't match actual device ID %@", v3, v4}];
}

void sub_10009C318()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C3A0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C598()
{
  sub_100028F38();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_100028F48();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C5F8()
{
  sub_100028F38();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_100028F48();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C658()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C6B4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C720()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009C810()
{
  sub_100028F38();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"MBDriveBackupEngine.m" lineNumber:2652 description:{@"No operation found for path: %@", v0}];
}

void sub_10009D0D8(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[MBDriveRestoreEngine initWithSettingsContext:debugContext:]"];
  [v2 handleFailureInFunction:v3 file:@"MBDriveRestoreEngine.m" lineNumber:97 description:{@"Unable to obtain personal persona for restore engine: %@", a1}];
}

void sub_10009D164()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D1D0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D23C()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBDriveRestoreEngine.m" lineNumber:143 description:@"Manifest not loaded yet"];

  *v0 = *v1;
}

void sub_10009D2AC()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBDriveRestoreEngine.m" lineNumber:153 description:@"No manifest yet"];

  *v0 = *v1;
}

void sub_10009D31C()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D388()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D3F4()
{
  sub_100002684();
  v5 = +[NSAssertionHandler currentHandler];
  v2 = [v1 settingsContext];
  v3 = [v2 targetIdentifier];
  v4 = MBDeviceUDID_Legacy();
  [v5 handleFailureInMethod:v0 object:v1 file:@"MBDriveRestoreEngine.m" lineNumber:350 description:{@"Restore target device ID %@ doesn't match actual device ID %@", v3, v4}];
}

void sub_10009D508()
{
  sub_100028F38();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_1000360C4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D568()
{
  sub_100028F38();
  +[NSAssertionHandler currentHandler];
  objc_claimAutoreleasedReturnValue();
  sub_1000360C4();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009D620()
{
  sub_100028F38();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"MBDriveRestoreEngine.m" lineNumber:1311 description:{@"Couldn't extract file ID from temporary restore path: %@", v0}];
}

void sub_10009D698()
{
  sub_100028F38();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"MBDriveRestoreEngine.m" lineNumber:1314 description:{@"Couldn't find file object for temporary restore path: %@", v0}];
}

void sub_10009D880(uint64_t a1)
{
  v3 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"void _mkpath_if_necessary(const char *)"];
  [v3 handleFailureInFunction:v2 file:@"MBTemporaryDirectory.m" lineNumber:76 description:{@"TempDir: Unable to set ownership on %s directory (chown error: %d)", a1, *__error()}];
}

void sub_10009DA24(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"NSString *_mktemp(const char *)"];
  [v2 handleFailureInFunction:v3 file:@"MBTemporaryDirectory.m" lineNumber:58 description:{@"TempDir: Unable to create temp file path in %s (%d)", a1, *__error()}];
}

void sub_10009DB10(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBApp.m" lineNumber:301 description:@"Not a safe harbor"];
}

void sub_10009DE44(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBManifestDB.m" lineNumber:156 description:@"DomainManager must not be nil"];
}

void sub_10009E244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBDatabaseIndex.m" lineNumber:78 description:{@"Duplicate file ID: %@", a3}];
}

void sub_10009E2C4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBManifest.m" lineNumber:24 description:@"Null manifest properties"];
}

void sub_10009E338(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBManifest.m" lineNumber:25 description:@"Null manifest database"];
}

void sub_10009E3AC()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBManifest.m" lineNumber:39 description:@"Database index not set"];

  *v0 = *v1;
}

void sub_10009E41C()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBManifest.m" lineNumber:48 description:@"Database index not set"];

  *v0 = *v1;
}

void sub_10009E510()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBFile.m" lineNumber:143 description:@"Null domain"];

  *v0 = *v1;
}

void sub_10009E580(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = +[NSAssertionHandler currentHandler];
  v6 = [*a1 name];
  [v7 handleFailureInMethod:a3 object:a2 file:@"MBFile.m" lineNumber:144 description:{@"No absolute path for file record (uninstalled app): %@/%@", v6, *(a2 + 152)}];
}

void sub_10009E620()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009E68C()
{
  sub_1000360B0();
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"MBFile.m" lineNumber:173 description:@"Null domain"];

  *v0 = *v1;
}

void sub_10009E6FC()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009E768()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009E7D4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009E840(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBStatus.m" lineNumber:178 description:@"Saving old status format?"];
}

id sub_10009E990()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009E9E4()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009EA38()
{
  sub_1000360B0();
  +[NSAssertionHandler currentHandler];
  v2 = +[MBDriveOperation stringForType:](MBDriveOperation, "stringForType:", [v1 type]);
  v5 = +[MBDriveOperation stringForType:](MBDriveOperation, "stringForType:", [v0 type]);
  sub_100002690();
  return [v3 handleFailureInMethod:v2 object:v5 file:? lineNumber:? description:?];
}

id sub_10009EAE4()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009EB2C()
{
  sub_1000360B0();
  +[NSAssertionHandler currentHandler];
  v2 = *v1;
  v5 = [*v0 count];
  sub_100002690();
  return [v3 handleFailureInMethod:v2 object:v5 file:? lineNumber:? description:?];
}

id sub_10009EBA4()
{
  sub_100002684();
  +[NSAssertionHandler currentHandler];
  sub_100002690();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBDriveOperation.m" lineNumber:a3 description:@"Invalid count"];
}

void sub_10009EC98(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBDriveOperation.m" lineNumber:114 description:@"Invalid size"];
}

void sub_10009ED0C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBDriveOperation.m" lineNumber:115 description:@"Negative duration"];
}

void sub_10009EDAC()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EE18()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EE74()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EED0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EF3C()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009EFA8()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F014()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F130(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [a1 identifier];
  [v6 handleFailureInMethod:a2 object:a3 file:@"MBAppManager.m" lineNumber:613 description:{@"Date missing from safe harbor: %@", v7}];
}

void sub_10009F2D4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F340()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F39C()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F464()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F4D0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F568()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_10009F5C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"MBKeyBag.m" lineNumber:343 description:@"MKBOTABackupBagCopyUUID succeeded but data is null"];
}

id sub_10009F628(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"MBKeyBag.m" lineNumber:351 description:@"MKBKeyBagCopyUUID succeeded but data is null"];
}

void sub_10009F68C()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F714()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F780()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBEncryptedFileHandle.m" lineNumber:58 description:{@"No encrypted file key for restoring file: %@", a3}];
}

void sub_10009F8C4()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009F930()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009FDB8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PQLConnection+MBAdditions.m" lineNumber:125 description:@"Database versions are not ordered correctly!"];
}

void sub_10009FEA0()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009FF28()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009FF84()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10009FFE0()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A003C()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0098()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0104()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0160()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A01BC()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0228()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0284()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A02E0()
{
  sub_100002684();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A034C()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A03A8()
{
  sub_100002684();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100002690();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000A0430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBProtectionClassFileHandleFactory.m" lineNumber:22 description:{@"Invalid protection class: %d", a3}];
}

void sub_1000A05E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"MBFileScanner.m" lineNumber:529 description:{@"Relative path to backup in domain is in set not to backup also: %@-%@", a3, a4}];
}

void sub_1000A09BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBEngine.m" lineNumber:112 description:{@"Unable to obtain personal persona: %@", a3}];
}

void sub_1000A0B08(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBDomainManager.m" lineNumber:229 description:@"Null name"];
}

void sub_1000A0B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBDomainManager.m" lineNumber:276 description:{@"Domain not found for redirect: %@", a3}];
}

void sub_1000A0BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MBDomainManager.m" lineNumber:285 description:{@"Domain already exists: %@", a3}];
}

void sub_1000A0C9C()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  [sub_100097568(v0 v1];
}

void sub_1000A0D28()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  [sub_100097568(v0 v1];
}

void sub_1000A0DB4()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  [sub_100097568(v0 v1];
}

void sub_1000A0E40()
{
  v7 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  [sub_100097568(v0 v1];
}