@interface HFHeaterCoolerServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFHeaterCoolerServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v137[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = objc_msgSend_service(self);
  hf_childServices = [v7 hf_childServices];
  v112 = [hf_childServices na_firstObjectPassingTest:&__block_literal_global_169];

  v9 = MEMORY[0x277CBEB58];
  v10 = objc_msgSend_service(self);
  v11 = [v9 setWithObject:v10];

  [v11 na_safeAddObject:v112];
  v105 = v11;
  v111 = [(HFServiceItem *)self controlItemValueSourceForServices:v11];
  v12 = objc_msgSend_service(self);
  hf_childServices2 = [v12 hf_childServices];
  v14 = [hf_childServices2 na_filter:&__block_literal_global_3_24];

  v15 = MEMORY[0x277CBEB58];
  v16 = objc_msgSend_service(self);
  v17 = [v15 setWithObject:v16];

  v104 = v14;
  [v17 unionSet:v14];
  v103 = v17;
  v110 = [(HFServiceItem *)self controlItemValueSourceForServices:v17];
  v136[0] = @"title";
  v18 = HFItemOptionalLocalizedString(@"HFControlShortTitleTemperature", optionsCopy);
  v137[0] = v18;
  v136[1] = @"controlItemPurpose";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v137[1] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:2];

  v102 = v20;
  v113 = v6;
  v101 = [[HFHeaterCoolerThresholdControlItem alloc] initWithValueSource:controlItemValueSourceForPrimaryService displayResults:v20];
  [v6 na_safeAddObject:?];
  v21 = [HFTemperatureUnitControlItem alloc];
  v97 = controlItemValueSourceForPrimaryService;
  v100 = [(HFTemperatureUnitControlItem *)v21 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:*MEMORY[0x277CCFB88] displayResults:0];
  [v6 na_safeAddObject:?];
  selfCopy = self;
  v22 = objc_msgSend_service(self);
  v106 = *MEMORY[0x277CCFB18];
  v23 = [v22 hf_characteristicOfType:?];
  metadata = [v23 metadata];

  v99 = metadata;
  v25 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:metadata];
  v134 = @"title";
  v26 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeAuto", optionsCopy);
  v135 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
  [(HFMultiStateValueSet *)v25 addValue:&unk_282524930 displayResults:v27];

  v132 = @"title";
  v28 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeHeat", optionsCopy);
  v133 = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
  [(HFMultiStateValueSet *)v25 addValue:&unk_282524948 displayResults:v29];

  v130 = @"title";
  v30 = HFItemOptionalLocalizedString(@"HFServiceThermostatModeCool", optionsCopy);
  v131 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
  [(HFMultiStateValueSet *)v25 addValue:&unk_282524960 displayResults:v31];

  v32 = [HFUtilities comparatorWithSortedObjects:&unk_2825258B8];
  [(HFMultiStateValueSet *)v25 setValueComparator:v32];

  v33 = [HFPowerStateControlItem alloc];
  v34 = MEMORY[0x277CBEB98];
  v35 = +[HFPowerStateTargetValueTuple fanStateTargetValueTuple];
  v36 = [v34 setWithObject:v35];
  v128 = @"title";
  v37 = HFItemOptionalLocalizedString(@"HFControlShortTitlePower", optionsCopy);
  v129 = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
  v39 = [(HFPowerStateControlItem *)v33 initWithValueSource:v111 auxiliaryTargetValueTuples:v36 displayResults:v38];

  v40 = 0x277CBE000uLL;
  v126[0] = @"title";
  v41 = optionsCopy;
  v42 = HFItemOptionalLocalizedString(@"HFControlShortTitleHeatingCoolingMode", optionsCopy);
  v126[1] = @"controlItemPurpose";
  v127[0] = v42;
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v127[1] = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:2];

  v45 = v113;
  v46 = [HFTargetModeControlItem alloc];
  v47 = v106;
  v98 = v25;
  v107 = v39;
  v95 = v44;
  v94 = [(HFTargetModeControlItem *)v46 initWithValueSource:v111 targetModeCharacteristicType:v47 targetModeValueSet:v25 primaryPowerStateControlItem:v39 displayResults:v44];
  [v113 addObject:?];
  v48 = *MEMORY[0x277CCFA20];
  if (v112 && ([v112 hf_characteristicOfType:*MEMORY[0x277CCFA20]], v49 = objc_claimAutoreleasedReturnValue(), v49, v49))
  {
    v50 = selfCopy;
    v51 = objc_msgSend_service(selfCopy);
    v52 = [v51 hf_characteristicOfType:v48];

    v53 = v41;
    if (v52)
    {
      v54 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v92 = objc_msgSend_service(selfCopy);
        *buf = 138412546;
        v123 = v92;
        v124 = 2112;
        v125 = v112;
        _os_log_error_impl(&dword_20D9BF000, v54, OS_LOG_TYPE_ERROR, "Both the heater/cooler service (%@) and the fan child service (%@) have a rotation speed characteristic. This is not a valid configuration. Arbitrarily choosing to use the child fan's characteristic,", buf, 0x16u);
      }
    }

    v55 = [MEMORY[0x277CBEB98] setWithObject:v112];
    v93 = [(HFServiceItem *)selfCopy controlItemValueSourceForServices:v55];

    v108 = [v112 hf_characteristicOfType:*MEMORY[0x277CCFA18]];
    metadata2 = [v108 metadata];
    v57 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionClockwise", v53);
    v58 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionCounterClockwise", v53);
    v59 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata2 firstValue:&unk_282524930 firstTitle:v57 secondValue:&unk_282524948 secondTitle:v58];

    if (v59)
    {
      v60 = [HFMultiStateControlItem alloc];
      characteristicType = [v108 characteristicType];
      v120 = @"title";
      v62 = HFItemOptionalLocalizedString(@"HFControlShortTitleRotationDirection", v53);
      v121 = v62;
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
      v64 = [(HFMultiStateControlItem *)v60 initWithValueSource:v93 characteristicType:characteristicType possibleValueSet:v59 displayResults:v63];
      [v113 na_safeAddObject:v64];
    }

    v65 = v93;
    v66 = [HFPowerStateControlItem alloc];
    v118 = @"title";
    v67 = HFItemOptionalLocalizedString(@"HFControlShortTitlePower", v53);
    v119 = v67;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
    v69 = [(HFPowerStateControlItem *)v66 initWithValueSource:v65 displayResults:v68];

    if (v65)
    {
      v70 = v53;
      v40 = 0x277CBE000;
      v71 = v97;
      goto LABEL_15;
    }

    v109 = v69;
    v45 = v113;
    v40 = 0x277CBE000;
  }

  else
  {
    v109 = 0;
    v53 = v41;
    v50 = selfCopy;
  }

  v72 = objc_msgSend_service(v50, v93);
  v65 = [v72 hf_characteristicOfType:v48];

  if (!v65)
  {
    v70 = v53;
    v73 = v97;
    goto LABEL_19;
  }

  v71 = v97;
  v65 = v97;
  v69 = v107;

  if (!v65)
  {
    v70 = v53;
    v73 = v97;
    goto LABEL_18;
  }

  v70 = v53;
