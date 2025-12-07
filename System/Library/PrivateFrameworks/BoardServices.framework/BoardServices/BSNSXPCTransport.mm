@interface BSNSXPCTransport
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (id)_auditToken;
- (id)newExternalMessageSessionWithReason:(id)reason;
- (id)sendMessageWithReplySync:(id)sync;
- (int)auditSessionIdentifier;
- (int)processIdentifier;
- (unsigned)effectiveGroupIdentifier;
- (unsigned)effectiveUserIdentifier;
- (void)_newAcquiredAssertionWithAttributes:(void *)attributes;
- (void)_newMessageSessionWithReason:(void *)reason;
- (void)_sendMessage:(int)message asNotification:;
- (void)_setSendingQueue:(id)queue;
- (void)activate;
- (void)cancel;
- (void)dealloc;
- (void)resume;
- (void)sendBarrierBlock:(id)block;
- (void)sendMessage:(id)message;
- (void)sendMessageWithReply:(id)reply onQueue:(id)queue replyHandler:(id)handler;
- (void)sendNotification:(id)notification;
- (void)setErrorHandler:(id)handler;
- (void)setEventObserver:(id)observer;
- (void)setMessageHandler:(id)handler;
- (void)setPerMessageAssertionAttributes:(id)attributes;
- (void)setRefCountedAssertionAttributes:(id)attributes;
- (void)setSendingQueue:(id)queue;
- (void)setTargetQueue:(id)queue;
- (void)suspend;
@end

@implementation BSNSXPCTransport

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  _auditToken = [(BSNSXPCTransport *)self _auditToken];
  v6 = _auditToken;
  if (_auditToken)
  {
    [_auditToken realToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (id)_auditToken
{
  if (self)
  {
    auditToken = [(BSXPCServiceConnection *)*(self + 8) auditToken];
    v2 = auditToken;
    if (auditToken)
    {
      invalidToken = auditToken;
    }

    else
    {
      invalidToken = [MEMORY[0x1E698E620] invalidToken];
    }

    v4 = invalidToken;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resume
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_activateOnResume)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"resume is not supported on a wrapped BSServiceConnection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BSNSXPCTransport.m";
      v17 = 1024;
      v18 = 720;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82DCA8);
  }

  [(BSNSXPCTransport *)self activate];
}

- (void)activate
{
  v21 = *MEMORY[0x1E69E9840];
  [(_BSNSXPCCallbackTracking *)self->_callbackTracking captureConnection];
  [(BSXPCServiceConnection *)self->_connection activateNowOrWhenReady:?];
  if (!self->_queue)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"setTargetQueue not called before activate"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BSNSXPCTransport.m";
      v17 = 1024;
      v18 = 696;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82E16CLL);
  }
}

- (void)cancel
{
  [(_BSNSXPCCallbackTracking *)self->_callbackTracking captureConnection];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_cancelEnqueued = 1;
  sendingQueue = self->_sendingQueue;
  if (sendingQueue)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __26__BSNSXPCTransport_cancel__block_invoke;
    v10[3] = &unk_1E75205D0;
    v10[4] = self;
    [(BSNSXPCSending *)sendingQueue performAsync:v10];
  }

  else
  {
    self->_lock_cancelProcessed = 1;
    [(BSXPCServiceConnection *)self->_connection invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  if ([(_BSNSXPCCallbackTracking *)self->_callbackTracking isInvalidationStillPending])
  {
    activatedConnectionQueue = [(BSXPCServiceConnection *)self->_connection activatedConnectionQueue];
    callbackTracking = self->_callbackTracking;
    if (activatedConnectionQueue)
    {
      v6 = callbackTracking;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __26__BSNSXPCTransport_cancel__block_invoke_2;
      v8[3] = &unk_1E75205D0;
      v9 = v6;
      v7 = v6;
      [activatedConnectionQueue performAsync:v8];
    }

    else
    {
      [(_BSNSXPCCallbackTracking *)callbackTracking sendError:0 isOnQueue:?];
    }
  }
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_refCounter invalidate];
  [(RBSAssertion *)self->_refCountedAssertion invalidate];
  v3.receiver = self;
  v3.super_class = BSNSXPCTransport;
  [(BSNSXPCTransport *)&v3 dealloc];
}

- (int)processIdentifier
{
  _auditToken = [(BSNSXPCTransport *)self _auditToken];
  v3 = [_auditToken pid];

  return v3;
}

