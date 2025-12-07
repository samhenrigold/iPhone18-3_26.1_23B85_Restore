void sub_100002650(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10000265CLL);
}

void sub_1000029AC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_1000029CC(uint64_t a1, uint64_t a2)
{
  if (qword_100084A48 != -1)
  {
    sub_100048170();
  }

  return byte_100084A40;
}

id sub_100002A24(uint64_t a1)
{
  if (qword_100084A58 != -1)
  {
    sub_100048184();
  }

  v2 = qword_100084A50;

  return v2;
}

void sub_100002A68(id a1)
{
  memset(uu, 0, sizeof(uu));
  *in = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 37;
  v1 = sysctlbyname("kern.bootsessionuuid", in, &v8, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100048198(v2, v3);
    }

LABEL_7:

    goto LABEL_8;
  }

  v4 = uuid_parse(in, uu);
  if (v4)
  {
    v5 = v4;
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100048224(in, v5, v3);
    }

    goto LABEL_7;
  }

LABEL_8:
  v6 = [[NSUUID alloc] initWithUUIDBytes:uu];
  v7 = qword_100084A50;
  qword_100084A50 = v6;
}

id sub_100002B84()
{
  v0 = +[NSUbiquitousKeyValueStore defaultStore];
  v1 = [v0 stringForKey:@"BackupUUID"];

  return v1;
}

void sub_100002BE0(void *a1)
{
  v1 = a1;
  v2 = +[NSUbiquitousKeyValueStore defaultStore];
  [v2 setString:v1 forKey:@"BackupUUID"];
}

BOOL sub_100002C4C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = SecItemUpdate(v5, v6);
  if (v7 == -25300)
  {
    v8 = [(__CFDictionary *)v5 mutableCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
    v10 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = [(__CFDictionary *)v9 objectForKeyedSubscript:v14, v17];
          [v8 setObject:v15 forKeyedSubscript:v14];
        }

        v11 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v7 = SecItemAdd(v8, 0);
  }

  if (a3 && v7)
  {
    *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v7 userInfo:0];
  }

  return v7 == 0;
}

void sub_1000033E0(uint64_t a1)
{
  v2 = [*(a1 + 32) event];
  [v2 populateUnderlyingErrorsStartingWithRootError:*(a1 + 40)];
}

void sub_1000034F0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
        v9 = [*(a1 + 40) event];
        [v9 setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100003774(id a1)
{
  container_query_create();
  container_query_set_class();
  v1 = xpc_string_create("com.apple.sbd");
  container_query_set_identifiers();

  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  if (container_query_get_single_result())
  {
    v2 = [NSURL fileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
    v3 = qword_100084A60;
    qword_100084A60 = v2;

    v4 = container_copy_sandbox_token();
    if (v4)
    {
      v5 = v4;
      v6 = sandbox_extension_consume();
      free(v5);
      if (v6 < 0)
      {
        v7 = CloudServicesLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10004835C();
        }
      }
    }
  }

  else
  {
    container_query_get_last_error();
    v8 = container_error_copy_unlocalized_description();
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000483E4(v8, v9);
    }

    free(v8);
  }

  container_query_free();
}

void sub_100004CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004D00(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100004E08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[6] addObject:*(a1 + 32)];
}

void sub_100004F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[6] removeObject:*(a1 + 32)];
}

uint64_t sub_1000050D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000050EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    if (!v4)
    {
      if (*(v3 + 24) == 1)
      {
        v5 = [v3[5] readStoredLog];
        v4 = v5;
        if ((!v5 || [v5 allActivitiesComplete]) && !*(a1 + 32))
        {
          v6 = CloudServicesLog();
          if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = objc_opt_class();
            _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "%@: No previous logs to process and no event to handle", buf, 0xCu);
          }

LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    v19 = a1;
    v6 = [[SBEscrowOperationLoggerUpdate alloc] initWithLog:v4 event:*(a1 + 32) context:*(a1 + 48)];
    v7 = [(SBEscrowOperationLoggerUpdate *)v6 updatedLog];
    v8 = v3[4];
    v3[4] = v7;

    v9 = v3[5];
    v10 = [(SBEscrowOperationLoggerUpdate *)v6 updatedLog];
    [v9 storeLog:v10];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v3[6];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = v3[2];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000053D0;
          block[3] = &unk_100074FD8;
          block[4] = v16;
          block[5] = v3;
          v22 = v6;
          dispatch_async(v17, block);
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    v18 = v3[2];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000053E0;
    v20[3] = &unk_100075000;
    v20[4] = *(v19 + 56);
    dispatch_async(v18, v20);
    goto LABEL_18;
  }

LABEL_19:
}

void sub_1000053E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

uint64_t sub_1000058B4(uint64_t result, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (a3 < a3 + a4)
  {
    v4 = 2 * a3;
    do
    {
      v5 = *a2++;
      *(*(result + 32) + v4) = a0123456789abcd[v5 >> 4];
      *(*(result + 32) + v4 + 1) = a0123456789abcd[v5 & 0xF];
      v4 += 2;
      --a4;
    }

    while (a4);
  }

  return result;
}

void sub_100005B64(uint64_t a1, uint64_t a2)
{
  v3 = SOSPeerInfoGetPeerID();
  if (v3)
  {
    v10 = v3;
    v4 = SOSPeerInfoCopyBackupKey();
    v5 = *(a1 + 32);
    v6 = [NSString alloc];
    v7 = [v4 sha1Digest];
    v8 = [v7 hexString];
    v9 = [v6 initWithFormat:@"%@ (%@)", v10, v8];
    [v5 addObject:v9];

    v3 = v10;
  }
}

void sub_100005D50(uint64_t a1, uint64_t a2)
{
  v3 = SOSPeerInfoGetPeerID();
  if (v3)
  {
    v7 = v3;
    v4 = SOSPeerInfoCopyBackupKey();
    v5 = v4;
    if (v4)
    {
      v6 = [v4 sha1Digest];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    }

    v3 = v7;
  }
}

void sub_100005E90(uint64_t a1, uint64_t a2)
{
  v3 = SOSPeerInfoCopyBackupKey();
  if (v3)
  {
    v5 = v3;
    v4 = [v3 sha1Digest];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }

    v3 = v5;
  }
}

void sub_100006078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000060A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000060B8(uint64_t a1, uint64_t a2)
{
  v3 = SOSPeerInfoCopyBackupKey();
  v4 = [v3 sha1Digest];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = SOSPeerInfoGetPeerID();
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = CloudServicesLog();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(*(a1 + 40) + 8) + 40);
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "found peer %@", &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100048730();
    }
  }
}

void sub_100007EDC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v9 hexString];
  v12[0] = @"class";
  v12[1] = @"hash";
  v13[0] = v8;
  v13[1] = v9;
  v12[2] = @"data";
  v13[2] = v7;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v10];
}

void sub_100008110(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }

  [v7 addObject:v6];
}

void sub_100009068(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

const char *sub_100009094()
{

  return sqlite3_errmsg(v0);
}

uint64_t sub_10000A8F4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___StoredCertificate__iCloudEnvironment;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___StoredCertificate__escrowBaseURL;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = &OBJC_IVAR___StoredCertificate__dsid;
            goto LABEL_28;
          case 4:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___StoredCertificate__escrowCertificate;
            goto LABEL_28;
          case 5:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___StoredCertificate__duplicateEscrowCertificate;
LABEL_28:
            v16 = *v15;
            v17 = *(a1 + v16);
            *(a1 + v16) = v14;

            goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000CD10(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [[EscrowAccountInfoResponse alloc] initFromResponseFilterPCS:v6];
    (*(*(a1 + 32) + 16))();
  }
}

id sub_10000DD7C(void *a1)
{
  memset(v7, 170, 20);
  v1 = a1;
  BytePtr = CFDataGetBytePtr(v1);
  v3 = [(__CFData *)v1 length:*v7];

  CC_SHA1(BytePtr, v3, v7);
  v4 = [[NSData alloc] initWithBytesNoCopy:v7 length:20 freeWhenDone:0];
  v5 = [v4 base64EncodedStringWithOptions:0];

  return v5;
}

void sub_10000EDCC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_10000EDF4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id _CloudServicesSignpostLogSystem(uint64_t a1)
{
  if (qword_100084A78 != -1)
  {
    sub_100049D84();
  }

  v2 = qword_100084A70;

  return v2;
}

void sub_10000EE58(id a1)
{
  qword_100084A70 = os_log_create("com.apple.sbd", "signpost");

  _objc_release_x1();
}

os_signpost_id_t _CloudServicesSignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

double _CloudServicesSignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (qword_100084A88 != -1)
  {
    sub_100049D98();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = dword_100084A80;
  LODWORD(v5) = *algn_100084A84;
  return v4 / v5 * (v3 - a2);
}

BOOL sub_10000EF38()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100042C00();
  if (v1)
  {
    v2 = sub_10000EF8C(v1);
    v3 = v2 != 0;
  }

  else
  {
    v3 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v3;
}

id sub_10000EF8C(uint64_t a1)
{
  if (&kAAProtocoliCloudAccountKey)
  {
    v1 = +[ACAccountStore defaultStore];
    v2 = [v1 aa_primaryAppleAccount];
  }

  else
  {
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AppleAccount.framework is not available; client must specify all parameters", v5, 2u);
    }

    v2 = 0;
    v1 = 0;
  }

  return v2;
}

id sub_10000F044()
{
  v0 = objc_autoreleasePoolPush();
  v1 = CloudServicesLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "getting dsid", &v7, 2u);
  }

  v3 = sub_10000EF8C(v2);
  if ([v3 aa_isPrimaryEmailVerified])
  {
    v4 = [v3 aa_personID];
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got dsid: %@", &v7, 0xCu);
    }
  }

  else
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100049DAC(v5);
    }

    v4 = 0;
  }

  objc_autoreleasePoolPop(v0);

  return v4;
}

id sub_10000F1A8()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_10000EF8C(v0);
  v2 = [v1 aa_altDSID];

  objc_autoreleasePoolPop(v0);

  return v2;
}

id sub_10000F20C()
{
  v0 = objc_autoreleasePoolPush();
  v1 = CloudServicesLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "getting iCloud env", buf, 2u);
  }

  v3 = sub_10000EF8C(v2);
  if ([v3 aa_isPrimaryEmailVerified])
  {
    v4 = [v3 dataclassProperties];
    v5 = [v4 objectForKeyedSubscript:kAAProtocoliCloudAccountKey];
    v6 = [v5 objectForKeyedSubscript:@"iCloudEnv"];

    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "got iCloud env", v9, 2u);
    }
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100049DAC(v7);
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v0);

  return v6;
}

void sub_100010150(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"class"];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v7 = [v4 objectForKeyedSubscript:@"data"];
  if (v7)
  {
    [v6 addObject:v7];
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100049DF0();
    }
  }
}

void sub_1000109B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000109EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010A04(uint64_t a1)
{
  v2 = [*(a1 + 32) kvs];
  v3 = *(a1 + 32);
  v15 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010B7C;
  v13[3] = &unk_1000751F8;
  v13[4] = v3;
  v12 = *(a1 + 40);
  v4 = v12;
  v14 = v12;
  v5 = [v3 backupWithRegisteredBackupsWithError:&v15 handler:v13];
  v6 = v15;
  [v2 removeObjectForKey:@"com.apple.icdp.backup"];
  if ((v5 & 1) == 0)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100049F3C();
    }

    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
    v9 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_100010B7C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) _pushCachedKeychainToKVSForView:v7 recordID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v3);
}

void sub_100010FA8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  [*(a1 + 32) allViews];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = [v10 kvs];
        v12 = [v10 _getICDPBackupFromKVS:v11 forView:v8];

        if (v12)
        {
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          [v2 addObject:v8];
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v2 componentsJoinedByString:@" "];
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "views with no backup: %@", buf, 0xCu);
    }
  }
}

void sub_1000127C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000127E4(uint64_t a1)
{
  v2 = [*(a1 + 32) copyMyPeerID];
  v3 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v4 = [v3 _consumeFullBackupForRecordID:v2];
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 32) _pushCachedKeychainToKVS];
  }

  else
  {
    v5 = [v3 _consumeBackupJournal];
  }

  v4 = v5;
LABEL_6:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "backup complete", v10, 2u);
  }
}

void sub_100012A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012A74(uint64_t a1)
{
  v2 = [*(a1 + 32) copyMyPeerID];
  v3 = *(a1 + 32);
  v22 = 0;
  v4 = [v3 backupWithRegisteredBackupViewWithError:@"iCloudIdentity-tomb" error:&v22];
  v5 = v22;
  v6 = CloudServicesLog();
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = @"iCloudIdentity-tomb";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: registered view: %@", buf, 0xCu);
    }

    v10 = [*(a1 + 32) _consumeViewBackup:@"iCloudIdentity-tomb" recordID:v2];
    v11 = CloudServicesLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10004A0A4();
      }

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: Pushing iCloudIdentity view to KVS!", buf, 2u);
      }

      v14 = [*(a1 + 32) _pushCachedKeychainToKVSForView:@"iCloudIdentity-tomb" recordID:v2];
      v15 = CloudServicesLog();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10004A124();
        }

        v17 = *(*(a1 + 40) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: successfully pushed iCloudIdentity to KVS", buf, 2u);
        }

        v19 = CloudServicesLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = @"YES";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: backup succeeded? %@", buf, 0xCu);
        }

        v20 = *(*(a1 + 40) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = 0;

        v18 = CloudServicesLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = @"iCloudIdentity-tomb";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: backup for %@ complete", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004A024();
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

void sub_100013754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v54 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000137E4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a2;
  v7 = a3;
  v8 = a4;
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v5 > 3)
    {
      v10 = "unknown";
    }

    else
    {
      v10 = off_1000759F0[v5];
    }

    *buf = 136315138;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_consumeViewBackup: got backup manifest event: %s", buf, 0xCu);
  }

  v11 = objc_autoreleasePoolPush();
  *(*(a1[6] + 8) + 24) = 0;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        *(*(a1[6] + 8) + 24) = 1;
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    ++*(*(a1[11] + 8) + 24);
    v28 = *(*(a1[8] + 8) + 40);
    if (!v28)
    {
      v29 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
      v30 = *(a1[8] + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      v28 = *(*(a1[8] + 8) + 40);
    }

    v32 = *(a1[9] + 8);
    v33 = *(v32 + 40);
    v17 = (v32 + 40);
    obj = v33;
    v19 = [v28 removeItemWithKey:v7 error:&obj];
    v20 = obj;
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        ++*(*(a1[10] + 8) + 24);
        v12 = *(*(a1[8] + 8) + 40);
        if (!v12)
        {
          v13 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
          v14 = *(a1[8] + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          v12 = *(*(a1[8] + 8) + 40);
        }

        v16 = *(a1[9] + 8);
        v18 = *(v16 + 40);
        v17 = (v16 + 40);
        v39 = v18;
        v19 = [v12 addItem:v8 error:&v39];
        v20 = v39;
        goto LABEL_24;
      }

LABEL_15:
      v21 = CloudServicesLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10004A194();
      }

LABEL_25:
      v34 = CloudServicesLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (v5 > 3)
        {
          v35 = "unknown";
        }

        else
        {
          v35 = off_1000759F0[v5];
        }

        *buf = 136315138;
        v42 = v35;
        v37 = "_consumeViewBackup: event %s successful!";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    ++*(*(a1[7] + 8) + 24);
    v22 = *(*(a1[8] + 8) + 40);
    if (!v22)
    {
      v23 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
      v24 = *(a1[8] + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v22 = *(*(a1[8] + 8) + 40);
    }

    v26 = *(a1[9] + 8);
    v27 = *(v26 + 40);
    v17 = (v26 + 40);
    v40 = v27;
    v19 = [v22 resetWithKeybag:v7 error:&v40];
    v20 = v40;
  }

LABEL_24:
  objc_storeStrong(v17, v20);
  if (v19)
  {
    goto LABEL_25;
  }

  v34 = CloudServicesLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v36 = off_1000759F0[v5];
    *buf = 136315138;
    v42 = v36;
    v37 = "_consumeViewBackup: event %s unsuccessful";
LABEL_32:
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
  }

LABEL_33:

  objc_autoreleasePoolPop(v11);
}

void sub_100013E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013E84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = v3;
    v4 = objc_autoreleasePoolPush();
    v5 = [*(a1 + 32) _consumeViewBackup:v8 recordID:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    objc_autoreleasePoolPop(v4);
    v3 = v8;
  }
}

void sub_1000141FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001423C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = a1 + 48;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "consuming backup for view %@", &buf, 0xCu);
    }

    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v69 = 1;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x2020000000;
    v67 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v79 = 0x3032000000;
    v80 = sub_1000109EC;
    v81 = sub_1000109FC;
    v82 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v7 = *(a1 + 32);
    v53 = 0;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10001499C;
    v43[3] = &unk_1000752E8;
    v46 = v68;
    v47 = v66;
    v48 = &v62;
    p_buf = &buf;
    v8 = v3;
    v44 = v8;
    v45 = *(a1 + 40);
    v50 = *(a1 + 48);
    v51 = &v58;
    v52 = &v54;
    v9 = [v7 backupWithChanges:v8 error:&v53 handler:v43];
    v10 = v53;
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "false";
      if (v9)
      {
        v12 = "true";
      }

      v13 = *(v63 + 6);
      v14 = *(v59 + 6);
      v15 = *(v55 + 6);
      *v70 = 136315906;
      v71 = v12;
      v72 = 1024;
      v73 = v13;
      v74 = 1024;
      v75 = v14;
      v76 = 1024;
      v77 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecItemBackupWithChanges() returned %s (%d reset, %d add, %d remove)", v70, 0x1Eu);
    }

    v16 = *(*(&buf + 1) + 40);
    if (v16)
    {
      v17 = [v16 manifestHash];
      v18 = [*(*(&buf + 1) + 40) keybagDigest];
      [*(*(&buf + 1) + 40) closeStore];
      v19 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = 0;

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
      if (v9)
      {
LABEL_10:
        if (*(*(*v4 + 8) + 40))
        {
          v20 = CloudServicesLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10004A360();
          }

          v21 = +[CloudServicesAnalytics logger];
          [v21 logUnrecoverableError:*(*(*v4 + 8) + 40) forEvent:CloudServicesAnalyticsBackupWithChangesIncremental withAttributes:0];

          v22 = objc_alloc_init(NSMutableDictionary);
          [v22 setObject:*(*(*v4 + 8) + 40) forKeyedSubscript:NSUnderlyingErrorKey];
          v23 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v22];
          v24 = *(*v4 + 8);
          v25 = *(v24 + 40);
          *(v24 + 40) = v23;
        }

        else
        {
          v28 = +[CloudServicesAnalytics logger];
          [v28 logSuccessForEvent:CloudServicesAnalyticsBackupWithChangesIncremental];

          if (!v18 || !v17)
          {
            goto LABEL_29;
          }

          v29 = *(a1 + 32);
          v30 = *(*(a1 + 48) + 8);
          obj = *(v30 + 40);
          v31 = [v29 backupSetConfirmedManifest:v8 digest:v18 manifest:v17 error:&obj];
          objc_storeStrong((v30 + 40), obj);
          if (v31)
          {
            v22 = +[CloudServicesAnalytics logger];
            [v22 logSuccessForEvent:CloudServicesAnalyticsSetConfirmedManifest];
          }

          else
          {
            v37 = +[CloudServicesAnalytics logger];
            [v37 logUnrecoverableError:*(*(*v4 + 8) + 40) forEvent:CloudServicesAnalyticsSetConfirmedManifest withAttributes:0];

            v38 = CloudServicesLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_10004A3DC();
            }

            v22 = objc_alloc_init(NSMutableDictionary);
            [v22 setObject:*(*(*v4 + 8) + 40) forKeyedSubscript:NSUnderlyingErrorKey];
            v39 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v22];
            v40 = *(*v4 + 8);
            v41 = *(v40 + 40);
            *(v40 + 40) = v39;
          }
        }

