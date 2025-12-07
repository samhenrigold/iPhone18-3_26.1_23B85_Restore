@interface HFFanServiceItem
- (id)_subclass_updateWithOptions:(id)options;
- (id)createControlItemsWithOptions:(id)options;
@end

@implementation HFFanServiceItem

- (id)createControlItemsWithOptions:(id)options
{
  v69[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  controlItemValueSourceForPrimaryService = [(HFServiceItem *)self controlItemValueSourceForPrimaryService];
  v6 = [HFPowerStateControlItem alloc];
  v7 = [(HFPowerStateControlItem *)v6 initWithValueSource:controlItemValueSourceForPrimaryService displayResults:MEMORY[0x277CBEC10]];
  v68[0] = @"title";
  v8 = HFItemOptionalLocalizedString(@"HFControlShortTitleRotationSpeed", optionsCopy);
  v69[0] = v8;
  v68[1] = @"controlItemPurpose";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10];
  v69[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];

  v11 = [HFIncrementalStateControlItem alloc];
  v57 = v10;
  v12 = [(HFIncrementalStateControlItem *)v11 initWithValueSource:controlItemValueSourceForPrimaryService primaryStateControlItem:v7 incrementalCharacteristicType:*MEMORY[0x277CCFA20] displayResults:v10];
  v13 = MEMORY[0x277CBEB58];
  v58 = v7;
  v67[0] = v7;
  v67[1] = v12;
  v56 = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v59 = [v13 setWithArray:v14];

  selfCopy = self;
  v15 = objc_msgSend_service(self);
  v16 = [v15 hf_characteristicOfType:*MEMORY[0x277CCFA18]];

  metadata = [v16 metadata];
  v18 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionClockwise", optionsCopy);
  v19 = HFItemOptionalLocalizedString(@"HFCharacteristicValueRotationDirectionCounterClockwise", optionsCopy);
  v20 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata firstValue:&unk_2825236D0 firstTitle:v18 secondValue:&unk_2825236E8 secondTitle:v19];

  if (v20)
  {
    v21 = [HFMultiStateControlItem alloc];
    characteristicType = [v16 characteristicType];
    v65[0] = @"title";
    v23 = HFItemOptionalLocalizedString(@"HFControlShortTitleRotationDirection", optionsCopy);
    v65[1] = @"controlItemPurpose";
    v66[0] = v23;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
    v66[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v26 = [(HFMultiStateControlItem *)v21 initWithValueSource:controlItemValueSourceForPrimaryService characteristicType:characteristicType possibleValueSet:v20 displayResults:v25];
    [v59 na_safeAddObject:v26];
  }

  v54 = v20;
  v55 = v16;
  v27 = objc_msgSend_service(selfCopy);
  [v27 hf_characteristicOfType:*MEMORY[0x277CCFB10]];
  v29 = v28 = controlItemValueSourceForPrimaryService;

  metadata2 = [v29 metadata];
  v31 = HFItemOptionalLocalizedString(@"HFCharacteristicValueFanTargetStateManual", optionsCopy);
  v32 = HFItemOptionalLocalizedString(@"HFCharacteristicValueFanTargetStateAuto", optionsCopy);
  v33 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata2 firstValue:&unk_2825236D0 firstTitle:v31 secondValue:&unk_2825236E8 secondTitle:v32];

  if (v33)
  {
    v34 = [HFMultiStateControlItem alloc];
    characteristicType2 = [v29 characteristicType];
    v63 = @"title";
    v36 = HFItemOptionalLocalizedString(@"HFControlShortTitleFanMode", optionsCopy);
    v64 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v38 = [(HFMultiStateControlItem *)v34 initWithValueSource:v28 characteristicType:characteristicType2 possibleValueSet:v33 displayResults:v37];
    [v59 na_safeAddObject:v38];
  }

  v52 = v33;
  v53 = v29;
  v39 = [[HFSwingModeControlItem alloc] initWithValueSource:v28];
  [v59 na_safeAddObject:v39];

  v40 = objc_msgSend_service(selfCopy);
  v41 = [v40 hf_characteristicOfType:*MEMORY[0x277CCF958]];

  metadata3 = [v41 metadata];
  v43 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsUnlocked", optionsCopy);
  v44 = HFItemOptionalLocalizedString(@"HFCharacteristicValueLockPhysicalControlsLocked", optionsCopy);
  v45 = [HFMultiStateValueSet binaryValueSetWithCharacteristicMetadata:metadata3 firstValue:&unk_2825236D0 firstTitle:v43 secondValue:&unk_2825236E8 secondTitle:v44];

  if (v45)
  {
    v46 = [HFMultiStateControlItem alloc];
    characteristicType3 = [v41 characteristicType];
    v61 = @"title";
    v48 = HFItemOptionalLocalizedString(@"HFControlShortTitleLockPhysicalControls", optionsCopy);
    v62 = v48;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v50 = [(HFMultiStateControlItem *)v46 initWithValueSource:v28 characteristicType:characteristicType3 possibleValueSet:v45 displayResults:v49];
    [v59 na_safeAddObject:v50];
  }

  return v59;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = *MEMORY[0x277CCFA20];
  optionsCopy = options;
  v7 = [v4 setWithObjects:{v5, 0}];
  v8 = objc_msgSend_service(self);
  v9 = *MEMORY[0x277CCF9F0];
  v10 = [v8 hf_characteristicOfType:*MEMORY[0x277CCF9F0]];

  if (v10 || (objc_msgSend_service(self), v11 = objc_claimAutoreleasedReturnValue(), v9 = *MEMORY[0x277CCF748], [v11 hf_characteristicOfType:*MEMORY[0x277CCF748]], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    v13 = v9;
  }

  else
  {
    v18 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_msgSend_service(self);
      hf_prettyDescription = [v19 hf_prettyDescription];
      *buf = 138412290;
      v25 = hf_prettyDescription;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "Fan (%@) has neither a powerState nor an active characteristic type!", buf, 0xCu);
    }

    v13 = 0;
  }

  [v7 na_safeAddObject:v13];
  v14 = [(HFServiceItem *)self performStandardUpdateWithCharacteristicTypes:v7 options:optionsCopy];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__HFFanServiceItem__subclass_updateWithOptions___block_invoke;
  v21[3] = &unk_277DF5578;
  v22 = v13;
  selfCopy = self;
  v15 = v13;
  v16 = [v14 flatMap:v21];

  return v16;
}

