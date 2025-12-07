@interface BSXPCServiceConnectionEventHandler
- (BSXPCServiceConnectionEventHandler)init;
- (id)remoteTargetWithHandshake:(void *)handshake assertionAttributes:;
- (uint64_t)encodeInitiatingContext:(uint64_t)result;
- (void)_connectionInvalidated:(void *)invalidated;
- (void)connection:(uint64_t)connection handleConnection:;
- (void)connection:(uint64_t)connection handleMessage:;
- (void)connection:(void *)connection handleError:;
- (void)connectionActivated:(void *)activated;
- (void)connectionDisconnected:(uint64_t)disconnected;
- (void)connectionHandleNoMoreChildren:(int)children withGeneration:;
- (void)connectionInitialized:(int)initialized withActivationGeneration:(void *)generation activeXPCConnection:(void *)connection xpcConnectionTargetQueue:;
- (void)connectionInterruptedFromXPCError:(void *)error;
- (void)initWithAssertionTarget:(void *)target;
- (void)setCalloutContext:(uint64_t)context;
- (void)setInitiatingContext:(uint64_t)context;
- (void)setInterfaceTarget:(uint64_t)target;
- (void)setQueue:(uint64_t)queue;
@end

@implementation BSXPCServiceConnectionEventHandler

- (BSXPCServiceConnectionEventHandler)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSXPCServiceConnectionEventHandler"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionEventHandler.m";
    v18 = 1024;
    v19 = 109;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)initWithAssertionTarget:(void *)target
{
  if (!target)
  {
    return 0;
  }

  v7.receiver = target;
  v7.super_class = BSXPCServiceConnectionEventHandler;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if (v3)
  {
    v4 = [a2 copy];
    v5 = v3[1];
    v3[1] = v4;

    *(v3 + 30) = 0;
  }

  return v3;
}

- (void)setCalloutContext:(uint64_t)context
{
  if (context)
  {
    objc_storeStrong((context + 136), a2);
  }
}

- (uint64_t)encodeInitiatingContext:(uint64_t)result
{
  if (result && a2)
  {
    v3 = result;
    v4 = *(result + 168);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E698E7A8]);
      v6 = *(v3 + 168);
      *(v3 + 168) = v5;

      v4 = *(v3 + 168);
    }

    v7 = *(a2 + 16);

    return v7(a2, v4);
  }

  return result;
}

- (void)setInterfaceTarget:(uint64_t)target
{
  if (target)
  {
    objc_storeStrong((target + 48), a2);
  }
}

- (void)setQueue:(uint64_t)queue
{
  if (queue)
  {
    objc_storeStrong((queue + 152), a2);
  }
}

- (id)remoteTargetWithHandshake:(void *)handshake assertionAttributes:
{
  v35 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = [handshake count];
    v7 = v6;
    if (a2 && !v6)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handshake is only supported if there are launching attributes"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel_remoteTargetWithHandshake_assertionAttributes_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v24 = v19;
        v25 = 2114;
        v26 = v21;
        v27 = 2048;
        selfCopy = self;
        v29 = 2114;
        v30 = @"BSXPCServiceConnectionEventHandler.m";
        v31 = 1024;
        v32 = 193;
        v33 = 2114;
        v34 = v18;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A849DC0);
    }

    os_unfair_lock_lock((self + 120));
    if (v7 || (v12 = *(self + 40)) == 0)
    {
      v8 = *(self + 16);
      if (v8)
      {
        v9 = *(v8 + 192);
        isServer = [v9 isServer];
        v11 = *(self + 160);
        if (isServer)
        {
          [v11 client];
        }

        else
        {
          [v11 server];
        }
        v13 = ;

        methods = [v13 methods];
        v15 = [methods count];

        if (v15)
        {
          if (v7)
          {
            handshakeCopy = handshake;
          }

          else
          {
            handshakeCopy = 0;
          }

          v12 = [BSXPCServiceConnectionProxy proxyForConnection:a2 handshake:v13 withProtocol:*(self + 124) activationGeneration:*(self + 24) activeXPCConnection:*(self + 32) xpcConnectionTargetQueue:*(self + 152) replyQueue:*(self + 8) target:handshakeCopy attributes:0 assertionProvider:?];
          if (!v7)
          {
            objc_storeStrong((self + 40), v12);
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    os_unfair_lock_unlock((self + 120));
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)connectionInitialized:(int)initialized withActivationGeneration:(void *)generation activeXPCConnection:(void *)connection xpcConnectionTargetQueue:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!*(self + 152))
    {
      connection = [MEMORY[0x1E696AEC0] stringWithFormat:@"_queue cannot be nil", generation, connection];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(sel_connectionInitialized_withActivationGeneration_activeXPCConnection_xpcConnectionTargetQueue_);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 138544642;
        v16 = v11;
        v17 = 2114;
        v18 = v13;
        v19 = 2048;
        selfCopy = self;
        v21 = 2114;
        v22 = @"BSXPCServiceConnectionEventHandler.m";
        v23 = 1024;
        v24 = 245;
        v25 = 2114;
        v26 = connection;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v15, 0x3Au);
      }

      v14 = connection;
      [connection UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A849FDCLL);
    }

    os_unfair_lock_lock((self + 120));
    objc_storeStrong((self + 16), a2);
    *(self + 124) = initialized;
    objc_storeStrong((self + 24), generation);
    objc_storeStrong((self + 32), connection);

    os_unfair_lock_unlock((self + 120));
  }
}

