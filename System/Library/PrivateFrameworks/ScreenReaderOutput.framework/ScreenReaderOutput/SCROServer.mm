@interface SCROServer
+ (SCROServer)sharedServer;
- (BOOL)_ensureResourcesExist;
- (BOOL)_registerWithMachServiceName:(char *)name;
- (BOOL)_shouldStayAliveAfterLastClientUnregisters;
- (SCROServer)init;
- (__CFRunLoopSource)serverSource;
- (__CFRunLoopTimer)_deathTimer;
- (int)_registerForNotificationOnDeathPort:(unsigned int)port;
- (int64_t)_clientCount;
- (int64_t)_incrementClientCount;
- (void)_deleteOldResources;
- (void)_setClientCount:(int64_t)count;
- (void)_setShouldStayAliveAfterLastClientUnregisters:(BOOL)unregisters;
- (void)unregisterWithMach;
@end

@implementation SCROServer

+ (SCROServer)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    +[SCROServer sharedServer];
  }

  v3 = _sharedServer;

  return v3;
}

uint64_t __26__SCROServer_sharedServer__block_invoke()
{
  v0 = objc_alloc_init(SCROServer);
  _sharedServer = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (SCROServer)init
{
  v6.receiver = self;
  v6.super_class = SCROServer;
  v2 = [(SCROServer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    contentLock = v2->_contentLock;
    v2->_contentLock = v3;

    [(SCROServer *)v2 _deleteOldResources];
    [(SCROServer *)v2 _ensureResourcesExist];
  }

  return v2;
}

- (int64_t)_clientCount
{
  [(NSLock *)self->_contentLock lock];
  clientCount = self->_clientCount;
  [(NSLock *)self->_contentLock unlock];
  return clientCount;
}

- (int64_t)_incrementClientCount
{
  [(NSLock *)self->_contentLock lock];
  v3 = self->_clientCount + 1;
  self->_clientCount = v3;
  [(NSLock *)self->_contentLock unlock];
  return v3;
}

- (void)_setClientCount:(int64_t)count
{
  [(NSLock *)self->_contentLock lock];
  self->_clientCount = count;
  contentLock = self->_contentLock;

  [(NSLock *)contentLock unlock];
}

- (__CFRunLoopTimer)_deathTimer
{
  [(NSLock *)self->_contentLock lock];
  deathTimer = self->_deathTimer;
  [(NSLock *)self->_contentLock unlock];
  return deathTimer;
}

- (int)_registerForNotificationOnDeathPort:(unsigned int)port
{
  previous = 0;
  [(NSLock *)self->_contentLock lock];
  v5 = mach_port_request_notification(*MEMORY[0x277D85F48], port, 72, 0, self->_deathPort, 0x15u, &previous);
  [(NSLock *)self->_contentLock unlock];
  return v5;
}

- (BOOL)_shouldStayAliveAfterLastClientUnregisters
{
  [(NSLock *)self->_contentLock lock];
  shouldStayAliveAfterLastClientUnregisters = self->_shouldStayAliveAfterLastClientUnregisters;
  [(NSLock *)self->_contentLock unlock];
  return shouldStayAliveAfterLastClientUnregisters;
}

- (void)_setShouldStayAliveAfterLastClientUnregisters:(BOOL)unregisters
{
  [(NSLock *)self->_contentLock lock];
  self->_shouldStayAliveAfterLastClientUnregisters = unregisters;
  contentLock = self->_contentLock;

  [(NSLock *)contentLock unlock];
}

- (BOOL)_registerWithMachServiceName:(char *)name
{
  if (self->_isRegisteredWithMach)
  {
    return 1;
  }

  special_port = 0;
  Current = CFRunLoopGetCurrent();
  v7 = MEMORY[0x277D85F48];
  v8 = task_get_special_port(*MEMORY[0x277D85F48], 4, &special_port);
  if (v8)
  {
    NSLog(&cfstr_ErrorDCouldNot.isa, v8);
  }

  else
  {
    v9 = bootstrap_check_in(special_port, name, &self->_serverPort);
    if (v9)
    {
      NSLog(&cfstr_ErrorDCouldNot_0.isa, v9);
    }

    else
    {
      v11 = MSHCreateMIGServerSource();
      if (v11)
      {
        v12 = v11;
        [(NSLock *)self->_contentLock lock];
        self->_serverSource = v12;
        [(NSLock *)self->_contentLock unlock];
        mach_port_deallocate(*v7, special_port);
        v3 = 1;
        v13 = MSHCreateMachServerSource();
        self->_deathSource = v13;
        if (v13)
        {
          context.version = 0;
          memset(&context.retain, 0, 24);
          context.info = self;
          [(NSLock *)self->_contentLock lock];
          self->_deathPort = MSHGetMachPortFromSource();
          v14 = *MEMORY[0x277CBF048];
          CFRunLoopAddSource(Current, self->_deathSource, *MEMORY[0x277CBF048]);
          v15 = CFAbsoluteTimeGetCurrent();
          v16 = CFRunLoopTimerCreate(0, v15 + 3.0, 3.0, 0, 0, _deathTimerHandler, &context);
          self->_deathTimer = v16;
          CFRunLoopAddTimer(Current, v16, v14);
          [(NSLock *)self->_contentLock unlock];
          self->_isRegisteredWithMach = 1;
          return v3;
        }

        NSLog(&cfstr_ErrorCouldNotC_2.isa);
      }

      else
      {
        NSLog(&cfstr_ErrorCouldNotC_1.isa);
      }
    }
  }

  [(SCROServer *)self unregisterWithMach];
  return 0;
}

- (void)unregisterWithMach
{
  self->_isRegisteredWithMach = 0;
  [(NSLock *)self->_contentLock lock];
  deathTimer = self->_deathTimer;
  if (deathTimer)
  {
    CFRunLoopTimerInvalidate(deathTimer);
    CFRelease(self->_deathTimer);
    self->_deathTimer = 0;
  }

  serverSource = self->_serverSource;
  if (serverSource)
  {
    CFRelease(serverSource);
    self->_serverSource = 0;
  }

  [(NSLock *)self->_contentLock unlock];
  deathSource = self->_deathSource;
  if (deathSource)
  {
    CFRunLoopSourceInvalidate(deathSource);
    CFRelease(self->_deathSource);
    self->_deathSource = 0;
  }

  if (self->_serverPort)
  {
    self->_serverPort = 0;
  }

  [(NSLock *)self->_contentLock lock];
  if (self->_deathPort)
  {
    self->_deathPort = 0;
  }

  contentLock = self->_contentLock;

  [(NSLock *)contentLock unlock];
}

- (__CFRunLoopSource)serverSource
{
  [(NSLock *)self->_contentLock lock];
  serverSource = self->_serverSource;
  [(NSLock *)self->_contentLock unlock];
  return serverSource;
}

- (void)_deleteOldResources
{
  v2 = NSHomeDirectory();
  v6 = [v2 stringByAppendingPathComponent:@"/Library/Accessibility/ktoa_u_kwa.dic"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v6];

  if (v4)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 removeItemAtPath:v6 error:0];
  }
}

