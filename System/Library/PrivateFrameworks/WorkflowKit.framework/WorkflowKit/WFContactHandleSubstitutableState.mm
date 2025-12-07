@interface WFContactHandleSubstitutableState
- (id)stringInterpretedAsContactHandle:(id)handle allowsCustomHandles:(BOOL)handles;
- (id)valueItemClasses;
@end

@implementation WFContactHandleSubstitutableState

- (id)valueItemClasses
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)stringInterpretedAsContactHandle:(id)handle allowsCustomHandles:(BOOL)handles
{
  handlesCopy = handles;
  v5 = MEMORY[0x1E6996D10];
  handleCopy = handle;
  v7 = [[v5 alloc] initWithHandleString:handleCopy allowsCustomHandles:handlesCopy];

  return v7;
}

@end