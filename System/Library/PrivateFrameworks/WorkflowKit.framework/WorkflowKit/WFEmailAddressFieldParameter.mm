@interface WFEmailAddressFieldParameter
- (id)supportedContactProperties;
@end

@implementation WFEmailAddressFieldParameter

- (id)supportedContactProperties
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"Email";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end