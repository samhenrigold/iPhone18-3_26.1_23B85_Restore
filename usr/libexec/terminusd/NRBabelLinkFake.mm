@interface NRBabelLinkFake
- (NRBabelLinkFake)initWithName:(id)name;
@end

@implementation NRBabelLinkFake

- (NRBabelLinkFake)initWithName:(id)name
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = NRBabelLinkFake;
  v5 = [(NRBabelLinkFake *)&v19 init];
  if (!v5)
  {
    v12 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_1000CB9A8();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRBabelLinkFake initWithName:]"", 3879);
    }

    v15 = _os_log_pack_size();
    v16 = __error();
    v17 = _os_log_pack_fill(&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15, *v16, &_mh_execute_header, "%{public}s [super init] failed");
    *v17 = 136446210;
    *(v17 + 4) = "[NRBabelLinkFake initWithName:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v6 = v5;
  name = v5->_name;
  v5->_name = nameCopy;
  v8 = nameCopy;

  v9 = objc_alloc_init(NSMutableArray);
  fakeInterfaces = v6->_fakeInterfaces;
  v6->_fakeInterfaces = v9;

  v6->_fakeLinkIndex = atomic_fetch_add_explicit(word_1002284B8, 1u, memory_order_relaxed);
  return v6;
}

@end