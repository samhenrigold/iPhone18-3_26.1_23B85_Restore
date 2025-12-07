@interface LibcoreIoStructStatVfs
- (LibcoreIoStructStatVfs)initWithLong:(int64_t)long withLong:(int64_t)withLong withLong:(int64_t)a5 withLong:(int64_t)a6 withLong:(int64_t)a7 withLong:(int64_t)a8 withLong:(int64_t)a9 withLong:(int64_t)self0 withLong:(int64_t)self1 withLong:(int64_t)self2 withLong:(int64_t)self3;
@end

@implementation LibcoreIoStructStatVfs

- (LibcoreIoStructStatVfs)initWithLong:(int64_t)long withLong:(int64_t)withLong withLong:(int64_t)a5 withLong:(int64_t)a6 withLong:(int64_t)a7 withLong:(int64_t)a8 withLong:(int64_t)a9 withLong:(int64_t)self0 withLong:(int64_t)self1 withLong:(int64_t)self2 withLong:(int64_t)self3
{
  self->f_bsize_ = long;
  self->f_frsize_ = withLong;
  self->f_blocks_ = a5;
  self->f_bfree_ = a6;
  self->f_bavail_ = a7;
  self->f_files_ = a8;
  *&self->f_ffree_ = *&a9;
  *&self->f_fsid_ = *&a11;
  self->f_namemax_ = a13;
  return self;
}

@end