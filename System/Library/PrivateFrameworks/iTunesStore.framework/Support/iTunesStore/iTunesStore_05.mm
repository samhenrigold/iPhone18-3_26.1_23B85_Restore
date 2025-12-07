void sub_10018C4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10018C510(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v5 = [v3 objectForSetting:1];

  v4 = v5;
  *(*(*(a1 + 40) + 8) + 24) = [v5 UTF8String];
  dispatch_semaphore_signal(*(*(a1 + 32) + 112));
}

void sub_10018C80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018C824(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10018C83C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  if (SSIsDaemon())
  {
    v7 = [LSPlugInKitProxy pluginKitProxyForIdentifier:*(a1 + 32)];
    v8 = v7;
    if (!v15 || ([v7 protocol], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isEqualToString:", v15)))
    {
      v9 = [v8 containingBundle];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 containingBundle];
        v11 = [v10 bundleType];
        v12 = [v11 isEqualToString:LSUserApplicationType];

        if (v15)
        {

          if ((v12 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (!v12)
        {
LABEL_13:

          goto LABEL_14;
        }

        v13 = [v8 containingBundle];
        v14 = *(*(a1 + 40) + 8);
        v4 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      else
      {

        if (!v15)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

uint64_t sub_10018D1A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v5 = [[SKProduct alloc] initWithXPCEncoding:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [(SKProduct *)v5 _localeIdentifier];
      if (v7)
      {
        v8 = [*(a1 + 32) objectForKey:v7];
        if (!v8)
        {
          v8 = [[NSLocale alloc] initWithLocaleIdentifier:v7];
          if (v8)
          {
            [*(a1 + 32) setObject:v8 forKey:v7];
          }
        }

        [(SKProduct *)v6 _setPriceLocale:v8];
        [(SKProduct *)v6 _setLocaleIdentifier:0];
      }

      [*(a1 + 40) addObject:v6];
    }
  }

  return 1;
}

id sub_10018D55C(uint64_t a1)
{
  v1 = sub_10018D5F0(a1);
  v2 = v1;
  if (v1)
  {
    v3 = sub_10018D67C(v1);
    if (v3)
    {
      v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10018D5F0(uint64_t a1)
{
  v1 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:0];
  if ([v1 length])
  {
    v2 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CFDictionaryRef sub_10018D67C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  type = xpc_get_type(v1);
  if (type == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v2);
    v6 = &kCFBooleanTrue;
    if (!value)
    {
      v6 = &kCFBooleanFalse;
    }

    goto LABEL_15;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v2);
    length = xpc_data_get_length(v2);
    v7 = CFDataCreate(kCFAllocatorSystemDefault, bytes_ptr, length);
    goto LABEL_24;
  }

  if (type == &_xpc_type_date)
  {
    v10 = xpc_date_get_value(v2);
    v7 = CFDateCreate(kCFAllocatorSystemDefault, v10 / 1000000000.0 - kCFAbsoluteTimeIntervalSince1970);
    goto LABEL_24;
  }

  if (type == &_xpc_type_double)
  {
    *&valuePtr[0] = xpc_double_get_value(v2);
    v7 = CFNumberCreate(kCFAllocatorSystemDefault, kCFNumberDoubleType, valuePtr);
    goto LABEL_24;
  }

  if (type == &_xpc_type_int64)
  {
    *&valuePtr[0] = xpc_int64_get_value(v2);
    v7 = CFNumberCreate(kCFAllocatorSystemDefault, kCFNumberSInt64Type, valuePtr);
    goto LABEL_24;
  }

  if (type == &_xpc_type_null)
  {
    v6 = &kCFNull;
LABEL_15:
    v7 = CFRetain(*v6);
LABEL_24:
    v4 = v7;
    goto LABEL_25;
  }

  if (type == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v2);
    v7 = CFStringCreateWithCString(kCFAllocatorSystemDefault, string_ptr, 0x8000100u);
    goto LABEL_24;
  }

  if (type == &_xpc_type_uuid)
  {
    v26 = *xpc_uuid_get_bytes(v2);
    v7 = CFUUIDCreateFromUUIDBytes(kCFAllocatorSystemDefault, v26);
    goto LABEL_24;
  }

  if (type == &_xpc_type_array)
  {
    v7 = sub_10018E0D0(v2);
    goto LABEL_24;
  }

  if (type != &_xpc_type_dictionary)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_25;
  }

  count = xpc_dictionary_get_count(v2);
  v14 = count;
  v15 = 16 * count;
  memset(valuePtr, 0, 512);
  if (2 * count > 0x100)
  {
    v16 = malloc_type_malloc(16 * count, 0xC0040B8AA526DuLL);
    bzero(v16, v15);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = valuePtr;
    __memset_chk();
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10018E324;
  applier[3] = &unk_10032AA08;
  applier[4] = &v21;
  applier[5] = v16;
  applier[6] = v14;
  xpc_dictionary_apply(v2, applier);
  v17 = v22[3];
  v18 = v16 + 8 * v14;
  if (v14 == v17)
  {
    v4 = CFDictionaryCreate(kCFAllocatorSystemDefault, v16, v16 + v14, v14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v17 = v22[3];
  }

  else
  {
    v4 = 0;
  }

  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      CFRelease(*(v16 + v19));
      CFRelease(*&v18[8 * v19++]);
    }

    while (v19 < v22[3]);
  }

  if (v16 != valuePtr)
  {
    free(v16);
  }

  _Block_object_dispose(&v21, 8);
LABEL_25:

  return v4;
}

void sub_10018DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10018DAD8(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSPropertyListSerialization propertyListWithData:a1 options:0 format:0 error:0];
    v2 = v1;
    if (v1)
    {
      v3 = sub_10018DB90(v1);
      if (v3)
      {
        v4 = objc_opt_class();
        v5 = sub_10018E000(v3, v4);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10018DB90(__CFString *a1)
{
  if (!a1)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFNullGetTypeID())
  {
    v3 = xpc_null_create();
LABEL_8:
    v7 = v3;
    goto LABEL_12;
  }

  if (v2 == CFBooleanGetTypeID())
  {
    v4 = CFBooleanGetValue(a1) != 0;
    v3 = xpc_BOOL_create(v4);
    goto LABEL_8;
  }

  if (v2 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    v3 = xpc_data_create(BytePtr, Length);
    goto LABEL_8;
  }

  if (v2 == CFDateGetTypeID())
  {
    v8 = CFDateGetAbsoluteTime(a1) + kCFAbsoluteTimeIntervalSince1970;
    if (fabs(v8) <= 9223372040.0)
    {
      v3 = xpc_date_create((v8 * 1000000000.0));
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (v2 == CFUUIDGetTypeID())
  {
    uuid = CFUUIDGetUUIDBytes(a1);
    v3 = xpc_uuid_create(&uuid.byte0);
    goto LABEL_8;
  }

  if (v2 == CFStringGetTypeID())
  {
    v10 = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v10 + 1, 0x8000100u);
    if (MaximumSizeForEncoding != -1)
    {
      v12 = MaximumSizeForEncoding;
      v13 = malloc_type_malloc(MaximumSizeForEncoding, 0x6F457ED9uLL);
      if (v13)
      {
        v14 = v13;
        if (CFStringGetCString(a1, v13, v12, 0x8000100u))
        {
          v7 = xpc_string_create(v14);
        }

        else
        {
          v7 = 0;
        }

        free(v14);
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  if (v2 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(a1))
    {
      *&uuid.byte0 = 0;
      if (CFNumberGetValue(a1, kCFNumberDoubleType, &uuid))
      {
        v3 = xpc_double_create(*&uuid.byte0);
        goto LABEL_8;
      }
    }

    else
    {
      *&uuid.byte0 = 0;
      if (CFNumberGetValue(a1, kCFNumberSInt64Type, &uuid))
      {
        v3 = xpc_int64_create(*&uuid.byte0);
        goto LABEL_8;
      }
    }

    goto LABEL_11;
  }

  if (v2 == CFArrayGetTypeID())
  {
    v7 = xpc_array_create(0, 0);
    if (!v7)
    {
      goto LABEL_12;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = a1;
    v16 = [(__CFString *)v15 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = sub_10018DB90(*(*(&v37 + 1) + 8 * i));
          if (v20)
          {
            xpc_array_append_value(v7, v20);
          }
        }

        v17 = [(__CFString *)v15 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v17);
    }

    goto LABEL_55;
  }

  if (v2 != CFDictionaryGetTypeID())
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(__CFString *)a1 copyXPCEncoding];
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = a1;
    v21 = [(__CFString *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v15);
          }

          v25 = *(*(&v33 + 1) + 8 * j);
          v26 = CFStringGetLength(v25);
          v27 = CFStringGetMaximumSizeForEncoding(v26, 0x8000100u);
          if (v27 != -1)
          {
            v28 = v27;
            v29 = malloc_type_malloc(v27, 0xF4E82B8EuLL);
            if (v29)
            {
              v30 = v29;
              if (CFStringGetCString(v25, v29, v28, 0x8000100u))
              {
                Value = CFDictionaryGetValue(v15, v25);
                v32 = sub_10018DB90(Value);
                if (v32)
                {
                  xpc_dictionary_set_value(v7, v30, v32);
                }
              }

              free(v30);
            }
          }
        }

        v22 = [(__CFString *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v22);
    }

LABEL_55:
  }

LABEL_12:

  return v7;
}

id sub_10018E000(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_data && (length = xpc_data_get_length(v4), bytes_ptr = xpc_data_get_bytes_ptr(v4), length) && (v9 = [[NSData alloc] initWithBytesNoCopy:bytes_ptr length:length freeWhenDone:0]) != 0)
  {
    v10 = v9;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:a2 fromData:v9 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFArrayRef sub_10018E0D0(void *a1)
{
  v1 = a1;
  count = xpc_array_get_count(v1);
  v3 = count;
  v4 = 8 * count;
  memset(v18, 0, 512);
  if (count > 0x100)
  {
    v5 = malloc_type_malloc(8 * count, 0xC0040B8AA526DuLL);
    bzero(v5, v4);
    if (!v5)
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = v18;
    __memset_chk();
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10018E4B8;
  applier[3] = &unk_10032AA30;
  v12 = &v14;
  v13 = v5;
  v11 = &stru_10032A9E0;
  xpc_array_apply(v1, applier);
  v6 = v15[3];
  if (v3 == v6)
  {
    v7 = CFArrayCreate(kCFAllocatorSystemDefault, v5, v3, &kCFTypeArrayCallBacks);
    v6 = v15[3];
  }

  else
  {
    v7 = 0;
  }

  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      CFRelease(*(v5 + v8++));
    }

    while (v8 < v15[3]);
  }

  if (v5 != v18)
  {
    free(v5);
  }

  _Block_object_dispose(&v14, 8);
LABEL_13:

  return v7;
}

void sub_10018E2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_10018E324(void *a1, const char *a2, void *a3)
{
  result = sub_10018D67C(a3);
  if (result)
  {
    v6 = result;
    v7 = CFStringCreateWithCString(kCFAllocatorSystemDefault, a2, 0x8000100u);
    if (v7)
    {
      *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = v7;
      v9 = a1[5];
      v8 = a1[6];
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 24);
      *(v10 + 24) = v11 + 1;
      *(v9 + 8 * v8 + 8 * v11) = v6;
      return 1;
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return result;
}

CFDictionaryRef sub_10018E3C4(void *a1, const char *a2)
{
  v2 = xpc_dictionary_get_value(a1, a2);
  v3 = sub_10018D67C(v2);

  return v3;
}

CFDictionaryRef sub_10018E3FC(void *a1, const char *a2, uint64_t a3)
{
  v3 = sub_10018E3C4(a1, a2);
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    CFRelease(v3);
    return 0;
  }

  return v3;
}

void sub_10018E448(void *a1, const char *a2, __CFString *a3)
{
  xdict = a1;
  v5 = sub_10018DB90(a3);
  if (v5)
  {
    xpc_dictionary_set_value(xdict, a2, v5);
  }
}

BOOL sub_10018E4B8(void *a1)
{
  v2 = (*(a1[4] + 16))();
  if (v2)
  {
    v3 = a1[6];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    *(v3 + 8 * v5) = v2;
  }

  return v2 != 0;
}

void sub_10018E7B8(id a1)
{
  v1 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Books", @"Books.plist", 0}];
  qword_100383FD8 = [[EBookManifest alloc] initWithManifestPath:[NSString pathWithComponents:v1]];
}

void sub_10018E944(uint64_t a1)
{
  v2 = [*(a1 + 32) _manifest];
  v3 = @"Books";
  v4 = [v2 objectForKey:@"Books"];
  if (v4 || (v3 = @"Purchases", (v4 = [v2 objectForKey:@"Purchases"]) != 0))
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_alloc_init(NSMutableArray);
    v3 = @"Books";
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) mutableCopy];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v2 setObject:v5 forKey:v3];
}

id sub_10018EC94(uint64_t a1)
{
  v2 = [*(a1 + 32) _entries];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v8 + 1) + 8 * v6);
      if ([objc_msgSend(v7 objectForKey:{*(a1 + 40)), "isEqual:", *(a1 + 48)}])
      {
        [*(a1 + 56) addObject:v7];
        result = [*(a1 + 56) count];
        if (result >= *(a1 + 64))
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_10018EE5C(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_manifest")];
  v3 = 0;
  while (([*(a1 + 40) isEqualToNumber:{objc_msgSend(objc_msgSend(v2, "objectAtIndex:", v3), "objectForKey:", @"s"}] & 1) == 0)
  {
    if (++v3 == 8)
    {
      goto LABEL_16;
    }
  }

  [v2 removeObjectAtIndex:v3];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = v5 | 2;
  }

  else
  {
    LODWORD(v6) = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = v3;
    v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 0, "%@: Removed manifest itemID entry at index: %ld", &v10, 22);
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4];
      free(v9);
      SSFileLog();
    }
  }

LABEL_16:
}

void sub_10018F0A0(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_manifest")];
  v3 = 0;
  while (([*(a1 + 40) isEqualToString:{objc_msgSend(objc_msgSend(v2, "objectAtIndex:", v3), "objectForKey:", @"iTunesU Permlink"}] & 1) == 0)
  {
    if (++v3 == 8)
    {
      goto LABEL_16;
    }
  }

  [v2 removeObjectAtIndex:v3];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = v5 | 2;
  }

  else
  {
    LODWORD(v6) = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = v3;
    v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 0, "%@: Removed manifest permalink entry at index: %ld", &v10, 22);
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4];
      free(v9);
      SSFileLog();
    }
  }

LABEL_16:
}

double sub_10018F2E4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  if (v1)
  {
    v17 = 0;
    v3 = [NSPropertyListSerialization dataWithPropertyList:v1 format:200 options:0 error:&v17];
    if (v3)
    {
      if (![(NSData *)v3 writeToFile:*(*(a1 + 32) + 24) options:1 error:&v17])
      {
        v5 = +[SSLogConfig sharedDaemonConfig];
        if (!v5)
        {
          v5 = +[SSLogConfig sharedConfig];
        }

        v6 = [v5 shouldLog];
        LODWORD(v7) = [v5 shouldLogToDisk] ? v6 | 2 : v6;
        v8 = [v5 OSLogObject];
        v7 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT) ? v7 : v7 & 2u;
        if (v7)
        {
          v9 = objc_opt_class();
          v18 = 138412546;
          v19 = v9;
          v20 = 2112;
          v21 = v17;
          v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 0, "%@: Could not write data: %@", &v18, 22);
          goto LABEL_24;
        }
      }
    }

    else
    {
      v11 = +[SSLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        LODWORD(v13) = v12 | 2;
      }

      else
      {
        LODWORD(v13) = v12;
      }

      v14 = [v11 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v13;
      }

      else
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v15 = objc_opt_class();
        v18 = 138412546;
        v19 = v15;
        v20 = 2112;
        v21 = v17;
        v10 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v14, 0, "%@: Could not serialize data: %@", &v18, 22);
LABEL_24:
        if (v10)
        {
          v16 = v10;
          [NSString stringWithCString:v10 encoding:4];
          free(v16);
          SSFileLog();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100191B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = v5 | 2;
  }

  else
  {
    LODWORD(v6) = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = [*(a1 + 32) downloadIdentifier];
  v9 = [*(a1 + 40) error];
  v19 = 134218242;
  v20 = v8;
  v21 = 2114;
  v22 = v9;
  v10 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 16, "[Download]: Fail download: %lld after session error: %{public}@", &v19, 22);

  if (v10)
  {
    v7 = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
LABEL_12:
  }

  v11 = [DownloadAssetEntity alloc];
  v12 = [*(a1 + 32) mediaAssetIdentifier];
  v13 = [v3 database];
  v14 = [(DownloadAssetEntity *)v11 initWithPersistentID:v12 inDatabase:v13];

  [(DownloadAssetEntity *)v14 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded"];
  v15 = *(a1 + 48);
  v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) downloadIdentifier]);
  v17 = [*(a1 + 40) error];
  [v15 _failDownloadWithIdentifier:v16 error:v17 transaction:v3];

  return 1;
}

void sub_100191DF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = SSDownloadPhaseDownloading;
  v16[1] = SSDownloadPhaseProcessing;
  v16[2] = SSDownloadPhaseDataRestore;
  v16[3] = SSDownloadPhaseInstalling;
  v4 = [NSArray arrayWithObjects:v16 count:4];
  v5 = [v4 indexOfObject:*(a1 + 32)];
  v6 = [v4 count];
  v7 = *(a1 + 40);
  if (v5 == v6 - 1)
  {
    v8 = v7[4];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100191FC0;
    v14[3] = &unk_100329558;
    v9 = &v15;
    v15 = *(a1 + 48);
    v10 = [v8 modifyUsingTransactionBlock:v14];
  }

  else
  {
    v11 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100192014;
    v12[3] = &unk_10032AB98;
    v9 = v13;
    v13[0] = v4;
    v13[1] = v5;
    [v7 _processDownloadWithTaskState:v11 databaseSession:v3 setupBlock:v12];
  }
}

uint64_t sub_100191FC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 downloadIdentifier];
  [v3 finishDownloadWithID:v4 finalPhase:SSDownloadPhaseFinished updatePipeline:0];

  return 1;
}

void sub_100192014(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 objectAtIndex:v3 + 1];
  [v4 setInitialDownloadPhase:v5];
}

void sub_100192148(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setFinishProgress:{objc_msgSend(*(a1 + 48), "currentValue") / objc_msgSend(*(a1 + 48), "maxValue")}];
    [*(*(a1 + 32) + 40) addObject:v3];
    [*(a1 + 32) _startProgressTimer];
    v2 = v3;
  }
}

void sub_1001922AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setTransferProgressWithBytesWritten:*(a1 + 48) totalBytesExpected:*(a1 + 56)];
    [*(*(a1 + 32) + 40) addObject:v3];
    [*(a1 + 32) _startProgressTimer];
    v2 = v3;
  }
}

void sub_100192604(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);
    if (v3 <= 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 + v3;
    }

    v6 = v2;
    [v2 setTransferProgressWithBytesWritten:v4 + *(a1 + 56) totalBytesExpected:v5];
    if (*(a1 + 80) == 1 && *(a1 + 72) > 2.22044605e-16)
    {
      [v6 setTransferProgress:?];
    }

    [*(*(a1 + 32) + 40) addObject:v6];
    [*(a1 + 32) _startProgressTimer];
    v2 = v6;
  }
}

