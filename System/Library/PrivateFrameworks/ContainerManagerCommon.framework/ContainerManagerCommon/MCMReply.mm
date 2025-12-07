@interface MCMReply
- (MCMReply)initWithXpcReply:(id)reply slowWorkloop:(id)workloop fastWorkloop:(id)fastWorkloop resultPromise:(id)promise;
- (void)_send;
- (void)dispatchSyncToFastWorkloopWithBlock:(id)block;
- (void)encodeResult:(id)result;
- (void)handoffToSlowWorkloopforClientIdentity:(id)identity withBlock:(id)block;
- (void)invalidate;
- (void)send;
@end

@implementation MCMReply

- (void)send
{
  obj = self;
  objc_sync_enter(obj);
  resultPromise = [(MCMReply *)obj resultPromise];
  complete = [resultPromise complete];

  if (complete && !obj->_replySent)
  {
    obj->_replySent = 1;
    objc_sync_exit(obj);

    [(MCMReply *)obj _send];
  }

  else
  {
    objc_sync_exit(obj);
  }
}

- (void)invalidate
{
  self->_replySent = 1;
  xpcReply = self->_xpcReply;
  self->_xpcReply = 0;

  slowWorkloop = self->_slowWorkloop;
  self->_slowWorkloop = 0;

  fastWorkloop = self->_fastWorkloop;
  self->_fastWorkloop = 0;

  resultPromise = self->_resultPromise;
  self->_resultPromise = 0;
}

- (void)_send
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcReply = [(MCMReply *)selfCopy xpcReply];
  resultPromise = [(MCMReply *)selfCopy resultPromise];
  result = [resultPromise result];
  v6 = result;
  if (!result)
  {
    _os_crash();
    __break(1u);
  }

  [result encodeResultOntoReply:xpcReply];
  [(MCMReply *)selfCopy invalidate];

  objc_sync_exit(selfCopy);
  v7 = xpc_dictionary_get_remote_connection(xpcReply);
  xpc_connection_send_message(v7, xpcReply);
  if ([(MCMReply *)selfCopy exitAfterSend])
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "EXITING AFTER REPLYING", v9, 2u);
    }

    xpc_connection_send_barrier(v7, &__block_literal_global_9551);
  }
}

- (void)dispatchSyncToFastWorkloopWithBlock:(id)block
{
  blockCopy = block;
  fastWorkloop = [(MCMReply *)self fastWorkloop];
  dispatch_async_and_wait(fastWorkloop, blockCopy);
}

- (void)encodeResult:(id)result
{
  resultCopy = result;
  xpcReply = [(MCMReply *)self xpcReply];
  [resultCopy encodeResultOntoReply:?];
}

- (void)handoffToSlowWorkloopforClientIdentity:(id)identity withBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_replySent = 1;
  objc_sync_exit(selfCopy);

  xpcReply = [(MCMReply *)selfCopy xpcReply];
  slowWorkloop = [(MCMReply *)selfCopy slowWorkloop];
  v9 = blockCopy;
  xpc_dictionary_handoff_reply();
}

uint64_t __61__MCMReply_handoffToSlowWorkloopforClientIdentity_withBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);

  return [v3 _send];
}

- (MCMReply)initWithXpcReply:(id)reply slowWorkloop:(id)workloop fastWorkloop:(id)fastWorkloop resultPromise:(id)promise
{
  v19 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  workloopCopy = workloop;
  fastWorkloopCopy = fastWorkloop;
  promiseCopy = promise;
  v18.receiver = self;
  v18.super_class = MCMReply;
  v15 = [(MCMReply *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_xpcReply, reply);
    objc_storeStrong(&v16->_slowWorkloop, workloop);
    objc_storeStrong(&v16->_fastWorkloop, fastWorkloop);
    objc_storeStrong(&v16->_resultPromise, promise);
    *&v16->_replySent = 0;
  }

  return v16;
}

@end