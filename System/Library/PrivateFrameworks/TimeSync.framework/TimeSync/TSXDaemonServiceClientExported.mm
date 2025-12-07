@interface TSXDaemonServiceClientExported
- (TSXDaemonServiceClient)object;
- (void)daemonClientNotification:(unsigned int)notification ioResult:(unsigned int)result arguments:(ScalarArgsArrayUserReference *)arguments;
- (void)daemonClientRefresh;
- (void)msgServiceNotification:(unsigned __int16)notification arguments:(const ScalarArgsArrayUserReference *)arguments;
@end

@implementation TSXDaemonServiceClientExported

- (void)daemonClientRefresh
{
  +[_TSF_IODConnection daemonClientRefresh];
  v2 = _dispatchQueue_0;

  dispatch_async(v2, &__block_literal_global_173);
}

void __53__TSXDaemonServiceClientExported_daemonClientRefresh__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[TSMSGService sharedMSGService];
  [v1 daemonClientRefresh];

  objc_autoreleasePoolPop(v0);
}

- (void)daemonClientNotification:(unsigned int)notification ioResult:(unsigned int)result arguments:(ScalarArgsArrayUserReference *)arguments
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  if (arguments && arguments->var1)
  {
    [_TSF_IODConnection dispatchNotificationForClientID:"dispatchNotificationForClientID:ioResult:args:numArgs:" ioResult:? args:? numArgs:?];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = notification;
    v10 = 1024;
    resultCopy = result;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSXDaemonServiceClientExported:daemonClientNotification called with no arguments, client ID %u, result %08x result\n", v9, 0xEu);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)msgServiceNotification:(unsigned __int16)notification arguments:(const ScalarArgsArrayUserReference *)arguments
{
  v4 = *&arguments->var0[10];
  v14 = *&arguments->var0[8];
  v15 = v4;
  v5 = *&arguments->var0[14];
  v16 = *&arguments->var0[12];
  v17 = v5;
  v6 = *arguments->var0;
  v7 = *&arguments->var0[4];
  v8 = *&arguments->var0[6];
  v11 = *&arguments->var0[2];
  v12 = v7;
  v13 = v8;
  v18 = *&arguments->var1;
  v10 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__TSXDaemonServiceClientExported_msgServiceNotification_arguments___block_invoke;
  block[3] = &__block_descriptor_178_e5_v8__0l;
  block[4] = arguments;
  notificationCopy = notification;
  dispatch_async(_dispatchQueue_0, block);
}

void __67__TSXDaemonServiceClientExported_msgServiceNotification_arguments___block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = +[TSMSGService sharedMSGService];
  [v2 dispatchMSGNotification:? args:? numArgs:?];

  objc_autoreleasePoolPop(v1);
}

- (TSXDaemonServiceClient)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end