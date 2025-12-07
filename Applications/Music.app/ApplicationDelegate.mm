@interface ApplicationDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (UIResponder)nextResponder;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)application:(id)application handlerForIntent:(id)intent;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler;
- (void)userNotificationCenter:openSettingsForNotification:;
@end

@implementation ApplicationDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10035EAC8(&qword_101180898, type metadata accessor for LaunchOptionsKey, &unk_100EBC318);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_100024B50();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10002C0B8(sessionCopy, optionsCopy);

  return v12;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_10035EAC8(&qword_1011808A8, type metadata accessor for OpenURLOptionsKey, &unk_100EBC35C);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  v14 = sub_10035E554(applicationCopy, v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = center;
  v12[3] = notification;
  v12[4] = v11;
  v12[5] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100EC7B78;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100EC7B88;
  v15[5] = v14;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_10035E0F8(0, 0, v10, &unk_100EC7B98, v15);
}

- (UIResponder)nextResponder
{
  selfCopy = self;
  v3 = sub_10035D8C4();

  return v3;
}

- (id)application:(id)application handlerForIntent:(id)intent
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v4 = [objc_allocWithZone(type metadata accessor for MediaIntentHandler()) init];
  }

  return v4;
}

- (void)userNotificationCenter:openSettingsForNotification:
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v1 = &v16[-v0];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v16[-v6];
  sharedApplication = [objc_opt_self() sharedApplication];
  connectedScenes = [sharedApplication connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_100061F5C();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v10);
  v12 = v11;

  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_11:

    return;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_1007E90D4(0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  URL.init(string:)();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    sub_1000095E8(v1, &qword_101183A20, &unk_100EBCF80);
  }

  else
  {
    (*(v3 + 32))(v7, v1, v2);
    (*(v3 + 16))(v5, v7, v2);
    type metadata accessor for LaunchOptions(0);
    swift_allocObject();
    v15 = v14;
    sub_1002B8D68(v5, 0, v15);
    sub_1002C5A04();

    (*(v3 + 8))(v7, v2);
  }
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v8 = 0;
    v10 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v13 = sub_10059FAE0(application, v8, v10, optionsCopy);

  return v13 & 1;
}

@end