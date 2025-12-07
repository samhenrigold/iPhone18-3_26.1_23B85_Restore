@interface LibcoreIoStructTimeval
+ (id)fromMillisWithLong:(int64_t)long;
- (LibcoreIoStructTimeval)initWithLong:(int64_t)long withLong:(int64_t)withLong;
@end

@implementation LibcoreIoStructTimeval

- (LibcoreIoStructTimeval)initWithLong:(int64_t)long withLong:(int64_t)withLong
{
  self->tv_sec_ = long;
  self->tv_usec_ = withLong;
  return self;
}

+ (id)fromMillisWithLong:(int64_t)long
{
  v3 = long / 1000;
  v4 = 1000 * (long % 1000);
  v5 = [LibcoreIoStructTimeval alloc];
  v5->tv_sec_ = v3;
  v5->tv_usec_ = v4;

  return v5;
}

@end