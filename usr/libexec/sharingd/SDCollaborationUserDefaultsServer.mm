@interface SDCollaborationUserDefaultsServer
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler;
- (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier;
@end

@implementation SDCollaborationUserDefaultsServer

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.collaboration.userdefaults"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (isKindOfClass = [v4 BOOLValue], (isKindOfClass))
  {
    v6 = share_sheet_log(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "shouldAcceptNewConnection for SDCollaborationUserDefaultsServer: YES", v9, 2u);
    }

    v7 = 1;
  }

  else
  {
    v6 = share_sheet_log(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100059974(connectionCopy, v6);
    }

    v7 = 0;
  }

  return v7;
}

- (void)connectionEstablished:(id)established
{
  v3 = share_sheet_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connectionEstablished for SDCollaborationUserDefaultsServer", v4, 2u);
  }
}

- (void)connectionInvalidated:(id)invalidated
{
  v3 = share_sheet_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "connectionInvalidated for SDCollaborationUserDefaultsServer", v4, 2u);
  }
}

- (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v7 = +[SFCollaborationUserDefaults sharedDefaults];
  v8 = [v7 existingCollaborativeModeForContentIdentifier:identifierCopy];

  handlerCopy[2](handlerCopy, v8);
}

- (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  modeCopy = mode;
  v8 = +[SFCollaborationUserDefaults sharedDefaults];
  bOOLValue = [modeCopy BOOLValue];

  [v8 setCollaborativeMode:bOOLValue contentIdentifier:identifierCopy];
}

@end