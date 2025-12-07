@interface NRAnalytics
- (NRAnalytics)init;
@end

@implementation NRAnalytics

- (NRAnalytics)init
{
  v14.receiver = self;
  v14.super_class = NRAnalytics;
  v2 = [(NRAnalytics *)&v14 init];
  if (!v2)
  {
    v7 = sub_100155154();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100155154();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRAnalytics init]"", 53);
    }

    v10 = _os_log_pack_size();
    v11 = __error();
    v12 = _os_log_pack_fill(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, *v11, &_mh_execute_header, "%{public}s [super init] failed");
    *v12 = 136446210;
    *(v12 + 4) = "[NRAnalytics init]";
    sub_100155154();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = objc_alloc_init(NSMutableDictionary);
  eventDictionary = v3->_eventDictionary;
  v3->_eventDictionary = v4;

  return v3;
}

@end