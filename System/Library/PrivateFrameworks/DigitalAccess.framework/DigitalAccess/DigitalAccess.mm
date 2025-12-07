void sub_248BF6280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248BF6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248BF6F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248BF747C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *KmlErrorString(int a1)
{
  if (!a1)
  {
    return "Success";
  }

  v2 = &dword_278F6FC20;
  v3 = 85;
  result = "Unknown Error";
  while (--v3)
  {
    v5 = v2 + 4;
    v6 = *v2;
    v2 += 4;
    if (v6 == a1)
    {
      return *(v5 - 1);
    }
  }

  return result;
}

uint64_t sesErrorCodeToKmlErrorCode(uint64_t a1, uint64_t a2)
{
  if (a1 == 3)
  {
    return 209;
  }

  v2 = &qword_248C29D28;
  v3 = 3;
  while (--v3)
  {
    v4 = v2 + 2;
    v5 = *v2;
    v2 += 2;
    if (v5 == a1)
    {
      return *(v4 - 2);
    }
  }

  return a2;
}

id sesErrorToKmlError(void *a1, unsigned int a2)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [v3 domain];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  if ([v5 isEqual:v6])
  {
    goto LABEL_5;
  }

  v7 = [v4 domain];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  if (([v7 isEqual:v8] & 1) == 0)
  {
    v11 = [v4 domain];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml"];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      goto LABEL_6;
    }

    v14 = [v4 underlyingErrors];
    if ([v14 count])
    {
      v15 = [v4 underlyingErrors];
      v16 = [v15 firstObject];
      v17 = [v16 code];
    }

    else
    {
      v17 = [v4 code];
    }

    switch(v17)
    {
      case -1009:
        a2 = 228;
        break;
      case 3:
        a2 = 209;
        break;
      case 6:
        a2 = 215;
        break;
      default:
        v18 = MEMORY[0x277CCACA8];
        if (!a2)
        {
          v21 = "Success";
LABEL_25:
          v24 = [v18 stringWithUTF8String:v21];
          v25 = [v4 localizedFailureReason];
          if (v25)
          {
            v26 = [v4 localizedFailureReason];
          }

          else
          {
            v26 = &stru_285B97268;
          }

          v27 = *MEMORY[0x277CCA470];
          v31[0] = *MEMORY[0x277CCA450];
          v31[1] = v27;
          v32[0] = v24;
          v32[1] = v26;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
          v29 = MEMORY[0x277CCA9B8];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml"];
          v9 = [v29 errorWithDomain:v30 code:a2 userInfo:v28];

          goto LABEL_7;
        }

LABEL_21:
        v19 = &dword_278F6FC20;
        v20 = 85;
        v21 = "Unknown Error";
        while (--v20)
        {
          v22 = v19 + 4;
          v23 = *v19;
          v19 += 4;
          if (v23 == a2)
          {
            v21 = *(v22 - 1);
            goto LABEL_25;
          }
        }

        goto LABEL_25;
    }

    v18 = MEMORY[0x277CCACA8];
    goto LABEL_21;
  }

LABEL_5:
LABEL_6:
  v9 = v4;
LABEL_7:

  return v9;
}

