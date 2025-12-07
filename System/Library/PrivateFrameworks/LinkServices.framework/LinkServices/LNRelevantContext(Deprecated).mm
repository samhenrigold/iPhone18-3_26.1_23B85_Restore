@interface LNRelevantContext(Deprecated)
- (id)conditions;
- (uint64_t)asCondition;
@end

@implementation LNRelevantContext(Deprecated)

- (id)conditions
{
  v4[1] = *MEMORY[0x1E69E9840];
  asCondition = [self asCondition];
  v4[0] = asCondition;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (uint64_t)asCondition
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = NSStringFromSelector(aSelector);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 raise:v3 format:{@"Invoking %@ on abstract base class %@", v4, v6}];

  return 0;
}

@end