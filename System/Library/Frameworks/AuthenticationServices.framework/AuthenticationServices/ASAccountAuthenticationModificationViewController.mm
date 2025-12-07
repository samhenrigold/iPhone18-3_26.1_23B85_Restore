@interface ASAccountAuthenticationModificationViewController
- (ASAccountAuthenticationModificationExtensionContext)extensionContext;
- (void)cancelRequest;
- (void)changePasswordWithoutUserInteractionForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential newPassword:(NSString *)newPassword userInfo:(NSDictionary *)userInfo;
- (void)convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential userInfo:(NSDictionary *)userInfo;
- (void)prepareInterfaceToChangePasswordForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential newPassword:(NSString *)newPassword userInfo:(NSDictionary *)userInfo;
- (void)prepareInterfaceToConvertAccountToSignInWithAppleForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential userInfo:(NSDictionary *)userInfo;
@end

@implementation ASAccountAuthenticationModificationViewController

- (ASAccountAuthenticationModificationExtensionContext)extensionContext
{
  v4.receiver = self;
  v4.super_class = ASAccountAuthenticationModificationViewController;
  extensionContext = [(ASAccountAuthenticationModificationViewController *)&v4 extensionContext];

  return extensionContext;
}

- (void)convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential userInfo:(NSDictionary *)userInfo
{
  v7 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v7, a2);
  v9 = objc_opt_class();
  v10 = class_getMethodImplementation(v9, a2);
  object_getClassName(self);
  v11 = [objc_opt_class() description];
  [v11 containsString:@"."];

  v14 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(v12, v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (MethodImplementation == v10)
  {
    if (v15)
    {
      [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
    }
  }

  else if (v15)
  {
    [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
  }

  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1000 userInfo:0];
  [extensionContext cancelRequestWithError:v17];
}

- (void)prepareInterfaceToConvertAccountToSignInWithAppleForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential userInfo:(NSDictionary *)userInfo
{
  v7 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v7, a2);
  v9 = objc_opt_class();
  v10 = class_getMethodImplementation(v9, a2);
  object_getClassName(self);
  v11 = [objc_opt_class() description];
  [v11 containsString:@"."];

  v14 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(v12, v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (MethodImplementation == v10)
  {
    if (v15)
    {
      [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
    }
  }

  else if (v15)
  {
    [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
  }

  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1000 userInfo:0];
  [extensionContext cancelRequestWithError:v17];
}

- (void)changePasswordWithoutUserInteractionForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential newPassword:(NSString *)newPassword userInfo:(NSDictionary *)userInfo
{
  v8 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v8, a2);
  v10 = objc_opt_class();
  v11 = class_getMethodImplementation(v10, a2);
  object_getClassName(self);
  v12 = [objc_opt_class() description];
  [v12 containsString:@"."];

  v15 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(v13, v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (MethodImplementation == v11)
  {
    if (v16)
    {
      [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
    }
  }

  else if (v16)
  {
    [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
  }

  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1000 userInfo:0];
  [extensionContext cancelRequestWithError:v18];
}

- (void)prepareInterfaceToChangePasswordForServiceIdentifier:(ASCredentialServiceIdentifier *)serviceIdentifier existingCredential:(ASPasswordCredential *)existingCredential newPassword:(NSString *)newPassword userInfo:(NSDictionary *)userInfo
{
  v8 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v8, a2);
  v10 = objc_opt_class();
  v11 = class_getMethodImplementation(v10, a2);
  object_getClassName(self);
  v12 = [objc_opt_class() description];
  [v12 containsString:@"."];

  v15 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(v13, v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (MethodImplementation == v11)
  {
    if (v16)
    {
      [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
    }
  }

  else if (v16)
  {
    [ASAccountAuthenticationModificationViewController convertAccountToSignInWithAppleWithoutUserInteractionForServiceIdentifier:existingCredential:userInfo:];
  }

  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1000 userInfo:0];
  [extensionContext cancelRequestWithError:v18];
}

- (void)cancelRequest
{
  extensionContext = [(ASAccountAuthenticationModificationViewController *)self extensionContext];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ASExtensionErrorDomain" code:1 userInfo:0];
  [extensionContext cancelRequestWithError:v2];
}

@end