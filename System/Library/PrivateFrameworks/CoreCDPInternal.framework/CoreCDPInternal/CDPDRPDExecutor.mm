@interface CDPDRPDExecutor
- (CDPDRPDExecutor)init;
- (CDPDRPDExecutor)initWithSbDeleter:(id)deleter ledger:(id)ledger circleControl:(id)control cdpContext:(id)context;
- (void)performRPDWithCompletionHandler:(id)handler;
@end

@implementation CDPDRPDExecutor

- (CDPDRPDExecutor)initWithSbDeleter:(id)deleter ledger:(id)ledger circleControl:(id)control cdpContext:(id)context
{
  *(&self->super.isa + OBJC_IVAR___CDPDRPDExecutor_sbDeleter) = deleter;
  *(&self->super.isa + OBJC_IVAR___CDPDRPDExecutor_ledger) = ledger;
  *(&self->super.isa + OBJC_IVAR___CDPDRPDExecutor_circleControl) = control;
  *(&self->super.isa + OBJC_IVAR___CDPDRPDExecutor_cdpContext) = context;
  v9.receiver = self;
  v9.super_class = CDPDRPDExecutor;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  contextCopy = context;
  return [(CDPDRPDExecutor *)&v9 init];
}

- (void)performRPDWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_245193974();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_245199EF0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_245199FB0;
  v12[5] = v11;
  selfCopy = self;
  sub_24517BC80(0, 0, v7, &unk_245199FC0, v12);
}

- (CDPDRPDExecutor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end