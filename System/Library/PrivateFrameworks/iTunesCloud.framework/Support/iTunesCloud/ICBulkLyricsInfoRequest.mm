@interface ICBulkLyricsInfoRequest
+ (id)requestWithDatabaseID:(unsigned int)d itemIDs:(id)ds useLongIDs:(BOOL)iDs;
- (ICBulkLyricsInfoRequest)initWithDatabaseID:(unsigned int)d itemIDs:(id)ds useLongIDs:(BOOL)iDs;
- (id)_bodyDataForItemIDs:(id)ds useLongIDs:(BOOL)iDs;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICBulkLyricsInfoRequest

- (id)_bodyDataForItemIDs:(id)ds useLongIDs:(BOOL)iDs
{
  dsCopy = ds;
  v4 = dsCopy;
  v5 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v5;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICBulkLyricsInfoResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:responseData];

  [v3 setLyricsInfoDictionaries:v5];

  return v3;
}

- (ICBulkLyricsInfoRequest)initWithDatabaseID:(unsigned int)d itemIDs:(id)ds useLongIDs:(BOOL)iDs
{
  iDsCopy = iDs;
  v6 = *&d;
  dsCopy = ds;
  v9 = [NSString stringWithFormat:@"databases/%u/extra_data/cloud-lyrics-info", v6];
  v13.receiver = self;
  v13.super_class = ICBulkLyricsInfoRequest;
  v10 = [(ICDRequest *)&v13 initWithAction:v9];

  if (v10)
  {
    [(ICDRequest *)v10 setMethod:1];
    v11 = [(ICBulkLyricsInfoRequest *)v10 _bodyDataForItemIDs:dsCopy useLongIDs:iDsCopy];
    [(ICDRequest *)v10 setBodyData:v11];
  }

  return v10;
}

+ (id)requestWithDatabaseID:(unsigned int)d itemIDs:(id)ds useLongIDs:(BOOL)iDs
{
  iDsCopy = iDs;
  v6 = *&d;
  dsCopy = ds;
  v8 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v6 itemIDs:dsCopy useLongIDs:iDsCopy];

  return v8;
}

@end