LABEL_28:

LABEL_29:
        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);
        _Block_object_dispose(&v62, 8);
        _Block_object_dispose(&buf, 8);

        _Block_object_dispose(v66, 8);
        _Block_object_dispose(v68, 8);

        objc_autoreleasePoolPop(v5);
        goto LABEL_30;
      }
    }

    if (v10)
    {
      v26 = [v10 domain];
      if ([v26 isEqualToString:NSPOSIXErrorDomain])
      {
        v27 = [v10 code] == 2;

        if (v27)
        {
          v22 = CloudServicesLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10004A274();
          }

          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    v32 = +[CloudServicesAnalytics logger];
    [v32 logUnrecoverableError:v10 forEvent:CloudServicesAnalyticsBackupWithChangesIncremental withAttributes:0];

    v33 = CloudServicesLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10004A2E4();
    }

    v22 = objc_alloc_init(NSMutableDictionary);
    [v22 setObject:v10 forKeyedSubscript:NSUnderlyingErrorKey];
    v34 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v22];
    v35 = *(*v4 + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    goto LABEL_28;
  }

LABEL_30:
}

void sub_100014920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v36 - 160), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10001499C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a2;
  v7 = a3;
  v8 = a4;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v9 = objc_autoreleasePoolPush();
    *(*(a1[7] + 8) + 24) = 0;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        ++*(*(a1[13] + 8) + 24);
        v27 = *(*(a1[9] + 8) + 40);
        if (!v27)
        {
          v28 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
          v29 = *(a1[9] + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;

          v27 = *(*(a1[9] + 8) + 40);
        }

        v31 = *(a1[10] + 8);
        v32 = *(v31 + 40);
        v15 = (v31 + 40);
        v33 = v32;
        v17 = [v27 removeItemWithKey:v7 error:&v33];
        v18 = v33;
        goto LABEL_21;
      }

      if (v5 != 3)
      {
LABEL_11:
        v20 = CloudServicesLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10004A458();
        }

        goto LABEL_22;
      }

      v19 = a1[7];
    }

    else
    {
      if (v5)
      {
        if (v5 == 1)
        {
          ++*(*(a1[12] + 8) + 24);
          v10 = *(*(a1[9] + 8) + 40);
          if (!v10)
          {
            v11 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
            v12 = *(a1[9] + 8);
            v13 = *(v12 + 40);
            *(v12 + 40) = v11;

            v10 = *(*(a1[9] + 8) + 40);
          }

          v14 = *(a1[10] + 8);
          v16 = *(v14 + 40);
          v15 = (v14 + 40);
          v34 = v16;
          v17 = [v10 addItem:v8 error:&v34];
          v18 = v34;
LABEL_21:
          objc_storeStrong(v15, v18);
          *(*(a1[6] + 8) + 24) = v17;
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      ++*(*(a1[8] + 8) + 24);
      v21 = *(*(a1[9] + 8) + 40);
      if (!v21)
      {
        v22 = [[SecureBackupViewStore alloc] initWithViewName:a1[4] recordID:a1[5]];
        v23 = *(a1[9] + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        v21 = *(*(a1[9] + 8) + 40);
      }

      v25 = *(a1[10] + 8);
      obj = *(v25 + 40);
      v26 = [v21 resetWithKeybag:v7 error:&obj];
      objc_storeStrong((v25 + 40), obj);
      *(*(a1[6] + 8) + 24) = v26;
      v19 = a1[11];
    }

    *(*(v19 + 8) + 24) = 1;
LABEL_22:
    objc_autoreleasePoolPop(v9);
  }
}

id sub_100015330(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    return [*(a1 + 32) _stateCapture];
  }

  else
  {
    return 0;
  }
}

void sub_10001545C(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
    if (string)
    {
      v4 = string;
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = [NSString stringWithUTF8String:v4];
      [v6 handleNotification:v7];

      objc_autoreleasePoolPop(v5);
    }
  }
}

void sub_100015784(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v5 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v8 = [v5 objectForKeyedSubscript:kSecureBackupTimestampKey];

  [v6 setObject:v8 forKeyedSubscript:@"timestamp"];
  v9 = [v7 objectForKeyedSubscript:@"recordID"];
  [v6 setObject:v9 forKeyedSubscript:@"creator"];

  v10 = [v7 objectForKeyedSubscript:@"keybag"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 peersAndBackupKeyDigests];
    [v6 setObject:v12 forKeyedSubscript:@"peerIDs"];

    v13 = [v11 recoveryKey];
    v14 = [v13 sha1Digest];
    [v6 setObject:v14 forKeyedSubscript:@"rk"];

    v15 = v16;
  }

  else
  {
    v15 = [[NSString alloc] initWithFormat:@"%@ (direct keybag)", v16];
    v13 = v16;
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v15];
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:@"backups"];
  }
}

void sub_1000163F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016410(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "in dispatch_after()", v5, 2u);
  }

  [*(a1 + 32) notificationOccurred:*(a1 + 40)];
  [*(a1 + 32) setPendingNotification:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100016748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Backup returned %@", &v5, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100017464(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest: in daemon came back", buf, 2u);
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  if (v6)
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v231 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "escrowService getAccountInfoWithRequest: returned %@", buf, 0xCu);
    }

    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 code];
      *buf = 134217984;
      v231 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest: error: %ld", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_193;
  }

  v12 = [v5 objectForKeyedSubscript:@"EscrowServiceAccountInfo"];
  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 count];
    *buf = 134217984;
    v231 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "got %lu records", buf, 0xCu);
  }

  v15 = objc_alloc_init(NSMutableArray);
  v191 = objc_alloc_init(NSMutableDictionary);
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v16 = v12;
  v186 = a1;
  v187 = v8;
  v185 = v16;
  v197 = [v16 countByEnumeratingWithState:&v224 objects:v242 count:16];
  v149 = v5;
  if (!v197)
  {
    v153 = 0;
    v17 = 0;
    v79 = 0;
    v80 = v16;
LABEL_99:

    goto LABEL_101;
  }

  v163 = v15;
  v188 = 0;
  v17 = 0;
  v153 = 0;
  v195 = *v225;
  v194 = kEscrowServiceRecordLabelKey;
  v196 = kEscrowServiceRecordMetadataKey;
  v200 = kSecureBackupKeybagSHA256Key;
  v199 = kSecureBackupKeybagDigestKey;
  v198 = kSecureBackupTimestampKey;
  v193 = kEscrowServiceRecordStatusKey;
  v192 = kEscrowServiceStingrayLabel;
  v184 = kEscrowServiceGuitarfishLabel;
  v162 = kEscrowServiceGuitarfishTokenLabel;
  v180 = kSecureBackupFederationKey;
  v179 = kSecureBackupExpectedFederationKey;
  v178 = kSecureBackupRemainingAttemptsKey;
  v150 = kSecureBackupGuitarfishRecoveryTokenMetadataKey;
  v168 = kSecureBackupEscrowDateKey;
  v161 = kSecureBackupRecordLabelKey;
  v160 = kSecureBackupSerialNumberKey;
  v159 = kSecureBackupBuildVersionKey;
  v151 = kSecureBackupPeerInfoDataKey;
  v158 = kSecureBackupBottleIDKey;
  v157 = kSecureBackupPeerInfoSerialNumberKey;
  v156 = kSecureBackupPeerInfoOSVersionKey;
  v171 = kSecureBackupRecordStatusValid;
  v170 = kSecureBackupRecordStatusKey;
  v169 = kSecureBackupRecordStatusInvalid;
  v167 = kSecureBackupEscrowTimestampKey;
  v166 = kSecureBackupEscrowDigestKey;
  v165 = kSecureBackupMetadataKey;
  v183 = kEscrowServiceRecordStatusValid;
  v172 = kSecureBackupContainsiCloudIdentityKey;
  v176 = kSecureBackupTriggerUpdateKey;
  v175 = kSecureBackupStingrayMetadataKey;
  v174 = kSecureBackupBackOffDateKey;
  v173 = kSecureBackupEncodedMetadataKey;
  v177 = kSecureBackupStingrayMetadataHashKey;
  v155 = kSecureBackupRecordIDKey;
  do
  {
    v18 = 0;
    do
    {
      if (*v225 != v195)
      {
        objc_enumerationMutation(v16);
      }

      v19 = *(*(&v224 + 1) + 8 * v18);
      v20 = [v19 objectForKeyedSubscript:v194];
      v21 = [v19 objectForKeyedSubscript:v196];

      v203 = [v21 objectForKeyedSubscript:v200];
      v209 = [v21 objectForKeyedSubscript:v199];
      v204 = [v21 objectForKeyedSubscript:v198];
      v207 = [CSDateUtilities secureBackupDateFromString:?];
      v22 = [v19 objectForKeyedSubscript:v193];
      v23 = v192;
      if ([*(a1 + 32) guitarfish])
      {
        v24 = v184;
        v25 = v23;
        v23 = v24;
      }

      v205 = v20;
      v202 = v22;
      v201 = v23;
      if ([v20 isEqualToString:v23])
      {
        v26 = [v22 isEqualToString:v183];
        if (v26)
        {
          v26 = [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:v172];
        }

        if (v21)
        {
          v28 = [v21 mutableCopy];
          v29 = [v19 objectForKeyedSubscript:v176];
          [v28 setObject:v29 forKeyedSubscript:v176];

          v30 = [v19 objectForKeyedSubscript:@"federationID"];
          [v28 setObject:v30 forKeyedSubscript:v180];

          v31 = [v19 objectForKeyedSubscript:@"expectedFederationID"];
          [v28 setObject:v31 forKeyedSubscript:v179];

          v32 = [v19 objectForKeyedSubscript:v178];
          [v28 setObject:v32 forKeyedSubscript:v178];

          [v8 setObject:v28 forKeyedSubscript:v175];
          v33 = [v21 objectForKeyedSubscript:v174];
          [v8 setObject:v33 forKeyedSubscript:v174];
          v34 = objc_alloc_init(NSMutableDictionary);
          v35 = [v19 objectForKeyedSubscript:@"encodedMetadata"];
          [v34 setObject:v35 forKeyedSubscript:v173];

          [v34 setObject:v204 forKeyedSubscript:v198];
          [v34 setObject:v203 forKeyedSubscript:v200];
          [v34 setObject:v209 forKeyedSubscript:v199];
          [v34 setObject:v33 forKeyedSubscript:v174];
          [v8 setObject:v34 forKeyedSubscript:v177];

          goto LABEL_23;
        }

LABEL_63:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v17 = 0;
        goto LABEL_64;
      }

      if ([v20 isEqualToString:@"com.apple.protectedcloudstorage.record.double"])
      {
        v39 = [v19 objectForKeyedSubscript:@"encodedMetadata"];

        v36 = 0;
        v37 = 0;
        v38 = 0;
        v188 = v39;
        goto LABEL_26;
      }

      if (![v20 isEqualToString:@"com.apple.securebackup.record"])
      {
        if ([v20 hasPrefix:@"com.apple.icdp.record.double"])
        {
          v28 = CloudServicesLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v231 = v20;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "ignoring old double enrollment record: %@", buf, 0xCu);
          }

          goto LABEL_23;
        }

        if ([v20 hasPrefix:@"com.apple.icdp.record"] && objc_msgSend(v20, "hasSuffix:", @".double"))
        {
          v28 = [*(a1 + 40) _recordIDFromLabel:v20 withPrefix:@"com.apple.icdp.record" suffix:@".double"];
          v44 = [v19 objectForKeyedSubscript:@"encodedMetadata"];
          v45 = v44;
          if (v28 && v44)
          {
            [v191 setObject:v44 forKeyedSubscript:v28];
          }

          goto LABEL_23;
        }

        if ([v20 hasPrefix:@"com.apple.icdp.record"])
        {
          v46 = [v19 mutableCopy];
          [v46 setObject:v207 forKeyedSubscript:v168];
          v47 = [*(a1 + 40) _recordIDFromLabel:v20 withPrefix:@"com.apple.icdp.record" suffix:0];
          [v46 setObject:v47 forKeyedSubscript:v155];

          v181 = v46;
          [v46 setObject:@"com.apple.icdp.record" forKeyedSubscript:v161];
          v38 = [v21 objectForKeyedSubscript:v160];
          v48 = [v21 objectForKeyedSubscript:v159];
          v37 = v48;
          if (!v38 || !v48)
          {
            v49 = [v21 objectForKeyedSubscript:v151];
            if (v49)
            {
              v50 = *(a1 + 40);
              v223 = v153;
              v51 = [v50 createPeerInfoFromData:v49 error:&v223];
              v152 = v223;

              v154 = v51;
              if (v51)
              {
                if (!v38)
                {
                  v38 = [*(a1 + 40) copySerialNumber:v51];
                }

                v52 = v152;
                if (!v37)
                {
                  v37 = [*(a1 + 40) copyOSVersion:v154];
                }
              }

              else
              {
                v76 = CloudServicesLog();
                v52 = v152;
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v231 = v152;
                  _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "could not create peer info from data: %@", buf, 0xCu);
                }
              }

              v153 = v52;
            }
          }

          v77 = [v181 objectForKeyedSubscript:v196];
          v36 = [v77 objectForKeyedSubscript:v158];

          [v181 setObject:v38 forKeyedSubscript:v157];
          [v181 setObject:v37 forKeyedSubscript:v156];
          [v163 addObject:v181];

          goto LABEL_26;
        }

        v26 = [v20 isEqualToString:v162];
        if (!v26)
        {
          v28 = CloudServicesLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v231 = v20;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "unexpected label: %@", buf, 0xCu);
          }

LABEL_23:

          v36 = 0;
          v37 = 0;
          v38 = 0;
LABEL_26:
          v17 = v21;
          goto LABEL_64;
        }

        if (v21)
        {
          v28 = [v21 mutableCopy];
          v53 = [v19 objectForKeyedSubscript:@"federationID"];
          [v28 setObject:v53 forKeyedSubscript:v180];

          v54 = [v19 objectForKeyedSubscript:@"expectedFederationID"];
          [v28 setObject:v54 forKeyedSubscript:v179];

          v55 = [v19 objectForKeyedSubscript:v178];
          [v28 setObject:v55 forKeyedSubscript:v178];

          [v8 setObject:v28 forKeyedSubscript:v150];
          goto LABEL_23;
        }

        goto LABEL_63;
      }

      if ([v22 isEqualToString:@"invalid"])
      {
        v40 = v169;
      }

      else
      {
        v40 = v171;
      }

      v26 = [v8 setObject:v40 forKeyedSubscript:v170];
      if (!v21)
      {
        goto LABEL_63;
      }

      if (v204)
      {
        v41 = v204;
      }

      else
      {
        v41 = @"UNKNOWN";
      }

      [v8 setObject:v41 forKeyedSubscript:v167];
      if (v209)
      {
        v42 = v209;
      }

      else
      {
        v42 = @"UNKNOWN";
      }

      [v8 setObject:v42 forKeyedSubscript:v166];
      v17 = [*(a1 + 40) massageIncomingMetadataFromInfo:v21];

      if (v17)
      {
        v43 = v17;
      }

      else
      {
        v43 = &__NSDictionary0__struct;
      }

      [v8 setObject:v43 forKeyedSubscript:v165];
      v26 = [v8 setObject:v207 forKeyedSubscript:v168];
      v36 = 0;
      v37 = 0;
      v38 = 0;
LABEL_64:
      v56 = sub_1000029CC(v26, v27);
      v57 = CloudServicesLog();
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      if (v56)
      {
        if (!v58)
        {
          goto LABEL_85;
        }

        if (v38)
        {
          v59 = v38;
        }

        else
        {
          v59 = &stru_1000767A0;
        }

        v182 = v59;
        v60 = [(__CFString *)v209 hexString];
        if (v36)
        {
          v61 = v36;
        }

        else
        {
          v61 = @"(no bottle ID)";
        }

        v62 = v18;
        v63 = v38;
        v64 = v17;
        if (v37)
        {
          v65 = v37;
        }

        else
        {
          v65 = &stru_1000767A0;
        }

        v66 = [CSDateUtilities localStringFromDate:v207];
        *buf = 138413570;
        v231 = v205;
        v232 = 2112;
        v233 = v182;
        v234 = 2112;
        v235 = v60;
        v236 = 2112;
        v237 = v61;
        v238 = 2112;
        v239 = v65;
        v17 = v64;
        v38 = v63;
        v18 = v62;
        v8 = v187;
        v240 = 2112;
        v241 = v66;
        v67 = v57;
        v68 = "%@ %@ %@ %@ %@ %@";
        v69 = 62;
      }

      else
      {
        if (!v58)
        {
          goto LABEL_85;
        }

        v60 = [(__CFString *)v209 hexString];
        v70 = v37;
        v71 = v18;
        v72 = v38;
        v73 = v17;
        if (v36)
        {
          v74 = v36;
        }

        else
        {
          v74 = @"(no bottle ID)";
        }

        if (v70)
        {
          v75 = v70;
        }

        else
        {
          v75 = &stru_1000767A0;
        }

        v66 = [CSDateUtilities localStringFromDate:v207];
        *buf = 138413314;
        v231 = v205;
        v232 = 2112;
        v233 = v60;
        v234 = 2112;
        v235 = v74;
        v17 = v73;
        v38 = v72;
        v18 = v71;
        v37 = v70;
        v8 = v187;
        v236 = 2112;
        v237 = v75;
        v238 = 2112;
        v239 = v66;
        v67 = v57;
        v68 = "%@ %@ %@ %@ %@";
        v69 = 52;
      }

      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v68, buf, v69);

      v16 = v185;
      a1 = v186;
