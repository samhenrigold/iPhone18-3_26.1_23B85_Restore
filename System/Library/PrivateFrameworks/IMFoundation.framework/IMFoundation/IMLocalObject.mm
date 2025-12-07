@interface IMLocalObject
+ (id)_imLocalObjectQueue;
+ (id)_imLocalObjectQueueTargetingWorkloop;
+ (id)_registeredIMLocalObjectForPort:(unsigned int)port;
+ (void)_registerIMLocalObject:(id)object;
+ (void)_unregisterIMLocalObject:(id)object;
+ (void)initialize;
- (BOOL)_handleInvocation:(id)invocation processingComponentQueue:(BOOL)queue;
- (BOOL)handleInvocation:(id)invocation;
- (BOOL)isSameConnection:(id)connection;
- (BOOL)isValid;
- (BOOL)isValidSelector:(SEL)selector;
- (BOOL)wasInterrupted;
- (IMLocalObject)initWithTarget:(id)target connection:(id)connection protocol:(id)protocol forceSecureCoding:(BOOL)coding offMainThread:(BOOL)thread;
- (IMLocalObject)initWithTarget:(id)target portName:(id)name protocol:(id)protocol;
- (NSArray)allowlistedClasses;
- (id)_peekInvocation;
- (id)description;
- (void)_clearPort:(BOOL)port signalRunLoopIfNeeded:(BOOL)needed;
- (void)_enqueueInvocation:(id)invocation xpcMessage:(id)message submitToComponentQueue:(BOOL)queue isSync:(BOOL)sync isReply:(BOOL)reply;
- (void)_enqueueInvocationWithPriority:(id)priority xpcMessage:(id)message priority:(int)a5;
- (void)_handleNewInvocations;
- (void)_noteNewInvocation:(BOOL)invocation;
- (void)_popInvocation;
- (void)_portDidBecomeInvalid;
- (void)_portInterrupted;
- (void)_systemShutdown:(id)shutdown;
- (void)dealloc;
- (void)invalidate;
- (void)setAllowlistedClasses:(id)classes;
- (void)setPortName:(id)name;
- (void)setProcessName:(id)name;
- (void)terminated;
@end

@implementation IMLocalObject

- (BOOL)isValid
{
  os_unfair_recursive_lock_lock_with_options();
  LOBYTE(self) = *(self->_internal + 4) != 0;
  os_unfair_recursive_lock_unlock();
  return self;
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    qword_1ED517530 = objc_alloc_init(MEMORY[0x1E696AD10]);
    qword_1ED517540 = objc_msgSend_nonRetainingArray(MEMORY[0x1E695DF70], v3, v4);
    IMRemoteObjectsRunLoopModes = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v5, *MEMORY[0x1E695DA28], *MEMORY[0x1E695D918], @"IMRemoteObjectsRunLoopMode", 0);
    objc_msgSend_sharedInstance(IMSystemMonitor, v6, v7);
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }
  }
}

- (BOOL)wasInterrupted
{
  os_unfair_recursive_lock_lock_with_options();
  LOBYTE(self) = *(self->_internal + 103);
  os_unfair_recursive_lock_unlock();
  return self;
}

- (void)invalidate
{
  os_unfair_recursive_lock_lock_with_options();
  internal = self->_internal;
  if ((internal[101] & 1) != 0 || internal[100] == 1)
  {
    if (internal[102] == 1)
    {
      if (_os_feature_enabled_impl() && im_primary_base_queue())
      {
        v11 = objc_opt_class();
        v14 = objc_msgSend__imLocalObjectQueueTargetingWorkloop(v11, v12, v13);
      }

      else
      {
        v23 = objc_opt_class();
        v14 = objc_msgSend__imLocalObjectQueue(v23, v24, v25);
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1959B6EB8;
      v28[3] = &unk_1E74394F8;
      v28[4] = self;
      dispatch_async(v14, v28);
    }

    else
    {
      v15 = qos_class_self();
      if (v15 <= QOS_CLASS_DEFAULT)
      {
        v16 = QOS_CLASS_DEFAULT;
      }

      else
      {
        v16 = v15;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1959B6EC0;
      block[3] = &unk_1E74394F8;
      block[4] = self;
      v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v16, 0, block);
      v18 = OSLogHandleForIDSCategory("IMLocalObject");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v18, OS_LOG_TYPE_DEFAULT, "******* trying to invalidate connection. Let's signal the runloop in case there is a pending history query", buf, 2u);
      }

      Main = CFRunLoopGetMain();
      CFRunLoopPerformBlock(Main, IMRemoteObjectsRunLoopModes, v17);
      CFRunLoopSourceSignal(*(self->_internal + 10));
      v20 = CFRunLoopGetMain();
      CFRunLoopWakeUp(v20);
      objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v21, self, sel_invalidate, 0);
      objc_msgSend_performSelector_withObject_afterDelay_inModes_(self, v22, sel_invalidate, 0, IMRemoteObjectsRunLoopModes, 0.0);
    }

    os_unfair_recursive_lock_unlock();
    return;
  }

  *(internal + 3) = 0;
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (dword_1ED517080)
  {
LABEL_18:
    _IMLog(@"* Invalidating IMLocalObject: %@ (connection=%p) busy: %d", v3, v4, v5, v6, v7, v8, v9, *(self->_internal + 6));
  }

