@interface MCMCommandDispatcher
- (Class)_commandClassFromXPCMessage:(id)message context:(id)context error:(id *)error;
- (MCMCommandDispatcher)init;
- (id)_commandFromCommandClass:(Class)class message:(id)message context:(id)context reply:(id)reply error:(id *)error;
- (id)_ifNeededRelayMessage:(id)message context:(id)context;
- (id)_messageFromCommandClass:(Class)class xpcMessage:(id)message context:(id)context error:(id *)error;
- (void)dispatchMessage:(id)message context:(id)context reply:(id)reply;
- (void)registerCommandClass:(Class)class;
@end

@implementation MCMCommandDispatcher

- (id)_ifNeededRelayMessage:(id)message context:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  disposition = [messageCopy disposition];
  if (disposition == 2)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      command = [messageCopy command];
      _os_log_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEFAULT, "Relaying [%llu] to daemon.", &v16, 0xCu);
    }

    v13 = [MCMCommand relayToPrivilegedDaemonMessage:messageCopy context:contextCopy];
  }

  else
  {
    if (disposition != 1)
    {
      v10 = [MCMError alloc];
      v11 = 72;
      goto LABEL_9;
    }

    v8 = containermanager_copy_global_configuration();
    runmode = [v8 runmode];

    if (runmode == 3)
    {
      v10 = [MCMError alloc];
      v11 = 100;
LABEL_9:
      v14 = [(MCMError *)v10 initWithErrorType:v11 category:3];
      v13 = [[MCMResultBase alloc] initWithError:v14];

      goto LABEL_11;
    }

    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (id)_commandFromCommandClass:(Class)class message:(id)message context:(id)context reply:(id)reply error:(id *)error
{
  replyCopy = reply;
  contextCopy = context;
  messageCopy = message;
  v14 = [[(objc_class *)class alloc] initWithMessage:messageCopy context:contextCopy reply:replyCopy];

  if (error && !v14)
  {
    *error = [[MCMError alloc] initWithErrorType:38 category:3];
  }

  return v14;
}

- (id)_messageFromCommandClass:(Class)class xpcMessage:(id)message context:(id)context error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  v19[0] = 1;
  incomingMessageClass = [(objc_class *)class incomingMessageClass];
  if (incomingMessageClass)
  {
    v12 = [incomingMessageClass xpcMessageFromXPCObject:messageCopy context:contextCopy error:v19];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      goto LABEL_9;
    }

    v15 = [MCMError alloc];
    v16 = v19[0];
    v17 = 3;
  }

  else
  {
    v15 = [MCMError alloc];
    v16 = 40;
    v17 = 4;
  }

  v14 = [(MCMError *)v15 initWithErrorType:v16 category:v17];
  if (error)
  {
    v14 = v14;
    v13 = 0;
    *error = v14;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (Class)_commandClassFromXPCMessage:(id)message context:(id)context error:(id *)error
{
  uint64 = xpc_dictionary_get_uint64(message, "Command");
  messageToCommandClassMap = [(MCMCommandDispatcher *)self messageToCommandClassMap];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
  v10 = [messageToCommandClassMap objectForKeyedSubscript:v9];

  if (error && !v10)
  {
    *error = [[MCMError alloc] initWithErrorType:72 category:3];
  }

  return v10;
}

- (void)dispatchMessage:(id)message context:(id)context reply:(id)reply
{
  v23[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  contextCopy = context;
  replyCopy = reply;
  resultPromise = [replyCopy resultPromise];
  v23[0] = 0;
  v12 = [(MCMCommandDispatcher *)self _commandClassFromXPCMessage:messageCopy context:contextCopy error:v23];
  v13 = v23[0];
  v14 = v13;
  if (v12)
  {
    v22 = v13;
    v15 = [(MCMCommandDispatcher *)self _messageFromCommandClass:v12 xpcMessage:messageCopy context:contextCopy error:&v22];
    v16 = v22;

    if (v15)
    {
      v17 = [(MCMCommandDispatcher *)self _ifNeededRelayMessage:v15 context:contextCopy];
      if (!v17)
      {
        v21 = v16;
        v19 = [(MCMCommandDispatcher *)self _commandFromCommandClass:v12 message:v15 context:contextCopy reply:replyCopy error:&v21];
        v14 = v21;

        if (v19)
        {
          if (([(MCMResultBase *)v19 preflightClientAllowed]& 1) == 0)
          {
            v16 = +[MCMError notEntitled];

            v20 = [[MCMResultBase alloc] initWithError:v16];
            [resultPromise completeWithResult:v20];

            goto LABEL_7;
          }

          [(MCMResultBase *)v19 execute];
        }

        else
        {
          v19 = [[MCMResultBase alloc] initWithError:v14];
          [resultPromise completeWithResult:v19];
        }

        goto LABEL_8;
      }

      v18 = v17;
      [resultPromise completeWithResult:v17];
    }

    else
    {
      v15 = [[MCMResultBase alloc] initWithError:v16];
      [resultPromise completeWithResult:v15];
    }

LABEL_7:
    v14 = v16;
    goto LABEL_8;
  }

  v15 = [[MCMResultBase alloc] initWithError:v13];
  [resultPromise completeWithResult:v15];
LABEL_8:
}

- (void)registerCommandClass:(Class)class
{
  messageToCommandClassMap = [(MCMCommandDispatcher *)self messageToCommandClassMap];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[objc_class command](class, "command")}];
  [messageToCommandClassMap setObject:class forKeyedSubscript:v4];
}

- (MCMCommandDispatcher)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMCommandDispatcher;
  v2 = [(MCMCommandDispatcher *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    messageToCommandClassMap = v2->_messageToCommandClassMap;
    v2->_messageToCommandClassMap = dictionary;
  }

  return v2;
}

@end