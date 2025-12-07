@interface SoundPlaybackManager
- (_TtC12searchpartyd20SoundPlaybackManager)init;
- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device;
- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats fromDevice:(id)device withError:(id)error;
@end

@implementation SoundPlaybackManager

- (void)findMyAccessoryManager:(id)manager didFetchUserStats:(id)stats fromDevice:(id)device withError:(id)error
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  deviceCopy = device;
  if (stats)
  {
    statsCopy = stats;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100016590(v14, v15);
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 8))(v11, v8);
}

- (void)findMyAccessoryManager:(id)manager didFailWithError:(id)error forDevice:(id)device
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  if (device)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
}

- (void)findMyAccessoryManager:(id)manager didDisconnectDevice:(id)device
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
}

- (_TtC12searchpartyd20SoundPlaybackManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end