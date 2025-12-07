@interface PeopleSuggesterShareEvent
- (BOOL)isEqual:(id)equal;
- (id)appSharedFromAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)madResponseStatusAsString:(int)string;
- (id)typeOfContentsAsString:(int)string;
- (int)StringAsAppSharedFrom:(id)from;
- (int)StringAsMadResponseStatus:(id)status;
- (int)StringAsTypeOfContents:(id)contents;
- (int)appSharedFrom;
- (int)madResponseStatus;
- (int)typeOfContentAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addCandidates:(id)candidates;
- (void)addFeedbackEvents:(id)events;
- (void)addPhotoFeatures:(id)features;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIsFallbackFetch:(BOOL)fetch;
- (void)setHasIsInPhoneCall:(BOOL)call;
- (void)setHasIsScreenShot:(BOOL)shot;
- (void)setHasIsSharePlayAvailable:(BOOL)available;
- (void)setHasMadResponseStatus:(BOOL)status;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation PeopleSuggesterShareEvent

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = PeopleSuggesterShareEvent;
  [(PeopleSuggesterShareEvent *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addCandidates:(id)candidates
{
  candidatesCopy = candidates;
  candidates = self->_candidates;
  v8 = candidatesCopy;
  if (!candidates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_candidates;
    self->_candidates = v6;

    candidatesCopy = v8;
    candidates = self->_candidates;
  }

  [(NSMutableArray *)candidates addObject:candidatesCopy];
}

- (int)madResponseStatus
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_madResponseStatus;
  }

  else
  {
    return 1;
  }
}

- (void)setHasMadResponseStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)madResponseStatusAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7C26B18[string - 1];
  }

  return v4;
}

- (int)StringAsMadResponseStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"NO_REQUEST_TO_MAD"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"TIMED_OUT"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"ERROR"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsFallbackFetch:(BOOL)fetch
{
  if (fetch)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsSharePlayAvailable:(BOOL)available
{
  if (available)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)appSharedFrom
{
  if (*&self->_has)
  {
    return self->_appSharedFrom;
  }

  else
  {
    return 0;
  }
}

- (id)appSharedFromAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7C26B38[string];
  }

  return v4;
}

