@interface BDBubbled
+ (id)sharedXPCInterface;
- (id)keybagdProxy;
- (void)addUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)addUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)beginNextClient;
- (void)bubbleIsOkayToPop;
- (void)bubbleShouldPop;
- (void)fetchMachServiceNames;
- (void)kickstartCurrentClient;
- (void)powerLog:(BOOL)log;
- (void)removeCurrentClient;
- (void)removeCurrentClientAndMachServiceName;
- (void)removeUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)removeUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)start;
- (void)unregisterStakeholderForPID:(int)d status:(unint64_t)status reason:(id)reason completionHandler:(id)handler;
- (void)verifyCurrentClientHasPID:(int)d thenCallBlock:(id)block;
@end

@implementation BDBubbled

+ (id)sharedXPCInterface
{
  if (qword_1000119F8 != -1)
  {
    sub_100005958();
  }

  v3 = qword_1000119F0;

  return v3;
}

- (id)keybagdProxy
{
  keybagdConnection = [(BDBubbled *)self keybagdConnection];
  v3 = [keybagdConnection remoteObjectProxyWithErrorHandler:&stru_10000C538];

  return v3;
}

- (void)powerLog:(BOOL)log
{
  logCopy = log;
  if (qword_100011A00 || (v6 = dlopen("/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog", 2), (qword_100011A00 = v6) == 0))
  {
    v4 = off_100011A08;
    if (!off_100011A08)
    {
      return;
    }
  }

  else
  {
    v4 = dlsym(v6, "PLLogRegisteredEvent");
    off_100011A08 = v4;
    if (!v4)
    {
      return;
    }
  }

  v7 = @"status";
  v5 = [NSNumber numberWithBool:logCopy];
  v8 = v5;
  (v4)(58, @"SYNCBUBBLE STATUS", [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1], 0);

  if (logCopy)
  {
    NSLog(@"Bubbled POWERLOG: YES");
  }

  else
  {
    NSLog(@"Bubbled POWERLOG: NO");
  }
}

