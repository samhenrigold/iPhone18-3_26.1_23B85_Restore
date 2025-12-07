@interface MAAbstractNode
- (MAAbstractNode)initWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
@end

@implementation MAAbstractNode

- (MAAbstractNode)initWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  v9.receiver = self;
  v9.super_class = MAAbstractNode;
  v6 = [(MAConcreteNode *)&v9 initWithLabel:label domain:domain weight:properties properties:?];
  if (v6)
  {
    v7 = [[MANodeLegacyImplementation alloc] initWithNode:v6];
    [(MANode *)v6 setImplementation:v7];
  }

  return v6;
}

@end