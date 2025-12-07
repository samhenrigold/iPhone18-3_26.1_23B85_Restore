@interface NSMapTable(Indexing)
- (uint64_t)setObject:()Indexing forKeyedSubscript:;
- (void)enumerateObjects:()Indexing;
@end

@implementation NSMapTable(Indexing)

- (void)enumerateObjects:()Indexing
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = [selfCopy objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v9), v11}];
        v4[2](v4, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (uint64_t)setObject:()Indexing forKeyedSubscript:
{
  if (a3)
  {
    return [self setObject:a3 forKey:a4];
  }

  else
  {
    return [self removeObjectForKey:a4];
  }
}

@end