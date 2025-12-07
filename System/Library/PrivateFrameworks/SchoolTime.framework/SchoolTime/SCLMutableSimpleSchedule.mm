@interface SCLMutableSimpleSchedule
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEndTime:(id)time;
- (void)setStartTime:(id)time;
@end

@implementation SCLMutableSimpleSchedule

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SCLSimpleSchedule alloc];

  return [(SCLSimpleSchedule *)v4 initWithSimpleSchedule:self];
}

- (void)setStartTime:(id)time
{
  self->super._startTime = [time copy];

  MEMORY[0x2821F96F8]();
}

- (void)setEndTime:(id)time
{
  self->super._endTime = [time copy];

  MEMORY[0x2821F96F8]();
}

@end