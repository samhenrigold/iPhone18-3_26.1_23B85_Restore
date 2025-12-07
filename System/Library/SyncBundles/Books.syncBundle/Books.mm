void sub_13DC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_32DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v13 = BCDefaultLog(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1203C([v11 description], va);
    }

    if (v10)
    {
      *v10 = [[NSError alloc] initWithDomain:@"com.apple.atc.Books" code:-2 userInfo:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v11)}];
    }

    objc_end_catch();
    JUMPOUT(0x32ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_3A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v12 = BCDefaultLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_120F4([v10 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x3A4CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v12 = BCDefaultLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1219C([v10 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x3D00);
  }

  _Unwind_Resume(exception_object);
}

void sub_4014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v18 = BCDefaultLog(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1219C([v16 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x3FD8);
  }

  _Unwind_Resume(exception_object);
}

void sub_44AC(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v4 = BCDefaultLog(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_12244(@"/var/mobile/Media/Books/Sync/Upload.plist", [v2 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x42E0);
  }

  _Unwind_Resume(exception_object);
}

void sub_45F8(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v5 = BCDefaultLog(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_12284(v2, [v3 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x45C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_4824(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v5 = BCDefaultLog(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_122C4([v2 identifier], objc_msgSend(v3, "description"), va);
    }

    objc_end_catch();
    JUMPOUT(0x47F4);
  }

  _Unwind_Resume(exception_object);
}

void sub_49C4(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v4 = BCDefaultLog(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_12454([v2 description], va);
    }

    objc_end_catch();
    JUMPOUT(0x4904);
  }

  _Unwind_Resume(exception_object);
}

void sub_53D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_53F8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = objc_opt_class();
  if ([BCDynamicCast(v8 objc_msgSend(a2])
  {
    v9 = [a2 mutableCopy];
    [v9 setObject:objc_msgSend(objc_msgSend(*(a1 + 32) forKey:{"path"), "lastPathComponent"), @"Path"}];
    [*(a1 + 40) replaceObjectAtIndex:a3 withObject:v9];

    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_5CEC(uint64_t a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) accountInfoForAssetAtPath:a2];
  v8 = [objc_msgSend(v7 "appleID")];
  if (v8 && (v8 = [*(a1 + 32) _stringFromObject:{objc_msgSend(a3, "objectForKey:", @"DSID"}]) != 0)
  {
    v10 = [a2 hasPrefix:@"/var/mobile/Media/Books/Purchases"];
    v11 = v10;
    v13 = BCDefaultLog(v10, v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        v20 = 138412290;
        v21 = a2;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "#D2D: Adding storeAsset D2D Local path: %@", &v20, 0xCu);
      }

      v15 = [*(a1 + 32) pathsForDevice2DeviceRestoreRedownloadable];
    }

    else
    {
      if (v14)
      {
        v20 = 138412290;
        v21 = a2;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "#D2D: Adding storeAsset D2D Redownloadable path: %@", &v20, 0xCu);
      }

      v15 = [*(a1 + 32) pathsForDevice2DeviceRestoreLocal];
    }

    [v15 addObject:a2];
    [*(a1 + 32) addKnownAccountInfo:v7];
  }

  else
  {
    v16 = BCDefaultLog(v8, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = a2;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "#D2D: Adding !storeAsset D2D Local path: %@", &v20, 0xCu);
    }

    v17 = [objc_msgSend(*(a1 + 32) "pathsForDevice2DeviceRestoreLocal")];
    v19 = BCDefaultLog(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = a2;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Adding !storeAsset path: %@", &v20, 0xCu);
    }

    [*(a1 + 40) addObject:a2];
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_624C(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = BCDefaultLog(v6, v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 40);
          *buf = 67109634;
          v22 = v13;
          v23 = 2048;
          v24 = a3;
          v25 = 2112;
          v26 = v11;
          _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "#D2D: enumeratePathsForBackupType:%u pathAttributes: %llu enumerating: %@", buf, 0x1Cu);
        }

        v6 = (*(*(a1 + 32) + 16))();
        if (v20)
        {
          v14 = 1;
          return v14 & 1;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v6 = [a2 countByEnumeratingWithState:&v16 objects:v27 count:16];
      v8 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }

    v14 = v20;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void sub_8990(void *a1)
{
  v2 = *(a1[4] + 16);
  if (!v2)
  {
    *(a1[4] + 16) = objc_alloc_init(NSMutableDictionary);
    v2 = *(a1[4] + 16);
  }

  *(*(a1[6] + 8) + 40) = [v2 objectForKey:a1[5]];
  if (!*(*(a1[6] + 8) + 40))
  {
    *(*(a1[6] + 8) + 40) = [[BCPlist alloc] initWithPath:a1[5]];
    v3 = [[ThreadSafeProxy alloc] initWithObject:*(*(a1[6] + 8) + 40)];
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];

    *(*(a1[6] + 8) + 40) = v3;
  }
}

id sub_9148(uint64_t a1)
{
  result = [[NSSet alloc] initWithObjects:{objc_msgSend(*(a1 + 32), "alternatePathForPlist:withNamePrefix:", @"/var/mobile/Media/Books/Books.plist", @"Backup-", objc_msgSend(*(a1 + 32), "alternatePathForPlist:withNamePrefix:", @"/var/mobile/Media/Books/Purchases/Purchases.plist", @"Backup-", objc_msgSend(*(a1 + 32), "alternatePathForPlist:withNamePrefix:", @"/var/mobile/Media/Books/Managed/Managed.plist", @"Backup-", @"/var/mobile/Media/Books/iBooksData.plist", @"/var/mobile/Media/Books/iBooksData2.plist", @"/var/mobile/Media/Books", @"/var/mobile/Media/Books/Purchases", 0}];
  qword_267E0 = result;
  return result;
}

void sub_9BA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = BCDefaultLog(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1312C(a1);
    }
  }

  else
  {
    v10 = 0;
    v4 = [*(a1 + 40) removeItemAtURL:a2 error:&v10];
    v5 = v10;
    v7 = BCDefaultLog(v4, v6);
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1312C(a1);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "deleted: %@", buf, 0xCu);
    }
  }
}

uint64_t sub_B200(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_B218(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_B244(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t sub_B25C(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_B2B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

id _compareDictionaryValues(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 objectForKey:?];
  v6 = [a2 objectForKey:a3];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
    }
  }

  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v5 && (isKindOfClass & 1) != 0)
    {

      return [v5 compare:v6];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  if (!v5 || (isKindOfClass & 1) != 0)
  {
    return ((((v5 == 0) & isKindOfClass) << 63) >> 63);
  }

  else
  {
    return &dword_0 + 1;
  }
}

void sub_C528(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_C544(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

uint64_t BCDynamicCast(uint64_t a1, uint64_t a2)
{
  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void *BCProtocolCast(uint64_t a1, void *a2)
{
  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

void *BCClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef BCCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

void sub_E4CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_F084(uint64_t a1)
{
  v2 = [*(a1 + 32) entities:*(a1 + 40) byPredicate:*(a1 + 48) fromMOC:*(a1 + 56)];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 56) deleteObject:*(*(&v16 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v3 = [v2 countByEnumeratingWithState:&v16 objects:v25 count:16];
      v5 = v3;
    }

    while (v3);
  }

  v8 = BCDefaultLog(v3, v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [v2 count];
    *buf = 138412802;
    *&buf[4] = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Removing %@ with predicate: %@ -- [Matched: %d]", buf, 0x1Cu);
  }

  *buf = 0;
  result = [*(a1 + 56) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v14 = BCDefaultLog(result, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_13BB0();
      }
    }

    v15 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v15, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 64), *(a1 + 32), @"BCAssetDatabase.m", 129, @"{%@} - Error saving MOC: %@ -- User Info: %@", *(a1 + 40), *buf, [*buf userInfo]);
  }

  return result;
}

void sub_F4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_F4F4(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [NSPredicate predicateWithFormat:@"persistentID IN %@", *(a1 + 48)];
  v5 = objc_alloc_init(NSFetchRequest);
  [v5 setEntity:v2];
  [v5 setPredicate:v4];
  [v5 setResultType:2];
  [v5 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"persistentID", 0)}];
  v21 = 0;
  v7 = [*(a1 + 40) executeFetchRequest:v5 error:&v21];
  if (!v7 && v21)
  {
    v8 = BCDefaultLog(0, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_13CDC();
    }

    goto LABEL_8;
  }

  if (!v7)
  {
LABEL_8:
    v9 = objc_alloc_init(NSSet);
    goto LABEL_9;
  }

  v9 = [[NSSet alloc] initWithArray:{objc_msgSend(v7, "valueForKeyPath:", @"persistentID"}];
LABEL_9:
  *(*(*(a1 + 56) + 8) + 40) = v9;

  if (*(a1 + 64) && [*(*(*(a1 + 56) + 8) + 40) count])
  {
    v10 = [NSPredicate predicateWithFormat:@"persistentID IN %@", *(*(*(a1 + 56) + 8) + 40)];
    v11 = [NSExpression expressionForFunction:@"sum:" arguments:[NSArray arrayWithObject:[NSExpression expressionForKeyPath:@"computedSize"]]];
    v12 = objc_alloc_init(NSExpressionDescription);
    [v12 setName:@"sum_computedSize"];
    [v12 setExpression:v11];
    [v12 setExpressionResultType:300];
    v13 = objc_alloc_init(NSFetchRequest);
    [v13 setEntity:v2];
    [v13 setPredicate:v10];
    [v13 setResultType:2];
    [v13 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v12, 0)}];

    v21 = 0;
    v15 = [*(a1 + 40) executeFetchRequest:v13 error:&v21];
    if (!v15)
    {
      if (v21)
      {
        v16 = BCDefaultLog(0, v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_13CDC();
        }
      }
    }

    v19 = BCDefaultLog(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_13D44();
    }

    if ([v15 count] == &dword_0 + 1)
    {
      **(a1 + 64) = [objc_msgSend(objc_msgSend(v15 "lastObject")];
      *(*(a1 + 64) + 8) = [*(*(*(a1 + 56) + 8) + 40) count];
    }

    else
    {
      v20 = *(a1 + 64);
      *v20 = 0;
      v20[1] = 0;
    }
  }
}

void sub_F950(uint64_t a1)
{
  v2 = [*(a1 + 32) entities:@"BCOutstandingAsset" byPredicate:+[NSPredicate predicateWithFormat:](NSPredicate fromMOC:{"predicateWithFormat:", @"restoreRelated == %d", *(a1 + 56)), *(a1 + 40)}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) assetDictionaryAsDictionary];
        if (v8)
        {
          [*(a1 + 48) addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
      v5 = v3;
    }

    while (v3);
  }

  v9 = BCDefaultLog(v3, v4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v2 count];
    v11 = *(a1 + 56);
    *buf = 67109376;
    v17 = v10;
    v18 = 1024;
    v19 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Assets by Restore Flag: %d Assets [Flag: %d]", buf, 0xEu);
  }
}

