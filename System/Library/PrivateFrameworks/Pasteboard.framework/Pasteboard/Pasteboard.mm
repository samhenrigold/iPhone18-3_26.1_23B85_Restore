uint64_t ___notificationQueue_block_invoke()
{
  qword_280AEA830 = dispatch_queue_create("com.apple.Pasteboard.notification-queue", 0);

  return MEMORY[0x2821F96F8]();
}

id _notificationQueue()
{
  if (qword_280AEA838 != -1)
  {
    dispatch_once(&qword_280AEA838, &__block_literal_global_100);
  }

  v1 = qword_280AEA830;

  return v1;
}

id _PBLog()
{
  if (_PBLog_onceToken != -1)
  {
    dispatch_once(&_PBLog_onceToken, &__block_literal_global_3);
  }

  v1 = _PBLog_log;

  return v1;
}

uint64_t _notificationQueue_getState()
{
  v7 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(_notificationQueue_token, &state64);
  if (!state)
  {
    return state64;
  }

  v1 = state;
  v2 = _PBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    v6 = v1;
    _os_log_fault_impl(&dword_25E138000, v2, OS_LOG_TYPE_FAULT, "Cannot get notification state. Error: %d", buf, 8u);
  }

  return 0;
}

void sub_25E139908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PBNewClientToServerXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FE38F8];
  v1 = +[PBItemCollection allowedClassesForSecureCoding];
  [v0 setClasses:v1 forSelector:sel_pasteboardWithName_createIfNeeded_completionBlock_ argumentIndex:0 ofReply:1];

  v2 = +[PBItemCollection allowedClassesForSecureCoding];
  [v0 setClasses:v2 forSelector:sel_savePasteboard_dataProviderEndpoint_completionBlock_ argumentIndex:0 ofReply:0];

  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v3 forSelector:sel_savePasteboard_dataProviderEndpoint_completionBlock_ argumentIndex:1 ofReply:0];

  v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v4 forSelector:sel_didPasteContentsFromPasteboardWithName_UUID_completionBlock_ argumentIndex:0 ofReply:0];

  v5 = +[PBItemCollection allowedClassesForSecureCoding];
  [v0 setClasses:v5 forSelector:sel_getAllPasteboardsCompletionBlock_ argumentIndex:0 ofReply:1];

  v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v6 forSelector:sel_requestItemFromPasteboardWithName_UUID_authenticationMessage_itemIndex_typeIdentifier_dataOwner_loadContext_completionBlock_ argumentIndex:1 ofReply:1];

  v7 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v7 forSelector:sel_requestItemFromPasteboardWithName_UUID_authenticationMessage_itemIndex_typeIdentifier_dataOwner_loadContext_completionBlock_ argumentIndex:2 ofReply:1];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_requestPatternDetectionsFromPasteboardWithName_UUID_authenticationMessage_itemIndex_patterns_needValues_dataOwner_completionBlock_ argumentIndex:0 ofReply:1];

  return v0;
}

id _loggingErrorHandler(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___loggingErrorHandler_block_invoke;
  v7[3] = &unk_279A069C8;
  v8 = v3;
  v9 = a1;
  v4 = v3;
  v5 = MEMORY[0x25F8AC430](v7);

  return v5;
}

BOOL PBIsPasteboardNameAllowed(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  v5 = v4;
  if (a2 && !v4)
  {
    *a2 = PBPasteboardNameInvalidError(v3, 0);
  }

  return v5 != 0;
}

__CFString *PBPasteboardPersistenceName(void *a1, void *a2, void *a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if ([v7 isEqualToString:@"com.apple.UIKit.pboard.general"])
  {
    if (a4)
    {
      v10 = @"com.apple.UIKit.pboard.general.locked";
      goto LABEL_12;
    }

    v14 = @"com.apple.UIKit.pboard.general";
    goto LABEL_10;
  }

  if ([v7 length])
  {
    v11 = [v9 length];
    v12 = v9;
    if (v11 || (v13 = [v8 length], v12 = v8, v13))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v12, v7];
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"UnknownApp.%@", v7];
LABEL_10:
    v10 = v14;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

