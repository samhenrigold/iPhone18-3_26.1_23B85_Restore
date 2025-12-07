@interface WFPhoneNumberSubstitutableState
- (id)stringInterpretedAsContactHandle:(id)handle allowsCustomHandles:(BOOL)handles;
- (id)valueItemClasses;
@end

@implementation WFPhoneNumberSubstitutableState

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
  v4 = [MEMORY[0x1E6996F00] phoneNumberWithPhoneNumberString:{handle, handles}];
  v5 = [objc_alloc(MEMORY[0x1E6996D10]) initWithPhoneNumber:v4];

  return v5;
}

@end