@interface StopwatchStandbyCompressedController
- (void)didPauseLapTimer;
- (void)didResumeLapTimer;
- (void)didUpdateCurrentInterval:(double)interval adjustedCurrentInterval:(double)currentInterval totalInterval:(double)totalInterval adjustedTotalInterval:(double)adjustedTotalInterval isStopwatchRunning:(BOOL)running isStopwatchStopped:(BOOL)stopped;
@end

@implementation StopwatchStandbyCompressedController

- (void)didUpdateCurrentInterval:(double)interval adjustedCurrentInterval:(double)currentInterval totalInterval:(double)totalInterval adjustedTotalInterval:(double)adjustedTotalInterval isStopwatchRunning:(BOOL)running isStopwatchStopped:(BOOL)stopped
{
  runningCopy = running;
  selfCopy = self;
  sub_100080E9C(runningCopy, stopped, interval, currentInterval, totalInterval, adjustedTotalInterval);
}

- (void)didPauseLapTimer
{
  selfCopy = self;
  sub_100081060(selfCopy);
}

- (void)didResumeLapTimer
{
  selfCopy = self;
  sub_100081134(selfCopy);
}

@end