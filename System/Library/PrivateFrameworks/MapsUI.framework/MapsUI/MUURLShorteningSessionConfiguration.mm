@interface MUURLShorteningSessionConfiguration
- (BOOL)doNotUseCache;
- (MUURLShorteningSessionConfiguration)init;
- (MUURLShorteningSessionConfiguration)initWithTimeout:(double)timeout doNotUseCache:(BOOL)cache;
- (double)timeout;
- (void)setDoNotUseCache:(BOOL)cache;
- (void)setTimeout:(double)timeout;
@end

@implementation MUURLShorteningSessionConfiguration

- (double)timeout
{
  v3 = OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTimeout:(double)timeout
{
  v5 = OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout;
  swift_beginAccess();
  *(&self->super.isa + v5) = timeout;
}

- (BOOL)doNotUseCache
{
  v3 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoNotUseCache:(BOOL)cache
{
  v5 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
  swift_beginAccess();
  *(&self->super.isa + v5) = cache;
}

- (MUURLShorteningSessionConfiguration)init
{
  ObjectType = swift_getObjectType();
  GEOConfigGetDouble();
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout) = v4;
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MUURLShorteningSessionConfiguration *)&v6 init];
}

- (MUURLShorteningSessionConfiguration)initWithTimeout:(double)timeout doNotUseCache:(BOOL)cache
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout) = timeout;
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache) = cache;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(MUURLShorteningSessionConfiguration *)&v9 init];
}

@end