id sub_FC14(uint64_t a1)
{
  v35 = [NSNumber numberWithBool:*(a1 + 64)];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(a1 + 32);
  v37 = a1;
  v2 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v39;
    v6 = &ATGetDiskUsageForPath_ptr;
    do
    {
      v7 = 0;
      do
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = BCDynamicCast(v9, v8);
        v11 = objc_opt_class();
        v12 = BCDynamicCast(v11, [v10 objectForKey:@"Persistent ID"]);
        if ([v12 length])
        {
          if (([v12 isEqualToString:v4] & 1) == 0)
          {
            v14 = v6;
            v15 = objc_opt_class();
            v16 = BCDynamicCast(v15, [v10 objectForKey:@"Path"]);
            v17 = objc_opt_class();
            v18 = BCDynamicCast(v17, [v10 objectForKey:@"Backup-Path"]);
            if (*(v37 + 64) != 1 || (v19 = v18, [v16 length]) || objc_msgSend(v19, "length"))
            {
              v21 = [NSEntityDescription insertNewObjectForEntityForName:@"BCOutstandingAsset" inManagedObjectContext:*(v37 + 40)];
              [(NSManagedObject *)v21 setPersistentID:v12];
              [(NSManagedObject *)v21 setRestoreRelated:v35];
              v22 = [(NSManagedObject *)v21 setAssetDictionaryAsDictionary:v10];
              v24 = BCDefaultLog(v22, v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = *(v37 + 64);
                *buf = 138412546;
                *&buf[4] = v12;
                v43 = 1024;
                LODWORD(v44) = v25;
                _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Inserting asset row: %@ -- [Restore Flag: %d]", buf, 0x12u);
              }

              v6 = v14;
              v4 = v12;
            }

            else
            {
              v29 = BCDefaultLog(0, v20);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v12;
                _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "Wanted to insert restore asset without a path: %@", buf, 0xCu);
              }

              v6 = v14;
            }
          }
        }

        else
        {
          v26 = BCDefaultLog(0, v13);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [v10 objectForKey:@"Artist"];
            v28 = [v10 objectForKey:@"Name"];
            *buf = 138412546;
            *&buf[4] = v27;
            v43 = 2112;
            v44 = v28;
            _os_log_error_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Wanted to insert asset without a PID: {%@ - %@}", buf, 0x16u);
          }
        }

        v7 = v7 + 1;
      }

      while (v3 != v7);
      v30 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      v3 = v30;
    }

    while (v30);
  }

  *buf = 0;
  result = [*(v37 + 40) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v33 = BCDefaultLog(result, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_13DB8();
      }
    }

    v34 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v34, "handleFailureInMethod:object:file:lineNumber:description:", *(v37 + 56), *(v37 + 48), @"BCAssetDatabase.m", 329, @"Error saving MOC: %@ -- User Info: %@", *buf, [*buf userInfo]);
  }

  return result;
}