LABEL_19:
  objc_msgSend__clearPort_signalRunLoopIfNeeded_(self, v3, 0, 1);

  os_unfair_recursive_lock_unlock();
}

+ (id)_imLocalObjectQueue
{
  if (qword_1ED5174B0 != -1)
  {
    sub_1959908DC();
  }

  return qword_1ED5174A8;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);
  internal = self->_internal;
  if (!internal)
  {
    goto LABEL_18;
  }

  v14 = &unk_1ED517000;
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
      v14 = &unk_1ED517000;
    }

    internal = self->_internal;
    if (v14[32] <= 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (dword_1ED517080)
  {
LABEL_4:
    _IMLog(@"* Dealloc IMLocalObject: %@", v6, v7, v8, v9, v10, v11, v12, internal[6]);
  }

LABEL_5:
  os_unfair_recursive_lock_lock_with_options();
  objc_msgSend__clearPort_(self, v15, 0);
  v16 = self->_internal;
  v17 = v16[7];
  if (v17)
  {
    CFRelease(v17);
    v16 = self->_internal;
  }

  v18 = v16[6];
  if (v18)
  {
    CFRelease(v18);
    v16 = self->_internal;
  }

  v19 = v16[8];
  if (v19)
  {
    CFRelease(v19);
    v16 = self->_internal;
  }

  v20 = v16[9];
  if (v20)
  {
    CFRelease(v20);
    v16 = self->_internal;
  }

  v21 = v16[10];
  if (v21)
  {
    CFRunLoopSourceInvalidate(v21);
    CFRelease(*(self->_internal + 10));
    v16 = self->_internal;
  }

  v22 = v16[5];
  if (v22)
  {
    dispatch_release(v22);
  }

  os_unfair_recursive_lock_unlock();

  self->_internal = 0;
LABEL_18:
  v23.receiver = self;
  v23.super_class = IMLocalObject;
  [(IMLocalObject *)&v23 dealloc];
}

- (void)_portDidBecomeInvalid
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    _IMLog(@"* IMLocalObject invalidation callback: %@", a2, v2, v3, v4, v5, v6, v7, *(self->_internal + 6));
  }

LABEL_4:

  objc_msgSend__clearPort_(self, a2, 0);
}

- (void)_portInterrupted
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    _IMLog(@"* IMLocalObject interrupted callback: %@", a2, v2, v3, v4, v5, v6, v7, *(self->_internal + 6));
  }

LABEL_4:
  os_unfair_recursive_lock_lock_with_options();
  *(self->_internal + 103) = 1;
  objc_msgSend_invalidate(self, v9, v10);

  os_unfair_recursive_lock_unlock();
}

