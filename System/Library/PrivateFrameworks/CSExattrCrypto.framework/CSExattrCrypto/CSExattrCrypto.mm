BOOL isFsType(int a1, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(&v5, 0x878uLL);
  return !fstatfs(a1, &v5) && !strcmp(v5.f_fstypename, a2);
}

void _MDItemSetPrivateAttributesForURL(const __CFURL *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = +[MDPrivateXattrServices defaultServices];
  if (_MDItemSetPrivateAttributesForURL_once != -1)
  {
    _MDItemSetPrivateAttributesForURL_cold_1();
  }

  bzero(buffer, 0x400uLL);
  if (!a1 || !CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    NSLog(&cfstr_InvalidUrl.isa, a1);
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = *MEMORY[0x277CCA5B8];
    v15 = 22;
LABEL_8:
    v16 = [v13 initWithDomain:v14 code:v15 userInfo:0];
    v5[2](v5, v16);
    CFRelease(v16);
    goto LABEL_9;
  }

  v8 = open(buffer, 2);
  if ((v8 & 0x80000000) != 0)
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = *MEMORY[0x277CCA5B8];
    v15 = *__error();
    v13 = v17;
    v14 = v18;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 setObject:_MDItemSetPrivateAttributesForURL_sMDPrivateMDAttributesXattrNSUUID forKey:@"uuid"];
  v11 = [a2 allKeys];
  [v10 setObject:v11 forKey:@"keys"];

  v12 = [a2 allValues];
  [v10 setObject:v12 forKey:@"values"];

  [v7 updatePrivateXattrParams:v10 flags:0 forFileDescriptor:v9 mergeCallback:&__block_literal_global_3 completionHandler:v5];
  close(v9);

LABEL_9:
  objc_autoreleasePoolPop(v6);
}

id copyConnection()
{
  os_unfair_lock_lock(&sLock);
  if (!sConnectionToService)
  {
    if (sConnectionRetainCount)
    {
      copyConnection_cold_1();
    }

    v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.spotlight.CSExattrCryptoService"];
    v1 = sConnectionToService;
    sConnectionToService = v0;

    v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2854F6998];
    [sConnectionToService setRemoteObjectInterface:v2];

    [sConnectionToService resume];
  }

  ++sConnectionRetainCount;
  os_unfair_lock_unlock(&sLock);
  v3 = sConnectionToService;

  return v3;
}

void releaseConnection(void *a1)
{
  v2 = a1;
  os_unfair_lock_lock(&sLock);
  if (sConnectionToService != v2)
  {
    releaseConnection_cold_1();
  }

  if (!v2)
  {
    releaseConnection_cold_3();
  }

  if (!sConnectionRetainCount)
  {
    releaseConnection_cold_2();
  }

  if (!--sConnectionRetainCount)
  {
    [sConnectionToService invalidate];
    v1 = sConnectionToService;
    sConnectionToService = 0;
  }

  os_unfair_lock_unlock(&sLock);
}

const __CFString *_MDItemCopyXattrsForURL(const __CFURL *a1)
{
  result = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (result)
  {
    v2 = result;
    Length = CFStringGetLength(result);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u);
    v6 = MDFSOnlyMDCopyXattrsDictionary(v5);
    free(v5);
    CFRelease(v2);
    return v6;
  }

  return result;
}

void _MDItemDecrypt(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = copyConnection();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___MDItemDecrypt_block_invoke;
  v12[3] = &unk_278D63348;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  if (v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___MDItemDecrypt_block_invoke_2;
    v9[3] = &unk_278D63370;
    v11 = v5;
    v10 = v4;
    [v6 decryptAttributesWithData:a1 withReply:v9];

    v7 = v11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ___MDItemSetPrivateAttributesForURL_block_invoke_2_cold_1();
    }

    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v7 = [v8 initWithDomain:*MEMORY[0x277CCA5B8] code:61 userInfo:0];
    (*(v5 + 2))(v5, v7, 0);
    releaseConnection(v4);
  }
}

void _MDItemFetchPrivateAttributesForURL(const __CFURL *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MDItemCopyXattrsForURL(a1);
  v5 = [(__CFString *)v4 objectForKey:@"_kMDItemEncryptedData"];
  v6 = v5;
  if (v5)
  {
    v12[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___MDItemFetchPrivateAttributesForURL_block_invoke;
    v10[3] = &unk_278D63398;
    v11 = v3;
    _MDItemDecrypt(v7, v10);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v8 initWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    (*(v3 + 2))(v3, v9, 0);
    CFRelease(v9);
  }
}

const __CFNumber *MDFSOnlyMDNumberGetInt64(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFNumber *MDFSOnlyMDNumberGetInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFNumber *MDFSOnlyMDNumberGetBool(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return (valuePtr != 0);
  }

  return result;
}

void *MDCopyDecodedXattrFromData(void *a1, CFTypeRef cf)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBEEE8];
  result = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == cf)
  {
LABEL_4:
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    result = MDPropertyCopyDecodedValue();
    goto LABEL_4;
  }

LABEL_5:
  if (![a1 isEqualToString:@"com.apple.metadata:_kMDItemUserTags"])
  {
    return 0;
  }

  if (MDCopyDecodedXattrFromData_onceToken != -1)
  {
    MDCopyDecodedXattrFromData_cold_1();
  }

  v26 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:MDCopyDecodedXattrFromData_sUserTagsUnarchiveValidClasses fromData:cf error:&v26];
  v8 = v26;
  if (v26)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = a1;
      _os_log_impl(&dword_242636000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Decoding error: %@ for %@", buf, 0x16u);
    }

    return v4;
  }

  v9 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![objc_msgSend(v9 objectForKeyedSubscript:{@"v", "isEqual:", &unk_2854F4FC8}])
  {
    return 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"t"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = [v10 count];
  v12 = v11;
  if (v11 > 99)
  {
    return 0;
  }

  v13 = 8 * v11;
  MEMORY[0x28223BE20](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v14, 8 * v12);
  v15 = [v10 getObjects:v14 range:{0, v12}];
  MEMORY[0x28223BE20](v15);
  v16 = v14;
  bzero(v14, 8 * v12);
  if (v12 < 1)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = *v14;
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v22 = *v14;
      goto LABEL_31;
    }

    v20 = [*v14 count];
    if (v20 == 2)
    {
      [v19 objectAtIndexedSubscript:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v22 = [v19 objectAtIndexedSubscript:0];
      v23 = [v19 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 intValue];
        if ((v24 - 1) <= 6)
        {
          v21 = [v22 stringByAppendingFormat:@"\n%d", v24];
LABEL_23:
          v22 = v21;
        }
      }

      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_31:
      v16[v17++] = v22;
      goto LABEL_32;
    }

    if (v20 == 1)
    {
      [v19 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v19 objectAtIndexedSubscript:0];
        goto LABEL_23;
      }
    }

LABEL_32:
    ++v14;
    --v12;
  }

  while (v12);
  if (v17 > 0)
  {
    return [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:v16 count:v17];
  }

  return 0;
}

void sub_24263815C(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
      JUMPOUT(0x2426380FCLL);
    }

    objc_exception_rethrow();
  }

  JUMPOUT(0x242638154);
}

void sub_2426381C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  sub_242638150(a1);
}

void *__MDCopyDecodedXattrFromData_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  MDCopyDecodedXattrFromData_sUserTagsUnarchiveValidClasses = result;
  return result;
}

