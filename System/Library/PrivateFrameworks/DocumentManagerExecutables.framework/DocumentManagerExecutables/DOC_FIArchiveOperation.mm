@interface DOC_FIArchiveOperation
- (_TtC26DocumentManagerExecutables22DOC_FIArchiveOperation)init;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)schedule;
@end

@implementation DOC_FIArchiveOperation

- (void)schedule
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_fiOperation);
  if (v2)
  {
    [v2 schedule];
  }
}

- (id)operationForRedoing
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_nodes);
  v4 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_destinationFolder);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOC_FIArchiveOperation_undoManager);
  ObjectType = swift_getObjectType();
  selfCopy = self;
  swift_unknownObjectRetain();
  v8 = specialized makeDOCArchiveOperation(nodes:destinationFolder:undoManager:)(v3, v4, v5, ObjectType);

  swift_unknownObjectRelease();

  return v8;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOC_FIArchiveOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables22DOC_FIArchiveOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end