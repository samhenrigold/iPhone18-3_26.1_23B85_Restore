@interface BSXPCServiceConnectionMessage
+ (id)messageWithXPCConnection:(void *)connection targetQueue:(void *)queue handshake:(int)handshake activationGeneration:(void *)generation delegate:;
- (BOOL)_sendWithMode:(uint64_t)mode;
- (BOOL)expectsReply;
- (BSXPCServiceConnectionMessage)initWithMessage:(id)message;
- (char)connection;
- (id)_initWithXPCConnection:(void *)connection targetQueue:(void *)queue handshake:(int)handshake activationGeneration:(void *)generation delegate:;
- (id)_subMessages;
- (id)createReply;
- (id)messageID;
- (id)selectorName;
- (id)sendSynchronouslyWithError:(id *)error;
- (void)childIdentifier;
- (void)childIdentifierIsRemotelyDefined;
- (void)invalidate;
- (void)setChildIdentifier:(void *)result;
- (void)setChildIdentifierIsRemotelyDefined:(void *)result;
- (void)setMessageID:(void *)d;
- (void)setReplyQueue:(uint64_t)queue;
- (void)setSelectorName:(void *)name;
@end

@implementation BSXPCServiceConnectionMessage

- (id)messageID
{
  if (self)
  {
    self = [self decodeStringForKey:@"bsxpc"];
    v1 = vars8;
  }

  return self;
}

- (void)childIdentifier
{
  if (result)
  {
    return [result decodeUInt64ForKey:@"bsxpc_CID"];
  }

  return result;
}

- (void)childIdentifierIsRemotelyDefined
{
  if (result)
  {
    return [result decodeBoolForKey:@"bsxpc_CIDr"];
  }

  return result;
}