id kmlUtilDataForHexString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4 = [v2 stringByReplacingOccurrencesOfString:@" " withString:&stru_285B97268];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_285B97268];

    if ([v5 length] != 1)
    {
      v6 = 0;
      do
      {
        v7 = [v5 characterAtIndex:v6];
        v8 = [v5 characterAtIndex:v6 + 1];
        v9 = __toupper(v7);
        v10 = v9 - 48;
        if (v10 >= 0xA)
        {
          v10 = -1;
        }

        if (v9 - 65 >= 6)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9 - 55;
        }

        v12 = __toupper(v8);
        v13 = v12 - 48;
        if (v13 >= 0xA)
        {
          v13 = -1;
        }

        if (v12 - 65 < 6)
        {
          v13 = v12 - 55;
        }

        v14 = v13 == -1 || v11 == -1;
        v15 = v13 | (16 * v11);
        if (v14)
        {
          v15 = 0;
        }

        v17 = v15;
        [v3 appendBytes:&v17 length:1];
        v6 += 2;
      }

      while ([v5 length] - 1 > v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id kmlUtilHexStringFromData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = 2 * [v2 length];
    v4 = malloc_type_malloc(v3 | 1, 0x100004077774924uLL);
    v4[v3] = 0;
    v5 = [v2 bytes];
    if ([v2 length])
    {
      v6 = 0;
      v7 = v4;
      do
      {
        sprintf(v7, "%02X", *(v5 + v6++));
        v7 += 2;
      }

      while ([v2 length] > v6);
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
    free(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unsigned __int8 *kmlUtilSHA1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  v4 = CC_SHA1(v2, v3, md);
  if (v4)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  }

  return v4;
}

unsigned __int8 *kmlUtilSHA256(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  v4 = CC_SHA256(v2, v3, md);
  if (v4)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  return v4;
}

void kmlUtilLogLargeData(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  IsInternalBuild = KmlLogIsInternalBuild(v4, v5);
  if (IsInternalBuild)
  {
    v7 = KmlLogger(IsInternalBuild);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "void kmlUtilLogLargeData(NSString *__strong, NSData *__strong)";
      v23 = 1024;
      v24 = 118;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : --- start %@ ---", buf, 0x1Cu);
    }
  }

  v8 = kmlUtilHexStringFromData(v4);
  v9 = [v8 length];
  v11 = v9;
  if (v9 < 0x321)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v9 = KmlLogIsInternalBuild(v9, v10);
      if (v9)
      {
        v13 = KmlLogger(v9);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v8 substringWithRange:{v12, 800}];
          *buf = 136315650;
          v22 = "void kmlUtilLogLargeData(NSString *__strong, NSData *__strong)";
          v23 = 1024;
          v24 = 123;
          v25 = 2112;
          v26 = v14;
          _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : %@", buf, 0x1Cu);
        }
      }

      v12 += 800;
      v11 -= 800;
    }

    while (v11 > 0x320);
  }

  v15 = KmlLogIsInternalBuild(v9, v10);
  if (v15)
  {
    v17 = KmlLogger(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v8 substringWithRange:{v12, v11}];
      *buf = 136315650;
      v22 = "void kmlUtilLogLargeData(NSString *__strong, NSData *__strong)";
      v23 = 1024;
      v24 = 127;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_INFO, "%s : %i : %@", buf, 0x1Cu);
    }
  }

  v19 = KmlLogIsInternalBuild(v15, v16);
  if (v19)
  {
    v20 = KmlLogger(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "void kmlUtilLogLargeData(NSString *__strong, NSData *__strong)";
      v23 = 1024;
      v24 = 128;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_248BF3000, v20, OS_LOG_TYPE_INFO, "%s : %i : --- end %@ ---", buf, 0x1Cu);
    }
  }
}

id kmlUtilUUIDToData(void *a1)
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v3[1] = 0;
  [a1 getUUIDBytes:v3];
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:16];

  return v1;
}

id kmlUtilTimeNow()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = objc_alloc_init(MEMORY[0x277CCA968]);
  v2 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v1 setTimeZone:v2];

  [v1 setDateFormat:@"yyyyMMddHHmmss'Z'"];
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v1 setLocale:v3];

  v4 = [v1 stringFromDate:v0];
  v5 = KmlLogger(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "NSData *kmlUtilTimeNow(void)";
    v10 = 1024;
    v11 = 150;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : date now %@", &v8, 0x1Cu);
  }

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v4 length:{"UTF8String"), objc_msgSend(v4, "length")}];

  return v6;
}

id kmlUtilTimeFiveMinutesFromNow()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v1 + 300.0];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v3 setTimeZone:v4];

  [v3 setDateFormat:@"yyyyMMddHHmmss'Z'"];
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v5];

  v6 = [v3 stringFromDate:v2];
  v7 = KmlLogger(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "NSData *kmlUtilTimeFiveMinutesFromNow(void)";
    v12 = 1024;
    v13 = 168;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : date five minutes from %@", &v10, 0x1Cu);
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v6 length:{"UTF8String"), objc_msgSend(v6, "length")}];

  return v8;
}

id kmlUtilInfiniteTime(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = KmlLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "NSData *kmlUtilInfiniteTime(void)";
    v7 = 1024;
    v8 = 176;
    v9 = 2112;
    v10 = @"99991231235959Z";
    _os_log_impl(&dword_248BF3000, v2, OS_LOG_TYPE_DEBUG, "%s : %i : infinite date %@", &v5, 0x1Cu);
  }

  v3 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(@"99991231235959Z" length:{"UTF8String"), objc_msgSend(@"99991231235959Z", "length")}];

  return v3;
}

