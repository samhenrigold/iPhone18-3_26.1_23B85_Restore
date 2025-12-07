@interface TSClock
+ (id)clockNameForClockIdentifier:(unint64_t)identifier;
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (NSMutableArray)clients;
- (NSString)clockName;
- (TSClock)init;
- (TSClock)initWithClockIdentifier:(unint64_t)identifier;
- (void)addClient:(id)client;
- (void)removeClient:(id)client;
@end

@implementation TSClock

- (TSClock)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

- (TSClock)initWithClockIdentifier:(unint64_t)identifier
{
  v15.receiver = self;
  v15.super_class = TSClock;
  v4 = [(TSClock *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_clockIdentifier = identifier;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v5->_clients;
    v5->_clients = weakObjectsPointerArray;

    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    identifier = [v8 stringWithFormat:v10, identifier];
    v12 = dispatch_queue_create([identifier UTF8String], 0);
    notificationsQueue = v5->_notificationsQueue;
    v5->_notificationsQueue = v12;

    if (!v5->_notificationsQueue)
    {

      return 0;
    }
  }

  return v5;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  if (numerator)
  {
    *numerator = 1;
  }

  if (denominator)
  {
    *denominator = 1;
  }

  if (anchor)
  {
    *anchor = -1;
  }

  if (domainAnchor)
  {
    *domainAnchor = -1;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  }

  return 0;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  if (numerator)
  {
    *numerator = 1;
  }

  if (denominator)
  {
    *denominator = 1;
  }

  if (anchor)
  {
    *anchor = -1;
  }

  if (domainAnchor)
  {
    *domainAnchor = -1;
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
  }

  return 0;
}

- (void)addClient:(id)client
{
  v16 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(TSClock *)self description];
    *buf = 136315394;
    v13 = uTF8String;
    v14 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Adding Client %s to clock %s\n", buf, 0x16u);
  }

  notificationQueue = [(TSClock *)self notificationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __21__TSClock_addClient___block_invoke;
  v10[3] = &unk_279DBD738;
  v10[4] = self;
  v11 = clientCopy;
  v9 = clientCopy;
  dispatch_sync(notificationQueue, v10);
}

void __21__TSClock_addClient___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) compact];
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:0 objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 40) == *(8 * i))
        {

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [*(*(a1 + 32) + 8) addPointer:?];
LABEL_11:
  objc_autoreleasePoolPop(v2);
}

- (void)removeClient:(id)client
{
  v16 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(TSClock *)self description];
    *buf = 136315394;
    v13 = uTF8String;
    v14 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removing Client %s from clock %s\n", buf, 0x16u);
  }

  notificationQueue = [(TSClock *)self notificationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __24__TSClock_removeClient___block_invoke;
  v10[3] = &unk_279DBD738;
  v10[4] = self;
  v11 = clientCopy;
  v9 = clientCopy;
  dispatch_sync(notificationQueue, v10);
}

void __24__TSClock_removeClient___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) compact];
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:0 objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = MEMORY[0];
    while (2)
    {
      v8 = 0;
      v9 = v6;
      v6 += v5;
      do
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 40) == *(8 * v8))
        {

          [*(*(a1 + 32) + 8) removePointerAtIndex:?];
          goto LABEL_11;
        }

        ++v9;
        v8 = (v8 + 1);
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  objc_autoreleasePoolPop(v2);
}

- (NSMutableArray)clients
{
  array = [MEMORY[0x277CBEB18] array];
  [(NSPointerArray *)self->_clients compact];
  v4 = self->_clients;
  v5 = [NSPointerArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (*(8 * i))
        {
          [array addObject:?];
        }
      }

      v6 = [NSPointerArray countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v6);
  }

  return array;
}

- (NSString)clockName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:v5, -[TSClock clockIdentifier](self, "clockIdentifier")];

  return v6;
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  v5 = MEMORY[0x277CCAB68];
  indentCopy = indent;
  infoCopy = info;
  string = [v5 string];
  v9 = [infoCopy objectForKeyedSubscript:?];
  [string appendFormat:indentCopy, v9];

  [string appendFormat:indentCopy];
  v10 = [infoCopy objectForKeyedSubscript:?];

  if (v10)
  {
    [string appendFormat:objc_msgSend(v10, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:?];
  }

  return string;
}

+ (id)clockNameForClockIdentifier:(unint64_t)identifier
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identifier = [v4 stringWithFormat:v6, identifier];

  return identifier;
}

@end