void __92__BSNSXPCTransport__initWithConnection_configurator_assertionProvider_outWrappedConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__BSNSXPCTransport__initWithConnection_configurator_assertionProvider_outWrappedConnection___block_invoke_2;
  v7[3] = &unk_1E7520378;
  v10 = *(a1 + 48);
  v8 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v4;
  if (a2)
  {
    v5 = [v7 copy];
    v6 = *(a2 + 80);
    *(a2 + 80) = v5;

    v4 = v9;
  }
}

void __92__BSNSXPCTransport__initWithConnection_configurator_assertionProvider_outWrappedConnection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v5 = a3;
  v6 = [v5 domain];
  v7 = BSEqualObjects();

  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v5 domain];
    v11 = [v9 stringWithFormat:@"unexpected error domain: %@", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = *(a1 + 32);
      *buf = 138544642;
      v19 = v12;
      v20 = 2114;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      v24 = 2114;
      v25 = @"BSNSXPCTransport.m";
      v26 = 1024;
      v27 = 278;
      v28 = 2114;
      v29 = v11;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v11;
    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A838A2CLL);
  }

  if ([v5 code] == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(_BSNSXPCCallbackTracking *)*(a1 + 40) sendError:v8 isOnQueue:1];
}

- (void)_newAcquiredAssertionWithAttributes:(void *)attributes
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(sel__newAcquiredAssertionWithAttributes_);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      attributesCopy2 = attributes;
      *v43 = 2114;
      *&v43[2] = @"BSNSXPCTransport.m";
      v44 = 1024;
      v45 = 303;
      v46 = 2114;
      v47 = v22;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A838ED4);
  }

  v4 = attributes[1];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = *(v4 + 184);
  if (!v5)
  {
LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  v6 = attributes[6];
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, attributes[2], v5, v3);
  }

  else
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v8 = _MergedGlobals_4;
    v40 = _MergedGlobals_4;
    if (!_MergedGlobals_4)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getRBSAssertionClass_block_invoke_1;
      attributesCopy2 = &unk_1E75200F8;
      *v43 = &v37;
      __getRBSAssertionClass_block_invoke_1(buf);
      v8 = v38[3];
    }

    v9 = v8;
    _Block_object_dispose(&v37, 8);
    v7 = [[v8 alloc] initWithExplanation:attributes[2] target:v5 attributes:v3];
  }

  v10 = v7;
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed to create assertion : attributes=%@", attributes[2], v3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(sel__newAcquiredAssertionWithAttributes_);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      attributesCopy2 = attributes;
      *v43 = 2114;
      *&v43[2] = @"BSNSXPCTransport.m";
      v44 = 1024;
      v45 = 314;
      v46 = 2114;
      v47 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A838FD4);
  }

  v36 = 0;
  v11 = [v7 acquireWithError:&v36];
  v12 = v36;
  v13 = v12;
  if (v11)
  {
    goto LABEL_21;
  }

  domain = [v12 domain];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v15 = qword_1ED4A7BC8;
  v40 = qword_1ED4A7BC8;
  if (!qword_1ED4A7BC8)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getRBSAssertionErrorDomainSymbolLoc_block_invoke_0;
    attributesCopy2 = &unk_1E75200F8;
    *v43 = &v37;
    v16 = RunningBoardServicesLibrary_1();
    v17 = dlsym(v16, "RBSAssertionErrorDomain");
    *(*(*v43 + 8) + 24) = v17;
    qword_1ED4A7BC8 = *(*(*v43 + 8) + 24);
    v15 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getRBSAssertionErrorDomain(void)"];
    [currentHandler handleFailureInFunction:v33 file:@"BSNSXPCTransport.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
LABEL_29:
    v5 = 0;
    goto LABEL_30;
  }

  v18 = *v15;
  if ([domain isEqualToString:v18])
  {
    v19 = [v13 code] == 4;

    if (v19)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __56__BSNSXPCTransport__newAcquiredAssertionWithAttributes___block_invoke;
      v35[3] = &unk_1E75205F8;
      v35[4] = attributes;
      v35[5] = v13;
      v35[6] = v3;
      v35[7] = sel__newAcquiredAssertionWithAttributes_;
      __56__BSNSXPCTransport__newAcquiredAssertionWithAttributes___block_invoke(v35);
    }
  }

  else
  {
  }

  v20 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = attributes[2];
    *buf = 138543874;
    *&buf[4] = v21;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2114;
    attributesCopy2 = v3;
    _os_log_error_impl(&dword_19A821000, v20, OS_LOG_TYPE_ERROR, "%{public}@ failed to acquire assertion : error=%{public}@ attributes=%{public}@", buf, 0x20u);
  }

LABEL_21:
LABEL_31:

  return v10;
}