void *MDFSOnlyCopyExtendedAttributesFromFd(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v17 = *MEMORY[0x277D85DE8];
  v7 = value;
  bzero(value, 0x1000uLL);
  v8 = fgetxattr(v6, v5, value, 0x1000uLL, 0, 0);
  if (v8 == -1)
  {
    if (*__error() != 34)
    {
      return 0;
    }

    v9 = fgetxattr(v6, v5, 0, 0, 0, 0);
    v7 = malloc_type_malloc(v9, 0x6EEED0F6uLL);
    v8 = fgetxattr(v6, v5, v7, v9, 0, 0);
  }

  else
  {
    v9 = v8;
  }

  v10 = 0;
  if (v9 >= 1 && v8 == v9)
  {
    if ((*v7 & 0x80000000) == 0)
    {
LABEL_8:
      v11 = *MEMORY[0x277CBECE8];
      v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v7, v9, *MEMORY[0x277CBED00]);
      v13 = CFStringCreateWithCString(v11, v5, 0x8000100u);
      v10 = MDCopyDecodedXattrFromData(v13, v12);
      CFRelease(v12);
      CFRelease(v13);
      goto LABEL_9;
    }

    v15 = *v7;
    if ((v15 - 241) >= 2)
    {
      if (v15 != 129)
      {
        goto LABEL_8;
      }

      if (v9 != 9)
      {
        goto LABEL_8;
      }

      v10 = CFDateCreate(*MEMORY[0x277CBECE8], *(v7 + 1));
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else if (v3)
    {
      *v3 = 1;
      v10 = CFDataCreate(*MEMORY[0x277CBECE8], v7, v9);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_9:
  if (v7 != value)
  {
    free(v7);
  }

  return v10;
}

CFMutableDictionaryRef MDFSOnlyMDCopyXattrsDictionaryForFD(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v58 = *MEMORY[0x277D85DE8];
  v7 = namebuff;
  bzero(namebuff, 0x1000uLL);
  v8 = flistxattr(v6, namebuff, 0x1000uLL, 0);
  if (v8 < 0)
  {
    if (*__error() != 34)
    {
      return CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v9 = flistxattr(v6, 0, 0, 0);
    v39 = malloc_type_malloc(v9, 0x7C8DE1E7uLL);
    if (!v39)
    {
      return 0;
    }

    v7 = v39;
    if (flistxattr(v6, v39, v9, 0) < 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = v8;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9 >= 1)
  {
    v41 = v3;
    __s1 = v7;
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&kMDLabelPrivateXattrUUIDBytes];
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v12, 0}];

    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v9 >= 3)
    {
      v14 = *MEMORY[0x277CBECD0];
      v15 = __s1;
      do
      {
        if (!*v15)
        {
          break;
        }

        if (!strncmp(v15, "com.apple.metadata", 0x12uLL))
        {
          v22 = v15[18];
          LOBYTE(valuePtr) = 0;
          if (v22 != 58)
          {
            if (v22 != 46)
            {
              goto LABEL_46;
            }

            LOBYTE(valuePtr) = 1;
          }

          v19 = MDFSOnlyCopyExtendedAttributesFromFd(v6);
          if (v19)
          {
            if (valuePtr)
            {
LABEL_32:
              if (!strncmp(v15, "com.apple.metadata:kMDLabel_", 0x1CuLL))
              {
                bzero(&value, 0x400uLL);
                snprintf(&value, 0x400uLL, "%s.%s", "com.apple.metadata", v15 + 28);
                [v42 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", &value)}];
                [v43 addObject:v19];
              }

              if (!v19)
              {
                goto LABEL_46;
              }
            }

            else if ((v5 & 1) == 0)
            {
              v23 = CFStringCreateWithCString(v10, v15 + 19, 0x8000100u);
              if (v23)
              {
                v24 = v23;
                CFDictionaryAddValue(Mutable, v23, v19);
                CFRelease(v24);
              }
            }

            goto LABEL_35;
          }

          if (valuePtr)
          {
            goto LABEL_32;
          }
        }

        else if ((v5 & 1) == 0)
        {
          if (!strcmp(v15, "com.apple.lastuseddate#PS"))
          {
            value = 0;
            v55 = 0;
            v56 = 0;
            if (v6 == -1)
            {
              goto LABEL_45;
            }

            v25 = fgetxattr(v6, "com.apple.lastuseddate#PS", &value, 0x18uLL, 0, 0);
            if ((v25 & 0x8000000000000000) == 0)
            {
              if (v25 != 16)
              {
LABEL_45:
                *__error() = 22;
                goto LABEL_46;
              }

              if (value)
              {
                v19 = CFDateCreate(v10, v55 / 1000000000.0 + value - v14);
                v20 = Mutable;
                v21 = @"kMDItemLastUsedDate";
LABEL_30:
                CFDictionarySetValue(v20, v21, v19);
LABEL_35:
                CFRelease(v19);
              }
            }
          }

          else if (!strcmp(v15, "com.apple.TextEncoding"))
          {
            p_value = &value;
            bzero(&value, 0x400uLL);
            if (fgetxattr(v6, v15, &value, 0x400uLL, 0, 0) > 0)
            {
              goto LABEL_39;
            }

            if (*__error() == 34)
            {
              v27 = fgetxattr(v6, v15, 0, 0, 0, 0);
              p_value = malloc_type_calloc(1uLL, v27 + 1, 0x100004077774924uLL);
              fgetxattr(v6, v15, p_value, v27, 0, 0);
LABEL_39:
              v28 = strchr(p_value, 59);
              if (v28)
              {
                encoding = 0;
                if (sscanf(v28 + 1, "%u", &encoding) == 1)
                {
                  if (CFStringIsEncodingAvailable(encoding))
                  {
                    valuePtr = encoding;
                    v29 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
                    CFDictionarySetValue(Mutable, @"--_kMDItemTextEncodingHint", v29);
                    CFRelease(v29);
                  }
                }
              }

              if (p_value != &value)
              {
                free(p_value);
              }
            }
          }

          else if (!strncmp(v15, "com.apple.SharedWithYou", 0x17uLL))
          {
            v16 = &value;
            bzero(&value, 0x400uLL);
            if (fgetxattr(v6, v15, &value, 0x400uLL, 0, 0) <= 0)
            {
              if (*__error() != 34)
              {
                goto LABEL_46;
              }

              v17 = fgetxattr(v6, v15, 0, 0, 0, 0);
              v16 = malloc_type_calloc(1uLL, v17 + 1, 0x100004077774924uLL);
              fgetxattr(v6, v15, v16, v17, 0, 0);
            }

            v18 = CFStringCreateWithCString(v10, v16, 0x8000100u);
            if (v18)
            {
              v19 = v18;
              v20 = Mutable;
              v21 = @"com.apple.SharedWithYou";
              goto LABEL_30;
            }
          }
        }

LABEL_46:
        v30 = strlen(v15) + 1;
        v15 += v30;
        v9 -= v30;
      }

      while (v9 > 2);
    }

    if ([v42 count])
    {
      if (v41)
      {
        v31 = _MDPlistContainerCreateMutable();
        _MDPlistContainerBeginContainer();
        _MDPlistContainerBeginDictionary();
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();
        _MDPlistContainerAddCString();
        _MDPlistContainerBeginArray();
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v32 = [v13 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v46;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v46 != v34)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v45 + 1) + 8 * i) UUIDString];
              _MDPlistContainerAddObject();
            }

            v33 = [v13 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v33);
        }

        _MDPlistContainerEndArray();
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();
        _MDPlistContainerEndDictionary();
        _MDPlistContainerEndContainer();
        v36 = objc_alloc(MEMORY[0x277CBEA90]);
        Bytes = _MDPlistContainerGetBytes();
        v38 = [v36 initWithBytes:Bytes length:_MDPlistContainerGetLength()];
        CFDictionarySetValue(Mutable, @"_kMDItemEncryptedData", v38);

        CFRelease(v31);
      }

      else
      {
        v51[0] = @"xids";
        v51[1] = @"uuids";
        v52[0] = v42;
        v52[1] = v13;
        v51[2] = @"datas";
        v52[2] = v43;
        CFDictionarySetValue(Mutable, @"_kMDItemEncryptedDataDictionary", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3]);
      }
    }

    if (__s1 != namebuff)
    {
      free(__s1);
    }
  }

  return Mutable;
}

