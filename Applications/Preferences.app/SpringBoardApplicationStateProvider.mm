@interface SpringBoardApplicationStateProvider
- (void)homeScreenServiceHomeScreenApplicationsDidChange:(id)change;
@end

@implementation SpringBoardApplicationStateProvider

- (void)homeScreenServiceHomeScreenApplicationsDidChange:(id)change
{
  v4 = sub_10004DED0(&unk_10015C7A0, &unk_100112A90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  changeCopy = change;

  allHomeScreenApplicationBundleIdentifiers = [changeCopy allHomeScreenApplicationBundleIdentifiers];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11[1] = v10;
  sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  AsyncStream.Continuation.yield(_:)();

  (*(v5 + 8))(v7, v4);
}

@end