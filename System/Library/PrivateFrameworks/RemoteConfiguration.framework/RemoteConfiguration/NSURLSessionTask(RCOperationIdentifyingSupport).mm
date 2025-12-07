@interface NSURLSessionTask(RCOperationIdentifyingSupport)
- (id)longOperationDescription;
- (id)shortOperationDescription;
@end

@implementation NSURLSessionTask(RCOperationIdentifyingSupport)

- (id)shortOperationDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  _loggableDescription = [self _loggableDescription];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, _loggableDescription];

  return v6;
}

- (id)longOperationDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  _loggableDescription = [self _loggableDescription];
  [self priority];
  v7 = [v3 stringWithFormat:@"<%@ %@, priority=%.2f>", v4, _loggableDescription, v6];

  return v7;
}

@end