id PBStorageRootURL()
{
  if (qword_280AEA8C8 != -1)
  {
    dispatch_once(&qword_280AEA8C8, &__block_literal_global_43);
  }

  v1 = qword_280AEA8C0;

  return v1;
}

char *PBSHA1HashOfString(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 UTF8String];
  if (v1)
  {
    v2 = v1;
    memset(&v8, 0, sizeof(v8));
    CC_SHA1_Init(&v8);
    v3 = strlen(v2);
    CC_SHA1_Update(&v8, v2, v3);
    CC_SHA1_Final(md, &v8);
    v4 = 0;
    v5 = v9;
    do
    {
      v6 = md[v4];
      *v5 = PBSHA1HashOfString_hexNibble[v6 >> 4];
      v5[1] = PBSHA1HashOfString_hexNibble[v6 & 0xF];
      v5 += 2;
      ++v4;
    }

    while (v4 != 20);
    *v5 = 0;
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v9 length:40 encoding:4];
  }

  return v1;
}

id PBCannotUnserializePasteboardError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Cannot unserialize pasteboard at URL %@", a1];
  v6 = PBErrorMake(8, v5, v4);

  return v6;
}

id PBErrorMake(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = v7;
  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PBErrorDomain" code:a1 userInfo:v8];

  return v9;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PBItemQueue()
{
  if (qword_280AEA928 != -1)
  {
    dispatch_once(&qword_280AEA928, &__block_literal_global_7);
  }

  v1 = _MergedGlobals_6;

  return v1;
}

uint64_t PBPreferencesBoolValue(void *a1, char a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __PBPreferencesBoolValue_block_invoke;
  v4[3] = &unk_279A06FC8;
  v4[4] = &v6;
  v5 = a2;
  _readPasteboardPreferenceCached(a1, v4);
  v2 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void _readPasteboardPreferenceCached(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _preferencesCacheQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___readPasteboardPreferenceCached_block_invoke;
  v8[3] = &unk_279A06A10;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, v8);
}

id _preferencesCacheQueue()
{
  if (qword_280AEA8F8 != -1)
  {
    dispatch_once(&qword_280AEA8F8, &__block_literal_global_87);
  }

  v1 = qword_280AEA8F0;

  return v1;
}

void ___readPasteboardPreferenceCached_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _preferencesCacheQueue_KeyToValueMap();
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.Pasteboard", *(a1 + 32)];
    v5 = _PBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25E138000, v5, OS_LOG_TYPE_INFO, "Registering for pasteboard preferences notification: %@", buf, 0xCu);
    }

    *buf = 0;
    v6 = [v4 UTF8String];
    v7 = _preferencesCacheQueue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = ___readPasteboardPreferenceCached_block_invoke_38;
    handler[3] = &unk_279A06FA0;
    v12 = *(a1 + 32);
    notify_register_dispatch(v6, buf, v7, handler);

    v3 = _readPasteboardPreference(*(a1 + 32));
    if (v3)
    {
      v8 = _preferencesCacheQueue_KeyToValueMap();
      [v8 setObject:v3 forKeyedSubscript:*(a1 + 32)];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB68] null];
      v9 = _preferencesCacheQueue_KeyToValueMap();
      [v9 setObject:v8 forKeyedSubscript:*(a1 + 32)];
    }
  }

  v10 = [MEMORY[0x277CBEB68] null];

  if (v3 != v10)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  (*(*(a1 + 40) + 16))();
}

id _preferencesCacheQueue_KeyToValueMap()
{
  if (qword_280AEA908 != -1)
  {
    dispatch_once(&qword_280AEA908, &__block_literal_global_90);
  }

  v1 = qword_280AEA900;

  return v1;
}

