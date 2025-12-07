@interface HDSleepPeriodInfo
- (HDSleepPeriodInfo)initWithUserSetSchedules:(id)schedules incompleteSessions:(id)sessions mappedTimezones:(id)timezones;
@end

@implementation HDSleepPeriodInfo

- (HDSleepPeriodInfo)initWithUserSetSchedules:(id)schedules incompleteSessions:(id)sessions mappedTimezones:(id)timezones
{
  schedulesCopy = schedules;
  sessionsCopy = sessions;
  timezonesCopy = timezones;
  v19.receiver = self;
  v19.super_class = HDSleepPeriodInfo;
  v11 = [(HDSleepPeriodInfo *)&v19 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(schedulesCopy);
    userSetSchedules = v11->_userSetSchedules;
    v11->_userSetSchedules = v12;

    v14 = objc_msgSend_copy(sessionsCopy);
    incompleteSessions = v11->_incompleteSessions;
    v11->_incompleteSessions = v14;

    v16 = objc_msgSend_copy(timezonesCopy);
    mappedTimezones = v11->_mappedTimezones;
    v11->_mappedTimezones = v16;
  }

  return v11;
}

@end