id sub_101B8(uint64_t a1)
{
  v43 = [NSNumber numberWithBool:*(a1 + 64)];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v46;
    do
    {
      v5 = 0;
      do
      {
        if (*v46 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * v5);
        v7 = objc_opt_class();
        v8 = BCDynamicCast(v7, v6);
        v9 = objc_opt_class();
        v10 = BCDynamicCast(v9, [v8 objectForKey:@"Persistent ID"]);
        if (![v10 length])
        {
          v27 = BCDefaultLog(0, v11);
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          v28 = [v8 objectForKey:@"Artist"];
          v29 = [v8 objectForKey:@"Name"];
          *buf = 138412546;
          *&buf[4] = v28;
          v50 = 2112;
          v51 = v29;
          v30 = v27;
          v31 = "Wanted to insert asset without a PID: {%@ - %@}";
          v32 = 22;
          goto LABEL_17;
        }

        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v8 objectForKey:@"Path"]);
        v14 = objc_opt_class();
        v15 = BCDynamicCast(v14, [v8 objectForKey:@"Backup-Path"]);
        if (*(a1 + 64) != 1 || (v16 = v15, [v13 length]) || objc_msgSend(v16, "length"))
        {
          v18 = [*(a1 + 40) entities:@"BCOutstandingAsset" byPredicate:+[NSPredicate predicateWithFormat:](NSPredicate fromMOC:{"predicateWithFormat:", @"persistentID == %@", v10), *(a1 + 48)}];
          if (![v18 count])
          {
            goto LABEL_21;
          }

          v19 = [v18 lastObject];
          v20 = v19;
          if ((*(a1 + 64) & 1) != 0 || (v21 = [objc_msgSend(v19 "restoreRelated")], !v21))
          {
            [v20 setPersistentID:v10];
            [v20 setRestoreRelated:v43];
            v33 = [v20 setAssetDictionaryAsDictionary:v8];
            v35 = BCDefaultLog(v33, v34);
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            v36 = *(a1 + 64);
            *buf = 138412546;
            *&buf[4] = v10;
            v50 = 1024;
            LODWORD(v51) = v36;
            v24 = v35;
            v25 = "Patching existing asset row: %@ -- [Restore Flag: %d]";
            v26 = 18;
          }

          else
          {
            v23 = BCDefaultLog(v21, v22);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            *buf = 138412290;
            *&buf[4] = v10;
            v24 = v23;
            v25 = "Skipping existing asset row due to restore flag mismatch: %@";
            v26 = 12;
          }

          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
        }

        else
        {
          v37 = BCDefaultLog(0, v17);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v10;
            v30 = v37;
            v31 = "Wanted to update restore asset without a path: %@";
            v32 = 12;
LABEL_17:
            _os_log_error_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, v31, buf, v32);
          }
        }