- (id)_subMessages
{
  if (self && [self containsValueForKey:@"bsxpc_BATCH"])
  {
    v2 = [self decodeXPCObjectOfType:MEMORY[0x1E69E9E50] forKey:@"bsxpc_BATCH"];
    if (v2)
    {
      array = [MEMORY[0x1E695DF70] array];
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __45__BSXPCServiceConnectionMessage__subMessages__block_invoke;
      applier[3] = &unk_1E7521210;
      v4 = array;
      v7 = v4;
      xpc_array_apply(v2, applier);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)selectorName
{
  if (self)
  {
    self = [self decodeStringForKey:@"bsxpc_SEL"];
    v1 = vars8;
  }

  return self;
}

- (void)invalidate
{
  v3 = *MEMORY[0x1E698E7C0];
  v4 = *(&self->super.super.isa + v3);
  *(&self->super.super.isa + v3) = 0;

  completion = self->_completion;
  self->_completion = 0;

  v6 = *MEMORY[0x1E698E7C8];
  v7 = *(&self->super.super.isa + v6);
  *(&self->super.super.isa + v6) = 0;

  handshake = self->_handshake;
  self->_handshake = 0;

  delegate = self->_delegate;
  self->_delegate = 0;
}

- (BOOL)expectsReply
{
  v2 = *(&self->super.super.isa + *MEMORY[0x1E698E7C0]);
  if (v2)
  {
    LOBYTE(v2) = xpc_dictionary_expects_reply();
  }

  return v2;
}

- (id)createReply
{
  if ([(BSXPCServiceConnectionMessage *)self expectsReply])
  {
    v3 = [BSXPCServiceConnectionMessageReply alloc];
    v4 = [(BSXPCServiceConnectionMessageReply *)v3 initWithMessage:*(&self->super.super.isa + *MEMORY[0x1E698E7C0])];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (char)connection
{
  if (self)
  {
    self = *&self[*MEMORY[0x1E698E7C8]];
    v1 = vars8;
  }

  return self;
}

uint64_t __45__BSXPCServiceConnectionMessage__subMessages__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [[BSXPCServiceConnectionMessage alloc] initWithMessage:v4];
  [v5 addObject:v6];

  return 1;
}

- (BSXPCServiceConnectionMessage)initWithMessage:(id)message
{
  v4.receiver = self;
  v4.super_class = BSXPCServiceConnectionMessage;
  result = [(BSXPCCoder *)&v4 initWithMessage:message];
  if (result)
  {
    result->_sendFlag = 0;
  }

  return result;
}

- (id)_initWithXPCConnection:(void *)connection targetQueue:(void *)queue handshake:(int)handshake activationGeneration:(void *)generation delegate:
{
  v12 = a2;
  connectionCopy = connection;
  queueCopy = queue;
  generationCopy = generation;
  if (self)
  {
    v16 = [self initWithMessage:0];
    self = v16;
    if (v16)
    {
      objc_storeStrong((v16 + *MEMORY[0x1E698E7C8]), a2);
      objc_storeStrong(self + 9, connection);
      objc_storeStrong(self + 5, queue);
      *(self + 16) = handshake;
      objc_storeStrong(self + 6, generation);
    }
  }

  return self;
}

+ (id)messageWithXPCConnection:(void *)connection targetQueue:(void *)queue handshake:(int)handshake activationGeneration:(void *)generation delegate:
{
  v10 = a2;
  connectionCopy = connection;
  queueCopy = queue;
  generationCopy = generation;
  v14 = objc_alloc(objc_opt_self());
  v15 = [(BSXPCServiceConnectionMessage *)v14 _initWithXPCConnection:v10 targetQueue:connectionCopy handshake:queueCopy activationGeneration:handshake delegate:generationCopy];

  return v15;
}

- (BOOL)_sendWithMode:(uint64_t)mode
{
  v56 = *MEMORY[0x1E69E9840];
  if (mode)
  {
    if ((BSAtomicSetFlag() & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can not send the same message twice"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel__sendWithMode_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *handler = 138544642;
        *&handler[4] = v20;
        *&handler[12] = 2114;
        *&handler[14] = v22;
        *&handler[22] = 2048;
        modeCopy5 = mode;
        LOWORD(v53) = 2114;
        *(&v53 + 2) = @"BSXPCServiceConnectionMessage.m";
        WORD5(v53) = 1024;
        HIDWORD(v53) = 145;
        v54 = 2114;
        v55 = v19;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
      }

      v23 = v19;
      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A86FE30);
    }

    if (a2 == 1)
    {
      if (!*(mode + 80))
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only messages with a reply can be sent synchronously"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v25 = NSStringFromSelector(sel__sendWithMode_);
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *handler = 138544642;
          *&handler[4] = v25;
          *&handler[12] = 2114;
          *&handler[14] = v27;
          *&handler[22] = 2048;
          modeCopy5 = mode;
          LOWORD(v53) = 2114;
          *(&v53 + 2) = @"BSXPCServiceConnectionMessage.m";
          WORD5(v53) = 1024;
          HIDWORD(v53) = 146;
          v54 = 2114;
          v55 = v24;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
        }

        v28 = v24;
        [v24 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A86FF28);
      }

      if (*(mode + 60) == 1)
      {
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"only async messages are batchable"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = NSStringFromSelector(sel__sendWithMode_);
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *handler = 138544642;
          *&handler[4] = v30;
          *&handler[12] = 2114;
          *&handler[14] = v32;
          *&handler[22] = 2048;
          modeCopy5 = mode;
          LOWORD(v53) = 2114;
          *(&v53 + 2) = @"BSXPCServiceConnectionMessage.m";
          WORD5(v53) = 1024;
          HIDWORD(v53) = 147;
          v54 = 2114;
          v55 = v29;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
        }

        v33 = v29;
        [v29 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A870020);
      }
    }

    [*(mode + 40) sendIfNecessary];
    v4 = *(mode + 48);
    if (!v4 || [v4 shouldSendMessage:mode])
    {
      createMessage = [mode createMessage];
      v6 = *(mode + 88);
      v7 = MEMORY[0x19A908200](*(mode + 80));
      v8 = *(mode + 48);
      if (v7)
      {
        v9 = *(mode + 64);
        v10 = v47;
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke;
        v47[3] = &unk_1E7521198;
        v45 = &v49;
        v49 = v7;
        v46 = &v48;
        v48 = v8;
        v50 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = MEMORY[0x19A908200](v10);
      v12 = MEMORY[0x1E698E7C8];
      v13 = *(mode + *MEMORY[0x1E698E7C8]);
      if (v13)
      {
        if (!v11)
        {
          if (*(mode + 61) == 1)
          {
            xpc_connection_send_notification();
          }

          else
          {
            xpc_connection_send_message(v13, createMessage);
          }

          goto LABEL_26;
        }

        if (a2 == 1)
        {
          _xpcReplyQueue2 = xpc_connection_send_message_with_reply_sync(v13, createMessage);
          (v11)[2](v11, _xpcReplyQueue2);
LABEL_25:

          goto LABEL_26;
        }

        _xpcReplyQueue = [v6 _xpcReplyQueue];
        _xpcReplyQueue2 = _xpcReplyQueue;
        if (!_xpcReplyQueue)
        {
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must have a connection replyQueue that understands how to schedule replies : %@", v6];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v35 = NSStringFromSelector(sel__actuallySendWithMode_);
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            *handler = 138544642;
            *&handler[4] = v35;
            *&handler[12] = 2114;
            v38 = v37;
            *&handler[14] = v37;
            *&handler[22] = 2048;
            modeCopy5 = mode;
            LOWORD(v53) = 2114;
            *(&v53 + 2) = @"BSXPCServiceConnectionMessage.m";
            WORD5(v53) = 1024;
            HIDWORD(v53) = 193;
            v54 = 2114;
            v55 = v34;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
          }

          v39 = v34;
          [v34 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A87011CLL);
        }

        v16 = *(mode + *v12);
        queue = [_xpcReplyQueue queue];
        *handler = MEMORY[0x1E69E9820];
        *&handler[8] = 3221225472;
        *&handler[16] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_45;
        modeCopy5 = &unk_1E75211E8;
        *&v53 = v6;
        *(&v53 + 1) = v11;
        xpc_connection_send_message_with_reply(v16, createMessage, queue, handler);

LABEL_24:
        goto LABEL_25;
      }

      if (v11)
      {
        if (a2 != 1)
        {
          _xpcReplyQueue2 = [v6 _xpcReplyQueue];
          if (!_xpcReplyQueue2)
          {
            v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must have a connection replyQueue that understands how to schedule replies : %@", v6];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v41 = NSStringFromSelector(sel__actuallySendWithMode_);
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *handler = 138544642;
              *&handler[4] = v41;
              *&handler[12] = 2114;
              *&handler[14] = v43;
              *&handler[22] = 2048;
              modeCopy5 = mode;
              LOWORD(v53) = 2114;
              *(&v53 + 2) = @"BSXPCServiceConnectionMessage.m";
              WORD5(v53) = 1024;
              HIDWORD(v53) = 207;
              v54 = 2114;
              v55 = v40;
              _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", handler, 0x3Au);
            }

            v44 = v40;
            [v40 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x19A870218);
          }

          *handler = MEMORY[0x1E69E9820];
          *&handler[8] = 3221225472;
          *&handler[16] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_47;
          modeCopy5 = &unk_1E7520648;
          *&v53 = v6;
          *(&v53 + 1) = v11;
          [_xpcReplyQueue2 performAsync:handler];
          goto LABEL_24;
        }

        v11[2](v11, MEMORY[0x1E69E9E20]);
      }

LABEL_26:
      [mode invalidate];

      if (v7)
      {
      }
    }
  }

  return mode != 0;
}

