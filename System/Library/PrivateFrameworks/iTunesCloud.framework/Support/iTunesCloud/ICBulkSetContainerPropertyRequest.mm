@interface ICBulkSetContainerPropertyRequest
+ (id)requestWithDatabaseID:(unsigned int)d containerIDs:(id)ds properties:(id)properties;
- (ICBulkSetContainerPropertyRequest)initWithDatabaseID:(unsigned int)d containerIDs:(id)ds properties:(id)properties;
- (id)_bodyDataForContainerIDs:(id)ds properties:(id)properties;
@end

@implementation ICBulkSetContainerPropertyRequest

- (id)_bodyDataForContainerIDs:(id)ds properties:(id)properties
{
  dsCopy = ds;
  propertiesCopy = properties;
  +[ICDAAPPropertyInfo sharedContainerPropertyInfo];
  v12 = dsCopy;
  v14 = v13 = propertiesCopy;
  v7 = v14;
  v8 = propertiesCopy;
  v9 = dsCopy;
  v10 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v10;
}

- (ICBulkSetContainerPropertyRequest)initWithDatabaseID:(unsigned int)d containerIDs:(id)ds properties:(id)properties
{
  v6 = *&d;
  dsCopy = ds;
  propertiesCopy = properties;
  v10 = [NSString stringWithFormat:@"databases/%u/containers/edit", v6];
  v14.receiver = self;
  v14.super_class = ICBulkSetContainerPropertyRequest;
  v11 = [(ICDRequest *)&v14 initWithAction:v10];

  if (v11)
  {
    [(ICDRequest *)v11 setMethod:1];
    v12 = [(ICBulkSetContainerPropertyRequest *)v11 _bodyDataForContainerIDs:dsCopy properties:propertiesCopy];
    [(ICDRequest *)v11 setBodyData:v12];
  }

  return v11;
}

+ (id)requestWithDatabaseID:(unsigned int)d containerIDs:(id)ds properties:(id)properties
{
  v6 = *&d;
  propertiesCopy = properties;
  dsCopy = ds;
  v9 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v6 containerIDs:dsCopy properties:propertiesCopy];

  return v9;
}

@end