void sub_1001929B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1001929F0(uint64_t a1, void *a2)
{
  memset(v9, 0, sizeof(v9));
  [a2 getValue:v9];
  v7 = *(&v9[1] + 8);
  v8 = *(&v9[2] + 1);
  v3 = ISWeakLinkedSymbolForString();
  if (v3)
  {
    v10 = v7;
    v11 = v8;
    v3(&v10);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(*(a1 + 32) + 8);
  result = v4 + *(v5 + 24);
  *(v5 + 24) = result;
  return result;
}

void sub_100192A8C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setTransferProgress:*(a1 + 48)];
    [*(*(a1 + 32) + 40) addObject:v3];
    [*(a1 + 32) _startProgressTimer];
    v2 = v3;
  }
}

void sub_1001932FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_100193348(uint64_t a1, void *a2)
{
  memset(v9, 0, sizeof(v9));
  [a2 getValue:v9];
  v7 = *(&v9[1] + 8);
  v8 = *(&v9[2] + 1);
  v3 = ISWeakLinkedSymbolForString();
  if (v3)
  {
    v10 = v7;
    v11 = v8;
    v3(&v10);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(*(a1 + 32) + 8);
  result = v4 + *(v5 + 24);
  *(v5 + 24) = result;
  return result;
}

void sub_1001933E4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setTransferProgress:*(a1 + 48)];
    [*(*(a1 + 32) + 40) addObject:v3];
    [*(a1 + 32) _startProgressTimer];
    v2 = v3;
  }
}

uint64_t sub_100193E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  v5 = v4;
  if (!v4)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v20 = [(DownloadAssetEntity *)v10 shouldLog];
    if ([(DownloadAssetEntity *)v10 shouldLogToDisk])
    {
      LODWORD(v21) = v20 | 2;
    }

    else
    {
      LODWORD(v21) = v20;
    }

    v22 = [(DownloadAssetEntity *)v10 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = [*(a1 + 40) taskIdentifier];
      v24 = *(a1 + 48);
      v121 = 134218242;
      v122 = v23;
      v123 = 2112;
      v124 = v24;
      v25 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v22, 0, "[Download] Received task did finish with no task state: %lu, error: %@", &v121, 22);

      if (!v25)
      {
        goto LABEL_115;
      }

      v22 = [NSString stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog();
    }

    goto LABEL_115;
  }

  v6 = [v4 downloadIdentifier];
  v7 = [DownloadAssetEntity alloc];
  v8 = [v5 mediaAssetIdentifier];
  v9 = [v3 database];
  v10 = [(DownloadAssetEntity *)v7 initWithPersistentID:v8 inDatabase:v9];

  [(DownloadAssetEntity *)v10 setValue:&off_10034C060 forProperty:@"download_token"];
  [(DownloadAssetEntity *)v10 setValue:&off_10034C060 forProperty:@"url_session_task_id"];
  v11 = [DownloadEntity alloc];
  v12 = [v3 database];
  v13 = [(DownloadEntity *)v11 initWithPersistentID:v6 inDatabase:v12];

  v14 = [*(a1 + 40) ITunesStoreCancelReason];
  v15 = v14;
  if (v14 == 1)
  {
    goto LABEL_41;
  }

  if (v14 == 3)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v26 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 & 2;
    }

    if (v30)
    {
      v31 = [*(a1 + 40) taskIdentifier];
      v121 = 134218240;
      v122 = v6;
      v123 = 2048;
      v124 = v31;
      v32 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, v29, 0, "[Download]: Restarting download: %lld after task cancel: %lu", &v121, 22);

      if (v32)
      {
        v33 = [NSString stringWithCString:v32 encoding:4];
        free(v32);
        v111 = v33;
        SSFileLog();
      }
    }

    else
    {
    }

    [v3 retryDownloadWithIdentifier:v6];
    goto LABEL_111;
  }

  if (v14 != 2)
  {
    if (*(a1 + 56) == 1)
    {
      v34 = +[SSLogConfig sharedDaemonConfig];
      if (!v34)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      v35 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v36 = v35 | 2;
      }

      else
      {
        v36 = v35;
      }

      v37 = [v34 OSLogObject];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v36;
      }

      else
      {
        v38 = v36 & 2;
      }

      if (v38)
      {
        v39 = [*(a1 + 40) taskIdentifier];
        v121 = 134218240;
        v122 = v39;
        v123 = 2048;
        v124 = v6;
        v40 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, v37, 0, "[Download]: Download task did finish: %lu for download: %lld", &v121, 22);

        if (v40)
        {
          v41 = [NSString stringWithCString:v40 encoding:4];
          free(v40);
          v111 = v41;
          SSFileLog();
        }
      }

      else
      {
      }

      [(DownloadAssetEntity *)v10 setValue:&__kCFBooleanTrue forProperty:@"is_downloaded"];
      [*(a1 + 32) _processDownloadWithTaskState:v5 databaseSession:v3 setupBlock:0];
      goto LABEL_111;
    }

LABEL_41:
    v117 = v13;
    if (ISErrorIsEqual() && [*(a1 + 32) _isPodcast:v13])
    {
      v42 = [(DownloadEntity *)v13 valueForProperty:@"policy_id"];
      v43 = [v42 longLongValue];

      v44 = [v3 policyManager];
      v45 = [v44 downloadPolicyForID:v43];

      v46 = objc_opt_new();
      [v46 addNetworkType:1000];
      v118 = v45;
      [v45 setPolicyRule:v46];
      v47 = +[SSLogConfig sharedDaemonConfig];
      if (!v47)
      {
        v47 = +[SSLogConfig sharedConfig];
      }

      v48 = [v47 shouldLog];
      if ([v47 shouldLogToDisk])
      {
        v49 = v48 | 2;
      }

      else
      {
        v49 = v48;
      }

      v50 = [v47 OSLogObject];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v49;
      }

      else
      {
        v51 = v49 & 2;
      }

      if (v51)
      {
        v52 = [*(a1 + 40) taskIdentifier];
        v121 = 134218240;
        v122 = v6;
        v123 = 2048;
        v124 = v52;
        v53 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &_mh_execute_header, v50, 0, "[Download]: Restarting podcast download %lld with a wifi only policy after task cancelled because the file was too large to download over cellular: %lu", &v121, 22);

        if (v53)
        {
          v54 = [NSString stringWithCString:v53 encoding:4];
          free(v53);
          v111 = v54;
          SSFileLog();
        }
      }

      else
      {
      }

      [v3 retryDownloadWithIdentifier:v6];
      v13 = v117;
      goto LABEL_111;
    }

    v55 = [*(a1 + 40) ITunesStoreCancelError];
    v56 = v55;
    if (!v55)
    {
      v56 = *(a1 + 48);
    }

    v119 = v56;

    v57 = +[SSLogConfig sharedDaemonConfig];
    if (!v57)
    {
      v57 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v58) = [v57 shouldLog];
    if ([v57 shouldLogToDisk])
    {
      LODWORD(v58) = v58 | 2;
    }

    v59 = [v57 OSLogObject];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v58;
    }

    else
    {
      v58 &= 2u;
    }

    if (v58)
    {
      v60 = [*(a1 + 40) taskIdentifier];
      v121 = 134218498;
      v122 = v60;
      v123 = 2048;
      v124 = v6;
      v125 = 2112;
      v126 = v119;
      v61 = _os_log_send_and_compose_impl(v58, 0, 0, 0, &_mh_execute_header, v59, 0, "[Download]: Download task failed: %lu for download: %lld with error: %@", &v121, 32);

      if (!v61)
      {
LABEL_67:

        v17 = v119;
        if (sub_1001AD6E0(v119))
        {
          v62 = [(DownloadAssetEntity *)v10 valueForProperty:@"is_local_cache_server"];
          v63 = [v62 BOOLValue];

          v17 = v119;
          if (v63)
          {
            v64 = +[SSLogConfig sharedDaemonConfig];
            if (!v64)
            {
              v64 = +[SSLogConfig sharedConfig];
            }

            v65 = [v64 shouldLog];
            if ([v64 shouldLogToDisk])
            {
              v66 = v65 | 2;
            }

            else
            {
              v66 = v65;
            }

            v67 = [v64 OSLogObject];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = v66;
            }

            else
            {
              v68 = v66 & 2;
            }

            if (v68)
            {
              v69 = [*(a1 + 40) taskIdentifier];
              v121 = 134218240;
              v122 = v69;
              v123 = 2048;
              v124 = v6;
              LODWORD(v113) = 22;
              v70 = _os_log_send_and_compose_impl(v68, 0, 0, 0, &_mh_execute_header, v67, 0, "[Download]: task: %lu, for download: %lld, after local cache failure", &v121, v113);

              if (!v70)
              {
LABEL_81:

                v71 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:v6];
                v72 = SSSQLEntityPropertyPersistentID;
                v73 = [NSNumber numberWithLongLong:[(DownloadAssetEntity *)v10 persistentID]];
                v74 = [SSSQLiteComparisonPredicate predicateWithProperty:v72 value:v73 comparisonType:2];

                v75 = [SSSQLiteComparisonPredicate predicateWithProperty:@"asset_type" equalToValue:SSDownloadAssetTypeMedia];
                v114 = v74;
                v115 = v71;
                v120[0] = v71;
                v120[1] = v74;
                v120[2] = v75;
                v76 = [NSArray arrayWithObjects:v120 count:3];
                v77 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v76];

                v78 = [v3 database];
                v79 = [DownloadAssetEntity anyInDatabase:v78 predicate:v77];

                if (v79)
                {
                  v80 = @"blocked_reason";
                  v81 = &off_10034C078;
                  v82 = v10;
                }

                else
                {
                  v81 = &__kCFBooleanFalse;
                  v82 = v10;
                  v80 = @"is_local_cache_server";
                }

                [(DownloadAssetEntity *)v82 setValue:v81 forProperty:v80, v112];
                v13 = v117;
                [v3 retryDownloadWithIdentifier:v6];

                goto LABEL_109;
              }

              v67 = [NSString stringWithCString:v70 encoding:4];
              free(v70);
              v112 = v67;
              SSFileLog();
            }

            goto LABEL_81;
          }
        }

        v13 = v117;
        if (sub_1001AD858(v17))
        {
          v83 = +[SSLogConfig sharedDaemonConfig];
          if (!v83)
          {
            v83 = +[SSLogConfig sharedConfig];
          }

          v84 = [v83 shouldLog];
          if ([v83 shouldLogToDisk])
          {
            v85 = v84 | 2;
          }

          else
          {
            v85 = v84;
          }

          v86 = [v83 OSLogObject];
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v87 = v85;
          }

          else
          {
            v87 = v85 & 2;
          }

          if (v87)
          {
            v121 = 134218242;
            v122 = v6;
            v123 = 2112;
            v124 = v119;
            LODWORD(v113) = 22;
            v88 = _os_log_send_and_compose_impl(v87, 0, 0, 0, &_mh_execute_header, v86, 0, "[Download]: Falling back to file download: %lld, after error: %@", &v121, v113);

            if (!v88)
            {
LABEL_104:

              [(DownloadAssetEntity *)v10 setValue:&__kCFBooleanTrue forProperty:@"avfoundation_blocked"];
              [v3 retryDownloadWithIdentifier:v6];
LABEL_109:
              v17 = v119;
              goto LABEL_110;
            }

            v86 = [NSString stringWithCString:v88 encoding:4];
            free(v88);
            v111 = v86;
            SSFileLog();
          }

          goto LABEL_104;
        }

        if ([ExpiredDownloadRecoveryOperation canAttemptRecoveryWithError:v17])
        {
          [*(a1 + 32) _attemptRecoveryForDownloadWithTaskState:v5 databaseSession:v3];
          goto LABEL_110;
        }

        if (ISErrorIsEqual())
        {
          [*(a1 + 32) _scheduleReconnect];
          goto LABEL_110;
        }

        v94 = [(DownloadAssetEntity *)v10 valueForProperty:@"is_hls"];
        v116 = v94;
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v94 BOOLValue])
        {
          v95 = 1;
        }

        else
        {
          if (!sub_1001AD8BC(*(a1 + 48)))
          {
LABEL_127:
            [(DownloadAssetEntity *)v10 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded", v111];
            v104 = *(a1 + 32);
            v105 = [NSNumber numberWithLongLong:v6];
            v106 = v104;
            v17 = v119;
            [v106 _failDownloadWithIdentifier:v105 error:v119 transaction:v3];

            [*(a1 + 32) _processDownloadFailureWithTaskState:v5 cancelReason:v15];
            v107 = *(a1 + 32);
            v108 = [v5 kind];
            v109 = [(DownloadEntity *)v117 valueForProperty:@"store_item_id"];
            v110 = [(DownloadEntity *)v117 valueForProperty:@"rental_id"];
            [v107 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v108 adamID:v109 rentalID:v110 error:v119 cancelReason:1];

            v13 = v117;
            goto LABEL_110;
          }

          v95 = 0;
        }

        v96 = [(DownloadAssetEntity *)v10 valueForProperty:@"local_path", v111];
        if (v96)
        {
          goto LABEL_126;
        }

        if (v95)
        {
          v97 = [v5 kind];
          v98 = sub_10020F36C(v97);

          v99 = [NSString stringWithFormat:@"%lld", [(DownloadAssetEntity *)v10 persistentID]];
          v100 = [v99 stringByAppendingPathExtension:SSDownloadMetadataKeyFileExtensionMoviePackage];

          v96 = [v98 stringByAppendingPathComponent:v100];
        }

        else
        {
          v101 = [v5 downloadIdentifier];
          v102 = [(DownloadAssetEntity *)v10 persistentID];
          v98 = [v5 kind];
          v96 = [ScratchManager directoryPathForDownloadID:v101 assetID:v102 kind:v98 createIfNeeded:1];
        }

        if (v96)
        {
LABEL_126:
          v103 = objc_alloc_init(NSFileManager);
          [v103 removeItemAtPath:v96 error:0];
        }

        goto LABEL_127;
      }

      v59 = [NSString stringWithCString:v61 encoding:4];
      free(v61);
      v111 = v59;
      SSFileLog();
    }

    goto LABEL_67;
  }

  [*(a1 + 32) _processDownloadFailureWithTaskState:v5 cancelReason:2];
  v16 = *(a1 + 32);
  v17 = [v5 kind];
  v18 = [(DownloadEntity *)v13 valueForProperty:@"store_item_id"];
  v19 = [(DownloadEntity *)v13 valueForProperty:@"rental_id"];
  [v16 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v17 adamID:v18 rentalID:v19 error:0 cancelReason:2];

LABEL_110:
LABEL_111:
  [*(a1 + 32) _logDownloadEvent:SSEventNameDownloadStop forTaskWithState:v5 session:{v3, v111}];
  v89 = [(DownloadAssetEntity *)v10 valueForProperty:@"is_downloaded"];
  v90 = [v89 BOOLValue];

  v91 = [*(*(a1 + 32) + 104) objectForKey:*(a1 + 40)];
  v92 = v91;
  if (v90 && v91)
  {
    [v91 persistKeys];
  }

  [*(*(a1 + 32) + 104) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 112) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _reloadKeepAliveAssertion];

LABEL_115:
  return 1;
}

uint64_t sub_10019500C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 112);
  v5 = a2;
  v6 = [v4 objectForKey:v3];
  v7 = [*(a1 + 32) _downloadSessionPropertiesWithPhase:0 taskState:v6 databaseSession:v5];

  [v7 setAuthenticationChallenge:*(a1 + 48)];
  if (v7)
  {
    v8 = [[DownloadHandlerAuthenticationOperation alloc] initWithSessionProperties:v7];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100195178;
    v16 = &unk_10032AC38;
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v20 = v9;
    v17 = v10;
    v18 = *(a1 + 48);
    v19 = v7;
    [(DownloadHandlerAuthenticationOperation *)v8 setOutputBlock:&v13];
    v11 = [*(a1 + 32) _authenticationChallengeQueue];
    [v11 addOperation:v8];
  }

  else
  {
    [*(a1 + 32) _performDefaultHandlingForAuthenticationChallenge:*(a1 + 48) withSessionProperties:0 completionHandler:*(a1 + 56)];
  }

  return 1;
}

void sub_100195178(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2 > 4)
  {
    if ((a2 - 8) >= 2)
    {
      if (a2 == 5)
      {
        v5 = *(*(a1 + 56) + 16);
        goto LABEL_10;
      }

      if (a2 != 6)
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    v5 = *(*(a1 + 56) + 16);
    goto LABEL_10;
  }

  if (a2 > 2)
  {
    v5 = *(*(a1 + 56) + 16);
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    v5 = *(*(a1 + 56) + 16);
LABEL_10:
    v5();
    goto LABEL_11;
  }

LABEL_16:
  [*(a1 + 32) _performDefaultHandlingForAuthenticationChallenge:*(a1 + 40) withSessionProperties:*(a1 + 48) completionHandler:*(a1 + 56)];
LABEL_11:
}

uint64_t sub_10019534C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 14) objectForKey:a1[5]];
  if (v4)
  {
    if (sub_1001AD6E0(a1[6]))
    {
      v5 = [DownloadAssetEntity alloc];
      v6 = [v4 mediaAssetIdentifier];
      v7 = [v3 database];
      v8 = [(DownloadAssetEntity *)v5 initWithPersistentID:v6 inDatabase:v7];

      v9 = [(DownloadAssetEntity *)v8 valueForProperty:@"is_local_cache_server"];
      LODWORD(v7) = [v9 BOOLValue];

      v10 = [v4 downloadIdentifier];
      if (v7)
      {
        v11 = +[SSLogConfig sharedDaemonConfig];
        if (!v11)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        v12 = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          v13 = v12 | 2;
        }

        else
        {
          v13 = v12;
        }

        v14 = [v11 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v13;
        }

        else
        {
          v15 = v13 & 2;
        }

        if (v15)
        {
          v16 = a1[6];
          v27 = 134218242;
          v28 = v10;
          v29 = 2112;
          v30 = v16;
          v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 0, "[Download]: Cancel local-cache download: %lld, for error: %@", &v27, 22);

          if (!v17)
          {
LABEL_16:

            [a1[5] cancelWithITunesStoreReason:1 error:a1[6]];
            goto LABEL_31;
          }

          v14 = [NSString stringWithCString:v17 encoding:4];
          free(v17);
          SSFileLog();
        }

        goto LABEL_16;
      }
    }

    else
    {
      v10 = [v4 downloadIdentifier];
    }

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = v19 | 2;
    }

    else
    {
      LODWORD(v20) = v19;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = [a1[5] taskIdentifier];
      v23 = a1[6];
      v27 = 134218498;
      v28 = v22;
      v29 = 2048;
      v30 = v10;
      v31 = 2112;
      v32 = v23;
      v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v21, 0, "[Download]: Retry scheduled for task: %lu, download: %lld, error: %@", &v27, 32);

      if (!v24)
      {
LABEL_30:

        v25 = [v3 policyManager];
        [v25 setOverrideDownloadSizeLimit:SSDownloadSizeLimitDisabled forDownloadIdentifier:v10];

        [a1[4] _setDownloadPhase:SSDownloadPhaseWaiting forDownloadIdentifier:v10 databaseTransaction:v3];
        [a1[4] _logDownloadEvent:SSEventNameDownloadStop forTaskWithState:v4 session:v3];
        goto LABEL_31;
      }

      v21 = [NSString stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
    }

    goto LABEL_30;
  }

LABEL_31:

  return 1;
}

