@interface HREGoodNightTemplate
- (HREGoodNightTemplate)init;
- (id)_lazy_actionMap;
- (id)extraInvolvedTypes;
@end

@implementation HREGoodNightTemplate

- (HREGoodNightTemplate)init
{
  v8.receiver = self;
  v8.super_class = HREGoodNightTemplate;
  v2 = [(HREActionSetTemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREActionSetTemplate *)v2 setActionSetType:*MEMORY[0x277CCF198]];
    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13AB8]];
    [(HREActionSetTemplate *)v3 setIconDescriptor:v5];

    if (_MergedGlobals_14 != -1)
    {
      dispatch_once(&_MergedGlobals_14, &__block_literal_global_3_0);
    }

    v6 = qword_27F5F96B0;
    [(HRETemplate *)v3 setIdentifier:v6];

    [(HRETemplate *)v3 setSortingPriority:1.0];
    [(HRETemplate *)v3 setStarterRank:1.6];
  }

  return v3;
}

void __28__HREGoodNightTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F96B0;
  qword_27F5F96B0 = @"goodNight";
}

- (id)extraInvolvedTypes
{
  if (qword_27F5F96B8 != -1)
  {
    dispatch_once(&qword_27F5F96B8, &__block_literal_global_8_0);
  }

  v3 = qword_27F5F96C0;

  return v3;
}

void __42__HREGoodNightTemplate_extraInvolvedTypes__block_invoke_2()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E48];
  v6[0] = *MEMORY[0x277CD0EA0];
  v6[1] = v1;
  v6[2] = *MEMORY[0x277CD0F20];
  v2 = HRETelevisionProfileType();
  v6[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = qword_27F5F96C0;
  qword_27F5F96C0 = v4;
}

- (id)_lazy_actionMap
{
  v49[9] = *MEMORY[0x277D85DE8];
  v42[0] = @"HREServiceTypeAll";
  v2 = *MEMORY[0x277CCF748];
  v40[0] = *MEMORY[0x277CCF9F0];
  v40[1] = v2;
  v41[0] = MEMORY[0x277CBEC28];
  v41[1] = &unk_28665D748;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v24 = [HRECharacteristicActionMap characteristicActionMap:v25];
  v49[0] = v24;
  v42[1] = *MEMORY[0x277CD0E30];
  v38 = *MEMORY[0x277CCFB50];
  v3 = v38;
  v39 = &unk_28665D760;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v22 = [HRECharacteristicActionMap characteristicActionMap:v23];
  v49[1] = v22;
  v42[2] = *MEMORY[0x277CD0F58];
  v36 = v3;
  v37 = &unk_28665D760;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v20 = [HRECharacteristicActionMap characteristicActionMap:v21];
  v49[2] = v20;
  v43 = *MEMORY[0x277CD0ED8];
  v4 = v43;
  v34 = *MEMORY[0x277CCFB60];
  v5 = v34;
  v35 = &unk_28665D748;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v18 = [HRECharacteristicActionMap characteristicActionMap:v19];
  v49[3] = v18;
  v44 = *MEMORY[0x277CD0E58];
  v32 = *MEMORY[0x277CCFB08];
  v33 = &unk_28665D778;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v16 = [HRECharacteristicActionMap characteristicActionMap:v17];
  v49[4] = v16;
  v45 = *MEMORY[0x277CD0F60];
  v30 = v3;
  v31 = &unk_28665D760;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v7 = [HRECharacteristicActionMap characteristicActionMap:v6];
  v49[5] = v7;
  v46 = *MEMORY[0x277CD0EB0];
  v28 = *MEMORY[0x277CCFB40];
  v29 = &unk_28665D778;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v9 = [HRECharacteristicActionMap characteristicActionMap:v8];
  v49[6] = v9;
  v47 = v4;
  v26 = v5;
  v27 = &unk_28665D790;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v11 = [HRECharacteristicActionMap characteristicActionMap:v10];
  v49[7] = v11;
  v12 = NSStringFromProtocol(&unk_28666EF10);
  v48 = v12;
  v13 = [HREMediaPlaybackActionMap actionMapWithState:2 volume:0 playbackArchive:0];
  v49[8] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v42 count:9];

  return v14;
}

@end