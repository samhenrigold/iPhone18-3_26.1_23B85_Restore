@interface _DKXPCKnowledgeStore
+ (id)XPCKnowledgeStore;
+ (id)XPCUserKnowledgeStore;
- (BOOL)confirmConnectionWithError:(id *)error;
- (BOOL)deleteObjects:(id)objects error:(id *)error;
- (BOOL)deleteRemoteState:(id *)state;
- (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type;
- (BOOL)saveObjects:(id)objects error:(id *)error;
- (BOOL)synchronizeWithError:(id *)error;
- (BOOL)synchronizeWithUrgency:(unint64_t)urgency client:(id)client error:(id *)error;
- (_DKXPCKnowledgeStore)initWithConnection:(id)connection;
- (_DKXPCKnowledgeStore)initWithMachServiceName:(id)name;
- (id)deleteObjects:(id)objects synchronous:(BOOL)synchronous responseQueue:(id)queue withCompletion:(id)completion;
- (id)deviceUUID;
- (id)executeQuery:(id)query error:(id *)error;
- (id)executeQuery:(id)query synchronous:(BOOL)synchronous error:(id *)error responseQueue:(id)queue withCompletion:(id)completion;
- (id)saveObjects:(id)objects synchronous:(BOOL)synchronous responseQueue:(id)queue withCompletion:(id)completion;
- (id)sourceDeviceIdentityFromObject:(id)object error:(id *)error;
- (id)sourceDeviceIdentityWithError:(id *)error;
- (unint64_t)deleteAllEventsInEventStream:(id)stream error:(id *)error;
- (unint64_t)deleteAllEventsInEventStream:(id)stream synchronous:(BOOL)synchronous error:(id *)error responseQueue:(id)queue withCompletion:(id)completion;
- (unint64_t)deleteAllEventsMatchingPredicate:(id)predicate error:(id *)error;
- (unint64_t)deleteAllEventsMatchingPredicate:(id)predicate synchronous:(BOOL)synchronous error:(id *)error responseQueue:(id)queue withCompletion:(id)completion;
- (void)dealloc;
- (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type;
- (void)executeQuery:(id)query responseQueue:(id)queue withCompletion:(id)completion;
- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client responseQueue:(id)queue completion:(id)completion;
@end

@implementation _DKXPCKnowledgeStore

+ (id)XPCKnowledgeStore
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _DKXPCKnowledgeStore;
  [(_DKXPCKnowledgeStore *)&v3 dealloc];
}

+ (id)XPCUserKnowledgeStore
{
  v2 = [[self alloc] initWithMachServiceName:@"com.apple.coreduetd.knowledge"];

  return v2;
}

- (_DKXPCKnowledgeStore)initWithMachServiceName:(id)name
{
  v4 = MEMORY[0x1E696B0B8];
  nameCopy = name;
  v6 = [[v4 alloc] initWithMachServiceName:nameCopy options:0];

  v7 = [(_DKXPCKnowledgeStore *)self initWithConnection:v6];
  return v7;
}

- (_DKXPCKnowledgeStore)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = _DKXPCKnowledgeStore;
  v6 = [(_DKXPCKnowledgeStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = _DKDaemonInterface();
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v7->_connection resume];
  }

  return v7;
}

- (id)saveObjects:(id)objects synchronous:(BOOL)synchronous responseQueue:(id)queue withCompletion:(id)completion
{
  synchronousCopy = synchronous;
  v36 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  queueCopy = queue;
  completionCopy = completion;
  v13 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [objectsCopy count];
    _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "Starting saveObjects with %lu objects.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__25;
  v34 = __Block_byref_object_dispose__25;
  v35 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke;
  v27[3] = &unk_1E736A830;
  v14 = completionCopy;
  v29 = v14;
  v15 = queueCopy;
  v28 = v15;
  p_buf = &buf;
  v16 = MEMORY[0x193B00C50](v27);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  }
  v18 = ;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77___DKXPCKnowledgeStore_saveObjects_synchronous_responseQueue_withCompletion___block_invoke_3;
  v23[3] = &unk_1E736A858;
  v23[4] = self;
  v19 = v14;
  v25 = v19;
  v20 = v15;
  v24 = v20;
  v26 = &buf;
  [v18 saveObjects:objectsCopy reply:v23];
  v21 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v21;
}

