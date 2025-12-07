@interface BackgroundAppRefreshSettingsController
- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithCoder:(id)coder;
- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation BackgroundAppRefreshSettingsController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_42DC();
}

- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_12EEC();
    name = v8;
  }

  v9 = OBJC_IVAR____TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController_backgroundAppRefreshSettingsListState;
  type metadata accessor for BackgroundAppRefreshSettingsListState(0);
  swift_allocObject();
  bundleCopy = bundle;
  *&self->PSViewController_opaque[v9] = sub_AB2C();
  if (name)
  {
    v11 = sub_12EBC();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(BackgroundAppRefreshSettingsController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20BackgroundAppRefresh38BackgroundAppRefreshSettingsController_backgroundAppRefreshSettingsListState;
  type metadata accessor for BackgroundAppRefreshSettingsListState(0);
  swift_allocObject();
  coderCopy = coder;
  *&self->PSViewController_opaque[v6] = sub_AB2C();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(BackgroundAppRefreshSettingsController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end