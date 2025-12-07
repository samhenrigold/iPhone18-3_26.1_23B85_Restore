@interface LibcoreIoAsynchronousCloseMonitor
+ (id)newAsynchronousSocketCloseMonitorWithInt:(int)int;
+ (void)signalBlockedThreadsWithJavaIoFileDescriptor:(id)descriptor;
@end

@implementation LibcoreIoAsynchronousCloseMonitor

+ (void)signalBlockedThreadsWithJavaIoFileDescriptor:(id)descriptor
{
  v3 = [descriptor getInt$];

  [AsynchronousSocketCloseMonitor signalBlockedThreads:v3];
}

+ (id)newAsynchronousSocketCloseMonitorWithInt:(int)int
{
  v3 = [[AsynchronousSocketCloseMonitor alloc] initWithFileDescriptor:*&int];

  return v3;
}

@end