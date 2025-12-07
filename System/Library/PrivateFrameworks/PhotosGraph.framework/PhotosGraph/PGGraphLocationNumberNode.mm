@interface PGGraphLocationNumberNode
+ (id)filter;
- (PGGraphLocationNumberNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphLocationNumberNodeCollection)collection;
@end

@implementation PGGraphLocationNumberNode

- (PGGraphLocationNumberNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationNumberNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphLocationNumberNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v6.receiver = self;
  v6.super_class = PGGraphLocationNumberNode;
  return [(PGGraphNamedLocationNode *)&v6 initWithLabel:label domain:domain properties:properties];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Number" domain:200];

  return v2;
}

@end