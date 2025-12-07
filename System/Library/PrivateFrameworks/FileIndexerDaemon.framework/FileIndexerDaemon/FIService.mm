@interface FIService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC17FileIndexerDaemon9FIService)init;
- (void)getItemDelayInScanWithCompletionHandler:(id)handler;
- (void)getRootsWithCompletionHandler:(id)handler;
- (void)queueScanFor:(NSURL *)for completionHandler:(id)handler;
- (void)scanStatusWithCompletionHandler:(id)handler;
- (void)setItemDelayInScan:(int64_t)scan completionHandler:(id)handler;
- (void)startScanWithCompletionHandler:(id)handler;
- (void)stopScanWithCompletionHandler:(id)handler;
@end

@implementation FIService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_24ABA26EC(connectionCopy);

  return v9 & 1;
}

- (void)getRootsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24ABAC09C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24ABAF3C0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF3C8;
  v12[5] = v11;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v7, &unk_24ABAF3D0, v12);
}

- (void)queueScanFor:(NSURL *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24ABAC09C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24ABAF3A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24ABAF3A8;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v9, &unk_24ABAF3B0, v14);
}

- (void)startScanWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24ABAC09C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24ABAF380;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF388;
  v12[5] = v11;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v7, &unk_24ABAF390, v12);
}

- (void)stopScanWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24ABAC09C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24ABAF360;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF368;
  v12[5] = v11;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v7, &unk_24ABAF370, v12);
}

- (void)scanStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24ABAC09C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24ABAF340;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF348;
  v12[5] = v11;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v7, &unk_24ABAF350, v12);
}

- (void)getItemDelayInScanWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24ABAC09C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24ABAF320;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF328;
  v12[5] = v11;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v7, &unk_24ABAF330, v12);
}

- (void)setItemDelayInScan:(int64_t)scan completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = scan;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_24ABAC09C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24ABAF2D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24ABAF2E8;
  v14[5] = v13;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v9, &unk_24ABAF2F8, v14);
}

- (_TtC17FileIndexerDaemon9FIService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end