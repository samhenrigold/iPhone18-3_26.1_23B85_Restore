@interface QLItemFetcher
- (QLItemFetcher)init;
- (QLItemFetcher)initWithCoder:(id)coder;
- (void)_notifyObservers;
- (void)encodeWithCoder:(id)coder;
- (void)registerObserver:(id)observer withBlock:(id)block;
@end

@implementation QLItemFetcher

- (QLItemFetcher)init
{
  v6.receiver = self;
  v6.super_class = QLItemFetcher;
  v2 = [(QLItemFetcher *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observersToBlocks = v2->_observersToBlocks;
    v2->_observersToBlocks = weakToStrongObjectsMapTable;

    [(QLItemFetcher *)v2 setFetchingState:0];
  }

  return v2;
}

- (void)registerObserver:(id)observer withBlock:(id)block
{
  observerCopy = observer;
  blockCopy = block;
  v7 = [(NSMapTable *)self->_observersToBlocks objectForKey:observerCopy];
  if (!v7)
  {
    v7 = objc_opt_new();
    [(NSMapTable *)self->_observersToBlocks setObject:v7 forKey:observerCopy];
  }

  v8 = MEMORY[0x266708AD0](blockCopy);
  [v7 addObject:v8];
}

- (void)_notifyObservers
{
  keyEnumerator = [(NSMapTable *)self->_observersToBlocks keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__QLItemFetcher__notifyObservers__block_invoke;
  v5[3] = &unk_279AE1078;
  v5[4] = self;
  [allObjects enumerateObjectsUsingBlock:v5];
}

void __33__QLItemFetcher__notifyObservers__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) objectForKey:a2];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[QLItemFetcher fetchingState](self forKey:{"fetchingState"), @"fetchingState"}];
}

- (QLItemFetcher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(QLItemFetcher *)self init];
  if (v5)
  {
    -[QLItemFetcher setFetchingState:](v5, "setFetchingState:", [coderCopy decodeIntegerForKey:@"fetchingState"]);
    v6 = v5;
  }

  return v5;
}

@end