LABEL_85:

      v18 = v18 + 1;
    }

    while (v197 != v18);
    v78 = [v16 countByEnumeratingWithState:&v224 objects:v242 count:16];
    v197 = v78;
  }

  while (v78);

  v79 = v188;
  if (v188)
  {
    v80 = [v8 objectForKeyedSubscript:v177];
    [v80 setObject:v188 forKeyedSubscript:@"duplicateEncodedMetadata"];
    v5 = v149;
    v15 = v163;
    goto LABEL_99;
  }

  v5 = v149;
  v15 = v163;
LABEL_101:
  v210 = v17;
  if ([v191 count])
  {
    v189 = v79;
    v81 = [v191 allKeys];
    [v8 setObject:v81 forKeyedSubscript:kSecureBackupiCDPDoubleEnrollmentRecordIDsKey];

    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v219 = 0u;
    v82 = v15;
    v83 = v15;
    v84 = [v83 countByEnumeratingWithState:&v219 objects:v229 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v220;
      v87 = kSecureBackupRecordIDKey;
      do
      {
        for (i = 0; i != v85; i = i + 1)
        {
          if (*v220 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v89 = *(*(&v219 + 1) + 8 * i);
          v90 = [v89 objectForKeyedSubscript:v87];
          v91 = [v191 objectForKeyedSubscript:v90];
          [v89 setObject:v91 forKeyedSubscript:@"duplicateEncodedMetadata"];
        }

        v85 = [v83 countByEnumeratingWithState:&v219 objects:v229 count:16];
      }

      while (v85);
    }

    v5 = v149;
    v8 = v187;
    v79 = v189;
    v15 = v82;
    v16 = v185;
  }

  if ([v15 count])
  {
    v92 = v186;
    if (([*(v186 + 32) excludeiCDPRecords] & 1) == 0)
    {
      [v8 setObject:v15 forKeyedSubscript:kSecureBackupAlliCDPRecordsKey];
      if (_os_feature_enabled_impl())
      {
        v93 = [*(v186 + 32) sosCompatibleEscrowSorting];
      }

      else
      {
        v93 = 0;
      }

      if ([*(v186 + 32) stingray] & 1) != 0 || ((objc_msgSend(*(v186 + 32), "suppressServerFiltering") | v93))
      {
        v94 = CloudServicesLog();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Skipping cuttlefish bottle sorting", buf, 2u);
        }
      }

      else
      {
        v94 = [*(v186 + 40) sortRecordsByBottleID:v15];
        v95 = [v94 mutableCopy];

        v15 = v95;
      }

      v96 = kSecureBackupiCDPRecordsKey;
      [v8 setObject:v15 forKeyedSubscript:kSecureBackupiCDPRecordsKey];
      if (OctagonPlatformSupportsSOS())
      {
        v97 = [*(v186 + 40) filteriCDPRecords:v15];
        if ([v97 count])
        {
          [v8 setObject:v97 forKeyedSubscript:v96];
        }

        else
        {
          v98 = CloudServicesLog();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "filteriCDPRecords returned 0 SOS viable records.", buf, 2u);
          }

          if (_os_feature_enabled_impl() && [*(v186 + 32) sosCompatibleEscrowSorting])
          {
            v208 = v97;
            v190 = v79;
            v164 = v15;
            v99 = CloudServicesLog();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "since this is an SOS driven escrow record fetch, remove Octagon only escrow records before returning the entire list", buf, 2u);
            }

            v100 = +[NSMutableArray array];
            v206 = v96;
            [v8 objectForKeyedSubscript:v96];
            v215 = 0u;
            v216 = 0u;
            v217 = 0u;
            v101 = v218 = 0u;
            v102 = [v101 countByEnumeratingWithState:&v215 objects:v228 count:16];
            if (v102)
            {
              v103 = v102;
              v104 = *v216;
              v105 = kEscrowServiceRecordMetadataKey;
              v106 = kSecureBackupPeerInfoDataKey;
              do
              {
                for (j = 0; j != v103; j = j + 1)
                {
                  if (*v216 != v104)
                  {
                    objc_enumerationMutation(v101);
                  }

                  v108 = *(*(&v215 + 1) + 8 * j);
                  v109 = [v108 objectForKeyedSubscript:v105];
                  v110 = [v109 objectForKeyedSubscript:v106];

                  if (v110)
                  {
                    [v100 addObject:v108];
                  }
                }

                v103 = [v101 countByEnumeratingWithState:&v215 objects:v228 count:16];
              }

              while (v103);
            }

            v111 = CloudServicesLog();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v231 = v100;
              _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "filtered out Octagon only records. new set of SOS records: %@", buf, 0xCu);
            }

            v8 = v187;
            [v187 setObject:v100 forKeyedSubscript:v206];

            v5 = v149;
            v16 = v185;
            v92 = v186;
            v15 = v164;
            v79 = v190;
            v97 = v208;
          }

          else
          {
            v112 = CloudServicesLog();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "returning the entire list of iCDP records", buf, 2u);
            }
          }
        }
      }
    }
  }

  else
  {
    v92 = v186;
  }

  if ((OctagonPlatformSupportsSOS() & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    if ([v15 count])
    {
      v140 = &__kCFBooleanTrue;
    }

    else
    {
      v140 = &__kCFBooleanFalse;
    }

    [v8 setObject:v140 forKeyedSubscript:kSecureBackupIsEnabledKey];
    v138 = kSecureBackupUsesRecoveryKeyKey;
    v139 = v8;
LABEL_177:
    [v139 setObject:&__kCFBooleanFalse forKeyedSubscript:v138];
    (*(*(v92 + 56) + 16))();
    goto LABEL_192;
  }

  v113 = [*(v92 + 40) _backupEnabled];
  v114 = CloudServicesLog();
  v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
  if (!v113)
  {
    if (v115)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "backup not enabled", buf, 2u);
    }

    v138 = kSecureBackupIsEnabledKey;
    v139 = v8;
    goto LABEL_177;
  }

  if (v115)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "backup enabled", buf, 2u);
  }

  v116 = kSecureBackupIsEnabledKey;
  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupIsEnabledKey];
  v117 = *(v92 + 40);
  v118 = [v117 kvs];
  v119 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v117 hasRecoveryKeyInKVS:v118 error:0]);
  [v8 setObject:v119 forKeyedSubscript:kSecureBackupUsesRecoveryKeyKey];

  v120 = [*(v92 + 40) _getLastBackupTimestamp];
  if (v120)
  {
    v121 = [CSDateUtilities secureBackupDateFromString:v120];
    if (v121)
    {
      [v8 setObject:v121 forKeyedSubscript:kSecureBackupLastBackupDateKey];
    }

    [v8 setObject:v120 forKeyedSubscript:kSecureBackupLastBackupTimestampKey];
  }

  if (![*(v92 + 40) _usesEscrow])
  {
LABEL_158:
    v126 = CloudServicesLog();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "account does not use escrow", buf, 2u);
    }

    v127 = CloudServicesLog();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      v128 = [*(v92 + 40) _usesEscrow];
      *buf = 67109120;
      LODWORD(v231) = v128;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "account useEscrow: %d", buf, 8u);
    }

    v129 = CloudServicesLog();
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      v130 = [v187 objectForKeyedSubscript:kSecureBackupRecordStatusKey];
      *buf = 138412290;
      v231 = v130;
      _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "account SecureBackup status: %@", buf, 0xCu);
    }

    v131 = CloudServicesLog();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v132 = [v15 count];
      *buf = 67109120;
      LODWORD(v231) = v132;
      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "account iCDP records: %d", buf, 8u);
    }

    if (v120)
    {
      v8 = v187;
      [v187 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesRandomPassphraseKey];
      v133 = [*(v92 + 40) _metadata];
      v134 = v133;
      if (v133 && (v135 = kSecureBackupClientMetadataKey, [v133 objectForKeyedSubscript:kSecureBackupClientMetadataKey], v136 = objc_claimAutoreleasedReturnValue(), v136, v136))
      {
        v137 = [v134 objectForKeyedSubscript:v135];
        [v187 setObject:v137 forKeyedSubscript:kSecureBackupMetadataKey];
      }

      else
      {
        [v187 setObject:&__NSDictionary0__struct forKeyedSubscript:kSecureBackupMetadataKey];
      }
    }

    else
    {
      v141 = CloudServicesLog();
      v8 = v187;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        sub_10004A8D0();
      }

      [v187 setObject:&__kCFBooleanFalse forKeyedSubscript:v116];
    }

LABEL_190:
    (*(*(v92 + 56) + 16))();
    goto LABEL_191;
  }

  v122 = kSecureBackupRecordStatusKey;
  v123 = [v187 objectForKeyedSubscript:kSecureBackupRecordStatusKey];
  v124 = v123;
  if (v123 == kSecureBackupRecordStatusValid)
  {
  }

  else
  {
    v125 = [v15 count];

    if (!v125)
    {
      goto LABEL_158;
    }
  }

  v142 = CloudServicesLog();
  if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "account uses escrow", buf, 2u);
  }

  v8 = v187;
  [v187 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupUsesRandomPassphraseKey];
  [v187 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupRecoveryRequiresVerificationTokenKey];
  [v187 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupAccountIsHighSecurityKey];
  v143 = [v187 objectForKeyedSubscript:v122];

  if (!v143)
  {
    goto LABEL_190;
  }

  v144 = CloudServicesLog();
  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "calling listSMSTargets: in daemon", buf, 2u);
  }

  v145 = *(v92 + 48);
  v146 = *(v92 + 32);
  v211[0] = _NSConcreteStackBlock;
  v211[1] = 3221225472;
  v211[2] = sub_100018FC4;
  v211[3] = &unk_100075400;
  v147 = v187;
  v148 = *(v92 + 40);
  v212 = v147;
  v213 = v148;
  v214 = *(v92 + 56);
  [v145 listSMSTargetsWithRequest:v146 completionBlock:v211];

LABEL_191:
LABEL_192:
  v6 = v153;

LABEL_193:
}

void sub_100018FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "listSMSTargets: came back", &v19, 2u);
  }

  if (v6)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService listSMSTargetsWithRequest: returned %@", &v19, 0xCu);
    }
  }

  v9 = [v5 objectForKeyedSubscript:@"EscrowServiceSMSTargetInfo"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"challengeDevices"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:kSecureBackupSMSTargetInfoKey];
    }

    v13 = [v10 objectForKeyedSubscript:@"isHSAEnabled"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &__kCFBooleanFalse;
    }

    [*(a1 + 32) setObject:v15 forKeyedSubscript:kSecureBackupAccountIsHighSecurityKey];
    if ([*(a1 + 40) forceICDP])
    {
      [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupRecoveryRequiresVerificationTokenKey];
    }

    else
    {
      v16 = [v10 objectForKeyedSubscript:@"recoveryRequiresChallengeCode"];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = &__kCFBooleanFalse;
      }

      [*(a1 + 32) setObject:v18 forKeyedSubscript:kSecureBackupRecoveryRequiresVerificationTokenKey];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100019400(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest: in daemon came back", buf, 2u);
  }

  if (!v6)
  {
    v35 = a1;
    v11 = objc_alloc_init(CSStingrayAccountStatus);
    v36 = v5;
    v12 = [v5 objectForKeyedSubscript:@"EscrowServiceAccountInfo"];
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 count];
      *buf = 134217984;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "got %lu records", buf, 0xCu);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (!v16)
    {
LABEL_48:

      (*(*(v35 + 32) + 16))();
      v6 = 0;
      v5 = v36;
      goto LABEL_49;
    }

    v17 = v16;
    v18 = *v42;
    v19 = kEscrowServiceRecordLabelKey;
    v20 = kEscrowServiceStingrayLabel;
    v37 = kEscrowServiceGuitarfishTokenLabel;
    v38 = kEscrowServiceGuitarfishLabel;
LABEL_13:
    v21 = 0;
    while (1)
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v41 + 1) + 8 * v21);
      v23 = [v22 objectForKeyedSubscript:{v19, v35}];
      if ([v23 isEqualToString:v20])
      {
        v40 = 0;
        v24 = [CSStingrayRecord parseFromAccountInfoPlist:v22 error:&v40];
        v25 = v40;
        [v11 setStingrayRecord:v24];

        if (v25)
        {
          v26 = CloudServicesLog();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
LABEL_23:

            goto LABEL_24;
          }

          *buf = 138412290;
          v47 = v25;
          v27 = v26;
          v28 = "error parsing record: %@";
LABEL_44:
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
          goto LABEL_23;
        }
      }

      else if ([v23 isEqualToString:v38])
      {
        v39 = 0;
        v29 = [CSStingrayRecord parseFromAccountInfoPlist:v22 error:&v39];
        v25 = v39;
        [v11 setGfRecord:v29];

        if (v25)
        {
          v26 = CloudServicesLog();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = 138412290;
          v47 = v25;
          v27 = v26;
          v28 = "error parsing Guitarfish record: %@";
          goto LABEL_44;
        }
      }

      else
      {
        if (([v23 isEqualToString:v37]& 1) != 0 || ([v23 isEqualToString:@"com.apple.protectedcloudstorage.record.double"]& 1) != 0)
        {
          goto LABEL_25;
        }

        if ([v23 isEqualToString:@"com.apple.securebackup.record"])
        {
          v25 = CloudServicesLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_41;
          }
        }

        else if ([v23 hasPrefix:@"com.apple.icdp.record.double"])
        {
          v25 = CloudServicesLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v23;
            v30 = v25;
            v31 = "ignoring old double enrollment record: %@";
LABEL_42:
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
          }
        }

        else if ([v23 hasPrefix:@"com.apple.icdp.record"]&& [v23 hasSuffix:@".double"])
        {
          v25 = CloudServicesLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v23;
            v30 = v25;
            v31 = "ignoring icdp record: %@";
            goto LABEL_42;
          }
        }

        else
        {
          v32 = [v23 hasPrefix:@"com.apple.icdp.record"];
          v33 = CloudServicesLog();
          v25 = v33;
          if (!v32)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = v23;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "unexpected label: %@", buf, 0xCu);
            }

            goto LABEL_24;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
LABEL_41:
            *buf = 138412290;
            v47 = v23;
            v30 = v25;
            v31 = "ignoring escrow service record: %@";
            goto LABEL_42;
          }
        }
      }

LABEL_24:

LABEL_25:
      if (v17 == ++v21)
      {
        v34 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
        v17 = v34;
        if (!v34)
        {
          goto LABEL_48;
        }

        goto LABEL_13;
      }
    }
  }

  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService getAccountInfoWithRequest: returned %@", buf, 0xCu);
  }

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 code];
    *buf = 134217984;
    v47 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "getAccountInfoWithRequest: error: %ld", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_49:
}

void sub_10001A88C(id a1)
{
  qword_100084A98 = dispatch_group_create();

  _objc_release_x1();
}

void sub_10001A8C0(uint64_t a1, void *a2)
{
  v3 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v6 = _CloudServicesSignpostLogSystem(v5);
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 67240192;
    LODWORD(v27) = v3 == 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "KVSSynchronize", " CloudServicesSignpostNameKVSSynchronize=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameKVSSynchronize}d ", buf, 8u);
  }

  v10 = _CloudServicesSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    *buf = 134218496;
    v27 = v11;
    v28 = 2048;
    v29 = Nanoseconds / 1000000000.0;
    v30 = 1026;
    v31 = v3 == 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: KVSSynchronize  CloudServicesSignpostNameKVSSynchronize=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameKVSSynchronize}d ", buf, 0x1Cu);
  }

  kdebug_trace();
  if (v3)
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004AA50();
    }

    v13 = objc_alloc_init(NSMutableDictionary);
    [v13 setObject:@"KVS synchronizeWithCompletionHandler failed" forKeyedSubscript:NSLocalizedDescriptionKey];
    [v13 setObject:v3 forKeyedSubscript:NSUnderlyingErrorKey];
    v14 = [NSError errorWithDomain:kSecureBackupErrorDomain code:32 userInfo:v13];
    v15 = [*(a1 + 32) connectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AC78;
    block[3] = &unk_100075498;
    v16 = *(a1 + 48);
    v24 = v14;
    v25 = v16;
    v17 = v14;
    dispatch_async(v15, block);
  }

  else
  {
    if (([*(a1 + 40) synchronize] & 1) == 0)
    {
      v18 = CloudServicesLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10004AAC0();
      }
    }

    v19 = CloudServicesLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "calling handler on connection queue", buf, 2u);
    }

    v20 = [*(a1 + 32) connectionQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001AC8C;
    v21[3] = &unk_1000754C0;
    v22 = *(a1 + 48);
    dispatch_async(v20, v21);

    v13 = v22;
  }

  dispatch_group_leave(qword_100084A98);
}

void sub_10001BB38(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_10001C3EC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) kvs];
    if (v6)
    {
      v7 = CloudServicesLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "calling synchronizeWithCompletionHandler", buf, 2u);
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001C5F4;
      v16[3] = &unk_1000753D8;
      v17 = *(a1 + 32);
      [v6 synchronizeWithCompletionHandler:v16];
    }

    else
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      [v12 setObject:@"KVS not available" forKeyedSubscript:NSLocalizedDescriptionKey];
      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      dispatch_semaphore_signal(*(a1 + 32));
    }
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004AEB4();
    }

    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v9 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v6];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_10001C5F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004AF24();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001E1A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004B1BC();
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [v3 name];
    [v5 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];

    v7 = [v3 reason];
    [v5 setObject:v7 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v5];
    (*(v2 + 16))(v2, v8);

    objc_end_catch();
    JUMPOUT(0x10001E064);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001E3B0(uint64_t a1, void *a2)
{
  v3 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v6 = _CloudServicesSignpostLogSystem(v5);
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = [v3 domain];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1000767A0;
    }

    v22 = 138543618;
    v23 = v11;
    v24 = 1026;
    LODWORD(v25) = [v3 code];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "EnableWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x12u);
  }

  v13 = _CloudServicesSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 56);
    v15 = Nanoseconds / 1000000000.0;
    v16 = [v3 domain];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &stru_1000767A0;
    }

    v19 = [v3 code];
    v22 = 134218754;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    v26 = 2114;
    v27 = v18;
    v28 = 1026;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: EnableWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x26u);
  }

  v20 = [*(a1 + 32) operationsLogger];
  v21 = [*(a1 + 40) endEventWithResults:&__NSDictionary0__struct error:v3];
  [v20 updateStoreWithEvent:v21];

  (*(*(a1 + 48) + 16))();
}

id sub_10001F050()
{
  v0 = sub_1000328A4();
  v1 = [v0 mutableCopy];

  [v1 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  result = 0;
  if (SecItemCopyMatching(v1, &result))
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10004B3B8();
    }
  }

  v3 = result;

  return v3;
}

void sub_10001F48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F4C0(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 count];
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "s";
      v10 = 138412802;
      v11 = v5;
      if (v7 == 1)
      {
        v9 = "";
      }

      v12 = 2048;
      v13 = v7;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: %ld item%s", &v10, 0x20u);
    }
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004B468();
    }
  }
}

