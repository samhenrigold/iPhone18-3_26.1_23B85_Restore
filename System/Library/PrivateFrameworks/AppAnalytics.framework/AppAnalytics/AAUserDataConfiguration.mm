@interface AAUserDataConfiguration
- (AAUserDataConfiguration)init;
- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)kind startDateStorage:(id)storage globalSamplingThreshold:(int64_t)threshold userIDResetFlag:(id)flag storefrontProvider:(id)provider;
- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)kind startDateStorage:(id)storage userIDResetFlag:(id)flag storefrontProvider:(id)provider;
@end

@implementation AAUserDataConfiguration

- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)kind startDateStorage:(id)storage globalSamplingThreshold:(int64_t)threshold userIDResetFlag:(id)flag storefrontProvider:(id)provider
{
  type metadata accessor for BridgedIDSessionKind();
  v11 = type metadata accessor for BridgedUserIDConfiguration();
  sub_1B69EDA78(v11, v12);
  v13 = sub_1B6AB9210();
  swift_unknownObjectRetain();
  flagCopy = flag;
  swift_unknownObjectRetain();
  v15 = sub_1B69ECA38(v13, storage, threshold, flag, provider);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v15;
}

- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)kind startDateStorage:(id)storage userIDResetFlag:(id)flag storefrontProvider:(id)provider
{
  type metadata accessor for BridgedIDSessionKind();
  v9 = type metadata accessor for BridgedUserIDConfiguration();
  sub_1B69EDA78(v9, v10);
  v11 = sub_1B6AB9210();
  swift_unknownObjectRetain();
  flagCopy = flag;
  swift_unknownObjectRetain();
  v13 = sub_1B69ED228(v11, storage, flag, provider);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v13;
}

- (AAUserDataConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end