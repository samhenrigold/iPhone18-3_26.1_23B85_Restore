@interface PCSystemWakeManager
+ (void)scheduleWake:(BOOL)wake wakeDate:(id)date acceptableDelay:(double)delay userVisible:(BOOL)visible serviceIdentifier:(id)identifier uniqueIdentifier:(void *)uniqueIdentifier;
@end

@implementation PCSystemWakeManager

+ (void)scheduleWake:(BOOL)wake wakeDate:(id)date acceptableDelay:(double)delay userVisible:(BOOL)visible serviceIdentifier:(id)identifier uniqueIdentifier:(void *)uniqueIdentifier
{
  visibleCopy = visible;
  wakeCopy = wake;
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  if (scheduleWake_wakeDate_acceptableDelay_userVisible_serviceIdentifier_uniqueIdentifier__pred != -1)
  {
    +[PCSystemWakeManager scheduleWake:wakeDate:acceptableDelay:userVisible:serviceIdentifier:uniqueIdentifier:];
  }

  v15 = +[PCLog wakeManager];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PCStringFromDate(dateCopy);
    v18[0] = 67110146;
    v18[1] = wakeCopy;
    v19 = 2114;
    v20 = v16;
    v21 = 2048;
    delayCopy = delay;
    v23 = 2114;
    v24 = identifierCopy;
    v25 = 2114;
    uniqueIdentifierCopy = uniqueIdentifier;
    _os_log_impl(&dword_25E3EF000, v15, OS_LOG_TYPE_DEFAULT, "Request to schedule wake %d date %{public}@ leeway %g service identifier %{public}@ unique identifier %{public}@", v18, 0x30u);
  }

  v17 = [[PCScheduleSystemWakeOperation alloc] initForScheduledWake:wakeCopy wakeDate:dateCopy acceptableDelay:visibleCopy userVisible:identifierCopy serviceIdentifier:uniqueIdentifier uniqueIdentifier:delay];
  [scheduleWake_wakeDate_acceptableDelay_userVisible_serviceIdentifier_uniqueIdentifier__queue addOperation:v17];
}

void __108__PCSystemWakeManager_scheduleWake_wakeDate_acceptableDelay_userVisible_serviceIdentifier_uniqueIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = scheduleWake_wakeDate_acceptableDelay_userVisible_serviceIdentifier_uniqueIdentifier__queue;
  scheduleWake_wakeDate_acceptableDelay_userVisible_serviceIdentifier_uniqueIdentifier__queue = v0;

  [scheduleWake_wakeDate_acceptableDelay_userVisible_serviceIdentifier_uniqueIdentifier__queue setMaxConcurrentOperationCount:1];
  v2 = objc_alloc_init(PCCancelAllProcessWakesOperation);
  [scheduleWake_wakeDate_acceptableDelay_userVisible_serviceIdentifier_uniqueIdentifier__queue addOperation:v2];
}

@end