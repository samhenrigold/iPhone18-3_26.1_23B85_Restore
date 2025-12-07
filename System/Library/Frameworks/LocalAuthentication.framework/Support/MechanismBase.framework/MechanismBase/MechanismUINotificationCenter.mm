@interface MechanismUINotificationCenter
- (BOOL)_checkIsRedundantNotification:(int64_t)notification;
- (BOOL)postNotification:(int64_t)notification;
- (id)_identifierForNotification:(int64_t)notification;
- (void)_postDarwinNotificationWithIdentifier:(id)identifier;
@end

@implementation MechanismUINotificationCenter

- (BOOL)postNotification:(int64_t)notification
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(MechanismUINotificationCenter *)self _identifierForNotification:?];
  v6 = [(MechanismUINotificationCenter *)self _checkIsRedundantNotification:notification];
  v7 = v6;
  if (v6)
  {
    v8 = LA_LOG_MechanismUINotificationCenter(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v5;
      v9 = "Did skip notification with identifier: %{public}@";
LABEL_6:
      _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:notification];
    [(MechanismUINotificationCenter *)self setLastNotification:v10];

    v8 = LA_LOG_MechanismUINotificationCenter([(MechanismUINotificationCenter *)self _postDarwinNotificationWithIdentifier:v5]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v5;
      v9 = "Did post notification with identifier: %{public}@";
      goto LABEL_6;
    }
  }

  return v7 ^ 1;
}

- (BOOL)_checkIsRedundantNotification:(int64_t)notification
{
  if (notification == 1)
  {
    lastNotification = [(MechanismUINotificationCenter *)self lastNotification];
    if (lastNotification)
    {
      lastNotification2 = [(MechanismUINotificationCenter *)self lastNotification];
      v3 = [lastNotification2 isEqual:&unk_284B788D0] ^ 1;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_7;
  }

  if (!notification)
  {
    lastNotification = [(MechanismUINotificationCenter *)self lastNotification];
    v3 = [lastNotification isEqual:&unk_284B788D0];
LABEL_7:
  }

  return v3 & 1;
}

- (id)_identifierForNotification:(int64_t)notification
{
  if (notification)
  {
    return @"com.apple.LocalAuthentication.ui.dismissed";
  }

  else
  {
    return @"com.apple.LocalAuthentication.ui.presented";
  }
}

- (void)_postDarwinNotificationWithIdentifier:(id)identifier
{
  name = identifier;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

@end