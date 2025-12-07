uint64_t acc_userDefaults_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaults_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

void acc_userDefaults_setArrayForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setObject:a2 forKey:a1];
}

void acc_userDefaults_setIntegerForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setInteger:a2 forKey:a1];
}

void acc_userDefaults_setDoubleForKey(uint64_t a1, double a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setDouble:a1 forKey:a2];
}

uint64_t acc_userDefaultsIapd_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaultsIapd_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

uint64_t acc_userDefaultsLogging_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsLogging];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t init_logging()
{
  init_logging_modules(&_gLogObjects, 1, _kLoggingModuleEntries);

  return MEMORY[0x28213A068](v0);
}

CFStringRef CFCreateUUIDString()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

CFStringRef CFArrayCreateRawValuesString(const __CFArray *a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppend(Mutable, @"{\n");
  v6.length = CFArrayGetCount(a1);
  if (a2)
  {
    v7 = _CFArraySetPrintRawValuesApplierFunctionHex;
  }

  else
  {
    v7 = _CFArraySetPrintRawValuesApplierFunctionDecimal;
  }

  v6.location = 0;
  CFArrayApplyFunction(a1, v6, v7, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(v4, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFSetCreateRawValuesString(const __CFSet *a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppend(Mutable, @"{\n");
  if (a2)
  {
    v6 = _CFArraySetPrintRawValuesApplierFunctionHex;
  }

  else
  {
    v6 = _CFArraySetPrintRawValuesApplierFunctionDecimal;
  }

  CFSetApplyFunction(a1, v6, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(v4, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFDictCreateRawKeyValueString(const __CFDictionary *a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppend(Mutable, @"{\n");
  if (a2)
  {
    v6 = _CFDictPrintRawKeyValueApplierFunctionHex;
  }

  else
  {
    v6 = _CFDictPrintRawKeyValueApplierFunctionDecimal;
  }

  CFDictionaryApplyFunction(a1, v6, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(v4, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

__CFString *CFStringCreateFromCFData(const __CFData *a1, const __CFString *a2)
{
  if (!a1)
  {
    return &stru_2848E51E8;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (Length >= 1)
  {
    do
    {
      v8 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, a2, v8);
      --Length;
    }

    while (Length);
  }

  Copy = CFStringCreateCopy(v6, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFStringCreateFromFormat(uint64_t a1, const __CFString *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, a2, a1);
  Copy = CFStringCreateCopy(v4, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFSetRef CFDictionaryGetKeys(const __CFDictionary *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = a2 ? MEMORY[0x277CBF158] : 0;
  Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, v4);
  if (!Mutable)
  {
    return 0;
  }

  v6 = Mutable;
  CFDictionaryApplyFunction(a1, CFDictionaryApplierFunction_addKeyToMutableSet, Mutable);
  Copy = CFSetCreateCopy(v3, v6);
  CFRelease(v6);
  return Copy;
}

void CFDictionaryApplierFunction_addKeyToMutableSet(void *value, int a2, CFMutableSetRef theSet)
{
  if (value)
  {
    if (theSet)
    {
      CFSetAddValue(theSet, value);
    }
  }
}

char *createCStringFromCFString(const __CFString *a1, CFStringEncoding a2)
{
  bufferSize = 0;
  if (!a1)
  {
    return 0;
  }

  v9.length = CFStringGetLength(a1);
  v9.location = 0;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, 0, 0, &bufferSize);
  v4 = malloc_type_malloc(++bufferSize, 0xAE6E017BuLL);
  CString = CFStringGetCString(a1, v4, bufferSize, a2);
  if (v4)
  {
    v6 = CString == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v4);
    return 0;
  }

  return v4;
}

void CFDictionaryApplierFunction_addValueToMutableDictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key)
  {
    if (theDict)
    {
      CFDictionaryAddValue(theDict, key, value);
    }
  }
}

void CFDictionaryApplierFunction_setValueInMutableDictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void executeOnMainThreadSync(uint64_t a1)
{
  if (pthread_main_np())
  {
    v2 = *(a1 + 16);

    v2(a1);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __executeOnMainThreadSync_block_invoke;
    block[3] = &unk_2789E1FB0;
    block[4] = a1;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

void executeOnMainThreadAsync(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __executeOnMainThreadAsync_block_invoke;
  block[3] = &unk_2789E1FD8;
  block[4] = a1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = "havior";
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v13) = v4;
          _os_log_error_impl(&dword_2335B8000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v16, v4, &v16[4]);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v13 = v8;
          v14 = 2080;
          v15 = v9;
          _os_log_debug_impl(&dword_2335B8000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = v8;
        v14 = 2080;
        v15 = v9;
        _os_log_error_impl(&dword_2335B8000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = "PowerSourceUpdateBehavior" + 19;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 230);
    LODWORD(v13) = v5;
    _os_log_impl(&dword_2335B8000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
}

id convertNSDataToNSString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 bytes];
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([v3 length])
    {
      v7 = 0;
      do
      {
        [v6 appendFormat:v4, *(v5 + v7++)];
      }

      while (v7 < [v3 length]);
    }

    v8 = [MEMORY[0x277CCACA8] stringWithString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id trimBidirectionalUnicodeCharacters(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

id removeBidirectionalUnicodeCharacters(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 componentsJoinedByString:&stru_2848E51E8];

  return v5;
}

id convertNSStringToNSData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CCA900] hexadecimalCharacterSet];
    v3 = [v2 invertedSet];
    v4 = [v1 componentsSeparatedByCharactersInSet:v3];
    v5 = [v4 componentsJoinedByString:&stru_2848E51E8];

    v6 = [v5 UTF8String];
    v7 = strlen(v6) >> 1;
    v8 = malloc_type_malloc(v7, 0x5E84AA4CuLL);
    if (v6 && [v5 length] >= 2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = 0;
        v23 = -86;
        v22 = -86;
        v12 = &v23;
        v13 = 1;
        do
        {
          v14 = v13;
          v15 = v6[2 * v10 + v11];
          v16 = v15 - 48;
          v17 = v15 - 65;
          if ((v15 - 97) >= 6)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 - 87;
          }

          v19 = v15 - 55;
          if (v17 > 5)
          {
            v19 = v18;
          }

          if (v16 < 0xA)
          {
            v19 = v16;
          }

          *v12 = v19;
          v12 = &v22;
          v11 = 1;
          v13 = 0;
        }

        while ((v14 & 1) != 0);
        v8[v9] = v22 | (16 * v23);
        v9 = (v10 + 1);
        v20 = [v5 length];
        v10 = v9;
      }

      while (v9 < v20 >> 1);
    }

    v1 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v7];
    if (v8)
    {
      free(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v1;
}

uint64_t classImplementsMethodsInProtocol(void *a1, void *a2, BOOL a3, BOOL a4, void *a5)
{
  v9 = a2;
  v10 = [MEMORY[0x277CBEB58] set];
  outCount = 0;
  v11 = protocol_copyMethodDescriptionList(v9, a3, a4, &outCount);
  v12 = v11;
  if (outCount)
  {
    v13 = 0;
    p_name = &v11->name;
    do
    {
      if (([a1 instancesRespondToSelector:*p_name] & 1) == 0)
      {
        v15 = NSStringFromSelector(*p_name);
        [v10 addObject:v15];
      }

      ++v13;
      p_name += 2;
    }

    while (v13 < outCount);
  }

  free(v12);
  if (outCount && [v10 count])
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = 1;
  if (a5)
  {
LABEL_11:
    *a5 = [MEMORY[0x277CBEB98] setWithSet:v10];
  }

LABEL_12:

  return v16;
}

uint64_t isNSObjectNull(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = MEMORY[0x277CBEB68];
  v2 = a1;
  v3 = [v1 null];
  v4 = [v2 isEqual:v3];

  return v4;
}

id NSObjectIfNotNull(void *a1)
{
  v1 = a1;
  if (isNSObjectNull(v1))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

uint64_t isNSObjectEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

id castNSObjectToType(void *a1, uint64_t a2)
{
  v2 = a1;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id readJSONFile(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a1];
    if (v1)
    {
      v5 = 0;
      v2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v1 options:0 error:&v5];
      v3 = v2;
      if (!v5)
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

uint64_t writeJSONFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
    v3 = MEMORY[0x277CBEC10];
  }

  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v3])
  {
    v9 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v9];
    v6 = v5;
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 writeToFile:v4 atomically:1];
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

id base64EncodeArray(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) base64EncodedStringWithOptions:{0, v10}];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id base64DecodeArray(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x277CBEA90]);
        v10 = [v9 initWithBase64EncodedString:v8 options:{0, v12}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t ascii_to_hex(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = 0;
      v14 = -86;
      v13 = -86;
      v5 = &v14;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(a2 + 2 * v3 + v4);
        v9 = v8 - 48;
        v10 = v8 - 65;
        if ((v8 - 97) >= 6)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 - 87;
        }

        v12 = v8 - 55;
        if (v10 > 5)
        {
          v12 = v11;
        }

        if (v9 < 0xA)
        {
          v12 = v9;
        }

        *v5 = v12;
        v5 = &v13;
        v4 = 1;
        v6 = 0;
      }

      while ((v7 & 1) != 0);
      *(result + v3++) = v13 | (16 * v14);
    }

    while (v3 != a3 >> 1);
  }

  return result;
}

