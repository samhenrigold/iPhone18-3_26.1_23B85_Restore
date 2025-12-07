@interface SGMBundleIdsUsingOldEntitlement
- (SGMBundleIdsUsingOldEntitlement)init;
- (void)trackEventWithScalar:(unint64_t)scalar bundleId:(id)id;
@end

@implementation SGMBundleIdsUsingOldEntitlement

- (void)trackEventWithScalar:(unint64_t)scalar bundleId:(id)id
{
  v10 = *MEMORY[0x1E69E9840];
  tracker = self->_tracker;
  idCopy = id;
  v6 = MEMORY[0x1E695DEC8];
  idCopy2 = id;
  v8 = [v6 arrayWithObjects:&idCopy count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v8 value:scalar, idCopy, v10];
}

- (SGMBundleIdsUsingOldEntitlement)init
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SGMBundleIdsUsingOldEntitlement;
  v2 = [(SGMBundleIdsUsingOldEntitlement *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"BundleId"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"BundleIdsUsingOldEntitlement" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  return v2;
}

@end