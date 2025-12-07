@interface IsValidUserUnitForQuantityType
@end

@implementation IsValidUserUnitForQuantityType

void ___IsValidUserUnitForQuantityType_block_invoke()
{
  v39[12] = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v37[0] = @"mi";
  v37[1] = @"km";
  v38[0] = v25;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v39[0] = v24;
  v23 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v38[1] = v23;
  v36[0] = @"mi";
  v36[1] = @"km";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v39[1] = v22;
  v21 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v38[2] = v21;
  v35[0] = @"yd";
  v35[1] = @"m";
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v39[2] = v20;
  v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v38[3] = v19;
  v34[0] = @"Cal";
  v34[1] = @"kcal";
  v34[2] = @"kJ";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v39[3] = v18;
  v17 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v38[4] = v17;
  v33[0] = @"Cal";
  v33[1] = @"kcal";
  v33[2] = @"kJ";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v39[4] = v16;
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC90]];
  v38[5] = v15;
  v32[0] = @"m";
  v32[1] = @"ft";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v39[5] = v14;
  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v38[6] = v13;
  v31[0] = @"degC";
  v31[1] = @"degF";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v39[6] = v12;
  v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v38[7] = v11;
  v30[0] = @"mi";
  v30[1] = @"km";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v39[7] = v10;
  v0 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v38[8] = v0;
  v29[0] = @"mi";
  v29[1] = @"km";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v39[8] = v1;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v38[9] = v2;
  v28[0] = @"mi";
  v28[1] = @"km";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v39[9] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v38[10] = v4;
  v27[0] = @"mi";
  v27[1] = @"km";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v39[10] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v38[11] = v6;
  v26[0] = @"mi";
  v26[1] = @"km";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v39[11] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:12];
  v9 = _IsValidUserUnitForQuantityType___validUnitStringsByQuantityType;
  _IsValidUserUnitForQuantityType___validUnitStringsByQuantityType = v8;
}

@end