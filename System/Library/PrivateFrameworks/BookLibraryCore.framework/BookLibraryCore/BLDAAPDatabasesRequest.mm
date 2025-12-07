@interface BLDAAPDatabasesRequest
- (BLDAAPDatabasesRequest)initWithDSID:(id)d reason:(int64_t)reason sessionID:(id)iD revisionNumber:(id)number delta:(id)delta;
@end

@implementation BLDAAPDatabasesRequest

- (BLDAAPDatabasesRequest)initWithDSID:(id)d reason:(int64_t)reason sessionID:(id)iD revisionNumber:(id)number delta:(id)delta
{
  v40[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  numberCopy = number;
  deltaCopy = delta;
  v28.receiver = self;
  v28.super_class = BLDAAPDatabasesRequest;
  v16 = [(BLDAAPURLRequest *)&v28 initWithDSID:dCopy reason:reason];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  if (dCopy && reason && iDCopy && numberCopy && deltaCopy)
  {
    [(BLDAAPURLRequest *)v16 setDaapURL:@"databases"];
    [(BLDAAPURLRequest *)v17 setContentType:1];
    [(BLDAAPDatabasesRequest *)v17 setDelta:deltaCopy];
    v18 = MEMORY[0x277CBEBC0];
    v39[0] = @"session-id";
    stringValue = [iDCopy stringValue];
    v40[0] = stringValue;
    v39[1] = @"revision-number";
    stringValue2 = [numberCopy stringValue];
    v40[1] = stringValue2;
    v39[2] = @"delta";
    stringValue3 = [deltaCopy stringValue];
    v40[2] = stringValue3;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v22 = [v18 bu_queryStringForDictionary:v21 escapedValues:0];
    v23 = [v22 dataUsingEncoding:4];
    [(BLDAAPURLRequest *)v17 setBody:v23];

LABEL_8:
    v24 = v17;
    goto LABEL_12;
  }

  v25 = BLJaliscoLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413314;
    v30 = dCopy;
    v31 = 2048;
    reasonCopy = reason;
    v33 = 2114;
    v34 = iDCopy;
    v35 = 2114;
    v36 = numberCopy;
    v37 = 2114;
    v38 = deltaCopy;
    _os_log_impl(&dword_241D1F000, v25, OS_LOG_TYPE_ERROR, "BLDAAPDatabasesRequest init failed: Missing a parameter type. dsid:(%@) reason:(%ld) sessionID: %{public}@ revisionNumber:%{public}@ delta:%{public}@", buf, 0x34u);
  }

  v24 = 0;
LABEL_12:

  return v24;
}

@end