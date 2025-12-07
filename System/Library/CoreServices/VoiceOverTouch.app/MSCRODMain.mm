@interface MSCRODMain
- (MSCRODMain)initWithArgc:(int)argc argv:(const char *)argv;
- (id)_safeHandlerForType:(int *)type;
- (int)getValue:(id *)value forKey:(int)key handlerType:(int)type trusted:(BOOL)trusted;
- (int)getValue:(id *)value forKey:(int)key withObject:(id)object handlerType:(int)type trusted:(BOOL)trusted;
- (int)handleEvent:(id)event handlerType:(int)type trusted:(BOOL)trusted;
- (int)performActionForKey:(int)key handlerType:(int)type trusted:(BOOL)trusted;
- (int)registerCallbackForKey:(int)key forClientIdentifier:(unsigned int)identifier handlerType:(int)type trusted:(BOOL)trusted;
- (int)run;
- (int)setValue:(id)value forKey:(int)key handlerType:(int)type trusted:(BOOL)trusted;
- (void)_goDogGo:(id)go;
- (void)dealloc;
- (void)stop;
@end

@implementation MSCRODMain

- (MSCRODMain)initWithArgc:(int)argc argv:(const char *)argv
{
  v12.receiver = self;
  v12.super_class = MSCRODMain;
  v4 = [(MSCRODMain *)&v12 initWithArgc:*&argc argv:argv];
  if (v4)
  {
    v5 = +[SCROServer sharedServer];
    registerWithMach = [v5 registerWithMach];

    if (!registerWithMach)
    {
      v10 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&qword_100019890, v4);
    v4->_runLoops = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = kSCROServerTimeoutNotification;
    v9 = +[SCROServer sharedServer];
    [v7 addObserver:v4 selector:"_serverTimeoutNotificationHandler:" name:v8 object:v9];
  }

  v10 = v4;
LABEL_6:

  return v10;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[SCROServer sharedServer];
  [v4 setDelegate:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6 = qword_100019890;
  qword_100019890 = 0;

  free(self->_runLoops);
  objc_autoreleasePoolPop(v3);
  v7.receiver = self;
  v7.super_class = MSCRODMain;
  [(MSCRODMain *)&v7 dealloc];
}

- (id)_safeHandlerForType:(int *)type
{
  v3 = *type;
  if ((*type - 3) < 0xFFFFFFFE)
  {
    v3 = 0;
  }

  *type = v3;
  return self->_handlers[v3];
}

- (int)run
{
  [SCRCThread setDefaultThreadPriority:47];
  v21.receiver = self;
  v21.super_class = MSCRODMain;
  v3 = [(MSCRODMain *)&v21 run];
  v4 = self->_handlers[0];
  self->_handlers[0] = 0;

  v5 = objc_allocWithZone(SCROBrailleHandler);
  v6 = +[MSCRODBrailleDisplayManager sharedManager];
  v7 = [v5 initWithBrailleDisplayManager:v6];
  v8 = self->_handlers[1];
  self->_handlers[1] = v7;

  v9 = self->_handlers[2];
  self->_handlers[2] = 0;

  for (i = 0; i != 2; ++i)
  {
    [(SCROHandler *)self->_handlers[i + 1] setCallbackDelegate:self];
  }

  self->_mainRunLoop = CFRunLoopGetCurrent();
  v11 = +[SCROServer sharedServer];
  [v11 setDelegate:self];

  v12 = objc_allocWithZone(NSDictionary);
  v13 = +[SCROServer sharedServer];
  serverSource = [v13 serverSource];
  v15 = [NSNumber numberWithInt:0];
  v16 = [v12 initWithObjectsAndKeys:{serverSource, @"server", v15, @"index", 0}];

  [NSThread detachNewThreadSelector:"_goDogGo:" toTarget:self withObject:v16];
  [(MSCRODMain *)self _goDogGo:0];
  v17 = 0;
  v18 = &self->_handlers[1];
  do
  {
    [(SCROHandler *)v18[v17] lock];
    v19 = v18[v17];
    if (v19 && (*(v19 + OBJC_IVAR___SCROHandler_isInvalid) & 1) == 0)
    {
      [(SCROHandler *)v19 invalidate];
    }

    [(SCROHandler *)v18[v17++] unlock];
  }

  while (v17 != 2);
  return v3;
}

- (void)_goDogGo:(id)go
{
  goCopy = go;
  v4 = objc_autoreleasePoolPush();
  AXSetThreadPriority();
  v5 = [goCopy objectForKey:@"index"];
  v6 = [goCopy objectForKey:@"server"];
  Current = CFRunLoopGetCurrent();
  v8 = Current;
  if (Current != self->_mainRunLoop)
  {
    CFRunLoopAddSource(Current, v6, kCFRunLoopDefaultMode);
  }

  if (v5)
  {
    self->_runLoops[[v5 integerValue]] = v8;
  }

  while (!self->_stop)
  {
    CFRunLoopRun();
  }

  if (v8 == self->_mainRunLoop)
  {
    v9 = +[SCROServer sharedServer];
    [v9 unregisterWithMach];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)stop
{
  v8.receiver = self;
  v8.super_class = MSCRODMain;
  [(MSCRODMain *)&v8 stop];
  self->_stop = 1;
  runLoops = self->_runLoops;
  v4 = *runLoops;
  *runLoops = 0;
  if (v4)
  {
    CFRunLoopStop(v4);
  }

  v5 = +[MSCRODBrailleDisplayManager sharedManager];
  [v5 invalidate];

  v6 = AXLogBrailleHW();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Stopping scrod", v7, 2u);
  }

  CFRunLoopStop(self->_mainRunLoop);
}

- (int)handleEvent:(id)event handlerType:(int)type trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  eventCopy = event;
  typeCopy = type;
  v9 = [(MSCRODMain *)self _safeHandlerForType:&typeCopy];
  v10 = v9;
  if (v9)
  {
    [v9 lock];
    if ((v10[OBJC_IVAR___SCROHandler_isInvalid] & 1) == 0)
    {
      [eventCopy performWithHandler:v10 trusted:trustedCopy];
    }

    v11 = 0;
    [v10 unlock];
  }

  else
  {
    NSLog(@"Invalid handler type: %d sent from client.", typeCopy);
    v11 = 1;
  }

  return v11;
}

