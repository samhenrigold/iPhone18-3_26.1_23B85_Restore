@interface MNNotificationManager
- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)details;
@end

@implementation MNNotificationManager

- (void)showPredictedRouteTrafficIncidentBulletinForCommuteDetails:(id)details
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromSelector(a2);
    v7 = 136316162;
    v8 = "[MNNotificationManager showPredictedRouteTrafficIncidentBulletinForCommuteDetails:]";
    v9 = 2080;
    v10 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Misc/MNNotificationManager.m";
    v11 = 1024;
    v12 = 20;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: %@ must implement '%@'", &v7, 0x30u);
  }
}

@end