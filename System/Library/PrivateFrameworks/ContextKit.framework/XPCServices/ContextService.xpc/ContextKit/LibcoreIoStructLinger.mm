@interface LibcoreIoStructLinger
- (LibcoreIoStructLinger)initWithInt:(int)int withInt:(int)withInt;
@end

@implementation LibcoreIoStructLinger

- (LibcoreIoStructLinger)initWithInt:(int)int withInt:(int)withInt
{
  self->l_onoff_ = int;
  self->l_linger_ = withInt;
  return self;
}

@end