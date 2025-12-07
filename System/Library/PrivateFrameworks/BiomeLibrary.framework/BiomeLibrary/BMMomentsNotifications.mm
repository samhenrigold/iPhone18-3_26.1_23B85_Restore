@interface BMMomentsNotifications
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsNotifications)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsNotifications)initWithReporterIdentification:(id)identification reporterWritingDate:(id)date isSignificantLocationEnabled:(id)enabled isSystemNotificationsEnabled:(id)notificationsEnabled isAppNotificationsEnabled:(id)appNotificationsEnabled predictionTuple:(id)tuple maxAvailabilityProbability:(id)probability maxAvailabilityProbabilityDate:(id)self0 proposedFireDate:(id)self1 proposedFireDateSource:(int)self2 realTimeCheckHandlerRetryDate:(id)self3 realTimeCheckHandlerFailure:(id)self4 realTimeCheckHandlerErrorDescription:(id)self5 realTimeCheckHandlerErrorCode:(id)self6 realTimeAlarmErrorDomain:(id)self7 fireAlarmDate:(id)self8 fireTimerAlarmErrorDescription:(id)self9 fireTimerAlarmErrorCode:(id)errorCode fireTimerAlarmErrorDomain:(id)errorDomain realTimeCheckRejected:(id)rejected realTimeCheckIsTraveling:(id)traveling realTimeCheckIsPlaceEligible:(id)eligible realTimeCheckIsInVisit:(id)visit realTimeCheckIsInWorkoutHealthKit:(id)kit realTimeCheckIsInWorkoutMotion:(id)motion realTimeCheckIsJournaling:(id)journaling realTimeCheckIsAtHome:(id)home eventType:(int)identification0 eventTime:(id)identification1 AttemptSuccessful:(id)identification2 contentType:(int)identification3 suggestionIdentifier:(id)identification4 bundleInterfaceType:(int)identification5 bundleGoodnessScore:(id)identification6 deviceId:(id)identification7 deviceType:(int)identification8 isDevicePrimary:(id)identification9 journalingAppFirstParty:(id)date0 schedulingState:(int)date1 scheduleDeliverySetting:(int)date2 isOnDefaultSchedule:(id)date3 isDNUGated:(id)date4;
- (BOOL)isEqual:(id)equal;
- (NSDate)eventTime;
- (NSDate)fireAlarmDate;
- (NSDate)maxAvailabilityProbabilityDate;
- (NSDate)proposedFireDate;
- (NSDate)realTimeCheckHandlerRetryDate;
- (NSDate)reporterWritingDate;
- (NSString)description;
- (id)_predictionTupleJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsNotifications

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    reporterIdentification = [(BMMomentsNotifications *)self reporterIdentification];
    reporterIdentification2 = [v5 reporterIdentification];
    v8 = reporterIdentification2;
    if (reporterIdentification == reporterIdentification2)
    {
    }

    else
    {
      reporterIdentification3 = [(BMMomentsNotifications *)self reporterIdentification];
      reporterIdentification4 = [v5 reporterIdentification];
      v11 = [reporterIdentification3 isEqual:reporterIdentification4];

      if (!v11)
      {
        goto LABEL_169;
      }
    }

    reporterWritingDate = [(BMMomentsNotifications *)self reporterWritingDate];
    reporterWritingDate2 = [v5 reporterWritingDate];
    v15 = reporterWritingDate2;
    if (reporterWritingDate == reporterWritingDate2)
    {
    }

    else
    {
      reporterWritingDate3 = [(BMMomentsNotifications *)self reporterWritingDate];
      reporterWritingDate4 = [v5 reporterWritingDate];
      v18 = [reporterWritingDate3 isEqual:reporterWritingDate4];

      if (!v18)
      {
        goto LABEL_169;
      }
    }

    if (-[BMMomentsNotifications hasIsSignificantLocationEnabled](self, "hasIsSignificantLocationEnabled") || [v5 hasIsSignificantLocationEnabled])
    {
      if (![(BMMomentsNotifications *)self hasIsSignificantLocationEnabled])
      {
        goto LABEL_169;
      }

      if (![v5 hasIsSignificantLocationEnabled])
      {
        goto LABEL_169;
      }

      isSignificantLocationEnabled = [(BMMomentsNotifications *)self isSignificantLocationEnabled];
      if (isSignificantLocationEnabled != [v5 isSignificantLocationEnabled])
      {
        goto LABEL_169;
      }
    }

    if (-[BMMomentsNotifications hasIsSystemNotificationsEnabled](self, "hasIsSystemNotificationsEnabled") || [v5 hasIsSystemNotificationsEnabled])
    {
      if (![(BMMomentsNotifications *)self hasIsSystemNotificationsEnabled])
      {
        goto LABEL_169;
      }

      if (![v5 hasIsSystemNotificationsEnabled])
      {
        goto LABEL_169;
      }

      isSystemNotificationsEnabled = [(BMMomentsNotifications *)self isSystemNotificationsEnabled];
      if (isSystemNotificationsEnabled != [v5 isSystemNotificationsEnabled])
      {
        goto LABEL_169;
      }
    }

    if (-[BMMomentsNotifications hasIsAppNotificationsEnabled](self, "hasIsAppNotificationsEnabled") || [v5 hasIsAppNotificationsEnabled])
    {
      if (![(BMMomentsNotifications *)self hasIsAppNotificationsEnabled])
      {
        goto LABEL_169;
      }

      if (![v5 hasIsAppNotificationsEnabled])
      {
        goto LABEL_169;
      }

      isAppNotificationsEnabled = [(BMMomentsNotifications *)self isAppNotificationsEnabled];
      if (isAppNotificationsEnabled != [v5 isAppNotificationsEnabled])
      {
        goto LABEL_169;
      }
    }

    predictionTuple = [(BMMomentsNotifications *)self predictionTuple];
    predictionTuple2 = [v5 predictionTuple];
    v24 = predictionTuple2;
    if (predictionTuple == predictionTuple2)
    {
    }

    else
    {
      predictionTuple3 = [(BMMomentsNotifications *)self predictionTuple];
      predictionTuple4 = [v5 predictionTuple];
      v27 = [predictionTuple3 isEqual:predictionTuple4];

      if (!v27)
      {
        goto LABEL_169;
      }
    }

    if (-[BMMomentsNotifications hasMaxAvailabilityProbability](self, "hasMaxAvailabilityProbability") || [v5 hasMaxAvailabilityProbability])
    {
      if (![(BMMomentsNotifications *)self hasMaxAvailabilityProbability])
      {
        goto LABEL_169;
      }

      if (![v5 hasMaxAvailabilityProbability])
      {
        goto LABEL_169;
      }

      [(BMMomentsNotifications *)self maxAvailabilityProbability];
      v29 = v28;
      [v5 maxAvailabilityProbability];
      if (v29 != v30)
      {
        goto LABEL_169;
      }
    }

    maxAvailabilityProbabilityDate = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
    maxAvailabilityProbabilityDate2 = [v5 maxAvailabilityProbabilityDate];
    v33 = maxAvailabilityProbabilityDate2;
    if (maxAvailabilityProbabilityDate == maxAvailabilityProbabilityDate2)
    {
    }

    else
    {
      maxAvailabilityProbabilityDate3 = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
      maxAvailabilityProbabilityDate4 = [v5 maxAvailabilityProbabilityDate];
      v36 = [maxAvailabilityProbabilityDate3 isEqual:maxAvailabilityProbabilityDate4];

      if (!v36)
      {
        goto LABEL_169;
      }
    }

    proposedFireDate = [(BMMomentsNotifications *)self proposedFireDate];
    proposedFireDate2 = [v5 proposedFireDate];
    v39 = proposedFireDate2;
    if (proposedFireDate == proposedFireDate2)
    {
    }

    else
    {
      proposedFireDate3 = [(BMMomentsNotifications *)self proposedFireDate];
      proposedFireDate4 = [v5 proposedFireDate];
      v42 = [proposedFireDate3 isEqual:proposedFireDate4];

      if (!v42)
      {
        goto LABEL_169;
      }
    }

    proposedFireDateSource = [(BMMomentsNotifications *)self proposedFireDateSource];
    if (proposedFireDateSource == [v5 proposedFireDateSource])
    {
      realTimeCheckHandlerRetryDate = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
      realTimeCheckHandlerRetryDate2 = [v5 realTimeCheckHandlerRetryDate];
      v46 = realTimeCheckHandlerRetryDate2;
      if (realTimeCheckHandlerRetryDate == realTimeCheckHandlerRetryDate2)
      {
      }

      else
      {
        realTimeCheckHandlerRetryDate3 = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
        realTimeCheckHandlerRetryDate4 = [v5 realTimeCheckHandlerRetryDate];
        v49 = [realTimeCheckHandlerRetryDate3 isEqual:realTimeCheckHandlerRetryDate4];

        if (!v49)
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckHandlerFailure](self, "hasRealTimeCheckHandlerFailure") || [v5 hasRealTimeCheckHandlerFailure])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckHandlerFailure])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckHandlerFailure])
        {
          goto LABEL_169;
        }

        realTimeCheckHandlerFailure = [(BMMomentsNotifications *)self realTimeCheckHandlerFailure];
        if (realTimeCheckHandlerFailure != [v5 realTimeCheckHandlerFailure])
        {
          goto LABEL_169;
        }
      }

      realTimeCheckHandlerErrorDescription = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorDescription];
      realTimeCheckHandlerErrorDescription2 = [v5 realTimeCheckHandlerErrorDescription];
      v53 = realTimeCheckHandlerErrorDescription2;
      if (realTimeCheckHandlerErrorDescription == realTimeCheckHandlerErrorDescription2)
      {
      }

      else
      {
        realTimeCheckHandlerErrorDescription3 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorDescription];
        realTimeCheckHandlerErrorDescription4 = [v5 realTimeCheckHandlerErrorDescription];
        v56 = [realTimeCheckHandlerErrorDescription3 isEqual:realTimeCheckHandlerErrorDescription4];

        if (!v56)
        {
          goto LABEL_169;
        }
      }

      realTimeCheckHandlerErrorCode = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorCode];
      realTimeCheckHandlerErrorCode2 = [v5 realTimeCheckHandlerErrorCode];
      v59 = realTimeCheckHandlerErrorCode2;
      if (realTimeCheckHandlerErrorCode == realTimeCheckHandlerErrorCode2)
      {
      }

      else
      {
        realTimeCheckHandlerErrorCode3 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorCode];
        realTimeCheckHandlerErrorCode4 = [v5 realTimeCheckHandlerErrorCode];
        v62 = [realTimeCheckHandlerErrorCode3 isEqual:realTimeCheckHandlerErrorCode4];

        if (!v62)
        {
          goto LABEL_169;
        }
      }

      realTimeAlarmErrorDomain = [(BMMomentsNotifications *)self realTimeAlarmErrorDomain];
      realTimeAlarmErrorDomain2 = [v5 realTimeAlarmErrorDomain];
      v65 = realTimeAlarmErrorDomain2;
      if (realTimeAlarmErrorDomain == realTimeAlarmErrorDomain2)
      {
      }

      else
      {
        realTimeAlarmErrorDomain3 = [(BMMomentsNotifications *)self realTimeAlarmErrorDomain];
        realTimeAlarmErrorDomain4 = [v5 realTimeAlarmErrorDomain];
        v68 = [realTimeAlarmErrorDomain3 isEqual:realTimeAlarmErrorDomain4];

        if (!v68)
        {
          goto LABEL_169;
        }
      }

      fireAlarmDate = [(BMMomentsNotifications *)self fireAlarmDate];
      fireAlarmDate2 = [v5 fireAlarmDate];
      v71 = fireAlarmDate2;
      if (fireAlarmDate == fireAlarmDate2)
      {
      }

      else
      {
        fireAlarmDate3 = [(BMMomentsNotifications *)self fireAlarmDate];
        fireAlarmDate4 = [v5 fireAlarmDate];
        v74 = [fireAlarmDate3 isEqual:fireAlarmDate4];

        if (!v74)
        {
          goto LABEL_169;
        }
      }

      fireTimerAlarmErrorDescription = [(BMMomentsNotifications *)self fireTimerAlarmErrorDescription];
      fireTimerAlarmErrorDescription2 = [v5 fireTimerAlarmErrorDescription];
      v77 = fireTimerAlarmErrorDescription2;
      if (fireTimerAlarmErrorDescription == fireTimerAlarmErrorDescription2)
      {
      }

      else
      {
        fireTimerAlarmErrorDescription3 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDescription];
        fireTimerAlarmErrorDescription4 = [v5 fireTimerAlarmErrorDescription];
        v80 = [fireTimerAlarmErrorDescription3 isEqual:fireTimerAlarmErrorDescription4];

        if (!v80)
        {
          goto LABEL_169;
        }
      }

      fireTimerAlarmErrorCode = [(BMMomentsNotifications *)self fireTimerAlarmErrorCode];
      fireTimerAlarmErrorCode2 = [v5 fireTimerAlarmErrorCode];
      v83 = fireTimerAlarmErrorCode2;
      if (fireTimerAlarmErrorCode == fireTimerAlarmErrorCode2)
      {
      }

      else
      {
        fireTimerAlarmErrorCode3 = [(BMMomentsNotifications *)self fireTimerAlarmErrorCode];
        fireTimerAlarmErrorCode4 = [v5 fireTimerAlarmErrorCode];
        v86 = [fireTimerAlarmErrorCode3 isEqual:fireTimerAlarmErrorCode4];

        if (!v86)
        {
          goto LABEL_169;
        }
      }

      fireTimerAlarmErrorDomain = [(BMMomentsNotifications *)self fireTimerAlarmErrorDomain];
      fireTimerAlarmErrorDomain2 = [v5 fireTimerAlarmErrorDomain];
      v89 = fireTimerAlarmErrorDomain2;
      if (fireTimerAlarmErrorDomain == fireTimerAlarmErrorDomain2)
      {
      }

      else
      {
        fireTimerAlarmErrorDomain3 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDomain];
        fireTimerAlarmErrorDomain4 = [v5 fireTimerAlarmErrorDomain];
        v92 = [fireTimerAlarmErrorDomain3 isEqual:fireTimerAlarmErrorDomain4];

        if (!v92)
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckRejected](self, "hasRealTimeCheckRejected") || [v5 hasRealTimeCheckRejected])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckRejected])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckRejected])
        {
          goto LABEL_169;
        }

        realTimeCheckRejected = [(BMMomentsNotifications *)self realTimeCheckRejected];
        if (realTimeCheckRejected != [v5 realTimeCheckRejected])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsTraveling](self, "hasRealTimeCheckIsTraveling") || [v5 hasRealTimeCheckIsTraveling])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsTraveling])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsTraveling])
        {
          goto LABEL_169;
        }

        realTimeCheckIsTraveling = [(BMMomentsNotifications *)self realTimeCheckIsTraveling];
        if (realTimeCheckIsTraveling != [v5 realTimeCheckIsTraveling])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsPlaceEligible](self, "hasRealTimeCheckIsPlaceEligible") || [v5 hasRealTimeCheckIsPlaceEligible])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsPlaceEligible])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsPlaceEligible])
        {
          goto LABEL_169;
        }

        realTimeCheckIsPlaceEligible = [(BMMomentsNotifications *)self realTimeCheckIsPlaceEligible];
        if (realTimeCheckIsPlaceEligible != [v5 realTimeCheckIsPlaceEligible])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsInVisit](self, "hasRealTimeCheckIsInVisit") || [v5 hasRealTimeCheckIsInVisit])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsInVisit])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsInVisit])
        {
          goto LABEL_169;
        }

        realTimeCheckIsInVisit = [(BMMomentsNotifications *)self realTimeCheckIsInVisit];
        if (realTimeCheckIsInVisit != [v5 realTimeCheckIsInVisit])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsInWorkoutHealthKit](self, "hasRealTimeCheckIsInWorkoutHealthKit") || [v5 hasRealTimeCheckIsInWorkoutHealthKit])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsInWorkoutHealthKit])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsInWorkoutHealthKit])
        {
          goto LABEL_169;
        }

        realTimeCheckIsInWorkoutHealthKit = [(BMMomentsNotifications *)self realTimeCheckIsInWorkoutHealthKit];
        if (realTimeCheckIsInWorkoutHealthKit != [v5 realTimeCheckIsInWorkoutHealthKit])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsInWorkoutMotion](self, "hasRealTimeCheckIsInWorkoutMotion") || [v5 hasRealTimeCheckIsInWorkoutMotion])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsInWorkoutMotion])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsInWorkoutMotion])
        {
          goto LABEL_169;
        }

        realTimeCheckIsInWorkoutMotion = [(BMMomentsNotifications *)self realTimeCheckIsInWorkoutMotion];
        if (realTimeCheckIsInWorkoutMotion != [v5 realTimeCheckIsInWorkoutMotion])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsJournaling](self, "hasRealTimeCheckIsJournaling") || [v5 hasRealTimeCheckIsJournaling])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsJournaling])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsJournaling])
        {
          goto LABEL_169;
        }

        realTimeCheckIsJournaling = [(BMMomentsNotifications *)self realTimeCheckIsJournaling];
        if (realTimeCheckIsJournaling != [v5 realTimeCheckIsJournaling])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsAtHome](self, "hasRealTimeCheckIsAtHome") || [v5 hasRealTimeCheckIsAtHome])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsAtHome])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsAtHome])
        {
          goto LABEL_169;
        }

        realTimeCheckIsAtHome = [(BMMomentsNotifications *)self realTimeCheckIsAtHome];
        if (realTimeCheckIsAtHome != [v5 realTimeCheckIsAtHome])
        {
          goto LABEL_169;
        }
      }

      eventType = [(BMMomentsNotifications *)self eventType];
      if (eventType != [v5 eventType])
      {
        goto LABEL_169;
      }

      eventTime = [(BMMomentsNotifications *)self eventTime];
      eventTime2 = [v5 eventTime];
      v104 = eventTime2;
      if (eventTime == eventTime2)
      {
      }

      else
      {
        eventTime3 = [(BMMomentsNotifications *)self eventTime];
        eventTime4 = [v5 eventTime];
        v107 = [eventTime3 isEqual:eventTime4];

        if (!v107)
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasAttemptSuccessful](self, "hasAttemptSuccessful") || [v5 hasAttemptSuccessful])
      {
        if (![(BMMomentsNotifications *)self hasAttemptSuccessful])
        {
          goto LABEL_169;
        }

        if (![v5 hasAttemptSuccessful])
        {
          goto LABEL_169;
        }

        attemptSuccessful = [(BMMomentsNotifications *)self AttemptSuccessful];
        if (attemptSuccessful != [v5 AttemptSuccessful])
        {
          goto LABEL_169;
        }
      }

      contentType = [(BMMomentsNotifications *)self contentType];
      if (contentType != [v5 contentType])
      {
        goto LABEL_169;
      }

      suggestionIdentifier = [(BMMomentsNotifications *)self suggestionIdentifier];
      suggestionIdentifier2 = [v5 suggestionIdentifier];
      v112 = suggestionIdentifier2;
      if (suggestionIdentifier == suggestionIdentifier2)
      {
      }

      else
      {
        suggestionIdentifier3 = [(BMMomentsNotifications *)self suggestionIdentifier];
        suggestionIdentifier4 = [v5 suggestionIdentifier];
        v115 = [suggestionIdentifier3 isEqual:suggestionIdentifier4];

        if (!v115)
        {
          goto LABEL_169;
        }
      }

      bundleInterfaceType = [(BMMomentsNotifications *)self bundleInterfaceType];
      if (bundleInterfaceType != [v5 bundleInterfaceType])
      {
        goto LABEL_169;
      }

      if (-[BMMomentsNotifications hasBundleGoodnessScore](self, "hasBundleGoodnessScore") || [v5 hasBundleGoodnessScore])
      {
        if (![(BMMomentsNotifications *)self hasBundleGoodnessScore])
        {
          goto LABEL_169;
        }

        if (![v5 hasBundleGoodnessScore])
        {
          goto LABEL_169;
        }

        [(BMMomentsNotifications *)self bundleGoodnessScore];
        v118 = v117;
        [v5 bundleGoodnessScore];
        if (v118 != v119)
        {
          goto LABEL_169;
        }
      }

      deviceId = [(BMMomentsNotifications *)self deviceId];
      deviceId2 = [v5 deviceId];
      v122 = deviceId2;
      if (deviceId == deviceId2)
      {
      }

      else
      {
        deviceId3 = [(BMMomentsNotifications *)self deviceId];
        deviceId4 = [v5 deviceId];
        v125 = [deviceId3 isEqual:deviceId4];

        if (!v125)
        {
          goto LABEL_169;
        }
      }

      deviceType = [(BMMomentsNotifications *)self deviceType];
      if (deviceType == [v5 deviceType])
      {
        if (!-[BMMomentsNotifications hasIsDevicePrimary](self, "hasIsDevicePrimary") && ![v5 hasIsDevicePrimary] || -[BMMomentsNotifications hasIsDevicePrimary](self, "hasIsDevicePrimary") && objc_msgSend(v5, "hasIsDevicePrimary") && (v127 = -[BMMomentsNotifications isDevicePrimary](self, "isDevicePrimary"), v127 == objc_msgSend(v5, "isDevicePrimary")))
        {
          if (!-[BMMomentsNotifications hasJournalingAppFirstParty](self, "hasJournalingAppFirstParty") && ![v5 hasJournalingAppFirstParty] || -[BMMomentsNotifications hasJournalingAppFirstParty](self, "hasJournalingAppFirstParty") && objc_msgSend(v5, "hasJournalingAppFirstParty") && (v128 = -[BMMomentsNotifications journalingAppFirstParty](self, "journalingAppFirstParty"), v128 == objc_msgSend(v5, "journalingAppFirstParty")))
          {
            schedulingState = [(BMMomentsNotifications *)self schedulingState];
            if (schedulingState == [v5 schedulingState])
            {
              scheduleDeliverySetting = [(BMMomentsNotifications *)self scheduleDeliverySetting];
              if (scheduleDeliverySetting == [v5 scheduleDeliverySetting])
              {
                if (!-[BMMomentsNotifications hasIsOnDefaultSchedule](self, "hasIsOnDefaultSchedule") && ![v5 hasIsOnDefaultSchedule] || -[BMMomentsNotifications hasIsOnDefaultSchedule](self, "hasIsOnDefaultSchedule") && objc_msgSend(v5, "hasIsOnDefaultSchedule") && (v131 = -[BMMomentsNotifications isOnDefaultSchedule](self, "isOnDefaultSchedule"), v131 == objc_msgSend(v5, "isOnDefaultSchedule")))
                {
                  if (!-[BMMomentsNotifications hasIsDNUGated](self, "hasIsDNUGated") && ![v5 hasIsDNUGated])
                  {
                    LOBYTE(v12) = 1;
                    goto LABEL_170;
                  }

                  if (-[BMMomentsNotifications hasIsDNUGated](self, "hasIsDNUGated") && [v5 hasIsDNUGated])
                  {
                    isDNUGated = [(BMMomentsNotifications *)self isDNUGated];
                    v12 = isDNUGated ^ [v5 isDNUGated] ^ 1;
LABEL_170:

                    goto LABEL_171;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_169:
    LOBYTE(v12) = 0;
    goto LABEL_170;
  }

  LOBYTE(v12) = 0;
LABEL_171:

  return v12;
}

- (NSDate)eventTime
{
  if (self->_hasRaw_eventTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_eventTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)fireAlarmDate
{
  if (self->_hasRaw_fireAlarmDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_fireAlarmDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)realTimeCheckHandlerRetryDate
{
  if (self->_hasRaw_realTimeCheckHandlerRetryDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_realTimeCheckHandlerRetryDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)proposedFireDate
{
  if (self->_hasRaw_proposedFireDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_proposedFireDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)maxAvailabilityProbabilityDate
{
  if (self->_hasRaw_maxAvailabilityProbabilityDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_maxAvailabilityProbabilityDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)reporterWritingDate
{
  if (self->_hasRaw_reporterWritingDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_reporterWritingDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v153[42] = *MEMORY[0x1E69E9840];
  reporterIdentification = [(BMMomentsNotifications *)self reporterIdentification];
  reporterWritingDate = [(BMMomentsNotifications *)self reporterWritingDate];
  if (reporterWritingDate)
  {
    v5 = MEMORY[0x1E696AD98];
    reporterWritingDate2 = [(BMMomentsNotifications *)self reporterWritingDate];
    [reporterWritingDate2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMomentsNotifications *)self hasIsSignificantLocationEnabled])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isSignificantLocationEnabled](self, "isSignificantLocationEnabled")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMomentsNotifications *)self hasIsSystemNotificationsEnabled])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isSystemNotificationsEnabled](self, "isSystemNotificationsEnabled")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMMomentsNotifications *)self hasIsAppNotificationsEnabled])
  {
    v115 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isAppNotificationsEnabled](self, "isAppNotificationsEnabled")}];
  }

  else
  {
    v115 = 0;
  }

  _predictionTupleJSONArray = [(BMMomentsNotifications *)self _predictionTupleJSONArray];
  if (![(BMMomentsNotifications *)self hasMaxAvailabilityProbability]|| ([(BMMomentsNotifications *)self maxAvailabilityProbability], fabs(v10) == INFINITY))
  {
    v150 = 0;
  }

  else
  {
    [(BMMomentsNotifications *)self maxAvailabilityProbability];
    v11 = MEMORY[0x1E696AD98];
    [(BMMomentsNotifications *)self maxAvailabilityProbability];
    v150 = [v11 numberWithDouble:?];
  }

  maxAvailabilityProbabilityDate = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
  if (maxAvailabilityProbabilityDate)
  {
    v13 = MEMORY[0x1E696AD98];
    maxAvailabilityProbabilityDate2 = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
    [maxAvailabilityProbabilityDate2 timeIntervalSince1970];
    v149 = [v13 numberWithDouble:?];
  }

  else
  {
    v149 = 0;
  }

  proposedFireDate = [(BMMomentsNotifications *)self proposedFireDate];
  if (proposedFireDate)
  {
    v16 = MEMORY[0x1E696AD98];
    proposedFireDate2 = [(BMMomentsNotifications *)self proposedFireDate];
    [proposedFireDate2 timeIntervalSince1970];
    v148 = [v16 numberWithDouble:?];
  }

  else
  {
    v148 = 0;
  }

  v147 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications proposedFireDateSource](self, "proposedFireDateSource")}];
  realTimeCheckHandlerRetryDate = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
  if (realTimeCheckHandlerRetryDate)
  {
    v19 = MEMORY[0x1E696AD98];
    realTimeCheckHandlerRetryDate2 = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
    [realTimeCheckHandlerRetryDate2 timeIntervalSince1970];
    v146 = [v19 numberWithDouble:?];
  }

  else
  {
    v146 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckHandlerFailure])
  {
    v145 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckHandlerFailure](self, "realTimeCheckHandlerFailure")}];
  }

  else
  {
    v145 = 0;
  }

  realTimeCheckHandlerErrorDescription = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorDescription];
  realTimeCheckHandlerErrorCode = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorCode];
  realTimeAlarmErrorDomain = [(BMMomentsNotifications *)self realTimeAlarmErrorDomain];
  fireAlarmDate = [(BMMomentsNotifications *)self fireAlarmDate];
  if (fireAlarmDate)
  {
    v22 = MEMORY[0x1E696AD98];
    fireAlarmDate2 = [(BMMomentsNotifications *)self fireAlarmDate];
    [fireAlarmDate2 timeIntervalSince1970];
    v141 = [v22 numberWithDouble:?];
  }

  else
  {
    v141 = 0;
  }

  fireTimerAlarmErrorDescription = [(BMMomentsNotifications *)self fireTimerAlarmErrorDescription];
  fireTimerAlarmErrorCode = [(BMMomentsNotifications *)self fireTimerAlarmErrorCode];
  fireTimerAlarmErrorDomain = [(BMMomentsNotifications *)self fireTimerAlarmErrorDomain];
  if ([(BMMomentsNotifications *)self hasRealTimeCheckRejected])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckRejected](self, "realTimeCheckRejected")}];
  }

  else
  {
    v137 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsTraveling])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsTraveling](self, "realTimeCheckIsTraveling")}];
  }

  else
  {
    v136 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsPlaceEligible])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsPlaceEligible](self, "realTimeCheckIsPlaceEligible")}];
  }

  else
  {
    v135 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsInVisit])
  {
    v134 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInVisit](self, "realTimeCheckIsInVisit")}];
  }

  else
  {
    v134 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsInWorkoutHealthKit])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInWorkoutHealthKit](self, "realTimeCheckIsInWorkoutHealthKit")}];
  }

  else
  {
    v133 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsInWorkoutMotion])
  {
    v132 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInWorkoutMotion](self, "realTimeCheckIsInWorkoutMotion")}];
  }

  else
  {
    v132 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsJournaling])
  {
    v131 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsJournaling](self, "realTimeCheckIsJournaling")}];
  }

  else
  {
    v131 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsAtHome])
  {
    v130 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsAtHome](self, "realTimeCheckIsAtHome")}];
  }

  else
  {
    v130 = 0;
  }

  v129 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications eventType](self, "eventType")}];
  eventTime = [(BMMomentsNotifications *)self eventTime];
  if (eventTime)
  {
    v25 = MEMORY[0x1E696AD98];
    eventTime2 = [(BMMomentsNotifications *)self eventTime];
    [eventTime2 timeIntervalSince1970];
    v128 = [v25 numberWithDouble:?];
  }

  else
  {
    v128 = 0;
  }

  if ([(BMMomentsNotifications *)self hasAttemptSuccessful])
  {
    v127 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications AttemptSuccessful](self, "AttemptSuccessful")}];
  }

  else
  {
    v127 = 0;
  }

  v126 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications contentType](self, "contentType")}];
  suggestionIdentifier = [(BMMomentsNotifications *)self suggestionIdentifier];
  v124 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications bundleInterfaceType](self, "bundleInterfaceType")}];
  if (![(BMMomentsNotifications *)self hasBundleGoodnessScore]|| ([(BMMomentsNotifications *)self bundleGoodnessScore], fabs(v27) == INFINITY))
  {
    v123 = 0;
  }

  else
  {
    [(BMMomentsNotifications *)self bundleGoodnessScore];
    v28 = MEMORY[0x1E696AD98];
    [(BMMomentsNotifications *)self bundleGoodnessScore];
    v123 = [v28 numberWithDouble:?];
  }

  deviceId = [(BMMomentsNotifications *)self deviceId];
  v121 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications deviceType](self, "deviceType")}];
  if ([(BMMomentsNotifications *)self hasIsDevicePrimary])
  {
    v120 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isDevicePrimary](self, "isDevicePrimary")}];
  }

  else
  {
    v120 = 0;
  }

  if ([(BMMomentsNotifications *)self hasJournalingAppFirstParty])
  {
    v119 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications journalingAppFirstParty](self, "journalingAppFirstParty")}];
  }

  else
  {
    v119 = 0;
  }

  v118 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications schedulingState](self, "schedulingState")}];
  v117 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications scheduleDeliverySetting](self, "scheduleDeliverySetting")}];
  if ([(BMMomentsNotifications *)self hasIsOnDefaultSchedule])
  {
    v116 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isOnDefaultSchedule](self, "isOnDefaultSchedule")}];
  }

  else
  {
    v116 = 0;
  }

  if ([(BMMomentsNotifications *)self hasIsDNUGated])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isDNUGated](self, "isDNUGated")}];
  }

  else
  {
    v29 = 0;
  }

  v152[0] = @"reporterIdentification";
  null = reporterIdentification;
  if (!reporterIdentification)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null;
  v153[0] = null;
  v152[1] = @"reporterWritingDate";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null2;
  v153[1] = null2;
  v152[2] = @"isSignificantLocationEnabled";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null3;
  v153[2] = null3;
  v152[3] = @"isSystemNotificationsEnabled";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v7;
  v102 = null4;
  v153[3] = null4;
  v152[4] = @"isAppNotificationsEnabled";
  null5 = v115;
  if (!v115)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = reporterIdentification;
  v101 = null5;
  v153[4] = null5;
  v152[5] = @"predictionTuple";
  null6 = _predictionTupleJSONArray;
  if (!_predictionTupleJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v153[5] = null6;
  v152[6] = @"maxAvailabilityProbability";
  null7 = v150;
  if (!v150)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v153[6] = null7;
  v152[7] = @"maxAvailabilityProbabilityDate";
  null8 = v149;
  if (!v149)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v153[7] = null8;
  v152[8] = @"proposedFireDate";
  null9 = v148;
  if (!v148)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v153[8] = null9;
  v152[9] = @"proposedFireDateSource";
  null10 = v147;
  if (!v147)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null10;
  v153[9] = null10;
  v152[10] = @"realTimeCheckHandlerRetryDate";
  null11 = v146;
  if (!v146)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null11;
  v153[10] = null11;
  v152[11] = @"realTimeCheckHandlerFailure";
  null12 = v145;
  if (!v145)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = null12;
  v153[11] = null12;
  v152[12] = @"realTimeCheckHandlerErrorDescription";
  null13 = realTimeCheckHandlerErrorDescription;
  if (!realTimeCheckHandlerErrorDescription)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null13;
  v153[12] = null13;
  v152[13] = @"realTimeCheckHandlerErrorCode";
  null14 = realTimeCheckHandlerErrorCode;
  if (!realTimeCheckHandlerErrorCode)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = null14;
  v153[13] = null14;
  v152[14] = @"realTimeAlarmErrorDomain";
  null15 = realTimeAlarmErrorDomain;
  if (!realTimeAlarmErrorDomain)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null15;
  v153[14] = null15;
  v152[15] = @"fireAlarmDate";
  null16 = v141;
  if (!v141)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = null16;
  v153[15] = null16;
  v152[16] = @"fireTimerAlarmErrorDescription";
  null17 = fireTimerAlarmErrorDescription;
  if (!fireTimerAlarmErrorDescription)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null17;
  v153[16] = null17;
  v152[17] = @"fireTimerAlarmErrorCode";
  null18 = fireTimerAlarmErrorCode;
  if (!fireTimerAlarmErrorCode)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null18;
  v153[17] = null18;
  v152[18] = @"fireTimerAlarmErrorDomain";
  null19 = fireTimerAlarmErrorDomain;
  if (!fireTimerAlarmErrorDomain)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null19;
  v153[18] = null19;
  v152[19] = @"realTimeCheckRejected";
  null20 = v137;
  if (!v137)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null20;
  v153[19] = null20;
  v152[20] = @"realTimeCheckIsTraveling";
  null21 = v136;
  if (!v136)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null21;
  v153[20] = null21;
  v152[21] = @"realTimeCheckIsPlaceEligible";
  null22 = v135;
  if (!v135)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = null22;
  v153[21] = null22;
  v152[22] = @"realTimeCheckIsInVisit";
  null23 = v134;
  if (!v134)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = null23;
  v153[22] = null23;
  v152[23] = @"realTimeCheckIsInWorkoutHealthKit";
  null24 = v133;
  if (!v133)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = null24;
  v153[23] = null24;
  v152[24] = @"realTimeCheckIsInWorkoutMotion";
  null25 = v132;
  if (!v132)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = null25;
  v153[24] = null25;
  v152[25] = @"realTimeCheckIsJournaling";
  null26 = v131;
  if (!v131)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = null26;
  v153[25] = null26;
  v152[26] = @"realTimeCheckIsAtHome";
  null27 = v130;
  if (!v130)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null27;
  v153[26] = null27;
  v152[27] = @"eventType";
  null28 = v129;
  if (!v129)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null28;
  v153[27] = null28;
  v152[28] = @"eventTime";
  null29 = v128;
  if (!v128)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null29;
  v153[28] = null29;
  v152[29] = @"AttemptSuccessful";
  null30 = v127;
  if (!v127)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null30;
  v153[29] = null30;
  v152[30] = @"contentType";
  null31 = v126;
  if (!v126)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null31;
  v153[30] = null31;
  v152[31] = @"suggestionIdentifier";
  null32 = suggestionIdentifier;
  if (!suggestionIdentifier)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = v36;
  v80 = null32;
  v153[31] = null32;
  v152[32] = @"bundleInterfaceType";
  null33 = v124;
  if (!v124)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null33;
  v153[32] = null33;
  v152[33] = @"bundleGoodnessScore";
  null34 = v123;
  if (!v123)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v9;
  v78 = null34;
  v153[33] = null34;
  v152[34] = @"deviceId";
  null35 = deviceId;
  if (!deviceId)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null6;
  v77 = null35;
  v153[34] = null35;
  v152[35] = @"deviceType";
  null36 = v121;
  if (!v121)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = null9;
  v113 = v8;
  v153[35] = null36;
  v152[36] = @"isDevicePrimary";
  null37 = v120;
  if (!v120)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v34;
  v153[36] = null37;
  v152[37] = @"journalingAppFirstParty";
  null38 = v119;
  if (!v119)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v153[37] = null38;
  v152[38] = @"schedulingState";
  null39 = v118;
  if (!v118)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = null8;
  v153[38] = null39;
  v152[39] = @"scheduleDeliverySetting";
  null40 = v117;
  if (!v117)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v153[39] = null40;
  v152[40] = @"isOnDefaultSchedule";
  null41 = v116;
  if (!v116)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v153[40] = null41;
  v152[41] = @"isDNUGated";
  null42 = v29;
  if (!v29)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v153[41] = null42;
  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:v152 count:42];
  if (!v29)
  {
  }

  v75 = v47;
  if (!v116)
  {

    v75 = v47;
  }

  if (!v117)
  {

    v75 = v47;
  }

  if (!v118)
  {

    v75 = v47;
  }

  if (!v119)
  {

    v75 = v47;
  }

  if (!v120)
  {

    v75 = v47;
  }

  if (!v121)
  {

    v75 = v47;
  }

  if (!deviceId)
  {

    v75 = v47;
  }

  if (!v123)
  {

    v75 = v47;
  }

  if (!v124)
  {

    v75 = v47;
  }

  if (!suggestionIdentifier)
  {

    v75 = v47;
  }

  if (!v126)
  {

    v75 = v47;
  }

  if (!v127)
  {

    v75 = v47;
  }

  if (!v128)
  {

    v75 = v47;
  }

  if (!v129)
  {

    v75 = v47;
  }

  if (!v130)
  {

    v75 = v47;
  }

  if (!v131)
  {

    v75 = v47;
  }

  if (!v132)
  {

    v75 = v47;
  }

  if (!v133)
  {

    v75 = v47;
  }

  if (!v134)
  {

    v75 = v47;
  }

  if (!v135)
  {

    v75 = v47;
  }

  if (!v136)
  {

    v75 = v47;
  }

  if (!v137)
  {

    v75 = v47;
  }

  if (!fireTimerAlarmErrorDomain)
  {

    v75 = v47;
  }

  if (!fireTimerAlarmErrorCode)
  {

    v75 = v47;
  }

  if (!fireTimerAlarmErrorDescription)
  {

    v75 = v47;
  }

  if (!v141)
  {

    v75 = v47;
  }

  if (!realTimeAlarmErrorDomain)
  {
  }

  if (!realTimeCheckHandlerErrorCode)
  {
  }

  if (!realTimeCheckHandlerErrorDescription)
  {
  }

  if (!v145)
  {
  }

  if (!v146)
  {
  }

  if (!v147)
  {
  }

  if (!v148)
  {
  }

  if (!v149)
  {
  }

  if (!v150)
  {
  }

  if (_predictionTupleJSONArray)
  {
    if (v115)
    {
      goto LABEL_236;
    }
  }

  else
  {

    if (v115)
    {
LABEL_236:
      if (v112)
      {
        goto LABEL_237;
      }

      goto LABEL_245;
    }
  }

  if (v112)
  {
LABEL_237:
    if (v113)
    {
      goto LABEL_238;
    }

    goto LABEL_246;
  }

