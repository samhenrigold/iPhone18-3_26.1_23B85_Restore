@interface NRBabelSimulator
- (NRBabelSimulator)init;
@end

@implementation NRBabelSimulator

- (NRBabelSimulator)init
{
  v21.receiver = self;
  v21.super_class = NRBabelSimulator;
  v2 = [(NRBabelSimulator *)&v21 init];
  if (!v2)
  {
    v14 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_1000CB9A8();
      _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBabelSimulator init]"", 4010);
    }

    v17 = _os_log_pack_size();
    v18 = __error();
    v19 = _os_log_pack_fill(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v17, *v18, &_mh_execute_header, "%{public}s [super init] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRBabelSimulator init]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v3 = v2;
  v4 = objc_alloc_init(NSMutableArray);
  fakeInstances = v3->_fakeInstances;
  v3->_fakeInstances = v4;

  v6 = objc_alloc_init(NSMutableArray);
  fakeLinks = v3->_fakeLinks;
  v3->_fakeLinks = v6;

  v8 = [[NRBabelLinkFake alloc] initWithName:@"fake1"];
  v9 = [[NRBabelLinkFake alloc] initWithName:@"fake2"];
  [(NSMutableArray *)v3->_fakeLinks addObject:v8];
  [(NSMutableArray *)v3->_fakeLinks addObject:v9];
  v10 = [[NRBabelInstanceFake alloc] initWithName:@"A"];
  v11 = [[NRBabelInstanceFake alloc] initWithName:@"B"];
  v12 = [[NRBabelInstanceFake alloc] initWithName:@"C"];
  [(NSMutableArray *)v3->_fakeInstances addObject:v10];
  [(NSMutableArray *)v3->_fakeInstances addObject:v11];
  [(NSMutableArray *)v3->_fakeInstances addObject:v12];

  return v3;
}

@end