void sub_10001F5FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CloudServicesAnalytics logger];
  v5 = CloudServicesAnalyticsRestoreBackupName;
  v6 = *(a1 + 32);
  v16 = @"view";
  v17 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v4 logResultForEvent:v5 hardFailure:1 result:v3 withAttributes:v7];

  v8 = CloudServicesLog();
  v9 = v8;
  if (v3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004B4D8();
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:v3 forKeyedSubscript:NSUnderlyingErrorKey];
    v10 = [NSError errorWithDomain:kSecureBackupErrorDomain code:19 userInfo:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecItemBackupRestore for view %@ succeeded", &v14, 0xCu);
  }
}

void sub_10001F948(id a1)
{
  v1 = qword_100084AA0;
  qword_100084AA0 = &off_10007A4A0;

  v4 = [&off_10007A4A0 allKeys];
  v2 = [v4 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = qword_100084AA8;
  qword_100084AA8 = v2;
}

void sub_10001FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001FE70(uint64_t a1)
{
  v2 = [*(a1 + 32) currentViews];
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "currentViews: %@", buf, 0xCu);
  }

  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) hexString];
    *buf = 138412290;
    v41 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restoring view-based backup for keybag digest %@", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v2;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v34;
    *&v8 = 138412290;
    v32 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        if ([*(a1 + 48) containsObject:v12])
        {
          v14 = CloudServicesLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v32;
            v41 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "skipping %@", buf, 0xCu);
          }
        }

        else
        {
          *(*(*(a1 + 80) + 8) + 24) |= [*(a1 + 32) _restoreView:v12 password:*(a1 + 56) keybagDigest:*(a1 + 40) restoredViews:*(a1 + 64) error:0];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v9);
  }

  v15 = CloudServicesLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 64);
    *buf = 138412290;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "restoredViews (async): %@", buf, 0xCu);
  }

  if (sub_1000029CC(v17, v18))
  {
    v19 = +[NSMutableDictionary dictionary];
    v20 = [*(a1 + 32) encodedStatsForViews:*(a1 + 64)];
    [v19 setObject:v20 forKeyedSubscript:@"views"];

    v21 = +[CloudServicesAnalytics logger];
    [v21 logSoftFailureForEventNamed:CloudServicesSOSRestoreMetrics withAttributes:v19];
  }

  if (*(*(*(a1 + 80) + 8) + 24))
  {
    [*(a1 + 32) setNeedInitialBackup:1];
    v22 = *(a1 + 32);
    v23 = [v22 circleChangedNotification];
    [v22 registerForNotifyEvent:v23];
LABEL_43:

    goto LABEL_44;
  }

  v24 = CloudServicesLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_10004B568();
  }

  if (*(a1 + 72))
  {
    v23 = [*(a1 + 32) _getProtectedKeychainAndKeybagDigestFromKVS:0];
    if (!v23)
    {
      v25 = CloudServicesLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10004B5A4();
      }
    }

    v26 = [*(a1 + 32) derDataFromDict:{v23, v32, v33}];
    if (v26)
    {
      v27 = CloudServicesLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "restoring legacy backup", buf, 2u);
      }
    }

    else
    {
      v37 = NSLocalizedDescriptionKey;
      v38 = @"could not create DER data from dict";
      v27 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v30 = [NSError errorWithDomain:kSecureBackupErrorDomain code:19 userInfo:v27];
      v31 = CloudServicesLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10004B5E0();
      }
    }

    goto LABEL_43;
  }

  v28 = *(a1 + 88);
  v29 = CloudServicesLog();
  v23 = v29;
  if (v28 != 1)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10004B650();
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Having a bottled peer, so skipping SOS restore on this device", buf, 2u);
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
LABEL_44:
}

void sub_1000207DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10002082C(void *a1)
{
  v3 = a1 + 8;
  v2 = a1[8];
  v4 = a1[4];
  v5 = *(v3 - 3);
  v6 = *(v3 - 2);
  v7 = *(*(*(v3 - 1) + 8) + 40);
  v8 = *(v2 + 8);
  obj = *(v8 + 40);
  v9 = [v4 _restoreView:@"iCloudIdentity" password:v5 keybagDigest:v6 restoredViews:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    *(*(a1[9] + 8) + 24) = 1;
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = *(*(a1[7] + 8) + 40);
    v14 = *(a1[8] + 8);
    v17 = *(v14 + 40);
    v15 = [v10 _restoreView:@"PCS-MasterKey" password:v11 keybagDigest:v12 restoredViews:v13 error:&v17];
    objc_storeStrong((v14 + 40), v17);
    if (v15)
    {
      return;
    }

    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004B774();
    }
  }

  else
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004B700();
    }
  }
}

void sub_10002094C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentViews];
  v3 = [v2 mutableCopy];

  [v3 removeObject:@"iCloudIdentity"];
  [v3 removeObject:@"PCS-MasterKey"];
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "remaining views to restore: %@", buf, 0xCu);
  }

  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) hexString];
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "restoring view-based backup for keybag digest %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        *(*(*(a1 + 56) + 8) + 24) |= [*(a1 + 32) _restoreView:v12 password:*(a1 + 48) keybagDigest:*(a1 + 40) restoredViews:*(*(*(a1 + 64) + 8) + 40) error:{0, v16}];
        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = CloudServicesLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138412290;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "restoredViews (async): %@", buf, 0xCu);
  }
}

void sub_100020C9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"keybag"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 backupKeyDigests];
      if (![v10 count])
      {
        v11 = CloudServicesLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "backups (%@): keybag contains no backup key digests", &v12, 0xCu);
        }
      }

      [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
    }

    else
    {
      v10 = CloudServicesLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "backups (%@): missing keybag", &v12, 0xCu);
      }
    }
  }

  else
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "backups (%@): missing keychain", &v12, 0xCu);
    }
  }
}

void sub_100020FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004B7E8();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v5 objectForKeyedSubscript:kSecureBackupiCDPRecordsKey];
    if ([v9 count])
    {
      context = v8;
      v31 = v5;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v29 = v9;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v33;
        v14 = kSecureBackupRecordIDKey;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v32 + 1) + 8 * i);
            v17 = [v16 objectForKeyedSubscript:{v14, v29}];
            if (v17)
            {
              v18 = [*(a1 + 32) cachedRecordID];
              v19 = [v18 isEqualToString:v17];

              if (v19)
              {
                v23 = [v16 objectForKeyedSubscript:kSecureBackupEscrowDateKey];
                v24 = CloudServicesLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = [CSDateUtilities localStringFromDate:v23];
                  *buf = 138412546;
                  v37 = v17;
                  v38 = 2112;
                  v39 = v25;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "found preferred record: %@ from %@", buf, 0x16u);
                }

                v26 = *(a1 + 48);
                v27 = [v16 objectForKeyedSubscript:kEscrowServiceRecordMetadataKey];
                (*(v26 + 16))(v26, v17, v27, *(a1 + 56));

                objc_autoreleasePoolPop(context);
                v6 = 0;
                v5 = v31;
                goto LABEL_31;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v20 = [*(a1 + 32) secureBackups];
      if ([v20 count])
      {
        v9 = v29;
        v8 = context;
        if (_os_feature_enabled_impl())
        {
          v21 = [*(a1 + 40) sosCompatibleEscrowSorting];
        }

        else
        {
          v21 = 0;
        }

        v6 = 0;
        [v20 recordIDAndClientMetadataForSilentAttemptFromRecords:v10 passphraseLength:*(a1 + 56) platform:*(a1 + 64) sosCompatibilityModeEnabled:v21 reply:{*(a1 + 48), v29}];
        v5 = v31;
      }

      else
      {
        v28 = CloudServicesLog();
        v9 = v29;
        v8 = context;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10004B858();
        }

        (*(*(a1 + 48) + 16))();
        v6 = 0;
        v5 = v31;
      }
    }

    else
    {
      v22 = CloudServicesLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10004B894();
      }

      (*(*(a1 + 48) + 16))();
    }

    objc_autoreleasePoolPop(v8);
  }

LABEL_31:
}

void sub_100021F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(v6, v7);
  v11 = _CloudServicesSignpostLogSystem(v10);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = [(__CFString *)v5 domain];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1000767A0;
    }

    *buf = 138543618;
    v170 = v16;
    v171 = 1026;
    LODWORD(v172) = [(__CFString *)v5 code];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "RecoverRecordWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);
  }

  v18 = _CloudServicesSignpostLogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 56);
    v20 = Nanoseconds / 1000000000.0;
    v21 = [(__CFString *)v5 domain];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1000767A0;
    }

    v24 = [(__CFString *)v5 code];
    *buf = 134218754;
    v170 = v19;
    v171 = 2048;
    v172 = v20;
    v173 = 2114;
    *v174 = v23;
    *&v174[8] = 1026;
    *&v174[10] = v24;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverRecordWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x26u);
  }

  v25 = [v8 mutableCopy];
  v26 = +[CloudServicesAnalytics logger];
  [v26 logResultForEvent:CloudServicesRecoverEscrowWithRequest hardFailure:1 result:v5];

  [*(a1 + 32) uncacheRecordIDPassphrase];
  if (!v5)
  {
    v31 = [*(a1 + 40) silent];
    v32 = CloudServicesLog();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (!v33)
      {
        goto LABEL_24;
      }

      v34 = [*(a1 + 40) recordID];
      *buf = 138412290;
      v170 = v34;
      v35 = "silent attempt succeeded for record ID %@";
    }

    else
    {
      if (!v33)
      {
        goto LABEL_24;
      }

      v34 = [*(a1 + 40) recordID];
      *buf = 138412290;
      v170 = v34;
      v35 = "recovery attempt succeeded for record ID %@";
    }

    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);

LABEL_24:
    v36 = [v25 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
    v37 = [*(a1 + 40) recordID];
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = [*(a1 + 32) _KVSKeybag];
    }

    v39 = [*(a1 + 40) recordID];
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = [v38 sha1Digest];
    }

    v41 = [v36 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
    v159 = [v36 objectForKeyedSubscript:kSecureBackupBagPasswordKey];
    v163 = [v36 objectForKeyedSubscript:@"BackupVersion"];
    v162 = [v36 objectForKeyedSubscript:kSecureBackupTimestampKey];
    if (_os_feature_enabled_impl() && ([*(a1 + 40) sosCompatibleEscrowSorting] & 1) != 0)
    {
      v160 = 0;
      v161 = 0;
      v42 = 1;
    }

    else
    {
      v43 = [*(a1 + 40) metadata];
      v161 = [v43 objectForKeyedSubscript:kSecureBackupBottleIDKey];

      v44 = [*(a1 + 40) metadata];
      v160 = [v44 objectForKeyedSubscript:kSecureBackupBottleValidityKey];

      v42 = 0;
    }

    v45 = CloudServicesLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [*(a1 + 40) metadata];
      *buf = 138413058;
      v170 = v162;
      v171 = 2112;
      v172 = *&v163;
      v173 = 2112;
      *v174 = v41;
      *&v174[8] = 2112;
      *&v174[10] = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "=== Escrow record ===\nTime of escrow: %@\nEscrow version: %@\nKeybag digest: %@\nMetadata: %@", buf, 0x2Au);
    }

    v47 = [v36 objectForKeyedSubscript:@"BottledPeerEntropy"];
    if ([v163 isEqualToString:@"1"])
    {
      v48 = [*(a1 + 40) recordID];
      if (v48)
      {

LABEL_59:
        if ((v42 & 1) == 0)
        {
          if (v47 && v161 && [v160 isEqualToString:kSecureBackupRecordStatusValid])
          {
            v74 = CloudServicesLog();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = [v47 length];
              *buf = 138413058;
              v170 = v161;
              v171 = 2112;
              v172 = *&v160;
              v173 = 1024;
              *v174 = 1;
              *&v174[4] = 2048;
              *&v174[6] = v75;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "adding bottleID:%@ and validity:%@ to results; entropy present: %d (%llu bytes)", buf, 0x26u);
            }

            [v25 setObject:v161 forKeyedSubscript:kSecureBackupBottleIDKey];
            [v25 setObject:v160 forKeyedSubscript:kSecureBackupBottleValidityKey];
          }

          else
          {
            v76 = CloudServicesLog();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v77 = [v47 length];
              *buf = 138413058;
              v170 = v161;
              v171 = 2112;
              v172 = *&v160;
              v173 = 1024;
              *v174 = v47 != 0;
              *&v174[4] = 2048;
              *&v174[6] = v77;
              _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "skipping setting bottle; bottleID:%@ validity:%@ entropy present: %d (%llu bytes)", buf, 0x26u);
            }
          }
        }

        if (OctagonPlatformSupportsSOS())
        {
          v156 = v25;
          v78 = v47;
          v79 = *(a1 + 32);
          v164 = 0;
          v80 = [v79 _restoreKeychainWithBackupPassword:v159 keybagDigest:v41 error:&v164];
          v81 = v164;
          if ((v80 & 1) == 0)
          {
            v82 = CloudServicesLog();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              sub_10004B940();
            }
          }

          v83 = +[CloudServicesAnalytics logger];
          [v83 logResultForEvent:CloudServicesAnalyticsRestoreKeychainWithBackupBag hardFailure:1 result:v81];

          v47 = v78;
          v25 = v156;
        }

        v84 = _CloudServicesSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
        v86 = _CloudServicesSignpostLogSystem(v85);
        v87 = v86;
        v88 = *(a1 + 72);
        if (v88 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
        {
          v89 = [0 domain];
          v157 = v38;
          v90 = v40;
          v91 = v36;
          v92 = v25;
          v93 = v47;
          v94 = v89;
          v95 = v41;
          if (v89)
          {
            v96 = v89;
          }

          else
          {
            v96 = &stru_1000767A0;
          }

          v97 = [0 code];
          *buf = 138543618;
          v170 = v96;
          v41 = v95;
          v171 = 1026;
          LODWORD(v172) = v97;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v87, OS_SIGNPOST_INTERVAL_END, v88, "RecoverEscrowWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);

          v47 = v93;
          v25 = v92;
          v36 = v91;
          v40 = v90;
          v38 = v157;
        }

        v99 = _CloudServicesSignpostLogSystem(v98);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          v100 = v41;
          v101 = *(a1 + 72);
          v102 = v84 / 1000000000.0;
          v103 = [0 domain];
          v158 = v38;
          v104 = v40;
          v105 = v36;
          v106 = v25;
          v107 = v47;
          v108 = v103;
          if (v103)
          {
            v109 = v103;
          }

          else
          {
            v109 = &stru_1000767A0;
          }

          v110 = [0 code];
          *buf = 134218754;
          v170 = v101;
          v41 = v100;
          v171 = 2048;
          v172 = v102;
          v173 = 2114;
          *v174 = v109;
          *&v174[8] = 1026;
          *&v174[10] = v110;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverEscrowWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x26u);

          v47 = v107;
          v25 = v106;
          v36 = v105;
          v40 = v104;
          v38 = v158;
        }

        (*(*(a1 + 48) + 16))();
        v5 = 0;
        goto LABEL_87;
      }

      if ([v41 isEqual:v40])
      {
        goto LABEL_59;
      }

      v154 = v40;
      v155 = v38;
      v111 = CloudServicesLog();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        sub_10004B8D0();
      }

      v165 = NSLocalizedDescriptionKey;
      v166 = @"backup keybag digest does not match version in escrow";
      v50 = [NSDictionary dictionaryWithObjects:&v166 forKeys:&v165 count:1];
      v5 = [NSError errorWithDomain:kSecureBackupErrorDomain code:21 userInfo:v50];
      v112 = _CloudServicesSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
      v114 = _CloudServicesSignpostLogSystem(v113);
      v115 = v114;
      v116 = *(a1 + 72);
      if (v116 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v114))
      {
        v117 = [(__CFString *)v5 domain];
        v153 = v36;
        v118 = v25;
        v119 = v47;
        v120 = v117;
        v121 = v41;
        if (v117)
        {
          v122 = v117;
        }

        else
        {
          v122 = &stru_1000767A0;
        }

        v123 = [(__CFString *)v5 code];
        *buf = 138543618;
        v170 = v122;
        v41 = v121;
        v171 = 1026;
        LODWORD(v172) = v123;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, OS_SIGNPOST_INTERVAL_END, v116, "RecoverEscrowWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);

        v47 = v119;
        v25 = v118;
        v36 = v153;
      }

      v64 = _CloudServicesSignpostLogSystem(v124);
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
LABEL_55:

        (*(*(a1 + 48) + 16))();
        v40 = v154;
        v38 = v155;
LABEL_87:

        goto LABEL_118;
      }

      v125 = v41;
      v126 = *(a1 + 72);
      v127 = v112 / 1000000000.0;
      v128 = [(__CFString *)v5 domain];
      v152 = v36;
      v69 = v25;
      v70 = v47;
      v71 = v128;
      if (v128)
      {
        v129 = v128;
      }

      else
      {
        v129 = &stru_1000767A0;
      }

      v130 = [(__CFString *)v5 code];
      *buf = 134218754;
      v170 = v126;
      v41 = v125;
      v171 = 2048;
      v172 = v127;
      v173 = 2114;
      *v174 = v129;
      *&v174[8] = 1026;
      *&v174[10] = v130;
    }

    else
    {
      v154 = v40;
      v155 = v38;
      v49 = CloudServicesLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "backup data version does not match version in escrow", buf, 2u);
      }

      v167 = NSLocalizedDescriptionKey;
      v168 = @"backup data version does not match version in escrow";
      v50 = [NSDictionary dictionaryWithObjects:&v168 forKeys:&v167 count:1];
      v5 = [NSError errorWithDomain:kSecureBackupErrorDomain code:3 userInfo:v50];
      v51 = _CloudServicesSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
      v53 = _CloudServicesSignpostLogSystem(v52);
      v54 = v53;
      v55 = *(a1 + 72);
      if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
      {
        v56 = [(__CFString *)v5 domain];
        v151 = v36;
        v57 = v25;
        v58 = v47;
        v59 = v56;
        v60 = v41;
        if (v56)
        {
          v61 = v56;
        }

        else
        {
          v61 = &stru_1000767A0;
        }

        v62 = [(__CFString *)v5 code];
        *buf = 138543618;
        v170 = v61;
        v41 = v60;
        v171 = 1026;
        LODWORD(v172) = v62;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, v55, "RecoverEscrowWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);

        v47 = v58;
        v25 = v57;
        v36 = v151;
      }

      v64 = _CloudServicesSignpostLogSystem(v63);
      if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      v65 = v41;
      v66 = *(a1 + 72);
      v67 = v51 / 1000000000.0;
      v68 = [(__CFString *)v5 domain];
      v152 = v36;
      v69 = v25;
      v70 = v47;
      v71 = v68;
      if (v68)
      {
        v72 = v68;
      }

      else
      {
        v72 = &stru_1000767A0;
      }

      v73 = [(__CFString *)v5 code];
      *buf = 134218754;
      v170 = v66;
      v41 = v65;
      v171 = 2048;
      v172 = v67;
      v173 = 2114;
      *v174 = v72;
      *&v174[8] = 1026;
      *&v174[10] = v73;
    }

    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverEscrowWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x26u);

    v47 = v70;
    v25 = v69;
    v36 = v152;
    goto LABEL_55;
  }

  v27 = CloudServicesLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v170 = v5;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "escrowService recoverRecordWithRequest: returned: %@", buf, 0xCu);
  }

  v28 = [(__CFString *)v5 domain];
  v29 = [v28 isEqualToString:kEscrowServiceErrorDomain];

  if (!v29)
  {
    goto LABEL_106;
  }

  if ([(__CFString *)v5 code]== -4005)
  {
    v30 = 25;
  }

  else if ([(__CFString *)v5 code]== -6015)
  {
    v30 = 26;
  }

  else if ([(__CFString *)v5 code]== -6012)
  {
    v30 = 13;
  }

  else if ([(__CFString *)v5 code]== -6014)
  {
    v30 = 14;
  }

  else
  {
    if ([(__CFString *)v5 code]!= -4010)
    {
      goto LABEL_106;
    }

    v30 = 33;
  }

  v131 = kSecureBackupErrorDomain;
  v132 = [(__CFString *)v5 userInfo];
  v133 = [NSError errorWithDomain:v131 code:v30 userInfo:v132];

  v5 = v133;
