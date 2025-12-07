@interface SDShareSheetUserDefaultsServer
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)activate;
- (void)invalidate;
- (void)requestFavoritesForActivityCategory:(int64_t)category completionHandler:(id)handler;
@end

@implementation SDShareSheetUserDefaultsServer

- (void)activate
{
  v2.receiver = self;
  v2.super_class = SDShareSheetUserDefaultsServer;
  [(SDXPCDaemon *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SDShareSheetUserDefaultsServer;
  [(SDXPCDaemon *)&v2 _invalidate];
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.sharesheet.userdefaults"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (isKindOfClass = [v4 BOOLValue], (isKindOfClass))
  {
    v6 = 1;
  }

  else
  {
    v7 = share_sheet_log(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000706A0(connectionCopy, v7);
    }

    v6 = 0;
  }

  return v6;
}

- (void)requestFavoritesForActivityCategory:(int64_t)category completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [_UIActivityUserDefaults alloc];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [UIActivity _stringFromActivityCategory:category];
  v10 = [v6 initWithUnderlyingUserDefaults:v7 activityDefaultsKey:v8];

  activityIdentifiersInUserOrder = [v10 activityIdentifiersInUserOrder];
  handlerCopy[2](handlerCopy, activityIdentifiersInUserOrder);
}

@end