void *__PBPreferencesBoolValue_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    result = [a2 BOOLValue];
  }

  else
  {
    result = *(a1 + 40);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void PBDispatchAsyncCallback(void *a1)
{
  v1 = a1;
  v2 = callbackQueue();
  dispatch_async(v2, v1);
}

id callbackQueue()
{
  if (qword_280AEA8E8 != -1)
  {
    dispatch_once(&qword_280AEA8E8, &__block_literal_global_84);
  }

  v1 = qword_280AEA8E0;

  return v1;
}

id PBAllowedMetadataClasses()
{
  if (qword_280AEA8A8 != -1)
  {
    dispatch_once(&qword_280AEA8A8, &__block_literal_global_22);
  }

  v1 = _MergedGlobals_5;

  return v1;
}

uint64_t __PBAllowedMetadataClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  _MergedGlobals_5 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t __PBItemQueue_block_invoke()
{
  _MergedGlobals_6 = dispatch_queue_create("com.apple.pasteboard.PBItemQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_25E13F3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25E13F984(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x25F8AC430](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_25E140BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void *_bestReadOnlySandboxExtensionTypeForURL(void *result)
{
  if (result)
  {
    v1 = result;
    getpid();
    v2 = [v1 path];

    [v2 fileSystemRepresentation];
    LODWORD(v1) = sandbox_check();

    if (v1)
    {
      return 0;
    }

    else
    {
      return *MEMORY[0x277D861B8];
    }
  }

  return result;
}

id _issueSandboxExtension(void *a1, uint64_t a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 path];
  [v6 fileSystemRepresentation];
  v7 = sandbox_extension_issue_file();

  if (v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:strlen(v7) + 1 freeWhenDone:1];
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA5B8];
    v12 = *__error();
    v20 = *MEMORY[0x277CCA450];
    v13 = MEMORY[0x277CCACA8];
    v14 = [v5 path];
    v15 = __error();
    v16 = [v13 stringWithFormat:@"Could not create sandbox extension of type %s for URL %@. Error: %s", a2, v14, strerror(*v15)];
    v21[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v9 = [v10 errorWithDomain:v11 code:v12 userInfo:v17];

    v8 = 0;
    if (a3 && v9)
    {
      v18 = v9;
      v8 = 0;
      *a3 = v9;
    }
  }

  return v8;
}

void sub_25E144ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E145310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25E1457A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_25E145BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25E145F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25E146468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___loggingErrorHandler_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _PBLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 40);
    v7 = 136315394;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_25E138000, v4, OS_LOG_TYPE_ERROR, "%s failed with error: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

double _PBDefaultMaxGeneralPasteboardAgeForLockState(int a1)
{
  v2 = _defaults();
  [v2 doubleForKey:@"GeneralPasteboardAge"];
  v4 = v3;

  if (a1)
  {
    v5 = _defaults();
    [v5 doubleForKey:@"GeneralLockedPasteboardAge"];
    v7 = v6;

    if (v4 >= v7)
    {
      return v7;
    }
  }

  return v4;
}

id _defaults()
{
  if (qword_280AEA848 != -1)
  {
    dispatch_once(&qword_280AEA848, &__block_literal_global_1);
  }

  v1 = _MergedGlobals_1;

  return v1;
}

void ___defaults_block_invoke()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Pasteboard"];
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;

  v2 = _MergedGlobals_1;
  v8 = @"GeneralPasteboardAge";
  v9[0] = &unk_286FDB798;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v2 registerDefaults:v3];

  v4 = _MergedGlobals_1;
  v6 = @"GeneralLockedPasteboardAge";
  v7 = &unk_286FDB7A8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v4 registerDefaults:v5];
}

id PBNSIPTopLevelMetadataKeys()
{
  if (qword_280AEA858 != -1)
  {
    dispatch_once(&qword_280AEA858, &__block_literal_global_2);
  }

  v1 = _MergedGlobals_2;

  return v1;
}

