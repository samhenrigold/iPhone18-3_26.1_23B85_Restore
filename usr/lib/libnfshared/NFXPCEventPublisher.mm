@interface NFXPCEventPublisher
- (NFXPCEventPublisher)initWithStreamName:(id)name queue:(id)queue;
- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)sendXpcNotificationEvent:(id)event;
- (void)sendXpcNotificationEventWithDictionary:(id)dictionary;
- (void)sendXpcNotificationEventWithString:(id)string;
@end

@implementation NFXPCEventPublisher

- (NFXPCEventPublisher)initWithStreamName:(id)name queue:(id)queue
{
  v50 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  queueCopy = queue;
  v42.receiver = self;
  v42.super_class = NFXPCEventPublisher;
  v10 = [(NFXPCEventPublisher *)&v42 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v10->_streamName, name);
  objc_storeStrong(&v11->_queue, queue);
  v12 = nameCopy;
  objc_msgSend_UTF8String(v12, v13, v14);
  v15 = xpc_event_publisher_create();
  publisher = v11->_publisher;
  v11->_publisher = v15;

  v17 = objc_opt_new();
  pendingSendEvents = v11->_pendingSendEvents;
  v11->_pendingSendEvents = v17;

  v19 = objc_opt_new();
  tokens = v11->_tokens;
  v11->_tokens = v19;

  if (v11->_publisher)
  {
    objc_initWeak(&location, v11);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_22EEC837C;
    v40[3] = &unk_2788729B8;
    objc_copyWeak(&v41, &location);
    v21 = MEMORY[0x2318FA9A0](v40);
    xpc_event_publisher_set_handler();
    objc_copyWeak(v39, &location);
    v39[1] = a2;
    v38 = nameCopy;
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();

    objc_destroyWeak(v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
LABEL_4:
    v22 = v11;
    goto LABEL_16;
  }

  v23 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (specific >= 5)
  {
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v25 = off_27DA9DE50[specific];
  if (v25)
  {
    Class = object_getClass(v11);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v11);
    Name = sel_getName(a2);
    v29 = 45;
    if (isMetaClass)
    {
      v29 = 43;
    }

    v25(3, "%c[%{public}s %{public}s]:%i Could not create the Publisher!!!", v29, ClassName, Name, 65);
    v23 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v30 = dispatch_get_specific(v23);
  v31 = NFSharedLogGetLogger(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = object_getClass(v11);
    if (class_isMetaClass(v32))
    {
      v33 = 43;
    }

    else
    {
      v33 = 45;
    }

    v34 = object_getClassName(v11);
    v35 = sel_getName(a2);
    LODWORD(location) = 67109890;
    HIDWORD(location) = v33;
    v44 = 2082;
    v45 = v34;
    v46 = 2082;
    v47 = v35;
    v48 = 1024;
    v49 = 65;
    _os_log_impl(&dword_22EEC4000, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Could not create the Publisher!!!", &location, 0x22u);
  }

  v22 = 0;
LABEL_16:

  return v22;
}

- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v6 = *&action;
  v76 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v11 = descriptorCopy;
  if (descriptorCopy)
  {
    v12 = MEMORY[0x2318FACF0](descriptorCopy);
    if (v12)
    {
      free(v12);
    }
  }

  switch(v6)
  {
    case 0:
      tokens = self->_tokens;
      v33 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v10, token);
      objc_msgSend_addObject_(tokens, v43, v33);
      goto LABEL_27;
    case 1:
      v40 = self->_tokens;
      v33 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v10, token);
      objc_msgSend_removeObject_(v40, v41, v33);
LABEL_27:

      goto LABEL_39;
    case 2:
      v13 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific < 5)
      {
        v15 = off_27DA9DE50[specific];
        if (v15)
        {
          Class = object_getClass(self);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(self);
          Name = sel_getName(a2);
          v20 = 45;
          if (isMetaClass)
          {
            v20 = 43;
          }

          v15(6, "%c[%{public}s %{public}s]:%i XPC event publisher for stream %@ received initial barrier", v20, ClassName, Name, 86, self->_streamName);
          v13 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v21 = dispatch_get_specific(v13);
        v22 = NFSharedLogGetLogger(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = object_getClass(self);
          if (class_isMetaClass(v23))
          {
            v24 = 43;
          }

          else
          {
            v24 = 45;
          }

          v25 = object_getClassName(self);
          v26 = sel_getName(a2);
          streamName = self->_streamName;
          *buf = 67110146;
          v64 = v24;
          v65 = 2082;
          v66 = v25;
          v67 = 2082;
          v68 = v26;
          v69 = 1024;
          v70 = 86;
          v71 = 2112;
          v72 = streamName;
          _os_log_impl(&dword_22EEC4000, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XPC event publisher for stream %@ received initial barrier", buf, 0x2Cu);
        }

        self->_receivedInitialBarrier = 1;
        v30 = objc_msgSend_copy(self->_pendingSendEvents, v28, v29);
        objc_msgSend_removeAllObjects(self->_pendingSendEvents, v31, v32);
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v33 = v30;
        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v59, v75, 16);
        if (v35)
        {
          v37 = v35;
          v38 = *v60;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v60 != v38)
              {
                objc_enumerationMutation(v33);
              }

              objc_msgSend_sendXpcNotificationEvent_(self, v36, *(*(&v59 + 1) + 8 * i));
            }

            v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v59, v75, 16);
          }

          while (v37);
        }

        goto LABEL_27;
      }

