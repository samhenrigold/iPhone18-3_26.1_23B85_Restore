@interface BobbleTutorialController
- (_TtC16HeadphoneConfigs24BobbleTutorialController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC16HeadphoneConfigs24BobbleTutorialController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BobbleTutorialController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for BobbleTutorialController();
  v4 = v6.receiver;
  [(BobbleTutorialController *)&v6 viewWillAppear:appearCopy];
  v5 = sub_2511E4AA4();
  [v5 play];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2511E432C();
}

- (_TtC16HeadphoneConfigs24BobbleTutorialController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs24BobbleTutorialController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end