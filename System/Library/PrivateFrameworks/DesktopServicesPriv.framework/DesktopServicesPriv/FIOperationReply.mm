@interface FIOperationReply
- (FIOperationReply)initWithResolution:(unsigned int)resolution error:(id)error;
@end

@implementation FIOperationReply

- (FIOperationReply)initWithResolution:(unsigned int)resolution error:(id)error
{
  v4 = *&resolution;
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = FIOperationReply;
  v7 = [(FIOperationReply *)&v9 init];
  [(FIOperationReply *)v7 setResolution:v4];
  [(FIOperationReply *)v7 setError:errorCopy];

  return v7;
}

@end