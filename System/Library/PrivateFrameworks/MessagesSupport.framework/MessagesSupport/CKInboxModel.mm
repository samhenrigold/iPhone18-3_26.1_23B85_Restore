@interface CKInboxModel
- (CKInboxModel)initWithSections:(id)sections footerAction:(id)action;
- (CKInboxModelDelegate)delegate;
- (id)buildItemsMap:(id)map;
- (void)setIsCollapsed:(BOOL)collapsed;
@end

@implementation CKInboxModel

- (CKInboxModel)initWithSections:(id)sections footerAction:(id)action
{
  sectionsCopy = sections;
  actionCopy = action;
  v16.receiver = self;
  v16.super_class = CKInboxModel;
  v9 = [(CKInboxModel *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sections, sections);
    v11 = _Block_copy(actionCopy);
    footerAction = v10->_footerAction;
    v10->_footerAction = v11;

    v13 = [(CKInboxModel *)v10 buildItemsMap:sectionsCopy];
    itemsMap = v10->_itemsMap;
    v10->_itemsMap = v13;
  }

  return v10;
}

- (id)buildItemsMap:(id)map
{
  v31 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = mapCopy;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        items = [v9 items];
        v11 = [items countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(items);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              filterMode = [v15 filterMode];

              if (filterMode)
              {
                filterMode2 = [v15 filterMode];
                [v4 setObject:v15 forKeyedSubscript:filterMode2];
              }
            }

            v12 = [items countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v18 = [v4 copy];

  return v18;
}

- (void)setIsCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 inboxModelDidUpdateIsCollapsed:collapsedCopy];
  }
}

- (CKInboxModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end