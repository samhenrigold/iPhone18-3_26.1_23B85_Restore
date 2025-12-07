@interface WFEmailAddressSubstitutableState
- (id)stringInterpretedAsContactHandle:(id)handle allowsCustomHandles:(BOOL)handles;
- (id)valueItemClasses;
@end

@implementation WFEmailAddressSubstitutableState

- (id)valueItemClasses
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)stringInterpretedAsContactHandle:(id)handle allowsCustomHandles:(BOOL)handles
{
  v4 = [MEMORY[0x1E6996E00] addressWithEmailAddress:{handle, handles}];
  v5 = [objc_alloc(MEMORY[0x1E6996D10]) initWithEmailAddress:v4];

  return v5;
}

@end