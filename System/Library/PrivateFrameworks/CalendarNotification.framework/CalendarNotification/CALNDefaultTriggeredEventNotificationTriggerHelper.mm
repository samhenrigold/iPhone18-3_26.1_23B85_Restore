@interface CALNDefaultTriggeredEventNotificationTriggerHelper
- (BOOL)_eventWillEndBeforeUserArrivesForHypothesis:(id)hypothesis eventEndDate:(id)date;
- (BOOL)_exceededMaximumTravelTimeThresholdForHypothesis:(id)hypothesis;
- (BOOL)_shouldTriggerForTimeToLeaveRefreshForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (BOOL)_shouldTriggerForTimeToLeaveRefreshGivenImmediateDepartureTimelinessStatusForSourceClientIdentifier:(id)identifier oldNotificationData:(id)data;
- (BOOL)_shouldTriggerForTravelAdviceReceivedForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (BOOL)_shouldTriggerForTravelAdviceReceivedGivenHasExistingNotificationDataForSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis sourceNotificationInfo:(id)info oldNotificationData:(id)data hasExistingTravelAdvice:(BOOL)advice satisfiesMinimumTravelTimeThreshold:(BOOL)threshold;
- (BOOL)shouldTriggerForSourceClientIdentifier:(id)identifier trigger:(unint64_t)trigger sourceNotificationInfo:(id)info oldNotificationData:(id)data;
- (CALNDefaultTriggeredEventNotificationTriggerHelper)initWithTravelAdvisoryAuthority:(id)authority dateProvider:(id)provider eventStoreProvider:(id)storeProvider;
@end

@implementation CALNDefaultTriggeredEventNotificationTriggerHelper

- (CALNDefaultTriggeredEventNotificationTriggerHelper)initWithTravelAdvisoryAuthority:(id)authority dateProvider:(id)provider eventStoreProvider:(id)storeProvider
{
  authorityCopy = authority;
  providerCopy = provider;
  storeProviderCopy = storeProvider;
  v15.receiver = self;
  v15.super_class = CALNDefaultTriggeredEventNotificationTriggerHelper;
  v12 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_travelAdvisoryAuthority, authority);
    objc_storeStrong(&v13->_dateProvider, provider);
    objc_storeStrong(&v13->_eventStoreProvider, storeProvider);
  }

  return v13;
}

- (BOOL)shouldTriggerForSourceClientIdentifier:(id)identifier trigger:(unint64_t)trigger sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  v13 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:trigger];
    v32 = 138544130;
    v33 = identifierCopy;
    v34 = 2114;
    v35 = v14;
    v36 = 2112;
    v37 = infoCopy;
    v38 = 2112;
    v39 = dataCopy;
    _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Determining whether or not to trigger for source client identifier = %{public}@, trigger = %{public}@, source notification info = %@, old notification data = %@", &v32, 0x2Au);
  }

  eventStore = [(EKEventStoreProvider *)self->_eventStoreProvider eventStore];
  blockList = [eventStore blockList];

  organizerEmailAddress = [infoCopy organizerEmailAddress];
  if (organizerEmailAddress)
  {
    v18 = organizerEmailAddress;
    organizerEmailAddress2 = [infoCopy organizerEmailAddress];
    v20 = [blockList isBlockedWithEmail:organizerEmailAddress2];

    if (v20)
    {
      v21 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        organizerEmailAddress3 = [infoCopy organizerEmailAddress];
        v32 = 138412290;
        v33 = organizerEmailAddress3;
        v23 = "Should not trigger for notification. email = %@ is blocked";
LABEL_11:
        _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, v23, &v32, 0xCu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  organizerPhoneNumber = [infoCopy organizerPhoneNumber];
  if (organizerPhoneNumber)
  {
    v25 = organizerPhoneNumber;
    organizerPhoneNumber2 = [infoCopy organizerPhoneNumber];
    v27 = [blockList isBlockedWithPhoneNumber:organizerPhoneNumber2];

    if (v27)
    {
      v21 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        organizerEmailAddress3 = [infoCopy organizerEmailAddress];
        v32 = 138412290;
        v33 = organizerEmailAddress3;
        v23 = "Should not trigger for notification. phone number = %@ is blocked";
        goto LABEL_11;
      }

LABEL_12:

LABEL_13:
      v28 = 0;
      goto LABEL_23;
    }
  }

  if (trigger == 2)
  {
    v30 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _shouldTriggerForTimeToLeaveRefreshForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy oldNotificationData:dataCopy];
    goto LABEL_22;
  }

  if (trigger == 1)
  {
    v30 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _shouldTriggerForTravelAdviceReceivedForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy oldNotificationData:dataCopy];
