@interface XPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
- (void)transport:(unsigned int)transport completionHandler:(id)handler;
- (void)transport:(unsigned int)transport data:(NSData *)data completionHandler:(id)handler;
@end

@implementation XPCServer

- (void)dealloc
{
  v2 = qword_2814EAD90;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x6164696C61766E69, 0xEC00000029286574);
  v5 = OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener;
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener) setDelegate_];
  [*(&selfCopy->super.isa + v5) invalidate];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for XPCServer();
  [(XPCServer *)&v6 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_2330DB990(connectionCopy);

  return v9 & 1;
}

- (void)transport:(unsigned int)transport completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = transport;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2330F2890();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2330F68B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2330F68B8;
  v15[5] = v14;
  selfCopy = self;
  sub_2330DB440(0, 0, v10, &unk_2330F68C0, v15);
}

- (void)transport:(unsigned int)transport data:(NSData *)data completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = transport;
  *(v14 + 24) = data;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_2330F2890();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2330F6868;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2330F6878;
  v17[5] = v16;
  dataCopy = data;
  selfCopy = self;
  sub_2330DB440(0, 0, v12, &unk_2330F6888, v17);
}

@end