LABEL_245:

  if (v113)
  {
LABEL_238:
    if (v111)
    {
      goto LABEL_239;
    }

LABEL_247:

    if (v114)
    {
      goto LABEL_240;
    }

    goto LABEL_248;
  }

LABEL_246:

  if (!v111)
  {
    goto LABEL_247;
  }

LABEL_239:
  if (v114)
  {
    goto LABEL_240;
  }

LABEL_248:

LABEL_240:

  return v106;
}

- (id)_predictionTupleJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  predictionTuple = [(BMMomentsNotifications *)self predictionTuple];
  v5 = [predictionTuple countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(predictionTuple);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [predictionTuple countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMomentsNotifications)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v591[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"reporterIdentification"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v465 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v12 = *MEMORY[0x1E698F240];
        v590 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"reporterIdentification"];
        v591[0] = v8;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v591 forKeys:&v590 count:1];
        v13 = 0;
        v14 = 0;
        *error = [v11 initWithDomain:v12 code:2 userInfo:v7];
        goto LABEL_441;
      }

      v13 = 0;
      v14 = 0;
      goto LABEL_442;
    }

    v465 = v6;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"reporterWritingDate"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = objc_alloc(MEMORY[0x1E695DF00]);
    [v9 doubleValue];
    v8 = [v10 initWithTimeIntervalSince1970:?];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v15 = v7;
    v8 = [v9 dateFromString:v15];

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v8 = 0;
      v14 = 0;
      v13 = v465;
      goto LABEL_441;
    }

    v79 = objc_alloc(MEMORY[0x1E696ABC0]);
    v80 = *MEMORY[0x1E698F240];
    v588 = *MEMORY[0x1E696A578];
    selfCopy = self;
    v82 = objc_alloc(MEMORY[0x1E696AEC0]);
    v351 = objc_opt_class();
    v83 = v82;
    self = selfCopy;
    v84 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v351, @"reporterWritingDate"];
    v589 = v84;
    v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v589 forKeys:&v588 count:1];
    v86 = v79;
    v16 = v85;
    v87 = v80;
    v17 = v84;
    v8 = 0;
    v14 = 0;
    *error = [v86 initWithDomain:v87 code:2 userInfo:v85];
    goto LABEL_85;
  }

  v8 = v7;
