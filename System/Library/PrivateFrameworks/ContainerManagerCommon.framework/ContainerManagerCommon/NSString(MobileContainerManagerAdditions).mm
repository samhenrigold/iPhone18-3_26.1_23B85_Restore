@interface NSString(MobileContainerManagerAdditions)
+ (id)stringWithFileSystemRepresentation:()MobileContainerManagerAdditions length:;
+ (uint64_t)stringWithFileSystemRepresentation:()MobileContainerManagerAdditions;
- (uint64_t)containsDotDotPathComponents;
@end

@implementation NSString(MobileContainerManagerAdditions)

- (uint64_t)containsDotDotPathComponents
{
  v13 = *MEMORY[0x1E69E9840];
  [self pathComponents];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v9 + 1) + 8 * v5) isEqualToString:@".."])
        {
          v6 = 1;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v8 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

+ (uint64_t)stringWithFileSystemRepresentation:()MobileContainerManagerAdditions
{
  v4 = strlen(__s);
  v5 = MEMORY[0x1E696AEC0];

  return [v5 stringWithFileSystemRepresentation:__s length:v4];
}

+ (id)stringWithFileSystemRepresentation:()MobileContainerManagerAdditions length:
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:_NSDefaultFileSystemEncoding()];

  return v4;
}

@end