CFMutableDictionaryRef MDFSOnlyMDCopyXattrsDictionary(const char *a1)
{
  v1 = open(a1, 33024);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = v1;
  v3 = MDFSOnlyMDCopyXattrsDictionaryForFD(v1);
  close(v2);
  return v3;
}

void sub_242639120(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2 == 2)
  {
    objc_begin_catch(exc_buf);
    NSLog(&stru_2854F4640.isa);

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x2426390F0);
}

uint64_t addStandardKeychainAttributesToDictionary(void *a1)
{
  [a1 setObject:@"com.apple.Spotlight.Metadata" forKey:*MEMORY[0x277CDBEC8]];
  v2 = *MEMORY[0x277CBED28];
  [a1 setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDC140]];
  [a1 setObject:v2 forKey:*MEMORY[0x277CDC558]];
  v3 = *MEMORY[0x277CDC008];
  v4 = *MEMORY[0x277CDBFE0];

  return [a1 setObject:v3 forKey:v4];
}

void updateDesignatedUUIDIfNewer(uint64_t a1, void *a2, void *a3, id *a4)
{
  v6 = [a2 objectForKey:*MEMORY[0x277CDBF90]];
  if (!*(a1 + 8))
  {
    *(a1 + 8) = a3;
    goto LABEL_5;
  }

  if ([*a4 compare:v6] == 1)
  {

    *(a1 + 8) = a3;
LABEL_5:
    *a4 = v6;
    return;
  }
}

void sub_242639710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFDataRef _copyCryptedDataWithKey(CCOperation a1, const void *a2, size_t a3, void *a4, int a5, int a6)
{
  v23 = *MEMORY[0x277D85DE8];
  dataOutAvailable = a3 + 16;
  v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:a3 + 16];
  length = 0;
  iv[0] = a5;
  iv[1] = a6;
  v22 = 0;
  v14 = CCCrypt(a1, 0, 1u, [a4 bytes], objc_msgSend(a4, "length"), iv, a2, a3, objc_msgSend(v13, "bytes"), dataOutAvailable, &length);
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _copyCryptedDataWithKey_cold_1(v15);
    }

    v16 = 0;
  }

  else
  {
    v17 = *MEMORY[0x277CBECE8];
    v18 = [v13 bytes];
    v16 = CFDataCreate(v17, v18, length);
  }

  return v16;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

unint64_t _MDLabelUUIDEncode(unint64_t result, unint64_t a2, uint64_t a3)
{
  *a3 = _MDLabelUUIDEncode_encodingVector[result >> 3];
  *(a3 + 1) = _MDLabelUUIDEncode_encodingVector[(result >> 14) & 0xFFFFFFFFFFFFFFE3 | (4 * (result & 7))];
  *(a3 + 2) = _MDLabelUUIDEncode_encodingVector[(result >> 9) & 0x1F];
  *(a3 + 3) = _MDLabelUUIDEncode_encodingVector[(BYTE2(result) & 0xF0 | (result & 0x100)) >> 4];
  *(a3 + 4) = _MDLabelUUIDEncode_encodingVector[(result >> 15) & 0x1E | (result >> 31)];
  *(a3 + 5) = _MDLabelUUIDEncode_encodingVector[(result >> 26) & 0x1F];
  *(a3 + 6) = _MDLabelUUIDEncode_encodingVector[(result >> 21) & 0x18 | (result >> 37) & 7];
  *(a3 + 7) = _MDLabelUUIDEncode_encodingVector[HIDWORD(result) & 0x1F];
  *(a3 + 8) = _MDLabelUUIDEncode_encodingVector[(result >> 43) & 0x1F];
  *(a3 + 9) = _MDLabelUUIDEncode_encodingVector[(result >> 38) & 0x1C | (result >> 54) & 3];
  *(a3 + 10) = _MDLabelUUIDEncode_encodingVector[(result >> 49) & 0x1F];
  *(a3 + 11) = _MDLabelUUIDEncode_encodingVector[(result >> 44) & 0x10 | (result >> 60)];
  *(a3 + 12) = _MDLabelUUIDEncode_encodingVector[(result >> 55) & 0x1E | (a2 >> 7) & 1];
  *(a3 + 13) = _MDLabelUUIDEncode_encodingVector[(a2 >> 2) & 0x1F];
  *(a3 + 14) = _MDLabelUUIDEncode_encodingVector[(a2 >> 13) & 0xFFFFFFFFFFFFFFE7 | (8 * (a2 & 3))];
  *(a3 + 15) = _MDLabelUUIDEncode_encodingVector[(a2 >> 8) & 0x1F];
  *(a3 + 16) = _MDLabelUUIDEncode_encodingVector[(a2 >> 19) & 0x1F];
  *(a3 + 17) = _MDLabelUUIDEncode_encodingVector[(a2 >> 14) & 0x1C | (a2 >> 30)];
  *(a3 + 18) = _MDLabelUUIDEncode_encodingVector[(a2 >> 25) & 0x1F];
  *(a3 + 19) = _MDLabelUUIDEncode_encodingVector[(a2 >> 20) & 0x10 | (a2 >> 36) & 0xF];
  *(a3 + 20) = _MDLabelUUIDEncode_encodingVector[(a2 >> 31) & 0x1E | (a2 >> 47) & 1];
  *(a3 + 21) = _MDLabelUUIDEncode_encodingVector[(a2 >> 42) & 0x1F];
  *(a3 + 22) = _MDLabelUUIDEncode_encodingVector[(a2 >> 37) & 0x18 | (a2 >> 53) & 7];
  *(a3 + 23) = _MDLabelUUIDEncode_encodingVector[HIWORD(a2) & 0x1F];
  *(a3 + 24) = _MDLabelUUIDEncode_encodingVector[a2 >> 59];
  *(a3 + 25) = _MDLabelUUIDEncode_encodingVector[(a2 >> 54) & 0x1C];
  return result;
}

uint64_t _MDPrivateXattrUUIDsGetter(uint64_t a1, uint64_t a2)
{
  if (_MDPrivateXattrUUIDsGetter_once != -1)
  {
    _MDPrivateXattrUUIDsGetter_cold_1();
  }

  return _MDPrivateXattrUUIDsGetter_uuids;
}

CFTypeID MDLabelGetTypeID(void)
{
  if (MDLabelGetTypeID_once != -1)
  {
    MDLabelGetTypeID_cold_1();
  }

  return MDLabelGetTypeID_typeID;
}

uint64_t __MDLabelGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  MDLabelGetTypeID_typeID = result;
  return result;
}