LABEL_16:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"isSignificantLocationEnabled"];
  v463 = v7;
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
        goto LABEL_19;
      }

      if (error)
      {
        v36 = v16;
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v586 = *MEMORY[0x1E696A578];
        selfCopy2 = self;
        v40 = objc_alloc(MEMORY[0x1E696AEC0]);
        v348 = objc_opt_class();
        v41 = v40;
        self = selfCopy2;
        v20 = [v41 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v348, @"isSignificantLocationEnabled"];
        v587 = v20;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v587 forKeys:&v586 count:1];
        v43 = v37;
        v16 = v36;
        v464 = v42;
        v44 = [v43 initWithDomain:v38 code:2 userInfo:?];
        v17 = 0;
        v14 = 0;
        *error = v44;
LABEL_81:
        v13 = v465;
        goto LABEL_439;
      }

      v17 = 0;
      v14 = 0;
LABEL_85:
      v13 = v465;
      goto LABEL_440;
    }
  }

  v17 = 0;
LABEL_19:
  v18 = [dictionaryCopy objectForKeyedSubscript:@"isSystemNotificationsEnabled"];
  v460 = v16;
  v464 = v18;
  errorCopy = error;
  if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = v17;
      v47 = *MEMORY[0x1E698F240];
      v584 = *MEMORY[0x1E696A578];
      selfCopy3 = self;
      v49 = objc_alloc(MEMORY[0x1E696AEC0]);
      v349 = objc_opt_class();
      v50 = v49;
      self = selfCopy3;
      v51 = v46;
      v13 = v465;
      v52 = [v50 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v349, @"isSystemNotificationsEnabled"];
      v585 = v52;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v585 forKeys:&v584 count:1];
      v53 = v45;
      v16 = v460;
      v54 = v47;
      v17 = v51;
      v20 = 0;
      v14 = 0;
      *errorCopy = [v53 initWithDomain:v54 code:2 userInfo:v21];
      goto LABEL_438;
    }

    v20 = 0;
    v14 = 0;
    goto LABEL_81;
  }

  v20 = v19;
LABEL_22:
  v21 = [dictionaryCopy objectForKeyedSubscript:@"isAppNotificationsEnabled"];
  v459 = v6;
  v457 = v17;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v582 = *MEMORY[0x1E696A578];
        selfCopy4 = self;
        v58 = objc_alloc(MEMORY[0x1E696AEC0]);
        v350 = objc_opt_class();
        v59 = v58;
        self = selfCopy4;
        v13 = v465;
        obj = [v59 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v350, @"isAppNotificationsEnabled"];
        v583 = obj;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v583 forKeys:&v582 count:1];
        v61 = v55;
        v16 = v460;
        v496 = v60;
        v52 = 0;
        v14 = 0;
        *errorCopy = [v61 initWithDomain:v56 code:2 userInfo:?];
        goto LABEL_436;
      }

      v52 = 0;
      v14 = 0;
      v13 = v465;
      goto LABEL_438;
    }

    v458 = v21;
  }

  else
  {
    v458 = 0;
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"predictionTuple"];
  null = [MEMORY[0x1E695DFB0] null];
  v24 = [v22 isEqual:null];

  selfCopy5 = self;
  v455 = v8;
  v454 = v21;
  if (v24)
  {
    v436 = v20;
    v25 = dictionaryCopy;

    v22 = 0;
  }

  else
  {
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        obj = v22;
        if (errorCopy)
        {
          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v580 = *MEMORY[0x1E696A578];
          v496 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"predictionTuple"];
          v581 = v496;
          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v581 forKeys:&v580 count:1];
          v73 = v71;
          v74 = v72;
          v14 = 0;
          *errorCopy = [v70 initWithDomain:v73 code:2 userInfo:v72];
          v52 = v458;
          v13 = v465;
          goto LABEL_435;
        }

        v14 = 0;
        v16 = v460;
        v52 = v458;
        v13 = v465;
        goto LABEL_437;
      }
    }

    v436 = v20;
    v25 = dictionaryCopy;
  }

  v496 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
  v499 = 0u;
  v500 = 0u;
  v501 = 0u;
  v502 = 0u;
  v26 = v22;
  v27 = [v26 countByEnumeratingWithState:&v499 objects:v579 count:16];
  obj = v26;
  if (!v27)
  {
    goto LABEL_42;
  }

  v28 = v27;
  v29 = *v500;
  while (2)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v500 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v499 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = errorCopy;
        if (errorCopy)
        {
          v63 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E698F240];
          v577 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"predictionTuple"];
          v578 = v32;
          v65 = MEMORY[0x1E695DF20];
          v66 = &v578;
          v67 = &v577;
LABEL_59:
          v68 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:1];
          v14 = 0;
          *v62 = [v63 initWithDomain:v64 code:2 userInfo:v68];
LABEL_63:
          v435 = obj;
          self = selfCopy5;
          v13 = v465;
          v8 = v455;
          v20 = v436;
          v21 = v454;
          goto LABEL_433;
        }

LABEL_68:
        v14 = 0;
        v74 = obj;
        self = selfCopy5;
        v13 = v465;
        v8 = v455;
        v20 = v436;
        v21 = v454;
        v52 = v458;
        goto LABEL_435;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v62 = errorCopy;
        if (errorCopy)
        {
          v63 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E698F240];
          v575 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"predictionTuple"];
          v576 = v32;
          v65 = MEMORY[0x1E695DF20];
          v66 = &v576;
          v67 = &v575;
          goto LABEL_59;
        }

        goto LABEL_68;
      }

      v32 = v31;
      v33 = [BMMomentsNotificationsPrediction alloc];
      v498 = 0;
      v34 = [(BMMomentsNotificationsPrediction *)v33 initWithJSONDictionary:v32 error:&v498];
      v35 = v498;
      if (v35)
      {
        v68 = v35;
        if (errorCopy)
        {
          v69 = v35;
          *errorCopy = v68;
        }

        v14 = 0;
        goto LABEL_63;
      }

      [v496 addObject:v34];
    }

    v26 = obj;
    v28 = [obj countByEnumeratingWithState:&v499 objects:v579 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v32 = [v25 objectForKeyedSubscript:@"maxAvailabilityProbability"];
  if (!v32)
  {
    v435 = 0;
    self = selfCopy5;
    v13 = v465;
    v20 = v436;
LABEL_70:
    v21 = v454;
LABEL_71:
    v75 = [dictionaryCopy objectForKeyedSubscript:@"maxAvailabilityProbabilityDate"];
    v433 = v75;
    if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v68 = 0;
      goto LABEL_92;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = v76;
      v78 = objc_alloc(MEMORY[0x1E695DF00]);
      [v77 doubleValue];
      v68 = [v78 initWithTimeIntervalSince1970:?];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v68 = 0;
            v14 = 0;
            v8 = v455;
            goto LABEL_432;
          }

          v473 = objc_alloc(MEMORY[0x1E696ABC0]);
          v444 = *MEMORY[0x1E698F240];
          v571 = *MEMORY[0x1E696A578];
          v190 = objc_alloc(MEMORY[0x1E696AEC0]);
          v359 = objc_opt_class();
          v191 = v190;
          v6 = v459;
          v431 = [v191 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v359, @"maxAvailabilityProbabilityDate"];
          v572 = v431;
          v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v572 forKeys:&v571 count:1];
          self = selfCopy5;
          v68 = 0;
          v14 = 0;
          *errorCopy = [v473 initWithDomain:v444 code:2 userInfo:v95];
          v8 = v455;
          goto LABEL_431;
        }

        v68 = v76;
