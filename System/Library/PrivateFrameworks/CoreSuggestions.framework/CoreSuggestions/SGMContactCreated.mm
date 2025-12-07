@interface SGMContactCreated
- (SGMContactCreated)init;
- (void)trackEventWithScalar:(unint64_t)scalar wasSuggestedContact:(SGMTypeSafeBool_)contact app:(SGMContactDetailUsedApp_)app;
@end

@implementation SGMContactCreated

- (void)trackEventWithScalar:(unint64_t)scalar wasSuggestedContact:(SGMTypeSafeBool_)contact app:(SGMContactDetailUsedApp_)app
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (contact.var0)
  {
    if (contact.var0 == 1)
    {
      v9 = @"1";
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler handleFailureInFunction:v11 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", contact.var0}];

      v9 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v9 = @"0";
  }

  if (app.var0 >= 0xC)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailUsedApp_toString(SGMContactDetailUsedApp)"];
    [currentHandler2 handleFailureInFunction:v14 file:@"SGMetricsDefines.h" lineNumber:94 description:{@"unrecognized tag %lu on SGMContactDetailUsedApp", app.var0}];

    v12 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v12 = off_1E7EFBE68[app.var0];
  }

  v15 = v12;
  tracker = self->_tracker;
  v18[0] = v9;
  v18[1] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v17 value:scalar];
}

- (SGMContactCreated)init
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SGMContactCreated;
  v2 = [(SGMContactCreated *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"WasSuggestedContact"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v5 = objc_alloc(MEMORY[0x1E69C5B58]);
    v11[0] = v3;
    v11[1] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v7 = [v5 initWithFeatureId:@"Found" event:@"ContactCreated" registerProperties:v6 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v7;
  }

  return v2;
}

@end