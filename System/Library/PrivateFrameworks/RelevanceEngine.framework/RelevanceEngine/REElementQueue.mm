@interface REElementQueue
- (BOOL)containsElement:(id)element;
- (NSArray)allElements;
- (REElementQueue)initWithMaximumRelevantElementsCount:(int64_t)count comparators:(id)comparators;
- (id)elementAtIndex:(unint64_t)index;
- (int64_t)indexOfElement:(id)element;
- (int64_t)visibleCount;
- (void)addElement:(id)element hidden:(BOOL)hidden;
- (void)removeElement:(id)element;
- (void)updatePositionForElement:(id)element hidden:(BOOL)hidden;
@end

@implementation REElementQueue

- (REElementQueue)initWithMaximumRelevantElementsCount:(int64_t)count comparators:(id)comparators
{
  v35 = *MEMORY[0x277D85DE8];
  comparatorsCopy = comparators;
  v31.receiver = self;
  v31.super_class = REElementQueue;
  v7 = [(REElementQueue *)&v31 init];
  v8 = v7;
  if (v7)
  {
    v26 = v7;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(comparatorsCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = comparatorsCopy;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __REElementComparatorInverter_block_invoke;
          v32[3] = &unk_2785FD980;
          v33 = v15;
          v16 = v15;
          v17 = MEMORY[0x22AABC5E0](v32);

          [v9 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v12);
    }

    v18 = [REOrderingArray alloc];
    v19 = [v9 copy];
    v20 = [(REOrderingArray *)v18 initWithComparators:v19];
    v8 = v26;
    relevantElements = v26->_relevantElements;
    v26->_relevantElements = v20;

    v22 = [MEMORY[0x277CBEB58] set];
    hiddenElements = v26->_hiddenElements;
    v26->_hiddenElements = v22;

    countCopy = 0x7FFFFFFFFFFFFFFFLL;
    if (count < 0x7FFFFFFFFFFFFFFFLL)
    {
      countCopy = count;
    }

    v26->_maximumRelevantElementsCount = countCopy;
  }

  return v8;
}

- (int64_t)visibleCount
{
  result = [(REOrderingArray *)self->_relevantElements count];
  if (result >= self->_maximumRelevantElementsCount)
  {
    return self->_maximumRelevantElementsCount;
  }

  return result;
}

- (BOOL)containsElement:(id)element
{
  elementCopy = element;
  v5 = ([(NSMutableSet *)self->_hiddenElements containsObject:elementCopy]& 1) != 0 || [(REOrderingArray *)self->_relevantElements containsObject:elementCopy];

  return v5;
}

- (NSArray)allElements
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableSet count](self->_hiddenElements, "count") + -[REOrderingArray count](self->_relevantElements, "count")}];
  if ([(REOrderingArray *)self->_relevantElements count])
  {
    v4 = 0;
    do
    {
      v5 = [(REOrderingArray *)self->_relevantElements objectAtIndex:v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(REOrderingArray *)self->_relevantElements count]);
  }

  allObjects = [(NSMutableSet *)self->_hiddenElements allObjects];
  [v3 addObjectsFromArray:allObjects];

  v7 = [v3 copy];

  return v7;
}

- (id)elementAtIndex:(unint64_t)index
{
  if ([(REElementQueue *)self visibleCount]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(REOrderingArray *)self->_relevantElements objectAtIndexedSubscript:index];
  }

  return v5;
}

- (int64_t)indexOfElement:(id)element
{
  v4 = [(REOrderingArray *)self->_relevantElements indexOfObject:element];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    if (v4 < [(REElementQueue *)self visibleCount])
    {
      return v6;
    }
  }

  return v5;
}

- (void)addElement:(id)element hidden:(BOOL)hidden
{
  v4 = 8;
  if (hidden)
  {
    v4 = 16;
  }

  [*(&self->super.isa + v4) addObject:element];
}

- (void)removeElement:(id)element
{
  hiddenElements = self->_hiddenElements;
  elementCopy = element;
  v5 = [(NSMutableSet *)hiddenElements containsObject:elementCopy];
  v6 = 8;
  if (v5)
  {
    v6 = 16;
  }

  [*(&self->super.isa + v6) removeObject:elementCopy];
}

- (void)updatePositionForElement:(id)element hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  elementCopy = element;
  v6 = [(NSMutableSet *)self->_hiddenElements containsObject:?];
  if (v6)
  {
    v7 = elementCopy;
    if (hiddenCopy)
    {
      goto LABEL_8;
    }

    [(NSMutableSet *)self->_hiddenElements removeObject:elementCopy];
    v6 = [(REElementQueue *)self addElement:elementCopy hidden:0];
  }

  else if (hiddenCopy)
  {
    [(REElementQueue *)self removeElement:elementCopy];
    v6 = [(NSMutableSet *)self->_hiddenElements addObject:elementCopy];
  }

  else
  {
    v6 = [(REOrderingArray *)self->_relevantElements updateObject:elementCopy];
  }

  v7 = elementCopy;
LABEL_8:

  MEMORY[0x2821F96F8](v6, v7);
}

@end