LABEL_92:
        v94 = [dictionaryCopy objectForKeyedSubscript:@"proposedFireDate"];
        v430 = v94;
        if (!v94 || (v95 = v94, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v431 = 0;
          goto LABEL_100;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v96 = v95;
          v97 = objc_alloc(MEMORY[0x1E695DF00]);
          [v96 doubleValue];
          v431 = [v97 initWithTimeIntervalSince1970:?];
LABEL_99:

          goto LABEL_100;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v96 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v98 = v95;
          v431 = [v96 dateFromString:v98];

          goto LABEL_99;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v431 = v95;
LABEL_100:
          v99 = [dictionaryCopy objectForKeyedSubscript:@"proposedFireDateSource"];
          v432 = v99;
          if (!v99 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v427 = 0;
            goto LABEL_108;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v427 = v99;
LABEL_107:

LABEL_108:
            v104 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckHandlerRetryDate"];
            if (!v104 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v429 = 0;
              goto LABEL_117;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v105 = v104;
              v106 = objc_alloc(MEMORY[0x1E695DF00]);
              [v105 doubleValue];
              v429 = [v106 initWithTimeIntervalSince1970:?];
LABEL_115:

LABEL_116:
              v99 = v432;
LABEL_117:
              v108 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckHandlerFailure"];
              v425 = v104;
              v428 = v108;
              if (!v108 || (v109 = v108, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v426 = 0;
                goto LABEL_120;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v426 = v109;
LABEL_120:
                v110 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckHandlerErrorDescription"];
                v424 = v110;
                if (!v110 || (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v423 = 0;
                  goto LABEL_123;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v423 = v111;
LABEL_123:
                  v112 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckHandlerErrorCode"];
                  v422 = v112;
                  if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v421 = 0;
                    goto LABEL_126;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v421 = v113;
LABEL_126:
                    v114 = [dictionaryCopy objectForKeyedSubscript:@"realTimeAlarmErrorDomain"];
                    v420 = v114;
                    if (!v114 || (v115 = v114, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v419 = 0;
                      goto LABEL_129;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v419 = v115;
LABEL_129:
                      v116 = [dictionaryCopy objectForKeyedSubscript:@"fireAlarmDate"];
                      v418 = v116;
                      if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v417 = 0;
                        goto LABEL_164;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v118 = v117;
                        v119 = objc_alloc(MEMORY[0x1E695DF00]);
                        [v118 doubleValue];
                        v417 = [v119 initWithTimeIntervalSince1970:?];
LABEL_163:

                        v99 = v432;
                        goto LABEL_164;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v118 = objc_alloc_init(MEMORY[0x1E696AC80]);
                        v148 = v117;
                        v417 = [v118 dateFromString:v148];

                        goto LABEL_163;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v417 = v117;
LABEL_164:
                        v149 = [dictionaryCopy objectForKeyedSubscript:@"fireTimerAlarmErrorDescription"];
                        v416 = v149;
                        if (!v149 || (v150 = v149, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v415 = 0;
                          goto LABEL_167;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v415 = v150;
LABEL_167:
                          v151 = [dictionaryCopy objectForKeyedSubscript:@"fireTimerAlarmErrorCode"];
                          v414 = v151;
                          if (!v151 || (v152 = v151, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v413 = 0;
                            goto LABEL_170;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v413 = v152;
LABEL_170:
                            v153 = [dictionaryCopy objectForKeyedSubscript:@"fireTimerAlarmErrorDomain"];
                            v412 = v153;
                            if (!v153 || (v154 = v153, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v409 = 0;
                              goto LABEL_173;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v409 = v154;
LABEL_173:
                              v155 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckRejected"];
                              v410 = v155;
                              if (!v155 || (v156 = v155, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v411 = 0;
LABEL_176:
                                v157 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckIsTraveling"];
                                v408 = v157;
                                if (v157 && (v158 = v157, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                {
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    if (!errorCopy)
                                    {
                                      v407 = 0;
                                      v14 = 0;
                                      v141 = v427;
                                      v104 = v425;
                                      v183 = v409;
LABEL_418:
                                      v187 = v411;
                                      goto LABEL_419;
                                    }

                                    v199 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v476 = v13;
                                    v200 = *MEMORY[0x1E698F240];
                                    v545 = *MEMORY[0x1E696A578];
                                    v183 = v409;
                                    v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsTraveling"];
                                    v546 = v201;
                                    v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v546 forKeys:&v545 count:1];
                                    v203 = v200;
                                    v13 = v476;
                                    v405 = v202;
                                    v204 = [v199 initWithDomain:v203 code:2 userInfo:?];
                                    v407 = 0;
                                    v14 = 0;
                                    *errorCopy = v204;
                                    v141 = v427;
                                    v104 = v425;
                                    goto LABEL_417;
                                  }

                                  v407 = v158;
                                }

                                else
                                {
                                  v407 = 0;
                                }

                                v159 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckIsPlaceEligible"];
                                v405 = v159;
                                if (!v159 || (v160 = v159, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v403 = 0;
                                  goto LABEL_182;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v403 = v160;
LABEL_182:
                                  v161 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckIsInVisit"];
                                  v404 = v161;
                                  if (!v161 || (v162 = v161, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v406 = 0;
                                    goto LABEL_185;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v406 = v162;
LABEL_185:
                                    v163 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckIsInWorkoutHealthKit"];
                                    v402 = v163;
                                    if (!v163 || (v164 = v163, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v401 = 0;
LABEL_188:
                                      v165 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckIsInWorkoutMotion"];
                                      v399 = v165;
                                      if (v165 && (v166 = v165, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          if (!errorCopy)
                                          {
                                            v400 = 0;
                                            v14 = 0;
                                            v21 = v454;
                                            v141 = v427;
                                            v104 = v425;
                                            v217 = v399;
LABEL_413:
                                            v201 = v403;
                                            goto LABEL_414;
                                          }

                                          v225 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v481 = v13;
                                          v226 = *MEMORY[0x1E698F240];
                                          v537 = *MEMORY[0x1E696A578];
                                          v217 = v399;
                                          v398 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsInWorkoutMotion"];
                                          v538 = v398;
                                          v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v538 forKeys:&v537 count:1];
                                          v228 = v226;
                                          v13 = v481;
                                          v397 = v227;
                                          v400 = 0;
                                          v14 = 0;
                                          *errorCopy = [v225 initWithDomain:v228 code:2 userInfo:?];
                                          v21 = v454;
                                          v141 = v427;
                                          v104 = v425;
                                          goto LABEL_412;
                                        }

                                        v167 = v166;
                                      }

                                      else
                                      {
                                        v167 = 0;
                                      }

                                      v168 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckIsJournaling"];
                                      v400 = v167;
                                      v397 = v168;
                                      if (!v168 || (v169 = v168, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v398 = 0;
LABEL_194:
                                        v170 = [dictionaryCopy objectForKeyedSubscript:@"realTimeCheckIsAtHome"];
                                        v395 = v170;
                                        if (v170 && (v171 = v170, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                        {
                                          objc_opt_class();
                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                          {
                                            if (!errorCopy)
                                            {
                                              v396 = 0;
                                              v14 = 0;
                                              v21 = v454;
                                              v141 = v427;
                                              v104 = v425;
                                              v217 = v399;
LABEL_410:
                                              v234 = v411;
                                              goto LABEL_411;
                                            }

                                            v235 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v483 = v13;
                                            v236 = *MEMORY[0x1E698F240];
                                            v533 = *MEMORY[0x1E696A578];
                                            v394 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsAtHome"];
                                            v534 = v394;
                                            v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v534 forKeys:&v533 count:1];
                                            v238 = v236;
                                            v13 = v483;
                                            v393 = v237;
                                            v239 = [v235 initWithDomain:v238 code:2 userInfo:?];
                                            v396 = 0;
                                            v14 = 0;
                                            *errorCopy = v239;
                                            v21 = v454;
                                            goto LABEL_457;
                                          }

                                          v172 = v171;
                                        }

                                        else
                                        {
                                          v172 = 0;
                                        }

                                        v173 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
                                        v396 = v172;
                                        v393 = v173;
                                        if (!v173 || (v174 = v173, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v394 = 0;
                                          goto LABEL_279;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v394 = v174;
LABEL_278:

LABEL_279:
                                          v241 = [dictionaryCopy objectForKeyedSubscript:@"eventTime"];
                                          v390 = v241;
                                          if (!v241 || (v242 = v241, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v392 = 0;
                                            goto LABEL_287;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v243 = v242;
                                            v244 = objc_alloc(MEMORY[0x1E695DF00]);
                                            [v243 doubleValue];
                                            v392 = [v244 initWithTimeIntervalSince1970:?];
LABEL_286:

                                            goto LABEL_287;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v245 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                            v246 = v242;
                                            v243 = v245;
                                            v247 = v246;
                                            v392 = [v243 dateFromString:v247];

                                            goto LABEL_286;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v392 = v242;
LABEL_287:
                                            v248 = [dictionaryCopy objectForKeyedSubscript:@"AttemptSuccessful"];
                                            v389 = v248;
                                            if (!v248 || (v249 = v248, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v391 = 0;
                                              goto LABEL_290;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v391 = v249;
LABEL_290:
                                              v250 = [dictionaryCopy objectForKeyedSubscript:@"contentType"];
                                              v387 = v250;
                                              if (!v250 || (v251 = v250, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v388 = 0;
                                                goto LABEL_303;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v388 = v251;
LABEL_302:

LABEL_303:
                                                v258 = [dictionaryCopy objectForKeyedSubscript:@"suggestionIdentifier"];
                                                v385 = v258;
                                                if (!v258 || (v259 = v258, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v386 = 0;
                                                  goto LABEL_306;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v386 = v259;
LABEL_306:
                                                  v260 = [dictionaryCopy objectForKeyedSubscript:@"bundleInterfaceType"];
                                                  v383 = v260;
                                                  if (!v260 || (v261 = v260, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v384 = 0;
                                                    goto LABEL_321;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v384 = v261;
LABEL_320:

LABEL_321:
                                                    v267 = [dictionaryCopy objectForKeyedSubscript:@"bundleGoodnessScore"];
                                                    v381 = v267;
                                                    if (!v267 || (v268 = v267, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v382 = 0;
                                                      goto LABEL_324;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v382 = v268;
LABEL_324:
                                                      v269 = [dictionaryCopy objectForKeyedSubscript:@"deviceId"];
                                                      v379 = v269;
                                                      if (!v269 || (v270 = v269, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v380 = 0;
                                                        goto LABEL_327;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v380 = v270;
LABEL_327:
                                                        v271 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
                                                        v376 = v271;
                                                        if (!v271 || (v272 = v271, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v378 = 0;
LABEL_349:
                                                          v288 = [dictionaryCopy objectForKeyedSubscript:@"isDevicePrimary"];
                                                          v374 = v288;
                                                          if (v288 && (v289 = v288, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                          {
                                                            objc_opt_class();
                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                            {
                                                              if (!errorCopy)
                                                              {
                                                                v377 = 0;
                                                                v14 = 0;
                                                                v21 = v454;
                                                                v141 = v427;
                                                                v104 = v425;
                                                                v217 = v399;
                                                                goto LABEL_399;
                                                              }

                                                              v299 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v490 = v13;
                                                              v300 = *MEMORY[0x1E698F240];
                                                              v513 = *MEMORY[0x1E696A578];
                                                              v375 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDevicePrimary"];
                                                              v514 = v375;
                                                              v301 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v514 forKeys:&v513 count:1];
                                                              v302 = v300;
                                                              v13 = v490;
                                                              v303 = [v299 initWithDomain:v302 code:2 userInfo:v301];
                                                              v377 = 0;
                                                              v14 = 0;
                                                              *errorCopy = v303;
                                                              v304 = v301;
                                                              v21 = v454;
                                                              v141 = v427;
                                                              v104 = v425;
                                                              v217 = v399;
LABEL_398:

LABEL_399:
                                                              v325 = v374;
LABEL_400:

LABEL_401:
LABEL_402:

LABEL_403:
LABEL_404:

                                                              goto LABEL_405;
                                                            }

                                                            v377 = v289;
                                                          }

                                                          else
                                                          {
                                                            v377 = 0;
                                                          }

                                                          v290 = [dictionaryCopy objectForKeyedSubscript:@"journalingAppFirstParty"];
                                                          v372 = v290;
                                                          if (v290 && (v291 = v290, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                          {
                                                            objc_opt_class();
                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                            {
                                                              if (!errorCopy)
                                                              {
                                                                v375 = 0;
                                                                v14 = 0;
                                                                v21 = v454;
                                                                v141 = v427;
                                                                v104 = v425;
                                                                v217 = v399;
                                                                goto LABEL_397;
                                                              }

                                                              v305 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v491 = v13;
                                                              v306 = *MEMORY[0x1E698F240];
                                                              v511 = *MEMORY[0x1E696A578];
                                                              v373 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"journalingAppFirstParty"];
                                                              v512 = v373;
                                                              v307 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v512 forKeys:&v511 count:1];
                                                              v308 = v306;
                                                              v13 = v491;
                                                              v370 = v307;
                                                              v309 = [v305 initWithDomain:v308 code:2 userInfo:?];
                                                              v375 = 0;
                                                              v14 = 0;
                                                              *errorCopy = v309;
                                                              goto LABEL_480;
                                                            }

                                                            v375 = v291;
                                                          }

                                                          else
                                                          {
                                                            v375 = 0;
                                                          }

                                                          v292 = [dictionaryCopy objectForKeyedSubscript:@"schedulingState"];
                                                          v370 = v292;
                                                          if (!v292 || (v293 = v292, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v373 = 0;
                                                            goto LABEL_378;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v373 = v293;
LABEL_377:

LABEL_378:
                                                            v314 = [dictionaryCopy objectForKeyedSubscript:@"scheduleDeliverySetting"];
                                                            v369 = v314;
                                                            if (!v314 || (v315 = v314, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v492 = 0;
                                                              goto LABEL_386;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v492 = v315;
LABEL_385:

LABEL_386:
                                                              v317 = [dictionaryCopy objectForKeyedSubscript:@"isOnDefaultSchedule"];
                                                              v368 = v317;
                                                              if (!v317 || (v318 = v317, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v371 = 0;
                                                                goto LABEL_389;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v371 = v318;
LABEL_389:
                                                                v319 = [dictionaryCopy objectForKeyedSubscript:@"isDNUGated"];
                                                                if (v319 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                {
                                                                  objc_opt_class();
                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                  {
                                                                    v14 = errorCopy;
                                                                    if (errorCopy)
                                                                    {
                                                                      v338 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v452 = *MEMORY[0x1E698F240];
                                                                      v503 = *MEMORY[0x1E696A578];
                                                                      v339 = v319;
                                                                      v340 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDNUGated"];
                                                                      v504 = v340;
                                                                      v341 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v504 forKeys:&v503 count:1];
                                                                      *errorCopy = [v338 initWithDomain:v452 code:2 userInfo:v341];

                                                                      v319 = v339;
                                                                      v324 = 0;
                                                                      v14 = 0;
                                                                    }

                                                                    else
                                                                    {
                                                                      v324 = 0;
                                                                    }

                                                                    goto LABEL_393;
                                                                  }

                                                                  v462 = v319;
                                                                  v320 = v319;
                                                                }

                                                                else
                                                                {
                                                                  v462 = v319;
                                                                  v320 = 0;
                                                                }

                                                                intValue = [v427 intValue];
                                                                intValue2 = [v394 intValue];
                                                                intValue3 = [v388 intValue];
                                                                intValue4 = [v384 intValue];
                                                                intValue5 = [v378 intValue];
                                                                intValue6 = [v373 intValue];
                                                                v324 = v320;
                                                                LODWORD(v365) = intValue5;
                                                                LODWORD(v364) = intValue4;
                                                                LODWORD(v363) = intValue3;
                                                                LODWORD(v362) = intValue2;
                                                                LODWORD(v361) = intValue;
                                                                v14 = -[BMMomentsNotifications initWithReporterIdentification:reporterWritingDate:isSignificantLocationEnabled:isSystemNotificationsEnabled:isAppNotificationsEnabled:predictionTuple:maxAvailabilityProbability:maxAvailabilityProbabilityDate:proposedFireDate:proposedFireDateSource:realTimeCheckHandlerRetryDate:realTimeCheckHandlerFailure:realTimeCheckHandlerErrorDescription:realTimeCheckHandlerErrorCode:realTimeAlarmErrorDomain:fireAlarmDate:fireTimerAlarmErrorDescription:fireTimerAlarmErrorCode:fireTimerAlarmErrorDomain:realTimeCheckRejected:realTimeCheckIsTraveling:realTimeCheckIsPlaceEligible:realTimeCheckIsInVisit:realTimeCheckIsInWorkoutHealthKit:realTimeCheckIsInWorkoutMotion:realTimeCheckIsJournaling:realTimeCheckIsAtHome:eventType:eventTime:AttemptSuccessful:contentType:suggestionIdentifier:bundleInterfaceType:bundleGoodnessScore:deviceId:deviceType:isDevicePrimary:journalingAppFirstParty:schedulingState:scheduleDeliverySetting:isOnDefaultSchedule:isDNUGated:](selfCopy5, "initWithReporterIdentification:reporterWritingDate:isSignificantLocationEnabled:isSystemNotificationsEnabled:isAppNotificationsEnabled:predictionTuple:maxAvailabilityProbability:maxAvailabilityProbabilityDate:proposedFireDate:proposedFireDateSource:realTimeCheckHandlerRetryDate:realTimeCheckHandlerFailure:realTimeCheckHandlerErrorDescription:realTimeCheckHandlerErrorCode:realTimeAlarmErrorDomain:fireAlarmDate:fireTimerAlarmErrorDescription:fireTimerAlarmErrorCode:fireTimerAlarmErrorDomain:realTimeCheckRejected:realTimeCheckIsTraveling:realTimeCheckIsPlaceEligible:realTimeCheckIsInVisit:realTimeCheckIsInWorkoutHealthKit:realTimeCheckIsInWorkoutMotion:realTimeCheckIsJournaling:realTimeCheckIsAtHome:eventType:eventTime:AttemptSuccessful:contentType:suggestionIdentifier:bundleInterfaceType:bundleGoodnessScore:deviceId:deviceType:isDevicePrimary:journalingAppFirstParty:schedulingState:scheduleDeliverySetting:isOnDefaultSchedule:isDNUGated:", v13, v455, v457, v20, v458, v496, v435, v68, v431, v361, v429, v426, v423, v421, v419, v417, v415, v413, v409, v411, v407, v403, v406, v401, v400, v398, v396, v362, v392, v391, v363, v386, v364, v382, v380, v365, v377, v375, __PAIR64__([v492 intValue], intValue6), v371, v320);
                                                                selfCopy5 = v14;
                                                                v319 = v462;
LABEL_393:

LABEL_394:
                                                                v104 = v425;
                                                                v217 = v399;

                                                                v141 = v427;
LABEL_395:

LABEL_396:
LABEL_397:
                                                                v304 = v372;
                                                                goto LABEL_398;
                                                              }

                                                              if (errorCopy)
                                                              {
                                                                v331 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v451 = *MEMORY[0x1E698F240];
                                                                v505 = *MEMORY[0x1E696A578];
                                                                v324 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isOnDefaultSchedule"];
                                                                v506 = v324;
                                                                v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v506 forKeys:&v505 count:1];
                                                                v332 = [v331 initWithDomain:v451 code:2 userInfo:v319];
                                                                v371 = 0;
                                                                v14 = 0;
                                                                *errorCopy = v332;
                                                                v21 = v454;
                                                                goto LABEL_393;
                                                              }

                                                              v371 = 0;
                                                              v14 = 0;
LABEL_475:
                                                              v21 = v454;
                                                              goto LABEL_394;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v316 = v315;
                                                              v492 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsScheduledDeliverySettingFromString(v316)];

                                                              goto LABEL_385;
                                                            }

                                                            v453 = v20;
                                                            if (errorCopy)
                                                            {
                                                              v345 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v346 = *MEMORY[0x1E698F240];
                                                              v507 = *MEMORY[0x1E696A578];
                                                              v371 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"scheduleDeliverySetting"];
                                                              v508 = v371;
                                                              v368 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v508 forKeys:&v507 count:1];
                                                              v347 = [v345 initWithDomain:v346 code:2 userInfo:?];
                                                              v492 = 0;
                                                              v14 = 0;
                                                              *errorCopy = v347;
                                                              goto LABEL_475;
                                                            }

                                                            v492 = 0;
                                                            v14 = 0;
LABEL_482:
                                                            v20 = v453;
                                                            v21 = v454;
                                                            v141 = v427;
                                                            v104 = v425;
                                                            v217 = v399;
                                                            goto LABEL_395;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v313 = v293;
                                                            v373 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsSchedulingStateFromString(v313)];

                                                            goto LABEL_377;
                                                          }

                                                          v453 = v20;
                                                          if (errorCopy)
                                                          {
                                                            v342 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v343 = *MEMORY[0x1E698F240];
                                                            v509 = *MEMORY[0x1E696A578];
                                                            v492 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"schedulingState"];
                                                            v510 = v492;
                                                            v369 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v510 forKeys:&v509 count:1];
                                                            v344 = [v342 initWithDomain:v343 code:2 userInfo:?];
                                                            v373 = 0;
                                                            v14 = 0;
                                                            *errorCopy = v344;
                                                            goto LABEL_482;
                                                          }

                                                          v373 = 0;
                                                          v14 = 0;
LABEL_480:
                                                          v21 = v454;
                                                          v141 = v427;
                                                          v104 = v425;
                                                          v217 = v399;
                                                          goto LABEL_396;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v378 = v272;
LABEL_348:

                                                          goto LABEL_349;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v287 = v272;
                                                          v378 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsDeviceTypeFromString(v287)];

                                                          goto LABEL_348;
                                                        }

                                                        if (errorCopy)
                                                        {
                                                          v333 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v494 = v13;
                                                          v334 = *MEMORY[0x1E698F240];
                                                          v515 = *MEMORY[0x1E696A578];
                                                          v377 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
                                                          v516 = v377;
                                                          v335 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v516 forKeys:&v515 count:1];
                                                          v336 = v334;
                                                          v13 = v494;
                                                          v337 = [v333 initWithDomain:v336 code:2 userInfo:v335];
                                                          v378 = 0;
                                                          v14 = 0;
                                                          *errorCopy = v337;
                                                          v325 = v335;
                                                          v21 = v454;
                                                          v141 = v427;
                                                          v104 = v425;
                                                          v217 = v399;
                                                          goto LABEL_400;
                                                        }

                                                        v378 = 0;
                                                        v14 = 0;
LABEL_477:
                                                        v21 = v454;
                                                        v141 = v427;
                                                        v104 = v425;
                                                        v217 = v399;
                                                        goto LABEL_401;
                                                      }

                                                      if (errorCopy)
                                                      {
                                                        v283 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v488 = v13;
                                                        v284 = *MEMORY[0x1E698F240];
                                                        v517 = *MEMORY[0x1E696A578];
                                                        v378 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceId"];
                                                        v518 = v378;
                                                        v285 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v518 forKeys:&v517 count:1];
                                                        v286 = v284;
                                                        v13 = v488;
                                                        v376 = v285;
                                                        v380 = 0;
                                                        v14 = 0;
                                                        *errorCopy = [v283 initWithDomain:v286 code:2 userInfo:?];
                                                        goto LABEL_477;
                                                      }

                                                      v380 = 0;
                                                      v14 = 0;
LABEL_461:
                                                      v21 = v454;
                                                      v141 = v427;
                                                      v104 = v425;
                                                      v217 = v399;
                                                      goto LABEL_402;
                                                    }

                                                    if (errorCopy)
                                                    {
                                                      v273 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v486 = v13;
                                                      v274 = *MEMORY[0x1E698F240];
                                                      v519 = *MEMORY[0x1E696A578];
                                                      v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleGoodnessScore"];
                                                      v520 = v380;
                                                      v275 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v520 forKeys:&v519 count:1];
                                                      v276 = v274;
                                                      v13 = v486;
                                                      v379 = v275;
                                                      v277 = [v273 initWithDomain:v276 code:2 userInfo:?];
                                                      v382 = 0;
                                                      v14 = 0;
                                                      *errorCopy = v277;
                                                      goto LABEL_461;
                                                    }

                                                    v382 = 0;
                                                    v14 = 0;
LABEL_453:
                                                    v21 = v454;
                                                    v141 = v427;
                                                    v104 = v425;
                                                    v217 = v399;
                                                    goto LABEL_403;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v266 = v261;
                                                    v384 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataBundleInterfaceTypeFromString(v266)];

                                                    goto LABEL_320;
                                                  }

                                                  if (errorCopy)
                                                  {
                                                    v310 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v311 = *MEMORY[0x1E698F240];
                                                    v521 = *MEMORY[0x1E696A578];
                                                    v382 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleInterfaceType"];
                                                    v522 = v382;
                                                    v381 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v522 forKeys:&v521 count:1];
                                                    v312 = [v310 initWithDomain:v311 code:2 userInfo:?];
                                                    v384 = 0;
                                                    v14 = 0;
                                                    *errorCopy = v312;
                                                    goto LABEL_453;
                                                  }

                                                  v384 = 0;
                                                  v14 = 0;
LABEL_471:
                                                  v21 = v454;
                                                  v141 = v427;
                                                  v104 = v425;
                                                  v217 = v399;
                                                  goto LABEL_404;
                                                }

                                                if (errorCopy)
                                                {
                                                  v262 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v485 = v13;
                                                  v263 = *MEMORY[0x1E698F240];
                                                  v523 = *MEMORY[0x1E696A578];
                                                  v384 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionIdentifier"];
                                                  v524 = v384;
                                                  v264 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v524 forKeys:&v523 count:1];
                                                  v265 = v263;
                                                  v13 = v485;
                                                  v383 = v264;
                                                  v386 = 0;
                                                  v14 = 0;
                                                  *errorCopy = [v262 initWithDomain:v265 code:2 userInfo:?];
                                                  goto LABEL_471;
                                                }

                                                v386 = 0;
                                                v14 = 0;
LABEL_374:
                                                v21 = v454;
                                                v141 = v427;
                                                v104 = v425;
                                                v217 = v399;
LABEL_405:

LABEL_406:
LABEL_407:

                                                v326 = v406;
LABEL_408:
                                                v406 = v326;

LABEL_409:
                                                goto LABEL_410;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v257 = v251;
                                                v388 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsContentTypeFromString(v257)];

                                                goto LABEL_302;
                                              }

                                              if (errorCopy)
                                              {
                                                v294 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v489 = v13;
                                                v295 = *MEMORY[0x1E698F240];
                                                v525 = *MEMORY[0x1E696A578];
                                                v386 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"contentType"];
                                                v526 = v386;
                                                v296 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v526 forKeys:&v525 count:1];
                                                v297 = v295;
                                                v13 = v489;
                                                v385 = v296;
                                                v298 = [v294 initWithDomain:v297 code:2 userInfo:?];
                                                v388 = 0;
                                                v14 = 0;
                                                *errorCopy = v298;
                                                goto LABEL_374;
                                              }

                                              v388 = 0;
                                              v14 = 0;
LABEL_463:
                                              v21 = v454;
                                              v141 = v427;
                                              v104 = v425;
                                              v217 = v399;
                                              goto LABEL_406;
                                            }

                                            if (errorCopy)
                                            {
                                              v252 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v484 = v13;
                                              v253 = *MEMORY[0x1E698F240];
                                              v527 = *MEMORY[0x1E696A578];
                                              v388 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"AttemptSuccessful"];
                                              v528 = v388;
                                              v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v528 forKeys:&v527 count:1];
                                              v255 = v253;
                                              v13 = v484;
                                              v387 = v254;
                                              v256 = [v252 initWithDomain:v255 code:2 userInfo:?];
                                              v391 = 0;
                                              v14 = 0;
                                              *errorCopy = v256;
                                              goto LABEL_463;
                                            }

                                            v391 = 0;
                                            v14 = 0;
                                            v21 = v454;
                                            v141 = v427;
LABEL_449:
                                            v104 = v425;
                                            v217 = v399;
                                            goto LABEL_407;
                                          }

                                          if (errorCopy)
                                          {
                                            v450 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v493 = v13;
                                            v328 = *MEMORY[0x1E698F240];
                                            v529 = *MEMORY[0x1E696A578];
                                            v391 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"eventTime"];
                                            v530 = v391;
                                            v329 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v530 forKeys:&v529 count:1];
                                            v330 = v328;
                                            v13 = v493;
                                            v389 = v329;
                                            v392 = 0;
                                            v14 = 0;
                                            *errorCopy = [v450 initWithDomain:v330 code:2 userInfo:?];
                                            v141 = v427;
                                            goto LABEL_449;
                                          }

                                          v392 = 0;
                                          v14 = 0;
                                          v141 = v427;
LABEL_473:
                                          v104 = v425;
                                          v326 = v406;
                                          v217 = v399;
                                          goto LABEL_408;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v240 = v174;
                                          v394 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsEventTypeFromString(v240)];

                                          goto LABEL_278;
                                        }

                                        if (errorCopy)
                                        {
                                          v278 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v487 = v13;
                                          v279 = *MEMORY[0x1E698F240];
                                          v531 = *MEMORY[0x1E696A578];
                                          v392 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eventType"];
                                          v532 = v392;
                                          v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v532 forKeys:&v531 count:1];
                                          v281 = v279;
                                          v13 = v487;
                                          v390 = v280;
                                          v282 = [v278 initWithDomain:v281 code:2 userInfo:?];
                                          v394 = 0;
                                          v14 = 0;
                                          *errorCopy = v282;
                                          v141 = v427;
                                          goto LABEL_473;
                                        }

                                        v394 = 0;
                                        v14 = 0;
LABEL_457:
                                        v141 = v427;
                                        v104 = v425;
                                        v217 = v399;
                                        goto LABEL_409;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v398 = v169;
                                        goto LABEL_194;
                                      }

                                      if (errorCopy)
                                      {
                                        v229 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v482 = v13;
                                        v230 = *MEMORY[0x1E698F240];
                                        v535 = *MEMORY[0x1E696A578];
                                        v396 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsJournaling"];
                                        v536 = v396;
                                        v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v536 forKeys:&v535 count:1];
                                        v232 = v230;
                                        v13 = v482;
                                        v395 = v231;
                                        v233 = [v229 initWithDomain:v232 code:2 userInfo:?];
                                        v234 = v411;
                                        v398 = 0;
                                        v14 = 0;
                                        *errorCopy = v233;
                                        v21 = v454;
                                        v141 = v427;
                                        v104 = v425;
                                        v217 = v399;
LABEL_411:
                                        v411 = v234;

                                        goto LABEL_412;
                                      }

                                      v398 = 0;
                                      v14 = 0;
                                      v21 = v454;
                                      v141 = v427;
                                      v104 = v425;
                                      v217 = v399;
LABEL_412:

                                      goto LABEL_413;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v401 = v164;
                                      goto LABEL_188;
                                    }

                                    if (errorCopy)
                                    {
                                      v215 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v479 = v13;
                                      v216 = *MEMORY[0x1E698F240];
                                      v539 = *MEMORY[0x1E696A578];
                                      v201 = v403;
                                      v400 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsInWorkoutHealthKit"];
                                      v540 = v400;
                                      v217 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v540 forKeys:&v539 count:1];
                                      v218 = v216;
                                      v13 = v479;
                                      v219 = [v215 initWithDomain:v218 code:2 userInfo:v217];
                                      v401 = 0;
                                      v14 = 0;
                                      *errorCopy = v219;
                                      v21 = v454;
                                      v141 = v427;
                                      v104 = v425;
LABEL_414:

                                      v183 = v409;
                                      goto LABEL_415;
                                    }

                                    v401 = 0;
                                    v14 = 0;
                                    v21 = v454;
                                    v141 = v427;
                                    v104 = v425;
                                    v183 = v409;
                                    v201 = v403;
LABEL_415:

                                    goto LABEL_416;
                                  }

                                  if (errorCopy)
                                  {
                                    v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v478 = v13;
                                    v211 = *MEMORY[0x1E698F240];
                                    v541 = *MEMORY[0x1E696A578];
                                    v201 = v403;
                                    v183 = v409;
                                    v401 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsInVisit"];
                                    v542 = v401;
                                    v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v542 forKeys:&v541 count:1];
                                    v213 = v211;
                                    v13 = v478;
                                    v402 = v212;
                                    v214 = [v210 initWithDomain:v213 code:2 userInfo:?];
                                    v406 = 0;
                                    v14 = 0;
                                    *errorCopy = v214;
                                    v21 = v454;
                                    v141 = v427;
                                    v104 = v425;
                                    goto LABEL_415;
                                  }

                                  v406 = 0;
                                  v14 = 0;
                                  v21 = v454;
                                  v141 = v427;
                                  v104 = v425;
                                  v183 = v409;
                                  v201 = v403;
LABEL_416:

                                  goto LABEL_417;
                                }

                                if (errorCopy)
                                {
                                  v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v477 = v13;
                                  v206 = *MEMORY[0x1E698F240];
                                  v543 = *MEMORY[0x1E696A578];
                                  v183 = v409;
                                  v406 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsPlaceEligible"];
                                  v544 = v406;
                                  v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v544 forKeys:&v543 count:1];
                                  v208 = v206;
                                  v13 = v477;
                                  v404 = v207;
                                  v209 = [v205 initWithDomain:v208 code:2 userInfo:?];
                                  v201 = 0;
                                  v14 = 0;
                                  *errorCopy = v209;
                                  v141 = v427;
                                  v104 = v425;
                                  goto LABEL_416;
                                }

                                v201 = 0;
                                v14 = 0;
                                v141 = v427;
                                v104 = v425;
                                v183 = v409;
LABEL_417:

                                goto LABEL_418;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v411 = v156;
                                goto LABEL_176;
                              }

                              if (errorCopy)
                              {
                                v446 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v194 = *MEMORY[0x1E698F240];
                                v547 = *MEMORY[0x1E696A578];
                                v183 = v409;
                                v407 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckRejected"];
                                v548 = v407;
                                v408 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v548 forKeys:&v547 count:1];
                                v195 = [v446 initWithDomain:v194 code:2 userInfo:?];
                                v187 = 0;
                                v14 = 0;
                                *errorCopy = v195;
                                v141 = v427;
                                v104 = v425;
LABEL_419:

                                goto LABEL_420;
                              }

                              v187 = 0;
                              v14 = 0;
                              v141 = v427;
                              v104 = v425;
                              v183 = v409;
LABEL_420:

                              v99 = v432;
                              goto LABEL_421;
                            }

                            v120 = v427;
                            v121 = v21;
                            if (errorCopy)
                            {
                              v443 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v472 = v13;
                              v186 = *MEMORY[0x1E698F240];
                              v549 = *MEMORY[0x1E696A578];
                              v187 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fireTimerAlarmErrorDomain"];
                              v550 = v187;
                              v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v550 forKeys:&v549 count:1];
                              v189 = v186;
                              v13 = v472;
                              v410 = v188;
                              v183 = 0;
                              v14 = 0;
                              *errorCopy = [v443 initWithDomain:v189 code:2 userInfo:?];
                              v141 = v427;
                              v104 = v425;
                              goto LABEL_420;
                            }

                            v183 = 0;
                            v14 = 0;
LABEL_260:
                            v21 = v121;
                            v141 = v120;
                            v104 = v425;
LABEL_421:

                            v8 = v455;
                            goto LABEL_422;
                          }

                          v120 = v427;
                          v121 = v21;
                          if (errorCopy)
                          {
                            v442 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v471 = v13;
                            v180 = *MEMORY[0x1E698F240];
                            v551 = *MEMORY[0x1E696A578];
                            v181 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v358 = objc_opt_class();
                            v182 = v181;
                            v99 = v432;
                            v183 = [v182 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v358, @"fireTimerAlarmErrorCode"];
                            v552 = v183;
                            v184 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v552 forKeys:&v551 count:1];
                            v185 = v180;
                            v13 = v471;
                            v412 = v184;
                            v413 = 0;
                            v14 = 0;
                            *errorCopy = [v442 initWithDomain:v185 code:2 userInfo:?];
                            goto LABEL_260;
                          }

                          v413 = 0;
                          v14 = 0;
LABEL_254:
                          v8 = v455;
                          v21 = v121;
                          v141 = v120;
                          v104 = v425;
LABEL_422:

                          goto LABEL_423;
                        }

                        v120 = v427;
                        v121 = v21;
                        if (errorCopy)
                        {
                          v441 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v470 = v13;
                          v175 = *MEMORY[0x1E698F240];
                          v553 = *MEMORY[0x1E696A578];
                          v176 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v357 = objc_opt_class();
                          v177 = v176;
                          v99 = v432;
                          v413 = [v177 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v357, @"fireTimerAlarmErrorDescription"];
                          v554 = v413;
                          v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v554 forKeys:&v553 count:1];
                          v179 = v175;
                          v13 = v470;
                          v414 = v178;
                          v415 = 0;
                          v14 = 0;
                          *errorCopy = [v441 initWithDomain:v179 code:2 userInfo:?];
                          goto LABEL_254;
                        }

                        v415 = 0;
                        v14 = 0;