uint64_t sub_100195C68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 112);
  v5 = a2;
  v6 = [v4 objectForKey:v3];
  v7 = [v6 downloadIdentifier];
  v8 = [v5 policyManager];
  [v8 removeOverrideDownloadSizeLimitForDownloadIdentifier:v7];

  [*(a1 + 32) _setDownloadPhase:SSDownloadPhaseDownloading forDownloadIdentifier:v7 databaseTransaction:v5];
  [*(a1 + 32) _logDownloadEvent:SSEventNameDownloadStart forTaskWithState:v6 session:v5];

  return 1;
}

void sub_100195DE8(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(*(a1 + 32) + 112);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v23 = *v25;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 112) objectForKey:{v7, v21}];
        v9 = [v8 downloadIdentifier];
        if (v9 == [*(a1 + 40) downloadIdentifier])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v2;
            v11 = v7;
            v12 = +[SSLogConfig sharedDaemonConfig];
            if (!v12)
            {
              v12 = +[SSLogConfig sharedConfig];
            }

            v13 = [v12 shouldLog];
            if ([v12 shouldLogToDisk])
            {
              v14 = v13 | 2;
            }

            else
            {
              v14 = v13;
            }

            v15 = [v12 OSLogObject];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = v14;
            }

            else
            {
              v16 = v14 & 2;
            }

            if (v16)
            {
              v17 = [v11 taskIdentifier];
              v18 = [v8 downloadIdentifier];
              v19 = *(a1 + 48);
              v28 = 134218498;
              v29 = v17;
              v30 = 2048;
              v31 = v18;
              v32 = 2112;
              v33 = v19;
              LODWORD(v22) = 32;
              v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v15, 16, "[Download] Cancelling task: %lu for download: %lld due to error: %@", &v28, v22);

              v2 = v10;
              v5 = v23;
              if (v20)
              {
                v15 = [NSString stringWithCString:v20 encoding:4];
                free(v20);
                v21 = v15;
                SSFileLog();
                goto LABEL_20;
              }
            }

            else
            {
              v2 = v10;
              v5 = v23;
LABEL_20:
            }

            [v11 cancelWithITunesStoreReason:1 error:*(a1 + 48)];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v4);
  }
}

void sub_1001964A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001964C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishRecoveryWithOperation:v6 response:v5];
}

uint64_t sub_10019665C(uint64_t a1, void *a2)
{
  v54 = a2;
  v52 = [v54 database];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = a1;
  v39 = *(*(a1 + 32) + 40);
  v53 = [v39 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v53)
  {
    v51 = *v58;
    v50 = SSDownloadExternalPropertyBytesDownloaded;
    v49 = SSDownloadExternalPropertyBytesTotal;
    v48 = SSDownloadExternalPropertyEstimatedTimeRemaining;
    v47 = SSDownloadExternalPropertyPercentComplete;
    v46 = @"bundle_id";
    v45 = @"kind";
    v44 = @"transaction_id";
    v41 = SSDownloadKindInAppContent;
    *&v3 = 138413058;
    v40 = v3;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v58 != v51)
        {
          objc_enumerationMutation(v39);
        }

        v5 = *(*(&v57 + 1) + 8 * i);
        v55 = objc_autoreleasePoolPush();
        v6 = [v5 downloadIdentifier];
        v7 = [v5 overallProgress];
        [v7 snapshot];
        v8 = [v7 currentValue];
        v56 = v7;
        v9 = [v7 maxValue];
        v10 = +[SSLogConfig sharedDaemonConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        v11 = v8 / v9;
        v12 = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v13 = v12 | 2;
        }

        else
        {
          v13 = v12;
        }

        v14 = [v10 OSLogObject];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = v13;
        }

        else
        {
          v15 = v13 & 2;
        }

        if (v15)
        {
          v16 = objc_opt_class();
          v17 = v16;
          [v56 estimatedTimeRemaining];
          *v61 = v40;
          *&v61[4] = v16;
          *&v61[12] = 2048;
          *&v61[14] = v6;
          *&v61[22] = 2048;
          v62 = v11;
          v63 = 2048;
          v64 = v18;
          LODWORD(v37) = 42;
          v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 2, "%@: Set download progress: %lld [%.2f, %.2f sec]", v61, v37);

          if (!v19)
          {
            goto LABEL_18;
          }

          v14 = [NSString stringWithCString:v19 encoding:4];
          free(v19);
          v36 = v14;
          SSFileLog();
        }

LABEL_18:
        v20 = objc_alloc_init(NSMutableDictionary);
        v21 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 transferBytesWritten]);
        [v20 setObject:v21 forKey:v50];

        v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 transferBytesExpected]);
        [v20 setObject:v22 forKey:v49];

        [v56 estimatedTimeRemaining];
        v23 = [NSNumber numberWithDouble:?];
        [v20 setObject:v23 forKey:v48];

        v24 = [NSNumber numberWithDouble:v11];
        [v20 setObject:v24 forKey:v47];

        [v54 setExternalPropertyValues:v20 forDownloadWithID:v6];
        v25 = [DownloadEntity alloc];
        v26 = [(DownloadEntity *)v25 initWithPersistentID:v6 inDatabase:v52];
        *v61 = v46;
        *&v61[8] = v45;
        *&v61[16] = v44;
        *(&v38 - 4) = 0;
        *(&v38 - 3) = 0;
        v36 = 0;
        [(DownloadEntity *)v26 getValues:&v38 - 4 forProperties:v61 count:3];
        if (*(&v38 - 3))
        {
          v27 = [v54 externalValuesForDownloadID:v6];
          if ([*(&v38 - 3) isEqualToString:v41])
          {
            v43 = &v38;
            v28 = +[MicroPaymentQueue paymentQueue];
            [(ApplicationHandle *)v28 notifyClientsOfExternalPropertyChanges:v27 ofDownloadID:v6];
            goto LABEL_23;
          }

          if (SSDownloadKindIsSoftwareKind())
          {
            v43 = &v38;
            v29 = [ApplicationHandle alloc];
            v28 = [(ApplicationHandle *)v29 initWithTransactionIdentifier:[v36 longLongValue] downloadIdentifier:v6 bundleIdentifier:*(&v38 - 4)];
            v30 = objc_alloc_init(ApplicationDownloadProgress);
            [(ApplicationDownloadProgress *)v30 setApplicationHandle:v28];
            v38 = v6;
            v31 = v56;
            -[ApplicationDownloadProgress setCompletedUnitCount:](v30, "setCompletedUnitCount:", [v56 currentValue]);
            -[ApplicationDownloadProgress setTotalUnitCount:](v30, "setTotalUnitCount:", [v31 maxValue]);
            v32 = +[ApplicationWorkspace defaultWorkspace];
            [v32 updatePlaceholderWithApplicationProgress:v30];

            v6 = v38;
LABEL_23:
          }

          v33 = +[DownloadController controller];
          [v33 notifyClientsOfExternalPropertyChanges:v27 forDownloadID:v6 downloadKind:*(&v38 - 3)];
        }

        for (j = 16; j != -8; j -= 8)
        {
        }

        objc_autoreleasePoolPop(v55);
      }

      v53 = [v39 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v53);
  }

  return 1;
}

uint64_t sub_100196D74(uint64_t a1, void *a2)
{
  v3 = a2;
  v23[0] = @"is_restore";
  v23[1] = @"download_state.restore_state";
  v4 = [*(a1 + 32) downloadIdentifier];
  v5 = [DownloadEntity alloc];
  v6 = [v3 database];
  v7 = [(DownloadEntity *)v5 initWithPersistentID:v4 inDatabase:v6];

  v19 = 0;
  v20 = 0;
  [(DownloadEntity *)v7 getValues:&v19 forProperties:v23 count:2];
  if (![v19 BOOLValue] || objc_msgSend(v20, "integerValue") == 1)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v21 = 134217984;
      v22 = v4;
      v13 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v11, 0, "[Download] Fail download: %lld after disavow from required handler", &v21);

      if (!v13)
      {
LABEL_15:

        v14 = *(a1 + 40);
        v15 = [NSNumber numberWithLongLong:v4];
        v16 = [*(a1 + 48) error];
        [v14 _failDownloadWithIdentifier:v15 error:v16 transaction:v3];

        goto LABEL_16;
      }

      v11 = [NSString stringWithCString:v13 encoding:4];
      free(v13);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

  for (i = 1; i != -1; --i)
  {
  }

  return 1;
}

uint64_t sub_100197548(id *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 14) objectForKey:a1[5]];
  v5 = [a1[6] downloadIdentifier];
  v6 = [a1[6] result];
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 != 4)
      {
        v12 = [a1[6] downloadHandlerSession];
        [*(a1[4] + 6) addObject:v12];
        [*(a1[4] + 14) setObject:v4 forKey:v12];
        v13 = a1[4];
        v14 = [v12 sessionProperties];
        v15 = [v14 downloadPhase];
        [v13 _setDownloadPhase:v15 forDownloadIdentifier:v5 databaseTransaction:v3];

        v16 = +[SSLogConfig sharedDaemonConfig];
        if (!v16)
        {
          v16 = +[SSLogConfig sharedConfig];
        }

        v17 = [v16 shouldLog];
        if ([v16 shouldLogToDisk])
        {
          LODWORD(v18) = v17 | 2;
        }

        else
        {
          LODWORD(v18) = v17;
        }

        v19 = [v16 OSLogObject];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v18 = v18;
        }

        else
        {
          v18 &= 2u;
        }

        if (v18)
        {
          v20 = objc_opt_class();
          v21 = v20;
          v88 = 138412802;
          v89 = v20;
          v90 = 2048;
          v91 = [v12 sessionID];
          v92 = 2048;
          v93 = v5;
          v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v19, 1, "%@: Starting handler: %lld for download: %lld", &v88, 32);

          if (!v22)
          {
LABEL_20:

            v23 = +[DownloadHandlerManager handlerManager];
            [v23 beginSessionWithID:{objc_msgSend(v12, "sessionID")}];

LABEL_87:
            goto LABEL_112;
          }

          v19 = [NSString stringWithCString:v22 encoding:4];
          free(v22);
          v83 = v19;
          SSFileLog();
        }

        goto LABEL_20;
      }

      v59 = +[SSLogConfig sharedDaemonConfig];
      if (!v59)
      {
        v59 = +[SSLogConfig sharedConfig];
      }

      v60 = [v59 shouldLog];
      if ([v59 shouldLogToDisk])
      {
        v61 = v60 | 2;
      }

      else
      {
        v61 = v60;
      }

      v62 = [v59 OSLogObject];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v61;
      }

      else
      {
        v63 = v61 & 2;
      }

      if (v63)
      {
        v88 = 134217984;
        v89 = v5;
        v64 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &_mh_execute_header, v62, 0, "[Download]: Download operation complete for download: %lld", &v88);

        if (!v64)
        {
LABEL_80:

          v12 = [a1[6] mediaAssetInstallPath];
          if (v12)
          {
            v65 = [DownloadAssetEntity alloc];
            v66 = [a1[6] mediaAssetIdentifier];
            v67 = [v3 database];
            v68 = [(DownloadAssetEntity *)v65 initWithPersistentID:v66 inDatabase:v67];

            v69 = [NSURL fileURLWithPath:v12];
            v70 = [v69 absoluteString];
            [(DownloadAssetEntity *)v68 setValue:v70 forProperty:@"destination_url"];
          }

          if (v4)
          {
            [v4 setFinishProgress:1.0];
            [*(a1[4] + 5) addObject:v4];
            [a1[4] _startProgressTimer];
          }

          [v3 finishDownloadWithID:v5 finalPhase:SSDownloadPhaseFinished updatePipeline:{0, v83}];
          v71 = a1[4];
          v55 = [v4 kind];
          v56 = [a1[5] storeItemIdentifier];
          v57 = [a1[5] rentalIdentifier];
          [v71 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v55 adamID:v56 rentalID:v57 error:0 cancelReason:0];
          goto LABEL_85;
        }

        v62 = [NSString stringWithCString:v64 encoding:4];
        free(v64);
        v83 = v62;
        SSFileLog();
      }

      goto LABEL_80;
    }

    if (v6 != 6)
    {
      if (v6 != 7)
      {
        goto LABEL_112;
      }

      v31 = +[SSLogConfig sharedDaemonConfig];
      if (!v31)
      {
        v31 = +[SSLogConfig sharedConfig];
      }

      v32 = [v31 shouldLog];
      if ([v31 shouldLogToDisk])
      {
        LODWORD(v33) = v32 | 2;
      }

      else
      {
        LODWORD(v33) = v32;
      }

      v34 = [v31 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v33;
      }

      else
      {
        v33 &= 2u;
      }

      if (v33)
      {
        v35 = [v4 bundleIdentifier];
        v88 = 134218242;
        v89 = v5;
        v90 = 2112;
        v91 = v35;
        v36 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, v34, 0, "[Download]: Saved safe harbor data for download: %lld with bundleIdentifier: %@", &v88, 22);

        if (!v36)
        {
LABEL_49:

          if (v4)
          {
            [v4 setFinishProgress:1.0];
            [*(a1[4] + 5) addObject:v4];
            [a1[4] _startProgressTimer];
          }

          [v3 finishDownloadWithID:v5 finalPhase:SSDownloadPhaseCanceled updatePipeline:{0, v83}];
          v37 = [ApplicationHandle alloc];
          v38 = [v4 downloadHandle];
          v39 = [v4 bundleIdentifier];
          v10 = [(ApplicationHandle *)v37 initWithDownloadHandle:v38 bundleIdentifier:v39];

          v40 = +[ApplicationWorkspace defaultWorkspace];
          [v40 resetProgressForApplicationHandle:v10];

          goto LABEL_52;
        }

        v34 = [NSString stringWithCString:v36 encoding:4];
        free(v36);
        v83 = v34;
        SSFileLog();
      }

      goto LABEL_49;
    }

    v76 = +[SSLogConfig sharedDaemonConfig];
    if (!v76)
    {
      v76 = +[SSLogConfig sharedConfig];
    }

    v77 = [v76 shouldLog];
    if ([v76 shouldLogToDisk])
    {
      LODWORD(v78) = v77 | 2;
    }

    else
    {
      LODWORD(v78) = v77;
    }

    v79 = [v76 OSLogObject];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v78 = v78;
    }

    else
    {
      v78 &= 2u;
    }

    if (v78)
    {
      v80 = [a1[6] error];
      v88 = 134218242;
      v89 = v5;
      v90 = 2112;
      v91 = v80;
      v81 = _os_log_send_and_compose_impl(v78, 0, 0, 0, &_mh_execute_header, v79, 0, "[Download]: Cancel failed download due to verfication error: %lld after error: %@", &v88, 22);

      if (!v81)
      {
LABEL_111:

        [v3 finishDownloadWithID:v5 finalPhase:SSDownloadPhaseCanceled updatePipeline:{0, v83, v85, v86}];
        goto LABEL_112;
      }

      v79 = [NSString stringWithCString:v81 encoding:4];
      free(v81);
      v83 = v79;
      SSFileLog();
    }

    goto LABEL_111;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v72 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v73 = v72 | 2;
      }

      else
      {
        v73 = v72;
      }

      v55 = [v12 OSLogObject];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 & 2;
      }

      if (v74)
      {
        v88 = 134217984;
        v89 = v5;
        v75 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &_mh_execute_header, v55, 0, "[Download]: Ignoring finish result after download removed: %lld", &v88);

        if (!v75)
        {
          goto LABEL_87;
        }

        v55 = [NSString stringWithCString:v75 encoding:4];
        free(v75);
        v83 = v55;
        SSFileLog();
      }

      goto LABEL_86;
    }

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      LODWORD(v26) = v25 | 2;
    }

    else
    {
      LODWORD(v26) = v25;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v26 = v26;
    }

    else
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v28 = [a1[6] error];
      v88 = 134218242;
      v89 = v5;
      v90 = 2114;
      v91 = v28;
      v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v27, 16, "[Download]: Cancel failed download: %lld after error: %{public}@", &v88, 22);

      if (!v29)
      {
LABEL_34:

        v30 = objc_opt_class();
        v87 = [a1[6] error];
        SSDebugLog();

        [v3 finishDownloadWithID:v5 finalPhase:SSDownloadPhaseCanceled updatePipeline:{0, v30, v5, v87}];
        goto LABEL_112;
      }

      v27 = [NSString stringWithCString:v29 encoding:4];
      free(v29);
      SSFileLog();
    }

    goto LABEL_34;
  }

  if (!v6)
  {
    v12 = [a1[6] error];
    v41 = +[SSLogConfig sharedDaemonConfig];
    if (!v41)
    {
      v41 = +[SSLogConfig sharedConfig];
    }

    v42 = [v41 shouldLog];
    if ([v41 shouldLogToDisk])
    {
      v43 = v42 | 2;
    }

    else
    {
      v43 = v42;
    }

    v44 = [v41 OSLogObject];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = v43;
    }

    else
    {
      v45 = v43 & 2;
    }

    if (v45)
    {
      v88 = 134218242;
      v89 = v5;
      v90 = 2114;
      v91 = v12;
      v46 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, v44, 16, "[Download]: Fail download: %lld after error: %{public}@", &v88, 22);

      if (!v46)
      {
LABEL_65:

        v84 = objc_opt_class();
        SSDebugLog();
        if (sub_1001AD9B0(v12))
        {
          v47 = [DownloadAssetEntity alloc];
          v48 = [a1[6] mediaAssetIdentifier];
          v49 = [v3 database];
          v50 = [(DownloadAssetEntity *)v47 initWithPersistentID:v48 inDatabase:v49];

          [(DownloadAssetEntity *)v50 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded"];
        }

        v51 = a1[4];
        v52 = [NSNumber numberWithLongLong:v5, v84];
        v53 = [a1[6] error];
        [v51 _failDownloadWithIdentifier:v52 error:v53 transaction:v3];

        v54 = a1[4];
        v55 = [v4 kind];
        v56 = [a1[5] storeItemIdentifier];
        v57 = [a1[5] rentalIdentifier];
        v58 = [a1[6] error];
        [v54 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v55 adamID:v56 rentalID:v57 error:v58 cancelReason:1];

LABEL_85:
LABEL_86:

        goto LABEL_87;
      }

      v44 = [NSString stringWithCString:v46 encoding:4];
      free(v46);
      SSFileLog();
    }

    goto LABEL_65;
  }

  if (v6 == 1)
  {
    v7 = [DownloadAssetEntity alloc];
    v8 = [a1[6] mediaAssetIdentifier];
    v9 = [v3 database];
    v10 = [(DownloadAssetEntity *)v7 initWithPersistentID:v8 inDatabase:v9];

    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1[6] assetBlockedReason]);
    [(ApplicationHandle *)v10 setValue:v11 forProperty:@"blocked_reason"];

    [(ApplicationHandle *)v10 setValue:&__kCFBooleanFalse forProperty:@"is_downloaded"];
    [v3 retryDownloadWithIdentifier:{objc_msgSend(a1[6], "downloadIdentifier")}];
LABEL_52:
  }

LABEL_112:
  [*(a1[4] + 14) removeObjectForKey:{a1[5], v83}];
  [a1[4] _reloadKeepAliveAssertion];

  return 1;
}

