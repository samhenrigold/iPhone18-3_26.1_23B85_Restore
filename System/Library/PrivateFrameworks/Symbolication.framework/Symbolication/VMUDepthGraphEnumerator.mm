@interface VMUDepthGraphEnumerator
- (VMUDepthGraphEnumerator)initWithGraph:(id)graph depthGraph:(id)depthGraph;
- (void)enumerateEdgesOfNode:(unsigned int)node withBlock:(id)block;
@end

@implementation VMUDepthGraphEnumerator

- (VMUDepthGraphEnumerator)initWithGraph:(id)graph depthGraph:(id)depthGraph
{
  depthGraphCopy = depthGraph;
  v10.receiver = self;
  v10.super_class = VMUDepthGraphEnumerator;
  v7 = [(VMUGraphEnumerator *)&v10 initWithGraph:graph];
  depthGraph = v7->_depthGraph;
  v7->_depthGraph = depthGraphCopy;

  return v7;
}

- (void)enumerateEdgesOfNode:(unsigned int)node withBlock:(id)block
{
  v4 = *&node;
  blockCopy = block;
  v7 = [(VMUDepthGraph *)self->_depthGraph depthOfNode:v4];
  graph = [(VMUGraphEnumerator *)self graph];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__VMUDepthGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke;
  v10[3] = &unk_1E82786C0;
  v12 = v7;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [graph enumerateEdgesOfNode:v4 withBlock:v10];
}

void *__58__VMUDepthGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(*(a1 + 32) + 16) depthOfNode:a4];
  if (result == *(a1 + 48) + 1)
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  return result;
}

@end