@interface KNRecordingEvent
- (BOOL)isEqual:(id)equal;
- (KNRecordingEvent)initWithMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track;
- (KNRecordingEvent)initWithStartTime:(double)time;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)recordingEventByAddingTimeOffset:(double)offset;
- (unint64_t)hash;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingEvent

- (KNRecordingEvent)initWithStartTime:(double)time
{
  v5.receiver = self;
  v5.super_class = KNRecordingEvent;
  result = [(KNRecordingEvent *)&v5 init];
  if (result)
  {
    result->_startTime = time;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KNRecordingEvent allocWithZone:zone];
  [(KNRecordingEvent *)self startTime];

  return MEMORY[0x2821F9670](v4, sel_initWithStartTime_);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(KNRecordingEvent *)self startTime];
  v7 = [v3 stringWithFormat:@"<%@: %p time=%f>", v5, self, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      [(KNRecordingEvent *)self startTime];
      v7 = v6;
      [v5 startTime];
      v9 = v7 == v8;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CCABB0];
  [(KNRecordingEvent *)self startTime];
  v3 = [v2 numberWithDouble:?];
  v4 = [v3 hash];

  return v4;
}

- (id)recordingEventByAddingTimeOffset:(double)offset
{
  v4 = [(KNRecordingEvent *)self copy];
  v4[1] = v4[1] + offset;

  return v4;
}

- (KNRecordingEvent)initWithMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track
{
  unarchiverCopy = unarchiver;
  trackCopy = track;
  v13.receiver = self;
  v13.super_class = KNRecordingEvent;
  v10 = [(KNRecordingEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(KNRecordingEvent *)v10 loadFromMessage:message unarchiver:unarchiverCopy parentEventTrack:trackCopy];
  }

  return v11;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  [(KNRecordingEvent *)self startTime:message];
  *(message + 4) |= 0x10u;
  *(message + 7) = v5;
}

@end