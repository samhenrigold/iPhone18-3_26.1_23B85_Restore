@interface PSListController
- (id)printSettingsAppPrimaryNavigationMode;
- (void)settingsNavigationProxyPopWithAnimated:(BOOL)animated;
- (void)settingsNavigationProxyPushWithViewController:(id)controller animated:(BOOL)animated;
@end

@implementation PSListController

- (id)printSettingsAppPrimaryNavigationMode
{
  v3 = sub_29FC4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  sub_2A124();
  sub_2A114();
  sub_2A104();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  traitCollection = [(PSListController *)selfCopy traitCollection];
  sub_2A144();

  (*(v4 + 16))(v7, v9, v3);
  sub_2A0D4();

  (*(v4 + 8))(v9, v3);
  v12 = sub_2A0B4();

  return v12;
}

- (void)settingsNavigationProxyPopWithAnimated:(BOOL)animated
{
  sub_2A124();
  sub_2A114();
  sub_2A104();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_295A4(animated);
}

- (void)settingsNavigationProxyPushWithViewController:(id)controller animated:(BOOL)animated
{
  sub_2A124();
  sub_2A114();
  sub_2A104();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_297FC(controllerCopy, animated);
}

@end