@interface BSXPCServiceConnectionProxy
+ (uint64_t)decodeArguments:(uint64_t)arguments outArgs:(void *)args fromMessage:(void *)message forConnection:;
+ (uint64_t)encodeArguments:(uint64_t)arguments inArgs:(void *)args toMessage:(uint64_t)message forConnection:(void *)connection;
+ (void)concreteArgumentsForArguments:(uint64_t)arguments;
+ (void)invokeMethod:(uint64_t)method onTarget:(void *)target withMessage:(void *)message forConnection:(uint64_t)connection completion:;
+ (void)proxyForConnection:(void *)connection handshake:(void *)handshake withProtocol:(int)protocol activationGeneration:(void *)generation activeXPCConnection:(void *)cConnection xpcConnectionTargetQueue:(void *)queue replyQueue:(void *)replyQueue target:(void *)self0 attributes:(void *)self1 assertionProvider:;
- (void)_decrementInFlightMessageCounter;
- (void)dealloc;
@end

@implementation BSXPCServiceConnectionProxy

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_lock_assertion)
  {
    connection = self->_connection;
    if (connection && (context = connection->_context) != 0)
    {
      proem = context->_proem;
    }

    else
    {
      proem = 0;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> dealloced before releasing its assertion : in-flight-messages=%u", proem, objc_opt_class(), self, self->_lock_messagesCount];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      *buf = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = NSStringFromClass(v9);
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"BSXPCServiceConnectionProxy.m";
      v19 = 1024;
      v20 = 327;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A828EA8);
  }

  v10.receiver = self;
  v10.super_class = BSXPCServiceConnectionProxy;
  [(BSXPCServiceConnectionProxy *)&v10 dealloc];
}

+ (void)proxyForConnection:(void *)connection handshake:(void *)handshake withProtocol:(int)protocol activationGeneration:(void *)generation activeXPCConnection:(void *)cConnection xpcConnectionTargetQueue:(void *)queue replyQueue:(void *)replyQueue target:(void *)self0 attributes:(void *)self1 assertionProvider:
{
  v66 = *MEMORY[0x1E69E9840];
  v18 = objc_opt_self();
  NSClassFromString(&cfstr_Bsxpcserviceco.isa);
  if (!a2)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v34 = objc_opt_class();
      *buf = 138544642;
      v55 = v33;
      v56 = 2114;
      v57 = NSStringFromClass(v34);
      v58 = 2048;
      targetCopy = v18;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionProxy.m";
      v62 = 1024;
      v63 = 131;
      v64 = 2114;
      v65 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8333B8);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSXPCServiceConnectionClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v37 = objc_opt_class();
      *buf = 138544642;
      v55 = v36;
      v56 = 2114;
      v57 = NSStringFromClass(v37);
      v58 = 2048;
      targetCopy = v18;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionProxy.m";
      v62 = 1024;
      v63 = 131;
      v64 = 2114;
      v65 = v35;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A833494);
  }

  NSClassFromString(&cfstr_Bsobjcprotocol.isa);
  if (!handshake)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v40 = objc_opt_class();
      *buf = 138544642;
      v55 = v39;
      v56 = 2114;
      v57 = NSStringFromClass(v40);
      v58 = 2048;
      targetCopy = v18;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionProxy.m";
      v62 = 1024;
      v63 = 132;
      v64 = 2114;
      v65 = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A833570);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCProtocolClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v43 = objc_opt_class();
      *buf = 138544642;
      v55 = v42;
      v56 = 2114;
      v57 = NSStringFromClass(v43);
      v58 = 2048;
      targetCopy = v18;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionProxy.m";
      v62 = 1024;
      v63 = 132;
      v64 = 2114;
      v65 = v41;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83364CLL);
  }

  if (![objc_msgSend(handshake "methods")])
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remoteProtocol has no methods"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v46 = objc_opt_class();
      *buf = 138544642;
      v55 = v45;
      v56 = 2114;
      v57 = NSStringFromClass(v46);
      v58 = 2048;
      targetCopy = v18;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionProxy.m";
      v62 = 1024;
      v63 = 133;
      v64 = 2114;
      v65 = v44;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83371CLL);
  }

  if (!queue)
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"replyQueue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v49 = objc_opt_class();
      *buf = 138544642;
      v55 = v48;
      v56 = 2114;
      v57 = NSStringFromClass(v49);
      v58 = 2048;
      targetCopy = v18;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionProxy.m";
      v62 = 1024;
      v63 = 134;
      v64 = 2114;
      v65 = v47;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v47 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8337F8);
  }

  if (connection && ![target count])
  {
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handshake is only supported if there are launching attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(sel_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider_);
      v52 = objc_opt_class();
      *buf = 138544642;
      v55 = v51;
      v56 = 2114;
      v57 = NSStringFromClass(v52);
      v58 = 2048;
      targetCopy = v18;
      v60 = 2114;
      v61 = @"BSXPCServiceConnectionProxy.m";
      v62 = 1024;
      v63 = 135;
      v64 = 2114;
      v65 = v50;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v50 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8338C8);
  }

  protocolCopy = protocol;
  generationCopy = generation;
  name = [handshake name];
  v21 = [target count];
  v22 = BSServiceXPCLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    cConnectionCopy2 = cConnection;
    if (v23)
    {
      v25 = a2[24];
      if (v25)
      {
        v25 = *(v25 + 8);
      }

      *buf = 138543874;
      v55 = v25;
      v56 = 2114;
      v57 = name;
      v58 = 2114;
      targetCopy = target;
      v26 = "%{public}@ Remote proxy: <%{public}@> with %{public}@";
      v27 = v22;
      v28 = 32;
LABEL_18:
      _os_log_impl(&dword_19A821000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    }
  }

  else
  {
    cConnectionCopy2 = cConnection;
    if (v23)
    {
      v29 = a2[24];
      if (v29)
      {
        v29 = *(v29 + 8);
      }

      *buf = 138543618;
      v55 = v29;
      v56 = 2114;
      v57 = name;
      v26 = "%{public}@ Remote proxy: <%{public}@>";
      v27 = v22;
      v28 = 22;
      goto LABEL_18;
    }
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"BSXPCServiceConnectionProxy<%@>", name];
  objc_opt_class();
  v30 = objc_alloc_init(BSObjCClassCreate());
  v30[1] = a2;
  v30[2] = connection;
  v30[3] = handshake;
  *(v30 + 24) = protocolCopy;
  v30[4] = generationCopy;
  v30[5] = cConnectionCopy2;
  v30[6] = queue;
  v30[7] = [replyQueue copy];
  v30[8] = [target copy];
  v30[9] = [attributes copy];
  *(v30 + 22) = 0;
  return v30;
}

