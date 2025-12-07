@interface ASORateLimiter
- (ASORateLimiter)init;
- (ASORateLimiter)initWithRequestsPerSecond:(double)second timeWindow:(double)window;
- (BOOL)recordAttempt;
@end

@implementation ASORateLimiter

- (ASORateLimiter)initWithRequestsPerSecond:(double)second timeWindow:(double)window
{
  v6 = objc_allocWithZone(type metadata accessor for RateLimiter(0));
  v7 = sub_10000F970(v6, second, window);
  v9 = v8;
  swift_getObjectType(v7);
  swift_deallocPartialClassInstance();
  return v9;
}

- (BOOL)recordAttempt
{
  selfCopy = self;
  v3 = sub_10000FC74();

  return v3;
}

- (ASORateLimiter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end