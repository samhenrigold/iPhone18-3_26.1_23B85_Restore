@interface REMExporting
+ (BOOL)_updateICSComponentWithReminder:(id)reminder icsCalendarItem:(id)item;
+ (id)_icsCalendarItemsFromReminders:(id)reminders exportingOption:(int64_t)option;
+ (id)exportICSCalendarFromReminders:(id)reminders exportingOption:(int64_t)option;
+ (id)icsTodoFromReminder:(id)reminder exportingOption:(int64_t)option;
@end

@implementation REMExporting

+ (id)exportICSCalendarFromReminders:(id)reminders exportingOption:(int64_t)option
{
  v4 = [self _icsCalendarItemsFromReminders:reminders exportingOption:option];
  v5 = objc_alloc_init(MEMORY[0x1E69E3C68]);
  [v5 setComponents:v4 options:2];

  return v5;
}

+ (id)_icsCalendarItemsFromReminders:(id)reminders exportingOption:(int64_t)option
{
  v24 = *MEMORY[0x1E69E9840];
  remindersCopy = reminders;
  v7 = remindersCopy;
  if (remindersCopy && [remindersCopy count])
  {
    v17 = v7;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [self icsTodoFromReminder:*(*(&v19 + 1) + 8 * v12) exportingOption:{option, v17}];
          if (v13 && ([MEMORY[0x1E695DEC8] arrayWithObject:v13], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v15 = v14;
            [v18 addObjectsFromArray:v14];
          }

          else
          {
            v15 = +[REMLogStore read];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              +[REMExporting(ICSExport) _icsCalendarItemsFromReminders:exportingOption:];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)icsTodoFromReminder:(id)reminder exportingOption:(int64_t)option
{
  optionCopy = option;
  v57 = *MEMORY[0x1E69E9840];
  reminderCopy = reminder;
  importedICSData = [reminderCopy importedICSData];

  if (!importedICSData)
  {
    goto LABEL_21;
  }

  importedICSData2 = [reminderCopy importedICSData];
  v54 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:importedICSData2 options:0 error:&v54];
  v10 = v54;
  if (v10 || !v9)
  {
    v13 = +[REMLogStore read];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [REMExporting(ICSExport) icsTodoFromReminder:v10 exportingOption:v13];
    }

    v21 = 0;
  }

  else
  {
    calendar = [v9 calendar];
    components = [calendar components];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v13 = components;
    v14 = [v13 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v14)
    {
      v15 = v14;
      v49 = optionCopy;
      v16 = *v51;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          v19 = objc_opt_class();
          v20 = REMDynamicCast(v19, v18);
          if (v20)
          {
            v21 = v20;
            goto LABEL_17;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v21 = 0;
LABEL_17:
      optionCopy = v49;
    }

    else
    {
      v21 = 0;
    }
  }

  if (!v21)
  {
LABEL_21:
    v21 = objc_alloc_init(MEMORY[0x1E69E3CF0]);
  }

  dueDateComponents = [reminderCopy dueDateComponents];
  if (dueDateComponents)
  {
    if ([reminderCopy allDay])
    {
      v23 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(dueDateComponents month:"year") day:{objc_msgSend(dueDateComponents, "month"), objc_msgSend(dueDateComponents, "day")}];
      [v21 setDue:v23];
    }

    else if ((optionCopy & 1) != 0 || ([reminderCopy timeZone], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      v25 = MEMORY[0x1E695DFE8];
      timeZone = [reminderCopy timeZone];
      defaultTimeZone = [v25 timeZoneWithName:timeZone];

      if (!defaultTimeZone)
      {
        if ((optionCopy & 1) == 0)
        {
          v28 = +[REMLogStore read];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [REMExporting(ICSExport) icsTodoFromReminder:reminderCopy exportingOption:v28];
          }
        }

        defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
      }

      v29 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(dueDateComponents month:"year") day:objc_msgSend(dueDateComponents hour:"month") minute:objc_msgSend(dueDateComponents second:"day") timeZone:{objc_msgSend(dueDateComponents, "hour"), objc_msgSend(dueDateComponents, "minute"), objc_msgSend(dueDateComponents, "second"), defaultTimeZone}];
      [v21 setDue:v29];
    }

    else
    {
      v48 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(dueDateComponents month:"year") day:objc_msgSend(dueDateComponents hour:"month") minute:objc_msgSend(dueDateComponents second:{"day"), objc_msgSend(dueDateComponents, "hour"), objc_msgSend(dueDateComponents, "minute"), objc_msgSend(dueDateComponents, "second")}];
      [v21 setDue:v48];
    }
  }

  else
  {
    [v21 setDue:0];
  }

  v30 = [v21 due];

  if (v30)
  {
    v31 = [v21 due];
    [v21 setDtstart:v31];
  }

  else
  {
    [v21 setDtstart:0];
  }

  if ([self _updateICSComponentWithReminder:reminderCopy icsCalendarItem:v21])
  {
    daCalendarItemUniqueIdentifier = [reminderCopy daCalendarItemUniqueIdentifier];
    if (daCalendarItemUniqueIdentifier)
    {
      [v21 setUid:daCalendarItemUniqueIdentifier];
    }

    userActivity = [reminderCopy userActivity];
    v34 = userActivity;
    if (!userActivity)
    {
      goto LABEL_51;
    }

    type = [userActivity type];
    if (type == 2)
    {
      userActivityData = [v34 userActivityData];
      if (userActivityData)
      {
        [v21 setX_apple_appLinkData:userActivityData];
      }
    }

    else
    {
      if (type != 1)
      {
LABEL_51:
        completionDate = [reminderCopy completionDate];
        if (completionDate)
        {
          v40 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v41 = rem_ICSDateFromNSDate(completionDate, v40);
          [v21 setCompleted:v41];

          v42 = 4;
          v43 = 100;
        }

        else
        {
          [v21 setCompleted:0];
          v43 = 0;
          v42 = 3;
        }

        [v21 setPercentComplete:v43];
        [v21 setStatus:v42];
        [v21 setX_apple_sort_order:{objc_msgSend(reminderCopy, "icsDisplayOrder")}];
        alternativeDisplayDateDate_forCalendar = [reminderCopy alternativeDisplayDateDate_forCalendar];
        if (alternativeDisplayDateDate_forCalendar)
        {
          v45 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v46 = rem_ICSDateFromNSDate(alternativeDisplayDateDate_forCalendar, v45);

          [v21 setX_apple_alternative_due_date_for_calendar:v46];
        }

        else
        {
          [v21 setX_apple_alternative_due_date_for_calendar:0];
        }

        goto LABEL_58;
      }

      userActivityData = [v34 universalLink];
      if (userActivityData)
      {
        v37 = [objc_alloc(MEMORY[0x1E69E3CD0]) initWithValue:userActivityData type:5013];
        v55 = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
        [v21 setX_apple_activity:v38];
      }
    }

    goto LABEL_51;
  }

  daCalendarItemUniqueIdentifier = +[REMLogStore read];
  if (os_log_type_enabled(daCalendarItemUniqueIdentifier, OS_LOG_TYPE_ERROR))
  {
    [REMExporting(ICSExport) icsTodoFromReminder:daCalendarItemUniqueIdentifier exportingOption:?];
  }

