@interface KNRecording
+ (id)p_correctedNavigationEventsFromNavigationEventTrack:(id)track;
+ (id)p_movieEventsDerivedFromNavigationEvents:(id)events;
- (KNRecording)initWithContext:(id)context;
- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration;
- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration modificationDate:(id)date;
- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration syncState:(id)state modificationDate:(id)date correctionHistory:(id)history;
- (id)description;
- (id)movieSegmentToTrimWhenReplacingAfterTime:(double)time trimDuration:(double *)duration;
- (id)recordingByAddingMissingEventsForRadar49654305;
- (id)recordingByMarkingAsOutOfSyncWithShow:(BOOL)show withLocalOutOfSyncToken:(id)token restoringModificationDate:(id)date;
- (id)recordingByReplacingAfterTime:(double)time withRecording:(id)recording trimmedMovieSegment:(id)segment;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)slideNodeWasAddedToDocument:(id)document;
- (void)slideNodeWillBeRemovedFromDocument:(id)document;
@end

@implementation KNRecording

- (id)recordingByAddingMissingEventsForRadar49654305
{
  eventTracks = [(KNRecording *)self eventTracks];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_275E334C0;
  v55 = sub_275E334D0;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_275E334C0;
  v45 = sub_275E334D0;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0x7FFFFFFFFFFFFFFFLL;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_275E334D8;
  v36[3] = &unk_27A699628;
  v36[4] = &v51;
  v36[5] = &v47;
  v36[6] = &v41;
  v36[7] = &v37;
  [eventTracks enumerateObjectsUsingBlock:v36];
  v4 = v42[5];
  if (v4)
  {
    events = [v4 events];
    if ([events count])
    {

LABEL_19:
      selfCopy = self;
      goto LABEL_20;
    }

    v6 = v52[5];

    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else if (!v52[5])
  {
    goto LABEL_19;
  }

  context = [(KNRecording *)self context];
  v7 = [objc_opt_class() p_correctedNavigationEventsFromNavigationEventTrack:v52[5]];
  v8 = [objc_opt_class() p_movieEventsDerivedFromNavigationEvents:v7];
  if ([v8 count] || (objc_msgSend(v52[5], "events"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqual:", v9), v9, (v10 & 1) == 0))
  {
    v34 = v8;
    v12 = [eventTracks mutableCopy];
    v32 = [[KNRecordingEventTrack alloc] initWithContext:context type:@"com.apple.Keynote.recordingEventTrack-navigation" events:v7];
    v13 = v48[3];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = MEMORY[0x277D81150];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRecording(KNRecordingMovieEventTrackUpgradeAdditions) recordingByAddingMissingEventsForRadar49654305]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecording+KNRecordingMovieEventTrackUpgradeAdditions.m"];
      [v14 handleFailureInFunction:v15 file:v16 lineNumber:63 isFatal:0 description:{"If a navigation event track exists, it should have a valid index"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      v13 = v48[3];
    }

    [v12 setObject:v32 atIndexedSubscript:{v13, v32}];
    v17 = [[KNRecordingEventTrack alloc] initWithContext:context type:@"com.apple.iwork.Keynote.recordingEventTrack-movie" events:v8];
    if (v38[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v48[3];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = MEMORY[0x277D81150];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRecording(KNRecordingMovieEventTrackUpgradeAdditions) recordingByAddingMissingEventsForRadar49654305]"];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecording+KNRecordingMovieEventTrackUpgradeAdditions.m"];
        [v19 handleFailureInFunction:v20 file:v21 lineNumber:70 isFatal:0 description:{"If a navigation event track exists, it should have a valid index"}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
        v18 = v48[3];
      }

      [v12 insertObject:v17 atIndex:v18 + 1];
    }

    else
    {
      [v12 setObject:v17 atIndexedSubscript:?];
    }

    v22 = v7;
    correctionHistory = [(KNRecording *)self correctionHistory];
    correctionHistoryWithAddedMissingEventsForRadar49654305 = [correctionHistory correctionHistoryWithAddedMissingEventsForRadar49654305];

    v25 = [KNRecording alloc];
    movieTrack = [(KNRecording *)self movieTrack];
    objc_msgSend_duration(self);
    v28 = v27;
    syncState = [(KNRecording *)self syncState];
    modificationDate = [(KNRecording *)self modificationDate];
    selfCopy = [(KNRecording *)v25 initWithContext:context eventTracks:v12 movieTrack:movieTrack duration:syncState syncState:modificationDate modificationDate:correctionHistoryWithAddedMissingEventsForRadar49654305 correctionHistory:v28];

    v7 = v22;
    v8 = v34;
  }

  else
  {
    selfCopy = 0;
  }

  if (!selfCopy)
  {
    goto LABEL_19;
  }

LABEL_20:
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  return selfCopy;
}

+ (id)p_correctedNavigationEventsFromNavigationEventTrack:(id)track
{
  v63 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  events = [trackCopy events];
  v5 = [events countByEnumeratingWithState:&v49 objects:v62 count:16];
  v32 = trackCopy;
  if (!v5)
  {
    v40 = 0;
    v7 = 0;
    goto LABEL_38;
  }

  v40 = 0;
  v6 = 0;
  v7 = 0;
  v36 = *v50;
  obj = events;
  do
  {
    v8 = 0;
    v37 = v5;
    do
    {
      if (*v50 != v36)
      {
        objc_enumerationMutation(obj);
      }

      context = objc_autoreleasePoolPush();
      objc_opt_class();
      v9 = TSUCheckedDynamicCast();
      v10 = v9;
      if (v9)
      {
        [v9 startTime];
        v12 = v11;
        targetSlideNode = [v10 targetSlideNode];
        targetEventIndex = [v10 targetEventIndex];
        animationPhase = [v10 animationPhase];
        if (targetSlideNode != v7)
        {
          v39 = targetSlideNode;

          slide = [v39 slide];
          v13 = [KNAnimatedSlideModel alloc];
          buildChunks = [slide buildChunks];
          infosToDisplay = [slide infosToDisplay];
          v16 = [(KNAnimatedSlideModel *)v13 initWithBuildChunks:buildChunks infos:infosToDisplay session:0 animatedSlideView:0];

          *(v58 + 24) = 0;
          v54[3] = 0.0;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          infosToDisplay2 = [slide infosToDisplay];
          v18 = [infosToDisplay2 countByEnumeratingWithState:&v45 objects:v61 count:16];
          if (v18)
          {
            v19 = *v46;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v46 != v19)
                {
                  objc_enumerationMutation(infosToDisplay2);
                }

                objc_opt_class();
                v21 = TSUDynamicCast();
                if (v21)
                {
                  v22 = [(KNAnimatedSlideModel *)v16 animatedBuildForInfo:v21 atEvent:0];
                  isInitialAmbientBuild = [v22 isInitialAmbientBuild];

                  if (isInitialAmbientBuild)
                  {

                    v24 = MEMORY[0x277D85DD0];
                    *(v58 + 24) = 1;
                    v44[0] = v24;
                    v44[1] = 3221225472;
                    v44[2] = sub_275E33BC8;
                    v44[3] = &unk_27A699650;
                    v44[4] = &v57;
                    v44[5] = &v53;
                    [(KNAnimatedSlideModel *)v16 enumerateAnimatedBuildsAndTimeRangesAtIndex:0 usingBlock:v44];

                    v7 = v39;
                    goto LABEL_21;
                  }
                }
              }

              v18 = [infosToDisplay2 countByEnumeratingWithState:&v45 objects:v61 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v7 = v39;
LABEL_19:
          [v34 addObject:v10];
          v6 = 0;
LABEL_33:
          v29 = v10;

          v40 = v29;
          goto LABEL_34;
        }

        if ((v6 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_21:
        if (*(v58 + 24) == 1)
        {
          if (targetEventIndex)
          {
            v25 = [[KNRecordingNavigationEvent alloc] initWithStartTime:targetSlideNode targetSlideNode:targetEventIndex + 1 targetEventIndex:animationPhase animationPhase:v12];
            [v34 addObject:v25];
            goto LABEL_31;
          }

          [v34 addObject:v10];
          if ((animationPhase & 0xFFFFFFFFFFFFFFFDLL) == 0)
          {
            v25 = [[KNRecordingNavigationEvent alloc] initWithStartTime:v7 targetSlideNode:1 targetEventIndex:1 animationPhase:v12];
            [v34 addObject:v25];
            v28 = [[KNRecordingNavigationEvent alloc] initWithStartTime:v7 targetSlideNode:1 targetEventIndex:2 animationPhase:v12];
            [v34 addObject:v28];

LABEL_31:
          }
        }

        else
        {
          if (animationPhase == 1 && targetEventIndex == 1)
          {
            v26 = v54[3];
            if (v26 > 0.0)
            {
              [v40 startTime];
              v25 = [[KNRecordingNavigationEvent alloc] initWithStartTime:targetSlideNode targetSlideNode:1 targetEventIndex:1 animationPhase:fmax(v12 - v26, v27)];
              [v34 addObject:v25];
              goto LABEL_31;
            }
          }

          [v34 addObject:v10];
        }

        v6 = 1;
        goto LABEL_33;
      }

LABEL_34:

      objc_autoreleasePoolPop(context);
      ++v8;
    }

    while (v8 != v37);
    events = obj;
    v5 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
  }

  while (v5);
LABEL_38:

  v30 = v34;
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  return v30;
}

+ (id)p_movieEventsDerivedFromNavigationEvents:(id)events
{
  v66 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = eventsCopy;
  v41 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v41)
  {
    v43 = 0;
    v5 = 0;
    v6 = 0;
    v40 = *v61;
    v38 = v51;
    while (1)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v60 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        [v8 startTime];
        v11 = v10;
        targetSlideNode = [v8 targetSlideNode];
        targetEventIndex = [v8 targetEventIndex];
        animationPhase = [v8 animationPhase];
        if (targetSlideNode == v6 && (!animationPhase ? (v15 = targetEventIndex == v5) : (v15 = 1), v15 && (animationPhase == 1 ? (v16 = targetEventIndex == v5 + 1) : (v16 = 1), v16)))
        {
          if (animationPhase != 1)
          {
            v5 = targetEventIndex;
          }
        }

        else
        {
          v44 = animationPhase;
          v45 = v9;
          v48 = targetEventIndex;
          v49 = targetSlideNode;
          v46 = v5;
          v47 = v6;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v17 = v42;
          v18 = [v17 countByEnumeratingWithState:&v56 objects:v64 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v57;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v57 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v56 + 1) + 8 * j);
                v23 = [[KNRecordingMovieEvent alloc] initWithStartTime:v22 movieInfo:0 movieSlideNodeUUID:0 didPlayAcrossSlides:2 movieEventType:v11 movieEventValue:0.0];
                [v4 addObject:v23];
                v24 = [[KNRecordingMovieEvent alloc] initWithStartTime:v22 movieInfo:0 movieSlideNodeUUID:0 didPlayAcrossSlides:4 movieEventType:v11 movieEventValue:NAN];
                [v4 addObject:v24];
              }

              v19 = [v17 countByEnumeratingWithState:&v56 objects:v64 count:16];
            }

            while (v19);
          }

          v6 = v47;
          targetSlideNode = v49;

          [v17 removeAllObjects];
          animationPhase = v44;
          v5 = v46;
          v25 = v48 != v46 || v49 != v47;
          targetEventIndex = v48;
          if (v44 != 1 && v25)
          {
            v5 = v48;
          }

          if (v49 == v47)
          {
            v9 = v45;
          }

          else
          {
            v9 = v45;
            if (v44 != 1 && v25)
            {
              v26 = v49;

              slide = [v26 slide];
              v28 = [KNAnimatedSlideModel alloc];
              buildChunks = [slide buildChunks];
              infosToDisplay = [slide infosToDisplay];
              v31 = [(KNAnimatedSlideModel *)v28 initWithBuildChunks:buildChunks infos:infosToDisplay session:0 animatedSlideView:0];

              v6 = v26;
              v43 = v31;
              v5 = v48;
              targetSlideNode = v49;
LABEL_45:

              goto LABEL_46;
            }
          }
        }

        if (animationPhase == 1 && targetSlideNode == v6 && targetEventIndex == v5 + 1)
        {
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v51[0] = sub_275E34148;
          v51[1] = &unk_27A699678;
          v34 = v43;
          v52 = v34;
          v35 = v42;
          v55 = v11;
          v53 = v35;
          v54 = v4;
          v43 = v34;
          [v34 enumerateAnimatedBuildsAndTimeRangesAtIndex:v5 usingBlock:v50];

          slide = v52;
          goto LABEL_45;
        }

LABEL_46:

        objc_autoreleasePoolPop(v9);
      }

      v41 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (!v41)
      {
        goto LABEL_50;
      }
    }
  }

  v43 = 0;
  v6 = 0;
