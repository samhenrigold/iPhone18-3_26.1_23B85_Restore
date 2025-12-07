@interface HFAccessoriesWithIssuesStatusItem
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)options;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFAccessoriesWithIssuesStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_264 != -1)
  {
    dispatch_once(&_MergedGlobals_264, &__block_literal_global_3_17);
  }

  v3 = qword_280E03088;

  return v3;
}

void __54__HFAccessoriesWithIssuesStatusItem_statusItemClasses__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];
  v5 = qword_280E03088;
  qword_280E03088 = v4;
}

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"exclamationmark.circle.fill"];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = HFAccessoriesWithIssuesStatusItem;
  v3 = [(HFAbstractGroupedStatusItem *)&v6 _subclass_updateWithOptions:options];
  v4 = [v3 flatMap:&__block_literal_global_15_4];

  return v4;
}

id __65__HFAccessoriesWithIssuesStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [a2 mutableCopy];
  v3 = [v2 objectForKeyedSubscript:@"hidden"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  else
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hidden"];
    v35 = v2;
    v6 = [v2 objectForKeyedSubscript:@"representedHomeKitObjects"];
    v7 = [MEMORY[0x277CBEB58] set];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
    v37 = v8;
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      v36 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v14 = v10;
            v15 = [v13 hf_associatedAccessories];
            objc_opt_class();
            v16 = v13;
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;

            if (v18)
            {
              v19 = [v18 uniqueIdentifier];
              [v7 addObject:v19];
            }

            else
            {
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v19 = v15;
              v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v39;
                do
                {
                  for (j = 0; j != v21; ++j)
                  {
                    if (*v39 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = [*(*(&v38 + 1) + 8 * j) uniqueIdentifier];
                    [v7 addObject:v24];
                  }

                  v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
                }

                while (v21);
                v11 = v36;
                v8 = v37;
              }
            }

            v10 = v14;
          }

          else
          {
            v15 = [v13 uniqueIdentifier];
            [v7 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
    }

    v25 = [v7 count];
    if (v25)
    {
      v32 = HFLocalizedStringWithFormat(@"HFAccessoriesWithIssuesTitle", @"%lu", v26, v27, v28, v29, v30, v31, v25);
      v33 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"exclamationmark.circle.fill"];
      v2 = v35;
      [v35 setObject:v33 forKeyedSubscript:@"icon"];

      v8 = v37;
      [v35 setObject:v32 forKeyedSubscript:@"title"];
    }

    else
    {
      v2 = v35;
      [v35 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v5 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  return v5;
}

@end