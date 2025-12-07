@interface HPSSiriAvailableLanguages
+ (id)valueClasses;
- (HPSSiriAvailableLanguages)initWithCoder:(id)coder;
@end

@implementation HPSSiriAvailableLanguages

- (HPSSiriAvailableLanguages)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HPSSiriAvailableLanguages;
  v3 = [(HPSSetting *)&v17 initWithCoder:coder];
  if (v3)
  {
    objc_opt_class();
    value = [(HPSSetting *)v3 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v6 = [(HPSSiriAvailableLanguages *)v3 languages:0];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_14;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v11 = v3;
LABEL_15:

  return v11;
}

+ (id)valueClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

@end