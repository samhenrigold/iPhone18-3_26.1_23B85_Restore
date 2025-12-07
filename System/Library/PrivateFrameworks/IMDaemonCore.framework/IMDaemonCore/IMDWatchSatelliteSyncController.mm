@interface IMDWatchSatelliteSyncController
- (_TtC12IMDaemonCore31IMDWatchSatelliteSyncController)init;
- (void)satelliteStateDidChange:(BOOL)change;
@end

@implementation IMDWatchSatelliteSyncController

- (void)satelliteStateDidChange:(BOOL)change
{
  changeCopy = change;
  v4 = objc_opt_self();

  [v4 synchronizeSatelliteStatus_];
}

- (_TtC12IMDaemonCore31IMDWatchSatelliteSyncController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IMDWatchSatelliteSyncController();
  return [(IMDWatchSatelliteSyncController *)&v3 init];
}

@end