uint64_t printBytes(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = a2;
    if (a2)
    {
      v7 = result;
      do
      {
        v8 = *v7++;
        result = printf(a3, v8);
        --v4;
      }

      while (v4);
      if (a4)
      {

        return putchar(10);
      }
    }
  }

  return result;
}

const char *removeNewline(const char *a1)
{
  v2 = strlen(a1);
  if (v2 && a1[v2 - 1] == 10)
  {
    a1[v2 - 1] = 0;
  }

  return a1;
}

uint64_t obfuscatedPointer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = obfuscatedPointer_salt;
    if (!obfuscatedPointer_salt)
    {
      v2 = random();
      obfuscatedPointer_salt = v2;
    }

    return v1 + v2;
  }

  return result;
}

BOOL getMemoryUse(void *a1, void *a2, void *a3)
{
  v33 = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  *task_info_out = v6;
  v11 = v6;
  task_info_outCnt = 93;
  v7 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!v7)
  {
    if (a1)
    {
      *a1 = v11;
    }

    if (a2)
    {
      *a2 = *task_info_out;
    }

    if (a3)
    {
      *a3 = v19;
    }
  }

  return v7 == 0;
}

id logObjectForModule()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 1;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v2 = MEMORY[0x277D86220];
    v1 = MEMORY[0x277D86220];
  }

  else
  {
    v2 = *gLogObjects;
  }

  return v2;
}