uint64_t sub_1001983D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mediaAssetIdentifier];
    v7 = [v5 downloadIdentifier];
    v8 = [DownloadAssetEntity alloc];
    v9 = [v3 database];
    v10 = [(DownloadAssetEntity *)v8 initWithPersistentID:v6 inDatabase:v9];

    v11 = [NSNumber numberWithUnsignedLongLong:*(a1 + 48)];
    v35 = v10;
    [(DownloadAssetEntity *)v10 setValue:v11 forProperty:@"download_token"];

    v12 = [DownloadEntity alloc];
    v13 = [v3 database];
    v14 = [(DownloadEntity *)v12 initWithPersistentID:v7 inDatabase:v13];

    v15 = @"download_state.phase";
    v44 = 0;
    v45 = v15;
    [(DownloadEntity *)v14 getValues:&v44 forProperties:&v45 count:1];
    v34 = v44;
    LOBYTE(v12) = [v34 isEqualToString:SSDownloadPhaseCanceled];
    v16 = +[SSLogConfig sharedDaemonConfig];
    v17 = v16;
    if (v12)
    {
      if (!v16)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v18) = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        LODWORD(v18) = v18 | 2;
      }

      v19 = [v17 OSLogObject];
      if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_INFO))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v36 = 138412802;
        v37 = objc_opt_class();
        v38 = 2048;
        v39 = v6;
        v40 = 2048;
        v41 = v7;
        v20 = v37;
        v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v19, 1, "%@: Skipping changing asset: %lld to downloading phase because download: %lld was cancelled", &v36, 32);

        if (!v21)
        {
LABEL_27:

          goto LABEL_28;
        }

        v19 = [NSString stringWithCString:v21 encoding:4];
        free(v21);
        SSFileLog();
      }

LABEL_26:

      goto LABEL_27;
    }

    if (!v16)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v22 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v23) = v22 | 2;
    }

    else
    {
      LODWORD(v23) = v22;
    }

    v24 = [v17 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v26 = *(a1 + 48);
      v36 = 138413058;
      v37 = v25;
      v38 = 2048;
      v39 = v26;
      v40 = 2048;
      v41 = v6;
      v42 = 2048;
      v43 = v7;
      v27 = v25;
      v28 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v24, 0, "%@: Set download token: %llu for asset: %lld of download: %lld", &v36, 42);

      if (!v28)
      {
LABEL_25:

        v29 = SSDownloadPhaseDownloading;
        [(DownloadEntity *)v14 setValue:SSDownloadPhaseDownloading forProperty:v15];
        v30 = [NSDictionary alloc];
        v17 = [v30 initWithObjectsAndKeys:{v29, SSDownloadPropertyDownloadPhase, 0}];
        v31 = +[DownloadController controller];
        v32 = [(DownloadEntity *)v14 valueForProperty:@"kind"];
        [v31 notifyClientsOfPropertyChanges:v17 forDownloadID:v7 downloadKind:v32];

        [*(a1 + 32) _logDownloadEvent:SSEventNameDownloadStart forTaskWithState:v5 session:v3];
        v19 = objc_alloc_init(DownloadsChangeset);
        -[DownloadsChangeset addStatusChangedDownloadID:](v19, "addStatusChangedDownloadID:", [v5 downloadIdentifier]);
        [(DownloadsChangeset *)v19 addDownloadChangeTypes:2];
        [v3 unionChangeset:v19];
        goto LABEL_26;
      }

      v24 = [NSString stringWithCString:v28 encoding:4];
      free(v28);
      SSFileLog();
    }

    goto LABEL_25;
  }

LABEL_28:

  return 1;
}

void sub_1001995B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100199644(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10019965C(uint64_t a1)
{
  v5 = [*(a1 + 32) URLSessionIdentifier];
  v2 = [*(*(a1 + 40) + 120) objectForKey:v5];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_1001996D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PipelineDownloadTaskState alloc] initWithPrepareDownloadResponse:*(a1 + 32)];
  [*(*(a1 + 40) + 120) setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 48)];
  if (([*(a1 + 32) ignoresDownloadHandler] & 1) == 0 && sub_1001DF9EC(*(a1 + 88)))
  {
    v5 = [*(a1 + 40) _downloadSessionPropertiesWithPhase:SSDownloadPhaseDownloading taskState:v4 databaseSession:v3];
    if (v5)
    {
      v6 = +[DownloadHandlerManager handlerManager];
      v7 = [v6 openSessionWithProperties:v5];
      v8 = *(*(a1 + 80) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  v107 = v4;
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    [*(*(a1 + 40) + 48) addObject:?];
    [*(*(a1 + 40) + 112) setObject:v4 forKey:*(*(*(a1 + 80) + 8) + 40)];
    [*(a1 + 40) _setDownloadPhase:SSDownloadPhaseDownloading forDownloadIdentifier:*(a1 + 96) databaseTransaction:v3];
LABEL_57:
    v57 = [*(a1 + 32) backgroundOperations];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v58 = [v57 countByEnumeratingWithState:&v108 objects:v112 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v109;
      do
      {
        for (i = 0; i != v59; i = i + 1)
        {
          if (*v109 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v108 + 1) + 8 * i);
          [v62 setShouldRunWithBackgroundPriority:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v63 = +[ApplicationWorkspace defaultWorkspace];
            [v63 addPlaceholderThumbnailOperation:v62];
          }

          else
          {
            [*(*(a1 + 40) + 24) addOperation:v62];
          }
        }

        v59 = [v57 countByEnumeratingWithState:&v108 objects:v112 count:16];
      }

      while (v59);
    }

    v4 = v107;
    goto LABEL_68;
  }

  if (*(a1 + 56))
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v11) = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v11) = v11 | 2;
    }

    v12 = [v10 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = [*(a1 + 32) isHLS];
      v113 = 67109120;
      LODWORD(v114) = v13;
      v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v12, 2, "[Download]: About to set download phase and apply resource loader if is HLS: %d", &v113);

      if (!v14)
      {
        goto LABEL_20;
      }

      v12 = [NSString stringWithCString:v14 encoding:4];
      free(v14);
      v103 = v12;
      SSFileLog();
    }

LABEL_20:
    if ([*(a1 + 32) isHLS])
    {
      [*(a1 + 40) _setDownloadPhase:SSDownloadPhaseDownloading forDownloadIdentifier:*(a1 + 96) databaseTransaction:v3];
      v15 = *(a1 + 56);
      v16 = [v15 URLAsset];
      v17 = [v16 resourceLoader];
      v18 = [DownloadEntity alloc];
      v19 = *(a1 + 96);
      v20 = [v3 database];
      v21 = [(DownloadEntity *)v18 initWithPersistentID:v19 inDatabase:v20];

      v22 = [[DownloadAssetFairPlayStreamingKeyLoader alloc] initWithDownloadEntity:v21];
      [(DownloadAssetFairPlayStreamingKeyLoader *)v22 setDelegate:*(a1 + 40)];

      [(DownloadAssetFairPlayStreamingKeyLoader *)v22 applyResourceLoaderDelegate:v17];
      v23 = [v16 downloadToken];
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v39 = [*(a1 + 32) mediaAssetIdentifier];
    v40 = [DownloadAssetEntity alloc];
    v41 = [v3 database];
    v42 = [(DownloadAssetEntity *)v40 initWithPersistentID:v39 inDatabase:v41];

    v43 = [*(a1 + 32) mediaAssetSize];
    v44 = objc_alloc_init(NSMutableDictionary);
    if (v43 >= 1)
    {
      v45 = [NSNumber numberWithLongLong:v43];
      [v44 setObject:v45 forKey:@"bytes_total"];
    }

    v46 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) taskIdentifier]);
    [v44 setObject:v46 forKey:@"url_session_task_id"];

    if (!v23)
    {
      goto LABEL_54;
    }

    v106 = v3;
    v47 = +[SSLogConfig sharedDaemonConfig];
    if (!v47)
    {
      v47 = +[SSLogConfig sharedConfig];
    }

    v48 = [v47 shouldLog];
    if ([v47 shouldLogToDisk])
    {
      v49 = v48 | 2;
    }

    else
    {
      v49 = v48;
    }

    v50 = [v47 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v49;
    }

    else
    {
      v51 = v49 & 2;
    }

    if (v51)
    {
      v52 = objc_opt_class();
      v105 = v42;
      v53 = v52;
      v54 = [(PipelineDownloadTaskState *)v107 downloadIdentifier];
      v113 = 138413058;
      v114 = v52;
      v115 = 2048;
      v116 = v23;
      v117 = 2048;
      v118 = v39;
      v119 = 2048;
      v120 = v54;
      v55 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &_mh_execute_header, v50, 0, "%@: Set download token: %llu for asset: %lld of download: %lld", &v113, 42);

      v42 = v105;
      if (!v55)
      {
LABEL_53:

        v56 = [NSNumber numberWithUnsignedLongLong:v23];
        [v44 setObject:v56 forKey:@"download_token"];

        v3 = v106;
LABEL_54:
        [(DownloadAssetEntity *)v42 setValuesWithDictionary:v44, v104];
        if (v22)
        {
          [*(*(a1 + 40) + 104) setObject:v22 forKey:*(a1 + 56)];
        }

        [*(*(a1 + 40) + 112) setObject:v107 forKey:*(a1 + 56)];

        goto LABEL_57;
      }

      v50 = [NSString stringWithCString:v55 encoding:4];
      free(v55);
      v104 = v50;
      SSFileLog();
    }

    goto LABEL_53;
  }

  v24 = *(a1 + 88);
  switch(v24)
  {
    case 1:
      v74 = +[SSLogConfig sharedDaemonConfig];
      if (!v74)
      {
        v74 = +[SSLogConfig sharedConfig];
      }

      v75 = [v74 shouldLog];
      if ([v74 shouldLogToDisk])
      {
        v75 |= 2u;
      }

      v76 = [v74 OSLogObject];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = v75;
      }

      else
      {
        v77 = v75 & 2;
      }

      if (v77)
      {
        v78 = *(a1 + 96);
        v113 = 134217984;
        v114 = v78;
        v79 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &_mh_execute_header, v76, 0, "[Download]: Cancel download after failed prepare: %lld", &v113);

        if (v79)
        {
          v80 = [NSString stringWithCString:v79 encoding:4];
          free(v79);
          v103 = v80;
          SSFileLog();
        }
      }

      else
      {
      }

      [v3 finishDownloadWithID:*(a1 + 96) finalPhase:SSDownloadPhaseCanceled updatePipeline:0];
      break;
    case 4:
      v67 = +[SSLogConfig sharedDaemonConfig];
      if (!v67)
      {
        v67 = +[SSLogConfig sharedConfig];
      }

      v68 = [v67 shouldLog];
      if ([v67 shouldLogToDisk])
      {
        v68 |= 2u;
      }

      v69 = [v67 OSLogObject];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v68;
      }

      else
      {
        v70 = v68 & 2;
      }

      if (v70)
      {
        v71 = *(a1 + 96);
        v113 = 134217984;
        v114 = v71;
        v72 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &_mh_execute_header, v69, 0, "[Download]: Queue download: %lld to discover assets later.", &v113);

        if (v72)
        {
          v73 = [NSString stringWithCString:v72 encoding:4];
          free(v72);
          v103 = v73;
          SSFileLog();
        }
      }

      else
      {
      }

      break;
    case 3:
      if ([*(a1 + 32) isPerDeviceVPP])
      {
        v25 = [*(a1 + 32) downloadRestoreState];

        if (v25)
        {
          v26 = [DownloadEntity alloc];
          v27 = *(a1 + 96);
          v28 = [v3 database];
          v29 = [(DownloadEntity *)v26 initWithPersistentID:v27 inDatabase:v28];

          v30 = [*(a1 + 32) downloadRestoreState];
          [(DownloadEntity *)v29 setValue:v30 forProperty:@"download_state.restore_state"];

          v31 = +[SSLogConfig sharedDaemonConfig];
          if (!v31)
          {
            v31 = +[SSLogConfig sharedConfig];
          }

          v32 = [v31 shouldLog];
          if ([v31 shouldLogToDisk])
          {
            v32 |= 2u;
          }

          v33 = [v31 OSLogObject];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v32;
          }

          else
          {
            v34 = v32 & 2;
          }

          if (v34)
          {
            v35 = *(a1 + 96);
            v36 = [*(a1 + 32) downloadRestoreState];
            v113 = 134218242;
            v114 = v35;
            v115 = 2112;
            v116 = v36;
            v37 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, v33, 0, "[Download]: Updated per device download: %lld restore state to: %@", &v113, 22);

            if (v37)
            {
              v38 = [NSString stringWithCString:v37 encoding:4];
              free(v37);
              v103 = v38;
              SSFileLog();
            }
          }

          else
          {
          }
        }
      }

      v97 = +[SSLogConfig sharedDaemonConfig];
      if (!v97)
      {
        v97 = +[SSLogConfig sharedConfig];
      }

      v98 = [v97 shouldLog];
      if ([v97 shouldLogToDisk])
      {
        v98 |= 2u;
      }

      v99 = [v97 OSLogObject];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = v98;
      }

      else
      {
        v100 = v98 & 2;
      }

      if (v100)
      {
        v101 = *(a1 + 96);
        v113 = 134217984;
        v114 = v101;
        v102 = _os_log_send_and_compose_impl(v100, 0, 0, 0, &_mh_execute_header, v99, 0, "[Download]: Processing download after finish only response: %lld", &v113);

        if (!v102)
        {
LABEL_120:

          [*(a1 + 40) _processDownloadWithTaskState:v4 databaseSession:v3 setupBlock:0];
          goto LABEL_57;
        }

        v99 = [NSString stringWithCString:v102 encoding:4];
        free(v102);
        v103 = v99;
        SSFileLog();
      }

      goto LABEL_120;
    default:
      v81 = +[SSLogConfig sharedDaemonConfig];
      if (!v81)
      {
        v81 = +[SSLogConfig sharedConfig];
      }

      v82 = [v81 shouldLog];
      if ([v81 shouldLogToDisk])
      {
        v82 |= 2u;
      }

      v83 = [v81 OSLogObject];
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v82;
      }

      else
      {
        v84 = v82 & 2;
      }

      if (v84)
      {
        v85 = *(a1 + 96);
        v113 = 134217984;
        v114 = v85;
        v86 = _os_log_send_and_compose_impl(v84, 0, 0, 0, &_mh_execute_header, v83, 0, "[Download]: Fail download after failed prepare: %lld", &v113);

        if (v86)
        {
          v87 = [NSString stringWithCString:v86 encoding:4];
          free(v86);
          v103 = v87;
          SSFileLog();
        }
      }

      else
      {
      }

      v88 = [*(a1 + 32) error];
      v89 = v88;
      if (!v88)
      {
        v89 = *(a1 + 64);
      }

      v90 = v89;

      v91 = *(a1 + 40);
      v92 = [NSNumber numberWithLongLong:*(a1 + 96)];
      [v91 _failDownloadWithIdentifier:v92 error:v90 transaction:v3];

      v93 = *(a1 + 40);
      v94 = [(PipelineDownloadTaskState *)v4 kind];
      v95 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) storeItemIdentifier]);
      v96 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) rentalIdentifier]);
      [v93 _reportTVAppDownloadQOSMetricsIfAppropriateForKind:v94 adamID:v95 rentalID:v96 error:v90 cancelReason:1];

      goto LABEL_57;
  }

LABEL_68:
  v64 = *(*(a1 + 40) + 64);
  v65 = [NSNumber numberWithLongLong:*(a1 + 96), v103];
  [v64 removeObject:v65];

  [*(a1 + 40) _reloadKeepAliveAssertion];
  return 1;
}

uint64_t sub_10019A620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  v5 = [v4 downloadIdentifier];
  [*(*(a1 + 32) + 112) removeObjectForKey:*(a1 + 40)];

  v6 = [*(a1 + 48) result];
  if (v6 == 2)
  {
    v23 = [NSOrderedSet alloc];
    v24 = [NSNumber numberWithLongLong:v5];
    v25 = [v23 initWithObjects:{v24, 0}];

    [*(a1 + 32) addDownloadsWithIdentifiers:v25];
    goto LABEL_31;
  }

  if (v6 == 1)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v28 = 134217984;
      v29 = v5;
      v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 0, "[Download]: Cancel download %lld after recovery attempt", &v28);

      if (!v21)
      {
LABEL_29:

        v22 = [*(a1 + 48) downloadIdentifier];
        [v3 finishDownloadWithID:v22 finalPhase:SSDownloadPhaseCanceled updatePipeline:0];
        goto LABEL_31;
      }

      v19 = [NSString stringWithCString:v21 encoding:4];
      free(v21);
      v27 = v19;
      SSFileLog();
    }

    goto LABEL_29;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v28 = 134217984;
      v29 = v5;
      v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 0, "[Download]: Fail download %lld after recovery attempt", &v28);

      if (!v12)
      {
LABEL_16:

        v13 = *(a1 + 32);
        v14 = [NSNumber numberWithLongLong:v5];
        v15 = [*(a1 + 48) error];
        [v13 _failDownloadWithIdentifier:v14 error:v15 transaction:v3];

        goto LABEL_31;
      }

      v10 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      v27 = v10;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_31:
  [*(a1 + 32) _reloadKeepAliveAssertion];

  return 1;
}

void sub_10019AFA4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && [v10 selectedButtonIndex])
  {
    v6 = [v10 textFieldValues];
    if ([v6 count] == 1)
    {
      v7 = [v6 objectAtIndex:0];
      v8 = 0;
    }

    else if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndex:1];
      v8 = [v6 objectAtIndex:0];
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v9 = [[NSURLCredential alloc] initWithUser:v8 password:v7 persistence:1];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10019B1B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = *(*(a1 + 32) + 112);
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        v9 = 0;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(a1 + 32) + 112) objectForKey:*(*(&v22 + 1) + 8 * v9)];
          v11 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v10, "downloadIdentifier")}];
          [v4 addObject:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = [v3 database];
  v13 = *(a1 + 40);
  v26 = @"order_key";
  v14 = [NSArray arrayWithObjects:&v26 count:1];
  v15 = [DownloadEntity queryWithDatabase:v12 predicate:v13 orderingProperties:v14];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10019B42C;
  v18[3] = &unk_10032AD50;
  v16 = *(a1 + 32);
  v19 = v4;
  v20 = v16;
  v21 = *(a1 + 49);
  v17 = v4;
  [PrepareDownloadOperation enumerateOperationsWithDownloadQuery:v15 session:v3 usingBlock:v18];
  [*(a1 + 32) _reloadKeepAliveAssertion];
}

void sub_10019B42C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v3, "downloadIdentifier")}];
  if (([*(a1 + 32) containsObject:v4] & 1) == 0 && (objc_msgSend(*(*(a1 + 40) + 64), "containsObject:", v4) & 1) == 0)
  {
    [v3 setIgnoresDownloadHandler:*(a1 + 48)];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10019B53C;
    v5[3] = &unk_10032AD28;
    v5[4] = *(a1 + 40);
    [v3 setOutputBlock:v5];
    [*(*(a1 + 40) + 64) addObject:v4];
    [*(*(a1 + 40) + 72) addOperation:v3];
  }
}

void sub_10019B53C(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if (([a2 isCancelled] & 1) == 0)
  {
    v5 = [[PerformDownloadOperation alloc] initWithDownloadPipeline:*(a1 + 32) response:v9];
    v6 = [v9 sessionConfiguration];
    v7 = [v6 isDiscretionary];

    v8 = 144;
    if (v7)
    {
      v8 = 136;
    }

    [*(*(a1 + 32) + v8) addOperation:v5];
  }
}

void sub_10019B7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019B804(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishDownloadWithOperation:v7 response:v5];

  [v7 setDelegate:0];
}

void sub_10019BC5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10019BCFC;
  v5[3] = &unk_10032ADC8;
  v6 = *(a1 + 48);
  [v3 _processDownloadWithTaskState:v4 databaseSession:a2 setupBlock:v5];
}