- (void)setMessageID:(void *)d
{
  v3 = a2;
  if (d)
  {
    if (v3)
    {
      [d encodeObject:v3 forKey:@"bsxpc"];
    }

    else
    {
      [d _removeValueForKey:@"bsxpc"];
    }
  }
}

- (void)setChildIdentifier:(void *)result
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (!a2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"childIdentifier > 0"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v4 = NSStringFromSelector(sel_setChildIdentifier_);
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        *buf = 138544642;
        v9 = v4;
        v10 = 2114;
        v11 = v6;
        v12 = 2048;
        v13 = v2;
        v14 = 2114;
        v15 = @"BSXPCServiceConnectionMessage.m";
        v16 = 1024;
        v17 = 117;
        v18 = 2114;
        v19 = v3;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v7 = v3;
      [v3 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A870558);
    }

    return [result encodeUInt64:a2 forKey:@"bsxpc_CID"];
  }

  return result;
}

- (void)setChildIdentifierIsRemotelyDefined:(void *)result
{
  if (result)
  {
    return [result encodeBool:a2 forKey:@"bsxpc_CIDr"];
  }

  return result;
}

- (void)setSelectorName:(void *)name
{
  v3 = a2;
  if (name)
  {
    if (v3)
    {
      [name encodeObject:v3 forKey:@"bsxpc_SEL"];
    }

    else
    {
      [name _removeValueForKey:@"bsxpc_SEL"];
    }
  }
}

void __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7 && (v3 = MEMORY[0x19A908710](), v4 = MEMORY[0x1E69E9E98], v7, v7, v3 == v4))
  {
    v6 = *(a1 + 40);
    v5 = BSServiceConnectionErrorCreate(3uLL, 0, @"XPC error received on message reply handler");
    (*(v6 + 16))(v6, 0, v5);
  }

  else
  {
    v5 = [[BSXPCServiceConnectionMessage alloc] initWithMessage:v7];
    [*(a1 + 32) updateAuditTokenFromReplyMessage:v5 fromActivationGeneration:*(a1 + 48)];
    (*(*(a1 + 40) + 16))();
  }
}

void __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_2;
  v7[3] = &unk_1E75211C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _xpcReplyQueue_performReply:v7];
}

void __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_47(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__BSXPCServiceConnectionMessage__actuallySendWithMode___block_invoke_2_48;
  v2[3] = &unk_1E7520620;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _xpcReplyQueue_performReply:v2];
}

- (id)sendSynchronouslyWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__BSXPCServiceConnectionMessage_sendSynchronouslyWithError___block_invoke;
  v9[3] = &unk_1E7521238;
  v9[4] = &v10;
  v9[5] = &v16;
  v5 = MEMORY[0x19A908200](v9, a2);
  completion = self->_completion;
  self->_completion = v5;

  [(BSXPCServiceConnectionMessage *)self sendSynchronously];
  if (error)
  {
    *error = v17[5];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __60__BSXPCServiceConnectionMessage_sendSynchronouslyWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)setReplyQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 88), a2);
  }
}

@end