LABEL_50:

  v36 = v4;
  return v4;
}

- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration syncState:(id)state modificationDate:(id)date correctionHistory:(id)history
{
  tracksCopy = tracks;
  trackCopy = track;
  stateCopy = state;
  dateCopy = date;
  historyCopy = history;
  v31.receiver = self;
  v31.super_class = KNRecording;
  v21 = [(KNRecording *)&v31 initWithContext:context];
  if (v21)
  {
    v22 = [tracksCopy copy];
    eventTracks = v21->_eventTracks;
    v21->_eventTracks = v22;

    objc_storeStrong(&v21->_movieTrack, track);
    v21->_duration = duration;
    v24 = [stateCopy copy];
    syncState = v21->_syncState;
    v21->_syncState = v24;

    v26 = [dateCopy copy];
    modificationDate = v21->_modificationDate;
    v21->_modificationDate = v26;

    v28 = [historyCopy copy];
    correctionHistory = v21->_correctionHistory;
    v21->_correctionHistory = v28;
  }

  return v21;
}

- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration modificationDate:(id)date
{
  dateCopy = date;
  trackCopy = track;
  tracksCopy = tracks;
  contextCopy = context;
  v16 = [[KNRecordingSyncState alloc] initWithOutOfSyncToken:0 canClearOutOfSyncToken:1];
  v17 = objc_alloc_init(KNRecordingCorrectionHistory);
  v18 = [(KNRecording *)self initWithContext:contextCopy eventTracks:tracksCopy movieTrack:trackCopy duration:v16 syncState:dateCopy modificationDate:v17 correctionHistory:duration];

  return v18;
}

