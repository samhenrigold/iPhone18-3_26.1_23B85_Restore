@interface SGMicrodataItemScope
- (BOOL)isReferencedBy:(id)by;
- (SGMicrodataItemScope)init;
@end

@implementation SGMicrodataItemScope

- (BOOL)isReferencedBy:(id)by
{
  v19 = *MEMORY[0x277D85DE8];
  byCopy = by;
  v5 = byCopy;
  if (byCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    itemProps = [(SGMicrodataItemScope *)byCopy itemProps];
    v7 = [itemProps countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(itemProps);
          }

          itemValue = [*(*(&v14 + 1) + 8 * i) itemValue];
          if (itemValue && [(SGMicrodataItemScope *)self isReferencedBy:itemValue])
          {

            v12 = 1;
            goto LABEL_14;
          }
        }

        v8 = [itemProps countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_14:
  }

  return v12;
}

- (SGMicrodataItemScope)init
{
  v6.receiver = self;
  v6.super_class = SGMicrodataItemScope;
  v2 = [(SGMicrodataItemScope *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    itemProps = v2->_itemProps;
    v2->_itemProps = v3;
  }

  return v2;
}

@end