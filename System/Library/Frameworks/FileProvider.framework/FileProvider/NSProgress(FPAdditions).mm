@interface NSProgress(FPAdditions)
- (BOOL)fp_isGlobalProgressForDomainAt:()FPAdditions;
- (id)fp_fileOperationKindStrict:()FPAdditions;
- (uint64_t)fp_isAccountedAsCopyProgress;
- (uint64_t)fp_isOfFileOperationKind:()FPAdditions strict:;
- (void)fp_addChildProgress:()FPAdditions withUnitCount:;
- (void)fp_setFileOperationKind:()FPAdditions;
@end

@implementation NSProgress(FPAdditions)

- (id)fp_fileOperationKindStrict:()FPAdditions
{
  if (a3 && ([self kind], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A888]), v4, !v5))
  {
    v8 = 0;
  }

  else
  {
    userInfo = [self userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A858]];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NSProgress(FPAdditions) *)v7 fp_fileOperationKindStrict:v9];
      }

      v8 = 0;
    }

    else
    {
      v8 = v7;
    }
  }

  return v8;
}

- (void)fp_setFileOperationKind:()FPAdditions
{
  v4 = *MEMORY[0x1E696A888];
  v5 = a3;
  [self setKind:v4];
  [self setUserInfoObject:v5 forKey:*MEMORY[0x1E696A858]];
}

- (uint64_t)fp_isOfFileOperationKind:()FPAdditions strict:
{
  v6 = a3;
  v7 = [self fp_fileOperationKindStrict:a4];
  v8 = [v7 isEqualToString:v6];

  return v8;
}

- (void)fp_addChildProgress:()FPAdditions withUnitCount:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  longLongValue = [a4 longLongValue];
  if (!longLongValue)
  {
    longLongValue = [v6 totalUnitCount];
  }

  if (longLongValue <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = longLongValue;
  }

  if ([self totalUnitCount] == -1)
  {
    [self setTotalUnitCount:v8];
    fileTotalCount = [v6 fileTotalCount];
    [self setFileTotalCount:fileTotalCount];

    [self setFileCompletedCount:&unk_1F1FC9AB8];
    [self setCompletedUnitCount:0];
  }

  else
  {
    [self setTotalUnitCount:{objc_msgSend(self, "totalUnitCount") + v8}];
    fileTotalCount2 = [self fileTotalCount];
    unsignedIntegerValue = [fileTotalCount2 unsignedIntegerValue];
    fileTotalCount3 = [v6 fileTotalCount];
    unsignedIntegerValue2 = [fileTotalCount3 unsignedIntegerValue];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2 + unsignedIntegerValue];
    [self setFileTotalCount:v13];
  }

  v15 = fp_current_or_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = v6;
    v18 = 2112;
    selfCopy = self;
    v20 = 2048;
    v21 = v8;
    _os_log_debug_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Adding child progress %@ to parent %@ with %lld unit counts", &v16, 0x20u);
  }

  [self addChild:v6 withPendingUnitCount:v8];
}

- (BOOL)fp_isGlobalProgressForDomainAt:()FPAdditions
{
  v4 = a3;
  v5 = [self fp_fileOperationKindStrict:1];
  if (v5 && ([self fileTotalCount], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(self, "fileCompletedCount"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8) && ((objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696A870]) & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E696A848])) && (objc_msgSend(self, "userInfo"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", @"FPProgressIsCreatedByFileProviderKey"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, v9, v11))
  {
    fileURL = [self fileURL];
    v13 = [fileURL fp_relationshipToItemAtURL:v4] == 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (uint64_t)fp_isAccountedAsCopyProgress
{
  if ([self fp_isOfFileOperationKind:*MEMORY[0x1E696A840]] & 1) != 0 || (objc_msgSend(self, "fp_isOfFileOperationKind:", *MEMORY[0x1E696A850]) & 1) != 0 || (objc_msgSend(self, "fp_isOfFileOperationKind:", *MEMORY[0x1E696A838]))
  {
    return 1;
  }

  v3 = *MEMORY[0x1E696A868];

  return [self fp_isOfFileOperationKind:v3];
}

- (void)fp_fileOperationKindStrict:()FPAdditions .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] userinfo[NSProgressFileOperationKindKey] is of unexpected class %@", &v4, 0xCu);
}

@end