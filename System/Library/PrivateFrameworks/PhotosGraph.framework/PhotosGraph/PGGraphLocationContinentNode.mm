@interface PGGraphLocationContinentNode
+ (MARelation)momentInContinent;
+ (id)addressOfContinent;
+ (id)filter;
+ (id)subcontinentOfContinent;
- (PGGraphLocationContinentNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphLocationContinentNodeCollection)collection;
@end

@implementation PGGraphLocationContinentNode

- (PGGraphLocationContinentNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphLocationContinentNodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphLocationContinentNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v6.receiver = self;
  v6.super_class = PGGraphLocationContinentNode;
  return [(PGGraphNamedLocationNode *)&v6 initWithLabel:label domain:domain properties:properties];
}

+ (id)subcontinentOfContinent
{
  v2 = +[PGGraphLocationContinentEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)momentInContinent
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

+ (id)addressOfContinent
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
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Continent" domain:200];

  return v2;
}

@end