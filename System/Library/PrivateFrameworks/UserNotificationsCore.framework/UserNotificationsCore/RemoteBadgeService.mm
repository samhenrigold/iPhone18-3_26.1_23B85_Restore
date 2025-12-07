@interface RemoteBadgeService
- (BOOL)setBadgeValue:(id)value forBundleIdentifier:(id)identifier;
- (_TtC21UserNotificationsCore18RemoteBadgeService)init;
- (id)badgeNumberForBundleIdentifier:(id)identifier;
@end

@implementation RemoteBadgeService

- (_TtC21UserNotificationsCore18RemoteBadgeService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)badgeNumberForBundleIdentifier:(id)identifier
{
  sub_1DA940A14();
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7740, &unk_1DA964EA0);
  sub_1DA940FE4();

  return v6;
}

- (BOOL)setBadgeValue:(id)value forBundleIdentifier:(id)identifier
{
  if (value)
  {
    identifierCopy = identifier;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1DA941154();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    identifierCopy2 = identifier;
    selfCopy2 = self;
  }

  v10 = sub_1DA940A14();
  v12 = v11;

  v13 = sub_1DA921AC0(v15, v10, v12);

  sub_1DA896614(v15);
  return v13 & 1;
}

@end