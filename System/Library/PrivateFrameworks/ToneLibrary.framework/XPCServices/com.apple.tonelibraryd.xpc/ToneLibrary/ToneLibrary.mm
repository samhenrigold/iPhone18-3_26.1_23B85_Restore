int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSXPCListener serviceListener];
  v5 = objc_alloc_init(TLServiceAgent);
  [v4 setDelegate:v5];
  [v4 resume];
  [v4 setDelegate:0];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_1000010E8(uint64_t a1, void *a2, void *a3, const __CFString **a4)
{
  if (a2 && a3 && a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = *(a1 + 32);
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v30 + 1) + 8 * v12);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = v13;
              *a3 = v13;
              v28 = @"key of user generated vibration pattern wrapper";
              goto LABEL_29;
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v8 = [*(a1 + 32) objectForKey:@"Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [*(a1 + 32) objectForKey:@"Pattern"];
        if (![TLVibrationPattern isValidVibrationPatternPropertyListRepresentation:v14])
        {
          *a2 = [NSError tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:@"Invalid vibration pattern: %@", *(a1 + 32)];
        }
      }

      else
      {
        v29 = v8;
        *a3 = v8;
        v28 = @"name of user generated vibration pattern";
LABEL_29:
        *a4 = v28;
      }
    }

    else
    {
      *a3 = *(a1 + 32);
      *a4 = @"user generated vibration pattern wrapper";
    }
  }

  else
  {
    v15 = TLLogGeneral(a1, a2);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

    if (v16)
    {
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Vibrations/TLVibrationPersistenceUtilities.m"];
      v21 = TLLogGeneral(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v19 lastPathComponent];
        v23 = +[NSThread callStackSymbols];
        *buf = 136381443;
        v36 = "+[TLVibrationPersistenceUtilities _objectIsValidUserGeneratedVibrationPattern:error:]_block_invoke";
        v37 = 2113;
        v38 = v22;
        v39 = 2049;
        v40 = 71;
        v41 = 2113;
        v42 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v19 = TLLogGeneral(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100003944();
      }
    }

    v26 = TLLogGeneral(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100003978();
    }
  }
}

void sub_100001510(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a2 || !a3 || !a4)
  {
    v17 = TLLogGeneral(a1, a2);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Vibrations/TLVibrationPersistenceUtilities.m"];
      v23 = TLLogGeneral(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v21 lastPathComponent];
        v25 = +[NSThread callStackSymbols];
        *buf = 136381443;
        v39 = "+[TLVibrationPersistenceUtilities objectIsValidUserGeneratedVibrationPatternsDictionary:error:]_block_invoke";
        v40 = 2113;
        v41 = v24;
        v42 = 2049;
        v43 = 109;
        v44 = 2113;
        v45 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v21 = TLLogGeneral(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100003944();
      }
    }

    v28 = TLLogGeneral(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100003978();
    }

    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a3 = *(a1 + 32);
    *a4 = @"root object";
    return;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = v9;
  v31 = a2;
  v11 = *v34;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v34 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v33 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = v13;
        *a3 = v13;
        *a4 = @"key object";
        goto LABEL_31;
      }

      if (![v13 hasPrefix:@"usergeneratedvibration:"])
      {
        v16 = [NSError tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:@"Invalid key object: %@. All key objects need to start with %@", v13, @"usergeneratedvibration:"];

        if (!v16)
        {
          return;
        }

        goto LABEL_30;
      }

      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) objectForKey:v13];
      v32 = 0;
      [v14 _objectIsValidUserGeneratedVibrationPattern:v15 error:&v32];
      v16 = v32;

      if (v16)
      {

LABEL_30:
        v30 = v16;
        *v31 = v16;
        v8 = v16;
        goto LABEL_31;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_31:
}

void sub_100001910(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_100001B6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v11;
      *(v11 + 24) = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = v11;
      if (isKindOfClass)
      {
        *(v11 + 24) = 1;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100001CD8;
        v9[3] = &unk_1000082C0;
        v9[4] = &v10;
        [v6 enumerateKeysAndObjectsUsingBlock:v9];
        v7 = v11;
      }
    }

    if (*(v7 + 24) == 1)
    {
      [*(a1 + 32) setObject:v6 forKey:v5];
    }

    _Block_object_dispose(&v10, 8);
  }
}

void sub_100001CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001CD8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

BOOL sub_10000212C(uint64_t a1, uint64_t a2)
{
  result = [TLVibrationPersistenceUtilities objectIsValidUserGeneratedVibrationPatternsDictionary:*(a1 + 32) error:a2];
  if (result)
  {
    v4 = +[TLVibrationPersistenceUtilities userGeneratedVibrationStoreFileURL];
    v5 = [*(a1 + 32) writeToURL:v4 atomically:1];

    return v5;
  }

  return result;
}

BOOL sub_1000021A0(id a1, id *a2)
{
  v3 = +[TLVibrationPersistenceUtilities userGeneratedVibrationStoreFileURL];
  v4 = +[NSFileManager defaultManager];
  LOBYTE(a2) = [v4 removeItemAtURL:v3 error:a2];

  return a2;
}

uint64_t TLLogGeneral(uint64_t a1, uint64_t a2)
{
  if (qword_10000C9F0 != -1)
  {
    sub_100003B3C();
  }

  return qword_10000C9D0;
}

uint64_t TLLogVibrationManagement(uint64_t a1, uint64_t a2)
{
  if (qword_10000C9F0 != -1)
  {
    sub_100003B3C();
  }

  return qword_10000C9E8;
}

void sub_100002748(id a1)
{
  qword_10000C9D0 = os_log_create("com.apple.ToneLibrary", "General");
  qword_10000C9D8 = os_log_create("com.apple.ToneLibrary", "Playback");
  qword_10000C9E0 = os_log_create("com.apple.ToneLibrary", "ToneManagement");
  qword_10000C9E8 = os_log_create("com.apple.ToneLibrary", "VibrationManagement");
}

BOOL sub_10000388C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = 0;
  if (a2 && (isKindOfClass & 1) != 0)
  {
    v13 = [v10 objCType];
    if (!strcmp(v13, a2))
    {
      v12 = 1;
    }

    else
    {
      v16 = &a9;
      do
      {
        v14 = v16++;
        v12 = *v14 != 0;
      }

      while (*v14 && strcmp(v13, *v14));
    }
  }

  return v12;
}

void sub_1000039AC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create directory containing user generated vibration store file. Error: %{public}@", &v2, 0xCu);
}

void sub_100003AAC(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting connection with process identifier %ld because it doesn't have any of the possible required entitlements to use the ToneLibrary service agent.", &v3, 0xCu);
}