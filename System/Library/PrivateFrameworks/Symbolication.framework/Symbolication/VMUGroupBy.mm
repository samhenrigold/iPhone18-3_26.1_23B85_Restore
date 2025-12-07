@interface VMUGroupBy
- (VMUGroupBy)initWithGraph:(id)graph;
- (id)typeNameForNode:(unsigned int)node;
@end

@implementation VMUGroupBy

- (VMUGroupBy)initWithGraph:(id)graph
{
  graphCopy = graph;
  v5 = [(VMUGroupBy *)self init];
  graph = v5->_graph;
  v5->_graph = graphCopy;

  return v5;
}

- (id)typeNameForNode:(unsigned int)node
{
  graph = [(VMUGroupBy *)self graph];
  v4 = graph;
  if (graph)
  {
    objc_msgSend_nodeDetails_(graph);
  }

  className = [0 className];
  if (!className)
  {
    className = @"(unknown)";
  }

  return className;
}

@end