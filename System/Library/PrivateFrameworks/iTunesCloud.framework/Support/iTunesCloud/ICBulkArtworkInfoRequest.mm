@interface ICBulkArtworkInfoRequest
- (ICBulkArtworkInfoRequest)initWithDatabaseID:(unsigned int)d cloudIDs:(id)ds itemKind:(unsigned __int8)kind useLongIDs:(BOOL)iDs;
- (id)_bodyDataForCloudIDs:(id)ds itemKind:(unsigned __int8)kind useLongIDs:(BOOL)iDs;
- (id)_queryFilterString;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICBulkArtworkInfoRequest

- (id)_queryFilterString
{
  v2 = [@"com.apple.itunes.extended-media-kind" stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [&off_1001EE320 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&off_1001EE320 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&off_1001EE320);
        }

        v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"'%@:%d'", v2, [*(*(&v12 + 1) + 8 * i) intValue]);
        [v3 addObject:v8];
      }

      v5 = [&off_1001EE320 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [NSString stringWithFormat:@"(%@)", v9];

  return v10;
}

- (id)_bodyDataForCloudIDs:(id)ds itemKind:(unsigned __int8)kind useLongIDs:(BOOL)iDs
{
  dsCopy = ds;
  v5 = dsCopy;
  v6 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v6;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICBulkArtworkInfoResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:responseData];

  [v3 setArtworkInfoDictionaries:v5];

  return v3;
}

- (ICBulkArtworkInfoRequest)initWithDatabaseID:(unsigned int)d cloudIDs:(id)ds itemKind:(unsigned __int8)kind useLongIDs:(BOOL)iDs
{
  iDsCopy = iDs;
  kindCopy = kind;
  v8 = *&d;
  dsCopy = ds;
  v11 = [NSString stringWithFormat:@"databases/%u/extra_data/cloud-artwork-info", v8];
  v15.receiver = self;
  v15.super_class = ICBulkArtworkInfoRequest;
  v12 = [(ICDRequest *)&v15 initWithAction:v11];

  if (v12)
  {
    [(ICDRequest *)v12 setMethod:1];
    v13 = [(ICBulkArtworkInfoRequest *)v12 _bodyDataForCloudIDs:dsCopy itemKind:kindCopy useLongIDs:iDsCopy];
    [(ICDRequest *)v12 setBodyData:v13];

    [(ICDRequest *)v12 setRequestPersonalizationStyle:2];
  }

  return v12;
}

@end