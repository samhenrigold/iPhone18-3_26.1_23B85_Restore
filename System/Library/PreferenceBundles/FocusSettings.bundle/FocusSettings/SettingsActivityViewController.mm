@interface SettingsActivityViewController
+ (NSString)dndModeKey;
- (_TtC13FocusSettings30SettingsActivityViewController)init;
- (_TtC13FocusSettings30SettingsActivityViewController)initWithCoder:(id)coder;
- (_TtC13FocusSettings30SettingsActivityViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SettingsActivityViewController

+ (NSString)dndModeKey
{
  v2 = sub_13844();

  return v2;
}

- (_TtC13FocusSettings30SettingsActivityViewController)init
{
  v3 = OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel;
  sub_13454();
  swift_allocObject();
  *&self->PSViewController_opaque[v3] = sub_13444();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_cancellableBag] = &_swiftEmptySetSingleton;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SettingsActivityViewController();
  return [(SettingsActivityViewController *)&v5 initWithNibName:0 bundle:0];
}

- (_TtC13FocusSettings30SettingsActivityViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel;
  sub_13454();
  swift_allocObject();
  *&self->PSViewController_opaque[v4] = sub_13444();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_cancellableBag] = &_swiftEmptySetSingleton;
  result = sub_13B04();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_CF3C();
}

- (_TtC13FocusSettings30SettingsActivityViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end