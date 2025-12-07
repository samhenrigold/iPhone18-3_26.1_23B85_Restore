@interface ICBulkSetItemPropertyRequest
+ (id)requestWithDatabaseID:(unsigned int)d albumArtistCloudLibraryIDs:(id)ds properties:(id)properties;
+ (id)requestWithDatabaseID:(unsigned int)d albumCloudLibraryIDs:(id)ds properties:(id)properties;
+ (id)requestWithDatabaseID:(unsigned int)d itemIDs:(id)ds properties:(id)properties useLongIDs:(BOOL)iDs;
- (ICBulkSetItemPropertyRequest)initWithDatabaseID:(unsigned int)d albumArtistCloudLibraryIDs:(id)ds properties:(id)properties;
- (ICBulkSetItemPropertyRequest)initWithDatabaseID:(unsigned int)d albumCloudLibraryIDs:(id)ds properties:(id)properties;
- (ICBulkSetItemPropertyRequest)initWithDatabaseID:(unsigned int)d itemIDs:(id)ds properties:(id)properties useLongIDs:(BOOL)iDs;
- (id)_bodyDataForItemIDs:(id)ds properties:(id)properties useLongIDs:(BOOL)iDs;
- (id)_bodyDataForItemKind:(unsigned __int8)kind cloudLibraryIDs:(id)ds properties:(id)properties;
@end

@implementation ICBulkSetItemPropertyRequest

- (id)_bodyDataForItemKind:(unsigned __int8)kind cloudLibraryIDs:(id)ds properties:(id)properties
{
  dsCopy = ds;
  propertiesCopy = properties;
  +[ICDAAPPropertyInfo sharedItemPropertyInfo];
  v13 = dsCopy;
  v15 = v14 = propertiesCopy;
  v8 = v15;
  v9 = propertiesCopy;
  v10 = dsCopy;
  v11 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v11;
}

- (id)_bodyDataForItemIDs:(id)ds properties:(id)properties useLongIDs:(BOOL)iDs
{
  dsCopy = ds;
  propertiesCopy = properties;
  +[ICDAAPPropertyInfo sharedItemPropertyInfo];
  v13 = dsCopy;
  v15 = v14 = propertiesCopy;
  v8 = v15;
  v9 = propertiesCopy;
  v10 = dsCopy;
  v11 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v11;
}

- (ICBulkSetItemPropertyRequest)initWithDatabaseID:(unsigned int)d albumCloudLibraryIDs:(id)ds properties:(id)properties
{
  v6 = *&d;
  dsCopy = ds;
  propertiesCopy = properties;
  v10 = [NSString stringWithFormat:@"databases/%u/edit", v6];
  v14.receiver = self;
  v14.super_class = ICBulkSetItemPropertyRequest;
  v11 = [(ICDRequest *)&v14 initWithAction:v10];

  if (v11)
  {
    [(ICDRequest *)v11 setMethod:1];
    v12 = [(ICBulkSetItemPropertyRequest *)v11 _bodyDataForItemKind:7 cloudLibraryIDs:dsCopy properties:propertiesCopy];
    [(ICDRequest *)v11 setBodyData:v12];
  }

  return v11;
}

- (ICBulkSetItemPropertyRequest)initWithDatabaseID:(unsigned int)d albumArtistCloudLibraryIDs:(id)ds properties:(id)properties
{
  v6 = *&d;
  dsCopy = ds;
  propertiesCopy = properties;
  v10 = [NSString stringWithFormat:@"databases/%u/edit", v6];
  v14.receiver = self;
  v14.super_class = ICBulkSetItemPropertyRequest;
  v11 = [(ICDRequest *)&v14 initWithAction:v10];

  if (v11)
  {
    [(ICDRequest *)v11 setMethod:1];
    v12 = [(ICBulkSetItemPropertyRequest *)v11 _bodyDataForItemKind:6 cloudLibraryIDs:dsCopy properties:propertiesCopy];
    [(ICDRequest *)v11 setBodyData:v12];
  }

  return v11;
}

- (ICBulkSetItemPropertyRequest)initWithDatabaseID:(unsigned int)d itemIDs:(id)ds properties:(id)properties useLongIDs:(BOOL)iDs
{
  iDsCopy = iDs;
  v8 = *&d;
  dsCopy = ds;
  propertiesCopy = properties;
  v12 = [NSString stringWithFormat:@"databases/%u/items/edit", v8];
  v16.receiver = self;
  v16.super_class = ICBulkSetItemPropertyRequest;
  v13 = [(ICDRequest *)&v16 initWithAction:v12];

  if (v13)
  {
    [(ICDRequest *)v13 setMethod:1];
    v14 = [(ICBulkSetItemPropertyRequest *)v13 _bodyDataForItemIDs:dsCopy properties:propertiesCopy useLongIDs:iDsCopy];
    [(ICDRequest *)v13 setBodyData:v14];
  }

  return v13;
}

+ (id)requestWithDatabaseID:(unsigned int)d albumCloudLibraryIDs:(id)ds properties:(id)properties
{
  v6 = *&d;
  propertiesCopy = properties;
  dsCopy = ds;
  v9 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v6 albumCloudLibraryIDs:dsCopy properties:propertiesCopy];

  return v9;
}

+ (id)requestWithDatabaseID:(unsigned int)d albumArtistCloudLibraryIDs:(id)ds properties:(id)properties
{
  v6 = *&d;
  propertiesCopy = properties;
  dsCopy = ds;
  v9 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v6 albumArtistCloudLibraryIDs:dsCopy properties:propertiesCopy];

  return v9;
}

+ (id)requestWithDatabaseID:(unsigned int)d itemIDs:(id)ds properties:(id)properties useLongIDs:(BOOL)iDs
{
  iDsCopy = iDs;
  v8 = *&d;
  propertiesCopy = properties;
  dsCopy = ds;
  v11 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v8 itemIDs:dsCopy properties:propertiesCopy useLongIDs:iDsCopy];

  return v11;
}

@end