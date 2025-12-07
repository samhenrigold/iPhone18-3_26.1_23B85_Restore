@interface SGMEventBannerRejected
- (SGMEventBannerRejected)init;
- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app category:(SGMEventCategory_)category extracted:(SGMEventExtractionType_)extracted;
@end

@implementation SGMEventBannerRejected

- (void)trackEventWithScalar:(unint64_t)scalar app:(SGMBannerDisplayApp_)app category:(SGMEventCategory_)category extracted:(SGMEventExtractionType_)extracted
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (app.var0 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMBannerDisplayApp_toString(SGMBannerDisplayApp)"];
    [currentHandler handleFailureInFunction:v13 file:@"SGMetricsDefines.h" lineNumber:61 description:{@"unrecognized tag %lu on SGMBannerDisplayApp", app.var0}];

    v11 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v11 = off_1E7EFBFB0[app.var0];
  }

  if (category.var0 >= 0xC)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventCategory_toString(SGMEventCategory)"];
    [currentHandler2 handleFailureInFunction:v16 file:@"SGMetricsDefines.h" lineNumber:224 description:{@"unrecognized tag %lu on SGMEventCategory", category.var0}];

    v14 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v14 = off_1E7EFBEE8[category.var0];
  }

  v17 = v14;
  if (extracted.var0)
  {
    if (extracted.var0 == 1)
    {
      v18 = @"Template";
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMEventExtractionType_toString(SGMEventExtractionType)"];
      [currentHandler3 handleFailureInFunction:v20 file:@"SGMetricsDefines.h" lineNumber:271 description:{@"unrecognized tag %lu on SGMEventExtractionType", extracted.var0}];

      v18 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v18 = @"iCal";
  }

  tracker = self->_tracker;
  v23[0] = v11;
  v23[1] = v17;
  v23[2] = v18;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v22 value:scalar];
}

- (SGMEventBannerRejected)init
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = SGMEventBannerRejected;
  v2 = [(SGMEventBannerRejected *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"App"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Category"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Extracted"];
    v6 = objc_alloc(MEMORY[0x1E69C5B58]);
    v12[0] = v3;
    v12[1] = v4;
    v12[2] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v8 = [v6 initWithFeatureId:@"Found" event:@"EventBannerRejected" registerProperties:v7 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v8;
  }

  return v2;
}

@end