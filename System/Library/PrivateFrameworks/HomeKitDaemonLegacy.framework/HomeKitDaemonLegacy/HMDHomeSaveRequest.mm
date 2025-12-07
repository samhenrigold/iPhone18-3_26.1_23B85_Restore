@interface HMDHomeSaveRequest
- (HMDHomeSaveRequest)initWithHome:(id)home reason:(id)reason information:(id)information postSyncNotification:(BOOL)notification objectChange:(BOOL)change;
- (id)_initWithHome:(id)home reason:(id)reason information:(id)information postSyncNotification:(BOOL)notification objectChange:(BOOL)change saveOptions:(unint64_t)options;
- (void)_updateSaveOptions:(BOOL)options reason:(id)reason;
@end

@implementation HMDHomeSaveRequest

- (void)_updateSaveOptions:(BOOL)options reason:(id)reason
{
  if (options)
  {
    self->_saveOptions |= 2uLL;
  }

  if (![HMDHomeManager doesSaveReasonAffectOnlyLocalData:reason])
  {
    self->_saveOptions |= 1uLL;
  }
}

- (HMDHomeSaveRequest)initWithHome:(id)home reason:(id)reason information:(id)information postSyncNotification:(BOOL)notification objectChange:(BOOL)change
{
  changeCopy = change;
  notificationCopy = notification;
  reasonCopy = reason;
  v13 = [(HMDHomeSaveRequest *)self _initWithHome:home reason:reasonCopy information:information postSyncNotification:notificationCopy objectChange:changeCopy saveOptions:0];
  v14 = v13;
  if (v13)
  {
    [(HMDHomeSaveRequest *)v13 _updateSaveOptions:notificationCopy reason:reasonCopy];
  }

  return v14;
}

- (id)_initWithHome:(id)home reason:(id)reason information:(id)information postSyncNotification:(BOOL)notification objectChange:(BOOL)change saveOptions:(unint64_t)options
{
  homeCopy = home;
  reasonCopy = reason;
  informationCopy = information;
  v20.receiver = self;
  v20.super_class = HMDHomeSaveRequest;
  v17 = [(HMDHomeSaveRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_home, home);
    objc_storeStrong(&v18->_reason, reason);
    objc_storeStrong(&v18->_information, information);
    v18->_objectChange = change;
    v18->_incrementGeneration = [HMDHomeManager shouldIncrementGenerationCounterForReason:reasonCopy];
    v18->_saveOptions = options;
  }

  return v18;
}

@end