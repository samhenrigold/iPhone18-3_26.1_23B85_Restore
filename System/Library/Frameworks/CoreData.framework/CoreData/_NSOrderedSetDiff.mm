@interface _NSOrderedSetDiff
- (_NSOrderedSetDiff)initWithObject:(id)object;
- (void)applyToSet:(id)set;
- (void)dealloc;
@end

@implementation _NSOrderedSetDiff

- (_NSOrderedSetDiff)initWithObject:(id)object
{
  v6.receiver = self;
  v6.super_class = _NSOrderedSetDiff;
  v4 = [(_NSOrderedSetDiff *)&v6 init];
  if (v4)
  {
    v4->_diffObject = object;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSOrderedSetDiff;
  [(_NSOrderedSetDiff *)&v3 dealloc];
}

- (void)applyToSet:(id)set
{
  v4 = objc_opt_class();

  NSRequestConcreteImplementation(self, sel_applyToSet_, v4, v5, v6, v7, v8, v9);
}

@end