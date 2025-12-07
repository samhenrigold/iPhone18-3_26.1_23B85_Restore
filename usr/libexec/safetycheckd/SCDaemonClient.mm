@interface SCDaemonClient
- (BOOL)hasBlockingAccess;
- (BOOL)hasSharingReminderAccess;
- (BOOL)hasSharingReminderFeatureAccess;
- (NSString)name;
- (SCDaemonClient)initWithConnection:(id)connection;
- (id)clientBundle;
@end

@implementation SCDaemonClient

- (SCDaemonClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = SCDaemonClient;
  v6 = [(SCDaemonClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, connection);
    v7->_pid = [connectionCopy processIdentifier];
  }

  return v7;
}

- (BOOL)hasSharingReminderAccess
{
  xpcConnection = [(SCDaemonClient *)self xpcConnection];
  v4 = [xpcConnection valueForEntitlement:kSCSharingRemindersEntitlement];
  if ([v4 BOOLValue])
  {
    hasSharingReminderFeatureAccess = 1;
  }

  else
  {
    hasSharingReminderFeatureAccess = [(SCDaemonClient *)self hasSharingReminderFeatureAccess];
  }

  return hasSharingReminderFeatureAccess;
}

- (BOOL)hasSharingReminderFeatureAccess
{
  xpcConnection = [(SCDaemonClient *)self xpcConnection];
  v3 = [xpcConnection valueForEntitlement:kSCSharingRemindersEntitlementInternal];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasBlockingAccess
{
  xpcConnection = [(SCDaemonClient *)self xpcConnection];
  v3 = [xpcConnection valueForEntitlement:kSafetyCheckWhenBlockingEntitlement];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)name
{
  if (self->_name)
  {
    goto LABEL_7;
  }

  clientBundle = [(SCDaemonClient *)self clientBundle];

  if (clientBundle)
  {
    bundleIdentifier = [(NSBundle *)self->_clientBundle bundleIdentifier];
LABEL_6:
    name = self->_name;
    self->_name = bundleIdentifier;

LABEL_7:
    v8 = self->_name;
    goto LABEL_8;
  }

  p_pid = &self->_pid;
  v6 = proc_name(self->_pid, buffer, 0x20u);
  if (v6 >= 1)
  {
    bundleIdentifier = [NSString stringWithUTF8String:buffer];
    goto LABEL_6;
  }

  v10 = sub_100002AF4(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000094BC(p_pid, v10);
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)clientBundle
{
  clientBundle = self->_clientBundle;
  if (clientBundle)
  {
    goto LABEL_4;
  }

  p_pid = &self->_pid;
  v5 = proc_pidpath(self->_pid, buffer, 0x1000u);
  if (v5 >= 1)
  {
    v6 = [NSString stringWithUTF8String:buffer];
    stringByDeletingLastPathComponent = [v6 stringByDeletingLastPathComponent];
    v8 = [NSBundle bundleWithPath:stringByDeletingLastPathComponent];
    v9 = self->_clientBundle;
    self->_clientBundle = v8;

    clientBundle = self->_clientBundle;
LABEL_4:
    v10 = clientBundle;
    goto LABEL_5;
  }

  v12 = sub_100002AF4(v5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100009538(p_pid, v12);
  }

  v10 = 0;
LABEL_5:

  return v10;
}

@end