- (void)connectionDisconnected:(uint64_t)disconnected
{
  if (disconnected)
  {
    os_unfair_lock_lock((disconnected + 120));
    v2 = *(disconnected + 16);
    *(disconnected + 16) = 0;

    v3 = *(disconnected + 24);
    *(disconnected + 24) = 0;

    v4 = *(disconnected + 32);
    *(disconnected + 32) = 0;

    v5 = *(disconnected + 40);
    *(disconnected + 40) = 0;

    os_unfair_lock_unlock((disconnected + 120));
  }
}

- (void)connection:(uint64_t)connection handleConnection:
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = *(self + 152);
    if (!v4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_connection_handleConnection_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = @"BSXPCServiceConnectionEventHandler.m";
        v22 = 1024;
        v23 = 267;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84A280);
    }

    [v4 assertBarrierOnQueue];
    if (*(self + 136))
    {
      v7 = *(self + 136);
    }

    else
    {
      v7 = a2;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__BSXPCServiceConnectionEventHandler_connection_handleConnection___block_invoke;
    v13[3] = &unk_1E75205A8;
    v13[4] = self;
    v13[5] = a2;
    v13[6] = connection;
    BSXPCServiceConnectionExecuteCallOut(a2, v7, v13);
  }
}

void __66__BSXPCServiceConnectionEventHandler_connection_handleConnection___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 56))
  {
    if ([*(a1 + 40) _isClientInvalidated])
    {
      v2 = BSServiceXPCLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        v14 = 138543362;
        v15 = v13;
        _os_log_error_impl(&dword_19A821000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Cancelling incoming connection because the root has already been invalidated", &v14, 0xCu);
      }

      [(BSXPCServiceConnection *)*(a1 + 48) cancel];
      return;
    }

    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(*(a1 + 32) + 56);
    v7 = BSServiceXPCLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      (*(v6 + 16))(v6, v5, v4);
      return;
    }

    if (v5)
    {
      v8 = *(v5 + 192);
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 1);
LABEL_13:
        v11 = v10;
        v14 = 138543362;
        v15 = v11;
        _os_log_impl(&dword_19A821000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connection:handleConnection:", &v14, 0xCu);

        goto LABEL_14;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = 0;
    goto LABEL_13;
  }

  v3 = BSServiceXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 40);
    v14 = 138543362;
    v15 = v12;
    _os_log_error_impl(&dword_19A821000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Invalidating incoming connection because there is no event handler", &v14, 0xCu);
  }

  [*(a1 + 48) invalidate];
}

