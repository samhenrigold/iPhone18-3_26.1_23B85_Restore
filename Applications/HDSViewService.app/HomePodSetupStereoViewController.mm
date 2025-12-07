@interface HomePodSetupStereoViewController
- (_TtC14HDSViewService32HomePodSetupStereoViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupStereoViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006F6FC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupStereoViewController(0);
  v4 = v5.receiver;
  [(HomePodSetupStereoViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }
}

- (_TtC14HDSViewService32HomePodSetupStereoViewController)initWithContentView:(id)view
{
  *&self->presenter[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v6 - 8) + 56))(&self->PRXCardContentViewController_opaque[v5], 1, 1, v6);
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_isConfigured] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomePodSetupStereoViewController(0);
  return [(HomePodSetupStereoViewController *)&v8 initWithContentView:view];
}

@end