void __56__BSNSXPCTransport__newAcquiredAssertionWithAttributes___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed to acquire assertion : error=%@  attributes=%@", *(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 48)];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    *buf = 138544642;
    v9 = v3;
    v10 = 2114;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2114;
    v15 = @"BSNSXPCTransport.m";
    v16 = 1024;
    v17 = 320;
    v18 = 2114;
    v19 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_newMessageSessionWithReason:(void *)reason
{
  v3 = a2;
  if (reason)
  {
    v4 = reason[3];
    if (v4)
    {
      v5 = [(BSNSXPCTransport *)reason _newAcquiredAssertionWithAttributes:v4];
    }

    else
    {
      v5 = 0;
    }

    v6 = reason[4];
    if (v6)
    {
      v7 = [v6 acquireForReason:v3];
      v8 = v7;
      v9 = v5 != 0;
      if (v5 && v7)
      {
        v10 = objc_alloc(MEMORY[0x1E698E778]);
        v11 = reason[2];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __49__BSNSXPCTransport__newMessageSessionWithReason___block_invoke;
        v14[3] = &unk_1E75203C8;
        v15 = v5;
        v8 = v8;
        v16 = v8;
        reason = [v10 initWithIdentifier:v11 forReason:@"combiner" invalidationBlock:v14];

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      v8 = 0;
      v9 = v5 != 0;
    }

    if (v9)
    {
      v12 = v5;
    }

    else
    {
      v12 = v8;
    }

    reason = v12;
    goto LABEL_14;
  }

LABEL_15:

  return reason;
}

uint64_t __49__BSNSXPCTransport__newMessageSessionWithReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)_sendMessage:(int)message asNotification:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = *(self + 8);
    if (v6 && [*(v6 + 192) isNonLaunching] && (*(self + 84) & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send to non-launching services without specifying launching attributes"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel__sendMessage_asNotification_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v25 = v15;
        v26 = 2114;
        v27 = v17;
        v28 = 2048;
        selfCopy = self;
        v30 = 2114;
        v31 = @"BSNSXPCTransport.m";
        v32 = 1024;
        v33 = 355;
        v34 = 2114;
        v35 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A8397C4);
    }

    os_unfair_lock_lock((self + 80));
    v7 = *(self + 88);
    os_unfair_lock_unlock((self + 80));
    if ((v7 & 1) == 0)
    {
      v8 = [(BSXPCServiceConnection *)*(self + 8) createMessageWithOptions:?];
      [v8 encodeXPCObject:v5 forKey:@"BSNSXPCMessage"];
      if (message)
      {
        v9 = @"per-notification";
      }

      else
      {
        v9 = @"per-async-message";
      }

      v10 = [(BSNSXPCTransport *)self _newMessageSessionWithReason:v9];
      if (v10)
      {
        [v8 encodeBool:1 forKey:@"BSNSXPCReplyIsInternal"];
        newValue[0] = MEMORY[0x1E69E9820];
        newValue[1] = 3221225472;
        newValue[2] = __48__BSNSXPCTransport__sendMessage_asNotification___block_invoke;
        newValue[3] = &unk_1E75203F0;
        v11 = v10;
        v23 = v11;
        if (v8)
        {
          objc_setProperty_nonatomic_copy(v8, v12, newValue, 80);
          v11 = v23;
        }
      }

      else if (message && v8)
      {
        v8[61] = 1;
      }

      v13 = *(self + 56);
      if (v13)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __48__BSNSXPCTransport__sendMessage_asNotification___block_invoke_2;
        v19[3] = &unk_1E75205A8;
        v19[4] = self;
        v20 = v8;
        v21 = v10;
        [v13 performAsync:v19];
      }

      else
      {
        [v8 send];
      }
    }
  }
}

uint64_t __48__BSNSXPCTransport__sendMessage_asNotification___block_invoke_2(void *a1)
{
  os_unfair_lock_lock((a1[4] + 80));
  v2 = a1[4];
  v3 = *(v2 + 89);
  os_unfair_lock_unlock((v2 + 80));
  v4 = a1[5];
  if (v3)
  {
    [v4 invalidate];
    v5 = a1[6];

    return [v5 invalidate];
  }

  else
  {

    return [v4 send];
  }
}

- (void)setPerMessageAssertionAttributes:(id)attributes
{
  attributesCopy = attributes;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([attributesCopy count])
  {
    connection = self->_connection;
    if (connection && [(BSXPCServiceConnectionContext *)connection->_context isNonLaunching])
    {
      v5 = [getRBSConstraintsAttributeClass() attributeWithConstraints:7];
      v6 = [attributesCopy arrayByAddingObject:v5];
      perMessageAttributes = self->_perMessageAttributes;
      self->_perMessageAttributes = v6;
    }

    else
    {
      v8 = [attributesCopy copy];
      v5 = self->_perMessageAttributes;
      self->_perMessageAttributes = v8;
    }
  }

  else
  {
    v5 = self->_perMessageAttributes;
    self->_perMessageAttributes = 0;
  }
}

