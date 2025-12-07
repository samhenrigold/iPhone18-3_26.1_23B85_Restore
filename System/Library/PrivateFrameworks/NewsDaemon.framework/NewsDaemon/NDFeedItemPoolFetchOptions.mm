@interface NDFeedItemPoolFetchOptions
- (NDFeedItemPoolFetchOptions)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDFeedItemPoolFetchOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_25BE4BA3C();
  v7 = sub_25BE4BA3C();
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = *(&selfCopy->super.isa + OBJC_IVAR___NDFeedItemPoolFetchOptions_maxAge);
  v9 = sub_25BE4BA3C();
  [coderCopy encodeDouble:v9 forKey:v8];
}

- (NDFeedItemPoolFetchOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end