@interface CoreTelephonyClientRemoteAsyncProxy
- (CoreTelephonyClientRemoteAsyncProxy)initWithXPCObject:(id)object userQueue:(queue)queue errorHandler:(id)handler;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CoreTelephonyClientRemoteAsyncProxy

- (CoreTelephonyClientRemoteAsyncProxy)initWithXPCObject:(id)object userQueue:(queue)queue errorHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3321888768;
  v18[2] = __80__CoreTelephonyClientRemoteAsyncProxy_initWithXPCObject_userQueue_errorHandler___block_invoke;
  v18[3] = &unk_1EF012F68;
  v11 = *queue.fObj.fObj;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = handlerCopy;
  v19 = v12;
  v13 = [objectCopy remoteObjectProxyWithErrorHandler:v18];
  target = self->_target;
  self->_target = v13;

  if (object)
  {
    dispatch_release(object);
  }

  objc_autoreleasePoolPop(v10);
  v15 = *queue.fObj.fObj;
  *queue.fObj.fObj = 0;
  fObj = self->_userQueue.fObj.fObj;
  self->_userQueue.fObj.fObj = v15;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  return self;
}

void __80__CoreTelephonyClientRemoteAsyncProxy_initWithXPCObject_userQueue_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = CTLogClient(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __80__CoreTelephonyClientRemoteAsyncProxy_initWithXPCObject_userQueue_errorHandler___block_invoke_cold_1(v3, v5);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__CoreTelephonyClientRemoteAsyncProxy_initWithXPCObject_userQueue_errorHandler___block_invoke_1;
  v9[3] = &unk_1E6A459B0;
  v6 = *(a1 + 32);
  v10 = v3;
  v11 = v6;
  v7 = *(a1 + 40);
  v8 = v3;
  dispatch_async(v7, v9);
}

- (void)forwardInvocation:(id)invocation
{
  v20 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  v8 = numberOfArguments;
  if (numberOfArguments < 3)
  {
    goto LABEL_7;
  }

  v9 = 0x7FFFFFFFFFFFFFFDLL;
  v10 = 2;
  while (1)
  {
    numberOfArguments = [methodSignature getArgumentTypeAtIndex:v10];
    if (*numberOfArguments == 64 && numberOfArguments[1] == 63 && !numberOfArguments[2])
    {
      break;
    }

    ++v10;
    --v9;
    if (v8 == v10)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
LABEL_7:
    v11 = CTLogClient(numberOfArguments, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = NSStringFromSelector([invocationCopy selector]);
      [(CoreTelephonyClientRemoteAsyncProxy *)v12 forwardInvocation:buf, v11];
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  aBlock = 0;
  [invocationCopy getArgument:&aBlock atIndex:v10];
  _Block_signature(aBlock);
  v13 = [aBlock copy];
  fObj = self->_userQueue.fObj.fObj;
  if (fObj)
  {
    dispatch_retain(self->_userQueue.fObj.fObj);
  }

  v16 = MEMORY[0x1E69E9820];
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  v15 = v13;
  v17 = __NSMakeSpecialForwardingCaptureBlock();
  [invocationCopy setArgument:&v17 atIndex:{v10, v16, 3321888768, __57__CoreTelephonyClientRemoteAsyncProxy_forwardInvocation___block_invoke, &unk_1EF012FA0}];
  [invocationCopy invokeWithTarget:self->_target];

  if (fObj)
  {
    dispatch_release(fObj);
    dispatch_release(fObj);
  }
}

void __57__CoreTelephonyClientRemoteAsyncProxy_forwardInvocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 retainArguments];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CoreTelephonyClientRemoteAsyncProxy_forwardInvocation___block_invoke_2;
  v6[3] = &unk_1E6A46298;
  v7 = v3;
  v8 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

@end