uint64_t copyUpdatedData(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v151 = v2;
  v152 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v192 = *MEMORY[0x277D85DE8];
  v15 = [v10 objectForKey:@"keys"];
  v16 = [v11 objectForKey:@"values"];
  v162 = 0;
  if (v13)
  {
    v17 = [+[MDPrivateXattrServices defaultServices](MDPrivateXattrServices "defaultServices")];
    if ([v17 count])
    {
      v18 = objc_alloc(MEMORY[0x277CBEB38]);
      v184[0] = [v17 allKeys];
      v184[1] = [v17 allValues];
      v19 = [v18 initWithObjects:objc_msgSend(MEMORY[0x277CBEA60] forKeys:{"arrayWithObjects:count:", v184, 2), &unk_2854F4FE0}];

      if (v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
LABEL_7:
  v20 = [+[MDKeyRing defaultKeyRing](MDKeyRing "defaultKeyRing")];
  v21 = [v11 objectForKey:@"uuid"];
  v155 = v20;
  v153 = v9;
  if (!v9)
  {
    v71 = [v19 objectForKey:@"uuid"];
    if (!v71 || ![v21 isEqual:v71])
    {
      goto LABEL_84;
    }

    v22 = copyUpdatedXattrDictionary(v19, v15, v16, v7);
LABEL_83:
    if (v22)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v22 = copyUpdatedXattrDictionary(v19, v15, v16, v7);
  if (eligbleToThin_once != -1)
  {
    copyUpdatedData_cold_1();
  }

  if (![v15 count] || !objc_msgSend(eligbleToThin_sThinnableKeys, "containsObject:", objc_msgSend(v15, "objectAtIndexedSubscript:", 0)))
  {
    goto LABEL_83;
  }

  v148 = v19;
  v23 = [v22 objectForKey:@"keys"];
  v149 = [v22 objectForKey:@"values"];
  v147 = [v22 objectForKey:@"mod_date"];
  if (![v15 count])
  {
    goto LABEL_143;
  }

  v24 = [v23 count];
  if (v24 != [v149 count] || !objc_msgSend(v23, "count"))
  {
    goto LABEL_143;
  }

  v140 = v21;
  v141 = v11;
  v142 = v14;
  v156 = v22;
  v145 = v23;
  v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjects:v149 forKeys:v23];
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v26 = [v15 countByEnumeratingWithState:&v179 objects:v191 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v180;
    v29 = -1;
LABEL_17:
    v30 = 0;
    while (1)
    {
      if (*v180 != v28)
      {
        objc_enumerationMutation(v15);
      }

      v31 = [v25 objectForKeyedSubscript:*(*(&v179 + 1) + 8 * v30)];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_142;
      }

      v32 = [v31 count];
      if (v29 == -1)
      {
        v29 = v32;
        if (!v32)
        {
          goto LABEL_142;
        }
      }

      else if (v29 != v32)
      {
        goto LABEL_142;
      }

      if (v27 == ++v30)
      {
        v27 = [v15 countByEnumeratingWithState:&v179 objects:v191 count:16];
        if (v27)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  v33 = [v25 objectForKeyedSubscript:{objc_msgSend(v15, "objectAtIndexedSubscript:", 0)}];
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v175 objects:v189 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v176;
LABEL_29:
    v37 = 0;
    while (1)
    {
      if (*v176 != v36)
      {
        objc_enumerationMutation(v33);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = [v33 countByEnumeratingWithState:&v175 objects:v189 count:16];
        if (v35)
        {
          goto LABEL_29;
        }

        goto LABEL_35;
      }
    }

LABEL_142:

    v22 = v156;
    v11 = v141;
    v14 = v142;
    v21 = v140;
    goto LABEL_143;
  }

LABEL_35:
  v138 = v5;
  v139 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v38 = [v33 count];
  v144 = [v33 lastObject];
  v146 = [MEMORY[0x277CBEB58] set];
  v39 = [MEMORY[0x277CBEB38] dictionary];
  if (v38)
  {
    v143 = v33;
    do
    {
      v40 = [v33 objectAtIndexedSubscript:--v38];
      [v144 timeIntervalSinceDate:v40];
      if (v41 > 0.0)
      {
        if (v41 >= *"")
        {
          if (v41 >= 2678400.0)
          {
            if (v41 >= 94867200.0)
            {
              v42 = 4;
            }

            else
            {
              v42 = 12;
            }
          }

          else
          {
            v42 = 28;
          }
        }

        else
        {
          v42 = 60;
        }

        v40 = [v139 dateFromComponents:{objc_msgSend(v139, "components:fromDate:", v42, v40)}];
      }

      v43 = [MEMORY[0x277CBEB38] dictionary];
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v44 = [v15 countByEnumeratingWithState:&v171 objects:&v187 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v172;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v172 != v46)
            {
              objc_enumerationMutation(v15);
            }

            v48 = *(*(&v171 + 1) + 8 * i);
            v49 = [v15 objectAtIndexedSubscript:0];
            v50 = v40;
            if (v48 != v49)
            {
              v50 = [objc_msgSend(v25 objectForKeyedSubscript:{v48), "objectAtIndexedSubscript:", v38}];
            }

            [v43 setObject:v50 forKeyedSubscript:v48];
          }

          v45 = [v15 countByEnumeratingWithState:&v171 objects:&v187 count:16];
        }

        while (v45);
      }

      if (([v146 containsObject:v43] & 1) == 0)
      {
        [v146 addObject:v43];
        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        v51 = [v15 countByEnumeratingWithState:&v167 objects:v186 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v168;
          do
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v168 != v53)
              {
                objc_enumerationMutation(v15);
              }

              v55 = *(*(&v167 + 1) + 8 * j);
              v56 = [v39 objectForKeyedSubscript:v55];
              if (!v56)
              {
                v56 = [MEMORY[0x277CBEB18] array];
                [v39 setObject:v56 forKeyedSubscript:v55];
              }

              [v56 addObject:{objc_msgSend(v43, "objectForKeyedSubscript:", v55)}];
            }

            v52 = [v15 countByEnumeratingWithState:&v167 objects:v186 count:16];
          }

          while (v52);
        }
      }

      v33 = v143;
    }

    while (v38);
  }

  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v59 = [v15 countByEnumeratingWithState:&v163 objects:v185 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v164;
    do
    {
      for (k = 0; k != v60; ++k)
      {
        if (*v164 != v61)
        {
          objc_enumerationMutation(v15);
        }

        v63 = *(*(&v163 + 1) + 8 * k);
        v64 = [v39 objectForKeyedSubscript:v63];
        [v57 addObject:v63];
        [v58 addObject:{objc_msgSend(objc_msgSend(v64, "reverseObjectEnumerator"), "allObjects")}];
      }

      v60 = [v15 countByEnumeratingWithState:&v163 objects:v185 count:16];
    }

    while (v60);
  }

  v65 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v15];
  v66 = [v145 count];
  v20 = v155;
  v9 = v153;
  v21 = v140;
  if (v66)
  {
    v67 = v66;
    for (m = 0; m != v67; ++m)
    {
      v69 = [v145 objectAtIndexedSubscript:m];
      if (([v65 containsObject:v69] & 1) == 0)
      {
        [v57 addObject:v69];
        [v58 addObject:{objc_msgSend(v149, "objectAtIndexedSubscript:", m)}];
      }
    }
  }

  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v70 setObject:v57 forKeyedSubscript:@"keys"];
  [v70 setObject:v58 forKeyedSubscript:@"values"];

  v22 = v156;
  v5 = v138;
  v11 = v141;
  v14 = v142;
  if (v70)
  {
    [v70 setObject:v147 forKey:@"mod_date"];
    goto LABEL_144;
  }

LABEL_143:
  v70 = [v22 copy];
LABEL_144:

  v22 = v70;
  v19 = v148;
  if (!v22)
  {
LABEL_84:
    v22 = [v11 mutableCopy];
    [v22 removeObjectForKey:@"uuid"];
    [v22 setObject:objc_msgSend(MEMORY[0x277CBEAA8] forKey:{"date"), @"mod_date"}];
  }