- (void)setRefCountedAssertionAttributes:(id)attributes
{
  attributesCopy = attributes;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([attributesCopy count])
  {
    connection = self->_connection;
    if (connection && [(BSXPCServiceConnectionContext *)connection->_context isNonLaunching])
    {
      v6 = [getRBSConstraintsAttributeClass() attributeWithConstraints:7];
      v7 = [attributesCopy arrayByAddingObject:v6];
    }

    else
    {
      v6 = [getRBSConstraintsAttributeClass() attributeWithConstraints:4];
      v7 = [attributesCopy arrayByAddingObject:v6];
    }

    v9 = v7;

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E698E658];
    explanation = self->_explanation;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__BSNSXPCTransport_setRefCountedAssertionAttributes___block_invoke;
    v14[3] = &unk_1E7520418;
    objc_copyWeak(&v16, &location);
    attributesCopy = v9;
    v15 = attributesCopy;
    v12 = [v10 assertionWithIdentifier:explanation stateDidChangeHandler:v14];
    refCounter = self->_refCounter;
    self->_refCounter = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(BSCompoundAssertion *)self->_refCounter invalidate];
    v8 = self->_refCounter;
    self->_refCounter = 0;
  }
}

void __53__BSNSXPCTransport_setRefCountedAssertionAttributes___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [v8 isActive];
    v5 = WeakRetained[5];
    if (v4)
    {
      if (v5)
      {
        goto LABEL_8;
      }

      v6 = [(BSNSXPCTransport *)WeakRetained _newAcquiredAssertionWithAttributes:?];
    }

    else
    {
      if (!v5)
      {
        goto LABEL_8;
      }

      [v5 invalidate];
      v6 = 0;
    }

    v7 = WeakRetained[5];
    WeakRetained[5] = v6;
  }

LABEL_8:
}

- (void)setSendingQueue:(id)queue
{
  v36 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (!queueCopy)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"sendingQueue", v7];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BSNSXPCTransport.m";
      v32 = 1024;
      v33 = 459;
      v34 = 2114;
      v35 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A839DFCLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    classForCoder = [queueCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v15 = NSStringFromClass(classForCoder);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v13 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"sendingQueue", v15, v17];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v25 = v19;
      v26 = 2114;
      v27 = v21;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BSNSXPCTransport.m";
      v32 = 1024;
      v33 = 459;
      v34 = 2114;
      v35 = v18;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A839F44);
  }

  [(BSNSXPCTransport *)self _setSendingQueue:queueCopy];
}

- (void)setEventObserver:(id)observer
{
  v25 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  os_unfair_lock_assert_owner(&self->_lock);
  callbackTracking = self->_callbackTracking;
  v6 = observerCopy;
  obj = v6;
  if (callbackTracking)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(sel_setEventObserver_);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v14 = v8;
        v15 = 2114;
        v16 = v10;
        v17 = 2048;
        v18 = callbackTracking;
        v19 = 2114;
        v20 = @"BSNSXPCTransport.m";
        v21 = 1024;
        v22 = 161;
        v23 = 2114;
        v24 = v7;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v11 = v7;
      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83A19CLL);
    }

    os_unfair_lock_lock(&callbackTracking->_lock);
    if (!callbackTracking->_lock_invalidated)
    {
      objc_storeWeak(&callbackTracking->_lock_observer, obj);
    }

    os_unfair_lock_unlock(&callbackTracking->_lock);
    v6 = obj;
  }
}

- (void)_setSendingQueue:(id)queue
{
  v25 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (!queueCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"sendingQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BSNSXPCTransport.m";
      v21 = 1024;
      v22 = 471;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83A360);
  }

  v6 = queueCopy;
  os_unfair_lock_assert_owner(&self->_lock);
  sendingQueue = self->_sendingQueue;
  self->_sendingQueue = v6;
}

- (id)newExternalMessageSessionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [(BSNSXPCTransport *)self _newMessageSessionWithReason:reasonCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E698E778]) initWithIdentifier:self->_explanation forReason:reasonCopy invalidationBlock:&__block_literal_global_0];
  }

  v8 = v7;

  return v8;
}

