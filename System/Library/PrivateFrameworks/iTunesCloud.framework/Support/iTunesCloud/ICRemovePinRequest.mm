@interface ICRemovePinRequest
- (ICRemovePinRequest)initWithEntityType:(int64_t)type cloudID:(int64_t)d cloudLibraryID:(id)iD databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)revision;
- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)revision;
- (id)canonicalResponseForResponse:(id)response;
- (id)description;
@end

@implementation ICRemovePinRequest

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromICLibraryPinEntityType();
  v5 = [NSString stringWithFormat:@"<%@: %p entityType=%@, cloudID=%lld, cloudLibraryID=%@>", v3, self, v4, self->_cloudID, self->_cloudLibraryID];

  return v5;
}

- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)revision
{
  v3 = ICDAAPUtilitiesCreateDataForContainer();

  return v3;
}

- (id)canonicalResponseForResponse:(id)response
{
  v4 = [(ICDResponse *)ICPinOperationResponse responseWithResponse:response];
  responseData = [v4 responseData];
  if ([responseData length])
  {
    v6 = [NSInputStream inputStreamWithData:responseData];
    v7 = [[DKDAAPParser alloc] initWithStream:v6];
    v8 = [[ICPinOperationResponseParserDelegate alloc] initWithEntityType:self->_entityType pinAction:1];
    [v7 setDelegate:v8];
    [v7 parse];
    [v4 setUpdateRequired:{-[ICPinOperationResponseParserDelegate updateRequired](v8, "updateRequired")}];
    [v4 setActionFailed:{-[ICPinOperationResponseParserDelegate actionFailed](v8, "actionFailed")}];
  }

  return v4;
}

- (ICRemovePinRequest)initWithEntityType:(int64_t)type cloudID:(int64_t)d cloudLibraryID:(id)iD databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)revision
{
  v7 = *&revision;
  v8 = *&databaseID;
  iDCopy = iD;
  v13 = [NSString stringWithFormat:@"databases/%u/edit", v8];
  v19.receiver = self;
  v19.super_class = ICRemovePinRequest;
  v14 = [(ICDRequest *)&v19 initWithAction:v13];

  if (v14)
  {
    v14->_cloudID = d;
    v14->_entityType = type;
    v15 = [iDCopy copy];
    cloudLibraryID = v14->_cloudLibraryID;
    v14->_cloudLibraryID = v15;

    [(ICDRequest *)v14 setMethod:1];
    v17 = [(ICRemovePinRequest *)v14 _bodyDataWithServerDatabaseRevision:v7];
    [(ICDRequest *)v14 setBodyData:v17];
  }

  return v14;
}

@end