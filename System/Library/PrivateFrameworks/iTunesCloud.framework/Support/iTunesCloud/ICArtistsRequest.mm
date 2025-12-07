@interface ICArtistsRequest
- (ICArtistsRequest)initWithDatabaseID:(unsigned int)d paginationToken:(id)token;
@end

@implementation ICArtistsRequest

- (ICArtistsRequest)initWithDatabaseID:(unsigned int)d paginationToken:(id)token
{
  v5 = [NSString stringWithFormat:@"databases/%u/groups?groupType=artists", token, *&d];
  v8.receiver = self;
  v8.super_class = ICArtistsRequest;
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