@interface ICSetFavoriteSongAddToLibraryBehaviorRequest
+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision addToLibraryBehavior:(unsigned __int8)behavior;
- (ICSetFavoriteSongAddToLibraryBehaviorRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision addToLibraryBehavior:(unsigned __int8)behavior;
- (id)_bodyDataForDatabaseRevision:(unsigned int)revision addToLibraryBehavior:(unsigned __int8)behavior;
@end

@implementation ICSetFavoriteSongAddToLibraryBehaviorRequest

- (id)_bodyDataForDatabaseRevision:(unsigned int)revision addToLibraryBehavior:(unsigned __int8)behavior
{
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

- (ICSetFavoriteSongAddToLibraryBehaviorRequest)initWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision addToLibraryBehavior:(unsigned __int8)behavior
{
  behaviorCopy = behavior;
  v6 = *&revision;
  v8 = [NSString stringWithFormat:@"databases/%u/edit", *&d];
  v12.receiver = self;
  v12.super_class = ICSetFavoriteSongAddToLibraryBehaviorRequest;
  v9 = [(ICDRequest *)&v12 initWithAction:v8];

  if (v9)
  {
    [(ICDRequest *)v9 setMethod:1];
    v10 = [(ICSetFavoriteSongAddToLibraryBehaviorRequest *)v9 _bodyDataForDatabaseRevision:v6 addToLibraryBehavior:behaviorCopy];
    [(ICDRequest *)v9 setBodyData:v10];
  }

  return v9;
}

+ (id)requestWithDatabaseID:(unsigned int)d databaseRevision:(unsigned int)revision addToLibraryBehavior:(unsigned __int8)behavior
{
  v5 = [objc_alloc(objc_opt_class()) initWithDatabaseID:*&d databaseRevision:*&revision addToLibraryBehavior:behavior];

  return v5;
}

@end