LABEL_15:
  v73 = v71;
  v74 = [HFIncrementalStateControlItem alloc];
  v116 = @"title";
  v75 = HFItemOptionalLocalizedString(@"HFControlShortTitleLinkedFanRotationSpeed", v70);
  v117 = v75;
  v76 = [*(v40 + 2752) dictionaryWithObjects:&v117 forKeys:&v116 count:1];
  v77 = [(HFIncrementalStateControlItem *)v74 initWithValueSource:v65 primaryStateControlItem:v69 incrementalCharacteristicType:v48 displayResults:v76];

  [(HFIncrementalStateControlItem *)v77 setAllowsToggle:0];
  v45 = v113;
  [v113 addObject:v77];

LABEL_18:
  v109 = v69;
LABEL_19:
  v78 = [[HFSwingModeControlItem alloc] initWithValueSource:v110];
  [v45 na_safeAddObject:v78];

  v79 = objc_msgSend_service(v50);
  [v79 hf_characteristicOfType:*MEMORY[0x277CCF958]];
  v81 = v80 = v45;

  metadata3 = [v81 metadata];
  v83 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsUnlocked", v70);
  v84 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsLocked", v70);
  v85 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata3 firstValue:&unk_282524930 firstTitle:v83 secondValue:&unk_282524948 secondTitle:v84];

  if (v85)
  {
    v86 = [HFMultiStateControlItem alloc];
    characteristicType2 = [v81 characteristicType];
    v114 = @"title";
    v88 = HFItemOptionalLocalizedString(@"HFControlShortTitleLockPhysicalControls", v70);
    v115 = v88;
    v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    v90 = [(HFMultiStateControlItem *)v86 initWithValueSource:v73 characteristicType:characteristicType2 possibleValueSet:v85 displayResults:v89];
    [v80 na_safeAddObject:v90];
  }

  return v113;
}