void __186__BSXPCServiceConnectionProxy_proxyForConnection_handshake_withProtocol_activationGeneration_activeXPCConnection_xpcConnectionTargetQueue_replyQueue_target_attributes_assertionProvider___block_invoke(uint64_t a1, objc_class *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v26 = objc_opt_self();
  cls = a2;
  v27 = NSStringFromClass(a2);
  v29 = v3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [v3 methods];
  v4 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v8 returnValue];
        v11 = [v8 arguments];
        v12 = [BSXPCServiceConnectionProxy concreteArgumentsForArguments:v11];
        v13 = [v11 lastObject];
        if ([v13 isPointer])
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (![v13 isBlock])
        {
          v13 = 0;
        }

        v15 = [v10 isOneWay];
        if (v15 && (v15 = [v10 isVoid]) != 0)
        {
          LOBYTE(v15) = [v10 hasQualifier:82];
          v16 = 1;
        }

        else
        {
          v16 = 0;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke;
        block[3] = &unk_1E7520298;
        block[4] = v13;
        block[5] = v27;
        block[11] = v10;
        block[12] = sel_createImplementationOfProtocol_forClass_;
        v31 = v15;
        block[6] = v26;
        block[7] = v9;
        block[8] = v12;
        block[9] = v29;
        v32 = v16;
        block[10] = v14;
        v17 = imp_implementationWithBlock(block);
        v18 = NSSelectorFromString([v8 name]);
        if (!class_addMethod(cls, v18, v17, [objc_msgSend(v8 "encoding")]))
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to register method %@ on class %@", objc_msgSend(v8, "name"), v27];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(sel_createImplementationOfProtocol_forClass_);
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *buf = 138544642;
            v38 = v22;
            v39 = 2114;
            v40 = v24;
            v41 = 2048;
            v42 = v26;
            v43 = 2114;
            v44 = @"BSXPCServiceConnectionProxy.m";
            v45 = 1024;
            v46 = 570;
            v47 = 2114;
            v48 = v21;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v21 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A833CACLL);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v5);
  }

  if (!class_addProtocol(cls, [v29 protocol]))
  {
    v19 = BSServiceXPCErrorsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v29 name];
      *buf = 138543618;
      v38 = v20;
      v39 = 2114;
      v40 = v27;
      _os_log_error_impl(&dword_19A821000, v19, OS_LOG_TYPE_ERROR, "[BSXPCServiceConnectionProxy] Error adding protocol %{public}@ to class %{public}@", buf, 0x16u);
    }
  }
}

