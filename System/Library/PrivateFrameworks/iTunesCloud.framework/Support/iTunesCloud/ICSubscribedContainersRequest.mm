@interface ICSubscribedContainersRequest
+ (id)requestWithDatabaseID:(unsigned int)d containerIDs:(id)ds;
- (ICSubscribedContainersRequest)initWithDatabaseID:(unsigned int)d containerIDs:(id)ds;
- (id)_bodyDataForContainerIDs:(id)ds;
@end

@implementation ICSubscribedContainersRequest

- (id)_bodyDataForContainerIDs:(id)ds
{
  dsCopy = ds;
  v3 = dsCopy;
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

- (ICSubscribedContainersRequest)initWithDatabaseID:(unsigned int)d containerIDs:(id)ds
{
  v4 = *&d;
  dsCopy = ds;
  v7 = [NSString stringWithFormat:@"databases/%u/subscribed-containers", v4];
  v11.receiver = self;
  v11.super_class = ICSubscribedContainersRequest;
  v8 = [(ICDRequest *)&v11 initWithAction:v7];

  if (v8)
  {
    [(ICDRequest *)v8 setMethod:1];
    v9 = [(ICSubscribedContainersRequest *)v8 _bodyDataForContainerIDs:dsCopy];
    [(ICDRequest *)v8 setBodyData:v9];
  }

  return v8;
}

+ (id)requestWithDatabaseID:(unsigned int)d containerIDs:(id)ds
{
  v4 = *&d;
  dsCopy = ds;
  v6 = [objc_alloc(objc_opt_class()) initWithDatabaseID:v4 containerIDs:dsCopy];

  return v6;
}

@end