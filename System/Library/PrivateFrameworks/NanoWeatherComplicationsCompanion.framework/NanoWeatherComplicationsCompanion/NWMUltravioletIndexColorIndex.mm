@interface NWMUltravioletIndexColorIndex
+ (NSArray)allIndices;
+ (id)indexWithUltravioletIndexValue:(double)value color:(id)color;
- (NWMUltravioletIndexColorIndex)initWithUltravioletIndexValue:(double)value color:(id)color;
@end

@implementation NWMUltravioletIndexColorIndex

+ (id)indexWithUltravioletIndexValue:(double)value color:(id)color
{
  colorCopy = color;
  v6 = [[NWMUltravioletIndexColorIndex alloc] initWithUltravioletIndexValue:colorCopy color:value];

  return v6;
}

- (NWMUltravioletIndexColorIndex)initWithUltravioletIndexValue:(double)value color:(id)color
{
  v5.receiver = self;
  v5.super_class = NWMUltravioletIndexColorIndex;
  return [(NWKUIColorIndex *)&v5 initWithValue:color color:value];
}

+ (NSArray)allIndices
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NWMUltravioletIndexColorIndex_allIndices__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allIndices_onceToken != -1)
  {
    dispatch_once(&allIndices_onceToken, block);
  }

  v2 = allIndices_AllIndices;

  return v2;
}

void __43__NWMUltravioletIndexColorIndex_allIndices__block_invoke(uint64_t a1)
{
  v30[12] = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277D75348] systemGreenColor];
  v28 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v29 color:0.9];
  v30[0] = v28;
  v27 = [MEMORY[0x277D75348] colorWithRed:0.345098039 green:0.882352941 blue:0.337254902 alpha:1.0];
  v26 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v27 color:1.9];
  v30[1] = v26;
  v25 = [MEMORY[0x277D75348] colorWithRed:0.670588235 green:0.890196078 blue:0.37254902 alpha:1.0];
  v24 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v25 color:2.9];
  v30[2] = v24;
  v23 = [MEMORY[0x277D75348] systemYellowColor];
  v22 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v23 color:3.9];
  v30[3] = v22;
  v20 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.796078431 blue:0.0823529412 alpha:1.0];
  v19 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v20 color:4.9];
  v30[4] = v19;
  v18 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.690196078 blue:0.0431372549 alpha:1.0];
  v17 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v18 color:5.9];
  v30[5] = v17;
  v16 = [MEMORY[0x277D75348] systemOrangeColor];
  v15 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v16 color:6.9];
  v30[6] = v15;
  v1 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.380392157 blue:0.168627451 alpha:1.0];
  v2 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v1 color:7.9];
  v30[7] = v2;
  v3 = [MEMORY[0x277D75348] systemPinkColor];
  v4 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v3 color:8.9];
  v30[8] = v4;
  v5 = [MEMORY[0x277D75348] colorWithRed:0.890196078 green:0.117647059 blue:0.556862745 alpha:1.0];
  v6 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v5 color:9.9];
  v30[9] = v6;
  v7 = [MEMORY[0x277D75348] colorWithRed:0.776470588 green:0.0588235294 blue:0.776470588 alpha:1.0];
  v8 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v7 color:10.9];
  v30[10] = v8;
  [*(a1 + 32) lastValue];
  v10 = v9;
  v11 = [MEMORY[0x277D75348] colorWithRed:0.666666667 green:0.0 blue:1.0 alpha:1.0];
  v12 = [NWMUltravioletIndexColorIndex indexWithUltravioletIndexValue:v11 color:v10];
  v30[11] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:12];
  v14 = allIndices_AllIndices;
  allIndices_AllIndices = v13;
}

@end