+ (void)invokeMethod:(uint64_t)method onTarget:(void *)target withMessage:(void *)message forConnection:(uint64_t)connection completion:
{
  v103 = *MEMORY[0x1E69E9840];
  v79 = objc_opt_self();
  NSClassFromString(&cfstr_Bsobjcmethod.isa);
  if (!a2)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v41 = objc_opt_class();
      LODWORD(v87[0]) = 138544642;
      *(v87 + 4) = v40;
      WORD2(v87[1]) = 2114;
      *(&v87[1] + 6) = NSStringFromClass(v41);
      HIWORD(v87[2]) = 2048;
      v87[3] = v79;
      LOWORD(v88) = 2114;
      *(&v88 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v88) = 1024;
      HIDWORD(v88) = 170;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = v39;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v87, 0x3Au);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A83481CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSObjCMethodClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v43 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v44 = objc_opt_class();
      LODWORD(v87[0]) = 138544642;
      *(v87 + 4) = v43;
      WORD2(v87[1]) = 2114;
      *(&v87[1] + 6) = NSStringFromClass(v44);
      HIWORD(v87[2]) = 2048;
      v87[3] = v79;
      LOWORD(v88) = 2114;
      *(&v88 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v88) = 1024;
      HIDWORD(v88) = 170;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = v42;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v87, 0x3Au);
    }

    [v42 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834900);
  }

  if (!method)
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"target"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v47 = objc_opt_class();
      LODWORD(v87[0]) = 138544642;
      *(v87 + 4) = v46;
      WORD2(v87[1]) = 2114;
      *(&v87[1] + 6) = NSStringFromClass(v47);
      HIWORD(v87[2]) = 2048;
      v87[3] = v79;
      LOWORD(v88) = 2114;
      *(&v88 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v88) = 1024;
      HIDWORD(v88) = 171;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = v45;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v87, 0x3Au);
    }

    [v45 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8349E4);
  }

  NSClassFromString(&cfstr_Bsxpcserviceco_2.isa);
  if (!target)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v50 = objc_opt_class();
      LODWORD(v87[0]) = 138544642;
      *(v87 + 4) = v49;
      WORD2(v87[1]) = 2114;
      *(&v87[1] + 6) = NSStringFromClass(v50);
      HIWORD(v87[2]) = 2048;
      v87[3] = v79;
      LOWORD(v88) = 2114;
      *(&v88 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v88) = 1024;
      HIDWORD(v88) = 172;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = v48;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v87, 0x3Au);
    }

    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834AC8);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSXPCServiceConnectionMessageClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v53 = objc_opt_class();
      LODWORD(v87[0]) = 138544642;
      *(v87 + 4) = v52;
      WORD2(v87[1]) = 2114;
      *(&v87[1] + 6) = NSStringFromClass(v53);
      HIWORD(v87[2]) = 2048;
      v87[3] = v79;
      LOWORD(v88) = 2114;
      *(&v88 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v88) = 1024;
      HIDWORD(v88) = 172;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = v51;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v87, 0x3Au);
    }

    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834BACLL);
  }

  NSClassFromString(&cfstr_Bsxpcserviceco.isa);
  if (!message)
  {
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v55 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v56 = objc_opt_class();
      LODWORD(v87[0]) = 138544642;
      *(v87 + 4) = v55;
      WORD2(v87[1]) = 2114;
      *(&v87[1] + 6) = NSStringFromClass(v56);
      HIWORD(v87[2]) = 2048;
      v87[3] = v79;
      LOWORD(v88) = 2114;
      *(&v88 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v88) = 1024;
      HIDWORD(v88) = 173;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = v54;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v87, 0x3Au);
    }

    [v54 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834C90);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSXPCServiceConnectionClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v58 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
      v59 = objc_opt_class();
      LODWORD(v87[0]) = 138544642;
      *(v87 + 4) = v58;
      WORD2(v87[1]) = 2114;
      *(&v87[1] + 6) = NSStringFromClass(v59);
      HIWORD(v87[2]) = 2048;
      v87[3] = v79;
      LOWORD(v88) = 2114;
      *(&v88 + 2) = @"BSXPCServiceConnectionProxy.m";
      WORD5(v88) = 1024;
      HIDWORD(v88) = 173;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = v57;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v87, 0x3Au);
    }

    [v57 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A834D74);
  }

  v11 = BSServiceXPCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v29 = message[24];
    if (v29)
    {
      v30 = *(v29 + 8);
    }

    else
    {
      v30 = 0;
    }

    v31 = objc_opt_class();
    LODWORD(v87[0]) = 138543874;
    *(v87 + 4) = v30;
    WORD2(v87[1]) = 2112;
    *(&v87[1] + 6) = NSStringFromClass(v31);
    HIWORD(v87[2]) = 2112;
    v87[3] = [a2 name];
    _os_log_debug_impl(&dword_19A821000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ Invoking [%@ %@]", v87, 0x20u);
  }

  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  memset(v87, 0, sizeof(v87));
  +[BSXPCServiceConnectionProxy decodeArguments:outArgs:fromMessage:forConnection:](BSXPCServiceConnectionProxy, [a2 arguments], v87, target, message);
  createReply = [target createReply];
  v84 = 0;
  v13 = [objc_msgSend(a2 "returnValue")];
  v16 = objc_opt_class();
  if (class_getInstanceMethod(v16, [a2 selector]))
  {
    lastArgument = [a2 lastArgument];
    if (([lastArgument isBlock] & 1) != 0 || objc_msgSend(lastArgument, "isPointer"))
    {
      argumentIndex = [lastArgument argumentIndex];
      v19 = argumentIndex;
      if (argumentIndex >= 0xA)
      {
        v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reply parameter argument is out of bounds"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v69 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          *buf = 138544642;
          v92 = v69;
          v93 = 2114;
          v94 = v71;
          v95 = 2048;
          v96 = v79;
          v97 = 2114;
          v98 = @"BSXPCServiceConnectionProxy.m";
          v99 = 1024;
          v100 = 208;
          v101 = 2114;
          v102 = v68;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v68 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A83500CLL);
      }

      if (v87[argumentIndex])
      {
        v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reply parameter argument slot is not empty"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v73 = NSStringFromSelector(sel_invokeMethod_onTarget_withMessage_forConnection_completion_);
          v74 = objc_opt_class();
          v75 = NSStringFromClass(v74);
          *buf = 138544642;
          v92 = v73;
          v93 = 2114;
          v94 = v75;
          v95 = 2048;
          v96 = v79;
          v97 = 2114;
          v98 = @"BSXPCServiceConnectionProxy.m";
          v99 = 1024;
          v100 = 209;
          v101 = 2114;
          v102 = v72;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v72 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8350E4);
      }

      if ([lastArgument isBlock])
      {
        blockArguments = [lastArgument blockArguments];
        v21 = v83;
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke;
        v83[3] = &unk_1E75201A8;
        v83[4] = createReply;
        v83[5] = blockArguments;
        v83[6] = message;
        v83[7] = a2;
        v83[10] = sel_invokeMethod_onTarget_withMessage_forConnection_completion_;
        v83[8] = v79;
        v83[9] = connection;
        createReply = 0;
        connection = 0;
      }

      else
      {
        v21 = &v84;
      }

      v87[v19] = v21;
    }

    v27 = [objc_msgSend(a2 "arguments")];
    v28 = objc_opt_self();
    if (v27 >= 0xB)
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"count <= BSOBJC_MAX_ARGS"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v61 = NSStringFromSelector(sel_invokeMethod_onTarget_withArguments_count_returnValue_);
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        *buf = 138544642;
        v92 = v61;
        v93 = 2114;
        v94 = v63;
        v95 = 2048;
        v96 = v28;
        v97 = 2114;
        v98 = @"BSXPCServiceConnectionProxy.m";
        v99 = 1024;
        v100 = 589;
        v101 = 2114;
        v102 = v60;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v60 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A834E54);
    }

    NSClassFromString(&cfstr_Nsobject.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSObjectClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v65 = NSStringFromSelector(sel_invokeMethod_onTarget_withArguments_count_returnValue_);
        v66 = objc_opt_class();
        v67 = NSStringFromClass(v66);
        *buf = 138544642;
        v92 = v65;
        v93 = 2114;
        v94 = v67;
        v95 = 2048;
        v96 = v28;
        v97 = 2114;
        v98 = @"BSXPCServiceConnectionProxy.m";
        v99 = 1024;
        v100 = 590;
        v101 = 2114;
        v102 = v64;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v64 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A834F34);
    }

    if (v27 <= 4)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          if (v13 != 64)
          {
            if (v13 != 66)
            {
              if (v13 == 118)
              {
LABEL_73:
                method_invoke();
                goto LABEL_82;
              }

              v76 = 606;
LABEL_173:
              __assert_rtn("+[BSXPCServiceConnectionProxy invokeMethod:onTarget:withArguments:count:returnValue:]", "BSXPCServiceConnectionProxy.m", v76, "false");
            }

            goto LABEL_89;
          }
        }

        else if (v13 != 64)
        {
          if (v13 != 66)
          {
            if (v13 == 118)
            {
              goto LABEL_73;
            }

            v76 = 600;
            goto LABEL_173;
          }

          goto LABEL_89;
        }
      }

      else if (v27 == 2)
      {
        if (v13 != 64)
        {
          if (v13 != 66)
          {
            if (v13 == 118)
            {
              goto LABEL_73;
            }

            v76 = 612;
            goto LABEL_173;
          }

          goto LABEL_89;
        }
      }

      else if (v27 == 3)
      {
        if (v13 != 64)
        {
          if (v13 != 66)
          {
            if (v13 == 118)
            {
              goto LABEL_73;
            }

            v76 = 618;
            goto LABEL_173;
          }

          goto LABEL_89;
        }
      }

      else if (v13 != 64)
      {
        if (v13 != 66)
        {
          if (v13 == 118)
          {
            goto LABEL_73;
          }

          v76 = 624;
          goto LABEL_173;
        }

LABEL_89:
        method_invoke();
        goto LABEL_98;
      }
    }

    else
    {
      if (v27 > 7)
      {
        if (v27 == 8)
        {
          if (v13 == 64)
          {
            v77 = v89;
            method_invoke();
LABEL_104:
            v15 = v33;
            v14 = 0;
LABEL_105:
            v22 = 0;
            if (!createReply)
            {
              goto LABEL_123;
            }

            goto LABEL_106;
          }

          if (v13 == 66)
          {
            v77 = v89;
            method_invoke();
            goto LABEL_98;
          }

          if (v13 != 118)
          {
            v76 = 648;
            goto LABEL_173;
          }

          v77 = v89;
          method_invoke();
        }

        else
        {
          if (v27 != 9)
          {
            if (v13 == 64)
            {
              v78 = v90;
              v77 = v89;
              method_invoke();
              goto LABEL_104;
            }

            if (v13 != 66)
            {
              if (v13 == 118)
              {
                v78 = v90;
                v77 = v89;
                method_invoke();
                goto LABEL_82;
              }

              v76 = 660;
              goto LABEL_173;
            }

            v78 = v90;
            v77 = v89;
            method_invoke();
            goto LABEL_98;
          }

          if (v13 == 64)
          {
            *&v78 = v90;
            v77 = v89;
            method_invoke();
            goto LABEL_104;
          }

          if (v13 == 66)
          {
            *&v78 = v90;
            v77 = v89;
            method_invoke();
            goto LABEL_98;
          }

          if (v13 != 118)
          {
            v76 = 654;
            goto LABEL_173;
          }

          *&v78 = v90;
          v77 = v89;
          method_invoke();
        }

LABEL_82:
        v14 = 0;
LABEL_99:
        v15 = 0;
        goto LABEL_105;
      }

      if (v27 != 5)
      {
        if (v27 == 6)
        {
          if (v13 != 64)
          {
            if (v13 != 66)
            {
              if (v13 == 118)
              {
                goto LABEL_73;
              }

              v76 = 636;
              goto LABEL_173;
            }

            goto LABEL_89;
          }

          goto LABEL_100;
        }

        if (v13 == 64)
        {
          *&v77 = v89;
          method_invoke();
          goto LABEL_104;
        }

        if (v13 != 66)
        {
          if (v13 == 118)
          {
            *&v77 = v89;
            method_invoke();
            goto LABEL_82;
          }

          v76 = 642;
          goto LABEL_173;
        }

        *&v77 = v89;
        method_invoke();
LABEL_98:
        v14 = v32;
        goto LABEL_99;
      }

      if (v13 != 64)
      {
        if (v13 != 66)
        {
          if (v13 == 118)
          {
            goto LABEL_73;
          }

          v76 = 630;
          goto LABEL_173;
        }

        goto LABEL_89;
      }
    }

