@interface NSError
- (unint64_t)rbs_isServiceDenied;
@end

@implementation NSError

- (unint64_t)rbs_isServiceDenied
{
  selfCopy = self;
  if (self)
  {
    domain = [self domain];
    if ([domain isEqualToString:@"RBSServiceErrorDomain"])
    {
      selfCopy = [selfCopy code] == 1;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end