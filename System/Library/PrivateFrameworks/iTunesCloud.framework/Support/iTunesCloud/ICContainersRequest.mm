@interface ICContainersRequest
+ (id)requestWithDatabaseID:(unsigned int)d;
- (ICContainersRequest)initWithDatabaseID:(unsigned int)d;
@end

@implementation ICContainersRequest

+ (id)requestWithDatabaseID:(unsigned int)d
{
  v3 = [objc_alloc(objc_opt_class()) initWithDatabaseID:*&d];

  return v3;
}

- (ICContainersRequest)initWithDatabaseID:(unsigned int)d
{
  v4 = [NSString stringWithFormat:@"databases/%u/containers", *&d];
  v5 = [(ICDRequest *)self initWithAction:v4];

  return v5;
}

@end