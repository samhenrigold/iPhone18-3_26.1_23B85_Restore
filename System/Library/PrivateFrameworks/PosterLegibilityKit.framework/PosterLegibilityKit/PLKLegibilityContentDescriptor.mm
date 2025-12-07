@interface PLKLegibilityContentDescriptor
+ (id)contentDescriptorForColor:(id)color;
+ (id)defaultContentDescriptor;
- (BOOL)isEqual:(id)equal;
- (PLKLegibilityContentDescriptor)init;
- (PLKLegibilityContentDescriptor)initWithContentColor:(id)color;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)filtersForContextType:(int64_t)type options:(int64_t)options;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)configureCALayer:(id)layer forContentRenderedWithContextType:(int64_t)type options:(int64_t)options;
@end

@implementation PLKLegibilityContentDescriptor

- (PLKLegibilityContentDescriptor)init
{
  v6.receiver = self;
  v6.super_class = PLKLegibilityContentDescriptor;
  v2 = [(PLKLegibilityContentDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    compositingFilter = v2->_compositingFilter;
    v2->_compositingFilter = 0;
  }

  return v3;
}

+ (id)defaultContentDescriptor
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
  objc_exception_throw(v2);
}

+ (id)contentDescriptorForColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] initWithContentColor:?];

  return v5;
}

- (PLKLegibilityContentDescriptor)initWithContentColor:(id)color
{
  colorCopy = color;
  v6 = [(PLKLegibilityContentDescriptor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentColor, color);
  }

  return v7;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v3 = [builder appendObject:?];
  v4 = [builder appendObject:?];
  v5 = [builder hash];

  return v5;
}

- (id)filtersForContextType:(int64_t)type options:(int64_t)options
{
  v6 = objc_opt_new();
  if (type == 4)
  {
    contentColor = [(PLKLegibilityContentDescriptor *)self contentColor];

    if (contentColor)
    {
      v8 = MEMORY[0x277CD9EA0];
      contentColor2 = [(PLKLegibilityContentDescriptor *)self contentColor];
      v10 = [v8 plk_multiplyColor:?];

      [v6 addObject:?];
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      compositingFilter = [(PLKLegibilityContentDescriptor *)self compositingFilter];
      compositingFilter2 = [(PLKLegibilityContentDescriptor *)v7 compositingFilter];
      v10 = BSEqualObjects();

      if (v10)
      {
        contentColor = [(PLKLegibilityContentDescriptor *)v7 contentColor];
        contentColor2 = [(PLKLegibilityContentDescriptor *)self contentColor];
        v13 = [contentColor isEqual:?];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)configureCALayer:(id)layer forContentRenderedWithContextType:(int64_t)type options:(int64_t)options
{
  layerCopy = layer;
  [(PLKLegibilityContentDescriptor *)self allowsGroupBlending];
  [(PLKLegibilityContentDescriptor *)self allowsGroupOpacity];
  v7 = [PLKLegibilityContentDescriptor filtersForContextType:"filtersForContextType:options:" options:?];
  compositingFilter = [(PLKLegibilityContentDescriptor *)self compositingFilter];
  v9 = layerCopy;
  if (v9)
  {
    [v9 setFilters:?];
    [v9 setCompositingFilter:?];
    [v9 setAllowsGroupBlending:?];
    [v9 setAllowsGroupOpacity:?];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PLKLegibilityContentDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PLKLegibilityContentDescriptor *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:?];
  v5 = [v4 appendObject:? withName:? skipIfNil:?];
  v6 = [v4 appendObject:? withName:? skipIfNil:?];
  [(PLKLegibilityContentDescriptor *)self allowsGroupBlending];
  v7 = [v4 appendBool:? withName:?];
  [(PLKLegibilityContentDescriptor *)self allowsGroupOpacity];
  v8 = [v4 appendBool:? withName:?];

  return v4;
}

@end