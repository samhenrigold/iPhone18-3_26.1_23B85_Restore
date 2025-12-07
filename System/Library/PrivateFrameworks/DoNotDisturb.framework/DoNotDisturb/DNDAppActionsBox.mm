@interface DNDAppActionsBox
- (DNDAppActionsBox)initWithCoder:(id)coder;
- (id)appConfigurationActionsForModeIdentifier;
@end

@implementation DNDAppActionsBox

- (id)appConfigurationActionsForModeIdentifier
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_appActionsForModeIdentifier, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_appActionsForModeIdentifier;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_appActionsForModeIdentifier objectForKeyedSubscript:v9, v13];
        v11 = [v10 bs_compactMap:&__block_literal_global_16];
        [v3 setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (DNDAppActionsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (NSClassFromString(&cfstr_Lnaction.isa))
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"boxed"];

    v11 = objc_alloc_init(DNDAppActionsBox);
    [(DNDAppActionsBox *)v11 setAppActionsForModeIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end