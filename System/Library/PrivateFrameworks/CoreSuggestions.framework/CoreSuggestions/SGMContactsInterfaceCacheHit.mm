@interface SGMContactsInterfaceCacheHit
- (SGMContactsInterfaceCacheHit)init;
- (void)trackEventWithScalar:(unint64_t)scalar cacheHit:(SGMTypeSafeBool_)hit;
@end

@implementation SGMContactsInterfaceCacheHit

- (void)trackEventWithScalar:(unint64_t)scalar cacheHit:(SGMTypeSafeBool_)hit
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (hit.var0)
  {
    if (hit.var0 == 1)
    {
      v7 = @"1";
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler handleFailureInFunction:v9 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", hit.var0}];

      v7 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v7 = @"0";
  }

  tracker = self->_tracker;
  v12[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v11 value:scalar];
}

- (SGMContactsInterfaceCacheHit)init
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SGMContactsInterfaceCacheHit;
  v2 = [(SGMContactsInterfaceCacheHit *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"CacheHit"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"ContactsInterfaceCacheHit" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  return v2;
}

@end