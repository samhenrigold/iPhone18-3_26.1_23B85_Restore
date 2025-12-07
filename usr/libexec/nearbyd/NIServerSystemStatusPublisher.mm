@interface NIServerSystemStatusPublisher
- (NIServerSystemStatusPublisher)initWithSystemStatus:(int)status;
@end

@implementation NIServerSystemStatusPublisher

- (NIServerSystemStatusPublisher)initWithSystemStatus:(int)status
{
  v4.receiver = self;
  v4.super_class = NIServerSystemStatusPublisher;
  return [(NIServerSystemStatusPublisher *)&v4 init];
}

@end