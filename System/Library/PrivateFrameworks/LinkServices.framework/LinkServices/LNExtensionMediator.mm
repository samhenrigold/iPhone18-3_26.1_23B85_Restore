@interface LNExtensionMediator
+ (id)sharedQueue;
+ (void)getConnectionHostInterfaceForBundleIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)getWidgetKitXPCListenerEndpointForBundleIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)getXPCListenerEndpointForBundleIdentifier:(id)identifier extensionMediatorBundleIdentifier:(id)bundleIdentifier completionHandler:(id)handler;
@end

@implementation LNExtensionMediator

+ (id)sharedQueue
{
  if (sharedQueue_onceToken != -1)
  {
    dispatch_once(&sharedQueue_onceToken, &__block_literal_global_37);
  }

  v3 = sharedQueue_queue;

  return v3;
}

void __34__LNExtensionMediator_sharedQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.appintents.extension-mediator.internal-queue", v2);
  v1 = sharedQueue_queue;
  sharedQueue_queue = v0;
}

+ (void)getXPCListenerEndpointForBundleIdentifier:(id)identifier extensionMediatorBundleIdentifier:(id)bundleIdentifier completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  handlerCopy = handler;
  sharedQueue = [self sharedQueue];
  dispatch_assert_queue_V2(sharedQueue);

  v12 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = bundleIdentifierCopy;
    v24 = 2112;
    v25 = identifierCopy;
    _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_INFO, "Fetching an XPC listener endpoint from an internal mediator (%@) for %@", buf, 0x16u);
  }

  v13 = [LNConnection alloc];
  v14 = [objc_alloc(MEMORY[0x1E69AC7B0]) initWithType:1 bundleIdentifier:bundleIdentifierCopy url:0];
  v21 = 0;
  v15 = [(LNConnection *)v13 initWithEffectiveBundleIdentifier:v14 appBundleIdentifier:0 processInstanceIdentifier:0 appIntentsEnabledOnly:0 userIdentity:0 error:&v21];
  v16 = v21;

  if (v15)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __117__LNExtensionMediator_getXPCListenerEndpointForBundleIdentifier_extensionMediatorBundleIdentifier_completionHandler___block_invoke;
    v18[3] = &unk_1E74B1838;
    v20 = handlerCopy;
    v19 = identifierCopy;
    [(LNConnection *)v15 getListenerEndpointForBundleIdentifier:v19 action:0 completionHandler:v18];
  }

  else
  {
    v17 = getLNLogCategoryExtensionMediator();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = bundleIdentifierCopy;
      v24 = 2112;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Error fetching XPC listener endpoint from an internal mediator (%@) for %@: %@", buf, 0x20u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v16);
  }
}

void __117__LNExtensionMediator_getXPCListenerEndpointForBundleIdentifier_extensionMediatorBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v2 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "Successfully fetched XPC listener endpoint for %{public}@", &v4, 0xCu);
  }
}

+ (void)getWidgetKitXPCListenerEndpointForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Fetching an XPC listener endpoint from Chrono for %{public}@", &buf, 0xCu);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v8 = getCHSAppIntentsXPCListenerEndpointProviderClass_softClass;
  v21 = getCHSAppIntentsXPCListenerEndpointProviderClass_softClass;
  if (!getCHSAppIntentsXPCListenerEndpointProviderClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v23 = __getCHSAppIntentsXPCListenerEndpointProviderClass_block_invoke;
    v24 = &unk_1E74B26D0;
    v25 = &v18;
    __getCHSAppIntentsXPCListenerEndpointProviderClass_block_invoke(&buf);
    v8 = v19[3];
  }

  v9 = v8;
  _Block_object_dispose(&v18, 8);
  v10 = [[v8 alloc] initWithBundleIdentifier:identifierCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__LNExtensionMediator_getWidgetKitXPCListenerEndpointForBundleIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E74B2230;
  v16 = v10;
  v17 = handlerCopy;
  v15 = identifierCopy;
  v11 = v10;
  v12 = handlerCopy;
  v13 = identifierCopy;
  [v11 getAppIntentsXPCListenerEndpointWithCompletion:v14];
}