LABEL_85:
  v157 = v22;

  memset(v189, 0, sizeof(v189));
  v190 = 0;
  if (v9)
  {
    v72 = v20;
  }

  else
  {
    v72 = v21;
  }

  v188 = 0;
  v187 = 0;
  [v14 digestUUIDBytesWithKey:v20 forUUID:v72 uuidBytes:&v187];
  _MDLabelUUIDEncode(v187, v188, v189);
  v73 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s%s", "com.apple.metadata:kMDLabel_", v189];
  *v5 = v73;
  [v73 UTF8String];
  v74 = objc_alloc(MEMORY[0x277CBEB18]);
  v75 = [v74 initWithCapacity:{objc_msgSend(v162, "count")}];
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v76 = v162;
  v77 = [v162 countByEnumeratingWithState:&v158 objects:v183 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v159;
    do
    {
      for (n = 0; n != v78; ++n)
      {
        if (*v159 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v158 + 1) + 8 * n);
        if ([v81 hasPrefix:@"com.apple.metadata:kMDLabel_"])
        {
          v82 = v81;
LABEL_97:
          v87 = v82;
          goto LABEL_99;
        }

        if ([v81 hasPrefix:@"com.apple.metadata"])
        {
          v83 = v75;
          v84 = v5;
          v85 = objc_alloc(MEMORY[0x277CCACA8]);
          v137 = [v81 substringFromIndex:19];
          v86 = v85;
          v5 = v84;
          v75 = v83;
          v82 = [v86 initWithFormat:@"%s%@", "com.apple.metadata:kMDLabel_", v137];
          goto LABEL_97;
        }

        v87 = 0;
LABEL_99:
        if (([v87 isEqual:*v5] & 1) == 0)
        {
          [v75 addObject:v87];
        }
      }

      v78 = [v76 countByEnumeratingWithState:&v158 objects:v183 count:16];
    }

    while (v78);
  }

  v88 = v22;
  if (![objc_msgSend(v22 objectForKey:{@"keys", "count"}])
  {
    [v75 addObject:*v5];
    v108 = 0;
    v94 = v155;
    goto LABEL_138;
  }

  bzero(v191, 0x2000uLL);
  if (v153)
  {
    v89 = -14;
  }

  else
  {
    v89 = -15;
  }

  v90 = arc4random();
  v91 = arc4random();
  v92 = v91;
  v185[0] = 0;
  if (v153)
  {
    v93 = storePrivateMDAttributeData(v22, v191, 0x2000uLL, v185);
    v94 = v155;
    if (!v93)
    {
      v95 = malloc_type_malloc(0x10000uLL, 0x5D37A958uLL);
      v93 = storePrivateMDAttributeData(v22, v95, 0x10000uLL, v185);
      if (!v93)
      {
        copyUpdatedData_cold_3(0, v96, v97, v98, v99, v100, v101, v102);
      }
    }

    v103 = v93;
    v104 = v185[0];
    if (v185[0])
    {
      goto LABEL_111;
    }

LABEL_127:
    if (v103 != v191)
    {
      free(v103);
    }

    goto LABEL_135;
  }

  v150 = v91;
  v154 = v89;
  v109 = v90;
  v110 = [v22 objectForKey:@"uuid"];
  v111 = [v22 objectForKey:@"keys"];
  v112 = [v22 objectForKey:@"values"];
  v113 = [v111 count];
  v114 = [v112 count];
  v115 = 24 * v113 + 20;
  if (v115 <= 0x2000)
  {
    v103 = v191;
  }

  else
  {
    v103 = malloc_type_malloc(v115, 0x900D5E5DuLL);
  }

  *v103 = 1279345228;
  v186[0] = v103 + 1;
  UUIDBytes = getUUIDBytes(v110, v186);
  if (!UUIDBytes)
  {
    copyUpdatedData_cold_2(UUIDBytes, v117, v118, v119, v120, v121, v122, v123);
  }

  if (v113 >= 1)
  {
    for (ii = 0; ii != v113; ++ii)
    {
      if (getUUIDBytes([v111 objectAtIndex:ii], v186))
      {
        v125 = 0.0;
        if (ii < v114)
        {
          v126 = [v112 objectAtIndex:ii];
          v127 = CFGetTypeID(v126);
          if (v127 == CFDateGetTypeID())
          {
            v125 = MEMORY[0x245D12EC0](v126);
          }
        }

        v128 = v186[0];
        *v186[0] = v125;
        v186[0] = v128 + 8;
      }
    }
  }

  v104 = v186[0] - v103;
  v185[0] = v186[0] - v103;
  v94 = v155;
  v88 = v157;
  v90 = v109;
  v89 = v154;
  v92 = v150;
  if (v186[0] == v103)
  {
    goto LABEL_127;
  }

LABEL_111:
  v105 = objc_alloc(MEMORY[0x277CBEA90]);
  v106 = v104 + 9;
  if (v103 == v191)
  {
    v107 = [v105 initWithBytes:v103 length:v106];
  }

  else
  {
    v107 = [v105 initWithBytesNoCopy:v103 length:v106 freeWhenDone:1];
  }

  v129 = v107;
  v130 = (*(v151 + 16))(v151, v94, v90, v92, v107, 1);

  if (!v130)
  {
LABEL_135:
    v108 = 0;
    goto LABEL_138;
  }

  v131 = [v130 length];
  v132 = v131 + 9;
  v133 = v191;
  if ((v131 + 9) > 0x2000)
  {
    v133 = malloc_type_malloc(v131 + 9, 0xF05C1A0FuLL);
  }

  *v133 = v89;
  *(v133 + 1) = v90;
  *(v133 + 5) = v92;
  memcpy(v133 + 9, [v130 bytes], objc_msgSend(v130, "length"));
  v134 = objc_alloc(MEMORY[0x277CBEA90]);
  if (v133 == v191)
  {
    v135 = [v134 initWithBytes:v133 length:v132];
  }

  else
  {
    v135 = [v134 initWithBytesNoCopy:v133 length:v132 freeWhenDone:1];
  }

  v108 = v135;

  v88 = v157;
LABEL_138:
  if ([v75 count])
  {
    *v152 = v75;
  }

  else
  {
  }

  return v108;
}

id copyUpdatedXattrDictionary(void *a1, void *a2, void *a3, char a4)
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [a1 objectForKey:@"keys"];
  v10 = [a1 objectForKey:@"values"];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v13 = [a2 mutableCopy];
  v14 = [a3 mutableCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __copyUpdatedXattrDictionary_block_invoke;
  v17[3] = &unk_278D63680;
  v17[4] = v13;
  v17[5] = v14;
  v18 = a4;
  v17[6] = v10;
  v17[7] = v11;
  v17[8] = v12;
  [v9 enumerateObjectsUsingBlock:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __copyUpdatedXattrDictionary_block_invoke_2;
  v16[3] = &unk_278D636A8;
  v16[4] = v14;
  v16[5] = v11;
  v16[6] = v12;
  [v13 enumerateObjectsUsingBlock:v16];

  [v8 setObject:v11 forKey:@"keys"];
  [v8 setObject:v12 forKey:@"values"];
  [v8 setObject:objc_msgSend(MEMORY[0x277CBEAA8] forKey:{"date"), @"mod_date"}];
  return v8;
}

uint64_t digestOneInternal(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7 = 0;
  v8 = 0;
  [a1 digestUUIDBytesWithKey:a2 forUUID:a3 uuidBytes:&v7];
  _MDLabelUUIDEncode(v7, v8, v9);
  return [a4 setObject:a2 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"com.apple.metadata.%s", v9)}];
}

void *__copyUpdatedXattrDictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) indexOfObject:a2];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(a1 + 48) objectAtIndex:a3];
    if (result != *MEMORY[0x277CBEEE8])
    {
      v8 = result;
      [*(a1 + 56) addObject:a2];
      v9 = *(a1 + 64);

      return [v9 addObject:v8];
    }
  }

  else
  {
    v10 = v6;
    v11 = [*(a1 + 40) objectAtIndex:v6];
    if (v11 != *MEMORY[0x277CBEEE8])
    {
      v12 = v11;
      if (*(a1 + 72) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [*(a1 + 48) objectAtIndex:a3];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v15[0] = v13;
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
          }

          v12 = [v14 arrayByAddingObjectsFromArray:v12];
        }
      }

      [*(a1 + 56) addObject:a2];
      [*(a1 + 64) addObject:v12];
    }

    [*(a1 + 32) removeObjectAtIndex:v10];
    return [*(a1 + 40) removeObjectAtIndex:v10];
  }

  return result;
}

