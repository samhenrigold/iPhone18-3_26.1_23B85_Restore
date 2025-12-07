@interface NSPointerArray(SafariCoreExtras)
- (uint64_t)safari_firstIndexOfPointer:()SafariCoreExtras;
@end

@implementation NSPointerArray(SafariCoreExtras)

- (uint64_t)safari_firstIndexOfPointer:()SafariCoreExtras
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    v10 = v7;
    v7 += v6;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(selfCopy);
      }

      if (*(*(&v12 + 1) + 8 * v9) == a3)
      {
        break;
      }

      ++v10;
      if (v6 == ++v9)
      {
        v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

@end