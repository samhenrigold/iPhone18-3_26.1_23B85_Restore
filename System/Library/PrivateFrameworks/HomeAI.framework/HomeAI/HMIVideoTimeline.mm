@interface HMIVideoTimeline
- (HMIVideoTimeline)initWithMaxCapacity:(int64_t)capacity;
- (double)timeIntervalSinceDateAtTime:(id *)time;
- (id)dateAtTime:(id *)time;
- (void)addDate:(id)date atTime:(id *)time;
@end

@implementation HMIVideoTimeline

- (HMIVideoTimeline)initWithMaxCapacity:(int64_t)capacity
{
  v7.receiver = self;
  v7.super_class = HMIVideoTimeline;
  v3 = [(HMIVideoTimeline *)&v7 init];
  if (v3)
  {
    v4 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:?];
    buffer = v3->_buffer;
    v3->_buffer = v4;
  }

  return v3;
}

- (void)addDate:(id)date atTime:(id *)time
{
  buffer = self->_buffer;
  dateCopy = date;
  v7 = [HMIVideoTimelineEntry alloc];
  v9 = *&time->var0;
  v8 = [(HMIVideoTimelineEntry *)v7 initWithTime:v9 date:time->var3];

  [(HMIVideoEventBuffer *)buffer addObject:?];
}

- (id)dateAtTime:(id *)time
{
  v5 = [HMIVideoTimelineEntry alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [(HMIVideoTimelineEntry *)v5 initWithTime:*&time->var0 date:time->var3];

  v8 = [(HMIVideoEventBuffer *)self->_buffer neighborsOfObject:?];
  lastObject = [v8 lastObject];

  if (lastObject)
  {
    lastObject2 = [v8 lastObject];
    lastObject = [lastObject2 date];
  }

  return lastObject;
}

- (double)timeIntervalSinceDateAtTime:(id *)time
{
  v3 = [(HMIVideoTimeline *)self dateAtTime:*&time->var0, time->var3];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:?];
  v6 = v5;

  return v6;
}

@end