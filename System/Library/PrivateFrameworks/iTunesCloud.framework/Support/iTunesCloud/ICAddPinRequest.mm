@interface ICAddPinRequest
- (ICAddPinRequest)initWithEntityType:(int64_t)type pinAction:(int64_t)action positionUUID:(id)d cloudID:(int64_t)iD cloudLibraryID:(id)libraryID databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)revision;
- (id)_bodyDataWithServerDatabaseRevision:(unsigned int)revision;
- (id)canonicalResponseForResponse:(id)response;
- (id)description;
@end

@implementation ICAddPinRequest

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromICLibraryPinEntityType();
  v5 = NSStringFromICLibraryPinAction();
  v6 = [NSString stringWithFormat:@"<%@: %p entityType=%@, defaultAction=%@, cloudID=%lld, cloudLibraryID=%@>", v3, self, v4, v5, self->_cloudID, self->_cloudLibraryID];

  return v6;
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
    addedItems = [(ICPinOperationResponseParserDelegate *)v8 addedItems];
    v10 = [addedItems copy];
    [v4 setAddedItems:v10];

    [v4 setUpdateRequired:{-[ICPinOperationResponseParserDelegate updateRequired](v8, "updateRequired")}];
    [v4 setActionFailed:{-[ICPinOperationResponseParserDelegate actionFailed](v8, "actionFailed")}];
  }

  return v4;
}

- (ICAddPinRequest)initWithEntityType:(int64_t)type pinAction:(int64_t)action positionUUID:(id)d cloudID:(int64_t)iD cloudLibraryID:(id)libraryID databaseID:(unsigned int)databaseID databaseRevision:(unsigned int)revision
{
  v9 = *&databaseID;
  dCopy = d;
  libraryIDCopy = libraryID;
  v17 = [NSString stringWithFormat:@"databases/%u/edit", v9];
  v25.receiver = self;
  v25.super_class = ICAddPinRequest;
  v18 = [(ICDRequest *)&v25 initWithAction:v17];

  if (v18)
  {
    v18->_storeID = 0;
    v18->_cloudID = iD;
    v18->_entityType = type;
    v18->_pinAction = action;
    v19 = [libraryIDCopy copy];
    cloudLibraryID = v18->_cloudLibraryID;
    v18->_cloudLibraryID = v19;

    v21 = [dCopy copy];
    positionUUID = v18->_positionUUID;
    v18->_positionUUID = v21;

    [(ICDRequest *)v18 setMethod:1];
    v23 = [(ICAddPinRequest *)v18 _bodyDataWithServerDatabaseRevision:revision];
    [(ICDRequest *)v18 setBodyData:v23];
  }

  return v18;
}

@end