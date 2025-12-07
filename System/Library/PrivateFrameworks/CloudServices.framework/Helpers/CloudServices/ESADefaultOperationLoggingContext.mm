@interface ESADefaultOperationLoggingContext
- (ESADefaultOperationLoggingContext)init;
@end

@implementation ESADefaultOperationLoggingContext

- (ESADefaultOperationLoggingContext)init
{
  v10.receiver = self;
  v10.super_class = ESADefaultOperationLoggingContext;
  v2 = [(ESADefaultOperationLoggingContext *)&v10 init];
  if (v2)
  {
    v3 = +[NSDate date];
    currentTime = v2->_currentTime;
    v2->_currentTime = v3;

    v6 = sub_100002A24(v5);
    currentBootId = v2->_currentBootId;
    v2->_currentBootId = v6;

    v2->_currentPID = getpid();
    v8 = v2;
  }

  return v2;
}

@end