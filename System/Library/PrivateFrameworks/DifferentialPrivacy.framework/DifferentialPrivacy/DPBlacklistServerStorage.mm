@interface DPBlacklistServerStorage
@end

@implementation DPBlacklistServerStorage

void __93___DPBlacklistServerStorage_requestLatestBlacklistsSynchronously_error_lastRecordModifiedAt___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = 138412802;
    v23 = v21;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_22622D000, v10, OS_LOG_TYPE_DEBUG, "%@: blacklist server responds with (error: %@, data: %@)", &v22, 0x20u);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
  v13 = v7;

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;
  v16 = v8;

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v9;
  v19 = v9;

  *(*(*(a1 + 72) + 8) + 24) = 1;
  dispatch_semaphore_signal(*(a1 + 40));
}

void __66___DPBlacklistServerStorage_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) setActivity:v4];
  [*(a1 + 32) updateRuntimeBlacklistsFromServer];
  objc_autoreleasePoolPop(v3);
}

void __54___DPBlacklistServerStorage__requestLatestBlacklists___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[_DPLog daemon];
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54___DPBlacklistServerStorage__requestLatestBlacklists___block_invoke_cold_1(a1, v7, v11);
    }

    (*(*(a1 + 40) + 16))();
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v26 = 138412802;
      v27 = v15;
      v28 = 2048;
      v29 = [v8 count];
      v30 = 1024;
      v31 = v9 != 0;
      _os_log_impl(&dword_22622D000, v11, OS_LOG_TYPE_INFO, "%@: query operation is completed (records: %lu, cursor: %d)", &v26, 0x1Cu);
    }

    [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v8];
    if (v9)
    {
      v16 = +[_DPLog daemon];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v26 = 138412290;
        v27 = v18;
        _os_log_impl(&dword_22622D000, v16, OS_LOG_TYPE_DEFAULT, "%@: query operation indicates that it has more records, fetching again using cursor", &v26, 0xCu);
      }

      v19 = *(a1 + 32);
      v13 = [v19 _queryOperationFromCursor:v9];
      [v19 _executeQueryOperation:v13 onOperationQueue:*(*(*(a1 + 64) + 8) + 40) onCompletion:*(*(*(a1 + 48) + 8) + 40)];
    }

    else
    {
      v20 = [v8 sortedArrayUsingComparator:&__block_literal_global_0];
      v21 = [v20 lastObject];
      v13 = [v21 modificationDate];

      v22 = *(a1 + 40);
      v23 = [*(a1 + 32) _blacklistURLByKeyFrom:*(*(*(a1 + 56) + 8) + 40)];
      (*(v22 + 16))(v22, 0, v23, v13);

      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;
    }
  }
}

uint64_t __54___DPBlacklistServerStorage__requestLatestBlacklists___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 modificationDate];
  v6 = [v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __82___DPBlacklistServerStorage__executeQueryOperation_onOperationQueue_onCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:a3];
  }

  else
  {
    v9 = +[_DPLog daemon];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138412802;
      v13 = v11;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_22622D000, v9, OS_LOG_TYPE_ERROR, "%@: unable to obtain record(ID: %@), error: %@", &v12, 0x20u);
    }
  }
}

void __54___DPBlacklistServerStorage__requestLatestBlacklists___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "%@: query operation returned error: %@", &v7, 0x16u);
}

@end