- (BOOL)saveObjects:(id)objects error:(id *)error
{
  v5 = [(_DKXPCKnowledgeStore *)self saveObjects:objects synchronous:1 responseQueue:0 withCompletion:0];
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  v6 = v5 == 0;

  return v6;
}

- (id)deleteObjects:(id)objects synchronous:(BOOL)synchronous responseQueue:(id)queue withCompletion:(id)completion
{
  synchronousCopy = synchronous;
  v42 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  queueCopy = queue;
  completionCopy = completion;
  v13 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [objectsCopy count];
    _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "Starting deleteObjects with %lu objects.", &buf, 0xCu);
  }

  if ([objectsCopy count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__25;
    v40 = __Block_byref_object_dispose__25;
    v41 = 0;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_2;
    v31[3] = &unk_1E736A830;
    v14 = completionCopy;
    v33 = v14;
    v15 = queueCopy;
    v32 = v15;
    p_buf = &buf;
    v16 = MEMORY[0x193B00C50](v31);
    connection = self->_connection;
    if (synchronousCopy)
    {
      [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
    }

    else
    {
      [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
    }
    v24 = ;
    v25 = objc_autoreleasePoolPush();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke_3;
    v27[3] = &unk_1E736A858;
    v27[4] = self;
    v29 = v14;
    v28 = v15;
    v30 = &buf;
    [v24 deleteObjects:objectsCopy reply:v27];

    objc_autoreleasePoolPop(v25);
    v23 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v18 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "Early out because no valid objects were provided.", &buf, 2u);
    }

    if (completionCopy)
    {
      if (!queueCopy)
      {
        [_DKXPCKnowledgeStore deleteObjects:synchronous:responseQueue:withCompletion:];
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __79___DKXPCKnowledgeStore_deleteObjects_synchronous_responseQueue_withCompletion___block_invoke;
      v35[3] = &unk_1E7367840;
      v36 = completionCopy;
      v19 = v35;
      v20 = queueCopy;
      v21 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v38 = __cd_dispatch_async_capture_tx_block_invoke_11;
      v39 = &unk_1E7367818;
      v40 = v21;
      v41 = v19;
      v22 = v21;
      dispatch_async(v20, &buf);
    }

    v23 = 0;
  }

  return v23;
}

- (BOOL)deleteObjects:(id)objects error:(id *)error
{
  v5 = [(_DKXPCKnowledgeStore *)self deleteObjects:objects synchronous:1 responseQueue:0 withCompletion:0];
  if (error && v5)
  {
    v5 = v5;
    *error = v5;
  }

  v6 = v5 == 0;

  return v6;
}

- (unint64_t)deleteAllEventsInEventStream:(id)stream synchronous:(BOOL)synchronous error:(id *)error responseQueue:(id)queue withCompletion:(id)completion
{
  synchronousCopy = synchronous;
  v48 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  queueCopy = queue;
  completionCopy = completion;
  v15 = completionCopy;
  if (streamCopy)
  {
    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = streamCopy;
      _os_log_impl(&dword_191750000, v16, OS_LOG_TYPE_INFO, "Starting deleteAllEventsInEventStream with stream %@.", &buf, 0xCu);
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__25;
    v46 = __Block_byref_object_dispose__25;
    v47 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_11;
    v33[3] = &unk_1E736A830;
    v17 = v15;
    v35 = v17;
    v18 = queueCopy;
    v34 = v18;
    p_buf = &buf;
    v19 = MEMORY[0x193B00C50](v33);
    connection = self->_connection;
    if (synchronousCopy)
    {
      [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v19];
    }

    else
    {
      [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v19];
    }
    v25 = ;
    name = [streamCopy name];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke_3;
    v28[3] = &unk_1E736A8A8;
    v28[4] = self;
    v31 = &v37;
    v32 = &buf;
    v30 = v17;
    v29 = v18;
    [v25 deleteAllEventsInEventStreamNamed:name reply:v28];

    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }

    v24 = v38[3];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    if (completionCopy)
    {
      if (!queueCopy)
      {
        [_DKXPCKnowledgeStore deleteAllEventsInEventStream:synchronous:error:responseQueue:withCompletion:];
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __100___DKXPCKnowledgeStore_deleteAllEventsInEventStream_synchronous_error_responseQueue_withCompletion___block_invoke;
      v41[3] = &unk_1E7367840;
      v42 = completionCopy;
      v21 = v41;
      v22 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v44 = __cd_dispatch_async_capture_tx_block_invoke_11;
      v45 = &unk_1E7367818;
      v46 = v22;
      v47 = v21;
      v23 = v22;
      dispatch_async(queueCopy, &buf);
    }

    v24 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  return v24;
}

- (unint64_t)deleteAllEventsInEventStream:(id)stream error:(id *)error
{
  v8 = 0;
  v5 = [(_DKXPCKnowledgeStore *)self deleteAllEventsInEventStream:stream synchronous:1 error:&v8 responseQueue:0 withCompletion:0];
  v6 = v8;
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

- (unint64_t)deleteAllEventsMatchingPredicate:(id)predicate synchronous:(BOOL)synchronous error:(id *)error responseQueue:(id)queue withCompletion:(id)completion
{
  synchronousCopy = synchronous;
  v48 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  queueCopy = queue;
  completionCopy = completion;
  v15 = completionCopy;
  if (predicateCopy)
  {
    v16 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      cd_sanitizeForLogging = [predicateCopy cd_sanitizeForLogging];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = cd_sanitizeForLogging;
      _os_log_impl(&dword_191750000, v16, OS_LOG_TYPE_INFO, "Starting deleteAllEventsMatchingPredicate with predicate %@.", &buf, 0xCu);
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__25;
    v46 = __Block_byref_object_dispose__25;
    v47 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_14;
    v33[3] = &unk_1E736A830;
    v18 = v15;
    v35 = v18;
    v19 = queueCopy;
    v34 = v19;
    p_buf = &buf;
    v20 = MEMORY[0x193B00C50](v33);
    connection = self->_connection;
    if (synchronousCopy)
    {
      [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v20];
    }

    else
    {
      [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v20];
    }
    v26 = ;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke_3;
    v28[3] = &unk_1E736A8A8;
    v28[4] = self;
    v31 = &v37;
    v32 = &buf;
    v30 = v18;
    v29 = v19;
    [v26 deleteAllEventsMatchingPredicate:predicateCopy reply:v28];
    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }

    v25 = v38[3];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    if (completionCopy)
    {
      if (!queueCopy)
      {
        [_DKXPCKnowledgeStore deleteAllEventsMatchingPredicate:synchronous:error:responseQueue:withCompletion:];
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __104___DKXPCKnowledgeStore_deleteAllEventsMatchingPredicate_synchronous_error_responseQueue_withCompletion___block_invoke;
      v41[3] = &unk_1E7367840;
      v42 = completionCopy;
      v22 = v41;
      v23 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v44 = __cd_dispatch_async_capture_tx_block_invoke_11;
      v45 = &unk_1E7367818;
      v46 = v23;
      v47 = v22;
      v24 = v23;
      dispatch_async(queueCopy, &buf);
    }

    v25 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  return v25;
}

- (unint64_t)deleteAllEventsMatchingPredicate:(id)predicate error:(id *)error
{
  v8 = 0;
  v5 = [(_DKXPCKnowledgeStore *)self deleteAllEventsMatchingPredicate:predicate synchronous:1 error:&v8 responseQueue:0 withCompletion:0];
  v6 = v8;
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

- (id)executeQuery:(id)query synchronous:(BOOL)synchronous error:(id *)error responseQueue:(id)queue withCompletion:(id)completion
{
  synchronousCopy = synchronous;
  v52 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  queueCopy = queue;
  completionCopy = completion;
  v14 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = queryCopy;
    _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_INFO, "Starting executeQuery with query %@.", &buf, 0xCu);
  }

  v15 = [_DKQuery executableQueryForQuery:queryCopy];
  if (v15)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__25;
    v50 = __Block_byref_object_dispose__25;
    v51 = 0;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_2;
    v41[3] = &unk_1E736A830;
    v16 = completionCopy;
    v43 = v16;
    v17 = queueCopy;
    v42 = v17;
    p_buf = &buf;
    v18 = MEMORY[0x193B00C50](v41);
    connection = self->_connection;
    if (synchronousCopy)
    {
      [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
    }

    else
    {
      [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v18];
    }
    v26 = ;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__25;
    v39 = __Block_byref_object_dispose__25;
    v40 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke_3;
    v29[3] = &unk_1E736A8D0;
    v29[4] = self;
    v30 = v15;
    v32 = v16;
    v31 = v17;
    v33 = &buf;
    v34 = &v35;
    [v26 executeQuery:queryCopy reply:v29];
    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }

    v25 = v36[5];

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v20 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_DKXPCKnowledgeStore executeQuery:v20 synchronous:? error:? responseQueue:? withCompletion:?];
    }

    if (completionCopy)
    {
      if (!queueCopy)
      {
        [_DKXPCKnowledgeStore executeQuery:synchronous:error:responseQueue:withCompletion:];
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __84___DKXPCKnowledgeStore_executeQuery_synchronous_error_responseQueue_withCompletion___block_invoke;
      v45[3] = &unk_1E7367840;
      v46 = completionCopy;
      v21 = v45;
      v22 = queueCopy;
      v23 = os_transaction_create();
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v48 = __cd_dispatch_async_capture_tx_block_invoke_11;
      v49 = &unk_1E7367818;
      v50 = v23;
      v51 = v21;
      v24 = v23;
      dispatch_async(v22, &buf);
    }

    v25 = 0;
  }

  return v25;
}

- (void)executeQuery:(id)query responseQueue:(id)queue withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  queueCopy = queue;
  completionCopy = completion;
  v11 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = queryCopy;
    _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_INFO, "Starting executeQuery with query %@.", &v13, 0xCu);
  }

  v12 = [(_DKXPCKnowledgeStore *)self executeQuery:queryCopy synchronous:0 error:0 responseQueue:queueCopy withCompletion:completionCopy];
}