LABEL_106:
  v134 = _CloudServicesSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v136 = _CloudServicesSignpostLogSystem(v135);
  v137 = v136;
  v138 = *(a1 + 72);
  if (v138 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v136))
  {
    v139 = [(__CFString *)v5 domain];
    v140 = v139;
    if (v139)
    {
      v141 = v139;
    }

    else
    {
      v141 = &stru_1000767A0;
    }

    v142 = [(__CFString *)v5 code];
    *buf = 138543618;
    v170 = v141;
    v171 = 1026;
    LODWORD(v172) = v142;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v137, OS_SIGNPOST_INTERVAL_END, v138, "RecoverEscrowWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x12u);
  }

  v144 = _CloudServicesSignpostLogSystem(v143);
  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    v145 = *(a1 + 72);
    v146 = v134 / 1000000000.0;
    v147 = [(__CFString *)v5 domain];
    v148 = v147;
    if (v147)
    {
      v149 = v147;
    }

    else
    {
      v149 = &stru_1000767A0;
    }

    v150 = [(__CFString *)v5 code];
    *buf = 134218754;
    v170 = v145;
    v171 = 2048;
    v172 = v146;
    v173 = 2114;
    *v174 = v149;
    *&v174[8] = 1026;
    *&v174[10] = v150;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecoverEscrowWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x26u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_118:
}

void sub_100024CB8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  _Block_object_dispose((v18 - 160), 8);
  if (a2 == 1)
  {
    v21 = objc_begin_catch(a1);
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v21 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004BB40();
    }

    v23 = objc_alloc_init(NSMutableDictionary);
    v24 = [v21 name];
    [v23 setObject:v24 forKeyedSubscript:NSLocalizedDescriptionKey];

    v25 = [v21 reason];
    [v23 setObject:v25 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v26 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v23];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a18 success:0 error:v26];
    (*(a17 + 16))(a17, 0, v26);

    objc_end_catch();
    JUMPOUT(0x100024B50);
  }

  _Unwind_Resume(a1);
}

void sub_100024E84(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v11 = NSLocalizedDescriptionKey;
      v12 = @"recoverEscrowWithRequest failed, didn't return status dictionary";
      v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:47 userInfo:v8];
    }

    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:0 error:v7];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:0 error:v7];
  }

  else
  {
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:1 error:0];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:1 error:0];
    v7 = 0;
  }

  (*(a1[6] + 16))();
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100024FF8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:*(a1 + 32) success:1 error:0];
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "found record ID to use! :%@", buf, 0xCu);
    }

    [*(a1 + 48) setRecordID:v7];
    v10 = [OTEscrowTranslation metadataToDictionary:v8];
    [*(a1 + 48) setMetadata:v10];

    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 48) metadata];
      *buf = 138412290;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "using metadata :%@", buf, 0xCu);
    }

    v13 = [*(a1 + 56) cachedRecordID];
    v14 = [v13 isEqualToString:v7];

    if (v14)
    {
      v15 = [*(a1 + 56) cachedRecordIDPassphrase];
      [*(a1 + 48) setPassphrase:v15];
    }

    else
    {
      v15 = [*(a1 + 48) passphrase];
      v19 = [v15 substringToIndex:a4];
      [*(a1 + 48) setPassphrase:v19];
    }

    LOBYTE(v25) = 1;
    v20 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:*(a1 + 64) flowID:*(a1 + 72) deviceSessionID:*(a1 + 80) eventName:@"com.apple.sbd.recoverEscrowWithRequest" testsAreEnabled:0 canSendMetrics:v25 category:&off_10007A488];
    v22 = *(a1 + 48);
    v21 = *(a1 + 56);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000253B0;
    v26[3] = &unk_100075750;
    v27 = v20;
    v28 = *(a1 + 40);
    v23 = *(a1 + 88);
    v24 = *(a1 + 96);
    v29 = v23;
    v30 = v24;
    v17 = v20;
    [v21 recoverEscrowWithRequest:v22 reply:v26];

    v18 = v27;
  }

  else
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB90();
    }

    v33 = NSLocalizedDescriptionKey;
    v34 = @"silent attempt failed: no valid record found";
    v17 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v18 = [NSError errorWithDomain:kSecureBackupErrorDomain code:43 userInfo:v17];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:*(a1 + 32) success:0 error:v18];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:*(a1 + 40) success:0 error:v18];
    (*(*(a1 + 88) + 16))();
  }
}

void sub_1000253B0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v11 = NSLocalizedDescriptionKey;
      v12 = @"recoverEscrowWithRequest failed, didn't return status dictionary";
      v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:47 userInfo:v8];
    }

    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:0 error:v7];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:0 error:v7];
  }

  else
  {
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:1 error:0];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:1 error:0];
    v7 = 0;
  }

  (*(a1[6] + 16))();
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_100025524(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v9 = NSLocalizedDescriptionKey;
      v10 = @"recoverWithRequest failed, didn't return result dictionary";
      v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:47 userInfo:v8];
    }

    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:0 error:v7];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:0 error:v7];
  }

  else
  {
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[4] success:1 error:0];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:a1[5] success:1 error:0];
    v7 = 0;
  }

  (*(a1[6] + 16))();
}

void sub_100025AA8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v24 = objc_begin_catch(a1);
    v25 = CloudServicesLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [v24 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004BC08();
    }

    v26 = objc_alloc_init(NSMutableDictionary);
    v27 = [v24 name];
    [v26 setObject:v27 forKeyedSubscript:NSLocalizedDescriptionKey];

    v28 = [v24 reason];
    [v26 setObject:v28 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v29 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v26];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v21 success:0 error:v29];
    (*(v20 + 16))(v20, 0, v29);

    objc_end_catch();
    JUMPOUT(0x100025A40);
  }

  _Unwind_Resume(a1);
}

void sub_100025C1C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Failed to recover escrow record";
      v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v7 = [NSError errorWithDomain:kSecureBackupErrorDomain code:47 userInfo:v11];
    }

    v8 = a1[4];
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v8 = a1[4];
    v9 = 1;
    v10 = 0;
  }

  [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v8 success:v9 error:v10];
  (*(a1[5] + 16))();
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_100025F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v12 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004BC94();
    }

    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = [v12 name];
    [v14 setObject:v15 forKeyedSubscript:NSLocalizedDescriptionKey];

    v16 = [v12 reason];
    [v14 setObject:v16 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v17 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v14];
    (*(v11 + 16))(v11, v17);

    objc_end_catch();
    JUMPOUT(0x100025ED4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100027370(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004C014();
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [v3 name];
    [v5 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];

    v7 = [v3 reason];
    [v5 setObject:v7 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v5];
    (*(v2 + 16))(v2, 0, v8);

    objc_end_catch();
    JUMPOUT(0x10002626CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002759C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:NSPOSIXErrorDomain])
    {
      v6 = [v4 code];

      if (v6 == 22)
      {
        v7 = CloudServicesLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ignoring EINVAL from synchronizeWithCompletionHandler", buf, 2u);
        }

        goto LABEL_7;
      }
    }

    else
    {
    }

    (*(*(a1 + 72) + 16))();
    goto LABEL_29;
  }

LABEL_7:
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) hexString];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [CSDateUtilities localStringFromDate:*(a1 + 40)];
    }

    else
    {
      v11 = @"unknown timestamp";
    }

    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "looking for EMCS backup for stashed keybag digest %@ from %@", buf, 0x16u);
    if (v10)
    {
    }
  }

  v12 = [*(a1 + 48) _EMCSBackupDictForKeybagDigest:*(a1 + 32)];
  if (v12)
  {
    v13 = [*(a1 + 48) restoreEMCSBackup:v12 withPassword:*(a1 + 56)];
  }

  else
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004C064((a1 + 32));
    }

    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = [NSString alloc];
    v17 = [*(a1 + 32) hexString];
    v18 = [v16 initWithFormat:@"no backup found for stashed keybag digest %@", v17];
    [v15 setObject:v18 forKeyedSubscript:NSLocalizedDescriptionKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v15];

    v4 = v15;
  }

  if (v13)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    [*(a1 + 48) setBackupAllowed:1];
    if (*(a1 + 32))
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v27 = sub_1000109EC;
      v28 = sub_1000109FC;
      v29 = os_transaction_create();
      (*(*(a1 + 72) + 16))();
      if (*(a1 + 80) == 1)
      {
        v19 = *(a1 + 48);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100027A50;
        v23[3] = &unk_1000757F0;
        v23[4] = buf;
        [v19 backupWithInfo:0 garbageCollect:1 reply:v23];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = [*(a1 + 64) objectForKeyedSubscript:@"stashedEMCSDict"];
      v21 = sub_10001F050();
      v22 = *(a1 + 48);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100027A38;
      v24[3] = &unk_1000757C8;
      v25 = *(a1 + 72);
      [v22 setEMCSDict:v20 backupKeybag:v21 saveKeybag:0 reply:v24];
    }
  }

  v4 = v13;
LABEL_29:
}

void sub_100027A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027A50(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100027A94(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = a2;
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService iDMS recoverRecordWithRequest: returned: %@", buf, 0xCu);
    }

    v9 = [v6 userInfo];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [v7 objectForKeyedSubscript:@"coolOffEnd"];
    v12 = [v7 objectForKeyedSubscript:@"recoveryStatus"];

    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:kSecureBackupCoolOffEndKey];
    }

    if (v12)
    {
      [v10 setObject:v12 forKeyedSubscript:kSecureBackupRecoveryStatusKey];
    }

    v13 = [v6 domain];
    v14 = [v13 isEqualToString:kEscrowServiceErrorDomain];

    if (!v14)
    {
      goto LABEL_42;
    }

    v15 = [v6 code];
    v16 = kSecureBackupErrorDomain;
    v17 = [v6 code];
    if (v17 > -4018)
    {
      if (v17 > -4011)
      {
        if (v17 == -4010)
        {
          v15 = 33;
          goto LABEL_41;
        }

        if (v17 == -4005)
        {
          v15 = 25;
          goto LABEL_41;
        }
      }

      else
      {
        if (v17 == -4017)
        {
          v15 = 35;
          goto LABEL_41;
        }

        if (v17 == -4015)
        {
          v15 = 34;
          goto LABEL_41;
        }
      }
    }

    else if (v17 > -6013)
    {
      if (v17 == -6012)
      {
        v15 = 13;
        goto LABEL_41;
      }

      if (v17 == -6005)
      {
        v15 = 30;
        goto LABEL_41;
      }
    }

    else
    {
      if (v17 == -6015)
      {
        v15 = 26;
        goto LABEL_41;
      }

      if (v17 == -6014)
      {
        v15 = 14;
LABEL_41:
        v32 = [[NSError alloc] initWithDomain:v16 code:v15 userInfo:v10];

        v6 = v32;
LABEL_42:
        (*(*(a1 + 48) + 16))();
        goto LABEL_43;
      }
    }

    v31 = [v6 domain];

    v16 = v31;
    goto LABEL_41;
  }

  v18 = kEscrowServiceRecordDataKey;
  v19 = a2;
  v10 = [v19 objectForKeyedSubscript:v18];

  v11 = [v10 objectForKeyedSubscript:@"BackupVersion"];
  v20 = kSecureBackupTimestampKey;
  v12 = [v10 objectForKeyedSubscript:kSecureBackupTimestampKey];
  v21 = kSecureBackupIDMSDataKey;
  v22 = [v10 objectForKeyedSubscript:kSecureBackupIDMSDataKey];
  v23 = CloudServicesLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v12;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=== Escrow record ===\nTime of escrow: %@\nEscrow version: %@", buf, 0x16u);
  }

  if ([v11 isEqualToString:@"1"])
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    [v24 setObject:v22 forKeyedSubscript:v21];
    [v24 setObject:v12 forKeyedSubscript:v20];
    v25 = CloudServicesLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 32) recordID];
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "caching recordID %@", buf, 0xCu);
    }

    v27 = *(a1 + 40);
    v28 = [*(a1 + 32) passphrase];
    [v27 setCachedRecordIDPassphrase:v28];

    v29 = [*(a1 + 32) recordID];
    [*(a1 + 40) setCachedRecordID:v29];

    (*(*(a1 + 48) + 16))();
    v6 = 0;
  }

  else
  {
    v30 = CloudServicesLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "backup data version does not match version in escrow", buf, 2u);
    }

    v33 = NSLocalizedDescriptionKey;
    v34 = @"backup data version does not match version in escrow";
    v24 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v6 = [NSError errorWithDomain:kSecureBackupErrorDomain code:3 userInfo:v24];
    (*(*(a1 + 48) + 16))();
  }

LABEL_43:
}

void sub_100028018(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "escrowService iDMS recoverRecordWithRequest: returned: %@", &v21, 0xCu);
    }

    v9 = [v5 userInfo];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [v6 objectForKeyedSubscript:@"coolOffEnd"];
    v12 = [v6 objectForKeyedSubscript:@"recoveryStatus"];

    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:kSecureBackupCoolOffEndKey];
    }

    if (v12)
    {
      [v10 setObject:v12 forKeyedSubscript:kSecureBackupRecoveryStatusKey];
    }

    v13 = [v5 domain];
    v14 = [v13 isEqualToString:kEscrowServiceErrorDomain];

    if (!v14)
    {
      goto LABEL_35;
    }

    v15 = [v5 code];
    v16 = kSecureBackupErrorDomain;
    v17 = [v5 code];
    if (v17 > -4018)
    {
      if (v17 > -4011)
      {
        if (v17 == -4010)
        {
          v15 = 33;
          goto LABEL_34;
        }

        if (v17 == -4005)
        {
          v15 = 25;
          goto LABEL_34;
        }
      }

      else
      {
        if (v17 == -4017)
        {
          v15 = 35;
          goto LABEL_34;
        }

        if (v17 == -4015)
        {
          v15 = 34;
          goto LABEL_34;
        }
      }
    }

    else if (v17 > -6013)
    {
      if (v17 == -6012)
      {
        v15 = 13;
        goto LABEL_34;
      }

      if (v17 == -6005)
      {
        v15 = 30;
        goto LABEL_34;
      }
    }

    else
    {
      if (v17 == -6015)
      {
        v15 = 26;
        goto LABEL_34;
      }

      if (v17 == -6014)
      {
        v15 = 14;
LABEL_34:
        v20 = [[NSError alloc] initWithDomain:v16 code:v15 userInfo:v10];

        v5 = v20;
LABEL_35:
        (*(*(a1 + 32) + 16))();

        goto LABEL_36;
      }
    }

    v19 = [v5 domain];

    v16 = v19;
    goto LABEL_34;
  }

  if (v8)
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMiP recovery attempt successful", &v21, 2u);
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v18 = [v6 objectForKeyedSubscript:@"EscrowServiceFMiPData"];

  [v5 setObject:v18 forKeyedSubscript:kSecureBackupFMiPDataKey];
  (*(*(a1 + 32) + 16))();
LABEL_36:
}

void sub_10002838C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsRecoverRequest hardFailure:1 result:v6];

  if (v6)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService stingray recoverRecordWithRequest: returned: %@", buf, 0xCu);
    }

    v9 = [v6 domain];
    v10 = [v9 isEqualToString:kEscrowServiceErrorDomain];

    if (!v10)
    {
      goto LABEL_26;
    }

    if ([v6 code] == -4005)
    {
      v11 = 25;
    }

    else if ([v6 code] == -6015)
    {
      v11 = 26;
    }

    else if ([v6 code] == -6005)
    {
      v11 = 30;
    }

    else if ([v6 code] == -6012)
    {
      v11 = 13;
    }

    else if ([v6 code] == -6014)
    {
      v11 = 14;
    }

    else
    {
      if ([v6 code] != -4010)
      {
LABEL_26:
        (*(*(a1 + 32) + 16))();
        goto LABEL_27;
      }

      v11 = 33;
    }

    v24 = kSecureBackupErrorDomain;
    v25 = [v6 userInfo];
    v26 = [NSError errorWithDomain:v24 code:v11 userInfo:v25];

    v6 = v26;
    goto LABEL_26;
  }

  v28 = a1;
  v12 = [v5 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
  v13 = kSecureBackupKeybagSHA256Key;
  v14 = [v12 objectForKeyedSubscript:kSecureBackupKeybagSHA256Key];
  v15 = kSecureBackupKeybagDigestKey;
  v16 = [v12 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
  v27 = [v12 objectForKeyedSubscript:kSecureBackupBagPasswordKey];
  v17 = [v12 objectForKeyedSubscript:@"BackupVersion"];
  v18 = kSecureBackupTimestampKey;
  v19 = [v12 objectForKeyedSubscript:kSecureBackupTimestampKey];
  v20 = CloudServicesLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v32 = v19;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=== Escrow record ===\nTime of escrow: %@\nEscrow version: %@\nKeybag SHA256: %@\nKeybag digest: %@", buf, 0x2Au);
  }

  if ([v17 isEqualToString:@"1"])
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    [v21 setObject:v14 forKeyedSubscript:v13];
    [v21 setObject:v16 forKeyedSubscript:v15];
    v22 = v27;
    [v21 setObject:v27 forKeyedSubscript:kSecureBackupiCloudIdentityDataKey];
    [v21 setObject:v17 forKeyedSubscript:@"BackupVersion"];
    [v21 setObject:v19 forKeyedSubscript:v18];
    (*(*(v28 + 32) + 16))();
    v6 = 0;
  }

  else
  {
    v23 = CloudServicesLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "backup data version does not match version in escrow", buf, 2u);
    }

    v29 = NSLocalizedDescriptionKey;
    v30 = @"backup data version does not match version in escrow";
    v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v6 = [NSError errorWithDomain:kSecureBackupErrorDomain code:3 userInfo:v21];
    (*(*(v28 + 32) + 16))();
    v22 = v27;
  }

