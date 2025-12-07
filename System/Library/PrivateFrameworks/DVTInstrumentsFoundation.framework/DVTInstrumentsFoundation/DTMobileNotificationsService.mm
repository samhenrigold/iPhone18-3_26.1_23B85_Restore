@interface DTMobileNotificationsService
- (void)_memoryNotification:(unsigned int)notification pid:(int)pid;
- (void)_setAppStateNotificationsEnabled:(BOOL)enabled;
- (void)_setMemNotificationsEnabled:(BOOL)enabled;
- (void)messageReceived:(id)received;
- (void)postDarwinNotification:(id)notification;
- (void)setApplicationStateNotificationsEnabled:(id)enabled;
- (void)setMemoryNotificationsEnabled:(id)enabled;
@end

@implementation DTMobileNotificationsService

- (void)messageReceived:(id)received
{
  if ([received errorStatus] == 2)
  {
    [(DTMobileNotificationsService *)self _setAppStateNotificationsEnabled:0];

    MEMORY[0x2821F9670](self, sel__setMemNotificationsEnabled_);
  }
}

- (void)setApplicationStateNotificationsEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];

  [(DTMobileNotificationsService *)self _setAppStateNotificationsEnabled:bOOLValue];
}

- (void)_setAppStateNotificationsEnabled:(BOOL)enabled
{
  if (self->_applicationStateNotificationsEnabled != enabled)
  {
    self->_applicationStateNotificationsEnabled = enabled;
    if (enabled)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = sub_247FB6B38;
      v6[3] = &unk_278EF2EC8;
      v6[4] = self;
      v4 = [MEMORY[0x277D46F80] monitorWithConfiguration:v6];
      [(DTMobileNotificationsService *)self setAppStateMonitor:v4];
    }

    else
    {
      [(RBSProcessMonitor *)self->_appStateMonitor invalidate];
      appStateMonitor = self->_appStateMonitor;
      self->_appStateMonitor = 0;
    }
  }
}

- (void)setMemoryNotificationsEnabled:(id)enabled
{
  [enabled BOOLValue];

  MEMORY[0x2821F9670](self, sel__setMemNotificationsEnabled_);
}

- (void)postDarwinNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (qword_27EE84350 != -1)
  {
    sub_24802EC44();
  }

  if ([qword_27EE84348 containsObject:notificationCopy])
  {
    v4 = notify_post([notificationCopy UTF8String]);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = 138412546;
        v10 = notificationCopy;
        v11 = 1024;
        v12 = v5;
        v6 = MEMORY[0x277D86220];
        v7 = "Failed to post notification %@, status %d";
        v8 = 18;
LABEL_9:
        _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_ERROR, v7, &v9, v8);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    v6 = MEMORY[0x277D86220];
    v7 = "Failed to post notification %@";
    v8 = 12;
    goto LABEL_9;
  }
}

- (void)_setMemNotificationsEnabled:(BOOL)enabled
{
  memoryNotificationSource = self->_memoryNotificationSource;
  if (enabled)
  {
    if (memoryNotificationSource)
    {
      return;
    }

    v5 = socket(32, 3, 1);
    if (v5 == -1)
    {
      v8 = __error();
      printf("could not open event socket, socket() failed: %d\n", *v8);
    }

    else
    {
      v6 = v5;
      v21 = 0x300000001;
      v22 = 3;
      if (ioctl(v5, 0x800C6502uLL, &v21))
      {
        __error();
        printf("could not establish event filter, ioctl() failed: %d\n");
      }

      else
      {
        LODWORD(v21) = 1;
        if (ioctl(v6, 0x8004667EuLL, &v21))
        {
          v9 = __error();
          printf("could not set non-blocking io, ioctl() failed: %d\n", *v9);
          close(v6);
          v6 = -1;
          if (!fcntl(-1, 2, 0x1000000))
          {
            goto LABEL_17;
          }
        }

        else if (!fcntl(v6, 2, 0x1000000))
        {
LABEL_18:
          v10 = dispatch_get_global_queue(0, 0);
          v11 = dispatch_source_create(MEMORY[0x277D85D28], v6, 0, v10);

          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = sub_247FB7340;
          handler[3] = &unk_278EF2898;
          v20 = v6;
          v12 = v11;
          v18 = v12;
          selfCopy = self;
          dispatch_source_set_event_handler(v12, handler);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = sub_247FB7470;
          v15[3] = &unk_278EF2820;
          v16 = v6;
          dispatch_source_set_cancel_handler(v12, v15);
          v13 = self->_memoryNotificationSource;
          self->_memoryNotificationSource = v12;
          v14 = v12;

          dispatch_resume(self->_memoryNotificationSource);
          return;
        }

        __error();
        printf("could not set close-on-exec, fcntl() failed: %d\n");
      }

      close(v6);
    }

LABEL_17:
    [MEMORY[0x277CBEAD8] raise:@"DTMobileNotificationServiceException" format:@"Memory monitoring disabled due to error."];
    v6 = -1;
    goto LABEL_18;
  }

  if (memoryNotificationSource)
  {
    dispatch_source_cancel(memoryNotificationSource);
    v7 = self->_memoryNotificationSource;
    self->_memoryNotificationSource = 0;
  }
}

- (void)_memoryNotification:(unsigned int)notification pid:(int)pid
{
  v4 = *&pid;
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"code";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&notification];
  v14[0] = v6;
  v13[1] = @"pid";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v14[1] = v7;
  v13[2] = @"mach_absolute_time";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
  v14[2] = v8;
  v13[3] = @"timestamp";
  date = [MEMORY[0x277CBEAA8] date];
  v14[3] = date;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = [MEMORY[0x277D03668] messageWithSelector:sel_memoryLevelNotification_ objectArguments:{v10, 0}];
  channel = [(DTXService *)self channel];
  [channel sendControlAsync:v11 replyHandler:0];
}

@end