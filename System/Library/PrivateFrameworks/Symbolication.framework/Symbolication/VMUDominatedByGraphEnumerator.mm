@interface VMUDominatedByGraphEnumerator
- (VMUDominatedByGraphEnumerator)initWithGraph:(id)graph dominatorGraph:(id)dominatorGraph;
- (void)enumerateEdgesOfNode:(unsigned int)node withBlock:(id)block;
@end

@implementation VMUDominatedByGraphEnumerator

- (VMUDominatedByGraphEnumerator)initWithGraph:(id)graph dominatorGraph:(id)dominatorGraph
{
  dominatorGraphCopy = dominatorGraph;
  v10.receiver = self;
  v10.super_class = VMUDominatedByGraphEnumerator;
  v7 = [(VMUGraphEnumerator *)&v10 initWithGraph:graph];
  dominatorGraph = v7->_dominatorGraph;
  v7->_dominatorGraph = dominatorGraphCopy;

  return v7;
}

- (void)enumerateEdgesOfNode:(unsigned int)node withBlock:(id)block
{
  v4 = *&node;
  blockCopy = block;
  v7 = [(VMUDominatorGraph *)self->_dominatorGraph dominator:v4];
  if (v7 != -1)
  {
    v8 = 0;
    blockCopy[2](blockCopy, 0xFFFFFFFFLL, v4, v7, &v8);
  }
}

@end