@interface RelevantQuantityTypes
@end

@implementation RelevantQuantityTypes

void ___RelevantQuantityTypes_block_invoke()
{
  v16[12] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v16[0] = v15;
  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v16[1] = v14;
  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v16[2] = v13;
  v0 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v16[3] = v0;
  v1 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v16[4] = v1;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC90]];
  v16[5] = v2;
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v16[6] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v16[7] = v4;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v16[8] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v16[9] = v6;
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v16[10] = v7;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v16[11] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:12];
  v10 = [v12 setWithArray:v9];
  v11 = _RelevantQuantityTypes___relevantQuantityTypes;
  _RelevantQuantityTypes___relevantQuantityTypes = v10;
}

@end