@interface BBSectionAuthorizationManager
- (BBSectionAuthorizationManager)initWithQueue:(id)queue;
- (BBSectionAuthorizationManagerDelegate)delegate;
- (id)handleChangeForSectionInfo:(id)info replacingSectionInfo:(id)sectionInfo;
- (void)_addNewTimerForSectionID:(id)d withExpirationDate:(id)date;
- (void)_cancelExisitingTimerForSectionID:(id)d;
- (void)_queue_triggerDidFireForExpiryTimer:(id)timer;
- (void)_replaceExisitingTimerForSectionID:(id)d withExpirationDate:(id)date;
@end

@implementation BBSectionAuthorizationManager

- (BBSectionAuthorizationManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = BBSectionAuthorizationManager;
  v6 = [(BBSectionAuthorizationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionIDsToAuthorizationExpiryTimers = v7->_sectionIDsToAuthorizationExpiryTimers;
    v7->_sectionIDsToAuthorizationExpiryTimers = v8;
  }

  return v7;
}

- (id)handleChangeForSectionInfo:(id)info replacingSectionInfo:(id)sectionInfo
{
  infoCopy = info;
  sectionInfoCopy = sectionInfo;
  authorizationStatus = [infoCopy authorizationStatus];
  authorizationStatus2 = [sectionInfoCopy authorizationStatus];
  authorizationExpirationDate = [infoCopy authorizationExpirationDate];
  authorizationExpirationDate2 = [sectionInfoCopy authorizationExpirationDate];
  lastUserGrantedAuthorizationDate = [infoCopy lastUserGrantedAuthorizationDate];
  lastUserGrantedAuthorizationDate2 = [sectionInfoCopy lastUserGrantedAuthorizationDate];

  if (authorizationStatus == 4)
  {
    if (!authorizationStatus2)
    {
      goto LABEL_11;
    }

    if (authorizationStatus2 == 4)
    {
      if (![authorizationExpirationDate compare:authorizationExpirationDate2])
      {
        goto LABEL_13;
      }

      sectionID = [infoCopy sectionID];
      [(BBSectionAuthorizationManager *)self _replaceExisitingTimerForSectionID:sectionID withExpirationDate:authorizationExpirationDate];
      goto LABEL_12;
    }

    if (lastUserGrantedAuthorizationDate != lastUserGrantedAuthorizationDate2)
    {
LABEL_11:
      sectionID = [infoCopy sectionID];
      [(BBSectionAuthorizationManager *)self _addNewTimerForSectionID:sectionID withExpirationDate:authorizationExpirationDate];
LABEL_12:

      goto LABEL_13;
    }

    [infoCopy setAuthorizationStatus:authorizationStatus2];
LABEL_9:
    [infoCopy setAuthorizationExpirationDate:0];
    goto LABEL_13;
  }

  if (authorizationStatus2 == 4)
  {
    sectionID2 = [infoCopy sectionID];
    [(BBSectionAuthorizationManager *)self _cancelExisitingTimerForSectionID:sectionID2];
  }

  if (authorizationExpirationDate)
  {
    goto LABEL_9;
  }

LABEL_13:

  return infoCopy;
}

- (void)_addNewTimerForSectionID:(id)d withExpirationDate:(id)date
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D3A180];
  dateCopy = date;
  dCopy = d;
  v9 = [v6 alloc];
  v12 = @"sectionID";
  v13[0] = dCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = [v9 initWithFireDate:dateCopy serviceIdentifier:dCopy target:self selector:sel__queue_triggerDidFireForExpiryTimer_ userInfo:v10];

  [v11 setMinimumEarlyFireProportion:1.0];
  [v11 setUserVisible:1];
  [v11 scheduleInQueue:self->_queue];
  [(NSMutableDictionary *)self->_sectionIDsToAuthorizationExpiryTimers setObject:v11 forKey:dCopy];
}

- (void)_replaceExisitingTimerForSectionID:(id)d withExpirationDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  [(BBSectionAuthorizationManager *)self _cancelExisitingTimerForSectionID:dCopy];
  [(BBSectionAuthorizationManager *)self _addNewTimerForSectionID:dCopy withExpirationDate:dateCopy];
}

- (void)_cancelExisitingTimerForSectionID:(id)d
{
  sectionIDsToAuthorizationExpiryTimers = self->_sectionIDsToAuthorizationExpiryTimers;
  dCopy = d;
  v6 = [(NSMutableDictionary *)sectionIDsToAuthorizationExpiryTimers objectForKey:dCopy];
  [v6 invalidate];
  [(NSMutableDictionary *)self->_sectionIDsToAuthorizationExpiryTimers removeObjectForKey:dCopy];
}

- (void)_queue_triggerDidFireForExpiryTimer:(id)timer
{
  v10 = *MEMORY[0x277D85DE8];
  userInfo = [timer userInfo];
  v5 = [userInfo valueForKey:@"sectionID"];

  v6 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Temporary authorization expired, effective authorization status has changed", &v8, 0xCu);
  }

  [(NSMutableDictionary *)self->_sectionIDsToAuthorizationExpiryTimers removeObjectForKey:v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didChangeEffectiveAuthorizationStatusForSectionID:v5];
}

- (BBSectionAuthorizationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end