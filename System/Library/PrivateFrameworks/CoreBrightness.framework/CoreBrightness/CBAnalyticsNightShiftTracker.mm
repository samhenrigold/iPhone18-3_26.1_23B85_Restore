@interface CBAnalyticsNightShiftTracker
- (CBAnalyticsNightShiftTracker)init;
- (void)update:(int)update isEnabled:(BOOL)enabled;
@end

@implementation CBAnalyticsNightShiftTracker

- (CBAnalyticsNightShiftTracker)init
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBAnalyticsNightShiftTracker;
  selfCopy = [(CBAnalyticsNightShiftTracker *)&v3 init];
  if (selfCopy)
  {
    selfCopy->_modeChangeTimestamp = NAN;
  }

  return selfCopy;
}

- (void)update:(int)update isEnabled:(BOOL)enabled
{
  selfCopy = self;
  v8 = a2;
  updateCopy = update;
  enabledCopy = enabled;
  context = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  modeChangeTimestamp = selfCopy->_modeChangeTimestamp;
  selfCopy->_modeChangeTimestamp = Current;
  [CBAnalytics send:@".NightShift.Usage" withBlock:?];
  selfCopy->_isEnabled = enabledCopy;
  objc_autoreleasePoolPop(context);
}

uint64_t __49__CBAnalyticsNightShiftTracker_update_isEnabled___block_invoke(uint64_t a1)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"mode";
  v4[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v3[1] = @"time";
  v4[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40) * 1000.0];
  v3[2] = @"enabled";
  v4[2] = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 16) & 1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
}

@end