id __48__HFFanServiceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 readResponse];
  v5 = [v4 responseForCharacteristicType:*(a1 + 32)];
  v36 = [v5 characteristic];
  v6 = [v5 valueWithExpectedClass:objc_opt_class()];
  v7 = [v4 responseForCharacteristicType:*MEMORY[0x277CCFA20]];
  v8 = [v7 characteristic];
  v33 = v7;
  v9 = [v7 valueWithExpectedClass:objc_opt_class()];
  v10 = [v3 standardResults];
  v11 = [v10 mutableCopy];

  v12 = [v3 displayMetadata];

  v13 = [v12 primaryState];
  v34 = v4;
  v35 = v6;
  v32 = v9;
  if (v9)
  {
    v31 = v5;
    v14 = &unk_282523700;
    if (v13 == 2)
    {
      v14 = v9;
    }

    v15 = v14;
    v16 = [v8 metadata];
    v17 = [v16 hf_percentageForCharacteristicValue:v15];

    [v11 setObject:v17 forKeyedSubscript:@"subPriority"];
    v18 = a1;
    v19 = [*(a1 + 40) descriptionForCharacteristic:v8 withValue:v15];
    v20 = [v11 objectForKeyedSubscript:@"description"];

    v21 = v8;
    if (!v20)
    {
      if (v19 && v13 == 2)
      {
        [v11 setObject:v19 forKeyedSubscript:@"description"];
        v22 = v34;
        goto LABEL_13;
      }

      if (v35)
      {
        v30 = [*(v18 + 40) descriptionForCharacteristic:v36 withValue:?];

        [v11 na_safeSetObject:v30 forKey:@"description"];
        v19 = v30;
      }
    }

    v22 = v34;
    if (v13 == 1)
    {
      v23 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicTitleIncrementalStateOff", @"HFCharacteristicTitleIncrementalStateOff", 1);
LABEL_14:
      v24 = v23;

LABEL_15:
      v5 = v31;
      goto LABEL_18;
    }

LABEL_13:
    v23 = [*(v18 + 40) controlDescriptionForCharacteristic:v21 withValue:{v15, v31, v32}];
    goto LABEL_14;
  }

  if (v6)
  {
    v18 = a1;
    v24 = [*(a1 + 40) controlDescriptionForCharacteristic:v36 withValue:v6];
    v25 = [v11 objectForKeyedSubscript:@"description"];

    if (!v25)
    {
      v31 = v5;
      v15 = [*(a1 + 40) descriptionForCharacteristic:v36 withValue:v6];
      [v11 setObject:v15 forKeyedSubscript:@"description"];
      v17 = 0;
      v21 = v8;
      v22 = v34;
      goto LABEL_15;
    }

    v17 = 0;
    v21 = v8;
  }

  else
  {
    v17 = 0;
    v24 = 0;
    v21 = v8;
    v18 = a1;
  }

  v22 = v34;
LABEL_18:
  [v11 na_safeSetObject:v24 forKey:{@"controlDescription", v31}];
  [*(v18 + 40) applyInflectionToDescriptions:v11];
  v26 = MEMORY[0x277D2C900];
  v27 = [HFItemUpdateOutcome outcomeWithResults:v11];
  v28 = [v26 futureWithResult:v27];

  return v28;
}

@end