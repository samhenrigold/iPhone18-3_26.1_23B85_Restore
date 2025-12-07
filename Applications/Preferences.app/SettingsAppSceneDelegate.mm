@interface SettingsAppSceneDelegate
- (_TtC11SettingsApp24SettingsAppSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)windowScene:(UIWindowScene *)scene performActionForShortcutItem:(UIApplicationShortcutItem *)item completionHandler:(id)handler;
@end

@implementation SettingsAppSceneDelegate

- (_TtC11SettingsApp24SettingsAppSceneDelegate)init
{
  v3 = OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__selectedQuickActionSubject;
  *(&self->super.isa + v3) = swift_getKeyPath();
  *(&self->super.isa + OBJC_IVAR____TtC11SettingsApp24SettingsAppSceneDelegate__shortcutItemForInitialLaunch) = 0;
  ObservationRegistrar.init()();
  v5.receiver = self;
  v5.super_class = type metadata accessor for SettingsAppSceneDelegate(0);
  return [(SettingsAppSceneDelegate *)&v5 init];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  shortcutItem = [optionsCopy shortcutItem];
  sub_10002180C(shortcutItem, v8);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000453C0(selfCopy, v5);
}

- (void)windowScene:(UIWindowScene *)scene performActionForShortcutItem:(UIApplicationShortcutItem *)item completionHandler:(id)handler
{
  v9 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = scene;
  v13[3] = item;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100113D10;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100113D20;
  v16[5] = v15;
  sceneCopy = scene;
  itemCopy = item;
  selfCopy = self;
  sub_100078598(0, 0, v11, &unk_100113D30, v16);
}

@end