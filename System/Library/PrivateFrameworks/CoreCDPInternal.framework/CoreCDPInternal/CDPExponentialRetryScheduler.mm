@interface CDPExponentialRetryScheduler
- (_TtC15CoreCDPInternal28CDPExponentialRetryScheduler)init;
- (void)retryFetchAccountInfo:(SecureBackup *)info cdpContext:(CDPContext *)context completionHandler:(id)handler;
- (void)retryFetchAllEscrowRecord:(OTConfigurationContext *)record cdpContext:(CDPContext *)context completionHandler:(id)handler;
- (void)retryFetchEscrowRecord:(OTConfigurationContext *)record cdpContext:(CDPContext *)context completionHandler:(id)handler;
- (void)retrySilentAuthWithAuthContext:(AKAppleIDAuthenticationContext *)context completionHandler:(id)handler;
@end

@implementation CDPExponentialRetryScheduler

- (void)retryFetchEscrowRecord:(OTConfigurationContext *)record cdpContext:(CDPContext *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = record;
  v13[3] = context;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_245193974();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24519A040;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24519A048;
  v16[5] = v15;
  recordCopy = record;
  contextCopy = context;
  selfCopy = self;
  sub_24517BC80(0, 0, v11, &unk_24519A050, v16);
}

- (void)retryFetchAllEscrowRecord:(OTConfigurationContext *)record cdpContext:(CDPContext *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = record;
  v13[3] = context;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_245193974();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24519A020;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24519A028;
  v16[5] = v15;
  recordCopy = record;
  contextCopy = context;
  selfCopy = self;
  sub_24517BC80(0, 0, v11, &unk_24519A030, v16);
}

- (void)retryFetchAccountInfo:(SecureBackup *)info cdpContext:(CDPContext *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = info;
  v13[3] = context;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_245193974();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24519A000;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24519A008;
  v16[5] = v15;
  infoCopy = info;
  contextCopy = context;
  selfCopy = self;
  sub_24517BC80(0, 0, v11, &unk_24519A010, v16);
}

- (void)retrySilentAuthWithAuthContext:(AKAppleIDAuthenticationContext *)context completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245193974();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245199FA0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245199FB0;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_24517BC80(0, 0, v9, &unk_245199FC0, v14);
}

- (_TtC15CoreCDPInternal28CDPExponentialRetryScheduler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CDPExponentialRetryScheduler();
  return [(CDPExponentialRetryScheduler *)&v3 init];
}

@end