@interface _ASCredentialProviderExtensionNotificationManager
- (_TtC22AuthenticationServices49_ASCredentialProviderExtensionNotificationManager)init;
- (void)extensionsSupportingCredentialUpdateWithCompletionHandler:(id)handler;
- (void)reportAllAcceptedPublicKeyCredentialsWithRelyingParty:(NSString *)party userHandle:(NSData *)handle acceptedCredentialIDs:(NSArray *)ds completionHandler:(id)handler;
- (void)reportPublicKeyCredentialUpdateWithRelyingParty:(NSString *)party userHandle:(NSData *)handle newName:(NSString *)name completionHandler:(id)handler;
- (void)reportUnknownPublicKeyCredentialWithRelyingParty:(NSString *)party credentialID:(NSData *)d completionHandler:(id)handler;
- (void)reportUnusedPasswordCredentialWithDomain:(NSString *)domain username:(NSString *)username completionHandler:(id)handler;
@end

@implementation _ASCredentialProviderExtensionNotificationManager

- (void)extensionsSupportingCredentialUpdateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B1D7BF4C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B1D88648;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B1D88650;
  v12[5] = v11;

  sub_1B1D22574(0, 0, v7, &unk_1B1D88658, v12);
}

- (void)reportPublicKeyCredentialUpdateWithRelyingParty:(NSString *)party userHandle:(NSData *)handle newName:(NSString *)name completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = party;
  v15[3] = handle;
  v15[4] = name;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1B1D7BF4C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B1D88628;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B1D88630;
  v18[5] = v17;
  partyCopy = party;
  handleCopy = handle;
  nameCopy = name;

  sub_1B1D22574(0, 0, v13, &unk_1B1D88638, v18);
}

- (void)reportUnknownPublicKeyCredentialWithRelyingParty:(NSString *)party credentialID:(NSData *)d completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = party;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B1D7BF4C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B1D88608;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B1D88610;
  v16[5] = v15;
  partyCopy = party;
  dCopy = d;

  sub_1B1D22574(0, 0, v11, &unk_1B1D88618, v16);
}

- (void)reportAllAcceptedPublicKeyCredentialsWithRelyingParty:(NSString *)party userHandle:(NSData *)handle acceptedCredentialIDs:(NSArray *)ds completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = party;
  v15[3] = handle;
  v15[4] = ds;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1B1D7BF4C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B1D885E8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B1D885F0;
  v18[5] = v17;
  partyCopy = party;
  handleCopy = handle;
  dsCopy = ds;

  sub_1B1D22574(0, 0, v13, &unk_1B1D885F8, v18);
}

- (void)reportUnusedPasswordCredentialWithDomain:(NSString *)domain username:(NSString *)username completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = domain;
  v13[3] = username;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B1D7BF4C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B1D885C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B1D885D0;
  v16[5] = v15;
  domainCopy = domain;
  usernameCopy = username;

  sub_1B1D22574(0, 0, v11, &unk_1B1D86880, v16);
}

- (_TtC22AuthenticationServices49_ASCredentialProviderExtensionNotificationManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end