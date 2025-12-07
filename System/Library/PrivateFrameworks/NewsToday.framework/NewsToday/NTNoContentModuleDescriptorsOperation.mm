@interface NTNoContentModuleDescriptorsOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)error;
- (void)validateOperation;
@end

@implementation NTNoContentModuleDescriptorsOperation

- (BOOL)validateOperation
{
  descriptorsCompletion = [(NTTodayModuleDescriptorsOperation *)self descriptorsCompletion];

  if (!descriptorsCompletion && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTNoContentModuleDescriptorsOperation validateOperation];
  }

  return descriptorsCompletion != 0;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  descriptorsCompletion = [(NTTodayModuleDescriptorsOperation *)self descriptorsCompletion];
  (*(descriptorsCompletion + 2))(descriptorsCompletion, MEMORY[0x277CBEBF8], 0, errorCopy);
}

- (void)validateOperation
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"module descriptors operation requires completion"];
  v1 = 136315906;
  v2 = "[NTNoContentModuleDescriptorsOperation validateOperation]";
  v3 = 2080;
  v4 = "NTNoContentModuleDescriptorsOperation.m";
  v5 = 1024;
  v6 = 19;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

@end