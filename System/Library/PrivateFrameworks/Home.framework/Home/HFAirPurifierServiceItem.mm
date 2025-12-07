@interface HFAirPurifierServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFAirPurifierServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v118 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v99 = [MEMORY[0x277CBEB58] set];
  v6 = objc_msgSend_service(self);
  hf_childServices = [v6 hf_childServices];
  v8 = [hf_childServices na_firstObjectPassingTest:&__block_literal_global_86];

  v9 = MEMORY[0x277CBEB58];
  v10 = objc_msgSend_service(self);
  v11 = [v9 setWithObject:v10];

  [v11 na_safeAddObject:v8];
  v89 = v11;
  v96 = [(HFServiceItem *)self controlItemValueSourceForServices:v11];
  v12 = objc_msgSend_service(self);
  hf_childServices2 = [v12 hf_childServices];
  v14 = [hf_childServices2 na_filter:&__block_literal_global_3_9];

  v15 = MEMORY[0x277CBEB58];
  v16 = objc_msgSend_service(self);
  v17 = [v15 setWithObject:v16];

  v88 = v14;
  [v17 unionSet:v14];
  v87 = v17;
  v95 = [(HFServiceItem *)self controlItemValueSourceForServices:v17];
  v18 = MEMORY[0x277CBEB98];
  v19 = +[HFPowerStateTargetValueTuple fanStateTargetValueTuple];
  v20 = [HFPowerStateTargetValueTuple alloc];
  v92 = *MEMORY[0x277CCFB00];
  v21 = [HFPowerStateTargetValueTuple initWithCharacteristicType:v20 onTargetValue:"initWithCharacteristicType:onTargetValue:offTargetValue:" offTargetValue:?];
  v94 = [v18 setWithObjects:{v19, v21, 0}];

  v22 = *MEMORY[0x277CCFA20];
  v90 = v8;
  v91 = controlItemValueSourceForPrimaryService;
  if (v8)
  {
    v23 = [v8 hf_characteristicOfType:v22];

    if (v23)
    {
      v24 = objc_msgSend_service(self);
      v25 = [v24 hf_characteristicOfType:v22];

      if (v25)
      {
        v26 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v83 = objc_msgSend_service(self);
          *buf = 138412546;
          v115 = v83;
          v116 = 2112;
          v117 = v8;
          _os_log_error_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_ERROR, "Both the air purifier service (%@) and the fan child service (%@) have a rotation speed characteristic. This is not a valid configuration. Arbitrarily choosing to use the child fan's characteristic,", buf, 0x16u);
        }
      }

      v27 = [MEMORY[0x277CBEB98] setWithObject:v8];
      v97 = [(HFServiceItem *)self controlItemValueSourceForServices:v27];

      v28 = [v8 hf_characteristicOfType:*MEMORY[0x277CCFA18]];
      metadata = [v28 metadata];
      v30 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionClockwise", optionsCopy);
      v31 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionCounterClockwise", optionsCopy);
      v32 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata firstValue:&unk_282523F70 firstTitle:v30 secondValue:&unk_282523F58 secondTitle:v31];

      if (v32)
      {
        v33 = [HFMultiStateControlItem alloc];
        characteristicType = [v28 characteristicType];
        v112 = @"title";
        v35 = HFItemOptionalLocalizedString(@"HFControlShortTitleRotationDirection", optionsCopy);
        v113 = v35;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v36 = v22;
        v38 = v37 = optionsCopy;
        v39 = [(HFMultiStateControlItem *)v33 initWithValueSource:v97 characteristicType:characteristicType possibleValueSet:v32 displayResults:v38];
        [v99 na_safeAddObject:v39];

        optionsCopy = v37;
        v22 = v36;
      }

      controlItemValueSourceForPrimaryService = v91;
      v40 = v97;
      if (v97)
      {
        goto LABEL_12;
      }
    }
  }

  v41 = objc_msgSend_service(self);
  v42 = [v41 hf_characteristicOfType:v22];

  if (v42 && (v40 = controlItemValueSourceForPrimaryService) != 0)
  {
LABEL_12:
    v110[0] = @"title";
    v43 = HFItemOptionalLocalizedString(@"HFControlShortTitleLinkedFanRotationSpeed", optionsCopy);
    v111[0] = v43;
    v110[1] = @"controlDescription";
    v44 = HFItemOptionalLocalizedString(@"HFControlShortTitleLinkedFanRotationSpeed", optionsCopy);
    v111[1] = v44;
    v110[2] = @"controlItemPurpose";
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
    v111[2] = v45;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:3];

    v47 = optionsCopy;
    v48 = [HFPowerStateControlItem alloc];
    v49 = [(HFPowerStateControlItem *)v48 initWithValueSource:v40 displayResults:MEMORY[0x277CBEC10]];
    v98 = v40;
    v50 = [[HFIncrementalStateControlItem alloc] initWithValueSource:v40 primaryStateControlItem:v49 incrementalCharacteristicType:v22 displayResults:v46];
    [v99 addObject:v50];
  }

  else
  {
    v98 = 0;
    v47 = optionsCopy;
  }

  v51 = objc_msgSend_service(self);
  v52 = [v51 hf_characteristicOfType:v92];
  metadata2 = [v52 metadata];

  v86 = metadata2;
  v54 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:metadata2];
  v108 = @"title";
  v55 = HFItemOptionalLocalizedString(@"HFCharacteristicValueAirPurifierTargetStateAuto", v47);
  v109 = v55;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
  [(HFMultiStateValueSet *)v54 addValue:&unk_282523F58 displayResults:v56];

  v106 = @"title";
  v57 = HFItemOptionalLocalizedString(@"HFCharacteristicValueAirPurifierTargetStateManual", v47);
  v107 = v57;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
  [(HFMultiStateValueSet *)v54 addValue:&unk_282523F70 displayResults:v58];

  v59 = [HFUtilities comparatorWithSortedObjects:&unk_2825257B0];
  [(HFMultiStateValueSet *)v54 setValueComparator:v59];

  v60 = [HFPowerStateControlItem alloc];
  v104 = @"title";
  HFItemOptionalLocalizedString(@"HFControlShortTitlePower", v47);
  v62 = v61 = v47;
  v105 = v62;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
  v64 = [(HFPowerStateControlItem *)v60 initWithValueSource:v96 auxiliaryTargetValueTuples:v94 displayResults:v63];

  v102[0] = @"title";
  v65 = HFItemOptionalLocalizedString(@"HFControlShortTitleAirPurifierState", v47);
  v103[0] = v65;
  v102[1] = @"controlItemPurpose";
  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:12];
  v103[1] = v66;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];

  v68 = [HFTargetModeControlItem alloc];
  v69 = v92;
  v93 = v54;
  v85 = v67;
  v84 = [(HFTargetModeControlItem *)v68 initWithValueSource:v96 targetModeCharacteristicType:v69 targetModeValueSet:v54 primaryPowerStateControlItem:v64 displayResults:v67];
  [v99 addObject:?];
  v70 = [[HFSwingModeControlItem alloc] initWithValueSource:v95];
  [v99 na_safeAddObject:v70];

  v71 = objc_msgSend_service(self);
  v72 = [v71 hf_characteristicOfType:*MEMORY[0x277CCF958]];

  metadata3 = [v72 metadata];
  v74 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsUnlocked", v61);
  v75 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsLocked", v61);
  v76 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata3 firstValue:&unk_282523F70 firstTitle:v74 secondValue:&unk_282523F58 secondTitle:v75];

  if (v76)
  {
    v77 = [HFMultiStateControlItem alloc];
    characteristicType2 = [v72 characteristicType];
    v100 = @"title";
    v79 = HFItemOptionalLocalizedString(@"HFControlShortTitleLockPhysicalControls", v61);
    v101 = v79;
    v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v81 = [(HFMultiStateControlItem *)v77 initWithValueSource:v91 characteristicType:characteristicType2 possibleValueSet:v76 displayResults:v80];
    [v99 na_safeAddObject:v81];
  }

  return v99;
}

