@interface HMITimeIntervalAverage
- (HMITimeIntervalAverage)initWithMaxCapacity:(int64_t)capacity;
- (void)addValue:(double)value;
@end

@implementation HMITimeIntervalAverage

- (HMITimeIntervalAverage)initWithMaxCapacity:(int64_t)capacity
{
  v7.receiver = self;
  v7.super_class = HMITimeIntervalAverage;
  v3 = [(HMITimeIntervalAverage *)&v7 init];
  if (v3)
  {
    v4 = [[MovingAverage alloc] initWithWindowSize:?];
    average = v3->_average;
    v3->_average = v4;
  }

  return v3;
}

- (void)addValue:(double)value
{
  average = self->_average;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(MovingAverage *)average addNumber:?];
}

@end