@interface ICAlbumsRequest
- (ICAlbumsRequest)initWithDatabaseID:(unsigned int)d paginationToken:(id)token;
@end

@implementation ICAlbumsRequest

- (ICAlbumsRequest)initWithDatabaseID:(unsigned int)d paginationToken:(id)token
{
  v5 = [NSString stringWithFormat:@"databases/%u/groups?groupType=albums", token, *&d];
  v8.receiver = self;
  v8.super_class = ICAlbumsRequest;
  v6 = [(ICDRequest *)&v8 initWithAction:v5];

  if (v6)
  {
    [(ICDRequest *)v6 setRequestGroupEntityPayloadForTrackSourceMatch:1];
    [(ICDRequest *)v6 setMethod:1];
    [(ICDRequest *)v6 setRequestPersonalizationStyle:2];
  }

  return v6;
}

@end