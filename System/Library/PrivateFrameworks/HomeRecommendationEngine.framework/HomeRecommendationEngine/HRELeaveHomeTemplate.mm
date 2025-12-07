@interface HRELeaveHomeTemplate
- (HRELeaveHomeTemplate)init;
- (id)_lazy_actionMap;
- (id)extraInvolvedTypes;
@end

@implementation HRELeaveHomeTemplate

- (HRELeaveHomeTemplate)init
{
  v8.receiver = self;
  v8.super_class = HRELeaveHomeTemplate;
  v2 = [(HREActionSetTemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(HREActionSetTemplate *)v2 setActionSetType:*MEMORY[0x277CCF188]];
    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13A98]];
    [(HREActionSetTemplate *)v3 setIconDescriptor:v5];

    if (_MergedGlobals_13 != -1)
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_3);
    }

    v6 = qword_27F5F9690;
    [(HRETemplate *)v3 setIdentifier:v6];

    [(HRETemplate *)v3 setSortingPriority:4.0];
    [(HRETemplate *)v3 setStarterRank:2.2];
  }

  return v3;
}

void __28__HRELeaveHomeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9690;
  qword_27F5F9690 = @"leaveHome";
}

- (id)extraInvolvedTypes
{
  if (qword_27F5F9698 != -1)
  {
    dispatch_once(&qword_27F5F9698, &__block_literal_global_8);
  }

  v3 = qword_27F5F96A0;

  return v3;
}

void __42__HRELeaveHomeTemplate_extraInvolvedTypes__block_invoke_2()
{
  v8[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E40];
  v8[0] = *MEMORY[0x277CD0EA0];
  v8[1] = v1;
  v2 = *MEMORY[0x277CD0E48];
  v8[2] = *MEMORY[0x277CD0F40];
  v8[3] = v2;
  v3 = *MEMORY[0x277CD0E68];
  v8[4] = *MEMORY[0x277CD0F20];
  v8[5] = v3;
  v8[6] = *MEMORY[0x277CD0DD8];
  v4 = HRETelevisionProfileType();
  v8[7] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:8];
  v6 = [v0 setWithArray:v5];
  v7 = qword_27F5F96A0;
  qword_27F5F96A0 = v6;
}

- (id)_lazy_actionMap
{
  v45[9] = *MEMORY[0x277D85DE8];
  v44[0] = @"HREServiceTypeAll";
  v2 = *MEMORY[0x277CCF748];
  v42[0] = *MEMORY[0x277CCF9F0];
  v42[1] = v2;
  v43[0] = MEMORY[0x277CBEC28];
  v43[1] = &unk_28665D700;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v27 = [HRECharacteristicActionMap characteristicActionMap:v28];
  v45[0] = v27;
  v44[1] = *MEMORY[0x277CD0E30];
  v40 = *MEMORY[0x277CCFB50];
  v3 = v40;
  v41 = &unk_28665D718;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v25 = [HRECharacteristicActionMap characteristicActionMap:v26];
  v45[1] = v25;
  v44[2] = *MEMORY[0x277CD0F60];
  v38 = v3;
  v39 = &unk_28665D718;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v23 = [HRECharacteristicActionMap characteristicActionMap:v24];
  v45[2] = v23;
  v44[3] = *MEMORY[0x277CD0E60];
  v36 = *MEMORY[0x277CCFB18];
  v37 = &unk_28665D700;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v21 = [HRECharacteristicActionMap characteristicActionMap:v22];
  v45[3] = v21;
  v44[4] = *MEMORY[0x277CD0E58];
  v34 = *MEMORY[0x277CCFB08];
  v35 = &unk_28665D730;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v19 = [HRECharacteristicActionMap characteristicActionMap:v20];
  v45[4] = v19;
  v44[5] = *MEMORY[0x277CD0EB0];
  v32 = *MEMORY[0x277CCFB40];
  v33 = &unk_28665D730;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v17 = [HRECharacteristicActionMap characteristicActionMap:v18];
  v45[5] = v17;
  v44[6] = *MEMORY[0x277CD0ED8];
  v30 = *MEMORY[0x277CCFB60];
  v31 = &unk_28665D730;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v45[6] = v5;
  v6 = NSStringFromProtocol(&unk_28666EF10);
  v44[7] = v6;
  v7 = [HREMediaPlaybackActionMap actionMapWithState:2 volume:0 playbackArchive:0];
  v45[7] = v7;
  v8 = HREMatterRVCType();
  v44[8] = v8;
  v9 = [HREMatterCommandActionMap alloc];
  v10 = +[HREMatterCommandMap vacuumAndMop];
  v29[0] = v10;
  v11 = +[HREMatterCommandMap selectAllRooms];
  v29[1] = v11;
  v12 = +[HREMatterCommandMap startCleaning];
  v29[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v14 = [(HREMatterCommandActionMap *)v9 initWithCommands:v13];
  v45[8] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:9];

  return v16;
}

@end