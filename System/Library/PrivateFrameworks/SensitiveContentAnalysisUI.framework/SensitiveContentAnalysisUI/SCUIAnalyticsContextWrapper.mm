@interface SCUIAnalyticsContextWrapper
- (SCUIAnalyticsContextWrapper)init;
- (SCUIAnalyticsContextWrapper)initWithContextWrapper:(id)wrapper;
- (SCUIAnalyticsContextWrapper)initWithInterventionType:(int64_t)type menuType:(int64_t)menuType actions:(id)actions;
- (SCUIAnalyticsContextWrapper)initWithInterventionType:(int64_t)type menuType:(int64_t)menuType actions:(id)actions authority:(id)authority;
- (void)collectResourcesInteractionEventWithRequestedResource:(int64_t)resource;
- (void)collectResourcesShownEvent;
@end

@implementation SCUIAnalyticsContextWrapper

- (SCUIAnalyticsContextWrapper)initWithInterventionType:(int64_t)type menuType:(int64_t)menuType actions:(id)actions authority:(id)authority
{
  v9 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC66B0F8();
  v12 = sub_1BC75BD00();
  ObjectType = swift_getObjectType();
  authorityCopy = authority;
  sub_1BC665400(type, menuType, v12, authority, v11);
  v15 = (*(ObjectType + 112))(v11);

  swift_deallocPartialClassInstance();
  return v15;
}

- (SCUIAnalyticsContextWrapper)initWithInterventionType:(int64_t)type menuType:(int64_t)menuType actions:(id)actions
{
  sub_1BC66B0F8();
  v7 = sub_1BC75BD00();
  return AnalyticsContextWrapper.init(interventionType:menuType:actions:)(type, menuType, v7);
}

- (SCUIAnalyticsContextWrapper)initWithContextWrapper:(id)wrapper
{
  v4 = type metadata accessor for AnalyticsUIContext(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  ObjectType = swift_getObjectType();
  v11 = *((*MEMORY[0x1E69E7D40] & *wrapper) + 0x58);
  wrapperCopy = wrapper;
  v11();
  sub_1BC664BAC(v7, v9);
  v13 = (*(ObjectType + 112))(v9);

  swift_deallocPartialClassInstance();
  return v13;
}

- (void)collectResourcesInteractionEventWithRequestedResource:(int64_t)resource
{
  v5 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v8();
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC653F90(v7, resource);

  sub_1BC6689C4(v7, type metadata accessor for AnalyticsUIContext);
}

- (void)collectResourcesShownEvent
{
  v3 = type metadata accessor for AnalyticsUIContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v6();
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC654C64(v5);

  sub_1BC6689C4(v5, type metadata accessor for AnalyticsUIContext);
}

- (SCUIAnalyticsContextWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end