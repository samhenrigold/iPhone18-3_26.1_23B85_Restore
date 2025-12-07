@interface SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTranscriptEvents:(id)events;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse *)self setPlanText:?];
  }

  if (*(fromCopy + 1))
  {
    [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse *)self setGeneratedTranscriptEventsJson:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse *)self addTranscriptEvents:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_planText hash];
  v4 = [(NSData *)self->_generatedTranscriptEventsJson hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_transcriptEvents hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((planText = self->_planText, !(planText | equalCopy[2])) || -[NSString isEqual:](planText, "isEqual:")) && ((generatedTranscriptEventsJson = self->_generatedTranscriptEventsJson, !(generatedTranscriptEventsJson | equalCopy[1])) || -[NSData isEqual:](generatedTranscriptEventsJson, "isEqual:")))
  {
    transcriptEvents = self->_transcriptEvents;
    if (transcriptEvents | equalCopy[3])
    {
      v8 = [(NSMutableArray *)transcriptEvents isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_planText copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_generatedTranscriptEventsJson copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_transcriptEvents;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{zone, v17}];
        [v5 addTranscriptEvents:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_planText)
  {
    [toCopy setPlanText:?];
  }

  if (self->_generatedTranscriptEventsJson)
  {
    [toCopy setGeneratedTranscriptEventsJson:?];
  }

  if ([(SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse *)self transcriptEventsCount])
  {
    [toCopy clearTranscriptEvents];
    transcriptEventsCount = [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse *)self transcriptEventsCount];
    if (transcriptEventsCount)
    {
      v5 = transcriptEventsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse *)self transcriptEventsAtIndex:i];
        [toCopy addTranscriptEvents:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_planText)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_generatedTranscriptEventsJson)
  {
    PBDataWriterWriteDataField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_transcriptEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  planText = self->_planText;
  if (planText)
  {
    [dictionary setObject:planText forKey:@"plan_text"];
  }

  generatedTranscriptEventsJson = self->_generatedTranscriptEventsJson;
  if (generatedTranscriptEventsJson)
  {
    [v4 setObject:generatedTranscriptEventsJson forKey:@"generated_transcript_events_json"];
  }

  if ([(NSMutableArray *)self->_transcriptEvents count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_transcriptEvents, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_transcriptEvents;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"transcript_events"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse;
  v4 = [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALCDM_PLANNERCdmPlannerResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addTranscriptEvents:(id)events
{
  eventsCopy = events;
  transcriptEvents = self->_transcriptEvents;
  v8 = eventsCopy;
  if (!transcriptEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_transcriptEvents;
    self->_transcriptEvents = v6;

    eventsCopy = v8;
    transcriptEvents = self->_transcriptEvents;
  }

  [(NSMutableArray *)transcriptEvents addObject:eventsCopy];
}

@end