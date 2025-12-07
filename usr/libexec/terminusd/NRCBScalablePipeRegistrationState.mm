@interface NRCBScalablePipeRegistrationState
- (NRCBScalablePipeRegistrationState)init;
@end

@implementation NRCBScalablePipeRegistrationState

- (NRCBScalablePipeRegistrationState)init
{
  v14.receiver = self;
  v14.super_class = NRCBScalablePipeRegistrationState;
  v2 = [(NRCBScalablePipeRegistrationState *)&v14 init];
  if (!v2)
  {
    v7 = sub_10002D6B4();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10002D6B4();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRCBScalablePipeRegistrationState init]"", 214);
    }

    v10 = _os_log_pack_size();
    v11 = __error();
    v12 = _os_log_pack_fill(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, *v11, &_mh_execute_header, "%{public}s [super init] failed");
    *v12 = 136446210;
    *(v12 + 4) = "[NRCBScalablePipeRegistrationState init]";
    sub_10002D6B4();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = objc_alloc_init(NSMutableSet);
  connectedPipes = v3->_connectedPipes;
  v3->_connectedPipes = v4;

  return v3;
}

@end