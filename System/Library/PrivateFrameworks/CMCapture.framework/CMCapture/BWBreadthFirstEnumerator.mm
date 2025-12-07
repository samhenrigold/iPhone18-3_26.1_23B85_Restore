@interface BWBreadthFirstEnumerator
- (BWBreadthFirstEnumerator)initWithGraph:(id)graph;
- (id)nextObject;
- (uint64_t)nextObject;
- (void)addChildren:(void *)result;
- (void)dealloc;
@end

@implementation BWBreadthFirstEnumerator

- (BWBreadthFirstEnumerator)initWithGraph:(id)graph
{
  v17.receiver = self;
  v17.super_class = BWBreadthFirstEnumerator;
  v4 = [(BWNodeEnumerator *)&v17 initWithGraph:?];
  if (v4)
  {
    v4->_queue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_holdQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    _sourceNodes = [graph _sourceNodes];
    v6 = [_sourceNodes countByEnumeratingWithState:&v13 objects:v12 count:16];
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
            objc_enumerationMutation(_sourceNodes);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          [(NSMutableArray *)v4->_queue addObject:v10];
          [(BWNodeEnumerator *)&v4->super.super.super.isa _updateVisitedCount:v10];
        }

        v7 = [_sourceNodes countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBreadthFirstEnumerator;
  [(BWNodeEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  if ([(NSMutableArray *)self->_queue count])
  {
    firstObject = [(NSMutableArray *)self->_queue firstObject];
    [(NSMutableArray *)self->_queue removeObjectAtIndex:0];
LABEL_7:
    [(BWBreadthFirstEnumerator *)self addChildren:firstObject];
    return firstObject;
  }

  if ([(NSMutableArray *)self->_holdQueue count])
  {
    [(BWBreadthFirstEnumerator *)&self->_holdQueue nextObject];
    firstObject = v5;
    goto LABEL_7;
  }

  return 0;
}

- (void)addChildren:(void *)result
{
  if (result)
  {
    v5 = [OUTLINED_FUNCTION_0_73(result a2)];
    result = OUTLINED_FUNCTION_44_0(v5, v6, v7, v8, v9, v10, v11, v12, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57);
    if (result)
    {
      v13 = result;
      v14 = *v60;
      do
      {
        v15 = 0;
        do
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(v3);
          }

          v16 = [objc_msgSend(objc_msgSend(*(v59 + 8 * v15) "connection")];
          if (v16)
          {
            if ((v24 = OUTLINED_FUNCTION_3_66(v16), v24 == ([objc_msgSend(v4 "inputs")] - 1)) && (v25 = objc_msgSend(*(v2 + 40), "containsObject:", v4), v26 = &OBJC_IVAR___BWBreadthFirstEnumerator__queue, !v25) || (v16 = objc_msgSend(*(v2 + 40), "containsObject:", v4), v26 = &OBJC_IVAR___BWBreadthFirstEnumerator__holdQueue, (v16 & 1) == 0))
            {
              v16 = [*(v2 + *v26) addObject:v4];
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        result = OUTLINED_FUNCTION_1_3(v16, v17, v18, v19, v20, v21, v22, v23, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58);
        v13 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)nextObject
{
  *a3 = [*self firstObject];
  [*self removeObjectAtIndex:0];
  [*a2 addObjectsFromArray:*self];
  v5 = *self;

  return [v5 removeAllObjects];
}

@end