void __PBNSIPTopLevelMetadataKeys_block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.Pasteboard.teamData";
  v2[1] = @"com.apple.Pasteboard.estimatedDisplayedSize";
  v2[2] = @"com.apple.Pasteboard.preferredPresentationStyle";
  v2[3] = @"com.apple.Pasteboard.teamData";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = _MergedGlobals_2;
  _MergedGlobals_2 = v0;
}

void sub_25E146E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E1470AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E1472CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E1474EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E147670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E1478CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E147F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E149194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14B02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14B188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14B2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14B440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14B688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14B958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14BB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14BD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25E14C2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25E14D450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 232), 8);
  _Block_object_dispose((v37 - 184), 8);
  _Block_object_dispose((v37 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_25E14D8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14E900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _cleanupQueue()
{
  if (qword_280AEA868 != -1)
  {
    dispatch_once(&qword_280AEA868, &__block_literal_global_82);
  }

  v1 = _MergedGlobals_3;

  return v1;
}

void sub_25E14F53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E14F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12_0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x25F8AC430](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t ___cleanupQueue_block_invoke()
{
  _MergedGlobals_3 = dispatch_queue_create("com.apple.Pasteboard.cleanupQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void PBAssertIsOnCallbackQueue()
{
  v0 = callbackQueue();
  dispatch_assert_queue_V2(v0);
}

id _bestMatchType(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      if ([v13 isEqualToString:v5])
      {
        goto LABEL_18;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v13 = *(*(&v21 + 1) + 8 * v18);
      if (v7[2](v7, v5, v13))
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        v19 = 0;
        if (v16)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    v19 = v13;
    goto LABEL_19;
  }

  v19 = 0;
LABEL_19:

  return v19;
}

id _bestMatchTypes(void *a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v56 count:16];
  v36 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = *v50;
    v34 = *v50;
    do
    {
      v12 = 0;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v49 + 1) + 8 * v12);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v14 = v6;
        v15 = v6;
        v16 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v46;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v46 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v45 + 1) + 8 * i);
              if ([v20 isEqualToString:v13])
              {
LABEL_32:
                v30 = v20;
                v6 = v14;

                goto LABEL_33;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        ++v12;
        v6 = v14;
        v11 = v34;
        v8 = v36;
      }

      while (v12 != v10);
      v10 = [v36 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v10);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = v8;
  v35 = [v21 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v35)
  {
    v22 = *v42;
    v32 = *v42;
    v33 = v21;
    while (2)
    {
      v23 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v21);
        }

        v24 = *(*(&v41 + 1) + 8 * v23);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v14 = v6;
        v25 = v6;
        v26 = [v25 countByEnumeratingWithState:&v37 objects:v53 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v38;
LABEL_23:
          v29 = 0;
          while (1)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v20 = *(*(&v37 + 1) + 8 * v29);
            if (v7[2](v7, v24, v20))
            {
              goto LABEL_32;
            }

            if (v27 == ++v29)
            {
              v27 = [v25 countByEnumeratingWithState:&v37 objects:v53 count:16];
              if (v27)
              {
                goto LABEL_23;
              }

              break;
            }
          }
        }

        ++v23;
        v6 = v14;
        v22 = v32;
        v21 = v33;
      }

      while (v23 != v35);
      v30 = 0;
      v35 = [v33 countByEnumeratingWithState:&v41 objects:v54 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_33:

  return v30;
}

id PBURLFromURLArchive(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAC58] propertyListWithData:v1 options:0 format:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v2 count] < 2)
  {
    goto LABEL_7;
  }

  v3 = [v2 objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 objectAtIndexedSubscript:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v2 objectAtIndexedSubscript:1];
      v7 = [v6 isEqualToString:&stru_286FD7D38];

      v8 = MEMORY[0x277CBEBC0];
      v3 = [v2 objectAtIndexedSubscript:0];
      if (v7)
      {
        v9 = [v8 URLWithString:v3];
      }

      else
      {
        v11 = [v2 objectAtIndexedSubscript:1];
        v9 = [v8 URLWithString:v3 relativeToURL:v11];
      }

      goto LABEL_12;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_12:

