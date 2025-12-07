@interface SGMFoundInMailModelScore
- (SGMFoundInMailModelScore)init;
- (void)trackEventWithScalar:(unint64_t)scalar model:(SGMFoundInMailModelType_)model contactDetail:(SGMContactDetailType_)detail result:(SGMTypeSafeBool_)result correct:(SGMTypeSafeBool_)correct mode:(SGFoundInMailModelMode_)mode supervision:(SGMFoundInMailSupervisionType_)supervision;
@end

@implementation SGMFoundInMailModelScore

- (void)trackEventWithScalar:(unint64_t)scalar model:(SGMFoundInMailModelType_)model contactDetail:(SGMContactDetailType_)detail result:(SGMTypeSafeBool_)result correct:(SGMTypeSafeBool_)correct mode:(SGFoundInMailModelMode_)mode supervision:(SGMFoundInMailSupervisionType_)supervision
{
  v39[6] = *MEMORY[0x1E69E9840];
  if (model.var0 >= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMFoundInMailModelType_toString(SGMFoundInMailModelType)"];
    [currentHandler handleFailureInFunction:v17 file:@"SGMetricsDefines.h" lineNumber:605 description:{@"unrecognized tag %lu on SGMFoundInMailModelType", model.var0}];

    v15 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v15 = off_1E7EFC298[model.var0];
  }

  v38 = v15;
  if (detail.var0 >= 5)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailType_toString(SGMContactDetailType)"];
    [currentHandler2 handleFailureInFunction:v20 file:@"SGMetricsDefines.h" lineNumber:159 description:{@"unrecognized tag %lu on SGMContactDetailType", detail.var0}];

    v18 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v18 = off_1E7EFC2B8[detail.var0];
  }

  v37 = v18;
  if (result.var0)
  {
    if (result.var0 == 1)
    {
      v21 = @"1";
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler3 handleFailureInFunction:v23 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", result.var0}];

      v21 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v21 = @"0";
  }

  if (correct.var0)
  {
    scalarCopy2 = scalar;
    if (correct.var0 == 1)
    {
      v25 = @"1";
    }

    else
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
      [currentHandler4 handleFailureInFunction:v27 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", correct.var0}];

      v25 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    scalarCopy2 = scalar;
    v25 = @"0";
  }

  if (mode.var0 >= 3)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGFoundInMailModelMode_toString(SGFoundInMailModelMode)"];
    [currentHandler5 handleFailureInFunction:v30 file:@"SGMetricsDefines.h" lineNumber:637 description:{@"unrecognized tag %lu on SGFoundInMailModelMode", mode.var0}];

    v28 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v28 = off_1E7EFC2E0[mode.var0];
  }

  if (supervision.var0 >= 4)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMFoundInMailSupervisionType_toString(SGMFoundInMailSupervisionType)"];
    [currentHandler6 handleFailureInFunction:v33 file:@"SGMetricsDefines.h" lineNumber:622 description:{@"unrecognized tag %lu on SGMFoundInMailSupervisionType", supervision.var0}];

    v31 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v31 = off_1E7EFC2F8[supervision.var0];
  }

  tracker = self->_tracker;
  v39[0] = v38;
  v39[1] = v37;
  v39[2] = v21;
  v39[3] = v25;
  v39[4] = v28;
  v39[5] = v31;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v35 value:scalarCopy2];
}

- (SGMFoundInMailModelScore)init
{
  v15[6] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SGMFoundInMailModelScore;
  v2 = [(SGMFoundInMailModelScore *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Model"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"ContactDetail"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Result"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Correct"];
    v7 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Mode"];
    v8 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Supervision"];
    v9 = objc_alloc(MEMORY[0x1E69C5B58]);
    v15[0] = v3;
    v15[1] = v4;
    v15[2] = v5;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:6];
    v11 = [v9 initWithFeatureId:@"Found" event:@"FoundInMailModelScore" registerProperties:v10 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v11;
  }

  return v2;
}

@end