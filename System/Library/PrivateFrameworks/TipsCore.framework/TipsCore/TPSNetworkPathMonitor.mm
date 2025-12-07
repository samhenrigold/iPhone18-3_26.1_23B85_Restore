@interface TPSNetworkPathMonitor
+ (BOOL)isNetworkError:(id)error;
+ (TPSNetworkPathMonitor)sharedMonitor;
- (TPSNetworkPathMonitor)init;
- (void)addObserverForKey:(id)key using:(id)using;
- (void)removeObserverForKey:(id)key;
- (void)start;
- (void)stop;
@end

@implementation TPSNetworkPathMonitor

+ (TPSNetworkPathMonitor)sharedMonitor
{
  if (qword_1EDD44950 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD44958;

  return v3;
}

- (void)start
{
  selfCopy = self;
  NetworkMonitorProxy.start()();
}

- (void)stop
{
  selfCopy = self;
  NetworkMonitorProxy.stop()();
}

- (void)addObserverForKey:(id)key using:(id)using
{
  v6 = sub_1C014BD80();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(using);
  sub_1C014BD60();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  NetworkMonitorProxy.addObserver(for:using:)(v9, sub_1C0118CC8, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)removeObserverForKey:(id)key
{
  v4 = sub_1C014BD80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BD60();
  selfCopy = self;
  NetworkMonitorProxy.removeObserver(_:)(v7);

  (*(v5 + 8))(v7, v4);
}

+ (BOOL)isNetworkError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = sub_1C014C230();
  v7 = v6;

  if (v5 == sub_1C014C230() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1C014C9F0();

    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  code = [errorCopy code];

  return code == -1009;
}

- (TPSNetworkPathMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end