LABEL_27:
}

void sub_100028870(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    [*(a1 + 32) setRecordID:v7];
    [*(a1 + 32) setMetadata:v8];
    v9 = [*(a1 + 40) cachedRecordID];
    v10 = [v9 isEqualToString:v7];

    if (v10)
    {
      v11 = [*(a1 + 40) cachedRecordIDPassphrase];
      [*(a1 + 32) setPassphrase:v11];
    }

    else
    {
      v11 = [*(a1 + 32) passphrase];
      v15 = [v11 substringToIndex:a4];
      [*(a1 + 32) setPassphrase:v15];
    }

    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100028AA0;
    v20[3] = &unk_100075868;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v21 = v18;
    v22 = v19;
    [v16 recoverEscrowWithRequest:v17 reply:v20];
    v13 = v21;
  }

  else
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004C0F8();
    }

    v23 = NSLocalizedDescriptionKey;
    v24 = @"silent attempt failed: no valid record found";
    v13 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [NSError errorWithDomain:kSecureBackupErrorDomain code:43 userInfo:v13];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100028AA0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100028AF0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100028C30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_100028DCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_100028FAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_100029148(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_100029328(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_10002971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100029758(uint64_t a1)
{
  v2 = objc_alloc_init(NSDate);
  v3 = *(a1 + 32);
  v4 = [v3 kvs];
  v5 = [v3 _getICDPBackupFromKVS:v4 forView:@"iCloudIdentity"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 objectForKeyedSubscript:kSecureBackupTimestampKey];
      *buf = 138412546;
      v48 = @"iCloudIdentity";
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);
    }

    if (v6)
    {
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = @"iCloudIdentity";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "about to remove recovery key from backup view %@", buf, 0xCu);
      }

      v10 = [v6 objectForKeyedSubscript:@"keybag"];
      v11 = [v6 objectForKeyedSubscript:@"backup"];
      v12 = v11;
      if (v10 && v11)
      {
        v13 = *(a1 + 32);
        v14 = *(*(a1 + 40) + 8);
        obj = *(v14 + 40);
        v15 = [v13 removeRKFromKeyBag:v10 error:&obj];
        objc_storeStrong((v14 + 40), obj);
        if (v15 && !*(*(*(a1 + 40) + 8) + 40))
        {
          goto LABEL_14;
        }

        v16 = CloudServicesLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10004C22C();
        }

        if (v15)
        {
LABEL_14:
          *(*(*(a1 + 48) + 8) + 24) = 1;
          v43 = [v6 mutableCopy];
          [v43 setObject:v15 forKeyedSubscript:@"keybag"];
          v17 = [v5 mutableCopy];
          [v17 setObject:v43 forKeyedSubscript:@"com.apple.securebackup.keychain"];
          [v17 setObject:v2 forKeyedSubscript:kSecureBackupTimestampKey];
          v18 = [[NSString alloc] initWithFormat:@"%@.%@-tomb", @"com.apple.icdp.backup", @"iCloudIdentity"];
          [*(a1 + 32) kvs];
          v19 = v15;
          v21 = v20 = v2;
          [v21 setObject:v17 forKey:v18];

          v2 = v20;
          v15 = v19;
        }
      }
    }
  }

  v22 = *(a1 + 32);
  v23 = [v22 kvs];
  v24 = [v22 _getICDPBackupFromKVS:v23 forView:@"PCS-MasterKey"];

  if (v24)
  {
    v25 = [v24 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
    v26 = CloudServicesLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v24 objectForKeyedSubscript:kSecureBackupTimestampKey];
      *buf = 138412546;
      v48 = @"PCS-MasterKey";
      v49 = 2112;
      v50 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);
    }

    if (v25)
    {
      v28 = CloudServicesLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = @"PCS-MasterKey";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "about to remove recovery key from backup view %@", buf, 0xCu);
      }

      v29 = [v25 objectForKeyedSubscript:@"keybag"];
      v30 = [v25 objectForKeyedSubscript:@"backup"];
      v31 = v30;
      if (v29 && v30)
      {
        v32 = *(a1 + 32);
        v45 = 0;
        v33 = [v32 removeRKFromKeyBag:v29 error:&v45];
        v34 = v45;
        v44 = v34;
        if (v33 && !v34)
        {
          goto LABEL_31;
        }

        v35 = CloudServicesLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10004C2A0();
        }

        v36 = v44;
        if (v33)
        {
LABEL_31:
          *(*(*(a1 + 56) + 8) + 24) = 1;
          v37 = [v25 mutableCopy];
          [v37 setObject:v33 forKeyedSubscript:@"keybag"];
          v42 = v33;
          v38 = v2;
          v39 = [v24 mutableCopy];
          [v39 setObject:v37 forKeyedSubscript:@"com.apple.securebackup.keychain"];
          [v39 setObject:v38 forKeyedSubscript:kSecureBackupTimestampKey];
          v40 = [[NSString alloc] initWithFormat:@"%@.%@-tomb", @"com.apple.icdp.backup", @"PCS-MasterKey"];
          v41 = [*(a1 + 32) kvs];
          [v41 setObject:v39 forKey:v40];

          v2 = v38;
          v33 = v42;

          v36 = v44;
        }
      }
    }
  }
}

void sub_10002A068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A0AC(uint64_t a1)
{
  v2 = [*(a1 + 32) dataUsingEncoding:4];
  v3 = *(a1 + 40);
  v4 = [v3 kvs];
  v5 = [v3 _getICDPBackupFromKVS:v4 forView:@"iCloudIdentity"];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 objectForKeyedSubscript:kSecureBackupTimestampKey];
      *buf = 138412546;
      v36 = @"iCloudIdentity";
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);
    }

    if (v6)
    {
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = @"iCloudIdentity";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "verifying rk against backup view %@", buf, 0xCu);
      }

      v10 = [v6 objectForKeyedSubscript:@"keybag"];
      v11 = [v6 objectForKeyedSubscript:@"backup"];
      v12 = v11;
      if (v10 && v11)
      {
        v13 = *(a1 + 40);
        v34 = 0;
        v14 = [v13 verifyRKWithKeyBag:v10 password:v2 error:&v34];
        v15 = v34;
        v16 = v34;
        *(*(*(a1 + 48) + 8) + 24) = v14;
        if (v16)
        {
          v17 = CloudServicesLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10004C34C();
          }

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
        }
      }
    }
  }

  v18 = *(a1 + 40);
  v19 = [v18 kvs];
  v20 = [v18 _getICDPBackupFromKVS:v19 forView:@"PCS-MasterKey"];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v20 objectForKeyedSubscript:kSecureBackupTimestampKey];
      *buf = 138412546;
      v36 = @"PCS-MasterKey";
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);
    }

    if (v21)
    {
      v24 = CloudServicesLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = @"PCS-MasterKey";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "restoring backup view %@", buf, 0xCu);
      }

      v25 = [v21 objectForKeyedSubscript:@"keybag"];
      v26 = [v21 objectForKeyedSubscript:@"backup"];
      v27 = v26;
      if (v25 && v26)
      {
        v28 = *(a1 + 40);
        v33 = 0;
        v29 = [v28 verifyRKWithKeyBag:v25 password:v2 error:&v33];
        v30 = v33;
        v31 = v33;
        *(*(*(a1 + 64) + 8) + 24) = v29;
        if (v31)
        {
          v32 = CloudServicesLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10004C34C();
          }

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v30);
        }
      }
    }
  }
}

void sub_10002A758(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_10002AA50(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Escrow recovery completed with possible error: %@", &v8, 0xCu);
  }

  kdebug_trace();
  (*(*(a1 + 40) + 16))();
}

void sub_10002B25C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = CloudServicesLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004B20C();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "escrowService storeRecordWithRequest: succeeded", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_10002B4B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "escrowService deleteRecordWithRequest: returned: %@", &v6, 0xCu);
    }

    [*(a1 + 32) setDeleteError:v4];
  }

  [*(a1 + 40) _deleteAlliCDPRecordsWithContext:*(a1 + 32)];
}

void sub_10002B794(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = [a2 objectForKeyedSubscript:kSecureBackupAlliCDPRecordsKey];
    v6 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      v11 = kSecureBackupRecordIDKey;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) objectForKeyedSubscript:{v11, v19}];
          if (v13)
          {
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v14 = objc_alloc_init(SecureBackupDeletionContext);
      [(SecureBackupDeletionContext *)v14 setRequest:*(a1 + 32)];
      v15 = [(SecureBackupDeletionContext *)v14 request];
      [v15 setIcdp:1];

      [(SecureBackupDeletionContext *)v14 setCompletionBlock:*(a1 + 48)];
      v16 = [EscrowService alloc];
      v17 = [*(a1 + 40) operationsLogger];
      v18 = [(EscrowService *)v16 initWithOperationsLogger:v17];
      [(SecureBackupDeletionContext *)v14 setEscrowService:v18];

      [(SecureBackupDeletionContext *)v14 setRecordIDs:v6];
      [(SecureBackupDeletionContext *)v14 setDeleteError:0];
      [*(a1 + 40) _deleteAlliCDPRecordsWithContext:v14];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_10002BC24(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = kSecureBackupBackOffDateKey;
    v7 = [v10 objectForKeyedSubscript:kSecureBackupBackOffDateKey];
    v8 = kSecureBackupStingrayMetadataHashKey;
    v9 = [v10 objectForKeyedSubscript:kSecureBackupStingrayMetadataHashKey];
    if (v7)
    {
      [v5 setObject:v7 forKeyedSubscript:v6];
    }

    if (v9)
    {
      [v5 setObject:v9 forKeyedSubscript:v8];
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10002C860(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004C5BC();
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [v3 name];
    [v5 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];

    v7 = [v3 reason];
    [v5 setObject:v7 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v5];
    (*(v2 + 16))(v2, v8);

    objc_end_catch();
    JUMPOUT(0x10002C7D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002C99C(uint64_t a1, void *a2)
{
  v3 = a2;
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v6 = _CloudServicesSignpostLogSystem(v5);
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = [v3 domain];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1000767A0;
    }

    v22 = 138543618;
    v23 = v11;
    v24 = 1026;
    LODWORD(v25) = [v3 code];
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "DisableWithRequest", " ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x12u);
  }

  v13 = _CloudServicesSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 56);
    v15 = Nanoseconds / 1000000000.0;
    v16 = [v3 domain];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &stru_1000767A0;
    }

    v19 = [v3 code];
    v22 = 134218754;
    v23 = v14;
    v24 = 2048;
    v25 = v15;
    v26 = 2114;
    v27 = v18;
    v28 = 1026;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: DisableWithRequest  ErrorDomain=%{public,signpost.telemetry:string2,name=ErrorDomain}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v22, 0x26u);
  }

  v20 = [*(a1 + 32) operationsLogger];
  v21 = [*(a1 + 40) endEventWithResults:&__NSDictionary0__struct error:v3];
  [v20 updateStoreWithEvent:v21];

  (*(*(a1 + 48) + 16))();
}

void sub_10002CBC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) disableiCDPBackup];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10002CC30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "escrowService deleteRecordWithRequest: returned: %@", &v11, 0xCu);
    }
  }

  else if (([*(a1 + 32) stingray] & 1) == 0)
  {
    if (([*(a1 + 32) icdp] & 1) == 0)
    {
      if (([*(a1 + 40) _backupEnabled] & 1) == 0)
      {
        v10 = *(a1 + 56);
        if (!v10)
        {
          goto LABEL_14;
        }

        v9 = *(v10 + 16);
        goto LABEL_13;
      }

      [*(a1 + 40) _disableBackup];
      [*(a1 + 40) _removeUsesEscrow];
    }

    if (!*(a1 + 32))
    {
      notify_post("com.apple.EscrowSecurityAlert.reset");
    }
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *(v8 + 16);
LABEL_13:
    v9();
  }

LABEL_14:
}

void sub_10002D4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(exception_object);
    v21 = CloudServicesLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [v20 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004C67C();
    }

    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = [v20 name];
    [v22 setObject:v23 forKeyedSubscript:NSLocalizedDescriptionKey];

    v24 = [v20 reason];
    [v22 setObject:v24 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v25 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v22];
    (*(v19 + 16))(v19, v25);

    objc_end_catch();
    JUMPOUT(0x10002D478);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002D65C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 domain];
    v7 = [v6 isEqualToString:kEscrowServiceErrorDomain];

    if (v7 && [v5 code] == -5012)
    {
      v8 = kSecureBackupErrorDomain;
      v9 = [v5 userInfo];
      v10 = [NSError errorWithDomain:v8 code:29 userInfo:v9];

      v5 = v10;
    }

    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "updateRecordMetadataWithRequest: returned: %@", &v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);

    v12();
  }
}

void sub_10002ED2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v11 = [v5 objectForKeyedSubscript:@"recoveryChallengeCodeLength"];
    [v7 setObject:v11 forKeyedSubscript:kSecureBackupRecoveryVerificationTokenLengthKey];

    v12 = *(*(a1 + 32) + 16);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 domain];
  v9 = [v8 isEqualToString:kEscrowServiceErrorDomain];

  if (v9)
  {
    if ([v7 code] == -4002)
    {
      v10 = 27;
LABEL_8:
      v13 = kSecureBackupErrorDomain;
      v14 = [v7 userInfo];
      v15 = [NSError errorWithDomain:v13 code:v10 userInfo:v14];

      v7 = v15;
      goto LABEL_9;
    }

    if ([v7 code] == -4007)
    {
      v10 = 28;
      goto LABEL_8;
    }
  }

LABEL_9:
  v16 = CloudServicesLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "escrowService startSMSChallengeWithRequest: returned: %@", &v17, 0xCu);
  }

  v12 = *(*(a1 + 32) + 16);
LABEL_12:
  v12();
}

void sub_10002F2A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "escrowService getCountrySMSCodesWithRequest: returned: %@", &v16, 0xCu);
    }

    v9 = [v7 domain];
    v10 = [v9 isEqualToString:kEscrowServiceErrorDomain];

    if (v10)
    {
      v11 = kSecureBackupErrorDomain;
      v12 = [v7 userInfo];
      v13 = [NSError errorWithDomain:v11 code:24 userInfo:v12];

      v7 = v13;
    }

    v14 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v15 = [v5 objectForKeyedSubscript:@"EscrowServiceCountrySMSCodes"];
    [v7 setObject:v15 forKeyedSubscript:kSecureBackupCountrySMSCodesKey];

    v14 = *(*(a1 + 32) + 16);
  }

  v14();
}

void sub_10002FABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    v19 = CloudServicesLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [v18 callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_10004CD68();
    }

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = [v18 name];
    [v20 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];

    v22 = [v18 reason];
    [v20 setObject:v22 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

    v23 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v20];
    (*(v17 + 16))(v17, v23);

    objc_end_catch();
    JUMPOUT(0x10002FA60);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002FC30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "escrowService changeSMSTargetWithRequest: returned: %@", &v13, 0xCu);
    }

    v8 = [v6 domain];
    v9 = [v8 isEqualToString:kEscrowServiceErrorDomain];

    if (v9 && [v6 code] == -5012)
    {
      v10 = kSecureBackupErrorDomain;
      v11 = [v6 userInfo];
      v12 = [NSError errorWithDomain:v10 code:29 userInfo:v11];

      v6 = v12;
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10003039C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004CDB8();
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (v9)
    {
      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10004CE28();
      }
    }

    v13 = a1[4];
    v19 = 0;
    v14 = [v13 cacheStoredCertificate:v7 error:&v19];
    v15 = v19;
    v16 = v15;
    if (!v14 || v15)
    {
      v18 = CloudServicesLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10004CE98();
      }

      (*(a1[7] + 16))();
    }

    else
    {
      v17 = [[SecureBackupBeginPasscodeRequestResults alloc] initWithStoredCertificate:v7 uuid:a1[5]];
      (*(a1[7] + 16))();
    }
  }
}

void sub_10003171C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 escrowCertificate];
  v7 = [v6 duplicateEscrowCertificate];

  (*(v4 + 16))(v4, 0, v8, v7, v5);
}

void sub_100032108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = CloudServicesLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004B20C();
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "escrowService storeRecordWithRequest: succeeded", v8, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_10003245C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Guitarfish token recovery returned: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [a2 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
    v9 = kSecureBackupKeybagSHA256Key;
    v10 = [v8 objectForKeyedSubscript:kSecureBackupKeybagSHA256Key];
    v11 = [v8 objectForKeyedSubscript:kSecureBackupBagPasswordKey];
    v12 = [v8 objectForKeyedSubscript:@"BackupVersion"];
    v13 = kSecureBackupTimestampKey;
    v14 = [v8 objectForKeyedSubscript:kSecureBackupTimestampKey];
    if ([v12 isEqualToString:@"1"])
    {
      v17[0] = v9;
      v17[1] = kSecureBackupiCloudIdentityDataKey;
      v18[0] = v10;
      v18[1] = v11;
      v17[2] = @"BackupVersion";
      v17[3] = v13;
      v18[2] = v12;
      v18[3] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
      (*(*(a1 + 32) + 16))();
      v6 = 0;
    }

    else
    {
      v16 = CloudServicesLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "guitarfish token data version does not match version in escrow", buf, 2u);
      }

      v19 = NSLocalizedDescriptionKey;
      v20 = @"guitarfish token data version does not match version in escrow";
      v15 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v6 = [NSError errorWithDomain:kSecureBackupErrorDomain code:3 userInfo:v15];
      (*(*(a1 + 32) + 16))();
    }
  }
}

id sub_1000328A4()
{
  v2[0] = kSecClass;
  v2[1] = kSecAttrAccessGroup;
  v3[0] = kSecClassGenericPassword;
  v3[1] = @"com.apple.sbd";
  v2[2] = kSecAttrAccessible;
  v2[3] = kSecAttrAccount;
  v3[2] = kSecAttrAccessibleWhenUnlocked;
  v3[3] = @"SecureBackupPublicKeybag";
  v2[4] = kSecAttrService;
  v2[5] = kSecAttrSynchronizable;
  v3[4] = @"SecureBackupService";
  v3[5] = kCFBooleanTrue;
  v0 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:6];

  return v0;
}

uint64_t sub_1000329B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2112;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  return result;
}

void sub_1000329EC(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x20u);
}

void sub_100032F08(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) currentRequest];
    v4 = [v3 URL];
    v5 = [*(a1 + 32) originalRequest];
    v6 = [v5 URL];
    v7 = [*(a1 + 40) URL];
    v8 = [*(a1 + 48) allHeaderFields];
    v12 = 138413058;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "redirect: current URL = %@, original URL = %@, new URL = %@, response headers = %@", &v12, 0x2Au);
  }

  v9 = [*(a1 + 32) currentRequest];
  v10 = [v9 mutableCopy];

  v11 = [*(a1 + 40) URL];
  [v10 setURL:v11];

  (*(*(a1 + 56) + 16))();
}