void __92__LNExtensionMediator_getWidgetKitXPCListenerEndpointForBundleIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
    v7 = getLNLogCategoryExtensionMediator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_INFO, "Successfully fetched XPC listener endpoint for %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v9 = getLNLogCategoryExtensionMediator();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Error fetching XPC listener endpoint for %{public}@: %@", &v11, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)getConnectionHostInterfaceForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  sharedQueue = [self sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E74B1810;
  v12 = identifierCopy;
  v13 = handlerCopy;
  selfCopy = self;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(sharedQueue, block);
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v76[1] = *MEMORY[0x1E69E9840];
  v2 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v71 = v3;
  }

  v4 = objc_alloc(MEMORY[0x1E69635D0]);
  v5 = *(a1 + 32);
  v69 = 0;
  v6 = [v4 initWithBundleIdentifier:v5 error:&v69];
  v7 = v69;
  if (v6)
  {
    v8 = [v6 entitlements];
    v9 = [v8 objectForKey:@"com.apple.private.appintents.extension-mediator.bundle-identifier" ofClass:objc_opt_class()];

    if (v9)
    {
      v10 = *(a1 + 32);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_14;
      v67[3] = &unk_1E74B1798;
      v11 = *(a1 + 48);
      v68 = *(a1 + 40);
      [v11 getXPCListenerEndpointForBundleIdentifier:v10 extensionMediatorBundleIdentifier:v9 completionHandler:v67];

LABEL_33:
      goto LABEL_34;
    }

    v65 = v7;
    v66 = 0;
    v12 = [LNExtensionHostConfigurator extensionProcessWithExtensionRecord:v6 extensionType:&v66 error:&v65];
    v13 = v65;

    if (v66 == 1)
    {
      v14 = *(a1 + 32);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_2;
      v63[3] = &unk_1E74B1798;
      v15 = *(a1 + 48);
      v64 = *(a1 + 40);
      [v15 getWidgetKitXPCListenerEndpointForBundleIdentifier:v14 completionHandler:v63];

LABEL_32:
      v7 = v13;
      goto LABEL_33;
    }

    if (v12)
    {
      v16 = [MEMORY[0x1E69C7610] predicateMatchingIdentifier:v12];
      v62 = 0;
      v17 = [MEMORY[0x1E69C75D0] handleForPredicate:v16 error:&v62];
      v18 = v62;

      if (v18)
      {
        (*(*(a1 + 40) + 16))();
        v13 = v18;
      }

      else
      {
        v20 = @"com.apple.siri";
        v21 = @"AppIntentsExtensionConnection";
        v22 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.siri" name:@"AppIntentsExtensionConnection"];
        v76[0] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];

        v24 = objc_alloc(MEMORY[0x1E69C7548]);
        v25 = [MEMORY[0x1E69C7640] targetWithProcessIdentifier:v17];
        v43 = v23;
        v26 = [v24 initWithExplanation:@"Extension connection" target:v25 attributes:v23];

        v61 = 0;
        v44 = v26;
        LOBYTE(v23) = [v26 acquireWithError:&v61];
        v13 = v61;
        v27 = getLNLogCategoryExtensionMediator();
        v28 = v27;
        if (v23)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v71 = @"com.apple.siri";
            v72 = 2114;
            v73 = @"AppIntentsExtensionConnection";
            _os_log_impl(&dword_19763D000, v28, OS_LOG_TYPE_INFO, "Acquired assertion %{public}@:%{public}@", buf, 0x16u);
          }

          v60 = v13;
          v29 = [v12 newXPCConnectionWithError:&v60];
          v30 = v60;

          if (v30)
          {
            [v44 invalidate];
            v31 = getLNLogCategoryExtensionMediator();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v71 = @"com.apple.siri";
              v72 = 2114;
              v73 = @"AppIntentsExtensionConnection";
              _os_log_impl(&dword_19763D000, v31, OS_LOG_TYPE_INFO, "Invalidated assertion %{public}@:%{public}@", buf, 0x16u);
            }

            (*(*(a1 + 40) + 16))();
            v32 = v44;
          }

          else
          {
            v33 = *(a1 + 32);
            v34 = LNConnectionHostXPCInterface();
            [v29 ln_configureWithBundleIdentifier:v33 interface:v34];

            [v29 setInterruptionHandler:&__block_literal_global_9508];
            [v29 setInvalidationHandler:&__block_literal_global_27_9509];
            [v29 resume];
            v35 = getLNLogCategoryExtensionMediator();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = *(a1 + 32);
              *buf = 138543362;
              v71 = v36;
            }

            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_28;
            v55[3] = &unk_1E74B23B0;
            v32 = v44;
            v37 = v44;
            v56 = v37;
            v38 = @"com.apple.siri";
            v57 = @"com.apple.siri";
            v39 = @"AppIntentsExtensionConnection";
            v58 = @"AppIntentsExtensionConnection";
            v59 = *(a1 + 40);
            v40 = [v29 synchronousRemoteObjectProxyWithErrorHandler:v55];
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_30;
            v45[3] = &unk_1E74B17E8;
            v54 = *(a1 + 48);
            v46 = *(a1 + 32);
            v47 = v12;
            v48 = v29;
            v49 = v37;
            v41 = @"com.apple.siri";
            v50 = @"com.apple.siri";
            v42 = @"AppIntentsExtensionConnection";
            v51 = @"AppIntentsExtensionConnection";
            v53 = *(a1 + 40);
            v52 = v16;
            [v40 getListenerEndpointWithCompletionHandler:v45];

            v30 = 0;
          }

          v13 = v30;
        }

        else
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v71 = @"com.apple.siri";
            v72 = 2114;
            v73 = @"AppIntentsExtensionConnection";
            v74 = 2114;
            v75 = v13;
            _os_log_impl(&dword_19763D000, v28, OS_LOG_TYPE_ERROR, "Failed to acquire assertion %{public}@:%{public}@: %{public}@", buf, 0x20u);
          }

          [v44 invalidate];
          (*(*(a1 + 40) + 16))();
        }
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (v13)
      {
        (*(v19 + 16))(v19, 0, 0, 0, v13);
        goto LABEL_32;
      }

      v16 = LNConnectionErrorWithCode(1014);
      (*(v19 + 16))(v19, 0, 0, 0, v16);
    }

    goto LABEL_32;
  }

  (*(*(a1 + 40) + 16))();
