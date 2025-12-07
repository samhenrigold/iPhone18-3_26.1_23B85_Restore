@interface KNRecordingMovieTrack
- (KNRecordingMovieTrack)initWithContext:(id)context movieSegments:(id)segments;
- (id)movieSegmentToTrimWhenReplacingAfterTime:(double)time trimDuration:(double *)duration;
- (id)movieTrackByReplacingAfterTime:(double)time withMovieTrack:(id)track trimmedMovieSegment:(id)segment;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNRecordingMovieTrack

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  context = [(KNRecordingMovieTrack *)self context];
  v8 = *(archive + 8);
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
  if (v8 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = [[KNMovieSegment alloc] initWithContext:context message:*(*(archive + 5) + v10) unarchiver:unarchiverCopy];
      [v9 addObject:v11];

      v10 += 8;
      --v8;
    }

    while (v8);
  }

  v12 = (*(archive + 4) & 1) == 0 || (*(archive + 48) & 1) == 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275DE1D48;
  v15[3] = &unk_27A6990F0;
  v13 = v9;
  v16 = v13;
  v19 = v12;
  v14 = context;
  v17 = v14;
  selfCopy = self;
  [unarchiverCopy addFinalizeHandler:v15];
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v24 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  movieSegments = [(KNRecordingMovieTrack *)self movieSegments];
  v8 = [movieSegments countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(movieSegments);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
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
        v15 = sub_275E21188(*(archive + 3));
        v16 = *(archive + 8);
        v17 = *(archive + 5) + 8 * v16;
        *(archive + 8) = v16 + 1;
        *(v17 + 8) = v15;
LABEL_13:
        [v11 saveToMessage:v15 archiver:archiverCopy];
        ++v10;
      }

      while (v8 != v10);
      v8 = [movieSegments countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  isMovieSegmentDataTrimmedToDuration = self->_isMovieSegmentDataTrimmedToDuration;
  *(archive + 4) |= 1u;
  *(archive + 48) = isMovieSegmentDataTrimmedToDuration;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [unarchiverCopy messageWithDescriptor:off_2812EA908[88]];

  [(KNRecordingMovieTrack *)self loadFromArchive:v4 unarchiver:unarchiverCopy];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v4 = [archiverCopy messageWithNewFunction:sub_275DE23E0 descriptor:off_2812EA908[88]];

  [(KNRecordingMovieTrack *)self saveToArchive:v4 archiver:archiverCopy];
}

- (KNRecordingMovieTrack)initWithContext:(id)context movieSegments:(id)segments
{
  contextCopy = context;
  segmentsCopy = segments;
  v12.receiver = self;
  v12.super_class = KNRecordingMovieTrack;
  v8 = [(KNRecordingMovieTrack *)&v12 initWithContext:contextCopy];
  if (v8)
  {
    v9 = [segmentsCopy copy];
    movieSegments = v8->_movieSegments;
    v8->_movieSegments = v9;

    v8->_isMovieSegmentDataTrimmedToDuration = [KNRecordingMovieSegmentTrimmer canTrimMovieSegmentsInContext:contextCopy];
  }

  return v8;
}

- (id)movieSegmentToTrimWhenReplacingAfterTime:(double)time trimDuration:(double *)duration
{
  v23 = *MEMORY[0x277D85DE8];
  [(KNRecordingMovieTrack *)self movieSegments];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v18 + 1) + 8 * v11);
        [v13 startTime];
        if (v14 >= time)
        {
          v9 = v12;
          goto LABEL_12;
        }

        v9 = v13;

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:

  [v9 startTime];
  v16 = time - v15;
  if (v16 == 0.0)
  {

    v9 = 0;
  }

  *duration = v16;

  return v9;
}

- (id)movieTrackByReplacingAfterTime:(double)time withMovieTrack:(id)track trimmedMovieSegment:(id)segment
{
  v48 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  segmentCopy = segment;
  v10 = segmentCopy;
  if (segmentCopy)
  {
    [segmentCopy startTime];
    if (v11 > time)
    {
      v12 = MEMORY[0x277D81150];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNRecordingMovieTrack movieTrackByReplacingAfterTime:withMovieTrack:trimmedMovieSegment:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecordingMovieTrack.m"];
      [v12 handleFailureInFunction:v13 file:v14 lineNumber:67 isFatal:0 description:"The trimmed movie segment should overlap the replacement start time."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  movieSegments = [(KNRecordingMovieTrack *)self movieSegments];
  movieSegments2 = [trackCopy movieSegments];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(movieSegments2, "count") + objc_msgSend(movieSegments, "count")}];
  timeCopy = time;
  if (v10)
  {
    [v10 startTime];
    timeCopy = v19;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = movieSegments;
  v21 = [v20 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v43;
LABEL_8:
    v24 = 0;
    while (1)
    {
      if (*v43 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v42 + 1) + 8 * v24);
      [v25 startTime];
      if (v26 >= timeCopy)
      {
        break;
      }

      [v17 addObject:v25];
      if (v22 == ++v24)
      {
        v22 = [v20 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v22)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  if (v10)
  {
    [v17 addObject:v10];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = movieSegments2;
  v28 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v39;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v38 + 1) + 8 * i) movieSegmentByAddingTimeOffset:{time, v38}];
        [v17 addObject:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v29);
  }

  v33 = [KNRecordingMovieTrack alloc];
  context = [(KNRecordingMovieTrack *)self context];
  v35 = [(KNRecordingMovieTrack *)v33 initWithContext:context movieSegments:v17];

  if (self->_isMovieSegmentDataTrimmedToDuration && (trackCopy[72] & 1) != 0)
  {
    context2 = [(KNRecordingMovieTrack *)v35 context];
    v35->_isMovieSegmentDataTrimmedToDuration = [KNRecordingMovieSegmentTrimmer canTrimMovieSegmentsInContext:context2];
  }

  else
  {
    v35->_isMovieSegmentDataTrimmedToDuration = 0;
  }

  return v35;
}

@end