@interface NRDWiredPeer
- (NRDWiredPeer)init;
@end

@implementation NRDWiredPeer

- (NRDWiredPeer)init
{
  v14.receiver = self;
  v14.super_class = NRDWiredPeer;
  v2 = [(NRDWiredPeer *)&v14 init];
  if (!v2)
  {
    v7 = sub_1000E2538();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_1000E2538();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDWiredPeer init]"", 29);
    }

    v10 = _os_log_pack_size();
    v11 = __error();
    v12 = _os_log_pack_fill(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, *v11, &_mh_execute_header, "%{public}s [super init] failed");
    *v12 = 136446210;
    *(v12 + 4) = "[NRDWiredPeer init]";
    sub_1000E2538();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = objc_alloc_init(NSMutableDictionary);
  interfaceToPeerAddressDictionary = v3->_interfaceToPeerAddressDictionary;
  v3->_interfaceToPeerAddressDictionary = v4;

  return v3;
}

@end