- (BOOL)_ensureResourcesExist
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"/Library/Accessibility/ktoa_u_kwa_v5.dic"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    archive_read_new();
    v7 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/ScreenReader/BrailleTables/BrailleNBSC.brailletable"];
    resourcePath = [v7 resourcePath];
    v9 = [resourcePath stringByAppendingString:@"/ktoa_u_kwa"];
    [v9 UTF8String];

    support_format_zip = archive_read_support_format_zip();
    if (support_format_zip)
    {
      v11 = _SCROD_LOG(support_format_zip);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = archive_error_string();
        v12 = "NBSC Braille for text: (init) archive_read unable to set supported formats: %s.";
        v13 = v11;
        v14 = 12;
LABEL_9:
        _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    open_filename = archive_read_open_filename();
    if (open_filename)
    {
      v11 = _SCROD_LOG(open_filename);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "NBSC Braille for text: (init) failed to unzip.";
        v13 = v11;
        v14 = 2;
        goto LABEL_9;
      }

LABEL_10:

      v6 = 0;
      goto LABEL_11;
    }

    v27 = 0;
    next_header = archive_read_next_header();
    if (next_header)
    {
      data = _SCROD_LOG(next_header);
      if (os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26490B000, data, OS_LOG_TYPE_DEFAULT, "NBSC Braille for text: (init) failed to read header.", buf, 2u);
      }

      v6 = 0;
      goto LABEL_28;
    }

    data = [MEMORY[0x277CBEB28] data];
    v25 = 0;
    v26 = 0;
    v24[1] = 0;
    while (1)
    {
      data_block = archive_read_data_block();
      if (data_block)
      {
        break;
      }

      [data appendBytes:v26 length:v25];
    }

    if (data_block == 1)
    {
      v24[0] = 0;
      [data writeToFile:v3 options:1 error:v24];
      v20 = v24[0];
      v21 = v20;
      v6 = v20 == 0;
      if (!v20)
      {
LABEL_27:

LABEL_28:
        goto LABEL_11;
      }

      v22 = _SCROD_LOG(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription = [v21 localizedDescription];
        *buf = 138412290;
        v29 = localizedDescription;
        _os_log_impl(&dword_26490B000, v22, OS_LOG_TYPE_DEFAULT, "NBSC Braille for text: writing the unzipped file of ktoa_u_kwa.zip failed: %@", buf, 0xCu);
      }
    }

    else
    {
      v21 = _SCROD_LOG(data_block);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = archive_error_string();
        _os_log_impl(&dword_26490B000, v21, OS_LOG_TYPE_DEFAULT, "NBSC Braille for text: can't read ktoa_u_kwp.zip: %s", buf, 0xCu);
      }
    }

    v6 = 0;
    goto LABEL_27;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

@end