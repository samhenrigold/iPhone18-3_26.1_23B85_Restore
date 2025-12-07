@interface NSURL(SSURLAdditions)
- (void)isStoreServicesURL;
@end

@implementation NSURL(SSURLAdditions)

- (void)isStoreServicesURL
{
  result = [self scheme];
  if (result)
  {
    return ([objc_msgSend(self "scheme")] == 0);
  }

  return result;
}

@end