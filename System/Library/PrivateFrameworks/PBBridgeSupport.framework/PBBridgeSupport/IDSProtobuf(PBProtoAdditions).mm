@interface IDSProtobuf(PBProtoAdditions)
- (id)pbDescription;
@end

@implementation IDSProtobuf(PBProtoAdditions)

- (id)pbDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  type = [self type];
  isResponse = [self isResponse];
  context = [self context];
  pbDescription = [context pbDescription];
  data = [self data];
  v10 = [v3 stringWithFormat:@"%@, <%p> type %d isResponse %d context %@ length %lu", v4, self, type, isResponse, pbDescription, objc_msgSend(data, "length")];

  return v10;
}

@end