LABEL_21:
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v38 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      v3 = v38;
    }

    while (v38);
  }

  *buf = 0;
  result = [*(a1 + 48) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v41 = BCDefaultLog(result, v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_13DB8();
      }
    }

    v42 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v42, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 56), *(a1 + 40), @"BCAssetDatabase.m", 389, @"Error saving MOC: %@ -- User Info: %@", *buf, [*buf userInfo]);
  }

  return result;
}

id sub_10774(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"NOT (persistentID IN %@)", *(a1 + 32)];
  v3 = +[NSMutableArray array];
  v4 = [*(a1 + 40) entities:@"BCOutstandingAsset" byPredicate:v2 fromMOC:*(a1 + 48)];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = [objc_msgSend(v10 "downloadCompletePath")];
        if (v11)
        {
          v11 = [v3 addObject:{objc_msgSend(v10, "downloadCompletePath")}];
        }

        v13 = BCDefaultLog(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Removing outstanding asset %@", buf, 0xCu);
        }

        [*(a1 + 48) deleteObject:v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v5 = [v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
      v7 = v5;
    }

    while (v5);
  }

  v14 = BCDefaultLog(v5, v6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 count];
    v16 = [v3 count];
    *buf = 67109376;
    *&buf[4] = v15;
    *&buf[8] = 1024;
    *&buf[10] = v16;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Removing unnecessary outstanding assets -- [Matched: %d] [Paths to delete: %d]", buf, 0xEu);
  }

  v17 = +[NSFileManager defaultManager];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = [v3 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v30;
    do
    {
      v22 = 0;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v3);
        }

        v23 = *(*(&v29 + 1) + 8 * v22);
        v24 = BCDefaultLog(v18, v19);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v23;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Removing file at path %@", buf, 0xCu);
        }

        v18 = [(NSFileManager *)v17 removeItemAtPath:v23 error:0];
        ++v22;
      }

      while (v20 != v22);
      v18 = [v3 countByEnumeratingWithState:&v29 objects:v37 count:16];
      v20 = v18;
    }

    while (v18);
  }

  *buf = 0;
  result = [*(a1 + 48) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v27 = BCDefaultLog(result, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_13E20();
      }
    }

    v28 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v28, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 56), *(a1 + 40), @"BCAssetDatabase.m", 435, @"{%@} - Error saving MOC: %@ -- User Info: %@", @"BCOutstandingAsset", *buf, [*buf userInfo]);
  }

  return result;
}

