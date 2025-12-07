@interface MUTransitDeparturesDataSource
- (BOOL)isActive;
- (MUTransitDeparturesDataSource)init;
- (MUTransitDeparturesDataSourceDelegate)delegate;
- (id)traitsForTransitDeparturesDataProvider:(id)provider;
- (void)setIsActive:(BOOL)active;
- (void)transitDeparturesDataProviderDidReload:(id)reload;
@end

@implementation MUTransitDeparturesDataSource

- (MUTransitDeparturesDataSourceDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isActive
{
  v3 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsActive:(BOOL)active
{
  activeCopy = active;
  v5 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  *(self + v5) = activeCopy;
  [*(self + OBJC_IVAR___MUTransitDeparturesDataSource_dataProvider) setActive_];
}

- (MUTransitDeparturesDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)traitsForTransitDeparturesDataProvider:(id)provider
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    providerCopy = provider;
    selfCopy = self;
    traitsForDeparturesDataSource_ = [v6 traitsForDeparturesDataSource_];

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69A2210]);
    providerCopy2 = provider;
    selfCopy2 = self;
    result = [v10 init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    traitsForDeparturesDataSource_ = result;
  }

  return traitsForDeparturesDataSource_;
}

- (void)transitDeparturesDataProviderDidReload:(id)reload
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong transitDeparturesDataSourceWantsReload_];
    swift_unknownObjectRelease();
  }
}

@end