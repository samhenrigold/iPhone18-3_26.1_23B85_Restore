@interface _ASAgentCredentialSharingGroupsListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_ASAgentCredentialSharingGroupsListener)init;
@end

@implementation _ASAgentCredentialSharingGroupsListener

- (_ASAgentCredentialSharingGroupsListener)init
{
  v10.receiver = self;
  v10.super_class = _ASAgentCredentialSharingGroupsListener;
  v2 = [(_ASAgentCredentialSharingGroupsListener *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(ASCredentialSharingGroupsNotificationManager);
    notificationManager = v2->_notificationManager;
    v2->_notificationManager = v3;

    v5 = objc_alloc(MEMORY[0x1E696B0D8]);
    v6 = [v5 initWithMachServiceName:*MEMORY[0x1E69C8AE8]];
    listener = v2->_listener;
    v2->_listener = v6;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v8 = v2;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  HasEntitlement = WBSAuditTokenHasEntitlement();
  v11 = HasEntitlement;
  if (HasEntitlement)
  {
    v12 = WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface();
    [v8 setExportedInterface:{v12, 0, 0, 0, 0}];

    [v8 setExportedObject:self->_notificationManager];
    [v8 resume];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(HasEntitlement, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [_ASAgentCredentialSharingGroupsListener listener:v13 shouldAcceptNewConnection:?];
    }
  }

  return v11;
}

@end