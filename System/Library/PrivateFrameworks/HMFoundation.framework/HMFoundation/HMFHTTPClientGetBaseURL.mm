@interface HMFHTTPClientGetBaseURL
@end

@implementation HMFHTTPClientGetBaseURL

void ____HMFHTTPClientGetBaseURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32))
  {
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
      if (!v7)
      {
        v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2 reason:@"Unable to determine the address of the server"];
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void ____HMFHTTPClientGetBaseURL_block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v7 = HMFGetOSLogHandle(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier(v5);
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to resolve service with error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) baseURL];
  (*(v9 + 16))(v9, v10, v3);
}

@end