uint64_t isInternalBuild()
{
  if ((isInternalBuild_hasChecked & 1) == 0)
  {
    if (MGGetBoolAnswer())
    {
      isInternalBuild_internalBuild = 1;
    }

    isInternalBuild_hasChecked = 1;
  }

  return isInternalBuild_internalBuild;
}

id randomStringWithLength(uint64_t a1)
{
  v2 = [@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" length];
  for (i = [MEMORY[0x277CCAB68] stringWithCapacity:a1];
  {
    [i appendFormat:@"%C", objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", "characterAtIndex:", arc4random_uniform(v2))];
  }

  return i;
}

id kmlUtilSanitizeFriendlyName(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 dataUsingEncoding:4];
  v3 = [v2 length];
  if (v3 > 0x1E)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__0;
    *&buf[32] = __Block_byref_object_dispose__0;
    v21 = [MEMORY[0x277CCAB68] string];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = 0;
    v6 = [v1 length];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __kmlUtilSanitizeFriendlyName_block_invoke;
    v10[3] = &unk_278F70178;
    v10[4] = v11;
    v10[5] = buf;
    v7 = KmlLogger([v1 enumerateSubstringsInRange:0 options:v6 usingBlock:{2, v10}]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(*&buf[8] + 40);
      *v12 = 136315906;
      v13 = "NSString *kmlUtilSanitizeFriendlyName(NSString *__strong)";
      v14 = 1024;
      v15 = 235;
      v16 = 2112;
      v17 = v1;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : Original key name: %@ ,  truncated key name: %@", v12, 0x26u);
    }

    v5 = *(*&buf[8] + 40);
    _Block_object_dispose(v11, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v4 = KmlLogger(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      *&buf[4] = "NSString *kmlUtilSanitizeFriendlyName(NSString *__strong)";
      *&buf[12] = 1024;
      *&buf[14] = 217;
      *&buf[18] = 2048;
      *&buf[20] = 30;
      *&buf[28] = 2112;
      *&buf[30] = v1;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_INFO, "%s : %i : UTF8 encoded friendly name is less than %ld chars : %@", buf, 0x26u);
    }

    v5 = v1;
  }

  return v5;
}

void sub_248BFA010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __kmlUtilSanitizeFriendlyName_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  *(*(*(a1 + 32) + 8) + 24) += [v9 lengthOfBytesUsingEncoding:4];
  if (*(*(*(a1 + 32) + 8) + 24) > 0x1EuLL)
  {
    *a7 = 1;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) appendString:v9];
  }
}

id kmlUtilGetDckIdFromSlotId(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && (v1 = [v1 length]) != 0)
  {
    if ([v2 length] == 8)
    {
      v3 = v2;
LABEL_10:
      v5 = v3;
      goto LABEL_14;
    }

    if ([v2 length] >= 9)
    {
      v3 = [v2 subdataWithRange:{0, 8}];
      goto LABEL_10;
    }

    v5 = [MEMORY[0x277CBEB28] dataWithLength:8];
    v6 = KmlLogger([v5 replaceBytesInRange:8 - objc_msgSend(v2 withBytes:{"length"), objc_msgSend(v2, "length"), objc_msgSend(v2, "bytes")}]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "NSData *kmlUtilGetDckIdFromSlotId(NSData *__strong)";
      v10 = 1024;
      v11 = 256;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_INFO, "%s : %i : DCK Identifier : %@", &v8, 0x1Cu);
    }
  }

  else
  {
    v4 = KmlLogger(v1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "NSData *kmlUtilGetDckIdFromSlotId(NSData *__strong)";
      v10 = 1024;
      v11 = 242;
      v12 = 2112;
      v13 = v2;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : Invalid slotId %@:", &v8, 0x1Cu);
    }

    v5 = 0;
  }

LABEL_14:

  return v5;
}