LABEL_8:

  return v9;
}

id _readPasteboardPreference(void *a1)
{
  v1 = qword_280AEA8B8;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_280AEA8B8, &__block_literal_global_36);
  }

  v3 = [qword_280AEA8B0 objectForKey:v2];

  return v3;
}

uint64_t ___readPasteboardPreference_block_invoke()
{
  qword_280AEA8B0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Pasteboard"];

  return MEMORY[0x2821F96F8]();
}

void ___readPasteboardPreferenceCached_block_invoke_38(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _readPasteboardPreference(*(a1 + 32));
  v3 = _PBLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_25E138000, v3, OS_LOG_TYPE_INFO, "Pasteboard preference changed: %@, new value: %@", &v7, 0x16u);
  }

  if (v2)
  {
    v5 = _preferencesCacheQueue_KeyToValueMap();
    [v5 setObject:v2 forKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
    v6 = _preferencesCacheQueue_KeyToValueMap();
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];
  }
}

double PBPreferencesDoubleValue(void *a1, double a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __PBPreferencesDoubleValue_block_invoke;
  v4[3] = &unk_279A06FF0;
  v4[4] = &v5;
  *&v4[5] = a2;
  _readPasteboardPreferenceCached(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double *__PBPreferencesDoubleValue_block_invoke(double *result, void *a2)
{
  v2 = result;
  if (a2)
  {
    result = [a2 doubleValue];
  }

  else
  {
    v3 = result[5];
  }

  *(*(*(v2 + 4) + 8) + 24) = v3;
  return result;
}

void __PBStorageRootURL_block_invoke()
{
  v0 = [CPSharedResourcesDirectory() pathComponents];
  v3 = [v0 mutableCopy];

  [v3 addObjectsFromArray:&unk_286FDB7B8];
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v3];
  v2 = qword_280AEA8C0;
  qword_280AEA8C0 = v1;
}

id PBOldPasteboardStorageRootURL()
{
  if (qword_280AEA8D8 != -1)
  {
    dispatch_once(&qword_280AEA8D8, &__block_literal_global_54);
  }

  v1 = qword_280AEA8D0;

  return v1;
}

void __PBOldPasteboardStorageRootURL_block_invoke()
{
  v0 = [CPSharedResourcesDirectory() pathComponents];
  v3 = [v0 mutableCopy];

  [v3 addObjectsFromArray:&unk_286FDB7D0];
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v3];
  v2 = qword_280AEA8D0;
  qword_280AEA8D0 = v1;
}

id PBSchemaFileContentsWithVersion(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"schemaVersion";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v11[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = _PBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_25E138000, v5, OS_LOG_TYPE_FAULT, "Could not create new schema file. Error: %@", buf, 0xCu);
    }
  }

  return v3;
}

id PBCoordinatedRead(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCA9E0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 readingIntentWithURL:v5 options:1];
  v7 = _coordinatedFileAccess(v6, v5, v4);

  return v7;
}

id _coordinatedFileAccess(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
  v9 = _coordinationQueue();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___coordinatedFileAccess_block_invoke;
  v17[3] = &unk_279A07050;
  v18 = v6;
  v19 = v5;
  v10 = v8;
  v20 = v10;
  v21 = v7;
  v11 = v7;
  v12 = v5;
  v13 = v6;
  [v9 addOperationWithBlock:v17];

  v14 = v21;
  v15 = v10;

  return v10;
}

id PBCoordinatedReadForUploading(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCA9E0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 readingIntentWithURL:v5 options:8];
  v7 = _coordinatedFileAccess(v6, v5, v4);

  return v7;
}

id PBCloneFileToTemporaryDir(void *a1, void *a2)
{
  if (([a1 fileDescriptor] & 0x80000000) != 0)
  {
    v5 = PBCannotCopyFileError(0, 0, 0);
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  to_fd = -1;
  v3 = CPTemporaryFileWithUniqueName();
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = _PBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_25E138000, v4, OS_LOG_TYPE_FAULT, "Cannot cerate temporary file.", buf, 2u);
    }

    v5 = PBCannotCopyFileError(0, 0, 0);
  }

  if (a2)
  {
LABEL_10:
    if (v5)
    {
      v6 = v5;
      *a2 = v5;
    }
  }

