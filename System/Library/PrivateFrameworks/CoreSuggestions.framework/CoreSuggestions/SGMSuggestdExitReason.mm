@interface SGMSuggestdExitReason
- (SGMSuggestdExitReason)init;
- (void)trackEventWithScalar:(unint64_t)scalar exitCode:(unint64_t)code;
@end

@implementation SGMSuggestdExitReason

- (void)trackEventWithScalar:(unint64_t)scalar exitCode:(unint64_t)code
{
  v8[1] = *MEMORY[0x1E69E9840];
  tracker = self->_tracker;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:code];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(PETScalarEventTracker *)tracker trackEventWithPropertyValues:v7 value:scalar];
}

- (SGMSuggestdExitReason)init
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SGMSuggestdExitReason;
  v2 = [(SGMSuggestdExitReason *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C5B40] propertyWithName:@"ExitCode" range:0 clampValues:{100, 1}];
    v4 = objc_alloc(MEMORY[0x1E69C5B58]);
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [v4 initWithFeatureId:@"Found" event:@"SuggestdExitReason" registerProperties:v5 propertySubsets:MEMORY[0x1E695E0F0]];
    tracker = v2->_tracker;
    v2->_tracker = v6;
  }

  return v2;
}

@end