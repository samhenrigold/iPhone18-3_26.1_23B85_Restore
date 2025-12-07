@interface LibcoreIoStructGroupReq
- (LibcoreIoStructGroupReq)initWithInt:(int)int withJavaNetInetAddress:(id)address;
- (void)dealloc;
@end

@implementation LibcoreIoStructGroupReq

- (LibcoreIoStructGroupReq)initWithInt:(int)int withJavaNetInetAddress:(id)address
{
  self->gr_interface_ = int;
  JreStrongAssign(&self->gr_group_, address);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIoStructGroupReq;
  [(LibcoreIoStructGroupReq *)&v3 dealloc];
}

@end