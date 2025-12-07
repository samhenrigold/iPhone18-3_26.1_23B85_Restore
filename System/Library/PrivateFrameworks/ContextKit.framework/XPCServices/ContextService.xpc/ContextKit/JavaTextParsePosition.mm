@interface JavaTextParsePosition
- (BOOL)isEqual:(id)equal;
- (JavaTextParsePosition)initWithInt:(int)int;
@end

@implementation JavaTextParsePosition

- (JavaTextParsePosition)initWithInt:(int)int
{
  self->currentPosition_ = int;
  self->errorIndex_ = -1;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->currentPosition_ == *(equal + 2) && self->errorIndex_ == *(equal + 3);
}

@end