LABEL_34:
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Unable to get synchronousRemoteObjectProxy, error: %{public}@", &v8, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v5 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "Invalidated assertion %{public}@:%{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_30(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [a1[12] sharedQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_2_31;
  v17[3] = &unk_1E74B17C0;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v18 = v14;
  v19 = v13;
  v20 = a1[8];
  v21 = a1[9];
  v25 = a1[11];
  v22 = a1[10];
  v23 = v6;
  v24 = v7;
  v15 = v7;
  v16 = v6;
  dispatch_async(v8, v17);
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_2_31(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    LODWORD(v15[0]) = 138543362;
    *(v15 + 4) = v3;
    _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "Successfully fetched XPC listener endpoint for %{public}@", v15, 0xCu);
  }

  [*(a1 + 40) invalidate];
  [*(a1 + 48) invalidate];
  v4 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    LODWORD(v15[0]) = 138543362;
    *(v15 + 4) = v5;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Invalidated extension process and XPC connection for %{public}@", v15, 0xCu);
  }

  [*(a1 + 56) invalidate];
  v6 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    LODWORD(v15[0]) = 138543618;
    *(v15 + 4) = v7;
    WORD6(v15[0]) = 2114;
    *(v15 + 14) = v8;
    _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_INFO, "Invalidated assertion %{public}@:%{public}@", v15, 0x16u);
  }

  v9 = *(a1 + 104);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = MEMORY[0x1E695DEF0];
  v13 = *(a1 + 40);
  if (v13)
  {
    objc_msgSend_auditToken(v13);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v14 = [v12 if_dataWithAuditToken:v15];
  (*(v9 + 16))(v9, v10, v11, v14, *(a1 + 96));
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_25(uint64_t a1)
{
  v1 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19763D000, v1, OS_LOG_TYPE_INFO, "Extension Mediator XPC connection has been invalidated", v2, 2u);
  }
}

void __87__LNExtensionMediator_getConnectionHostInterfaceForBundleIdentifier_completionHandler___block_invoke_23(uint64_t a1)
{
  v1 = getLNLogCategoryExtensionMediator();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_19763D000, v1, OS_LOG_TYPE_INFO, "Extension Mediator XPC connection has been interrupted", v2, 2u);
  }
}

@end