id _callStateDictionaryForCall(void *a1)
{
  v87[12] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy_;
  v84 = __Block_byref_object_dispose_;
  v85 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy_;
  v70 = __Block_byref_object_dispose_;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy_;
  v64 = __Block_byref_object_dispose_;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy_;
  v58 = __Block_byref_object_dispose_;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy_;
  v52 = __Block_byref_object_dispose_;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___callStateDictionaryForCall_block_invoke;
  v19[3] = &unk_2789E2188;
  v21 = &v80;
  v18 = v1;
  v20 = v18;
  v22 = &v76;
  v23 = &v72;
  v24 = &v66;
  v25 = &v60;
  v26 = &v54;
  v27 = &v44;
  v28 = &v48;
  v29 = &v40;
  v30 = &v36;
  v31 = &v32;
  executeOnMainThreadSync(v19);
  v2 = v81[5];
  v3 = *MEMORY[0x277CE8138];
  v86[0] = *MEMORY[0x277CE8150];
  v86[1] = v3;
  v4 = v55[5];
  v87[0] = v2;
  v87[1] = v4;
  v86[2] = *MEMORY[0x277CE8168];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(v77 + 6)];
  v87[2] = v5;
  v86[3] = *MEMORY[0x277CE8128];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(v73 + 6)];
  v7 = *MEMORY[0x277CE8118];
  v8 = v67[5];
  v87[3] = v6;
  v87[4] = v8;
  v9 = *MEMORY[0x277CE8110];
  v86[4] = v7;
  v86[5] = v9;
  v87[5] = v61[5];
  v86[6] = *MEMORY[0x277CE8148];
  v87[6] = v49[5];
  v86[7] = *MEMORY[0x277CE8158];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:*(v45 + 6)];
  v87[7] = v10;
  v86[8] = *MEMORY[0x277CE8140];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v41 + 24)];
  v12 = *MEMORY[0x277CE8120];
  v87[8] = v11;
  v87[9] = &unk_2848E5A20;
  v13 = *MEMORY[0x277CE8130];
  v86[9] = v12;
  v86[10] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:*(v37 + 6)];
  v87[10] = v14;
  v86[11] = *MEMORY[0x277CE8160];
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v33[3]];
  v87[11] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:12];

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);

  return v16;
}

