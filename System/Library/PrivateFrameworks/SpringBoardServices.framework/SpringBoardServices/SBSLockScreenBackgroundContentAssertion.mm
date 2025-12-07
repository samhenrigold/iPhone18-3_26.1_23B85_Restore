@interface SBSLockScreenBackgroundContentAssertion
+ (id)acquireBackgroundContentAssertionWithDefinition:(id)definition errorHandler:(id)handler;
@end

@implementation SBSLockScreenBackgroundContentAssertion

+ (id)acquireBackgroundContentAssertionWithDefinition:(id)definition errorHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  handlerCopy = handler;
  v8 = _os_feature_enabled_impl();
  if (v8)
  {
    v9 = SBLogCoverSheet(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_19169D000, v9, OS_LOG_TYPE_DEFAULT, "Acquiring SBSLockScreenBackgroundContentAssertion", &v15, 2u);
    }

    v10 = [self acquireContentProviderAssertionForType:2 slot:@"Background" identifier:@"SBDashBoardBackgroundContentAssertionIdentifier" configurationObject:definitionCopy errorHandler:handlerCopy];
  }

  else
  {
    v17 = *MEMORY[0x1E696A588];
    v18[0] = @"Feature not enabled";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSLockScreenContentAssertionErrorDomain" code:4 userInfo:v11];
    v13 = SBLogCoverSheet(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_19169D000, v13, OS_LOG_TYPE_DEFAULT, "Failed to acquire SBSLockScreenBackgroundContentAssertion: %@", &v15, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v12);
    }

    v10 = 0;
  }

  return v10;
}

@end