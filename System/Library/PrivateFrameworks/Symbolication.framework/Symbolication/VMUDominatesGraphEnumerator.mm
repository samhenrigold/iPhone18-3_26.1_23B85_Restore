@interface VMUDominatesGraphEnumerator
- (VMUDominatesGraphEnumerator)initWithGraph:(id)graph dominatorGraph:(id)dominatorGraph;
- (void)enumerateEdgesOfNode:(unsigned int)node withBlock:(id)block;
@end

@implementation VMUDominatesGraphEnumerator

- (VMUDominatesGraphEnumerator)initWithGraph:(id)graph dominatorGraph:(id)dominatorGraph
{
  dominatorGraphCopy = dominatorGraph;
  v10.receiver = self;
  v10.super_class = VMUDominatesGraphEnumerator;
  v7 = [(VMUGraphEnumerator *)&v10 initWithGraph:graph];
  dominatorGraph = v7->_dominatorGraph;
  v7->_dominatorGraph = dominatorGraphCopy;

  return v7;
}

- (void)enumerateEdgesOfNode:(unsigned int)node withBlock:(id)block
{
  v4 = *&node;
  blockCopy = block;
  dominatorGraph = self->_dominatorGraph;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__VMUDominatesGraphEnumerator_enumerateEdgesOfNode_withBlock___block_invoke;
  v9[3] = &unk_1E8278698;
  v10 = blockCopy;
  v11 = v4;
  v8 = blockCopy;
  [(VMUDominatorGraph *)dominatorGraph enumerateDirectDomineesForNodeName:v4 withBlock:v9];
}

@end