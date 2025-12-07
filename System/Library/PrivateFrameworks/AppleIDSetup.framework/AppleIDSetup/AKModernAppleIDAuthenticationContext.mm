@interface AKModernAppleIDAuthenticationContext
- (AKModernAppleIDAuthenticationContext)init;
- (AKModernAppleIDAuthenticationContext)initWithAuthenticatedServerRequestContext:(id)context;
- (AKModernAppleIDAuthenticationContext)initWithCoder:(id)coder;
- (AKModernAppleIDAuthenticationContext)initWithContext:(id)context;
- (void)dismissBasicLoginUIWithCompletion:(id)completion;
- (void)dismissKeepUsingUIWithCompletion:(id)completion;
- (void)dismissNativeRecoveryUIWithCompletion:(id)completion;
- (void)dismissSecondFactorUIWithCompletion:(id)completion;
- (void)dismissServerProvidedUIWithCompletion:(id)completion;
- (void)presentBasicLoginUIWithCompletion:(id)completion;
- (void)presentBiometricOrPasscodeValidationForAppleID:(NSString *)d completion:(id)completion;
- (void)presentFidoAuthForContext:(AKAppleIDAuthenticationContext *)context fidoContext:(AKFidoContext *)fidoContext completion:(id)completion;
- (void)presentKeepUsingUIForAppleID:(NSString *)d completion:(id)completion;
- (void)presentLoginAlertWithError:(NSError *)error title:(NSString *)title message:(NSString *)message completion:(id)completion;
- (void)presentNativeRecoveryUIWithContext:(AKAccountRecoveryContext *)context completion:(id)completion;
- (void)presentSecondFactorAlertWithError:(NSError *)error title:(NSString *)title message:(NSString *)message completion:(id)completion;
- (void)presentSecondFactorUIWithCompletion:(id)completion;
- (void)presentServerProvidedUIWithConfiguration:(AKServerRequestConfiguration *)configuration completion:(id)completion;
@end

@implementation AKModernAppleIDAuthenticationContext

- (AKModernAppleIDAuthenticationContext)initWithCoder:(id)coder
{
  v3 = (&self->super.super.isa + OBJC_IVAR___AKModernAppleIDAuthenticationContext_signInModelModifier);
  *v3 = 0;
  v3[1] = 0;
  result = sub_24075A9C4();
  __break(1u);
  return result;
}

- (AKModernAppleIDAuthenticationContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AKModernAppleIDAuthenticationContext)initWithAuthenticatedServerRequestContext:(id)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AKModernAppleIDAuthenticationContext)initWithContext:(id)context
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentBasicLoginUIWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240774788;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774790;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_240774798, v12);
}

- (void)dismissBasicLoginUIWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240774768;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774770;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_240774778, v12);
}

- (void)presentLoginAlertWithError:(NSError *)error title:(NSString *)title message:(NSString *)message completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = error;
  v15[3] = title;
  v15[4] = message;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_24075A3D4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_240774748;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_240774750;
  v18[5] = v17;
  errorCopy = error;
  titleCopy = title;
  messageCopy = message;
  selfCopy = self;
  sub_2406FC468(0, 0, v13, &unk_240774758, v18);
}

- (void)presentSecondFactorUIWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240774728;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774730;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_240774738, v12);
}

- (void)dismissSecondFactorUIWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240774708;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774710;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_240774718, v12);
}

- (void)presentSecondFactorAlertWithError:(NSError *)error title:(NSString *)title message:(NSString *)message completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = error;
  v15[3] = title;
  v15[4] = message;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_24075A3D4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2407746E8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2407746F0;
  v18[5] = v17;
  errorCopy = error;
  titleCopy = title;
  messageCopy = message;
  selfCopy = self;
  sub_2406FC468(0, 0, v13, &unk_2407746F8, v18);
}

- (void)presentBiometricOrPasscodeValidationForAppleID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2407746C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2407746D0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_2407746D8, v14);
}

- (void)presentServerProvidedUIWithConfiguration:(AKServerRequestConfiguration *)configuration completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2407746A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2407746B0;
  v14[5] = v13;
  configurationCopy = configuration;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_2407746B8, v14);
}

- (void)dismissServerProvidedUIWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240774688;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774690;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_240774698, v12);
}

- (void)presentNativeRecoveryUIWithContext:(AKAccountRecoveryContext *)context completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240774668;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240774670;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_240774678, v14);
}

- (void)dismissNativeRecoveryUIWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_240774648;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240774650;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_240774658, v12);
}

- (void)presentFidoAuthForContext:(AKAppleIDAuthenticationContext *)context fidoContext:(AKFidoContext *)fidoContext completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = context;
  v13[3] = fidoContext;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_24075A3D4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240774628;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240774630;
  v16[5] = v15;
  contextCopy = context;
  fidoContextCopy = fidoContext;
  selfCopy = self;
  sub_2406FC468(0, 0, v11, &unk_240774638, v16);
}

- (void)presentKeepUsingUIForAppleID:(NSString *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24075A3D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240774608;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240774610;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_2406FC468(0, 0, v9, &unk_240774618, v14);
}

- (void)dismissKeepUsingUIWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24075A3D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2407745F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_240767F10;
  v12[5] = v11;
  selfCopy = self;
  sub_2406FC468(0, 0, v7, &unk_24076FBC0, v12);
}

@end