@interface _BMMomentsLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMMomentsLibraryNode

+ (id)sublibraries
{
  v7[2] = *MEMORY[0x1E69E9840];
  events = [self Events];
  v7[0] = events;
  stats = [self Stats];
  v7[1] = stats;
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