LABEL_22:
    v28 = v30;
    goto LABEL_23;
  }

  if (trigger)
  {
    goto LABEL_13;
  }

  v29 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138543362;
    v33 = identifierCopy;
    _os_log_impl(&dword_242909000, v29, OS_LOG_TYPE_DEFAULT, "Should trigger for alarm. source client identifier = %{public}@", &v32, 0xCu);
  }

  v28 = 1;
LABEL_23:

  return v28;
}

- (BOOL)_shouldTriggerForTravelAdviceReceivedForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  v61 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v55 = 138543362;
    v56 = identifierCopy;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Determining if notification source should trigger for source client identifier = %{public}@", &v55, 0xCu);
  }

  if (![infoCopy forceDisplayOfNewTravelAdvisoryHypotheses])
  {
    if (([infoCopy allowsLocationAlerts] & 1) == 0)
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v55 = 138543362;
        v56 = identifierCopy;
        v14 = "Should not trigger because location alerts are disabled. source client identifier = %{public}@";
        goto LABEL_13;
      }

LABEL_14:
      v13 = 0;
      goto LABEL_34;
    }

    if ([infoCopy travelAdvisoryDisabled])
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v55 = 138543362;
        v56 = identifierCopy;
        v14 = "Should not trigger because event had its Time To Leave alarm removed. source client identifier = %{public}@";
