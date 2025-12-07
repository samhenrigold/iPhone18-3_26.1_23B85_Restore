@interface NDODeviceServicesComposition
+ (id)makeAirPodsDataCollectionHandler;
+ (void)isAccCheckInDisabledWithCompletionHandler:(id)handler;
+ (void)loadWithRequest:(id)request completion:(id)completion;
- (_TtC8ndoagent28NDODeviceServicesComposition)init;
@end

@implementation NDODeviceServicesComposition

+ (id)makeAirPodsDataCollectionHandler
{
  v2 = [objc_allocWithZone(NDOAirPodsDataCollectionHandler) init];

  return v2;
}

+ (void)loadWithRequest:(id)request completion:(id)completion
{
  v5 = type metadata accessor for URLRequest();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_10005C67C();
  swift_beginAccess();
  sub_100001E10(v11, v13);
  sub_100001F3C(v13, v13[3]);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10004967C;
  *(v12 + 24) = v10;

  dispatch thunk of NDOURLClient.load(request:with:)();

  (*(v6 + 8))(v8, v5);
  sub_100001E74(v13);
}

+ (void)isAccCheckInDisabledWithCompletionHandler:(id)handler
{
  v5 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10007F010;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10007F020;
  v12[5] = v11;
  sub_10001C3D0(0, 0, v7, &unk_10007F030, v12);
}

- (_TtC8ndoagent28NDODeviceServicesComposition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NDODeviceServicesComposition();
  return [(NDODeviceServicesComposition *)&v3 init];
}

@end