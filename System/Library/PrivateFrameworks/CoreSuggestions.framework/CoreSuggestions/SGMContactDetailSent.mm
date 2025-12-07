@interface SGMContactDetailSent
- (SGMContactDetailSent)init;
- (void)trackEventWithScalar:(unint64_t)scalar source:(SGMDocumentType_)source detail:(SGMContactDetailType_)detail foundIn:(SGMContactDetailFoundIn_)in hasName:(SGMTypeSafeBool_)name tokens:(SGMLowCount_)tokens;
@end

@implementation SGMContactDetailSent

- (void)trackEventWithScalar:(unint64_t)scalar source:(SGMDocumentType_)source detail:(SGMContactDetailType_)detail foundIn:(SGMContactDetailFoundIn_)in hasName:(SGMTypeSafeBool_)name tokens:(SGMLowCount_)tokens
{
  v32[5] = *MEMORY[0x1E69E9840];
  if (source.var0)
  {
    if (source.var0 == 1)
    {
      v15 = @"Message";
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMDocumentType_toString(SGMDocumentType)"];
      [currentHandler handleFailureInFunction:v17 file:@"SGMetricsDefines.h" lineNumber:588 description:{@"unrecognized tag %lu on SGMDocumentType", source.var0}];

      v15 = @"ERR_UNMATCHED_TAG";
    }
  }

  else
  {
    v15 = @"Email";
  }

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

  if (in.var0 >= 4)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMContactDetailFoundIn_toString(SGMContactDetailFoundIn)"];
    [currentHandler3 handleFailureInFunction:v24 file:@"SGMetricsDefines.h" lineNumber:191 description:{@"unrecognized tag %lu on SGMContactDetailFoundIn", in.var0}];

    v21 = @"ERR_UNMATCHED_TAG";
    if (name.var0)
    {
LABEL_11:
      if (name.var0 == 1)
      {
        v22 = @"1";
      }

      else
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMTypeSafeBool_toString(SGMTypeSafeBool)"];
        [currentHandler4 handleFailureInFunction:v26 file:@"SGMetricsDefines.h" lineNumber:12 description:{@"unrecognized tag %lu on SGMTypeSafeBool", name.var0}];

        v22 = @"ERR_UNMATCHED_TAG";
      }

      goto LABEL_16;
    }
  }

  else
  {
    v21 = off_1E7EFC250[in.var0];
    if (name.var0)
    {
      goto LABEL_11;
    }
  }

  v22 = @"0";
LABEL_16:
  if (tokens.var0 >= 5)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SGMLowCount_toString(SGMLowCount)"];
    [currentHandler5 handleFailureInFunction:v29 file:@"SGMetricsDefines.h" lineNumber:46 description:{@"unrecognized tag %lu on SGMLowCount", tokens.var0}];

    v27 = @"ERR_UNMATCHED_TAG";
  }

  else
  {
    v27 = off_1E7EFC270[tokens.var0];
  }

  tracker = self->_tracker;
  v32[0] = v15;
  v32[1] = v18;
  v32[2] = v21;
  v32[3] = v22;
  v32[4] = v27;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v31 value:scalar];
}

- (SGMContactDetailSent)init
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SGMContactDetailSent;
  v2 = [(SGMContactDetailSent *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Source"];
    v4 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Detail"];
    v5 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"FoundIn"];
    v6 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"HasName"];
    v7 = [MEMORY[0x1E69C5B40] freeValuedPropertyWithName:@"Tokens"];
    v8 = objc_alloc(MEMORY[0x1E69C5B58]);
    v14[0] = v3;
    v14[1] = v4;
    v14[2] = v5;
    v14[3] = v6;
    v14[4] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
    v10 = [v8 initWithFeatureId:@"Found" event:@"ContactDetailSent" registerProperties:v9 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v10;
  }

  return v2;
}

@end