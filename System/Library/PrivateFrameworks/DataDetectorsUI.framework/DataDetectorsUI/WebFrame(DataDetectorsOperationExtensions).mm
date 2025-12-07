@interface WebFrame(DataDetectorsOperationExtensions)
- (DDWebKitOperation)dd_newOperation;
@end

@implementation WebFrame(DataDetectorsOperationExtensions)

- (DDWebKitOperation)dd_newOperation
{
  v2 = [DDWebKitOperation alloc];

  return [(DDOperation *)v2 initWithContainer:self];
}

@end