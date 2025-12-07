@interface MCMCommandInvalidateCodeSigningCache
+ (Class)incomingMessageClass;
- (BOOL)preflightClientAllowed;
- (void)execute;
@end

@implementation MCMCommandInvalidateCodeSigningCache

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

- (void)execute
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  invalidateCodeSigningInfoForAppsWithoutDataContainer = [gCodeSigningMapping invalidateCodeSigningInfoForAppsWithoutDataContainer];
  if (invalidateCodeSigningInfoForAppsWithoutDataContainer == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[MCMError alloc] initWithErrorType:invalidateCodeSigningInfoForAppsWithoutDataContainer];
  }

  v6 = container_log_handle_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_debug_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEBUG, "Invalidate codesign cache; error = %@", &v10, 0xCu);
  }

  if (v5)
  {
    v7 = [[MCMResultBase alloc] initWithError:v5];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v8];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToAccessCodesignMapping = [clientIdentity isAllowedToAccessCodesignMapping];

  return isAllowedToAccessCodesignMapping;
}

@end