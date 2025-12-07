@interface CKQuadTree
- (CKQuadTree)initWithPoints:(id)points;
@end

@implementation CKQuadTree

- (CKQuadTree)initWithPoints:(id)points
{
  v41 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  if (!pointsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CKQuadTree.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"points"}];
  }

  v38.receiver = self;
  v38.super_class = CKQuadTree;
  v6 = [(CKQuadTree *)&v38 init];
  if (v6)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = pointsCopy;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      v11 = 1.79769313e308;
      v12 = 2.22507386e-308;
      v13 = 2.22507386e-308;
      v14 = 1.79769313e308;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v34 + 1) + 8 * i) CGPointValue];
          if (v16 > v13)
          {
            v13 = v16;
          }

          if (v16 < v14)
          {
            v14 = v16;
          }

          if (v17 > v12)
          {
            v12 = v17;
          }

          if (v17 < v11)
          {
            v11 = v17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1.79769313e308;
      v12 = 2.22507386e-308;
      v13 = 2.22507386e-308;
      v14 = 1.79769313e308;
    }

    v18 = v13 - v14;
    if (v13 - v14 < v12 - v11)
    {
      v18 = v12 - v11;
    }

    v19 = ceil(v18 + 1.0);
    v20 = [[CKQuadTreeNode alloc] initWithBounds:floor(v14), floor(v11), v19, v19];
    rootNode = v6->_rootNode;
    v6->_rootNode = v20;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v7;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = v6->_rootNode;
          [*(*(&v30 + 1) + 8 * j) CGPointValue];
          [(CKQuadTreeNode *)v27 insertPoint:?];
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v24);
    }
  }

  return v6;
}

@end