- (void)setMessageHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSNSXPCTransport setMessageHandler:]"];
      *buf = 138544130;
      v13 = v8;
      v14 = 2114;
      v15 = @"BSNSXPCTransport.m";
      v16 = 1024;
      v17 = 490;
      v18 = 2114;
      v19 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v9 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83A5D0);
  }

  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__BSNSXPCTransport_setMessageHandler___block_invoke;
  v10[3] = &unk_1E7520488;
  v10[4] = self;
  v6 = handlerCopy;
  v11 = v6;
  [(BSXPCServiceConnection *)connection configure:v10];
}

void __38__BSNSXPCTransport_setMessageHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__BSNSXPCTransport_setMessageHandler___block_invoke_2;
  v7[3] = &unk_1E7520460;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  if (a2)
  {
    v5 = [v7 copy];
    v6 = *(a2 + 72);
    *(a2 + 72) = v5;

    v4 = v8;
  }
}

void __38__BSNSXPCTransport_setMessageHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 createReply];
  v6 = [v4 decodeBoolForKey:@"BSNSXPCReplyIsInternal"];
  if ([(_BSNSXPCCallbackTracking *)*(*(a1 + 32) + 72) isInvalidationStillPending])
  {
    v7 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"BSNSXPCMessage"];
    if (v7)
    {
      v8 = *(a1 + 40);
      if (v6)
      {
        (*(v8 + 16))(v8, v7, 0);
        [v5 send];
      }

      else
      {
        v12 = [v5 message];
        (*(v8 + 16))(v8, v7, v12);
      }
    }

    else
    {
      v11 = BSServiceXPCErrorsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(a1 + 32) + 16);
        v14 = [v4 message];
        v15 = 138543618;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        _os_log_error_impl(&dword_19A821000, v11, OS_LOG_TYPE_ERROR, "%{public}@ failed to decode underlying message : message=%@", &v15, 0x16u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = BSServiceXPCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(a1 + 32) + 16);
      v10 = [v4 message];
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ dropping message received after invalidation callback : message=%@", &v15, 0x16u);
    }
  }
}

- (void)setErrorHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BSNSXPCTransport setErrorHandler:]"];
      *buf = 138544130;
      v13 = v8;
      v14 = 2114;
      v15 = @"BSNSXPCTransport.m";
      v16 = 1024;
      v17 = 516;
      v18 = 2114;
      v19 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    v9 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83AACCLL);
  }

  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__BSNSXPCTransport_setErrorHandler___block_invoke;
  v10[3] = &unk_1E7520488;
  v10[4] = self;
  v6 = handlerCopy;
  v11 = v6;
  [(BSXPCServiceConnection *)connection configure:v10];
}

void __36__BSNSXPCTransport_setErrorHandler___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 72);
  v2 = *(a1 + 40);
  if (v1)
  {
    v10 = v2;
    if (!v2)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel_setErrorHandler_);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138544642;
        v12 = v6;
        v13 = 2114;
        v14 = v8;
        v15 = 2048;
        v16 = v1;
        v17 = 2114;
        v18 = @"BSNSXPCTransport.m";
        v19 = 1024;
        v20 = 153;
        v21 = 2114;
        v22 = v5;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v9 = v5;
      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83ACB8);
    }

    os_unfair_lock_lock((v1 + 40));
    if ((*(v1 + 44) & 1) == 0)
    {
      v3 = [v10 copy];
      v4 = *(v1 + 24);
      *(v1 + 24) = v3;
    }

    os_unfair_lock_unlock((v1 + 40));
    v2 = v10;
  }
}

- (void)sendMessage:(id)message
{
  v28 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v6 = messageCopy;
  xdict = messageCopy;
  if (!messageCopy || (v7 = MEMORY[0x19A908710](messageCopy), v6 = xdict, v7 != MEMORY[0x1E69E9E80]))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xMessage was invalid : %@", v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      v20 = 2048;
      selfCopy = self;
      v22 = 2114;
      v23 = @"BSNSXPCTransport.m";
      v24 = 1024;
      v25 = 524;
      v26 = 2114;
      v27 = v10;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83AECCLL);
  }

  v8 = xpc_dictionary_get_remote_connection(xdict);
  v9 = v8;
  if (v8)
  {
    xpc_connection_send_message(v8, xdict);
  }

  else
  {
    [(BSNSXPCTransport *)self _sendMessage:0 asNotification:?];
  }
}