- (void)connectionHandleNoMoreChildren:(int)children withGeneration:
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = self[19];
    if (!v4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_connectionHandleNoMoreChildren_withGeneration_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v16 = v9;
        v17 = 2114;
        v18 = v11;
        v19 = 2048;
        selfCopy = self;
        v21 = 2114;
        v22 = @"BSXPCServiceConnectionEventHandler.m";
        v23 = 1024;
        v24 = 290;
        v25 = 2114;
        v26 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84A688);
    }

    [v4 assertBarrierOnQueue];
    if (self[8] && ([a2 _isClientInvalidated] & 1) == 0)
    {
      if (self[17])
      {
        v7 = self[17];
      }

      else
      {
        v7 = a2;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __84__BSXPCServiceConnectionEventHandler_connectionHandleNoMoreChildren_withGeneration___block_invoke;
      v13[3] = &unk_1E7520A10;
      v13[4] = a2;
      v13[5] = self;
      childrenCopy = children;
      BSXPCServiceConnectionExecuteCallOut(a2, v7, v13);
    }
  }
}

uint64_t __84__BSXPCServiceConnectionEventHandler_connectionHandleNoMoreChildren_withGeneration___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 64);
  v3 = *(a1 + 48);
  v4 = BSServiceXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      v5 = *(v1 + 192);
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
LABEL_5:
        v8 = v7;
        v10 = 138543618;
        v11 = v8;
        v12 = 1024;
        v13 = v3;
        _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connectionHandleNoMoreChildren: withGeneration=%u", &v10, 0x12u);

        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    goto LABEL_5;
  }

LABEL_6:

  return (*(v2 + 16))(v2, v1, v3);
}

- (void)connection:(uint64_t)connection handleMessage:
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = *(self + 152);
    if (!v4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_connection_handleMessage_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = @"BSXPCServiceConnectionEventHandler.m";
        v22 = 1024;
        v23 = 302;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84A9A8);
    }

    [v4 assertBarrierOnQueue];
    if (*(self + 136))
    {
      v7 = *(self + 136);
    }

    else
    {
      v7 = a2;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke;
    v13[3] = &unk_1E75205F8;
    v13[4] = a2;
    v13[5] = connection;
    v13[6] = self;
    v13[7] = sel_connection_handleMessage_;
    BSXPCServiceConnectionExecuteCallOut(a2, v7, v13);
  }
}