id kmlUtilGetOOBKey(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v6 = KmlLogger(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "NSData *kmlUtilGetOOBKey(NSData *__strong, NSData *__strong)";
      v15 = 1024;
      v16 = 263;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : Missing masterKey or identifier", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v6 = [MEMORY[0x277CBEB28] dataWithLength:64];
  ccsha256_di();
  [v3 length];
  [v3 bytes];
  [v5 length];
  [v5 bytes];
  [v6 length];
  v12 = [v6 mutableBytes];
  v7 = cchkdf();
  if (v7)
  {
    v8 = v7;
    v9 = KmlLogger(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "NSData *kmlUtilGetOOBKey(NSData *__strong, NSData *__strong)";
      v15 = 1024;
      v16 = 274;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_ERROR, "%s : %i : cchkdf failed with %d", buf, 0x18u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = [v6 subdataWithRange:0, 16, v12];
LABEL_10:

  return v10;
}

id kmlUtilRandomDataWithSize(size_t a1)
{
  v2 = [MEMORY[0x277CBEB28] dataWithLength:a1];
  arc4random_buf([v2 mutableBytes], a1);

  return v2;
}

id kmlUtilGeneratePasscode(void *a1, void *a2, unint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v22 = a1;
  v23 = a2;
  v5 = [v22 length];
  if (v5 && (v5 = [v23 length], a3) && v5)
  {
    v24 = 0;
    v6 = [MEMORY[0x277CCAB68] stringWithCapacity:a3];
    v8 = v6;
    v9 = 0;
    while (1)
    {
      IsInternalBuild = KmlLogIsInternalBuild(v6, v7);
      if (IsInternalBuild)
      {
        v11 = KmlLogger(IsInternalBuild);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v26 = "NSString *kmlUtilGeneratePasscode(NSData *__strong, NSData *__strong, NSUInteger)";
          v27 = 1024;
          v28 = 306;
          v29 = 1024;
          v30 = v24;
          v31 = 1024;
          v32 = v9;
          _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_DEBUG, "%s : %i : counter : %u ; digits scored : %u", buf, 0x1Eu);
        }
      }

      v12 = [MEMORY[0x277CBEB28] dataWithBytes:&v24 length:1];
      [v12 appendData:v22];
      [v12 appendData:v23];
      v13 = kmlUtilSHA256(v12);
      v14 = [v13 bytes];
      v15 = [v13 length];
      if (v15)
      {
        v16 = 0;
        while (1)
        {
          if (*(v14 + v16) <= 0xF9u)
          {
            v15 = [v8 appendFormat:@"%C", a0123456789[*(v14 + v16) % 0xAu]];
            if (++v9 == a3)
            {
              break;
            }
          }

          ++v16;
          v15 = [v13 length];
          if (v16 >= v15)
          {
            goto LABEL_16;
          }
        }

        v9 = a3;
      }

LABEL_16:
      if (v24 == 255)
      {
        break;
      }

      ++v24;

      if (v9 >= a3)
      {
        v17 = v8;
        goto LABEL_25;
      }
    }

    v20 = KmlLogger(v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "NSString *kmlUtilGeneratePasscode(NSData *__strong, NSData *__strong, NSUInteger)";
      v27 = 1024;
      v28 = 327;
      _os_log_impl(&dword_248BF3000, v20, OS_LOG_TYPE_ERROR, "%s : %i : Ran out of randomizer counter. Abort!", buf, 0x12u);
    }

    v17 = 0;
LABEL_25:
    v19 = v17;
  }

  else
  {
    v18 = KmlLogger(v5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v26 = "NSString *kmlUtilGeneratePasscode(NSData *__strong, NSData *__strong, NSUInteger)";
      v27 = 1024;
      v28 = 291;
      v29 = 1024;
      v30 = [v22 length];
      v31 = 1024;
      v32 = [v23 length];
      v33 = 1024;
      v34 = a3;
      _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_ERROR, "%s : %i : length of : longTermSecret:%u; seed:%u; desiredPasscode:%u", buf, 0x24u);
    }

    v19 = 0;
  }

  return v19;
}

id kmlUtilGenerateAccountInfoHash(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  if (v5 && (v5 = [v4 length]) != 0)
  {
    v6 = [MEMORY[0x277CBEB28] data];
    [v6 appendData:v3];
    [v6 appendData:v4];
    v7 = kmlUtilSHA256(v6);
  }

  else
  {
    v8 = KmlLogger(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315906;
      v11 = "NSData *kmlUtilGenerateAccountInfoHash(NSData *__strong, NSData *__strong)";
      v12 = 1024;
      v13 = 341;
      v14 = 2048;
      v15 = [v3 length];
      v16 = 2048;
      v17 = [v4 length];
      _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : anonymizedDsid.length = %lu, readerIdentifier.length = %lu", &v10, 0x26u);
    }

    v7 = 0;
  }

  return v7;
}