- (id)executeQuery:(id)query error:(id *)error
{
  v8 = 0;
  v5 = [(_DKXPCKnowledgeStore *)self executeQuery:query synchronous:1 error:&v8 responseQueue:0 withCompletion:0];
  v6 = v8;
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

- (BOOL)synchronizeWithError:(id *)error
{
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Starting synchronizeWithError.", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__25;
  v21 = __Block_byref_object_dispose__25;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45___DKXPCKnowledgeStore_synchronizeWithError___block_invoke;
  v16[3] = &unk_1E736A500;
  v16[4] = buf;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45___DKXPCKnowledgeStore_synchronizeWithError___block_invoke_21;
  v11[3] = &unk_1E736A8F8;
  v11[4] = buf;
  v11[5] = &v12;
  [v7 synchronizeWithReply:v11];
  if (error)
  {
    v8 = *(v18 + 5);
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);
  return v9;
}

- (BOOL)synchronizeWithUrgency:(unint64_t)urgency client:(id)client error:(id *)error
{
  clientCopy = client;
  v9 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "Starting synchronizeWithUrgency.", buf, 2u);
  }

  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__25;
  v25 = __Block_byref_object_dispose__25;
  v26 = 0;
  connection = self->_connection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60___DKXPCKnowledgeStore_synchronizeWithUrgency_client_error___block_invoke;
  v20[3] = &unk_1E736A500;
  v20[4] = buf;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60___DKXPCKnowledgeStore_synchronizeWithUrgency_client_error___block_invoke_22;
  v15[3] = &unk_1E736A8F8;
  v15[4] = buf;
  v15[5] = &v16;
  [v11 synchronizeWithUrgency:urgency client:clientCopy reply:v15];
  if (error)
  {
    v12 = *(v22 + 5);
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(buf, 8);
  return v13;
}

- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client responseQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  clientCopy = client;
  v13 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "Starting async synchronizeWithUrgency.", buf, 2u);
  }

  connection = self->_connection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke;
  v23[3] = &unk_1E736A920;
  v15 = completionCopy;
  v25 = v15;
  v16 = queueCopy;
  v24 = v16;
  v17 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79___DKXPCKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_3;
  v20[3] = &unk_1E736A948;
  v21 = v16;
  v22 = v15;
  v20[4] = self;
  v18 = v16;
  v19 = v15;
  [v17 synchronizeWithUrgency:urgency client:clientCopy reply:v20];
}

- (BOOL)deleteRemoteState:(id *)state
{
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Starting deleteRemoteState.", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__25;
  v21 = __Block_byref_object_dispose__25;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42___DKXPCKnowledgeStore_deleteRemoteState___block_invoke;
  v16[3] = &unk_1E736A500;
  v16[4] = buf;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42___DKXPCKnowledgeStore_deleteRemoteState___block_invoke_24;
  v11[3] = &unk_1E736A8F8;
  v11[4] = buf;
  v11[5] = &v12;
  [v7 deleteRemoteState:v11];
  if (state)
  {
    v8 = *(v18 + 5);
    if (v8)
    {
      *state = v8;
    }
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);
  return v9;
}

