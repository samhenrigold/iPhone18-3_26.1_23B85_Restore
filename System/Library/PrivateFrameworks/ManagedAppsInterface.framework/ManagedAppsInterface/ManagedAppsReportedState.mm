@interface ManagedAppsReportedState
- (NSString)description;
- (_TtC20ManagedAppsInterface24ManagedAppsReportedState)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ManagedAppsReportedState

- (void)encodeWithCoder:(id)coder
{
  type metadata accessor for ManagedAppsReportedAppState();
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_25807FC88();
  v7 = sub_25807FCB8();
  [coderCopy encodeObject:v6 forKey:v7];
}

- (NSString)description
{
  selfCopy = self;
  sub_25807FE78();
  MEMORY[0x259C774A0](0xD000000000000030, 0x8000000258082EB0);
  type metadata accessor for ManagedAppsReportedAppState();
  v3 = sub_25807FCA8();
  MEMORY[0x259C774A0](v3);

  MEMORY[0x259C774A0](687370, 0xE300000000000000);

  v4 = sub_25807FCB8();

  return v4;
}

- (_TtC20ManagedAppsInterface24ManagedAppsReportedState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end