- (id)_peekInvocation
{
  os_unfair_lock_lock(self->_internal + 24);
  if (objc_msgSend_count(*(self->_internal + 11), v3, v4))
  {
    v6 = objc_msgSend_objectAtIndex_(*(self->_internal + 11), v5, 0);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(self->_internal + 24);

  return v6;
}

- (void)_popInvocation
{
  os_unfair_lock_lock(self->_internal + 24);
  if (objc_msgSend_count(*(self->_internal + 11), v3, v4))
  {
    objc_msgSend_removeObjectAtIndex_(*(self->_internal + 11), v5, 0);
    if (!objc_msgSend_count(*(self->_internal + 11), v6, v7))
    {

      *(self->_internal + 11) = 0;
    }
  }

  v8 = (self->_internal + 96);

  os_unfair_lock_unlock(v8);
}

- (void)_handleNewInvocations
{
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (dword_1ED517080)
  {
LABEL_3:
    _IMLog(@"** Begin Handling available components (Local object: %@)", a2, v2, v3, v4, v5, v6, v7, self);
  }

LABEL_4:
  v9 = objc_msgSend__peekInvocation(self, a2, v2);
  v17 = v9 == 0;
  if (!v9)
  {
    goto LABEL_23;
  }

  v18 = v9;
  while (1)
  {
    objc_msgSend__popInvocation(self, v10, v11);
    if ((dword_1ED517080 & 0x80000000) == 0)
    {
      if (!dword_1ED517080)
      {
        goto LABEL_9;
      }

LABEL_8:
      v21 = objc_msgSend_first(v18, v19, v20);
      v24 = objc_msgSend_selector(v21, v22, v23);
      v25 = NSStringFromSelector(v24);
      _IMLog(@"** Incoming Invocation: %@ (Local object: %@)", v26, v27, v28, v29, v30, v31, v32, v25);
      goto LABEL_9;
    }

    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 > 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    if ((objc_msgSend_handleInvocation_(self, v19, v18) & 1) == 0)
    {
      break;
    }

    v18 = objc_msgSend__peekInvocation(self, v33, v34);
    v17 = v18 == 0;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

  os_unfair_lock_lock(self->_internal + 24);
  v36 = *(self->_internal + 11);
  if (!v36)
  {
    *(self->_internal + 11) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v36 = *(self->_internal + 11);
  }

  objc_msgSend_insertObject_atIndex_(v36, v35, v18, 0);
  os_unfair_lock_unlock(self->_internal + 24);
  v39 = objc_msgSend_first(v18, v37, v38);
  v42 = objc_msgSend_selector(v39, v40, v41);
  v43 = NSStringFromSelector(v42);
  _IMLog(@"**** FAILED DELIVERY (Will retry) Incoming Invocation: %@ (Local object: %@)", v44, v45, v46, v47, v48, v49, v50, v43);

LABEL_23:
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 > 0)
    {
LABEL_25:
      _IMLog(@"** End Handling available components (Local object: %@)", v10, v11, v12, v13, v14, v15, v16, self);
    }
  }

  else if (dword_1ED517080)
  {
    goto LABEL_25;
  }

  *(self->_internal + 100) = 0;
  if (!v17)
  {

    objc_msgSend__noteNewInvocation_(self, v10, 0);
  }
}

- (NSArray)allowlistedClasses
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(self->_internal + 9);
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_portName(self, v6, v7);
  v11 = objc_msgSend_processName(self, v9, v10);
  return objc_msgSend_stringWithFormat_(v3, v12, @"[%@] Port Name: %@ Process Name: %@", v5, v8, v11);
}

+ (id)_imLocalObjectQueueTargetingWorkloop
{
  if (qword_1EAED90D8 != -1)
  {
    sub_1959D57AC();
  }

  return qword_1EAED90E0;
}

+ (id)_registeredIMLocalObjectForPort:(unsigned int)port
{
  v20 = *MEMORY[0x1E69E9840];
  if (!port)
  {
    return 0;
  }

  objc_msgSend_lock(qword_1ED517530, a2, *&port);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = qword_1ED517540;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1ED517540, v5, &v15, v19, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend__port(v12, v7, v8) == port)
        {
          v13 = v12;
          goto LABEL_12;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:
  objc_msgSend_unlock(qword_1ED517530, v7, v8);
  return v12;
}

+ (void)_registerIMLocalObject:(id)object
{
  objc_msgSend_lock(qword_1ED517530, a2, object);
  objc_msgSend_addObject_(qword_1ED517540, v4, object);
  v7 = qword_1ED517530;

  objc_msgSend_unlock(v7, v5, v6);
}

+ (void)_unregisterIMLocalObject:(id)object
{
  objc_msgSend_lock(qword_1ED517530, a2, object);
  objc_msgSend_removeObjectIdenticalTo_(qword_1ED517540, v4, object);
  v7 = qword_1ED517530;

  objc_msgSend_unlock(v7, v5, v6);
}

