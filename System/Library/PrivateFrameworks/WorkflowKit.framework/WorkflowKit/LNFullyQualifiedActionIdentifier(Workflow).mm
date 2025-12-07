@interface LNFullyQualifiedActionIdentifier(Workflow)
- (id)compositeIdentifier;
@end

@implementation LNFullyQualifiedActionIdentifier(Workflow)

- (id)compositeIdentifier
{
  v7[2] = *MEMORY[0x1E69E9840];
  bundleIdentifier = [self bundleIdentifier];
  v7[0] = bundleIdentifier;
  actionIdentifier = [self actionIdentifier];
  v7[1] = actionIdentifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v4 componentsJoinedByString:@"."];

  return v5;
}

@end