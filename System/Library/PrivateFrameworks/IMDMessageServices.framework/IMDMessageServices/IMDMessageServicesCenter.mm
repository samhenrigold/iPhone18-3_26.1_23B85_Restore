@interface IMDMessageServicesCenter
+ (id)sharedInstance;
- (BOOL)_connect;
- (BOOL)_disconnect;
- (IMDMessageServicesCenter)init;
- (void)_disconnected;
- (void)_requestExpireStateWithGUID:(id)d handler:(id)handler;
- (void)_requestRoutingWithGUID:(id)d chatGUID:(id)iD downgradableServices:(id)services error:(unsigned int)error handler:(id)handler;
- (void)_requestScheduleMessagesWithGUID:(id)d handler:(id)handler;
- (void)_requestWatchdogWithGUID:(id)d handler:(id)handler;
- (void)dealloc;
- (void)requestExpireStateForMessageGuid:(id)guid completionBlock:(id)block;
- (void)requestExpireStateWithCompletion:(id)completion;
- (void)requestRoutingForMessageGuid:(id)guid inChat:(id)chat downgradableServices:(id)services error:(unsigned int)error completionBlock:(id)block;
- (void)requestRoutingWithDowngradableServices:(id)services completion:(id)completion;
- (void)requestScheduledMessageForGuid:(id)guid completionBlock:(id)block;
- (void)requestScheduledMessagesWithCompletion:(id)completion;
- (void)requestWatchdogForMessageGuid:(id)guid completionBlock:(id)block;
- (void)requestWatchdogWithCompletion:(id)completion;
@end

@implementation IMDMessageServicesCenter

+ (id)sharedInstance
{
  if (qword_28141B7D8 != -1)
  {
    sub_2547E4A68();
  }

  return qword_28141B7D0;
}

- (IMDMessageServicesCenter)init
{
  v3.receiver = self;
  v3.super_class = IMDMessageServicesCenter;
  return [(IMDMessageServicesCenter *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMDMessageServicesCenter;
  [(IMDMessageServicesCenter *)&v2 dealloc];
}

- (void)_disconnected
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&dword_2547E2000, v3, OS_LOG_TYPE_DEBUG, "Clearing out _connection, we're disconnected", v5, 2u);
    }
  }

  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    xpc_release(self->_connection);
    self->_connection = 0;
  }
}

- (BOOL)_disconnect
{
  if (self->_connection)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(&dword_2547E2000, v3, OS_LOG_TYPE_DEBUG, "Forcing a disconnect, terminating connection", v5, 2u);
      }
    }

    xpc_connection_cancel(self->_connection);
    xpc_release(self->_connection);
    self->_connection = 0;
  }

  return 1;
}

- (BOOL)_connect
{
  if (self->_connection)
  {
    return 1;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2547E2000, v4, OS_LOG_TYPE_INFO, "Connecting to message services agent", buf, 2u);
    }
  }

  self->_connection = IMXPCCreateConnectionForServiceWithQueue();
  IMXPCConfigureConnection();
  return self->_connection != 0;
}

- (void)_requestRoutingWithGUID:(id)d chatGUID:(id)iD downgradableServices:(id)services error:(unsigned int)error handler:(id)handler
{
  v8 = *&error;
  if ([(IMDMessageServicesCenter *)self _connect])
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    IMInsertStringsToXPCDictionary();
    uTF8String = v8;
    IMInsertIntsToXPCDictionary();
    if (d)
    {
      uTF8String = [d UTF8String];
      IMInsertStringsToXPCDictionary();
    }

    if (iD)
    {
      uTF8String = [iD UTF8String];
      IMInsertStringsToXPCDictionary();
    }

    if ([services count])
    {
      IMInsertArraysToXPCDictionary();
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2547E32DC;
    handler[3] = &unk_279788848;
    handler[4] = handler;
    xpc_connection_send_message_with_reply(self->_connection, v13, MEMORY[0x277D85CD0], handler);
    xpc_release(v13);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2547E2000, v14, OS_LOG_TYPE_INFO, "Unable to connect to message services agent", buf, 2u);
      }
    }

    if (handler)
    {
      (*(handler + 2))(handler, 0, 0.0);
    }
  }
}

- (void)requestRoutingWithDowngradableServices:(id)services completion:(id)completion
{
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2547E2000, v7, OS_LOG_TYPE_INFO, "MessageServices received request for routing", v8, 2u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestRoutingWithGUID:0 chatGUID:0 downgradableServices:services error:0 handler:completion];
}