LABEL_58:

  return v21;
}

+ (BOOL)_updateICSComponentWithReminder:(id)reminder icsCalendarItem:(id)item
{
  v288 = *MEMORY[0x1E69E9840];
  reminderCopy = reminder;
  itemCopy = item;
  if (reminderCopy)
  {
    v8 = itemCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    goto LABEL_219;
  }

  v223 = itemCopy;
  titleAsString = [reminderCopy titleAsString];
  if (titleAsString)
  {
    [v223 setSummary:titleAsString];
  }

  v220 = v9;
  notesAsString = [reminderCopy notesAsString];
  if (notesAsString)
  {
    [v223 setDescription:notesAsString];
  }

  v219 = notesAsString;
  v244 = titleAsString;
  icsUrl = [reminderCopy icsUrl];

  if (icsUrl)
  {
    icsUrl2 = [reminderCopy icsUrl];
    [v223 setUrl:icsUrl2];
  }

  date = [MEMORY[0x1E695DF00] date];
  [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v15 = v241 = reminderCopy;
  v16 = rem_ICSDateFromNSDateInTimezone(date, v15);
  [v223 setDtstamp:v16];

  reminderCopy = v241;
  lastModifiedDate = [v241 lastModifiedDate];
  if (lastModifiedDate)
  {
    v18 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    v19 = rem_ICSDateFromNSDateInTimezone(lastModifiedDate, v18);
    [v223 setLast_modified:v19];

    reminderCopy = v241;
  }

  v218 = lastModifiedDate;
  creationDate = [reminderCopy creationDate];
  if (creationDate)
  {
    v21 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    v22 = rem_ICSDateFromNSDateInTimezone(creationDate, v21);
    [v223 setCreated:v22];

    reminderCopy = v241;
  }

  v217 = creationDate;
  [v223 setPriority:{objc_msgSend(reminderCopy, "priority")}];
  v222 = reminderCopy;
  v242 = v223;
  v23 = v244;
  if (_setSubcomponentsOnICSComponent_onceToken != -1)
  {
    +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
  }

  array = [MEMORY[0x1E695DF70] array];
  alarms = [v222 alarms];
  if (alarms)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    memset(v280, 0, sizeof(v280));
    v281 = 0u;
    v282 = 0u;
    components = [v242 components];
    v25 = [components countByEnumeratingWithState:v280 objects:buf count:16];
    if (v25)
    {
      v26 = v25;
      v27 = **&v280[16];
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (**&v280[16] != v27)
          {
            objc_enumerationMutation(components);
          }

          v29 = *(*&v280[8] + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array2 addObject:v29];
          }
        }

        v26 = [components countByEnumeratingWithState:v280 objects:buf count:16];
      }

      while (v26);
    }

    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    obj = alarms;
    reminderCopy = v241;
    v23 = v244;
    v235 = [obj countByEnumeratingWithState:&v276 objects:v283 count:16];
    if (v235)
    {
      v231 = *v277;
      do
      {
        v30 = 0;
        do
        {
          if (*v277 != v231)
          {
            objc_enumerationMutation(obj);
          }

          v249 = v30;
          v251 = trigger4;
          v31 = *(*(&v276 + 1) + 8 * v30);
          v272 = 0u;
          v273 = 0u;
          v274 = 0u;
          v275 = 0u;
          v253 = array2;
          v32 = [v253 countByEnumeratingWithState:&v272 objects:&v268 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v273;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v273 != v34)
                {
                  objc_enumerationMutation(v253);
                }

                v36 = *(*(&v272 + 1) + 8 * j);
                v37 = [v36 uid];
                alarmUID = [v31 alarmUID];
                if ([v37 isEqual:alarmUID])
                {

LABEL_47:
                  v42 = v36;
                  goto LABEL_48;
                }

                x_wr_alarmuid = [v36 x_wr_alarmuid];
                alarmUID2 = [v31 alarmUID];
                v41 = [x_wr_alarmuid isEqual:alarmUID2];

                if (v41)
                {
                  goto LABEL_47;
                }
              }

              v33 = [v253 countByEnumeratingWithState:&v272 objects:&v268 count:16];
              v42 = 0;
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v42 = 0;
          }

LABEL_48:

          v258 = 0u;
          v259 = 0u;
          v256 = 0u;
          v257 = 0u;
          v43 = array;
          v44 = [v43 countByEnumeratingWithState:&v256 objects:&v264 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v257;
            trigger4 = v251;
            while (2)
            {
              for (k = 0; k != v45; ++k)
              {
                if (*v257 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                if (*(*(&v256 + 1) + 8 * k) == v42)
                {
                  v254 = 1;
                  goto LABEL_59;
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v256 objects:&v264 count:16];
              if (v45)
              {
                continue;
              }

              break;
            }

            v254 = 0;
          }

          else
          {
            v254 = 0;
            trigger4 = v251;
          }

LABEL_59:

          if (!v42)
          {
            v42 = objc_alloc_init(MEMORY[0x1E69E3C40]);
          }

          v48 = v31;
          v49 = v42;
          if (!v48)
          {
            v62 = 0;
            v23 = v244;
            goto LABEL_131;
          }

          trigger = [v48 trigger];
          objc_opt_class();
          v247 = trigger;
          if (objc_opt_isKindOfClass())
          {
            v51 = v48;
            v52 = objc_opt_class();
            v53 = REMDynamicCast(v52, trigger);
            dateComponents = [v53 dateComponents];
            v55 = REMIsInvalidICSAlarmDateComponents(dateComponents);

            if (v55)
            {
              [REMExporting(ICSExport) _updateICSComponentWithReminder:v261 icsCalendarItem:?];
            }

            v56 = v49;
            dateComponents2 = [v53 dateComponents];
            timeZone = [dateComponents2 timeZone];
            v59 = timeZone;
            if (timeZone)
            {
              defaultTimeZone = timeZone;
              v61 = 0x1E695D000;
            }

            else
            {
              v61 = 0x1E695D000uLL;
              defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
            }

            v68 = MEMORY[0x1E695DF10];
            dateComponents3 = [v53 dateComponents];
            v70 = [v68 rem_dateWithDateComponents:dateComponents3 timeZone:defaultTimeZone];

            v71 = [*(v61 + 4072) timeZoneWithName:@"UTC"];
            v72 = rem_ICSDateFromNSDateInTimezone(v70, v71);

            v73 = objc_alloc(MEMORY[0x1E69E3D08]);
            value = [v72 value];
            v66 = [v73 initWithDate:value];

            v49 = v56;
            v48 = v51;
            trigger4 = v251;
            trigger = v247;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v67 = +[REMLogStore read];
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
                  {
                    +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
                  }
                }
              }

              goto LABEL_78;
            }

            v63 = objc_opt_class();
            v53 = REMDynamicCast(v63, trigger);
            v64 = objc_alloc(MEMORY[0x1E69E3CB8]);
            [v53 timeInterval];
            defaultTimeZone = [v64 initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v65];
            v66 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDuration:defaultTimeZone];
          }

          if (v66)
          {
            goto LABEL_80;
          }