LABEL_13:
        _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, v14, &v55, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    hypothesis = [infoCopy hypothesis];
    v12 = hypothesis;
    if (!(dataCopy | hypothesis))
    {
      endDate = +[CALNLogSubsystem calendar];
      if (!os_log_type_enabled(endDate, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        v13 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v55 = 138543362;
      v56 = identifierCopy;
      v17 = "Should not trigger because nil hypothesis received and no existing notification data, source client identifier = %{public}@";
LABEL_18:
      _os_log_impl(&dword_242909000, endDate, OS_LOG_TYPE_DEFAULT, v17, &v55, 0xCu);
      goto LABEL_19;
    }

    v13 = dataCopy != 0;
    if (dataCopy && !hypothesis)
    {
      hypothesis2 = [dataCopy hypothesis];

      if (!hypothesis2)
      {
        endDate = +[CALNLogSubsystem calendar];
        if (!os_log_type_enabled(endDate, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v55 = 138543362;
        v56 = identifierCopy;
        v17 = "Should not trigger because nil hypothesis received and existing notification data has no travel advice, source client identifier = %{public}@";
        goto LABEL_18;
      }

      goto LABEL_29;
    }

    if (!hypothesis)
    {
LABEL_29:
      endDate = +[CALNLogSubsystem calendar];
      if (!os_log_type_enabled(endDate, OS_LOG_TYPE_DEFAULT))
      {
LABEL_32:
        v13 = 1;
        goto LABEL_33;
      }

      v55 = 138543362;
      v56 = identifierCopy;
      v20 = "Should trigger because nil hypothesis received and notification data has existing travel advice for source client identifier = %{public}@";
LABEL_31:
      _os_log_impl(&dword_242909000, endDate, OS_LOG_TYPE_DEFAULT, v20, &v55, 0xCu);
      goto LABEL_32;
    }

    if ([hypothesis travelState] == 5)
    {
      endDate = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(endDate, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithBool:dataCopy != 0];
        v55 = 138543618;
        v56 = identifierCopy;
        v57 = 2114;
        v58 = v19;
        _os_log_impl(&dword_242909000, endDate, OS_LOG_TYPE_DEFAULT, "We've detected that the user has arrived at the event's location. source client url = %{public}@, has existing notification data = %{public}@", &v55, 0x16u);
      }

      goto LABEL_33;
    }

    if (dataCopy)
    {
      hypothesis3 = [dataCopy hypothesis];
      if (hypothesis3)
      {
        v23 = hypothesis3;
        hypothesis4 = [dataCopy hypothesis];
        suggestedDepartureDate = [hypothesis4 suggestedDepartureDate];

        if (suggestedDepartureDate)
        {
          endDate = +[CALNLogSubsystem calendar];
          if (!os_log_type_enabled(endDate, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_32;
          }

          v55 = 138543362;
          v56 = identifierCopy;
          v20 = "Should trigger because notification has existing travel advice. source client identifier = %{public}@";
          goto LABEL_31;
        }
      }
    }

    endDate = [infoCopy endDate];
    if ([(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _eventWillEndBeforeUserArrivesForHypothesis:v12 eventEndDate:endDate])
    {
      v26 = +[CALNLogSubsystem calendar];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
LABEL_44:

        goto LABEL_19;
      }

      v27 = MEMORY[0x277CCABB0];
      [v12 aggressiveTravelTime];
      v28 = [v27 numberWithDouble:?];
      v55 = 138543874;
      v56 = identifierCopy;
      v57 = 2114;
      v58 = v28;
      v59 = 2114;
      v60 = endDate;
      _os_log_impl(&dword_242909000, v26, OS_LOG_TYPE_DEFAULT, "Should not trigger because the user has not seen travel advisory information for this event yet and we've detected the user will not arrive until the event is over. Will not show travel advisory information. source client identifier = %{public}@ \nAggressive travel time: [%{public}@] is after event end date: [%{public}@].", &v55, 0x20u);
LABEL_43:

      goto LABEL_44;
    }

    if ([(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _exceededMaximumTravelTimeThresholdForHypothesis:v12])
    {
      v29 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = MEMORY[0x277CCABB0];
        [v12 conservativeTravelTime];
        v31 = [v30 numberWithDouble:?];
        v32 = MEMORY[0x277CCABB0];
        travelAdvisoryAuthority = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
        [travelAdvisoryAuthority maximumAllowableTravelTime];
        v34 = [v32 numberWithDouble:?];
        v55 = 138543618;
        v56 = v31;
        v57 = 2114;
        v58 = v34;
        _os_log_impl(&dword_242909000, v29, OS_LOG_TYPE_DEFAULT, "Conservative Travel time [%{public}@] does not satisfy the initial emission travel time requirement since it is more than the maximum allowable travel time: [%{public}@]. Will not emit hypothesis as a result.", &v55, 0x16u);
      }

      goto LABEL_19;
    }

    travelAdvisoryAuthority2 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
    v36 = [travelAdvisoryAuthority2 doesHypothesisSatisfyMinimumAllowableTravelTime:v12];

    if (dataCopy)
    {
      v37 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v55 = 138543362;
        v56 = identifierCopy;
        _os_log_impl(&dword_242909000, v37, OS_LOG_TYPE_DEFAULT, "Found existing notification data for event. source client identifier = %{public}@", &v55, 0xCu);
      }

      v13 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _shouldTriggerForTravelAdviceReceivedGivenHasExistingNotificationDataForSourceClientIdentifier:identifierCopy hypothesis:v12 sourceNotificationInfo:infoCopy oldNotificationData:dataCopy hasExistingTravelAdvice:0 satisfiesMinimumTravelTimeThreshold:v36];
      goto LABEL_33;
    }

    if ((v36 & 1) == 0)
    {
      [v12 estimatedTravelTime];
      v45 = v44;
      travelAdvisoryAuthority3 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
      [travelAdvisoryAuthority3 minimumAllowableTravelTime];
      v48 = v47;

      v26 = +[CALNLogSubsystem calendar];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v45];
      v49 = [MEMORY[0x277CCABB0] numberWithDouble:v48];
      v55 = 138543874;
      v56 = identifierCopy;
      v57 = 2114;
      v58 = v28;
      v59 = 2114;
      v60 = v49;
      _os_log_impl(&dword_242909000, v26, OS_LOG_TYPE_DEFAULT, "Should not trigger because the predicated travel time is less than the minimum allowable travel time threshold so we can't provide a time to leave alert. source client identifier = %{public}@, predicated travel time = %{public}@, minimum allowable travel time threshold = %{public}@", &v55, 0x20u);

      goto LABEL_43;
    }

    startDate = [infoCopy startDate];
    dateProvider = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self dateProvider];
    v40 = [dateProvider now];
    v41 = [startDate CalIsBeforeDate:v40];

    if (v41)
    {
      v42 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v55 = 138543362;
        v56 = identifierCopy;
        v43 = "Should not trigger because the event's start date is before now and we don't have any existing notification data. source client identifier = %{public}@";
LABEL_57:
        _os_log_impl(&dword_242909000, v42, OS_LOG_TYPE_DEFAULT, v43, &v55, 0xCu);
      }
    }

    else
    {
      travelState = [v12 travelState];
      if (travelState == 2)
      {
        v42 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [MEMORY[0x277CCABB0] numberWithInteger:2];
          v55 = 138543618;
          v56 = identifierCopy;
          v57 = 2114;
          v58 = v51;
          _os_log_impl(&dword_242909000, v42, OS_LOG_TYPE_DEFAULT, "Should not trigger because the user is definitely traveling to the destination and we don't have any existing notification data for this event. source client identifier = %{public}@, travel state = %{public}@", &v55, 0x16u);
        }

        goto LABEL_67;
      }

      v52 = travelState;
      eventHasAlarms = [infoCopy eventHasAlarms];
      v42 = +[CALNLogSubsystem calendar];
      v54 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (v52 != 3 || !eventHasAlarms)
      {
        if (v54)
        {
          v55 = 138543362;
          v56 = identifierCopy;
          _os_log_impl(&dword_242909000, v42, OS_LOG_TYPE_DEFAULT, "Should trigger because new travel advice received and no existing notification data for this event exists already. source client identifier = %{public}@", &v55, 0xCu);
        }

        v13 = 1;
        goto LABEL_68;
      }

      if (v54)
      {
        v55 = 138543362;
        v56 = identifierCopy;
        v43 = "Should not trigger because the user is traveling towards the destination, we don't have any existing notification data for this event and the event already has normal alarms on it, so the user will be alerted of this event at some point. source client identifier = %{public}@";
        goto LABEL_57;
      }
    }

