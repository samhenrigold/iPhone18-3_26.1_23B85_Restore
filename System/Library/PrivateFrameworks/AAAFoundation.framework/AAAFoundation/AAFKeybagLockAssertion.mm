@interface AAFKeybagLockAssertion
+ (id)lockWithError:(id *)error;
- (void)unlock;
@end

@implementation AAFKeybagLockAssertion

+ (id)lockWithError:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(AAFKeybagLockAssertion);
  v5 = _AAFLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AAFKeybagLockAssertion lockWithError:v5];
  }

  v18[0] = @"MKBAssertionKey";
  v18[1] = @"MKBAssertionTimeout";
  v19[0] = @"RemoteProfile";
  v19[1] = &unk_1F48489B8;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v12 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v7 = getMKBDeviceLockAssertionSymbolLoc_ptr;
  v17 = getMKBDeviceLockAssertionSymbolLoc_ptr;
  if (!getMKBDeviceLockAssertionSymbolLoc_ptr)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getMKBDeviceLockAssertionSymbolLoc_block_invoke;
    v13[3] = &unk_1E831BCB8;
    v13[4] = &v14;
    __getMKBDeviceLockAssertionSymbolLoc_block_invoke(v13);
    v7 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v7)
  {
    [AAFAnalyticsTransportInProcessRTC initWithClientType:clientBundleId:clientName:];
    __break(1u);
  }

  v8 = v7(v6, &v12);
  v9 = v8;
  if (v12)
  {
    v10 = _AAFLogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AAFKeybagLockAssertion *)&v12 lockWithError:v10];
    }

    if (error)
    {
      *error = v12;
    }

    else
    {
      CFRelease(v12);
    }
  }

  if (v9)
  {
    v4->_assertionRef = v9;
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
  v3 = objc_sync_enter(selfCopy);
  v4 = _AAFLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AAFKeybagLockAssertion *)v4 unlock];
  }

  assertionRef = selfCopy->_assertionRef;
  if (assertionRef)
  {
    CFRelease(assertionRef);
    selfCopy->_assertionRef = 0;
  }

  objc_sync_exit(selfCopy);
}

+ (void)lockWithError:(uint64_t *)a1 .cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Failed to take device lock assertion: %@", &v3, 0xCu);
}

@end