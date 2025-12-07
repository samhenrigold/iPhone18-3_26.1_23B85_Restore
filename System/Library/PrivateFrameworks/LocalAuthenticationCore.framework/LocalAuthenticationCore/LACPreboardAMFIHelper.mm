@interface LACPreboardAMFIHelper
+ (BOOL)installProfileWithUUID:(id)d signature:(id)signature error:(id *)error;
+ (id)getUPPProfile;
+ (int64_t)_useCaseFromBootMode:(unsigned int)mode;
+ (int64_t)armedUseCase;
+ (int64_t)useCase;
+ (void)completeCurrentBootModeWithSuccess:(BOOL)success;
+ (void)getUPPProfile;
@end

@implementation LACPreboardAMFIHelper

+ (int64_t)useCase
{
  _securityBootMode = [self _securityBootMode];

  return [self _useCaseFromBootMode:_securityBootMode];
}

+ (int64_t)armedUseCase
{
  _armedSecurityBootMode = [self _armedSecurityBootMode];

  return [self _useCaseFromBootMode:_armedSecurityBootMode];
}

+ (void)completeCurrentBootModeWithSuccess:(BOOL)success
{
  successCopy = success;
  v21 = *MEMORY[0x1E69E9840];
  _securityBootMode = [self _securityBootMode];
  v5 = _securityBootMode;
  if (_securityBootMode == 2)
  {
    v12 = AMFIDeveloperModeCommit();
    v13 = v12;
    v8 = LACLogPreboard(v12);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109376;
      v18 = successCopy;
      v19 = 1024;
      v20 = v13;
      v9 = "Committing developer mode value: %u with result: %u";
      v10 = v8;
      v11 = 14;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (_securityBootMode == 3 && !successCopy)
  {
    v6 = AMFIProfileCommitProfile();
    v7 = v6;
    v8 = LACLogPreboard(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109120;
      v18 = v7;
      v9 = "Committing UPP profile value: nil with result: %u";
      v10 = v8;
      v11 = 8;
LABEL_8:
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, v9, &v17, v11);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:
  v14 = AMFICompleteSecurityBootMode();
  v15 = v14;
  v16 = LACLogPreboard(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109376;
    v18 = v5;
    v19 = 1024;
    v20 = v15;
    _os_log_impl(&dword_1B0233000, v16, OS_LOG_TYPE_DEFAULT, "Completing boot mode: %u with result: %u", &v17, 0xEu);
  }
}

+ (id)getUPPProfile
{
  ScheduledProfile = AMFIProfileGetScheduledProfile();
  v3 = ScheduledProfile;
  if (ScheduledProfile)
  {
    v4 = LACLogPreboard(ScheduledProfile);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(LACPreboardAMFIHelper *)v3];
    }

    v5 = 0;
  }

  else
  {
    v5 = [[LACPreboardUPPProfile alloc] initWithUUID:0 teamID:0 teamName:0];
  }

  return v5;
}

+ (BOOL)installProfileWithUUID:(id)d signature:(id)signature error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  signatureCopy = signature;
  v9 = [signatureCopy copy];
  v10 = AMFIProfileSetTrustWithOptions();
  v11 = v10;
  v12 = LACLogDefault(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109120;
    v20 = v11;
    _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "AMFIProfileSetTrustWithOptions returned: %d", &v19, 8u);
  }

  if (v11)
  {
    if (!error)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v13 = [LACError errorWithCode:-1000 debugDescription:@"Unable to set profile trust"];
    goto LABEL_11;
  }

  v14 = AMFIProfileCommitProfile();
  v15 = v14;
  v16 = LACLogDefault(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109120;
    v20 = v15;
    _os_log_impl(&dword_1B0233000, v16, OS_LOG_TYPE_DEFAULT, "AMFIProfileCommitProfile returned: %d", &v19, 8u);
  }

  v17 = v15 == 0;
  if (error && v15)
  {
    v13 = [LACError errorWithCode:-1000 debugDescription:@"Unable to commit profile"];
LABEL_11:
    v17 = 0;
    *error = v13;
  }

LABEL_13:

  return v17;
}

+ (int64_t)_useCaseFromBootMode:(unsigned int)mode
{
  v3 = &LACPreboardUseCaseUPP;
  v4 = &LACPreboardUseCaseDeveloperMode;
  if (mode != 2)
  {
    v4 = &LACPreboardUseCaseUnknown;
  }

  if (mode != 3)
  {
    v3 = v4;
  }

  return *v3;
}

+ (void)getUPPProfile
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "AMFIProfileGetScheduledProfile returned error code: %d", v2, 8u);
}

@end