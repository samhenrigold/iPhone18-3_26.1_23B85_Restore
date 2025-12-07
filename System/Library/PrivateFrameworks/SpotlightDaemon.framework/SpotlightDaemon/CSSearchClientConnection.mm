@interface CSSearchClientConnection
- (CSSearchClientConnection)initWithConnection:(id)connection;
- (CSSearchClientConnection)initWithConnectionConfiguration:(id)configuration;
- (id)description;
- (id)queryTask:(int64_t)task;
- (void)_didReceiveResultsBatchCompletion;
- (void)_willSendResultsBatch:(id)batch qid:(int64_t)qid;
- (void)cancelQueryTask:(int64_t)task wasCanceledByClient:(BOOL)client;
- (void)cancelQueryTasks;
- (void)dealloc;
- (void)pollResultsForQueryTask:(int64_t)task;
- (void)setQueryTask:(id)task forQueryID:(int64_t)d;
@end

@implementation CSSearchClientConnection

- (void)_didReceiveResultsBatchCompletion
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (CSSearchClientConnection)initWithConnectionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = CSSearchClientConnection;
  v6 = [(CSSearchClientConnection *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = objc_opt_new();
    queryTasks = v7->_queryTasks;
    v7->_queryTasks = v8;

    bundleID = [configurationCopy bundleID];
    if (bundleID)
    {
LABEL_6:

      goto LABEL_7;
    }

    searchInternal = [configurationCopy searchInternal];
    if ((searchInternal & 1) == 0)
    {
      bundleID = logForCSLogCategoryDefault(searchInternal);
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_ERROR))
      {
        [CSSearchClientConnection initWithConnectionConfiguration:configurationCopy];
      }

      goto LABEL_6;
    }
  }

LABEL_7:

  return v7;
}

- (CSSearchClientConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [SDConnectionConfiguration alloc];
  v6 = [(SDConnectionConfiguration *)v5 initWithConnection:connectionCopy isPrivate:sSearchAgentIsPrivate];

  v7 = [(CSSearchClientConnection *)self initWithConnectionConfiguration:v6];
  return v7;
}

- (void)cancelQueryTask:(int64_t)task wasCanceledByClient:(BOOL)client
{
  if (task)
  {
    clientCopy = client;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v7 = self->_queryTasks;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)self->_queryTasks objectForKeyedSubscript:v6];
    [(NSMutableDictionary *)self->_queryTasks removeObjectForKey:v6];
    objc_sync_exit(v7);

    [v8 setWasCanceledByClient:clientCopy];
    [v8 cancel];
  }
}

- (void)pollResultsForQueryTask:(int64_t)task
{
  if (task)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v5 = self->_queryTasks;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)self->_queryTasks objectForKeyedSubscript:v4];
    objc_sync_exit(v5);

    [v6 poll];
  }
}

- (id)queryTask:(int64_t)task
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:task];
  v5 = self->_queryTasks;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_queryTasks objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setQueryTask:(id)task forQueryID:(int64_t)d
{
  taskCopy = task;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:d];
  v7 = self->_queryTasks;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)self->_queryTasks setObject:taskCopy forKeyedSubscript:v6];
  objc_sync_exit(v7);
}

- (void)cancelQueryTasks
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_queryTasks;
  objc_sync_enter(v3);
  if ([(NSMutableDictionary *)self->_queryTasks count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_queryTasks;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [(NSMutableDictionary *)self->_queryTasks objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7), v9];
          [v8 cancel];

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)self->_queryTasks removeAllObjects];
  }

  objc_sync_exit(v3);
}

- (void)dealloc
{
  [(CSSearchClientConnection *)self cancelQueryTasks];
  v3.receiver = self;
  v3.super_class = CSSearchClientConnection;
  [(CSSearchClientConnection *)&v3 dealloc];
}

- (void)_willSendResultsBatch:(id)batch qid:(int64_t)qid
{
  batchCopy = batch;
  v7 = batchCopy;
  add = atomic_fetch_add(&self->_outBatchCount, 1u);
  if (add == 6)
  {
    v9 = logForCSLogCategoryQuery(batchCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CSSearchClientConnection _willSendResultsBatch:qid:];
    }

    if (!self->_pausedTasks)
    {
      v10 = objc_opt_new();
      pausedTasks = self->_pausedTasks;
      self->_pausedTasks = v10;
    }
  }

  if (self->_pausedTasks)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:qid];
    if (([(NSMutableOrderedSet *)self->_pausedTasks containsObject:v12]& 1) == 0)
    {
      v13 = logForCSLogCategoryQuery([(NSMutableOrderedSet *)self->_pausedTasks addObject:v12]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(CSSearchClientConnection *)add _willSendResultsBatch:qid qid:v13];
      }

      [v7 pauseResults];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bundleID = [(SDConnectionConfiguration *)self->_configuration bundleID];
  protectionClass = [(SDConnectionConfiguration *)self->_configuration protectionClass];
  connection = [(SDConnectionConfiguration *)self->_configuration connection];
  v7 = [v3 stringWithFormat:@"CSSearchClientConnection bundleID:%@, protectionClass:%@, conn:%@", bundleID, protectionClass, connection];

  return v7;
}

- (void)initWithConnectionConfiguration:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 connection];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_willSendResultsBatch:qid:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_willSendResultsBatch:(os_log_t)log qid:.cold.2(int a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a1;
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Paused results qid: %ld count: %ld", &v3, 0x16u);
}

@end