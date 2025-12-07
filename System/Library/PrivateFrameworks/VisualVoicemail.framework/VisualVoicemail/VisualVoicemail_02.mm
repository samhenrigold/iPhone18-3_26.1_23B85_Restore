void sub_10009069C(uint64_t a1)
{
  [*(a1 + 32) getRecordDescriptor];
  *(*(*(a1 + 72) + 8) + 24) = CSDBRecordCreate();
  v2 = *(*(*(a1 + 72) + 8) + 24);
  if (v2)
  {
    [*(a1 + 32) setRecordProperty_sync:v2 property:0 value:sub_1000878B8(*(a1 + 80))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:1 value:sub_100088C40(*(a1 + 84))];
    v3 = *(*(*(a1 + 72) + 8) + 24);
    v4 = *(a1 + 32);
    nullsub_8();
    [v4 setRecordProperty_sync:v3 property:2 value:v5];
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 72) + 8) + 24);
    nullsub_8();
    [v6 setRecordProperty_sync:v7 property:3 value:v8];
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 72) + 8) + 24);
    nullsub_8();
    [v9 setRecordProperty_sync:v10 property:4 value:v11];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:5 value:sub_100088C40(*(a1 + 88))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:6 value:sub_100088C40(*(a1 + 92))];
    [*(a1 + 32) setRecordProperty_sync:*(*(*(a1 + 72) + 8) + 24) property:8 value:sub_100088C40(*(a1 + 96))];
    v12 = *(a1 + 32);
    v13 = *(*(*(a1 + 72) + 8) + 24);
    nullsub_8();
    [v12 setRecordProperty_sync:v13 property:9 value:v14];
    [*(a1 + 32) getStore];
    CSDBRecordStoreAddRecord();
    [*(a1 + 32) getStore];
    CSDBRecordSaveStore();
    v15 = VMStoreRecordCopyDescription(*(*(*(a1 + 72) + 8) + 24));
    v16 = vm_vmd_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Add record %@ for account %@", &v18, 0x16u);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }
}

uint64_t sub_1000909D0(uint64_t a1)
{
  v2 = VMStoreRecordCopyDescription(*(a1 + 40));
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412546;
    v12 = v2;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remove record %@ for account %@", buf, 0x16u);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  [*(a1 + 32) getRecordProperty_sync:*(a1 + 40) property:8];
  nullsub_8();
  if ((v5 & 2) != 0)
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d%s", [*(a1 + 32) getRecordIdentifier_sync:*(a1 + 40)], VMStoreGetDataFileExtension());
    v7 = [*(a1 + 32) accountDir];
    v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:0];

    v9 = [v8 path];
    unlink([v9 UTF8String]);
  }

  [*(a1 + 32) getStore];
  return CSDBRecordStoreRemoveRecord();
}

BOOL sub_100090CE8(id a1, NSString *a2, NSDictionary *a3)
{
  v3 = [(NSString *)a2 pathExtension];
  v4 = [v3 isEqualToString:@"amr"];

  return v4;
}

void sub_100090DB4(uint64_t a1)
{
  v2 = vm_vmd_log();
  v3 = "";
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [(__CFString *)v4 dbfile];
    v6 = [v5 path];
    *buf = 138412546;
    v46 = v4;
    v47 = 2080;
    v48 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Remove all records for account %@, path %s", buf, 0x16u);
  }

  v7 = sub_10008ADE0([*(a1 + 32) getStore], objc_msgSend(*(a1 + 32), "getRecordDescriptor"));
  if (v7)
  {
    v8 = v7;
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
        v13 = VMStoreRecordCopyDescription(ValueAtIndex);
        v14 = vm_vmd_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 138412546;
          v46 = v13;
          v47 = 2112;
          v48 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remove record %@ for account %@", buf, 0x16u);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        [*(a1 + 32) getStore];
        CSDBRecordStoreRemoveRecord();
      }
    }

    CSDBRecordSaveStore();
    CFRelease(v8);
    v3 = "@VMBiomeClient" + 16;
  }

  else
  {
    v16 = vm_vmd_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v46 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did not find any records for account %@", buf, 0xCu);
    }
  }

  v18 = a1;
  [*(a1 + 32) getDataFiles];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = v43 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v20)
  {
    v22 = v20;
    v23 = *v41;
    *&v21 = *(v3 + 507);
    v38 = v21;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v40 + 1) + 8 * j);
        v26 = [*(v18 + 32) accountDir];
        v27 = [v26 URLByAppendingPathComponent:v25 isDirectory:0];

        v28 = +[NSFileManager defaultManager];
        v29 = [v27 path];
        v39 = 0;
        v30 = [v28 removeItemAtPath:v29 error:&v39];
        v31 = v39;

        v32 = vm_vmd_log();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v30)
        {
          if (!v33)
          {
            goto LABEL_26;
          }

          v34 = [v27 path];
          *buf = 138412290;
          v46 = v34;
          v35 = v32;
          v36 = "Remove audio data %@";
          v37 = 12;
        }

        else
        {
          if (!v33)
          {
            goto LABEL_26;
          }

          v34 = [v27 path];
          *buf = v38;
          v46 = v34;
          v47 = 2112;
          v48 = v31;
          v35 = v32;
          v36 = "Unable to remove audio data %@ with error %@";
          v37 = 22;
        }

        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);

LABEL_26:
      }

      v22 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v22);
  }
}