- (KNRecording)initWithContext:(id)context eventTracks:(id)tracks movieTrack:(id)track duration:(double)duration
{
  v10 = MEMORY[0x277CBEAA8];
  trackCopy = track;
  tracksCopy = tracks;
  contextCopy = context;
  date = [v10 date];
  v15 = [(KNRecording *)self initWithContext:contextCopy eventTracks:tracksCopy movieTrack:trackCopy duration:date modificationDate:duration];

  return v15;
}

- (KNRecording)initWithContext:(id)context
{
  v4 = MEMORY[0x277CBEA60];
  contextCopy = context;
  array = [v4 array];
  v7 = [KNRecordingMovieTrack alloc];
  v8 = [(KNRecordingMovieTrack *)v7 initWithContext:contextCopy movieSegments:MEMORY[0x277CBEBF8]];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [(KNRecording *)self initWithContext:contextCopy eventTracks:array movieTrack:v8 duration:date modificationDate:0.0];

  return v10;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D811A8]) initWithObject:self];
  eventTracks = [(KNRecording *)self eventTracks];
  v5 = [eventTracks description];
  [v3 addField:@"eventTracks" value:v5];

  movieTrack = [(KNRecording *)self movieTrack];
  v7 = [movieTrack description];
  [v3 addField:@"movieTrack" value:v7];

  v8 = MEMORY[0x277CCABB0];
  objc_msgSend_duration(self);
  v9 = [v8 numberWithDouble:?];
  v10 = [v9 description];
  [v3 addField:@"duration" value:v10];

  syncState = [(KNRecording *)self syncState];
  v12 = [syncState description];
  [v3 addField:@"syncState" value:v12];

  modificationDate = [(KNRecording *)self modificationDate];
  v14 = [modificationDate description];
  [v3 addField:@"modificationDate" value:v14];

  correctionHistory = [(KNRecording *)self correctionHistory];
  v16 = [correctionHistory description];
  [v3 addField:@"correctionHistory" value:v16];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (id)movieSegmentToTrimWhenReplacingAfterTime:(double)time trimDuration:(double *)duration
{
  movieTrack = [(KNRecording *)self movieTrack];
  v7 = [movieTrack movieSegmentToTrimWhenReplacingAfterTime:duration trimDuration:time];

  return v7;
}

