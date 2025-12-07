@interface AVAudioNotificationCenterHandler
- (id)interruptionHandler;
- (id)propertyNotificationHandler;
- (int)handleInterruptionNotifications:(id)notifications;
- (void)handlePropertyNotifications:(id)notifications;
- (void)setInterruptionHandler:(id)handler;
- (void)setPropertyNotificationHandler:(id)handler;
@end

@implementation AVAudioNotificationCenterHandler

- (id)propertyNotificationHandler
{
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v3 = MEMORY[0x1B26ED920](self->_propertyNotificationHandler);
  os_unfair_lock_unlock(&self->_mutex.m_lock);

  return v3;
}

- (void)setPropertyNotificationHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v5 = MEMORY[0x1B26ED920](handlerCopy);

  propertyNotificationHandler = self->_propertyNotificationHandler;
  self->_propertyNotificationHandler = v5;

  os_unfair_lock_unlock(&self->_mutex.m_lock);
}

- (id)interruptionHandler
{
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v3 = MEMORY[0x1B26ED920](self->_interruptionHandler);
  os_unfair_lock_unlock(&self->_mutex.m_lock);

  return v3;
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_mutex.m_lock);
  v5 = MEMORY[0x1B26ED920](handlerCopy);

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = v5;

  os_unfair_lock_unlock(&self->_mutex.m_lock);
}

- (int)handleInterruptionNotifications:(id)notifications
{
  v21 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  interruptionHandler = [(AVAudioNotificationCenterHandler *)self interruptionHandler];
  if (interruptionHandler)
  {
    v6 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = notificationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [AVAudioInterruptionNotification alloc];
          v13 = [(AVAudioInterruptionNotification *)v12 initWithInternal:v11, v16];
          [v6 addObject:v13];
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = (interruptionHandler)[2](interruptionHandler, v6);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)handlePropertyNotifications:(id)notifications
{
  v19 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  propertyNotificationHandler = [(AVAudioNotificationCenterHandler *)self propertyNotificationHandler];
  if (propertyNotificationHandler)
  {
    v6 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = notificationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [AVAudioPropertyNotification alloc];
          v13 = [(AVAudioPropertyNotification *)v12 initWithInternal:v11, v14];
          [v6 addObject:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    (propertyNotificationHandler)[2](propertyNotificationHandler, v6);
  }
}

@end