void sub_2335BCAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void sub_2335BE51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335BE698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2335BE7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335BE9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335BECD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335BEE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335BEF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335BF168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335BF38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335C0CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2335C12B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335C1460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335C16B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335C1AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2335C207C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2335C228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _recentCallsPredicate()
{
  v10[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CF7D48] predicateForCallsWithAnyMediaTypes:&unk_2848E5A80];
  v10[0] = v0;
  v1 = MEMORY[0x277CF7D48];
  v2 = *MEMORY[0x277CF7E00];
  v9[0] = *MEMORY[0x277CF7E08];
  v9[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v4 = [v1 predicateForCallsWithAnyServiceProviders:v3];
  v10[1] = v4;
  v5 = [MEMORY[0x277CF7D48] predicateForCallsWithRemoteParticipantCount:1];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v7 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];

  return v7;
}

__CFString *_overrideLabelForFaceTime(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 3)
  {
    v5 = TUBundle();
    v6 = v5;
    v7 = @"DIAL_CALL_FACETIME";
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    v5 = TUBundle();
    v6 = v5;
    v7 = @"DIAL_CALL_FACETIME_AUDIO";
LABEL_5:
    v8 = [(__CFString *)v5 localizedStringForKey:v7 value:&stru_2848E51E8 table:@"TelephonyUtilities"];

    v4 = v6;
    goto LABEL_9;
  }

  v9 = &stru_2848E51E8;
  if (v3)
  {
    v9 = v3;
  }

  v8 = v9;
LABEL_9:

  return v8;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_3(float a1)
{
  *(v2 - 144) = a1;
  *(v2 - 140) = v1;
  *(v2 - 132) = 1024;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return [v16 countByEnumeratingWithState:&a9 objects:va count:{16, a6, a7, a8}];
}

BOOL OUTLINED_FUNCTION_16()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_17(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a2 + 8) + 40);

  objc_storeStrong(v3, a1);
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_2335B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

char *createHexString(uint64_t a1, unint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a3)
      {
        v5 = (2 * a2) | 1;
LABEL_10:
        v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
        if (v7)
        {
          v8 = 0;
          v9 = v7;
          v14 = v7;
          v10 = v7;
          v11 = v5;
          while (a3)
          {
            if (v8 >= a2 - 1)
            {
              v12 = v10;
              v13 = v11;
              goto LABEL_17;
            }

            snprintf(v10, v11, "%02X ");
LABEL_18:
            ++v8;
            v11 -= 3;
            v10 += 3;
            v9 += 2;
            v5 -= 2;
            if (a2 == v8)
            {
              return v14;
            }
          }

          v12 = v9;
          v13 = v5;
LABEL_17:
          snprintf(v12, v13, "%02X");
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (is_mul_ok(a2, 3uLL))
      {
        v5 = 3 * a2;
        goto LABEL_10;
      }
    }

    do
    {
LABEL_21:
      result = malloc_type_malloc(0xEuLL, 0x100004077774924uLL);
    }

    while (!result);
    strcpy(result, "<print error>");
    return result;
  }

  result = malloc_type_malloc(7uLL, 0x100004077774924uLL);
  if (result)
  {
    strcpy(result, "(null)");
  }

  return result;
}

void _CFNotificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = gNumLogObjects;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13();
      LODWORD(v37) = v8;
      OUTLINED_FUNCTION_1(&dword_2335B8000, MEMORY[0x277D86220], v24, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v25, v26, v27, v28);
    }

    v11 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  else
  {
    v11 = *gLogObjects;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v34 = 138412546;
    v35 = a3;
    v36 = 2112;
    v37 = a5;
    _os_log_impl(&dword_2335B8000, v11, OS_LOG_TYPE_INFO, "CFNotification received: <name: %@, userInfo: %@>", &v34, 0x16u);
  }

  if (a2 && a3)
  {
    v12 = a2;
    v13 = a3;
    v14 = a5;
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v16 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_13();
        LODWORD(v37) = v15;
        OUTLINED_FUNCTION_1(&dword_2335B8000, MEMORY[0x277D86220], v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v30, v31, v32, v33);
      }

      v16 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (OUTLINED_FUNCTION_16())
    {
      LOWORD(v34) = 0;
      OUTLINED_FUNCTION_11();
      _os_log_debug_impl(v19, v20, v21, v22, v23, 2u);
    }

    v18 = [MEMORY[0x277CCAB88] notificationWithName:v13 object:0 userInfo:v14];
    [v12 commStatusDidChangeNotification:v18];
  }
}