LABEL_78:
          trigger2 = [v49 trigger];

          if (!trigger2)
          {
            v77 = REMInvalidICSAlarmDateComponents(v76);
            v78 = objc_alloc(MEMORY[0x1E69E3C98]);
            year = [v77 year];
            month = [v77 month];
            v81 = [v77 day];
            hour = [v77 hour];
            minute = [v77 minute];
            second = [v77 second];
            v85 = month;
            trigger = v247;
            v86 = minute;
            trigger4 = v251;
            v87 = [v78 initWithYear:year month:v85 day:v81 hour:hour minute:v86 second:second];
            v66 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDate:v87];

            if (v66)
            {
LABEL_80:
              [v49 setTrigger:v66];
            }
          }

          if (![v49 action])
          {
            [v49 setAction:1];
          }

          v88 = [v49 description];
          v89 = 0x1E695D000;
          if (v88)
          {
          }

          else if ([v49 action] != 2)
          {
            [v49 setDescription:@"Reminder"];
          }

          alarmUID3 = [v48 alarmUID];
          if (alarmUID3)
          {
            [v49 setUid:alarmUID3];
            [v49 setX_wr_alarmuid:alarmUID3];
          }

          else
          {
            makeUID = [MEMORY[0x1E69E3C80] makeUID];
            [v49 setUid:makeUID];
            [v49 setX_wr_alarmuid:makeUID];
            v92 = +[REMLogStore read];
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
            }

            v89 = 0x1E695D000uLL;
          }

          v93 = objc_opt_class();
          v94 = REMDynamicCast(v93, trigger);
          v95 = objc_opt_class();
          v96 = REMDynamicCast(v95, trigger);
          v97 = v96;
          v237 = v94;
          v239 = alarmUID3;
          if (v94)
          {
            proximity = [v94 proximity];
            if (proximity == 1)
            {
              v99 = MEMORY[0x1E69E4078];
LABEL_101:
              v102 = *v99;
            }

            else
            {
              if (proximity == 2)
              {
                v99 = MEMORY[0x1E69E4088];
                goto LABEL_101;
              }

              v102 = 0;
            }

            [v49 setX_apple_proximity:v102];

            v103 = v49;
            structuredLocation = [v94 structuredLocation];
            contactLabel = [structuredLocation contactLabel];
            [structuredLocation longitude];
            if (fabs(v106) < 2.22044605e-16)
            {
              v107 = 0;
              goto LABEL_106;
            }

            [structuredLocation latitude];
            v107 = fabs(v108) >= 2.22044605e-16;
            if (!v107)
            {
LABEL_106:
              if (!contactLabel)
              {
                v109 = 0;
LABEL_109:
                title = [structuredLocation title];
                [v109 setTitle:title];

                address = [structuredLocation address];
                [v109 setAddress:address];

                routing = [structuredLocation routing];
                [v109 setRouting:routing];

                if (v107)
                {
                  v113 = MEMORY[0x1E696AEC0];
                  [structuredLocation latitude];
                  v115 = v114;
                  [structuredLocation longitude];
                  v116 = [v113 stringWithFormat:@"geo:%f, %f", v115, v116];
                  v118 = [MEMORY[0x1E695DFF8] URLWithString:v116];
                  [v109 setValue:v118 type:5013];

                  referenceFrameString = [structuredLocation referenceFrameString];

                  if (referenceFrameString)
                  {
                    referenceFrameString2 = [structuredLocation referenceFrameString];
                    [v109 setParameterValue:referenceFrameString2 forName:@"X-APPLE-REFERENCEFRAME"];
                  }
                }

                else
                {
                  [v109 setValue:0 type:5013];
                  [v109 setParameterValue:0 forName:@"X-APPLE-REFERENCEFRAME"];
                }

                [v109 setParameterValue:contactLabel forName:@"X-APPLE-ABUID"];
                v121 = MEMORY[0x1E696AD98];
                [structuredLocation radius];
                v122 = [v121 numberWithDouble:?];
                stringValue = [v122 stringValue];
                [v109 setParameterValue:stringValue forName:@"X-APPLE-RADIUS"];

                mapKitHandle = [structuredLocation mapKitHandle];
                if (mapKitHandle)
                {
                  v229 = contactLabel;
                  v125 = v97;
                  [v109 setMapKitHandle:mapKitHandle];
                  v126 = [v109 ICSStringWithOptions:0];
                  uTF8String = [v126 UTF8String];
                  if (uTF8String && strlen(uTF8String) >= 0x3DF)
                  {
                    v128 = +[REMLogStore read];
                    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                    {
                      [(REMExporting(ICSExport) *)&v262 _updateICSComponentWithReminder:v263 icsCalendarItem:v128];
                    }

                    [v109 setMapKitHandle:0];
                    trigger4 = v251;
                  }

                  v97 = v125;
                  contactLabel = v229;
                }

                v89 = 0x1E695D000;
                goto LABEL_127;
              }
            }

            v109 = objc_alloc_init(MEMORY[0x1E69E3CE8]);
            [v103 setX_apple_structured_location:v109];
            goto LABEL_109;
          }

          if (v96)
          {
            event = [v96 event];
            if (event == 1)
            {
              v101 = MEMORY[0x1E69E4080];
LABEL_123:
              v129 = *v101;
            }

            else
            {
              if (event == 2)
              {
                v101 = MEMORY[0x1E69E4090];
                goto LABEL_123;
              }

              v129 = 0;
            }

            [v49 setX_apple_proximity:v129];
          }

          [v49 setX_apple_structured_location:0];