LABEL_67:
    v13 = 0;
LABEL_68:

    goto LABEL_33;
  }

  v12 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v55 = 138543362;
    v56 = identifierCopy;
    _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "Should trigger because forcing display of new travel advisory hypotheses for source client identifier = %{public}@", &v55, 0xCu);
  }

  v13 = 1;
LABEL_34:

  return v13;
}

- (BOOL)_shouldTriggerForTravelAdviceReceivedGivenHasExistingNotificationDataForSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis sourceNotificationInfo:(id)info oldNotificationData:(id)data hasExistingTravelAdvice:(BOOL)advice satisfiesMinimumTravelTimeThreshold:(BOOL)threshold
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hypothesisCopy = hypothesis;
  dataCopy = data;
  isOffsetFromTravelTimeStart = [info isOffsetFromTravelTimeStart];
  lastFireTimeOfAlertOffsetFromTravelTime = [dataCopy lastFireTimeOfAlertOffsetFromTravelTime];

  if (lastFireTimeOfAlertOffsetFromTravelTime)
  {
    dateProvider = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self dateProvider];
    v19 = [dateProvider now];
    v20 = [CALNTravelAdvisoryUtilities isLastFireTimeOfAlert:lastFireTimeOfAlertOffsetFromTravelTime withinEightMinutesOfDate:v19];

    if ((isOffsetFromTravelTimeStart & v20) == 1)
    {
      v21 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543362;
        v28 = identifierCopy;
        v22 = "Should trigger because notification recently fired due to a travel time alert. source client identifier = %{public}@";
LABEL_8:
        _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, v22, &v27, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  travelState = [hypothesisCopy travelState];
  travelAdvisoryAuthority = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
  LODWORD(travelState) = [travelAdvisoryAuthority travelStateIndicatesTravelingTowardDestination:travelState];

  if (travelState)
  {
    v21 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = identifierCopy;
      v22 = "Should trigger because an alert was already fired for the event and the user is traveling to the destination. source client identifier = %{public}@";
      goto LABEL_8;
    }

LABEL_9:
    v25 = 1;
LABEL_15:

    goto LABEL_16;
  }

  if (!threshold)
  {
    v21 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = identifierCopy;
      _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Should not trigger because new travel hypothesis received for event that does not satisfy minimum travel time threshold. source client identifier = %{public}@", &v27, 0xCu);
    }

    v25 = 0;
    goto LABEL_15;
  }

  v25 = 1;
