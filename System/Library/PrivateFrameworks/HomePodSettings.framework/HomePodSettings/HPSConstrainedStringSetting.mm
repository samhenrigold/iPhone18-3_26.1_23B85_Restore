@interface HPSConstrainedStringSetting
- (HPSConstrainedStringSetting)initWithCoder:(id)coder;
- (HPSConstrainedStringSetting)initWithKeyPath:(id)path stringValue:(id)value items:(id)items;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPSConstrainedStringSetting

- (HPSConstrainedStringSetting)initWithKeyPath:(id)path stringValue:(id)value items:(id)items
{
  itemsCopy = items;
  v9 = [(HPSStringSetting *)self initWithKeyPath:path stringValue:value];
  if (v9)
  {
    v10 = [itemsCopy copy];
    items = v9->_items;
    v9->_items = v10;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = HPSConstrainedStringSetting;
  [(HPSSetting *)&v6 encodeWithCoder:coderCopy];
  items = [(HPSConstrainedStringSetting *)self items];
  if (items)
  {
    [coderCopy encodeObject:items forKey:@"setting.items"];
  }
}

- (HPSConstrainedStringSetting)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HPSConstrainedStringSetting;
  v5 = [(HPSSetting *)&v21 initWithCoder:coderCopy];
  if (!v5 || ![coderCopy containsValueForKey:@"setting.items"])
  {
LABEL_13:
    v10 = v5;
    goto LABEL_14;
  }

  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), v6, 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"setting.items"];
  items = v5->_items;
  v5->_items = v8;

  objc_opt_class();
  v10 = 0;
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v5->_items;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v10 = 0;
            goto LABEL_14;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

@end