LABEL_12:

  return 0;
}

id PBCloneToTemporaryDir(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v18 = 0;
  v6 = PBTemporaryFileName(a2, &v18);
  v7 = v18;
  v8 = v7;
  if (!v6 || v7)
  {
    if (!(v6 | v7))
    {
      v8 = PBCannotCopyFileError(v5, 0, 0);
    }
  }

  else
  {
    v9 = [v5 path];
    v10 = [v9 fileSystemRepresentation];
    v11 = [v6 path];
    LODWORD(v10) = copyfile(v10, [v11 fileSystemRepresentation], 0, 0x10C800Fu);

    if (!v10)
    {
      v15 = v6;
      v8 = 0;
      goto LABEL_11;
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = __error();
    v14 = [v12 stringWithFormat:@"%s", strerror(*v13)];
    v8 = PBCannotCopyFileError(v5, v14, 0);
  }

  v15 = 0;
  if (a3 && v8)
  {
    v16 = v8;
    v15 = 0;
    *a3 = v8;
  }

LABEL_11:

  return v15;
}

id PBTemporaryFileName(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3 || (v5 = UTTypeCopyPreferredTagWithClass(v3, *MEMORY[0x277CC1F58])) == 0)
  {
    v5 = @"tmp";
  }

  v6 = NSTemporaryDirectory();
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@".%@.XXXXXX", @"com.apple.Pasteboard"];
  v8 = [v6 stringByAppendingPathComponent:v7];

  [v8 UTF8String];
  __strlcpy_chk();
  v9 = mkstemp(v19);
  v10 = MEMORY[0x277CCACA8];
  if (v9)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19];
    v12 = [v11 stringByAppendingPathExtension:v5];

    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12 isDirectory:0 relativeToURL:0];

    v14 = 0;
  }

  else
  {
    v15 = __error();
    v16 = [v10 stringWithFormat:@"%s", strerror(*v15)];
    v14 = PBCannotCreateTemporaryFile(v16, 0);

    v13 = 0;
    if (a2 && v14)
    {
      v17 = v14;
      v13 = 0;
      *a2 = v14;
    }
  }

  return v13;
}

id PBFilenameWithProperExtension(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 copy];
  if (![(__CFString *)v4 length])
  {
    v5 = UTTypeCopyDescription(v3);

    v4 = v5;
  }

  if (![(__CFString *)v4 length])
  {
    v6 = UTTypeCopyDescription(*MEMORY[0x277CC20C0]);

    v4 = v6;
  }

  SuggestedFilename = _UTTypeCreateSuggestedFilename();

  return SuggestedFilename;
}

id PBCloneURLToTemporaryFolder(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = a4;
  v12 = a3;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@".%@.XXXXXX", a2];
  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingPathComponent:v13];

  [v15 getFileSystemRepresentation:v38 maxLength:1024];
  if (mkdtemp(v38))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v38];
    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16 isDirectory:1];
  }

  else
  {
    v17 = 0;
  }

  v36 = a6;
  if ([v11 length])
  {
    v18 = v11;
  }

  else
  {
    v18 = [v10 lastPathComponent];
  }

  v19 = v18;
  v20 = objc_alloc_init(MEMORY[0x277CCAA88]);
  [v20 setSuggestedName:v19];
  v21 = [v20 _sanitizedSuggestedName];

  v22 = PBFilenameWithProperExtension(v21, v12);

  v23 = [v17 URLByAppendingPathComponent:v22];
  v37 = v10;
  v24 = [v10 path];
  v25 = [v24 fileSystemRepresentation];
  v26 = [v23 path];

  v27 = copyfile(v25, [v26 fileSystemRepresentation], 0, 0x10C800Fu);
  if (v27)
  {
    v28 = [MEMORY[0x277CCAA00] defaultManager];
    [v28 removeItemAtURL:v17 error:0];

    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", strerror(v27)];
    v30 = PBCannotCreateTemporaryFile(v29, 0);

    v31 = 0;
    if (v36 && v30)
    {
      v32 = v30;
      v31 = 0;
      *v36 = v30;
    }
  }

  else
  {
    if (a5)
    {
      v33 = v17;
      *a5 = v17;
    }

    v31 = v23;
    v30 = 0;
  }

  return v31;
}