- (id)sourceDeviceIdentityFromObject:(id)object error:(id *)error
{
  source = [object source];
  syncDeviceID = [source syncDeviceID];

  return syncDeviceID;
}

- (id)sourceDeviceIdentityWithError:(id *)error
{
  v5 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_INFO, "Starting sourceDeviceIdentityWithError.", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__25;
  v23 = __Block_byref_object_dispose__25;
  v24 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54___DKXPCKnowledgeStore_sourceDeviceIdentityWithError___block_invoke;
  v18[3] = &unk_1E736A500;
  v18[4] = buf;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__25;
  v16 = __Block_byref_object_dispose__25;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54___DKXPCKnowledgeStore_sourceDeviceIdentityWithError___block_invoke_25;
  v11[3] = &unk_1E736A970;
  v11[4] = buf;
  v11[5] = &v12;
  [v7 sourceDeviceIdentityWithReply:v11];
  if (error)
  {
    v8 = *(v20 + 5);
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);

  return v9;
}

- (id)deviceUUID
{
  v3 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v3, OS_LOG_TYPE_INFO, "Starting deviceUUID.", buf, 2u);
  }

  v4 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_77];
  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__25;
  v12 = __Block_byref_object_dispose__25;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34___DKXPCKnowledgeStore_deviceUUID__block_invoke_26;
  v7[3] = &unk_1E736A998;
  v7[4] = buf;
  [v4 deviceUUIDWithReply:v7];
  v5 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v5;
}

- (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type
{
  v7 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "Starting disableSyncPolicy.", v9, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_28];
  [v8 disableSyncPolicyForFeature:feature transportType:type withReply:&__block_literal_global_31];
}

- (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type
{
  v7 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "Starting isSyncPolicyDisabled.", buf, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_33_1];
  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69___DKXPCKnowledgeStore_isSyncPolicyDisabledForFeature_transportType___block_invoke_34;
  v11[3] = &unk_1E736A9E0;
  v11[4] = buf;
  [v8 isSyncPolicyDisabledForFeature:feature transportType:type withReply:v11];
  v9 = v13[24];
  _Block_object_dispose(buf, 8);

  return v9;
}

- (BOOL)confirmConnectionWithError:(id *)error
{
  v5 = _os_activity_create(&dword_191750000, "CoreDuet: confirmConnectionWithError", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Starting confirmConnectionWithError.", &state, 2u);
  }

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__25;
  v21 = __Block_byref_object_dispose__25;
  v22 = 0;
  connection = [(_DKXPCKnowledgeStore *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51___DKXPCKnowledgeStore_confirmConnectionWithError___block_invoke;
  v17[3] = &unk_1E736A500;
  v17[4] = &state;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51___DKXPCKnowledgeStore_confirmConnectionWithError___block_invoke_35;
  v12[3] = &unk_1E736A8F8;
  v12[4] = &v13;
  v12[5] = &state;
  [v8 confirmDatabaseConnectionWithReply:v12];
  if (error)
  {
    v9 = *(state.opaque[1] + 40);
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&state, 8);
  return v10;
}

- (void)executeQuery:(NSObject *)a1 synchronous:error:responseQueue:withCompletion:.cold.1(NSObject *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = +[_DKQuery queryNotExecutableError];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, a1, OS_LOG_TYPE_ERROR, "Completed executeQuery with success=0. Error: %@.", v3, 0xCu);
}

@end