- (id)sendMessageWithReplySync:(id)sync
{
  v51 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  v6 = syncCopy;
  if (!syncCopy || MEMORY[0x19A908710](syncCopy) != MEMORY[0x1E69E9E80])
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xMessage was invalid : %@", v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      selfCopy3 = self;
      LOWORD(v48) = 2114;
      *(&v48 + 2) = @"BSNSXPCTransport.m";
      WORD5(v48) = 1024;
      HIDWORD(v48) = 535;
      v49 = 2114;
      v50 = v27;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83B2CCLL);
  }

  v7 = xpc_dictionary_get_remote_connection(v6);

  if (v7)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send a reply via sendMessageWithReplySync:"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      *&buf[4] = v33;
      *&buf[12] = 2114;
      *&buf[14] = v35;
      *&buf[22] = 2048;
      selfCopy3 = self;
      LOWORD(v48) = 2114;
      *(&v48 + 2) = @"BSNSXPCTransport.m";
      WORD5(v48) = 1024;
      HIDWORD(v48) = 536;
      v49 = 2114;
      v50 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83B3C4);
  }

  connection = self->_connection;
  if (connection && [(BSXPCServiceConnectionContext *)connection->_context isNonLaunching]&& (self->_messageOptions & 1) == 0)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send to non-launching services without specifying launching attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v40;
      *&buf[22] = 2048;
      selfCopy3 = self;
      LOWORD(v48) = 2114;
      *(&v48 + 2) = @"BSNSXPCTransport.m";
      WORD5(v48) = 1024;
      HIDWORD(v48) = 537;
      v49 = 2114;
      v50 = v37;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83B4BCLL);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_cancelEnqueued = self->_lock_cancelEnqueued;
  os_unfair_lock_unlock(&self->_lock);
  if (!lock_cancelEnqueued)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    selfCopy3 = __Block_byref_object_copy__0;
    *&v48 = __Block_byref_object_dispose__0;
    *(&v48 + 1) = 0;
    v13 = [(BSXPCServiceConnection *)self->_connection createMessageWithOptions:?];
    [v13 encodeXPCObject:v6 forKey:@"BSNSXPCMessage"];
    v14 = [(BSNSXPCTransport *)self _newMessageSessionWithReason:?];
    sendingQueue = self->_sendingQueue;
    if (sendingQueue)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __45__BSNSXPCTransport_sendMessageWithReplySync___block_invoke_207;
      v43[3] = &unk_1E75204B0;
      v43[4] = self;
      v44 = v13;
      v45 = buf;
      [(BSNSXPCSending *)sendingQueue performAsyncAndWait:v43];

LABEL_19:
      [v14 invalidate];
      v24 = *(*&buf[8] + 40);
      if (v24)
      {
        empty = v24;
      }

      else
      {
        empty = xpc_dictionary_create_empty();
      }

      v11 = empty;

      _Block_object_dispose(buf, 8);
      goto LABEL_23;
    }

    v42 = 0;
    v16 = [v13 sendSynchronouslyWithError:&v42];
    v17 = v42;
    v18 = v17;
    if (v16)
    {
      message = [v16 message];
      v20 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = message;
    }

    else
    {
      if (!v17)
      {
LABEL_18:

        goto LABEL_19;
      }

      v21 = *&buf[8];
      v22 = MEMORY[0x1E69E9E20];
      v23 = MEMORY[0x1E69E9E20];
      v20 = *(v21 + 40);
      *(v21 + 40) = v22;
    }

    goto LABEL_18;
  }

  v10 = self->_sendingQueue;
  if (v10)
  {
    [(BSNSXPCSending *)v10 performAsyncAndWait:&__block_literal_global_203];
  }

  v11 = MEMORY[0x1E69E9E20];
  v12 = MEMORY[0x1E69E9E20];
LABEL_23:

  return v11;
}

void __45__BSNSXPCTransport_sendMessageWithReplySync___block_invoke_207(void *a1)
{
  os_unfair_lock_lock((a1[4] + 80));
  v2 = a1[4];
  v3 = *(v2 + 89);
  os_unfair_lock_unlock((v2 + 80));
  if (v3)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), MEMORY[0x1E69E9E20]);
    return;
  }

  v4 = a1[5];
  v14 = 0;
  v5 = [v4 sendSynchronouslyWithError:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 message];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
