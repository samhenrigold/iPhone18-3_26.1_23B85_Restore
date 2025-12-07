@interface SKGEmailEdges
+ (id)labels;
@end

@implementation SKGEmailEdges

+ (id)labels
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v5 = MEMORY[0x277CBEB98];
    v7[0] = SKGPeopleEmailAddress;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    +[SKGEmailEdges labels]::sEmailEdgeLabels = [v5 setWithArray:v6];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[459];

  return v3;
}

@end