void sub_1000912C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000912DC(uint64_t a1)
{
  [*(a1 + 32) getStore];
  [*(a1 + 32) getRecordDescriptor];
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100091408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *sub_100091420(uint64_t a1)
{
  result = sub_10008B60C([*(a1 + 32) getStore], objc_msgSend(*(a1 + 32), "getRecordDescriptor"), *(a1 + 48), *(a1 + 52), *(a1 + 56), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100091840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100091858(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = sub_10008C624([*(a1 + 32) getStore], objc_msgSend(*(a1 + 32), "getRecordDescriptor"), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), 0);
  v2 = [*(a1 + 32) copyOfAllRecordsWithFlagsInRemoteUIDRangeByStatement:*(a1 + 48) flagsToNotHave:*(a1 + 52) lowUid:*(a1 + 56) highUid:*(a1 + 60)];
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = [*(a1 + 32) label];
    Count = CFArrayGetCount(*(*(*(a1 + 40) + 8) + 24));
    v8 = [*(a1 + 32) dbfile];
    v9 = [v8 path];
    v10[0] = 67110402;
    v10[1] = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 1024;
    v16 = Count;
    v17 = 1024;
    v18 = v2;
    v19 = 2080;
    v20 = [v9 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "==> copyOfAllRecordsWithFlagsInRemoteUIDRange <%u, %u>: label=%@ count=%d (by statement %d) dbfile %s", v10, 0x2Eu);
  }
}

void sub_100091AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100091AD8(uint64_t a1)
{
  result = sub_10008AE98([*(a1 + 32) getStore], objc_msgSend(*(a1 + 32), "getRecordDescriptor"), *(a1 + 48), *(a1 + 52), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100091C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100091C18(uint64_t a1)
{
  result = sub_10008C7E8([*(a1 + 32) getStore], *(a1 + 48), *(a1 + 52));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100091D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100091D44(uint64_t a1)
{
  result = sub_10008B0C4([*(a1 + 32) getStore], *(a1 + 48), *(a1 + 49), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100091E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_100091E74(uint64_t a1)
{
  result = sub_10008B9A4([*(a1 + 32) getStore], objc_msgSend(*(a1 + 32), "getRecordDescriptor"), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100091F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100091FB0(uint64_t a1)
{
  result = sub_10008B934([*(a1 + 32) getStore], objc_msgSend(*(a1 + 32), "getRecordDescriptor"), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000920C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_1000920E0(uint64_t a1)
{
  result = sub_10008BD28([*(a1 + 32) getStore], objc_msgSend(*(a1 + 32), "getRecordDescriptor"), *(a1 + 48), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000921FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100092214(uint64_t a1)
{
  result = sub_10008BCB0([*(a1 + 32) getStore], objc_msgSend(*(a1 + 32), "getRecordDescriptor"), *(a1 + 48), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100092330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100092348(uint64_t a1)
{
  result = sub_100089170([*(a1 + 32) getStore], *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100092420(uint64_t a1)
{
  v2 = [*(a1 + 32) getStore];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  sub_10008928C(v2, v3, v4);
}

void sub_100092520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100092538(uint64_t a1)
{
  result = sub_10008D74C([*(a1 + 32) getStore]);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100092608(uint64_t a1)
{
  v2 = [*(a1 + 32) getStore];
  v3 = *(a1 + 40);

  sub_10008D6D8(v2, v3);
}

void sub_10009278C(void *a1, uint64_t a2)
{
  [a1 getRecordProperty:a2 property:0];

  nullsub_8();
}

void sub_1000927BC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  [v5 setRecordProperty:a2 property:0 value:sub_1000878B8(a3)];
}

void sub_100092820(void *a1, uint64_t a2)
{
  [a1 getRecordProperty:a2 property:1];

  nullsub_8();
}

void sub_100092850(void *a1, uint64_t a2)
{
  [a1 getRecordProperty:a2 property:5];

  nullsub_8();
}

void sub_100092880(void *a1, uint64_t a2)
{
  [a1 getRecordProperty:a2 property:6];

  nullsub_8();
}

void sub_1000928B0(void *a1, uint64_t a2)
{
  [a1 getRecordProperty:a2 property:7];

  nullsub_8();
}

void sub_1000928E0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  [v5 setRecordProperty:a2 property:7 value:sub_100088C40(a3)];
}

void sub_100092944(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  [v5 setRecordProperty:a2 property:5 value:sub_100088C40(a3)];
}

void sub_1000929A8(void *a1, uint64_t a2)
{
  v4 = a1;
  nullsub_8();
  [v4 setRecordProperty:a2 property:9 value:v3];
}

const void *sub_100092A0C(void *a1, uint64_t a2)
{
  v2 = sub_100087978([a1 getRecordProperty:a2 property:3]);
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

const void *sub_100092A4C(void *a1, uint64_t a2)
{
  v2 = sub_100087978([a1 getRecordProperty:a2 property:4]);
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

const void *sub_100092A8C(void *a1, uint64_t a2)
{
  v2 = sub_100087978([a1 getRecordProperty:a2 property:2]);
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

const void *sub_100092ACC(void *a1, uint64_t a2)
{
  v2 = sub_100087978([a1 getRecordProperty:a2 property:9]);
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

void sub_100092B0C(void *a1, uint64_t a2)
{
  [a1 getRecordProperty:a2 property:8];

  nullsub_8();
}

void sub_100092B54(void *a1, const void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = VMStoreRecordCopyDescription(a2);
  v7 = VMStoreRecordCopyFlagsDescription(a3);
  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "VMAccountStoreRecordSetFlags <record=%@, flags=%@>", &v17, 0x16u);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  [v5 getRecordProperty:a2 property:8];
  nullsub_8();
  if (v9 != a3)
  {
    v10 = v9;
    [v5 setRecordProperty:a2 property:8 value:sub_1000878B8(a3)];
    Mutable = CFDictionaryCreateMutable(0, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v12 = [v5 getStoreLabelID];
    CFDictionarySetValue(Mutable, @"VMStoreRecordChangedFlagsLabel", [v12 UUIDString]);

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"VMStoreRecordFlagsWIllChange", a2, Mutable, 1u);
    v14 = v10 ^ a3;
    CFDictionarySetValue(Mutable, @"VMStoreRecordOldFlags", [NSNumber numberWithUnsignedInt:v10]);
    CFDictionarySetValue(Mutable, @"VMStoreRecordNewFlags", [NSNumber numberWithUnsignedInt:a3]);
    CFDictionarySetValue(Mutable, @"VMStoreRecordChangedFlags", [NSNumber numberWithUnsignedInt:v14]);
    v15 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v15, @"VMStoreRecordFlagsDidChange", a2, Mutable, 1u);
    if (v14 != 2)
    {
      v16 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v16, @"VMStoreRecordFlagsChanged", a2, Mutable, 1u);
    }

    CFRelease(Mutable);
  }
}

CFTypeRef sub_100092DDC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u%s", [v3 getRecordIdentifier:a2], VMStoreGetDataFileExtension());
  v5 = [v3 accountDir];

  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  v7 = CFRetain([v6 path]);
  return v7;
}

CFTypeRef sub_100092E94(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u%s", [v3 getRecordIdentifier:a2], VMStoreGetTranscriptionFileExtension());
  v5 = [v3 accountDir];

  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  v7 = CFRetain([v6 path]);
  return v7;
}

CFTypeRef sub_100092F4C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u%s", [v3 getRecordIdentifier:a2], VMStoreGetSummarizationFileExtension());
  v5 = [v3 accountDir];

  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:0];

  v7 = CFRetain([v6 path]);
  return v7;
}

uint64_t sub_100093040(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  [v6 getRecordProperty:a2 property:0];
  nullsub_8();
  v21 = v7;
  [v6 getRecordProperty:a2 property:1];
  nullsub_8();
  v9 = v8;
  v10 = sub_100092A8C(v6, a2);
  v11 = sub_100092A0C(v6, a2);
  v12 = sub_100092ACC(v6, a2);
  v13 = sub_100092A4C(v6, a2);
  [v6 getRecordProperty:a2 property:5];
  nullsub_8();
  v15 = v14;
  [v6 getRecordProperty:a2 property:6];
  nullsub_8();
  v17 = v16;
  [v6 getRecordProperty:a2 property:8];

  nullsub_8();
  v19 = VMStoreCreateAndAddRecord(v21, v9, v10, v11, v13, v15, v17, v18, v12, v5);

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v19;
}

void sub_100093258(void *a1)
{
  v1 = sub_1000855D4(a1);
  v2 = vm_vmd_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [v1 path];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "destroying account folder %@", buf, 0xCu);
  }

  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtURL:v1 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v1 path];
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "failed to remove account folder %@ - error: %@", buf, 0x16u);
    }
  }
}

id sub_100093644(uint64_t a1, void *a2)
{
  v3 = [a2 phoneNumber];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100093798(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t sub_1000937FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100093924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009393C(uint64_t a1)
{
  v2 = [*(a1 + 32) cached_iso];
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 32) fetchIsoCountryCode:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v13 = [*(a1 + 32) cached_iso];
      v10 = *(a1 + 40);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v12 = [v10 uuid];
      [v13 setObject:v11 forKey:v12];
    }
  }
}

void sub_100093B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100093B88(uint64_t a1)
{
  v2 = [*(a1 + 32) cached_mcc];

  if (!v2)
  {
    v3 = [*(a1 + 32) fetchCountryCode:*(a1 + 40)];
    [*(a1 + 32) setCached_mcc:v3];
  }

  v4 = [*(a1 + 32) cached_mcc];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100093D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100093D38(uint64_t a1)
{
  v2 = [*(a1 + 32) cached_mnc];

  if (!v2)
  {
    v3 = [*(a1 + 32) fetchNetworkCode:*(a1 + 40)];
    [*(a1 + 32) setCached_mnc:v3];
  }

  v4 = [*(a1 + 32) cached_mnc];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100093EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100093EBC(uint64_t a1)
{
  v5 = [*(a1 + 32) cached_iso];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100094034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009404C(uint64_t a1)
{
  v2 = [*(a1 + 32) cached_vmnumber];
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v4 = [*(a1 + 32) fetchVoicemailPhoneNumber:*(a1 + 40)];
    v5 = [*(a1 + 32) cached_vmnumber];
    v6 = [*(a1 + 40) uuid];
    [v5 setObject:v4 forKey:v6];
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void sub_100094230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100094248(uint64_t a1)
{
  v2 = [*(a1 + 32) cached_cb];
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v4 = [[VMCarrierBundleClient alloc] initWithTelephonyClient:*(a1 + 32) context:*(a1 + 40)];
    v5 = [*(a1 + 32) cached_cb];
    v6 = [*(a1 + 40) uuid];
    [v5 setObject:v4 forKey:v6];
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

void sub_1000943E4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = &_dispatch_main_q;
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

void sub_1000944DC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_100094FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100094FDC(uint64_t a1)
{
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 32);
  v38 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v38)
  {
    v37 = *v49;
    *&v1 = 138412546;
    v35 = v1;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v49 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v4 = [*(a1 + 40) cached_subscriptions];
        v5 = [v4 countByEnumeratingWithState:&v44 objects:v57 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v45;
          while (2)
          {
            for (j = 0; j != v6; j = j + 1)
            {
              if (*v45 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v44 + 1) + 8 * j);
              v10 = [v9 uuid];
              v11 = [v3 uuid];
              v12 = [v10 isEqual:v11];

              if (v12)
              {
                v13 = [v9 isSimDataOnly];
                if (v13 != [v3 isSimDataOnly])
                {
                  v14 = vm_vmd_log();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = v35;
                    v54 = v9;
                    v55 = 2112;
                    v56 = v3;
                    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Subscription data-only property has changed from %@ to %@.", buf, 0x16u);
                  }

                  *(*(*(a1 + 48) + 8) + 24) = 1;
                  goto LABEL_19;
                }
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v44 objects:v57 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }

      v38 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v38);
  }

  [*(a1 + 40) setCached_subscriptions:*(a1 + 32)];
  v15 = objc_opt_new();
  v16 = [*(a1 + 40) cached_iso];
  v17 = [v16 keyEnumerator];

  v18 = [v17 nextObject];
  if (v18)
  {
    v19 = v18;
    do
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v20 = *(a1 + 32);
      v21 = [v20 countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v41;
        while (2)
        {
          for (k = 0; k != v22; k = k + 1)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v40 + 1) + 8 * k);
            v26 = [v25 uuid];
            v27 = [v26 isEqual:v19];

            if (v27)
            {
              v28 = [v25 labelID];
              if (v28)
              {
                v29 = v28;
                v30 = [v25 labelID];
                v31 = [v30 length];

                if (v31)
                {
                  v32 = [*(a1 + 40) cached_iso];
                  v33 = [v32 objectForKey:v19];
                  [v15 setObject:v33 forKey:v19];
                }
              }

              goto LABEL_35;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

LABEL_35:

      v34 = [v17 nextObject];

      v19 = v34;
    }

    while (v34);
  }

  [*(a1 + 40) setCached_iso:v15];
}

void sub_100095500(uint64_t a1)
{
  [*(a1 + 32) setCached_contexts:*(a1 + 40)];
  v2 = objc_opt_new();
  [*(a1 + 32) setCached_vmnumber:v2];

  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  [*(a1 + 32) setCached_cb:v3];
}

void sub_1000956D4(uint64_t a1)
{
  v3 = [*(a1 + 32) cached_iso];
  v2 = [*(a1 + 40) uuid];
  [v3 removeObjectForKey:v2];
}

void sub_10009588C(uint64_t a1)
{
  v2 = [*(a1 + 32) cached_iso];
  v3 = [*(a1 + 40) uuid];
  [v2 removeObjectForKey:v3];

  v5 = [*(a1 + 32) cached_cb];
  v4 = [*(a1 + 40) uuid];
  [v5 removeObjectForKey:v4];
}

void sub_1000959F4(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_100095BC0;
          v10[3] = &unk_1000EFEF0;
          v10[4] = v7;
          v11 = *(a1 + 40);
          v14 = *(a1 + 72);
          v12 = *(a1 + 48);
          v13 = *(a1 + 64);
          dispatch_async(v9, v10);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

void sub_100095E08(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_100095FD8;
          v10[3] = &unk_1000EFF18;
          v10[4] = v7;
          v11 = *(a1 + 40);
          v13 = *(a1 + 56);
          v12 = *(a1 + 48);
          dispatch_async(v9, v10);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_100096110(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000962CC;
          block[3] = &unk_1000EEEE8;
          block[4] = v7;
          v11 = *(a1 + 40);
          v12 = *(a1 + 48);
          dispatch_async(v9, block);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_10009635C(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_1000964F8;
          v11[3] = &unk_1000EEF10;
          v10 = *(a1 + 40);
          v11[4] = v7;
          v11[5] = v10;
          dispatch_async(v9, v11);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_1000965A0(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100096758;
          block[3] = &unk_1000EE7D8;
          block[4] = v7;
          v11 = *(a1 + 40);
          v10 = v11;
          v13 = v11;
          dispatch_async(v9, block);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_10009682C(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_1000969F4;
          v11[3] = &unk_1000EFF40;
          v10 = *(a1 + 56);
          v11[4] = v7;
          v14 = v10;
          v12 = *(a1 + 40);
          v13 = *(a1 + 48);
          dispatch_async(v9, v11);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

__CFString *sub_100096C00(__CFString *result)
{
  if (result)
  {
    return sub_100096C5C(result, 0);
  }

  return result;
}

BOOL sub_100096C10(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v3 = 0;
  v1 = sub_100096C5C(a1, &v3);
  if (v1)
  {
    CFRelease(v1);
  }

  return v3 == 0;
}

CFStringRef sub_100096C5C(void *a1, _BYTE *a2)
{
  result = 0;
  keys[0] = kSecClass;
  keys[1] = kSecAttrService;
  keys[2] = kSecAttrAccount;
  keys[3] = kSecReturnData;
  values[0] = kSecClassGenericPassword;
  values[1] = @"EnhancedVoicemail";
  values[2] = a1;
  values[3] = kCFBooleanTrue;
  v3 = CFDictionaryCreate(0, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = v3;
  if (a2)
  {
    *a2 = 0;
  }

  v5 = SecItemCopyMatching(v3, &result);
  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_CopyKeychainPasswordForAccountNameWithRetry: SecItemCopyMatching returned %d", buf, 8u);
  }

  v7 = result;
  if (v5 || !result)
  {
    if (v5 != -34019)
    {
      v10 = 0;
      if (!result)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v12 = vm_vmd_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_CopyKeychainPasswordForAccountNameWithRetry: errSecUpgradePending", buf, 2u);
    }

    v10 = 0;
    if (a2)
    {
      *a2 = 1;
    }
  }

  else
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(result);
    v10 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 1u);
    v11 = vm_vmd_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_CopyKeychainPasswordForAccountNameWithRetry: found a password", buf, 2u);
    }
  }

  v7 = result;
  if (result)
  {
LABEL_16:
    CFRelease(v7);
  }

LABEL_17:
  CFRelease(v4);
  return v10;
}

void sub_100096EB4(const __CFString *a1, void *a2)
{
  if (a2)
  {
    v4 = sub_100096C5C(a2, 0);
    sub_100096F28(v4, a1, a2);
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

void sub_100096F28(uint64_t a1, const __CFString *a2, void *a3)
{
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, a2, 0x8000100u, 0);
  keys[0] = kSecClass;
  keys[1] = kSecAttrService;
  keys[2] = kSecAttrAccount;
  v11[0] = kSecAttrAccessible;
  v11[1] = kSecValueData;
  values[0] = kSecClassGenericPassword;
  values[1] = @"EnhancedVoicemail";
  values[2] = a3;
  v9[0] = kSecAttrAccessibleAlways;
  v9[1] = ExternalRepresentation;
  if (a1)
  {
    v6 = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = CFDictionaryCreate(0, v11, v9, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    SecItemUpdate(v6, v7);
    CFRelease(v6);
  }

  else
  {
    v7 = CFDictionaryCreate(0, keys, values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    SecItemAdd(v7, 0);
  }

  CFRelease(v7);
  CFRelease(ExternalRepresentation);
}

CFStringRef sub_1000970D0(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_10009711C(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100096C5C(v1, 0);
  CFRelease(v2);
  return v3;
}

CFMutableStringRef sub_10009711C(__CFString *theString)
{
  MutableCopy = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    v3 = CFStringGetLength(@"-Temp");
    MutableCopy = CFStringCreateMutableCopy(0, v3 + Length, MutableCopy);
    CFStringAppend(MutableCopy, @"-Temp");
  }

  return MutableCopy;
}

void sub_100097184(const __CFString *a1, __CFString *theString)
{
  v4 = sub_10009711C(theString);
  v5 = v4;
  if (!a1 || !v4)
  {
    if (!v4)
    {
      return;
    }

    keys[0] = kSecClass;
    keys[1] = kSecAttrAccessible;
    keys[2] = kSecAttrService;
    keys[3] = kSecAttrAccount;
    values[0] = kSecClassGenericPassword;
    values[1] = kSecAttrAccessibleAlways;
    values[2] = @"EnhancedVoicemail";
    values[3] = v4;
    v8 = CFDictionaryCreate(0, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    SecItemDelete(v8);
    v7 = v8;
    goto LABEL_7;
  }

  v6 = sub_1000970D0(theString);
  sub_100096F28(v6, a1, v5);
  if (v6)
  {
    v7 = v6;
LABEL_7:
    CFRelease(v7);
  }

  CFRelease(v5);
}

uint64_t sub_100097FB0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      switch(v13)
      {
        case 4:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v48 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v48 & 0x7F) << v30;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v32;
          }

LABEL_72:
          v44 = 44;
LABEL_81:
          *(a1 + v44) = v20;
          goto LABEL_82;
        case 5:
          v21 = PBReaderReadString();
          v22 = 24;
          break;
        case 6:
          v21 = PBReaderReadString();
          v22 = 32;
          break;
        default:
LABEL_52:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_82;
      }

      v43 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_82:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v47 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v47 & 0x7F) << v23;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_68:
        *(a1 + 8) = v29;
        goto LABEL_82;
      case 2:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          v50 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v50 & 0x7F) << v37;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v39;
        }

LABEL_80:
        v44 = 40;
        break;
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v49 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v49 & 0x7F) << v14;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_76:
        v44 = 16;
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

id MegadomeWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MegadomeWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id MegadomeWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10009952C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000995F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10009B248(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10009B134(v11);
  return v7;
}

unint64_t sub_1000995F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100099704(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100099704(uint64_t a1, unint64_t a2)
{
  v3 = sub_100099750(a1, a2);
  sub_100099880(&off_1000EFF60);
  return v3;
}

char *sub_100099750(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10009996C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10009996C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100099880(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000999E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10009996C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10009B180(&qword_10010D6C0, &qword_1000C9570);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000999E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10009B180(&qword_10010D6C0, &qword_1000C9570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100099AD4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100099DF0(a1, a2, v4);
}

Swift::Int sub_100099B4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10009B180(&qword_10010D6B8, &qword_1000C9568);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_100099DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100099EA8()
{
  v1 = v0;
  sub_10009B180(&qword_10010D6B8, &qword_1000C9568);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10009A010(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10009A030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10009A030(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10009B180(&qword_10010D6C8, &qword_1000C9578);
  v10 = *(type metadata accessor for ExtendedTriple() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ExtendedTriple() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

BOOL sub_10009A208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_10009A300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10009B180(&qword_10010D6B8, &qword_1000C9568);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100099AD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *_s3vmd15MegadomeWrapperC04readB9LanguagesSDySSSdGyF_0()
{
  v0 = &_swiftEmptyArrayStorage;
  v1 = sub_10009A300(&_swiftEmptyArrayStorage);
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  if (!&class metadata base offset for ViewService || !&type metadata accessor for ViewService || !&nominal type descriptor for ViewService || !&type metadata for ViewService)
  {
    v11 = v3;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "IntelligencePlatform not available on binary", v14, 2u);
    }

    (*(v11 + 8))(v5, v2);
    return v1;
  }

  v84 = v2;
  v6 = type metadata accessor for LanguageView();
  v83[1] = v83;
  isUniquelyReferenced_nonNull_native = *(v6 - 8);
  __chkstk_darwin();
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewService();
  v10 = static ViewService.clientService.getter();
  ViewService.languageView.getter();

  v15 = LanguageView.inferredLanguageTriples()();
  v98 = 0;
  v83[0] = v3;
  if (v15 >> 62)
  {
    goto LABEL_67;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v91 = isUniquelyReferenced_nonNull_native;
  v92 = v6;
  v94 = v9;
  if (!v17)
  {

    v27 = &_swiftEmptyArrayStorage;
LABEL_26:
    v90 = v27[2];
    if (v90)
    {
      v93 = v27;
      v15 = type metadata accessor for ExtendedTriple();
      v34 = v93;
      v35 = 0;
      v36 = *(v15 - 8);
      v88 = v93 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v89 = v36;
      v86 = v15;
      v87 = v36 + 16;
      v85 = (v36 + 8);
      v99 = 0;
      v100 = 0xE000000000000000;
      while (1)
      {
        if (v35 >= v34[2])
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v82 = v15;
          v17 = _CocoaArrayWrapper.endIndex.getter();
          v15 = v82;
          goto LABEL_12;
        }

        v37 = v5;
        v96 = v35;
        v97 = v1;
        v95 = v83;
        __chkstk_darwin();
        v39 = v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v40 + 16))(v39);
        v41 = type metadata accessor for EntityPredicate();
        v42 = *(v41 - 8);
        v43 = *(v42 + 64);
        __chkstk_darwin();
        ExtendedTriple.predicate.getter();
        v44 = EntityPredicate.rawValue.getter();
        v46 = v45;
        v47 = *(v42 + 8);
        v47(v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
        if (v44 == 859001680 && v46 == 0xE400000000000000)
        {
          break;
        }

        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v49)
        {

LABEL_38:
          v5 = v37;
          v99 = ExtendedTriple.object.getter();
          v100 = v50;
          goto LABEL_40;
        }

        v5 = v37;
LABEL_40:
        v0 = v83;
        __chkstk_darwin();
        v51 = v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        ExtendedTriple.predicate.getter();
        v52 = EntityPredicate.rawValue.getter();
        v54 = v53;
        v47(v51, v41);
        if (v52 == 0x69666E6F635F6D6ELL && v54 == 0xED000065636E6564)
        {

          v1 = v97;
          v6 = v92;
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v1 = v97;
          v6 = v92;
          if ((v56 & 1) == 0)
          {
            v15 = (*v85)(v39, v86);
            isUniquelyReferenced_nonNull_native = v91;
            v9 = v94;
            goto LABEL_29;
          }
        }

        v57 = ExtendedTriple.object.getter();
        v101[0] = 0;
        v58 = v98;
        v9 = sub_10009A208(v57, v59, v101);
        v98 = v58;

        if (v9)
        {
          v60 = *v101;
        }

        else
        {
          v60 = 0.0;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101[0] = v1;
        v15 = sub_100099AD4(v99, v100);
        v62 = v1[2];
        v63 = (v61 & 1) == 0;
        v64 = __OFADD__(v62, v63);
        v65 = v62 + v63;
        if (v64)
        {
          goto LABEL_65;
        }

        v66 = v61;
        if (v1[3] >= v65)
        {
          v9 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v73 = v15;
            sub_100099EA8();
            v15 = v73;
          }
        }

        else
        {
          sub_100099B4C(v65, isUniquelyReferenced_nonNull_native);
          v15 = sub_100099AD4(v99, v100);
          v9 = v94;
          if ((v66 & 1) != (v67 & 1))
          {
            goto LABEL_69;
          }
        }

        isUniquelyReferenced_nonNull_native = v91;
        v1 = v101[0];
        if (v66)
        {
          *(*(v101[0] + 56) + 8 * v15) = v60;
          v15 = (*v85)(v39, v86);
        }

        else
        {
          *(v101[0] + 8 * (v15 >> 6) + 64) |= 1 << v15;
          v68 = (v1[6] + 16 * v15);
          v69 = v100;
          *v68 = v99;
          v68[1] = v69;
          *(v1[7] + 8 * v15) = v60;
          v70 = *v85;

          v15 = v70(v39, v86);
          v71 = v1[2];
          v64 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v64)
          {
            goto LABEL_66;
          }

          v1[2] = v72;
        }

LABEL_29:
        v35 = v96 + 1;
        v34 = v93;
        if (v90 == (v96 + 1))
        {

          goto LABEL_60;
        }
      }

      goto LABEL_38;
    }

LABEL_60:

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v101[0] = v77;
      *v76 = 136315138;
      v78 = Dictionary.description.getter();
      v80 = isUniquelyReferenced_nonNull_native;
      v81 = sub_10009952C(v78, v79, v101);

      *(v76 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v75, "Megadome Languages: %s", v76, 0xCu);
      sub_10009B134(v77);

      (*(v80 + 8))(v94, v6);
    }

    else
    {

      (*(isUniquelyReferenced_nonNull_native + 8))(v9, v6);
    }

    (*(v83[0] + 8))(v5, v84);
    return v1;
  }

  v18 = v15;
  v101[0] = v0;
  sub_10009A010(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v90 = v5;
    v97 = v1;
    v19 = v101[0];
    v20 = type metadata accessor for ExtendedTriple();
    v0 = v20;
    v100 = v18;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      v22 = *(v20 - 8);
      v99 = *(v22 + 64);
      v96 = v22 + 32;
      do
      {
        __chkstk_darwin();
        v24 = v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10009B0F0(&qword_10010D6A8, &protocol conformance descriptor for ExtendedTriple);
        sub_10009B0F0(&qword_10010D6B0, &protocol conformance descriptor for ExtendedTriple);
        FetchableRecord<>.init(row:)();
        v101[0] = v19;
        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_10009A010((v25 > 1), v26 + 1, 1);
          v19 = v101[0];
        }

        ++v21;
        *(v19 + 16) = v26 + 1;
        (*(v22 + 32))(v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v26, v24, v0);
      }

      while (v17 != v21);
    }

    else
    {
      v28 = *(v20 - 8);
      v99 = *(v28 + 64);
      v96 = sub_10009B0F0(&qword_10010D6A8, &protocol conformance descriptor for ExtendedTriple);
      v95 = sub_10009B0F0(&qword_10010D6B0, &protocol conformance descriptor for ExtendedTriple);
      v93 = (v28 + 32);
      v29 = 32;
      do
      {
        __chkstk_darwin();
        v31 = v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);

        FetchableRecord<>.init(row:)();
        v101[0] = v19;
        v33 = *(v19 + 16);
        v32 = *(v19 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_10009A010((v32 > 1), v33 + 1, 1);
          v19 = v101[0];
        }

        *(v19 + 16) = v33 + 1;
        (*(v28 + 32))(v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v33, v31, v0);
        v29 += 8;
        --v17;
      }

      while (v17);
    }

    v1 = v97;
    v5 = v90;
    isUniquelyReferenced_nonNull_native = v91;
    v6 = v92;
    v9 = v94;
    v27 = v19;
    goto LABEL_26;
  }

  __break(1u);
LABEL_69:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10009B0F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtendedTriple();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009B134(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10009B180(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_BYTE *sub_10009B1C8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10009B248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10009B2A8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMTelephonyRequestController.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10009B324(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMTelephonyRequestController.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10009B3C8()
{
  sub_1000095DC(__stack_chk_guard);
  sub_1000095A8();
  sub_100009594();
  sub_1000095BC(&_mh_execute_header, v0, v1, "#E %s%sError while fetching carrier params %@");
}

void sub_10009B464(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"VMSpeechAnalyzerOperation.m" lineNumber:126 description:@"format description error"];
}

void sub_10009B960(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"/var/mobile/Library/Voicemail";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error resetting VVM, Failed to remove item at path %@: %@", &v2, 0x16u);
}

void sub_10009BC5C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unarchiving summarization metadata dictionary: %@", &v2, 0xCu);
}

void sub_10009BF24(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: Could not write data to file %@. Invalid URL.", &v2, 0xCu);
}

void sub_10009BFE0(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 mambaID];
  v7 = [a1 rumbaID];
  v8 = 136316162;
  v9 = v6;
  v10 = 2080;
  v11 = " ";
  v12 = 2114;
  v13 = v7;
  v14 = 2080;
  v15 = " ";
  v16 = 2112;
  v17 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%sPasscode change attempt failed with error %@", &v8, 0x34u);
}

void sub_10009C104(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMDCarrierGreetingDataSource.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10009C180(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CoreTelephony Message Center returned false; attempt failed for STATE request %@", &v2, 0xCu);
}

void sub_10009C1F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "We are expecting a pending state request here %@", &v2, 0xCu);
}

void sub_10009C298(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "**** given URL does not match to any known mailbox: %@", &v2, 0xCu);
}

void sub_10009C310(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMManager.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10009C38C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMManager.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10009C474()
{
  sub_1000095A8();
  v3 = " ";
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#E %s%sAttempt to obtain an IMAP connection failed with error %@", v2, 0x20u);
}

void sub_10009C514()
{
  sub_1000095A8();
  v2 = " ";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#E %s%smailboxUsage: unable to open IMAP connection", v1, 0x16u);
}

void sub_10009C5E0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "??? %@ failed to find stub for connection (flushLog)", &v3, 0xCu);
}

void sub_10009C704()
{
  sub_1000114D4();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009C774()
{
  sub_1000114D4();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009C7E4()
{
  sub_10003BE7C();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10009C988()
{
  sub_1000114D4();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009C9F8()
{
  sub_10003BE7C();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10009CB24()
{
  sub_10003BE88();
  sub_10003BE6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10009CB94()
{
  sub_10003BE88();
  sub_10003BE6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10009CC78()
{
  sub_1000114D4();
  sub_10003BE6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10009CCF4()
{
  sub_10003BE7C();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10009CD30()
{
  sub_1000114D4();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009CDA0()
{
  sub_1000114D4();
  sub_10003BE6C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10009CE1C()
{
  sub_1000114D4();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10009CE8C()
{
  sub_10003BE7C();
  sub_10003BE60();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10009CF54(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMDCarrierAccountDataSource.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10009CFE4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while downloading asset catalog %ld", &v2, 0xCu);
}

void sub_10009D05C(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while downloading asset %ld", &v2, 0xCu);
}

void sub_10009D110(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[VVService setPassword:] called for mailbox named %@; different from old non-NULL password for this mailbox", buf, 0xCu);
}

void sub_10009D168(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[VVService setPassword:] called for mailbox named %@; same as old non-NULL password for this mailbox", buf, 0xCu);
}

void sub_10009D1C0(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = " ";
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#E %s%s%@", buf, 0x20u);
}

void sub_10009D268(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = " ";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#E %s%sCan't execute automated trash compaction", buf, 0x16u);
}

void sub_10009D2D8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Request to install dictation model failed with error %@.", &v2, 0xCu);
}

void sub_10009D350(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Request to install Language ID model failed with error %@.", &v2, 0xCu);
}

void sub_10009D3C8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Request to install Transcription model %@ failed as task hint not supported.", buf, 0xCu);
}

void sub_10009D420(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Request to install Transcription model %@ failed with error %@.", buf, 0x16u);
}

void sub_10009D560()
{
  sub_100066D54();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100066D60();
  [v1 handleFailureInMethod:@"stateRequestController != nil" object:? file:? lineNumber:? description:?];
}

void sub_10009D5D0()
{
  sub_100066D54();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100066D60();
  [v1 handleFailureInMethod:@"transcriptionService != nil" object:? file:? lineNumber:? description:?];
}

void sub_10009D640()
{
  sub_100066D54();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100066D60();
  [v1 handleFailureInMethod:@"telephonyClient != nil" object:? file:? lineNumber:? description:?];
}

void sub_10009D6B0()
{
  sub_100066D54();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100066D60();
  [v1 handleFailureInMethod:@"queue != nil" object:? file:? lineNumber:? description:?];
}

void sub_10009D734(uint64_t a1, NSObject *a2)
{
  objc_opt_class();
  v6[0] = 136316162;
  sub_100066D18();
  v7 = v3;
  v8 = 0;
  v9 = v3;
  v10 = 0;
  v5 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#E %s%s%@ event stream handler can't handle notification %@ with user info %@.", v6, 0x34u);
}

void sub_10009D7E8()
{
  v6 = 136315650;
  sub_100066D18();
  sub_100066D38(&_mh_execute_header, v0, v1, "#E %s%sCould not retrieve service provider for subscription %@", v2, v3, v4, v5, v6);
}

void sub_10009D85C()
{
  v6 = 136315650;
  sub_100066D18();
  sub_100066D38(&_mh_execute_header, v0, v1, "#E %s%sCould not retrieve account for subscription %@", v2, v3, v4, v5, v6);
}

void sub_10009D8D0(void *a1, uint64_t *a2, NSObject *a3)
{
  v5 = [a1 getServiceObjLogPrefix];
  v6 = *a2;
  v7 = 136315394;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "#E %s Retrieving passcode change information failed for account UUID %@, could not find context", &v7, 0x16u);
}

void sub_10009DA40()
{
  sub_10006A7E8();
  v2 = NSStringFromSelector(v1);
  v3 = [NSString stringWithFormat:@"Unable to delete transcription plist file: %@", v0];
  sub_10006A7B0();
  sub_10006A7C8(&_mh_execute_header, v4, v5, "%@: %@", v6, v7, v8, v9, v10, v11);
}

void sub_10009DAF0()
{
  sub_10006A7E8();
  v2 = NSStringFromSelector(v1);
  v3 = [NSString stringWithFormat:@"Could not write dictionary to file: %@", v0];
  sub_10006A7B0();
  sub_10006A7C8(&_mh_execute_header, v4, v5, "%@: %@", v6, v7, v8, v9, v10, v11);
}

void sub_10009DBA0()
{
  sub_10006A7E8();
  v2 = NSStringFromSelector(v1);
  v3 = [NSString stringWithFormat:@"Got error accessing speech assets: %@", v0];
  sub_10006A7B0();
  sub_10006A7C8(&_mh_execute_header, v4, v5, "%@: %@", v6, v7, v8, v9, v10, v11);
}

void sub_10009DC50()
{
  sub_10006A7E8();
  v2 = NSStringFromSelector(v1);
  v3 = [NSString stringWithFormat:@"[Warning] Speech asset at path: %@ matched a hash that is known to not have confidence.", v0];
  sub_10006A7B0();
  sub_10006A7C8(&_mh_execute_header, v4, v5, "%@: %@", v6, v7, v8, v9, v10, v11);
}

void sub_10009DD00(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = [NSString stringWithFormat:@"The task was already running when we tried to run it again."];
  sub_10006A7F4();
  sub_10006A80C(&_mh_execute_header, v3, v4, "%@: %@", v5, v6, v7, v8);
}

void sub_10009DDAC(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = [NSString stringWithFormat:@"There's no task running to end."];
  sub_10006A7F4();
  sub_10006A80C(&_mh_execute_header, v3, v4, "%@: %@", v5, v6, v7, v8);
}

void sub_10009DE58(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 url];
  v6 = [a2 voicemailService];
  v7 = [v6 serviceLabelID];
  v8 = [a2 voicemailService];
  v9 = [v8 contextInfo];
  v10 = 138412802;
  v11 = v5;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Greeting data is empty at %@ for account %@, subscription %@", &v10, 0x20u);
}

void sub_10009DF74(uint64_t a1, uint64_t a2)
{
  sub_100084090(a1, a2, 4.8151e-34);
  *(v2 + 14) = " ";
  sub_1000840CC(&_mh_execute_header, v2, v3, "#E %s%sCarrier does not have a beacon address in the bundle", v4);
}

void sub_10009E060(uint64_t a1, uint64_t a2)
{
  sub_100084090(a1, a2, 4.8151e-34);
  *(v2 + 14) = " ";
  sub_1000840CC(&_mh_execute_header, v2, v3, "#E %s%sInvalid IP address family", v4);
}

void sub_10009E0A4(uint64_t a1, uint64_t a2)
{
  sub_100084090(a1, a2, 4.8151e-34);
  *(v2 + 14) = " ";
  sub_1000840CC(&_mh_execute_header, v2, v3, "#E %s%s_setServerInfoFromInterpretedNotification: unable to create serviceAccount", v4);
}

void sub_10009E0E8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 136315650;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2080;
  *(a2 + 14) = " ";
  *(a2 + 22) = 2048;
  *(a2 + 24) = a3;
  sub_1000840E8(&_mh_execute_header, "#E %s%sUnable to save mailbox usage %lu, service account does not exist", a2, a4);
}

void sub_10009E148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000840A4(a1, 4.8152e-34, a2, a3);
  sub_1000840B8(v3, v4, v5);
  sub_1000840E8(&_mh_execute_header, "#E %s%sException while retrieving single message body. Setting retries to zero. %@", v6, v7);
}

void sub_10009E190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000840A4(a1, 4.8152e-34, a2, a3);
  sub_1000840B8(v3, v4, v5);
  sub_1000840E8(&_mh_execute_header, "#E %s%s*** Raise the roof.  %@ while saving default greeting.", v6, v7);
}

void sub_10009E1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000840A4(a1, 4.8152e-34, a2, a3);
  sub_1000840B8(v3, v4, v5);
  sub_1000840E8(&_mh_execute_header, "#E %s%s*** Raise the roof.  %@ while saving custom greeting.", v6, v7);
}

void sub_10009E220(uint64_t a1, uint64_t a2)
{
  sub_100084090(a1, a2, 4.8151e-34);
  *(v2 + 14) = " ";
  sub_1000840CC(&_mh_execute_header, v2, v3, "#E %s%sNo parameters to save", v4);
}

void sub_10009E264(uint64_t a1, uint64_t a2)
{
  sub_100084090(a1, a2, 4.8151e-34);
  *(v2 + 14) = " ";
  sub_1000840CC(&_mh_execute_header, v2, v3, "#E %s%sCannot invoke changePasswordReplyBlock since its already nil", v4);
}

void sub_10009E334(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error while creating folder at path:%@ error: %@", &v3, 0x16u);
}

void sub_10009E3BC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 accountDir];
  v6 = [v5 path];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error while creating folder at path:%@ error: %@", &v7, 0x16u);
}

void sub_10009E47C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMTelephonyClient.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void sub_10009E4F8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"VMTelephonyClient.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}