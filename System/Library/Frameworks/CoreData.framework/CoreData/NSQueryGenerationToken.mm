@interface NSQueryGenerationToken
+ (void)initialize;
- (NSQueryGenerationToken)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSQueryGenerationToken

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _MergedGlobals_74 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
    qword_1ED4BEA40 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
    qword_1ED4BEA48 = [[_NSQueryGenerationToken alloc] _initWithValue:1 singleton:?];
  }
}

- (NSQueryGenerationToken)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
}

@end