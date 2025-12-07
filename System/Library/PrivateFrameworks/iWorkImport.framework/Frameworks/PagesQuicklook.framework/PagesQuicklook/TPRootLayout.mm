@interface TPRootLayout
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)setChildren:(id)children;
@end

@implementation TPRootLayout

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  childCopy = child;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();

  if (v7)
  {
    v8.receiver = self;
    v8.super_class = TPRootLayout;
    [(TPRootLayout *)&v8 insertChild:v7 atIndex:index];
  }

  else
  {
    TSULogBacktrace();
  }
}

- (void)setChildren:(id)children
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  childrenCopy = children;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v5, v7, v8, v9, v10, &v23, v27, 16, v6);
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(childrenCopy);
        }

        objc_opt_class();
        v15 = TSUCheckedDynamicCast();
        if (!v15)
        {
          TSULogBacktrace();

          goto LABEL_11;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(childrenCopy, v16, v18, v19, v20, v21, &v23, v27, 16, v17);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v22.receiver = self;
  v22.super_class = TPRootLayout;
  [(TPRootLayout *)&v22 setChildren:childrenCopy];
LABEL_11:
}

@end