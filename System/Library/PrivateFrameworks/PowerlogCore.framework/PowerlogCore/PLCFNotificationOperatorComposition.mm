@interface PLCFNotificationOperatorComposition
- (BOOL)listenForNotifications:(BOOL)notifications;
- (PLCFNotificationOperatorComposition)initWithOperator:(id)operator forNotification:(id)notification requireState:(BOOL)state withBlock:(id)block;
- (PLCFNotificationOperatorComposition)initWithWorkQueue:(id)queue forNotification:(id)notification requireState:(BOOL)state withBlock:(id)block;
- (PLOperator)operator;
- (void)dealloc;
@end

@implementation PLCFNotificationOperatorComposition

- (PLCFNotificationOperatorComposition)initWithWorkQueue:(id)queue forNotification:(id)notification requireState:(BOOL)state withBlock:(id)block
{
  queueCopy = queue;
  notificationCopy = notification;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = PLCFNotificationOperatorComposition;
  v14 = [(PLCFNotificationOperatorComposition *)&v20 init];
  v15 = v14;
  if (v14 && (objc_storeStrong(&v14->_workQueue, queue), v16 = MEMORY[0x1DA71B0D0](blockCopy), operatorBlock = v15->_operatorBlock, v15->_operatorBlock = v16, operatorBlock, objc_storeStrong(&v15->_notificationName, notification), v15->_isStateRequired = state, v15->_stateToken = 0, ![(PLCFNotificationOperatorComposition *)v15 listenForNotifications:1]))
  {
    [(PLCFNotificationOperatorComposition *)v15 listenForNotifications:0];
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  return v18;
}

- (PLCFNotificationOperatorComposition)initWithOperator:(id)operator forNotification:(id)notification requireState:(BOOL)state withBlock:(id)block
{
  stateCopy = state;
  operatorCopy = operator;
  blockCopy = block;
  notificationCopy = notification;
  workQueue = [operatorCopy workQueue];
  v14 = [(PLCFNotificationOperatorComposition *)self initWithWorkQueue:workQueue forNotification:notificationCopy requireState:stateCopy withBlock:blockCopy];

  if (v14)
  {
    objc_storeWeak(&v14->_operator, operatorCopy);
  }

  return v14;
}

- (BOOL)listenForNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  if ([(PLCFNotificationOperatorComposition *)self listeningForNotifications]!= notifications)
  {
    [(PLCFNotificationOperatorComposition *)self setListeningForNotifications:notificationsCopy];
    if (notificationsCopy)
    {
      if ([(PLCFNotificationOperatorComposition *)self isStateRequired])
      {
        notificationName = [(PLCFNotificationOperatorComposition *)self notificationName];
        uTF8String = [notificationName UTF8String];

        if (notify_register_check(uTF8String, &self->_stateToken))
        {
          [(PLCFNotificationOperatorComposition *)self setListeningForNotifications:0];
          return 0;
        }
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, notificationCallback, [(PLCFNotificationOperatorComposition *)self notificationName], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    else
    {
      v8 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(v8, self, [(PLCFNotificationOperatorComposition *)self notificationName], 0);
    }
  }

  return 1;
}

- (void)dealloc
{
  [(PLCFNotificationOperatorComposition *)self listenForNotifications:0];
  v3.receiver = self;
  v3.super_class = PLCFNotificationOperatorComposition;
  [(PLCFNotificationOperatorComposition *)&v3 dealloc];
}

- (PLOperator)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

@end