LABEL_263:
                        v8 = v455;
                        v21 = v121;
                        v141 = v120;
                        v104 = v425;
LABEL_423:

                        goto LABEL_424;
                      }

                      v120 = v427;
                      v121 = v21;
                      if (errorCopy)
                      {
                        v448 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v480 = v13;
                        v220 = *MEMORY[0x1E698F240];
                        v555 = *MEMORY[0x1E696A578];
                        v221 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v360 = objc_opt_class();
                        v222 = v221;
                        v99 = v432;
                        v415 = [v222 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v360, @"fireAlarmDate"];
                        v556 = v415;
                        v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v556 forKeys:&v555 count:1];
                        v224 = v220;
                        v13 = v480;
                        v416 = v223;
                        v417 = 0;
                        v14 = 0;
                        *errorCopy = [v448 initWithDomain:v224 code:2 userInfo:?];
                        goto LABEL_263;
                      }

                      v417 = 0;
                      v14 = 0;
LABEL_153:
                      v8 = v455;
                      v21 = v121;
                      v141 = v120;
                      v104 = v425;
LABEL_424:

                      goto LABEL_425;
                    }

                    v120 = v427;
                    v121 = v21;
                    if (errorCopy)
                    {
                      v440 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v468 = v13;
                      v136 = *MEMORY[0x1E698F240];
                      v557 = *MEMORY[0x1E696A578];
                      v137 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v355 = objc_opt_class();
                      v138 = v137;
                      v99 = v432;
                      v417 = [v138 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v355, @"realTimeAlarmErrorDomain"];
                      v558 = v417;
                      v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v558 forKeys:&v557 count:1];
                      v140 = v136;
                      v13 = v468;
                      v418 = v139;
                      v419 = 0;
                      v14 = 0;
                      *errorCopy = [v440 initWithDomain:v140 code:2 userInfo:?];
                      goto LABEL_153;
                    }

                    v419 = 0;
                    v14 = 0;