id sub_10F30(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = [*(a1 + 40) entities:@"BCOutstandingAsset" byPredicate:+[NSPredicate predicateWithFormat:](NSPredicate fromMOC:{"predicateWithFormat:", @"persistentID == %@", *(a1 + 32)), *(a1 + 48)}];
    if ([v2 count])
    {
      v4 = [v2 lastObject];
      v5 = [objc_msgSend(v4 "downloadCompletePath")];
      if (v5)
      {
        v7 = BCDefaultLog(v5, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + 56);
          *buf = 138412546;
          *&buf[4] = v8;
          v22 = 2112;
          v23 = v9;
          v10 = "Existing asset row: %@ -- [Same Path: %@]";
LABEL_10:
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
        }
      }

      else
      {
        v13 = [v4 setDownloadCompletePath:*(a1 + 56)];
        v7 = BCDefaultLog(v13, v14);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v16 = *(a1 + 56);
          *buf = 138412546;
          *&buf[4] = v15;
          v22 = 2112;
          v23 = v16;
          v10 = "Updating existing asset row: %@ -- [Path: %@]";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = BCDefaultLog(0, v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 56);
        *buf = 138412546;
        *&buf[4] = v11;
        v22 = 2112;
        v23 = v12;
        v10 = "No existing asset row: %@ -- [Path: %@]";
        goto LABEL_10;
      }
    }
  }

  result = [*(a1 + 48) hasChanges];
  if (result)
  {
    *buf = 0;
    result = [*(a1 + 48) save:buf];
    if ((result & 1) == 0)
    {
      if (*buf)
      {
        v19 = BCDefaultLog(result, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_13DB8();
        }
      }

      v20 = +[NSAssertionHandler currentHandler];
      return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v20, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 64), *(a1 + 40), @"BCAssetDatabase.m", 508, @"Error saving MOC: %@ -- User Info: %@", *buf, [*buf userInfo]);
    }
  }

  return result;
}