void __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke(uint64_t a1)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[24];
  }

  v3 = v2;
  v56 = v3;
  if (![*(a1 + 32) _isClientInvalidated])
  {
    v52 = [(BSXPCServiceConnectionMessage *)*(a1 + 40) _subMessages];
    v7 = [v52 count];
    if (v7)
    {
      v8 = [*(a1 + 40) createReply];
      v9 = MEMORY[0x1E698E630];
      v10 = [v52 count];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke_30;
      v66[3] = &unk_1E75209A0;
      v11 = v8;
      v67 = v11;
      v68 = v56;
      log = [v9 sentinelWithSignalCount:v10 signalHandler:v66];

      v3 = v56;
    }

    else
    {
      log = 0;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    if (v52)
    {
      v12 = v52;
    }

    else
    {
      v77 = *(a1 + 40);
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    }

    v13 = v12;
    v55 = v7;
    v14 = [v12 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (!v14)
    {
LABEL_66:

      goto LABEL_67;
    }

    v57 = *v63;
    v54 = v13;
LABEL_16:
    v59 = v14;
    v15 = 0;
    while (1)
    {
      if (*v63 != v57)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v62 + 1) + 8 * v15);
      v17 = *(*(a1 + 48) + 72);
      if (!v17)
      {
        v25 = [v3 isServer];
        v26 = *(*(a1 + 48) + 160);
        if (v25)
        {
          [v26 server];
        }

        else
        {
          [v26 client];
        }
        v27 = ;
        v28 = [(BSXPCServiceConnectionMessage *)v16 selectorName];
        v29 = v28;
        if (v28)
        {
          v30 = [v27 methodForSelector:NSSelectorFromString(v28)];
          v31 = v30;
          if (*(*(a1 + 48) + 48) && v30)
          {
            v32 = objc_autoreleasePoolPush();
            if (v55)
            {
              v33 = BSServiceXPCBatchLog();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                if (v3)
                {
                  v46 = v3[1];
                }

                else
                {
                  v46 = 0;
                }

                v47 = v46;
                *buf = 138412546;
                v70 = v47;
                v71 = 2112;
                v72 = v29;
                _os_log_debug_impl(&dword_19A821000, v33, OS_LOG_TYPE_DEBUG, "%@ invoking batched method %@", buf, 0x16u);
              }
            }

            v34 = *(*(a1 + 48) + 48);
            v35 = *(a1 + 32);
            v60[0] = MEMORY[0x1E69E9820];
            v60[1] = 3221225472;
            v60[2] = __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke_33;
            v60[3] = &unk_1E75205D0;
            v61 = log;
            [BSXPCServiceConnectionProxy invokeMethod:v31 onTarget:v34 withMessage:v16 forConnection:v35 completion:v60];

            v3 = v56;
            v13 = v54;
            objc_autoreleasePoolPop(v32);
          }

          else
          {
            if (v30)
            {
              v37 = BSServiceXPCErrorsLog();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                if (v3)
                {
                  v38 = v3[1];
                }

                else
                {
                  v38 = 0;
                }

                v39 = v38;
                v40 = [v27 name];
                *buf = 138543874;
                v70 = v39;
                v71 = 2112;
                v72 = v29;
                v73 = 2112;
                v74 = v40;
                _os_log_error_impl(&dword_19A821000, v37, OS_LOG_TYPE_ERROR, "%{public}@ Dropping message. No interfaceTarget for @selector(%@) in @protocol(%@).", buf, 0x20u);
              }
            }

            else
            {
              v41 = [v27 methods];
              v37 = [v41 bs_map:&__block_literal_global_5];

              v42 = BSServiceXPCErrorsLog();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                if (v3)
                {
                  v48 = v3[1];
                }

                else
                {
                  v48 = 0;
                }

                v53 = v48;
                v49 = [v27 name];
                v50 = [v37 componentsJoinedByString:@"\n"];
                *buf = 138544130;
                v70 = v53;
                v71 = 2112;
                v72 = v29;
                v73 = 2112;
                v74 = v49;
                v75 = 2112;
                v51 = v50;
                v76 = v50;
                _os_log_error_impl(&dword_19A821000, v42, OS_LOG_TYPE_ERROR, "%{public}@ Dropping message. No method found for @selector(%@) in @protocol(%@)\n{\n%@\n}.", buf, 0x2Au);
              }
            }

            [log signal];
          }
        }

        else
        {
          v36 = BSServiceXPCErrorsLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            if (v3)
            {
              v43 = v3[1];
            }

            else
            {
              v43 = 0;
            }

            v44 = v43;
            v45 = [v27 name];
            *buf = 138543618;
            v70 = v44;
            v71 = 2112;
            v72 = v45;
            _os_log_error_impl(&dword_19A821000, v36, OS_LOG_TYPE_ERROR, "%{public}@ Dropping message. Missing selectorName on incoming message in protocol(%@).", buf, 0x16u);
          }

          [log signal];
        }

        v24 = v59;
        goto LABEL_48;
      }

      v18 = *(a1 + 32);
      v19 = BSServiceXPCLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

LABEL_25:

      (*(v17 + 16))(v17, v18, v16);
      v24 = v59;
      [log signal];
