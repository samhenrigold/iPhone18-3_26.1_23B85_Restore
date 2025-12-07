@interface ICASPaletteEngagementData
- (ICASPaletteEngagementData)initWithPaletteEngagementType:(id)type;
- (id)toDict;
@end

@implementation ICASPaletteEngagementData

- (ICASPaletteEngagementData)initWithPaletteEngagementType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ICASPaletteEngagementData;
  v6 = [(ICASPaletteEngagementData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paletteEngagementType, type);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"paletteEngagementType";
  paletteEngagementType = [(ICASPaletteEngagementData *)self paletteEngagementType];
  if (paletteEngagementType)
  {
    paletteEngagementType2 = [(ICASPaletteEngagementData *)self paletteEngagementType];
  }

  else
  {
    paletteEngagementType2 = objc_opt_new();
  }

  v5 = paletteEngagementType2;
  v9[0] = paletteEngagementType2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end