id kmlUtilGetMockInstanceCAData()
{
  v24 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB28] data];
  v1 = [MEMORY[0x277CBEB18] array];
  v2 = [@"ECIES_v1" dataUsingEncoding:4];
  v3 = [KmlTlv TLVWithTag:218 value:v2];
  [v1 addObject:v3];

  v4 = kmlUtilRandomDataWithSize(0x41uLL);
  v5 = [KmlTlv TLVWithTag:69 value:v4];
  [v1 addObject:v5];

  v6 = kmlUtilRandomDataWithSize(0x20uLL);
  v7 = [KmlTlv TLVWithTag:70 value:v6];
  [v1 addObject:v7];

  v8 = kmlUtilRandomDataWithSize(0x80uLL);
  v9 = [KmlTlv TLVWithTag:74 value:v8];
  [v1 addObject:v9];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v1;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) asData];
        [v0 appendData:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [KmlTlv TLVWithTag:32546 value:v0];
  v17 = [v16 asData];

  return v17;
}

NSObject *kmlUtilDecodeJson(void *a1, void *a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if ([v7 length])
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v48 = 0;
    v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v48];
    v12 = v48;
    v13 = KmlLogger(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
      v52 = 1024;
      v53 = 418;
      v54 = 2112;
      v55 = v12;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : json serialization error : %@", buf, 0x1Cu);
    }

    v15 = KmlLogger(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
      v52 = 1024;
      v53 = 419;
      v54 = 2112;
      v55 = v11;
      _os_log_impl(&dword_248BF3000, v15, OS_LOG_TYPE_DEBUG, "%s : %i : jsonObject : %@", buf, 0x1Cu);
    }

    if (v12 || !v11)
    {
      if (a4)
      {
        v19 = v12;
        v17 = 0;
        v18 = 0;
        *a4 = v12;
LABEL_53:

        goto LABEL_54;
      }

      v17 = 0;
LABEL_52:
      v18 = 0;
      goto LABEL_53;
    }

    if ([v9 length])
    {
      v16 = [v11 objectForKey:v9];
      v17 = v16;
      if (!v16)
      {
LABEL_49:
        v36 = KmlLogger(v16);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
          v52 = 1024;
          v53 = 435;
          v54 = 2112;
          v55 = v9;
          _os_log_impl(&dword_248BF3000, v36, OS_LOG_TYPE_INFO, "%s : %i : Missing target dictionary with keyName : %@", buf, 0x1Cu);
        }

        goto LABEL_52;
      }
    }

    else
    {
      v17 = v11;
    }

    v16 = [v17 count];
    if (v16)
    {
      v38 = v11;
      v43 = v10;
      v39 = v9;
      v40 = v7;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v20 = [v8 allKeys];
      v21 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v45;
        v41 = v8;
        v42 = v20;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v45 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v44 + 1) + 8 * i);
            v26 = [v17 objectForKey:v25];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v28 = [v8 objectForKeyedSubscript:v25];
              if (v28 == objc_opt_class())
              {
                [v43 setObject:v26 forKeyedSubscript:v25];
              }

              else if (v28 == objc_opt_class())
              {
                v31 = objc_alloc_init(MEMORY[0x277CCABB8]);
                v32 = [v31 numberFromString:v26];
                if (v32)
                {
                  [v43 setObject:v32 forKeyedSubscript:v25];
                }

                else
                {
                  v34 = KmlLogger(0);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
                    v52 = 1024;
                    v53 = 458;
                    v54 = 2112;
                    v55 = v25;
                    _os_log_impl(&dword_248BF3000, v34, OS_LOG_TYPE_INFO, "%s : %i : Skip %@, since value is nil", buf, 0x1Cu);
                  }

                  v8 = v41;
                }

                v20 = v42;
              }

              else
              {
                v29 = objc_opt_class();
                if (v28 == v29)
                {
                  v33 = kmlUtilDataForHexString(v26);
                  if ([v33 length])
                  {
                    [v43 setObject:v33 forKeyedSubscript:v25];
                  }

                  else
                  {
                    v35 = KmlLogger(0);
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315650;
                      v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
                      v52 = 1024;
                      v53 = 468;
                      v54 = 2112;
                      v55 = v25;
                      _os_log_impl(&dword_248BF3000, v35, OS_LOG_TYPE_INFO, "%s : %i : Skip %@, since value is nil", buf, 0x1Cu);
                    }
                  }

                  v20 = v42;
                }

                else
                {
                  v30 = KmlLogger(v29);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315650;
                    v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
                    v52 = 1024;
                    v53 = 472;
                    v54 = 2112;
                    v55 = v25;
                    _os_log_impl(&dword_248BF3000, v30, OS_LOG_TYPE_INFO, "%s : %i : Skip %@, since it is expected to have value of unsupported class", buf, 0x1Cu);
                  }
                }
              }
            }

            else
            {
              v28 = KmlLogger(isKindOfClass);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
                v52 = 1024;
                v53 = 442;
                v54 = 2112;
                v55 = v25;
                _os_log_impl(&dword_248BF3000, v28, OS_LOG_TYPE_INFO, "%s : %i : Skip %@, since it has non string value in json", buf, 0x1Cu);
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v22);
      }

      v10 = v43;
      v18 = v43;
      v9 = v39;
      v7 = v40;
      v11 = v38;
      v12 = 0;
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v10 = KmlLogger(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
    v52 = 1024;
    v53 = 408;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_INFO, "%s : %i : json data is nil", buf, 0x12u);
  }

  v18 = 0;
