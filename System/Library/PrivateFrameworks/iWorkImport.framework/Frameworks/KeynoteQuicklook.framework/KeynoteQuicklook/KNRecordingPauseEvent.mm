@interface KNRecordingPauseEvent
- (BOOL)isEqual:(id)equal;
- (KNRecordingPauseEvent)initWithStartTime:(double)time pauseEventType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingPauseEvent

- (KNRecordingPauseEvent)initWithStartTime:(double)time pauseEventType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = KNRecordingPauseEvent;
  result = [(KNRecordingEvent *)&v6 initWithStartTime:time];
  if (result)
  {
    result->_pauseEventType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KNRecordingPauseEvent allocWithZone:zone];
  [(KNRecordingEvent *)self startTime];
  [(KNRecordingPauseEvent *)self pauseEventType];

  return MEMORY[0x2821F9670](v4, sel_initWithStartTime_pauseEventType_);
}

- (id)description
{
  pauseEventType = [(KNRecordingPauseEvent *)self pauseEventType];
  if (pauseEventType > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_27A698888[pauseEventType];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [(KNRecordingEvent *)self startTime];
  v9 = [v5 stringWithFormat:@"<%@ %p time=%f pauseEventType=%@>", v7, self, v8, v4];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = KNRecordingPauseEvent;
  if ([(KNRecordingEvent *)&v9 isEqual:equalCopy])
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      pauseEventType = [(KNRecordingPauseEvent *)self pauseEventType];
      v7 = pauseEventType == [v5 pauseEventType];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = KNRecordingPauseEvent;
  v3 = [(KNRecordingEvent *)&v5 hash];
  return [(KNRecordingPauseEvent *)self pauseEventType]^ v3;
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track
{
  v10.receiver = self;
  v10.super_class = KNRecordingPauseEvent;
  [(KNRecordingEvent *)&v10 loadFromMessage:message unarchiver:unarchiver parentEventTrack:track];
  v7 = &qword_2812EBA30;
  if (*(message + 5))
  {
    v7 = *(message + 5);
  }

  v8 = (*(v7 + 6) - 1);
  if (v8 < 3)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  self->_pauseEventType = v9;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v11.receiver = self;
  v11.super_class = KNRecordingPauseEvent;
  [(KNRecordingEvent *)&v11 saveToMessage:message archiver:archiverCopy];
  *(message + 4) |= 4u;
  v7 = *(message + 5);
  if (!v7)
  {
    v8 = *(message + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_275E20FFC(v8);
    *(message + 5) = v7;
  }

  pauseEventType = [(KNRecordingPauseEvent *)self pauseEventType];
  if ((pauseEventType - 1) < 3)
  {
    v10 = pauseEventType;
  }

  else
  {
    v10 = 0;
  }

  *(v7 + 16) |= 1u;
  *(v7 + 24) = v10;
}

@end