@interface PTEffectReactionProvider
- (BOOL)runGestureDetectionForTimeStamp:(id *)stamp;
- (PTEffectReactionProvider)initWithEffectDescriptor:(id)descriptor sharedResources:(id)resources externalHandDetectionsEnabled:(BOOL)enabled;
- (void)gesturesAvailable:(id)available forTimeStamp:(id *)stamp;
- (void)updateWithFrame:(__CVBuffer *)frame withTimeStamp:(id *)stamp withRotationDegrees:(int)degrees withDetectedHands:(id)hands withDetectedFaces:(id)faces asyncWork:(id)work;
@end

@implementation PTEffectReactionProvider

- (PTEffectReactionProvider)initWithEffectDescriptor:(id)descriptor sharedResources:(id)resources externalHandDetectionsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  descriptorCopy = descriptor;
  resourcesCopy = resources;
  v36.receiver = self;
  v36.super_class = PTEffectReactionProvider;
  v10 = [(PTEffectReactionProvider *)&v36 init];
  v11 = v10;
  if (v10)
  {
    v10->_gestureDetectionFPS = 5.0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    personIdentifierToPerson = v11->_personIdentifierToPerson;
    v11->_personIdentifierToPerson = dictionary;

    v11->_globalTriggerID = 0;
    objc_msgSend_colorSize(descriptorCopy);
    v15 = v14;
    v17 = v16;
    handGestureDetector = [resourcesCopy handGestureDetector];
    if (!handGestureDetector)
    {
      goto LABEL_9;
    }

    v19 = handGestureDetector;
    handGestureDetector2 = [resourcesCopy handGestureDetector];
    [handGestureDetector2 frameSize];
    if (v21 == v15)
    {
      handGestureDetector3 = [resourcesCopy handGestureDetector];
      [handGestureDetector3 frameSize];
      if (v23 == v17)
      {
        handGestureDetector4 = [resourcesCopy handGestureDetector];
        externalCamera = [handGestureDetector4 externalCamera];
        externalCamera2 = [descriptorCopy externalCamera];

        if (externalCamera == externalCamera2)
        {
          handGestureDetector5 = [resourcesCopy handGestureDetector];
          gestureDetector = v11->_gestureDetector;
          v11->_gestureDetector = handGestureDetector5;

LABEL_10:
          [(PTHandGestureDetector *)v11->_gestureDetector setDelegate:v11];
          v33 = MEMORY[0x277CC0898];
          *&v11->_lastFrameTimeStamp.value = *MEMORY[0x277CC0898];
          v11->_lastFrameTimeStamp.epoch = *(v33 + 16);
          v34 = v11;
          goto LABEL_11;
        }

LABEL_9:
        v29 = [PTHandGestureDetector alloc];
        asyncInitQueue = [descriptorCopy asyncInitQueue];
        v31 = -[PTHandGestureDetector initWithFrameSize:asyncInitQueue:externalHandDetectionsEnabled:externalCamera:](v29, "initWithFrameSize:asyncInitQueue:externalHandDetectionsEnabled:externalCamera:", asyncInitQueue, enabledCopy, [descriptorCopy externalCamera], v15, v17);
        v32 = v11->_gestureDetector;
        v11->_gestureDetector = v31;

        [resourcesCopy setHandGestureDetector:v11->_gestureDetector];
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_11:

  return v11;
}

- (BOOL)runGestureDetectionForTimeStamp:(id *)stamp
{
  if ((stamp->var2 & 1) == 0)
  {
    v3 = _PTLogSystem(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PTEffectReactionProvider runGestureDetectionForTimeStamp:v3];
    }

    return 1;
  }

  if ((self->_lastFrameTimeStamp.flags & 1) == 0)
  {
    return 1;
  }

  lhs = *stamp;
  lastFrameTimeStamp = self->_lastFrameTimeStamp;
  CMTimeSubtract(&time, &lhs, &lastFrameTimeStamp);
  v5 = CMTimeGetSeconds(&time) * 1000.0;
  gestureDetectionFPS = self->_gestureDetectionFPS;
  if (gestureDetectionFPS < 0.01)
  {
    gestureDetectionFPS = 0.01;
  }

  return (1000.0 / fminf(gestureDetectionFPS, 30.0)) <= v5;
}

- (void)updateWithFrame:(__CVBuffer *)frame withTimeStamp:(id *)stamp withRotationDegrees:(int)degrees withDetectedHands:(id)hands withDetectedFaces:(id)faces asyncWork:(id)work
{
  v10 = *&degrees;
  handsCopy = hands;
  facesCopy = faces;
  workCopy = work;
  v19 = *stamp;
  if ([(PTEffectReactionProvider *)self runGestureDetectionForTimeStamp:&v19])
  {
    gestureDetector = self->_gestureDetector;
    v19 = *stamp;
    if ([(PTHandGestureDetector *)gestureDetector detectGesturesFromBuffer:frame timeStamp:&v19 withRotationDegrees:v10 withDetectedHands:handsCopy withDetectedFaces:facesCopy asyncWork:workCopy])
    {
      v18 = *&stamp->var0;
      self->_lastFrameTimeStamp.epoch = stamp->var3;
      *&self->_lastFrameTimeStamp.value = v18;
    }
  }
}

- (void)gesturesAvailable:(id)available forTimeStamp:(id *)stamp
{
  v94 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  [(PTEffectReactionProvider *)self setLatestGestures:availableCopy];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  selfCopy = self;
  allValues = [(NSMutableDictionary *)self->_personIdentifierToPerson allValues];
  v7 = [allValues countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v86;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v86 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v85 + 1) + 8 * i) setNumFramesInactive:{objc_msgSend(*(*(&v85 + 1) + 8 * i), "numFramesInactive") + 1}];
      }

      v8 = [allValues countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v8);
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(availableCopy, "count")}];
  if ([availableCopy count])
  {
    v12 = 0;
    v13 = MEMORY[0x277CBEC28];
    do
    {
      [v11 addObject:v13];
      ++v12;
    }

    while ([availableCopy count] > v12);
  }

  v15 = selfCopy;
  v73 = v11;
  if ([availableCopy count])
  {
    v16 = 0;
    v17 = 1;
    *&v14 = 67109120;
    v70 = v14;
    do
    {
      v18 = [v11 objectAtIndexedSubscript:{v16, v70}];
      intValue = [v18 intValue];

      if (intValue)
      {
        ++v16;
      }

      else
      {
        personIdentifierToPerson = v15->_personIdentifierToPerson;
        v21 = [availableCopy objectAtIndexedSubscript:v16];
        personID = [v21 personID];
        v23 = [(NSMutableDictionary *)personIdentifierToPerson objectForKeyedSubscript:personID];

        if (v23)
        {
          [(PTPersonWithReactions *)v23 setNumFramesInactive:0];
        }

        else
        {
          v24 = [PTPersonWithReactions alloc];
          v25 = [availableCopy objectAtIndexedSubscript:v16];
          personID2 = [v25 personID];
          v23 = [(PTPersonWithReactions *)v24 initWithIdentifier:personID2];

          [(PTPersonWithReactions *)v23 setReactionTriggerID:&v15->_globalTriggerID];
          v27 = v15->_personIdentifierToPerson;
          identifier = [(PTPersonWithReactions *)v23 identifier];
          [(NSMutableDictionary *)v27 setObject:v23 forKey:identifier];

          v30 = _PTLogSystem(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            identifier2 = [(PTPersonWithReactions *)v23 identifier];
            intValue2 = [identifier2 intValue];
            *buf = v70;
            *&buf[4] = intValue2;
            _os_log_impl(&dword_2243FB000, v30, OS_LOG_TYPE_INFO, "ReactionProvider: Created person %i", buf, 8u);
          }
        }

        v74 = v16 + 1;
        if ([availableCopy count] <= v16 + 1)
        {
          v33 = 0;
        }

        else
        {
          v33 = 0;
          v34 = v17;
          do
          {
            v35 = [availableCopy objectAtIndexedSubscript:v34];
            personID3 = [v35 personID];
            v37 = [availableCopy objectAtIndexedSubscript:v16];
            personID4 = [v37 personID];

            if (personID3 == personID4)
            {
              v39 = [availableCopy objectAtIndexedSubscript:v34];

              handChirality = [v39 handChirality];
              v41 = [availableCopy objectAtIndexedSubscript:v16];
              handChirality2 = [v41 handChirality];

              if (handChirality == handChirality2)
              {
                v44 = _PTLogSystem(v43);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  [(PTEffectReactionProvider *)&v83 gesturesAvailable:v84 forTimeStamp:v44];
                }
              }

              [v73 setObject:MEMORY[0x277CBEC38] atIndexedSubscript:v34];
              v33 = v39;
            }

            ++v34;
          }

          while ([availableCopy count] > v34);
        }

        v45 = [availableCopy objectAtIndexedSubscript:v16];
        handChirality3 = [v45 handChirality];

        if (handChirality3 == 1)
        {
          v47 = [availableCopy objectAtIndexedSubscript:v16];
          v48 = v33;
        }

        else
        {
          v47 = v33;
          v48 = [availableCopy objectAtIndexedSubscript:v16];
        }

        v49 = v48;
        *buf = *&stamp->var0;
        var3 = stamp->var3;
        [(PTPersonWithReactions *)v23 updateWithLeftHand:v47 rightHand:v48 timeStamp:buf];

        v11 = v73;
        v16 = v74;
        v15 = selfCopy;
      }

      ++v17;
    }

    while ([availableCopy count] > v16);
  }

  array = [MEMORY[0x277CBEB18] array];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  allValues2 = [(NSMutableDictionary *)v15->_personIdentifierToPerson allValues];
  v52 = [allValues2 countByEnumeratingWithState:&v79 objects:v90 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v80;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v80 != v54)
        {
          objc_enumerationMutation(allValues2);
        }

        v56 = *(*(&v79 + 1) + 8 * j);
        if ([v56 numFramesInactive] >= 3)
        {
          identifier3 = [v56 identifier];
          [array addObject:identifier3];

          v59 = _PTLogSystem(v58);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            identifier4 = [v56 identifier];
            intValue3 = [identifier4 intValue];
            *buf = 67109120;
            *&buf[4] = intValue3;
            _os_log_impl(&dword_2243FB000, v59, OS_LOG_TYPE_INFO, "ReactionProvider: Removed person %i", buf, 8u);
          }
        }
      }

      v53 = [allValues2 countByEnumeratingWithState:&v79 objects:v90 count:16];
    }

    while (v53);
  }

  if ([array count])
  {
    [(NSMutableDictionary *)selfCopy->_personIdentifierToPerson removeObjectsForKeys:array];
  }

  v62 = [(NSMutableDictionary *)selfCopy->_personIdentifierToPerson count];
  v63 = [MEMORY[0x277CBEB18] arrayWithCapacity:3 * v62];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  allValues3 = [(NSMutableDictionary *)selfCopy->_personIdentifierToPerson allValues];
  v65 = [allValues3 countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v76;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v76 != v67)
        {
          objc_enumerationMutation(allValues3);
        }

        reactions = [*(*(&v75 + 1) + 8 * k) reactions];
        [v63 addObjectsFromArray:reactions];
      }

      v66 = [allValues3 countByEnumeratingWithState:&v75 objects:v89 count:16];
    }

    while (v66);
  }

  [(PTEffectReactionProvider *)selfCopy setLatestReactions:v63];
}

- (void)gesturesAvailable:(os_log_t)log forTimeStamp:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Both hands of current person have the same chirality!", buf, 2u);
}

@end