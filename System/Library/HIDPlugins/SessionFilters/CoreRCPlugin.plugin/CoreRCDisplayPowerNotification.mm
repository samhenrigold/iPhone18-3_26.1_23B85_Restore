@interface CoreRCDisplayPowerNotification
- (BOOL)registerPowerNotifications:(id)notifications sleepCallback:(id)callback wakeCallback:(id)wakeCallback;
- (void)dealloc;
@end

@implementation CoreRCDisplayPowerNotification

- (BOOL)registerPowerNotifications:(id)notifications sleepCallback:(id)callback wakeCallback:(id)wakeCallback
{
  notificationsCopy = notifications;
  callbackCopy = callback;
  wakeCallbackCopy = wakeCallback;
  v11 = CoreRCPluginLog(wakeCallbackCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "CoreRCDisplayPowerNotification registering notification", buf, 2u);
  }

  v12 = +[CADisplay displays];
  v13 = +[CAWindowServer serverIfRunning];
  displays = [v13 displays];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = displays;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        if ([v20 displayType] == &dword_0 + 1)
        {
          objc_storeStrong(&self->_brightnessControl, v20);
          brightnessControl = self->_brightnessControl;
          v21 = brightnessControl != 0;
          v24 = CoreRCPluginLog(v23);
          v25 = v24;
          if (brightnessControl)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v26 = self->_brightnessControl;
              *buf = 138412290;
              v42 = v26;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Found external display with brightnessControl %@", buf, 0xCu);
            }

            uuid = [(CABrightnessControl *)self->_brightnessControl uuid];
            v28 = self->_brightnessControl;
            v40[0] = kCABrightnessSyncNotificationWillChangePowerState;
            v40[1] = kCABrightnessSyncNotificationDidChangePowerState;
            v29 = [NSArray arrayWithObjects:v40 count:2];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_36C0;
            v31[3] = &unk_8398;
            v31[4] = v20;
            v32 = uuid;
            v33 = notificationsCopy;
            v34 = callbackCopy;
            v35 = wakeCallbackCopy;
            v25 = uuid;
            [(CABrightnessControl *)v28 registerForSyncNotifications:v29 withBlock:v31];
          }

          else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_46B0(v25);
          }

          goto LABEL_19;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_19:

  return v21;
}

- (void)dealloc
{
  [(CABrightnessControl *)self->_brightnessControl unregisterSyncNotificationBlocks];
  v3.receiver = self;
  v3.super_class = CoreRCDisplayPowerNotification;
  [(CoreRCDisplayPowerNotification *)&v3 dealloc];
}

@end