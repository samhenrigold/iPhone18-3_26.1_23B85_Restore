@interface HMDNIST256Utilities
+ (id)createNIST256KeyPair;
+ (id)identifier16BytesForKey:(id)key;
+ (id)identifier8BytesForKey:(id)key;
+ (id)privateKeyFromKeyPairExternalRepresentation:(id)representation;
+ (id)publicKeyExternalRepresentationFromKeyPairExternalRepresentation:(id)representation;
+ (id)publicKeyFromKeyPairExternalRepresentation:(id)representation;
@end

@implementation HMDNIST256Utilities

+ (id)identifier8BytesForKey:(id)key
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  keyCopy = key;
  CC_SHA256_Init(&v7);
  v4 = [MEMORY[0x277CBEB28] dataWithBytes:"key-identifier" length:{14, *v7.count, *&v7.hash[2], *&v7.hash[6], *&v7.wbuf[2], *&v7.wbuf[6], *&v7.wbuf[10], *&v7.wbuf[14]}];
  [v4 appendData:keyCopy];

  CC_SHA256_Update(&v7, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(md, &v7);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:8];

  return v5;
}

+ (id)identifier16BytesForKey:(id)key
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  keyCopy = key;
  CC_SHA256_Init(&v7);
  v4 = [MEMORY[0x277CBEB28] dataWithBytes:"key-identifier" length:{14, *v7.count, *&v7.hash[2], *&v7.hash[6], *&v7.wbuf[2], *&v7.wbuf[6], *&v7.wbuf[10], *&v7.wbuf[14]}];
  [v4 appendData:keyCopy];

  CC_SHA256_Update(&v7, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(md, &v7);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];

  return v5;
}

+ (id)privateKeyFromKeyPairExternalRepresentation:(id)representation
{
  v13 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if ([representationCopy length] == 97)
  {
    v4 = [representationCopy subdataWithRange:{65, 32}];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      v12 = [representationCopy length];
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unexpected NIST256 key pair external representation length %lu", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  return v4;
}

+ (id)publicKeyFromKeyPairExternalRepresentation:(id)representation
{
  v13 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if ([representationCopy length] == 97)
  {
    v4 = [representationCopy subdataWithRange:{1, 64}];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      v12 = [representationCopy length];
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unexpected NIST256 key pair external representation length %lu", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  return v4;
}

+ (id)publicKeyExternalRepresentationFromKeyPairExternalRepresentation:(id)representation
{
  v13 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if ([representationCopy length] == 97)
  {
    v4 = [representationCopy subdataWithRange:{0, 65}];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2048;
      v12 = [representationCopy length];
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unexpected NIST256 key pair external representation length %lu", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  return v4;
}

+ (id)createNIST256KeyPair
{
  v24[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC040];
  v3 = *MEMORY[0x277CDC018];
  v23[0] = *MEMORY[0x277CDC028];
  v23[1] = v3;
  v24[0] = v2;
  v24[1] = &unk_2866295C0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  error = 0;
  v5 = SecKeyCreateRandomKey(v4, &error);
  v6 = v5;
  v7 = error;
  if (v5)
  {
    v8 = SecKeyCopyExternalRepresentation(v5, &error);
    v9 = error;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to copy NIST256 key external representation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v7 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create NIST256 key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v8 = 0;
  }

  return v8;
}

@end