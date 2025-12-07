@interface WOWorkoutConfigurationDataSourcesBridgedModel
+ (NSString)localizedInformationalFooterText;
+ (NSString)localizedTitle;
- (BOOL)hasDataSources;
- (NSArray)bridgedExternalProviders;
- (WOWorkoutConfigurationDataSourcesBridgedModel)init;
- (void)reload:(id)reload;
- (void)updateExternalProvider:(id)provider enable:(BOOL)enable;
@end

@implementation WOWorkoutConfigurationDataSourcesBridgedModel

- (NSArray)bridgedExternalProviders
{
  selfCopy = self;
  sub_1C120();

  type metadata accessor for QueriedExternalProviderBridge(v3, v4);
  v5.super.isa = sub_228C4().super.isa;

  return v5.super.isa;
}

- (BOOL)hasDataSources
{
  selfCopy = self;
  v3 = sub_22364();
  if (v3 >> 62)
  {
    v4 = sub_229B4();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  return v4 != 0;
}

- (void)reload:(id)reload
{
  v4 = _Block_copy(reload);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1C740;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  selfCopy = self;
  sub_1C6E8(v7, v6);
  sub_22374();
  sub_1C6F8(v7, v6);
}

- (void)updateExternalProvider:(id)provider enable:(BOOL)enable
{
  providerCopy = provider;
  selfCopy = self;
  sub_22354();
}

+ (NSString)localizedTitle
{
  sub_22884();
  v2 = sub_22864();

  return v2;
}

+ (NSString)localizedInformationalFooterText
{
  sub_22884();
  v2 = sub_22864();

  return v2;
}

- (WOWorkoutConfigurationDataSourcesBridgedModel)init
{
  v3 = OBJC_IVAR___WOWorkoutConfigurationDataSourcesBridgedModel_model;
  sub_22394();
  swift_allocObject();
  v4 = sub_22384();
  *(&self->super.isa + v3) = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutConfigurationDataSourcesBridgedModel(v4, v5);
  return [(WOWorkoutConfigurationDataSourcesBridgedModel *)&v7 init];
}

@end