uint64_t __58__HFAirPurifierServiceItem_createControlItemsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

uint64_t __58__HFAirPurifierServiceItem_createControlItemsWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0EE0]];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CCF7F8];
  v6 = *MEMORY[0x277CCF748];
  v7 = *MEMORY[0x277CCFA20];
  v8 = *MEMORY[0x277CCF8A0];
  optionsCopy = options;
  v10 = [v4 setWithObjects:{v5, v6, v7, v8, 0}];
  v11 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v10 options:optionsCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HFAirPurifierServiceItem__subclass_updateWithOptions___block_invoke;
  v14[3] = &unk_277DF2828;
  v14[4] = self;
  v12 = [v11 flatMap:v14];

  return v12;
}

id __56__HFAirPurifierServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF7F8]];

  v48 = v5;
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];
  v7 = [v3 readResponse];
  v8 = *MEMORY[0x277CCF748];
  v9 = objc_msgSend_service(*(a1 + 32));
  v10 = [v7 responseForCharacteristicType:v8 inService:v9];

  v46 = v10;
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];
  v12 = [v3 readResponse];
  v13 = [v12 responseForCharacteristicType:*MEMORY[0x277CCFA20]];

  v47 = v13;
  v49 = [v13 valueWithExpectedClass:objc_opt_class()];
  v14 = [v3 readResponse];
  v15 = [v14 responseForCharacteristicType:*MEMORY[0x277CCF8A0]];
  v16 = [v15 valueWithExpectedClass:objc_opt_class()];

  v17 = objc_msgSend_service(*(a1 + 32));
  v18 = [v17 hf_childServices];
  v19 = [v18 na_firstObjectPassingTest:&__block_literal_global_49];

  if (v19)
  {
    v20 = [v3 readResponse];
    v21 = [v20 responseForCharacteristicType:v8 inService:v19];
    v22 = [v21 valueWithExpectedClass:objc_opt_class()];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v3 standardResults];
  v24 = [v23 mutableCopy];

  if (!v6)
  {
    goto LABEL_23;
  }

  v45 = v22;
  if ([v11 isEqual:MEMORY[0x277CBEC28]] && objc_msgSend(v22, "isEqual:", MEMORY[0x277CBEC38]))
  {
    v25 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAirPurifierFanOnlyMode", @"HFServiceDescriptionAirPurifierFanOnlyMode", 1);
  }

  else
  {
    if ([v11 isEqual:MEMORY[0x277CBEC38]] && objc_msgSend(v6, "isEqual:", &unk_282523F70))
    {
      v26 = @"HFServiceDescriptionAirPurifierTurningOn";
    }

    else
    {
      if (![v11 isEqual:MEMORY[0x277CBEC28]] || (objc_msgSend(v6, "isEqual:", &unk_282523F70) & 1) != 0)
      {
        if ([v11 isEqual:MEMORY[0x277CBEC38]] && objc_msgSend(v6, "isEqual:", &unk_282523F88) && v49)
        {
          v27 = *(a1 + 32);
          v28 = [v47 characteristic];
          v29 = [v27 controlDescriptionForCharacteristic:v28 withValue:v49];
          [v24 na_safeSetObject:v29 forKey:@"controlDescription"];

          v30 = *(a1 + 32);
          v31 = [v47 characteristic];
          v25 = [v30 descriptionForCharacteristic:v31 withValue:v49];
        }

        else
        {
          v32 = *(a1 + 32);
          v33 = [v48 characteristic];
          v34 = [v32 controlDescriptionForCharacteristic:v33 withValue:v6];
          [v24 na_safeSetObject:v34 forKey:@"controlDescription"];

          v35 = *(a1 + 32);
          v36 = [v48 characteristic];
          v25 = [v35 descriptionForCharacteristic:v36 withValue:v6];
        }

        goto LABEL_20;
      }

      v26 = @"HFServiceDescriptionAirPurifierTurningOff";
    }

    v37 = _HFLocalizedStringWithDefaultValue(v26, v26, 1);
    [v24 setObject:v37 forKeyedSubscript:@"controlDescription"];

    v25 = _HFLocalizedStringWithDefaultValue(v26, v26, 1);
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isInStateTransition"];
  }

LABEL_20:
  v38 = [v24 objectForKeyedSubscript:@"description"];

  if (!v38)
  {
    [v24 setObject:v25 forKeyedSubscript:@"description"];
  }

  v22 = v45;
LABEL_23:
  if (v16 && [v16 integerValue] == 1)
  {
    v39 = [v24 objectForKeyedSubscript:@"detailedControlDescription"];

    if (!v39)
    {
      v40 = _HFLocalizedStringWithDefaultValue(@"HFServiceDetailedControlDescriptionChangeFilterSoon", @"HFServiceDetailedControlDescriptionChangeFilterSoon", 1);
      [v24 setObject:v40 forKeyedSubscript:@"detailedControlDescription"];
    }

    [v24 setObject:&unk_282523FA0 forKeyedSubscript:@"badge"];
    [v24 setObject:&unk_282523FB8 forKeyedSubscript:@"descriptionBadge"];
  }

  [*(a1 + 32) applyInflectionToDescriptions:v24];
  v41 = MEMORY[0x277D2C900];
  v42 = [HFItemUpdateOutcome outcomeWithResults:v24];
  v43 = [v41 futureWithResult:v42];

  return v43;
}

uint64_t __56__HFAirPurifierServiceItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

@end