- (void)start
{
  [(BDBubbled *)self powerLog:1];
  v3 = objc_opt_new();
  [(BDBubbled *)self setLaunchDate:v3];

  [(BDBubbled *)self setPopStatus:0];
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.mobile.keybagd.UserManager.xpc" options:4096];
  [(BDBubbled *)self setKeybagdConnection:v4];

  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDKeybagd];
  keybagdConnection = [(BDBubbled *)self keybagdConnection];
  [keybagdConnection setRemoteObjectInterface:v5];

  v7 = +[BDBubbled sharedXPCInterface];
  keybagdConnection2 = [(BDBubbled *)self keybagdConnection];
  [keybagdConnection2 setExportedInterface:v7];

  keybagdConnection3 = [(BDBubbled *)self keybagdConnection];
  [keybagdConnection3 setExportedObject:self];

  objc_initWeak(&location, self);
  keybagdConnection4 = [(BDBubbled *)self keybagdConnection];
  [keybagdConnection4 setInterruptionHandler:&stru_10000C558];

  objc_copyWeak(&v14, &location);
  v11 = [(BDBubbled *)self keybagdConnection:_NSConcreteStackBlock];
  [v11 setInvalidationHandler:&v13];

  keybagdConnection5 = [(BDBubbled *)self keybagdConnection];
  [keybagdConnection5 resume];

  [(BDBubbled *)self fetchMachServiceNames];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)fetchMachServiceNames
{
  objc_initWeak(&location, self);
  v3 = getuid();
  v4 = getpid();
  NSLog(@"UID:%d, PID %d", v3, v4);
  keybagdProxy = [(BDBubbled *)self keybagdProxy];
  v6 = getpid();
  v7 = getuid();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000042A0;
  v8[3] = &unk_10000C5A8;
  objc_copyWeak(&v9, &location);
  [keybagdProxy fetchMachServiceNameswithPID:v6 WithUID:v7 WithCompletionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)beginNextClient
{
  machServiceNames = [(BDBubbled *)self machServiceNames];
  v4 = [machServiceNames count];

  if (v4)
  {
    NSLog(@"In beginNextClient, setting up connection with received mach service");
    machServiceNames2 = [(BDBubbled *)self machServiceNames];
    firstObject = [machServiceNames2 firstObject];
    NSLog(@"In beginNextClient, setting up connection with received mach service %@", firstObject);

    v7 = [NSXPCConnection alloc];
    machServiceNames3 = [(BDBubbled *)self machServiceNames];
    firstObject2 = [machServiceNames3 firstObject];
    v10 = [v7 initWithMachServiceName:firstObject2 options:0];

    v11 = +[RDClient sharedXPCInterface];
    [v10 setRemoteObjectInterface:v11];

    v12 = +[BDServer sharedXPCInterface];
    [v10 setExportedInterface:v12];

    [v10 setExportedObject:self];
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004618;
    v16[3] = &unk_10000C580;
    objc_copyWeak(&v17, &location);
    [v10 setInterruptionHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004670;
    v14[3] = &unk_10000C580;
    objc_copyWeak(&v15, &location);
    [v10 setInvalidationHandler:v14];
    NSLog(@"resuming Connection for MACHService");
    [v10 resume];
    NSLog(@"STARTED Connection for MACHService");
    v13 = [RDClient clientWithXPCConnection:v10];
    [(BDBubbled *)self setCurrentClient:v13];

    NSLog(@"Kickstarting Connection for MACHService");
    [(BDBubbled *)self kickstartCurrentClient];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(@"beginNextClient BUBBLEPOPCALL");

    [(BDBubbled *)self bubbleIsOkayToPop];
  }
}

- (void)kickstartCurrentClient
{
  objc_initWeak(&location, self);
  NSLog(@"Calling Upload Connection for MACHService");
  currentClient = [(BDBubbled *)self currentClient];
  [currentClient clearTaskLists];

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_100004854;
  v8[4] = sub_100004864;
  machServiceNames = [(BDBubbled *)self machServiceNames];
  firstObject = [machServiceNames firstObject];

  currentClient2 = [(BDBubbled *)self currentClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000486C;
  v6[3] = &unk_10000C5D0;
  objc_copyWeak(&v7, &location);
  v6[4] = v8;
  [currentClient2 uploadContentWithCompletionHandler:v6];

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

- (void)removeCurrentClient
{
  NSLog(@"Removing machservice", a2);
  machServiceNames = [(BDBubbled *)self machServiceNames];
  [machServiceNames removeObjectAtIndex:0];

  [(BDBubbled *)self setCurrentClient:0];

  [(BDBubbled *)self beginNextClient];
}

- (void)removeCurrentClientAndMachServiceName
{
  NSLog(@"BD: REMOVE CURRENT CLIENT AND MACH SERVICE NAME", a2);
  machServiceNames = [(BDBubbled *)self machServiceNames];
  firstObject = [machServiceNames firstObject];

  keybagdProxy = [(BDBubbled *)self keybagdProxy];
  v5 = getpid();
  [keybagdProxy removeMachServiceName:firstObject withPID:v5 WithUID:getuid()];

  [(BDBubbled *)self removeCurrentClient];
}

- (void)bubbleIsOkayToPop
{
  NSLog(@"BD: BUBBLE IS OKAY TO POP", a2);
  popStatus = [(BDBubbled *)self popStatus];
  NSLog(@"Bubble is popping with Status:%lu", popStatus);
  keybagdProxy = [(BDBubbled *)self keybagdProxy];
  v5 = getpid();
  [keybagdProxy StopBubbleWithPID:v5 WithUID:getuid() WithStatus:popStatus];

  [(BDBubbled *)self powerLog:0];
  NSLog(@"XXXXXXX BUBBLED END XXXXXXXX");
  exit(0);
}

- (void)bubbleShouldPop
{
  NSLog(@"In bubbleShouldPop BDBubbled.m", a2);
  currentClient = [(BDBubbled *)self currentClient];

  if (currentClient)
  {
    objc_initWeak(&location, self);
    currentClient2 = [(BDBubbled *)self currentClient];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100004C68;
    v5[3] = &unk_10000C580;
    objc_copyWeak(&v6, &location);
    [currentClient2 willSwitchToUser:0 completionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {

    [(BDBubbled *)self bubbleIsOkayToPop];
  }
}

- (void)verifyCurrentClientHasPID:(int)d thenCallBlock:(id)block
{
  v4 = *&d;
  blockCopy = block;
  currentClient = [(BDBubbled *)self currentClient];
  v7 = [currentClient pid];

  if (v7 == v4)
  {
    blockCopy[2]();
  }

  else
  {
    currentClient2 = [(BDBubbled *)self currentClient];
    NSLog(@"BD: Our current client (pid %d) is not pid %d", [currentClient2 pid], v4);
  }
}

- (void)addUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  v6 = *&d;
  taskCopy = task;
  handlerCopy = handler;
  NSLog(@"BD: ADD USER SWITCH TASK: %@", taskCopy);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004EEC;
  v11[3] = &unk_10000C5F8;
  objc_copyWeak(&v13, &location);
  v10 = taskCopy;
  v12 = v10;
  [(BDBubbled *)self verifyCurrentClientHasPID:v6 thenCallBlock:v11];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)removeUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  v6 = *&d;
  taskCopy = task;
  handlerCopy = handler;
  NSLog(@"BD: REMOVE USER SWITCH TASK: %@", taskCopy);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000507C;
  v11[3] = &unk_10000C5F8;
  objc_copyWeak(&v13, &location);
  v10 = taskCopy;
  v12 = v10;
  [(BDBubbled *)self verifyCurrentClientHasPID:v6 thenCallBlock:v11];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)addUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  v6 = *&d;
  taskCopy = task;
  handlerCopy = handler;
  NSLog(@"BD: ADD USER SYNC TASK: %@", taskCopy);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005278;
  v11[3] = &unk_10000C5F8;
  objc_copyWeak(&v13, &location);
  v10 = taskCopy;
  v12 = v10;
  [(BDBubbled *)self verifyCurrentClientHasPID:v6 thenCallBlock:v11];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)removeUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  v6 = *&d;
  taskCopy = task;
  handlerCopy = handler;
  NSLog(@"BD: REMOVE SYNC TASK: %@", taskCopy);
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005408;
  v11[3] = &unk_10000C5F8;
  objc_copyWeak(&v13, &location);
  v10 = taskCopy;
  v12 = v10;
  [(BDBubbled *)self verifyCurrentClientHasPID:v6 thenCallBlock:v11];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)unregisterStakeholderForPID:(int)d status:(unint64_t)status reason:(id)reason completionHandler:(id)handler
{
  v8 = [(BDBubbled *)self currentClient:*&d];
  if (v8)
  {
    v9 = v8;
    if ((status & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if (status == 1)
      {
        [(BDBubbled *)self setPopStatus:1];
      }

      [(BDBubbled *)self removeCurrentClient];
    }

    else
    {
      [(BDBubbled *)self removeCurrentClientAndMachServiceName];
    }

    [v9 setStakeholderIsRegistered:0];
    v8 = v9;
  }
}

@end