LABEL_127:

          acknowledgedDate = [v48 acknowledgedDate];
          if (acknowledgedDate)
          {
            v227 = [*(v89 + 4072) timeZoneWithName:@"UTC"];
            [acknowledgedDate timeIntervalSinceReferenceDate];
            v132 = rem_DateComponentsFromAbsoluteTime(v227, v131);
            v225 = objc_alloc(MEMORY[0x1E69E3C98]);
            v230 = v97;
            year2 = [v132 year];
            month2 = [v132 month];
            v135 = [v132 day];
            v136 = v43;
            v137 = v48;
            hour2 = [v132 hour];
            v139 = v49;
            minute2 = [v132 minute];
            second2 = [v132 second];
            v142 = year2;
            v97 = v230;
            v143 = v135;
            trigger4 = v251;
            v144 = hour2;
            v48 = v137;
            v43 = v136;
            v145 = [v225 initWithYear:v142 month:month2 day:v143 hour:v144 minute:minute2 second:second2];
            [v139 setAcknowledged:v145];

            v49 = v139;
          }

          else
          {
            [v49 setAcknowledged:0];
          }

          v23 = v244;
          originalAlarmUID = [v48 originalAlarmUID];
          [v49 setRelatedTo:originalAlarmUID];

          v62 = v49;
