@interface CADClientBlockOperation
+ (id)blockOperationWithToken:(unsigned int)token block:(id)block;
- (CADClientBlockOperation)initWithToken:(unsigned int)token;
@end

@implementation CADClientBlockOperation

- (CADClientBlockOperation)initWithToken:(unsigned int)token
{
  v5.receiver = self;
  v5.super_class = CADClientBlockOperation;
  result = [(NSBlockOperation *)&v5 init];
  if (result)
  {
    result->_token = token;
  }

  return result;
}

+ (id)blockOperationWithToken:(unsigned int)token block:(id)block
{
  v4 = *&token;
  blockCopy = block;
  v6 = [[CADClientBlockOperation alloc] initWithToken:v4];
  [(NSBlockOperation *)v6 addExecutionBlock:blockCopy];

  return v6;
}

@end