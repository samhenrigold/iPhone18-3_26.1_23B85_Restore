@interface NTKCornerComplicationConfiguration
- (NTKCornerComplicationConfiguration)initWithTopLeftComplication:(unint64_t)complication topRightComplication:(unint64_t)rightComplication bottomLeftComplication:(unint64_t)leftComplication bottomRightComplication:(unint64_t)bottomRightComplication;
- (id)complicationSlotDescriptors;
- (id)orderedComplicationSlots;
- (id)richComplicationSlotsForDevice:(id)device;
@end

@implementation NTKCornerComplicationConfiguration

- (NTKCornerComplicationConfiguration)initWithTopLeftComplication:(unint64_t)complication topRightComplication:(unint64_t)rightComplication bottomLeftComplication:(unint64_t)leftComplication bottomRightComplication:(unint64_t)bottomRightComplication
{
  v11.receiver = self;
  v11.super_class = NTKCornerComplicationConfiguration;
  result = [(NTKCornerComplicationConfiguration *)&v11 init];
  if (result)
  {
    result->_topLeftComplication = complication;
    result->_topRightComplication = rightComplication;
    result->_bottomLeftComplication = leftComplication;
    result->_bottomRightComplication = bottomRightComplication;
  }

  return result;
}

- (id)complicationSlotDescriptors
{
  v30[1] = *MEMORY[0x277D85DE8];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v3 = NTKAllSignatureCircularTypes(indexSet);
  [indexSet addIndexes:v3];

  v5 = NTKAllSignatureCornerTypes(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_topLeftComplication];
  v30[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v8 = NTKComplicationTypeRankedListWithDefaultTypes(v7);

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_topRightComplication];
  v29 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v11 = NTKComplicationTypeRankedListWithDefaultTypes(v10);

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bottomLeftComplication];
  v28 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v14 = NTKComplicationTypeRankedListWithDefaultTypes(v13);

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bottomRightComplication];
  v27 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v17 = NTKComplicationTypeRankedListWithDefaultTypes(v16);

  v25[0] = @"top-left";
  v18 = NTKComplicationSlotDescriptor(8, v5, v8);
  v26[0] = v18;
  v25[1] = @"top-right";
  v19 = NTKComplicationSlotDescriptor(8, v5, v11);
  v26[1] = v19;
  v25[2] = @"bottom-left";
  v20 = NTKComplicationSlotDescriptor(8, v5, v14);
  v26[2] = v20;
  v25[3] = @"bottom-right";
  v21 = NTKComplicationSlotDescriptor(8, v5, v17);
  v26[3] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

  return v22;
}

- (id)orderedComplicationSlots
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"top-left";
  v4[1] = @"top-right";
  v4[2] = @"bottom-left";
  v4[3] = @"bottom-right";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];

  return v2;
}

- (id)richComplicationSlotsForDevice:(id)device
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"top-left";
  v5[1] = @"top-right";
  v5[2] = @"bottom-left";
  v5[3] = @"bottom-right";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];

  return v3;
}

@end