@interface PASUICDPEnrollmentObserver
- (_TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver)init;
- (uint64_t)uiController:didPresentRootViewController:;
- (void)dealloc;
- (void)uiController:(id)controller prepareAlertContext:(id)context;
- (void)uiController:(id)controller preparePresentationContext:(id)context;
@end

@implementation PASUICDPEnrollmentObserver

- (void)dealloc
{
  selfCopy = self;
  sub_261155CD4();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for PASUICDPEnrollmentObserver(0);
  [(PASUICDPEnrollmentObserver *)&v3 dealloc];
}

- (_TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)uiController:(id)controller prepareAlertContext:(id)context
{
  v6 = _Block_copy(context);
  _Block_copy(v6);
  controllerCopy = controller;
  selfCopy = self;
  sub_26115626C(v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)uiController:(id)controller preparePresentationContext:(id)context
{
  v6 = _Block_copy(context);
  _Block_copy(v6);
  controllerCopy = controller;
  selfCopy = self;
  sub_2611563BC(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (uint64_t)uiController:didPresentRootViewController:
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v4 = sub_26115AD54();
  v5 = sub_26115B834();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_261107000, v4, v5, "PASUICDPEnrollmentObserver uiController(_:didPresentRootViewController:)", v6, 2u);
    MEMORY[0x2666FA930](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

@end