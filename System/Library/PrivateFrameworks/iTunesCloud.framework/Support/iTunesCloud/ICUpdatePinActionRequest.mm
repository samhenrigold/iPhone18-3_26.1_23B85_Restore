@interface ICUpdatePinActionRequest
- (ICUpdatePinActionRequest)initWithEntityType:(int64_t)type pinAction:(int64_t)action cloudID:(int64_t)d cloudLibraryID:(id)iD databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)revision;
- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)revision;
- (id)canonicalResponseForResponse:(id)response;
- (id)description;
@end

@implementation ICUpdatePinActionRequest

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromICLibraryPinEntityType();
  cloudID = self->_cloudID;
  cloudLibraryID = self->_cloudLibraryID;
  v7 = NSStringFromICLibraryPinAction();
  v8 = [NSString stringWithFormat:@"<%@: %p entityType=%@, cloudID=%lld, cloudLibraryID=%@, action=%@>", v3, self, v4, cloudID, cloudLibraryID, v7];

  return v8;
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
    v8 = [[ICPinOperationResponseParserDelegate alloc] initWithEntityType:self->_entityType pinAction:self->_pinAction];
    [v7 setDelegate:v8];
    [v7 parse];
    [v4 setUpdateRequired:{-[ICPinOperationResponseParserDelegate updateRequired](v8, "updateRequired")}];
    [v4 setActionFailed:{-[ICPinOperationResponseParserDelegate actionFailed](v8, "actionFailed")}];
  }

  return v4;
}

- (ICUpdatePinActionRequest)initWithEntityType:(int64_t)type pinAction:(int64_t)action cloudID:(int64_t)d cloudLibraryID:(id)iD databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)revision
{
  v8 = *&revision;
  v9 = *&databaseID;
  iDCopy = iD;
  v15 = [NSString stringWithFormat:@"databases/%u/edit", v9];
  v21.receiver = self;
  v21.super_class = ICUpdatePinActionRequest;
  v16 = [(ICDRequest *)&v21 initWithAction:v15];

  if (v16)
  {
    v16->_cloudID = d;
    v16->_entityType = type;
    v16->_pinAction = action;
    v17 = [iDCopy copy];
    cloudLibraryID = v16->_cloudLibraryID;
    v16->_cloudLibraryID = v17;

    [(ICDRequest *)v16 setMethod:1];
    v19 = [(ICUpdatePinActionRequest *)v16 _bodyDataWithServerDatabaseRevision:v8];
    [(ICDRequest *)v16 setBodyData:v19];
  }

  return v16;
}

@end