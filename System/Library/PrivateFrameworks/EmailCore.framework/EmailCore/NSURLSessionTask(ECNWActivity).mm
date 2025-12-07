@interface NSURLSessionTask(ECNWActivity)
- (void)ec_setActivityWithDomain:()ECNWActivity type:;
@end

@implementation NSURLSessionTask(ECNWActivity)

- (void)ec_setActivityWithDomain:()ECNWActivity type:
{
  v5 = nw_activity_create();
  [self set_nw_activity:?];
}

@end