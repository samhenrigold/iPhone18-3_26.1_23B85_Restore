@interface MacFooterToolbarViewController
- (NSArray)keyCommands;
- (_TtC8Business30MacFooterToolbarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissButtonTapped;
- (void)leftButtonTapped;
- (void)rightButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MacFooterToolbarViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000A57DC(selfCopy);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MacFooterToolbarViewController();
  v4 = v5.receiver;
  [(MacFooterToolbarViewController *)&v5 viewDidAppear:appearCopy];
  [v4 becomeFirstResponder];
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_1000A6360(selfCopy);

  if (v3)
  {
    sub_100005A24(0, &qword_1000F3E88, UIKeyCommand_ptr);
    v4.super.isa = sub_1000AC18C().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)leftButtonTapped
{
  v3 = self + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)rightButtonTapped
{
  v3 = self + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)dismissButtonTapped
{
  v3 = self + OBJC_IVAR____TtC8Business30MacFooterToolbarViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 24);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (_TtC8Business30MacFooterToolbarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end