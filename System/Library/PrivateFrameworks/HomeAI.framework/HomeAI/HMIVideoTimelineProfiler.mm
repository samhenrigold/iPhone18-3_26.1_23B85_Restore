@interface HMIVideoTimelineProfiler
- (HMIVideoTimelineProfiler)initWithMaxCapacity:(int64_t)capacity;
- (void)endedAtTime:(id *)time;
- (void)startedAtTime:(id *)time;
@end

@implementation HMIVideoTimelineProfiler

- (HMIVideoTimelineProfiler)initWithMaxCapacity:(int64_t)capacity
{
  v9.receiver = self;
  v9.super_class = HMIVideoTimelineProfiler;
  v3 = [(HMIVideoTimelineProfiler *)&v9 init];
  if (v3)
  {
    v4 = [[HMIVideoTimeline alloc] initWithMaxCapacity:?];
    timeline = v3->_timeline;
    v3->_timeline = v4;

    v6 = [[HMITimeIntervalAverage alloc] initWithMaxCapacity:?];
    average = v3->_average;
    v3->_average = v6;
  }

  return v3;
}

- (void)startedAtTime:(id *)time
{
  timeline = self->_timeline;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = *&time->var0;
  [(HMIVideoTimeline *)timeline addDate:v6 atTime:time->var3];
}

- (void)endedAtTime:(id *)time
{
  timeline = self->_timeline;
  v8 = *time;
  v5 = [(HMIVideoTimeline *)timeline dateAtTime:*&v8.var0, v8.var3];
  average = self->_average;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:?];
  [(HMITimeIntervalAverage *)average addValue:?];
}

@end