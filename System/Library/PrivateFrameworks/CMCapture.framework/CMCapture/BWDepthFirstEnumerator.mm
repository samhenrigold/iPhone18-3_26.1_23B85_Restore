@interface BWDepthFirstEnumerator
- (BWDepthFirstEnumerator)initWithGraph:(id)graph vertexOrdering:(int)ordering;
- (BWDepthFirstEnumerator)initWithSourceNodes:(id)nodes vertexOrdering:(int)ordering;
- (id)nextObject;
- (uint64_t)_nextUnvisitedChild:(uint64_t)child;
- (void)dealloc;
@end

@implementation BWDepthFirstEnumerator

- (id)nextObject
{
  OUTLINED_FUNCTION_4_56();
  [v3 bw_push:{objc_msgSend(*v4, "objectAtIndexedSubscript:", *v5)}];
  result = -[BWNodeEnumerator _updateVisitedCount:](v0, [*v2 objectAtIndexedSubscript:*v1]);
  ++*v1;
  return result;
}

- (BWDepthFirstEnumerator)initWithGraph:(id)graph vertexOrdering:(int)ordering
{
  v8.receiver = self;
  v8.super_class = BWDepthFirstEnumerator;
  v5 = [(BWNodeEnumerator *)&v8 initWithGraph:graph];
  v6 = v5;
  if (v5)
  {
    v5->_ordering = ordering;
    v5->_stack = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_currentSourceIndex = 0;
    v6->_sourceNodes = [(BWGraph *)v6->super._graph _sourceNodes];
  }

  return v6;
}

- (BWDepthFirstEnumerator)initWithSourceNodes:(id)nodes vertexOrdering:(int)ordering
{
  v9.receiver = self;
  v9.super_class = BWDepthFirstEnumerator;
  v6 = [(BWDepthFirstEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_ordering = ordering;
    v6->_stack = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_currentSourceIndex = 0;
    v7->_sourceNodes = nodes;
    v7->super._nodeVisitCountMap = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDepthFirstEnumerator;
  [(BWNodeEnumerator *)&v3 dealloc];
}

- (uint64_t)_nextUnvisitedChild:(uint64_t)child
{
  if (!child)
  {
    return 0;
  }

  v4 = [objc_msgSend(OUTLINED_FUNCTION_0_73(child a2)];
  v12 = OUTLINED_FUNCTION_44_0(v4, v5, v6, v7, v8, v9, v10, v11, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = *v59;
LABEL_4:
  v15 = 0;
  while (1)
  {
    if (*v59 != v14)
    {
      objc_enumerationMutation(v2);
    }

    v16 = [objc_msgSend(objc_msgSend(*(v58 + 8 * v15) "connection")];
    if (v16)
    {
      v16 = OUTLINED_FUNCTION_3_66(v16);
      if (!v16)
      {
        return v3;
      }
    }

    if (v13 == ++v15)
    {
      v24 = OUTLINED_FUNCTION_1_3(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57);
      v13 = v24;
      if (v24)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }
}

@end