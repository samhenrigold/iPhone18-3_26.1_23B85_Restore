@interface GEOExperimentServerRemoteProxy
- (GEOABAssignmentResponse)experimentsInfo;
@end

@implementation GEOExperimentServerRemoteProxy

- (GEOABAssignmentResponse)experimentsInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_experimentsInfo;
  os_unfair_lock_unlock(&self->_experimentsInfoLock);

  return v3;
}

@end