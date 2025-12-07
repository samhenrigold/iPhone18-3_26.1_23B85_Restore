@interface DKContactsPrivacyMaintainer
@end

@implementation DKContactsPrivacyMaintainer

void __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_2_cold_1(a1, v3);
  }

  [WeakRetained[6] runAfterDelaySeconds:1 coalescingBehavior:8.0];
}

void __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_517(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_517_cold_1(a1, v3);
  }

  [WeakRetained[6] runAfterDelaySeconds:1 coalescingBehavior:8.0];
}

void __71___DKContactsPrivacyMaintainer_handleRecentlyDeletedContactsWithLimit___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [a2 deletedContactIdentifiers];
  [*(a1 + 32) _deleteIntentsRelatedToContactIdentifiers:v5];
  *(*(*(a1 + 40) + 8) + 24) += [v5 count];
  if (*(*(*(a1 + 40) + 8) + 24) > *(a1 + 56))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }

  v6 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 count];
    v10 = *(*(*(a1 + 40) + 8) + 24);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = 138413058;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2048;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_debug_impl(&dword_191750000, v6, OS_LOG_TYPE_DEBUG, "%@ - visitEventsWithBatchSize processed batch with size: %lu, numContactsProcessed: %lu, shouldSaveToken: %@", &v12, 0x2Au);
  }
}

void __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11(&dword_191750000, v4, v5, "%@ got __ABDataBaseChangedByOtherProcessNotification notification, triggering deleteInteractionsRelatedToDeletedContacts", v6, v7, v8, v9);
}

void __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_517_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11(&dword_191750000, v4, v5, "%@ got CNContactStoreDidChangeNotification notification, triggering deleteInteractionsRelatedToDeletedContacts", v6, v7, v8, v9);
}

@end