LABEL_100:
    method_invoke();
    goto LABEL_104;
  }

  v85 = @"BSServiceInterfaceMethod";
  v86[0] = [a2 name];
  v22 = BSServiceConnectionErrorCreateWithInfo(3uLL, @"No method on target found for selector", [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1]);
  v23 = BSServiceXPCErrorsLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    name = [a2 name];
    *buf = 138412546;
    v92 = v25;
    v93 = 2112;
    v94 = name;
    _os_log_error_impl(&dword_19A821000, v23, OS_LOG_TYPE_ERROR, "[BSXPCServiceConnectionProxy] Error: No method found on object %@ for @selector(%@)", buf, 0x16u);
  }

  v14 = 0;
  v15 = 0;
  if (createReply)
  {
LABEL_106:
    if (v13 == 66)
    {
      [createReply encodeBool:v14 forKey:@"BSXPCReturnValue"];
    }

    else if (v13 == 64)
    {
      returnValue = [a2 returnValue];
      objectClass = [returnValue objectClass];
      if (v15)
      {
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_81;
          v82[3] = &unk_1E75201D0;
          v82[4] = v15;
          v82[5] = a2;
          v82[7] = v79;
          v82[8] = sel_invokeMethod_onTarget_withMessage_forConnection_completion_;
          v82[6] = objectClass;
          __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_81(v82);
        }

        [createReply encodeObject:v15 forKey:@"BSXPCReturnValue"];
      }

      else if ([returnValue isObjectNonnull])
      {
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_85;
        v81[3] = &unk_1E7520180;
        v81[4] = a2;
        v81[5] = objectClass;
        v81[6] = v79;
        v81[7] = sel_invokeMethod_onTarget_withMessage_forConnection_completion_;
        __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_85(v81);
      }
    }

    if (v84)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v37 = v84;
      if ((isKindOfClass & 1) == 0)
      {
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_90;
        v80[3] = &unk_1E7520180;
        v80[4] = v84;
        v80[5] = a2;
        v80[6] = v79;
        v80[7] = sel_invokeMethod_onTarget_withMessage_forConnection_completion_;
        __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_90(v80);
      }
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = v22;
    }

    if (v38)
    {
      [createReply encodeObject:v38 forKey:@"BSXPCReturnError"];
    }

    [createReply send];
    [createReply invalidate];
  }

LABEL_123:
  if (connection)
  {
    (*(connection + 16))(connection);
  }
}

+ (uint64_t)decodeArguments:(uint64_t)arguments outArgs:(void *)args fromMessage:(void *)message forConnection:
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if ([a2 count] >= 0xB)
  {
    v31 = v9;
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[arguments count] <= 10"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(sel_decodeArguments_outArgs_fromMessage_forConnection_);
      v34 = objc_opt_class();
      *buf = 138544642;
      v44 = v33;
      v45 = 2114;
      v46 = NSStringFromClass(v34);
      v47 = 2048;
      v48 = v31;
      v49 = 2114;
      v50 = @"BSXPCServiceConnectionProxy.m";
      v51 = 1024;
      v52 = 783;
      v53 = 2114;
      v54 = v32;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A835AF4);
  }

  v38 = v9;
  v40 = a2;
  v10 = [BSXPCServiceConnectionProxy concreteArgumentsForArguments:a2];
  lastObject = [v10 lastObject];
  objectClass = [lastObject objectClass];
  v13 = objc_opt_class();
  v14 = [args containsValueForKey:@"BSXPCReturnError"];
  messageCopy = message;
  v41 = v13;
  if ((v14 & 1) == 0 && objectClass == v13)
  {
    v14 = [args containsValueForKey:{__KeyForIndex_block_invoke(objc_msgSend(lastObject, "argumentIndex"))}];
  }

  v39 = lastObject;
  if ([v10 count])
  {
    v15 = 0;
    v16 = *MEMORY[0x1E695D940];
    do
    {
      v17 = [v10 objectAtIndex:v15];
      if (v15 != [v17 argumentIndex])
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[argument argumentIndex] == idx"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v29 = NSStringFromSelector(sel_decodeArguments_outArgs_fromMessage_forConnection_);
          v30 = objc_opt_class();
          *buf = 138544642;
          v44 = v29;
          v45 = 2114;
          v46 = NSStringFromClass(v30);
          v47 = 2048;
          v48 = v38;
          v49 = 2114;
          v50 = @"BSXPCServiceConnectionProxy.m";
          v51 = 1024;
          v52 = 796;
          v53 = 2114;
          v54 = v28;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v28 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A835A14);
      }

      type = [v17 type];
      if (type > 0x50)
      {
        if (type == 81)
        {
          v20 = [args decodeUInt64ForKey:__KeyForIndex_block_invoke(v15)];
          goto LABEL_19;
        }

        if (type == 113)
        {
          v20 = [args decodeInt64ForKey:__KeyForIndex_block_invoke(v15)];
LABEL_19:
          *(arguments + 8 * v15) = v20;
          goto LABEL_20;
        }
      }

      else
      {
        if (type == 35)
        {
          v21 = [args decodeStringForKey:__KeyForIndex_block_invoke(v15)];
          v20 = NSClassFromString(v21);
          goto LABEL_19;
        }

        if (type == 64)
        {
          if ([v17 isXPCObject])
          {
            v19 = [args _implicitDecodeXPCObjectForKey:__KeyForIndex_block_invoke(v15)];
          }

          else
          {
            objectClass2 = [v17 objectClass];
            if ([objectClass2 isSubclassOfClass:objc_opt_class()])
            {
              v19 = messageCopy;
            }

            else
            {
              objectContainedClasses = [v17 objectContainedClasses];
              if ([objectContainedClasses count])
              {
                if ([objectClass2 isSubclassOfClass:objc_opt_class()])
                {
                  v19 = [args decodeDictionaryOfClass:objc_msgSend(objectContainedClasses forKey:{"objectAtIndex:", 1), __KeyForIndex_block_invoke(v15)}];
                }

                else
                {
                  v19 = [args decodeCollectionOfClass:objectClass2 containingClass:objc_msgSend(objectContainedClasses forKey:{"firstObject"), __KeyForIndex_block_invoke(v15)}];
                }
              }

              else
              {
                v19 = [args decodeObjectOfClass:objectClass2 forKey:__KeyForIndex_block_invoke(v15)];
              }
            }
          }

          *(arguments + 8 * v15) = v19;
          if (v19)
          {
            v24 = 1;
          }

          else
          {
            v24 = v14;
          }

          if ((v24 & 1) == 0 && [v17 isObjectNonnull])
          {
            [MEMORY[0x1E695DF30] raise:v16 format:{@"Decoded nil for nonnull parameter %ld; expected %@", v15, NSStringFromClass(objc_msgSend(v17, "objectClass"))}];
          }

          goto LABEL_20;
        }
      }

      [MEMORY[0x1E695DF30] raise:v16 format:{@"Decoding value of type %c not implemented or supported", objc_msgSend(v17, "type")}];
