@interface MNAnnouncementPlan
+ (double)desiredTimeGapBetweenEvent:(id)event andEvent:(id)andEvent;
- (MNAnnouncementPlan)initWithEvents:(id)events distance:(double)distance speed:(double)speed durations:(id)durations;
- (id)description;
- (id)nextConflict;
@end

@implementation MNAnnouncementPlan

uint64_t __32__MNAnnouncementPlan_sortEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 triggerDistance];
  v7 = v6;
  [v5 triggerDistance];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    [v4 triggerDistance];
    v11 = v10;
    [v5 triggerDistance];
    if (v11 <= v12)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  return v9;
}

- (id)nextConflict
{
  v33 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  plannedEvents = [(MNAnnouncementPlan *)self plannedEvents];
  v4 = [plannedEvents countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(plannedEvents);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([v9 includeInPlan])
        {
          if (v6)
          {
            [v6 completionDistance];
            v11 = v10;
            [v9 triggerDistance];
            v13 = v11 - v12;
            [(MNAnnouncementPlan *)self speed];
            v15 = v13 / v14;
            [MNAnnouncementPlan desiredTimeGapBetweenEvent:v6 andEvent:v9];
            if (v15 < v16)
            {
              v18 = v16;
              v19 = objc_alloc_init(MNAnnouncementConflict);
              [(MNAnnouncementConflict *)v19 setFirstEvent:v6];
              [(MNAnnouncementConflict *)v19 setSecondEvent:v9];
              [(MNAnnouncementConflict *)v19 setTimeGap:v15];
              [(MNAnnouncementConflict *)v19 setDesiredTimeGap:v18];
              [(MNAnnouncementConflict *)v19 setAnnouncementsAreSimilar:v18 > 0.0];
              v20 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                event = [v9 event];
                stepIndex = [event stepIndex];
                *buf = 67109378;
                v29 = stepIndex;
                v30 = 2112;
                v31 = v19;
                _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_DEFAULT, "Found announcement conflict in step %d: %@", buf, 0x12u);
              }

              goto LABEL_18;
            }
          }

          v17 = v9;

          v6 = v17;
        }
      }

      v5 = [plannedEvents countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v19 = 0;
LABEL_18:

  return v19;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  plannedEvents = [(MNAnnouncementPlan *)self plannedEvents];
  v5 = [v3 stringWithFormat:@"%d events", objc_msgSend(plannedEvents, "count")];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  plannedEvents2 = [(MNAnnouncementPlan *)self plannedEvents];
  v7 = [plannedEvents2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(plannedEvents2);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n  %@", *(*(&v14 + 1) + 8 * v10)];
        v5 = [v11 stringByAppendingString:v12];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [plannedEvents2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (MNAnnouncementPlan)initWithEvents:(id)events distance:(double)distance speed:(double)speed durations:(id)durations
{
  v34 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  durationsCopy = durations;
  v32.receiver = self;
  v32.super_class = MNAnnouncementPlan;
  v13 = [(MNAnnouncementPlan *)&v32 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_events, events);
    v14->_distance = distance;
    v14->_speed = speed;
    v27 = v14;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = eventsCopy;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          uniqueID = [v21 uniqueID];
          v23 = [durationsCopy objectForKeyedSubscript:uniqueID];

          v24 = [[MNAnnouncementPlanEvent alloc] initWithEvent:v21 distance:v23 speed:distance durations:speed];
          if (v24)
          {
            [(NSMutableArray *)v15 addObject:v24];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    v14 = v27;
    plannedEvents = v27->_plannedEvents;
    v27->_plannedEvents = v15;

    [(MNAnnouncementPlan *)v27 sortEvents];
  }

  return v14;
}

+ (double)desiredTimeGapBetweenEvent:(id)event andEvent:(id)andEvent
{
  andEventCopy = andEvent;
  eventCopy = event;
  variantIndex = [eventCopy variantIndex];
  event = [eventCopy event];
  v9 = variantIndex < [event numChainedAnnouncements];

  event2 = [eventCopy event];

  event3 = [andEventCopy event];

  [event2 desiredTimeGapToEvent:event3 chained:v9];
  v13 = v12;

  return v13;
}

@end