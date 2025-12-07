@interface HMCameraClipDecryptionManager
- (HMCameraClipDecryptionManager)initWithKey:(id)key;
- (id)dataFromEncryptedDataContext:(id)context;
@end

@implementation HMCameraClipDecryptionManager

- (id)dataFromEncryptedDataContext:(id)context
{
  v40 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = MEMORY[0x1E695DF88];
  ciphertext = [contextCopy ciphertext];
  v7 = [v5 dataWithLength:{objc_msgSend(ciphertext, "length")}];

  v32 = [(HMCameraClipDecryptionManager *)self key];
  [v32 bytes];
  selfCopy = self;
  v31 = [(HMCameraClipDecryptionManager *)self key];
  [v31 length];
  initializationVector = [contextCopy initializationVector];
  [initializationVector bytes];
  initializationVector2 = [contextCopy initializationVector];
  [initializationVector2 length];
  ciphertext2 = [contextCopy ciphertext];
  [ciphertext2 bytes];
  ciphertext3 = [contextCopy ciphertext];
  v12 = [ciphertext3 length];
  v33 = v7;
  mutableBytes = [v7 mutableBytes];
  v14 = [contextCopy tag];
  bytes = [v14 bytes];
  v16 = [contextCopy tag];
  v28 = bytes;
  v29 = [v16 length];
  v26 = v12;
  v27 = mutableBytes;
  v17 = CCCryptorGCMOneshotDecrypt();

  if (v17)
  {
    v18 = v33;
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      ciphertext4 = [contextCopy ciphertext];
      *buf = 138543874;
      v35 = v22;
      v36 = 2048;
      v37 = [ciphertext4 length];
      v38 = 1024;
      v39 = v17;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to decrypt %lu bytes: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v19);
    v24 = 0;
  }

  else
  {
    v18 = v33;
    v24 = [v33 copy];
  }

  return v24;
}

- (HMCameraClipDecryptionManager)initWithKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = keyCopy;
    v12.receiver = self;
    v12.super_class = HMCameraClipDecryptionManager;
    v6 = [(HMCameraClipDecryptionManager *)&v12 init];
    if (v6)
    {
      v7 = [HMCameraClipCryptoUtilities zeroingDataFromData:v5];
      key = v6->_key;
      v6->_key = v7;
    }

    return v6;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMObjectMergeCollection *)v10 .cxx_destruct];
  }

  return result;
}

@end