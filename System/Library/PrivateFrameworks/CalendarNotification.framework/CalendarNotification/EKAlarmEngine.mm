@interface EKAlarmEngine
@end

@implementation EKAlarmEngine

uint64_t __32___EKAlarmEngine_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_EKAlarmEngine);
  v1 = sharedInstance___shared;
  sharedInstance___shared = v0;

  v2 = sharedInstance___shared;

  return [v2 start];
}

id __22___EKAlarmEngine_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CC5A40]);

  return v0;
}

void __23___EKAlarmEngine_start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) settingForKey:@"LastDBSequence"];
  v3 = [objc_alloc(MEMORY[0x277CF7100]) initWithSerializedSequenceString:v2];
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  v6 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 40) + 8) serializedSequenceString];
    v8 = *(a1 + 32);
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Starting up. Last sequence was %{public}@, context is %@", &v9, 0x16u);
  }
}

uint64_t __37___EKAlarmEngine_receivedAlarmNamed___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_242909000, v2, OS_LOG_TYPE_DEFAULT, "Updated next fire date: %@.", &v5, 0xCu);
  }

  return [*(a1 + 32) _timerFired];
}

void __48___EKAlarmEngine__updateWithForceForAlarmTable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _eventStore];
  v3 = [*(a1 + 32) _haveAlarmsChanged:v2];
  v4 = *(a1 + 32);
  if ((*(a1 + 40) & 1) != 0 || v3)
  {
    if (([v4 _populateAlarmTable:v2] & 1) == 0)
    {
      v6 = +[CALNLogSubsystem alarmEngine];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Alarm table population not started.  Will wait until the end of an existing population action to retry.", buf, 2u);
      }

      *(*(a1 + 32) + 65) = 1;
    }
  }

  else
  {
    v5 = v4[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48___EKAlarmEngine__updateWithForceForAlarmTable___block_invoke_35;
    block[3] = &unk_278D6F250;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void __37___EKAlarmEngine__haveAlarmsChanged___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (a2)
  {
    if (v11)
    {
      v8 = [v11 objectForKey:*MEMORY[0x277CF7660]];
      if (v8)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      else
      {
        v9 = [v11 objectForKey:*MEMORY[0x277CF7668]];
        if (v9)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }

        else
        {
          v10 = [v11 objectForKey:*MEMORY[0x277CF7670]];
          *(*(*(a1 + 32) + 8) + 24) = v10 != 0;
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __60___EKAlarmEngine__storeAlarms_nextScheduleLimit_eventStore___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v52 = v3;
    _os_log_impl(&dword_242909000, v2, OS_LOG_TYPE_DEFAULT, "There were %lu alarms found which will occur in the next 15 days", buf, 0xCu);
  }

  [*(a1 + 40) deleteAllAlarms];
  if ([*(a1 + 32) count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v4)
    {
      v5 = v4;
      v44 = *v47;
      do
      {
        v6 = 0;
        do
        {
          if (*v47 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v46 + 1) + 8 * v6);
          v8 = [*(a1 + 40) insertNewAlarm];
          v9 = [v7 ownerID];
          v10 = [v9 entityID];

          v11 = [v7 ownerDate];
          v12 = [v7 ownerURI];
          v13 = [v12 absoluteString];
          [v8 setEntityURI:v13];

          v14 = MEMORY[0x277CCABB0];
          v15 = [v7 alarmID];
          v16 = [v14 numberWithInt:{objc_msgSend(v15, "entityID")}];
          [v8 setAlarmID:v16];

          v17 = [MEMORY[0x277CCABB0] numberWithInt:v10];
          [v8 setEntityID:v17];

          v18 = MEMORY[0x277CCABB0];
          v19 = [v7 alarmID];
          v20 = [v18 numberWithInt:{objc_msgSend(v19, "databaseID")}];
          [v8 setDatabaseID:v20];

          [v8 setEntityDate:v11];
          v21 = [v7 ownerTimeZone];
          v22 = [v21 name];
          [v8 setEntityTimeZone:v22];

          v23 = [v7 fireDate];
          [v8 setFireTime:v23];

          v24 = [v7 externalID];
          [v8 setExternalID:v24];

          v25 = [v7 acknowledgedDate];
          [v8 setAcknowledgedDate:v25];

          ++v6;
        }

        while (v5 != v6);
        v5 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v5);
    }
  }

  v26 = [*(a1 + 56) sequenceToken];
  v27 = *(a1 + 48);
  v28 = *(v27 + 8);
  *(v27 + 8) = v26;

  v29 = [*(*(a1 + 48) + 8) serializedSequenceString];
  [*(a1 + 40) setSetting:v29 forKey:@"LastDBSequence"];
  v30 = *(a1 + 40);
  v31 = MEMORY[0x277CCACA8];
  [*(a1 + 64) timeIntervalSinceReferenceDate];
  v33 = [v31 stringWithFormat:@"%f", v32];
  [v30 setSetting:v33 forKey:@"CacheEndDate"];

  v34 = *(a1 + 40);
  v45 = 0;
  LOBYTE(v30) = [v34 save:&v45];
  v35 = v45;
  if ((v30 & 1) == 0)
  {
    v36 = +[CALNLogSubsystem alarmEngine];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      __60___EKAlarmEngine__storeAlarms_nextScheduleLimit_eventStore___block_invoke_cold_1(v35, v36, v37, v38, v39, v40, v41, v42);
    }
  }
}

void __34___EKAlarmEngine__rescheduleTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextAlarmFireTime];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 32) settingForKey:@"CacheEndDate"];
    v6 = v5;
    if (v5)
    {
      [v5 doubleValue];
      v8 = v7;
      v9 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
      [v9 timeIntervalSinceReferenceDate];
      v11 = v10;

      v12 = +[CALNLogSubsystem alarmEngine];
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11 <= v8 + -3600.0)
      {
        if (v13)
        {
          *v18 = 0;
          _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "No alarms found. Setting time to cache end date.", v18, 2u);
        }

        v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "We're close to our cache end date. Going to attempt a rebuild.", buf, 2u);
        }

        [*(a1 + 40) _updateWithForceForAlarmTable:1];
      }
    }

    else
    {
      v14 = +[CALNLogSubsystem alarmEngine];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "No cache end date. This means we haven't populated the table. No timer will be set.", v20, 2u);
      }
    }
  }
}

