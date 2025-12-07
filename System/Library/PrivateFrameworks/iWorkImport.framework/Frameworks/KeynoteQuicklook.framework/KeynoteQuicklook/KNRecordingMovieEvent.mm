@interface KNRecordingMovieEvent
- (BOOL)isEqual:(id)equal;
- (KNRecordingMovieEvent)initWithStartTime:(double)time movieInfo:(id)info movieSlideNodeUUID:(id)d didPlayAcrossSlides:(BOOL)slides movieEventType:(int64_t)type movieEventValue:(double)value;
- (TSDMovieInfo)movieInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingMovieEvent

- (KNRecordingMovieEvent)initWithStartTime:(double)time movieInfo:(id)info movieSlideNodeUUID:(id)d didPlayAcrossSlides:(BOOL)slides movieEventType:(int64_t)type movieEventValue:(double)value
{
  infoCopy = info;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = KNRecordingMovieEvent;
  v16 = [(KNRecordingEvent *)&v22 initWithStartTime:time];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x277D80868]) initWeakReferenceWithObject:infoCopy];
    movieInfoReference = v16->_movieInfoReference;
    v16->_movieInfoReference = v17;

    v19 = [dCopy copy];
    movieSlideNodeUUID = v16->_movieSlideNodeUUID;
    v16->_movieSlideNodeUUID = v19;

    v16->_didPlayAcrossSlides = slides;
    v16->_movieEventType = type;
    v16->_movieEventValue = value;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KNRecordingMovieEvent allocWithZone:zone];
  [(KNRecordingEvent *)self startTime];
  v6 = v5;
  movieInfo = [(KNRecordingMovieEvent *)self movieInfo];
  movieSlideNodeUUID = [(KNRecordingMovieEvent *)self movieSlideNodeUUID];
  didPlayAcrossSlides = [(KNRecordingMovieEvent *)self didPlayAcrossSlides];
  movieEventType = [(KNRecordingMovieEvent *)self movieEventType];
  [(KNRecordingMovieEvent *)self movieEventValue];
  v12 = [(KNRecordingMovieEvent *)v4 initWithStartTime:movieInfo movieInfo:movieSlideNodeUUID movieSlideNodeUUID:didPlayAcrossSlides didPlayAcrossSlides:movieEventType movieEventType:v6 movieEventValue:v11];

  return v12;
}

