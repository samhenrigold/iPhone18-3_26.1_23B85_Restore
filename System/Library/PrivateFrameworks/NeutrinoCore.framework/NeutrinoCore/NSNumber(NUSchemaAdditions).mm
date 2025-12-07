@interface NSNumber(NUSchemaAdditions)
- (void)nu_isBoolean;
- (void)nu_isInfinite;
- (void)nu_isNaN;
@end

@implementation NSNumber(NUSchemaAdditions)

- (void)nu_isInfinite
{
  result = [self nu_isFloat];
  if (result)
  {
    [self doubleValue];
    return (fabs(v3) == INFINITY);
  }

  return result;
}

- (void)nu_isNaN
{
  result = [self nu_isFloat];
  if (result)
  {
    [self doubleValue];
    return 0;
  }

  return result;
}

- (void)nu_isBoolean
{
  result = [self nu_isInteger];
  if (result)
  {
    return ([self integerValue] < 2);
  }

  return result;
}

@end