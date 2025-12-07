@interface NDFDaemonService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC19SymptomDistribution16NDFDaemonService)init;
- (void)cleanupNetworkDeviceEntriesWithCompletionHandler:(id)handler;
- (void)deliverCloudKitDevicePayload:(_TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload *)payload completionHandler:(id)handler;
- (void)deliverCloudKitDevicePayloads:(NSArray *)payloads completionHandler:(id)handler;
- (void)fetchAllNetworkDeviceEntriesWithCompletionHandler:(id)handler;
- (void)fetchLatestNetworkDeviceEntriesWithCompletionHandler:(id)handler;
- (void)initializeSchemaWithCompletionHandler:(id)handler;
- (void)printDatabaseTelemetryStatsWithCompletionHandler:(id)handler;
- (void)publishNetworkDeviceEntryWithCompletionHandler:(id)handler;
- (void)startDelegatedDiscoveryFor:(NSString *)for cancelAfter:(double)after deviceType:(char)type completionHandler:(id)handler;
@end

@implementation NDFDaemonService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2329C7F30(connectionCopy);

  return v9 & 1;
}

- (_TtC19SymptomDistribution16NDFDaemonService)init
{
  v3 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_endpointBrowser;
  type metadata accessor for NDFBrowser(0);
  *(&self->super.isa + v3) = NDFBrowser.__allocating_init()();
  v4 = OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_logger;
  v5 = sub_2329A8DAC();
  v6 = sub_2329D2E14();
  (*(*(v6 - 8) + 16))(self + v4, v5, v6);
  *(&self->super.isa + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_persistenceController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19SymptomDistribution16NDFDaemonService_discoveryTask) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NDFDaemonService(0);
  return [(NDFDaemonService *)&v8 init];
}

- (void)startDelegatedDiscoveryFor:(NSString *)for cancelAfter:(double)after deviceType:(char)type completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = for;
  *(v15 + 24) = after;
  *(v15 + 32) = type;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_2329D3504();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2329D5190;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2329D5198;
  v18[5] = v17;
  forCopy = for;
  selfCopy = self;
  sub_2329C7B14(0, 0, v13, &unk_2329D51A0, v18);
}

- (void)deliverCloudKitDevicePayload:(_TtC31SymptomNetworkDiagnosticsCommon16NDFDevicePayload *)payload completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = payload;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2329D3504();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2329D5170;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2329D5178;
  v14[5] = v13;
  payloadCopy = payload;
  selfCopy = self;
  sub_2329C7B14(0, 0, v9, &unk_2329D5180, v14);
}

- (void)deliverCloudKitDevicePayloads:(NSArray *)payloads completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = payloads;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2329D3504();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2329D5150;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2329D5158;
  v14[5] = v13;
  payloadsCopy = payloads;
  selfCopy = self;
  sub_2329C7B14(0, 0, v9, &unk_2329D5160, v14);
}

- (void)publishNetworkDeviceEntryWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2329D3504();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2329D5130;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D5138;
  v12[5] = v11;
  selfCopy = self;
  sub_2329C7B14(0, 0, v7, &unk_2329D5140, v12);
}

- (void)fetchAllNetworkDeviceEntriesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2329D3504();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2329D5110;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D5118;
  v12[5] = v11;
  selfCopy = self;
  sub_2329C7B14(0, 0, v7, &unk_2329D5120, v12);
}

- (void)fetchLatestNetworkDeviceEntriesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2329D3504();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2329D50F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D50F8;
  v12[5] = v11;
  selfCopy = self;
  sub_2329C7B14(0, 0, v7, &unk_2329D5100, v12);
}

- (void)initializeSchemaWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2329D3504();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2329D50D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D50D8;
  v12[5] = v11;
  selfCopy = self;
  sub_2329C7B14(0, 0, v7, &unk_2329D50E0, v12);
}

- (void)cleanupNetworkDeviceEntriesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2329D3504();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2329D50B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D50B8;
  v12[5] = v11;
  selfCopy = self;
  sub_2329C7B14(0, 0, v7, &unk_2329D50C0, v12);
}

- (void)printDatabaseTelemetryStatsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDBDD98, &qword_2329D4860);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2329D3504();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2329D5068;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2329D5078;
  v12[5] = v11;
  selfCopy = self;
  sub_2329C7B14(0, 0, v7, &unk_2329D5088, v12);
}

@end