- (void)requestRoutingForMessageGuid:(id)guid inChat:(id)chat downgradableServices:(id)services error:(unsigned int)error completionBlock:(id)block
{
  v8 = *&error;
  v18 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      guidCopy = guid;
      v16 = 1024;
      v17 = v8;
      _os_log_impl(&dword_2547E2000, v13, OS_LOG_TYPE_INFO, "MessageServices received request for routing for guid:%@  error:%d", &v14, 0x12u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestRoutingWithGUID:guid chatGUID:chat downgradableServices:services error:v8 handler:block];
}

- (void)_requestExpireStateWithGUID:(id)d handler:(id)handler
{
  if ([(IMDMessageServicesCenter *)self _connect])
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    IMInsertStringsToXPCDictionary();
    if (d)
    {
      [d UTF8String];
      IMInsertStringsToXPCDictionary();
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2547E3950;
    handler[3] = &unk_279788848;
    handler[4] = handler;
    xpc_connection_send_message_with_reply(self->_connection, v7, MEMORY[0x277D85CD0], handler);
    xpc_release(v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Unable to connect to message services agent", buf, 2u);
      }
    }

    if (handler)
    {
      (*(handler + 2))(handler, 0, 0.0);
    }
  }
}

- (void)requestExpireStateWithCompletion:(id)completion
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "MessageServices received request for expire state", v6, 2u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestExpireStateWithGUID:0 handler:completion];
}

- (void)requestExpireStateForMessageGuid:(id)guid completionBlock:(id)block
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      guidCopy = guid;
      _os_log_impl(&dword_2547E2000, v7, OS_LOG_TYPE_INFO, "MessageServices received request for expire state for guid: %@", &v8, 0xCu);
    }
  }

  [(IMDMessageServicesCenter *)self _requestExpireStateWithGUID:guid handler:block];
}

- (void)_requestWatchdogWithGUID:(id)d handler:(id)handler
{
  if ([(IMDMessageServicesCenter *)self _connect])
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    IMInsertStringsToXPCDictionary();
    if (d)
    {
      [d UTF8String];
      IMInsertStringsToXPCDictionary();
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2547E3F80;
    handler[3] = &unk_279788848;
    handler[4] = handler;
    xpc_connection_send_message_with_reply(self->_connection, v7, MEMORY[0x277D85CD0], handler);
    xpc_release(v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Unable to connect to message services agent", buf, 2u);
      }
    }

    if (handler)
    {
      (*(handler + 2))(handler, 0, 0.0);
    }
  }
}

- (void)requestWatchdogWithCompletion:(id)completion
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "MessageServices received request for watchdog", v6, 2u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestWatchdogWithGUID:0 handler:completion];
}

- (void)requestWatchdogForMessageGuid:(id)guid completionBlock:(id)block
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      guidCopy = guid;
      _os_log_impl(&dword_2547E2000, v7, OS_LOG_TYPE_INFO, "MessageServices received request for watchdog for guid: %@", &v8, 0xCu);
    }
  }

  [(IMDMessageServicesCenter *)self _requestWatchdogWithGUID:guid handler:block];
}

- (void)_requestScheduleMessagesWithGUID:(id)d handler:(id)handler
{
  if ([(IMDMessageServicesCenter *)self _connect])
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    IMInsertStringsToXPCDictionary();
    if (d)
    {
      [d UTF8String];
      IMInsertStringsToXPCDictionary();
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2547E45B4;
    handler[3] = &unk_279788848;
    handler[4] = handler;
    xpc_connection_send_message_with_reply(self->_connection, v7, MEMORY[0x277D85CD0], handler);
    xpc_release(v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2547E2000, v8, OS_LOG_TYPE_INFO, "Unable to connect to message services agent", buf, 2u);
      }
    }

    if (handler)
    {
      (*(handler + 2))(handler, 0, 60.0);
    }
  }
}

- (void)requestScheduledMessagesWithCompletion:(id)completion
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2547E2000, v5, OS_LOG_TYPE_INFO, "MessageServices received request for Schedule Messages", v6, 2u);
    }
  }

  [(IMDMessageServicesCenter *)self _requestScheduleMessagesWithGUID:0 handler:completion];
}

- (void)requestScheduledMessageForGuid:(id)guid completionBlock:(id)block
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      guidCopy = guid;
      _os_log_impl(&dword_2547E2000, v7, OS_LOG_TYPE_INFO, "MessageServices received request for Schedule Messages for guid: %@", &v8, 0xCu);
    }
  }

  [(IMDMessageServicesCenter *)self _requestScheduleMessagesWithGUID:guid handler:block];
}

@end