- (int)StringAsAppSharedFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else if ([fromCopy isEqualToString:@"PHOTOS"])
  {
    v4 = 1;
  }

  else if ([fromCopy isEqualToString:@"SCREENSHOTS"])
  {
    v4 = 2;
  }

  else if ([fromCopy isEqualToString:@"CAMERA"])
  {
    v4 = 3;
  }

  else if ([fromCopy isEqualToString:@"SAFARI"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addFeedbackEvents:(id)events
{
  eventsCopy = events;
  feedbackEvents = self->_feedbackEvents;
  v8 = eventsCopy;
  if (!feedbackEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_feedbackEvents;
    self->_feedbackEvents = v6;

    eventsCopy = v8;
    feedbackEvents = self->_feedbackEvents;
  }

  [(NSMutableArray *)feedbackEvents addObject:eventsCopy];
}

- (int)typeOfContentAtIndex:(unint64_t)index
{
  p_typeOfContents = &self->_typeOfContents;
  count = self->_typeOfContents.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_typeOfContents->list[index];
}

- (id)typeOfContentsAsString:(int)string
{
  if (string >= 0xE)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7C26B60[string];
  }

  return v4;
}

- (int)StringAsTypeOfContents:(id)contents
{
  contentsCopy = contents;
  if ([contentsCopy isEqualToString:@"PUBLIC_URL"])
  {
    v4 = 0;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_IMAGE"])
  {
    v4 = 1;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_JPEG"])
  {
    v4 = 2;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_HEIC"])
  {
    v4 = 3;
  }

  else if ([contentsCopy isEqualToString:@"LIVE_PHOTO"])
  {
    v4 = 4;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_MOVIE"])
  {
    v4 = 5;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_MPEG4"])
  {
    v4 = 6;
  }

  else if ([contentsCopy isEqualToString:@"QUICKTIME_MOVIE"])
  {
    v4 = 7;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_PLAIN_TEXT"])
  {
    v4 = 8;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_FILE_URL"])
  {
    v4 = 9;
  }

  else if ([contentsCopy isEqualToString:@"PDF"])
  {
    v4 = 10;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_PNG"])
  {
    v4 = 11;
  }

  else if ([contentsCopy isEqualToString:@"PUBLIC_VCARD"])
  {
    v4 = 12;
  }

  else if ([contentsCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsInPhoneCall:(BOOL)call
{
  if (call)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsScreenShot:(BOOL)shot
{
  if (shot)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)addPhotoFeatures:(id)features
{
  featuresCopy = features;
  photoFeatures = self->_photoFeatures;
  v8 = featuresCopy;
  if (!photoFeatures)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_photoFeatures;
    self->_photoFeatures = v6;

    featuresCopy = v8;
    photoFeatures = self->_photoFeatures;
  }

  [(NSMutableArray *)photoFeatures addObject:featuresCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PeopleSuggesterShareEvent;
  v4 = [(PeopleSuggesterShareEvent *)&v8 description];
  dictionaryRepresentation = [(PeopleSuggesterShareEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v64 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    [dictionary setObject:deviceIdentifier forKey:@"deviceIdentifier"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v4 setObject:sessionId forKey:@"sessionId"];
  }

  trialIdentifier = self->_trialIdentifier;
  if (trialIdentifier)
  {
    dictionaryRepresentation = [(PeopleSuggesterTrialIdentifier *)trialIdentifier dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"trialIdentifier"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_version];
    [v4 setObject:v9 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_candidates count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_candidates, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v11 = self->_candidates;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v58;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v57 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"candidates"];
  }

  testKey = self->_testKey;
  if (testKey)
  {
    [v4 setObject:testKey forKey:@"testKey"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v19 = self->_madResponseStatus - 1;
    if (v19 >= 4)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_madResponseStatus];
    }

    else
    {
      v20 = off_1E7C26B18[v19];
    }

    [v4 setObject:v20 forKey:@"madResponseStatus"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_22:
      if ((has & 0x40) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_22;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFallbackFetch];
  [v4 setObject:v21 forKey:@"isFallbackFetch"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_23:
    if ((has & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_30:
  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSharePlayAvailable];
  [v4 setObject:v22 forKey:@"isSharePlayAvailable"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  appSharedFrom = self->_appSharedFrom;
  if (appSharedFrom >= 5)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_appSharedFrom];
  }

  else
  {
    v24 = off_1E7C26B38[appSharedFrom];
  }

  [v4 setObject:v24 forKey:@"appSharedFrom"];

LABEL_35:
  if ([(NSMutableArray *)self->_feedbackEvents count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_feedbackEvents, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v26 = self->_feedbackEvents;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v54;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v54 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation3 = [*(*(&v53 + 1) + 8 * j) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation3];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v28);
    }

    [v4 setObject:v25 forKey:@"feedbackEvents"];
  }

  p_typeOfContents = &self->_typeOfContents;
  if (self->_typeOfContents.count)
  {
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (self->_typeOfContents.count)
    {
      v34 = 0;
      do
      {
        v35 = p_typeOfContents->list[v34];
        if (v35 >= 0xE)
        {
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_typeOfContents->list[v34]];
        }

        else
        {
          v36 = off_1E7C26B60[v35];
        }

        [v33 addObject:v36];

        ++v34;
      }

      while (v34 < self->_typeOfContents.count);
    }

    [v4 setObject:v33 forKey:@"typeOfContent"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInPhoneCall];
    [v4 setObject:v37 forKey:@"isInPhoneCall"];
  }

  timeSinceLastShare = self->_timeSinceLastShare;
  if (timeSinceLastShare)
  {
    dictionaryRepresentation4 = [(PeopleSuggesterFeatureDouble *)timeSinceLastShare dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"timeSinceLastShare"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:self->_isScreenShot];
    [v4 setObject:v40 forKey:@"isScreenShot"];
  }

  if ([(NSMutableArray *)self->_photoFeatures count])
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_photoFeatures, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = self->_photoFeatures;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v50;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v50 != v45)
          {
            objc_enumerationMutation(v42);
          }

          dictionaryRepresentation5 = [*(*(&v49 + 1) + 8 * k) dictionaryRepresentation];
          [v41 addObject:dictionaryRepresentation5];
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v44);
    }

    [v4 setObject:v41 forKey:@"photoFeatures"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_candidates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_20:
      if ((has & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_20;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_21:
    if ((has & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_49:
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_22:
    PBDataWriterWriteInt32Field();
  }

LABEL_23:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_feedbackEvents;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  if (self->_typeOfContents.count)
  {
    v16 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v16;
    }

    while (v16 < self->_typeOfContents.count);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_timeSinceLastShare)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = self->_photoFeatures;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v19);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v22 = toCopy;
  if (self->_deviceIdentifier)
  {
    [toCopy setDeviceIdentifier:?];
    toCopy = v22;
  }

  if (self->_sessionId)
  {
    [v22 setSessionId:?];
    toCopy = v22;
  }

  if (self->_trialIdentifier)
  {
    [v22 setTrialIdentifier:?];
    toCopy = v22;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 28) = self->_version;
    *(toCopy + 120) |= 4u;
  }

  if ([(PeopleSuggesterShareEvent *)self candidatesCount])
  {
    [v22 clearCandidates];
    candidatesCount = [(PeopleSuggesterShareEvent *)self candidatesCount];
    if (candidatesCount)
    {
      v6 = candidatesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PeopleSuggesterShareEvent *)self candidatesAtIndex:i];
        [v22 addCandidates:v8];
      }
    }
  }

  if (self->_testKey)
  {
    [v22 setTestKey:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v22 + 16) = self->_madResponseStatus;
    *(v22 + 120) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_17:
      if ((has & 0x40) == 0)
      {
        goto LABEL_18;
      }

LABEL_43:
      *(v22 + 119) = self->_isSharePlayAvailable;
      *(v22 + 120) |= 0x40u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

  *(v22 + 116) = self->_isFallbackFetch;
  *(v22 + 120) |= 8u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_43;
  }

LABEL_18:
  if (has)
  {
LABEL_19:
    *(v22 + 8) = self->_appSharedFrom;
    *(v22 + 120) |= 1u;
  }

LABEL_20:
  if ([(PeopleSuggesterShareEvent *)self feedbackEventsCount])
  {
    [v22 clearFeedbackEvents];
    feedbackEventsCount = [(PeopleSuggesterShareEvent *)self feedbackEventsCount];
    if (feedbackEventsCount)
    {
      v11 = feedbackEventsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PeopleSuggesterShareEvent *)self feedbackEventsAtIndex:j];
        [v22 addFeedbackEvents:v13];
      }
    }
  }

  if ([(PeopleSuggesterShareEvent *)self typeOfContentsCount])
  {
    [v22 clearTypeOfContents];
    typeOfContentsCount = [(PeopleSuggesterShareEvent *)self typeOfContentsCount];
    if (typeOfContentsCount)
    {
      v15 = typeOfContentsCount;
      for (k = 0; k != v15; ++k)
      {
        [v22 addTypeOfContent:{-[PeopleSuggesterShareEvent typeOfContentAtIndex:](self, "typeOfContentAtIndex:", k)}];
      }
    }
  }

  v17 = v22;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v22 + 117) = self->_isInPhoneCall;
    *(v22 + 120) |= 0x10u;
  }

  if (self->_timeSinceLastShare)
  {
    [v22 setTimeSinceLastShare:?];
    v17 = v22;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v17[118] = self->_isScreenShot;
    v17[120] |= 0x20u;
  }

  if ([(PeopleSuggesterShareEvent *)self photoFeaturesCount])
  {
    [v22 clearPhotoFeatures];
    photoFeaturesCount = [(PeopleSuggesterShareEvent *)self photoFeaturesCount];
    if (photoFeaturesCount)
    {
      v19 = photoFeaturesCount;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(PeopleSuggesterShareEvent *)self photoFeaturesAtIndex:m];
        [v22 addPhotoFeatures:v21];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_deviceIdentifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_sessionId copyWithZone:zone];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(PeopleSuggesterTrialIdentifier *)self->_trialIdentifier copyWithZone:zone];
  v11 = *(v5 + 104);
  *(v5 + 104) = v10;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 112) = self->_version;
    *(v5 + 120) |= 4u;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = self->_candidates;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v44 + 1) + 8 * i) copyWithZone:zone];
        [v5 addCandidates:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_testKey copyWithZone:zone];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 64) = self->_madResponseStatus;
    *(v5 + 120) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_12:
      if ((has & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_36;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 116) = self->_isFallbackFetch;
  *(v5 + 120) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_36:
  *(v5 + 119) = self->_isSharePlayAvailable;
  *(v5 + 120) |= 0x40u;
  if (*&self->_has)
  {
LABEL_14:
    *(v5 + 32) = self->_appSharedFrom;
    *(v5 + 120) |= 1u;
  }

LABEL_15:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = self->_feedbackEvents;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v40 + 1) + 8 * j) copyWithZone:zone];
        [v5 addFeedbackEvents:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v23);
  }

  PBRepeatedInt32Copy();
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 117) = self->_isInPhoneCall;
    *(v5 + 120) |= 0x10u;
  }

  v27 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastShare copyWithZone:zone];
  v28 = *(v5 + 96);
  *(v5 + 96) = v27;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 118) = self->_isScreenShot;
    *(v5 + 120) |= 0x20u;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = self->_photoFeatures;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v37;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v36 + 1) + 8 * k) copyWithZone:{zone, v36}];
        [v5 addPhotoFeatures:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v31);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)deviceIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 10))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_54;
    }
  }

  trialIdentifier = self->_trialIdentifier;
  if (trialIdentifier | *(equalCopy + 13))
  {
    if (![(PeopleSuggesterTrialIdentifier *)trialIdentifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 120) & 4) == 0 || self->_version != *(equalCopy + 28))
    {
      goto LABEL_54;
    }
  }

  else if ((*(equalCopy + 120) & 4) != 0)
  {
    goto LABEL_54;
  }

  candidates = self->_candidates;
  if (candidates | *(equalCopy + 5) && ![(NSMutableArray *)candidates isEqual:?])
  {
    goto LABEL_54;
  }

  testKey = self->_testKey;
  if (testKey | *(equalCopy + 11))
  {
    if (![(NSString *)testKey isEqual:?])
    {
      goto LABEL_54;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 120) & 2) == 0 || self->_madResponseStatus != *(equalCopy + 16))
    {
      goto LABEL_54;
    }
  }

  else if ((*(equalCopy + 120) & 2) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 120) & 8) == 0)
    {
      goto LABEL_54;
    }

    if (self->_isFallbackFetch)
    {
      if ((*(equalCopy + 116) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(equalCopy + 116))
    {
      goto LABEL_54;
    }
  }

  else if ((*(equalCopy + 120) & 8) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 120) & 0x40) == 0)
    {
      goto LABEL_54;
    }

    if (self->_isSharePlayAvailable)
    {
      if ((*(equalCopy + 119) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(equalCopy + 119))
    {
      goto LABEL_54;
    }
  }

  else if ((*(equalCopy + 120) & 0x40) != 0)
  {
    goto LABEL_54;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 120) & 1) == 0 || self->_appSharedFrom != *(equalCopy + 8))
    {
      goto LABEL_54;
    }
  }

  else if (*(equalCopy + 120))
  {
    goto LABEL_54;
  }

  feedbackEvents = self->_feedbackEvents;
  if (feedbackEvents | *(equalCopy + 7) && ![(NSMutableArray *)feedbackEvents isEqual:?]|| !PBRepeatedInt32IsEqual())
  {
    goto LABEL_54;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 120) & 0x10) == 0)
    {
      goto LABEL_54;
    }

    if (self->_isInPhoneCall)
    {
      if ((*(equalCopy + 117) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(equalCopy + 117))
    {
      goto LABEL_54;
    }
  }

  else if ((*(equalCopy + 120) & 0x10) != 0)
  {
    goto LABEL_54;
  }

  timeSinceLastShare = self->_timeSinceLastShare;
  if (timeSinceLastShare | *(equalCopy + 12))
  {
    if (![(PeopleSuggesterFeatureDouble *)timeSinceLastShare isEqual:?])
    {
      goto LABEL_54;
    }

    has = self->_has;
  }

  if ((has & 0x20) == 0)
  {
    if ((*(equalCopy + 120) & 0x20) == 0)
    {
      goto LABEL_51;
    }

LABEL_54:
    v14 = 0;
    goto LABEL_55;
  }

  if ((*(equalCopy + 120) & 0x20) == 0)
  {
    goto LABEL_54;
  }

  if (self->_isScreenShot)
  {
    if ((*(equalCopy + 118) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (*(equalCopy + 118))
  {
    goto LABEL_54;
  }

LABEL_51:
  photoFeatures = self->_photoFeatures;
  if (photoFeatures | *(equalCopy + 9))
  {
    v14 = [(NSMutableArray *)photoFeatures isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_55:

  return v14;
}

- (unint64_t)hash
{
  v19 = [(NSString *)self->_deviceIdentifier hash];
  v18 = [(NSString *)self->_sessionId hash];
  v17 = [(PeopleSuggesterTrialIdentifier *)self->_trialIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v16 = 2654435761 * self->_version;
  }

  else
  {
    v16 = 0;
  }

  v15 = [(NSMutableArray *)self->_candidates hash];
  v13 = [(NSString *)self->_testKey hash];
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_madResponseStatus;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v4 = 2654435761 * self->_isFallbackFetch;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v5 = 0;
      if (*&self->_has)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v5 = 2654435761 * self->_isSharePlayAvailable;
  if (*&self->_has)
  {
LABEL_8:
    v6 = 2654435761 * self->_appSharedFrom;
    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
LABEL_13:
  v7 = [(NSMutableArray *)self->_feedbackEvents hash];
  v8 = PBRepeatedInt32Hash();
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = 2654435761 * self->_isInPhoneCall;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PeopleSuggesterFeatureDouble *)self->_timeSinceLastShare hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_isScreenShot;
  }

  else
  {
    v11 = 0;
  }

  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSMutableArray *)self->_photoFeatures hash];
}

- (void)mergeFrom:(id)from
{
  v43 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 6))
  {
    [(PeopleSuggesterShareEvent *)self setDeviceIdentifier:?];
  }

  if (*(fromCopy + 10))
  {
    [(PeopleSuggesterShareEvent *)self setSessionId:?];
  }

  trialIdentifier = self->_trialIdentifier;
  v6 = *(fromCopy + 13);
  if (trialIdentifier)
  {
    if (v6)
    {
      [(PeopleSuggesterTrialIdentifier *)trialIdentifier mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PeopleSuggesterShareEvent *)self setTrialIdentifier:?];
  }

  if ((*(fromCopy + 120) & 4) != 0)
  {
    self->_version = *(fromCopy + 28);
    *&self->_has |= 4u;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = *(fromCopy + 5);
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PeopleSuggesterShareEvent *)self addCandidates:*(*(&v36 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 11))
  {
    [(PeopleSuggesterShareEvent *)self setTestKey:?];
  }

  v12 = *(fromCopy + 120);
  if ((v12 & 2) != 0)
  {
    self->_madResponseStatus = *(fromCopy + 16);
    *&self->_has |= 2u;
    v12 = *(fromCopy + 120);
    if ((v12 & 8) == 0)
    {
LABEL_23:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }
  }

  else if ((*(fromCopy + 120) & 8) == 0)
  {
    goto LABEL_23;
  }

  self->_isFallbackFetch = *(fromCopy + 116);
  *&self->_has |= 8u;
  v12 = *(fromCopy + 120);
  if ((v12 & 0x40) == 0)
  {
LABEL_24:
    if ((v12 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_43:
  self->_isSharePlayAvailable = *(fromCopy + 119);
  *&self->_has |= 0x40u;
  if (*(fromCopy + 120))
  {
LABEL_25:
    self->_appSharedFrom = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

LABEL_26:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = *(fromCopy + 7);
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(PeopleSuggesterShareEvent *)self addFeedbackEvents:*(*(&v32 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v15);
  }

  typeOfContentsCount = [fromCopy typeOfContentsCount];
  if (typeOfContentsCount)
  {
    v19 = typeOfContentsCount;
    for (k = 0; k != v19; ++k)
    {
      -[PeopleSuggesterShareEvent addTypeOfContent:](self, "addTypeOfContent:", [fromCopy typeOfContentAtIndex:k]);
    }
  }

  if ((*(fromCopy + 120) & 0x10) != 0)
  {
    self->_isInPhoneCall = *(fromCopy + 117);
    *&self->_has |= 0x10u;
  }

  timeSinceLastShare = self->_timeSinceLastShare;
  v22 = *(fromCopy + 12);
  if (timeSinceLastShare)
  {
    if (v22)
    {
      [(PeopleSuggesterFeatureDouble *)timeSinceLastShare mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(PeopleSuggesterShareEvent *)self setTimeSinceLastShare:?];
  }

  if ((*(fromCopy + 120) & 0x20) != 0)
  {
    self->_isScreenShot = *(fromCopy + 118);
    *&self->_has |= 0x20u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = *(fromCopy + 9);
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(PeopleSuggesterShareEvent *)self addPhotoFeatures:*(*(&v28 + 1) + 8 * m), v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v25);
  }
}

@end