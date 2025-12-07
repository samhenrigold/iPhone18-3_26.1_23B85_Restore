@interface CaliTIPMessage
- (CaliTIPMessage)initWithData:(id)data document:(id)document filename:(id)filename scheduleChanges:(id)changes;
- (ICSCalendar)calendar;
- (ICSDocument)document;
- (ICSEvent)event;
- (ICSEvent)masterEvent;
- (NSArray)allOccurrences;
- (NSArray)occurrences;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation CaliTIPMessage

- (CaliTIPMessage)initWithData:(id)data document:(id)document filename:(id)filename scheduleChanges:(id)changes
{
  dataCopy = data;
  documentCopy = document;
  filenameCopy = filename;
  changesCopy = changes;
  v17.receiver = self;
  v17.super_class = CaliTIPMessage;
  v14 = [(CaliTIPMessage *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CaliTIPMessage *)v14 setData:dataCopy];
    objc_storeStrong(&v15->_document, document);
    [(CaliTIPMessage *)v15 setFilename:filenameCopy];
    [(CaliTIPMessage *)v15 setScheduleChanges:changesCopy];
  }

  return v15;
}

- (ICSDocument)document
{
  document = self->_document;
  if (!document)
  {
    v4 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:self->_data options:0 error:0];
    v5 = self->_document;
    self->_document = v4;

    document = self->_document;
  }

  return document;
}

- (ICSCalendar)calendar
{
  document = [(CaliTIPMessage *)self document];
  calendar = [document calendar];

  return calendar;
}

- (ICSEvent)event
{
  v45 = *MEMORY[0x1E69E9840];
  event = self->_event;
  if (event)
  {
LABEL_2:
    v3 = event;
    goto LABEL_27;
  }

  calendar = [(CaliTIPMessage *)self calendar];
  componentKeys = [calendar componentKeys];
  if ([componentKeys count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = componentKeys;
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      v33 = componentKeys;
      v34 = v7;
      v31 = *v40;
      while (2)
      {
        v11 = 0;
        v32 = v9;
        do
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v39 + 1) + 8 * v11);
          v13 = [calendar componentForKey:v12];
          if (v13)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v28 = objc_opt_class();
              v29 = objc_opt_class();
              NSLog(&cfstr_ComponentNotSu.isa, v28, v29);
LABEL_24:

              componentKeys = v33;
              goto LABEL_26;
            }
          }

          v14 = [calendar componentOccurrencesForKey:v12];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v36;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v36 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v21 = objc_opt_class();
                  v22 = objc_opt_class();
                  NSLog(&cfstr_ComponentNotSu.isa, v21, v22);

                  v7 = v34;
                  goto LABEL_24;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v35 objects:v43 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          ++v11;
          v10 = v31;
          v7 = v34;
        }

        while (v11 != v32);
        v9 = [v34 countByEnumeratingWithState:&v39 objects:v44 count:16];
        componentKeys = v33;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if ([v7 count] < 2)
    {
      v24 = [v7 objectAtIndexedSubscript:0];
      v25 = [calendar componentForKey:v24];
      if (!v25)
      {
        v26 = [calendar componentOccurrencesForKey:v24];
        if ([v26 count])
        {
          v25 = [v26 objectAtIndexedSubscript:0];
        }

        else
        {
          v25 = 0;
        }
      }

      v27 = self->_event;
      self->_event = v25;

      event = self->_event;
      goto LABEL_2;
    }

    v20 = objc_opt_class();
    NSLog(&cfstr_MoreThanOneEve.isa, v20, [v7 count]);
  }

  else
  {
    v30 = objc_opt_class();
    NSLog(&cfstr_ItipMessageCon.isa, v30);
  }

LABEL_26:

  v3 = 0;
LABEL_27:

  return v3;
}

- (ICSEvent)masterEvent
{
  event = [(CaliTIPMessage *)self event];
  recurrence_id = [event recurrence_id];

  if (recurrence_id)
  {
    event2 = 0;
  }

  else
  {
    event2 = [(CaliTIPMessage *)self event];
  }

  return event2;
}

- (NSArray)allOccurrences
{
  event = [(CaliTIPMessage *)self event];
  array = [MEMORY[0x1E695DF70] array];
  if (event)
  {
    recurrence_id = [event recurrence_id];

    if (!recurrence_id)
    {
      [array addObject:event];
    }

    calendar = [(CaliTIPMessage *)self calendar];
    v7 = [event uid];
    v8 = [calendar componentOccurrencesForKey:v7];
    [array addObjectsFromArray:v8];
  }

  return array;
}

- (NSArray)occurrences
{
  event = [(CaliTIPMessage *)self event];
  recurrence_id = [event recurrence_id];

  if (recurrence_id)
  {
    v5 = 0;
  }

  else
  {
    calendar = [(CaliTIPMessage *)self calendar];
    v7 = [event uid];
    v5 = [calendar componentOccurrencesForKey:v7];
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  event = [(CaliTIPMessage *)self event];
  event2 = [compareCopy event];

  sequence = [event sequence];
  if (sequence >= [event2 sequence])
  {
    sequence2 = [event sequence];
    if (sequence2 <= [event2 sequence])
    {
      dtstamp = [event dtstamp];
      value = [dtstamp value];
      dtstamp2 = [event2 dtstamp];
      value2 = [dtstamp2 value];
      v8 = [value compare:value2];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)description
{
  calendar = [(CaliTIPMessage *)self calendar];
  event = [(CaliTIPMessage *)self event];
  v14 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x1E69E3C68] ICSStringFromMethod:{objc_msgSend(calendar, "method")}];
  v7 = [event uid];
  sequence = [event sequence];
  dtstamp = [event dtstamp];
  value = [dtstamp value];
  summary = [event summary];
  v12 = [v14 stringWithFormat:@"%@ <%p> { %@ %@ %ld %@ %@}", v5, self, v6, v7, sequence, value, summary];

  return v12;
}

@end