@interface _BMLifeEventLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMLifeEventLibraryNode

+ (id)sublibraries
{
  v7[2] = *MEMORY[0x1E69E9840];
  intraday = [self Intraday];
  v7[0] = intraday;
  retrospective = [self Retrospective];
  v7[1] = retrospective;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end