@interface GameSaveXPCClient
- (id)getSyncedDirectoryWithRequest:(id)request completion:(id)completion;
- (id)openICloudDriveSettingsPage;
@end

@implementation GameSaveXPCClient

- (id)getSyncedDirectoryWithRequest:(id)request completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  requestCopy = request;

  v8 = sub_100015888(requestCopy, sub_100016D28, v6);

  return v8;
}

- (id)openICloudDriveSettingsPage
{
  v0 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v18 - v4;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001F70(v6, static Logger.daemon);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Opening iCloud Drive Settings Page", v9, 2u);
  }

  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;
    sub_100016C80(v5, v3);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    v15 = 0;
    if ((*(v13 + 48))(v3, 1, v12) != 1)
    {
      URL._bridgeToObjectiveC()(v14);
      v15 = v16;
      (*(v13 + 8))(v3, v12);
    }

    sub_1000108BC(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 openSensitiveURL:v15 withOptions:isa];

    return sub_100014CFC(v5, &qword_10003A430, &unk_10002B930);
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end