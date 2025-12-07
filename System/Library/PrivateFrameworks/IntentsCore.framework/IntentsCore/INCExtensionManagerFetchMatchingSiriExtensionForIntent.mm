@interface INCExtensionManagerFetchMatchingSiriExtensionForIntent
@end

@implementation INCExtensionManagerFetchMatchingSiriExtensionForIntent

void ___INCExtensionManagerFetchMatchingSiriExtensionForIntent_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___INCExtensionManagerFetchMatchingSiriExtensionForIntent_block_invoke_2;
  block[3] = &unk_2797E8140;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void ___INCExtensionManagerFetchMatchingSiriExtensionForIntent_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_2:
    v3 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "_INCExtensionManagerFetchMatchingSiriExtensionForIntent_block_invoke_2";
      v9 = 2114;
      v10 = v2;
      _os_log_error_impl(&dword_255503000, v3, OS_LOG_TYPE_ERROR, "%s Failed to find extension %{public}@", &v7, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    return;
  }

  if (![*(a1 + 40) count])
  {
    v2 = *(a1 + 32);
    goto LABEL_2;
  }

  v4 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v7 = 136315394;
    v8 = "_INCExtensionManagerFetchMatchingSiriExtensionForIntent_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_255503000, v4, OS_LOG_TYPE_INFO, "%s Found Siri extensions %@", &v7, 0x16u);
  }

  v6 = [*(a1 + 40) firstObject];
  (*(*(a1 + 48) + 16))();
}

@end