@interface PGGraphLocationStreetNode
+ (id)filter;
- (PGGraphLocationStreetNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphLocationStreetNodeCollection)collection;
@end

@implementation PGGraphLocationStreetNode

- (PGGraphLocationStreetNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationStreetNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphLocationStreetNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v6.receiver = self;
  v6.super_class = PGGraphLocationStreetNode;
  return [(PGGraphNamedLocationNode *)&v6 initWithLabel:label domain:domain properties:properties];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Street" domain:200];

  return v2;
}

@end