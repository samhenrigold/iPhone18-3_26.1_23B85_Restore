@interface HMFActivityInvalidate
@end

@implementation HMFActivityInvalidate

void ____HMFActivityInvalidate_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = mach_continuous_time();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 96);
  }

  else
  {
    v4 = 0;
  }

  *info = 0;
  mach_timebase_info(info);
  v5 = *info;
  v6 = *&info[4];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v10 = HMFGetOSLogHandle(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = ((v2 - v4) * v5 / v6) / 1000000000.0;
    v12 = HMFGetLogIdentifier(v8);
    *info = 138543618;
    *&info[4] = v12;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Invalidated after %fs", info, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *(a1 + 32);
  if ((*(v13 + 80) & 4) != 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
  }

  else
  {
    v14 = [v13 parent];
    v15 = [*(a1 + 32) shortDescription];
    [v14 markWithFormat:@"Stopped child activity: %@", v15];

    v13 = *(a1 + 32);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    if (!v13)
    {
      v16 = 0;
      goto LABEL_10;
    }
  }

  v16 = *(v13 + 88);
LABEL_10:
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v22 + 1) + 8 * v21++) invalidate];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v19);
  }
}

@end