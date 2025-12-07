@interface ICSetAddToPlaylistBehaviorRequest
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision addToPlaylistBehavior:(unsigned __int8)behavior;
- (ICSetAddToPlaylistBehaviorRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision addToPlaylistBehavior:(unsigned __int8)behavior;
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision addToPlaylistBehavior:(unsigned __int8)behavior;
@end

@implementation ICSetAddToPlaylistBehaviorRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision addToPlaylistBehavior:(unsigned __int8)behavior
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

- (ICSetAddToPlaylistBehaviorRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision addToPlaylistBehavior:(unsigned __int8)behavior
{
  behaviorCopy = behavior;
  v6 = *&revision;
  v8 = [NSString stringWithFormat:@"databases/%u/edit", *&d];
  v12.receiver = self;
  v12.super_class = ICSetAddToPlaylistBehaviorRequest;
  v9 = [(ICDRequest *)&v12 initWithAction:v8];

  if (v9)
  {
    [(ICDRequest *)v9 setMethod:1];
    v10 = [(ICSetAddToPlaylistBehaviorRequest *)v9 _bodyDataForDatabaseRevision:v6 addToPlaylistBehavior:behaviorCopy];
    [(ICDRequest *)v9 setBodyData:v10];
  }

  return v9;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision addToPlaylistBehavior:(unsigned __int8)behavior
{
  v5 = [objc_alloc(objc_opt_class()) initWithDatabaseID:*&d databaseRevision:*&revision addToPlaylistBehavior:behavior];

  return v5;
}

@end