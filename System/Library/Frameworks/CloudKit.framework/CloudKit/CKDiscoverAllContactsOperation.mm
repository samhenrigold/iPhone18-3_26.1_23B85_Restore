@interface CKDiscoverAllContactsOperation
- (BOOL)CKOperationShouldRun:(id *)run;
@end

@implementation CKDiscoverAllContactsOperation

- (BOOL)CKOperationShouldRun:(id *)run
{
  v14 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v9 = v4;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543362;
    v13 = v11;
    _os_log_fault_impl(&dword_1883EA000, v9, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.", buf, 0xCu);

    if (!run)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (run)
  {
LABEL_5:
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKInternalErrorDomain", 1001, @"%@ is deprecated, and will be removed in a future release.", v6);
  }

  return 0;
}

@end