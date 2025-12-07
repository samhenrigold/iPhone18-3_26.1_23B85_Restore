@interface AAFPlistSerializer
- (id)mediaTypes;
@end

@implementation AAFPlistSerializer

- (id)mediaTypes
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"application/x-plist";
  v4[1] = @"application/x-apple-plist";
  v4[2] = @"text/plist";
  v4[3] = @"application/xml";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

@end