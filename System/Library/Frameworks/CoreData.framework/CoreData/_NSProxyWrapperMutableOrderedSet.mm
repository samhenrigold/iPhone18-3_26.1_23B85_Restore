@interface _NSProxyWrapperMutableOrderedSet
- (void)addObject:(id)object;
- (void)addObjects:(const void *)objects count:(unint64_t)count;
- (void)addObjectsFromArray:(id)array;
- (void)dealloc;
- (void)initWithContainer:(uint64_t)container key:(uint64_t)key mutableOrderedSet:(void *)set mutationMethods:;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id *)objects count:(unint64_t)count atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)intersectOrderedSet:(id)set;
- (void)intersectSet:(id)set;
- (void)minusOrderedSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)removeObjectsInArray:(id)array;
- (void)removeObjectsInRange:(_NSRange)range;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator;
- (void)sortUsingComparator:(id)comparator;
- (void)sortWithOptions:(unint64_t)options usingComparator:(id)comparator;
- (void)unionOrderedSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation _NSProxyWrapperMutableOrderedSet

- (void)dealloc
{
  self->_mutationMethods = 0;
  v3.receiver = self;
  v3.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 dealloc];
}

- (void)initWithContainer:(uint64_t)container key:(uint64_t)key mutableOrderedSet:(void *)set mutationMethods:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = _NSProxyWrapperMutableOrderedSet;
  v6 = objc_msgSendSuper2(&v8, sel_initWithContainer_key_mutableOrderedSet_, a2, container, key);
  if (v6)
  {
    v6[4] = set;
  }

  return v6;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  if ([(NSMutableOrderedSet *)self->super._mutableOrderedSet containsObject:?]&& [(NSMutableOrderedSet *)self->super._mutableOrderedSet _shouldProcessKVOChange])
  {
    v6 = 1;
    [(NSMutableOrderedSet *)self->super._mutableOrderedSet _setProcessingIdempotentKVO:1];
  }

  else
  {
    v6 = 0;
  }

  if (self->_mutationMethods->_insertObjectMethod)
  {
    method_invoke();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&objectCopy count:1];
    v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
    method_invoke();

    if (!v6)
    {
      return;
    }
  }

  [(NSMutableOrderedSet *)self->super._mutableOrderedSet _setProcessingIdempotentKVO:0];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if (self->_mutationMethods->_removeObjectMethod)
  {

    method_invoke();
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
    method_invoke();
  }
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  if (([object isEqual:{-[NSMutableOrderedSet objectAtIndex:](self->super._mutableOrderedSet, "objectAtIndex:")}] & 1) == 0)
  {
    mutationMethods = self->_mutationMethods;
    if (mutationMethods->_replaceObjectMethod)
    {

      method_invoke();
    }

    else if (mutationMethods->_replaceMethod)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&objectCopy count:1];
      v9 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:index];
      method_invoke();
    }

    else
    {
      [(_NSProxyWrapperMutableOrderedSet *)self removeObjectAtIndex:index];

      [(_NSProxyWrapperMutableOrderedSet *)self insertObject:object atIndex:index];
    }
  }
}

- (void)addObject:(id)object
{
  objectCopy = object;
  if (([(NSMutableOrderedSet *)self->super._mutableOrderedSet containsObject:?]& 1) == 0)
  {
    if (self->_mutationMethods->_insertObjectMethod)
    {
      [(NSMutableOrderedSet *)self->super._mutableOrderedSet count];

      method_invoke();
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&objectCopy count:1];
      v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:{-[NSMutableOrderedSet count](self->super._mutableOrderedSet, "count")}];
      method_invoke();
    }
  }
}

- (void)addObjects:(const void *)objects count:(unint64_t)count
{
  v19[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](self);
  v9 = v19 - v8;
  if (v10 >= 0x201)
  {
    v9 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v19 - v8, 8 * v7);
    if (!count)
    {
      return;
    }
  }

  v11 = 0;
  countCopy = count;
  do
  {
    v13 = *objects;
    if (([(NSMutableOrderedSet *)self->super._mutableOrderedSet containsObject:*objects]& 1) == 0)
    {
      *&v9[8 * v11++] = v13;
    }

    ++objects;
    --countCopy;
  }

  while (countCopy);
  if (v11)
  {
    if (self->_mutationMethods->_insertMethod)
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v9 count:v11];
      v15 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{-[NSMutableOrderedSet count](self->super._mutableOrderedSet, "count"), v11}];
      method_invoke();
    }

    else
    {
      v16 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet count];
      v17 = v9;
      do
      {
        v17 += 8;
        v18 = v16 + 1;
        method_invoke();
        v16 = v18;
        --v11;
      }

      while (v11);
    }
  }

  if (count >= 0x201)
  {
    NSZoneFree(0, v9);
  }
}

- (void)addObjectsFromArray:(id)array
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [array count];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v10 - v8;
    if (v7 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v10 - v8, 8 * v7);
    }

    [array getObjects:v9 range:{0, v6}];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }
}

