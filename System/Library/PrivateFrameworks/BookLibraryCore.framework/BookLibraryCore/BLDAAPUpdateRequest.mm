@interface BLDAAPUpdateRequest
- (BLDAAPUpdateRequest)initWithDSID:(id)d reason:(int64_t)reason sessionID:(id)iD localVersion:(id)version;
@end

@implementation BLDAAPUpdateRequest

- (BLDAAPUpdateRequest)initWithDSID:(id)d reason:(int64_t)reason sessionID:(id)iD localVersion:(id)version
{
  v22[2] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  versionCopy = version;
  v20.receiver = self;
  v20.super_class = BLDAAPUpdateRequest;
  v12 = [(BLDAAPURLRequest *)&v20 initWithDSID:d reason:reason];
  v13 = v12;
  if (v12)
  {
    [(BLDAAPURLRequest *)v12 setDaapURL:@"update"];
    v14 = MEMORY[0x277CBEBC0];
    v21[0] = @"session-id";
    stringValue = [iDCopy stringValue];
    v21[1] = @"revision-number";
    v22[0] = stringValue;
    v22[1] = versionCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v17 = [v14 bu_queryStringForDictionary:v16 escapedValues:0];
    v18 = [v17 dataUsingEncoding:4];
    [(BLDAAPURLRequest *)v13 setBody:v18];
  }

  return v13;
}

@end