void sub_11308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_11324(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:@"BCOutstandingAsset" inManagedObjectContext:*(a1 + 32)];
  v3 = [NSPredicate predicateWithFormat:@"downloadCompletePath IN %@", *(a1 + 40)];
  v4 = objc_alloc_init(NSFetchRequest);
  [v4 setEntity:v2];
  [v4 setPredicate:v3];
  [v4 setResultType:2];
  [v4 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"downloadCompletePath", 0)}];
  v14 = 0;
  v6 = [*(a1 + 32) executeFetchRequest:v4 error:&v14];
  if (!v6)
  {
    if (v14)
    {
      v7 = BCDefaultLog(0, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_13CDC();
      }
    }
  }

  v10 = BCDefaultLog(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) count];
    v12 = [v6 count];
    *buf = 67109376;
    v16 = v11;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Input count: %d; Output count: %d", buf, 0xEu);
  }

  result = [v6 valueForKeyPath:@"downloadCompletePath"];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void sub_115E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSDictionary *sub_115FC(uint64_t a1)
{
  v2 = [NSEntityDescription entityForName:@"BCOutstandingAsset" inManagedObjectContext:*(a1 + 32)];
  v3 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"downloadCompletePath != %@", +[NSNull null]);
  v4 = objc_alloc_init(NSFetchRequest);
  [v4 setEntity:v2];
  [v4 setPredicate:v3];
  [v4 setResultType:2];
  [v4 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"downloadCompletePath", @"persistentID", 0)}];
  v11 = 0;
  v6 = [*(a1 + 32) executeFetchRequest:v4 error:&v11];
  if (!v6)
  {
    if (v11)
    {
      v7 = BCDefaultLog(0, v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_13CDC();
      }
    }
  }

  v8 = [v6 valueForKeyPath:@"persistentID"];
  v9 = [v6 valueForKeyPath:@"downloadCompletePath"];
  result = [v8 count];
  if (result)
  {
    result = [NSDictionary dictionaryWithObjects:v9 forKeys:v8];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

id sub_118FC(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  v3 = [*(a1 + 40) entities:@"BCInstalledAsset" byPredicate:+[NSPredicate predicateWithFormat:](NSPredicate fromMOC:{"predicateWithFormat:", @"persistentID == %@", *(a1 + 32)), *(a1 + 48)}];
  if ([v3 count])
  {
    v4 = [objc_msgSend(v3 "lastObject")];
    v6 = BCDefaultLog(v4, v5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v7;
    v18 = 2112;
    v19 = v2;
    v8 = "Updating installed asset row: %@ -- [Computed Size: %@]";
  }

  else
  {
    v9 = [NSEntityDescription insertNewObjectForEntityForName:@"BCInstalledAsset" inManagedObjectContext:*(a1 + 48)];
    [(NSManagedObject *)v9 setPersistentID:*(a1 + 32)];
    v10 = [(NSManagedObject *)v9 setComputedSize:v2];
    v6 = BCDefaultLog(v10, v11);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v12;
    v18 = 2112;
    v19 = v2;
    v8 = "Inserting installed asset row: %@ -- [Computed Size: %@]";
  }

  _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
LABEL_7:
  *buf = 0;
  result = [*(a1 + 48) save:buf];
  if ((result & 1) == 0)
  {
    if (*buf)
    {
      v15 = BCDefaultLog(result, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_13DB8();
      }
    }

    v16 = +[NSAssertionHandler currentHandler];
    return -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](v16, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 64), *(a1 + 40), @"BCAssetDatabase.m", 645, @"Error saving MOC: %@ -- User Info: %@", *buf, [*buf userInfo]);
  }

  return result;
}

