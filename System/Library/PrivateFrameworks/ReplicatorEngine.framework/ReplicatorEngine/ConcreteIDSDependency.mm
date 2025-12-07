@interface ConcreteIDSDependency
- (_TtC16ReplicatorEngine21ConcreteIDSDependency)init;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation ConcreteIDSDependency

- (_TtC16ReplicatorEngine21ConcreteIDSDependency)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  serviceCopy = service;
  selfCopy = self;
  sub_1DEF323AC(selfCopy);
}

- (void)service:(id)service devicesChanged:(id)changed
{
  selfCopy = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4F58, &unk_1DEF95DB0);
  sub_1DEE1B548(&qword_1ECDE2D08, &qword_1ECDE4F58, &unk_1DEF95DB0, MEMORY[0x1E695BF80]);
  sub_1DEF8D5A8();
}

@end