void sub_1000333DC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000334E0;
  block[3] = &unk_100075A90;
  v10 = a1[4];
  v11 = a1[6];
  block[4] = a1[5];
  v16 = v9;
  v17 = v8;
  v18 = v7;
  v19 = v11;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  os_activity_apply(v10, block);
}

void sub_1000334E0(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) loggingDescription];
    *buf = 138412290;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: escrow proxy request returned", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  if (!v4)
  {
    v12 = [objc_alloc(objc_msgSend(v5 "responseClass"))];
    v4 = [v12 error];

    if (!v4)
    {
      goto LABEL_23;
    }

    v13 = [v12 error];
    v14 = [v13 userInfo];
    v4 = [v14 objectForKeyedSubscript:@"retryAfterDate"];

    if (v4)
    {
      v15 = CloudServicesLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10004D508(v4, v15);
      }

      objc_storeStrong(&qword_100084AD0, v4);
    }

    v11 = [v12 error];
    goto LABEL_16;
  }

  if ([v5 pinningFailure])
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004D4C4(v6);
    }

    v9 = sub_1000029CC(v7, v8);
    v10 = &stru_1000767A0;
    if (v9)
    {
      v10 = @", please see rdar://problem/15631298";
    }

    v11 = [CloudServicesError errorWithCode:310 error:v4 format:@"Certificate pinning error%@", v10];
    v12 = 0;
LABEL_16:

    if (!v11)
    {
      v4 = 0;
      goto LABEL_23;
    }

    v4 = v11;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:
  v16 = CloudServicesLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10004D580(v4, v16);
  }

LABEL_23:
  v17 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000337D8;
  block[3] = &unk_100075A68;
  v18 = *(a1 + 64);
  v23 = v4;
  v24 = v18;
  v22 = v12;
  v19 = v4;
  v20 = v12;
  dispatch_async(v17, block);
}

void sub_100033CD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 operations];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100033DA0;
  v10[3] = &unk_100075BD0;
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v13 = a4;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];
}

uint64_t sub_100033DA0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = 0;
  result = (*(*(a1 + 40) + 16))();
  v7 = v8;
  *a4 = v8;
  **(a1 + 48) = v7;
  return result;
}

void sub_100034C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100034C74(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 isEqual:v5] & 1) == 0)
  {
    *(*(a1 + 32) + 8) = 1;
    [*(a1 + 40) insertObject:v5 atIndex:0];
  }

  *(*(a1 + 32) + 9) &= [v5 isComplete];
  *(*(a1 + 32) + 10) &= [v5 isStaleWithcontext:*(a1 + 48)];
  v6 = *(*(*(a1 + 80) + 8) + 24);
  v7 = [*(a1 + 48) operationRecordRetentionMaxCount];
  v8 = [v5 isComplete];
  if (v6 >= v7)
  {
    v9 = @"incomplete";
    if (v8)
    {
      v9 = @"complete";
    }

    v10 = v9;
    v11 = [v5 startTimestamp];
    v12 = +[NSTimeZone defaultTimeZone];
    v13 = [NSISO8601DateFormatter stringFromDate:v11 timeZone:v12 formatOptions:1907];

    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) operationRecordRetentionMaxCount]);
      v16 = [v5 id];
      v17 = [v16 UUIDString];
      v18 = 138413058;
      v19 = v15;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Total operation count is greater than %@, reaping %@ operation %@ from %@.", &v18, 0x2Au);
    }

    [*(a1 + 56) addObject:v5];
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      [*(a1 + 64) addObject:v5];
    }

    [*(a1 + 72) insertObject:v5 atIndex:0];
    ++*(*(*(a1 + 80) + 8) + 24);
  }
}

void sub_100035550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000355AC(void *a1, void *a2)
{
  v21 = a2;
  if ([v21 shouldReap])
  {
    v3 = a1[6];
    v4 = [v21 activity];
    [v3 addObject:v4];

    v5 = a1[4];
    v6 = [v21 activity];
    v7 = [v6 operations];
    [v5 addObjectsFromArray:v7];
  }

  else
  {
    v8 = [v21 activity];
    v9 = [v8 operations];
    *(*(a1[11] + 8) + 24) += [v9 count];

    v10 = a1[4];
    v11 = [v21 reapedOperations];
    [v10 addObjectsFromArray:v11];

    v12 = a1[5];
    v6 = [v21 activity];
    [v12 insertObject:v6 atIndex:0];
  }

  if ([v21 didChange])
  {
    v13 = a1[7];
    v14 = [v21 activity];
    [v13 addObject:v14];

    v15 = a1[8];
    v16 = [v21 updatedOperations];
    [v15 addObjectsFromArray:v16];
  }

  if (([v21 isComplete] & 1) == 0)
  {
    *(*(a1[12] + 8) + 24) = 0;
    v17 = a1[9];
    v18 = [v21 activity];
    [v17 addObject:v18];

    v19 = a1[10];
    v20 = [v21 activeOperations];
    [v19 addObjectsFromArray:v20];
  }
}

uint64_t sub_100036958(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v26[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v26[0] & 0x7F) << v5;
      if ((v26[0] & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_43;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 32;
        goto LABEL_43;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 16;
        goto LABEL_43;
      case 4u:
        v13 = PBReaderReadData();
        v14 = 40;
        goto LABEL_43;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_43;
      case 6u:
        v13 = PBReaderReadData();
        v14 = 88;
        goto LABEL_43;
      case 7u:
        v13 = PBReaderReadData();
        v14 = 80;
        goto LABEL_43;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_43;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 8;
        goto LABEL_43;
      case 0xAu:
        v13 = PBReaderReadData();
        v14 = 48;
        goto LABEL_43;
      case 0xBu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 112) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_49;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_49:
        *(a1 + 72) = v22;
        goto LABEL_44;
      case 0xCu:
        v13 = PBReaderReadData();
        v14 = 24;
LABEL_43:
        v23 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_44;
      case 0xDu:
        v15 = objc_alloc_init(EscrowPrerecordPasscodeGeneration);
        objc_storeStrong((a1 + 64), v15);
        v26[0] = 0xAAAAAAAAAAAAAAAALL;
        v26[1] = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && sub_1000452D4(v15, a2))
        {
          PBReaderRecallMark();

LABEL_44:
          v24 = [a2 position];
          if (v24 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_44;
    }
  }
}

void sub_100038154(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [CloudServicesError errorWithCode:305 error:v5 format:@"Error getting account info"];
  }

  else
  {
    v9 = @"EscrowServiceAccountInfo";
    v8 = [a2 accountInfo];
    v10 = v8;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100038914(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetched certificates with result: %@ %@)", &v17, 0x16u);
  }

  if (v6)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004D9FC();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [v5 error];

    if (v9)
    {
      v10 = CloudServicesLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10004DA6C(v5);
      }

      v11 = *(a1 + 40);
      v12 = [v5 error];
      (*(v11 + 16))(v11, 0, v12);
    }

    else
    {
      if (v5)
      {
        v12 = objc_alloc_init(StoredCertificate);
        v13 = [*(a1 + 32) iCloudEnv];
        [(StoredCertificate *)v12 setICloudEnvironment:v13];

        v14 = [*(a1 + 32) baseURL];
        [(StoredCertificate *)v12 setEscrowBaseURL:v14];

        v15 = [*(a1 + 32) dsid];
        [(StoredCertificate *)v12 setDsid:v15];

        v16 = [v5 cert];
        [(StoredCertificate *)v12 setEscrowCertificate:v16];
      }

      else
      {
        v12 = 0;
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), v12, 0);
    }
  }
}

uint64_t sub_100038C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (!(a3 | a4))
  {
    return (*(v4 + 16))(v4, a2, 0);
  }

  if (!a3)
  {
    a3 = a4;
  }

  return (*(v4 + 16))(v4, 0, a3);
}

void sub_100038F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 224), 8);
  _Block_object_dispose((v36 - 176), 8);
  _Block_object_dispose((v36 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100038FDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100038FF4(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000390A4;
  v4[3] = &unk_100075CE0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _fetchCertificatesWithRequest:v3 duplicate:0 completionBlock:v4];
}

void sub_1000390A4(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void sub_100039140(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000391F0;
  v4[3] = &unk_100075CE0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _fetchCertificatesWithRequest:v3 duplicate:1 completionBlock:v4];
}

void sub_1000391F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsDoubleGetClubCert hardFailure:1 result:v6];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v13 = v5;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_1000392BC(void *a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[5] + 8) + 40);
    v4 = *(*(a1[6] + 8) + 40);
    v5 = *(*(a1[7] + 8) + 40);
    v6 = *(*(a1[8] + 8) + 40);
    v10 = 138413058;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Returning fetch result of: %@ %@ %@ %@)", &v10, 0x2Au);
  }

  v7 = *(*(a1[7] + 8) + 40);
  if (v7)
  {
    v8 = [v7 escrowCertificate];
    [*(*(a1[5] + 8) + 40) setDuplicateEscrowCertificate:v8];
  }

  return (*(a1[4] + 16))();
}

void sub_10003A108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v43 - 232), 8);
  _Block_object_dispose((v43 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_10003A148(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 operationsLogger];
  v8 = [*(a1 + 40) endEventWithResults:v9 error:v6];
  [v7 updateStoreWithEvent:v8];

  (*(*(a1 + 48) + 16))();
}

void sub_10003A1FC(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003A2AC;
  v4[3] = &unk_100075D58;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _storeRecordWithRequest:v3 duplicate:0 completionBlock:v4];
}

void sub_10003A2AC(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void sub_10003A348(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003A3F8;
  v4[3] = &unk_100075D58;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _storeRecordWithRequest:v3 duplicate:1 completionBlock:v4];
}

void sub_10003A3F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsDoubleEnrollment hardFailure:1 result:v6];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v13 = v5;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10003A4C4(uint64_t a1)
{
  if ([*(a1 + 32) requiresDoubleEnrollment])
  {
    if (*(*(*(a1 + 56) + 8) + 40) && !*(*(*(a1 + 64) + 8) + 40))
    {
      v4 = CloudServicesLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) passphrase];
        if (v5)
        {
          v6 = "YES";
        }

        else
        {
          v6 = "NO";
        }

        if ([*(a1 + 32) stingray])
        {
          v7 = "YES";
        }

        else
        {
          v7 = "NO";
        }

        v11 = 136315394;
        v12 = v6;
        v13 = 2080;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Double enrollment succeeded (passphrase: %s) (PCS: %s)", &v11, 0x16u);
      }

      v8 = [*(a1 + 32) icdp];
      v9 = *(a1 + 32);
      if (v8)
      {
        v10 = [v9 passphrase];
        if (v10)
        {
        }

        else if (([*(a1 + 32) stingray] & 1) == 0)
        {
          return (*(*(a1 + 48) + 16))();
        }
      }

      else if (![v9 stingray])
      {
        return (*(*(a1 + 48) + 16))();
      }

      [*(a1 + 40) _performPostEnrollSilentRecoveryWithRequest:*(a1 + 32)];
      return (*(*(a1 + 48) + 16))();
    }

    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10004DD48();
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10003A828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v16 = [v5 cert];
    [*(a1 + 32) setCertData:v16];

    v17 = [*(a1 + 32) certData];

    if (v17)
    {
      v18 = [*(a1 + 32) dsid];
      v19 = [v5 dsid];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        [*(a1 + 40) storeRecordWithCertDataRequest:*(a1 + 32) duplicate:*(a1 + 56) completionBlock:*(a1 + 48)];
        goto LABEL_21;
      }

      v23 = CloudServicesLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10004DE38((a1 + 32), v5);
      }

      v21 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:99 format:@"Mismatched user credential"];
    }

    else
    {
      v21 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:124 format:@"Unexpected error with encoded certificate"];
      v22 = CloudServicesLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Certificate encoding error: %@", &v24, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();

    goto LABEL_21;
  }

  v7 = v6;
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
  v9 = [v7 userInfo];
  v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v11 = [v10 code];
  if (v11 == 401)
  {
    v12 = @"Unauthorized";
  }

  else
  {
    v12 = @"Unexpected error getting club cert";
  }

  if (v11 == 401)
  {
    v13 = 99;
  }

  else
  {
    v13 = 96;
  }

  [v8 setObject:v12 forKeyedSubscript:NSLocalizedDescriptionKey];
  v14 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:v13 userInfo:v8];

  v15 = CloudServicesLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10004DDC8();
  }

  (*(*(a1 + 48) + 16))();
LABEL_21:
}

void sub_10003B224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v10 code] == 401)
    {
      [v8 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      v11 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v8];

      v7 = v11;
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (([*(a1 + 32) stingray] & 1) != 0 || (objc_msgSend(v5, "bypassToken"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v15 = CloudServicesLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Missing bypass token (might not be hooked up in iCloud yet)", buf, 2u);
      }
    }

    else
    {
      [*(a1 + 40) _removeBypassToken];
      v13 = *(a1 + 40);
      v14 = [v5 bypassToken];
      [v13 _saveBypassToken:v14];
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v20 = 0;
    v18 = [v16 _invalidateEscrowCache:v17 error:&v20];
    v7 = v20;
    if ((v18 & 1) == 0)
    {
      (*(*(a1 + 64) + 16))();
      goto LABEL_14;
    }

    v19 = *(a1 + 56);
    v22 = @"EscrowServiceCertificate";
    v23 = v19;
    v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    (*(*(a1 + 64) + 16))();
  }

LABEL_14:
}

void sub_10003C1F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v30 = 0;
  v9 = [v7 _invalidateEscrowCache:v8 error:&v30];
  v10 = v30;
  if ((v9 & 1) == 0)
  {
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004E0B8();
    }
  }

  if (v6)
  {
    if ([v6 code] != -6015)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = [v6 localizedDescription];
      [v12 setObject:v13 forKeyedSubscript:NSLocalizedDescriptionKey];

      [v12 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
      v14 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v12];

      v6 = v14;
    }

    v15 = [NSDate dateWithTimeIntervalSinceNow:5.0];
    [NSThread sleepUntilDate:v15];

    v16 = *(a1 + 64);
    v17 = [v5 responseDictionary];
    (*(v16 + 16))(v16, v17, v6);
  }

  else
  {
    v18 = *(a1 + 48);
    v19 = [v5 recoveryData];
    v20 = [*(a1 + 56) stingray];
    v21 = [*(a1 + 56) iCloudEnv];
    v22 = *(a1 + 72);
    v29 = 0;
    v6 = [v18 decodedEscrowRecordFromData:v19 stingray:v20 env:v21 duplicate:v22 error:&v29];
    v23 = v29;

    if (v6)
    {
      v17 = objc_alloc_init(NSMutableDictionary);
      [v17 setObject:v6 forKeyedSubscript:kEscrowServiceRecordDataKey];
      v24 = [*(a1 + 48) decodedLabel];
      [v17 setObject:v24 forKeyedSubscript:kEscrowServiceRecordLabelKey];

      v25 = [*(a1 + 48) escrowDate];
      [v17 setObject:v25 forKeyedSubscript:@"date"];

      [v17 setObject:@"EscrowOperationSucceeded" forKeyedSubscript:@"EscrowOperationStatus"];
      v26 = [v5 metadata];
      [v17 setObject:v26 forKeyedSubscript:kEscrowServiceRecordMetadataKey];

      v27 = [v5 fmipRecoveryData];
      [v17 setObject:v27 forKeyedSubscript:@"EscrowServiceFMiPData"];

      v28 = [v5 requestUUID];
      [v17 setObject:v28 forKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
    }

    else
    {
      v17 = [CloudServicesError errorWithDomain:kCloudServicesErrorDomain code:98 underlyingError:v23 format:@"Error deserializing data"];
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_10003C7BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [v4 code];
    if ((v5 + 4017 > 0xC || ((1 << (v5 - 79)) & 0x1085) == 0) && v5 != -6014 && v5 != -6012)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = [v13 localizedDescription];
      [v10 setObject:v11 forKeyedSubscript:NSLocalizedDescriptionKey];

      [v10 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
      v12 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:102 userInfo:v10];

      v13 = v12;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

void sub_10003CB44(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_17;
  }

  [*(a1 + 32) setPasswordMetadataWithRequest:*(a1 + 40) response:v7 ses:v8];
  v9 = [v7 clubTypeID];
  if (!v9)
  {
    v15 = _os_feature_enabled_impl();
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a1 + 56);
    if (v15)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10003D188;
      v22[3] = &unk_100075E70;
      v22[4] = v12;
      v24 = *(a1 + 48);
      v23 = *(a1 + 40);
      v25 = *(a1 + 56);
      [v12 _recoverWithVersion:1 req:v11 duplicate:v13 sesWrapper:v8 srpInitResponse:v7 reply:v22];

      v14 = v24;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v9 == 1)
  {
    v10 = _os_feature_enabled_impl();
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a1 + 56);
    if (v10)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10003CE18;
      v26[3] = &unk_100075E70;
      v26[4] = v12;
      v28 = *(a1 + 48);
      v27 = *(a1 + 40);
      v29 = *(a1 + 56);
      [v12 _recoverWithVersion:2 req:v11 duplicate:v13 sesWrapper:v8 srpInitResponse:v7 reply:v26];

      v14 = v28;
LABEL_9:

      goto LABEL_17;
    }

LABEL_10:
    v16 = *(a1 + 48);
    v17 = v12;
    v18 = v11;
    v19 = v13;
LABEL_16:
    [v17 _recoverWithVersion:0 req:v18 duplicate:v19 sesWrapper:v8 srpInitResponse:v7 reply:v16];
    goto LABEL_17;
  }

  if (!_os_feature_enabled_impl())
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v16 = *(a1 + 48);
    goto LABEL_16;
  }

  v20 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:106 format:@"Unknown/bad ClubTypeID"];
  v21 = CloudServicesLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10004E164(v7);
  }

  (*(*(a1 + 48) + 16))();
LABEL_17:
}

void sub_10003CE18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _os_feature_enabled_impl();
  if (v6 && v7 && ![objc_opt_class() isFatalError:v6])
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004E1E4();
    }

    v10 = +[CloudServicesAnalytics logger];
    [v10 logResultForEvent:CloudServicesAnalyticsRequestV2Fallback hardFailure:1 result:v6];

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003CFD8;
    v17[3] = &unk_100075E48;
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v19 = v14;
    v17[4] = v15;
    v18 = v16;
    v20 = *(a1 + 56);
    [v11 _srpInitHelper:v12 duplicate:v13 completionBlock:v17];
  }

  else
  {
    v8 = +[CloudServicesAnalytics logger];
    [v8 logResultForEvent:CloudServicesAnalyticsRequestV2 hardFailure:1 result:v6];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003CFD8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) setPasswordMetadataWithRequest:*(a1 + 40) response:v7 ses:v8];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003D0E0;
    v12[3] = &unk_100075450;
    v13 = *(a1 + 48);
    [v9 _recoverWithVersion:0 req:v10 duplicate:v11 sesWrapper:v8 srpInitResponse:v7 reply:v12];
  }
}