void *__copyUpdatedXattrDictionary_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) objectAtIndex:?];
  if (result != *MEMORY[0x277CBEEE8])
  {
    v5 = result;
    [*(a1 + 40) addObject:a2];
    v6 = *(a1 + 48);

    return [v6 addObject:v5];
  }

  return result;
}

void *__eligbleToThin_block_invoke()
{
  v2[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v2[0] = @"kMDItemUserSharedSentDate";
  v2[1] = @"kMDItemUserSharedReceivedDate";
  v2[2] = @"kMDItemUserPrintedDate";
  v2[3] = @"kMDItemUserDownloadedDate";
  v2[4] = @"kMDItemUserModifiedDate";
  v2[5] = @"kMDItemUserCreatedDate";
  result = [v0 initWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v2, 6)}];
  eligbleToThin_sThinnableKeys = result;
  return result;
}

uint64_t storePrivateMDAttributeData(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (_init_private_attributes_once != -1)
  {
    storePrivateMDAttributeData_cold_1();
  }

  v7 = [a1 objectForKey:@"keys"];
  v8 = [a1 objectForKey:@"values"];
  v20 = [a1 objectForKey:@"mod_date"];
  v9 = [v7 count];
  v10 = [v7 count];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v21 = 0;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *MEMORY[0x277CBEEE8];
    do
    {
      v14 = [v7 objectAtIndex:v12];
      v15 = sStringTypeId;
      if (v15 == CFGetTypeID(v14))
      {
        v16 = [v8 objectAtIndex:v12];
        if (v16 != v13)
        {
          v17 = v16;
          if (!serializeCFString(a2, &v21, a3, v14) || !serializeCFType(a2, &v21, a3, v17))
          {
            return 0;
          }
        }
      }
    }

    while (v11 != ++v12);
  }

  if (!serializeCFString(a2, &v21, a3, @"mod_date") || !serializeCFType(a2, &v21, a3, v20))
  {
    return 0;
  }

  *a4 = v21;
  return a2;
}

void __message_assert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v11 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, "%s:%u: failed assertion '%s' %s ", va);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = v8[0];
    _os_log_error_impl(&dword_242636000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v8[0]);
}

uint64_t getUUIDBytes(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFUUIDGetTypeID())
  {
    v6 = CFUUIDGetUUIDBytes(a1);
    v5 = *&v6.byte0;
    *a2 = v6;
LABEL_5:
    *a2 = v5 + 16;
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 getUUIDBytes:*a2];
    v5 = *a2;
    goto LABEL_5;
  }

  return 0;
}

