@interface CLSChildParentRelation
- (CLSChildParentRelation)initWithChildEntity:(Class)entity parentEntity:(Class)parentEntity faultable:(BOOL)faultable;
@end

@implementation CLSChildParentRelation

- (CLSChildParentRelation)initWithChildEntity:(Class)entity parentEntity:(Class)parentEntity faultable:(BOOL)faultable
{
  v6.receiver = self;
  v6.super_class = CLSChildParentRelation;
  return [(CLSRelation *)&v6 initWithFromEntity:entity toEntity:parentEntity onFromKey:@"parentObjectID" toKey:@"objectID" faultable:faultable];
}

@end