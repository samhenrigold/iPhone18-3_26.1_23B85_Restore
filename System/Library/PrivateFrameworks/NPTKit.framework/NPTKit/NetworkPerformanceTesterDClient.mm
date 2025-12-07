@interface NetworkPerformanceTesterDClient
- (void)getPrivilegedFileHandleForPacketCaptureWithCompletionHandler:(id)handler;
- (void)getPrivilegedFileHandleForPath:(NSString *)path completionHandler:(id)handler;
- (void)startLocalPerformanceTestWith:(id)with completionHandler:(id)handler;
- (void)stopLocalPerformanceTest:(id)test;
- (void)testServiceWithArguments:(NSArray *)arguments completionHandler:(id)handler;
@end

@implementation NetworkPerformanceTesterDClient

- (void)testServiceWithArguments:(NSArray *)arguments completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = arguments;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_233470D04();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_233476E70;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_233476E78;
  v13[5] = v12;
  argumentsCopy = arguments;

  sub_233469230(0, 0, v8, &unk_233476E80, v13);
}

- (void)getPrivilegedFileHandleForPath:(NSString *)path completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = path;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_233470D04();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_233476E50;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_233476E58;
  v13[5] = v12;
  pathCopy = path;

  sub_233469230(0, 0, v8, &unk_233476E60, v13);
}

- (void)getPrivilegedFileHandleForPacketCaptureWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08);
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_233470D04();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_233476E08;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_233476E18;
  v11[5] = v10;

  sub_233469230(0, 0, v6, &unk_233476E28, v11);
}

- (void)startLocalPerformanceTestWith:(id)with completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->server;
  v11[4] = sub_233468E20;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_233467918;
  v11[3] = &block_descriptor_38;
  v9 = _Block_copy(v11);
  withCopy = with;

  [v8 startLocalPerformanceTestWith:withCopy completionHandler:v9];

  _Block_release(v9);
}

- (void)stopLocalPerformanceTest:(id)test
{
  v4 = _Block_copy(test);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->server;
  v8[4] = sub_233468E0C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_233467C30;
  v8[3] = &block_descriptor_32;
  v7 = _Block_copy(v8);

  [v6 stopLocalPerformanceTest_];

  _Block_release(v7);
}

@end