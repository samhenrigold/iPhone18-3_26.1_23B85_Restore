@interface FCMultiAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)item;
- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error;
- (FCMultiAccessChecker)init;
- (FCMultiAccessChecker)initWithAccessCheckers:(id)checkers;
- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCMultiAccessChecker

- (FCMultiAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCMultiAccessChecker init]";
    v10 = 2080;
    v11 = "FCMultiAccessChecker.m";
    v12 = 1024;
    v13 = 23;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCMultiAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCMultiAccessChecker)initWithAccessCheckers:(id)checkers
{
  v19 = *MEMORY[0x1E69E9840];
  checkersCopy = checkers;
  if (!checkersCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "accessCheckers != nil"];
    *buf = 136315906;
    v12 = "[FCMultiAccessChecker initWithAccessCheckers:]";
    v13 = 2080;
    v14 = "FCMultiAccessChecker.m";
    v15 = 1024;
    v16 = 28;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCMultiAccessChecker;
  v5 = [(FCAccessChecker *)&v10 init];
  if (v5)
  {
    v6 = [checkersCopy copy];
    accessCheckers = v5->_accessCheckers;
    v5->_accessCheckers = v6;
  }

  return v5;
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)item
{
  itemCopy = item;
  accessCheckers = [(FCMultiAccessChecker *)self accessCheckers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__FCMultiAccessChecker_canSynchronouslyCheckAccessToItem___block_invoke;
  v9[3] = &unk_1E7C45AB0;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [accessCheckers fc_containsObjectPassingTest:v9];

  return v7 ^ 1;
}

- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error
{
  itemCopy = item;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  accessCheckers = [(FCMultiAccessChecker *)self accessCheckers];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__FCMultiAccessChecker_hasAccessToItem_blockedReason_error___block_invoke;
  v12[3] = &unk_1E7C45AD8;
  v14 = &v17;
  v10 = itemCopy;
  v13 = v10;
  reasonCopy = reason;
  errorCopy = error;
  [accessCheckers enumerateObjectsUsingBlock:v12];

  LOBYTE(error) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return error;
}

void *__60__FCMultiAccessChecker_hasAccessToItem_blockedReason_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasAccessToItem:a1[4] blockedReason:a1[6] error:a1[7]];
  *(*(a1[5] + 8) + 24) = result;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (void)checkAccessToItem:(id)item withQualityOfService:(int64_t)service completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v44 = "[FCMultiAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v45 = 2080;
    v46 = "FCMultiAccessChecker.m";
    v47 = 1024;
    v48 = 72;
    v49 = 2114;
    v50 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v26 = completionCopy;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    v44 = "[FCMultiAccessChecker checkAccessToItem:withQualityOfService:completion:]";
    v45 = 2080;
    v46 = "FCMultiAccessChecker.m";
    v47 = 1024;
    v48 = 73;
    v49 = 2114;
    v50 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = dispatch_group_create();
  accessCheckers = [(FCMultiAccessChecker *)self accessCheckers];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke;
  v37[3] = &unk_1E7C45B28;
  v14 = v12;
  v38 = v14;
  v25 = itemCopy;
  v39 = v25;
  serviceCopy = service;
  v15 = v10;
  v40 = v15;
  v16 = v11;
  v41 = v16;
  [accessCheckers enumerateObjectsUsingBlock:v37];
  if (FCDispatchGroupIsEmpty(v14))
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke_3;
    v32[3] = &unk_1E7C43498;
    v17 = &v33;
    v33 = accessCheckers;
    v18 = &v34;
    v34 = v15;
    v19 = &v35;
    v35 = v16;
    v20 = &v36;
    v21 = v26;
    v36 = v26;
    __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke_3(v32);
  }

  else
  {
    v22 = FCDispatchQueueForQualityOfService(service);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke_4;
    block[3] = &unk_1E7C43498;
    v17 = &v28;
    v28 = accessCheckers;
    v18 = &v29;
    v29 = v15;
    v19 = &v30;
    v30 = v16;
    v20 = &v31;
    v21 = v26;
    v31 = v26;
    dispatch_group_notify(v14, v22, block);
  }
}

void __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  dispatch_group_enter(v5);
  v7 = *(a1 + 64);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke_2;
  v9[3] = &unk_1E7C45B00;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = a3;
  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  [v6 checkAccessToItem:v8 withQualityOfService:v7 completion:v9];
}

void __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  if (v10)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    [v6 setObject:v10 forKeyedSubscript:v7];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    v3 = 6;
    while (1)
    {
      v4 = *(a1 + 40);
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
      v11 = [v4 objectForKeyedSubscript:v5];

      v6 = v11;
      if (v11)
      {
        break;
      }

      v7 = *(a1 + 48);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
      v9 = [v7 objectForKeyedSubscript:v8];
      v10 = [v9 unsignedIntegerValue];

      if (v10)
      {
        v6 = 0;
        v3 = v10;
        break;
      }

      if (++v2 >= [*(a1 + 32) count])
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
    v6 = 0;
  }

  v12 = v6;
  (*(*(a1 + 56) + 16))(*(a1 + 56), v3 == 0, v3);
}

void __74__FCMultiAccessChecker_checkAccessToItem_withQualityOfService_completion___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    v3 = 6;
    while (1)
    {
      v4 = *(a1 + 40);
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
      v11 = [v4 objectForKeyedSubscript:v5];

      v6 = v11;
      if (v11)
      {
        break;
      }

      v7 = *(a1 + 48);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];
      v9 = [v7 objectForKeyedSubscript:v8];
      v10 = [v9 unsignedIntegerValue];

      if (v10)
      {
        v6 = 0;
        v3 = v10;
        break;
      }

      if (++v2 >= [*(a1 + 32) count])
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
    v6 = 0;
  }

  v12 = v6;
  (*(*(a1 + 56) + 16))(*(a1 + 56), v3 == 0, v3);
}

@end