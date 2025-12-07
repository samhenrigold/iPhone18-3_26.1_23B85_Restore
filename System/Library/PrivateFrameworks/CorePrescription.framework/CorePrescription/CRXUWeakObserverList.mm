@interface CRXUWeakObserverList
- (CRXUWeakObserverList)init;
- (id)observersRespondingToSelector:(SEL)selector;
@end

@implementation CRXUWeakObserverList

- (CRXUWeakObserverList)init
{
  v6.receiver = self;
  v6.super_class = CRXUWeakObserverList;
  v2 = [(CRXUWeakObserverList *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (id)observersRespondingToSelector:(SEL)selector
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [array addObject:{v10, v12}];
        }
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

@end