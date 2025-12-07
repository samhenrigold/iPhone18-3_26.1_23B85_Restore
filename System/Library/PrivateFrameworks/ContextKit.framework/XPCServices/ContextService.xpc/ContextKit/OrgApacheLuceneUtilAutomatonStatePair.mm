@interface OrgApacheLuceneUtilAutomatonStatePair
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneUtilAutomatonStatePair)initWithInt:(int)int withInt:(int)withInt;
- (OrgApacheLuceneUtilAutomatonStatePair)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilAutomatonStatePair

- (OrgApacheLuceneUtilAutomatonStatePair)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  self->s_ = int;
  self->s1_ = withInt;
  self->s2_ = a5;
  return self;
}

- (OrgApacheLuceneUtilAutomatonStatePair)initWithInt:(int)int withInt:(int)withInt
{
  self->s1_ = int;
  self->s2_ = withInt;
  self->s_ = -1;
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

  return *(equal + 3) == self->s1_ && *(equal + 4) == self->s2_;
}

@end