LABEL_131:

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_140;
          }

          trigger3 = [v62 trigger];
          if (trigger3)
          {
            trigger4 = [v62 trigger];
            if (([trigger4 isDurationBased] & 1) == 0)
            {

LABEL_140:
              v149 = v249;
              goto LABEL_141;
            }
          }

          dtstart = [v242 dtstart];

          if (trigger3)
          {
          }

          v149 = v249;
          if (!dtstart)
          {
            [v62 setTrigger:_setSubcomponentsOnICSComponent_sInvalidTrigger];
          }

          v23 = v244;
LABEL_141:
          if (v62)
          {
            v150 = v254;
          }

          else
          {
            v150 = 1;
          }

          if ((v150 & 1) == 0)
          {
            [v43 addObject:v62];
          }

          v30 = v149 + 1;
          reminderCopy = v241;
        }

        while (v30 != v235);
        v235 = [obj countByEnumeratingWithState:&v276 objects:v283 count:16];
      }

      while (v235);
    }
  }

  [v242 setComponents:array];

  v151 = v222;
  v228 = v242;
  recurrenceRules = [v151 recurrenceRules];
  if (!recurrenceRules)
  {
    v215 = 0;
    goto LABEL_218;
  }

  v153 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recurrenceRules, "count")}];
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  v226 = recurrenceRules;
  v240 = recurrenceRules;
  v154 = [v240 countByEnumeratingWithState:&v264 objects:v283 count:16];
  if (!v154)
  {
    goto LABEL_213;
  }

  v155 = v154;
  v156 = *v265;
  v234 = v151;
  v236 = *v265;
  v232 = v153;
  do
  {
    v157 = 0;
    v238 = v155;
    do
    {
      if (*v265 != v156)
      {
        objc_enumerationMutation(v240);
      }

      v158 = *(*(&v264 + 1) + 8 * v157);
      v159 = v151;
      v252 = v159;
      if (!v158)
      {
        v162 = 0;
        goto LABEL_206;
      }

      v246 = v157;
      frequency = [v158 frequency];
      if (frequency >= 5)
      {
        v163 = v158;
        v164 = +[REMLogStore read];
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
        }

        v161 = 4;
        v158 = v163;
      }

      else
      {
        v161 = qword_19A231338[frequency];
      }

      v255 = [objc_alloc(MEMORY[0x1E69E3CD8]) initWithFrequency:v161];
      interval = [v158 interval];
      if (interval > 1)
      {
        v166 = [MEMORY[0x1E696AD98] numberWithInteger:interval];
        [v255 setInterval:v166];
      }

      if ([v158 firstDayOfTheWeek] >= 1 && objc_msgSend(v158, "firstDayOfTheWeek") != 2)
      {
        v167 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v158, "firstDayOfTheWeek")}];
        [v255 setWkst:v167];
      }

      recurrenceEnd = [v158 recurrenceEnd];
      endDate = [recurrenceEnd endDate];

      v250 = v158;
      recurrenceEnd2 = [v158 recurrenceEnd];
      occurrenceCount = [recurrenceEnd2 occurrenceCount];

      v248 = endDate;
      if (occurrenceCount)
      {
        v172 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:occurrenceCount];
        [v255 setCount:v172];
      }

      else
      {
        if (!endDate)
        {
          goto LABEL_179;
        }

        timeZone2 = [v252 timeZone];

        if (timeZone2)
        {
          v174 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v175 = rem_ICSDateFromNSDateInTimezone(endDate, v174);
        }

        else if ([v252 allDay])
        {
          [endDate timeIntervalSinceReferenceDate];
          v174 = rem_DateComponentsFromAbsoluteTime(0, v176);
          v177 = objc_alloc(MEMORY[0x1E69E3C90]);
          year3 = [v174 year];
          month3 = [v174 month];
          v180 = [v174 day];
          v181 = month3;
          v156 = v236;
          v175 = [v177 initWithYear:year3 month:v181 day:v180];
        }

        else
        {
          v174 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
          v175 = rem_ICSFloatingDateTimeFromNSDateInTimezone(endDate, v174);
        }

        v172 = v175;

        v182 = +[REMLogStore read];
        if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
        {
          value2 = [v172 value];
          *buf = 138412546;
          v285 = value2;
          v286 = 2112;
          v287 = endDate;
          _os_log_debug_impl(&dword_19A0DB000, v182, OS_LOG_TYPE_DEBUG, "Setting ICS recurrence until date: untilDate=%@ remEndDate=%@)", buf, 0x16u);
        }

        value3 = [v172 value];
        [v255 setUntil:value3];

        v155 = v238;
      }