void sub_10019BCFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setHandlerReleasedDownloadPhase:v3];
  [v4 setInitialDownloadPhase:*(a1 + 32)];
}

void sub_10019C034(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = 138412290;
  v11 = objc_opt_class();
  v7 = v11;
  v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Reconnect with nsurlsessiond", &v10, 12);

  if (v8)
  {
    v5 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 reconnectWithURLSessionTasks];
}

void sub_10019C50C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _commitProgressTimer];
}

void sub_10019D170(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = 138412290;
  v10 = v2;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 1, "[Download]: RTCReporting sent: %@", &v9, 12);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }
}

void sub_10019D2D8(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = 138412290;
  v10 = v2;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 1, "[Download]: RTCReporting backends: %@", &v9, 12);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }
}

id sub_10019DC38(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383FE8 = result;
  return result;
}

void sub_10019DCF8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count])
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "0", 1009);
    SSXPCDictionarySetCFObject();
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(*(a1 + 32) + 16);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [objc_msgSend(*(*(a1 + 32) + 16) objectForKey:{*(*(&v8 + 1) + 8 * i)), "postNotificationName:message:", *(a1 + 40), v2}];
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    xpc_release(v2);
  }
}

void sub_10019DF40(uint64_t a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  if ([v2 length] && objc_msgSend(v3, "length"))
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v12 = 138412802;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = v2;
      v16 = 2112;
      v17 = v3;
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 1, "%@: Register observer: %@ / %@", &v12, 32);
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4];
        free(v9);
        v11 = v10;
        SSFileLog();
      }
    }

    [*(a1 + 40) _addObserverWithPortName:v2 notificationName:{v3, v11}];
  }
}

void sub_10019E1CC(uint64_t a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  if ([v2 length] && objc_msgSend(v3, "length"))
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v12 = 138412802;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = v2;
      v16 = 2112;
      v17 = v3;
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 1, "%@: Unregister observer: %@ / %@", &v12, 32);
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4];
        free(v9);
        v11 = v10;
        SSFileLog();
      }
    }

    [*(a1 + 48) _removeObserverWithPortName:v2 notificationName:{v3, v11}];
  }
}

id sub_10019E510(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v2 = +[Daemon daemon];

  return [v2 releaseKeepAliveAssertion:@"com.apple.itunesstored.DistributedNotificationCenter"];
}

id sub_10019EB90(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    [objc_msgSend(*(a1 + 40) "object")];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);

    return [v5 removeObjectAtIndex:v3];
  }

  return result;
}

id sub_10019F70C(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383FF8 = result;
  return result;
}

id sub_10019F7D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    *(*(a1 + 32) + 16) = objc_alloc_init(NSMutableArray);
    v2 = *(*(a1 + 32) + 16);
  }

  [v2 addObject:*(a1 + 40)];
  if ([*(a1 + 40) shouldKeepDaemonAlive])
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  v3 = *(a1 + 32);

  return [v3 _reloadPollTimer];
}

id sub_10019F8CC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    [*(a1 + 32) _willRemoveEvent:*(a1 + 40)];
    [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
    v4 = *(a1 + 32);

    return [v4 _reloadPollTimer];
  }

  return result;
}

id sub_10019FB20(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2 >= 1)
  {
    v3 = v2 + 1;
    do
    {
      [objc_msgSend(*(a1 + 32) objectAtIndex:{v3 - 2), "performAction"}];
      --v3;
    }

    while (v3 > 1);
  }

  v4 = +[Daemon daemon];

  return [v4 releaseKeepAliveAssertion:@"EventMonitor"];
}

void sub_1001A0460(void *a1)
{
  if ([*(a1[4] + 16) count])
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      LODWORD(v4) = v3 | 2;
    }

    else
    {
      LODWORD(v4) = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v4 = v4;
    }

    else
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v6 = objc_opt_class();
      v7 = a1[5];
      v23 = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Posting event: %@", &v23, 22);
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4];
        free(v9);
        v17 = v10;
        SSFileLog();
      }
    }

    v11 = xpc_dictionary_create(0, 0, 0);
    SSXPCDictionarySetCFObject();
    SSXPCDictionarySetCFObject();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = *(a1[4] + 16);
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [objc_msgSend(*(*(&v18 + 1) + 8 * i) outputConnection];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    xpc_release(v11);
  }
}

void sub_1001A074C(uint64_t a1)
{
  if (SSXPCConnectionHasEntitlement())
  {
    value = xpc_dictionary_get_value(*(a1 + 48), "1");
    if (value)
    {
      v3 = value;
      if (xpc_get_type(value) == &_xpc_type_endpoint)
      {
        v4 = xpc_connection_create_from_endpoint(v3);
        if (v4)
        {
          v5 = v4;
          v6 = [[XPCClient alloc] initWithInputConnection:*(a1 + 32)];
          [(XPCClient *)v6 setOutputConnectionWithConnection:v5];
          v7 = +[SSLogConfig sharedDaemonConfig];
          if (!v7)
          {
            v7 = +[SSLogConfig sharedConfig];
          }

          v8 = [v7 shouldLog];
          if ([v7 shouldLogToDisk])
          {
            LODWORD(v9) = v8 | 2;
          }

          else
          {
            LODWORD(v9) = v8;
          }

          v10 = [v7 OSLogObject];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v9 = v9;
          }

          else
          {
            v9 &= 2u;
          }

          if (v9)
          {
            v23 = 138412546;
            v24 = objc_opt_class();
            v25 = 2112;
            v26 = v6;
            v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 1, "%@: Registered event monitor: %@", &v23, 22);
            if (v11)
            {
              v12 = v11;
              v13 = [NSString stringWithCString:v11 encoding:4];
              free(v12);
              v22 = v13;
              SSFileLog();
            }
          }

          [*(a1 + 56) _addClient:{v6, v22}];
          v14 = xpc_dictionary_create(0, 0, 0);
          [(SSXPCConnection *)[(XPCClient *)v6 outputConnection] sendMessage:v14];
          xpc_release(v14);

          xpc_release(v5);
        }
      }
    }
  }

  else
  {
    v15 = SSXPCConnectionCopyClientIdentifier();
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = v17 | 2;
    }

    else
    {
      LODWORD(v18) = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v15;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v19, 0, "%@: Cannot register unentitled event monitor: %@", &v23, 22);
      if (v20)
      {
        v21 = v20;
        [NSString stringWithCString:v20 encoding:4];
        free(v21);
        SSFileLog();
      }
    }
  }
}

id sub_1001A0B24(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 40);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v10 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 1, "%@: Client disconnect: %@", &v14, 22);
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4];
        free(v11);
        v13 = v12;
        SSFileLog();
      }
    }

    [*(a1 + 40) setOutputConnectionWithConnection:{0, v13}];
    return [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
  }

  return result;
}

id sub_1001A0D88(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v2 = +[Daemon daemon];

  return [v2 releaseKeepAliveAssertion:@"com.apple.itunesstored.EventDispatcher"];
}

Class sub_1001A1B80()
{
  if (qword_100384020 != -1)
  {
    sub_100272524();
  }

  result = objc_getClass("ICDefaults");
  qword_100384018 = result;
  off_1003834E0 = sub_1001A1BD4;
  return result;
}

void sub_1001A1EBC(uint64_t a1)
{
  v2 = [*(a1 + 32) payment];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = [v2 quantity];
    v9 = [v2 productIdentifier];
    v10 = [*(a1 + 40) _clientIdentifier];
    v53 = 138544130;
    v54 = v7;
    v55 = 2048;
    v56 = v8;
    v57 = 2112;
    v58 = v9;
    v59 = 2112;
    v60 = v10;
    v11 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v6, 1, "%{public}@: Adding payment: [%ld, %@] for client: %@", &v53, 42);
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4];
      free(v12);
      v50 = v13;
      SSFileLog();
    }
  }

  if ([objc_msgSend(v2 productIdentifier] && objc_msgSend(v2, "quantity") >= 1)
  {
    if (*(*(a1 + 40) + 24))
    {
      v14 = +[NSThread beginManagedContextSession];
      v15 = [[MicroPayment alloc] initWithEntity:[MicroPayment insertIntoManagedObjectContext:"paymentEntityFromContext:" paymentEntityFromContext:v14], v14];
      -[MicroPayment setClient:](v15, "setClient:", [v14 objectWithID:*(*(a1 + 40) + 24)]);
      [(MicroPayment *)v15 setValuesWithPaymentTransaction:*(a1 + 32)];
      -[MicroPayment setOriginatingStorefront:](v15, "setOriginatingStorefront:", [+[SSDevice currentDevice](SSDevice "currentDevice")]);
      v16 = [*(a1 + 48) objectForKey:@"StoreKitClientPaymentOptionSupportsDeferredPayment"];
      if ([v16 BOOLValue])
      {
        [(MicroPayment *)v15 setSupportsDeferredPayment:v16];
      }

      if ([*(a1 + 40) _isPaymentRestricted])
      {
        v17 = +[SSLogConfig sharedDaemonConfig];
        if (!v17)
        {
          v17 = +[SSLogConfig sharedConfig];
        }

        v18 = [v17 shouldLog];
        if ([v17 shouldLogToDisk])
        {
          LODWORD(v19) = v18 | 2;
        }

        else
        {
          LODWORD(v19) = v18;
        }

        v20 = [v17 OSLogObject];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v19;
        }

        else
        {
          v19 &= 2u;
        }

        if (v19)
        {
          v21 = objc_opt_class();
          v22 = [*(a1 + 40) _clientIdentifier];
          v53 = 138543618;
          v54 = v21;
          v55 = 2112;
          v56 = v22;
          LODWORD(v52) = 22;
          v23 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v20, 0, "%{public}@: Not allowed to make payment: %@", &v53, v52);
          if (v23)
          {
            v24 = v23;
            v25 = [NSString stringWithCString:v23 encoding:4];
            free(v24);
            v51 = v25;
            SSFileLog();
          }
        }

        sub_1001FA1F0();
        [(MicroPayment *)v15 setFailedWithError:SSError()];
        [*(a1 + 40) _showPaymentsRestrictedAlert];
      }

      else
      {
        [(MicroPayment *)v15 setState:[NSNumber numberWithInteger:0]];
      }

      v33 = [*(*(a1 + 40) + 8) copyInputConnection];
      if ([v2 requestData] && (SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
      {
        if (MGGetBoolAnswer() && CFPreferencesGetAppBooleanValue(@"AllowStoreKitPaymentWithRequestDataWithoutEntitlement", kSSUserDefaultsIdentifier, 0))
        {
          v34 = +[SSLogConfig sharedDaemonConfig];
          if (!v34)
          {
            v34 = +[SSLogConfig sharedConfig];
          }

          v35 = [v34 shouldLog];
          if ([v34 shouldLogToDisk])
          {
            LODWORD(v36) = v35 | 2;
          }

          else
          {
            LODWORD(v36) = v35;
          }

          v37 = [v34 OSLogObject];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v36 = v36;
          }

          else
          {
            v36 &= 2u;
          }

          if (v36)
          {
            v38 = objc_opt_class();
            v39 = [*(a1 + 40) _clientIdentifier];
            v53 = 138543618;
            v54 = v38;
            v55 = 2112;
            v56 = v39;
            LODWORD(v52) = 22;
            v40 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, v37, 0, "%{public}@: Allowing payment request without entitlement on internal device from unentitled client: %@", &v53, v52);
            if (v40)
            {
              v41 = v40;
              [NSString stringWithCString:v40 encoding:4];
              free(v41);
              SSFileLog();
            }
          }
        }

        else if ([objc_msgSend(*(a1 + 48) objectForKeyedSubscript:{@"StoreKitClientPaymentOptionGrandfatherRequestData", "BOOLValue"}])
        {
          [(MicroPayment *)v15 setRequestData:0];
        }

        else
        {
          v42 = +[SSLogConfig sharedDaemonConfig];
          if (!v42)
          {
            v42 = +[SSLogConfig sharedConfig];
          }

          v43 = [v42 shouldLog];
          if ([v42 shouldLogToDisk])
          {
            LODWORD(v44) = v43 | 2;
          }

          else
          {
            LODWORD(v44) = v43;
          }

          v45 = [v42 OSLogObject];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v44 = v44;
          }

          else
          {
            v44 &= 2u;
          }

          if (v44)
          {
            v46 = objc_opt_class();
            v47 = [*(a1 + 40) _clientIdentifier];
            v53 = 138543618;
            v54 = v46;
            v55 = 2112;
            v56 = v47;
            LODWORD(v52) = 22;
            v48 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &_mh_execute_header, v45, 0, "%{public}@: Payment has request data from unentitled client: %@", &v53, v52);
            if (v48)
            {
              v49 = v48;
              [NSString stringWithCString:v48 encoding:4];
              free(v49);
              SSFileLog();
            }
          }

          sub_1001FA1F0();
          [(MicroPayment *)v15 setFailedWithError:SSError()];
        }
      }

      if (v33)
      {
        xpc_release(v33);
      }

      if (sub_1000CE00C(v14))
      {
        [*(a1 + 40) _sendPaymentsAdded:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", v15)}];
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      +[NSThread endManagedContextSession];
    }

    else
    {
      v26 = +[SSLogConfig sharedDaemonConfig];
      if (!v26)
      {
        v26 = +[SSLogConfig sharedConfig];
      }

      v27 = [v26 shouldLog];
      if ([v26 shouldLogToDisk])
      {
        LODWORD(v28) = v27 | 2;
      }

      else
      {
        LODWORD(v28) = v27;
      }

      v29 = [v26 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v28 = v28;
      }

      else
      {
        v28 &= 2u;
      }

      if (v28)
      {
        v30 = objc_opt_class();
        v53 = 138543362;
        v54 = v30;
        LODWORD(v52) = 12;
        v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v29, 16, "[%{public}@]: No DB client object ID when adding payment", &v53, v52);
        if (v31)
        {
          v32 = v31;
          [NSString stringWithCString:v31 encoding:4];
          free(v32);
          SSFileLog();
        }
      }
    }
  }
}

id sub_1001A2730(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = [[NSArray alloc] initWithObjects:{@"downloadID", @"state", 0}];
  v5 = [*(a1 + 32) _copyDownloadsForDownloadIDs:*(a1 + 40) properties:v4 context:v2];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        [v10 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 1)}];
        [v3 addObject:{objc_msgSend(v10, "downloadID")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = v12 | 2;
    }

    else
    {
      LODWORD(v13) = v12;
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v16 = [v3 count];
      v17 = [*(a1 + 32) _clientIdentifier];
      v29 = 138543874;
      v30 = v15;
      v31 = 2048;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      LODWORD(v23) = 32;
      v18 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v14, 1, "%{public}@: Cancel %lu downloads for client: %@", &v29, v23);
      if (v18)
      {
        v19 = v18;
        v20 = [NSString stringWithCString:v18 encoding:4];
        free(v19);
        v22 = v20;
        SSFileLog();
      }
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001A2A54;
    v24[3] = &unk_100329E90;
    v24[4] = v3;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }

  sub_1000CE00C(v2);
  return +[NSThread endManagedContextSession];
}

void sub_1001A2B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001A2B78(uint64_t a1)
{
  result = [*(a1 + 32) _clientIdentifier];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *sub_1001A2CE4(void *result)
{
  v1 = result[4];
  if (!*(v1 + 24) && *(v1 + 8))
  {
    v2 = result;
    v3 = +[NSThread beginManagedContextSession];
    v4 = v2[4];
    if (!v4[2])
    {
      [v4 _reloadClientProperties];
    }

    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      v10 = [*(v2[4] + 16) isSandboxed];
      v11 = [*(v2[4] + 16) bundleIdentifier];
      v12 = [*(v2[4] + 16) vendorIdentifier];
      v18 = 138544130;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v13 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 1, "%{public}@: Adding client to DB: %d / %@ / %@", &v18, 38);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v17 = v15;
        SSFileLog();
      }
    }

    v16 = [[MicroPaymentClient alloc] initWithEntity:[MicroPaymentClient insertIntoManagedObjectContext:"entityForContext:" entityForContext:v3, v17], v3];
    [(MicroPaymentClient *)v16 setValuesWithClientIdentity:*(v2[4] + 16)];
    if (sub_1000CE00C(v3))
    {
      *(v2[4] + 24) = [(MicroPaymentClient *)v16 objectID];
    }

    return +[NSThread endManagedContextSession];
  }

  return result;
}

void sub_1001A300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1001A3024(void *result)
{
  if (*(result[4] + 24))
  {
    v1 = result;
    v2 = +[NSThread beginManagedContextSession];
    v3 = [v2 objectWithID:*(v1[4] + 24)];
    v4 = objc_alloc_init(NSFetchRequest);
    [v4 setEntity:{+[MicroPayment paymentEntityFromContext:](MicroPayment, "paymentEntityFromContext:", v2)}];
    [v4 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"client=%@", v3)}];
    [v4 setPropertiesToFetch:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"state", 0)}];
    v5 = [[NSSortDescriptor alloc] initWithKey:@"insertDate" ascending:1];
    [v4 setSortDescriptors:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v5, 0)}];

    v6 = [v2 executeFetchRequest:v4 error:0];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [v11 objectID];
          if (([*(v1[4] + 80) containsObject:v12] & 1) == 0 && objc_msgSend(v11, "isReady"))
          {
            *(*(v1[5] + 8) + 40) = v12;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    return +[NSThread endManagedContextSession];
  }

  return result;
}

void sub_1001A3300(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = [*(v2 + 8) copyInputConnection];
    *(*(*(a1 + 56) + 8) + 24) = v3 == *(a1 + 40);

    xpc_release(v3);
  }

  else
  {
    if (!*(v2 + 16))
    {
      [v2 _reloadClientProperties];
    }

    v4 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v5 = [*(v4 + 16) bundleIdentifier];
      if (v5 == [*(a1 + 48) bundleIdentifier] || (v6 = objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16), "bundleIdentifier"), "isEqual:", objc_msgSend(*(a1 + 48), "bundleIdentifier"))) != 0)
      {
        v7 = [*(*(a1 + 32) + 16) bundleVersion];
        if (v7 == [*(a1 + 48) bundleVersion] || (v6 = objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16), "bundleVersion"), "isEqual:", objc_msgSend(*(a1 + 48), "bundleVersion"))) != 0)
        {
          v8 = [*(*(a1 + 32) + 16) storeIdentifier];
          if (v8 == [*(a1 + 48) storeItemIdentifier] || (v6 = objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16), "storeIdentifier"), "isEqual:", objc_msgSend(*(a1 + 48), "storeItemIdentifier"))) != 0)
          {
            v9 = [*(*(a1 + 32) + 16) storeVersion];
            if (v9 == [*(a1 + 48) storeExternalVersion])
            {
              LOBYTE(v6) = 1;
            }

            else
            {
              LOBYTE(v6) = [objc_msgSend(*(*(a1 + 32) + 16) "storeVersion")];
            }
          }
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = v6;
    }

    else if (*(v4 + 24))
    {
      v10 = [+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
      if (v10)
      {
        v11 = v10;
        v12 = [[XPCClient alloc] initWithInputConnection:*(a1 + 40)];
        if (-[NSString isEqualToString:](-[XPCClient clientIdentifier](v12, "clientIdentifier"), "isEqualToString:", [v11 identifier]))
        {
          v13 = [(XPCClient *)v12 isAppleSigned];
          v14 = v13 ^ [objc_msgSend(v11 "sandboxed")];
        }

        else
        {
          v14 = 0;
        }

        *(*(*(a1 + 56) + 8) + 24) = v14;
      }

      +[NSThread endManagedContextSession];
    }
  }
}

