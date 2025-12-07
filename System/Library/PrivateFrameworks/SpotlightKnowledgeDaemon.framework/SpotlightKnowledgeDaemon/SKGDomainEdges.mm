@interface SKGDomainEdges
+ (id)labels;
- (SKGDomainEdges)initWithDomainNode:(id)node inGraph:(id)graph;
@end

@implementation SKGDomainEdges

+ (id)labels
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v5 = MEMORY[0x277CBEB98];
    v7[0] = SKGContentDomainIdentifier;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    +[SKGDomainEdges labels]::sDomainEdgeLabels = [v5 setWithArray:v6];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[467];

  return v3;
}

- (SKGDomainEdges)initWithDomainNode:(id)node inGraph:(id)graph
{
  graphCopy = graph;
  v7 = [MEMORY[0x277CBEB98] setWithObject:node];
  graph = [graphCopy graph];
  v11.receiver = self;
  v11.super_class = SKGDomainEdges;
  v9 = [(MAElementCollection *)&v11 initWithSet:v7 graph:graph];

  return v9;
}

@end