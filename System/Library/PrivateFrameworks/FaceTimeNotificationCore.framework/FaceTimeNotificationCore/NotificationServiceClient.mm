@interface NotificationServiceClient
- (_TtC24FaceTimeNotificationCore25NotificationServiceClient)init;
- (void)alertExistsWithId:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)id completionHandler:(id)handler;
- (void)dismissAlertWithIdentifier:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)identifier animated:(BOOL)animated completionHandler:(id)handler;
- (void)frameWithIdentifier:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)identifier completionHandler:(id)handler;
- (void)sendAction:(_TtC24FaceTimeNotificationCore14UpstreamAction *)action to:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)to completionHandler:(id)handler;
- (void)showCallWithCall:(TUCall *)call in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler;
- (void)showDialPromptWithDialRequest:(TUDialRequest *)request in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler;
- (void)showDialPromptWithJoinRequest:(TUJoinConversationRequest *)request in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler;
- (void)showNotice:(_TtC24FaceTimeNotificationCore6Notice *)notice in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler;
- (void)showTestAlertWithConfiguration:(_TtC24FaceTimeNotificationCore18AlertConfiguration *)configuration completionHandler:(id)handler;
@end

@implementation NotificationServiceClient

- (void)sendAction:(_TtC24FaceTimeNotificationCore14UpstreamAction *)action to:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)to completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = action;
  v13[3] = to;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_24A9FED40();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA01520;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA01528;
  v16[5] = v15;
  actionCopy = action;
  toCopy = to;
  selfCopy = self;
  sub_24A9D806C(0, 0, v11, &unk_24AA01530, v16);
}

- (void)showTestAlertWithConfiguration:(_TtC24FaceTimeNotificationCore18AlertConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24A9FED40();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24AA01500;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AA01508;
  v14[5] = v13;
  configurationCopy = configuration;
  selfCopy = self;
  sub_24A9D806C(0, 0, v9, &unk_24AA01510, v14);
}

- (void)showDialPromptWithDialRequest:(TUDialRequest *)request in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = in;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_24A9FED40();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA014E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA014E8;
  v16[5] = v15;
  requestCopy = request;
  inCopy = in;
  selfCopy = self;
  sub_24A9D806C(0, 0, v11, &unk_24AA014F0, v16);
}

- (void)showDialPromptWithJoinRequest:(TUJoinConversationRequest *)request in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = in;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_24A9FED40();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA014C0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA014C8;
  v16[5] = v15;
  requestCopy = request;
  inCopy = in;
  selfCopy = self;
  sub_24A9D806C(0, 0, v11, &unk_24AA014D0, v16);
}

- (void)showCallWithCall:(TUCall *)call in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = call;
  v13[3] = in;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_24A9FED40();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA014A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA014A8;
  v16[5] = v15;
  callCopy = call;
  inCopy = in;
  selfCopy = self;
  sub_24A9D806C(0, 0, v11, &unk_24AA014B0, v16);
}

- (void)showNotice:(_TtC24FaceTimeNotificationCore6Notice *)notice in:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = notice;
  v13[3] = in;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_24A9FED40();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA01480;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA01488;
  v16[5] = v15;
  noticeCopy = notice;
  inCopy = in;
  selfCopy = self;
  sub_24A9D806C(0, 0, v11, &unk_24AA01490, v16);
}

- (void)dismissAlertWithIdentifier:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)identifier animated:(BOOL)animated completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = identifier;
  *(v13 + 24) = animated;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_24A9FED40();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AA01460;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AA01468;
  v16[5] = v15;
  identifierCopy = identifier;
  selfCopy = self;
  sub_24A9D806C(0, 0, v11, &unk_24AA01470, v16);
}

- (void)alertExistsWithId:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)id completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = id;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24A9FED40();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24AA01440;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AA01448;
  v14[5] = v13;
  idCopy = id;
  selfCopy = self;
  sub_24A9D806C(0, 0, v9, &unk_24AA01450, v14);
}

- (void)frameWithIdentifier:(_TtC24FaceTimeNotificationCore22WrappedAlertIdentifier *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82898, &qword_24AA00D88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24A9FED40();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24AA013F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AA01408;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_24A9D806C(0, 0, v9, &unk_24AA01418, v14);
}

- (_TtC24FaceTimeNotificationCore25NotificationServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end