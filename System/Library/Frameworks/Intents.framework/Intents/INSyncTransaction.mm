@interface INSyncTransaction
@end

@implementation INSyncTransaction

void __70___INSyncTransaction_beginTransactionForBundleID_bundlePath_syncSlot___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 56) + 8) + 24) = a2;
  v4 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v5 = @"can NOT";
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (a2)
    {
      v5 = @"can";
    }

    v8 = 136315906;
    v9 = "+[_INSyncTransaction beginTransactionForBundleID:bundlePath:syncSlot:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s %@ %@ sync %@", &v8, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 48));
}

@end