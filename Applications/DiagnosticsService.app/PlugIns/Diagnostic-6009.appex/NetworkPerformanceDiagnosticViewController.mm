@interface NetworkPerformanceDiagnosticViewController
- (NetworkPerformanceDiagnosticViewController)initWithCoder:(id)coder;
- (NetworkPerformanceDiagnosticViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)cancel;
- (void)presentSwiftUIView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation NetworkPerformanceDiagnosticViewController

- (void)presentSwiftUIView
{
  v3 = type metadata accessor for NetworkPerformanceDiagnosticUIView(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v12 - v7);
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_10000A17C(v8);
  sub_10000AD50(v8, v6);
  v10 = objc_allocWithZone(sub_10000239C(&qword_100031BD8, qword_100023160));
  v11 = sub_1000204E4();
  [v11 setModalInPresentation:1];
  [(NetworkPerformanceDiagnosticViewController *)selfCopy presentViewController:v11 animated:1 completion:0];

  sub_10000D120(v8);
}

- (void)viewDidAppear:(BOOL)appear
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_10000BCE4(appear);
}

- (unint64_t)supportedInterfaceOrientations
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 2;
}

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (inputs)
  {
    type metadata accessor for NetworkPerformanceDiagnosticInputs();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs];
  *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs] = v6;
}

- (void)start
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)cancel
{
  v3 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_100020944();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100020914();
  selfCopy = self;
  v8 = sub_100020904();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_10000FEDC(0, 0, v5, &unk_100023158, v9);
}

- (NetworkPerformanceDiagnosticViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_100020874();
    *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs] = 0;
    bundleCopy = bundle;
    name = sub_100020854();
  }

  else
  {
    *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs] = 0;
    bundleCopy2 = bundle;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NetworkPerformanceDiagnosticViewController();
  v9 = [(NetworkPerformanceDiagnosticViewController *)&v11 initWithNibName:name bundle:bundle];

  return v9;
}

- (NetworkPerformanceDiagnosticViewController)initWithCoder:(id)coder
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&self->DKDiagnosticViewController_opaque[OBJC_IVAR___NetworkPerformanceDiagnosticViewController_inputs] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NetworkPerformanceDiagnosticViewController();
  coderCopy = coder;
  v6 = [(NetworkPerformanceDiagnosticViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end