- (id)recordingByReplacingAfterTime:(double)time withRecording:(id)recording trimmedMovieSegment:(id)segment
{
  v68 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  segmentCopy = segment;
  context = [(KNRecording *)self context];
  selfCopy = self;
  eventTracks = [(KNRecording *)self eventTracks];
  v51 = recordingCopy;
  eventTracks2 = [recordingCopy eventTracks];
  v11 = [eventTracks2 mutableCopy];

  v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventTracks, "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = eventTracks;
  v12 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v63;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v62 + 1) + 8 * i);
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = sub_275E3A764;
        v61[3] = &unk_27A6996C8;
        v61[4] = v16;
        v17 = [v11 indexOfObjectPassingTest:v61];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v17;
          v19 = [v11 objectAtIndexedSubscript:v17];
          v20 = [v16 eventTrackByReplacingSegmentAfterTime:v19 withEventTrack:time];
          [v56 addObject:v20];

          [v11 removeObjectAtIndex:v18];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v13);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = v11;
  v22 = [v21 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v58;
    v25 = MEMORY[0x277CBEBF8];
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v58 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v57 + 1) + 8 * j);
        v28 = [KNRecordingEventTrack alloc];
        type = [v27 type];
        v30 = [(KNRecordingEventTrack *)v28 initWithContext:context type:type events:v25];

        v31 = [(KNRecordingEventTrack *)v30 eventTrackByReplacingSegmentAfterTime:v27 withEventTrack:time];
        [v56 addObject:v31];
      }

      v23 = [v21 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v23);
  }

  movieTrack = [(KNRecording *)selfCopy movieTrack];
  movieTrack2 = [v51 movieTrack];
  v34 = movieTrack2;
  if (movieTrack || !movieTrack2)
  {
    v36 = segmentCopy;
    if (movieTrack && !movieTrack2)
    {
      v37 = [KNRecordingMovieTrack alloc];
      v34 = [(KNRecordingMovieTrack *)v37 initWithContext:context movieSegments:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v35 = [KNRecordingMovieTrack alloc];
    movieTrack = [(KNRecordingMovieTrack *)v35 initWithContext:context movieSegments:MEMORY[0x277CBEBF8]];
    v36 = segmentCopy;
  }

  v49 = v34;
  v48 = [(KNRecordingMovieTrack *)movieTrack movieTrackByReplacingAfterTime:v34 withMovieTrack:v36 trimmedMovieSegment:time];
  modificationDate = [v51 modificationDate];
  modificationDate2 = [(KNRecording *)selfCopy modificationDate];
  v40 = modificationDate2;
  if (modificationDate2 && [modificationDate2 compare:modificationDate] >= 1)
  {
    v41 = v40;

    modificationDate = v41;
  }

  v42 = [KNRecording alloc];
  objc_msgSend_duration(v51);
  v44 = v43 + time;
  v45 = [[KNRecordingSyncState alloc] initWithOutOfSyncToken:0 canClearOutOfSyncToken:1];
  correctionHistory = [(KNRecording *)selfCopy correctionHistory];
  v54 = [(KNRecording *)v42 initWithContext:context eventTracks:v56 movieTrack:v48 duration:v45 syncState:modificationDate modificationDate:correctionHistory correctionHistory:v44];

  return v54;
}

- (id)recordingByMarkingAsOutOfSyncWithShow:(BOOL)show withLocalOutOfSyncToken:(id)token restoringModificationDate:(id)date
{
  showCopy = show;
  tokenCopy = token;
  dateCopy = date;
  if (dateCopy && showCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRecording recordingByMarkingAsOutOfSyncWithShow:withLocalOutOfSyncToken:restoringModificationDate:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecording.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:183 isFatal:0 description:"A modification date should only be restored on a recording when it is being marked as in sync with the show."];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if (showCopy)
  {
  }

  else if (dateCopy)
  {
    goto LABEL_8;
  }

  dateCopy = [MEMORY[0x277CBEAA8] date];
LABEL_8:
  v13 = [(KNRecordingSyncState *)self->_syncState recordingSyncStateByMarkingRecordingAsOutOfSync:showCopy withLocalOutOfSyncToken:tokenCopy];
  v14 = [KNRecording alloc];
  context = [(KNRecording *)self context];
  eventTracks = [(KNRecording *)self eventTracks];
  movieTrack = [(KNRecording *)self movieTrack];
  objc_msgSend_duration(self);
  v19 = v18;
  correctionHistory = [(KNRecording *)self correctionHistory];
  v21 = [(KNRecording *)v14 initWithContext:context eventTracks:eventTracks movieTrack:movieTrack duration:v13 syncState:dateCopy modificationDate:correctionHistory correctionHistory:v19];

  return v21;
}

- (void)slideNodeWasAddedToDocument:(id)document
{
  v15 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  eventTracks = [(KNRecording *)self eventTracks];
  v6 = [eventTracks countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(eventTracks);
        }

        [*(*(&v10 + 1) + 8 * v9++) slideNodeWasAddedToDocument:documentCopy];
      }

      while (v7 != v9);
      v7 = [eventTracks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)slideNodeWillBeRemovedFromDocument:(id)document
{
  v15 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  eventTracks = [(KNRecording *)self eventTracks];
  v6 = [eventTracks countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(eventTracks);
        }

        [*(*(&v10 + 1) + 8 * v9++) slideNodeWillBeRemovedFromDocument:documentCopy];
      }

      while (v7 != v9);
      v7 = [eventTracks countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  eventTracks = [(KNRecording *)self eventTracks];
  if (eventTracks)
  {
    [archiverCopy setStrongReferenceArray:eventTracks message:archive + 24];
  }

  movieTrack = [(KNRecording *)self movieTrack];
  if (movieTrack)
  {
    *(archive + 4) |= 1u;
    v8 = *(archive + 6);
    if (!v8)
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277C8F050](v9);
      *(archive + 6) = v8;
    }

    [archiverCopy setStrongReference:movieTrack message:v8];
  }

  objc_msgSend_duration(self);
  *(archive + 4) |= 0x10u;
  *(archive + 10) = v10;
  modificationDate = [(KNRecording *)self modificationDate];
  if (modificationDate)
  {
    *(archive + 4) |= 2u;
    v12 = *(archive + 7);
    if (!v12)
    {
      v13 = *(archive + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8EFE0](v13);
      *(archive + 7) = v12;
    }

    [modificationDate tsp_saveToMessage:v12];
  }

  syncState = self->_syncState;
  if (syncState)
  {
    *(archive + 4) |= 4u;
    v15 = *(archive + 8);
    if (!v15)
    {
      v16 = *(archive + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_275E20C04(v16);
      *(archive + 8) = v15;
    }

    [(KNRecordingSyncState *)syncState saveToArchive:v15 archiver:archiverCopy];
  }

  correctionHistory = self->_correctionHistory;
  *(archive + 4) |= 8u;
  v18 = *(archive + 9);
  if (!v18)
  {
    v19 = *(archive + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = sub_275E20CD4(v19);
    *(archive + 9) = v18;
  }

  [(KNRecordingCorrectionHistory *)correctionHistory saveToMessage:v18 archiver:archiverCopy];
  [archiverCopy setIgnoreAndPreserveRuleForField:7 message:archive];
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = [unarchiverCopy messageWithDescriptor:off_2812EA908[70]];

  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = sub_275E555D4;
  v33 = &unk_27A697A10;
  selfCopy = self;
  v6 = unarchiverCopy;
  [v6 readRepeatedReferenceMessage:v5 + 24 class:objc_opt_class() protocol:0 completion:&v30];

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = *(v5 + 48);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_275E555EC;
    v28 = &unk_27A699850;
    selfCopy2 = self;
    v9 = v6;
    [v9 readReferenceMessage:v8 class:objc_opt_class() protocol:0 completion:&v25];

    v7 = *(v5 + 16);
  }

  self->_duration = *(v5 + 80);
  if ((v7 & 2) != 0)
  {
    v10 = objc_alloc(MEMORY[0x277CBEAA8]);
    if (*(v5 + 56))
    {
      v11 = *(v5 + 56);
    }

    else
    {
      v11 = MEMORY[0x277D809C0];
    }

    v12 = [v10 tsp_initWithMessage:{v11, v25, v26, v27, v28, selfCopy2, v30, v31, v32, v33, selfCopy}];
    modificationDate = self->_modificationDate;
    self->_modificationDate = v12;

    v7 = *(v5 + 16);
  }

  if ((v7 & 4) != 0)
  {
    v18 = [KNRecordingSyncState alloc];
    if (*(v5 + 64))
    {
      v19 = *(v5 + 64);
    }

    else
    {
      v19 = &qword_2812EB918;
    }

    selfCopy2 = [(KNRecordingSyncState *)v18 initWithArchive:v19 unarchiver:v6, v25, v26, v27, v28, selfCopy2];
  }

  else
  {
    if ((v7 & 0x20) == 0 || *(v5 + 88))
    {
      v14 = [KNRecordingSyncState alloc];
      uUID = [MEMORY[0x277CCAD78] UUID];
      v16 = [(KNRecordingSyncState *)v14 initWithOutOfSyncToken:uUID canClearOutOfSyncToken:0];
      syncState = self->_syncState;
      self->_syncState = v16;

      goto LABEL_17;
    }

    selfCopy2 = [[KNRecordingSyncState alloc] initWithOutOfSyncToken:0 canClearOutOfSyncToken:1];
  }

  uUID = self->_syncState;
  self->_syncState = selfCopy2;
LABEL_17:

  if ((*(v5 + 16) & 8) != 0)
  {
    v22 = [KNRecordingCorrectionHistory alloc];
    if (*(v5 + 72))
    {
      v23 = *(v5 + 72);
    }

    else
    {
      v23 = &qword_2812EB940;
    }

    selfCopy22 = [(KNRecordingCorrectionHistory *)v22 initWithMessage:v23 unarchiver:v6, v25, v26, v27, v28, selfCopy2];
  }

  else
  {
    selfCopy22 = objc_alloc_init(KNRecordingCorrectionHistory);
  }

  correctionHistory = self->_correctionHistory;
  self->_correctionHistory = selfCopy22;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275E556C0 descriptor:off_2812EA908[70]];

  [(KNRecording *)self saveToArchive:v4 archiver:archiverCopy];
}

@end