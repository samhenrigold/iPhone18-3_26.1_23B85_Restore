@interface CMLUseCaseGroupManager
+ (CMLUseCaseGroupManager)sharedManager;
- (BOOL)configureGroupWithName:(id)name useCaseGroup:(id)group error:(id *)error;
- (id)listUseCaseGroupsWithError:(id *)error;
@end

@implementation CMLUseCaseGroupManager

+ (CMLUseCaseGroupManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CMLUseCaseGroupManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __39__CMLUseCaseGroupManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (id)listUseCaseGroupsWithError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v22 = 0;
  v23 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v5 = +[CMLXPC createConnection];
  v6 = [CMLXPC syncProxyToConnection:v5 error:&v23];
  v7 = +[CMLLog client];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 138543362;
    v31 = v8;
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__CMLUseCaseGroupManager_listUseCaseGroupsWithError___block_invoke;
  v16[3] = &unk_278541AE0;
  v16[4] = &v24;
  v16[5] = &v17;
  [v6 listUseCaseGroupsWithReply:v16];
  if (error)
  {
    v9 = v23;
    if (!v23)
    {
      v9 = v18[5];
    }

    *error = v9;
  }

  v10 = +[CMLLog client];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v12 = v25[5] != 0;
    v13 = v18[5];
    *buf = 138543874;
    v31 = v11;
    v32 = 1026;
    v33 = v12;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&dword_224E26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete data:%{public}d error:%{public}@", buf, 0x1Cu);
  }

  [v5 invalidate];
  v14 = v25[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

void __53__CMLUseCaseGroupManager_listUseCaseGroupsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v6)
  {
    v7 = [CMLError errorWithCode:1300 underlyingError:v6 description:@"Unable to list use-case groups"];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (BOOL)configureGroupWithName:(id)name useCaseGroup:(id)group error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  groupCopy = group;
  v26 = 0;
  v27 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v10 = +[CMLXPC createConnection];
  v11 = [CMLXPC syncProxyToConnection:v10 error:&v27];
  v12 = +[CMLLog client];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138543362;
    v29 = v13;
    _os_log_impl(&dword_224E26000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __68__CMLUseCaseGroupManager_configureGroupWithName_useCaseGroup_error___block_invoke;
  v20[3] = &unk_278541B08;
  v20[4] = &v21;
  [v11 configureUseCaseGroupWithName:nameCopy useCaseGroup:groupCopy reply:v20];
  if (error)
  {
    v14 = v27;
    if (!v27)
    {
      v14 = v22[5];
    }

    *error = v14;
  }

  v15 = +[CMLLog client];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    v17 = v22[5];
    *buf = 138543618;
    v29 = v16;
    v30 = 2114;
    v31 = v17;
    _os_log_impl(&dword_224E26000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete error:%{public}@", buf, 0x16u);
  }

  [v10 invalidate];
  v18 = v22[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v18;
}

uint64_t __68__CMLUseCaseGroupManager_configureGroupWithName_useCaseGroup_error___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    *(*(*(v2 + 32) + 8) + 40) = [CMLError errorWithCode:1400 underlyingError:a2 description:@"Unable to configure use-case group"];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end