- (IMLocalObject)initWithTarget:(id)target connection:(id)connection protocol:(id)protocol forceSecureCoding:(BOOL)coding offMainThread:(BOOL)thread
{
  v13 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, target);
  if (!objc_msgSend_systemIsShuttingDown(v13, v14, v15) && coding)
  {
    v46.receiver = self;
    v46.super_class = IMLocalObject;
    v19 = [(IMLocalObject *)&v46 init];
    if (!v19)
    {
      objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v18, 0);
      objc_msgSend_dealloc(0, v37, v38);
      return v19;
    }

    objc_msgSend__registerIMLocalObject_(IMLocalObject, v18, v19);
    v19->_internal = objc_alloc_init(IMLocalObjectInternal);
    if (dword_1ED517080 < 0)
    {
      if (qword_1ED517528 != -1)
      {
        sub_1959D57C0();
      }

      if (dword_1ED517080 <= 0)
      {
        goto LABEL_7;
      }
    }

    else if (!dword_1ED517080)
    {
LABEL_7:
      *(v19->_internal + 102) = thread;
      v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v30 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v28, v29);
      v33 = objc_msgSend_UTF8String(v30, v31, v32);
      *(v19->_internal + 5) = dispatch_queue_create(v33, v27);
      if (connection)
      {
        v35 = xpc_retain(connection);
      }

      else
      {
        v35 = 0;
      }

      *(v19->_internal + 4) = v35;
      if (!thread)
      {
        context.version = 0;
        context.info = v19;
        memset(&context.retain, 0, 64);
        *(v19->_internal + 10) = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, *(v19->_internal + 10), @"IMRemoteObjectsRunLoopMode");
      }

      v40 = *(v19->_internal + 4);
      if (v40)
      {
        im_configure_connection_with_local_object(v40, v19);
        *(v19->_internal + 3) = target;
        v41 = objc_alloc(MEMORY[0x1E696AE48]);
        *(v19->_internal + 8) = objc_msgSend_initWithProtocol_(v41, v42, protocol);
        *(v19->_internal + 6) = 0;
        *(v19->_internal + 2) = 0;
        *(v19->_internal + 24) = 0;
        os_unfair_lock_lock(v19->_internal + 24);
        *(v19->_internal + 11) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        os_unfair_lock_unlock(v19->_internal + 24);
        return v19;
      }

      objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v34, v19);
      internal = v19->_internal;
      v44 = internal[5];
      if (v44)
      {
        dispatch_release(v44);
        internal = v19->_internal;
      }

      v19->_internal = 0;
      return 0;
    }

    NSStringFromProtocol(protocol);
    _IMLog(@"* Creating IMLocalObject with target: %@  protocol: %@", v20, v21, v22, v23, v24, v25, v26, target);
    goto LABEL_7;
  }

  objc_msgSend_dealloc(self, v16, v17);
  return 0;
}

- (IMLocalObject)initWithTarget:(id)target portName:(id)name protocol:(id)protocol
{
  v9 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, target);
  if (objc_msgSend_systemIsShuttingDown(v9, v10, v11))
  {
    goto LABEL_2;
  }

  v43.receiver = self;
  v43.super_class = IMLocalObject;
  self = [(IMLocalObject *)&v43 init];
  if (!self)
  {
    objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v14, 0);
    objc_msgSend_dealloc(0, v36, v37);
    return self;
  }

  objc_msgSend__registerIMLocalObject_(IMLocalObject, v14, self);
  self->_internal = objc_alloc_init(IMLocalObjectInternal);
  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_1959D57C0();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (dword_1ED517080)
  {
LABEL_6:
    NSStringFromProtocol(protocol);
    _IMLog(@"* Creating IMLocalObject with target: %@  protocol: %@", v15, v16, v17, v18, v19, v20, v21, target);
  }