LABEL_20:
      ++v15;
    }

    while (v15 < [v10 count]);
  }

  result = [args containsValueForKey:@"BSXPCReturnError"];
  if (result)
  {
    result = [args decodeObjectOfClass:objc_opt_class() forKey:@"BSXPCReturnError"];
    if (result)
    {
      if (objectClass == v41)
      {
        v26 = result;
        v27 = [objc_msgSend(v40 "lastObject")];
        if (v27 != [v10 count] - 1)
        {
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[[arguments lastObject] argumentIndex] == ([concreteArguments count] - 1)"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v36 = NSStringFromSelector(sel_decodeArguments_outArgs_fromMessage_forConnection_);
            v37 = objc_opt_class();
            *buf = 138544642;
            v44 = v36;
            v45 = 2114;
            v46 = NSStringFromClass(v37);
            v47 = 2048;
            v48 = v38;
            v49 = 2114;
            v50 = @"BSXPCServiceConnectionProxy.m";
            v51 = 1024;
            v52 = 854;
            v53 = 2114;
            v54 = v35;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v35 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A835BD4);
        }

        result = [v39 argumentIndex];
        *(arguments + 8 * result) = v26;
      }
    }
  }

  return result;
}

uint64_t __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 32);
  if (v13)
  {
    *buf = a2;
    *&buf[8] = a3;
    *&buf[16] = a4;
    *&v18 = a5;
    *(&v18 + 1) = a6;
    v19 = a7;
    v20 = a8;
    v21 = a9;
    v22 = a10;
    v23 = a11;
    [BSXPCServiceConnectionProxy encodeArguments:*(a1 + 40) inArgs:buf toMessage:v13 forConnection:?];
    [*(a1 + 32) send];
    [*(a1 + 32) invalidate];
  }

  else if (a2)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"arg1 == nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      *&buf[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSXPCServiceConnectionProxy invokeMethod:onTarget:withMessage:forConnection:completion:]_block_invoke"];
      *&buf[12] = 2114;
      *&buf[14] = @"BSXPCServiceConnectionProxy.m";
      *&buf[22] = 1024;
      LODWORD(v18) = 233;
      WORD2(v18) = 2114;
      *(&v18 + 6) = v16;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A835E6CLL);
  }

  result = *(a1 + 72);
  if (result)
  {
    v15 = *(result + 16);

    return v15();
  }

  return result;
}

+ (uint64_t)encodeArguments:(uint64_t)arguments inArgs:(void *)args toMessage:(uint64_t)message forConnection:(void *)connection
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  if ([args count] > 0xA)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[arguments count] <= 10"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(sel_encodeArguments_inArgs_toMessage_forConnection_);
      v22 = objc_opt_class();
      *buf = 138544642;
      v24 = v21;
      v25 = 2114;
      v26 = NSStringFromClass(v22);
      v27 = 2048;
      v28 = v7;
      v29 = 2114;
      v30 = @"BSXPCServiceConnectionProxy.m";
      v31 = 1024;
      v32 = 723;
      v33 = 2114;
      v34 = v20;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A836268);
  }

  if ([args count])
  {
    v8 = 0;
    v9 = *MEMORY[0x1E695D940];
    do
    {
      v10 = [args objectAtIndex:v8];
      type = [v10 type];
      if (type > 0x50)
      {
        if (type == 81)
        {
          [connection encodeUInt64:*(message + 8 * v8) forKey:__KeyForIndex_block_invoke(v8)];
          goto LABEL_19;
        }

        if (type != 113)
        {
LABEL_15:
          [MEMORY[0x1E695DF30] raise:v9 format:{@"Unsupported ObjectiveC type: %c", objc_msgSend(v10, "type")}];
          goto LABEL_19;
        }

        [connection encodeInt64:*(message + 8 * v8) forKey:__KeyForIndex_block_invoke(v8)];
      }

      else
      {
        if (type == 35)
        {
          v15 = *(message + 8 * v8);
          if (v15)
          {
            v16 = NSStringFromClass(v15);
            [connection encodeObject:v16 forKey:__KeyForIndex_block_invoke(v8)];
          }

          goto LABEL_19;
        }

        if (type != 64)
        {
          goto LABEL_15;
        }

        v12 = *(message + 8 * v8);
        if (!v12)
        {
          if ([v10 isObjectNonnull])
          {
            [MEMORY[0x1E695DF30] raise:v9 format:{@"Parameter %ld expected nonnull %@", objc_msgSend(v10, "argumentIndex"), NSStringFromClass(objc_msgSend(v10, "objectClass"))}];
          }

          goto LABEL_19;
        }

        objectClass = [v10 objectClass];
        v14 = @"local";
        if (([(objc_class *)objectClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = MEMORY[0x1E695DF30];
            v18 = NSStringFromClass(objectClass);
            [v17 raise:v9 format:{@"Expected %@, but received %@", v18, NSStringFromClass(-[__CFString classForCoder](v12, "classForCoder"))}];
            goto LABEL_19;
          }

          v14 = v12;
        }

        [connection encodeObject:v14 forKey:__KeyForIndex_block_invoke(v8)];
      }

LABEL_19:
      ++v8;
    }

    while (v8 < [args count]);
  }

  return [connection _finishCoding];
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encoding reply block for %@: %@ -> %@", objc_msgSend(*(a1 + 32), "name"), objc_msgSend(*(a1 + 40), "description"), objc_msgSend(*(a1 + 40), "callStackSymbols")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 48);
    *buf = 138544642;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = @"BSXPCServiceConnectionProxy.m";
    v15 = 1024;
    v16 = 225;
    v17 = 2114;
    v18 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_77(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encoding return value from %@: %@ -> %@", objc_msgSend(*(a1 + 32), "name"), objc_msgSend(*(a1 + 40), "description"), objc_msgSend(*(a1 + 40), "callStackSymbols")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 48);
    *buf = 138544642;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = @"BSXPCServiceConnectionProxy.m";
    v15 = 1024;
    v16 = 275;
    v17 = 2114;
    v18 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_81(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromClass([*(a1 + 32) classForCoder]);
  v4 = [v2 stringWithFormat:@"Return value %@ from %@ does not match expected type %@", v3, objc_msgSend(*(a1 + 40), "name"), NSStringFromClass(*(a1 + 48))];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 64));
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 56);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = @"BSXPCServiceConnectionProxy.m";
    v17 = 1024;
    v18 = 280;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_85(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Return value from %@ is declared nonnull", objc_msgSend(*(a1 + 32), "name"), NSStringFromClass(*(a1 + 40))];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 48);
    *buf = 138544642;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = @"BSXPCServiceConnectionProxy.m";
    v15 = 1024;
    v16 = 286;
    v17 = 2114;
    v18 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_90(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [v2 stringWithFormat:@"Invalid out-parameter error (%@) from %@", NSStringFromClass(v3), objc_msgSend(*(a1 + 40), "name")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 56));
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 48);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = @"BSXPCServiceConnectionProxy.m";
    v17 = 1024;
    v18 = 296;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __90__BSXPCServiceConnectionProxy_invokeMethod_onTarget_withMessage_forConnection_completion___block_invoke_97(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error encoding return error from %@: %@ -> %@", objc_msgSend(*(a1 + 32), "name"), objc_msgSend(*(a1 + 40), "description"), objc_msgSend(*(a1 + 40), "callStackSymbols")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 48);
    *buf = 138544642;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = @"BSXPCServiceConnectionProxy.m";
    v15 = 1024;
    v16 = 305;
    v17 = 2114;
    v18 = v2;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_decrementInFlightMessageCounter
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    v2 = *(self + 92);
    if (!v2)
    {
      v4 = *(self + 8);
      if (v4 && (v5 = *(v4 + 192)) != 0)
      {
        v6 = *(v5 + 8);
      }

      else
      {
        v6 = 0;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> unbalanced message tracking detected", v6, objc_opt_class(), self];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(sel__decrementInFlightMessageCounter);
        v9 = objc_opt_class();
        *buf = 138544642;
        v11 = v8;
        v12 = 2114;
        v13 = NSStringFromClass(v9);
        v14 = 2048;
        selfCopy = self;
        v16 = 2114;
        v17 = @"BSXPCServiceConnectionProxy.m";
        v18 = 1024;
        v19 = 346;
        v20 = 2114;
        v21 = v7;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A836C40);
    }

    v3 = v2 - 1;
    *(self + 92) = v3;
    if (!v3)
    {
      [*(self + 80) invalidate];

      *(self + 80) = 0;
    }

    os_unfair_lock_unlock((self + 88));
  }
}

