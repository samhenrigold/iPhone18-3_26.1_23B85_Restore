@interface PRASTStackItem
+ (id)itemWithNode:(id)node visited:(BOOL)visited;
- (void)dealloc;
@end

@implementation PRASTStackItem

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PRASTStackItem;
  [(PRASTStackItem *)&v2 dealloc];
}

+ (id)itemWithNode:(id)node visited:(BOOL)visited
{
  visitedCopy = visited;
  v6 = objc_alloc_init(PRASTStackItem);
  v7 = v6;
  if (v6)
  {
    [(PRASTStackItem *)v6 setNode:node];
    [(PRASTStackItem *)v7 setVisited:visitedCopy];
  }

  return v7;
}

@end