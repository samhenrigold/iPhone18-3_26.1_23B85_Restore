@interface NSMapTable(GKAdditions)
- (void)_gkEnumerateKeysAndObjectsUsingBlock:()GKAdditions;
@end

@implementation NSMapTable(GKAdditions)

- (void)_gkEnumerateKeysAndObjectsUsingBlock:()GKAdditions
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NSStringFromSelector(a2);
    v8 = [v6 stringWithFormat:@"No block passed to NSMapTable's %@", v7];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKCollectionUtils.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [v6 stringWithFormat:@"%@ (block)\n[%s (%s:%d)]", v8, "-[NSMapTable(GKAdditions) _gkEnumerateKeysAndObjectsUsingBlock:]", objc_msgSend(lastPathComponent, "UTF8String"), 517];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  v13 = [selfCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(selfCopy);
      }

      v17 = *(*(&v19 + 1) + 8 * v16);
      v18 = [selfCopy objectForKey:v17];
      v5[2](v5, v17, v18, &v23);

      if (v23)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [selfCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

@end