id sub_1001A362C(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_clientIdentity")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1001A373C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001A3754(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *sub_1001A381C(void *result)
{
  if (*(result[4] + 24))
  {
    v1 = result;
    v2 = +[NSThread beginManagedContextSession];
    v3 = [v2 objectWithID:*(v1[4] + 24)];
    v4 = objc_alloc_init(NSFetchRequest);
    [v4 setEntity:{+[MicroPayment paymentEntityFromContext:](MicroPayment, "paymentEntityFromContext:", v2)}];
    [v4 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"client=%@", v3)}];
    v5 = [[NSSortDescriptor alloc] initWithKey:@"insertDate" ascending:1];
    [v4 setSortDescriptors:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v5, 0)}];

    v6 = [v2 executeFetchRequest:v4 error:0];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(v11 "state")] - 5 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v12 = [v11 copyPaymentTransaction];
            if (v12)
            {
              v13 = v12;
              [v1[5] addObject:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    return +[NSThread endManagedContextSession];
  }

  return result;
}

id sub_1001A3A8C(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [[NSArray alloc] initWithObjects:{@"downloadID", @"state", 0}];
  v28 = a1;
  v29 = v2;
  v6 = [*(a1 + 32) _copyDownloadsForDownloadIDs:*(a1 + 40) properties:v5 context:v2];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [objc_msgSend(v11 "state")];
        if (v12 == 5 || v12 == 0)
        {
          [v11 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 4)}];
          [v3 addObject:{objc_msgSend(v11, "downloadID")}];
          [v4 addObject:{objc_msgSend(sub_1001FA210(), "changesetWithDownloadID:state:", objc_msgSend(v11, "downloadID"), 2)}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v8);
  }

  if ([v3 count])
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v20 = [v3 count];
      v21 = [*(v28 + 32) _clientIdentifier];
      v35 = 138412802;
      v36 = v19;
      v37 = 2048;
      v38 = v20;
      v39 = 2112;
      v40 = v21;
      LODWORD(v27) = 32;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v17, 1, "%@: Pause %lu downloads for client: %@", &v35, v27);
      if (v22)
      {
        v23 = v22;
        v24 = [NSString stringWithCString:v22 encoding:4];
        free(v23);
        v26 = v24;
        SSFileLog();
      }
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001A3E28;
    v30[3] = &unk_100329E90;
    v30[4] = v3;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }

  if ([v4 count])
  {
    [*(v28 + 32) _sendDownloadChangesets:v4];
  }

  sub_1000CE00C(v29);
  return +[NSThread endManagedContextSession];
}

id sub_1001A3F6C(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = [v2 objectWithID:*(a1 + 32)];
  v4 = [v3 transactionIdentifier];
  [v2 deleteObject:v3];
  if (sub_1000CE00C(v2))
  {
    [*(a1 + 40) _sendPaymentsRemoved:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v4, 0)}];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return +[NSThread endManagedContextSession];
}

void sub_1001A4094(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8])
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = v4 | 2;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v8 = [*(a1 + 32) _clientIdentifier];
      v37 = 138543618;
      v38 = v7;
      v39 = 2112;
      v40 = v8;
      v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v6, 0, "%{public}@: Ignoring repeat restore request: %@", &v37, 22);
      if (v9)
      {
        v10 = v9;
        [NSString stringWithCString:v9 encoding:4];
        free(v10);
        SSFileLog();
      }
    }
  }

  else if ([v2 _isPaymentRestricted])
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = v12 | 2;
    }

    else
    {
      LODWORD(v13) = v12;
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v16 = [*(a1 + 32) _clientIdentifier];
      v37 = 138543618;
      v38 = v15;
      v39 = 2112;
      v40 = v16;
      v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v14, 0, "%{public}@: Not allowed to restore transactions: %@", &v37, 22);
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4];
        free(v18);
        v34 = v19;
        SSFileLog();
      }
    }

    [*(a1 + 32) _showPaymentsRestrictedAlert];
    v20 = *(a1 + 32);
    sub_1001FA1F0();
    [v20 _sendRestoreCompletedWithError:SSError()];
  }

  else
  {
    v21 = objc_alloc_init(LoadCompletedMicroPaymentsOperation);
    *(*(a1 + 32) + 64) = v21;
    [*(*(a1 + 32) + 64) setApplicationUsername:*(a1 + 40)];
    [*(*(a1 + 32) + 64) setClientIdentity:{objc_msgSend(*(a1 + 32), "_clientIdentity")}];
    v22 = [SSWeakReference weakReferenceWithObject:*(a1 + 32)];
    v23 = *(*(a1 + 32) + 64);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001A4574;
    v36[3] = &unk_100327350;
    v36[4] = v22;
    v36[5] = v21;
    [v23 setCompletionBlock:v36];
    v24 = *(*(a1 + 32) + 64);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001A45B0;
    v35[3] = &unk_10032AF68;
    v35[4] = v22;
    v35[5] = v21;
    [v24 setPaymentBatchBlock:v35];
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      LODWORD(v27) = v26 | 2;
    }

    else
    {
      LODWORD(v27) = v26;
    }

    v28 = [v25 OSLogObject];
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
    if (v29)
    {
      v27 = v27;
    }

    else
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v31 = objc_opt_class();
      v32 = [*(a1 + 32) _clientIdentifier];
      v37 = 138543618;
      v38 = v31;
      v39 = 2112;
      v40 = v32;
      v29 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, v28, 1, "%{public}@: Restoring completed transactions for client: %@", &v37, 22);
      if (v29)
      {
        v33 = v29;
        [NSString stringWithCString:v29 encoding:4];
        free(v33);
        v29 = SSFileLog();
      }
    }

    [sub_1000D20B0(v29 v30)];
  }
}

id sub_1001A4574(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);

  return [v2 _finishRestoreOperation:v3];
}

id sub_1001A45B0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  return [v4 _mergeBatchResponse:a2 forRestoreOperation:v5];
}

id sub_1001A4660(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [[NSArray alloc] initWithObjects:{@"downloadID", @"state", 0}];
  v28 = a1;
  v29 = v2;
  v6 = [*(a1 + 32) _copyDownloadsForDownloadIDs:*(a1 + 40) properties:v5 context:v2];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [objc_msgSend(v11 "state")];
        if (v12 == 4 || v12 == 2)
        {
          [v11 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 5)}];
          [v3 addObject:{objc_msgSend(v11, "downloadID")}];
          [v4 addObject:{objc_msgSend(sub_1001FA210(), "changesetWithDownloadID:state:", objc_msgSend(v11, "downloadID"), 1)}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v8);
  }

  if ([v3 count])
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v20 = [v3 count];
      v21 = [*(v28 + 32) _clientIdentifier];
      v35 = 138543874;
      v36 = v19;
      v37 = 2048;
      v38 = v20;
      v39 = 2112;
      v40 = v21;
      LODWORD(v27) = 32;
      v22 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v17, 1, "%{public}@: Resume %lu downloads for client: %@", &v35, v27);
      if (v22)
      {
        v23 = v22;
        v24 = [NSString stringWithCString:v22 encoding:4];
        free(v23);
        v26 = v24;
        SSFileLog();
      }
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001A49FC;
    v30[3] = &unk_100329E90;
    v30[4] = v3;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }

  if ([v4 count])
  {
    [*(v28 + 32) _sendDownloadChangesets:v4];
  }

  sub_1000CE00C(v29);
  return +[NSThread endManagedContextSession];
}

id sub_1001A4AFC(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v2 objectWithID:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [*(a1 + 40) _sendPaymentsUpdated:v3];
  }

  return +[NSThread endManagedContextSession];
}

id sub_1001A4CC0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    *(*(a1 + 32) + 16) = objc_alloc_init(StoreKitClientIdentity);
    v2 = *(*(a1 + 32) + 16);
  }

  result = [v2 setValuesWithPaymentQueueClient:*(a1 + 40)];
  if (*(*(a1 + 32) + 24))
  {
    v4 = +[NSThread beginManagedContextSession];
    [objc_msgSend(v4 objectWithID:{*(*(a1 + 32) + 24)), "setValuesWithClientIdentity:", *(*(a1 + 32) + 16)}];
    sub_1000CE00C(v4);

    return +[NSThread endManagedContextSession];
  }

  return result;
}

void *sub_1001A4DEC(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(v2 + 8);
  if (v3 != result[5])
  {

    *(v1[4] + 8) = v1[5];
    result = [v1[4] _reloadClientProperties];
    v2 = v1[4];
    v3 = *(v2 + 8);
  }

  if (v3 && *(v2 + 24))
  {
    v4 = +[NSThread beginManagedContextSession];
    [objc_msgSend(v4 objectWithID:{*(v1[4] + 24)), "setValuesWithClientIdentity:", *(v1[4] + 16)}];
    sub_1000CE00C(v4);

    return +[NSThread endManagedContextSession];
  }

  return result;
}

id sub_1001A4F14(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v32 = objc_alloc_init(NSMutableArray);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [*(a1 + 32) _clientIdentifier];
  v31 = a1;
  v5 = [*(a1 + 32) _copyDownloadsForDownloadIDs:*(a1 + 40) properties:+[MicroPaymentDownload propertiesForDownloadEntities](MicroPaymentDownload context:{"propertiesForDownloadEntities"), v2}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if ([objc_msgSend(v10 "state")] <= 2)
        {
          v11 = [[Download alloc] initWithMicroPaymentDownload:v10 clientID:v4];
          if (v11)
          {
            v12 = v11;
            [v10 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 5)}];
            v13 = v3;
            v14 = sub_1001FA210();
            v15 = [v10 downloadID];
            v16 = v14;
            v3 = v13;
            [v13 addObject:{objc_msgSend(v16, "changesetWithDownloadID:state:", v15, 1)}];
            [v32 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v7);
  }

  if ([v32 count])
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 2;
    }

    if (v21)
    {
      v22 = objc_opt_class();
      v23 = [v32 count];
      v38 = 138543874;
      v39 = v22;
      v40 = 2048;
      v41 = v23;
      v42 = 2112;
      v43 = v4;
      v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v20, 1, "%{public}@: Starting %lu downloads for client: %@", &v38, 32);
      if (v24)
      {
        v25 = v24;
        v26 = [NSString stringWithCString:v24 encoding:4];
        free(v25);
        v30 = v26;
        SSFileLog();
      }
    }

    v27 = +[DownloadsDatabase downloadsDatabase];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001A52C8;
    v33[3] = &unk_10032A460;
    v28 = *(v31 + 32);
    v33[4] = v32;
    v33[5] = v28;
    v33[6] = v4;
    [v27 modifyUsingTransactionBlock:v33];
  }

  if ([v3 count])
  {
    [*(v31 + 32) _sendDownloadChangesets:v3];
  }

  sub_1000CE00C(v2);
  return +[NSThread endManagedContextSession];
}

uint64_t sub_1001A52C8(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v29 = objc_alloc_init(NSMutableArray);
  v26 = a1;
  v27 = objc_alloc_init(NSMutableOrderedSet);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 databaseID];
        v11 = [[DownloadEntity alloc] initWithPersistentID:v10 inDatabase:v3];
        if (([(DownloadEntity *)v11 existsInDatabase]& 1) != 0)
        {
          v12 = [[NSNumber alloc] initWithLongLong:v10];
          [v27 addObject:v12];
          [a2 updateDownloadEntityWithIdentifier:v10 withDownload:v9];
        }

        else
        {
          [v29 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v6);
  }

  if ([v29 count])
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v19 = [v29 count];
      v20 = *(v26 + 48);
      v34 = 138543874;
      v35 = v18;
      v36 = 2048;
      v37 = v19;
      v38 = 2112;
      v39 = v20;
      v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v16, 1, "%{public}@: Adding %lu new downloads for client: %@", &v34, 32);
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4];
        free(v22);
        v25 = v23;
        SSFileLog();
      }
    }

    [a2 addDownloads:{v29, v25}];
  }

  if ([v27 count])
  {
    [a2 resetDownloadsWithIdentifiers:v27];
  }

  return 1;
}

id sub_1001A5638(uint64_t a1)
{
  v2 = [+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
  v3 = [objc_msgSend(v2 "state")];
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      v13 = +[SSLogConfig sharedDaemonConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        LODWORD(v15) = v14 | 2;
      }

      else
      {
        LODWORD(v15) = v14;
      }

      v16 = [v13 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v15 = v15;
      }

      else
      {
        v15 &= 2u;
      }

      if (v15)
      {
        v28 = 138543618;
        v29 = objc_opt_class();
        v30 = 2112;
        v31 = v2;
        v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v16, 1, "%{public}@: Finishing payment: %@", &v28, 22);
        if (v17)
        {
          v18 = v17;
          v19 = [NSString stringWithCString:v17 encoding:4];
          free(v18);
          v27 = v19;
          SSFileLog();
        }
      }

      [*(a1 + 40) _sendFinishRequestForPayment:v2 withCompletionBlock:{*(a1 + 48), v27}];
    }
  }

  else
  {
    v4 = [SSPrivacyController shouldDisplayPrivacyLinkWithIdentifier:SSPrivacyIdentifierAppStore];
    v5 = +[SSLogConfig sharedDaemonConfig];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v8) = v7 | 2;
      }

      else
      {
        LODWORD(v8) = v7;
      }

      v9 = [v6 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v28 = 138543618;
        v29 = objc_opt_class();
        v30 = 2112;
        v31 = v2;
        v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%{public}@: Requesting privacy acknowledgement for payment: %@", &v28, 22);
        if (v10)
        {
          v11 = v10;
          v12 = [NSString stringWithCString:v10 encoding:4];
          free(v11);
          v27 = v12;
          SSFileLog();
        }
      }

      [*(a1 + 40) _showPrivacyPromptForPayment:v2 withCompletionBlock:{*(a1 + 48), v27}];
    }

    else
    {
      if (!v5)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v20 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v21) = v20 | 2;
      }

      else
      {
        LODWORD(v21) = v20;
      }

      v22 = [v6 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v21 = v21;
      }

      else
      {
        v21 &= 2u;
      }

      if (v21)
      {
        v28 = 138543618;
        v29 = objc_opt_class();
        v30 = 2112;
        v31 = v2;
        v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v22, 1, "%{public}@: Buying payment: %@", &v28, 22);
        if (v23)
        {
          v24 = v23;
          v25 = [NSString stringWithCString:v23 encoding:4];
          free(v24);
          v27 = v25;
          SSFileLog();
        }
      }

      [*(a1 + 40) _sendBuyRequestForPayment:v2 withCompletionBlock:{*(a1 + 48), v27}];
    }
  }

  return +[NSThread endManagedContextSession];
}

id sub_1001A5A80(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = [v2 objectWithID:*(a1 + 32)];
  if (v3)
  {
    v4 = [objc_msgSend(v3 "client")];
    [*(a1 + 48) _cancelDownloadsForDownloadIDs:{objc_msgSend(v4, "removedDownloadIDs")}];
    [*(a1 + 48) _sendMergeResults:v4];
  }

  if ([*(a1 + 40) shouldTriggerQueueCheck])
  {
    [*(a1 + 48) _refreshFromServerWithReason:2 accountIdentifier:0];
  }

  sub_1000CE00C(v2);

  return +[NSThread endManagedContextSession];
}

void sub_1001A5D64(uint64_t a1)
{
  v2 = [*(a1 + 32) copyProductsResponse];
  v3 = [*(a1 + 32) success];
  v4 = +[SSLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 48);
      v35 = 138543874;
      v36 = v9;
      v37 = 2114;
      v38 = v10;
      v39 = 2114;
      v40 = [v2 products];
      v11 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 0, "[%{public}@]: Sending purchase intents for client: %{public}@, successfully looked up products: %{public}@", &v35, 32);
      goto LABEL_22;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v12 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v13) = v12 | 2;
    }

    else
    {
      LODWORD(v13) = v12;
    }

    v14 = [v5 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v16 = *(a1 + 48);
      v17 = [*(a1 + 32) error];
      v35 = 138543874;
      v36 = v15;
      v37 = 2114;
      v38 = v16;
      v39 = 2114;
      v40 = v17;
      v11 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v14, 16, "[%{public}@]: Sending purchase intents for client: %{public}@, product lookup failed with error: %{public}@", &v35, 32);
LABEL_22:
      if (v11)
      {
        v18 = v11;
        v19 = [NSString stringWithCString:v11 encoding:4];
        free(v18);
        v29 = v19;
        SSFileLog();
      }
    }
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v20, "0", 20007);
  v21 = xpc_array_create(0, 0);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = [v2 products];
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v30 + 1) + 8 * i) copyXPCEncoding];
        if (v27)
        {
          v28 = v27;
          xpc_array_append_value(v21, v27);
          xpc_release(v28);
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v24);
  }

  xpc_dictionary_set_value(v20, "1", v21);
  xpc_release(v21);
  [objc_msgSend(*(*(a1 + 40) + 8) "outputConnection")];
  xpc_release(v20);
}

void sub_1001A61C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001A61E0(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_1001A62C8(uint64_t a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  if ([v2 length])
  {
    v3 = &CFDictionaryGetValue_ptr;
    v4 = +[NSThread beginManagedContextSession];
    v5 = [objc_msgSend(v4 objectWithID:{*(*(a1 + 40) + 24)), "payments"}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v46;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v45 + 1) + 8 * v9);
        if ([objc_msgSend(v10 "matchingIdentifier")])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v45 objects:v55 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    v11 = [[NSArray alloc] initWithObjects:{v2, 0}];
    if (v10)
    {
      v12 = [[NSArray alloc] initWithObjects:{v10, 0}];
      [*(a1 + 40) _cancelDownloadsForPayments:v12];

      v13 = [objc_msgSend(v10 "state")];
      if (v13 <= 8)
      {
        v14 = v13;
        if (((1 << v13) & 0xC4) != 0)
        {
          v15 = +[SSLogConfig sharedDaemonConfig];
          if (!v15)
          {
            v15 = +[SSLogConfig sharedConfig];
          }

          v16 = [v15 shouldLog];
          if ([v15 shouldLogToDisk])
          {
            LODWORD(v17) = v16 | 2;
          }

          else
          {
            LODWORD(v17) = v16;
          }

          v18 = [v15 OSLogObject];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v17 = v17;
          }

          else
          {
            v17 &= 2u;
          }

          if (v17)
          {
            v19 = objc_opt_class();
            v49 = 138543618;
            v50 = v19;
            v51 = 2112;
            v52 = v2;
            v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v18, 1, "%{public}@: Finishing purchased payment: %@", &v49, 22);
            if (v20)
            {
              v21 = v20;
              v22 = [NSString stringWithCString:v20 encoding:4];
              free(v21);
              v44 = v22;
              SSFileLog();
            }
          }

          [v10 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 3, v44)}];
          if (!sub_1000CE00C(v4))
          {
            goto LABEL_64;
          }

          goto LABEL_50;
        }

        if (((1 << v13) & 0x120) != 0)
        {
          v29 = +[SSLogConfig sharedDaemonConfig];
          if (!v29)
          {
            v29 = +[SSLogConfig sharedConfig];
          }

          v30 = [v29 shouldLog];
          if ([v29 shouldLogToDisk])
          {
            LODWORD(v31) = v30 | 2;
          }

          else
          {
            LODWORD(v31) = v30;
          }

          v32 = [v29 OSLogObject];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v31 = v31;
          }

          else
          {
            v31 &= 2u;
          }

          if (v31)
          {
            v33 = objc_opt_class();
            v49 = 138543874;
            v50 = v33;
            v51 = 2048;
            v52 = v14;
            v53 = 2112;
            v54 = v2;
            v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v32, 1, "%{public}@: Finishing for state: %ld, payment: %@", &v49, 32);
            if (v34)
            {
              v35 = v34;
              v36 = [NSString stringWithCString:v34 encoding:4];
              free(v35);
              v44 = v36;
              SSFileLog();
            }
          }

          [v4 deleteObject:{v10, v44}];
          v3 = &CFDictionaryGetValue_ptr;
          if (!sub_1000CE00C(v4))
          {
            goto LABEL_64;
          }

