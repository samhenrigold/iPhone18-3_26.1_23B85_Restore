@interface CNRunningBoardInhibitor
@end

@implementation CNRunningBoardInhibitor

uint64_t __34___CNRunningBoardInhibitor_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "running-board-inhibitor");
  v1 = os_log_cn_once_object_1_15;
  os_log_cn_once_object_1_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __33___CNRunningBoardInhibitor_start__block_invoke()
{
  v18[2] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v0 = getRBSDomainAttributeClass_softClass;
  v17 = getRBSDomainAttributeClass_softClass;
  if (!getRBSDomainAttributeClass_softClass)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __getRBSDomainAttributeClass_block_invoke;
    v12 = &unk_1E6ED5A80;
    v13 = &v14;
    __getRBSDomainAttributeClass_block_invoke(&v9);
    v0 = v15[3];
  }

  v1 = v0;
  _Block_object_dispose(&v14, 8);
  v2 = [v0 attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v3 = getRBSAcquisitionCompletionAttributeClass_softClass;
  v17 = getRBSAcquisitionCompletionAttributeClass_softClass;
  v18[0] = v2;
  if (!getRBSAcquisitionCompletionAttributeClass_softClass)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __getRBSAcquisitionCompletionAttributeClass_block_invoke;
    v12 = &unk_1E6ED5A80;
    v13 = &v14;
    __getRBSAcquisitionCompletionAttributeClass_block_invoke(&v9);
    v3 = v15[3];
  }

  v4 = v3;
  _Block_object_dispose(&v14, 8);
  v5 = [v3 attributeWithCompletionPolicy:1];
  v18[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v7 = [v6 copy];
  v8 = start_cn_once_object_3;
  start_cn_once_object_3 = v7;
}

void __46___CNRunningBoardInhibitor_runningBoardTarget__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getRBSTargetClass_softClass;
  v17 = getRBSTargetClass_softClass;
  if (!getRBSTargetClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getRBSTargetClass_block_invoke;
    v13[3] = &unk_1E6ED5A80;
    v13[4] = &v14;
    __getRBSTargetClass_block_invoke(v13, a2, a3, a4, a5, a6, a7, a8, v12);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v10 = [v8 currentProcess];
  v11 = runningBoardTarget_cn_once_object_5;
  runningBoardTarget_cn_once_object_5 = v10;
}

@end