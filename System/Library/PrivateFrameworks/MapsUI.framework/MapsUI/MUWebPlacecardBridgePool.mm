@interface MUWebPlacecardBridgePool
+ (_TtC6MapsUI24MUWebPlacecardBridgePool)sharedPool;
- (id)takeBridge;
- (void)releaseBridge:(id)bridge;
@end

@implementation MUWebPlacecardBridgePool

+ (_TtC6MapsUI24MUWebPlacecardBridgePool)sharedPool
{
  if (qword_1EC174EC0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC174EC8;

  return v3;
}

- (id)takeBridge
{
  selfCopy = self;
  MUWebPlacecardBridgePool.take()();
  v4 = v3;

  return v4;
}

- (void)releaseBridge:(id)bridge
{
  bridgeCopy = bridge;
  selfCopy = self;
  MUWebPlacecardBridgePool.release(_:)(bridge);
}

@end