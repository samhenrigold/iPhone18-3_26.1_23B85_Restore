@interface KNRecordingEventTrack
- (KNRecordingEventTrack)initWithContext:(id)context type:(id)type events:(id)events;
- (id)description;
- (id)eventTrackByReplacingSegmentAfterTime:(double)time withEventTrack:(id)track;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_slideNodeWasAddedToOrRemovedFromDocument;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNRecordingEventTrack

- (KNRecordingEventTrack)initWithContext:(id)context type:(id)type events:(id)events
{
  typeCopy = type;
  eventsCopy = events;
  v16.receiver = self;
  v16.super_class = KNRecordingEventTrack;
  v10 = [(KNRecordingEventTrack *)&v16 initWithContext:context];
  if (v10)
  {
    v11 = [typeCopy copy];
    type = v10->_type;
    v10->_type = v11;

    v13 = [eventsCopy copy];
    events = v10->_events;
    v10->_events = v13;
  }

  return v10;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D811A8]) initWithObject:self];
  type = [(KNRecordingEventTrack *)self type];
  [v3 addField:@"type" value:type];

  events = [(KNRecordingEventTrack *)self events];
  v6 = [objc_alloc(MEMORY[0x277D811A8]) initWithObject:events];
  [v6 addFieldWithFormat:@"%tu elements", objc_msgSend(events, "count")];
  descriptionString = [v6 descriptionString];
  [v3 addField:@"events" value:descriptionString];

  descriptionString2 = [v3 descriptionString];

  return descriptionString2;
}

- (id)eventTrackByReplacingSegmentAfterTime:(double)time withEventTrack:(id)track
{
  v46 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  type = [(KNRecordingEventTrack *)self type];
  type2 = [trackCopy type];
  v9 = [type isEqualToString:type2];

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRecordingEventTrack eventTrackByReplacingSegmentAfterTime:withEventTrack:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingEventTrack.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:51 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "[type isEqualToString:replacementEventTrack.type]"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  events = [(KNRecordingEventTrack *)self events];
  events2 = [trackCopy events];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(events2, "count") + objc_msgSend(events, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = events;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
LABEL_5:
    v20 = 0;
    while (1)
    {
      if (*v41 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v40 + 1) + 8 * v20);
      [v21 startTime];
      if (v22 >= time)
      {
        break;
      }

      [v15 addObject:v21];
      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v18)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  lastObject = [v15 lastObject];
  if (lastObject)
  {
    v24 = lastObject;
    do
    {
      if ([v24 canPrecedeDiscontinuity])
      {
        break;
      }

      [v15 removeLastObject];
      lastObject2 = [v15 lastObject];

      v24 = lastObject2;
    }

    while (lastObject2);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = events2;
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v37;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v36 + 1) + 8 * i) recordingEventByAddingTimeOffset:time];
        [v15 addObject:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v28);
  }

  v32 = [KNRecordingEventTrack alloc];
  context = [(KNRecordingEventTrack *)self context];
  v34 = [(KNRecordingEventTrack *)v32 initWithContext:context type:type events:v15];

  return v34;
}

- (void)p_slideNodeWasAddedToOrRemovedFromDocument
{
  context = [(KNRecordingEventTrack *)self context];
  documentRoot = [context documentRoot];
  if ([documentRoot isCollaborativeClient])
  {
    type = [(KNRecordingEventTrack *)self type];
    v5 = [type isEqualToString:@"com.apple.Keynote.recordingEventTrack-navigation"];

    if (v5)
    {

      [(KNRecordingEventTrack *)self willModify];
    }
  }

  else
  {
  }
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = *(archive + 8);
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  if (v6 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(archive + 5) + v8);
      v10 = *(v9 + 16);
      if ((v10 & 1) != 0 || (v10 & 4) != 0 || (v10 & 2) != 0 || (v10 & 8) != 0)
      {
        v11 = objc_opt_class();
        if (v11)
        {
          v12 = [[v11 alloc] initWithMessage:v9 unarchiver:unarchiverCopy parentEventTrack:self];
          [v7 addObject:v12];
        }
      }

      v8 += 8;
      --v6;
    }

    while (v6);
  }

  objc_storeStrong(&self->_events, v7);
  if (*(archive + 16))
  {
    0xFFFFFFFFFFFFFFFELL = [MEMORY[0x277CCACA8] tsp_stringWithProtobufString:*(archive + 6) & 0xFFFFFFFFFFFFFFFELL];
    v14 = [0xFFFFFFFFFFFFFFFELL copy];
    type = self->_type;
    self->_type = v14;
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v25 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  events = [(KNRecordingEventTrack *)self events];
  v8 = [events countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(events);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = *(archive + 5);
        if (!v12)
        {
          goto LABEL_11;
        }

        v13 = *(archive + 8);
        v14 = *v12;
        if (v13 < *v12)
        {
          *(archive + 8) = v13 + 1;
          v15 = *&v12[2 * v13 + 2];
          goto LABEL_13;
        }

        if (v14 == *(archive + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v12 = *(archive + 5);
          v14 = *v12;
        }

        *v12 = v14 + 1;
        v15 = sub_275E20DD4(*(archive + 3));
        v16 = *(archive + 8);
        v17 = *(archive + 5) + 8 * v16;
        *(archive + 8) = v16 + 1;
        *(v17 + 8) = v15;
LABEL_13:
        [v11 saveToMessage:v15 archiver:archiverCopy];
        ++v10;
      }

      while (v8 != v10);
      v8 = [events countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  type = [(KNRecordingEventTrack *)self type];
  v19 = type;
  if (type)
  {
    sub_275DC45F0(archive, [type tsp_protobufString]);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[76]];

  [(KNRecordingEventTrack *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DC486C descriptor:off_2812EA908[76]];

  [(KNRecordingEventTrack *)self saveToArchive:v4 archiver:archiverCopy];
}

@end