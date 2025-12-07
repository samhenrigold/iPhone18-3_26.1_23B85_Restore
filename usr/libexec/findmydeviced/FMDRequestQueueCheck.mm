@interface FMDRequestQueueCheck
- (FMDRequestQueueCheck)initWithAccount:(id)account shutdownActivityPending:(BOOL)pending;
- (id)requestBody;
@end

@implementation FMDRequestQueueCheck

- (id)requestBody
{
  v6.receiver = self;
  v6.super_class = FMDRequestQueueCheck;
  requestBody = [(FMDRequest *)&v6 requestBody];
  if ([(FMDRequestQueueCheck *)self shutdownActivityPending])
  {
    v4 = [NSNumber numberWithBool:[(FMDRequestQueueCheck *)self shutdownActivityPending]];
    [requestBody setObject:v4 forKeyedSubscript:@"willShutdownSoon"];
  }

  return requestBody;
}

- (FMDRequestQueueCheck)initWithAccount:(id)account shutdownActivityPending:(BOOL)pending
{
  pendingCopy = pending;
  v8.receiver = self;
  v8.super_class = FMDRequestQueueCheck;
  v5 = [(FMDRequest *)&v8 initWithAccount:account];
  v6 = v5;
  if (v5)
  {
    [(FMDRequestQueueCheck *)v5 setShutdownActivityPending:pendingCopy];
  }

  return v6;
}

@end