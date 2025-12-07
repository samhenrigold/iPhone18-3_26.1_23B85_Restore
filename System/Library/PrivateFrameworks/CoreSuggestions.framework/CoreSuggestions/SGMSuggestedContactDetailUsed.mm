@interface SGMSuggestedContactDetailUsed
- (SGMSuggestedContactDetailUsed)init;
- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMContactDetailUsedApp_)app;
@end

@implementation SGMSuggestedContactDetailUsed

- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMContactDetailUsedApp_)app
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (app.var0 >= 0xC)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailUsedApp_toString(SGMContactDetailUsedApp)"];
    [currentHandler handleFailureInFunction:v9 file:@"SGMetricsDefines.h" lineNumber:94 description:{@"unrecognized tag %lu on SGMContactDetailUsedApp", app.var0}];

    v7 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v7 = off_1E7EFBE68[app.var0];
  }

  v10 = v7;
  tracker = self->_tracker;
  v13[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v12 value:scalar];
}

- (SGMSuggestedContactDetailUsed)init
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SGMSuggestedContactDetailUsed;
  v2 = [(SGMSuggestedContactDetailUsed *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"SuggestedContactDetailUsed" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  return v2;
}

@end