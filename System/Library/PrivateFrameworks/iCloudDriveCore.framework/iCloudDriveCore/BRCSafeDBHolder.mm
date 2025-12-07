@interface BRCSafeDBHolder
+ (id)newSafeDBHolder:(id)holder withDatabaseURL:(id)l;
- (BOOL)closeWithError:(id *)error;
- (void)closeDatabaseSynchronously:(BOOL)synchronously dispatchToSerialQueue:(BOOL)queue completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation BRCSafeDBHolder

+ (id)newSafeDBHolder:(id)holder withDatabaseURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  holderCopy = holder;
  lCopy = l;
  v8 = lCopy;
  v9 = 0;
  if (holderCopy && lCopy)
  {
    v9 = objc_alloc_init(BRCSafeDBHolder);
    objc_storeStrong(&v9->_db, holder);
    objc_storeStrong(&v9->_databaseURL, l);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134218498;
      v14 = v9;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] <BRCSafeDBHolder %p> - Creating for db in path: %@%@", &v13, 0x20u);
    }
  }

  return v9;
}

- (void)closeDatabaseSynchronously:(BOOL)synchronously dispatchToSerialQueue:(BOOL)queue completionHandler:(id)handler
{
  queueCopy = queue;
  synchronouslyCopy = synchronously;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = selfCopy->_db;
  db = selfCopy->_db;
  selfCopy->_db = 0;

  objc_sync_exit(selfCopy);
  if (v10)
  {
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"<BRCSafeDBHolder %p>", selfCopy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke;
    v18[3] = &unk_2784FF5B8;
    v13 = selfCopy;
    v19 = v13;
    v14 = v10;
    v20 = v14;
    v21 = handlerCopy;
    v15 = MEMORY[0x22AA4A310](v18);
    v16 = v15;
    if (synchronouslyCopy)
    {
      if (!queueCopy)
      {
        (*(v15 + 16))(v15);
        goto LABEL_10;
      }

      serialQueue = [(BRCPQLConnection *)v14 serialQueue];
      dispatch_sync(serialQueue, v16);
    }

    else
    {
      serialQueue = [(BRCPQLConnection *)v14 serialQueue];
      dispatch_async(serialQueue, v16);
    }

LABEL_10:
    goto LABEL_11;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_11:
}

void __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke_cold_1(a1);
  }

  v4 = a1[5];
  v11 = 0;
  v5 = [v4 brc_closeWithError:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke_cold_2(a1);
    }
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = a1[4];
      *buf = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_fault_impl(&dword_223E7A000, v8, OS_LOG_TYPE_FAULT, "[CRIT] %@ - Error closing BRCPendingChangesStream DB connection: %@%@", buf, 0x20u);
    }
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

- (BOOL)closeWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__BRCSafeDBHolder_closeWithError___block_invoke;
  v10[3] = &unk_2785000C0;
  v10[4] = &v11;
  [(BRCSafeDBHolder *)self closeDatabaseSynchronously:1 dispatchToSerialQueue:0 completionHandler:v10];
  v4 = v12[5];
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v9 = "(passed to caller)";
      *buf = 136315906;
      v18 = "[BRCSafeDBHolder closeWithError:]";
      v19 = 2080;
      if (!error)
      {
        v9 = "(ignored by caller)";
      }

      v20 = v9;
      v21 = 2112;
      v22 = v4;
      v23 = 2112;
      v24 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v7 = v4;
    *error = v4;
  }

  _Block_object_dispose(&v11, 8);
  return v4 == 0;
}

- (void)dealloc
{
  LODWORD(v3) = 134218242;
  *(&v3 + 4) = self;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] <BRCSafeDBHolder %p> - dealloc called%@", v3, DWORD2(v3));
}

void __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] %@ - Closing the database%@", v3, DWORD2(v3));
}

void __86__BRCSafeDBHolder_closeDatabaseSynchronously_dispatchToSerialQueue_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] %@ - Database closed%@", v3, DWORD2(v3));
}

@end