@interface NRMockRegistryClient
- (NRMockRegistryClient)init;
@end

@implementation NRMockRegistryClient

- (NRMockRegistryClient)init
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"NRRegistryPlatformSupportsWatch";
  v7[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [(NRRegistryClient *)self initWithParameters:v3];

  return v4;
}

@end