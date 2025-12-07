@interface CUTNetworkInterfaceListener
+ (id)sharedInstance;
- (CUTNetworkInterfaceListener)init;
- (void)_handleNetworkChange:(id)change;
- (void)_notifyDelegatesOfAddressChange:(id)change isIPv6:(BOOL)pv6;
- (void)_notifyDelegatesOfCellChange:(int)change;
- (void)_notifyDelegatesOfWifiChange:(int)change;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
@end

@implementation CUTNetworkInterfaceListener

+ (id)sharedInstance
{
  if (qword_1ED4AE450 != -1)
  {
    sub_1B2331004();
  }

  v3 = qword_1EB7AAD40;

  return v3;
}

- (CUTNetworkInterfaceListener)init
{
  v14.receiver = self;
  v14.super_class = CUTNetworkInterfaceListener;
  v2 = [(CUTNetworkInterfaceListener *)&v14 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    *(v2 + 4) = -1;
    v4 = dispatch_queue_create("com.apple.cut.delegate", 0);
    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    context.version = 0;
    context.info = v2;
    context.retain = MEMORY[0x1E695D7C8];
    context.release = MEMORY[0x1E695D7C0];
    context.copyDescription = 0;
    v6 = SCDynamicStoreCreate(0, @"com.apple.cutnetworkinterfacelistener", sub_1B2326370, &context);
    *(v2 + 1) = v6;
    if (v6)
    {
      v8 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v7, @"State:/Network/Interface/[^/]+/IPv4", @"State:/Network/Interface/[^/]+/IPv6", 0);
      if (SCDynamicStoreSetNotificationKeys(*(v2 + 1), 0, v8))
      {
        v9 = *(v2 + 1);
        v10 = dispatch_get_global_queue(0, 0);
        SCDynamicStoreSetDispatchQueue(v9, v10);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          sub_1B2331018();
        }

        CFRelease(*(v2 + 1));
        *(v2 + 1) = 0;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1B2331060();
    }

    objc_autoreleasePoolPop(v3);
    v11 = v2;
  }

  return v2;
}

- (void)dealloc
{
  CFRelease(self->_dynamicStore);
  v3.receiver = self;
  v3.super_class = CUTNetworkInterfaceListener;
  [(CUTNetworkInterfaceListener *)&v3 dealloc];
}

- (void)_handleNetworkChange:(id)change
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = change;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v28, v32, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v29;
    v26 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        hasPrefix = objc_msgSend_hasPrefix_(v10, v6, @"State:/Network/Interface/en", v26);
        v13 = objc_msgSend_hasPrefix_(v10, v12, @"State:/Network/Interface/pdp_ip");
        v14 = v13;
        if ((hasPrefix & 1) != 0 || v13)
        {
          hasSuffix = objc_msgSend_hasSuffix_(v10, v6, @"/IPv6");
          v16 = SCDynamicStoreCopyValue(self->_dynamicStore, v10);
          if (v16)
          {
            v17 = v16;
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v17))
            {
              v20 = objc_msgSend_objectForKey_(v17, v19, @"Addresses");
              v21 = objc_alloc(MEMORY[0x1E695DFD8]);
              v23 = objc_msgSend_initWithArray_(v21, v22, v20);
              objc_msgSend__notifyDelegatesOfAddressChange_isIPv6_(self, v24, v23, hasSuffix);
            }

            CFRelease(v17);
            v25 = 1;
            v8 = v26;
            if (v14)
            {
LABEL_12:
              objc_msgSend__notifyDelegatesOfCellChange_(self, v6, v25);
              continue;
            }
          }

          else
          {
            v25 = 0;
            if (v14)
            {
              goto LABEL_12;
            }
          }

          if (hasPrefix)
          {
            objc_msgSend__notifyDelegatesOfWifiChange_(self, v6, v25);
          }
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v28, v32, 16);
    }

    while (v7);
  }
}

- (void)_notifyDelegatesOfWifiChange:(int)change
{
  delegateQueue = self->_delegateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B232664C;
  v4[3] = &unk_1E7B20D20;
  v4[4] = self;
  changeCopy = change;
  dispatch_async(delegateQueue, v4);
}

- (void)_notifyDelegatesOfCellChange:(int)change
{
  delegateQueue = self->_delegateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B2326800;
  v4[3] = &unk_1E7B20D20;
  v4[4] = self;
  changeCopy = change;
  dispatch_async(delegateQueue, v4);
}

- (void)_notifyDelegatesOfAddressChange:(id)change isIPv6:(BOOL)pv6
{
  changeCopy = change;
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B23269E4;
  block[3] = &unk_1E7B20D48;
  pv6Copy = pv6;
  block[4] = self;
  v10 = changeCopy;
  v8 = changeCopy;
  dispatch_async(delegateQueue, block);
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B2326BF8;
  v7[3] = &unk_1E7B20D70;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B2326D14;
  v7[3] = &unk_1E7B20D70;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(delegateQueue, v7);
}

@end