LABEL_242:
                    v8 = v455;
                    v21 = v121;
                    v141 = v120;
                    v104 = v425;
LABEL_425:

                    goto LABEL_426;
                  }

                  v120 = v427;
                  v121 = v21;
                  if (errorCopy)
                  {
                    v439 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v467 = v13;
                    v131 = *MEMORY[0x1E698F240];
                    v559 = *MEMORY[0x1E696A578];
                    v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v354 = objc_opt_class();
                    v133 = v132;
                    v99 = v432;
                    v419 = [v133 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v354, @"realTimeCheckHandlerErrorCode"];
                    v560 = v419;
                    v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v560 forKeys:&v559 count:1];
                    v135 = v131;
                    v13 = v467;
                    v420 = v134;
                    v421 = 0;
                    v14 = 0;
                    *errorCopy = [v439 initWithDomain:v135 code:2 userInfo:?];
                    goto LABEL_242;
                  }

                  v421 = 0;
                  v14 = 0;
LABEL_232:
                  v8 = v455;
                  v21 = v121;
                  v141 = v120;
                  v104 = v425;
LABEL_426:

                  goto LABEL_427;
                }

                v120 = v427;
                v121 = v21;
                if (errorCopy)
                {
                  v438 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v466 = v13;
                  v126 = *MEMORY[0x1E698F240];
                  v561 = *MEMORY[0x1E696A578];
                  v127 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v353 = objc_opt_class();
                  v128 = v127;
                  v99 = v432;
                  v421 = [v128 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v353, @"realTimeCheckHandlerErrorDescription"];
                  v562 = v421;
                  v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v562 forKeys:&v561 count:1];
                  v130 = v126;
                  v13 = v466;
                  v422 = v129;
                  v423 = 0;
                  v14 = 0;
                  *errorCopy = [v438 initWithDomain:v130 code:2 userInfo:?];
                  goto LABEL_232;
                }

                v423 = 0;
                v14 = 0;
LABEL_222:
                v8 = v455;
                v21 = v121;
                v141 = v120;
                v104 = v425;
LABEL_427:

                goto LABEL_428;
              }

              v120 = v427;
              v121 = v21;
              if (errorCopy)
              {
                v437 = objc_alloc(MEMORY[0x1E696ABC0]);
                v122 = *MEMORY[0x1E698F240];
                v563 = *MEMORY[0x1E696A578];
                v123 = objc_alloc(MEMORY[0x1E696AEC0]);
                v352 = objc_opt_class();
                v124 = v123;
                v99 = v432;
                v423 = [v124 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v352, @"realTimeCheckHandlerFailure"];
                v564 = v423;
                v424 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v564 forKeys:&v563 count:1];
                v125 = [v437 initWithDomain:v122 code:2 userInfo:?];
                v426 = 0;
                v14 = 0;
                *errorCopy = v125;
                goto LABEL_222;
              }

              v426 = 0;
              v14 = 0;
              v8 = v455;
              v141 = v427;
              v104 = v425;
LABEL_428:

              goto LABEL_429;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v105 = objc_alloc_init(MEMORY[0x1E696AC80]);
              v107 = v104;
              v429 = [v105 dateFromString:v107];

              goto LABEL_115;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v429 = v104;
              goto LABEL_116;
            }

            if (errorCopy)
            {
              v447 = objc_alloc(MEMORY[0x1E696ABC0]);
              v475 = v13;
              v196 = *MEMORY[0x1E698F240];
              v565 = *MEMORY[0x1E696A578];
              v426 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"realTimeCheckHandlerRetryDate"];
              v566 = v426;
              v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v566 forKeys:&v565 count:1];
              v198 = v196;
              v13 = v475;
              v428 = v197;
              v429 = 0;
              v14 = 0;
              *errorCopy = [v447 initWithDomain:v198 code:2 userInfo:?];
              v8 = v455;
              v99 = v432;
              v141 = v427;
              goto LABEL_428;
            }

            v429 = 0;
            v14 = 0;
            v8 = v455;
            v99 = v432;
            v141 = v427;
LABEL_429:

            v6 = v459;
            goto LABEL_430;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v100 = v99;
            v101 = MEMORY[0x1E696AD98];
            v102 = BMMomentsNotificationsFireDateSourceFromString(v100);
            v103 = v101;
            v99 = v432;
            v427 = [v103 numberWithInt:v102];

            goto LABEL_107;
          }

          if (errorCopy)
          {
            v142 = objc_alloc(MEMORY[0x1E696ABC0]);
            v469 = v13;
            v143 = *MEMORY[0x1E698F240];
            v567 = *MEMORY[0x1E696A578];
            v144 = objc_alloc(MEMORY[0x1E696AEC0]);
            v356 = objc_opt_class();
            v145 = v144;
            v99 = v432;
            v429 = [v145 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v356, @"proposedFireDateSource"];
            v568 = v429;
            v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v568 forKeys:&v567 count:1];
            v146 = v143;
            v13 = v469;
            v147 = [v142 initWithDomain:v146 code:2 userInfo:v104];
            v141 = 0;
            v14 = 0;
            *errorCopy = v147;
            v8 = v455;
            v21 = v454;
            goto LABEL_429;
          }

          v141 = 0;
          v14 = 0;
          v8 = v455;
          v21 = v454;
LABEL_430:

          self = selfCopy5;
          v95 = v430;
          goto LABEL_431;
        }

        if (errorCopy)
        {
          v445 = objc_alloc(MEMORY[0x1E696ABC0]);
          v474 = v13;
          v192 = *MEMORY[0x1E698F240];
          v569 = *MEMORY[0x1E696A578];
          v141 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"proposedFireDate"];
          v570 = v141;
          v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v570 forKeys:&v569 count:1];
          v193 = v192;
          v13 = v474;
          v431 = 0;
          v14 = 0;
          *errorCopy = [v445 initWithDomain:v193 code:2 userInfo:v99];
          v8 = v455;
          v21 = v454;
          goto LABEL_430;
        }

        v431 = 0;
        v14 = 0;
        v8 = v455;
        v21 = v454;
LABEL_431:

LABEL_432:
LABEL_433:
        v52 = v458;

        v74 = v435;
        goto LABEL_434;
      }

      v77 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v93 = v76;
      v68 = [v77 dateFromString:v93];
    }

    self = selfCopy5;
    goto LABEL_92;
  }

  objc_opt_class();
  v13 = v465;
  v8 = v455;
  v20 = v436;
  if (objc_opt_isKindOfClass())
  {
    v435 = 0;
    self = selfCopy5;
    goto LABEL_70;
  }

  objc_opt_class();
  v21 = v454;
  if (objc_opt_isKindOfClass())
  {
    v435 = v32;
    self = selfCopy5;
    goto LABEL_71;
  }

  if (errorCopy)
  {
    v88 = objc_alloc(MEMORY[0x1E696ABC0]);
    v89 = *MEMORY[0x1E698F240];
    v573 = *MEMORY[0x1E696A578];
    v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxAvailabilityProbability"];
    v574 = v68;
    v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v574 forKeys:&v573 count:1];
    v91 = v89;
    v8 = v455;
    v434 = v90;
    v92 = [v88 initWithDomain:v91 code:2 userInfo:?];
    v435 = 0;
    v14 = 0;
    *errorCopy = v92;
    self = selfCopy5;

    goto LABEL_433;
  }

  v74 = 0;
  v14 = 0;
  self = selfCopy5;
  v52 = v458;
LABEL_434:

LABEL_435:
  v16 = v460;
LABEL_436:

  v17 = v457;
LABEL_437:

LABEL_438:
LABEL_439:

  v7 = v463;
LABEL_440:

