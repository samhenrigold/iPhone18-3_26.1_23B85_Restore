@interface ProxyOperationClient
- (_TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient)init;
- (id)proxifiedDescription;
- (void)operationDidProgressWithInfo:(id)info error:(id)error completionHandler:(id)handler;
- (void)setCancellationHandler:(id)handler;
@end

@implementation ProxyOperationClient

- (id)proxifiedDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient_client);
  selfCopy = self;
  proxifiedDescription = [v2 proxifiedDescription];
  if (!proxifiedDescription)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v6 = v5;
    proxifiedDescription = sub_1CF9E6888();
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  return proxifiedDescription;
}

- (void)setCancellationHandler:(id)handler
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CF919C90(handler);
  swift_unknownObjectRelease();
}

- (void)operationDidProgressWithInfo:(id)info error:(id)error completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_1CF9E6638();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  errorCopy = error;
  sub_1CF919DF0(v8, error, sub_1CF744650, v9);

  v8, v12, v13, v14, v15, v16, v17, v18;
}

- (_TtC18FileProviderDaemonP33_95B4E889D922FD43A9B7D480DBF87E0A20ProxyOperationClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end