uint64_t __44___EKAlarmEngine__installTimerWithFireDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _installTimerWithFireDate__dateFormatter;
  _installTimerWithFireDate__dateFormatter = v0;

  v2 = _installTimerWithFireDate__dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
}

void __37___EKAlarmEngine__notifyAlarmsFired___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_242909000, v2, OS_LOG_TYPE_DEFAULT, "Notifying: %lu alarms fired.", &v6, 0xCu);
  }

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*(a1 + 32) forKey:@"EKAlarmEngineAlarmOccurrencesKey"];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"EKAlarmEngineAlarmsDidFireNotification" object:*(a1 + 40) userInfo:v4];
}

void __29___EKAlarmEngine__timerFired__block_invoke(uint64_t a1)
{
  v1 = a1;
  *(&v137[2] + 4) = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) alarmsBetweenStartDate:*(*(v1 + 40) + 24) endDate:*(v1 + 48)];
  v3 = +[CALNLogSubsystem alarmEngine];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v137[0] = [v2 count];
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Found %lu alarm(s)", buf, 0xCu);
  }

  if ([v2 count])
  {
    v102 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v4 = [*(v1 + 40) _eventStore];
    v5 = objc_alloc(MEMORY[0x277CBEA80]);
    v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v7 = CalCopyTimeZone();
    v99 = v6;
    [v6 setTimeZone:v7];

    v101 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v100 = v2;
    obj = v2;
    v107 = [obj countByEnumeratingWithState:&v128 objects:v135 count:16];
    if (v107)
    {
      v106 = *v129;
      v104 = v4;
      do
      {
        v8 = 0;
        do
        {
          if (*v129 != v106)
          {
            objc_enumerationMutation(obj);
          }

          v113 = v8;
          v9 = *(*(&v128 + 1) + 8 * v8);
          v10 = [v9 entityTimeZone];
          if (v10)
          {
            v11 = MEMORY[0x277CBEBB0];
            v12 = [v9 entityTimeZone];
            v122 = [v11 timeZoneWithName:v12];
          }

          else
          {
            v122 = 0;
          }

          v13 = [v9 entityID];
          v14 = [v13 intValue];

          v15 = [v9 databaseID];
          v16 = [v15 intValue];

          v17 = [MEMORY[0x277CC5A60] objectIDWithEntityType:2 rowID:v14 databaseID:v16];
          if ([*(v1 + 40) _isDataProtected])
          {
            v18 = [v9 entityURI];

            if (v18)
            {
              v19 = objc_alloc(MEMORY[0x277CBEBC0]);
              v20 = [v9 entityURI];
              v21 = [v19 initWithString:v20];
            }

            else
            {
              v20 = +[CALNLogSubsystem alarmEngine];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [v9 entityID];
                *v133 = 138412290;
                v134 = v29;
                _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Side alarm has no Entity URI, will not fire. rowID: %@", v133, 0xCu);
              }

              v21 = 0;
            }

            v30 = [v9 allDay];
            HIDWORD(v114) = [v30 BOOLValue];

            v23 = [v9 acknowledgedDate];
            v110 = 0;
            v111 = 0;
            v31 = 0;
            v116 = 0;
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v32 = 0.0;
            LOBYTE(v114) = v23 != 0;
            v33 = 0.0;
            v34 = 1;
          }

          else
          {
            v22 = [v9 entityDate];
            v23 = [v4 eventForObjectID:v17 occurrenceDate:v22 checkValid:0];

            if (v23)
            {
              v121 = [v23 title];
              v24 = [v23 preferredLocationWithoutPrediction];
              v25 = [v24 address];
              v26 = [v24 title];
              v27 = v101;
              v28 = v25;
              if (![v26 length])
              {
                v35 = v25;

                v26 = v35;
                v27 = v101;
              }

              v36 = [CALNNotificationFilter shouldIgnoreNotificationForEvent:v23];
              v120 = v26;
              if (v36)
              {
                [v27 addObject:v9];
                v37 = +[CALNLogSubsystem alarmEngine];
                v32 = 0.0;
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  v38 = [v9 entityID];
                  *v133 = 138412290;
                  v134 = v38;
                  _os_log_impl(&dword_242909000, v37, OS_LOG_TYPE_DEFAULT, "Removing side alarm for junk or maybe junk event with rowID: %@", v133, 0xCu);
                }

                v110 = 0;
                v111 = 0;
                v116 = 0;
                v117 = 0;
                v118 = 0;
                v119 = 0;
                v21 = 0;
                v33 = 0.0;
              }

              else
              {
                v39 = [v23 participationStatus];
                v40 = [v23 status];
                BYTE4(v111) = 0;
                if ([v23 isCurrentUserInvitedAttendee] && v39 == 3 && v40 != 3)
                {
                  v41 = [v23 calendar];
                  v42 = [v41 source];
                  v43 = [v42 constraints];
                  BYTE4(v111) = [v43 statusesAreAccurate];
                }

                v21 = [v23 externalURL];
                v119 = [v23 endDate];
                v118 = [v24 mapKitHandle];
                v44 = [v24 geoLocation];
                LODWORD(v111) = v44 != 0;

                v45 = [v24 geoLocation];
                [v45 coordinate];
                v33 = v46;

                v47 = [v24 geoLocation];
                [v47 coordinate];
                v32 = v48;

                v49 = [v23 travelStartLocation];
                v117 = [v49 routing];

                HIDWORD(v110) = [v23 isSelfOrganized] ^ 1;
                v50 = [v23 organizer];
                v116 = [v50 emailAddress];

                v37 = [v23 calendar];
                LOBYTE(v110) = [v37 isSuggestedEventCalendar];
              }

              v34 = !v36;
              v4 = v104;
            }

            else
            {
              v24 = +[CALNLogSubsystem alarmEngine];
              v32 = 0.0;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                __29___EKAlarmEngine__timerFired__block_invoke_cold_1(buf, v9, v137, v24);
              }

              v110 = 0;
              v111 = 0;
              v28 = 0;
              v116 = 0;
              v117 = 0;
              v118 = 0;
              v119 = 0;
              v21 = 0;
              v120 = 0;
              v121 = 0;
              v33 = 0.0;
              v34 = 1;
            }

            v114 = 0;
            v31 = v28;
          }

          v51 = [v9 entityDate];
          v112 = v17;
          v52 = [v4 eventForObjectID:v17 occurrenceDate:v51 checkValid:0];

          if (v52)
          {
            HIDWORD(v114) = [v52 isAllDay];
            [v52 travelTime];
            v109 = v53 > 0.0;
            v54 = [v52 calendar];
            v55 = [v54 source];

            if ([v55 supportsAlarmAcknowledgedDate])
            {
              v115 = 0;
            }

            else
            {
              v115 = [v52 uniqueIdentifier];
            }
          }

          else
          {
            v115 = 0;
            v109 = 0;
          }

          v56 = [v9 acknowledgedDate];

          if (v56)
          {
            v57 = [v9 acknowledgedDate];
            v58 = [v9 fireTime];
            [v57 timeIntervalSinceDate:v58];
            LOBYTE(v114) = v59 >= 0.0;
          }

          v60 = [v9 acknowledgedDate];
          if (v60 && (v61 = v60, [v9 acknowledgedDate], v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "timeIntervalSinceReferenceDate"), v64 = v63, v62, v61, v64 >= 1.0))
          {
            v108 = 0;
          }

          else
          {
            v65 = [v9 refiring];
            v108 = [v65 BOOLValue];
          }

          v66 = [*(v1 + 40) _alertInfoAlarmIDFromSideAlarm:v9];
          v67 = [v9 externalID];

          if (v67)
          {
            v68 = [v9 externalID];
            [v4 alarmWithExternalID:v68];
            v70 = v69 = v21;

            v67 = [v70 type];
            v21 = v69;
          }

          if (v21)
          {
            v71 = v34;
          }

          else
          {
            v71 = 0;
          }

          if (v71 == 1)
          {
            v72 = [EKCalendarItemAlertInfo alloc];
            v73 = [v9 entityDate];
            [v9 externalID];
            v75 = v74 = v1;
            [v9 databaseID];
            v105 = v67;
            v77 = v76 = v31;
            BYTE2(v98) = v110;
            BYTE1(v98) = v108;
            LOBYTE(v98) = v109;
            BYTE4(v97) = v114;
            LODWORD(v97) = [v77 intValue];
            LOBYTE(v96) = BYTE4(v111);
            v78 = [EKCalendarItemAlertInfo initWithTitle:v72 location:"initWithTitle:location:date:endDate:timeZone:allDay:tentative:publisherBulletinID:entityID:appLink:proximity:externalID:databaseID:acknowledged:dismissalID:alarmID:isOffsetFromTravelTimeStart:refiring:pseudoEvent:" date:v121 endDate:v120 timeZone:v73 allDay:v119 tentative:v122 publisherBulletinID:HIDWORD(v114) entityID:v96 appLink:0 proximity:v21 externalID:0 databaseID:0 acknowledged:v75 dismissalID:v97 alarmID:v115 isOffsetFromTravelTimeStart:v66 refiring:v98 pseudoEvent:?];

            v31 = v76;
            v1 = v74;
            v4 = v104;

            [(EKCalendarItemAlertInfo *)v78 setMapKitHandle:v118];
            [(EKCalendarItemAlertInfo *)v78 setHasGeoLocationCoordinates:v111];
            [(EKCalendarItemAlertInfo *)v78 setGeoLocationCoordinates:v33, v32];
            [(EKCalendarItemAlertInfo *)v78 setHasOrganizerThatIsNotCurrentUser:HIDWORD(v110)];
            [(EKCalendarItemAlertInfo *)v78 setOrganizerEmailAddress:v116];
            [(EKCalendarItemAlertInfo *)v78 setStartLocationRouting:v117];
            [(EKCalendarItemAlertInfo *)v78 setLocationAddress:v76];
            [(EKCalendarItemAlertInfo *)v78 setTriggerType:v105];
            v79 = [v9 fireTime];
            [(EKCalendarItemAlertInfo *)v78 setFireDate:v79];

            [v102 addObject:v78];
          }

          v8 = v113 + 1;
        }

        while (v107 != v113 + 1);
        v107 = [obj countByEnumeratingWithState:&v128 objects:v135 count:16];
      }

      while (v107);
    }

    [*(v1 + 40) _notifyAlarmsFired:v102];
    v80 = v101;
    v2 = v100;
    if ([v101 count])
    {
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v81 = v101;
      v82 = [v81 countByEnumeratingWithState:&v124 objects:v132 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v125;
        do
        {
          for (i = 0; i != v83; ++i)
          {
            if (*v125 != v84)
            {
              objc_enumerationMutation(v81);
            }

            [*(v1 + 32) deleteObject:*(*(&v124 + 1) + 8 * i)];
          }

          v83 = [v81 countByEnumeratingWithState:&v124 objects:v132 count:16];
        }

        while (v83);
      }

      v86 = *(v1 + 32);
      v123 = 0;
      v87 = [v86 save:&v123];
      v88 = v123;
      if ((v87 & 1) == 0)
      {
        v89 = +[CALNLogSubsystem alarmEngine];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          __29___EKAlarmEngine__timerFired__block_invoke_cold_2(v88, v89, v90, v91, v92, v93, v94, v95);
        }
      }

      v80 = v101;
    }
  }
}

void __45___EKAlarmEngine__timeDidChangeSignificantly__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  *(v1 + 88) = 0;
}

void __60___EKAlarmEngine__storeAlarms_nextScheduleLimit_eventStore___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_242909000, a2, a3, "Unable to save alarm side table: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __29___EKAlarmEngine__timerFired__block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 entityID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_242909000, a4, OS_LOG_TYPE_ERROR, "Could not fetch event from sideAlarm object. Somehow got an alarm for a non-event. rowID: %@", a1, 0xCu);
}

void __29___EKAlarmEngine__timerFired__block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_242909000, a2, a3, "Unable to save alarm side table when pruning side alarms: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end