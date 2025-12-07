@interface EKSyncStatusUtils
+ (id)_permittedClassesForArchivingLastSyncErrorUserInfo;
+ (id)dataFromErrorUserInfo:(id)info;
+ (id)errorUserInfoFromData:(id)data;
@end

@implementation EKSyncStatusUtils

+ (id)dataFromErrorUserInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    _permittedClassesForArchivingLastSyncErrorUserInfo = [objc_opt_class() _permittedClassesForArchivingLastSyncErrorUserInfo];
    v9 = 0;
    v5 = [MEMORY[0x1E6993068] archiveDictionary:infoCopy permittedClasses:_permittedClassesForArchivingLastSyncErrorUserInfo error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKSyncStatusUtils *)v6 dataFromErrorUserInfo:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)errorUserInfoFromData:(id)data
{
  if (data)
  {
    dataCopy = data;
    _permittedClassesForArchivingLastSyncErrorUserInfo = [objc_opt_class() _permittedClassesForArchivingLastSyncErrorUserInfo];
    v9 = 0;
    v5 = [MEMORY[0x1E6993068] unarchiveDictionaryFromData:dataCopy permittedClasses:_permittedClassesForArchivingLastSyncErrorUserInfo error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKSyncStatusUtils *)v6 errorUserInfoFromData:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_permittedClassesForArchivingLastSyncErrorUserInfo
{
  if (_permittedClassesForArchivingLastSyncErrorUserInfo_onceToken != -1)
  {
    +[EKSyncStatusUtils _permittedClassesForArchivingLastSyncErrorUserInfo];
  }

  v3 = _permittedClassesForArchivingLastSyncErrorUserInfo_permittedClasses;

  return v3;
}

void __71__EKSyncStatusUtils__permittedClassesForArchivingLastSyncErrorUserInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:7];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9, v10, v11}];
  v5 = _permittedClassesForArchivingLastSyncErrorUserInfo_permittedClasses;
  _permittedClassesForArchivingLastSyncErrorUserInfo_permittedClasses = v4;
}

+ (void)dataFromErrorUserInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Could not archive last sync user info, error = %@", &v2, 0xCu);
}

+ (void)errorUserInfoFromData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Could not unarchive last sync user info, error = %@", &v2, 0xCu);
}

@end