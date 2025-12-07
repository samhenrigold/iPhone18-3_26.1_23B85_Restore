@interface GEOMobileAssetResourceDiskSpaceProvider
- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency;
- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency;
@end

@implementation GEOMobileAssetResourceDiskSpaceProvider

- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency
{
  v4 = *&urgency;
  v6 = [(GEODaemon *)self->_daemon startServerClassIfNecessary:objc_opt_class()];
  v7 = [v6 freePurgableDiskSpace:space urgency:v4];

  return v7;
}

- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency
{
  v3 = *&urgency;
  v4 = [(GEODaemon *)self->_daemon startServerClassIfNecessary:objc_opt_class()];
  v5 = [v4 purgableDiskSpaceForUrgency:v3];

  return v5;
}

@end