@interface BWReverseBreadthFirstEnumerator
- (BWReverseBreadthFirstEnumerator)initWithGraph:(id)graph;
- (id)nextObject;
- (void)dealloc;
@end

@implementation BWReverseBreadthFirstEnumerator

- (BWReverseBreadthFirstEnumerator)initWithGraph:(id)graph
{
  v17.receiver = self;
  v17.super_class = BWReverseBreadthFirstEnumerator;
  v4 = [(BWNodeEnumerator *)&v17 initWithGraph:?];
  if (v4)
  {
    v4->_queue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    _sinkNodes = [graph _sinkNodes];
    v6 = [_sinkNodes countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(_sinkNodes);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          [(NSMutableArray *)v4->_queue addObject:v10];
          [(BWNodeEnumerator *)&v4->super.super.super.isa _updateVisitedCount:v10];
        }

        v7 = [_sinkNodes countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWReverseBreadthFirstEnumerator;
  [(BWNodeEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  result = [(BWNodeEnumerator *)self _updateVisitedCount:a2];
  if (!result)
  {
    return [*a3 addObject:a2];
  }

  return result;
}

@end