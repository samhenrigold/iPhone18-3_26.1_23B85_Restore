@interface FaceTimePushHandler
+ (id)commandToHandlerBlock;
- (FaceTimePushHandler)initWithTopics:(id)topics;
- (NSData)pushToken;
- (void)_acceptIncomingPushes;
- (void)_ignoreIncomingPushes;
- (void)_updateListenerIfNeeded;
- (void)addListener:(id)listener;
- (void)configureAsMacNotificationCenterObserver:(id)observer;
- (void)dealloc;
- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context;
- (void)removeListener:(id)listener;
- (void)setRegistered:(BOOL)registered;
@end

@implementation FaceTimePushHandler

+ (id)commandToHandlerBlock
{
  if (qword_2814228B8 != -1)
  {
    sub_23BCC0594();
  }

  return qword_2814228B0;
}

- (FaceTimePushHandler)initWithTopics:(id)topics
{
  v6.receiver = self;
  v6.super_class = FaceTimePushHandler;
  v4 = [(FaceTimePushHandler *)&v6 init];
  if (v4)
  {
    v4->_topics = topics;
  }

  return v4;
}

- (void)dealloc
{
  v7 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], a2, v2, v3, v5, v4);
  objc_msgSend_removeListener_(v7, v8, self, v9, v11, v10);

  v12.receiver = self;
  v12.super_class = FaceTimePushHandler;
  [(FaceTimePushHandler *)&v12 dealloc];
}

- (NSData)pushToken
{
  if (!self->_registeredForPush)
  {
    return 0;
  }

  v7 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], a2, v2, v3, v6, v4);

  return objc_msgSend_pushToken(v7, v8, v9, v10, v12, v11);
}

- (void)_updateListenerIfNeeded
{
  if (self->_registeredForPush)
  {
    v65 = v4;
    v66 = v3;
    v67 = v2;
    v10 = objc_autoreleasePoolPush();
    v16 = objc_msgSend__pushTopics(self, v11, v12, v13, v15, v14);
    v22 = v16;
    if (self->_isListening || !objc_msgSend_count(v16, v17, v18, v19, v21, v20))
    {
      v50 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], v17, v18, v19, v21, v20, v7, v6, v5, v65, v66, v67);
      if (objc_msgSend_count(v22, v51, v52, v53, v55, v54))
      {
        v61 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v56, v22, v58, v60, v59);
      }

      else
      {
        v61 = objc_msgSend_set(MEMORY[0x277CBEB98], v56, v57, v58, v60, v59);
      }

      objc_msgSend_setTopics_forListener_(v50, v62, v61, self, v64, v63);
    }

    else
    {
      v23 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], v17, v18, v19, v21, v20);
      v28 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v24, v22, v25, v27, v26);
      v29 = MEMORY[0x277CBEB98];
      v30 = objc_opt_class();
      v36 = objc_msgSend_commandToHandlerBlock(v30, v31, v32, v33, v35, v34);
      v42 = objc_msgSend_allKeys(v36, v37, v38, v39, v41, v40);
      v47 = objc_msgSend_setWithArray_(v29, v43, v42, v44, v46, v45);
      objc_msgSend_addListener_topics_commands_queue_(v23, v48, self, v28, v49, v47, MEMORY[0x277D85CD0]);
      self->_isListening = 1;
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_acceptIncomingPushes
{
  if (!self->_registeredForPush)
  {
    self->_registeredForPush = 1;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_23BC9F000, v8, OS_LOG_TYPE_INFO, "Accepting incoming pushes", v9, 2u);
      }
    }

    objc_msgSend__updateListenerIfNeeded(self, v3, v4, v5, v7, v6);
  }
}

- (void)_ignoreIncomingPushes
{
  if (self->_registeredForPush)
  {
    self->_registeredForPush = 0;
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_23BC9F000, v3, OS_LOG_TYPE_INFO, "No longer accepting incoming pushes", v15, 2u);
      }
    }

    v4 = objc_autoreleasePoolPush();
    v10 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], v5, v6, v7, v9, v8);
    objc_msgSend_removeListener_(v10, v11, self, v12, v14, v13);
    self->_isListening = 0;
    objc_autoreleasePoolPop(v4);
  }
}