LABEL_179:
      v158 = v250;
      daysOfTheWeek = [v250 daysOfTheWeek];
      v243 = daysOfTheWeek;
      if (daysOfTheWeek)
      {
        v185 = daysOfTheWeek;
        if ([daysOfTheWeek count])
        {
          v186 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v268 = 0u;
          v269 = 0u;
          v270 = 0u;
          v271 = 0u;
          v187 = v185;
          v188 = [v187 countByEnumeratingWithState:&v268 objects:buf count:16];
          if (v188)
          {
            v189 = v188;
            v190 = *v269;
            do
            {
              for (m = 0; m != v189; ++m)
              {
                if (*v269 != v190)
                {
                  objc_enumerationMutation(v187);
                }

                v192 = *(*(&v268 + 1) + 8 * m);
                dayOfTheWeek = [v192 dayOfTheWeek];
                if ((dayOfTheWeek - 1) >= 7)
                {
                  v194 = +[REMLogStore read];
                  if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
                  {
                    +[REMExporting(ICSExport) _updateICSComponentWithReminder:icsCalendarItem:];
                  }

                  dayOfTheWeek = 1;
                }

                v195 = objc_alloc(MEMORY[0x1E69E3C60]);
                v196 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v192, "weekNumber")}];
                v197 = [v195 initWithWeekday:dayOfTheWeek number:v196];

                [v186 addObject:v197];
              }

              v189 = [v187 countByEnumeratingWithState:&v268 objects:buf count:16];
            }

            while (v189);
          }

          v198 = +[REMLogStore read];
          if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
          {
            *v280 = 138412546;
            *&v280[4] = v186;
            *&v280[12] = 2112;
            *&v280[14] = v187;
            _os_log_debug_impl(&dword_19A0DB000, v198, OS_LOG_TYPE_DEBUG, "Setting ICS byday days array: %@ %@", v280, 0x16u);
          }

          [v255 setByday:v186];
          reminderCopy = v241;
          v153 = v232;
          v151 = v234;
          v156 = v236;
          v155 = v238;
          v158 = v250;
        }
      }

      monthsOfTheYear = [v158 monthsOfTheYear];

      if (monthsOfTheYear)
      {
        monthsOfTheYear2 = [v158 monthsOfTheYear];
        [v255 setBymonth:monthsOfTheYear2];
      }

      daysOfTheMonth = [v158 daysOfTheMonth];

      if (daysOfTheMonth)
      {
        daysOfTheMonth2 = [v158 daysOfTheMonth];
        [v255 setBymonthday:daysOfTheMonth2];
      }

      weeksOfTheYear = [v158 weeksOfTheYear];

      if (weeksOfTheYear)
      {
        weeksOfTheYear2 = [v158 weeksOfTheYear];
        [v255 setByweekno:weeksOfTheYear2];
      }

      daysOfTheYear = [v158 daysOfTheYear];

      if (daysOfTheYear)
      {
        daysOfTheYear2 = [v158 daysOfTheYear];
        [v255 setByyearday:daysOfTheYear2];
      }

      setPositions = [v158 setPositions];

      if (setPositions)
      {
        setPositions2 = [v158 setPositions];
        [v255 setBysetpos:setPositions2];
      }

      v157 = v246;
      v159 = v252;
      v162 = v255;
LABEL_206:

      if (v162)
      {
        [v153 addObject:v162];
      }

      else
      {
        v209 = v157;
        v210 = +[REMLogStore read];
        if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
        {
          objectID = [v252 objectID];
          v212 = v158;
          v213 = objectID;
          *buf = 138412546;
          v285 = v212;
          v286 = 2112;
          v287 = objectID;
          _os_log_error_impl(&dword_19A0DB000, v210, OS_LOG_TYPE_ERROR, "Couldn't create an ICSRecurrence from REMRecurrenceRule %@ {reminderID: %@}", buf, 0x16u);
        }

        v157 = v209;
      }

      ++v157;
    }

    while (v157 != v155);
    v155 = [v240 countByEnumeratingWithState:&v264 objects:v283 count:16];
  }

  while (v155);
LABEL_213:

  if ([v153 count])
  {
    v215 = [v153 copy];
  }

  else
  {
    v215 = 0;
  }

  v23 = v244;
  recurrenceRules = v226;

LABEL_218:
  [v228 setRrule:v215];

  v9 = v220;
  itemCopy = v223;
LABEL_219:

  return v9;
}

@end