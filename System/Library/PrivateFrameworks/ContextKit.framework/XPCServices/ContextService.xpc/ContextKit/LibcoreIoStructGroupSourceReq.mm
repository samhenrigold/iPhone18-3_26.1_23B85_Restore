@interface LibcoreIoStructGroupSourceReq
- (LibcoreIoStructGroupSourceReq)initWithInt:(int)int withJavaNetInetAddress:(id)address withJavaNetInetAddress:(id)inetAddress;
- (void)dealloc;
@end

@implementation LibcoreIoStructGroupSourceReq

- (LibcoreIoStructGroupSourceReq)initWithInt:(int)int withJavaNetInetAddress:(id)address withJavaNetInetAddress:(id)inetAddress
{
  self->gsr_interface_ = int;
  JreStrongAssign(&self->gsr_group_, address);
  JreStrongAssign(&self->gsr_source_, inetAddress);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIoStructGroupSourceReq;
  [(LibcoreIoStructGroupSourceReq *)&v3 dealloc];
}

@end