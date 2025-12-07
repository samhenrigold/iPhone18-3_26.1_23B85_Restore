@interface IDSProtobuf(NFMProtoAdditions)
- (id)nfmDescription;
@end

@implementation IDSProtobuf(NFMProtoAdditions)

- (id)nfmDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  type = [self type];
  isResponse = [self isResponse];
  data = [self data];
  v8 = [v3 stringWithFormat:@"%@, <%p> type %d isResponse %d context %@ length %lu", v4, self, type, isResponse, self, objc_msgSend(data, "length")];

  return v8;
}

@end