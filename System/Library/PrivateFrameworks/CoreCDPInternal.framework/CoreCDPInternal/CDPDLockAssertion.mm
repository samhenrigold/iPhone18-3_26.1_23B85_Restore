@interface CDPDLockAssertion
+ (id)lockWithError:(id *)error;
- (void)unlock;
@end

@implementation CDPDLockAssertion

+ (id)lockWithError:(id *)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(CDPDLockAssertion);
  v16[0] = @"MKBAssertionKey";
  v16[1] = @"MKBAssertionTimeout";
  v17[0] = @"RemoteProfile";
  v17[1] = &unk_2858222B8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v10 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = getMKBDeviceLockAssertionSymbolLoc_ptr;
  v15 = getMKBDeviceLockAssertionSymbolLoc_ptr;
  if (!getMKBDeviceLockAssertionSymbolLoc_ptr)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getMKBDeviceLockAssertionSymbolLoc_block_invoke;
    v11[3] = &unk_278E259A8;
    v11[4] = &v12;
    __getMKBDeviceLockAssertionSymbolLoc_block_invoke(v11);
    v6 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
    [CDPDBuddyStateObserver eventReceived:eventValue:];
    __break(1u);
  }

  v7 = v6(v5, &v10);
  if (v10)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPDLockAssertion *)&v10 lockWithError:v8];
    }

    if (error)
    {
      *error = v10;
    }

    else
    {
      CFRelease(v10);
    }
  }

  if (v7)
  {
    v4->_assertionRef = v7;
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (void)unlock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPDLockAssertion *)v3 unlock];
  }

  assertionRef = selfCopy->_assertionRef;
  if (assertionRef)
  {
    CFRelease(assertionRef);
    selfCopy->_assertionRef = 0;
  }

  objc_sync_exit(selfCopy);
}

+ (void)lockWithError:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to take device lock assertion: %@", &v3, 0xCu);
}

@end