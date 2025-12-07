@interface SBKPullValueRequest
+ (id)propertyListBodyWithTransaction:(id)transaction;
+ (id)requestForTransaction:(id)transaction;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation SBKPullValueRequest

+ (id)requestForTransaction:(id)transaction
{
  transactionCopy = transaction;
  requestURL = [transactionCopy requestURL];
  v6 = [self requestWithRequestURL:requestURL];

  [v6 setMethod:1];
  v7 = [self propertyListBodyWithTransaction:transactionCopy];
  [v6 setBodyDataWithPropertyList:v7];

  [v6 setTransaction:transactionCopy];
  [v6 setIncludeDeviceGUID:1];

  return v6;
}

+ (id)propertyListBodyWithTransaction:(id)transaction
{
  v13[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  clientItemVersionAnchor = [transactionCopy clientItemVersionAnchor];
  v5 = clientItemVersionAnchor;
  v6 = @"0";
  if (clientItemVersionAnchor)
  {
    v6 = clientItemVersionAnchor;
  }

  v7 = v6;

  v12[0] = @"domain";
  domain = [transactionCopy domain];
  v13[0] = domain;
  v13[1] = v7;
  v12[1] = @"since-version";
  v12[2] = @"key";
  requestedKey = [transactionCopy requestedKey];

  v13[2] = requestedKey;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (id)canonicalResponseForResponse:(id)response
{
  responseCopy = response;
  transaction = [(SBKRequest *)self transaction];
  v6 = [SBKPullValueResponse responseWithResponse:responseCopy transaction:transaction];

  return v6;
}

@end