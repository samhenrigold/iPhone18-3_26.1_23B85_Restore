@interface ICItemsRequest
+ (id)requestWithDatabaseID:(unsigned int)d metadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items;
+ (id)requestWithDatabaseID:(unsigned int)d metadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders;
+ (id)requestWithDatabaseID:(unsigned int)d metadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders paginationToken:(id)token;
+ (id)requestWithDatabaseID:(unsigned int)d paginationToken:(id)token;
- (ICItemsRequest)initWithDatabaseID:(unsigned int)d metadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders paginationToken:(id)token;
- (id)_bodyDataForMetadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders paginationToken:(id)token;
@end

@implementation ICItemsRequest

- (id)_bodyDataForMetadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders paginationToken:(id)token
{
  filterCopy = filter;
  queryFilterCopy = queryFilter;
  tokensCopy = tokens;
  v20 = filterCopy;
  tokenCopy = token;
  v22 = tokensCopy;
  v14 = tokensCopy;
  v15 = tokenCopy;
  v16 = queryFilterCopy;
  v17 = filterCopy;
  v18 = ICDAAPUtilitiesCreateDataForContainer();

  return v18;
}

- (ICItemsRequest)initWithDatabaseID:(unsigned int)d metadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders paginationToken:(id)token
{
  preordersCopy = preorders;
  itemsCopy = items;
  v13 = *&d;
  filterCopy = filter;
  queryFilterCopy = queryFilter;
  tokensCopy = tokens;
  tokenCopy = token;
  v19 = [NSString stringWithFormat:@"databases/%u/items", v13];
  v23.receiver = self;
  v23.super_class = ICItemsRequest;
  v20 = [(ICDRequest *)&v23 initWithAction:v19];

  if (v20)
  {
    [(ICDRequest *)v20 setMethod:1];
    v21 = [(ICItemsRequest *)v20 _bodyDataForMetadataFilter:filterCopy queryFilter:queryFilterCopy purchaseTokens:tokensCopy includeHiddenItems:itemsCopy includePreorders:preordersCopy paginationToken:tokenCopy];
    [(ICDRequest *)v20 setBodyData:v21];

    [(ICDRequest *)v20 setRequestPersonalizationStyle:2];
  }

  return v20;
}

+ (id)requestWithDatabaseID:(unsigned int)d metadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders paginationToken:(id)token
{
  preordersCopy = preorders;
  itemsCopy = items;
  v14 = *&d;
  tokenCopy = token;
  tokensCopy = tokens;
  queryFilterCopy = queryFilter;
  filterCopy = filter;
  v19 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v14 metadataFilter:filterCopy queryFilter:queryFilterCopy purchaseTokens:tokensCopy includeHiddenItems:itemsCopy includePreorders:preordersCopy paginationToken:tokenCopy];

  return v19;
}

+ (id)requestWithDatabaseID:(unsigned int)d metadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items includePreorders:(BOOL)preorders
{
  preordersCopy = preorders;
  itemsCopy = items;
  v12 = *&d;
  tokensCopy = tokens;
  queryFilterCopy = queryFilter;
  filterCopy = filter;
  v16 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v12 metadataFilter:filterCopy queryFilter:queryFilterCopy purchaseTokens:tokensCopy includeHiddenItems:itemsCopy includePreorders:preordersCopy paginationToken:0];

  return v16;
}

+ (id)requestWithDatabaseID:(unsigned int)d metadataFilter:(id)filter queryFilter:(id)queryFilter purchaseTokens:(id)tokens includeHiddenItems:(BOOL)items
{
  itemsCopy = items;
  v10 = *&d;
  tokensCopy = tokens;
  queryFilterCopy = queryFilter;
  filterCopy = filter;
  v14 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v10 metadataFilter:filterCopy queryFilter:queryFilterCopy purchaseTokens:tokensCopy includeHiddenItems:itemsCopy includePreorders:0 paginationToken:0];

  return v14;
}

+ (id)requestWithDatabaseID:(unsigned int)d paginationToken:(id)token
{
  v4 = *&d;
  tokenCopy = token;
  v6 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v4 metadataFilter:0 queryFilter:0 purchaseTokens:0 includeHiddenItems:0 includePreorders:0 paginationToken:tokenCopy];

  return v6;
}

@end