LABEL_7:

    goto LABEL_8;
  }

  if (v6)
  {
    v11 = *(a1[6] + 8);
    v12 = MEMORY[0x1E69E9E20];
    v13 = MEMORY[0x1E69E9E20];
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)sendMessageWithReply:(id)reply onQueue:(id)queue replyHandler:(id)handler
{
  v78 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  queueCopy = queue;
  handlerCopy = handler;
  if (!replyCopy || MEMORY[0x19A908710](replyCopy) != MEMORY[0x1E69E9E80])
  {
    replyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"xMessage was invalid : %@", replyCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v67 = v24;
      v68 = 2114;
      v69 = v26;
      v70 = 2048;
      selfCopy6 = self;
      v72 = 2114;
      v73 = @"BSNSXPCTransport.m";
      v74 = 1024;
      v75 = 596;
      v76 = 2114;
      v77 = replyCopy;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = replyCopy;
    [replyCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BB10);
  }

  v12 = xpc_dictionary_get_remote_connection(replyCopy);

  if (v12)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send a reply via sendMessageWithReply:onQueue:replyHandler:"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v67 = v29;
      v68 = 2114;
      v69 = v31;
      v70 = 2048;
      selfCopy6 = self;
      v72 = 2114;
      v73 = @"BSNSXPCTransport.m";
      v74 = 1024;
      v75 = 597;
      v76 = 2114;
      v77 = v28;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BC08);
  }

  if (!queueCopy)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544642;
      v67 = v34;
      v68 = 2114;
      v69 = v36;
      v70 = 2048;
      selfCopy6 = self;
      v72 = 2114;
      v73 = @"BSNSXPCTransport.m";
      v74 = 1024;
      v75 = 598;
      v76 = 2114;
      v77 = v33;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v37 = v33;
    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BD0CLL);
  }

  if (!handlerCopy)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v67 = v39;
      v68 = 2114;
      v69 = v41;
      v70 = 2048;
      selfCopy6 = self;
      v72 = 2114;
      v73 = @"BSNSXPCTransport.m";
      v74 = 1024;
      v75 = 599;
      v76 = 2114;
      v77 = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BE10);
  }

  connection = self->_connection;
  if (connection && [(BSXPCServiceConnectionContext *)connection->_context isNonLaunching]&& (self->_messageOptions & 1) == 0)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send to non-launching services without specifying launching attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(a2);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138544642;
      v67 = v49;
      v68 = 2114;
      v69 = v51;
      v70 = 2048;
      selfCopy6 = self;
      v72 = 2114;
      v73 = @"BSNSXPCTransport.m";
      v74 = 1024;
      v75 = 600;
      v76 = 2114;
      v77 = v48;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v52 = v48;
    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83C008);
  }

  queue = [(BSServiceDispatchQueue *)self->_queue queue];

  if (queue != queueCopy)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue does not match configured queue : param=%@ config=%@", queueCopy, self->_queue];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(a2);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 138544642;
      v67 = v44;
      v68 = 2114;
      v69 = v46;
      v70 = 2048;
      selfCopy6 = self;
      v72 = 2114;
      v73 = @"BSNSXPCTransport.m";
      v74 = 1024;
      v75 = 602;
      v76 = 2114;
      v77 = v43;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v47 = v43;
    [v43 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83BF10);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_cancelEnqueued = self->_lock_cancelEnqueued;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_cancelEnqueued)
  {
    sendingQueue = self->_sendingQueue;
    if (sendingQueue)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke;
      v63[3] = &unk_1E7520648;
      v64 = queueCopy;
      v65 = handlerCopy;
      [(BSNSXPCSending *)sendingQueue performAsync:v63];

      v17 = v64;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_3;
      block[3] = &unk_1E7520620;
      v62 = handlerCopy;
      dispatch_async(queueCopy, block);
      v17 = v62;
    }
  }

  else
  {
    v17 = [(BSXPCServiceConnection *)self->_connection createMessageWithOptions:?];
    [v17 encodeXPCObject:replyCopy forKey:@"BSNSXPCMessage"];
    v18 = [(BSNSXPCTransport *)self _newMessageSessionWithReason:?];
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_4;
    newValue[3] = &unk_1E7520670;
    v19 = v18;
    v59 = v19;
    v21 = handlerCopy;
    v60 = v21;
    if (v17)
    {
      objc_setProperty_nonatomic_copy(v17, v20, newValue, 80);
    }

    v22 = self->_sendingQueue;
    if (v22)
    {
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_5;
      v53[3] = &unk_1E75204D8;
      v53[4] = self;
      v54 = v17;
      v55 = v19;
      v56 = queueCopy;
      v57 = v21;
      [(BSNSXPCSending *)v22 performAsync:v53];
    }

    else
    {
      [v17 send];
    }
  }
}

void __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_2;
  block[3] = &unk_1E7520620;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  [*(a1 + 32) invalidate];
  if (v6)
  {
    a3 = [v6 message];
  }

  else if (a3)
  {
    a3 = MEMORY[0x1E69E9E20];
    v5 = MEMORY[0x1E69E9E20];
  }

  (*(*(a1 + 40) + 16))();
}