LABEL_7:
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1959B5D40;
  v42[3] = &unk_1E74394F8;
  v42[4] = self;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1959B5DE4;
  v41[3] = &unk_1E7439520;
  v41[4] = self;
  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v23, v24);
  v28 = objc_msgSend_UTF8String(v25, v26, v27);
  *(self->_internal + 5) = dispatch_queue_create(v28, v22);
  v31 = objc_msgSend_UTF8String(name, v29, v30);
  *(self->_internal + 4) = IMXPCCreateServerConnection(v31, v42, 0, v41, *(self->_internal + 5));
  v33 = *(self->_internal + 4);
  if (v33)
  {
    im_configure_connection_with_local_object(v33, self);
    xpc_connection_resume(*(self->_internal + 4));
    *(self->_internal + 3) = target;
    v34 = objc_alloc(MEMORY[0x1E696AE48]);
    *(self->_internal + 8) = objc_msgSend_initWithProtocol_(v34, v35, protocol);
    *(self->_internal + 6) = name;
    *(self->_internal + 2) = 0;
    *(self->_internal + 24) = 0;
    os_unfair_lock_lock(self->_internal + 24);
    *(self->_internal + 11) = 0;
    os_unfair_lock_unlock(self->_internal + 24);
    return self;
  }

  objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v32, self);
  internal = self->_internal;
  v40 = internal[5];
  if (v40)
  {
    dispatch_release(v40);
    internal = self->_internal;
  }

  self->_internal = 0;
LABEL_2:
  objc_msgSend_dealloc(self, v12, v13);
  return 0;
}

- (void)_clearPort:(BOOL)port signalRunLoopIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  portCopy = port;
  os_unfair_recursive_lock_lock_with_options();
  *(self->_internal + 3) = 0;
  internal = self->_internal;
  v8 = *(internal + 4);
  if (!v8 || (v9 = internal[102], xpc_connection_cancel(v8), xpc_release(*(self->_internal + 4)), *(self->_internal + 4) = 0, objc_msgSend__unregisterIMLocalObject_(IMLocalObject, v10, self), portCopy))
  {

    os_unfair_recursive_lock_unlock();
    return;
  }

  if (dword_1ED517080 < 0)
  {
    if (qword_1ED517528 != -1)
    {
      sub_19598C678();
    }

    if (dword_1ED517080 <= 0)
    {
      goto LABEL_9;
    }
  }

  else if (!dword_1ED517080)
  {
    goto LABEL_9;
  }

  _IMLog(@"* IMLocalObject posting death notification: %@", v11, v12, v13, v14, v15, v16, v17, self);
LABEL_9:
  os_unfair_recursive_lock_unlock();
  if (v9)
  {
    if (_os_feature_enabled_impl() && im_primary_base_queue())
    {
      v18 = objc_opt_class();
      v21 = objc_msgSend__imLocalObjectQueueTargetingWorkloop(v18, v19, v20);
    }

    else
    {
      v36 = objc_opt_class();
      v21 = objc_msgSend__imLocalObjectQueue(v36, v37, v38);
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1959B61BC;
    v41[3] = &unk_1E74394F8;
    v41[4] = self;
    dispatch_async(v21, v41);
  }

  else
  {
    Main = CFRunLoopGetMain();
    if (neededCopy && (v25 = Main, CFRunLoopIsWaiting(Main)) && (v26 = CFRunLoopCopyCurrentMode(v25), objc_msgSend_isEqualToString_(v26, v27, @"IMRemoteObjectsRunLoopMode")))
    {
      v28 = qos_class_self();
      if (v28 <= QOS_CLASS_DEFAULT)
      {
        v29 = QOS_CLASS_DEFAULT;
      }

      else
      {
        v29 = v28;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1959B6204;
      block[3] = &unk_1E74394F8;
      block[4] = self;
      v30 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v29, 0, block);
      v31 = OSLogHandleForIDSCategory("IMLocalObject");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v31, OS_LOG_TYPE_DEFAULT, "_clearPort trying to wake up main thread", buf, 2u);
      }

      v32 = CFRunLoopGetMain();
      CFRunLoopPerformBlock(v32, IMRemoteObjectsRunLoopModes, v30);
      CFRunLoopSourceSignal(*(self->_internal + 10));
      v33 = CFRunLoopGetMain();
      CFRunLoopWakeUp(v33);
    }

    else
    {
      v34 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24);

      objc_msgSend___mainThreadPostNotificationName_object_(v34, v35, @"IMLocalObjectDidDisconnect", self);
    }
  }
}