LABEL_40:
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v44 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v45 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v45 >= 5)
  {
    goto LABEL_40;
  }

  v46 = off_27DA9DE50[v45];
  if (v46)
  {
    v47 = object_getClass(self);
    v48 = class_isMetaClass(v47);
    v49 = object_getClassName(self);
    v50 = sel_getName(a2);
    v51 = 45;
    if (v48)
    {
      v51 = 43;
    }

    v46(4, "%c[%{public}s %{public}s]:%i XPC event publisher for stream %@ with action = %d", v51, v49, v50, 101, self->_streamName, v6);
    v44 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v52 = dispatch_get_specific(v44);
  v53 = NFSharedLogGetLogger(v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = object_getClass(self);
    if (class_isMetaClass(v54))
    {
      v55 = 43;
    }

    else
    {
      v55 = 45;
    }

    v56 = object_getClassName(self);
    v57 = sel_getName(a2);
    v58 = self->_streamName;
    *buf = 67110402;
    v64 = v55;
    v65 = 2082;
    v66 = v56;
    v67 = 2082;
    v68 = v57;
    v69 = 1024;
    v70 = 101;
    v71 = 2112;
    v72 = v58;
    v73 = 1024;
    v74 = v6;
    _os_log_impl(&dword_22EEC4000, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC event publisher for stream %@ with action = %d", buf, 0x32u);
  }

LABEL_39:
}

- (void)sendXpcNotificationEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22EEC8B20;
  block[3] = &unk_278872A08;
  block[4] = self;
  v9 = eventCopy;
  v10 = a2;
  v7 = eventCopy;
  dispatch_async(queue, block);
}

- (void)sendXpcNotificationEventWithString:(id)string
{
  stringCopy = string;
  xdict = xpc_dictionary_create(0, 0, 0);
  v5 = stringCopy;
  v8 = objc_msgSend_UTF8String(v5, v6, v7);

  xpc_dictionary_set_string(xdict, "Payload", v8);
  objc_msgSend_sendXpcNotificationEvent_(self, v9, xdict);
}

- (void)sendXpcNotificationEventWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  v6 = v5;
  if (v5)
  {
    if (xpc_dictionary_get_count(v5))
    {
      objc_msgSend_sendXpcNotificationEvent_(self, v7, v6);
    }
  }

  else
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = off_27DA9DE50[specific];
    if (v10)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i Unable to create event dictionary; dropping event", v14, ClassName, Name, 132);
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v15 = dispatch_get_specific(v8);
    v16 = NFSharedLogGetLogger(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      v21 = v18;
      v22 = 2082;
      v23 = object_getClassName(self);
      v24 = 2082;
      v25 = sel_getName(a2);
      v26 = 1024;
      v27 = 132;
      _os_log_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to create event dictionary; dropping event", buf, 0x22u);
    }
  }
}

@end