+ (void)concreteArgumentsForArguments:(uint64_t)arguments
{
  objc_opt_self();
  lastObject = [a2 lastObject];
  isPointer = [lastObject isPointer];
  isBlock = [lastObject isBlock];
  if (!lastObject || ((isPointer | isBlock) & 1) == 0)
  {
    return a2;
  }

  v6 = [a2 count] - 1;

  return [a2 subarrayWithRange:{0, v6}];
}

id __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v132 = *MEMORY[0x1E69E9840];
  v112 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v125[0] = a3;
  v125[1] = a4;
  v125[2] = a5;
  v125[3] = a6;
  v125[4] = a7;
  v125[5] = a8;
  v126 = a9;
  v127 = a10;
  v128 = a11;
  v19 = *(a2 + 1);
  if (!v19)
  {
    goto LABEL_124;
  }

  for (i = v19[6].isa; ; i = 0)
  {
    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = v125[[v21 argumentIndex]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v90 = MEMORY[0x1E696AEC0];
        if (i)
        {
          v91 = i[1];
        }

        else
        {
          v91 = 0;
        }

        v92 = *(a1 + 40);
        v93 = objc_opt_class();
        v94 = [v90 stringWithFormat:@"%@ <%@:%p> Reply block argument was not a block, but a %@", v91, v92, a2, NSStringFromClass(v93)];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v95 = NSStringFromSelector(*(a1 + 96));
          v96 = objc_opt_class();
          v97 = NSStringFromClass(v96);
          v98 = *(a1 + 48);
          *buf = 138544642;
          *&buf[4] = v95;
          *&buf[12] = 2114;
          *&buf[14] = v97;
          *&buf[22] = 2048;
          v130 = v98;
          *v131 = 2114;
          *&v131[2] = @"BSXPCServiceConnectionProxy.m";
          *&v131[10] = 1024;
          *&v131[12] = 390;
          *&v131[16] = 2114;
          *&v131[18] = v94;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v94 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A8379E4);
      }

      v23 = [v22 copy];
      v24 = *(a2 + 1);
    }

    else
    {
      v23 = 0;
      v24 = v19;
    }

    v109 = v23;
    if ([(__CFString *)v24 _isInvalidated])
    {
      v25 = (a2 + 88);
      os_unfair_lock_lock(a2 + 22);
    }

    else
    {
      v26 = *(a2 + 4);
      v25 = (a2 + 88);
      os_unfair_lock_lock(a2 + 22);
      if (v26)
      {
        v27 = *(a2 + 2);
        os_unfair_lock_unlock(a2 + 22);
        v28 = *(a2 + 4);
        v111 = 1;
        goto LABEL_12;
      }
    }

    os_unfair_lock_unlock(v25);
    v27 = 0;
    v111 = 0;
    v28 = 0;
