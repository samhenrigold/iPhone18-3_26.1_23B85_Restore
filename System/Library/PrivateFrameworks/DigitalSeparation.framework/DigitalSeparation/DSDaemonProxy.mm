@interface DSDaemonProxy
+ (void)initialize;
- (DSDaemonProxy)init;
- (NSArray)signalsToReport;
- (void)addSignalWithIdentifier:(id)identifier sharingType:(id)type signalType:(id)signalType;
- (void)removeSignalWithIdentifier:(id)identifier sharingType:(id)type signalType:(id)signalType;
- (void)sendAggregatedSignals;
@end

@implementation DSDaemonProxy

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLog_7 = os_log_create("com.apple.DigitalSeparation", "DSDaemonProxy");

    MEMORY[0x2821F96F8]();
  }
}

- (DSDaemonProxy)init
{
  v5.receiver = self;
  v5.super_class = DSDaemonProxy;
  v2 = [(DSDaemonProxy *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [(DSDaemonProxy *)v2 setUnreportedSignals:v3];
  }

  return v2;
}

- (void)addSignalWithIdentifier:(id)identifier sharingType:(id)type signalType:(id)signalType
{
  if (identifier && type && signalType)
  {
    v8 = MEMORY[0x277D48DD0];
    signalTypeCopy = signalType;
    typeCopy = type;
    identifierCopy = identifier;
    v13 = objc_alloc_init(v8);
    [v13 setSharingIdentifier:identifierCopy];

    [v13 setSharingType:typeCopy];
    [v13 setSignalType:signalTypeCopy];

    unreportedSignals = [(DSDaemonProxy *)self unreportedSignals];
    [unreportedSignals addObject:v13];
  }
}

- (void)removeSignalWithIdentifier:(id)identifier sharingType:(id)type signalType:(id)signalType
{
  if (identifier && type && signalType)
  {
    v8 = MEMORY[0x277D48DD0];
    signalTypeCopy = signalType;
    typeCopy = type;
    identifierCopy = identifier;
    v13 = objc_alloc_init(v8);
    [v13 setSharingIdentifier:identifierCopy];

    [v13 setSharingType:typeCopy];
    [v13 setSignalType:signalTypeCopy];

    unreportedSignals = [(DSDaemonProxy *)self unreportedSignals];
    [unreportedSignals removeObject:v13];
  }
}

- (void)sendAggregatedSignals
{
  v14 = *MEMORY[0x277D85DE8];
  unreportedSignals = [(DSDaemonProxy *)self unreportedSignals];
  allObjects = [unreportedSignals allObjects];
  v5 = [allObjects copy];

  if ([v5 count])
  {
    initConnection = [objc_alloc(MEMORY[0x277D48DC8]) initConnection];
    [(DSDaemonProxy *)self setDaemonConnection:initConnection];

    v7 = DSLog_7;
    if (os_log_type_enabled(DSLog_7, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v13 = v5;
      _os_log_impl(&dword_248C40000, v7, OS_LOG_TYPE_INFO, "Reporting signals to daemon: %{private}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    daemonConnection = [(DSDaemonProxy *)self daemonConnection];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__DSDaemonProxy_sendAggregatedSignals__block_invoke;
    v9[3] = &unk_278F72FE0;
    objc_copyWeak(&v11, buf);
    v10 = v5;
    [daemonConnection handleSignals:v10 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __38__DSDaemonProxy_sendAggregatedSignals__block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5 || (a2 & 1) == 0)
  {
    v7 = DSLog_7;
    if (os_log_type_enabled(DSLog_7, OS_LOG_TYPE_ERROR))
    {
      v10 = @"Unknown";
      v11 = *(a1 + 32);
      if (v5)
      {
        v10 = v5;
      }

      v12 = 138412547;
      v13 = v10;
      v14 = 2113;
      v15 = v11;
      _os_log_error_impl(&dword_248C40000, v7, OS_LOG_TYPE_ERROR, "Error: %@ Proxy failed to handle %{private}@", &v12, 0x16u);
    }
  }

  v8 = [WeakRetained daemonConnection];
  [v8 disconnect];

  v9 = [WeakRetained unreportedSignals];
  [v9 removeAllObjects];
}

- (NSArray)signalsToReport
{
  unreportedSignals = [(DSDaemonProxy *)self unreportedSignals];
  allObjects = [unreportedSignals allObjects];

  return allObjects;
}

@end