LABEL_54:

  return v18;
}

uint64_t kmlUtilAddUniqueTagToSet(void *a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v7 = KmlLogger(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "_Bool kmlUtilAddUniqueTagToSet(NSMutableSet *__strong, uint16_t)";
      v12 = 1024;
      v13 = 481;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_ERROR, "%s : %i : Received duplicated tag: 0x%02X", &v10, 0x18u);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [v3 addObject:v8];
  }

  return v5 ^ 1u;
}

id KmlLogger(uint64_t a1)
{
  if (KmlLogger_onceToken != -1)
  {
    KmlLogger_cold_1();
  }

  v2 = KmlLogger__logger;

  return v2;
}

uint64_t __KmlLogger_block_invoke()
{
  KmlLogger__logger = os_log_create("com.apple.sesd.kml", "GeneralLogging");

  return MEMORY[0x2821F96F8]();
}

uint64_t KmlLogIsInternalBuild(uint64_t a1, uint64_t a2)
{
  if (KmlLogIsInternalBuild_onceToken != -1)
  {
    KmlLogIsInternalBuild_cold_1();
  }

  return KmlLogIsInternalBuild_internalBuild;
}

uint64_t __KmlLogIsInternalBuild_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  KmlLogIsInternalBuild_internalBuild = result;
  return result;
}

id KmlSignpostLogger(uint64_t a1)
{
  if (KmlSignpostLogger_onceToken != -1)
  {
    KmlSignpostLogger_cold_1();
  }

  v2 = KmlSignpostLogger__signpostLogger;

  return v2;
}

uint64_t __KmlSignpostLogger_block_invoke()
{
  KmlSignpostLogger__signpostLogger = os_log_create("com.apple.sesd.kml", "SignpostLogging");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_INFO, a4, va, 0x12u);
}

uint64_t cccErrorCodeToKmlErrorCode(int a1)
{
  v1 = &byte_248C29D6C;
  v2 = 4;
  while (*v1 != a1)
  {
    v1 += 8;
    if (!--v2)
    {
      return 105;
    }
  }

  return *(v1 - 1);
}

uint64_t kmlErrorCodeToCCCErrorCode(int a1)
{
  v1 = &byte_248C29D6C;
  v2 = 4;
  while (*(v1 - 1) != a1)
  {
    v1 += 8;
    if (!--v2)
    {
      return 255;
    }
  }

  return *v1;
}

char *cccErrorString(int a1)
{
  v2 = &off_278F701C0;
  v3 = 13;
  result = "Unknown Error";
  while (*(v2 - 8) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return [v1 appendData:a1];
}

__n128 OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  *(v20 - 144) = a20.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return [v1 appendData:a1];
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return [v1 appendData:a1];
}

uint64_t OUTLINED_FUNCTION_7(uint64_t result)
{
  *(v2 - 120) = 2112;
  *(v1 + 26) = result;
  return result;
}

