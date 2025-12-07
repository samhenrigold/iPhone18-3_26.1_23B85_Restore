@interface MCDPlayableContentNowPlayingDataSource
- (id)_itemProperties;
@end

@implementation MCDPlayableContentNowPlayingDataSource

- (id)_itemProperties
{
  v39[1] = *MEMORY[0x277D85DE8];
  v28 = objc_alloc(MEMORY[0x277CD6018]);
  v38 = *MEMORY[0x277CD5BB0];
  v2 = objc_alloc(MEMORY[0x277CD6018]);
  v3 = *MEMORY[0x277CD5B18];
  v37[0] = *MEMORY[0x277CD5B60];
  v37[1] = v3;
  v4 = *MEMORY[0x277CD5B30];
  v37[2] = *MEMORY[0x277CD5B38];
  v37[3] = v4;
  v5 = *MEMORY[0x277CD5AF8];
  v37[4] = *MEMORY[0x277CD5B20];
  v37[5] = v5;
  v6 = *MEMORY[0x277CD5B48];
  v37[6] = *MEMORY[0x277CD5B08];
  v37[7] = v6;
  v7 = *MEMORY[0x277CD5B50];
  v37[8] = *MEMORY[0x277CD5B40];
  v37[9] = v7;
  v37[10] = *MEMORY[0x277CD5AF0];
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:11];
  v35[0] = *MEMORY[0x277CD5C10];
  v8 = MEMORY[0x277CD6018];
  v34 = *MEMORY[0x277CD5988];
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v26 = [v8 propertySetWithProperties:v27];
  v36[0] = v26;
  v35[1] = *MEMORY[0x277CD5BF0];
  v9 = objc_alloc(MEMORY[0x277CD6018]);
  v33 = *MEMORY[0x277CD5960];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v31 = *MEMORY[0x277CD5B68];
  v10 = MEMORY[0x277CD6018];
  v30 = *MEMORY[0x277CD5980];
  v11 = v30;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v12 = [v10 propertySetWithProperties:v24];
  v32 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v14 = [v9 initWithProperties:v23 relationships:v13];
  v36[1] = v14;
  v35[2] = *MEMORY[0x277CD5C08];
  v15 = MEMORY[0x277CD6018];
  v29 = v11;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v17 = [v15 propertySetWithProperties:v16];
  v36[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v19 = [v2 initWithProperties:v25 relationships:v18];
  v39[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v21 = [v28 initWithProperties:0 relationships:v20];

  return v21;
}

@end