- (void)insertObjects:(id *)objects count:(unint64_t)count atIndex:(unint64_t)index
{
  if (count)
  {
    countCopy = count;
    objectsCopy = objects;
    if (self->_mutationMethods->_insertMethod)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:objects count:count];
      v8 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{index, countCopy}];
      method_invoke();
    }

    else
    {
      do
      {
        ++objectsCopy;
        method_invoke();
        ++index;
        --countCopy;
      }

      while (countCopy);
    }
  }
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  v25 = *MEMORY[0x1E69E9840];
  if ([objects count])
  {
    if (self->_mutationMethods->_insertMethod)
    {

      method_invoke();
    }

    else
    {
      v7 = [objects count];
      v8 = v7;
      if (v7 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x201)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v11 = &v18 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = &v18;
      if (v7 > 0x200)
      {
        v11 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v18 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v9);
      }

      [indexes getIndexes:v11 maxCount:v8 inIndexRange:{0, v8, v19}];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = [objects countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v21;
        do
        {
          v16 = 0;
          v17 = v14;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(objects);
            }

            v14 = v17 + 1;
            method_invoke();
            ++v16;
            ++v17;
          }

          while (v13 != v16);
          v13 = [objects countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      if (v18 >= 0x201)
      {
        NSZoneFree(0, v11);
      }
    }
  }
}

- (void)removeObjectsInRange:(_NSRange)range
{
  if (range.length)
  {
    location = range.location;
    if (self->_mutationMethods->_removeMethod)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{range.location, range.length}];
      method_invoke();
    }

    else
    {
      v4 = range.location + range.length;
      if (range.location + range.length > range.location)
      {
        do
        {
          --v4;
          method_invoke();
        }

        while (v4 > location);
      }
    }
  }
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([indexes count])
  {
    if (self->_mutationMethods->_removeMethod)
    {

      method_invoke();
    }

    else
    {
      v5 = [indexes count];
      v6 = v5;
      v7 = v5 - 1;
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      if (v5 >= 0x201)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      v10 = v11 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v5 >= 0x201)
      {
        v10 = NSAllocateScannedUncollectable();
        [indexes getIndexes:v10 maxCount:v6 inIndexRange:0];
      }

      else
      {
        bzero(v11 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v8);
        [indexes getIndexes:v10 maxCount:v6 inIndexRange:0];
        if (!v6)
        {
          return;
        }
      }

      do
      {
        method_invoke();
        --v7;
      }

      while (v7 != -1);
      if (v6 >= 0x201)
      {
        NSZoneFree(0, v10);
      }
    }
  }
}

- (void)removeAllObjects
{
  v3 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet count];
  if (v3)
  {
    if (self->_mutationMethods->_removeMethod)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v3}];
      method_invoke();
    }

    else
    {
      v4 = v3 - 1;
      do
      {
        method_invoke();
        --v4;
      }

      while (v4 != -1);
    }
  }
}

- (void)removeObjectsInArray:(id)array
{
  v16 = *MEMORY[0x1E69E9840];
  if ([array count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [array countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(array);
          }

          v10 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet indexOfObject:*(*(&v11 + 1) + 8 * v9)];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [array countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
    }
  }
}

- (void)intersectOrderedSet:(id)set
{
  v17 = *MEMORY[0x1E69E9840];
  if ([set count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    mutableOrderedSet = self->super._mutableOrderedSet;
    v7 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(mutableOrderedSet);
          }

          if ([set indexOfObject:*(*(&v12 + 1) + 8 * i)] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v9];
          }

          ++v9;
        }

        v8 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }
}

- (void)minusOrderedSet:(id)set
{
  v16 = *MEMORY[0x1E69E9840];
  if ([set count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [set countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(set);
          }

          v10 = [(NSMutableOrderedSet *)self->super._mutableOrderedSet indexOfObject:*(*(&v11 + 1) + 8 * v9)];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [set countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }
}

- (void)unionOrderedSet:(id)set
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [set count];
  if (v5)
  {
    v6 = v5;
    if (v5 >= 0x201)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    v8 = (8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = v10 - v8;
    if (v5 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v10 - v8, 8 * v5);
    }

    [set getObjects:v9];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }
}

- (void)intersectSet:(id)set
{
  v17 = *MEMORY[0x1E69E9840];
  if ([set count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    mutableOrderedSet = self->super._mutableOrderedSet;
    v7 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(mutableOrderedSet);
          }

          if (([set containsObject:*(*(&v12 + 1) + 8 * i)] & 1) == 0)
          {
            [v5 addIndex:v9];
          }

          ++v9;
        }

        v8 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }
}

- (void)minusSet:(id)set
{
  v17 = *MEMORY[0x1E69E9840];
  if ([set count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    mutableOrderedSet = self->super._mutableOrderedSet;
    v7 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(mutableOrderedSet);
          }

          if ([set containsObject:*(*(&v12 + 1) + 8 * i)])
          {
            [v5 addIndex:v9];
          }

          ++v9;
        }

        v8 = [(NSMutableOrderedSet *)mutableOrderedSet countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(_NSProxyWrapperMutableOrderedSet *)self removeObjectsAtIndexes:v5];
  }
}

- (void)unionSet:(id)set
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [set count];
  if (v5)
  {
    v6 = v5;
    if (v5 >= 0x201)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    v8 = (8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = v10 - v8;
    if (v5 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v10 - v8, 8 * v5);
    }

    [set getObjects:v9];
    [(_NSProxyWrapperMutableOrderedSet *)self addObjects:v9 count:v6];
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v9);
    }
  }
}

- (void)sortUsingComparator:(id)comparator
{
  v3.receiver = self;
  v3.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v3 sortUsingComparator:comparator];
}

- (void)sortWithOptions:(unint64_t)options usingComparator:(id)comparator
{
  v4.receiver = self;
  v4.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v4 sortWithOptions:options usingComparator:comparator];
}

- (void)sortRange:(_NSRange)range options:(unint64_t)options usingComparator:(id)comparator
{
  v5.receiver = self;
  v5.super_class = _NSProxyWrapperMutableOrderedSet;
  [(_NSNotifyingWrapperMutableOrderedSet *)&v5 sortRange:range.location options:range.length usingComparator:options, comparator];
}

@end