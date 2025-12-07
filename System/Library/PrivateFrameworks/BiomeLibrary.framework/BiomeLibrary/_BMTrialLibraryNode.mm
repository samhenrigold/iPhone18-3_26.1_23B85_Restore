@interface _BMTrialLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMTrialLibraryNode

+ (id)sublibraries
{
  v5[1] = *MEMORY[0x1E69E9840];
  experiment = [self Experiment];
  v5[0] = experiment;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end