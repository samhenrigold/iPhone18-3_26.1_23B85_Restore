@interface ICSDKAddToLibraryRequest
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision opaqueID:(id)iD bundleID:(id)bundleID;
- (ICSDKAddToLibraryRequest)initWithAction:(id)action databaseID:(unsigned int)d databaseRevision:(unsigned int)revision opaqueID:(id)iD bundleID:(id)bundleID;
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision opaqueID:(id)d;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICSDKAddToLibraryRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision opaqueID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICSDKAddToLibraryResponse responseWithResponse:response];
  responseData = [v3 responseData];
  if ([responseData length])
  {
    v5 = [NSInputStream inputStreamWithData:responseData];
    v6 = [[DKDAAPParser alloc] initWithStream:v5];
    v7 = objc_alloc_init(SDKAddToLibraryResponseParserDelegate);
    [v6 setDelegate:v7];
    [v6 parse];
    addedItems = [(SDKAddToLibraryResponseParserDelegate *)v7 addedItems];
    v9 = [addedItems copy];
    [v3 setAddedItems:v9];

    [v3 setUpdateRequired:{-[SDKAddToLibraryResponseParserDelegate updateRequired](v7, "updateRequired")}];
  }

  return v3;
}

- (ICSDKAddToLibraryRequest)initWithAction:(id)action databaseID:(unsigned int)d databaseRevision:(unsigned int)revision opaqueID:(id)iD bundleID:(id)bundleID
{
  v8 = *&revision;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  v17.receiver = self;
  v17.super_class = ICSDKAddToLibraryRequest;
  v13 = [(ICDRequest *)&v17 initWithAction:action];
  v14 = v13;
  if (v13)
  {
    [(ICDRequest *)v13 setMethod:1];
    [(ICDRequest *)v14 setRequestingBundleID:bundleIDCopy];
    v15 = [(ICSDKAddToLibraryRequest *)v14 _bodyDataForDatabaseRevision:v8 opaqueID:iDCopy];
    [(ICDRequest *)v14 setBodyData:v15];
  }

  return v14;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision opaqueID:(id)iD bundleID:(id)bundleID
{
  v7 = *&revision;
  v8 = *&d;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  v11 = [NSString stringWithFormat:@"databases/%u/cloud-add", v8];
  v12 = [objc_alloc(objc_opt_class()) initWithAction:v11 databaseID:v8 databaseRevision:v7 opaqueID:iDCopy bundleID:bundleIDCopy];

  return v12;
}

@end