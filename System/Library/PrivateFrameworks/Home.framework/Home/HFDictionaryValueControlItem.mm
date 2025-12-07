@interface HFDictionaryValueControlItem
+ (id)defaultMainTextColorForCharacteristicType:(id)type;
- (BOOL)canCopyWithCharacteristicOptions:(id)options;
- (HFDictionaryValueControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFDictionaryValueControlItem)initWithValueSource:(id)source characteristicType:(id)type displayResults:(id)results;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resultsForBatchReadResponse:(id)response;
- (void)getStatus:(id *)status mainTextColor:(id *)color supplementaryDescription:(id *)description withBatchReadResponse:(id)response;
@end

@implementation HFDictionaryValueControlItem

- (HFDictionaryValueControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicType_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFDictionaryValueControlItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFDictionaryValueControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFDictionaryValueControlItem)initWithValueSource:(id)source characteristicType:(id)type displayResults:(id)results
{
  v29[3] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  typeCopy = type;
  v10 = MEMORY[0x277CBEB58];
  resultsCopy = results;
  v12 = objc_alloc_init(v10);
  [v12 addObject:typeCopy];
  v13 = *MEMORY[0x277CCFAB0];
  v29[0] = *MEMORY[0x277CCFAA8];
  v29[1] = v13;
  v29[2] = *MEMORY[0x277CCFA98];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [v12 addObjectsFromArray:v14];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __86__HFDictionaryValueControlItem_initWithValueSource_characteristicType_displayResults___block_invoke;
  v25[3] = &unk_277DF3130;
  v26 = sourceCopy;
  v15 = sourceCopy;
  v16 = [v12 na_filter:v25];
  v17 = [HFControlItemCharacteristicOptions alloc];
  v27 = &unk_2825240F0;
  v28 = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v19 = [(HFControlItemCharacteristicOptions *)v17 initWithCharacteristicTypesByUsage:v18];

  v24.receiver = self;
  v24.super_class = HFDictionaryValueControlItem;
  v20 = [(HFControlItem *)&v24 initWithValueSource:v15 characteristicOptions:v19 displayResults:resultsCopy];

  characteristicType = v20->_characteristicType;
  v20->_characteristicType = typeCopy;
  v22 = typeCopy;

  return v20;
}

BOOL __86__HFDictionaryValueControlItem_initWithValueSource_characteristicType_displayResults___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) allCharacteristicsForCharacteristicType:a2];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)canCopyWithCharacteristicOptions:(id)options
{
  optionsCopy = options;
  characteristicOptions = [(HFControlItem *)self characteristicOptions];
  v6 = [optionsCopy isEqual:characteristicOptions];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  valueSource = [(HFControlItem *)self valueSource];
  characteristicType = [(HFDictionaryValueControlItem *)self characteristicType];
  displayResults = [(HFControlItem *)self displayResults];
  v8 = [v4 initWithValueSource:valueSource characteristicType:characteristicType displayResults:displayResults];

  return v8;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  if ([(HFDictionaryValueControlItem *)self canCopyWithCharacteristicOptions:options])
  {
    v7 = [HFDictionaryValueControlItem alloc];
    characteristicType = [(HFDictionaryValueControlItem *)self characteristicType];
    displayResults = [(HFControlItem *)self displayResults];
    v10 = [(HFDictionaryValueControlItem *)v7 initWithValueSource:sourceCopy characteristicType:characteristicType displayResults:displayResults];

    [(HFItem *)v10 copyLatestResultsFromItem:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)resultsForBatchReadResponse:(id)response
{
  responseCopy = response;
  v40.receiver = self;
  v40.super_class = HFDictionaryValueControlItem;
  v5 = [(HFControlItem *)&v40 resultsForBatchReadResponse:responseCopy];
  v6 = [v5 mutableCopy];

  v38 = 0;
  v39 = 0;
  v37 = 0;
  [(HFDictionaryValueControlItem *)self getStatus:&v39 mainTextColor:&v38 supplementaryDescription:&v37 withBatchReadResponse:responseCopy];
  v7 = v39;
  v8 = v38;
  v9 = v37;
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"controlStatus"];
  }

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"controlDescriptionMainTextColor"];
  }

  v36 = v7;
  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:@"supplementaryControlDescription"];
  }

  v33 = v9;
  objc_opt_class();
  valueSource = [(HFControlItem *)self valueSource];
  allServices = [valueSource allServices];
  anyObject = [allServices anyObject];
  if (objc_opt_isKindOfClass())
  {
    v13 = anyObject;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  hf_iconDescriptor = [v14 hf_iconDescriptor];
  v16 = [HFCharacteristicValueDisplayMetadata displayMetadataForService:v14 characteristicReadResponse:responseCopy];
  objc_opt_class();
  v35 = v8;
  if (objc_opt_isKindOfClass())
  {
    primaryState = [v16 primaryState];
    v18 = &HFCAPackageStateOn;
    if (primaryState != 2)
    {
      v18 = &HFCAPackageStateOff;
    }

    identifier2 = *v18;
    v20 = [HFServiceIconFactory iconModifiersForService:v14];
    v21 = [HFCAPackageIconDescriptor alloc];
    identifier = [hf_iconDescriptor identifier];
    v23 = [(HFCAPackageIconDescriptor *)v21 initWithPackageIdentifier:identifier state:identifier2 modifiers:v20];

    hf_iconDescriptor = v20;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [hf_iconDescriptor iconDescriptorForPrimaryState:{objc_msgSend(v16, "primaryState", v9, v8, v7)}];
      if (!v24)
      {
        identifier2 = 0;
        goto LABEL_21;
      }

      v25 = v24;
      identifier2 = v25;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v26 = [HFPrimaryStateIconDescriptor alloc];
      identifier2 = [hf_iconDescriptor identifier];
      v25 = -[HFPrimaryStateIconDescriptor initWithIdentifier:primaryState:](v26, "initWithIdentifier:primaryState:", identifier2, [v16 primaryState]);
    }

    v23 = v25;
  }

  hf_iconDescriptor = v23;