void sub_10003D0E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[CloudServicesAnalytics logger];
  [v6 logResultForEvent:CloudServicesAnalyticsRequestV2ToV0Fallback hardFailure:1 result:v5];

  (*(*(a1 + 32) + 16))();
}

void sub_10003D188(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _os_feature_enabled_impl();
  if (v6 && v7 && ![objc_opt_class() isFatalError:v6])
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004E254();
    }

    v10 = +[CloudServicesAnalytics logger];
    [v10 logResultForEvent:CloudServicesAnalyticsRequestV1Fallback hardFailure:1 result:v6];

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003D348;
    v17[3] = &unk_100075E48;
    v14 = *(a1 + 48);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v19 = v14;
    v17[4] = v15;
    v18 = v16;
    v20 = *(a1 + 56);
    [v11 _srpInitHelper:v12 duplicate:v13 completionBlock:v17];
  }

  else
  {
    v8 = +[CloudServicesAnalytics logger];
    [v8 logResultForEvent:CloudServicesAnalyticsRequestV1 hardFailure:1 result:v6];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003D348(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) setPasswordMetadataWithRequest:*(a1 + 40) response:v7 ses:v8];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003D450;
    v12[3] = &unk_100075450;
    v13 = *(a1 + 48);
    [v9 _recoverWithVersion:0 req:v10 duplicate:v11 sesWrapper:v8 srpInitResponse:v7 reply:v12];
  }
}

void sub_10003D450(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[CloudServicesAnalytics logger];
  [v6 logResultForEvent:CloudServicesAnalyticsRequestV1ToV0Fallback hardFailure:1 result:v5];

  (*(*(a1 + 32) + 16))();
}

void sub_10003D6E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 operationsLogger];
  v8 = [*(a1 + 40) endEventWithResults:v9 error:v6];
  [v7 updateStoreWithEvent:v8];

  (*(*(a1 + 48) + 16))();
}

id sub_10003D798(uint64_t a1)
{
  if (qword_100084AE8 != -1)
  {
    sub_10004E2C4();
  }

  v2 = qword_100084AF0;

  return v2;
}

void sub_10003D7DC(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting for recover group", buf, 2u);
  }

  v4 = sub_10003D904(v3);
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  v6 = sub_10003D904(v5);
  dispatch_group_enter(v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003D948;
  v11[3] = &unk_100075400;
  v9 = v7;
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  v14 = *(a1 + 48);
  [v8 _recoverActualRecordWithRequest:v9 duplicate:0 completionBlock:v11];
}

id sub_10003D904(uint64_t a1)
{
  if (qword_100084AF8 != -1)
  {
    sub_10004E2D8();
  }

  v2 = qword_100084B00;

  return v2;
}

void sub_10003D948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) requiresDoubleEnrollment])
  {
    if (!v5 || v6)
    {
      v7 = CloudServicesLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v8 = "double recovery skipped because primary recovery failed";
        v9 = &v12;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else
    {
      if ([*(a1 + 32) icdp])
      {
        [*(a1 + 40) _performDoubleRecoveryICDPWithRequest:*(a1 + 32) primaryResponse:v5];
        goto LABEL_10;
      }

      if ([*(a1 + 32) stingray])
      {
        [*(a1 + 40) _performDoubleRecoveryStingrayWithRequest:*(a1 + 32) primaryResponse:v5];
        goto LABEL_10;
      }

      v7 = CloudServicesLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v8 = "double recovery requested for invalid request type";
        v9 = &v13;
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  v10 = (*(*(a1 + 48) + 16))(*(a1 + 48));
  v11 = sub_10003D904(v10);
  dispatch_group_leave(v11);
}

void sub_10003DCC0(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a3;
  v5 = CloudServicesLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "silent recovery succeeded", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10004E2EC();
  }
}

void sub_10003DF40(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting for recover group (double recovery)", buf, 2u);
  }

  v4 = sub_10003D904(v3);
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  v6 = sub_10003D904(v5);
  dispatch_group_enter(v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003E068;
  v11[3] = &unk_100075F20;
  v12 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  [v8 _recoverActualRecordWithRequest:v12 duplicate:1 completionBlock:v11];
}

void sub_10003E068(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v6 = [CloudServicesError errorWithCode:1 format:@"Recovery seemingly failed with no error"];
  }

  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsDoubleRecovery hardFailure:1 result:v6];

  v8 = [a1[5] objectForKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
  [a1[4] setRecoveryUUID:v8];

  v9 = [v5 objectForKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
  [a1[4] setDoubleRecoveryUUID:v9];

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[4] recoveryUUID];
    v12 = [a1[4] doubleRecoveryUUID];
    v29 = 138412546;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "double enrollment recovery: recoveryUUID: %@, doubleRecoveryUUID: %@", &v29, 0x16u);
  }

  v13 = CloudServicesLog();
  v14 = v13;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004E35C();
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "double enrollment recovery succeeded", &v29, 2u);
    }

    v15 = kEscrowServiceRecordDataKey;
    v16 = [v5 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
    if (v16)
    {
      v17 = [a1[5] objectForKeyedSubscript:v15];
      v18 = [v16 isEqualToDictionary:v17];
      v19 = CloudServicesLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "not ";
        if (v18)
        {
          v20 = "";
        }

        v29 = 136315138;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "double enrollment recovery: record is %sidentical", &v29, 0xCu);
      }

      v21 = a1[4];
      if (v18)
      {
        [v21 setRecoveryResult:1];
        v14 = 0;
      }

      else
      {
        [v21 setRecoveryResult:0];
        v14 = [CloudServicesError errorWithCode:24 format:@"Record data does not match"];
      }

      v23 = [EscrowService alloc];
      v24 = [a1[6] operationsLogger];
      v25 = [(EscrowService *)v23 initWithOperationsLogger:v24];

      [(EscrowService *)v25 logRecoveryResults:a1[4] completionBlock:&stru_100075EF8];
    }

    else
    {
      v22 = CloudServicesLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "double enrollment recovery: record data is missing", &v29, 2u);
      }

      v14 = [CloudServicesError errorWithCode:23 format:@"Record data is missing"];
    }

    v26 = +[CloudServicesAnalytics logger];
    [v26 logResultForEvent:CloudServicesAnalyticsDoubleRecoveryDataMatch3 hardFailure:1 result:v14];
  }

  v28 = sub_10003D904(v27);
  dispatch_group_leave(v28);
}

void sub_10003E488(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004E3CC();
    }
  }

  else
  {
    v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"status"];
    v7 = [(NSDictionary *)v4 objectForKeyedSubscript:@"message"];
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "double enrollment recovery: logged metrics with status: %@, message: %@", &v9, 0x16u);
    }
  }
}

void sub_10003E6DC(uint64_t a1)
{
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting for recover group (PCS double recovery)", buf, 2u);
  }

  v4 = sub_10003D904(v3);
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  v6 = sub_10003D904(v5);
  dispatch_group_enter(v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003E804;
  v11[3] = &unk_100075F20;
  v12 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  [v8 _recoverActualRecordWithRequest:v12 duplicate:1 completionBlock:v11];
}

void sub_10003E804(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v6 = [CloudServicesError errorWithCode:1 format:@"Recovery seemingly failed with no error"];
  }

  v7 = +[CloudServicesAnalytics logger];
  [v7 logResultForEvent:CloudServicesAnalyticsDoubleRecoveryPCS hardFailure:1 result:v6];

  v8 = [a1[5] objectForKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
  [a1[4] setRecoveryUUID:v8];

  v9 = [v5 objectForKeyedSubscript:@"kEscrowServiceRecoveryUUID"];
  [a1[4] setDoubleRecoveryUUID:v9];

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[4] recoveryUUID];
    v12 = [a1[4] doubleRecoveryUUID];
    v29 = 138412546;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PCS double recovery: recoveryUUID: %@, doubleRecoveryUUID: %@", &v29, 0x16u);
  }

  v13 = CloudServicesLog();
  v14 = v13;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004E43C();
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PCS double recovery succeeded", &v29, 2u);
    }

    v15 = kEscrowServiceRecordDataKey;
    v16 = [v5 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
    if (v16)
    {
      v17 = [a1[5] objectForKeyedSubscript:v15];
      v18 = [v16 isEqualToDictionary:v17];
      v19 = CloudServicesLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "not ";
        if (v18)
        {
          v20 = "";
        }

        v29 = 136315138;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PCS double recovery: record is %sidentical", &v29, 0xCu);
      }

      v21 = a1[4];
      if (v18)
      {
        [v21 setRecoveryResult:1];
        v14 = 0;
      }

      else
      {
        [v21 setRecoveryResult:0];
        v14 = [CloudServicesError errorWithCode:24 format:@"Record data does not match"];
      }

      v23 = [EscrowService alloc];
      v24 = [a1[6] operationsLogger];
      v25 = [(EscrowService *)v23 initWithOperationsLogger:v24];

      [(EscrowService *)v25 logRecoveryResults:a1[4] completionBlock:&stru_100075F40];
    }

    else
    {
      v22 = CloudServicesLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "PCS double recovery: record data is missing", &v29, 2u);
      }

      v14 = [CloudServicesError errorWithCode:23 format:@"Record data is missing"];
    }

    [a1[6] ttrForPCSDataMatchFailure:v14];
    v26 = +[CloudServicesAnalytics logger];
    [v26 logResultForEvent:CloudServicesAnalyticsDoubleRecoveryPCSDataMatch hardFailure:1 result:v14];
  }

  v28 = sub_10003D904(v27);
  dispatch_group_leave(v28);
}

void sub_10003EC30(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004E4AC();
    }
  }

  else
  {
    v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"status"];
    v7 = [(NSDictionary *)v4 objectForKeyedSubscript:@"message"];
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PCS double recovery: logged metrics with status: %@, message: %@", &v9, 0x16u);
    }
  }
}

void sub_10003EF48(uint64_t a1)
{
  v19[0] = kCFUserNotificationDefaultButtonTitleKey;
  v19[1] = kCFUserNotificationAlternateButtonTitleKey;
  v20[0] = @"Tap-To-Radar";
  v20[1] = @"No";
  v19[2] = kCFUserNotificationAlertMessageKey;
  v19[3] = kCFUserNotificationAlertHeaderKey;
  v20[2] = @"This device found a test data consistency issue. No device behavior or account data is impacted. Please file a radar to help track down the test issue!";
  v20[3] = @"iCloud Account Data Mismatch";
  v2 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  error = 0;
  v3 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v2);
  if (v3)
  {
    v4 = v3;
    *responseFlags = 0;
    CFUserNotificationReceiveResponse(v3, 180.0, responseFlags);
    v5 = responseFlags[0] & 3;
    CFRelease(v4);
    if (!v5)
    {
      if (qword_100084AD8 != -1)
      {
        sub_10004E544();
      }

      v6 = objc_alloc_init(NSDateFormatter);
      [v6 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
      v7 = [v6 stringFromDate:*(a1 + 32)];
      v8 = [NSString stringWithFormat:@"PCS Double Recovery data mismatch detected at %@: %@", v7, *(a1 + 40)];

      v9 = [@"PCS Double Recovery Data Mismatch" stringByAddingPercentEncodingWithAllowedCharacters:qword_100084AE0];
      v10 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:qword_100084AE0];
      v11 = [NSString stringWithFormat:@"tap-to-radar://new?Reproducibilty=Always&Title=%@&ComponentName=CloudServices&ComponentVersion=all&Reproducibility=Not%%20Applicable&ComponentID=507587&Classification=Crash/Hang/Data%%20Loss&Description=%@", v9, v10];

      v12 = [NSURL URLWithString:v11];
      v13 = CloudServicesLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *responseFlags = 138412290;
        *&responseFlags[4] = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PCS double TTR: going to use URL string %@", responseFlags, 0xCu);
      }

      v14 = +[LSApplicationWorkspace defaultWorkspace];
      [v14 openURL:v12 configuration:0 completionHandler:&stru_100075F80];

      goto LABEL_13;
    }
  }

  else
  {
    v15 = CloudServicesLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [NSNumber numberWithInt:error];
      *responseFlags = 138412290;
      *&responseFlags[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PCS double TTR: failed to ask user about TTR: %@", responseFlags, 0xCu);
    }
  }

  v6 = CloudServicesLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *responseFlags = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PCS double TTR: user declined", responseFlags, 2u);
  }

LABEL_13:
}

void sub_10003F29C(id a1)
{
  v1 = objc_alloc_init(NSMutableCharacterSet);
  v2 = qword_100084AE0;
  qword_100084AE0 = v1;

  v3 = qword_100084AE0;
  v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = qword_100084AE0;

  [v5 removeCharactersInString:@"&"];
}

void sub_10003F790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v43 - 216), 8);
  _Block_object_dispose((v43 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_10003F7CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 operationsLogger];
  v8 = [*(a1 + 40) endEventWithResults:v9 error:v6];
  [v7 updateStoreWithEvent:v8];

  (*(*(a1 + 48) + 16))();
}

void sub_10003F880(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003F930;
  v4[3] = &unk_100075D58;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _deleteRecordWithRequest:v3 duplicate:0 completionBlock:v4];
}

void sub_10003F930(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void sub_10003F9CC(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003FA7C;
  v4[3] = &unk_100075D58;
  v6 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v2 _deleteRecordWithRequest:v3 duplicate:1 completionBlock:v4];
}

void sub_10003FA7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to delete double-enrolled record: %@", &v14, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10003FB88(uint64_t a1)
{
  v2 = [*(a1 + 32) deleteDoubleOnly];
  v3 = *(*(a1 + 40) + 16);
  v4 = 48;
  if (v2)
  {
    v4 = 64;
  }

  v5 = 56;
  if (v2)
  {
    v5 = 72;
  }

  v6 = *(*(*(a1 + v4) + 8) + 40);
  v7 = *(*(*(a1 + v5) + 8) + 40);
  v8 = *(a1 + 40);

  return v3(v8, v6, v7);
}

void sub_10003FD98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v8 code] == 401)
    {
      [v6 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      v9 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v6];
    }

    else
    {
      if ([v5 code] == -6011)
      {
LABEL_8:
        (*(a1[6] + 16))();

        goto LABEL_9;
      }

      v9 = [CloudServicesError errorWithCode:22 error:v5 format:@"Error deleting record"];
    }

    v12 = v9;

    v5 = v12;
    goto LABEL_8;
  }

  v10 = a1[4];
  v11 = a1[5];
  v13 = 0;
  [v10 _invalidateEscrowCache:v11 error:&v13];
  v5 = v13;
  (*(a1[6] + 16))();
LABEL_9:
}

void sub_100040160(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 operationsLogger];
  v8 = [*(a1 + 40) endEventWithResults:v9 error:v6];
  [v7 updateStoreWithEvent:v8];

  (*(*(a1 + 48) + 16))();
}

void sub_100040214(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v8 code] == 401)
    {
      [v6 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v6];
    }

    else
    {
      [CloudServicesError errorWithCode:22 error:v5 format:@"Error updating metadata"];
    }
    v10 = ;

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 32) + 16);

    v9();
  }
}

void sub_100040460(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 setObject:v6 forKeyedSubscript:NSUnderlyingErrorKey];
    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v9 code] == 401)
    {
      [v7 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      v10 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v7];
    }

    else
    {
      v12 = [v6 code];
      if (v12 == -4007 || v12 == -4002)
      {
        goto LABEL_9;
      }

      v10 = [CloudServicesError errorWithCode:22 error:v6 format:@"SMS challenge error"];
    }

    v13 = v10;

    v6 = v13;
LABEL_9:
    (*(*(a1 + 32) + 16))();

    goto LABEL_10;
  }

  v14 = @"recoveryChallengeCodeLength";
  v11 = [a2 smsVerificationCodeLength];
  v15 = v11;
  v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  (*(*(a1 + 32) + 16))();
LABEL_10:
}

void sub_100040738(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = objc_alloc_init(NSMutableDictionary);
    [v5 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];
    v6 = [v12 userInfo];
    v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v7 code] == 401)
    {
      [v5 setObject:@"Unauthorized" forKeyedSubscript:NSLocalizedDescriptionKey];
      v8 = [NSError errorWithDomain:kEscrowServiceErrorDomain code:99 userInfo:v5];
    }

    else
    {
      if ([v12 code] == -5012)
      {
        v10 = v12;
LABEL_11:
        v13 = v10;
        (*(*(a1 + 32) + 16))();

        return;
      }

      v8 = [CloudServicesError errorWithCode:22 error:v12 format:@"Unable to change SMS Target"];
    }

    v11 = v8;

    v10 = v11;
    goto LABEL_11;
  }

  v9 = *(*(a1 + 32) + 16);

  v9();
}

void sub_1000409A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [CloudServicesError errorWithCode:305 error:v5 format:@"Unable to get target list"];
  }

  else
  {
    v9 = @"EscrowServiceSMSTargetInfo";
    v8 = [a2 smsTargetsInfo];
    v10 = v8;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100040B7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [CloudServicesError errorWithCode:305 error:v5 format:@"Unable to get country SMS code list"];
  }

  else
  {
    v9 = @"EscrowServiceCountrySMSCodes";
    v8 = [a2 countrySMSCodes];
    v10 = v8;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100041118(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v10 = [CloudServicesError errorWithCode:312 error:v5 format:@"Unable to log metrics"];

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [a2 responseDictionary];
    v7 = *(v8 + 16);
    v10 = v9;
  }

  v7();
}

void sub_1000411EC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sbd.recoverQueue", v3);
  v2 = qword_100084AF0;
  qword_100084AF0 = v1;
}

void sub_100041250(id a1)
{
  qword_100084B00 = dispatch_group_create();

  _objc_release_x1();
}

void sub_100041284(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.sbd.uiQueue", v3);
  v2 = qword_100084B10;
  qword_100084B10 = v1;
}

void sub_100041310(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_100041D24(id a1)
{
  v3 = [AAFAnalyticsTransportRTC analyticsTransportRTCWithClientType:&off_10007A470 clientBundleId:@"com.apple.sbd" clientName:@"com.apple.aaa.dnu"];
  v1 = [AAFAnalyticsReporter analyticsReporterWithTransport:v3];
  v2 = qword_100084B18;
  qword_100084B18 = v1;
}

void sub_100041E90(uint64_t a1)
{
  v4 = [*(a1 + 32) getEvent];
  v2 = [NSNumber numberWithBool:*(a1 + 48)];
  [v4 setObject:v2 forKeyedSubscript:@"didSucceed"];

  [v4 populateUnderlyingErrorsStartingWithRootError:*(a1 + 40)];
  v3 = +[SecureBackupAnalyticsReporterRTC rtcAnalyticsReporter];
  [v3 sendEvent:v4];
}