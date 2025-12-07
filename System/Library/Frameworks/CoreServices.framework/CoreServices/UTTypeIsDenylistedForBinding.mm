@interface UTTypeIsDenylistedForBinding
@end

@implementation UTTypeIsDenylistedForBinding

void ___UTTypeIsDenylistedForBinding_block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.mobileconfig";
  v3[1] = @"com.apple.mobileprovision";
  v3[2] = @"public.x509-certificate";
  v3[3] = @"com.rsa.pkcs-12";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v1 = [MEMORY[0x1E695DFD8] setWithArray:v0];
  v2 = _UTTypeIsDenylistedForBinding::denyListedTypes;
  _UTTypeIsDenylistedForBinding::denyListedTypes = v1;
}

@end