@interface IMMultiplexedDaemonConnection
- (IMMultiplexedDaemonConnection)init;
- (IMMultiplexedDaemonConnection)initWithLabel:(id)label capabilities:(unint64_t)capabilities context:(id)context onInvalidate:(id)invalidate onDealloc:(id)dealloc;
- (NSDictionary)context;
- (NSString)label;
- (void)connectWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)waitForSetup;
@end

@implementation IMMultiplexedDaemonConnection

- (IMMultiplexedDaemonConnection)initWithLabel:(id)label capabilities:(unint64_t)capabilities context:(id)context onInvalidate:(id)invalidate onDealloc:(id)dealloc
{
  ObjectType = swift_getObjectType();
  v13 = _Block_copy(invalidate);
  v14 = _Block_copy(dealloc);
  v15 = sub_1A84E5DBC();
  v17 = v16;
  if (context)
  {
    context = sub_1A84E5D3C();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = (self + OBJC_IVAR___IMMultiplexedDaemonConnection_label);
  *v20 = v15;
  v20[1] = v17;
  *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_capabilities) = capabilities;
  *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_context) = context;
  v21 = (self + OBJC_IVAR___IMMultiplexedDaemonConnection_onInvalidate);
  *v21 = sub_1A847DA80;
  v21[1] = v18;
  v22 = (self + OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit);
  *v22 = sub_1A847DA90;
  v22[1] = v19;
  v24.receiver = self;
  v24.super_class = ObjectType;
  return [(IMMultiplexedDaemonConnection *)&v24 init];
}

- (NSDictionary)context
{
  if (*(self + OBJC_IVAR___IMMultiplexedDaemonConnection_context))
  {

    v2 = sub_1A84E5D2C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)connectWithCompletion:(id)completion
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A84E60BC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A8507BB0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A85008C0;
  v12[5] = v11;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v7, &unk_1A8507BC0, v12);
}

- (NSString)label
{

  v2 = sub_1A84E5D8C();

  return v2;
}

- (void)waitForSetup
{
  selfCopy = self;
  MultiplexedDaemonConnection.waitForSetup()();
}

- (void)invalidate
{
  selfCopy = self;
  MultiplexedDaemonConnection.invalidate()();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR___IMMultiplexedDaemonConnection_onDeinit);
  selfCopy = self;

  v4(v6);

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(IMMultiplexedDaemonConnection *)&v7 dealloc];
}

- (IMMultiplexedDaemonConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end