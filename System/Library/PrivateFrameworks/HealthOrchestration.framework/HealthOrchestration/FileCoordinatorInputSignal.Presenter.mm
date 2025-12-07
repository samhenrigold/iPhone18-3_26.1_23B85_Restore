@interface FileCoordinatorInputSignal.Presenter
- (NSURL)presentedItemURL;
- (_TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter)init;
- (void)presentedItemDidChange;
@end

@implementation FileCoordinatorInputSignal.Presenter

- (NSURL)presentedItemURL
{
  v3 = sub_22887F060();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter_observedURL, v3, v5);
  v8 = sub_22887F040();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (void)presentedItemDidChange
{
  if (swift_weakLoadStrong())
  {
    v3 = OBJC_IVAR____TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter_observedURL;
    selfCopy = self;
    sub_228819478((&self->super.isa + v3));
  }
}

- (_TtCC19HealthOrchestration26FileCoordinatorInputSignal9Presenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end