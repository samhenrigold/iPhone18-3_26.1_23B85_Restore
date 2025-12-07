@interface XPCEndpoint
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC22ActivityAwardsServices11XPCEndpoint)init;
- (void)transportEvent:(unint64_t)event data:(id)data;
- (void)transportRequest:(unint64_t)request data:(NSData *)data completion:(id)completion;
@end

@implementation XPCEndpoint

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1DB1073FC(connectionCopy);

  return v9 & 1;
}

- (void)transportRequest:(unint64_t)request data:(NSData *)data completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26270, &unk_1DB127910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = request;
  v13[3] = data;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1DB126490();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DB128670;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DB127E20;
  v16[5] = v15;
  dataCopy = data;
  selfCopy = self;
  sub_1DB11F730(0, 0, v11, &unk_1DB128690, v16);
}

- (_TtC22ActivityAwardsServices11XPCEndpoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)transportEvent:(unint64_t)event data:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = sub_1DB126100();
    sub_1DB10A96C(v5, v6);
  }

  if (qword_1EDEC89F8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DB126230();
  __swift_project_value_buffer(v7, qword_1EDEC8A00);
  v8._countAndFlagsBits = 0xD000000000000061;
  v8._object = 0x80000001DB129670;
  v9._object = 0x80000001DB1296E0;
  v9._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v8, v9);
}

@end