LABEL_441:
LABEL_442:

  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsNotifications *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_reporterIdentification)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_reporterWritingDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsSignificantLocationEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSystemNotificationsEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsAppNotificationsEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_predictionTuple;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_hasMaxAvailabilityProbability)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_maxAvailabilityProbabilityDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_proposedFireDate)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_realTimeCheckHandlerRetryDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRealTimeCheckHandlerFailure)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_realTimeCheckHandlerErrorDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_realTimeCheckHandlerErrorCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_realTimeAlarmErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_fireAlarmDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_fireTimerAlarmErrorDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fireTimerAlarmErrorCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fireTimerAlarmErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRealTimeCheckRejected)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsTraveling)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsPlaceEligible)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsInVisit)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsInWorkoutHealthKit)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsInWorkoutMotion)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsJournaling)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsAtHome)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_eventTime)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasAttemptSuccessful)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_suggestionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasBundleGoodnessScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_deviceId)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasIsDevicePrimary)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasJournalingAppFirstParty)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_hasIsOnDefaultSchedule)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDNUGated)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v197.receiver = self;
  v197.super_class = BMMomentsNotifications;
  v5 = [(BMEventBase *)&v197 init];
  if (!v5)
  {
    goto LABEL_356;
  }

  v6 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v198[0]) = 0;
      v11 = [fromCopy position] + 1;
      if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v10 |= (v198[0] & 0x7F) << v8;
      if ((v198[0] & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_17;
      }
    }

    v15 = [fromCopy hasError] ? 0 : v10;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
    {
      break;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v16 = PBReaderReadString();
        v17 = 184;
        goto LABEL_229;
      case 2u:
        v5->_hasRaw_reporterWritingDate = 1;
        v198[0] = 0;
        v118 = [fromCopy position] + 8;
        if (v118 >= [fromCopy position] && (v119 = objc_msgSend(fromCopy, "position") + 8, v119 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_reporterWritingDate = v198[0];
        continue;
      case 3u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v5->_hasIsSignificantLocationEnabled = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v115 = [fromCopy position] + 1;
          if (v115 >= [fromCopy position] && (v116 = objc_msgSend(fromCopy, "position") + 1, v116 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v114 |= (v198[0] & 0x7F) << v112;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v14 = v113++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_310;
          }
        }

        v37 = (v114 != 0) & ~[fromCopy hasError];
LABEL_310:
        v183 = 112;
        goto LABEL_329;
      case 4u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v5->_hasIsSystemNotificationsEnabled = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v147 = [fromCopy position] + 1;
          if (v147 >= [fromCopy position] && (v148 = objc_msgSend(fromCopy, "position") + 1, v148 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v146 |= (v198[0] & 0x7F) << v144;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v14 = v145++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_322;
          }
        }

        v37 = (v146 != 0) & ~[fromCopy hasError];
LABEL_322:
        v183 = 114;
        goto LABEL_329;
      case 5u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v5->_hasIsAppNotificationsEnabled = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v97 = [fromCopy position] + 1;
          if (v97 >= [fromCopy position] && (v98 = objc_msgSend(fromCopy, "position") + 1, v98 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v96 |= (v198[0] & 0x7F) << v94;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v14 = v95++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_304;
          }
        }

        v37 = (v96 != 0) & ~[fromCopy hasError];
LABEL_304:
        v183 = 116;
        goto LABEL_329;
      case 6u:
        v198[0] = 0;
        v198[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_358;
        }

        v136 = [[BMMomentsNotificationsPrediction alloc] initByReadFrom:fromCopy];
        if (!v136)
        {
          goto LABEL_358;
        }

        v137 = v136;
        [v6 addObject:v136];
        PBReaderRecallMark();

        continue;
      case 7u:
        v5->_hasMaxAvailabilityProbability = 1;
        v198[0] = 0;
        v90 = [fromCopy position] + 8;
        if (v90 >= [fromCopy position] && (v91 = objc_msgSend(fromCopy, "position") + 8, v91 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_maxAvailabilityProbability = v198[0];
        continue;
      case 8u:
        v5->_hasRaw_maxAvailabilityProbabilityDate = 1;
        v198[0] = 0;
        v92 = [fromCopy position] + 8;
        if (v92 >= [fromCopy position] && (v93 = objc_msgSend(fromCopy, "position") + 8, v93 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_maxAvailabilityProbabilityDate = v198[0];
        continue;
      case 9u:
        v5->_hasRaw_proposedFireDate = 1;
        v198[0] = 0;
        v126 = [fromCopy position] + 8;
        if (v126 >= [fromCopy position] && (v127 = objc_msgSend(fromCopy, "position") + 8, v127 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_proposedFireDate = v198[0];
        continue;
      case 0xAu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v123 = [fromCopy position] + 1;
          if (v123 >= [fromCopy position] && (v124 = objc_msgSend(fromCopy, "position") + 1, v124 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v122 |= (v198[0] & 0x7F) << v120;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v24 = v121++ > 8;
          if (v24)
          {
            goto LABEL_313;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v122 > 2)
        {
LABEL_313:
          LODWORD(v122) = 0;
        }

        v5->_proposedFireDateSource = v122;
        continue;
      case 0xBu:
        v5->_hasRaw_realTimeCheckHandlerRetryDate = 1;
        v198[0] = 0;
        v150 = [fromCopy position] + 8;
        if (v150 >= [fromCopy position] && (v151 = objc_msgSend(fromCopy, "position") + 8, v151 <= objc_msgSend(fromCopy, "length")))
        {
          data10 = [fromCopy data];
          [data10 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_realTimeCheckHandlerRetryDate = v198[0];
        continue;
      case 0xCu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasRealTimeCheckHandlerFailure = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v73 = [fromCopy position] + 1;
          if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v72 |= (v198[0] & 0x7F) << v70;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v14 = v71++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_298;
          }
        }

        v37 = (v72 != 0) & ~[fromCopy hasError];
LABEL_298:
        v183 = 119;
        goto LABEL_329;
      case 0xDu:
        v16 = PBReaderReadString();
        v17 = 208;
        goto LABEL_229;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 216;
        goto LABEL_229;
      case 0xFu:
        v16 = PBReaderReadString();
        v17 = 224;
        goto LABEL_229;
      case 0x10u:
        v5->_hasRaw_fireAlarmDate = 1;
        v198[0] = 0;
        v128 = [fromCopy position] + 8;
        if (v128 >= [fromCopy position] && (v129 = objc_msgSend(fromCopy, "position") + 8, v129 <= objc_msgSend(fromCopy, "length")))
        {
          data12 = [fromCopy data];
          [data12 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_fireAlarmDate = v198[0];
        continue;
      case 0x11u:
        v16 = PBReaderReadString();
        v17 = 232;
        goto LABEL_229;
      case 0x12u:
        v16 = PBReaderReadString();
        v17 = 240;
        goto LABEL_229;
      case 0x13u:
        v16 = PBReaderReadString();
        v17 = 248;
        goto LABEL_229;
      case 0x14u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v5->_hasRealTimeCheckRejected = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v85 = [fromCopy position] + 1;
          if (v85 >= [fromCopy position] && (v86 = objc_msgSend(fromCopy, "position") + 1, v86 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v84 |= (v198[0] & 0x7F) << v82;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v14 = v83++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_302;
          }
        }

        v37 = (v84 != 0) & ~[fromCopy hasError];
LABEL_302:
        v183 = 121;
        goto LABEL_329;
      case 0x15u:
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v5->_hasRealTimeCheckIsTraveling = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v156 = [fromCopy position] + 1;
          if (v156 >= [fromCopy position] && (v157 = objc_msgSend(fromCopy, "position") + 1, v157 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v155 |= (v198[0] & 0x7F) << v153;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          v14 = v154++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_324;
          }
        }

        v37 = (v155 != 0) & ~[fromCopy hasError];
LABEL_324:
        v183 = 123;
        goto LABEL_329;
      case 0x16u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasRealTimeCheckIsPlaceEligible = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 |= (v198[0] & 0x7F) << v38;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v14 = v39++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_286;
          }
        }

        v37 = (v40 != 0) & ~[fromCopy hasError];
LABEL_286:
        v183 = 125;
        goto LABEL_329;
      case 0x17u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v5->_hasRealTimeCheckIsInVisit = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v79 = [fromCopy position] + 1;
          if (v79 >= [fromCopy position] && (v80 = objc_msgSend(fromCopy, "position") + 1, v80 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v78 |= (v198[0] & 0x7F) << v76;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v14 = v77++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_300;
          }
        }

        v37 = (v78 != 0) & ~[fromCopy hasError];
LABEL_300:
        v183 = 127;
        goto LABEL_329;
      case 0x18u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasRealTimeCheckIsInWorkoutHealthKit = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v53 = [fromCopy position] + 1;
          if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v52 |= (v198[0] & 0x7F) << v50;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v14 = v51++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_290;
          }
        }

        v37 = (v52 != 0) & ~[fromCopy hasError];
LABEL_290:
        v183 = 129;
        goto LABEL_329;
      case 0x19u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        v5->_hasRealTimeCheckIsInWorkoutMotion = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v103 = [fromCopy position] + 1;
          if (v103 >= [fromCopy position] && (v104 = objc_msgSend(fromCopy, "position") + 1, v104 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v102 |= (v198[0] & 0x7F) << v100;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v14 = v101++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_306;
          }
        }

        v37 = (v102 != 0) & ~[fromCopy hasError];
LABEL_306:
        v183 = 131;
        goto LABEL_329;
      case 0x1Au:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasRealTimeCheckIsJournaling = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v47 = [fromCopy position] + 1;
          if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 |= (v198[0] & 0x7F) << v44;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v14 = v45++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_288;
          }
        }

        v37 = (v46 != 0) & ~[fromCopy hasError];
LABEL_288:
        v183 = 133;
        goto LABEL_329;
      case 0x1Bu:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v5->_hasRealTimeCheckIsAtHome = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v168 = [fromCopy position] + 1;
          if (v168 >= [fromCopy position] && (v169 = objc_msgSend(fromCopy, "position") + 1, v169 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v167 |= (v198[0] & 0x7F) << v165;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v14 = v166++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_328;
          }
        }

        v37 = (v167 != 0) & ~[fromCopy hasError];
LABEL_328:
        v183 = 135;
        goto LABEL_329;
      case 0x1Eu:
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v5->_hasAttemptSuccessful = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v162 = [fromCopy position] + 1;
          if (v162 >= [fromCopy position] && (v163 = objc_msgSend(fromCopy, "position") + 1, v163 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v161 |= (v198[0] & 0x7F) << v159;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v159 += 7;
          v14 = v160++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_326;
          }
        }

        v37 = (v161 != 0) & ~[fromCopy hasError];
LABEL_326:
        v183 = 137;
        goto LABEL_329;
      case 0x1Fu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v61 = [fromCopy position] + 1;
          if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v60 |= (v198[0] & 0x7F) << v58;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v24 = v59++ > 8;
          if (v24)
          {
            goto LABEL_293;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v60 > 7)
        {
LABEL_293:
          LODWORD(v60) = 0;
        }

        v5->_eventType = v60;
        continue;
      case 0x20u:
        v5->_hasRaw_eventTime = 1;
        v198[0] = 0;
        v88 = [fromCopy position] + 8;
        if (v88 >= [fromCopy position] && (v89 = objc_msgSend(fromCopy, "position") + 8, v89 <= objc_msgSend(fromCopy, "length")))
        {
          data23 = [fromCopy data];
          [data23 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_eventTime = v198[0];
        continue;
      case 0x21u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v133 = [fromCopy position] + 1;
          if (v133 >= [fromCopy position] && (v134 = objc_msgSend(fromCopy, "position") + 1, v134 <= objc_msgSend(fromCopy, "length")))
          {
            data24 = [fromCopy data];
            [data24 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v132 |= (v198[0] & 0x7F) << v130;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v24 = v131++ > 8;
          if (v24)
          {
            goto LABEL_317;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v132 > 2)
        {
LABEL_317:
          LODWORD(v132) = 0;
        }

        v5->_contentType = v132;
        continue;
      case 0x22u:
        v16 = PBReaderReadString();
        v17 = 256;
        goto LABEL_229;
      case 0x23u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v180 = [fromCopy position] + 1;
          if (v180 >= [fromCopy position] && (v181 = objc_msgSend(fromCopy, "position") + 1, v181 <= objc_msgSend(fromCopy, "length")))
          {
            data25 = [fromCopy data];
            [data25 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v179 |= (v198[0] & 0x7F) << v177;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v24 = v178++ > 8;
          if (v24)
          {
            goto LABEL_336;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v179 > 0xF)
        {
LABEL_336:
          LODWORD(v179) = 0;
        }

        v5->_bundleInterfaceType = v179;
        continue;
      case 0x24u:
        v5->_hasBundleGoodnessScore = 1;
        v198[0] = 0;
        v56 = [fromCopy position] + 8;
        if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 8, v57 <= objc_msgSend(fromCopy, "length")))
        {
          data26 = [fromCopy data];
          [data26 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_bundleGoodnessScore = v198[0];
        continue;
      case 0x25u:
        v16 = PBReaderReadString();
        v17 = 272;
LABEL_229:
        v152 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        continue;
      case 0x26u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v174 = [fromCopy position] + 1;
          if (v174 >= [fromCopy position] && (v175 = objc_msgSend(fromCopy, "position") + 1, v175 <= objc_msgSend(fromCopy, "length")))
          {
            data27 = [fromCopy data];
            [data27 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v173 |= (v198[0] & 0x7F) << v171;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v24 = v172++ > 8;
          if (v24)
          {
            goto LABEL_332;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v173 > 4)
        {
LABEL_332:
          LODWORD(v173) = 0;
        }

        v5->_deviceType = v173;
        continue;
      case 0x27u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasIsDevicePrimary = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v34 = [fromCopy position] + 1;
          if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
          {
            data28 = [fromCopy data];
            [data28 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v33 |= (v198[0] & 0x7F) << v31;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v14 = v32++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_284;
          }
        }

        v37 = (v33 != 0) & ~[fromCopy hasError];
LABEL_284:
        v183 = 140;
        goto LABEL_329;
      case 0x28u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v5->_hasJournalingAppFirstParty = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v141 = [fromCopy position] + 1;
          if (v141 >= [fromCopy position] && (v142 = objc_msgSend(fromCopy, "position") + 1, v142 <= objc_msgSend(fromCopy, "length")))
          {
            data29 = [fromCopy data];
            [data29 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v140 |= (v198[0] & 0x7F) << v138;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v14 = v139++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_320;
          }
        }

        v37 = (v140 != 0) & ~[fromCopy hasError];
LABEL_320:
        v183 = 142;
        goto LABEL_329;
      case 0x29u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data30 = [fromCopy data];
            [data30 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v198[0] & 0x7F) << v25;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v24 = v26++ > 8;
          if (v24)
          {
            goto LABEL_281;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v27 > 3)
        {
LABEL_281:
          LODWORD(v27) = 0;
        }

        v5->_schedulingState = v27;
        continue;
      case 0x2Au:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data31 = [fromCopy data];
            [data31 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v198[0] & 0x7F) << v18;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v24 = v19++ > 8;
          if (v24)
          {
            goto LABEL_277;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v20 > 3)
        {
LABEL_277:
          LODWORD(v20) = 0;
        }

        v5->_scheduleDeliverySetting = v20;
        continue;
      case 0x2Bu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v5->_hasIsOnDefaultSchedule = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v67 = [fromCopy position] + 1;
          if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
          {
            data32 = [fromCopy data];
            [data32 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v66 |= (v198[0] & 0x7F) << v64;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v14 = v65++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_296;
          }
        }

        v37 = (v66 != 0) & ~[fromCopy hasError];
LABEL_296:
        v183 = 144;
        goto LABEL_329;
      case 0x2Cu:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        v5->_hasIsDNUGated = 1;
        break;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_358:

        goto LABEL_355;
    }

    while (1)
    {
      LOBYTE(v198[0]) = 0;
      v109 = [fromCopy position] + 1;
      if (v109 >= [fromCopy position] && (v110 = objc_msgSend(fromCopy, "position") + 1, v110 <= objc_msgSend(fromCopy, "length")))
      {
        data33 = [fromCopy data];
        [data33 getBytes:v198 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v108 |= (v198[0] & 0x7F) << v106;
      if ((v198[0] & 0x80) == 0)
      {
        break;
      }

      v106 += 7;
      v14 = v107++ >= 9;
      if (v14)
      {
        LOBYTE(v37) = 0;
        goto LABEL_308;
      }
    }

    v37 = (v108 != 0) & ~[fromCopy hasError];
LABEL_308:
    v183 = 146;
LABEL_329:
    *(&v5->super.super.isa + v183) = v37;
  }

  v192 = [v6 copy];
  predictionTuple = v5->_predictionTuple;
  v5->_predictionTuple = v192;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_355:
    v195 = 0;
  }

  else
  {
LABEL_356:
    v195 = v5;
  }

  return v195;
}

- (NSString)description
{
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  reporterIdentification = [(BMMomentsNotifications *)self reporterIdentification];
  reporterWritingDate = [(BMMomentsNotifications *)self reporterWritingDate];
  v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isSignificantLocationEnabled](self, "isSignificantLocationEnabled")}];
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isSystemNotificationsEnabled](self, "isSystemNotificationsEnabled")}];
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isAppNotificationsEnabled](self, "isAppNotificationsEnabled")}];
  predictionTuple = [(BMMomentsNotifications *)self predictionTuple];
  v3 = MEMORY[0x1E696AD98];
  [(BMMomentsNotifications *)self maxAvailabilityProbability];
  v44 = [v3 numberWithDouble:?];
  maxAvailabilityProbabilityDate = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
  proposedFireDate = [(BMMomentsNotifications *)self proposedFireDate];
  v41 = BMMomentsNotificationsFireDateSourceAsString([(BMMomentsNotifications *)self proposedFireDateSource]);
  realTimeCheckHandlerRetryDate = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckHandlerFailure](self, "realTimeCheckHandlerFailure")}];
  realTimeCheckHandlerErrorDescription = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorDescription];
  realTimeCheckHandlerErrorCode = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorCode];
  realTimeAlarmErrorDomain = [(BMMomentsNotifications *)self realTimeAlarmErrorDomain];
  fireAlarmDate = [(BMMomentsNotifications *)self fireAlarmDate];
  fireTimerAlarmErrorDescription = [(BMMomentsNotifications *)self fireTimerAlarmErrorDescription];
  fireTimerAlarmErrorCode = [(BMMomentsNotifications *)self fireTimerAlarmErrorCode];
  fireTimerAlarmErrorDomain = [(BMMomentsNotifications *)self fireTimerAlarmErrorDomain];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckRejected](self, "realTimeCheckRejected")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsTraveling](self, "realTimeCheckIsTraveling")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsPlaceEligible](self, "realTimeCheckIsPlaceEligible")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInVisit](self, "realTimeCheckIsInVisit")}];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInWorkoutHealthKit](self, "realTimeCheckIsInWorkoutHealthKit")}];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInWorkoutMotion](self, "realTimeCheckIsInWorkoutMotion")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsJournaling](self, "realTimeCheckIsJournaling")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsAtHome](self, "realTimeCheckIsAtHome")}];
  v18 = BMMomentsNotificationsEventTypeAsString([(BMMomentsNotifications *)self eventType]);
  eventTime = [(BMMomentsNotifications *)self eventTime];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications AttemptSuccessful](self, "AttemptSuccessful")}];
  v23 = BMMomentsNotificationsContentTypeAsString([(BMMomentsNotifications *)self contentType]);
  suggestionIdentifier = [(BMMomentsNotifications *)self suggestionIdentifier];
  v15 = BMMomentsEventDataBundleInterfaceTypeAsString([(BMMomentsNotifications *)self bundleInterfaceType]);
  v4 = MEMORY[0x1E696AD98];
  [(BMMomentsNotifications *)self bundleGoodnessScore];
  v13 = [v4 numberWithDouble:?];
  deviceId = [(BMMomentsNotifications *)self deviceId];
  v14 = BMMomentsNotificationsDeviceTypeAsString([(BMMomentsNotifications *)self deviceType]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isDevicePrimary](self, "isDevicePrimary")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications journalingAppFirstParty](self, "journalingAppFirstParty")}];
  v5 = BMMomentsNotificationsSchedulingStateAsString([(BMMomentsNotifications *)self schedulingState]);
  v6 = BMMomentsNotificationsScheduledDeliverySettingAsString([(BMMomentsNotifications *)self scheduleDeliverySetting]);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isOnDefaultSchedule](self, "isOnDefaultSchedule")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isDNUGated](self, "isDNUGated")}];
  v22 = [v21 initWithFormat:@"BMMomentsNotifications with reporterIdentification: %@, reporterWritingDate: %@, isSignificantLocationEnabled: %@, isSystemNotificationsEnabled: %@, isAppNotificationsEnabled: %@, predictionTuple: %@, maxAvailabilityProbability: %@, maxAvailabilityProbabilityDate: %@, proposedFireDate: %@, proposedFireDateSource: %@, realTimeCheckHandlerRetryDate: %@, realTimeCheckHandlerFailure: %@, realTimeCheckHandlerErrorDescription: %@, realTimeCheckHandlerErrorCode: %@, realTimeAlarmErrorDomain: %@, fireAlarmDate: %@, fireTimerAlarmErrorDescription: %@, fireTimerAlarmErrorCode: %@, fireTimerAlarmErrorDomain: %@, realTimeCheckRejected: %@, realTimeCheckIsTraveling: %@, realTimeCheckIsPlaceEligible: %@, realTimeCheckIsInVisit: %@, realTimeCheckIsInWorkoutHealthKit: %@, realTimeCheckIsInWorkoutMotion: %@, realTimeCheckIsJournaling: %@, realTimeCheckIsAtHome: %@, eventType: %@, eventTime: %@, AttemptSuccessful: %@, contentType: %@, suggestionIdentifier: %@, bundleInterfaceType: %@, bundleGoodnessScore: %@, deviceId: %@, deviceType: %@, isDevicePrimary: %@, journalingAppFirstParty: %@, schedulingState: %@, scheduleDeliverySetting: %@, isOnDefaultSchedule: %@, isDNUGated: %@", reporterIdentification, reporterWritingDate, v48, v47, v45, predictionTuple, v44, maxAvailabilityProbabilityDate, proposedFireDate, v41, realTimeCheckHandlerRetryDate, v39, realTimeCheckHandlerErrorDescription, realTimeCheckHandlerErrorCode, realTimeAlarmErrorDomain, fireAlarmDate, fireTimerAlarmErrorDescription, fireTimerAlarmErrorCode, fireTimerAlarmErrorDomain, v29, v20, v30, v19, v28, v27, v26, v25, v18, eventTime, v17, v23, suggestionIdentifier, v15, v13, deviceId, v14, v11, v10, v5, v6, v7, v8];

  return v22;
}