LABEL_50:
          [*(a1 + 40) _sendPaymentsRemoved:v11];
          *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_64:

          [v3[181] endManagedContextSession];
          goto LABEL_65;
        }
      }

      v37 = +[SSLogConfig sharedDaemonConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      v38 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        LODWORD(v39) = v38 | 2;
      }

      else
      {
        LODWORD(v39) = v38;
      }

      v40 = [v37 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v39 = v39;
      }

      else
      {
        v39 &= 2u;
      }

      if (!v39)
      {
LABEL_63:
        [*(a1 + 40) _sendPaymentsRemoved:{v11, v44}];
        goto LABEL_64;
      }

      v41 = objc_opt_class();
      v49 = 138543618;
      v50 = v41;
      v51 = 2112;
      v52 = v2;
      v28 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, v40, 1, "%{public}@: Received finish for payment that is finishing or finished: %@", &v49, 22);
    }

    else
    {
      v23 = +[SSLogConfig sharedDaemonConfig];
      if (!v23)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      v24 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        LODWORD(v25) = v24 | 2;
      }

      else
      {
        LODWORD(v25) = v24;
      }

      v26 = [v23 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v25;
      }

      else
      {
        v25 &= 2u;
      }

      if (!v25)
      {
        goto LABEL_63;
      }

      v27 = objc_opt_class();
      v49 = 138543618;
      v50 = v27;
      v51 = 2112;
      v52 = v2;
      v28 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, v26, 0, "%{public}@: Finishing unknown payment: %@", &v49, 22);
    }

    if (v28)
    {
      v42 = v28;
      v43 = [NSString stringWithCString:v28 encoding:4];
      free(v42);
      v44 = v43;
      SSFileLog();
    }

    goto LABEL_63;
  }

LABEL_65:
}

void sub_1001A6FB8(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = [v2 objectWithID:*(a1 + 32)];
  v4 = [*(a1 + 40) success];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v3;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%{public}@: Buy finished for payment: %@", &v23, 22);
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4];
        free(v11);
        v22 = v12;
        SSFileLog();
      }
    }

    v13 = [objc_msgSend(v3 client];
    [*(a1 + 48) _cancelDownloadsForDownloadIDs:{objc_msgSend(v13, "removedDownloadIDs")}];
    [*(a1 + 48) _sendMergeResults:v13];
  }

  else
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v14 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v15) = v14 | 2;
    }

    else
    {
      LODWORD(v15) = v14;
    }

    v16 = [v6 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = [*(a1 + 40) error];
      v23 = 138543874;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      v27 = 2112;
      v28 = v3;
      v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v16, 0, "%{public}@: Buy failed with error: %{public}@ for payment: %@", &v23, 32);
      if (v19)
      {
        v20 = v19;
        v21 = [NSString stringWithCString:v19 encoding:4];
        free(v20);
        v22 = v21;
        SSFileLog();
      }
    }

    [v3 setFailedWithError:{objc_msgSend(*(a1 + 40), "error", v22)}];
    [*(a1 + 48) _sendPaymentsUpdated:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v3, 0)}];
  }

  if ([objc_msgSend(*(a1 + 40) "response")])
  {
    [*(a1 + 48) _refreshFromServerWithReason:2 accountIdentifier:0];
  }

  sub_1000CE00C(v2);
  +[NSThread endManagedContextSession];
  sub_1001A7334(*(a1 + 56), [*(a1 + 40) success], objc_msgSend(*(a1 + 40), "error"));
}

void sub_1001A7334(uint64_t a1, char a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_100384038 != -1)
    {
      sub_100272538();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A9EE0;
    block[3] = &unk_10032B078;
    v7 = a2;
    block[4] = a3;
    block[5] = a1;
    dispatch_async(qword_100384030, block);
  }
}

void sub_1001A7458(uint64_t a1)
{
  v2 = +[NSThread beginManagedContextSession];
  v3 = [v2 objectWithID:*(a1 + 32)];
  v4 = [*(a1 + 40) success];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v21 = 138543618;
      v22 = objc_opt_class();
      v23 = 2112;
      v24 = v3;
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%{public}@: Deleting payment after finish: %@", &v21, 22);
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4];
        free(v11);
        v20 = v12;
        SSFileLog();
      }
    }

    [v2 deleteObject:{v3, v20}];
  }

  else
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v13 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v14) = v13 | 2;
    }

    else
    {
      LODWORD(v14) = v13;
    }

    v15 = [v6 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v21 = 138543618;
      v22 = objc_opt_class();
      v23 = 2112;
      v24 = v3;
      v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v15, 1, "%{public}@: Flagging payment as transient failed: %@", &v21, 22);
      if (v16)
      {
        v17 = v16;
        v18 = [NSString stringWithCString:v16 encoding:4];
        free(v17);
        v20 = v18;
        SSFileLog();
      }
    }

    v19 = *(*(a1 + 48) + 80);
    if (!v19)
    {
      *(*(a1 + 48) + 80) = objc_alloc_init(NSMutableSet);
      v19 = *(*(a1 + 48) + 80);
    }

    [v19 addObject:{*(a1 + 32), v20}];
  }

  sub_1000CE00C(v2);
  +[NSThread endManagedContextSession];
  sub_1001A7334(*(a1 + 56), [*(a1 + 40) success], objc_msgSend(*(a1 + 40), "error"));
}

id sub_1001A79B0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];

  return [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.StoreKitClient"];
}

void sub_1001A7A64(uint64_t a1)
{
  [ISLoadURLBagOperation incrementNetworkCounterForBagContext:[SSURLBagContext contextWithBagType:0]];
  [*(*(a1 + 32) + 56) setCompletionBlock:0];

  *(*(a1 + 32) + 56) = 0;
  v2 = +[NSThread beginManagedContextSession];
  v3 = v2;
  if (*(*(a1 + 32) + 24))
  {
    v4 = [v2 objectWithID:?];
  }

  else
  {
    v4 = 0;
  }

  if (([*(a1 + 40) success] & 1) != 0 || (objc_msgSend(*(a1 + 40), "error"), (ISErrorIsEqual() & 1) == 0))
  {
    [v4 setLastQueueCheckDate:{+[NSDate date](NSDate, "date")}];
  }

  v5 = [*(a1 + 40) success];
  v6 = +[SSLogConfig sharedDaemonConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = [*(a1 + 32) _clientIdentifier];
      v33 = 138543618;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 1, "%{public}@: Refresh finished: %@", &v33, 22);
      if (v13)
      {
        v14 = v13;
        v15 = [NSString stringWithCString:v13 encoding:4];
        free(v14);
        v31 = v15;
        SSFileLog();
      }
    }

    [*(a1 + 32) _setClientState:{2, v31}];
    v16 = [*(a1 + 40) paymentsResponse];
    if (v16)
    {
      v17 = v16;
      v18 = [*(a1 + 40) reason];
      v19 = [v4 mergeResponse:v17 withOptions:3];
      if ([v19 didChange])
      {
        [*(a1 + 32) _cancelDownloadsForDownloadIDs:{objc_msgSend(v19, "removedDownloadIDs")}];
LABEL_36:
        [*(*(a1 + 32) + 8) sendCoalescedMessageWithIdentifier:20001];
        goto LABEL_37;
      }

      if (v18 == 3 || !v18)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v20 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v21) = v20 | 2;
    }

    else
    {
      LODWORD(v21) = v20;
    }

    v22 = [v7 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v24 = [*(a1 + 32) _clientIdentifier];
      v25 = [*(a1 + 40) error];
      v33 = 138543874;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      v37 = 2114;
      v38 = v25;
      v26 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v22, 0, "%{public}@: Refresh failed with error: %@: %{public}@", &v33, 32);
      if (v26)
      {
        v27 = v26;
        v28 = [NSString stringWithCString:v26 encoding:4];
        free(v27);
        v31 = v28;
        SSFileLog();
      }
    }

    [*(a1 + 32) _setClientState:{3, v31}];
  }

LABEL_37:
  [ISLoadURLBagOperation decrementNetworkCounterForBagContext:[SSURLBagContext contextWithBagType:0]];
  sub_1000CE00C(v3);
  +[NSThread endManagedContextSession];
  v29 = *(a1 + 32);
  v30 = *(v29 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A7ED4;
  block[3] = &unk_100327378;
  block[4] = v29;
  dispatch_async(v30, block);
}

id sub_1001A7ED4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);

  return [(NSNotificationCenter *)v2 postNotificationName:@"StoreKitClientRefreshDidFinishNotification" object:v3];
}

id sub_1001A7F88(uint64_t a1)
{
  [*(*(a1 + 32) + 64) setCompletionBlock:0];
  [*(*(a1 + 32) + 64) setPaymentBatchBlock:0];

  *(*(a1 + 32) + 64) = 0;
  if (![*(a1 + 40) success] || (objc_msgSend(*(a1 + 40), "isPartialFailure") & 1) != 0)
  {
    v2 = [*(a1 + 40) error];
    if (!v2)
    {
      v2 = SSError();
    }

    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = v4 | 2;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (!v5)
    {
      return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v19}];
    }

    v7 = objc_opt_class();
    v8 = [*(a1 + 32) _clientIdentifier];
    v20 = 138543874;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2114;
    v25 = v2;
    v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v6, 0, "%{public}@: Restore completed transactions failed for client: %@ with error: %{public}@", &v20, 32);
    if (!v9)
    {
      return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v19}];
    }

LABEL_26:
    v16 = v9;
    v17 = [NSString stringWithCString:v9 encoding:4];
    free(v16);
    v19 = v17;
    SSFileLog();
    return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v19}];
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = v11 | 2;
  }

  else
  {
    LODWORD(v12) = v11;
  }

  v13 = [v10 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    v2 = 0;
    return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v19}];
  }

  v14 = objc_opt_class();
  v15 = [*(a1 + 32) _clientIdentifier];
  v20 = 138543618;
  v21 = v14;
  v22 = 2112;
  v23 = v15;
  v9 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v13, 1, "%{public}@: Restore completed transactions finished for client: %@", &v20, 22);
  v2 = 0;
  if (v9)
  {
    goto LABEL_26;
  }

  return [*(a1 + 32) _sendRestoreCompletedWithError:{v2, v19}];
}

void *sub_1001A83CC(void *result)
{
  if (*(result[4] + 24))
  {
    v1 = result;
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      LODWORD(v4) = v3 | 2;
    }

    else
    {
      LODWORD(v4) = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v4 = v4;
    }

    else
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v6 = objc_opt_class();
      v7 = [v1[4] _clientIdentifier];
      v13 = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%{public}@: Received restore batch response for client: %@", &v13, 22);
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4];
        free(v9);
        v12 = v10;
        SSFileLog();
      }
    }

    v11 = [objc_msgSend(+[NSThread beginManagedContextSession](NSThread beginManagedContextSession];
    [v1[4] _cancelDownloadsForDownloadIDs:{objc_msgSend(v11, "removedDownloadIDs")}];
    [v1[4] _sendMergeResults:v11];
    return +[NSThread endManagedContextSession];
  }

  return result;
}

id sub_1001A8B0C(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(a1 + 40);

  return [v2 _finishLoadQueueOperation:v3];
}

id sub_1001A8E2C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A8ED4;
  v7[3] = &unk_10032AFE0;
  v10 = (a2 - 1) < 2;
  v5 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v5;
  [v4 _dispatchAsync:v7];
  return [*(a1 + 48) setCompletion:0];
}

id sub_1001A8ED4(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = +[NSThread beginManagedContextSession];
  v4 = [v3 objectWithID:*(a1 + 40)];
  v5 = *(a1 + 64);
  v6 = +[SSLogConfig sharedDaemonConfig];
  v7 = v6;
  if (v5 == 1)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v24 = 138543618;
      v25 = objc_opt_class();
      v26 = 2112;
      v27 = v4;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 0, "%{public}@: Privacy acknowledgement completed for payment: %@", &v24, 22);
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4];
        free(v12);
        v23 = v13;
        SSFileLog();
      }
    }

    [v2 _sendBuyRequestForPayment:v4 withCompletionBlock:{*(a1 + 56), v23}];
  }

  else
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v14 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v15) = v14 | 2;
    }

    else
    {
      LODWORD(v15) = v14;
    }

    v16 = [v7 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = [*(a1 + 48) error];
      v24 = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      v28 = 2112;
      v29 = v4;
      v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v16, 0, "%{public}@: Privacy acknowledgement failed with error: %{public}@ for payment: %@", &v24, 32);
      if (v19)
      {
        v20 = v19;
        v21 = [NSString stringWithCString:v19 encoding:4];
        free(v20);
        v23 = v21;
        SSFileLog();
      }
    }

    [v4 setFailedWithError:{objc_msgSend(*(a1 + 48), "error", v23)}];
    sub_1000CE00C(v3);
    [v2 _sendPaymentsUpdated:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v4, 0)}];
    sub_1001A7334(*(a1 + 56), [*(a1 + 48) success], objc_msgSend(*(a1 + 48), "error"));
  }

  return +[NSThread endManagedContextSession];
}

id sub_1001A942C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "object")];
  v2 = *(a1 + 40);

  return [v2 setCompletionBlock:0];
}

id sub_1001A963C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "object")];
  v2 = *(a1 + 40);

  return [v2 setCompletionBlock:0];
}

id sub_1001A9D1C(uint64_t a1)
{
  [objc_msgSend(+[NSThread beginManagedContextSession](NSThread "beginManagedContextSession")];
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "0", 20008);
  SSXPCDictionarySetCFObject();
  SSXPCDictionarySetCFObject();
  v3 = dispatch_semaphore_create(0);
  v4 = [*(*(a1 + 48) + 8) outputConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A9E60;
  v7[3] = &unk_10032B030;
  v5 = *(a1 + 56);
  v7[4] = v3;
  v7[5] = v5;
  [v4 sendMessage:v2 withReply:v7];
  if (dispatch_semaphore_wait(v3, 0x3B9ACA00uLL) >= 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  return +[NSThread endManagedContextSession];
}

intptr_t sub_1001A9E60(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "0");
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void sub_1001AAB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_1001AABC8(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isEqualToString:SSLookupParameterItemIdentifiers])
  {
    v6 = *(a1 + 32);
    v7 = [a3 componentsSeparatedByString:{@", "}];

    return [v6 setItemIdentifiers:v7];
  }

  else
  {
    v9 = [a2 isEqualToString:SSLookupParameterCaller];
    v10 = *(a1 + 32);
    if (v9)
    {

      return [v10 _setCaller:a3];
    }

    else
    {

      return [v10 setValue:a3 forRequestParameter:a2];
    }
  }
}

id sub_1001AACA4(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) _setLookupResponse:a2];
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  *(*(*(a1 + 48) + 8) + 24) = a2 != 0;
  return result;
}

void sub_1001AB048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

id sub_1001AB090(uint64_t a1, uint64_t a2, void *a3)
{
  [*(a1 + 32) _setLookupResponse:a2];
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  *(*(*(a1 + 48) + 8) + 24) = a2 != 0;
  return result;
}

void sub_1001ABC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001ABC3C(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_array)
  {
    v6 = [NSString stringWithUTF8String:a2];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001ABD04;
    v8[3] = &unk_10032B108;
    v10 = *(a1 + 48);
    v8[4] = v6;
    v9 = *(a1 + 32);
    xpc_array_apply(object, v8);
  }

  return 1;
}

uint64_t sub_1001ABD04(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v5 = [[DownloadAsset alloc] initWithClientXPCAsset:object];
    if (v5)
    {
      v6 = v5;
      v7 = [(DownloadAsset *)v5 valueForProperty:@"url"];
      if (!v7 || [(NSString *)[[NSURL URLWithString:?]] caseInsensitiveCompare:@"file"]== NSOrderedSame)
      {
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      v8 = *(*(a1 + 56) + 8);
      if (*(v8 + 24))
      {
        v9 = 1;
      }

      else
      {
        v9 = [-[DownloadAsset valueForProperty:](v6 valueForProperty:{@"is_external", "BOOLValue"}];
        v8 = *(*(a1 + 56) + 8);
      }

      *(v8 + 24) = v9;
      [(DownloadAsset *)v6 setValue:*(a1 + 32) forProperty:@"asset_type"];
      -[DownloadAsset setValue:forProperty:](v6, "setValue:forProperty:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) count]), @"asset_order");
      [*(a1 + 40) addObject:v6];
    }
  }

  return 1;
}

void sub_1001AC9B4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sizeLimitForNetworkType:a2];
  v5 = objc_alloc_init(SSDownloadPolicyRule);
  [v5 addNetworkType:a2];
  [v5 setDownloadSizeLimit:v4];
  [*(*(a1 + 40) + 16) unionPolicyRule:v5];
}

BOOL sub_1001AD6E0(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:AVFoundationErrorDomain])
  {
    v3 = [v1 code] == -11903;
    goto LABEL_3;
  }

  if ([v2 isEqualToString:SSErrorDomain])
  {
    v5 = [v1 code];
    v3 = 1;
    if (v5 != 8 && v5 != 133)
    {
LABEL_7:
      v3 = sub_1001AD7F0(v1);
    }
  }

  else
  {
    if (![v2 isEqualToString:NSURLErrorDomain])
    {
      v3 = 0;
      goto LABEL_3;
    }

    v6 = [v1 code];
    v3 = 1;
    if ((v6 + 1011 > 0xA || ((1 << (v6 - 13)) & 0x589) == 0) && v6 != -1102 && v6 != -1100)
    {
      goto LABEL_7;
    }
  }

LABEL_3:

  return v3;
}

BOOL sub_1001AD7F0(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:SSErrorHTTPStatusCodeKey];

  if (v2)
  {
    v3 = [v2 integerValue] > 399;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1001AD858(void *a1)
{
  v1 = a1;
  if (ISErrorIsEqual())
  {
    IsEqual = 1;
  }

  else
  {
    IsEqual = ISErrorIsEqual();
  }

  return IsEqual;
}

uint64_t sub_1001AD8BC(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:AVFoundationErrorDomain];

  if (v3)
  {
    v4 = [v1 code];
    v3 = 1;
    if (v4 != -11903 && v4 != -11900)
    {
      v5 = [v1 userInfo];
      v6 = [v5 objectForKey:NSUnderlyingErrorKey];

      if ([v6 code] == -12540)
      {
        v7 = [v6 domain];
        v3 = [v7 isEqualToString:NSOSStatusErrorDomain];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

void sub_1001B211C(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v4 = [v3 objectForSetting:1];

  *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = v6 | 2;
  }

  else
  {
    LODWORD(v7) = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_class();
  v10 = *(*(*(a1 + 40) + 8) + 24);
  v11 = v9;
  v12 = [NSNumber numberWithBool:v10];
  v14 = 138543618;
  v15 = v9;
  v16 = 2114;
  v17 = v12;
  v13 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 0, "%{public}@: Remote action received for privacy prompt operation %{public}@", &v14, 22);

  if (v13)
  {
    v8 = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_12:
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 112));
}

uint64_t sub_1001B5318(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"%s", a2];
  v3 = [v2 hasSuffix:@".app/Info.plist"];

  return v3 ^ 1;
}

void sub_1001B5374(uint64_t a1, uint64_t a2)
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  BOMCopierUserData();
  v9 = 138412546;
  v10 = objc_opt_class();
  v11 = 2080;
  v12 = a2;
  v7 = v10;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v6, 0, "%@: Fatal error: %s", &v9, 22);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }
}

