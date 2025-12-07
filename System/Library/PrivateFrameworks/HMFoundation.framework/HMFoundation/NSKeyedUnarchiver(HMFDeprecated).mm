@interface NSKeyedUnarchiver(HMFDeprecated)
+ (id)deserializeObjectWithData:()HMFDeprecated allowedClass:frameworkClasses:;
+ (id)deserializeObjectWithData:()HMFDeprecated allowedClasses:;
@end

@implementation NSKeyedUnarchiver(HMFDeprecated)

+ (id)deserializeObjectWithData:()HMFDeprecated allowedClasses:
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v6 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle(selfCopy, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_22ADEC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to unarchive with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  return v8;
}

+ (id)deserializeObjectWithData:()HMFDeprecated allowedClass:frameworkClasses:
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v35 = 0;
  v10 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:&v35];
  v11 = v35;
  if (!v10)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle(selfCopy, v27);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v38 = v28;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_22ADEC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive due to invalid data: %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  [v10 setDecodingFailurePolicy:1];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v10 setClass:a4 forClassName:*(*(&v31 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277CCA308];
  v30 = v11;
  v18 = [v10 decodeTopLevelObjectOfClass:a4 forKey:v17 error:&v30];
  v19 = v30;

  [v10 finishDecoding];
  if (v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19 == 0;
  }

  if (!v20)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle(selfCopy2, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier(selfCopy2);
      *buf = 138543618;
      v38 = v25;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&dword_22ADEC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to unarchive with error: %@", buf, 0x16u);
    }

    v11 = v19;
LABEL_18:

    objc_autoreleasePoolPop(v21);
    v18 = 0;
    v19 = v11;
  }

  return v18;
}

@end