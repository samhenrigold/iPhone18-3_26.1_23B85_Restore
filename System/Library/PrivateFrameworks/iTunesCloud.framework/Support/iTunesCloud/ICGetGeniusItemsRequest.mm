@interface ICGetGeniusItemsRequest
+ (id)requestWithDatabaseID:(unsigned int)d seedID:(unint64_t)iD numberOfItems:(unsigned int)items;
- (ICGetGeniusItemsRequest)initWithDatabaseID:(unsigned int)d seedID:(unint64_t)iD numberOfItems:(unsigned int)items;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation ICGetGeniusItemsRequest

+ (id)requestWithDatabaseID:(unsigned int)d seedID:(unint64_t)iD numberOfItems:(unsigned int)items
{
  v5 = [objc_alloc(objc_opt_class()) initWithDatabaseID:*&d seedID:iD numberOfItems:*&items];

  return v5;
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(ICDResponse *)ICGetGeniusItemsResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [ICDResponseDataParser parseResponseData:responseData];

  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 objectForKey:{@"dmap.longitemid", v16}];
        if (!v13)
        {
          v13 = [v12 objectForKey:@"dmap.itemid"];
          if (!v13)
          {
            continue;
          }
        }

        v14 = v13;
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [v3 setItemIDs:v6];

  return v3;
}

- (ICGetGeniusItemsRequest)initWithDatabaseID:(unsigned int)d seedID:(unint64_t)iD numberOfItems:(unsigned int)items
{
  v5 = *&items;
  v8 = [NSString stringWithFormat:@"databases/%u/getgeniusitems", *&d];
  v9 = [(ICDRequest *)self initWithAction:v8];

  if (v9)
  {
    v10 = [NSString stringWithFormat:@"%llu", iD];
    [(ICDRequest *)v9 setValue:v10 forArgument:@"seed-id"];

    v11 = [NSString stringWithFormat:@"%u", v5];
    [(ICDRequest *)v9 setValue:v11 forArgument:@"num-items"];
  }

  return v9;
}

@end