LABEL_12:
    v29 = [BSXPCServiceConnectionMessage messageWithXPCConnection:v28 targetQueue:*(a2 + 5) handshake:v27 activationGeneration:*(a2 + 24) delegate:v19];
    [(BSXPCServiceConnectionMessage *)v29 setReplyQueue:?];
    if (v29)
    {
      *(v29 + 60) = *(a1 + 104);
    }

    if ([i isChild])
    {
      if (i)
      {
        [(BSXPCServiceConnectionMessage *)v29 setChildIdentifier:?];
        v30 = *(i + 24);
      }

      else
      {
        [(BSXPCServiceConnectionMessage *)v29 setChildIdentifier:?];
        v30 = 0;
      }

      [(BSXPCServiceConnectionMessage *)v29 setChildIdentifierIsRemotelyDefined:?];
    }

    v108 = i;
    v110 = v27;
    lock = v25;
    [(BSXPCServiceConnectionMessage *)v29 setSelectorName:?];
    v113 = v19;
    [BSXPCServiceConnectionProxy encodeArguments:*(a1 + 64) inArgs:v125 toMessage:v29 forConnection:?];
    v31 = BSServiceXPCLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v33 = BSServiceXPCLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        if (i)
        {
          v80 = i[1];
        }

        else
        {
          v80 = 0;
        }

        v81 = *(a1 + 40);
        if (*(a1 + 105))
        {
          v19 = @"async";
        }

        else
        {
          v19 = @"sync";
        }

        v82 = [*(a1 + 72) name];
        v83 = *(a1 + 56);
        *buf = 138544642;
        *&buf[4] = v80;
        *&buf[12] = 2114;
        *&buf[14] = v81;
        *&buf[22] = 2048;
        v130 = a2;
        *v131 = 2114;
        *&v131[2] = v19;
        *&v131[10] = 2114;
        *&v131[12] = v82;
        *&v131[20] = 2114;
        *&v131[22] = v83;
        _os_log_debug_impl(&dword_19A821000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ <%{public}@:%p> Sending %{public}@ [<%{public}@> %{public}@]", buf, 0x3Eu);
      }

      if ([*(a1 + 64) count])
      {
        v34 = [objc_msgSend(*(a1 + 64) "firstObject")];
        if (v34 <= [objc_msgSend(*(a1 + 64) "lastObject")])
        {
          do
          {
            v54 = v125[v34];
            if (([v54 isNSString] & 1) != 0 || objc_msgSend(v54, "isNSNumber"))
            {
              v55 = BSServiceXPCLog();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                if (v108)
                {
                  v56 = v108[1];
                }

                else
                {
                  v56 = 0;
                }

                v19 = *(a1 + 40);
                v57 = objc_opt_class();
                v58 = [NSStringFromClass(v57) classForCoder];
                v59 = [v54 description];
                *buf = 138544898;
                *&buf[4] = v56;
                *&buf[12] = 2114;
                *&buf[14] = v19;
                *&buf[22] = 2048;
                v130 = a2;
                *v131 = 1024;
                *&v131[2] = v34;
                *&v131[6] = 2114;
                *&v131[8] = v58;
                *&v131[16] = 2048;
                *&v131[18] = v54;
                *&v131[26] = 2114;
                *&v131[28] = v59;
                v60 = v55;
                v61 = "%{public}@ <%{public}@:%p> [%d] <%{public}@: %p; %{public}@>";
                v62 = 68;
LABEL_66:
                _os_log_debug_impl(&dword_19A821000, v60, OS_LOG_TYPE_DEBUG, v61, buf, v62);
              }
            }

            else
            {
              v63 = BSServiceXPCLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
              {
                if (v108)
                {
                  v19 = v108[1];
                }

                else
                {
                  v19 = 0;
                }

                v64 = *(a1 + 40);
                v65 = objc_opt_class();
                v66 = [NSStringFromClass(v65) classForCoder];
                *buf = 138544642;
                *&buf[4] = v19;
                *&buf[12] = 2114;
                *&buf[14] = v64;
                *&buf[22] = 2048;
                v130 = a2;
                *v131 = 1024;
                *&v131[2] = v34;
                *&v131[6] = 2114;
                *&v131[8] = v66;
                *&v131[16] = 2048;
                *&v131[18] = v54;
                v60 = v63;
                v61 = "%{public}@ <%{public}@:%p> [%d] <%{public}@: %p>";
                v62 = 58;
                goto LABEL_66;
              }
            }

            ++v34;
          }

          while (v34 - 1 < [objc_msgSend(*(a1 + 64) "lastObject")]);
        }
      }
    }

    if (!v111 || !*(a2 + 7) || !*(a2 + 8))
    {
      v43 = 0;
      goto LABEL_33;
    }

    v35 = lock;
    os_unfair_lock_lock(lock);
    v36 = *(a2 + 23);
    if (v36)
    {
      break;
    }

    v67 = *(a2 + 9);
    if (v67)
    {
      v68 = (*(v67 + 16))(v67, *(a1 + 40), *(a2 + 7), *(a2 + 8));
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v130 = __Block_byref_object_copy_;
      v73 = _MergedGlobals_3;
      *v131 = __Block_byref_object_dispose_;
      *&v131[8] = _MergedGlobals_3;
      if (!_MergedGlobals_3)
      {
        v120 = MEMORY[0x1E69E9820];
        v121 = 3221225472;
        v122 = __getRBSAssertionClass_block_invoke_0;
        v123 = &unk_1E75202C0;
        v124 = buf;
        __getRBSAssertionClass_block_invoke_0(&v120);
        v73 = *(*&buf[8] + 40);
      }

      _Block_object_dispose(buf, 8);
      v68 = [[v73 alloc] initWithExplanation:*(a1 + 40) target:*(a2 + 7) attributes:*(a2 + 8)];
    }

    v74 = v68;
    if (!v68)
    {
      v99 = v108;
      if (v108)
      {
        v99 = v108[1];
      }

      v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> failed to create assertion with attributes=%@", v99, *(a1 + 40), a2, *(a2 + 8)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v101 = NSStringFromSelector(*(a1 + 96));
        v102 = objc_opt_class();
        v103 = NSStringFromClass(v102);
        v104 = *(a1 + 48);
        *buf = 138544642;
        *&buf[4] = v101;
        *&buf[12] = 2114;
        *&buf[14] = v103;
        *&buf[22] = 2048;
        v130 = v104;
        *v131 = 2114;
        *&v131[2] = @"BSXPCServiceConnectionProxy.m";
        *&v131[10] = 1024;
        *&v131[12] = 446;
        *&v131[16] = 2114;
        *&v131[18] = v100;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v100 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A837ADCLL);
    }

    v119[0] = 0;
    if ([v68 acquireWithError:v119])
    {
      goto LABEL_92;
    }

    v75 = [v119[0] domain];
    v120 = 0;
    v121 = &v120;
    v122 = 0x2020000000;
    v76 = qword_1ED4A7BB8;
    v123 = qword_1ED4A7BB8;
    if (!qword_1ED4A7BB8)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getRBSAssertionErrorDomainSymbolLoc_block_invoke;
      v130 = &unk_1E75202C0;
      *v131 = &v120;
      v77 = RunningBoardServicesLibrary_0();
      v78 = dlsym(v77, "RBSAssertionErrorDomain");
      *(*(*v131 + 8) + 24) = v78;
      qword_1ED4A7BB8 = *(*(*v131 + 8) + 24);
      v76 = *(v121 + 24);
    }

    _Block_object_dispose(&v120, 8);
    if (v76)
    {
      if ([v75 isEqualToString:*v76] && objc_msgSend(v119[0], "code") == 4)
      {
        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_136;
        v118[3] = &unk_1E7520220;
        v105 = *(a1 + 40);
        v106 = *(a1 + 48);
        v118[4] = v108;
        v118[5] = v105;
        v118[6] = a2;
        v118[7] = v119[0];
        v107 = *(a1 + 96);
        v118[8] = v106;
        v118[9] = v107;
        __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_136(v118);
      }

      v79 = BSServiceXPCErrorsLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        v87 = v108;
        if (v108)
        {
          v87 = v108[1];
        }

        v88 = *(a1 + 40);
        v89 = *(a2 + 8);
        *buf = 138544386;
        *&buf[4] = v87;
        *&buf[12] = 2114;
        *&buf[14] = v88;
        *&buf[22] = 2048;
        v130 = a2;
        *v131 = 2114;
        *&v131[2] = v119[0];
        *&v131[10] = 2114;
        *&v131[12] = v89;
        _os_log_error_impl(&dword_19A821000, v79, OS_LOG_TYPE_ERROR, "%{public}@ <%{public}@:%p> failed to acquire assertion : error=%{public}@ attributes=%{public}@", buf, 0x34u);
      }

