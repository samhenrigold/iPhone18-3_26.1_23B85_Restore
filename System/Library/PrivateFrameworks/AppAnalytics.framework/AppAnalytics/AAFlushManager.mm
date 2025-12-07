@interface AAFlushManager
- (AAFlushManager)init;
- (AAFlushManager)initWithAppSessionManager:(id)manager client:(id)client endpoint:(id)endpoint config:(id)config;
- (void)flushWithCompletion:(id)completion;
@end

@implementation AAFlushManager

- (AAFlushManager)initWithAppSessionManager:(id)manager client:(id)client endpoint:(id)endpoint config:(id)config
{
  ObjectType = swift_getObjectType();
  type metadata accessor for URLSessionUploadClientFactory();
  v12 = swift_allocObject();
  clientCopy = client;
  swift_unknownObjectRetain_n();
  configCopy = config;
  v15 = clientCopy;
  v16 = configCopy;
  managerCopy = manager;

  *(&self->super.isa + OBJC_IVAR___AAFlushManager_flushManager) = sub_1B69D6A7C(v18, v15, endpoint, 0, v16, v12);
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(AAFlushManager *)&v21 init];

  swift_unknownObjectRelease();
  return v19;
}

- (void)flushWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1B69D72B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1B698C230(0, 0, v7, v6);
  sub_1B69A3100(v7, v6);
}

- (AAFlushManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end