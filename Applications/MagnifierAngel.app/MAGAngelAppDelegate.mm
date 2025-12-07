@interface MAGAngelAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (uint64_t)applicationWillTerminate:;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end;
- (void)checkForDeactivationReasonWithNotification:(id)notification;
@end

@implementation MAGAngelAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10002904C(&qword_10004F930, type metadata accessor for LaunchOptionsKey, &unk_1000388BC);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_100028064();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_100028758(sessionCopy);

  return v12;
}

- (void)checkForDeactivationReasonWithNotification:(id)notification
{
  selfCopy = self;
  if ((static MAGAXUtilities.isVoiceOverRunning.getter() & 1) == 0)
  {
    sub_1000227C0();
  }
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin
{
  viewfinderCopy = viewfinder;
  beginCopy = begin;
  selfCopy = self;
  sub_100028AC0(begin, &unk_10004A680, &unk_100039770);
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidEnd:(id)end
{
  viewfinderCopy = viewfinder;
  endCopy = end;
  selfCopy = self;
  sub_100028AC0(end, &unk_10004A540, &unk_100039548);
}

- (uint64_t)applicationWillTerminate:
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100034404(0xD00000000000001CLL, 0x800000010003E640, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_100029000(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

@end