uint64_t serializeCFString(uint64_t a1, unint64_t *a2, unint64_t a3, const __CFString *key)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 >= a3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(sStringIDMappings, key);
  if (!Value)
  {
    *(a1 + v4) = 1;
    Length = CFStringGetLength(key);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v15 = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding < 1024)
    {
      v16 = v25;
    }

    else
    {
      v16 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x8FCC2362uLL);
    }

    v17 = v4 + 1;
    bzero(v25, 0x400uLL);
    if (!CFStringGetCString(key, v16, v15 + 1, 0x8000100u))
    {
      *v16 = 0;
    }

    v18 = strlen(v16) + 1;
    v19 = v18 + v17;
    if (v18 + v17 < a3)
    {
      memcpy((a1 + v17), v16, v18);
      if (v16 != v25)
      {
        free(v16);
      }

      *a2 = v19;
      return 1;
    }

    if (v16 != v25)
    {
      free(v16);
    }

    return 0;
  }

  v10 = *a2;
  if (*a2 >= a3)
  {
    return 0;
  }

  v11 = v10 + 1;
  *(a1 + v10) = 4;
  if (Value >= 0x80)
  {
    if (Value >= 0x4000)
    {
      v21 = 4;
      if (Value >> 28)
      {
        v21 = 5;
      }

      if (Value < 0x200000)
      {
        v21 = 3;
      }

      if (v11 + v21 < a3)
      {
        if (Value >> 21)
        {
          v24 = a1 + v11;
          if (Value >> 28)
          {
            *v24 = -16;
            *(v24 + 1) = Value;
            v12 = v10 + 6;
          }

          else
          {
            *v24 = BYTE3(Value) | 0xE0;
            *(v24 + 1) = BYTE2(Value);
            *(v24 + 2) = BYTE1(Value);
            v12 = v10 + 5;
            *(v24 + 3) = Value;
          }
        }

        else
        {
          v22 = (a1 + v11);
          *v22 = BYTE2(Value) | 0xC0;
          v22[1] = BYTE1(Value);
          v12 = v10 + 4;
          v22[2] = Value;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v12 = v10 + 3;
      if (v12 < a3)
      {
        v20 = (a1 + v11);
        *v20 = BYTE1(Value) | 0x80;
        v20[1] = Value;
        goto LABEL_32;
      }
    }

    return 0;
  }

  v12 = v10 + 2;
  if (v12 >= a3)
  {
    return 0;
  }

  *(a1 + v11) = Value;
LABEL_32:
  *a2 = v12;
  return 1;
}

uint64_t serializeCFType(uint64_t a1, unint64_t *a2, unint64_t a3, const __CFString *a4)
{
  v8 = CFGetTypeID(a4);
  if (sStringTypeId != v8)
  {
    if (sDateTypeId == v8)
    {
      v10 = *a2;
      if (*a2 < a3)
      {
        v11 = a1 + v10;
        *v11 = 5;
        MEMORY[0x245D12EC0](a4);
        v13 = v10 + 9;
        if (v10 + 9 < a3)
        {
          *(v11 + 1) = v12;
LABEL_9:
          *a2 = v13;
          return 1;
        }
      }

      return 0;
    }

    if (sArrayTypeId == v8)
    {
      v15 = *a2;
      if (*a2 < a3)
      {
        v16 = v15 + 1;
        *(a1 + v15) = 2;
        *a2 = v15 + 1;
        Count = CFArrayGetCount(a4);
        if (Count >= 0x80)
        {
          if (Count >= 0x4000)
          {
            v32 = 4;
            if (Count >> 28)
            {
              v32 = 5;
            }

            if (Count < 0x200000)
            {
              v32 = 3;
            }

            if (v32 + v16 >= a3)
            {
              return 0;
            }

            if (Count >> 21)
            {
              if (Count >> 28)
              {
                v39 = a1 + v16;
                *v39 = -16;
                *(v39 + 1) = Count;
                v29 = v15 + 6;
              }

              else
              {
                v37 = (a1 + v16);
                *v37 = HIBYTE(Count) | 0xE0;
                v37[1] = BYTE2(Count);
                v37[2] = BYTE1(Count);
                v29 = v15 + 5;
                v37[3] = Count;
              }
            }

            else
            {
              v33 = (a1 + v16);
              *v33 = BYTE2(Count) | 0xC0;
              v33[1] = BYTE1(Count);
              v29 = v15 + 4;
              v33[2] = Count;
            }
          }

          else
          {
            v29 = v15 + 3;
            if (v15 + 3 >= a3)
            {
              return 0;
            }

            v30 = (a1 + v16);
            *v30 = BYTE1(Count) | 0x80;
            v30[1] = Count;
          }

          valuePtr = v29;
        }

        else
        {
          v13 = v15 + 2;
          if (v15 + 2 >= a3)
          {
            return 0;
          }

          *(a1 + v16) = Count;
          valuePtr = v15 + 2;
          if (!Count)
          {
            goto LABEL_9;
          }
        }

        v40 = 0;
        v41 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v40);
          if ((serializeCFType(a1, &valuePtr, a3, ValueAtIndex) & 1) == 0)
          {
            break;
          }

          if (v41 == ++v40)
          {
            v13 = valuePtr;
            goto LABEL_9;
          }
        }
      }

      return 0;
    }

    if (sDataTypeId != v8)
    {
      v23 = *a2;
      if (sNumberTypeId == v8)
      {
        v24 = v23 + 10 >= a3;
        v14 = v23 + 10 < a3;
        if (!v24)
        {
          IsFloatType = CFNumberIsFloatType(a4);
          v26 = IsFloatType;
          if (IsFloatType)
          {
            valuePtr = 0x7FF8000000000000;
            v27 = a4;
            v28 = kCFNumberFloat64Type;
          }

          else
          {
            valuePtr = 0;
            v27 = a4;
            v28 = kCFNumberSInt64Type;
          }

          CFNumberGetValue(v27, v28, &valuePtr);
          v35 = valuePtr;
          v36 = a1 + v23;
          *v36 = 7;
          *(v36 + 1) = v26;
          *(v36 + 2) = v35;
          *a2 = v23 + 10;
        }

        return v14;
      }

      if (v23 < a3)
      {
        v13 = v23 + 1;
        *(a1 + v23) = 3;
        goto LABEL_9;
      }

      return 0;
    }

    v18 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }

    Length = CFDataGetLength(a4);
    v20 = Length;
    if (Length >= 0x80)
    {
      if (Length >= 0x4000)
      {
        if (Length >= 0x200000)
        {
          if (Length >> 28)
          {
            v43 = Length >> 35;
            v44 = Length >> 42;
            v45 = 7;
            v46 = Length >> 49;
            v47 = 8;
            if (HIBYTE(Length))
            {
              v47 = 9;
            }

            if (v46)
            {
              v45 = v47;
            }

            if (!v44)
            {
              v45 = 6;
            }

            if (!v43)
            {
              v45 = 5;
            }

            v48 = v18 + 1;
            if (Length + v45 + v18 + 1 >= a3)
            {
              return 0;
            }

            *(a1 + v18) = 6;
            if (v43)
            {
              if (v44)
              {
                if (v46)
                {
                  v52 = a1 + v48;
                  if (HIBYTE(Length))
                  {
                    *v52 = -1;
                    *(v52 + 1) = Length;
                    v21 = v18 + 10;
                  }

                  else
                  {
                    *v52 = -2;
                    *(v52 + 1) = BYTE6(Length);
                    *(v52 + 2) = BYTE5(Length);
                    *(v52 + 3) = BYTE4(Length);
                    *(v52 + 4) = BYTE3(Length);
                    *(v52 + 5) = BYTE2(Length);
                    *(v52 + 6) = BYTE1(Length);
                    v21 = v18 + 9;
                    *(v52 + 7) = Length;
                  }
                }

                else
                {
                  v51 = (a1 + v48);
                  *v51 = BYTE6(Length) | 0xFC;
                  v51[1] = BYTE5(Length);
                  v51[2] = BYTE4(Length);
                  v51[3] = BYTE3(Length);
                  v51[4] = BYTE2(Length);
                  v51[5] = BYTE1(Length);
                  v21 = v18 + 8;
                  v51[6] = Length;
                }
              }

              else
              {
                v50 = (a1 + v48);
                *v50 = BYTE5(Length) | 0xF8;
                v50[1] = BYTE4(Length);
                v50[2] = BYTE3(Length);
                v50[3] = BYTE2(Length);
                v50[4] = BYTE1(Length);
                v21 = v18 + 7;
                v50[5] = Length;
              }
            }

            else
            {
              v49 = (a1 + v48);
              *v49 = BYTE4(Length) | 0xF0;
              v49[1] = BYTE3(Length);
              v49[2] = BYTE2(Length);
              v49[3] = BYTE1(Length);
              v21 = v18 + 6;
              v49[4] = Length;
            }

            goto LABEL_51;
          }

          if (Length + v18 + 1 + 4 >= a3)
          {
            return 0;
          }

          *(a1 + v18) = 6;
          v34 = (a1 + v18 + 1);
          *v34 = BYTE3(Length) | 0xE0;
          v34[1] = BYTE2(Length);
          v34[2] = BYTE1(Length);
          v21 = v18 + 5;
        }

        else
        {
          v21 = v18 + 4;
          if (v18 + 4 + Length >= a3)
          {
            return 0;
          }

          v34 = (a1 + v18);
          *v34 = 6;
          v34[1] = BYTE2(Length) | 0xC0;
          v34[2] = BYTE1(Length);
        }

        v34[3] = Length;
        goto LABEL_51;
      }

      v21 = v18 + 3;
      if (v18 + 3 + Length >= a3)
      {
        return 0;
      }

      v31 = (a1 + v18);
      *v31 = 6;
      v31[1] = BYTE1(Length) | 0x80;
      v31[2] = Length;
    }

    else
    {
      v21 = v18 + 2;
      if (Length + v18 + 2 >= a3)
      {
        return 0;
      }

      v22 = (a1 + v18);
      *v22 = 6;
      v22[1] = Length;
    }

LABEL_51:
    BytePtr = CFDataGetBytePtr(a4);
    memcpy((a1 + v21), BytePtr, v20);
    v13 = v21 + v20;
    goto LABEL_9;
  }

  return serializeCFString(a1, a2, a3, a4);
}

CFTypeID ___init_private_attributes_block_invoke()
{
  sStringTypeId = CFStringGetTypeID();
  sDateTypeId = CFDateGetTypeID();
  sArrayTypeId = CFArrayGetTypeID();
  CFNullGetTypeID();
  sNumberTypeId = CFNumberGetTypeID();
  v0 = *MEMORY[0x277CBECE8];
  sStringIDMappings = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  sIDStringMappings = CFDictionaryCreateMutable(v0, 0, 0, MEMORY[0x277CBF150]);
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginApplicationIdentifier", 1);
  CFDictionaryAddValue(sIDStringMappings, 1, @"kMDItemOriginApplicationIdentifier");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginSenderHandle", 2);
  CFDictionaryAddValue(sIDStringMappings, 2, @"kMDItemOriginSenderHandle");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginSenderDisplayName", 3);
  CFDictionaryAddValue(sIDStringMappings, 3, @"kMDItemOriginSenderDisplayName");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginSubject", 4);
  CFDictionaryAddValue(sIDStringMappings, 4, @"kMDItemOriginSubject");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemDestinationRecipients", 5);
  CFDictionaryAddValue(sIDStringMappings, 5, @"kMDItemDestinationRecipients");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginMessageID", 6);
  CFDictionaryAddValue(sIDStringMappings, 6, @"kMDItemOriginMessageID");
  result = CFDataGetTypeID();
  sDataTypeId = result;
  return result;
}

uint64_t copyDecryptedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 + 9 length:a5 - 9 freeWhenDone:0];
  v9 = (*(a1 + 16))(a1, a3, *(a2 + 1), *(a2 + 5), v8, 0);

  return v9;
}

__CFArray *copyCFTypeFromBuffer(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v4 = *a2;
  v34 = v4;
  if (v4 >= a3)
  {
    goto LABEL_74;
  }

  Mutable = 0;
  v8 = v4 + 1;
  v34 = v4 + 1;
  v9 = *(a1 + v4);
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      v13 = v4 + 1;
      while (a3 != v13)
      {
        v14 = v13 + 1;
        if (!*(a1 + v13++))
        {
          v34 = v14;
          v16 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + v8), 0x8000100u);
          goto LABEL_51;
        }
      }

      Mutable = 0;
      v34 = a3;
      goto LABEL_75;
    }

    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_75;
      }

LABEL_50:
      v16 = CFRetain(*MEMORY[0x277CBEEE8]);