uint64_t _convertCTGradedSignalToCommSignal(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ([v1 intValue] & 0x80000000) != 0)
  {
    v3 = 0;
  }

  else if ([v2 intValue] <= 5)
  {
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

uint64_t _convertCTRegStatusToCommRegStatus(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 isEqualToString:*MEMORY[0x277CC3E88]] & 1) == 0)
  {
    if ([v2 isEqualToString:*MEMORY[0x277CC3E60]])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:*MEMORY[0x277CC3E80]])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:*MEMORY[0x277CC3E50]])
    {
      v3 = 3;
    }

    else if ([v2 isEqualToString:*MEMORY[0x277CC3E68]])
    {
      v3 = 4;
    }

    else if ([v2 isEqualToString:*MEMORY[0x277CC3E70]])
    {
      v3 = 5;
    }

    else if ([v2 isEqualToString:*MEMORY[0x277CC3E58]])
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ___callStateDictionaryForCall_block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) handle];
  v3 = [v2 value];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17(v4, *(a1 + 40));

  v5 = *(a1 + 32);
  v6 = v5;
  if (v5)
  {
    switch([v5 status])
    {
      case 1u:
        if (([v6 isScreening] & 1) == 0)
        {
          [v6 isConnected];
        }

        break;
      default:
        break;
    }
  }

  if ([OUTLINED_FUNCTION_7(*(a1 + 48)) isOutgoing])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  *(*(*(a1 + 56) + 8) + 24) = v7;
  v8 = [*(a1 + 32) callUUID];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17(v9, *(a1 + 64));

  v10 = [*(a1 + 32) contactIdentifier];
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17(v11, *(a1 + 72));

  v12 = *(a1 + 32);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 displayName];
    if ([v13 isConferenced])
    {
      v15 = gLogObjects;
      v16 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v74 = 134218240;
          v75 = v15;
          v76 = 1024;
          v77 = v16;
          OUTLINED_FUNCTION_5(&dword_2335B8000, MEMORY[0x277D86220], v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v74);
        }

        v17 = MEMORY[0x277D86220];
        v19 = MEMORY[0x277D86220];
      }

      if (OUTLINED_FUNCTION_16())
      {
        v59 = [v13 callUUID];
        v74 = 138412290;
        v75 = v59;
        OUTLINED_FUNCTION_11();
        _os_log_debug_impl(v60, v61, v62, v63, v64, 0xCu);
      }

      v20 = [MEMORY[0x277D6EDF8] sharedInstance];
      v21 = [v20 currentCallGroups];

      v30 = OUTLINED_FUNCTION_15(v22, v23, v24, v25, v26, v27, v28, v29, v65, 0, 0, 0, 0, 0, 0, 0);
      if (v30)
      {
        v31 = v30;
        v32 = *v68;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v68 != v32)
            {
              objc_enumerationMutation(v21);
            }

            v34 = *(v67 + 8 * i);
            v35 = [v34 calls];
            v36 = [v35 containsObject:v13];

            if (v36)
            {
              v45 = [v34 displayName];

              v14 = v45;
            }
          }

          v31 = OUTLINED_FUNCTION_15(v37, v38, v39, v40, v41, v42, v43, v44, v66, v67, v68, v69, v70, v71, v72, v73);
        }

        while (v31);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v46 = removeBidirectionalUnicodeCharacters(v14);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17(v47, *(a1 + 80));

  v48 = *(a1 + 32);
  v49 = v48;
  if (v48)
  {
    [v48 service];
  }

  v50 = [OUTLINED_FUNCTION_7(*(a1 + 88)) localizedLabel];
  v51 = _overrideLabelForFaceTime(v50, *(*(*(a1 + 88) + 8) + 24));
  v52 = *(*(a1 + 96) + 8);
  v53 = *(v52 + 40);
  *(v52 + 40) = v51;

  *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 32) isConferenced];
  v54 = *(a1 + 32);
  v55 = v54;
  if (v54)
  {
    [v54 disconnectedReason];
  }

  v56 = [OUTLINED_FUNCTION_7(*(a1 + 112)) dateConnected];
  if (v56)
  {
    v57 = [*(a1 + 32) dateConnected];
    [v57 timeIntervalSince1970];
    *(*(*(a1 + 120) + 8) + 24) = v58;
  }

  else
  {
    *(*(*(a1 + 120) + 8) + 24) = 0;
  }
}