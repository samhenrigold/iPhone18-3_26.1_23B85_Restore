@interface NRDevicePairingDirector
- (NRDevicePairingDirector)init;
@end

@implementation NRDevicePairingDirector

- (NRDevicePairingDirector)init
{
  v16.receiver = self;
  v16.super_class = NRDevicePairingDirector;
  v2 = [(NRDevicePairingDirector *)&v16 init];
  if (!v2)
  {
    v9 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_100123258();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePairingDirector init]"", 3894);
    }

    v12 = _os_log_pack_size();
    v13 = __error();
    v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s [super init] failed");
    *v14 = 136446210;
    *(v14 + 4) = "[NRDevicePairingDirector init]";
    sub_100123258();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = sub_100003490();
  queue = v3->_queue;
  v3->_queue = v4;

  v6 = objc_alloc_init(NSMutableDictionary);
  devicePairingConnections = v3->_devicePairingConnections;
  v3->_devicePairingConnections = v6;

  return v3;
}

@end