void __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_5(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 80));
  v2 = *(a1 + 32);
  v3 = *(v2 + 89);
  os_unfair_lock_unlock((v2 + 80));
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4 invalidate];
    [*(a1 + 48) invalidate];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__BSNSXPCTransport_sendMessageWithReply_onQueue_replyHandler___block_invoke_6;
    block[3] = &unk_1E7520620;
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    dispatch_async(v5, block);
  }

  else
  {

    [v4 send];
  }
}

- (void)sendNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v6 = notificationCopy;
  xdict = notificationCopy;
  if (!notificationCopy || (v7 = MEMORY[0x19A908710](notificationCopy), v6 = xdict, v7 != MEMORY[0x1E69E9E80]))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xMessage was invalid : %@", v6];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2114;
      v27 = @"BSNSXPCTransport.m";
      v28 = 1024;
      v29 = 661;
      v30 = 2114;
      v31 = v9;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83C598);
  }

  v8 = xpc_dictionary_get_remote_connection(xdict);

  if (v8)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot send a reply via sendNotification:"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2114;
      v27 = @"BSNSXPCTransport.m";
      v28 = 1024;
      v29 = 662;
      v30 = 2114;
      v31 = v14;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v18 = v14;
    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83C690);
  }

  [(BSNSXPCTransport *)self _sendMessage:1 asNotification:?];
}

- (void)sendBarrierBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  sendingQueue = self->_sendingQueue;
  if (sendingQueue)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__BSNSXPCTransport_sendBarrierBlock___block_invoke;
    v7[3] = &unk_1E7520648;
    v7[4] = self;
    v8 = blockCopy;
    [(BSNSXPCSending *)sendingQueue performAsync:v7];
  }

  else
  {
    [(BSXPCServiceConnection *)self->_connection sendBarrierBlock:blockCopy];
  }
}

- (void)setTargetQueue:(id)queue
{
  v31 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (!queueCopy)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"targetQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v20 = v11;
      v21 = 2114;
      v22 = v13;
      v23 = 2048;
      selfCopy = self;
      v25 = 2114;
      v26 = @"BSNSXPCTransport.m";
      v27 = 1024;
      v28 = 677;
      v29 = 2114;
      v30 = v10;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83CA4CLL);
  }

  v6 = [BSServiceDispatchQueue _queueOfDispatchQueue:queueCopy];
  if (!v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__BSNSXPCTransport_setTargetQueue___block_invoke;
    block[3] = &unk_1E75205D0;
    v7 = queueCopy;
    v18 = v7;
    dispatch_async(v7, block);
    v6 = [BSServiceDispatchQueue _queueWithDispatchQueue:v7];
  }

  connection = self->_connection;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__BSNSXPCTransport_setTargetQueue___block_invoke_2;
  v15[3] = &unk_1E7520500;
  v15[4] = self;
  v16 = v6;
  v9 = v6;
  [(BSXPCServiceConnection *)connection configure:v15];
}

void __35__BSNSXPCTransport_setTargetQueue___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v4 = a2;
  [(BSXPCServiceConnectionEventHandler *)v4 setQueue:?];
}

- (void)suspend
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_faultOnSuspend)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suspend is not supported on a wrapped BSServiceConnection"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v12 = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BSNSXPCTransport.m";
      v20 = 1024;
      v21 = 712;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83CCF0);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_faultedOnSuspend)
  {
    v3 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    self->_lock_faultedOnSuspend = 1;
    v3 = OS_LOG_TYPE_FAULT;
  }

  os_unfair_lock_unlock(&self->_lock);
  v4 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v4, v3))
  {
    explanation = self->_explanation;
    v12 = 138543362;
    v13 = explanation;
    _os_log_impl(&dword_19A821000, v4, v3, "%{public}@ cannot suspend this type of transport", &v12, 0xCu);
  }
}

void __26__BSNSXPCTransport_cancel__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 80));
  *(*(a1 + 32) + 89) = 1;
  [*(*(a1 + 32) + 8) invalidate];
  v2 = (*(a1 + 32) + 80);

  os_unfair_lock_unlock(v2);
}

- (int)auditSessionIdentifier
{
  _auditToken = [(BSNSXPCTransport *)self _auditToken];
  asid = [_auditToken asid];

  return asid;
}

- (unsigned)effectiveUserIdentifier
{
  _auditToken = [(BSNSXPCTransport *)self _auditToken];
  euid = [_auditToken euid];

  return euid;
}

- (unsigned)effectiveGroupIdentifier
{
  _auditToken = [(BSNSXPCTransport *)self _auditToken];
  egid = [_auditToken egid];

  return egid;
}

@end