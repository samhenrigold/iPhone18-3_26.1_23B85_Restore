@interface AISAppleIDAuthContextProvider
- (_TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider)init;
- (id)remoteUIStyle;
- (void)contextDidDismissLoginAlertController:(id)controller;
- (void)contextDidEndPresentingSecondaryUI:(id)i;
- (void)contextDidPresentLoginAlertController:(id)controller;
- (void)contextWillBeginPresentingSecondaryUI:(id)i;
- (void)contextWillDismissLoginAlertController:(id)controller;
- (void)signAdditionalHeadersWithRequest:(NSMutableURLRequest *)request withCompletion:(id)completion;
- (void)willPresentModalNavigationController:(id)controller;
@end

@implementation AISAppleIDAuthContextProvider

- (_TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contextDidPresentLoginAlertController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2409DF0AC();
}

- (void)contextWillDismissLoginAlertController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2409DF230();
}

- (void)contextDidDismissLoginAlertController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2409DF3B4();
}

- (void)contextWillBeginPresentingSecondaryUI:(id)i
{
  iCopy = i;
  selfCopy = self;
  sub_2409DF538();
}

- (void)contextDidEndPresentingSecondaryUI:(id)i
{
  iCopy = i;
  selfCopy = self;
  sub_2409DF6BC();
}

- (id)remoteUIStyle
{
  v2 = sub_2409DF840();

  return v2;
}

- (void)willPresentModalNavigationController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2409DF978();
}

- (void)signAdditionalHeadersWithRequest:(NSMutableURLRequest *)request withCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240A36D00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240A30840;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_240A0B0A4(0, 0, v9, &unk_240A33600, v14);
}

@end