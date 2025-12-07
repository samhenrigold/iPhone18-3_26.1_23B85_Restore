@interface BMManagerConfiguration
+ (ECBackgroundTaskProviding)backgroundTaskDelegate;
- (BMManagerConfiguration)initWithDirectory:(id)directory shouldRunUpdatesOnSchedule:(BOOL)schedule shouldPurgeOutdatedData:(BOOL)data;
@end

@implementation BMManagerConfiguration

- (BMManagerConfiguration)initWithDirectory:(id)directory shouldRunUpdatesOnSchedule:(BOOL)schedule shouldPurgeOutdatedData:(BOOL)data
{
  dataCopy = data;
  scheduleCopy = schedule;
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = BMManagerConfiguration;
  v9 = [(BMManagerConfiguration *)&v12 init];
  if (v9)
  {
    v10 = [[BMInternalManagerConfiguration alloc] initWithDirectory:directoryCopy shouldRunUpdatesOnSchedule:scheduleCopy shouldPurgeOutdatedData:dataCopy];
    [(BMManagerConfiguration *)v9 setManagerConfiguration:v10];
  }

  return v9;
}

+ (ECBackgroundTaskProviding)backgroundTaskDelegate
{
  WeakRetained = objc_loadWeakRetained(qword_42D20);

  return WeakRetained;
}

@end