- (void)terminated
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    _IMLog(@"* Received termination notice for IMLocalObject: %@ (connection=%p) busy: %d", a2, v2, v3, v4, v5, v6, v7, *(self->_internal + 6));
  }

LABEL_4:

  objc_msgSend__clearPort_(self, a2, 0);
}

- (void)_systemShutdown:(id)shutdown
{
  if ((dword_1ED517080 & 0x80000000) == 0)
  {
    if (!dword_1ED517080)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (qword_1ED517528 != -1)
  {
    sub_19598C678();
  }

  if (dword_1ED517080 > 0)
  {
LABEL_3:
    _IMLog(@"* Received shutdown notice for IMLocalObject: %@ (connection=%p) busy: %d", a2, shutdown, v3, v4, v5, v6, v7, *(self->_internal + 6));
  }

LABEL_4:

  objc_msgSend__clearPort_(self, a2, 1);
}

- (void)setPortName:(id)name
{
  v3 = *(self->_internal + 6);
  if (v3 != name)
  {

    *(self->_internal + 6) = name;
  }
}

- (void)setProcessName:(id)name
{
  v3 = *(self->_internal + 7);
  if (v3 != name)
  {

    *(self->_internal + 7) = name;
  }
}

- (BOOL)_handleInvocation:(id)invocation processingComponentQueue:(BOOL)queue
{
  queueCopy = queue;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = sub_1959968D0;
  v51 = sub_195996EC8;
  v52 = objc_msgSend_first(invocation, a2, invocation);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3052000000;
  v44 = sub_1959968D0;
  v45 = sub_195996EC8;
  v46 = objc_msgSend_second(invocation, v7, v8);
  internal = self->_internal;
  if (!internal[3])
  {
    goto LABEL_14;
  }

  if (!queueCopy)
  {
    goto LABEL_6;
  }

  if ((*(internal + 101) & 1) == 0)
  {
    if (objc_msgSend_selector(v48[5], v9, v10) != sel_terminated)
    {
LABEL_6:
      CFRetain(self);
      v17 = objc_msgSend_selector(v48[5], v15, v16);
      if (objc_msgSend_isValidSelector_(self, v18, v17) && objc_msgSend_isValid(self, v19, v20))
      {
        if (queueCopy)
        {
          *(self->_internal + 101) = 1;
          *(self->_internal + 1) = v42[5];
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v35 = sub_1959B6754;
        v36 = &unk_1E7439548;
        selfCopy = self;
        v38 = &v47;
        v39 = &v41;
        v40 = queueCopy;
        if (queueCopy)
        {
          objc_msgSend_voucher(v42[5], v19, v20);
          voucher_adopt();
        }

        v35(v34);
        if (queueCopy)
        {
          v31 = v42[5];
          v32 = voucher_adopt();
          objc_msgSend_setVoucher_(v31, v33, v32);
          *(self->_internal + 101) = 0;
        }
      }

      else
      {
        v21 = v48[5];
        v22 = objc_msgSend_selector(v21, v19, v20);
        NSStringFromSelector(v22);
        _IMLog(@"Incoming invocation [%@:%@] does not conform to protocol", v23, v24, v25, v26, v27, v28, v29, v21);
      }

      CFRelease(self);
      goto LABEL_14;
    }

    objc_msgSend_terminated(self, v13, v14);
LABEL_14:
    v12 = 1;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_15:
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
  return v12;
}

- (BOOL)handleInvocation:(id)invocation
{
  v3 = *(self->_internal + 101);
  if ((v3 & 1) == 0)
  {
    objc_msgSend__handleInvocation_(self, a2, invocation);
  }

  return v3 ^ 1;
}

- (void)_noteNewInvocation:(BOOL)invocation
{
  invocationCopy = invocation;
  if (!invocation)
  {
    internal = self->_internal;
    if (internal[100])
    {
      return;
    }

    internal[100] = 1;
  }

  v6 = qos_class_self();
  if (v6 <= QOS_CLASS_DEFAULT)
  {
    v7 = QOS_CLASS_DEFAULT;
  }

  else
  {
    v7 = v6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959B6A88;
  block[3] = &unk_1E74394F8;
  block[4] = self;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7, 0, block);
  v9 = v8;
  if (*(self->_internal + 102) == 1)
  {
    if (_os_feature_enabled_impl() && im_primary_base_queue())
    {
      v10 = objc_opt_class();
      v13 = objc_msgSend__imLocalObjectQueueTargetingWorkloop(v10, v11, v12);
    }

    else
    {
      v14 = objc_opt_class();
      v13 = objc_msgSend__imLocalObjectQueue(v14, v15, v16);
    }

    v17 = v13;
    if (invocationCopy && _os_feature_enabled_impl())
    {
      dispatch_sync(v17, v9);
    }

    else
    {
      dispatch_async(v17, v9);
    }
  }

  else if (invocationCopy)
  {
    (*(v8 + 2))(v8);
  }

  else
  {
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, IMRemoteObjectsRunLoopModes, v9);
    CFRunLoopSourceSignal(*(self->_internal + 10));
    v19 = CFRunLoopGetMain();
    CFRunLoopWakeUp(v19);
  }

  _Block_release(v9);
}

- (void)_enqueueInvocation:(id)invocation xpcMessage:(id)message submitToComponentQueue:(BOOL)queue isSync:(BOOL)sync isReply:(BOOL)reply
{
  if (invocation)
  {
    replyCopy = reply;
    syncCopy = sync;
    queueCopy = queue;
    v27 = objc_alloc_init(IMMessageContext);
    kdebug_trace();
    if (message)
    {
      objc_msgSend_setXpcMessage_(v27, v13, message);
    }

    objc_msgSend_setLocalObject_(v27, v13, self);
    if (replyCopy)
    {
      objc_msgSend_setReply_(v27, v14, 1);
    }

    v16 = objc_msgSend_selector(invocation, v14, v15);
    if (v16 != sel_release && v16 != sel_retain && v16 != sel_init && v16 != sel_copy && v16 != sel_dealloc && v16 != sel_invalidate)
    {
      objc_msgSend_retainArguments(invocation, v17, v18);
      if (queueCopy)
      {
        os_unfair_lock_lock(self->_internal + 24);
        v21 = *(self->_internal + 11);
        if (!v21)
        {
          *(self->_internal + 11) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          v21 = *(self->_internal + 11);
        }

        second = objc_msgSend_pairWithFirst_second_(IMPair, v20, invocation, v27);
        objc_msgSend_addObject_(v21, v23, second);
        os_unfair_lock_unlock(self->_internal + 24);
        objc_msgSend__noteNewInvocation_(self, v24, syncCopy);
      }

      else
      {
        v25 = objc_msgSend_pairWithFirst_second_(IMPair, v19, invocation, v27);
        objc_msgSend__handleInvocation_processingComponentQueue_(self, v26, v25, 0);
      }
    }
  }
}

- (void)_enqueueInvocationWithPriority:(id)priority xpcMessage:(id)message priority:(int)a5
{
  if (priority)
  {
    if (objc_msgSend_selector(priority, a2, priority, message, *&a5) != sel_sendMessageWithSendParameters_)
    {
      sub_1959D57E8();
    }

    MEMORY[0x1EEE66B58](self, sel__enqueueInvocation_xpcMessage_submitToComponentQueue_isSync_isReply_, priority);
  }
}

- (BOOL)isValidSelector:(SEL)selector
{
  if (sel_terminated == selector || sel_respondsToSelector_ == selector)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v6 = objc_msgSend_protocol(*(self->_internal + 8), a2, selector);
    name = protocol_getMethodDescription(v6, selector, 1, 1).name;
    if (name || (v4 = protocol_getMethodDescription(v6, selector, 0, 1).name) != 0)
    {
      if (protocol_getMethodDescription(&unk_1F09E56A8, selector, 1, 1).name)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        LOBYTE(v4) = protocol_getMethodDescription(&unk_1F09E56A8, selector, 0, 1).name == 0;
      }
    }
  }

  return v4;
}

- (BOOL)isSameConnection:(id)connection
{
  os_unfair_recursive_lock_lock_with_options();
  LOBYTE(connection) = *(self->_internal + 4) == connection;
  os_unfair_recursive_lock_unlock();
  return connection;
}

- (void)setAllowlistedClasses:(id)classes
{
  os_unfair_recursive_lock_lock_with_options();
  v5 = *(self->_internal + 9);
  if (v5 != classes)
  {

    *(self->_internal + 9) = classes;
  }

  os_unfair_recursive_lock_unlock();
}

@end