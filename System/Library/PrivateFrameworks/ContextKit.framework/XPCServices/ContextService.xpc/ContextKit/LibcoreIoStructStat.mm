@interface LibcoreIoStructStat
- (LibcoreIoStructStat)initWithLong:(int64_t)long withLong:(int64_t)withLong withInt:(int)int withLong:(int64_t)a6 withInt:(int)withInt withInt:(int)a8 withLong:(int64_t)a9 withLong:(int64_t)self0 withLong:(int64_t)self1 withLong:(int64_t)self2 withLong:(int64_t)self3 withLong:(int64_t)self4 withLong:(int64_t)self5;
@end

@implementation LibcoreIoStructStat

- (LibcoreIoStructStat)initWithLong:(int64_t)long withLong:(int64_t)withLong withInt:(int)int withLong:(int64_t)a6 withInt:(int)withInt withInt:(int)a8 withLong:(int64_t)a9 withLong:(int64_t)self0 withLong:(int64_t)self1 withLong:(int64_t)self2 withLong:(int64_t)self3 withLong:(int64_t)self4 withLong:(int64_t)self5
{
  self->st_dev_ = long;
  self->st_ino_ = withLong;
  self->st_mode_ = int;
  self->st_nlink_ = a6;
  self->st_uid_ = withInt;
  self->st_gid_ = a8;
  *&self->st_rdev_ = *&a9;
  *&self->st_atime_ = *&a11;
  *&self->st_ctime_ = *&a13;
  self->st_blocks_ = a15;
  return self;
}

@end