BOOL PBNSPreferredRepresentationFromPB(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

BOOL PBPreferredRepresentationFromNS(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

uint64_t __callbackQueue_block_invoke()
{
  qword_280AEA8E0 = dispatch_queue_create("com.apple.Pasteboard.callback-queue", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t ___preferencesCacheQueue_block_invoke()
{
  qword_280AEA8F0 = dispatch_queue_create("com.apple.pasteboard.preferencesCacheQueue", 0);

  return MEMORY[0x2821F96F8]();
}

id _coordinationQueue()
{
  if (qword_280AEA918 != -1)
  {
    dispatch_once(&qword_280AEA918, &__block_literal_global_96);
  }

  v1 = qword_280AEA910;

  return v1;
}

void ___coordinatedFileAccess_block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] startAccessingSecurityScopedResource];
  v3 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v15[0] = a1[5];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v5 = _coordinationQueue();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___coordinatedFileAccess_block_invoke_2;
  v11[3] = &unk_279A07028;
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[5];
  v14 = v2;
  *&v9 = a1[4];
  *(&v9 + 1) = v7;
  *&v10 = v6;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v3 coordinateAccessWithIntents:v4 queue:v5 byAccessor:v11];
}

void ___coordinatedFileAccess_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(v3, "totalUnitCount")}];
  v5 = *(a1 + 56);
  v6 = [*(a1 + 40) URL];
  (*(v5 + 16))(v5, v6, v4);

  if (*(a1 + 64) == 1)
  {
    v7 = *(a1 + 48);

    [v7 stopAccessingSecurityScopedResource];
  }
}

uint64_t ___coordinationQueue_block_invoke()
{
  qword_280AEA910 = objc_alloc_init(MEMORY[0x277CCABD8]);

  return MEMORY[0x2821F96F8]();
}

id PBTypeNotFoundError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"The item cannot be represented as type %@", a1];
  v6 = PBErrorMake(0, v5, v4);

  return v6;
}

id PBCannotInstantiateObjectOfClassError(objc_class *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = NSStringFromClass(a1);
  v9 = v8;
  if (v5)
  {
    [v6 stringWithFormat:@"Cannot instantiate object of class %@ from representation of type %@", v8, v5];
  }

  else
  {
    [v6 stringWithFormat:@"Cannot instantiate object of class %@", v8, v13];
  }
  v10 = ;
  v11 = PBErrorMake(1, v10, v7);

  return v11;
}

id PBCannotLoadRepresentationError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Cannot load representation of type %@", a1];
  v6 = PBErrorMake(0, v5, v4);

  return v6;
}

id PBCannotCreateRepresentationError(void *a1, objc_class *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a1;
  v8 = NSStringFromClass(a2);
  v9 = [v5 stringWithFormat:@"Cannot represent object of class %@ as representation of type %@", v8, v7];

  v10 = PBErrorMake(2, v9, v6);

  return v10;
}

id PBCannotCoerceObjectOfClassToObjectOfClassError(objc_class *a1, objc_class *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = NSStringFromClass(a1);
  v8 = NSStringFromClass(a2);
  v9 = [v5 stringWithFormat:@"Cannot coerce object of class %@ to object of class %@", v7, v8];
  v10 = PBErrorMake(3, v9, v6);

  return v10;
}

id PBCannotCoerceRepresentationOfTypeToRepresentationOfTypeError(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"Cannot coerce representation of type %@ to representation of type %@", a1, a2];
  v8 = PBErrorMake(21, v7, v6);

  return v8;
}

