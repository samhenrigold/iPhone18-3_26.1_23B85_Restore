@interface WFContactHandleFieldParameter
- (id)supportedContactProperties;
- (void)setAllowsCustomHandles:(BOOL)handles;
@end

@implementation WFContactHandleFieldParameter

- (void)setAllowsCustomHandles:(BOOL)handles
{
  if (self->super._allowsCustomHandles != handles)
  {
    self->super._allowsCustomHandles = handles;
    [(WFParameter *)self attributesDidChange];
  }
}

- (id)supportedContactProperties
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"Email";
  v4[1] = @"Phone";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

@end