@interface misCTClientDelegates
- (void)connectionActivationError:(id)error connection:(int)connection error:(int)a5;
- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info;
- (void)subscriptionInfoDidChange;
- (void)tetheringStatus:(id)status connectionType:(int)type;
@end

@implementation misCTClientDelegates

- (void)tetheringStatus:(id)status connectionType:(int)type
{
  sub_100001108(1u, "tetheringStatus notification");
  if (type == 4)
  {
    v7 = +[misCTClientSharedInstance sharedInstance];

    [(misCTClientSharedInstance *)v7 processCTTetheringStatusChangeNotification:status];
  }

  else
  {
    uTF8String = [NSStringFromSelector(a2) UTF8String];
    sub_100001108(1u, "%s: ignoring unknown connection type %d", uTF8String, type);
  }
}

- (void)connectionStateChanged:(id)changed connection:(int)connection dataConnectionStatusInfo:(id)info
{
  v6 = *&connection;
  memset(v8, 0, sizeof(v8));
  sub_100001108(1u, "connectionStateChanged notification, connection type: %d", connection);
  [+[misCTClientSharedInstance sharedInstance](misCTClientSharedInstance processCTConnectionStateChangeNotification:"processCTConnectionStateChangeNotification:connection:connectionStatus:ctInterfaceConnStatus:" connection:changed connectionStatus:v6 ctInterfaceConnStatus:info, v8];
}

- (void)connectionActivationError:(id)error connection:(int)connection error:(int)a5
{
  if (connection == 4)
  {
    if ((a5 + 9) > 0x75)
    {
      v5 = "???";
    }

    else
    {
      v5 = off_100031168[a5 + 9];
    }

    sub_100001108(0, "connectionActivationError: %s (%d)", v5, a5);
    v6 = +[misCTClientSharedInstance sharedInstance];

    [(misCTClientSharedInstance *)v6 processCTConnectionActivationError];
  }

  else
  {
    sub_100001108(1u, "connectionActivationError %d on unknown connection type %d", a5, connection);
  }
}

- (void)subscriptionInfoDidChange
{
  v2 = +[misCTClientSharedInstance sharedInstance];

  [(misCTClientSharedInstance *)v2 _updateDualSimStatus];
}

@end