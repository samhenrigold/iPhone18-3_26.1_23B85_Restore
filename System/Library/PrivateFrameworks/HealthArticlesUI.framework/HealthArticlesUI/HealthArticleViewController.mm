@interface HealthArticleViewController
- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismissArticleModal;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation HealthArticleViewController

- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView) = 0;
  result = sub_25133FC14();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  swift_getObjectType();
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for HealthArticleViewController();
  selfCopy = self;
  [(HealthArticleViewController *)&v10 viewDidLoad];
  sub_251325BCC();
  v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = [v4 initWithBarButtonSystemItem:0 target:selfCopy action:{sel_dismissArticleModal, v10.receiver, v10.super_class}];
  navigationItem = [(HealthArticleViewController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItem_];

  sub_25131C208(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_251340BD0;
  v8 = sub_25133F6D4();
  v9 = sub_251328004(&unk_27F42B200, MEMORY[0x277D126D0], MEMORY[0x277D126C8]);
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_25133F9D4();

  swift_unknownObjectRelease();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for HealthArticleViewController();
  selfCopy = self;
  [(HealthArticleViewController *)&v16 viewIsAppearing:appearingCopy];
  v6 = [(HealthArticleViewController *)selfCopy traitCollection:v16.receiver];
  sub_25133FA14();

  sub_25133FA34();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_251324AC0();
  [v15 setDirectionalLayoutMargins_];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for HealthArticleViewController();
  selfCopy = self;
  [(HealthArticleViewController *)&v6 viewDidAppear:appearCopy];
  sub_2513264D8(0);
}

- (unint64_t)supportedInterfaceOrientations
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 2;
}

- (void)dismissArticleModal
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [(HealthArticleViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (decelerateCopy)
  {
  }

  else
  {
    selfCopy = self;
    sub_2513264D8(0);
  }
}

- (_TtC16HealthArticlesUI27HealthArticleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  supportedInterfaceOrientations = [(HealthArticleViewController *)self supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

@end