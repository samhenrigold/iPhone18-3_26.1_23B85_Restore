@interface _EMUnsubscribeInfo
- (_EMUnsubscribeInfo)initWithHeaders:(id)headers;
- (void)setMailtoURL:(uint64_t)l;
- (void)setPostContent:(uint64_t)content;
- (void)setPostURL:(uint64_t)l;
@end

@implementation _EMUnsubscribeInfo

- (_EMUnsubscribeInfo)initWithHeaders:(id)headers
{
  v19 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v4 = objc_opt_new();
  listUnsubscribePostContent = [headersCopy listUnsubscribePostContent];
  [(_EMUnsubscribeInfo *)v4 setPostContent:listUnsubscribePostContent];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  listUnsubscribeCommands = [headersCopy listUnsubscribeCommands];
  v7 = [listUnsubscribeCommands countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(listUnsubscribeCommands);
        }

        v10 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v14 + 1) + 8 * v9)];
        if ([v10 ef_hasScheme:@"mailto"])
        {
          [(_EMUnsubscribeInfo *)v4 setMailtoURL:v10];
        }

        else if ([v10 ef_hasScheme:@"https"])
        {
          [(_EMUnsubscribeInfo *)v4 setPostURL:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v11 = [listUnsubscribeCommands countByEnumeratingWithState:&v14 objects:v18 count:16];
      v7 = v11;
    }

    while (v11);
  }

  return v4;
}

- (void)setPostContent:(uint64_t)content
{
  if (content)
  {
    objc_storeStrong((content + 24), a2);
  }
}

- (void)setMailtoURL:(uint64_t)l
{
  if (l)
  {
    objc_storeStrong((l + 8), a2);
  }
}

- (void)setPostURL:(uint64_t)l
{
  if (l)
  {
    objc_storeStrong((l + 16), a2);
  }
}

@end