- (void)setRegistered:(BOOL)registered
{
  if (registered)
  {
    (MEMORY[0x2821F9670])(self, sel__acceptIncomingPushes, registered);
  }

  else
  {
    (MEMORY[0x2821F9670])(self, sel__ignoreIncomingPushes, registered);
  }
}

- (void)configureAsMacNotificationCenterObserver:(id)observer
{
  v7 = objc_msgSend_sharedInstance(MEMORY[0x277D18A00], a2, observer, v3, v5, v4);

  objc_msgSend_configureAsMacNotificationCenterObserver_(v7, v8, observer, v9, v11, v10);
}

- (void)addListener:(id)listener
{
  if ((objc_msgSend_containsObjectIdenticalTo_(self->_handlers, a2, listener, v3, v5, v4) & 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      handlers = objc_msgSend_nonRetainingArray(MEMORY[0x277CBEB18], v8, v9, v10, v12, v11);
      self->_handlers = handlers;
    }

    objc_msgSend_addObject_(handlers, v8, listener, v10, v12, v11);
  }
}

- (void)removeListener:(id)listener
{
  objc_msgSend_removeObjectIdenticalTo_(self->_handlers, a2, listener, v3, v5, v4);
  if (!objc_msgSend_count(self->_handlers, v7, v8, v9, v11, v10))
  {

    self->_handlers = 0;
  }
}

- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context
{
  v90 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_objectForKey_(message, a2, @"c", message, v7, topic, d, context);
  if (v11)
  {
    v17 = v11;
    v18 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v12, v13, v14, v16, v15);
    v22 = objc_msgSend_objectForKey_inDomain_(v18, v19, @"LDMGlobalEnabled", *MEMORY[0x277CCA208], v21, v20);
    if (objc_msgSend_BOOLValue(v22, v23, v24, v25, v27, v26))
    {
      v32 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        messageCopy = message;
        _os_log_impl(&dword_23BC9F000, v32, OS_LOG_TYPE_DEFAULT, "dropping push message: %@ for IMAV because lockdown mode is enabled", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }
    }

    else
    {
      v33 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x277D18A10], v28, 0, v29, v31, v30);
      v38 = objc_msgSend_objectForKey_(v33, v34, @"imav-disable-sunset", v35, v37, v36);
      if (v38)
      {
        v44 = objc_msgSend_BOOLValue(v38, v39, v40, v41, v43, v42);
      }

      else
      {
        v44 = 0;
      }

      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(messageCopy) = v44;
          _os_log_impl(&dword_23BC9F000, v45, OS_LOG_TYPE_INFO, "shouldNotSunsetValue %d", buf, 8u);
        }
      }

      if (!v44 && _os_feature_enabled_impl())
      {
        v46 = objc_opt_class();
        v51 = objc_msgSend_objectForKey_(message, v47, @"W", v48, v50, v49);
        if ((objc_opt_isKindOfClass() & 1) == 0 && v51)
        {
          v57 = objc_msgSend_registration(MEMORY[0x277D19298], v52, v53, v54, v56, v55);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            sub_23BCC05A8(v46, v57);
          }

          v51 = 0;
        }

        v58 = objc_msgSend__stripFZIDPrefix(v51, v52, v53, v54, v56, v55);
        v64 = objc_msgSend_sharedInstance(MEMORY[0x277D6EDF8], v59, v60, v61, v63, v62);
        if (objc_opt_respondsToSelector())
        {
          v69 = objc_msgSend_validateIMAVPush_(v64, v65, v58, v66, v68, v67);
          if (IMOSLoggingEnabled())
          {
            v75 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              LODWORD(messageCopy) = v69;
              _os_log_impl(&dword_23BC9F000, v75, OS_LOG_TYPE_INFO, "isValid: %d", buf, 8u);
            }
          }

          if ((v69 & 1) == 0 && objc_msgSend_integerValue(v17, v70, v71, v72, v74, v73) == 1)
          {
            v17 = &unk_284E75878;
          }
        }
      }

      v76 = objc_opt_class();
      v82 = objc_msgSend_commandToHandlerBlock(v76, v77, v78, v79, v81, v80);
      v87 = objc_msgSend_objectForKey_(v82, v83, v17, v84, v86, v85);
      if (v87)
      {
        (*(v87 + 16))(v87, self, topic, message);
      }
    }
  }
}

@end