LABEL_21:

LABEL_22:
  [v6 na_safeSetObject:hf_iconDescriptor forKey:{@"controlIcon", v33}];
  hf_sensorServiceTypes = [MEMORY[0x277CD1D90] hf_sensorServiceTypes];
  valueSource2 = [(HFControlItem *)self valueSource];
  primaryServiceDescriptor = [valueSource2 primaryServiceDescriptor];
  serviceType = [primaryServiceDescriptor serviceType];
  v31 = [hf_sensorServiceTypes containsObject:serviceType];

  if (v31)
  {
    [v6 na_safeSetObject:MEMORY[0x277CBEC38] forKey:@"readValueOnly"];
  }

  return v6;
}

- (void)getStatus:(id *)status mainTextColor:(id *)color supplementaryDescription:(id *)description withBatchReadResponse:(id)response
{
  v111 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__13;
  v99 = __Block_byref_object_dispose__13;
  v100 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__13;
  v93 = __Block_byref_object_dispose__13;
  v94 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__13;
  v87 = __Block_byref_object_dispose__13;
  v88 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__HFDictionaryValueControlItem_getStatus_mainTextColor_supplementaryDescription_withBatchReadResponse___block_invoke;
  aBlock[3] = &unk_277DFBEE0;
  aBlock[4] = &v95;
  aBlock[5] = &v89;
  aBlock[8] = color;
  aBlock[9] = description;
  aBlock[6] = &v83;
  aBlock[7] = status;
  v71 = _Block_copy(aBlock);
  v77 = [(HFControlItem *)self characteristicValuesByTypeForBatchReadResponse:responseCopy];
  v10 = *MEMORY[0x277CCFAB0];
  v109[0] = *MEMORY[0x277CCFAA8];
  v9 = v109[0];
  v109[1] = v10;
  v110 = *MEMORY[0x277CCFA98];
  v11 = v110;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:3];
  v107[0] = v9;
  v107[1] = v10;
  v108[0] = &unk_282524108;
  v108[1] = &unk_282524108;
  v107[2] = v11;
  v108[2] = &unk_282524108;
  v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:3];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v78 objects:v106 count:16];
  v69 = v10;
  v70 = v9;
  v68 = v11;
  if (v13)
  {
    v75 = 0;
    v14 = *v79;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v79 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v78 + 1) + 8 * v15);
      v17 = [v76 objectForKey:v16];
      objc_opt_class();
      v18 = v17;
      v19 = (objc_opt_isKindOfClass() & 1) != 0 ? v18 : 0;
      v20 = v19;

      v21 = [v77 objectForKey:v16];
      objc_opt_class();
      v22 = v21;
      v23 = (objc_opt_isKindOfClass() & 1) != 0 ? v22 : 0;
      v24 = v23;

      v25 = !v20 || v24 == 0;
      if (v25 || ![v20 isEqualToNumber:v24])
      {
        v27 = 1;
      }

      else
      {
        v26 = v16;

        v27 = 0;
        v75 = v26;
      }

      if (!v27)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [obj countByEnumeratingWithState:&v78 objects:v106 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v75 = 0;
  }

  valueSource = [(HFControlItem *)self valueSource];
  primaryServiceDescriptor = [valueSource primaryServiceDescriptor];
  serviceType = [primaryServiceDescriptor serviceType];

  v31 = MEMORY[0x277CCF938];
  v32 = MEMORY[0x277CCF978];
  v33 = MEMORY[0x277CCF9A8];
  if (v75)
  {
    v104[0] = v70;
    v34 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicStateGroupedTitleStatusLowBattery", @"HFCharacteristicStateGroupedTitleStatusLowBattery", 1);
    v105[0] = v34;
    v104[1] = v69;
    v35 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicStateGroupedTitleStatusTampered", @"HFCharacteristicStateGroupedTitleStatusTampered", 1);
    v105[1] = v35;
    v104[2] = v68;
    v36 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicStateGroupedTitleStatusFault", @"HFCharacteristicStateGroupedTitleStatusFault", 1);
    v105[2] = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];

    v38 = [v37 objectForKey:v75];
    v39 = v96[5];
    v96[5] = v38;

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v41 = v90[5];
    v90[5] = systemRedColor;
  }

  else
  {
    v75 = [MEMORY[0x277CD1D90] hf_sensorCharacteristicTypeForServiceType:serviceType];
    v42 = [v77 objectForKey:v75];
    objc_opt_class();
    v37 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = v37;
    }

    else
    {
      v43 = 0;
    }

    v41 = v43;

    if (v41)
    {
      valueSource2 = [(HFControlItem *)self valueSource];
      v45 = [valueSource2 metadataForCharacteristicType:v75];

      v46 = *MEMORY[0x277CCF7A0];
      v103[0] = *MEMORY[0x277CCFA80];
      v103[1] = v46;
      v47 = *v31;
      v103[2] = *MEMORY[0x277CCF7B8];
      v103[3] = v47;
      v48 = *v33;
      v103[4] = *v32;
      v103[5] = v48;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:6];
      v50 = [v49 containsObject:v75];

      if (v50)
      {
        [MEMORY[0x277CCAA28] hf_controlDescriptionFormatterForCharacteristicType:v75 withMetadata:v45 options:0 form:1];
      }

      else
      {
        [MEMORY[0x277CCAA28] hf_valueFormatterForCharacteristicType:v75 withMetadata:v45 options:0];
      }
      v51 = ;
      v52 = [v51 stringForObjectValue:v41];
      v53 = v96[5];
      v96[5] = v52;
    }

    v54 = [objc_opt_class() defaultMainTextColorForCharacteristicType:v75];
    v55 = v90[5];
    v90[5] = v54;
  }

  v56 = *MEMORY[0x277CCF7E8];
  v101[0] = *MEMORY[0x277CCF770];
  v101[1] = v56;
  v102[0] = @"AirQuality";
  v102[1] = @"ContactSensor";
  v57 = *MEMORY[0x277CCF868];
  v101[2] = *MEMORY[0x277CCF830];
  v101[3] = v57;
  v102[2] = @"LightSensor";
  v102[3] = @"TemperatureSensor";
  v58 = *MEMORY[0x277CCF7A0];
  v101[4] = *MEMORY[0x277CCFA80];
  v101[5] = v58;
  v102[4] = @"SmokeSensor";
  v102[5] = @"CarbonDioxideSensor";
  v59 = *v31;
  v101[6] = *MEMORY[0x277CCF7B8];
  v101[7] = v59;
  v102[6] = @"CarbonMonoxideSensor";
  v102[7] = @"LeakSensor";
  v60 = *v33;
  v101[8] = *v32;
  v101[9] = v60;
  v102[8] = @"MotionSensor";
  v102[9] = @"OccupancySensor";
  v101[10] = *MEMORY[0x277CCF850];
  v102[10] = @"HumiditySensor";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:11];
  v62 = [MEMORY[0x277CD1D90] hf_sensorCharacteristicTypeForServiceType:serviceType];
  v63 = MEMORY[0x277CCACA8];
  v64 = [v61 objectForKey:v62];
  v65 = [v63 stringWithFormat:@"HFServiceType%@", v64];

  v66 = _HFLocalizedStringWithDefaultValue(v65, v65, 1);
  v67 = v84[5];
  v84[5] = v66;

  if (v71)
  {
    v71[2](v71);
  }

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v95, 8);
}

void *__103__HFDictionaryValueControlItem_getStatus_mainTextColor_supplementaryDescription_withBatchReadResponse___block_invoke(void *result)
{
  v1 = result;
  if (result[7])
  {
    result = *(*(result[4] + 8) + 40);
    *v1[7] = result;
  }

  if (v1[8])
  {
    result = *(*(v1[5] + 8) + 40);
    *v1[8] = result;
  }

  if (v1[9])
  {
    result = *(*(v1[6] + 8) + 40);
    *v1[9] = result;
  }

  return result;
}

+ (id)defaultMainTextColorForCharacteristicType:(id)type
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CCF770];
  v3 = MEMORY[0x277D75348];
  typeCopy = type;
  labelColor = [v3 labelColor];
  v11[0] = labelColor;
  v10[1] = *MEMORY[0x277CCF830];
  systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  v11[1] = systemYellowColor;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [v7 objectForKey:typeCopy];

  return v8;
}

@end