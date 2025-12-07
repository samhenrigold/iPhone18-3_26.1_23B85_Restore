@interface PGGraphLocationSubcontinentNode
+ (MARelation)momentInSubcontinent;
+ (id)addressOfSubcontinent;
+ (id)countryOfSubcontinent;
+ (id)filter;
- (PGGraphLocationSubcontinentNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphLocationSubcontinentNodeCollection)collection;
@end

@implementation PGGraphLocationSubcontinentNode

- (PGGraphLocationSubcontinentNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationSubcontinentNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphLocationSubcontinentNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v6.receiver = self;
  v6.super_class = PGGraphLocationSubcontinentNode;
  return [(PGGraphNamedLocationNode *)&v6 initWithLabel:label domain:domain properties:properties];
}

+ (id)countryOfSubcontinent
{
  v2 = +[PGGraphLocationSubcontinentEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)momentInSubcontinent
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  inRelation = [v5 inRelation];
  transitiveClosure = [inRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphMomentNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (id)addressOfSubcontinent
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  filter = [self filter];
  relation = [filter relation];
  v5 = +[PGGraphLocationEdge filter];
  inRelation = [v5 inRelation];
  transitiveClosure = [inRelation transitiveClosure];
  v13[1] = transitiveClosure;
  v8 = +[PGGraphAddressNode filter];
  relation2 = [v8 relation];
  v13[2] = relation2;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11 = [v2 chain:v10];

  return v11;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Subcontinent" domain:200];

  return v2;
}

@end