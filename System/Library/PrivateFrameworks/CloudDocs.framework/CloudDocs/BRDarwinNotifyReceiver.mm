@interface BRDarwinNotifyReceiver
- (id)initForEventName:(id)name withQueue:(id)queue handler:(id)handler;
- (unint64_t)lastState;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BRDarwinNotifyReceiver

- (id)initForEventName:(id)name withQueue:(id)queue handler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = [nameCopy length];
  if (handlerCopy && queueCopy && v12)
  {
    v44.receiver = self;
    v44.super_class = BRDarwinNotifyReceiver;
    v13 = [(BRDarwinNotifyReceiver *)&v44 init];
    v14 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }

    v13->_token = -1;
    objc_storeStrong(&v13->_eventName, name);
    objc_storeStrong(&v14->_queue, queue);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke;
    v40[3] = &unk_1E7A14B68;
    v15 = v14;
    v41 = v15;
    v33 = nameCopy;
    v16 = nameCopy;
    v42 = v16;
    v43 = handlerCopy;
    v17 = MEMORY[0x1B26FEA90](v40);
    uTF8String = [v16 UTF8String];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke_2;
    v37[3] = &unk_1E7A14B90;
    self = v15;
    selfCopy = self;
    v19 = v17;
    v39 = v19;
    v20 = v37;
    v21 = MEMORY[0x1E69DF068];
    v34 = queueCopy;
    v22 = queueCopy;
    sharedManager = [v21 sharedManager];
    br_currentPersonaID = [sharedManager br_currentPersonaID];

    handler = MEMORY[0x1E69E9820];
    *&v46 = 3221225472;
    *(&v46 + 1) = __br_notify_register_dispatch_block_invoke_0;
    v47 = &unk_1E7A14940;
    v49 = v20;
    v50 = uTF8String;
    v48 = br_currentPersonaID;
    v25 = br_currentPersonaID;
    v26 = notify_register_dispatch(uTF8String, &v14->_token, v22, &handler);

    if (v26)
    {
      v27 = brc_bread_crumbs("[BRDarwinNotifyReceiver initForEventName:withQueue:handler:]", 116);
      v28 = brc_default_log(1, 0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(handler) = 67109378;
        HIDWORD(handler) = v26;
        LOWORD(v46) = 2112;
        *(&v46 + 2) = v27;
        _os_log_impl(&dword_1AE2A9000, v28, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't add observer: error code %d%@", &handler, 0x12u);
      }
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke_22;
      block[3] = &unk_1E7A14BB8;
      v36 = v19;
      dispatch_async(v22, block);
      v27 = v36;
    }

    queueCopy = v34;

    nameCopy = v33;
    if (!v26)
    {
LABEL_15:
      self = v14;
      selfCopy2 = self;
      goto LABEL_16;
    }
  }

  else
  {
    v29 = brc_bread_crumbs("[BRDarwinNotifyReceiver initForEventName:withQueue:handler:]", 88);
    v30 = brc_default_log(0, 0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [BRDarwinNotifySender initForEventName:];
    }
  }

  selfCopy2 = 0;
LABEL_16:

  return selfCopy2;
}

uint64_t __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke(uint64_t a1)
{
  v4 = 0;
  result = brc_notify_get_state(*(*(a1 + 32) + 16), &v4, [*(a1 + 40) UTF8String]);
  if (!result)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    *(*(a1 + 32) + 32) = v4;
    objc_sync_exit(v3);

    return (*(*(a1 + 48) + 16))();
  }

  return result;
}

uint64_t __61__BRDarwinNotifyReceiver_initForEventName_withQueue_handler___block_invoke_2(uint64_t result, int a2)
{
  if (*(*(result + 32) + 16) == a2)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (void)dealloc
{
  [(BRDarwinNotifyReceiver *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRDarwinNotifyReceiver;
  [(BRDarwinNotifyReceiver *)&v3 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__BRDarwinNotifyReceiver_invalidate__block_invoke;
  block[3] = &unk_1E7A14798;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __36__BRDarwinNotifyReceiver_invalidate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(*(a1 + 32) + 16) = -1;
  }

  return result;
}

- (unint64_t)lastState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastState = selfCopy->_lastState;
  objc_sync_exit(selfCopy);

  return lastState;
}

@end