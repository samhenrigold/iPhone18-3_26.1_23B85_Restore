@interface MCMCommandSetDataProtection
+ (Class)incomingMessageClass;
- (BOOL)_updateMetadataForContainerIdentity:(id)identity dataProtectionClass:(int)class error:(id *)error;
- (BOOL)preflightClientAllowed;
- (MCMCommandSetDataProtection)initWithContainerIdentity:(id)identity thirdParty:(BOOL)party dataProtectionClass:(int)class retryIfLocked:(BOOL)locked skipIfUnchanged:(BOOL)unchanged context:(id)context resultPromise:(id)promise;
- (MCMCommandSetDataProtection)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (void)execute;
@end

@implementation MCMCommandSetDataProtection

- (BOOL)_updateMetadataForContainerIdentity:(id)identity dataProtectionClass:(int)class error:(id *)error
{
  v5 = *&class;
  v40 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v33 = 0;
  v10 = [containerCache entryForContainerIdentity:identityCopy error:&v33];

  v11 = v33;
  if (!v10)
  {
    v14 = 0;
    v12 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  v32 = v11;
  v12 = [v10 metadataWithError:&v32];
  v13 = v32;

  if (!v12)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      identifier = [v10 identifier];
      containerPath = [v10 containerPath];
      containerClass = [containerPath containerClass];
      *buf = 138412802;
      v35 = identifier;
      v36 = 2048;
      v37 = containerClass;
      v38 = 2112;
      v39 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Could not fetch metadata after data protection change on [%@(%llu)]: %@", buf, 0x20u);
    }

    v14 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  v14 = [v12 metadataByChangingDataProtectionClass:v5];
  v31 = v13;
  v15 = [v14 writeMetadataToDiskWithError:&v31];
  v16 = v31;

  if ((v15 & 1) == 0)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [v12 identifier];
      containerClass2 = [v12 containerClass];
      *buf = 138412802;
      v35 = identifier2;
      v36 = 2048;
      v37 = containerClass2;
      v38 = 2112;
      v39 = v16;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Could not save metadata after data protection change on [%@(%llu)]: %@", buf, 0x20u);
    }

    v13 = v16;
    goto LABEL_16;
  }

  context2 = [(MCMCommand *)self context];
  containerCache2 = [context2 containerCache];
  v30 = v16;
  v19 = [containerCache2 addContainerMetadata:v14 error:&v30];
  v11 = v30;

  if (!v19)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [v14 identifier];
      containerClass3 = [v14 containerClass];
      *buf = 138412802;
      v35 = identifier3;
      v36 = 2048;
      v37 = containerClass3;
      v38 = 2112;
      v39 = v11;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Could not update metadata in cache after data protection change on [%@(%llu)]: %@", buf, 0x20u);
    }

    v10 = 0;
    v13 = v11;
LABEL_16:

    v20 = 0;
    v11 = v13;
    goto LABEL_17;
  }

  v20 = 1;
  v10 = v19;
LABEL_17:

  return v20;
}

- (void)execute
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  containerIdentity = [(MCMCommandSetDataProtection *)self containerIdentity];
  resultPromise = [(MCMCommand *)self resultPromise];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__MCMCommandSetDataProtection_execute__block_invoke;
  aBlock[3] = &unk_1E86B0AA8;
  aBlock[4] = self;
  v6 = containerIdentity;
  v44 = v6;
  v7 = resultPromise;
  v45 = v7;
  v34 = _Block_copy(aBlock);
  containerClass = [v6 containerClass];
  if (containerClass > 0xB || ((1 << containerClass) & 0xED4) == 0 || (v9 = [v6 containerClass], v9 == 13) || v9 == 7)
  {
    v10 = [[MCMError alloc] initWithErrorType:11 category:3];
    v11 = [[MCMResultBase alloc] initWithError:v10];
    v12 = 0;
LABEL_6:
    v13 = 0;
    v14 = 0;
    goto LABEL_7;
  }

  context = [(MCMCommand *)self context];
  containerCache = [context containerCache];
  v42 = 0;
  v12 = [containerCache entryForContainerIdentity:v6 error:&v42];
  v10 = v42;

  if (!v12)
  {
    v11 = [[MCMResultBase alloc] initWithError:v10];
    goto LABEL_6;
  }

  v41 = v10;
  v14 = [v12 metadataWithError:&v41];
  v19 = v41;

  if (!v14)
  {
    v11 = [[MCMResultBase alloc] initWithError:v19];
    v13 = 0;
    goto LABEL_19;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[MCMCommandSetDataProtection dataProtectionClass](self, "dataProtectionClass")}];
  v13 = [v14 metadataBySettingInfoValue:v20 forKey:@"com.apple.MobileInstallation.ContentProtectionClass"];

  if ([(MCMCommandSetDataProtection *)self skipIfUnchanged]&& v13 == v14)
  {
    v11 = 0;
LABEL_19:
    v10 = v19;
    goto LABEL_7;
  }

  v40 = v19;
  v21 = [v13 writeMetadataToDiskWithError:&v40];
  v10 = v40;

  if (v21)
  {
    context2 = [(MCMCommand *)self context];
    containerCache2 = [context2 containerCache];
    v39 = v10;
    v23 = [containerCache2 addContainerMetadata:v13 error:&v39];
    v33 = v39;

    v24 = v23;
    if (!v23)
    {
      v25 = container_log_handle_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        identifier = [v13 identifier];
        containerClass2 = [v13 containerClass];
        *buf = 138412802;
        v47 = identifier;
        v48 = 2048;
        v49 = containerClass2;
        v50 = 2112;
        v51 = v33;
        _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Could not update metadata in cache when asked to change data protection on [%@(%llu)]: %@", buf, 0x20u);
      }
    }

    v26 = MCMDataProtectionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MCMCommandSetDataProtection_execute__block_invoke_8;
    block[3] = &unk_1E86B0AD0;
    v13 = v13;
    v36 = v13;
    selfCopy = self;
    v38 = v34;
    dispatch_async(v26, block);

    v11 = 0;
    v12 = v24;
    v10 = v33;
  }

  else
  {
    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [v13 identifier];
      containerClass3 = [v13 containerClass];
      *buf = 138412802;
      v47 = identifier2;
      v48 = 2048;
      v49 = containerClass3;
      v50 = 2112;
      v51 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Could not save metadata when asked to change data protection on [%@(%llu)]: %@", buf, 0x20u);
    }

    v11 = [[MCMResultBase alloc] initWithError:v10];
  }

