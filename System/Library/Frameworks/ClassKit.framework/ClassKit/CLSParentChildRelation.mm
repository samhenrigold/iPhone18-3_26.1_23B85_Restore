@interface CLSParentChildRelation
- (CLSParentChildRelation)initWithParentEntity:(Class)entity childEntity:(Class)childEntity faultable:(BOOL)faultable;
@end

@implementation CLSParentChildRelation

- (CLSParentChildRelation)initWithParentEntity:(Class)entity childEntity:(Class)childEntity faultable:(BOOL)faultable
{
  v6.receiver = self;
  v6.super_class = CLSParentChildRelation;
  return [(CLSRelation *)&v6 initWithFromEntity:entity toEntity:childEntity onFromKey:@"objectID" toKey:@"parentObjectID" faultable:faultable];
}

@end