uint64_t __59__HFHeaterCoolerServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

uint64_t __59__HFHeaterCoolerServiceItem_createControlItemsWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0EE0]];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF748];
  v6 = *MEMORY[0x277CCF868];
  v7 = *MEMORY[0x277CCF810];
  v8 = *MEMORY[0x277CCFB18];
  v9 = *MEMORY[0x277CCF7F0];
  v10 = *MEMORY[0x277CCF8C8];
  optionsCopy = options;
  v12 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, 0}];
  v13 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v12 options:optionsCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HFHeaterCoolerServiceItem__subclass_updateWithOptions___block_invoke;
  v16[3] = &unk_277DF2828;
  v16[4] = self;
  v14 = [v13 flatMap:v16];

  return v14;
}

id __57__HFHeaterCoolerServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF868]];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];

  v7 = [HFTemperatureItemUtilities currentHeatingCoolingModeValueInResponse:v4];
  v24 = [HFTemperatureItemUtilities targetHeatingCoolingModeValueInResponse:v4];
  v8 = [v3 standardResults];

  v9 = [v8 mutableCopy];
  v10 = +[HFFormatterManager sharedInstance];
  v11 = [v10 temperatureFormatter];

  [v11 setInputIsCelsius:1];
  v27 = 0;
  v28 = 0;
  v25 = a1;
  v26 = 0;
  v12 = objc_msgSend_service(*(a1 + 32));
  [HFThermostatItemUtilities getDescription:&v28 controlDescription:&v27 optionalDescriptions:&v26 forResponse:v4 primaryService:v12 temperatureFormatter:v11];
  v13 = v28;
  v14 = v27;
  v15 = v26;

  if (v13)
  {
    v16 = [v9 objectForKeyedSubscript:@"description"];

    if (!v16)
    {
      [v9 setObject:v13 forKeyedSubscript:@"description"];
    }
  }

  [v9 na_safeSetObject:v14 forKey:@"controlDescription"];
  [v9 addEntriesFromDictionary:v15];
  v17 = [v11 stringForObjectValue:v6];
  v23 = v6;
  v18 = -[HFTemperatureIconDescriptor initWithFormattedTemperature:heatingCoolingMode:targetHeatingCoolingMode:]([HFTemperatureIconDescriptor alloc], "initWithFormattedTemperature:heatingCoolingMode:targetHeatingCoolingMode:", v17, [v7 integerValue], objc_msgSend(v24, "integerValue"));
  [v9 setObject:v18 forKeyedSubscript:@"icon"];

  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"tempreatureUnitDependency"];
  [*(v25 + 32) applyInflectionToDescriptions:v9];
  v19 = MEMORY[0x277D2C900];
  v20 = [HFItemUpdateOutcome outcomeWithResults:v9];
  v21 = [v19 futureWithResult:v20];

  return v21;
}

@end