LABEL_16:

  return v25;
}

- (BOOL)_shouldTriggerForTimeToLeaveRefreshForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info oldNotificationData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  dataCopy = data;
  if (dataCopy)
  {
    if (([infoCopy allowsLocationAlerts] & 1) == 0)
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543362;
        v22 = identifierCopy;
        v12 = "Should not trigger for time to leave refresh timer fired because location alerts are disabled. source client identifier = %{public}@";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if ([infoCopy travelAdvisoryDisabled])
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543362;
        v22 = identifierCopy;
        v12 = "Should not trigger because event had its Time To Leave alarm removed. source client identifier = %{public}@";
LABEL_10:
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, v12, &v21, 0xCu);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    hypothesis = [infoCopy hypothesis];
    v11 = hypothesis;
    if (hypothesis)
    {
      travelState = [hypothesis travelState];
      travelAdvisoryAuthority = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
      v18 = [travelAdvisoryAuthority travelStateIndicatesTravelingTowardDestination:travelState];

      if ((v18 & 1) == 0 && travelState != 5)
      {
        if ([infoCopy travelAdvisoryTimelinessPeriod] == 2)
        {
          v13 = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self _shouldTriggerForTimeToLeaveRefreshGivenImmediateDepartureTimelinessStatusForSourceClientIdentifier:identifierCopy oldNotificationData:dataCopy];
          goto LABEL_12;
        }

LABEL_24:
        v13 = 1;
        goto LABEL_12;
      }

      v19 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543362;
        v22 = identifierCopy;
        v20 = "Should trigger because the user is traveling to the destination or has arrived. source client identifier = %{public}@";
        goto LABEL_22;
      }
    }

    else
    {
      v19 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543362;
        v22 = identifierCopy;
        v20 = "Should trigger for time to leave refresh timer fired because we have no travel advice. source client identifier = %{public}@";
LABEL_22:
        _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, v20, &v21, 0xCu);
      }
    }

    goto LABEL_24;
  }

  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = identifierCopy;
    v12 = "Should not trigger for time to leave refresh timer fired because no existing notification data. source client identifier = %{public}@";
    goto LABEL_10;
  }

LABEL_11:
  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)_shouldTriggerForTimeToLeaveRefreshGivenImmediateDepartureTimelinessStatusForSourceClientIdentifier:(id)identifier oldNotificationData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hasDisplayedLeaveNowMessage = [data hasDisplayedLeaveNowMessage];
  v7 = +[CALNLogSubsystem calendar];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (hasDisplayedLeaveNowMessage)
  {
    if (v8)
    {
      v11 = 138543362;
      v12 = identifierCopy;
      v9 = "Should not trigger for time to leave because an alert was already fired for this event and showed a 'Leave Now' message. source client identifier = %{public}@";
LABEL_6:
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
    }
  }

  else if (v8)
  {
    v11 = 138543362;
    v12 = identifierCopy;
    v9 = "Should trigger for time to leave because the user needs to see the 'Leave Now' alert. source client identifier = %{public}@";
    goto LABEL_6;
  }

  return hasDisplayedLeaveNowMessage ^ 1;
}

- (BOOL)_eventWillEndBeforeUserArrivesForHypothesis:(id)hypothesis eventEndDate:(id)date
{
  dateCopy = date;
  [hypothesis aggressiveTravelTime];
  v8 = v7;
  dateProvider = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self dateProvider];
  v10 = [dateProvider now];
  v11 = [v10 dateByAddingTimeInterval:v8];

  LOBYTE(dateProvider) = [v11 CalIsAfterDate:dateCopy];
  return dateProvider;
}

- (BOOL)_exceededMaximumTravelTimeThresholdForHypothesis:(id)hypothesis
{
  [hypothesis conservativeTravelTime];
  v5 = v4;
  travelAdvisoryAuthority = [(CALNDefaultTriggeredEventNotificationTriggerHelper *)self travelAdvisoryAuthority];
  [travelAdvisoryAuthority maximumAllowableTravelTime];
  v8 = v7;

  return v5 > v8;
}

@end