- (int)registerCallbackForKey:(int)key forClientIdentifier:(unsigned int)identifier handlerType:(int)type trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v7 = *&key;
  typeCopy = type;
  v8 = [(MSCRODMain *)self _safeHandlerForType:&typeCopy, *&identifier];
  v9 = v8;
  if (v8)
  {
    [v8 lock];
    if (*(v9 + OBJC_IVAR___SCROHandler_isInvalid))
    {
      v10 = 1;
    }

    else
    {
      v10 = [v9 handleRegisterCallbackForKey:v7 trusted:trustedCopy];
    }

    [v9 unlock];
  }

  else
  {
    NSLog(@"Invalid handler type: %d sent from client.", typeCopy);
    v10 = 1;
  }

  return v10;
}

- (int)setValue:(id)value forKey:(int)key handlerType:(int)type trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v8 = *&key;
  valueCopy = value;
  typeCopy = type;
  v11 = [(MSCRODMain *)self _safeHandlerForType:&typeCopy];
  v12 = v11;
  if (v11)
  {
    [v11 lock];
    if (*(v12 + OBJC_IVAR___SCROHandler_isInvalid))
    {
      v13 = 1;
    }

    else
    {
      v13 = [v12 handleSetValue:valueCopy forKey:v8 trusted:trustedCopy];
    }

    [v12 unlock];
  }

  else
  {
    NSLog(@"Invalid handler type: %d sent from client.", typeCopy);
    v13 = 1;
  }

  return v13;
}

- (int)getValue:(id *)value forKey:(int)key handlerType:(int)type trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v7 = *&key;
  typeCopy = type;
  v9 = [(MSCRODMain *)self _safeHandlerForType:&typeCopy];
  v10 = v9;
  if (v9)
  {
    [v9 lock];
    if (*(v10 + OBJC_IVAR___SCROHandler_isInvalid))
    {
      v11 = 1;
    }

    else
    {
      v11 = [v10 handleGetValue:value forKey:v7 trusted:trustedCopy];
    }

    [v10 unlock];
  }

  else
  {
    NSLog(@"Invalid handler type: %d sent from client.", typeCopy);
    v11 = 1;
  }

  return v11;
}

- (int)getValue:(id *)value forKey:(int)key withObject:(id)object handlerType:(int)type trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v9 = *&key;
  objectCopy = object;
  typeCopy = type;
  v13 = [(MSCRODMain *)self _safeHandlerForType:&typeCopy];
  v14 = v13;
  if (v13)
  {
    [v13 lock];
    if (*(v14 + OBJC_IVAR___SCROHandler_isInvalid))
    {
      v15 = 1;
    }

    else
    {
      v15 = [v14 handleGetValue:value forKey:v9 withObject:objectCopy trusted:trustedCopy];
    }

    [v14 unlock];
  }

  else
  {
    NSLog(@"Invalid handler type: %d sent from client.", typeCopy);
    v15 = 1;
  }

  return v15;
}

- (int)performActionForKey:(int)key handlerType:(int)type trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v6 = *&key;
  typeCopy = type;
  v7 = [(MSCRODMain *)self _safeHandlerForType:&typeCopy];
  v8 = v7;
  if (v7)
  {
    [v7 lock];
    if (*(v8 + OBJC_IVAR___SCROHandler_isInvalid))
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 handlePerformActionForKey:v6 trusted:trustedCopy];
    }

    [v8 unlock];
  }

  else
  {
    NSLog(@"Invalid handler type: %d sent from client.", typeCopy);
    v9 = 1;
  }

  return v9;
}

@end