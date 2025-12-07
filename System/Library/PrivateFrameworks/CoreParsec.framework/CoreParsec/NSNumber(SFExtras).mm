@interface NSNumber(SFExtras)
- (uint64_t)sf_asTopHit;
- (unint64_t)sf_asRowAlignment;
@end

@implementation NSNumber(SFExtras)

- (uint64_t)sf_asTopHit
{
  unsignedIntegerValue = [self unsignedIntegerValue];
  if (unsignedIntegerValue == 2)
  {
    return 2;
  }

  else
  {
    return unsignedIntegerValue == 1;
  }
}

- (unint64_t)sf_asRowAlignment
{
  result = [self integerValue];
  if (result + 1 >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end