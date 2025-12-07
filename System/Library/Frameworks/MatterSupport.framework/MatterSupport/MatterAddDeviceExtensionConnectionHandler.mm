@interface MatterAddDeviceExtensionConnectionHandler
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)init;
- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)initWithPrincipalObject:(id)object;
- (void)configureDeviceWithName:(NSString *)name room:(MTSDeviceSetupRoom *)room completionHandler:(id)handler;
- (void)fetchRoomsInHome:(MTSDeviceSetupHome *)home completionHandler:(id)handler;
- (void)pairDeviceInHome:(MTSDeviceSetupHome *)home onboardingPayload:(NSString *)payload uuid:(NSUUID *)uuid completionHandler:(id)handler;
- (void)selectThreadNetworkFromScanResults:(NSArray *)results completionHandler:(id)handler;
- (void)selectWiFiNetworkFromScanResults:(NSArray *)results completionHandler:(id)handler;
- (void)validateDeviceCredential:(MTSDeviceCredential *)credential completionHandler:(id)handler;
@end

@implementation MatterAddDeviceExtensionConnectionHandler

- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)initWithPrincipalObject:(id)object
{
  swift_unknownObjectRetain();
  sub_239856DE4();
  swift_unknownObjectRelease();
  return sub_23983C1E4(v4);
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  sub_23983C3C0(connectionCopy);

  return 1;
}

- (void)selectWiFiNetworkFromScanResults:(NSArray *)results completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = results;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_239856D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23985C7A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23985C7B0;
  v14[5] = v13;
  resultsCopy = results;
  selfCopy = self;
  sub_2398403E0(0, 0, v9, &unk_23985C7B8, v14);
}

- (void)selectThreadNetworkFromScanResults:(NSArray *)results completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = results;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_239856D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23985C778;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23985C780;
  v14[5] = v13;
  resultsCopy = results;
  selfCopy = self;
  sub_2398403E0(0, 0, v9, &unk_23985C788, v14);
}

- (void)validateDeviceCredential:(MTSDeviceCredential *)credential completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = credential;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_239856D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23985C750;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23985C758;
  v14[5] = v13;
  credentialCopy = credential;
  selfCopy = self;
  sub_2398403E0(0, 0, v9, &unk_23985C760, v14);
}

- (void)pairDeviceInHome:(MTSDeviceSetupHome *)home onboardingPayload:(NSString *)payload uuid:(NSUUID *)uuid completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = home;
  v15[3] = payload;
  v15[4] = uuid;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_239856D14();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23985C728;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23985C730;
  v18[5] = v17;
  homeCopy = home;
  payloadCopy = payload;
  uuidCopy = uuid;
  selfCopy = self;
  sub_2398403E0(0, 0, v13, &unk_23985C738, v18);
}

- (void)fetchRoomsInHome:(MTSDeviceSetupHome *)home completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = home;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_239856D14();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23985C700;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23985C708;
  v14[5] = v13;
  homeCopy = home;
  selfCopy = self;
  sub_2398403E0(0, 0, v9, &unk_23985C710, v14);
}

- (void)configureDeviceWithName:(NSString *)name room:(MTSDeviceSetupRoom *)room completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = name;
  v13[3] = room;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_239856D14();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23985C6A0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23985C6B0;
  v16[5] = v15;
  nameCopy = name;
  roomCopy = room;
  selfCopy = self;
  sub_2398403E0(0, 0, v11, &unk_23985C6C0, v16);
}

- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end