id PBIndexOutOfRangeError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Item index %d is out of range.", a1];
  v6 = PBErrorMake(4, v5, v4);

  return v6;
}

id PBCannotCopyFileError(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    if (v5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot copy file at URL %@. Error: %@", v5, v6];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot copy file. Error: %@", v6, v11];
    }

    goto LABEL_7;
  }

  if (v5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot copy file at URL %@.", v5, v11];
    v8 = LABEL_7:;
    v9 = PBErrorMake(6, v8, v7);

    goto LABEL_8;
  }

  v9 = PBErrorMake(6, @"Cannot copy file.", v7);
LABEL_8:

  return v9;
}

id PBCannotUnserializePasteboardNameError(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"Cannot unserialize pasteboard “%@” at URL %@", a1, a2];
  v8 = PBErrorMake(8, v7, v6);

  return v8;
}

id PBCannotSerializePasteboardError(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a3;
    v7 = [v5 stringWithFormat:@"Cannot serialize pasteboard “%@” at URL %@", a1, a2];
    v8 = PBErrorMake(9, v7, v6);
  }

  else
  {
    v7 = a3;
    v8 = PBErrorMake(9, @"Cannot serialize a pasteboard with no name.", v7);
  }

  return v8;
}

id PBPasteboardNotAvailableError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Pasteboard UUID %@ is no longer available.", a1];
  v6 = PBErrorMake(10, v5, v4);

  return v6;
}

id PBPasteboardNameNotAvailableError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Pasteboard %@ is not available at this time.", a1];
  v6 = PBErrorMake(10, v5, v4);

  return v6;
}

id PBPasteboardNameInvalidError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"The pasteboard name %@ is not valid.", a1];
  v6 = PBErrorMake(11, v5, v4);

  return v6;
}

id PBNoLoaderAvailableError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"No loader block available for type %@.", a1];
  v6 = PBErrorMake(15, v5, v4);

  return v6;
}

id PBCannotOpenInPlaceError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Cannot open in place file at URL %@", a1];
  v6 = PBErrorMake(16, v5, v4);

  return v6;
}

id PBCannotCreateTemporaryFile(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = a2;
    v5 = [v3 stringWithFormat:@"Cannot create a temporary file. Error: %@", a1];
    v6 = PBErrorMake(17, v5, v4);
  }

  else
  {
    v5 = a2;
    v6 = PBErrorMake(17, @"Cannot create a temporary file.", v5);
  }

  return v6;
}

id PBNotFileURLError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"The URL %@ does not point to a file.", a1];
  v6 = PBErrorMake(18, v5, v4);

  return v6;
}

id PBCannotDeleteURLError(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Cannot delete file at URL %@", a1];
  v6 = PBErrorMake(19, v5, v4);

  return v6;
}

void sub_25E1557A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E155FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v51 - 216), 8);
  _Block_object_dispose((v51 - 184), 8);
  _Block_object_dispose((v51 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_25E15625C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E157454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose((v65 - 232), 8);
  _Block_object_dispose((v65 - 184), 8);
  _Block_object_dispose((v65 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_25E157A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1592AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E15AD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E15AEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E15B120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E15B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E15B684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E15BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x25F8AC430](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_25E15CD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E15E84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _transferQueue()
{
  if (qword_280AEA948 != -1)
  {
    dispatch_once(&qword_280AEA948, &__block_literal_global_9);
  }

  v1 = _MergedGlobals_8;

  return v1;
}

void sub_25E15F2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E15F8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t ___transferQueue_block_invoke()
{
  _MergedGlobals_8 = dispatch_queue_create("com.apple.Pasteboard.transferQueue", 0);

  return MEMORY[0x2821F96F8]();
}

id PBNewDataProviderXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FDFBF8];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_loadRepresentationForItemAtIndex_type_completionBlock_ argumentIndex:1 ofReply:1];

  return v0;
}