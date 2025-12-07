@interface NMSAlternatingMediaItemGroupIterator
- (void)_continueToNextContainer;
- (void)_continueToNextIdentifier;
- (void)_generateItemListAndSizesDictIfNecessary;
- (void)_resetMaxItemListSize;
- (void)markAllRemainingContainersAsSkipped;
- (void)resetToIterateOverQuotaIdentifiers;
@end

@implementation NMSAlternatingMediaItemGroupIterator

- (void)_generateItemListAndSizesDictIfNecessary
{
  remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];

  if (!remainingItemLists)
  {
    v4.receiver = self;
    v4.super_class = NMSAlternatingMediaItemGroupIterator;
    [(NMSMediaItemGroupIterator *)&v4 _generateItemListAndSizesDictIfNecessary];
    [(NMSAlternatingMediaItemGroupIterator *)self _resetMaxItemListSize];
  }
}

- (void)_continueToNextIdentifier
{
  [(NMSAlternatingMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  do
  {
    if ([(NMSMediaItemGroupIterator *)self currentItemIndex]>= self->_maxItemListSize)
    {
      break;
    }

    v3 = [(NMSMediaItemGroupIterator *)self currentContainerIndex]+ 1;
    remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];
    v5 = [remainingItemLists count];

    if (v3 >= v5)
    {
      [(NMSMediaItemGroupIterator *)self setCurrentContainerIndex:0];
      [(NMSMediaItemGroupIterator *)self setCurrentItemIndex:[(NMSMediaItemGroupIterator *)self currentItemIndex]+ 1];
    }

    else
    {
      [(NMSMediaItemGroupIterator *)self setCurrentContainerIndex:[(NMSMediaItemGroupIterator *)self currentContainerIndex]+ 1];
    }

    currentItem = [(NMSMediaItemGroupIterator *)self currentItem];
  }

  while (!currentItem);
}

- (void)_continueToNextContainer
{
  [(NMSAlternatingMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  v3 = [(NMSMediaItemGroupIterator *)self currentContainerIndex]+ 1;

  [(NMSMediaItemGroupIterator *)self setCurrentContainerIndex:v3];
}

- (void)markAllRemainingContainersAsSkipped
{
  [(NMSAlternatingMediaItemGroupIterator *)self _generateItemListAndSizesDictIfNecessary];
  currentContainerIndex = [(NMSMediaItemGroupIterator *)self currentContainerIndex];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];
  v5 = [remainingItemLists count];

  v11 = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__NMSAlternatingMediaItemGroupIterator_markAllRemainingContainersAsSkipped__block_invoke;
  v7[3] = &unk_27993E410;
  v7[4] = self;
  v7[5] = &v8;
  v6 = MEMORY[0x25F865990](v7);
  v6[2]();
  [(NMSMediaItemGroupIterator *)self setCurrentContainerIndex:0];
  [(NMSMediaItemGroupIterator *)self setCurrentItemIndex:[(NMSMediaItemGroupIterator *)self currentItemIndex]+ 1];
  v9[3] = currentContainerIndex;
  (v6[2])(v6);

  _Block_object_dispose(&v8, 8);
}

void *__75__NMSAlternatingMediaItemGroupIterator_markAllRemainingContainersAsSkipped__block_invoke(uint64_t a1)
{
  for (i = *(a1 + 32); ; i = *(a1 + 32))
  {
    result = [i currentContainerIndex];
    if (result >= *(*(*(a1 + 40) + 8) + 24))
    {
      break;
    }

    v4 = [*(a1 + 32) currentItem];

    if (v4)
    {
      v5 = [*(a1 + 32) remainingContainers];
      v6 = [v5 objectAtIndex:{objc_msgSend(*(a1 + 32), "currentContainerIndex")}];
      v7 = [v6 quotaData];
      [v7 setHasSkippedItems:1];
    }

    [*(a1 + 32) _continueToNextContainer];
  }

  return result;
}

- (void)resetToIterateOverQuotaIdentifiers
{
  v3.receiver = self;
  v3.super_class = NMSAlternatingMediaItemGroupIterator;
  [(NMSMediaItemGroupIterator *)&v3 resetToIterateOverQuotaIdentifiers];
  [(NMSAlternatingMediaItemGroupIterator *)self _resetMaxItemListSize];
}

- (void)_resetMaxItemListSize
{
  v16 = *MEMORY[0x277D85DE8];
  self->_maxItemListSize = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  remainingItemLists = [(NMSMediaItemGroupIterator *)self remainingItemLists];
  v4 = [remainingItemLists countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(remainingItemLists);
        }

        maxItemListSize = self->_maxItemListSize;
        v9 = [*(*(&v11 + 1) + 8 * v7) count];
        if (maxItemListSize <= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = maxItemListSize;
        }

        self->_maxItemListSize = v10;
        ++v7;
      }

      while (v5 != v7);
      v5 = [remainingItemLists countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

@end