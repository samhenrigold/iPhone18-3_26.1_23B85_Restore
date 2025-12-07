@interface HSSocketListener
- (HSSocketListener)initWithSocket:(FileDescriptor *)socket queue:(id)queue clientHandler:(id)handler;
- (id).cxx_construct;
- (void)_handleNewClient;
- (void)close;
- (void)dealloc;
@end

@implementation HSSocketListener

- (HSSocketListener)initWithSocket:(FileDescriptor *)socket queue:(id)queue clientHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if ((socket->_fd & 0x80000000) == 0)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HSSocketListener.mm" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HSSocketListener.mm" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"socket"}];

  if (!queueCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = +[NSAssertionHandler currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"HSSocketListener.mm" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"clientHandler"}];

LABEL_4:
  v20.receiver = self;
  v20.super_class = HSSocketListener;
  v12 = [(HSSocketListener *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 1, queue);
    v14 = objc_retainBlock(handlerCopy);
    v15 = *(v13 + 2);
    *(v13 + 2) = v14;

    std::mutex::lock((v13 + 24));
    operator new();
  }

  return 0;
}

void __55__HSSocketListener_initWithSocket_queue_clientHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNewClient];
}

void __55__HSSocketListener_initWithSocket_queue_clientHandler___block_invoke_28(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 56);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

- (void)dealloc
{
  [(HSSocketListener *)self close];
  v3.receiver = self;
  v3.super_class = HSSocketListener;
  [(HSSocketListener *)&v3 dealloc];
}

- (void)close
{
  std::mutex::lock((self + 24));
  if (*(self + 11))
  {
    dispatch_source_cancel(*(self + 13));
    v3 = *(self + 13);
    *(self + 13) = 0;

    v4 = *(self + 12);
    *(self + 11) = 0;
    *(self + 12) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::mutex::unlock((self + 24));
}

- (void)_handleNewClient
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (id).cxx_construct
{
  *(self + 3) = 850045863;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  return self;
}

- (void)initWithSocket:queue:clientHandler:.cold.1()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)initWithSocket:queue:clientHandler:.cold.2()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

@end