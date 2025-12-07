@interface KNRecordingLaserEvent
- (BOOL)isEqual:(id)equal;
- (CGPoint)unitLocation;
- (KNRecordingLaserEvent)initWithStartTime:(double)time unitLocation:(CGPoint)location;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingLaserEvent

- (KNRecordingLaserEvent)initWithStartTime:(double)time unitLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v7.receiver = self;
  v7.super_class = KNRecordingLaserEvent;
  result = [(KNRecordingEvent *)&v7 initWithStartTime:time];
  if (result)
  {
    result->_unitLocation.x = x;
    result->_unitLocation.y = y;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KNRecordingLaserEvent allocWithZone:zone];
  [(KNRecordingEvent *)self startTime];
  [(KNRecordingLaserEvent *)self unitLocation];

  return MEMORY[0x2821F9670](v4, sel_initWithStartTime_unitLocation_);
}

- (id)description
{
  [(KNRecordingLaserEvent *)self unitLocation];
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(KNRecordingEvent *)self startTime];
  v11 = [v7 stringWithFormat:@"<%@: %p time=%f unitPoint={%f, %f}>", v9, self, v10, v4, v6];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = KNRecordingLaserEvent;
  if ([(KNRecordingEvent *)&v14 isEqual:equalCopy])
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      [(KNRecordingLaserEvent *)self unitLocation];
      v7 = v6;
      v9 = v8;
      [v5 unitLocation];
      v12 = v9 == v11 && v7 == v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = KNRecordingLaserEvent;
  v3 = [(KNRecordingEvent *)&v7 hash];
  [(KNRecordingLaserEvent *)self unitLocation];
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v8);
  v5 = [(__CFDictionary *)DictionaryRepresentation hash];

  return v5 ^ v3;
}

- (CGPoint)unitLocation
{
  x = self->_unitLocation.x;
  y = self->_unitLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track
{
  v9.receiver = self;
  v9.super_class = KNRecordingLaserEvent;
  [(KNRecordingEvent *)&v9 loadFromMessage:message unarchiver:unarchiver parentEventTrack:track];
  v7 = *(message + 4);
  if (!v7)
  {
    v7 = &qword_2812EBA08;
  }

  if ((v7[2] & 2) != 0)
  {
    v8 = vcvtq_f64_f32(*(v7[4] + 24));
  }

  else
  {
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  self->_unitLocation = v8;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v17.receiver = self;
  v17.super_class = KNRecordingLaserEvent;
  [(KNRecordingEvent *)&v17 saveToMessage:message archiver:archiverCopy];
  *(message + 4) |= 2u;
  v7 = *(message + 4);
  if (!v7)
  {
    v8 = *(message + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = sub_275E20F30(v8);
    *(message + 4) = v7;
  }

  [(KNRecordingLaserEvent *)self unitLocation];
  v10 = v9;
  v12 = v11;
  *(v7 + 16) |= 2u;
  v13 = *(v7 + 32);
  if (!v13)
  {
    v14 = *(v7 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x277C8F020](v14);
    *(v7 + 32) = v13;
  }

  v15 = v10;
  v16 = v12;
  *(v13 + 16) |= 3u;
  *(v13 + 24) = v15;
  *(v13 + 28) = v16;
}

@end