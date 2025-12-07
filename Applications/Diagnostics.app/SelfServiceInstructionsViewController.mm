@interface SelfServiceInstructionsViewController
- (_TtC11Diagnostics37SelfServiceInstructionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics37SelfServiceInstructionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation SelfServiceInstructionsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100144204(selfCopy);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_10014534C(disappearCopy);
}

- (_TtC11Diagnostics37SelfServiceInstructionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics37SelfServiceInstructionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end