- (BMMomentsNotifications)initWithReporterIdentification:(id)identification reporterWritingDate:(id)date isSignificantLocationEnabled:(id)enabled isSystemNotificationsEnabled:(id)notificationsEnabled isAppNotificationsEnabled:(id)appNotificationsEnabled predictionTuple:(id)tuple maxAvailabilityProbability:(id)probability maxAvailabilityProbabilityDate:(id)self0 proposedFireDate:(id)self1 proposedFireDateSource:(int)self2 realTimeCheckHandlerRetryDate:(id)self3 realTimeCheckHandlerFailure:(id)self4 realTimeCheckHandlerErrorDescription:(id)self5 realTimeCheckHandlerErrorCode:(id)self6 realTimeAlarmErrorDomain:(id)self7 fireAlarmDate:(id)self8 fireTimerAlarmErrorDescription:(id)self9 fireTimerAlarmErrorCode:(id)errorCode fireTimerAlarmErrorDomain:(id)errorDomain realTimeCheckRejected:(id)rejected realTimeCheckIsTraveling:(id)traveling realTimeCheckIsPlaceEligible:(id)eligible realTimeCheckIsInVisit:(id)visit realTimeCheckIsInWorkoutHealthKit:(id)kit realTimeCheckIsInWorkoutMotion:(id)motion realTimeCheckIsJournaling:(id)journaling realTimeCheckIsAtHome:(id)home eventType:(int)identification0 eventTime:(id)identification1 AttemptSuccessful:(id)identification2 contentType:(int)identification3 suggestionIdentifier:(id)identification4 bundleInterfaceType:(int)identification5 bundleGoodnessScore:(id)identification6 deviceId:(id)identification7 deviceType:(int)identification8 isDevicePrimary:(id)identification9 journalingAppFirstParty:(id)date0 schedulingState:(int)date1 scheduleDeliverySetting:(int)date2 isOnDefaultSchedule:(id)date3 isDNUGated:(id)date4
{
  identificationCopy = identification;
  dateCopy = date;
  enabledCopy = enabled;
  notificationsEnabledCopy = notificationsEnabled;
  appNotificationsEnabledCopy = appNotificationsEnabled;
  tupleCopy = tuple;
  tupleCopy2 = tuple;
  probabilityCopy = probability;
  probabilityDateCopy = probabilityDate;
  fireDateCopy = fireDate;
  retryDateCopy = retryDate;
  failureCopy = failure;
  descriptionCopy = description;
  codeCopy = code;
  domainCopy = domain;
  alarmDateCopy = alarmDate;
  errorDescriptionCopy = errorDescription;
  errorCodeCopy = errorCode;
  errorDomainCopy = errorDomain;
  rejectedCopy = rejected;
  travelingCopy = traveling;
  eligibleCopy = eligible;
  visitCopy = visit;
  kitCopy = kit;
  motionCopy = motion;
  journalingCopy = journaling;
  homeCopy = home;
  timeCopy = time;
  successfulCopy = successful;
  identifierCopy = identifier;
  scoreCopy = score;
  idCopy = id;
  primaryCopy = primary;
  partyCopy = party;
  scheduleCopy = schedule;
  gatedCopy = gated;
  v97.receiver = self;
  v97.super_class = BMMomentsNotifications;
  v56 = [(BMEventBase *)&v97 init];
  if (v56)
  {
    v56->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v56->_reporterIdentification, identification);
    if (dateCopy)
    {
      v56->_hasRaw_reporterWritingDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_reporterWritingDate = 0;
      v57 = -1.0;
    }

    v56->_raw_reporterWritingDate = v57;
    if (enabledCopy)
    {
      v56->_hasIsSignificantLocationEnabled = 1;
      v56->_isSignificantLocationEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v56->_hasIsSignificantLocationEnabled = 0;
      v56->_isSignificantLocationEnabled = 0;
    }

    if (notificationsEnabledCopy)
    {
      v56->_hasIsSystemNotificationsEnabled = 1;
      v56->_isSystemNotificationsEnabled = [notificationsEnabledCopy BOOLValue];
    }

    else
    {
      v56->_hasIsSystemNotificationsEnabled = 0;
      v56->_isSystemNotificationsEnabled = 0;
    }

    if (appNotificationsEnabledCopy)
    {
      v56->_hasIsAppNotificationsEnabled = 1;
      v56->_isAppNotificationsEnabled = [appNotificationsEnabledCopy BOOLValue];
    }

    else
    {
      v56->_hasIsAppNotificationsEnabled = 0;
      v56->_isAppNotificationsEnabled = 0;
    }

    objc_storeStrong(&v56->_predictionTuple, tupleCopy);
    if (probabilityCopy)
    {
      v56->_hasMaxAvailabilityProbability = 1;
      [probabilityCopy doubleValue];
    }

    else
    {
      v56->_hasMaxAvailabilityProbability = 0;
      v58 = -1.0;
    }

    v56->_maxAvailabilityProbability = v58;
    if (probabilityDateCopy)
    {
      v56->_hasRaw_maxAvailabilityProbabilityDate = 1;
      [probabilityDateCopy timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_maxAvailabilityProbabilityDate = 0;
      v59 = -1.0;
    }

    v56->_raw_maxAvailabilityProbabilityDate = v59;
    if (fireDateCopy)
    {
      v56->_hasRaw_proposedFireDate = 1;
      [fireDateCopy timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_proposedFireDate = 0;
      v60 = -1.0;
    }

    v56->_raw_proposedFireDate = v60;
    v56->_proposedFireDateSource = source;
    if (retryDateCopy)
    {
      v56->_hasRaw_realTimeCheckHandlerRetryDate = 1;
      [retryDateCopy timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_realTimeCheckHandlerRetryDate = 0;
      v61 = -1.0;
    }

    v56->_raw_realTimeCheckHandlerRetryDate = v61;
    if (failureCopy)
    {
      v56->_hasRealTimeCheckHandlerFailure = 1;
      v56->_realTimeCheckHandlerFailure = [failureCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckHandlerFailure = 0;
      v56->_realTimeCheckHandlerFailure = 0;
    }

    objc_storeStrong(&v56->_realTimeCheckHandlerErrorDescription, description);
    objc_storeStrong(&v56->_realTimeCheckHandlerErrorCode, code);
    objc_storeStrong(&v56->_realTimeAlarmErrorDomain, domain);
    if (alarmDateCopy)
    {
      v56->_hasRaw_fireAlarmDate = 1;
      [alarmDateCopy timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_fireAlarmDate = 0;
      v62 = -1.0;
    }

    v56->_raw_fireAlarmDate = v62;
    objc_storeStrong(&v56->_fireTimerAlarmErrorDescription, errorDescription);
    objc_storeStrong(&v56->_fireTimerAlarmErrorCode, errorCode);
    objc_storeStrong(&v56->_fireTimerAlarmErrorDomain, errorDomain);
    if (rejectedCopy)
    {
      v56->_hasRealTimeCheckRejected = 1;
      v56->_realTimeCheckRejected = [rejectedCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckRejected = 0;
      v56->_realTimeCheckRejected = 0;
    }

    if (travelingCopy)
    {
      v56->_hasRealTimeCheckIsTraveling = 1;
      v56->_realTimeCheckIsTraveling = [travelingCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsTraveling = 0;
      v56->_realTimeCheckIsTraveling = 0;
    }

    if (eligibleCopy)
    {
      v56->_hasRealTimeCheckIsPlaceEligible = 1;
      v56->_realTimeCheckIsPlaceEligible = [eligibleCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsPlaceEligible = 0;
      v56->_realTimeCheckIsPlaceEligible = 0;
    }

    if (visitCopy)
    {
      v56->_hasRealTimeCheckIsInVisit = 1;
      v56->_realTimeCheckIsInVisit = [visitCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsInVisit = 0;
      v56->_realTimeCheckIsInVisit = 0;
    }

    if (kitCopy)
    {
      v56->_hasRealTimeCheckIsInWorkoutHealthKit = 1;
      v56->_realTimeCheckIsInWorkoutHealthKit = [kitCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsInWorkoutHealthKit = 0;
      v56->_realTimeCheckIsInWorkoutHealthKit = 0;
    }

    if (motionCopy)
    {
      v56->_hasRealTimeCheckIsInWorkoutMotion = 1;
      v56->_realTimeCheckIsInWorkoutMotion = [motionCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsInWorkoutMotion = 0;
      v56->_realTimeCheckIsInWorkoutMotion = 0;
    }

    if (journalingCopy)
    {
      v56->_hasRealTimeCheckIsJournaling = 1;
      v56->_realTimeCheckIsJournaling = [journalingCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsJournaling = 0;
      v56->_realTimeCheckIsJournaling = 0;
    }

    if (homeCopy)
    {
      v56->_hasRealTimeCheckIsAtHome = 1;
      v56->_realTimeCheckIsAtHome = [homeCopy BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsAtHome = 0;
      v56->_realTimeCheckIsAtHome = 0;
    }

    v56->_eventType = type;
    if (timeCopy)
    {
      v56->_hasRaw_eventTime = 1;
      [timeCopy timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_eventTime = 0;
      v63 = -1.0;
    }

    v56->_raw_eventTime = v63;
    if (successfulCopy)
    {
      v56->_hasAttemptSuccessful = 1;
      v56->_AttemptSuccessful = [successfulCopy BOOLValue];
    }

    else
    {
      v56->_hasAttemptSuccessful = 0;
      v56->_AttemptSuccessful = 0;
    }

    v56->_contentType = contentType;
    objc_storeStrong(&v56->_suggestionIdentifier, identifier);
    v56->_bundleInterfaceType = interfaceType;
    if (scoreCopy)
    {
      v56->_hasBundleGoodnessScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v56->_hasBundleGoodnessScore = 0;
      v64 = -1.0;
    }

    v56->_bundleGoodnessScore = v64;
    objc_storeStrong(&v56->_deviceId, id);
    v56->_deviceType = deviceType;
    if (primaryCopy)
    {
      v56->_hasIsDevicePrimary = 1;
      v56->_isDevicePrimary = [primaryCopy BOOLValue];
    }

    else
    {
      v56->_hasIsDevicePrimary = 0;
      v56->_isDevicePrimary = 0;
    }

    if (partyCopy)
    {
      v56->_hasJournalingAppFirstParty = 1;
      v56->_journalingAppFirstParty = [partyCopy BOOLValue];
    }

    else
    {
      v56->_hasJournalingAppFirstParty = 0;
      v56->_journalingAppFirstParty = 0;
    }

    v56->_schedulingState = state;
    v56->_scheduleDeliverySetting = setting;
    if (scheduleCopy)
    {
      v56->_hasIsOnDefaultSchedule = 1;
      v56->_isOnDefaultSchedule = [scheduleCopy BOOLValue];
    }

    else
    {
      v56->_hasIsOnDefaultSchedule = 0;
      v56->_isOnDefaultSchedule = 0;
    }

    if (gatedCopy)
    {
      v56->_hasIsDNUGated = 1;
      v56->_isDNUGated = [gatedCopy BOOLValue];
    }

    else
    {
      v56->_hasIsDNUGated = 0;
      v56->_isDNUGated = 0;
    }
  }

  return v56;
}

+ (id)protoFields
{
  v46[42] = *MEMORY[0x1E69E9840];
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reporterIdentification" number:1 type:13 subMessageClass:0];
  v46[0] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reporterWritingDate" number:2 type:0 subMessageClass:0];
  v46[1] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSignificantLocationEnabled" number:3 type:12 subMessageClass:0];
  v46[2] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSystemNotificationsEnabled" number:4 type:12 subMessageClass:0];
  v46[3] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAppNotificationsEnabled" number:5 type:12 subMessageClass:0];
  v46[4] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionTuple" number:6 type:14 subMessageClass:objc_opt_class()];
  v46[5] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxAvailabilityProbability" number:7 type:0 subMessageClass:0];
  v46[6] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxAvailabilityProbabilityDate" number:8 type:0 subMessageClass:0];
  v46[7] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proposedFireDate" number:9 type:0 subMessageClass:0];
  v46[8] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proposedFireDateSource" number:10 type:4 subMessageClass:0];
  v46[9] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckHandlerRetryDate" number:11 type:0 subMessageClass:0];
  v46[10] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckHandlerFailure" number:12 type:12 subMessageClass:0];
  v46[11] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckHandlerErrorDescription" number:13 type:13 subMessageClass:0];
  v46[12] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckHandlerErrorCode" number:14 type:13 subMessageClass:0];
  v46[13] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeAlarmErrorDomain" number:15 type:13 subMessageClass:0];
  v46[14] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fireAlarmDate" number:16 type:0 subMessageClass:0];
  v46[15] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fireTimerAlarmErrorDescription" number:17 type:13 subMessageClass:0];
  v46[16] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fireTimerAlarmErrorCode" number:18 type:13 subMessageClass:0];
  v46[17] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fireTimerAlarmErrorDomain" number:19 type:13 subMessageClass:0];
  v46[18] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckRejected" number:20 type:12 subMessageClass:0];
  v46[19] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsTraveling" number:21 type:12 subMessageClass:0];
  v46[20] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsPlaceEligible" number:22 type:12 subMessageClass:0];
  v46[21] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsInVisit" number:23 type:12 subMessageClass:0];
  v46[22] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsInWorkoutHealthKit" number:24 type:12 subMessageClass:0];
  v46[23] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsInWorkoutMotion" number:25 type:12 subMessageClass:0];
  v46[24] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsJournaling" number:26 type:12 subMessageClass:0];
  v46[25] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsAtHome" number:27 type:12 subMessageClass:0];
  v46[26] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:31 type:4 subMessageClass:0];
  v46[27] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTime" number:32 type:0 subMessageClass:0];
  v46[28] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"AttemptSuccessful" number:30 type:12 subMessageClass:0];
  v46[29] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:33 type:4 subMessageClass:0];
  v46[30] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionIdentifier" number:34 type:13 subMessageClass:0];
  v46[31] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleInterfaceType" number:35 type:4 subMessageClass:0];
  v46[32] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleGoodnessScore" number:36 type:0 subMessageClass:0];
  v46[33] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceId" number:37 type:13 subMessageClass:0];
  v46[34] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:38 type:4 subMessageClass:0];
  v46[35] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDevicePrimary" number:39 type:12 subMessageClass:0];
  v46[36] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"journalingAppFirstParty" number:40 type:12 subMessageClass:0];
  v46[37] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"schedulingState" number:41 type:4 subMessageClass:0];
  v46[38] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"scheduleDeliverySetting" number:42 type:4 subMessageClass:0];
  v46[39] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOnDefaultSchedule" number:43 type:12 subMessageClass:0];
  v46[40] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDNUGated" number:44 type:12 subMessageClass:0];
  v46[41] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:42];

  return v13;
}

+ (id)columns
{
  v46[42] = *MEMORY[0x1E69E9840];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reporterIdentification" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reporterWritingDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSignificantLocationEnabled" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSystemNotificationsEnabled" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAppNotificationsEnabled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"predictionTuple_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_361];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxAvailabilityProbability" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxAvailabilityProbabilityDate" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:2];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proposedFireDate" dataType:3 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:2];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proposedFireDateSource" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckHandlerRetryDate" dataType:3 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:2];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckHandlerFailure" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckHandlerErrorDescription" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckHandlerErrorCode" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeAlarmErrorDomain" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fireAlarmDate" dataType:3 requestOnly:0 fieldNumber:16 protoDataType:0 convertedType:2];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fireTimerAlarmErrorDescription" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fireTimerAlarmErrorCode" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fireTimerAlarmErrorDomain" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckRejected" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsTraveling" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsPlaceEligible" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:12 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsInVisit" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsInWorkoutHealthKit" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsInWorkoutMotion" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsJournaling" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsAtHome" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTime" dataType:3 requestOnly:0 fieldNumber:32 protoDataType:0 convertedType:2];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"AttemptSuccessful" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionIdentifier" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleInterfaceType" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleGoodnessScore" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceId" dataType:2 requestOnly:0 fieldNumber:37 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDevicePrimary" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"journalingAppFirstParty" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"schedulingState" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"scheduleDeliverySetting" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:4 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOnDefaultSchedule" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDNUGated" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:12 convertedType:0];
  v46[0] = v45;
  v46[1] = v44;
  v46[2] = v43;
  v46[3] = v42;
  v46[4] = v41;
  v46[5] = v40;
  v46[6] = v39;
  v46[7] = v38;
  v46[8] = v37;
  v46[9] = v36;
  v46[10] = v35;
  v46[11] = v34;
  v46[12] = v33;
  v46[13] = v32;
  v46[14] = v31;
  v46[15] = v30;
  v46[16] = v29;
  v46[17] = v28;
  v46[18] = v27;
  v46[19] = v26;
  v46[20] = v25;
  v46[21] = v24;
  v46[22] = v23;
  v46[23] = v22;
  v46[24] = v21;
  v46[25] = v20;
  v46[26] = v19;
  v46[27] = v13;
  v46[28] = v18;
  v46[29] = v17;
  v46[30] = v16;
  v46[31] = v15;
  v46[32] = v2;
  v46[33] = v3;
  v46[34] = v4;
  v46[35] = v5;
  v46[36] = v6;
  v46[37] = v14;
  v46[38] = v7;
  v46[39] = v8;
  v46[40] = v12;
  v46[41] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:42];

  return v11;
}

id __33__BMMomentsNotifications_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _predictionTupleJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMMomentsNotifications alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[37] = 0;
    }
  }

  return v4;
}

@end