@interface HMEraseAnisetteDataRequest
+ (id)objWithDict:(id)dict;
+ (id)objWithMessage:(id)message;
- (NSDictionary)messagePayload;
- (NSString)description;
@end

@implementation HMEraseAnisetteDataRequest

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = HMEraseAnisetteDataRequest;
  v3 = [(HMRemoteLoginMessage *)&v6 description];
  v4 = [v2 stringWithFormat:@"[HMEraseAnisetteDataRequest: %@]", v3];

  return v4;
}

- (NSDictionary)messagePayload
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = encodeRootObject(self);
  messageName = [(HMEraseAnisetteDataRequest *)self messageName];
  v7 = messageName;
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)objWithMessage:(id)message
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_dataForKey:@"kHMEraseAnisetteDataRequest"];

  v14 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v14];
  v8 = v14;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive object with message from archive data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v7;
}

+ (id)objWithDict:(id)dict
{
  v18 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v5 = [dictCopy hmf_dataForKey:@"kHMEraseAnisetteDataRequest"];
  v13 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
  v7 = v13;
  if (!v6)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive object with dictionary from archive data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v6;
}

@end