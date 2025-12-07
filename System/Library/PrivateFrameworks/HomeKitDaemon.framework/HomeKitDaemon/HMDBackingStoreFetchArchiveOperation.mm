@interface HMDBackingStoreFetchArchiveOperation
- (HMDBackingStoreFetchArchiveOperation)initWithFetchResult:(id)result;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreFetchArchiveOperation

- (id)mainReturningError
{
  v23 = *MEMORY[0x277D85DE8];
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v5 = [local _selectArchiveWithIdentifier:@"homedata" archive:&v18 controllerUserName:&v17 error:&v16];
  v6 = v18;
  v7 = v17;
  v8 = v16;

  if ((v5 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to select archive: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  fetchResult = [(HMDBackingStoreFetchArchiveOperation *)self fetchResult];
  (fetchResult)[2](fetchResult, v6, v7, v8);

  v14 = v8;
  return v8;
}

- (HMDBackingStoreFetchArchiveOperation)initWithFetchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = HMDBackingStoreFetchArchiveOperation;
  v5 = [(HMDBackingStoreOperation *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(resultCopy);
    fetchResult = v5->_fetchResult;
    v5->_fetchResult = v6;
  }

  return v5;
}

@end