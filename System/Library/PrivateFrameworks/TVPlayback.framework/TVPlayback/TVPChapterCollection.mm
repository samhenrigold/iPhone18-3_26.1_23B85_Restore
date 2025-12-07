@interface TVPChapterCollection
- (TVPChapterCollection)init;
- (id)chapterForDate:(id)date;
- (id)chapterForTime:(double)time;
- (id)nearestChapterForDate:(id)date;
- (id)nearestChapterForTime:(double)time;
@end

@implementation TVPChapterCollection

- (TVPChapterCollection)init
{
  v3.receiver = self;
  v3.super_class = TVPChapterCollection;
  result = [(TVPChapterCollection *)&v3 init];
  if (result)
  {
    result->_shouldDisplayChapterMarkers = 1;
  }

  return result;
}

- (id)chapterForTime:(double)time
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  chapters = [(TVPChapterCollection *)self chapters];
  v5 = [chapters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(chapters);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_msgSend_timeRange(v8);
        v10 = [v9 containsTime:time];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [chapters countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)nearestChapterForTime:(double)time
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  chapters = [(TVPChapterCollection *)self chapters];
  v5 = [chapters countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v25;
    v9 = *"";
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(chapters);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = objc_msgSend_timeRange(v11);
        if ([v12 containsTime:time])
        {
          v22 = v11;

          v7 = v22;
          goto LABEL_24;
        }

        objc_msgSend_startTime(v12);
        v14 = v13 - time;
        if (v14 >= 0.0)
        {
          v15 = v14;
        }

        else
        {
          v15 = -v14;
        }

        if (v15 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v16 = v11;

          v7 = v16;
        }

        objc_msgSend_startTime(v12);
        v18 = v17;
        objc_msgSend_duration(v12);
        v20 = v18 + v19 - time;
        if (v20 >= 0.0)
        {
          v9 = v20;
        }

        else
        {
          v9 = -v20;
        }

        if (v9 >= v15)
        {
          v9 = v15;
        }

        else
        {
          v21 = v11;

          v7 = v21;
        }
      }

      v6 = [chapters countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_24:

  return v7;
}

- (id)chapterForDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  chapters = [(TVPChapterCollection *)self chapters];
  v6 = [chapters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(chapters);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        dateRange = [v9 dateRange];
        v11 = [dateRange containsDate:dateCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [chapters countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)nearestChapterForDate:(id)date
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  chapters = [(TVPChapterCollection *)self chapters];
  v6 = [chapters countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v26;
    v10 = *"";
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(chapters);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        dateRange = [v12 dateRange];
        if ([dateRange containsDate:dateCopy])
        {
          v23 = v12;

          v8 = v23;
          goto LABEL_25;
        }

        if (dateRange)
        {
          startDate = [dateRange startDate];
          [startDate timeIntervalSinceDate:dateCopy];
          v16 = v15;

          if (v16 >= 0.0)
          {
            v17 = v16;
          }

          else
          {
            v17 = -v16;
          }

          if (v17 >= v10)
          {
            v17 = v10;
          }

          else
          {
            v18 = v12;

            v8 = v18;
          }

          endDate = [dateRange endDate];
          [endDate timeIntervalSinceDate:dateCopy];
          v21 = v20;

          if (v21 >= 0.0)
          {
            v10 = v21;
          }

          else
          {
            v10 = -v21;
          }

          if (v10 >= v17)
          {
            v10 = v17;
          }

          else
          {
            v22 = v12;

            v8 = v22;
          }
        }
      }

      v7 = [chapters countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_25:

  return v8;
}

@end