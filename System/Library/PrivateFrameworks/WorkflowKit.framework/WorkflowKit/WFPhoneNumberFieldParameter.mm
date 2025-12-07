@interface WFPhoneNumberFieldParameter
- (id)supportedContactProperties;
@end

@implementation WFPhoneNumberFieldParameter

- (id)supportedContactProperties
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"Phone";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end