@interface KernelMsgSignalHandlerSDXC
- (id)init:(id)init;
- (void)releaseHandler;
- (void)setupListener:(id)listener;
@end

@implementation KernelMsgSignalHandlerSDXC

- (id)init:(id)init
{
  initCopy = init;
  v11.receiver = self;
  v11.super_class = KernelMsgSignalHandlerSDXC;
  v6 = [(KernelMsgSignalHandlerSDXC *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = adminLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, " StorageKernelSignal: KernelMsgSignalHandler init ++ \n", v10, 2u);
    }

    objc_storeStrong(&adminABC, init);
  }

  return v7;
}

- (void)setupListener:(id)listener
{
  queue = listener;
  v3 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  gNotifyPort = v3;
  if (v3)
  {
    IONotificationPortSetDispatchQueue(v3, queue);
    v4 = gNotifyPort;
    v5 = IOServiceMatching("AppleSDXCSlot");
    LODWORD(v3) = IOServiceAddMatchingNotification(v4, "IOServiceFirstMatch", v5, ServiceMatched, 0, &iterator);
  }

  if (iterator)
  {
    ServiceMatched(v3, iterator);
  }
}

- (void)releaseHandler
{
  if (iterator)
  {
    IOObjectRelease(iterator);
    iterator = 0;
  }

  if (gNotifyPort)
  {
    IONotificationPortDestroy(gNotifyPort);
    gNotifyPort = 0;
    v3 = adminLogHandle(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "StorageKernelSignal: notification port destroyed\n", v5, 2u);
    }
  }

  v4 = adminABC;
  adminABC = 0;
}

@end