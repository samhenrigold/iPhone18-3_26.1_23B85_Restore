@interface ATDispatchCenter
+ (_TtC5AskTo16ATDispatchCenter)shared;
- (_TtC5AskTo16ATDispatchCenter)init;
- (void)canAskTo:(signed __int16)to requiredCapabilities:(NSSet *)capabilities completionHandler:(id)handler;
- (void)send:(_TtC5AskTo10ATQuestion *)send to:(signed __int16)to completionHandler:(id)handler;
@end

@implementation ATDispatchCenter

+ (_TtC5AskTo16ATDispatchCenter)shared
{
  if (qword_2813690C8 != -1)
  {
    swift_once();
  }

  v3 = qword_2813690D0;

  return v3;
}

- (void)send:(_TtC5AskTo10ATQuestion *)send to:(signed __int16)to completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379F8, &qword_2258E1ED0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = send;
  *(v14 + 24) = to;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_2258E0E40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2258E1F28;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2258E1F30;
  v17[5] = v16;
  sendCopy = send;
  selfCopy = self;
  sub_2258DEE80(0, 0, v12, &unk_2258E1F38, v17);
}

- (void)canAskTo:(signed __int16)to requiredCapabilities:(NSSet *)capabilities completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7379F8, &qword_2258E1ED0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = to;
  *(v14 + 24) = capabilities;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_2258E0E40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2258E1EE0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2258E1EF0;
  v17[5] = v16;
  capabilitiesCopy = capabilities;
  selfCopy = self;
  sub_2258DEE80(0, 0, v12, &unk_2258E1F00, v17);
}

- (_TtC5AskTo16ATDispatchCenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end