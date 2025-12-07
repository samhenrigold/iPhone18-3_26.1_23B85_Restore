@interface AFPineBoardSystemStateObserver
+ (id)defaultObserver;
- (AFPineBoardSystemStateObserver)initWithQueue:(id)queue;
- (void)_beginGroup;
- (void)_endGroup;
- (void)_handlePineBoardStateChange:(int64_t)change;
- (void)_startObservingPineBoardSystemState;
- (void)addListener:(id)listener;
- (void)removeListener:(id)listener;
@end

@implementation AFPineBoardSystemStateObserver

- (void)_endGroup
{
  p_pineBoardStateGroup = &self->_pineBoardStateGroup;
  pineBoardStateGroup = self->_pineBoardStateGroup;
  self->_pineBoardStateGroupDepth = p_pineBoardStateGroup[1] - 1;
  dispatch_group_leave(pineBoardStateGroup);
  if (!self->_pineBoardStateGroupDepth)
  {
    v5 = self->_pineBoardStateGroup;
    self->_pineBoardStateGroup = 0;
  }
}

- (void)_beginGroup
{
  pineBoardStateGroup = self->_pineBoardStateGroup;
  if (!pineBoardStateGroup)
  {
    v4 = dispatch_group_create();
    v5 = self->_pineBoardStateGroup;
    self->_pineBoardStateGroup = v4;

    pineBoardStateGroup = self->_pineBoardStateGroup;
  }

  dispatch_group_enter(pineBoardStateGroup);
  ++self->_pineBoardStateGroupDepth;
}

- (void)_handlePineBoardStateChange:(int64_t)change
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  pineBoardSystemState = self->_pineBoardSystemState;
  if (pineBoardSystemState != change)
  {
    self->_pineBoardSystemState = change;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_listeners;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 pineBoardSystemStateObserver:self pineBoardStateDidChangeFrom:pineBoardSystemState to:{self->_pineBoardSystemState, v12}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_startObservingPineBoardSystemState
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[AFPineBoardSystemStateObserver _startObservingPineBoardSystemState]";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s ", &v3, 0xCu);
    v2 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[AFPineBoardSystemStateObserver _startObservingPineBoardSystemState]";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s PineBoard is not available", &v3, 0xCu);
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__AFPineBoardSystemStateObserver_removeListener___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  v5 = listenerCopy;
  if (listenerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__AFPineBoardSystemStateObserver_addListener___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = listenerCopy;
    dispatch_async(queue, v7);
  }
}

- (AFPineBoardSystemStateObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = AFPineBoardSystemStateObserver;
  v6 = [(AFPineBoardSystemStateObserver *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v7->_pineBoardStateGroupDepth = 0;
    v8 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    listeners = v7->_listeners;
    v7->_listeners = v8;

    [(AFPineBoardSystemStateObserver *)v7 _beginGroup];
    queue = v7->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AFPineBoardSystemStateObserver_initWithQueue___block_invoke;
    block[3] = &unk_1E73497C8;
    v13 = v7;
    dispatch_async(queue, block);
  }

  return v7;
}

uint64_t __48__AFPineBoardSystemStateObserver_initWithQueue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startObservingPineBoardSystemState];
  v2 = *(a1 + 32);

  return [v2 _endGroup];
}

+ (id)defaultObserver
{
  if (defaultObserver_onceToken != -1)
  {
    dispatch_once(&defaultObserver_onceToken, &__block_literal_global_21131);
  }

  v3 = defaultObserver_defaultObserver;

  return v3;
}

void __49__AFPineBoardSystemStateObserver_defaultObserver__block_invoke()
{
  v0 = [AFPineBoardSystemStateObserver alloc];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v5 = dispatch_queue_create("AFPineBoardSystemStateObserver.defaultObserver", v2);
  v3 = [(AFPineBoardSystemStateObserver *)v0 initWithQueue:v5];
  v4 = defaultObserver_defaultObserver;
  defaultObserver_defaultObserver = v3;
}

@end