@interface ShieldPresenter
- (_TtC12AppleIDSetup15ShieldPresenter)init;
- (void)performAIDASignInWith:(NSDictionary *)with completionHandler:(id)handler;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)setupPasscodeAndBiometricWithCompletionHandler:(id)handler;
- (void)shieldSetupDidFinishWith:(id)with error:(id)error;
- (void)shieldSetupSelectedAccount:(int64_t)account completionHandler:(id)handler;
@end

@implementation ShieldPresenter

- (_TtC12AppleIDSetup15ShieldPresenter)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_remoteHandler) = 0;
  *&self->remoteHandler[OBJC_IVAR____TtC12AppleIDSetup15ShieldPresenter_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ShieldPresenter();
  return [(ShieldPresenter *)&v4 init];
}

- (void)shieldSetupSelectedAccount:(int64_t)account completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = account;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240767F48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240767F50;
  v14[5] = v13;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_240767F58, v14);
}

- (void)setupPasscodeAndBiometricWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240767F28;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240767F30;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_240767F38, v12);
}

- (void)performAIDASignInWith:(NSDictionary *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240767F08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240767F10;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_24076FBC0, v14);
}

- (void)shieldSetupDidFinishWith:(id)with error:(id)error
{
  withCopy = with;
  if (with)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
    withCopy = sub_240759F74();
  }

  errorCopy = error;
  selfCopy = self;
  sub_2405FAE88(withCopy, error);
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_2405FDD88(activateCopy);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_2405FB234(deactivateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_2405FB4D8(handleCopy, error);
}

@end