uint64_t BCDefaultLog(uint64_t a1, uint64_t a2)
{
  if (qword_267F8 != -1)
  {
    sub_13F0C();
  }

  return qword_267F0;
}

void sub_11D20(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_13DC(&dword_0, a2, a3, "raiseLockout initially failed -- spinning %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_11D8C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_13DC(&dword_0, a2, a3, "Lockout raise failed -- sync fails %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_11DF8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_13DC(&dword_0, a2, a3, "Lockout raise failed -- no path %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_11EEC()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_11F5C()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_11FCC()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1203C(uint64_t a1, uint64_t a2)
{
  sub_B25C(a1, a2, 5.7779e-34);
  sub_B238();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_120F4(uint64_t a1, uint64_t a2)
{
  sub_B25C(a1, a2, 5.7779e-34);
  sub_B238();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1219C(uint64_t a1, uint64_t a2)
{
  sub_B25C(a1, a2, 5.7779e-34);
  sub_B238();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

segment_command_64 *sub_12304()
{
  sub_B298();
  result = [v2 code];
  if (result == (&dword_4 + 3) || (result = [v1 code], result == &dword_8) || (result = objc_msgSend(v1, "code"), result == (&dword_C + 2)) || (result = objc_msgSend(v1, "code"), result == &dword_10) || (result = objc_msgSend(v1, "code"), result == (&dword_8 + 1)) || (result = objc_msgSend(v1, "code"), result == (&dword_10 + 2)) || (result = objc_msgSend(v1, "code"), result == &dword_4) || (result = objc_msgSend(v1, "code"), result == (&dword_10 + 3)) || (result = objc_msgSend(v1, "code"), result == &dword_14) || (result = objc_msgSend(v1, "code"), result == (&dword_18 + 1)) || (result = objc_msgSend(v1, "code"), result == (&dword_18 + 3)) || (result = objc_msgSend(v1, "code"), result == &dword_18) || (result = objc_msgSend(v1, "code"), result == (&dword_1C + 3)) || (result = objc_msgSend(v1, "code"), result == &stru_20) || (result = objc_msgSend(v1, "code"), result == (&stru_20.cmd + 1)))
  {
    v4 = @"Recoverable";
  }

  else
  {
    result = [v1 code];
    v4 = @"Recoverable";
    if (result != (&stru_20.cmd + 2))
    {
      result = [v1 code];
      if (result == (&stru_20.cmd + 3))
      {
        v4 = @"Recoverable";
      }

      else
      {
        v4 = @"Not Recoverable";
      }
    }
  }

  *v0 = v4;
  return result;
}

void sub_12454(uint64_t a1, uint64_t a2)
{
  sub_B25C(a1, a2, 5.7779e-34);
  sub_B238();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_12494()
{
  sub_B268();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_12538()
{
  sub_B2A4(__stack_chk_guard);
  sub_B1D0();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_125A8()
{
  sub_B2A4(__stack_chk_guard);
  sub_B1D0();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_12618()
{
  sub_B2A4(__stack_chk_guard);
  sub_B1D0();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_12688()
{
  sub_B2A4(__stack_chk_guard);
  sub_B1D0();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_12898(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_13DC(&dword_0, a2, a3, "reconcileWithError returning an error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_12948()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_129B8()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12A28(void *a1, NSObject *a2)
{
  [a1 identifier];
  sub_B1E8();
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Keeping recoverable failed asset: %@", v3, 0xCu);
}

void sub_12B18(uint64_t a1, void *a2, NSObject *a3)
{
  [a2 database];
  v7 = 138412546;
  v8 = a1;
  sub_B274();
  v9 = v5;
  sub_B244(&dword_0, a3, v6, "Removing failed asset: %@ self.database=%@", &v7);
}

void sub_12C14()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12C84()
{
  sub_B298();
  objc_opt_class();
  v4 = 138412546;
  v5 = v1;
  sub_B274();
  v6 = v2;
  sub_B244(&dword_0, v0, v3, "The object [%@] of class: [%@] could be converted to neither an NSString nor an NSNumber", &v4);
}

void sub_12F18()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12F88()
{
  sub_B1E8();
  sub_B274();
  sub_B218(&dword_0, v0, v1, "Failed to add items to plist %@ -- %@");
}

id sub_12FF8()
{
  sub_B298();
  v2 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v2 handleFailureInMethod:v1 object:v0 file:@"BooksClient.m" lineNumber:1695 description:@"empty prefix is not allowed"];
}

id sub_13050()
{
  sub_B298();
  v2 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v2 handleFailureInMethod:v1 object:v0 file:@"BooksClient.m" lineNumber:1696 description:@"empty input path is not allowed"];
}

void sub_130BC()
{
  sub_B1E8();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1312C(uint64_t a1)
{
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 48);
  sub_B274();
  *v5 = v1;
  sub_B218(&dword_0, v2, v3, "Failed to delete file [%@] -- [Error: %@]", v4, DWORD2(v4), *&v5[2]);
}

void sub_131A8()
{
  sub_B268();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_131E4()
{
  sub_B268();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_13220()
{
  sub_B268();
  sub_B1F4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_13398(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[BCGenerateDownloadSizePlistProducer] Error reading file attributes for %@. Error: %@", &v4, 0x16u);
}

void sub_13424(void *a1)
{
  [a1 objectForKeyedSubscript:@"Artist"];
  [a1 objectForKeyedSubscript:@"Name"];
  sub_E4B4();
  sub_E4CC(&dword_0, v2, v3, "[BCGenerateDownloadSizePlistProducer] Cannot read itunesMetadata.plist for {%@ - %@}", v4, v5, v6, v7);
}

void sub_134CC(void *a1)
{
  [a1 objectForKeyedSubscript:@"Artist"];
  [a1 objectForKeyedSubscript:@"Name"];
  sub_E4B4();
  sub_E4CC(&dword_0, v2, v3, "[BCGenerateDownloadSizePlistProducer] Path is empty for {%@ - %@}", v4, v5, v6, v7);
}

void sub_13574(void *a1)
{
  [a1 objectForKeyedSubscript:@"Artist"];
  [a1 objectForKeyedSubscript:@"Name"];
  sub_E4B4();
  sub_E4CC(&dword_0, v2, v3, "[BCGenerateDownloadSizePlistProducer] Path not found for {%@ - %@}", v4, v5, v6, v7);
}

void sub_1361C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error serializing asset to data -- %@", &v2, 0xCu);
}

void sub_13694(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error deserializing data to asset -- %@", &v2, 0xCu);
}

id sub_1384C()
{
  sub_B298();
  v2 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v2 handleFailureInMethod:v1 object:v0 file:@"BCDatabase.m" lineNumber:55 description:@"Invalid database path"];
}

void sub_13954(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to addPersistentStoreWithType: <nil> error returned", buf, 2u);
}

void sub_13994(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to destroyPersistentStoreAtURL: <nil> error returned", buf, 2u);
}

void sub_139D4(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Could not add PS to PSC, but retry-count exceeded: %d", v3, 8u);
}

void sub_13AD8()
{
  sub_B1E8();
  sub_11B2C();
  sub_B218(&dword_0, v0, v1, "Failed to delete file [%@] -- [Error: %@]");
}

void sub_13BB0()
{
  sub_11B14(__stack_chk_guard);
  sub_11B20();
  sub_B218(&dword_0, v0, v1, "{%@} - Error saving MOC: %@");
}

void sub_13C28()
{
  sub_B1E8();
  sub_11B2C();
  sub_B218(&dword_0, v0, v1, "Fetching %@: Error fetching from MOC: %@");
}

void sub_13CDC()
{
  sub_11B14(__stack_chk_guard);
  sub_11B20();
  sub_13DC(&dword_0, v0, v1, "Fetching: Error fetching from MOC: %@", v2, v3, v4, v5);
}

void sub_13DB8()
{
  sub_11B14(__stack_chk_guard);
  sub_11B20();
  sub_13DC(&dword_0, v0, v1, "Error saving MOC: %@", v2, v3, v4, v5);
}

void sub_13E20()
{
  sub_11B14(__stack_chk_guard);
  v1 = 138412546;
  v2 = @"BCOutstandingAsset";
  sub_11B2C();
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "{%@} - Error saving MOC: %@", &v1, 0x16u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}