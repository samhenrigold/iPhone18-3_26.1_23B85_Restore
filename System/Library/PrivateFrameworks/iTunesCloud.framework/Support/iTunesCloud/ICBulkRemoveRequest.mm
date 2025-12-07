@interface ICBulkRemoveRequest
- (ICBulkRemoveRequest)initWithDatabaseID:(unsigned int)d sagaIDs:(id)ds itemKind:(unsigned __int8)kind;
- (id)_bodyDataForSagaIDs:(id)ds itemKind:(unsigned __int8)kind;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICBulkRemoveRequest

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICRemoveFromLibraryResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(DeleteFromLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    deletedItems = [(DeleteFromLibraryResponseParserDelegate *)v7 deletedItems];
    v9 = [deletedItems copy];
    [v3 setDeletedItems:v9];

    [v3 setUpdateRequired:{-[DeleteFromLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

- (id)_bodyDataForSagaIDs:(id)ds itemKind:(unsigned __int8)kind
{
  dsCopy = ds;
  v4 = dsCopy;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

- (ICBulkRemoveRequest)initWithDatabaseID:(unsigned int)d sagaIDs:(id)ds itemKind:(unsigned __int8)kind
{
  kindCopy = kind;
  v6 = *&d;
  dsCopy = ds;
  v15.receiver = self;
  v15.super_class = ICBulkRemoveRequest;
  v9 = [(ICBulkRemoveRequest *)&v15 init];
  v10 = [NSString stringWithFormat:@"databases/%u/edit", v6];
  v14.receiver = v9;
  v14.super_class = ICBulkRemoveRequest;
  v11 = [(ICDRequest *)&v14 initWithAction:v10];

  if (v11)
  {
    [(ICDRequest *)v11 setMethod:1];
    v12 = [(ICBulkRemoveRequest *)v11 _bodyDataForSagaIDs:dsCopy itemKind:kindCopy];
    [(ICDRequest *)v11 setBodyData:v12];
  }

  return v11;
}

@end