@interface ICPinsRequest
- (ICPinsRequest)initWithDatabaseID:(unsigned int)d;
@end

@implementation ICPinsRequest

- (ICPinsRequest)initWithDatabaseID:(unsigned int)d
{
  v4 = [NSString stringWithFormat:@"databases/%u/pins", *&d];
  v7.receiver = self;
  v7.super_class = ICPinsRequest;
  v5 = [(ICDRequest *)&v7 initWithAction:v4];

  if (v5)
  {
    [(ICDRequest *)v5 setMethod:1];
    [(ICDRequest *)v5 setRequestPersonalizationStyle:2];
  }

  return v5;
}

@end