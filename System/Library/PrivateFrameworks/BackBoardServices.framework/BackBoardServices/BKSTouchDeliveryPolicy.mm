@interface BKSTouchDeliveryPolicy
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)policyByCombiningPolicies:(id)policies;
+ (id)policyCancelingTouchesDeliveredToContextId:(unsigned int)id withInitialTouchTimestamp:(double)timestamp;
+ (id)policyRequiringSharingOfTouchesDeliveredToChildContextId:(unsigned int)id withHostContextId:(unsigned int)contextId;
- (BKSTouchDeliveryPolicy)initWithCoder:(id)coder;
- (id)policyByMappingContainedPoliciesWithBlock:(id)block;
- (id)policyExcludingPolicy:(id)policy;
- (id)policyExcludingPolicyIdenticalTo:(id)to;
- (id)policyIncludingPolicy:(id)policy;
- (id)reducePolicyToObjectWithBlock:(id)block;
@end

@implementation BKSTouchDeliveryPolicy

- (id)policyExcludingPolicyIdenticalTo:(id)to
{
  toCopy = to;
  v4 = toCopy;
  v5 = [(BKSTouchDeliveryPolicy *)self reducePolicyToObjectWithBlock:?];

  return v5;
}

id __59__BKSTouchDeliveryPolicy_policyExcludingPolicyIdenticalTo___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

- (id)policyExcludingPolicy:(id)policy
{
  policyCopy = policy;
  v4 = policyCopy;
  v5 = [(BKSTouchDeliveryPolicy *)self reducePolicyToObjectWithBlock:?];

  return v5;
}

void *__48__BKSTouchDeliveryPolicy_policyExcludingPolicy___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqual:?])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

- (id)policyIncludingPolicy:(id)policy
{
  v4 = MEMORY[0x1E695DF70];
  policyCopy = policy;
  array = [v4 array];
  collectPolicies(self, array);
  collectPolicies(policyCopy, array);

  v7 = [BKSTouchDeliveryPolicy policyByCombiningPolicies:?];

  return v7;
}

- (id)reducePolicyToObjectWithBlock:(id)block
{
  blockCopy = block;
  v4 = blockCopy;
  v5 = [(BKSTouchDeliveryPolicy *)self policyByMappingContainedPoliciesWithBlock:?];
  v6 = (*(blockCopy + 2))(v4, v5);

  return v6;
}

- (id)policyByMappingContainedPoliciesWithBlock:(id)block
{
  blockCopy = block;
  v4 = blockCopy;
  v5 = [BKSTouchDeliveryPolicy matchSharingTouchesPolicy:"matchSharingTouchesPolicy:orCancelTouchesPolicy:orCombinedPolicy:" orCancelTouchesPolicy:? orCombinedPolicy:?];

  return v5;
}

id __68__BKSTouchDeliveryPolicy_policyByMappingContainedPoliciesWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:0 objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = v6[2](v6, *(8 * i));
        if (v13)
        {
          [v7 addObject:?];
        }
      }

      v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  v14 = [BKSTouchDeliveryPolicy policyByCombiningPolicies:?];

  return v14;
}

- (BKSTouchDeliveryPolicy)initWithCoder:(id)coder
{
  [(BKSTouchDeliveryPolicy *)self doesNotRecognizeSelector:?];

  return 0;
}

+ (id)policyByCombiningPolicies:(id)policies
{
  policiesCopy = policies;
  v4 = [[_BKSCombinedTouchDeliveryPolicy alloc] initWithPolicies:?];

  return v4;
}

+ (id)policyCancelingTouchesDeliveredToContextId:(unsigned int)id withInitialTouchTimestamp:(double)timestamp
{
  v4 = [_BKSCancelTouchesTouchDeliveryPolicy initWithContextId:"initWithContextId:initialTouchTimestamp:" initialTouchTimestamp:?];

  return v4;
}

+ (id)policyRequiringSharingOfTouchesDeliveredToChildContextId:(unsigned int)id withHostContextId:(unsigned int)contextId
{
  v4 = [_BKSShareTouchesTouchDeliveryPolicy initWithChildContextId:"initWithChildContextId:hostContextId:" hostContextId:?];

  return v4;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  objc_opt_class();
  if ([self isMemberOfClass:?])
  {
    [self doesNotRecognizeSelector:?];
    return 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___BKSTouchDeliveryPolicy;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end