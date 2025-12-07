@interface ActivityRendererClient
- (_TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient)init;
- (void)handleInteraction:(id)interaction authenticationPolicy:(id)policy action:(id)action handler:(id)handler;
- (void)reloadContent:(id)content reason:(id)reason;
- (void)reloadDescriptors:(id)descriptors;
- (void)setTaskPriority:(id)priority forSession:(id)session;
- (void)subscribe:(id)subscribe completion:(id)completion;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation ActivityRendererClient

- (_TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscribe:(id)subscribe completion:(id)completion
{
  v6 = _Block_copy(completion);
  subscribeCopy = subscribe;
  selfCopy = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  _Block_copy(v6);
  sub_224D20EF8(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_224A78024(v8, v10);
}

- (void)unsubscribe:(id)unsubscribe
{
  unsubscribeCopy = unsubscribe;
  selfCopy = self;
  v6 = sub_224DA96D8();
  v8 = v7;

  BSDispatchQueueAssert();
  v9 = selfCopy;
  sub_224D206E0(v6, v8, 0x7263736275736E75, 0xEB00000000656269, 0, 0, v9);

  sub_224A78024(v6, v8);
}

- (void)reloadDescriptors:(id)descriptors
{
  v4 = sub_224DAEE18();
  v6 = v5;
  selfCopy = self;
  sub_224D1E4A8(v4, v6);
}

- (void)reloadContent:(id)content reason:(id)reason
{
  contentCopy = content;
  reasonCopy = reason;
  selfCopy = self;
  v9 = sub_224DA96D8();
  v11 = v10;

  BSDispatchQueueAssert();
  v12 = reasonCopy;
  v13 = selfCopy;
  sub_224D20C10(v9, v11, 0x64616F6C6572, 0xE600000000000000, 0, 0, v12, v13, sub_224D1E684);

  sub_224A78024(v9, v11);
}

- (void)handleInteraction:(id)interaction authenticationPolicy:(id)policy action:(id)action handler:(id)handler
{
  v10 = _Block_copy(handler);
  interactionCopy = interaction;
  policyCopy = policy;
  actionCopy = action;
  selfCopy = self;
  v15 = sub_224DA96D8();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  BSDispatchQueueAssert();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_224B67834;
  *(v19 + 24) = v18;
  v20 = policyCopy;
  v21 = actionCopy;
  v22 = selfCopy;

  sub_224D20970(v15, v17, 0x64616F6C6572, 0xE600000000000000, sub_224B9D69C, v19, v21, v22, v20, sub_224B67834, v18);

  sub_224A78024(v15, v17);
}

- (void)setTaskPriority:(id)priority forSession:(id)session
{
  priorityCopy = priority;
  sessionCopy = session;
  selfCopy = self;
  v9 = sub_224DA96D8();
  v11 = v10;

  BSDispatchQueueAssert();
  v12 = priorityCopy;
  v13 = selfCopy;
  sub_224D20C10(v9, v11, 0x64616F6C6572, 0xE600000000000000, 0, 0, v12, v13, sub_224D1F058);

  sub_224A78024(v9, v11);
}

@end