LABEL_48:
      if (v24 == ++v15)
      {
        v14 = [v13 countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (!v14)
        {
          goto LABEL_66;
        }

        goto LABEL_16;
      }
    }

    if (v18)
    {
      v20 = *(v18 + 192);
      v21 = v20;
      if (v20)
      {
        v22 = *(v20 + 1);
LABEL_24:
        v23 = v22;
        *buf = 138543362;
        v70 = v23;
        _os_log_impl(&dword_19A821000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connection:handleMessage:", buf, 0xCu);

        goto LABEL_25;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
    goto LABEL_24;
  }

  log = BSServiceXPCLog();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    if (v3)
    {
      v4 = v3[1];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = NSStringFromSelector(*(a1 + 56));
    *buf = 138543618;
    v70 = v5;
    v71 = 2080;
    v72 = [v6 UTF8String];
    _os_log_error_impl(&dword_19A821000, log, OS_LOG_TYPE_ERROR, "%{public}@ BLOCKING %s BECAUSE THE CLIENT INVALIDATED THE CONNECTION", buf, 0x16u);
  }

LABEL_67:
}

void __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke_30(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([a2 isComplete])
  {
    [*(a1 + 32) send];
    if ([a2 isFailed])
    {
      v4 = BSServiceXPCBatchLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 40);
        if (v5)
        {
          v5 = v5[1];
        }

        v6 = v5;
        v7 = 138543362;
        v8 = v6;
        _os_log_error_impl(&dword_19A821000, v4, OS_LOG_TYPE_ERROR, "%{public}@ One or more completions for a message batch were not called.", &v7, 0xCu);
      }
    }
  }
}

id __63__BSXPCServiceConnectionEventHandler_connection_handleMessage___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = NSStringFromSelector([a2 selector]);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [a2 name];
    v5 = [@"name:" stringByAppendingString:v6];
  }

  return v5;
}

- (void)connection:(void *)connection handleError:
{
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = self[19];
    if (!v4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_connection_handleError_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v15 = v9;
        v16 = 2114;
        v17 = v11;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = @"BSXPCServiceConnectionEventHandler.m";
        v22 = 1024;
        v23 = 368;
        v24 = 2114;
        v25 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84B6E0);
    }

    [v4 assertBarrierOnQueue];
    if (self[10] && ([(os_unfair_lock_s *)a2 _isClientInvalidated]& 1) == 0)
    {
      if ([connection isBSServiceConnectionError] && objc_msgSend(connection, "code") == 1)
      {
        [(BSXPCServiceConnection *)a2 _makingInterruptCallout];
      }

      if (self[17])
      {
        v7 = self[17];
      }

      else
      {
        v7 = a2;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__BSXPCServiceConnectionEventHandler_connection_handleError___block_invoke;
      v13[3] = &unk_1E75205A8;
      v13[4] = a2;
      v13[5] = connection;
      v13[6] = self;
      BSXPCServiceConnectionExecuteCallOut(a2, v7, v13);
    }
  }
}

uint64_t __61__BSXPCServiceConnectionEventHandler_connection_handleError___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = *(a1[6] + 80);
  v4 = BSServiceXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      v5 = *(v1 + 192);
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 1);
LABEL_5:
        v8 = v7;
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connection:handleError:", &v10, 0xCu);

        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    goto LABEL_5;
  }

LABEL_6:

  return (*(v3 + 16))(v3, v1, v2);
}

- (void)connectionActivated:(void *)activated
{
  v24 = *MEMORY[0x1E69E9840];
  if (activated)
  {
    v3 = activated[19];
    if (!v3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(sel_connectionActivated_);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v13 = v7;
        v14 = 2114;
        v15 = v9;
        v16 = 2048;
        activatedCopy = activated;
        v18 = 2114;
        v19 = @"BSXPCServiceConnectionEventHandler.m";
        v20 = 1024;
        v21 = 383;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84B9FCLL);
    }

    [v3 assertBarrierOnQueue];
    if (activated[11] && ([a2 _isClientInvalidated] & 1) == 0)
    {
      if (activated[17])
      {
        v5 = activated[17];
      }

      else
      {
        v5 = a2;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__BSXPCServiceConnectionEventHandler_connectionActivated___block_invoke;
      v11[3] = &unk_1E75209E8;
      v11[4] = a2;
      v11[5] = activated;
      BSXPCServiceConnectionExecuteCallOut(a2, v5, v11);
    }
  }
}

uint64_t __58__BSXPCServiceConnectionEventHandler_connectionActivated___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 88);
  v3 = BSServiceXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      v4 = *(v1 + 192);
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 1);
LABEL_5:
        v7 = v6;
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_19A821000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connectionActivated:", &v9, 0xCu);

        goto LABEL_6;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_5;
  }

LABEL_6:

  return (*(v2 + 16))(v2, v1);
}

