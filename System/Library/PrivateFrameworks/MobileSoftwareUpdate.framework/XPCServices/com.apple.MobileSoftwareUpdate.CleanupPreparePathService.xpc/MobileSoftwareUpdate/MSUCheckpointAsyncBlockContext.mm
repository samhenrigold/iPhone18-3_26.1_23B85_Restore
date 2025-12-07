@interface MSUCheckpointAsyncBlockContext
- (BOOL)waitUntilTime:(unint64_t)time;
- (MSUCheckpointAsyncBlockContext)initWithQueue:(id)queue block:(id)block;
- (void)cancel;
- (void)runForCheckpoint:(void *)checkpoint;
- (void)runSynchronousForCheckpoint:(void *)checkpoint;
- (void)setAwaitDescription:(void *)description;
- (void)setStepDescription:(void *)description;
@end

@implementation MSUCheckpointAsyncBlockContext

- (MSUCheckpointAsyncBlockContext)initWithQueue:(id)queue block:(id)block
{
  v13.receiver = self;
  v13.super_class = MSUCheckpointAsyncBlockContext;
  v6 = [(MSUCheckpointAsyncContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    if (queue)
    {
      [(MSUCheckpointAsyncBlockContext *)v6 setWorkQueue:queue];
    }

    else
    {
      v8 = qos_class_self();
      v9 = dispatch_queue_attr_make_with_qos_class(0, v8, 0);
      v10 = dispatch_queue_create(0, v9);
      [(MSUCheckpointAsyncBlockContext *)v7 setWorkQueue:v10];
      dispatch_release(v10);
    }
  }

  [(MSUCheckpointAsyncBlockContext *)v7 setIsCanceled:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3254779904;
  v12[2] = __54__MSUCheckpointAsyncBlockContext_initWithQueue_block___block_invoke;
  v12[3] = &__block_descriptor_48_e8_32o40b_e5_v8__0l;
  v12[4] = v7;
  v12[5] = block;
  [(MSUCheckpointAsyncBlockContext *)v7 setWorkBlock:dispatch_block_create(0, v12)];
  return v7;
}

void __54__MSUCheckpointAsyncBlockContext_initWithQueue_block___block_invoke(uint64_t a1)
{
  step_desc = checkpoint_closure_context_get_step_desc([*(a1 + 32) checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][Start] Checkpoint %s start running.\n", *(step_desc + 8));
  v3 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v3, kCheckpointAsyncStepContextKey, [*(a1 + 32) checkpoint_closure_context], 0);
  v4 = 0;
  v5 = 1;
  do
  {
    while (1)
    {
      v13 = 0;
      v12 = 0;
      if (v4)
      {
        v5 = checkpoint_closure_context_handle_simulator_actions([*(a1 + 32) checkpoint_closure_context], 1, &v13, &v12) != 0;
      }

      v6 = *(a1 + 32);
      objc_sync_enter(v6);
      v5 &= [*(a1 + 32) isCanceled] ^ 1;
      objc_sync_exit(v6);
      if (v5)
      {
        checkpoint_closure_context_set_start_time([*(a1 + 32) checkpoint_closure_context]);
        (*(*(a1 + 40) + 16))();
        checkpoint_closure_context_set_end_time([*(a1 + 32) checkpoint_closure_context]);
        v13 = [*(a1 + 32) result];
        v12 = [*(a1 + 32) error];
      }

      if (checkpoint_closure_context_handle_simulator_actions([*(a1 + 32) checkpoint_closure_context], 0, &v13, &v12))
      {
        v7 = checkpoint_closure_context_handle_simulator_match_name([*(a1 + 32) checkpoint_closure_context]) != 0;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1 + 32);
      objc_sync_enter(v8);
      if (([*(a1 + 32) isCanceled] & 1) == 0)
      {
        [*(a1 + 32) setResult:v13];
        [*(a1 + 32) setError:v12];
      }

      if (!v13)
      {
        goto LABEL_14;
      }

      v9 = [*(a1 + 32) isCanceled];
      if (((v9 | v7) & 1) == 0)
      {
        break;
      }

      LOBYTE(v7) = v9 ^ 1;
LABEL_14:
      objc_sync_exit(v8);
      v4 = 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    should_retry = checkpoint_closure_context_should_retry([*(a1 + 32) checkpoint_closure_context]);
    objc_sync_exit(v8);
    v4 = 1;
  }

  while (should_retry);
LABEL_17:
  v11 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v11, kCheckpointAsyncStepContextKey, 0, 0);
  ramrod_log_msg("[AsyncCP][End] Checkpoint %s finished with result: %d.\n", *(step_desc + 8), [*(a1 + 32) result]);
  if ([*(a1 + 32) result])
  {
    if ([*(a1 + 32) error])
    {
      checkpoint_closure_context_set_encountered_async_error([*(a1 + 32) checkpoint_closure_context], objc_msgSend(*(a1 + 32), "result"), objc_msgSend(*(a1 + 32), "error"));
    }
  }
}

- (void)setStepDescription:(void *)description
{
  if (description)
  {
    v5 = calloc(1uLL, 0x60uLL);
    v7 = *(description + 2);
    v6 = *(description + 3);
    v8 = *(description + 4);
    v5[5] = *(description + 5);
    v9 = *(description + 1);
    *v5 = *description;
    v5[1] = v9;
    v5[3] = v6;
    v5[4] = v8;
    v5[2] = v7;
    *(v5 + 10) = self;
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = self;
  v10.super_class = MSUCheckpointAsyncBlockContext;
  [(MSUCheckpointAsyncContext *)&v10 setStepDescription:v5];
  free(v5);
}

- (void)setAwaitDescription:(void *)description
{
  if (description)
  {
    v5 = calloc(1uLL, 0x60uLL);
    v6 = *(description + 2);
    v7 = *(description + 3);
    v8 = *(description + 4);
    *(v5 + 76) = *(description + 76);
    v9 = *(description + 1);
    *v5 = *description;
    v5[1] = v9;
    v5[3] = v7;
    v5[4] = v8;
    v5[2] = v6;
    *(v5 + 10) = self;
    *(v5 + 23) = -1;
    *(v5 + 88) = 1;
  }

  else
  {
    v5 = 0;
  }

  v10.receiver = self;
  v10.super_class = MSUCheckpointAsyncBlockContext;
  [(MSUCheckpointAsyncContext *)&v10 setAwaitDescription:v5];
  free(v5);
}

- (void)runSynchronousForCheckpoint:(void *)checkpoint
{
  [(MSUCheckpointAsyncContext *)self setCheckpoint_closure_context:checkpoint];
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][DispatchSync] Checkpoint %s dispatched synchronously because async is disabled.\n", *(step_desc + 8));
  workQueue = [(MSUCheckpointAsyncBlockContext *)self workQueue];
  workBlock = [(MSUCheckpointAsyncBlockContext *)self workBlock];

  dispatch_sync(workQueue, workBlock);
}

- (void)runForCheckpoint:(void *)checkpoint
{
  [(MSUCheckpointAsyncContext *)self setCheckpoint_closure_context:checkpoint];
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][DispatchAsync] Checkpoint %s dispatched asynchronously.\n", *(step_desc + 8));
  workQueue = [(MSUCheckpointAsyncBlockContext *)self workQueue];
  workBlock = [(MSUCheckpointAsyncBlockContext *)self workBlock];

  dispatch_async(workQueue, workBlock);
}

- (BOOL)waitUntilTime:(unint64_t)time
{
  step_desc = checkpoint_closure_context_get_step_desc([(MSUCheckpointAsyncContext *)self checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][WaitStart] Start to Wait checkpoint %s.\n", *(step_desc + 8));
  v6 = dispatch_time(0, 1000000000);
  if (v6 >= time)
  {
    v10 = 0;
    v8 = "fail";
  }

  else
  {
    v7 = v6;
    v8 = "success";
    while (dispatch_block_wait([(MSUCheckpointAsyncBlockContext *)self workBlock], v7))
    {
      objc_sync_enter(self);
      isCanceled = [(MSUCheckpointAsyncBlockContext *)self isCanceled];
      objc_sync_exit(self);
      if (isCanceled)
      {
        break;
      }

      v7 = dispatch_time(0, 1000000000);
      if (v7 >= time)
      {
        v10 = 0;
        v8 = "fail";
        goto LABEL_9;
      }
    }

    v10 = 1;
  }

LABEL_9:
  ramrod_log_msg("[AsyncCP][WaitEnd] Wait checkpoint %s %s.\n", *(step_desc + 8), v8);
  return v10;
}

- (void)cancel
{
  objc_sync_enter(self);
  [(MSUCheckpointAsyncBlockContext *)self setIsCanceled:1];
  [(MSUCheckpointAsyncContext *)self setResult:0xFFFFFFFFLL];
  [(MSUCheckpointAsyncContext *)self setError:checkpoint_error_copy_canceled_error()];

  objc_sync_exit(self);
}

@end