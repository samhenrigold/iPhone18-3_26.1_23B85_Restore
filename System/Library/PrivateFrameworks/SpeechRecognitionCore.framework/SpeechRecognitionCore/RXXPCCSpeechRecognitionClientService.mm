@interface RXXPCCSpeechRecognitionClientService
- (RXXPCCSpeechRecognitionClientService)initWithRXXPC:(RXXPC *)c externalServiceClient:(id)client;
- (void)forwardInvocation:(id)invocation;
- (void)legacyClientEventWithMessage:(id)message;
- (void)pong:(int64_t)pong;
- (void)recognizedEventWithLegacyMessage:(id)message result:(id)result;
@end

@implementation RXXPCCSpeechRecognitionClientService

- (RXXPCCSpeechRecognitionClientService)initWithRXXPC:(RXXPC *)c externalServiceClient:(id)client
{
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = RXXPCCSpeechRecognitionClientService;
  v7 = [(RXXPCCSpeechRecognitionClientService *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_xpc = c;
    objc_storeWeak(&v7->_externalServiceClient, clientCopy);
  }

  return v8;
}

- (void)pong:(int64_t)pong
{
  WeakRetained = objc_loadWeakRetained(&self->_externalServiceClient);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_externalServiceClient);
    [v7 pong:pong];
  }
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy selector];
  WeakRetained = objc_loadWeakRetained(&self->_externalServiceClient);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_externalServiceClient);
    [invocationCopy invokeWithTarget:v6];
  }
}

- (void)legacyClientEventWithMessage:(id)message
{
  v11 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  v6 = v5;
  if (v5)
  {
    v7 = xpc_unwrap_uint64s_in_object(v5);
    RXXPC::ClientEvent(self->_xpc, v7);
  }

  else
  {
    v8 = RXOSLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = messageCopy;
      _os_log_impl(&dword_26B583000, v8, OS_LOG_TYPE_ERROR, "failed to handle client event for %@\n", &v9, 0xCu);
    }
  }
}

- (void)recognizedEventWithLegacyMessage:(id)message result:(id)result
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  resultCopy = result;
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = v7;
  if (v7)
  {
    v9 = xpc_unwrap_uint64s_in_object(v7);
    v10 = RXXPC::Queue(v9);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__RXXPCCSpeechRecognitionClientService_recognizedEventWithLegacyMessage_result___block_invoke;
    v12[3] = &unk_279CF6B38;
    v13 = v9;
    v14 = resultCopy;
    v11 = v9;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = RXOSLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = messageCopy;
      _os_log_impl(&dword_26B583000, v11, OS_LOG_TYPE_ERROR, "failed to handle recognition event for %@\n", buf, 0xCu);
    }
  }
}

void __80__RXXPCCSpeechRecognitionClientService_recognizedEventWithLegacyMessage_result___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_get_value(*(a1 + 32), kRDKeyRecognizer);
  RXRecognizer::Recognized(v2, *(a1 + 40));
}

@end