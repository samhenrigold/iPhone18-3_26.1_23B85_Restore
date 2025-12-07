@interface PRAstCompositeNode
- (PRAstCompositeNode)initWithNodeType:(id)type children:(id)children sourceToken:(id)token isLastToken:(BOOL)lastToken;
- (id)description;
- (id)toDictionary;
- (void)addChild:(id)child;
- (void)dealloc;
@end

@implementation PRAstCompositeNode

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: type='%@', children=%lu>", NSStringFromClass(v4), -[PRAstCompositeNode nodeType](self, "nodeType"), -[NSMutableArray count](-[PRAstCompositeNode children](self, "children"), "count")];
}

- (id)toDictionary
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(PRAstCompositeNode *)self children];
  v5 = [(NSMutableArray *)children countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(children);
        }

        [array addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "toDictionary")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)children countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v6);
  }

  v15[0] = @"type";
  nodeType = [(PRAstCompositeNode *)self nodeType];
  v15[1] = @"children";
  v16[0] = nodeType;
  v16[1] = [array copy];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
}

- (void)addChild:(id)child
{
  if (child)
  {
    children = [(PRAstCompositeNode *)self children];

    [(NSMutableArray *)children addObject:child];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstCompositeNode;
  [(PRAstNode *)&v3 dealloc];
}

- (PRAstCompositeNode)initWithNodeType:(id)type children:(id)children sourceToken:(id)token isLastToken:(BOOL)lastToken
{
  v11.receiver = self;
  v11.super_class = PRAstCompositeNode;
  v8 = [(PRAstNode *)&v11 initWithSourceToken:token isLastToken:lastToken];
  if (v8)
  {
    v8->_nodeType = type;
    if (children)
    {
      childrenCopy = children;
    }

    else
    {
      childrenCopy = MEMORY[0x1E695E0F0];
    }

    v8->_children = [MEMORY[0x1E695DF70] arrayWithArray:childrenCopy];
  }

  return v8;
}

@end