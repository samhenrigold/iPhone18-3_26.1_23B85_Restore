@interface CNCoreRecentsChangeNotifier
+ (id)acceptedIntroductionsNotifierWithBlock:(id)block;
- (CNCoreRecentsChangeNotifier)initWithNotification:(__CFString *)notification block:(id)block;
- (void)_notifyObserver;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation CNCoreRecentsChangeNotifier

- (void)startObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notification = [(CNCoreRecentsChangeNotifier *)self notification];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __notificationHandler, notification, 0, 1026);
}

+ (id)acceptedIntroductionsNotifierWithBlock:(id)block
{
  blockCopy = block;
  v4 = [CNCoreRecentsChangeNotifier alloc];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_ptr;
  v14 = getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_ptr;
  if (!getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_ptr)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_block_invoke;
    v10[3] = &unk_1E7412110;
    v10[4] = &v11;
    __getCRAcceptedIntroductionsDidChangeNotificationSymbolLoc_block_invoke(v10);
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v5)
  {
    getMDItemUniqueIdentifier_cold_1();
    v9 = v8;
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v9);
  }

  v6 = [(CNCoreRecentsChangeNotifier *)v4 initWithNotification:*v5 block:blockCopy];

  return v6;
}

- (CNCoreRecentsChangeNotifier)initWithNotification:(__CFString *)notification block:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = CNCoreRecentsChangeNotifier;
  v7 = [(CNCoreRecentsChangeNotifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_notification = notification;
    v9 = [blockCopy copy];
    notifyBlock = v8->_notifyBlock;
    v8->_notifyBlock = v9;
  }

  return v8;
}

- (void)stopObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notification = [(CNCoreRecentsChangeNotifier *)self notification];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, notification, 0);
}

- (void)_notifyObserver
{
  notifyBlock = [(CNCoreRecentsChangeNotifier *)self notifyBlock];
  notifyBlock[2]();
}

- (void)dealloc
{
  [(CNCoreRecentsChangeNotifier *)self stopObserving];
  v3.receiver = self;
  v3.super_class = CNCoreRecentsChangeNotifier;
  [(CNCoreRecentsChangeNotifier *)&v3 dealloc];
}

@end