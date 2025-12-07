@interface _BMSpringBoardLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMSpringBoardLibraryNode

+ (id)sublibraries
{
  v9[4] = *MEMORY[0x1E69E9840];
  domino = [self Domino];
  v9[0] = domino;
  externalDisplay = [self ExternalDisplay];
  v9[1] = externalDisplay;
  gestureEducation = [self GestureEducation];
  v9[2] = gestureEducation;
  windowManagement = [self WindowManagement];
  v9[3] = windowManagement;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end