BOOL OUTLINED_FUNCTION_11(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_248C020E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248C02E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0355C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C03EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_248C04308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0488C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C04E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0539C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C05D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C06488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C06AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C07090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C07668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C07C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C080DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C08FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C09708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C09C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0A1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0A7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0AE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0B480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0BA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0BFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0C538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0CAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
}

const char *DAErrorString(uint64_t a1)
{
  if (!a1)
  {
    return "Success";
  }

  v2 = &qword_278F70450;
  v3 = 65;
  result = "Unknown Error";
  while (--v3)
  {
    v5 = v2 + 2;
    v6 = *v2;
    v2 += 2;
    if (v6 == a1)
    {
      return *(v5 - 1);
    }
  }

  return result;
}

uint64_t kmlErrorCodeToDAErrorCode(int a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = &dword_248C29DA0;
  v3 = 87;
  result = 213;
  while (--v3)
  {
    v5 = v2 + 4;
    v6 = *v2;
    v2 += 4;
    if (v6 == a1)
    {
      return *(v5 - 1);
    }
  }

  return result;
}

id kmlErrorToDAError(void *a1)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    v4 = [v3 isEqual:@"DigitalAccessError"];

    if (v4)
    {
      v5 = v2;
      goto LABEL_27;
    }

    v6 = [v2 domain];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    if (([v6 isEqual:v7] & 1) == 0)
    {
      v8 = [v2 domain];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      if (([v8 isEqual:v9] & 1) == 0)
      {
        v18 = [v2 domain];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml"];
        v20 = [v18 isEqual:v19];

        if ((v20 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }
    }

LABEL_9:
    v10 = [v2 code];
    if (!v10)
    {
      v15 = 0;
      v16 = MEMORY[0x277CCACA8];
LABEL_16:
      v17 = "Success";
      goto LABEL_23;
    }

    v11 = &dword_248C29DA0;
    v12 = 87;
    while (--v12)
    {
      v13 = v11 + 4;
      v14 = *v11;
      v11 += 4;
      if (v14 == v10)
      {
        v15 = *(v13 - 1);
        v16 = MEMORY[0x277CCACA8];
        if (v15)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

LABEL_18:
    v16 = MEMORY[0x277CCACA8];
    v15 = 213;
LABEL_19:
    v21 = &qword_278F70450;
    v22 = 65;
    v17 = "Unknown Error";
    while (--v22)
    {
      v23 = v21 + 2;
      v24 = *v21;
      v21 += 2;
      if (v24 == v15)
      {
        v17 = *(v23 - 1);
        break;
      }
    }

LABEL_23:
    v25 = [v16 stringWithUTF8String:v17];
    v26 = [v2 localizedFailureReason];
    if (v26)
    {
      v27 = [v2 localizedFailureReason];
    }

    else
    {
      v27 = &stru_285B97268;
    }

    v28 = *MEMORY[0x277CCA470];
    v31[0] = *MEMORY[0x277CCA450];
    v31[1] = v28;
    v32[0] = v25;
    v32[1] = v27;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DigitalAccessError" code:v15 userInfo:v29];

    goto LABEL_27;
  }

  v5 = 0;
LABEL_27:

  return v5;
}

void sub_248C0F00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v20);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248C0F5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C0F7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *DAKeyTransportTypeAsString(uint64_t a1)
{
  v1 = @"Bluetooth";
  if (a1 == 1)
  {
    v1 = @"NearField";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Unknown";
  }
}

void sub_248C1171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C121E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v20);
  _Unwind_Resume(a1);
}

void sub_248C124E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248C1296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C12DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void DAManagerSetMachServiceName(void *result, uint64_t a2)
{
  if (result)
  {
    DAManagerSetMachServiceName_cold_1(result);
  }
}

BOOL OUTLINED_FUNCTION_2_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_248C18308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248C18968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C18F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C19BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1B088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1B628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1C140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1C6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1CE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1DD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_248C1E3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1E9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1F694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C20158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C206CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C20CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C21334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C21978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C21F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C224B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C22A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C22FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0x1Cu);
}

void sub_248C26070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void DAManagerSetMachServiceName_cold_1(void *a1)
{
  v1 = a1;
  v2 = +[DAManager sharedManager];
  [(DAManager *)v2 setServiceName:v1];
}

void sub_248C26DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_248C2701C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}