LABEL_7:
  v15 = container_log_handle_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v47 = v10;
    _os_log_debug_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEBUG, "Set data protection (start); error = %@", buf, 0xCu);
  }

  if (v11)
  {
    resultPromise2 = [(MCMCommand *)self resultPromise];
    [resultPromise2 completeWithResult:v11];
  }

  objc_autoreleasePoolPop(v3);
}

void __38__MCMCommandSetDataProtection_execute__block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__12529;
  v20 = __Block_byref_object_dispose__12530;
  v21 = [[MCMError alloc] initWithErrorType:a2];
  if (v17[5] || (v3 = MCMSharedFastWorkloop(), v9 = MEMORY[0x1E69E9820], v10 = 3221225472, v11 = __38__MCMCommandSetDataProtection_execute__block_invoke_4, v12 = &unk_1E86B0DB8, v4 = *(a1 + 40), v13 = *(a1 + 32), v14 = v4, v15 = &v16, dispatch_async_and_wait(v3, &v9), v3, v14, v17[5]))
  {
    v5 = [MCMResultBase alloc];
    v6 = [(MCMResultBase *)v5 initWithError:v17[5]];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  [*(a1 + 48) completeWithResult:{v6, v9, v10, v11, v12, v13}];
  v8 = [*(a1 + 32) reply];
  [v8 send];

  _Block_object_dispose(&v16, 8);
}

void __38__MCMCommandSetDataProtection_execute__block_invoke_8(uint64_t a1)
{
  v2 = +[MCMDataProtectionManager defaultManager];
  [v2 setDataProtectionOnDataContainerForMetadata:*(a1 + 32) isSecondOrThirdPartyApp:objc_msgSend(*(a1 + 40) retryIfLocked:"isThirdParty") deferUntilNextLaunch:objc_msgSend(*(a1 + 40) withCompletion:{"retryIfLocked"), 0, *(a1 + 48)}];
}

void __38__MCMCommandSetDataProtection_execute__block_invoke_4(void *a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2 dataProtectionClass];
  v5 = *(a1[6] + 8);
  obj[0] = *(v5 + 40);
  [v2 _updateMetadataForContainerIdentity:v3 dataProtectionClass:v4 error:obj];
  objc_storeStrong((v5 + 40), obj[0]);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToSetDataProtection = [clientIdentity isAllowedToSetDataProtection];

  return isAllowedToSetDataProtection;
}

- (MCMCommandSetDataProtection)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MCMCommandSetDataProtection;
  v9 = [(MCMCommand *)&v13 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    containerIdentity = [messageCopy containerIdentity];
    v11 = *(v9 + 6);
    *(v9 + 6) = containerIdentity;

    v9[40] = [messageCopy isThirdParty];
    *(v9 + 11) = [messageCopy dataProtectionClass];
    *(v9 + 41) = [messageCopy retryIfLocked];
  }

  return v9;
}

- (MCMCommandSetDataProtection)initWithContainerIdentity:(id)identity thirdParty:(BOOL)party dataProtectionClass:(int)class retryIfLocked:(BOOL)locked skipIfUnchanged:(BOOL)unchanged context:(id)context resultPromise:(id)promise
{
  v21 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v20.receiver = self;
  v20.super_class = MCMCommandSetDataProtection;
  v17 = [(MCMCommand *)&v20 initWithContext:context resultPromise:promise];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_containerIdentity, identity);
    v18->_thirdParty = party;
    v18->_dataProtectionClass = class;
    v18->_retryIfLocked = locked;
    v18->_skipIfUnchanged = unchanged;
  }

  return v18;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end