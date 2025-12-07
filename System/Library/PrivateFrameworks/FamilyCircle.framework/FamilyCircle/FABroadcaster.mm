@interface FABroadcaster
+ (void)_broadcastNotificationName:(id)name userInfo:(id)info;
@end

@implementation FABroadcaster

+ (void)_broadcastNotificationName:(id)name userInfo:(id)info
{
  v14 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  infoCopy = info;
  v7 = _FALogSystem(infoCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "+[FABroadcaster _broadcastNotificationName:userInfo:]";
    v12 = 2112;
    v13 = nameCopy;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, nameCopy, 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, nameCopy, infoCopy, 0, 1u);
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:nameCopy object:0 userInfo:infoCopy];
}

@end