LABEL_51:
      Mutable = v16;
      goto LABEL_75;
    }

    if (v8 < a3)
    {
      if (*(a1 + v8) < 0)
      {
        v25 = *(a1 + v8);
        if (v25 >= 0xC0)
        {
          if (v25 >= 0xE0)
          {
            v26 = v25 >= 0xF0;
            v23 = 4;
            if (v26)
            {
              v23 = 5;
            }
          }

          else
          {
            v23 = 3;
          }
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 1;
      }

      if (v23 + v8 < a3)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        VInt32 = v2_readVInt32(a1, &v34);
        if (VInt32)
        {
          v28 = VInt32;
          do
          {
            v29 = copyCFTypeFromBuffer(a1, &v34, a3);
            if (v29)
            {
              v30 = v29;
              CFArrayAppendValue(Mutable, v29);
              CFRelease(v30);
            }

            --v28;
          }

          while (v28);
        }

        goto LABEL_75;
      }
    }

LABEL_74:
    Mutable = 0;
    goto LABEL_75;
  }

  if (*(a1 + v4) > 5u)
  {
    if (v9 == 6)
    {
      if (v8 < a3)
      {
        if (*(a1 + v8) < 0)
        {
          v24 = *(a1 + v8);
          if (v24 >= 0xC0)
          {
            if (v24 >= 0xE0)
            {
              if (v24 >= 0xF0)
              {
                if (v24 >= 0xF8)
                {
                  if (v24 >= 0xFC)
                  {
                    if (v24 >= 0xFE)
                    {
                      v31 = v24 == 255;
                      v22 = 8;
                      if (v31)
                      {
                        v22 = 9;
                      }
                    }

                    else
                    {
                      v22 = 7;
                    }
                  }

                  else
                  {
                    v22 = 6;
                  }
                }

                else
                {
                  v22 = 5;
                }
              }

              else
              {
                v22 = 4;
              }
            }

            else
            {
              v22 = 3;
            }
          }

          else
          {
            v22 = 2;
          }
        }

        else
        {
          v22 = 1;
        }

        if (v22 + v8 < a3)
        {
          v32 = v2_readVInt64(a1, &v34);
          v10 = v34 + v32;
          if (v34 + v32 < a3)
          {
            v12 = CFDataCreate(*MEMORY[0x277CBECE8], (a1 + v34), v32);
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      if (v9 != 7)
      {
        goto LABEL_75;
      }

      v10 = v4 + 10;
      if (v4 + 10 < a3)
      {
        if (*(a1 + v8))
        {
          v11 = kCFNumberFloat64Type;
        }

        else
        {
          v11 = kCFNumberSInt64Type;
        }

        v12 = CFNumberCreate(*MEMORY[0x277CBECE8], v11, (a1 + v4 + 2));
        goto LABEL_34;
      }
    }

    goto LABEL_74;
  }

  if (v9 == 4)
  {
    v17 = v4 + 2;
    v18 = a1 + v8;
    v19 = *(a1 + v8);
    v20 = *(a1 + v8);
    if (v19 < 0)
    {
      if (v20 > 0xBF)
      {
        if (v20 > 0xDF)
        {
          if (v20 > 0xEF)
          {
            v20 = *(a1 + v17);
            v17 = v4 + 6;
          }

          else
          {
            v20 = ((v20 & 0xF) << 24) | (*(a1 + v17) << 16) | (*(v18 + 2) << 8) | *(v18 + 3);
            v17 = v4 + 5;
          }
        }

        else
        {
          v20 = ((v20 & 0x1F) << 16) | (*(a1 + v17) << 8) | *(v18 + 2);
          v17 = v4 + 4;
        }
      }

      else
      {
        v21 = *(a1 + v17) | ((v20 & 0x3F) << 8);
        v17 = v4 + 3;
        v20 = v21;
      }
    }

    v34 = v17;
    Mutable = CFDictionaryGetValue(sIDStringMappings, v20);
    if (Mutable)
    {
      goto LABEL_75;
    }

    goto LABEL_50;
  }

  if (v9 == 5)
  {
    v10 = v4 + 9;
    if (v4 + 9 > a3)
    {
      Mutable = 0;
LABEL_35:
      v34 = v10;
      goto LABEL_75;
    }

    v12 = CFDateCreate(*MEMORY[0x277CBECE8], *(a1 + v8));
LABEL_34:
    Mutable = v12;
    goto LABEL_35;
  }

LABEL_75:
  *a2 = v34;
  return Mutable;
}

uint64_t v2_readVInt32(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 + 1;
  v5 = (a1 + *a2);
  result = *v5;
  if (*v5 < 0)
  {
    if (result > 0xBF)
    {
      if (result > 0xDF)
      {
        if (result > 0xEF)
        {
          result = *(a1 + v4);
          v4 = v3 + 5;
        }

        else
        {
          result = ((result & 0xF) << 24) | (*(a1 + v4) << 16) | (v5[2] << 8) | v5[3];
          v4 = v3 + 4;
        }
      }

      else
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v4) << 8) | v5[2];
        v4 = v3 + 3;
      }
    }

    else
    {
      v7 = *(a1 + v4) | ((result & 0x3F) << 8);
      v4 = v3 + 2;
      result = v7;
    }
  }

  *a2 = v4;
  return result;
}

unint64_t v2_readVInt64(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 != -1)
  {
    v4 = v2 + 1;
    v5 = (a1 + v2);
    v6 = *(a1 + v2);
    result = *(a1 + v2);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      *a2 = v4;
      return result;
    }

    if (v6 > 0xBFu)
    {
      if (v6 > 0xDFu)
      {
        if (v6 > 0xEFu)
        {
          if (v6 > 0xF7u)
          {
            if (v6 > 0xFBu)
            {
              if (v6 > 0xFDu)
              {
                if (v6 == 255)
                {
                  if (v2 <= 0xFFFFFFFFFFFFFFF6)
                  {
                    result = *(a1 + v4);
                    v4 = v2 + 9;
                    goto LABEL_3;
                  }
                }

                else if (v2 <= 0xFFFFFFFFFFFFFFF7)
                {
                  result = (*(a1 + v4) << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
                  v4 = v2 + 8;
                  goto LABEL_3;
                }
              }

              else if (v2 <= 0xFFFFFFFFFFFFFFF8)
              {
                result = ((result & 1) << 48) | (*(a1 + v4) << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
                v4 = v2 + 7;
                goto LABEL_3;
              }
            }

            else if (v2 <= 0xFFFFFFFFFFFFFFF9)
            {
              result = ((result & 3) << 40) | (*(a1 + v4) << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
              v4 = v2 + 6;
              goto LABEL_3;
            }
          }

          else if (v2 <= 0xFFFFFFFFFFFFFFFALL)
          {
            result = ((result & 7) << 32) | (*(a1 + v4) << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
            v4 = v2 + 5;
            goto LABEL_3;
          }
        }

        else if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          result = ((result & 0xF) << 24) | (*(a1 + v4) << 16) | (v5[2] << 8) | v5[3];
          v4 = v2 + 4;
          goto LABEL_3;
        }
      }

      else if (v2 <= 0xFFFFFFFFFFFFFFFCLL)
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v4) << 8) | v5[2];
        v4 = v2 + 3;
        goto LABEL_3;
      }
    }

    else if (v2 != -2)
    {
      v8 = *(a1 + v4) | ((result & 0x3F) << 8);
      v4 = v2 + 2;
      result = v8;
      goto LABEL_3;
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_0_0()
{
  MEMORY[0xBAD] = -559038737;

  abort();
}

void _copyCryptedDataWithKey_cold_1(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_242636000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "_copyCryptedDataWithKey() failed. CCCrypt() returned %d.", v1, 8u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
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