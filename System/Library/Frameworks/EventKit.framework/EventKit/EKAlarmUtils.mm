@interface EKAlarmUtils
+ (id)adjustedRelativeAlarmOffset:(double)offset isAllDay:(BOOL)day;
+ (id)adjustedRelativeAlarmOffsetFromAllDayToTimed:(double)timed;
+ (id)adjustedRelativeAlarmOffsetFromTimedToAllDay:(double)day;
+ (void)adjustRelativeAlarmsForEvent:(id)event whenConvertingToIsAllDay:(BOOL)day;
@end

@implementation EKAlarmUtils

+ (void)adjustRelativeAlarmsForEvent:(id)event whenConvertingToIsAllDay:(BOOL)day
{
  dayCopy = day;
  v39 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = eventCopy;
  alarms = [eventCopy alarms];
  v7 = [alarms countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v25 = dayCopy;
    v24 = alarms;
    v27 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(alarms);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        if (([v11 isAbsolute] & 1) == 0)
        {
          [v11 relativeOffset];
          v12 = [EKAlarmUtils adjustedRelativeAlarmOffset:dayCopy isAllDay:?];
          if (v12)
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v13 = array;
            v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = 0;
              v17 = *v30;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v30 != v17)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v19 = *(*(&v29 + 1) + 8 * j);
                  [v19 relativeOffset];
                  v21 = v20;
                  [v12 floatValue];
                  if (v21 == v22)
                  {
                    isDefaultAlarm = [v19 isDefaultAlarm];
                    v16 |= isDefaultAlarm ^ [v11 isDefaultAlarm] ^ 1;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
              }

              while (v15);

              dayCopy = v25;
              alarms = v24;
              if (v16)
              {
                [v26 removeAlarm:v11];
                goto LABEL_22;
              }
            }

            else
            {
            }

            [v12 doubleValue];
            [v11 setRelativeOffset:?];
            [v13 addObject:v11];
LABEL_22:
            v9 = v27;
          }

          else
          {
            [v26 removeAlarm:v11];
          }

          continue;
        }
      }

      v8 = [alarms countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }
}

+ (id)adjustedRelativeAlarmOffset:(double)offset isAllDay:(BOOL)day
{
  if (day)
  {
    [self adjustedRelativeAlarmOffsetFromTimedToAllDay:offset];
  }

  else
  {
    [self adjustedRelativeAlarmOffsetFromAllDayToTimed:offset];
  }
  v4 = ;

  return v4;
}

+ (id)adjustedRelativeAlarmOffsetFromTimedToAllDay:(double)day
{
  if (day >= -43200.0 && day < 43200.0)
  {
    return &unk_1F1B6AB58;
  }

  if (day >= -129600.0 && day < -43200.0)
  {
    return &unk_1F1B6AB70;
  }

  if (day >= -216000.0 && day < -129600.0)
  {
    return &unk_1F1B6AB88;
  }

  if (day >= -561600.0 || day < -648000.0)
  {
    return 0;
  }

  else
  {
    return &unk_1F1B6ABA0;
  }
}

+ (id)adjustedRelativeAlarmOffsetFromAllDayToTimed:(double)timed
{
  if (fabs(timed + -32400.0) < 0.0000001)
  {
    return &unk_1F1B6ABB8;
  }

  if (fabs(timed + 54000.0) < 0.0000001)
  {
    return &unk_1F1B6ABD0;
  }

  if (fabs(timed + 140400.0) < 0.0000001)
  {
    return &unk_1F1B6ABE8;
  }

  if (fabs(timed + 572400.0) >= 0.0000001)
  {
    return 0;
  }

  return &unk_1F1B6AC00;
}

@end