void sub_1001B5508(uint64_t a1, uint64_t a2, int a3)
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = v6 | 2;
  }

  else
  {
    LODWORD(v7) = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    BOMCopierUserData();
    v12 = 138412802;
    v13 = objc_opt_class();
    v14 = 1024;
    v15 = a3;
    v16 = 2080;
    v17 = a2;
    v9 = v13;
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 0, "%@: Fatal file error: %d: %s", &v12, 28);

    if (v10)
    {
      v11 = [NSString stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog();
    }
  }

  else
  {
  }
}

uint64_t sub_1001B56B4(uint64_t a1, uint64_t a2)
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  BOMCopierUserData();
  v10 = 138412546;
  v11 = objc_opt_class();
  v12 = 2080;
  v13 = a2;
  v7 = v11;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v6, 0, "%@: File conflict error: %s", &v10, 22);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  return 0;
}

uint64_t sub_1001B584C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = v6 | 2;
  }

  else
  {
    LODWORD(v7) = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    BOMCopierUserData();
    v13 = 138412802;
    v14 = objc_opt_class();
    v15 = 1024;
    v16 = a3;
    v17 = 2080;
    v18 = a2;
    v9 = v14;
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 0, "%@: File error: %d: %s", &v13, 28);

    if (v10)
    {
      v11 = [NSString stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog();
    }
  }

  else
  {
  }

  return 2;
}

void sub_1001B6660(id a1)
{
  v3 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Downloads", @"scratch", 0}];
  v1 = [NSString pathWithComponents:v3];
  v2 = qword_100384040;
  qword_100384040 = v1;
}

void sub_1001B7A58(id a1)
{
  v1 = qword_100384050;
  qword_100384050 = &off_10034CC98;
}

uint64_t sub_1001B7CD4(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_100384060;
  qword_100384060 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1001B7E00(uint64_t a1)
{
  if (!*(*(a1 + 32) + 56))
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v5 = objc_alloc_init(SpringBoardPendingAlert);
  [(SpringBoardPendingAlert *)v5 setCompletionBlock:*(a1 + 56)];
  [(SpringBoardPendingAlert *)v5 setOptions:*(a1 + 40)];
  v6 = [*(a1 + 48) objectForKey:SBSUIRemoteAlertOptionViewControllerClass];
  [(SpringBoardPendingAlert *)v5 setViewControllerName:v6];

  objc_initWeak(&location, *(a1 + 32));
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 16));
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001B8054;
  handler[3] = &unk_1003296D0;
  objc_copyWeak(&v17, &location);
  v9 = v5;
  v15 = v9;
  v16 = *(a1 + 56);
  dispatch_source_set_event_handler(v7, handler);
  [(SpringBoardPendingAlert *)v9 setTimeoutTimer:v7];
  [*(*(a1 + 32) + 56) addObject:v9];
  dispatch_resume(v7);
  v10 = *(a1 + 32);
  v11 = *(v10 + 88);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B814C;
  v12[3] = &unk_100327238;
  v12[4] = v10;
  v13 = *(a1 + 48);
  dispatch_async(v11, v12);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void sub_1001B8038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001B8054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[7] indexOfObjectIdenticalTo:*(a1 + 32)];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      [*(a1 + 32) setTimeoutTimer:0];
      [v3[7] removeObjectAtIndex:v5];
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = v3[4];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001B8138;
        block[3] = &unk_100327198;
        v9 = v6;
        dispatch_async(v7, block);
      }
    }
  }
}

uint64_t sub_1001B814C(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  v11 = 138412546;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v8 = v6;
  v9 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Activating alert: %@", &v11, 22);

  if (v9)
  {
    v5 = [NSString stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog();
LABEL_12:
  }

  return SBSUIActivateRemoteAlert();
}

void sub_1001B83B8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v2 unsignedIntValue];
  }

  else
  {
    v4 = *(a1 + 32);
    if (!*(v4 + 96))
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = *(a1 + 32);
      v7 = *(v6 + 96);
      *(v6 + 96) = v5;

      v4 = *(a1 + 32);
    }

    v8 = *(v4 + 88);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001B84B4;
    v9[3] = &unk_100327238;
    v9[4] = v4;
    v10 = *(a1 + 40);
    dispatch_async(v8, v9);
  }
}

void sub_1001B84B4(uint64_t a1)
{
  v3 = [*(a1 + 32) _applicationStateMonitor];
  v2 = [v3 applicationStateForApplication:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _setApplicationState:v2 forClientID:*(a1 + 40)];
  }
}

void sub_1001B85B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (!v2)
  {
    if (!v1[12])
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = *(a1 + 32);
      v6 = *(v5 + 96);
      *(v5 + 96) = v4;

      v1 = *(a1 + 32);
    }

    v7 = v1[11];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B8688;
    v8[3] = &unk_1003271C0;
    v8[4] = v1;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);

    v1 = *(a1 + 32);
    v2 = v1[5];
  }

  v1[5] = v2 + 1;
}

void sub_1001B8688(uint64_t a1)
{
  v2 = [*(a1 + 32) _applicationStateMonitor];
  [v2 updateInterestedBundleIDs:0 states:BKSApplicationStateAll];
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B8804;
  v11[3] = &unk_10032B238;
  v5 = v2;
  v12 = v5;
  v6 = v3;
  v13 = v6;
  [v4 enumerateBundlesOfType:1 block:v11];

  [*(a1 + 32) _setApplicationStatesWithDictionary:v6];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B8890;
    block[3] = &unk_100327198;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

void sub_1001B8804(uint64_t a1, void *a2)
{
  v5 = [a2 bundleIdentifier];
  v3 = [*(a1 + 32) applicationStateForApplication:?];
  if (v3)
  {
    v4 = [[NSNumber alloc] initWithInteger:v3];
    [*(a1 + 40) setObject:v4 forKey:v5];
  }
}

void sub_1001B8938(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[12])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(a1 + 32);
  }

  v6 = v2[5] > 0;
  v7 = v2[11];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B8A10;
  block[3] = &unk_10032B260;
  block[4] = v2;
  v9 = *(a1 + 40);
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_1001B8A10(uint64_t a1)
{
  if (!*(*(a1 + 32) + 48))
  {
    v2 = objc_alloc_init(NSCountedSet);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = v2;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  LOBYTE(v8) = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v13 + 1) + 8 * i);
      [*(*(a1 + 32) + 48) addObject:{v11, v13}];
      v8 = v8 || [*(*(a1 + 32) + 48) countForObject:v11] == 1;
    }

    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);

  if (v8 && (*(a1 + 48) & 1) == 0)
  {
    v5 = [*(a1 + 32) _applicationStateMonitor];
    v12 = [*(*(a1 + 32) + 48) allObjects];
    [v5 updateInterestedBundleIDs:v12 states:BKSApplicationStateAll];

LABEL_16:
  }
}

void sub_1001B8CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B8CE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B8CF8(uint64_t a1)
{
  v5 = [*(a1 + 32) _applicationStateMonitor];
  v2 = [v5 bundleInfoValueForKey:*(a1 + 40) PID:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001B8DDC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4 >= 1)
  {
    block[7] = v1;
    block[8] = v2;
    if (v4 == 1)
    {
      [*(v3 + 96) removeAllObjects];
      v6 = *(a1 + 32);
      v7 = *(v6 + 88);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B8E8C;
      block[3] = &unk_100327110;
      block[4] = v6;
      dispatch_async(v7, block);
      v3 = *(a1 + 32);
      v4 = *(v3 + 40);
    }

    *(v3 + 40) = v4 - 1;
  }
}

void sub_1001B8E8C(uint64_t a1)
{
  v7 = [*(a1 + 32) _applicationStateMonitor];
  v2 = [*(*(a1 + 32) + 48) count];
  v3 = BKSApplicationStateAll;
  v4 = *(*(a1 + 32) + 48);
  if (v4)
  {
    v5 = [v4 allObjects];
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  [v7 updateInterestedBundleIDs:v5 states:v6];
}

void sub_1001B8FCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 <= 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(a1 + 32) + 96) removeObjectForKey:*(*(&v16 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9158;
  block[3] = &unk_10032B260;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = v10;
  v14 = v11;
  v15 = v3 > 0;
  dispatch_async(v9, block);
}

void sub_1001B9158(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v3)
  {
LABEL_14:

    return;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v13;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v12 + 1) + 8 * i);
      v9 = [*(*(a1 + 40) + 48) countForObject:{v8, v12}];
      [*(*(a1 + 40) + 48) removeObject:v8];
      v5 |= v9 == 1;
    }

    v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v4);

  if ((v5 & 1) != 0 && (*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 40) _applicationStateMonitor];
    if ([*(*(a1 + 40) + 48) count])
    {
      v10 = BKSApplicationStateAll;
    }

    else
    {
      v10 = 0;
    }

    v11 = [*(*(a1 + 40) + 48) allObjects];
    [v2 updateInterestedBundleIDs:v11 states:v10];

    goto LABEL_14;
  }
}

id sub_1001B93E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001B945C;
  v3[3] = &unk_10032B2B0;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1001B945C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if (([a3 unsignedIntValue] & 0x28) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1001B96DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001B96F4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1001B9804(uint64_t a1)
{
  v2 = [*(a1 + 32) _applicationStateMonitor];
  *(*(*(a1 + 40) + 8) + 24) = [v2 mostElevatedApplicationStateForPID:*(a1 + 48)];
}

void sub_1001B9B84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_1001B9EF0(id *a1)
{
  v2 = [a1[4] appIdentifier];
  if ([a1[4] shouldLaunchApp])
  {
    v3 = [NSMutableDictionary alloc];
    v4 = [v3 initWithObjectsAndKeys:{&__kCFBooleanTrue, FBSOpenApplicationOptionKeyActivateSuspended, 0}];
    v5 = [a1[4] launchOptions];
    if (v5)
    {
      [v4 setObject:v5 forKey:FBSOpenApplicationOptionKeyPayloadOptions];
    }

    v6 = a1[5];
    v57 = 0;
    v7 = [v6 launchApplicationWithIdentifier:v2 options:v4 error:&v57];
    v8 = v57;
    v9 = v8;
    if (v7)
    {

      goto LABEL_6;
    }

    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v23) = v22 | 2;
    }

    else
    {
      LODWORD(v23) = v22;
    }

    v24 = [v21 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v58 = 138412802;
      v59 = v25;
      v60 = 2112;
      v61 = v2;
      v62 = 2112;
      v63 = *&v9;
      v26 = v25;
      LODWORD(v51) = 32;
      v27 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v24, 0, "%@: Could not launch: %@: %@", &v58, v51);

      if (!v27)
      {
LABEL_35:

        goto LABEL_36;
      }

      v24 = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      v50 = v24;
      SSFileLog();
    }

    goto LABEL_35;
  }

LABEL_6:
  v56 = 0;
  if ([a1[5] _getProcessID:&v56 forApplicationIdentifier:v2])
  {
    v10 = [a1[4] processAssertionIdentifier];
    [a1[4] processAssertionInterval];
    v12 = v11;
    v13 = [a1[4] processAssertionReason];
    v14 = v13;
    if (!v10 || !v13 || v12 <= 2.22044605e-16)
    {

      goto LABEL_57;
    }

    if ([v13 isEqualToString:ProcessAssertionReasonBackgroundDownload])
    {
      v15 = 10;
    }

    else if ([v14 isEqualToString:ProcessAssertionReasonTaskCompletion])
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    v29 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      LODWORD(v30) = v29 | 2;
    }

    else
    {
      LODWORD(v30) = v29;
    }

    v31 = [v28 OSLogObject];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = objc_opt_class();
      v58 = 138413058;
      v59 = v32;
      v60 = 2112;
      v61 = v10;
      v62 = 2048;
      v63 = v12;
      v64 = 2112;
      v65 = v14;
      v33 = v32;
      LODWORD(v51) = 42;
      v34 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, v31, 1, "%@: Taking process assertion: %@ for: %.2f seconds with reason: %@", &v58, v51);

      if (!v34)
      {
        goto LABEL_55;
      }

      v31 = [NSString stringWithCString:v34 encoding:4];
      free(v34);
      v50 = v31;
      SSFileLog();
    }

LABEL_55:
    v35 = [BKSProcessAssertion alloc];
    v36 = [v35 initWithPID:v56 flags:1 reason:v15 name:v10];
    if ([v36 valid])
    {
      v37 = dispatch_time(0, (v12 * 1000000000.0));
      v39 = a1[5];
      v38 = a1[6];
      v40 = *(v39 + 2);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001BA68C;
      block[3] = &unk_10032B328;
      block[4] = v39;
      v53 = v10;
      v54 = v38;
      v55 = v36;
      v41 = v36;
      v42 = v10;
      dispatch_after(v37, v40, block);

      goto LABEL_57;
    }

    v43 = +[SSLogConfig sharedDaemonConfig];
    if (!v43)
    {
      v43 = +[SSLogConfig sharedConfig];
    }

    v44 = [v43 shouldLog];
    if ([v43 shouldLogToDisk])
    {
      LODWORD(v45) = v44 | 2;
    }

    else
    {
      LODWORD(v45) = v44;
    }

    v46 = [v43 OSLogObject];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v45;
    }

    else
    {
      v45 &= 2u;
    }

    if (v45)
    {
      v47 = objc_opt_class();
      v58 = 138412546;
      v59 = v47;
      v60 = 2112;
      v61 = v10;
      v48 = v47;
      LODWORD(v51) = 22;
      v49 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, v46, 0, "%@: Could not take process assertion: %@", &v58, v51);

      if (!v49)
      {
LABEL_70:

        goto LABEL_38;
      }

      v46 = [NSString stringWithCString:v49 encoding:4];
      free(v49);
      v50 = v46;
      SSFileLog();
    }

    goto LABEL_70;
  }

  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v16 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v17) = v16 | 2;
  }

  else
  {
    LODWORD(v17) = v16;
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (!v17)
  {
    goto LABEL_36;
  }

  v18 = objc_opt_class();
  v58 = 138412546;
  v59 = v18;
  v60 = 2112;
  v61 = v2;
  v19 = v18;
  LODWORD(v51) = 22;
  v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v5, 0, "%@: No pid for display ID: %@", &v58, v51);

  if (v20)
  {
    v5 = [NSString stringWithCString:v20 encoding:4];
    free(v20);
    v50 = v5;
    SSFileLog();
LABEL_36:
  }

LABEL_38:
  [a1[6] releaseKeepAliveAssertion:{@"AppWakeup", v50}];
LABEL_57:
}

id sub_1001BA68C(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  v11 = 138412546;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v8 = v6;
  v9 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Releasing power assertion: %@", &v11, 22);

  if (v9)
  {
    v5 = [NSString stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog();
LABEL_12:
  }

  [*(a1 + 48) releaseKeepAliveAssertion:@"AppWakeup"];
  return [*(a1 + 56) invalidate];
}

void sub_1001BA8F8(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  objc_opt_class();
  v3 = SSXPCDictionaryCopyObjectWithClass();
  if (v3)
  {
    v4 = [*(*(a1 + 40) + 56) count];
    if (v4 >= 1)
    {
      v5 = v4;
      v6 = 0;
      while (1)
      {
        v7 = [*(*(a1 + 40) + 56) objectAtIndex:v6];
        v8 = [v7 viewControllerName];
        v9 = [v8 isEqualToString:v3];

        if (v9)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_10;
        }
      }

      v10 = [[SpringBoardAlertProxy alloc] initWithMessage:*(a1 + 32)];
      v11 = [v7 options];
      SSXPCDictionarySetObject();

      v12 = [(SpringBoardAlertProxy *)v10 XPCEndpoint];
      xpc_dictionary_set_value(reply, "2", v12);

      v13 = [v7 completionBlock];
      v14 = v13;
      if (v13)
      {
        v15 = *(*(a1 + 40) + 32);
        v16 = _NSConcreteStackBlock;
        v17 = 3221225472;
        v18 = sub_1001BAB10;
        v19 = &unk_100328EA8;
        v21 = v13;
        v20 = v10;
        dispatch_async(v15, &v16);
        [v7 setCompletionBlock:{0, v16, v17, v18, v19}];
      }

      [v7 cancelTimeoutTimer];
      [*(*(a1 + 40) + 56) removeObjectAtIndex:v6];
    }
  }

LABEL_10:
  xpc_connection_send_message(*(a1 + 48), reply);
}

void sub_1001BB35C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001BB460;
    v6[3] = &unk_10032B378;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    [a2 sendMessage:v4 withReply:v6];
  }

  else
  {
    v5 = SSError();
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1001BB460(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_1001BB514(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == *(a1 + 40))
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      LODWORD(v4) = v3 | 2;
    }

    else
    {
      LODWORD(v4) = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v4 = v4;
    }

    else
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v6 = objc_opt_class();
      v7 = *(*(a1 + 32) + 64);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      v8 = v6;
      v9 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 2, "%@: Plugin connection disappeared: %@", &v12, 22);

      if (!v9)
      {
LABEL_14:

        [*(*(a1 + 32) + 64) setDisconnectBlock:0];
        v10 = *(a1 + 32);
        v11 = *(v10 + 64);
        *(v10 + 64) = 0;

        return;
      }

      v5 = [NSString stringWithCString:v9 encoding:4];
      free(v9);
      SSFileLog();
    }

    goto LABEL_14;
  }
}

void sub_1001BB7BC(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1001BBA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BBA60(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 objectForKey:*(a1 + 32)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1001BBC0C(uint64_t a1)
{
  v2 = xpc_dictionary_get_value(*(a1 + 32), "1");
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_endpoint)
  {
    v4 = xpc_connection_create_from_endpoint(v3);
    if (!v4)
    {
LABEL_16:

      goto LABEL_17;
    }

    [*(*(a1 + 40) + 64) setDisconnectBlock:0];
    v5 = [[SSXPCConnection alloc] initWithXPCConnection:v4];
    objc_storeStrong((*(a1 + 40) + 64), v5);
    objc_initWeak(&location, *(a1 + 40));
    v6 = *(*(a1 + 40) + 64);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001BBF3C;
    v18[3] = &unk_100328ED0;
    objc_copyWeak(&v20, &location);
    v7 = v5;
    v19 = v7;
    [v6 setDisconnectBlock:v18];
    v8 = SSXPCCreateMessageDictionary();
    [*(*(a1 + 40) + 64) sendMessage:v8];
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v10) = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk];
    v12 = [v9 OSLogObject];
    v13 = v12;
    if (v11)
    {
      LODWORD(v10) = v10 | 2;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v14 = objc_opt_class();
      v15 = *(*(a1 + 40) + 64);
      v22 = 138412546;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v16 = v14;
      v17 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v13, 1, "%@: Registered plugin connection: %@", &v22, 22);

      if (!v17)
      {
LABEL_15:

        [*(a1 + 40) _fireDeferredPluginBlocksWithConnection:*(*(a1 + 40) + 64)];
        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);

        goto LABEL_16;
      }

      v13 = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_17:
}