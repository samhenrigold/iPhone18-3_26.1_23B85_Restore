@interface DomainHelperInterface
- (_TtC12icloudMCCKit21DomainHelperInterface)init;
- (int64_t)getPKCategoryForDomain:(id)domain;
@end

@implementation DomainHelperInterface

- (int64_t)getPKCategoryForDomain:(id)domain
{
  v3 = sub_1D373797C();
  v5 = v4;
  if (qword_1EDEF4BF8 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v6 = sub_1D3733894(v3, v5);

  return sub_1D3727028(v6);
}

- (_TtC12icloudMCCKit21DomainHelperInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DomainHelperInterface();
  return [(DomainHelperInterface *)&v3 init];
}

@end