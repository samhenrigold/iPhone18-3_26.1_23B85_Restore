@interface NSFileManager(ContainerManager)
- (id)wf_uncachedContainerURLForSecurityApplicationGroupIdentifier:()ContainerManager error:;
@end

@implementation NSFileManager(ContainerManager)

- (id)wf_uncachedContainerURLForSecurityApplicationGroupIdentifier:()ContainerManager error:
{
  v6 = a3;
  if (![v6 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileManager+ContainerManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"groupIdentifier.length"}];
  }

  [v6 UTF8String];
  v7 = container_create_or_lookup_path_for_current_user();
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
    free(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end