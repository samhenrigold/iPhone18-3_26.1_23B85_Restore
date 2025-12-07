@interface _BMOSAnalyticsLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMOSAnalyticsLibraryNode

+ (id)sublibraries
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = [self CA];
  hardware = [self Hardware];
  v8[1] = hardware;
  stability = [self Stability];
  v8[2] = stability;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end