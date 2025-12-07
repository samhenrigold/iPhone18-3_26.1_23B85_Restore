@interface KNRecordingMovieSegmentTrimmer
- (KNRecordingMovieSegmentTrimmer)initWithMovieSegment:(id)segment trimDuration:(double)duration;
- (void)trimMovieSegmentWithCompletionHandler:(id)handler;
@end

@implementation KNRecordingMovieSegmentTrimmer

- (KNRecordingMovieSegmentTrimmer)initWithMovieSegment:(id)segment trimDuration:(double)duration
{
  segmentCopy = segment;
  v11.receiver = self;
  v11.super_class = KNRecordingMovieSegmentTrimmer;
  v8 = [(KNRecordingMovieSegmentTrimmer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_movieSegment, segment);
    v9->_trimDurationInSeconds = duration;
  }

  return v9;
}

- (void)trimMovieSegmentWithCompletionHandler:(id)handler
{
  v17[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  movieData = [(KNMovieSegment *)self->_movieSegment movieData];
  v6 = movieData;
  if (movieData)
  {
    if ([movieData length])
    {
      v16 = *MEMORY[0x277CE6240];
      v17[0] = MEMORY[0x277CBEC38];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v8 = [v6 AVAssetWithOptions:v7];

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_275E27734;
      v11[3] = &unk_27A699558;
      v12 = v8;
      selfCopy = self;
      v14 = v6;
      v15 = handlerCopy;
      v9 = v8;
      [v9 loadValuesAsynchronouslyForKeys:&unk_2884F3E50 completionHandler:v11];
    }

    else
    {
      if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
      {
        sub_275E604B8();
      }

      v10 = [KNMovieSegment alloc];
      [(KNMovieSegment *)self->_movieSegment startTime];
      v9 = [(KNMovieSegment *)v10 initEmptySegmentWithStartTime:?];
      (*(handlerCopy + 2))(handlerCopy, v9, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, self->_movieSegment, 0);
  }
}

@end