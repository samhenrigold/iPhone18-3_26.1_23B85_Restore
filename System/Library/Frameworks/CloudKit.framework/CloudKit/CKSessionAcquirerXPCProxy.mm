@interface CKSessionAcquirerXPCProxy
+ (NSXPCInterface)CKXPCClientToDaemonSessionAcquisitionInterface;
+ (NSXPCInterface)CKXPCDaemonToClientSessionAcquisitionInterface;
- (void)noteSessionReadinessError:(id)error;
@end

@implementation CKSessionAcquirerXPCProxy

+ (NSXPCInterface)CKXPCDaemonToClientSessionAcquisitionInterface
{
  v2 = sub_188422CA4(&qword_1ED4B5E58, &qword_1ED4B6788, sub_188422CF0);

  return v2;
}

+ (NSXPCInterface)CKXPCClientToDaemonSessionAcquisitionInterface
{
  v2 = sub_188422CA4(&qword_1ED4B5E20, &qword_1ED4B6790, sub_188422DB8);

  return v2;
}

- (void)noteSessionReadinessError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_1884A16EC();
}

@end