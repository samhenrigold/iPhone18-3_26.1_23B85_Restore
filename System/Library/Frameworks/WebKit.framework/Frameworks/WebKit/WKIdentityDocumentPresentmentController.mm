@interface WKIdentityDocumentPresentmentController
- (WKIdentityDocumentPresentmentController)init;
- (WKIdentityDocumentPresentmentDelegate)delegate;
- (void)cancelRequest;
- (void)performRequest:(WKIdentityDocumentPresentmentRequest *)request completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation WKIdentityDocumentPresentmentController

- (WKIdentityDocumentPresentmentDelegate)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectWeakAssign();
}

- (void)performRequest:(WKIdentityDocumentPresentmentRequest *)request completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23B59D910();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23B59F718;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59F728;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_23B56B930(0, 0, v9, &unk_23B59F738, v14);
}

- (void)cancelRequest
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(&self->super.isa + OBJC_IVAR___WKIdentityDocumentPresentmentController_base))[3])
  {
    selfCopy = self;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8D8, &unk_23B59F640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8E0, &qword_23B59F9C0);
    sub_23B59D930();
  }
}

- (WKIdentityDocumentPresentmentController)init
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentController_base;
  _s4BaseCMa();
  v4 = swift_allocObject();
  sub_23B57ADF0();
  *(&self->super.isa + v3) = v4;
  v7.receiver = self;
  v7.super_class = WKIdentityDocumentPresentmentController;
  v5 = [(WKIdentityDocumentPresentmentController *)&v7 init];

  return v5;
}

@end