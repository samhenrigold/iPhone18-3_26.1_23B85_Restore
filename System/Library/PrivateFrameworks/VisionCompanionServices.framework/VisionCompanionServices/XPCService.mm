@interface XPCService
- (void)transport:(unsigned int)transport completionHandler:(id)handler;
- (void)transport:(unsigned int)transport data:(NSData *)data completionHandler:(id)handler;
@end

@implementation XPCService

- (void)transport:(unsigned int)transport completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F78, &qword_270FFA558);
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = transport;
  *(v10 + 24) = v9;
  *(v10 + 32) = self;
  v11 = sub_270FF8B58();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_270FFA5B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_270FFA5B8;
  v13[5] = v12;

  sub_270FEB920(0, 0, v8, &unk_270FFA5C0, v13);
}

- (void)transport:(unsigned int)transport data:(NSData *)data completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280870F78, &qword_270FFA558);
  MEMORY[0x28223BE20]();
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = transport;
  *(v12 + 24) = data;
  *(v12 + 32) = v11;
  *(v12 + 40) = self;
  v13 = sub_270FF8B58();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_270FFA568;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_270FFA578;
  v15[5] = v14;
  dataCopy = data;

  sub_270FEB920(0, 0, v10, &unk_270FFA588, v15);
}

@end