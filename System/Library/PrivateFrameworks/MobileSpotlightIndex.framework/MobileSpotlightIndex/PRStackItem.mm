@interface PRStackItem
+ (id)itemWithNode:(query_node *)node visited:(BOOL)visited;
@end

@implementation PRStackItem

+ (id)itemWithNode:(query_node *)node visited:(BOOL)visited
{
  visitedCopy = visited;
  v6 = objc_alloc_init(PRStackItem);
  v7 = v6;
  if (v6)
  {
    [(PRStackItem *)v6 setNode:node];
    [(PRStackItem *)v7 setVisited:visitedCopy];
  }

  return v7;
}

@end