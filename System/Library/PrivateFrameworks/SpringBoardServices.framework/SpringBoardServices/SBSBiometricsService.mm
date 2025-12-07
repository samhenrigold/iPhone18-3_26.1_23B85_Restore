@interface SBSBiometricsService
- (void)_acquireBiometricAssertionOfType:(unsigned __int8)type assertionName:(id)name reason:(id)reason completion:(id)completion;
- (void)fetchUnlockCredentialSetWithCompletion:(id)completion;
@end

@implementation SBSBiometricsService

- (void)fetchUnlockCredentialSetWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    callbackQueue = [(SBSAbstractFacilityService *)self callbackQueue];
    client = [(SBSAbstractSystemService *)self client];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__SBSBiometricsService_fetchUnlockCredentialSetWithCompletion___block_invoke;
    v8[3] = &unk_1E735F208;
    v9 = callbackQueue;
    v10 = completionCopy;
    v7 = callbackQueue;
    [client fetchUnlockCredentialSetWithCompletion:v8];
  }
}

void __63__SBSBiometricsService_fetchUnlockCredentialSetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SBSBiometricsService_fetchUnlockCredentialSetWithCompletion___block_invoke_2;
  v7[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)_acquireBiometricAssertionOfType:(unsigned __int8)type assertionName:(id)name reason:(id)reason completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  reasonCopy = reason;
  completionCopy = completion;
  v11 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v11 isUsable])
  {
    memset(v17, 0, 512);
    v12 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    reasonCopy = [v12 stringWithFormat:@"%@-%@", uUIDString, reasonCopy];

    if ([reasonCopy getCString:v17 maxLength:1024 encoding:4] && (SBSSpringBoardServerPort(), objc_msgSend(v11, "port"), !SBAddBiometricAssertion()))
    {
      v16 = [[SBSAssertion alloc] initWithAssertionName:nameCopy reason:reasonCopy receiveRight:v11];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  completionCopy[2](completionCopy, v16);
}

@end