- (id)description
{
  movieEventType = [(KNRecordingMovieEvent *)self movieEventType];
  if (movieEventType > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_27A698850[movieEventType];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [(KNRecordingEvent *)self startTime];
  v9 = v8;
  movieInfo = [(KNRecordingMovieEvent *)self movieInfo];
  movieSlideNodeUUID = [(KNRecordingMovieEvent *)self movieSlideNodeUUID];
  didPlayAcrossSlides = [(KNRecordingMovieEvent *)self didPlayAcrossSlides];
  [(KNRecordingMovieEvent *)self movieEventValue];
  v14 = [v5 stringWithFormat:@"<%@ %p time=%f movieInfo=%@ movieSlideNodeUUID=%@ didPlayAcrossSlides=%d movieEventType=%@ movieEventValue=%f>", v7, self, v9, movieInfo, movieSlideNodeUUID, didPlayAcrossSlides, v4, v13];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = KNRecordingMovieEvent;
  if (![(KNRecordingEvent *)&v18 isEqual:equalCopy])
  {
    v11 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  v5 = TSUDynamicCast();
  if (!v5)
  {
    goto LABEL_9;
  }

  movieInfo = [(KNRecordingMovieEvent *)self movieInfo];
  movieInfo2 = [v5 movieInfo];
  if (movieInfo != movieInfo2)
  {
    goto LABEL_8;
  }

  movieSlideNodeUUID = [(KNRecordingMovieEvent *)self movieSlideNodeUUID];
  movieSlideNodeUUID2 = [v5 movieSlideNodeUUID];
  if (movieSlideNodeUUID | movieSlideNodeUUID2 && ![movieSlideNodeUUID isEqual:movieSlideNodeUUID2] || (v10 = -[KNRecordingMovieEvent didPlayAcrossSlides](self, "didPlayAcrossSlides"), v10 != objc_msgSend(v5, "didPlayAcrossSlides")))
  {

LABEL_8:
    goto LABEL_9;
  }

  movieEventType = [(KNRecordingMovieEvent *)self movieEventType];
  movieEventType2 = [v5 movieEventType];

  if (movieEventType == movieEventType2)
  {
    [(KNRecordingMovieEvent *)self movieEventValue];
    v16 = v15;
    [v5 movieEventValue];
    v11 = v16 == v17;
    goto LABEL_10;
  }

LABEL_9:
  v11 = 0;
LABEL_10:

LABEL_12:
  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v8.receiver = self;
  v8.super_class = KNRecordingMovieEvent;
  [v3 addUnsignedInteger:{-[KNRecordingEvent hash](&v8, sel_hash)}];
  [v3 addObject:self->_movieInfoReference];
  [v3 addObject:self->_movieSlideNodeUUID];
  [v3 addBool:self->_didPlayAcrossSlides];
  [v3 addInteger:self->_movieEventType];
  v4 = MEMORY[0x277CCABB0];
  [(KNRecordingMovieEvent *)self movieEventValue];
  v5 = [v4 numberWithDouble:?];
  [v3 addObject:v5];

  hashValue = [v3 hashValue];
  return hashValue;
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  v3 = [(TSPLazyReference *)self->_movieInfoReference objectAndReturnError:0];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track
{
  unarchiverCopy = unarchiver;
  v21.receiver = self;
  v21.super_class = KNRecordingMovieEvent;
  [(KNRecordingEvent *)&v21 loadFromMessage:message unarchiver:unarchiverCopy parentEventTrack:track];
  if (*(message + 6))
  {
    v9 = *(message + 6);
  }

  else
  {
    v9 = &unk_2812EBA50;
  }

  v10 = *(v9 + 4);
  if (v10)
  {
    v13 = *(v9 + 3);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_275DC9DBC;
    v20[3] = &unk_27A6982D0;
    v20[4] = self;
    [unarchiverCopy readWeakLazyReferenceMessage:v13 class:objc_opt_class() protocol:0 completion:v20];
    v12 = 0;
  }

  else
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    v11 = *(v9 + 4);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_275DC9DD4;
    v19[3] = &unk_27A6982D0;
    v19[4] = self;
    [unarchiverCopy readWeakLazyReferenceMessage:v11 class:objc_opt_class() protocol:0 completion:v19];
    v12 = 1;
  }

  self->_didPlayAcrossSlides = v12;
LABEL_9:
  if ((*(v9 + 16) & 4) != 0)
  {
    v14 = [unarchiverCopy readWeakObjectUUIDReferenceMessage:*(v9 + 5)];
    v15 = [v14 copy];
    movieSlideNodeUUID = self->_movieSlideNodeUUID;
    self->_movieSlideNodeUUID = v15;
  }

  v17 = (*(v9 + 14) - 1);
  if (v17 < 6)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 0;
  }

  self->_movieEventType = v18;
  self->_movieEventValue = *(v9 + 6);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v20.receiver = self;
  v20.super_class = KNRecordingMovieEvent;
  [(KNRecordingEvent *)&v20 saveToMessage:message archiver:archiverCopy];
  *(message + 4) |= 8u;
  v7 = *(message + 6);
  if (!v7)
  {
    v8 = *(message + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_275E21070(v8);
    *(message + 6) = v7;
  }

  movieInfoReference = self->_movieInfoReference;
  v10 = *(v7 + 16);
  if (self->_didPlayAcrossSlides)
  {
    *(v7 + 16) = v10 | 2;
    v11 = *(v7 + 32);
    if (!v11)
    {
      v12 = *(v7 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C8F050](v12);
      *(v7 + 32) = v11;
    }
  }

  else
  {
    *(v7 + 16) = v10 | 1;
    v11 = *(v7 + 24);
    if (!v11)
    {
      v13 = *(v7 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C8F050](v13);
      *(v7 + 24) = v11;
    }
  }

  [archiverCopy setWeakLazyReference:movieInfoReference message:v11];
  movieSlideNodeUUID = self->_movieSlideNodeUUID;
  if (movieSlideNodeUUID)
  {
    *(v7 + 16) |= 4u;
    v15 = *(v7 + 40);
    if (!v15)
    {
      v16 = *(v7 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C8F000](v16);
      *(v7 + 40) = v15;
    }

    [archiverCopy setWeakReferenceToObjectUUID:movieSlideNodeUUID message:v15];
  }

  movieEventType = [(KNRecordingMovieEvent *)self movieEventType];
  if ((movieEventType - 1) < 6)
  {
    v18 = movieEventType;
  }

  else
  {
    v18 = 0;
  }

  *(v7 + 16) |= 0x10u;
  *(v7 + 56) = v18;
  [(KNRecordingMovieEvent *)self movieEventValue];
  *(v7 + 16) |= 8u;
  *(v7 + 48) = v19;
}

@end