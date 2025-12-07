@interface MTSleepModeManager
- (MTSleepModeManager)initWithDelegate:(id)delegate isSynchronous:(BOOL)synchronous;
@end

@implementation MTSleepModeManager

- (MTSleepModeManager)initWithDelegate:(id)delegate isSynchronous:(BOOL)synchronous
{
  v5.receiver = self;
  v5.super_class = MTSleepModeManager;
  return [(MTSleepModeManager *)&v5 init:delegate];
}

@end