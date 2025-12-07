@interface PGGraphLocationDistrictNode
+ (id)filter;
- (PGGraphLocationDistrictNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphLocationDistrictNodeCollection)collection;
@end

@implementation PGGraphLocationDistrictNode

- (PGGraphLocationDistrictNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationDistrictNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphLocationDistrictNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v6.receiver = self;
  v6.super_class = PGGraphLocationDistrictNode;
  return [(PGGraphNamedLocationNode *)&v6 initWithLabel:label domain:domain properties:properties];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"District" domain:200];

  return v2;
}

@end