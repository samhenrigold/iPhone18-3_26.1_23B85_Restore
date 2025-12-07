@interface BKSDisplayProgressIndicatorProperties
+ (id)progressIndicatorWithStyle:(int64_t)style position:(CGPoint)position;
- (BKSDisplayProgressIndicatorProperties)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (CGPoint)position;
- (id)_initWithStyle:(int64_t)style position:(CGPoint)position;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSDisplayProgressIndicatorProperties

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSDisplayProgressIndicatorProperties *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:?];
  v3 = [v2 appendInteger:? withName:?];
  v4 = [v2 appendPoint:? withName:?];

  return v2;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSDisplayProgressIndicatorProperties *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = MEMORY[0x1E698E6A0];
  objc_opt_class();
  v5 = [v4 builderWithObject:? ofExpectedClass:?];
  v12 = equalCopy;
  v6 = [v5 appendCGPoint:? counterpart:?];
  v11 = MEMORY[0x1E69E9820];
  v7 = v12;
  v8 = [v6 appendInteger:v11 counterpart:{3221225472, __49__BKSDisplayProgressIndicatorProperties_isEqual___block_invoke_2, &unk_1E6F47100}];
  v9 = [v8 isEqual];

  return v9;
}

- (BKSDisplayProgressIndicatorProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeIntegerForKey:?];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  if (v5)
  {
    MEMORY[0x186605190](v5);
  }

  v6 = [BKSDisplayProgressIndicatorProperties _initWithStyle:"_initWithStyle:position:" position:?];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:? forKey:?];
  v4 = BSValueWithPoint();
  [coderCopy encodeObject:? forKey:?];
}

- (id)_initWithStyle:(int64_t)style position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v8.receiver = self;
  v8.super_class = BKSDisplayProgressIndicatorProperties;
  result = [(BKSDisplayProgressIndicatorProperties *)&v8 init];
  if (result)
  {
    *(result + 1) = style;
    *(result + 2) = x;
    *(result + 3) = y;
  }

  return result;
}

+ (id)progressIndicatorWithStyle:(int64_t)style position:(CGPoint)position
{
  v4 = [[self alloc] _initWithStyle:? position:?];

  return v4;
}

@end