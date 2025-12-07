@interface CKOperation(FCOperationIdentifyingSupport)
- (id)longOperationDescription;
- (id)shortOperationDescription;
@end

@implementation CKOperation(FCOperationIdentifyingSupport)

- (id)shortOperationDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  operationID = [self operationID];
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, operationID];

  return v6;
}

- (id)longOperationDescription
{
  v2 = FCStringFromQualityOfService([self qualityOfService]);
  v3 = FCStringFromQueuePriority([self queuePriority]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  operationID = [self operationID];
  v7 = [v4 stringWithFormat:@"<%@ %@, qos=%@, priority=%@>", v5, operationID, v2, v3];

  return v7;
}

@end