LABEL_92:
      *(a2 + 10) = v74;
      v36 = *(a2 + 23);
      v35 = lock;
      goto LABEL_93;
    }

    a2 = [MEMORY[0x1E696AAA8] currentHandler];
    [a2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getRBSAssertionErrorDomain(void)") description:{@"BSXPCServiceConnectionProxy.m", 29, @"%s", dlerror()}];
    __break(1u);
LABEL_124:
    ;
  }

  if (v36 == -1)
  {
    v37 = v108;
    if (v108)
    {
      v37 = v108[1];
    }

    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> message tracking overflow", v37, *(a1 + 40), a2];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(*(a1 + 96));
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = *(a1 + 48);
      *buf = 138544642;
      *&buf[4] = v39;
      *&buf[12] = 2114;
      *&buf[14] = v41;
      *&buf[22] = 2048;
      v130 = v42;
      *v131 = 2114;
      *&v131[2] = @"BSXPCServiceConnectionProxy.m";
      *&v131[10] = 1024;
      *&v131[12] = 438;
      *&v131[16] = 2114;
      *&v131[18] = v38;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A837074);
  }

LABEL_93:
  *(a2 + 23) = v36 + 1;
  os_unfair_lock_unlock(v35);
  v43 = 1;
LABEL_33:
  if (*(a1 + 105) == 1)
  {
    if (v109)
    {
      v44 = v116;
      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_140;
      v116[3] = &unk_1E7520248;
      v117 = v43;
      v45 = *(a1 + 32);
      v116[4] = a2;
      v116[5] = v45;
      v116[6] = v113;
      v116[7] = v109;
      if (!v29)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (!v43)
      {
        goto LABEL_43;
      }

      v44 = newValue;
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_2;
      newValue[3] = &unk_1E7520270;
      newValue[4] = a2;
      if (!v29)
      {
        goto LABEL_43;
      }
    }

    objc_setProperty_nonatomic_copy(v29, v32, v44, 80);
LABEL_43:
    [v29 send];
    v48 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_105;
  }

  v46 = *(a1 + 80);
  if (v46)
  {
    v47 = v125[[v46 argumentIndex]];
    if (v47)
    {
      *v47 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

  v120 = 0;
  v51 = [v29 sendSynchronouslyWithError:&v120];
  if (v43)
  {
    [(BSXPCServiceConnectionProxy *)a2 _decrementInFlightMessageCounter];
  }

  if ([*(a1 + 88) isVoid])
  {
    if (v109)
    {
      v52 = *(a1 + 32);
      v53 = [v51 message];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ____BSXPCServiceConnection_IS_INVOKING_A_MESSAGE_REPLY_BLOCK___block_invoke;
      v130 = &unk_1E7520300;
      *v131 = v52;
      *&v131[8] = v53;
      *&v131[16] = v120;
      *&v131[24] = v113;
      *&v131[32] = v109;
      BSXPCServiceConnectionExecuteCallOut(v113, 0, buf);
    }
  }

  else if (v51)
  {
    if ([*(a1 + 88) isBoolean])
    {
      v49 = 0;
      v50 = [v51 decodeBoolForKey:@"BSXPCReturnValue"];
      if (!v47)
      {
        goto LABEL_103;
      }

      goto LABEL_76;
    }

    if ([*(a1 + 88) isObject])
    {
      v69 = [*(a1 + 88) objectClass];
      v70 = [*(a1 + 88) objectContainedClasses];
      if ([v70 count])
      {
        if ([v69 isSubclassOfClass:objc_opt_class()])
        {
          v71 = [v51 decodeDictionaryOfClass:objc_msgSend(v70 forKey:{"objectAtIndex:", 1), @"BSXPCReturnValue"}];
        }

        else
        {
          v71 = [v51 decodeCollectionOfClass:v69 containingClass:objc_msgSend(v70 forKey:{"firstObject"), @"BSXPCReturnValue"}];
        }
      }

      else
      {
        v71 = [v51 decodeObjectOfClass:v69 forKey:@"BSXPCReturnValue"];
      }

      v50 = v71;
      v84 = v71;
      v49 = 1;
      if (!v47)
      {
        goto LABEL_103;
      }

      goto LABEL_76;
    }
  }

  v49 = 0;
  v50 = 0;
  if (!v47)
  {
    goto LABEL_103;
  }

LABEL_76:
  if (!v120)
  {
    if (v51)
    {
      v72 = [v51 decodeObjectOfClass:objc_opt_class() forKey:@"BSXPCReturnError"];
      goto LABEL_80;
    }

LABEL_103:
    v48 = 0;
    goto LABEL_104;
  }

  v72 = v120;
LABEL_80:
  v48 = v72;
  *v47 = v72;
LABEL_104:
  [v51 invalidate];
LABEL_105:
  [v29 invalidate];
  if (v110)
  {
    os_unfair_lock_lock(lock);

    *(a2 + 2) = 0;
    os_unfair_lock_unlock(lock);
  }

  [v112 drain];
  v85 = v48;
  if (v49)
  {
    return v50;
  }

  return v50;
}

void __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_120(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> Encoding of %@ in <%@> failed: %@ -> %@", v3, *(a1 + 40), *(a1 + 48), *(a1 + 56), objc_msgSend(*(a1 + 64), "name"), objc_msgSend(*(a1 + 72), "description"), objc_msgSend(*(a1 + 72), "callStackSymbols")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 88));
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 80);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = @"BSXPCServiceConnectionProxy.m";
    v17 = 1024;
    v18 = 416;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
  JUMPOUT(0x19A837EECLL);
}

void __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_136(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = *(v2 + 8);
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@:%p> failed to acquire assertion : error=%@  attributes=%@", v2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(*(a1 + 48) + 64)];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 72));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 64);
    *buf = 138544642;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = @"BSXPCServiceConnectionProxy.m";
    v16 = 1024;
    v17 = 452;
    v18 = 2114;
    v19 = v3;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __71__BSXPCServiceConnectionProxy_createImplementationOfProtocol_forClass___block_invoke_140(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    [(BSXPCServiceConnectionProxy *)*(a1 + 32) _decrementInFlightMessageCounter];
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = [a2 message];
  v9 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ____BSXPCServiceConnection_IS_INVOKING_A_MESSAGE_REPLY_BLOCK___block_invoke;
  v10[3] = &unk_1E7520300;
  v10[7] = v9;
  v10[8] = v6;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = a3;
  BSXPCServiceConnectionExecuteCallOut(v9, 0, v10);
}

@end