- (void)connectionInterruptedFromXPCError:(void *)error
{
  v24 = *MEMORY[0x1E69E9840];
  if (error)
  {
    v3 = error[19];
    if (!v3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(sel_connectionInterruptedFromXPCError_);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v13 = v7;
        v14 = 2114;
        v15 = v9;
        v16 = 2048;
        errorCopy = error;
        v18 = 2114;
        v19 = @"BSXPCServiceConnectionEventHandler.m";
        v20 = 1024;
        v21 = 395;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84BD18);
    }

    [v3 assertBarrierOnQueue];
    if (error[12] && ([(os_unfair_lock_s *)a2 _isClientInvalidated]& 1) == 0)
    {
      [(BSXPCServiceConnection *)a2 _makingInterruptCallout];
      if (error[17])
      {
        v5 = error[17];
      }

      else
      {
        v5 = a2;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __72__BSXPCServiceConnectionEventHandler_connectionInterruptedFromXPCError___block_invoke;
      v11[3] = &unk_1E75209E8;
      v11[4] = a2;
      v11[5] = error;
      BSXPCServiceConnectionExecuteCallOut(a2, v5, v11);
    }
  }
}

uint64_t __72__BSXPCServiceConnectionEventHandler_connectionInterruptedFromXPCError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 96);
  v3 = BSServiceXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v1)
    {
      v4 = *(v1 + 192);
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 1);
LABEL_5:
        v7 = v6;
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_19A821000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connectionInterrupted:", &v9, 0xCu);

        goto LABEL_6;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_5;
  }

LABEL_6:

  return (*(v2 + 16))(v2, v1);
}

- (void)_connectionInvalidated:(void *)invalidated
{
  v32 = *MEMORY[0x1E69E9840];
  if (invalidated)
  {
    v3 = invalidated[19];
    if (!v3)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"queue must be set"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel__connectionInvalidated_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        v24 = 2048;
        invalidatedCopy = invalidated;
        v26 = 2114;
        v27 = @"BSXPCServiceConnectionEventHandler.m";
        v28 = 1024;
        v29 = 425;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      [v14 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A84C08CLL);
    }

    [v3 assertBarrierOnQueue];
    if (invalidated[13] && ([a2 _isClientInvalidated] & 1) == 0)
    {
      if (invalidated[17])
      {
        v5 = invalidated[17];
      }

      else
      {
        v5 = a2;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __61__BSXPCServiceConnectionEventHandler__connectionInvalidated___block_invoke;
      v19[3] = &unk_1E75209E8;
      v19[4] = a2;
      v19[5] = invalidated;
      BSXPCServiceConnectionExecuteCallOut(a2, v5, v19);
    }

    v6 = invalidated[9];
    invalidated[9] = 0;

    v7 = invalidated[7];
    invalidated[7] = 0;

    v8 = invalidated[8];
    invalidated[8] = 0;

    v9 = invalidated[10];
    invalidated[10] = 0;

    v10 = invalidated[11];
    invalidated[11] = 0;

    v11 = invalidated[12];
    invalidated[12] = 0;

    v12 = invalidated[13];
    invalidated[13] = 0;

    v13 = invalidated[14];
    invalidated[14] = 0;
  }
}

void __61__BSXPCServiceConnectionEventHandler__connectionInvalidated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 104);
  v4 = BSServiceXPCLog();
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_6;
  }

  if (!v2)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(v2 + 192);
  v6 = v5;
  if (!v5)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_5;
  }

  v7 = *(v5 + 1);
LABEL_5:
  v8 = v7;
  v10 = 138543362;
  v11 = v8;
  _os_log_impl(&dword_19A821000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [callout] connectionInvalidated:", &v10, 0xCu);

LABEL_6:
  (*(v3 + 16))(v3, v2);
  v9 = *(a1 + 32);
  if (v9)
  {
    [(BSXPCServiceConnection *)v9 _clientInvalidateWithType:?];
  }
}

- (void)setInitiatingContext:(uint64_t)context
{
  if (context)
  {
    objc_storeStrong((context + 168), a2);
  }
}

@end