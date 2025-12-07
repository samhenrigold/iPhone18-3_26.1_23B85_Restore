@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)notification fetchCompletionHandler:(id)handler;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000FBE40(&qword_1001691F0, type metadata accessor for LaunchOptionsKey, &unk_10010C78C);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_1000F94DC(optionsCopy);

  return v9 & 1;
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  applicationCopy = application;
  tokenCopy = token;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1000F98CC(v8, v10);
  sub_10003DBB8(v8, v10);
}

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  applicationCopy = application;
  errorCopy = error;
  selfCopy = self;
  sub_1000F9C94(errorCopy);
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)notification fetchCompletionHandler:(id)handler
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = application;
  v13[3] = notification;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10011A540;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10011A548;
  v16[5] = v15;
  applicationCopy = application;
  notificationCopy = notification;
  selfCopy = self;
  sub_1000F8E38(0, 0, v11, &unk_10011A550, v16);
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_1000FA53C(sessionCopy, optionsCopy);

  return v12;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  applicationCopy = application;
  windowCopy = window;
  selfCopy = self;
  v9 = sub_1000FA7D4();

  return v9;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = center;
  v13[3] = response;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10011A4B0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10011A4B8;
  v16[5] = v15;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_1000F8E38(0, 0, v11, &unk_10011A4C0, v16);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = center;
  v13[3] = notification;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10011A460;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10011A470;
  v16[5] = v15;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_1000F8E38(0, 0, v11, &unk_10011A480, v16);
}

@end