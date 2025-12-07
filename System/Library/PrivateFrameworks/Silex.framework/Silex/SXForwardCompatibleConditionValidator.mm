@interface SXForwardCompatibleConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXForwardCompatibleConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  v4 = MEMORY[0x1E695DFA8];
  jSONRepresentation = [condition JSONRepresentation];
  allKeys = [jSONRepresentation allKeys];
  v7 = [v4 setWithArray:allKeys];

  v9 = SXConditionTypes(v8);
  [v7 minusSet:v9];

  LOBYTE(v9) = [v7 count] == 0;
  return v9;
}

@end