@interface TICryptographer
+ (id)sharedCryptographer;
+ (id)singletonInstance;
+ (void)setSharedCryptographer:(id)cryptographer;
- (NSData)deviceSalt;
- (TICryptographer)init;
- (id)stringDigestForName:(id)name;
@end

@implementation TICryptographer

+ (id)sharedCryptographer
{
  if (__testingInstance_23886)
  {
    v2 = __testingInstance_23886;
  }

  else
  {
    v2 = +[TICryptographer singletonInstance];
  }

  return v2;
}

+ (id)singletonInstance
{
  if (singletonInstance_onceToken_23888 != -1)
  {
    dispatch_once(&singletonInstance_onceToken_23888, &__block_literal_global_23889);
  }

  v3 = singletonInstance_singletonInstance_23890;

  return v3;
}

- (id)stringDigestForName:(id)name
{
  nameCopy = name;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23863;
  v14 = __Block_byref_object_dispose__23864;
  v15 = 0;
  dispatchQueue = [(TICryptographer *)self dispatchQueue];
  v9 = nameCopy;
  v6 = nameCopy;
  TIDispatchSync();

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __39__TICryptographer_stringDigestForName___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cachedRecipientName];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  if (isEqualToString)
  {
    v4 = [*(a1 + 32) cachedRecipientDigest];
    v5 = [v4 copy];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) deviceSalt];
    if (v9)
    {
      memset(&c, 0, sizeof(c));
      CC_SHA1_Init(&c);
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (CStringPtr)
      {
        v11 = CStringPtr;
        v12 = strlen(CStringPtr);
        CC_SHA1_Update(&c, v11, v12);
      }

      else
      {
        Length = CFStringGetLength(v8);
        if (Length >= 1)
        {
          v15 = Length;
          v16 = 0;
          do
          {
            usedBufLen = 0;
            v31.location = v16;
            v31.length = v15;
            Bytes = CFStringGetBytes(v8, v31, 0x8000100u, 0, 0, buffer, 512, &usedBufLen);
            CC_SHA1_Update(&c, buffer, usedBufLen);
            v16 += Bytes;
            v18 = v15 <= Bytes;
            v15 -= Bytes;
          }

          while (!v18);
        }
      }

      BytePtr = CFDataGetBytePtr(v9);
      v20 = CFDataGetLength(v9);
      CC_SHA1_Update(&c, BytePtr, v20);
      CC_SHA1_Final(buffer, &c);
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 40);
      for (i = 0; i != 20; ++i)
      {
        CFStringAppendFormat(Mutable, 0, @"%x", buffer[i]);
      }
    }

    else
    {
      Mutable = 0;
    }

    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = Mutable;

    [*(a1 + 32) setCachedRecipientName:*(a1 + 40)];
    v24 = *(*(*(a1 + 48) + 8) + 40);
    v25 = *(a1 + 32);

    [v25 setCachedRecipientDigest:v24];
  }
}

- (NSData)deviceSalt
{
  v18 = *MEMORY[0x277D85DE8];
  deviceSalt = self->_deviceSalt;
  if (!deviceSalt)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC250]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBF10]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF28], @"deviceSalt");
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], @"com.apple.TextInput");
    result = 0;
    SecItemCopyMatching(Mutable, &result);
    if (result)
    {
      v6 = self->_deviceSalt;
      self->_deviceSalt = result;
    }

    if (!self->_deviceSalt)
    {
      arc4random_buf(&__buf, 0x14uLL);
      v7 = CFDataCreate(v4, &__buf, 20);
      v8 = self->_deviceSalt;
      self->_deviceSalt = v7;

      CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], self->_deviceSalt);
      v9 = SecItemAdd(Mutable, 0);
      if (v9)
      {
        v10 = v9;
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v11 = TIOSLogFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Failed to write to keychain with error %d", "-[TICryptographer deviceSalt]", v10];
          __buf = 138412290;
          v17 = v14;
          _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", &__buf, 0xCu);
        }

        v12 = self->_deviceSalt;
        self->_deviceSalt = 0;
      }
    }

    CFRelease(Mutable);
    deviceSalt = self->_deviceSalt;
  }

  return deviceSalt;
}

- (TICryptographer)init
{
  v7.receiver = self;
  v7.super_class = TICryptographer;
  v2 = [(TICryptographer *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.crypto", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

uint64_t __36__TICryptographer_singletonInstance__block_invoke()
{
  v0 = objc_alloc_init(TICryptographer);
  v1 = singletonInstance_singletonInstance_23890;
  singletonInstance_singletonInstance_23890 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)setSharedCryptographer:(id)cryptographer
{
  cryptographerCopy = cryptographer;
  if (__testingInstance_23886 != cryptographerCopy)
  {
    v5 = cryptographerCopy;
    objc_storeStrong(&__testingInstance_23886, cryptographer);
    cryptographerCopy = v5;
  }
}

@end